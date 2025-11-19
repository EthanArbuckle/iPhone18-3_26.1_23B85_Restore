unint64_t sub_268E40D08()
{
  v2 = qword_2802DD1F0;
  if (!qword_2802DD1F0)
  {
    sub_268F9A174();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD1F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E40D88()
{
  v2 = qword_2802DD1F8;
  if (!qword_2802DD1F8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD1F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_268E40E14()
{
  if (qword_280FE46E0 != -1)
  {
    swift_once();
  }

  return &qword_280FE8160;
}

uint64_t sub_268E40E74()
{
  type metadata accessor for GetLowPowerModeHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_280FE8160 = result;
  return result;
}

uint64_t sub_268E40EDC()
{
  v1 = *sub_268E40E14();

  return v1;
}

uint64_t sub_268E40F0C(void *a1, void (*a2)(id), uint64_t a3)
{
  v51 = a3;
  v52 = a2;
  v57 = a1;
  v58 = 0;
  v90 = 0;
  v53 = 0;
  v93 = a1;
  v91 = a2;
  v92 = a3;
  v54 = sub_268F9B284();
  v56 = *sub_268DC7AE8();
  v3 = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v55 = sub_268F9B734();
  sub_268F9AC14();

  v89 = v57;
  v59 = sub_268D2E630();
  v60 = SettingIntent.deviceCategory.getter(v59, &protocol witness table for INGetSettingIntent);
  v61 = v4;
  v62 = &v87;
  v85 = v60;
  v86 = v4 & 1;
  v87 = 1;
  v88 = 0;
  if ((v4 & 1) == 0)
  {
    v65 = v60;
    v66 = v61 & 1;
    if ((v62[1] & 1) == 0)
    {
      v64 = v65;
      v63 = *v62;
      v48 = type metadata accessor for INDeviceCategory();
      sub_268CD7818();
      v49 = sub_268F9AE04();
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  if ((v62[1] & 1) == 0)
  {
LABEL_9:
    v49 = 0;
    goto LABEL_7;
  }

  v49 = 1;
LABEL_7:
  v47 = v49;
  v5 = v57;
  if (v49)
  {
    v46 = 1;
    goto LABEL_21;
  }

  v84 = v57;
  v6 = SettingIntent.deviceCategory.getter(v59, &protocol witness table for INGetSettingIntent);
  v43 = v6;
  v44 = v7;
  v45 = &v82;
  v80 = v6;
  v81 = v7 & 1;
  v82 = 2;
  v83 = 0;
  if (v7)
  {
    if (v45[1])
    {
      v42 = 1;
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v69 = v43;
  v70 = v44 & 1;
  if (v45[1])
  {
LABEL_19:
    v42 = 0;
    goto LABEL_18;
  }

  v68 = v69;
  v67 = *v45;
  v41 = type metadata accessor for INDeviceCategory();
  sub_268CD7818();
  v42 = sub_268F9AE04();
LABEL_18:
  v46 = v42;
LABEL_21:
  v40 = v46;

  v8 = v57;
  if (v46)
  {
    v39 = 1;
    goto LABEL_32;
  }

  v79 = v57;
  v36 = SettingIntent.deviceCategory.getter(v59, &protocol witness table for INGetSettingIntent);
  v37 = v9;
  v38 = &v77;
  v75 = v36;
  v76 = v9 & 1;
  v77 = 3;
  v78 = 0;
  if (v9)
  {
    if (v38[1])
    {
      v35 = 1;
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  v73 = v36;
  v74 = v37 & 1;
  if (v38[1])
  {
LABEL_30:
    v35 = 0;
    goto LABEL_29;
  }

  v72 = v73;
  v71 = *v38;
  v34 = type metadata accessor for INDeviceCategory();
  sub_268CD7818();
  v35 = sub_268F9AE04();
LABEL_29:
  v39 = v35;
LABEL_32:
  v33 = v39;

  if (v39)
  {
    v10 = v53;
    v11 = sub_268DBB664();
    v26 = *v11;
    v27 = v11[1];
    v28 = *(v11 + 16);
    v29 = *sub_268DC7AE8();
    v25 = v29;
    v12 = v29;
    v30 = *(v50 + 24);

    v13 = v57;

    v31 = &v23;
    MEMORY[0x28223BE20](v26);
    v22[2] = v14;
    v22[3] = v57;
    v22[4] = v52;
    v22[5] = v15;
    sub_268DB944C(v16, v17, v18, v19, v20, sub_268E418FC, v22, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
    v32 = v10;

    return v32;
  }

  else
  {
    sub_268E417C8(v52);
    return v53;
  }
}

double sub_268E414D4(uint64_t a1, void *a2, void (*a3)(id))
{
  v16 = *(a1 + 16);

  v17 = sub_268D398B4();

  if (v17)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  sub_268CDD0DC();
  v18 = sub_268CD42AC(3, 0);
  sub_268CDD140();
  sub_268F9B734();
  *v3 = sub_268E41954([a2 settingMetadata], 0, 0, v13, 0, 0);
  sub_268CD0F7C();
  v8 = sub_268F9B004();

  [v18 setSettingResponseDatas_];
  MEMORY[0x277D82BD8](v8);
  sub_268F9B284();
  v4 = sub_268DC7AE8();
  v12 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v11 = v5;
  MEMORY[0x277D82BE0](v18);
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

  a3(v18);

  *&result = MEMORY[0x277D82BD8](v18).n128_u64[0];
  return result;
}

uint64_t sub_268E417C8(void (*a1)(id))
{
  sub_268F9B284();
  v1 = sub_268DC7AE8();
  v3 = *v1;
  MEMORY[0x277D82BE0](*v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v3);

  sub_268E948B8();
  v5 = sub_268E41B70();

  a1(v5);
  MEMORY[0x277D82BD8](v5);
}

id sub_268E41A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_268CDD0DC();
  v16 = sub_268CD42AC(3, 0);
  sub_268CDD140();
  sub_268F9B734();
  v14 = v6;
  MEMORY[0x277D82BE0](a1);
  MEMORY[0x277D82BE0](a2);

  *v14 = sub_268E41954(a1, a2, a3, a4, a5, a6);
  sub_268CD0F7C();
  v15 = sub_268F9B004();

  [v16 setSettingResponseDatas_];
  MEMORY[0x277D82BD8](v15);
  return v16;
}

id sub_268E41B70()
{
  sub_268CDD0DC();
  v2 = sub_268CD42AC(7, 0);

  v1 = sub_268F9AE14();

  [v2 setErrorDetail_];
  MEMORY[0x277D82BD8](v1);
  return v2;
}

id sub_268E41C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
    v10 = sub_268F9AE14();

    v6 = [v15 initWithSettingMetadata:a1 numericValue:a2 boundedValue:a3 binaryValue:a4 labeledValue:v10];
  }

  else
  {
    v6 = [v15 initWithSettingMetadata:a1 numericValue:a2 boundedValue:a3 binaryValue:a4 labeledValue:0];
  }

  v9 = v6;
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](a1);
  return v9;
}

uint64_t *sub_268E41D2C()
{
  if (qword_280FE6598 != -1)
  {
    swift_once();
  }

  return &qword_280FE8388;
}

uint64_t sub_268E41D8C()
{
  type metadata accessor for GetSiriHandler();
  result = sub_268E41DF0(1);
  qword_280FE8388 = result;
  return result;
}

uint64_t sub_268E41E40()
{
  v1 = *sub_268E41D2C();

  return v1;
}

uint64_t sub_268E41E70(char a1)
{
  result = v1;
  *(v1 + 16) = a1;
  return result;
}

double sub_268E41EAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a1;
  v22 = a2;
  v23 = a3;
  v21 = v3;
  sub_268F9B284();
  v4 = sub_268DC7AE8();
  v8 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v8);
  v5 = sub_268DBBBB4();
  v9 = *v5;
  v13 = v5[1];
  v14 = *(v5 + 16);
  v6 = sub_268DC7AE8();
  v15 = *v6;
  MEMORY[0x277D82BE0](*v6);
  v16 = *(v3 + 16);
  MEMORY[0x277D82BE0](a1);

  v18 = a1;
  v19 = a2;
  v20 = a3;
  sub_268DB944C(v9, v13, v14, v15, v16 & 1, sub_268E4237C, v17, MEMORY[0x277D84F78] + 8, v3);
  MEMORY[0x277D82BD8](a1);

  *&result = MEMORY[0x277D82BD8](v15).n128_u64[0];
  return result;
}

double sub_268E420A8(void *a1, void (*a2)(id))
{
  sub_268CDD0DC();
  v15 = sub_268CD42AC(7, 0);
  sub_268CDD140();
  sub_268F9B734();
  *v2 = sub_268E41954([a1 settingMetadata], 0, 0, 0, 0, 0);
  sub_268CD0F7C();
  v8 = sub_268F9B004();

  [v15 setSettingResponseDatas_];
  MEMORY[0x277D82BD8](v8);
  sub_268E948B8();
  v9 = sub_268F9AE14();

  [v15 setErrorDetail_];
  MEMORY[0x277D82BD8](v9);
  sub_268F9B284();
  v3 = sub_268DC7AE8();
  v13 = *v3;
  MEMORY[0x277D82BE0](*v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v12 = v4;
  MEMORY[0x277D82BE0](v15);
  sub_268CDD1A4();
  v10 = sub_268F9AE74();
  v11 = v5;
  v12[3] = MEMORY[0x277D837D0];
  v12[4] = sub_268CDD224();
  *v12 = v10;
  v12[1] = v11;
  sub_268CD0F7C();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v13);

  a2(v15);

  *&result = MEMORY[0x277D82BD8](v15).n128_u64[0];
  return result;
}

uint64_t sub_268E42470@<X0>(uint64_t a1@<X8>)
{
  v11 = sub_268E4764C();
  if (v11 == 3)
  {
    v6 = *MEMORY[0x277D5B960];
    v5 = sub_268F996C4();
    return (*(*(v5 - 8) + 104))(a1, v6);
  }

  else if (v11)
  {
    if (v11 == 1)
    {
      v8 = *MEMORY[0x277D5B968];
      v3 = sub_268F996C4();
      return (*(*(v3 - 8) + 104))(a1, v8);
    }

    else
    {
      v9 = *MEMORY[0x277D5B978];
      v1 = sub_268F996C4();
      return (*(*(v1 - 8) + 104))(a1, v9);
    }
  }

  else
  {
    v7 = *MEMORY[0x277D5B970];
    v4 = sub_268F996C4();
    return (*(*(v4 - 8) + 104))(a1, v7);
  }
}

uint64_t sub_268E4262C()
{
  v1 = *sub_268E4464C();

  type metadata accessor for SettingsNLIntent();
  sub_268E47728();
  sub_268F9A0F4();
}

uint64_t sub_268E42694@<X0>(_BYTE *a1@<X8>)
{
  v4 = *sub_268E439E8();

  type metadata accessor for SettingsNLIntent();
  sub_268E47728();
  sub_268F9A0F4();

  if (v5 == 65)
  {
    v2 = *sub_268E431E8();

    sub_268F9A0F4();
  }

  else
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_268E4277C()
{
  v2 = *sub_268E43B0C();

  type metadata accessor for SettingsNLIntent();
  sub_268E47728();
  sub_268F9A0F4();

  if (v3 == 6)
  {
    v1 = *sub_268E4330C();

    sub_268F9A0F4();
  }

  else
  {
    return v3;
  }

  return v4;
}

uint64_t sub_268E42860()
{
  v1 = *sub_268E44894();

  type metadata accessor for SettingsNLIntent();
  sub_268E47728();
  sub_268F9A0F4();

  return v2;
}

uint64_t sub_268E428C8()
{
  v13 = v0;
  v12 = sub_268E4277C();
  if (v12 == 6 && sub_268E42860() == 6)
  {
    sub_268E42694(v8);
    v6 = v8[0] == 65;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    sub_268E4262C();
    v8[1] = v9;
    v5 = v9 == 13;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v4 = *sub_268E4420C();

    type metadata accessor for SettingsNLIntent();
    sub_268E47728();
    sub_268F9A0F4();

    v10 = v11;
    v3 = v11 != 2;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return 6;
  }
}

uint64_t sub_268E42B00()
{
  v1 = *sub_268E44330();

  type metadata accessor for SettingsNLIntent();
  sub_268E47728();
  sub_268F9A0F4();

  return v2;
}

uint64_t sub_268E43094()
{
  v1 = *sub_268E449C8();

  type metadata accessor for SettingsNLIntent();
  sub_268E47728();
  sub_268F9A0F4();
}

uint64_t sub_268E430FC()
{
  v1 = *sub_268E44AEC();

  type metadata accessor for SettingsNLIntent();
  sub_268E47728();
  sub_268F9A0F4();

  return v2;
}

uint64_t sub_268E43164()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD2D0, &qword_268FA3950);
  v0 = sub_268D8E300();
  v3 = *v0;
  v2 = v0[1];

  sub_268E477A8();
  sub_268E0AD18();
  result = sub_268F99ED4();
  qword_2802DD200 = result;
  return result;
}

uint64_t *sub_268E431E8()
{
  if (qword_2802DB5B0 != -1)
  {
    swift_once();
  }

  return &qword_2802DD200;
}

uint64_t sub_268E43248()
{
  v1 = *sub_268E431E8();

  return v1;
}

uint64_t sub_268E43278()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD2E0, &qword_268FA3958);
  sub_268F9AEF4();
  sub_268E47820();
  sub_268E0AD18();
  result = sub_268F99ED4();
  qword_2802DD208 = result;
  return result;
}

uint64_t *sub_268E4330C()
{
  if (qword_2802DB5B8 != -1)
  {
    swift_once();
  }

  return &qword_2802DD208;
}

uint64_t sub_268E4336C()
{
  v1 = *sub_268E4330C();

  return v1;
}

uint64_t sub_268E4339C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD2F0, &qword_268FA3960);
  sub_268F9AEF4();
  sub_268E4789C();
  sub_268E0AD18();
  result = sub_268F99ED4();
  qword_2802DD210 = result;
  return result;
}

uint64_t *sub_268E43430()
{
  if (qword_2802DB5C0 != -1)
  {
    swift_once();
  }

  return &qword_2802DD210;
}

uint64_t sub_268E43490()
{
  v1 = *sub_268E43430();

  return v1;
}

uint64_t sub_268E434C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD2F0, &qword_268FA3960);
  sub_268F9AEF4();
  sub_268E4789C();
  sub_268E0AD18();
  result = sub_268F99ED4();
  qword_2802DD218 = result;
  return result;
}

uint64_t *sub_268E43554()
{
  if (qword_2802DB5C8 != -1)
  {
    swift_once();
  }

  return &qword_2802DD218;
}

uint64_t sub_268E435B4()
{
  v1 = *sub_268E43554();

  return v1;
}

uint64_t sub_268E435E4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD300, &qword_268FA3968);
  sub_268F9AEF4();
  sub_268F99FE4();
  sub_268E47918();
  sub_268E0AD18();
  result = sub_268F99ED4();
  qword_2802DD220 = result;
  return result;
}

uint64_t *sub_268E4367C()
{
  if (qword_2802DB5D0 != -1)
  {
    swift_once();
  }

  return &qword_2802DD220;
}

uint64_t sub_268E436DC()
{
  v1 = *sub_268E4367C();

  return v1;
}

uint64_t sub_268E4370C()
{
  sub_268F99E64();
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD310, &qword_268FA3970);
  sub_268F9B734();
  v5 = v0;
  v2 = *sub_268E431E8();

  v5[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD2D0, &qword_268FA3950);
  v5[4] = sub_268E47998();
  *v5 = v2;
  v3 = *sub_268E4330C();

  v5[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD2E0, &qword_268FA3958);
  v5[9] = sub_268E47A20();
  v5[5] = v3;
  v4 = *sub_268E43430();

  v5[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD2F0, &qword_268FA3960);
  v5[14] = sub_268E47AA8();
  v5[10] = v4;
  v6 = *sub_268E4367C();

  v5[18] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD300, &qword_268FA3968);
  v5[19] = sub_268E47B30();
  v5[15] = v6;
  sub_268CD0F7C();
  sub_268CDD6D4();
  result = sub_268F99E54();
  qword_2802DD228 = result;
  return result;
}

uint64_t *sub_268E438C8()
{
  if (qword_2802DB5D8 != -1)
  {
    swift_once();
  }

  return &qword_2802DD228;
}

uint64_t sub_268E43928()
{
  v1 = *sub_268E438C8();

  return v1;
}

uint64_t sub_268E43958()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD2D0, &qword_268FA3950);
  sub_268F9AEF4();
  sub_268E477A8();
  sub_268E0AD18();
  result = sub_268F99ED4();
  qword_2802DD230 = result;
  return result;
}

uint64_t *sub_268E439E8()
{
  if (qword_2802DB5E0 != -1)
  {
    swift_once();
  }

  return &qword_2802DD230;
}

uint64_t sub_268E43A48()
{
  v1 = *sub_268E439E8();

  return v1;
}

uint64_t sub_268E43A78()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD2E0, &qword_268FA3958);
  sub_268F9AEF4();
  sub_268E47820();
  sub_268E0AD18();
  result = sub_268F99ED4();
  qword_2802DD238 = result;
  return result;
}

uint64_t *sub_268E43B0C()
{
  if (qword_2802DB5E8 != -1)
  {
    swift_once();
  }

  return &qword_2802DD238;
}

uint64_t sub_268E43B6C()
{
  v1 = *sub_268E43B0C();

  return v1;
}

uint64_t sub_268E43B9C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD2F0, &qword_268FA3960);
  sub_268F9AEF4();
  sub_268E4789C();
  sub_268E0AD18();
  result = sub_268F99ED4();
  qword_2802DD240 = result;
  return result;
}

uint64_t *sub_268E43C30()
{
  if (qword_2802DB5F0 != -1)
  {
    swift_once();
  }

  return &qword_2802DD240;
}

uint64_t sub_268E43C90()
{
  v1 = *sub_268E43C30();

  return v1;
}

uint64_t sub_268E43CC0()
{
  sub_268F99E64();
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD310, &qword_268FA3970);
  sub_268F9B734();
  v4 = v0;
  v2 = *sub_268E439E8();

  v4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD2D0, &qword_268FA3950);
  v4[4] = sub_268E47998();
  *v4 = v2;
  v3 = *sub_268E43B0C();

  v4[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD2E0, &qword_268FA3958);
  v4[9] = sub_268E47A20();
  v4[5] = v3;
  v5 = *sub_268E43C30();

  v4[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD2F0, &qword_268FA3960);
  v4[14] = sub_268E47AA8();
  v4[10] = v5;
  sub_268CD0F7C();
  sub_268CDD6D4();
  result = sub_268F99E54();
  qword_2802DD248 = result;
  return result;
}

uint64_t *sub_268E43E3C()
{
  if (qword_2802DB5F8 != -1)
  {
    swift_once();
  }

  return &qword_2802DD248;
}

uint64_t sub_268E43E9C()
{
  v1 = *sub_268E43E3C();

  return v1;
}

uint64_t sub_268E43ECC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD338, &qword_268FA3978);
  sub_268F9AEF4();
  sub_268E0AD18();
  result = sub_268F99ED4();
  qword_2802DD250 = result;
  return result;
}

uint64_t *sub_268E43F5C()
{
  if (qword_2802DB600 != -1)
  {
    swift_once();
  }

  return &qword_2802DD250;
}

uint64_t sub_268E43FBC()
{
  v1 = *sub_268E43F5C();

  return v1;
}

uint64_t sub_268E43FEC()
{
  sub_268F99E64();
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD310, &qword_268FA3970);
  sub_268F9B734();
  v2 = v0;
  v3 = *sub_268E43F5C();

  v2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD338, &qword_268FA3978);
  v2[4] = sub_268E47BB8();
  *v2 = v3;
  sub_268CD0F7C();
  sub_268CDD6D4();
  result = sub_268F99E54();
  qword_2802DD258 = result;
  return result;
}

uint64_t *sub_268E440E8()
{
  if (qword_2802DB608 != -1)
  {
    swift_once();
  }

  return &qword_2802DD258;
}

uint64_t sub_268E44148()
{
  v1 = *sub_268E440E8();

  return v1;
}

uint64_t sub_268E44178()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD348, &qword_268FA3980);
  sub_268F9AEF4();
  sub_268E47C40();
  sub_268E0AD18();
  result = sub_268F99ED4();
  qword_2802DD260 = result;
  return result;
}

uint64_t *sub_268E4420C()
{
  if (qword_2802DB610 != -1)
  {
    swift_once();
  }

  return &qword_2802DD260;
}

uint64_t sub_268E4426C()
{
  v1 = *sub_268E4420C();

  return v1;
}

uint64_t sub_268E4429C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD2E0, &qword_268FA3958);
  sub_268F9AEF4();
  sub_268E47820();
  sub_268E0AD18();
  result = sub_268F99ED4();
  qword_2802DD268 = result;
  return result;
}

uint64_t *sub_268E44330()
{
  if (qword_2802DB618 != -1)
  {
    swift_once();
  }

  return &qword_2802DD268;
}

uint64_t sub_268E44390()
{
  v1 = *sub_268E44330();

  return v1;
}

uint64_t sub_268E443C0()
{
  v0 = sub_268F99E64();
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD310, &qword_268FA3970);
  sub_268F9B734();
  v5 = v1;
  v3 = *sub_268E440E8();

  v5[3] = v0;
  v5[4] = MEMORY[0x277D5E210];
  *v5 = v3;
  v4 = *sub_268E4420C();

  v5[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD348, &qword_268FA3980);
  v5[9] = sub_268E47CBC();
  v5[5] = v4;
  v6 = *sub_268E44330();

  v5[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD2E0, &qword_268FA3958);
  v5[14] = sub_268E47A20();
  v5[10] = v6;
  sub_268CD0F7C();
  sub_268CDD6D4();
  result = sub_268F99E54();
  qword_2802DD270 = result;
  return result;
}

uint64_t *sub_268E4452C()
{
  if (qword_2802DB620 != -1)
  {
    swift_once();
  }

  return &qword_2802DD270;
}

uint64_t sub_268E4458C()
{
  v1 = *sub_268E4452C();

  return v1;
}

uint64_t sub_268E445BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD360, &qword_268FA3988);
  sub_268F9AEF4();
  sub_268E47D44();
  sub_268E0AD18();
  result = sub_268F99ED4();
  qword_2802DD278 = result;
  return result;
}

uint64_t *sub_268E4464C()
{
  if (qword_2802DB628 != -1)
  {
    swift_once();
  }

  return &qword_2802DD278;
}

uint64_t sub_268E446AC()
{
  v1 = *sub_268E4464C();

  return v1;
}

uint64_t sub_268E446DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD370, &qword_268FA3990);
  sub_268F9AEF4();
  sub_268E47DBC();
  sub_268E0AD18();
  result = sub_268F99ED4();
  qword_2802DD280 = result;
  return result;
}

uint64_t *sub_268E44770()
{
  if (qword_2802DB630 != -1)
  {
    swift_once();
  }

  return &qword_2802DD280;
}

uint64_t sub_268E447D0()
{
  v1 = *sub_268E44770();

  return v1;
}

uint64_t sub_268E44800()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD2E0, &qword_268FA3958);
  sub_268F9AEF4();
  sub_268E47820();
  sub_268E0AD18();
  result = sub_268F99ED4();
  qword_2802DD288 = result;
  return result;
}

uint64_t *sub_268E44894()
{
  if (qword_2802DB638 != -1)
  {
    swift_once();
  }

  return &qword_2802DD288;
}

uint64_t sub_268E448F4()
{
  v1 = *sub_268E44894();

  return v1;
}

uint64_t sub_268E44924()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD380, &unk_268FA3998);
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD1E8, &qword_268FA37D0);
  sub_268E47E38();
  sub_268E0AD18();
  result = sub_268F99ED4();
  qword_2802DD290 = result;
  return result;
}

uint64_t *sub_268E449C8()
{
  if (qword_2802DB640 != -1)
  {
    swift_once();
  }

  return &qword_2802DD290;
}

uint64_t sub_268E44A28()
{
  v1 = *sub_268E449C8();

  return v1;
}

uint64_t sub_268E44A58()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD390, &qword_268FA39A8);
  sub_268F9AEF4();
  sub_268E47EC0();
  sub_268E0AD18();
  result = sub_268F99ED4();
  qword_2802DD298 = result;
  return result;
}

uint64_t *sub_268E44AEC()
{
  if (qword_2802DB648 != -1)
  {
    swift_once();
  }

  return &qword_2802DD298;
}

uint64_t sub_268E44B4C()
{
  v1 = *sub_268E44AEC();

  return v1;
}

uint64_t sub_268E44B7C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD3A0, &qword_268FA39B0);
  sub_268F9AEF4();
  sub_268E47F3C();
  sub_268E0AD18();
  result = sub_268F99ED4();
  qword_2802DD2A0 = result;
  return result;
}

uint64_t *sub_268E44C10()
{
  if (qword_2802DB650 != -1)
  {
    swift_once();
  }

  return &qword_2802DD2A0;
}

uint64_t sub_268E44C70()
{
  v1 = *sub_268E44C10();

  return v1;
}

uint64_t sub_268E44CA0()
{
  sub_268F99E64();
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD310, &qword_268FA3970);
  sub_268F9B734();
  v7 = v0;
  v2 = *sub_268E4464C();

  v7[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD360, &qword_268FA3988);
  v7[4] = sub_268E47FB8();
  *v7 = v2;
  v3 = *sub_268E44770();

  v7[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD370, &qword_268FA3990);
  v7[9] = sub_268E48040();
  v7[5] = v3;
  v4 = *sub_268E44894();

  v7[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD2E0, &qword_268FA3958);
  v7[14] = sub_268E47A20();
  v7[10] = v4;
  v5 = *sub_268E449C8();

  v7[18] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD380, &unk_268FA3998);
  v7[19] = sub_268E480C8();
  v7[15] = v5;
  v6 = *sub_268E44AEC();

  v7[23] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD390, &qword_268FA39A8);
  v7[24] = sub_268E48150();
  v7[20] = v6;
  v8 = *sub_268E44C10();

  v7[28] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD3A0, &qword_268FA39B0);
  v7[29] = sub_268E481D8();
  v7[25] = v8;
  sub_268CD0F7C();
  sub_268CDD6D4();
  result = sub_268F99E54();
  qword_2802DD2A8 = result;
  return result;
}

uint64_t *sub_268E44EDC()
{
  if (qword_2802DB658 != -1)
  {
    swift_once();
  }

  return &qword_2802DD2A8;
}

uint64_t sub_268E44F3C()
{
  v1 = *sub_268E44EDC();

  return v1;
}

uint64_t sub_268E44F6C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD3D8, qword_268FA39B8);
  sub_268F9AEF4();
  sub_268E48260();
  sub_268E0AD18();
  result = sub_268F99ED4();
  qword_2802DD2B0 = result;
  return result;
}

uint64_t *sub_268E45000()
{
  if (qword_2802DB660 != -1)
  {
    swift_once();
  }

  return &qword_2802DD2B0;
}

uint64_t sub_268E45060()
{
  v1 = *sub_268E45000();

  return v1;
}

uint64_t sub_268E45090()
{
  v0 = sub_268F99E64();
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD310, &qword_268FA3970);
  sub_268F9B734();
  v7 = v1;
  v3 = *sub_268E43E3C();

  v7[3] = v0;
  v6 = MEMORY[0x277D5E210];
  v7[4] = MEMORY[0x277D5E210];
  *v7 = v3;
  v4 = *sub_268E44EDC();

  v7[8] = v0;
  v7[9] = v6;
  v7[5] = v4;
  v5 = *sub_268E438C8();

  v7[13] = v0;
  v7[14] = v6;
  v7[10] = v5;
  v8 = *sub_268E4452C();

  v7[18] = v0;
  v7[19] = v6;
  v7[15] = v8;
  sub_268CD0F7C();
  sub_268CDD6D4();
  result = sub_268F99E54();
  qword_2802DD2B8 = result;
  return result;
}

uint64_t *sub_268E45200()
{
  if (qword_2802DB668 != -1)
  {
    swift_once();
  }

  return &qword_2802DD2B8;
}

uint64_t sub_268E45260()
{
  v1 = *sub_268E45200();

  return v1;
}

uint64_t sub_268E45290()
{
  sub_268F99EC4();
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD310, &qword_268FA3970);
  sub_268F9B734();
  v3 = v0;
  v2 = *sub_268E45200();

  v3[3] = sub_268F99E64();
  v3[4] = MEMORY[0x277D5E210];
  *v3 = v2;
  v4 = *sub_268E45000();

  v3[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD3D8, qword_268FA39B8);
  v3[9] = sub_268E482DC();
  v3[5] = v4;
  sub_268CD0F7C();
  result = sub_268F99EB4();
  qword_2802DD2C0 = result;
  return result;
}

uint64_t *sub_268E453BC()
{
  if (qword_2802DB670 != -1)
  {
    swift_once();
  }

  return &qword_2802DD2C0;
}

uint64_t sub_268E4541C()
{
  v1 = *sub_268E453BC();

  return v1;
}

uint64_t sub_268E454AC(uint64_t a1)
{
  v10 = a1;
  v9 = sub_268F9A704();
  v7 = *(v9 - 8);
  v8 = v9 - 8;
  v4 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](v9);
  v5 = &v3 - v4;
  (*(v7 + 16))(v1);
  (*(v7 + 40))(v6, v5, v9);
  return (*(v7 + 8))(v10, v9);
}

uint64_t sub_268E455C0()
{
  v1 = *sub_268E453BC();

  return v1;
}

uint64_t sub_268E455F8()
{
  sub_268F9B734();
  *v0 = "password";
  *(v0 + 8) = 8;
  *(v0 + 16) = 2;
  *(v0 + 24) = "passwords";
  *(v0 + 32) = 9;
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

uint64_t sub_268E4572C()
{
  result = sub_268F9B734();
  *v1 = 0;
  v1[1] = 1;
  sub_268CD0F7C();
  return result;
}

uint64_t sub_268E45924@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_268E455F8();
  *a2 = result;
  return result;
}

uint64_t sub_268E4595C@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  result = sub_268E4577C();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_268E45994@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268E4572C();
  *a1 = result;
  return result;
}

uint64_t sub_268E459C0()
{
  sub_268E483E0();
  sub_268E4845C();
  sub_268E48364();
  return sub_268F9A4A4();
}

uint64_t sub_268E45A18()
{
  sub_268F9B734();
  *v0 = "goto";
  *(v0 + 8) = 4;
  *(v0 + 16) = 2;
  *(v0 + 24) = "read";
  *(v0 + 32) = 4;
  *(v0 + 40) = 2;
  *(v0 + 48) = "set";
  *(v0 + 56) = 3;
  *(v0 + 64) = 2;
  *(v0 + 72) = "toggle";
  *(v0 + 80) = 6;
  *(v0 + 88) = 2;
  *(v0 + 96) = "join";
  *(v0 + 104) = 4;
  *(v0 + 112) = 2;
  *(v0 + 120) = "connect";
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

uint64_t sub_268E45C70()
{
  result = sub_268F9B734();
  *v1 = 0;
  v1[1] = 1;
  v1[2] = 2;
  v1[3] = 3;
  v1[4] = 4;
  v1[5] = 5;
  sub_268CD0F7C();
  return result;
}

uint64_t sub_268E45CE0()
{
  sub_268F9B734();
  *v0 = "on";
  *(v0 + 8) = 2;
  *(v0 + 16) = 2;
  *(v0 + 24) = "off";
  *(v0 + 32) = 3;
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

uint64_t sub_268E45E18()
{
  result = sub_268F9B734();
  *v1 = 0;
  v1[1] = 1;
  sub_268CD0F7C();
  return result;
}

uint64_t sub_268E45EF4()
{
  sub_268F9B734();
  *v0 = "personalHotspot";
  *(v0 + 8) = 15;
  *(v0 + 16) = 2;
  *(v0 + 24) = "discoverability";
  *(v0 + 32) = 15;
  *(v0 + 40) = 2;
  *(v0 + 48) = "password";
  *(v0 + 56) = 8;
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

uint64_t sub_268E46074()
{
  result = sub_268F9B734();
  *v1 = 0;
  v1[1] = 1;
  v1[2] = 2;
  sub_268CD0F7C();
  return result;
}

BOOL sub_268E460CC()
{
  sub_268F9B734();
  *v0 = "always";
  *(v0 + 8) = 6;
  *(v0 + 16) = 2;
  sub_268CD0F7C();
  v2 = sub_268F9B5C4();

  return v2 != 0;
}

uint64_t sub_268E461A4()
{
  result = sub_268F9B734();
  sub_268CD0F7C();
  return result;
}

BOOL sub_268E46218()
{
  sub_268F9B734();
  *v0 = "percent";
  *(v0 + 8) = 7;
  *(v0 + 16) = 2;
  sub_268CD0F7C();
  v2 = sub_268F9B5C4();

  return v2 != 0;
}

uint64_t sub_268E462F0()
{
  result = sub_268F9B734();
  sub_268CD0F7C();
  return result;
}

uint64_t sub_268E46364(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 2;
    case 3:
      return 3;
    case 4:
      return 4;
  }

  return 5;
}

uint64_t sub_268E46450()
{
  result = sub_268F9B734();
  *v1 = 0;
  v1[1] = 1;
  v1[2] = 2;
  v1[3] = 3;
  v1[4] = 4;
  sub_268CD0F7C();
  return result;
}

uint64_t sub_268E464B8(char a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 2;
    case 3:
      return 3;
  }

  return 4;
}

uint64_t sub_268E46678@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_268E45A18();
  *a2 = result;
  return result;
}

uint64_t sub_268E466B0@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  result = sub_268E42F14();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_268E466E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268E45C70();
  *a1 = result;
  return result;
}

uint64_t sub_268E46710()
{
  sub_268E48554();
  sub_268E485D0();
  sub_268E484D8();
  return sub_268F9A4A4();
}

uint64_t sub_268E46884@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_268E45CE0();
  *a2 = result;
  return result;
}

uint64_t sub_268E468BC@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  result = sub_268E45E68();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_268E468F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268E45E18();
  *a1 = result;
  return result;
}

uint64_t sub_268E46920()
{
  sub_268E486C8();
  sub_268E48744();
  sub_268E4864C();
  return sub_268F9A4A4();
}

uint64_t sub_268E46A94@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_268E45EF4();
  *a2 = result;
  return result;
}

uint64_t sub_268E46ACC@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  result = sub_268E42E48();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_268E46B00@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268E46074();
  *a1 = result;
  return result;
}

uint64_t sub_268E46B2C()
{
  sub_268E4883C();
  sub_268E488B8();
  sub_268E487C0();
  return sub_268F9A4A4();
}

BOOL sub_268E46CA0@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_268E460CC();
  *a2 = result;
  return result;
}

uint64_t sub_268E46CE0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268E461E4();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_268E46D10@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268E461A4();
  *a1 = result;
  return result;
}

uint64_t sub_268E46D3C()
{
  sub_268E489B0();
  sub_268E48A2C();
  sub_268E48934();
  return sub_268F9A4A4();
}

BOOL sub_268E46EB0@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_268E46218();
  *a2 = result;
  return result;
}

uint64_t sub_268E46EF0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268E46330();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_268E46F20@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268E462F0();
  *a1 = result;
  return result;
}

uint64_t sub_268E46F4C()
{
  sub_268E48B24();
  sub_268E48BA0();
  sub_268E48AA8();
  return sub_268F9A4A4();
}

uint64_t sub_268E470C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268E46364(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_268E470F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268E464B8(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_268E47120@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268E46450();
  *a1 = result;
  return result;
}

uint64_t sub_268E4714C()
{
  sub_268E48C98();
  sub_268E48D14();
  return sub_268F9A4B4();
}

uint64_t sub_268E47198()
{
  sub_268F9B734();
  *v0 = "cancel";
  *(v0 + 8) = 6;
  *(v0 + 16) = 2;
  *(v0 + 24) = "no";
  *(v0 + 32) = 2;
  *(v0 + 40) = 2;
  *(v0 + 48) = "yes";
  *(v0 + 56) = 3;
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

uint64_t sub_268E4731C()
{
  result = sub_268F9B734();
  *v1 = 0;
  v1[1] = 1;
  v1[2] = 2;
  sub_268CD0F7C();
  return result;
}

uint64_t sub_268E4755C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_268E47198();
  *a2 = result;
  return result;
}

uint64_t sub_268E47594@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  result = sub_268E47374();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_268E475C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268E4731C();
  *a1 = result;
  return result;
}

uint64_t sub_268E475F4()
{
  sub_268E48E0C();
  sub_268E48E88();
  sub_268E48D90();
  return sub_268F9A4A4();
}

uint64_t sub_268E4764C()
{
  v1 = *sub_268E45000();

  type metadata accessor for SettingsNLIntent();
  sub_268E47728();
  sub_268F9A0F4();

  return v2;
}

uint64_t type metadata accessor for SettingsNLIntent()
{
  v1 = qword_280FE5C48;
  if (!qword_280FE5C48)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

unint64_t sub_268E47728()
{
  v2 = qword_2802DD2C8;
  if (!qword_2802DD2C8)
  {
    type metadata accessor for SettingsNLIntent();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD2C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E477A8()
{
  v2 = qword_2802DD2D8;
  if (!qword_2802DD2D8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD2D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E47820()
{
  v2 = qword_2802DD2E8;
  if (!qword_2802DD2E8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD2E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E4789C()
{
  v2 = qword_2802DD2F8;
  if (!qword_2802DD2F8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD2F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E47918()
{
  v2 = qword_2802DD308;
  if (!qword_2802DD308)
  {
    sub_268F99FE4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD308);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E47998()
{
  v2 = qword_2802DD318;
  if (!qword_2802DD318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DD2D0, &qword_268FA3950);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD318);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E47A20()
{
  v2 = qword_2802DD320;
  if (!qword_2802DD320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DD2E0, &qword_268FA3958);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD320);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E47AA8()
{
  v2 = qword_2802DD328;
  if (!qword_2802DD328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DD2F0, &qword_268FA3960);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD328);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E47B30()
{
  v2 = qword_2802DD330;
  if (!qword_2802DD330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DD300, &qword_268FA3968);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD330);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E47BB8()
{
  v2 = qword_2802DD340;
  if (!qword_2802DD340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DD338, &qword_268FA3978);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD340);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E47C40()
{
  v2 = qword_2802DD350;
  if (!qword_2802DD350)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD350);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E47CBC()
{
  v2 = qword_2802DD358;
  if (!qword_2802DD358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DD348, &qword_268FA3980);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD358);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E47D44()
{
  v2 = qword_2802DD368;
  if (!qword_2802DD368)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD368);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E47DBC()
{
  v2 = qword_2802DD378;
  if (!qword_2802DD378)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD378);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E47E38()
{
  v2 = qword_2802DD388;
  if (!qword_2802DD388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DD1E8, &qword_268FA37D0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD388);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E47EC0()
{
  v2 = qword_2802DD398;
  if (!qword_2802DD398)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD398);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E47F3C()
{
  v2 = qword_2802DD3A8;
  if (!qword_2802DD3A8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD3A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E47FB8()
{
  v2 = qword_2802DD3B0;
  if (!qword_2802DD3B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DD360, &qword_268FA3988);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD3B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E48040()
{
  v2 = qword_2802DD3B8;
  if (!qword_2802DD3B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DD370, &qword_268FA3990);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD3B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E480C8()
{
  v2 = qword_2802DD3C0;
  if (!qword_2802DD3C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DD380, &unk_268FA3998);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD3C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E48150()
{
  v2 = qword_2802DD3C8;
  if (!qword_2802DD3C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DD390, &qword_268FA39A8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD3C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E481D8()
{
  v2 = qword_2802DD3D0;
  if (!qword_2802DD3D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DD3A0, &qword_268FA39B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD3D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E48260()
{
  v2 = qword_2802DD3E0;
  if (!qword_2802DD3E0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD3E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E482DC()
{
  v2 = qword_2802DD3E8;
  if (!qword_2802DD3E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DD3D8, qword_268FA39B8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD3E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E48364()
{
  v2 = qword_2802DD3F0;
  if (!qword_2802DD3F0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD3F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E483E0()
{
  v2 = qword_2802DD3F8;
  if (!qword_2802DD3F8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD3F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E4845C()
{
  v2 = qword_2802DD400;
  if (!qword_2802DD400)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD400);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E484D8()
{
  v2 = qword_2802DD408;
  if (!qword_2802DD408)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD408);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E48554()
{
  v2 = qword_2802DD410;
  if (!qword_2802DD410)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD410);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E485D0()
{
  v2 = qword_2802DD418;
  if (!qword_2802DD418)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD418);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E4864C()
{
  v2 = qword_2802DD420;
  if (!qword_2802DD420)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD420);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E486C8()
{
  v2 = qword_2802DD428;
  if (!qword_2802DD428)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD428);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E48744()
{
  v2 = qword_2802DD430;
  if (!qword_2802DD430)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD430);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E487C0()
{
  v2 = qword_2802DD438;
  if (!qword_2802DD438)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD438);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E4883C()
{
  v2 = qword_2802DD440;
  if (!qword_2802DD440)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD440);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E488B8()
{
  v2 = qword_2802DD448;
  if (!qword_2802DD448)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD448);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E48934()
{
  v2 = qword_2802DD450;
  if (!qword_2802DD450)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD450);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E489B0()
{
  v2 = qword_2802DD458;
  if (!qword_2802DD458)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD458);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E48A2C()
{
  v2 = qword_2802DD460;
  if (!qword_2802DD460)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD460);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E48AA8()
{
  v2 = qword_2802DD468;
  if (!qword_2802DD468)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD468);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E48B24()
{
  v2 = qword_2802DD470;
  if (!qword_2802DD470)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD470);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E48BA0()
{
  v2 = qword_2802DD478;
  if (!qword_2802DD478)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD478);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E48C1C()
{
  v2 = qword_2802DD480;
  if (!qword_2802DD480)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD480);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E48C98()
{
  v2 = qword_2802DD488;
  if (!qword_2802DD488)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD488);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E48D14()
{
  v2 = qword_2802DD490;
  if (!qword_2802DD490)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD490);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E48D90()
{
  v2 = qword_2802DD498;
  if (!qword_2802DD498)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD498);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E48E0C()
{
  v2 = qword_2802DD4A0;
  if (!qword_2802DD4A0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD4A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E48E88()
{
  v2 = qword_2802DD4A8;
  if (!qword_2802DD4A8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD4A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268E48F04()
{
  v3 = *sub_268E43C30();

  type metadata accessor for SettingsNLIntent();
  sub_268E47728();
  sub_268F9A0F4();

  if (v5 == 2)
  {
    v2 = *sub_268E43430();

    sub_268F9A0F4();

    if (v4 == 2)
    {
      v1 = *sub_268E43554();

      sub_268F9A0F4();
    }

    else
    {
      return v4 & 1;
    }
  }

  else
  {
    return v5 & 1;
  }

  return v6;
}

uint64_t sub_268E49064()
{
  v1 = *sub_268E4367C();

  type metadata accessor for SettingsNLIntent();
  sub_268E47728();
  sub_268F9A0F4();
}

uint64_t sub_268E490CC()
{
  v1 = *sub_268E44770();

  type metadata accessor for SettingsNLIntent();
  sub_268E47728();
  sub_268F9A0F4();

  return v2 & 1;
}

uint64_t sub_268E49138()
{
  v1 = *sub_268E44C10();

  type metadata accessor for SettingsNLIntent();
  sub_268E47728();
  sub_268F9A0F4();

  return v2;
}

uint64_t sub_268E491A0()
{
  v1 = *sub_268E4420C();

  type metadata accessor for SettingsNLIntent();
  sub_268E47728();
  sub_268F9A0F4();

  return v2;
}

uint64_t sub_268E49208()
{
  v1 = *sub_268E43F5C();

  type metadata accessor for SettingsNLIntent();
  sub_268E47728();
  sub_268F9A0F4();

  return v2;
}

unint64_t sub_268E492DC()
{
  v2 = qword_2802DD4B0;
  if (!qword_2802DD4B0)
  {
    type metadata accessor for SettingsNLIntent();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD4B0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268E493BC()
{
  sub_268F9B734();
  *v0 = "phone";
  *(v0 + 8) = 5;
  *(v0 + 16) = 2;
  *(v0 + 24) = "iphone";
  *(v0 + 32) = 6;
  *(v0 + 40) = 2;
  *(v0 + 48) = "airpods";
  *(v0 + 56) = 7;
  *(v0 + 64) = 2;
  *(v0 + 72) = "apple_watch";
  *(v0 + 80) = 11;
  *(v0 + 88) = 2;
  *(v0 + 96) = "airpods_max";
  *(v0 + 104) = 11;
  *(v0 + 112) = 2;
  *(v0 + 120) = "airpods_pro";
  *(v0 + 128) = 11;
  *(v0 + 136) = 2;
  *(v0 + 144) = "airpods_case";
  *(v0 + 152) = 12;
  *(v0 + 160) = 2;
  *(v0 + 168) = "homepod";
  *(v0 + 176) = 7;
  *(v0 + 184) = 2;
  *(v0 + 192) = "keyboard";
  *(v0 + 200) = 8;
  *(v0 + 208) = 2;
  *(v0 + 216) = "mouse";
  *(v0 + 224) = 5;
  *(v0 + 232) = 2;
  *(v0 + 240) = "trackpad";
  *(v0 + 248) = 8;
  *(v0 + 256) = 2;
  *(v0 + 264) = "pencil";
  *(v0 + 272) = 6;
  *(v0 + 280) = 2;
  *(v0 + 288) = "speaker";
  *(v0 + 296) = 7;
  *(v0 + 304) = 2;
  *(v0 + 312) = "headphones";
  *(v0 + 320) = 10;
  *(v0 + 328) = 2;
  *(v0 + 336) = "batteryCase";
  *(v0 + 344) = 11;
  *(v0 + 352) = 2;
  *(v0 + 360) = "apple_tv_siri_remote";
  *(v0 + 368) = 20;
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

uint64_t sub_268E498C4()
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
  v1[13] = 13;
  v1[14] = 14;
  v1[15] = 15;
  sub_268CD0F7C();
  return result;
}

unint64_t sub_268E499D0()
{
  v2 = qword_280FE4AC8;
  if (!qword_280FE4AC8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE4AC8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268E49B1C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_268E493BC();
  *a2 = result;
  return result;
}

uint64_t sub_268E49B54@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  result = sub_268E42B68();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_268E49B88@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268E498C4();
  *a1 = result;
  return result;
}

uint64_t sub_268E49BB4()
{
  sub_268E49C0C();
  sub_268E49C88();
  sub_268E499D0();
  return sub_268F9A4A4();
}

unint64_t sub_268E49C0C()
{
  v2 = qword_2802DD4B8;
  if (!qword_2802DD4B8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD4B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E49C88()
{
  v2 = qword_2802DD4C0;
  if (!qword_2802DD4C0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD4C0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268E49D54()
{
  v2 = sub_268F9A704();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_268E49E8C(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xF0)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 15) >> 8) + 1;
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
      v5 = (*a1 | ((v6 - 1) << 8)) + 240;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 16;
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

_BYTE *sub_268E49FF4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xF0)
  {
    v5 = ((a3 + 15) >> 8) + 1;
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

  if (a2 > 0xF0)
  {
    v4 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
      *result = a2 + 15;
    }
  }

  return result;
}

unint64_t sub_268E4A21C()
{
  v2 = qword_280FE4AD0;
  if (!qword_280FE4AD0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE4AD0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E4A2B0()
{
  v2 = qword_2802DD4C8;
  if (!qword_2802DD4C8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD4C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E4A344()
{
  v2 = qword_2802DD4D0;
  if (!qword_2802DD4D0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD4D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E4A3D8()
{
  v2 = qword_2802DD4D8;
  if (!qword_2802DD4D8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD4D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E4A46C()
{
  v2 = qword_2802DD4E0;
  if (!qword_2802DD4E0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD4E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E4A500()
{
  v2 = qword_2802DD4E8;
  if (!qword_2802DD4E8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD4E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E4A594()
{
  v2 = qword_2802DD4F0;
  if (!qword_2802DD4F0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD4F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E4A628()
{
  v2 = qword_2802DD4F8;
  if (!qword_2802DD4F8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD4F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E4A6BC()
{
  v2 = qword_2802DD500;
  if (!qword_2802DD500)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD500);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E4A768()
{
  v2 = qword_2802DD508;
  if (!qword_2802DD508)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD508);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E4A7FC()
{
  v2 = qword_2802DD510;
  if (!qword_2802DD510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DD518, &qword_268FA3EB0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD510);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E4A8E4()
{
  v2 = qword_2802DD520;
  if (!qword_2802DD520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DD528, &qword_268FA3F90);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD520);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E4A99C()
{
  v2 = qword_2802DD530;
  if (!qword_2802DD530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DD538, &qword_268FA4030);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD530);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E4AA54()
{
  v2 = qword_2802DD540;
  if (!qword_2802DD540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DD548, &qword_268FA40D0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD540);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E4AAF4()
{
  v2 = qword_2802DD550;
  if (!qword_2802DD550)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD550);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E4AB88()
{
  v2 = qword_2802DD558;
  if (!qword_2802DD558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DD560, &qword_268FA4170);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD558);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E4AC40()
{
  v2 = qword_2802DD568;
  if (!qword_2802DD568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DD570, &qword_268FA4210);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD568);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E4ACE0()
{
  v2 = qword_2802DD578;
  if (!qword_2802DD578)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD578);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E4AD74()
{
  v2 = qword_2802DD580;
  if (!qword_2802DD580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DD588, &qword_268FA42B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD580);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E4AE2C()
{
  v2 = qword_2802DD590;
  if (!qword_2802DD590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DD598, &qword_268FA4350);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD590);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E4AEE4()
{
  v2 = qword_2802DD5A0;
  if (!qword_2802DD5A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DD5A8, &qword_268FA43F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD5A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E4AF9C()
{
  v2 = qword_2802DD5B0;
  if (!qword_2802DD5B0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD5B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E4B030()
{
  v2 = qword_2802DD5B8;
  if (!qword_2802DD5B8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD5B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E4B0C4()
{
  v2 = qword_2802DD5C0;
  if (!qword_2802DD5C0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD5C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E4B158()
{
  v2 = qword_2802DD5C8;
  if (!qword_2802DD5C8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD5C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E4B1EC()
{
  v2 = qword_2802DD5D0;
  if (!qword_2802DD5D0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD5D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E4B280()
{
  v2 = qword_2802DD5D8;
  if (!qword_2802DD5D8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD5D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E4B314()
{
  v2 = qword_2802DD5E0;
  if (!qword_2802DD5E0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD5E0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268E4B390(uint64_t a1)
{
  v27 = a1;
  v2 = v1;
  v3 = v27;
  v34 = v2;
  v45 = "LaunchEnvPickerFlow on";
  v43 = &dword_268CBE000;
  v28 = "Parse is of unexpected type: %@.";
  v53 = 0;
  v52 = 0;
  v54 = 0;
  v41 = 0;
  v29 = sub_268F99C24();
  v30 = *(v29 - 8);
  v31 = v29 - 8;
  v32 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v33 = &v17 - v32;
  v54 = &v17 - v32;
  v51 = sub_268F99C34();
  v48 = *(v51 - 8);
  v49 = v51 - 8;
  v38 = *(v48 + 64);
  v35 = (v38 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v51);
  v36 = &v17 - v35;
  v37 = (v38 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v17 - v35);
  v39 = &v17 - v37;
  v40 = (v38 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v17 - v37);
  v50 = &v17 - v40;
  v53 = v3;
  v52 = v4;
  v47 = *sub_268DC9C10();
  MEMORY[0x277D82BE0](v47);
  v44 = sub_268F9B284();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v46 = sub_268F9B734();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v47);
  sub_268F99BE4();
  if ((*(v48 + 88))(v50, v51) != *MEMORY[0x277D5C150])
  {
    goto LABEL_5;
  }

  v5 = v33;
  (*(v48 + 16))(v39, v50, v51);
  (*(v48 + 96))(v39, v51);
  (*(v30 + 32))(v5, v39, v29);
  v26 = type metadata accessor for LaunchEnvPicker();
  v6 = sub_268D90FF0();
  if ((sub_268F39FF8(v26, v26, v6) & 1) == 0)
  {
    (*(v30 + 8))(v33, v29);
LABEL_5:
    v22 = sub_268F9B284();
    v24 = *sub_268DC9C10();
    MEMORY[0x277D82BE0](v24);
    v21 = sub_268F9B734();
    v20 = v7;
    sub_268F99BE4();
    v18 = sub_268F9AE64();
    v19 = v8;
    v20[3] = MEMORY[0x277D837D0];
    v9 = sub_268CDD224();
    v10 = v18;
    v11 = v19;
    v12 = v20;
    v13 = v9;
    v14 = v21;
    v20[4] = v13;
    *v12 = v10;
    v12[1] = v11;
    sub_268CD0F7C();
    v23 = v14;
    sub_268F9AC14();

    v15 = MEMORY[0x277D82BD8](v24);
    (*(v48 + 8))(v50, v51, v15);
    v25 = 0;
    return v25 & 1;
  }

  v54 = v33;
  (*(v30 + 8))();
  (*(v48 + 8))(v50, v51);
  v25 = 1;
  return v25 & 1;
}

uint64_t sub_268E4B8F4(uint64_t a1)
{
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = v1;
  v3 = v2[2];
  return MEMORY[0x2822009F8](sub_268E4B92C, 0);
}

uint64_t sub_268E4B92C()
{
  v1 = *(v0 + 32);
  *(v0 + 16) = v0;
  sub_268F998F4();
  v2 = *(*(v0 + 16) + 8);
  v3 = *(v0 + 16);

  return v2();
}

uint64_t sub_268E4B9BC(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v16 = a2;
  v19 = &unk_268FA46A0;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  v15 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DBA30, &unk_268F9C860) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v20);
  v18 = &v14 - v15;
  v22 = v3;
  v23 = v4;
  v21 = v2;
  v17 = 0;
  v5 = sub_268F9B0E4();
  (*(*(v5 - 8) + 56))(v18, 1);

  v6 = swift_allocObject();
  v7 = v16;
  v8 = v17;
  v9 = v18;
  v10 = v19;
  v11 = v6;
  v12 = v20;
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v2;
  v11[5] = v12;
  v11[6] = v7;
  sub_268E4C098(v8, v8, v9, v10, v11, MEMORY[0x277D84F78] + 8);
}

uint64_t sub_268E4BB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a6;
  v6[6] = a5;
  v6[4] = v6;
  v6[5] = 0;
  v6[2] = 0;
  v6[3] = 0;
  v8 = sub_268F99904();
  v6[8] = v8;
  v12 = *(v8 - 8);
  v6[9] = v12;
  v9 = *(v12 + 64) + 15;
  v16 = swift_task_alloc();
  v6[10] = v16;
  v6[5] = a4;
  v6[2] = a5;
  v6[3] = a6;
  v10 = swift_task_alloc();
  *(v15 + 88) = v10;
  *v10 = *(v15 + 32);
  v10[1] = sub_268E4BCA4;

  return sub_268E4B8F4(v16);
}

uint64_t sub_268E4BCA4()
{
  v7 = *v1;
  v2 = *(*v1 + 88);
  *(v7 + 32) = *v1;
  v8 = (v7 + 32);
  *(v7 + 96) = v0;

  if (v0)
  {
    v5 = *v8;
    v4 = sub_268E4BF08;
  }

  else
  {
    v3 = *v8;
    v4 = sub_268E4BE0C;
  }

  return MEMORY[0x2822009F8](v4, 0);
}

uint64_t sub_268E4BE0C()
{
  v8 = v0[10];
  v6 = v0[9];
  v7 = v0[8];
  v5 = v0[7];
  v4 = v0[6];
  v0[4] = v0;

  v4(v8);

  (*(v6 + 8))(v8, v7);

  v1 = *(v0[4] + 8);
  v2 = v0[4];

  return v1();
}

uint64_t sub_268E4BF08()
{
  v1 = *(v0 + 80);
  *(v0 + 32) = v0;

  v2 = v0;
  v3 = *(*(v0 + 32) + 8);
  v4 = *(v0 + 32);
  v5 = *(v2 + 96);

  return v3();
}

uint64_t sub_268E4BFA8(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_268CD7B50;

  return sub_268E4BB34(a1, v6, v7, v8, v9, v10);
}

uint64_t sub_268E4C098(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v40 = a1;
  v41 = a2;
  v48 = a3;
  v49 = a4;
  v50 = a5;
  v42 = a6;
  v43 = "Fatal error";
  v44 = "Unexpectedly found nil while unwrapping an Optional value";
  v45 = "_Concurrency/arm64e-apple-ios.private.swiftinterface";
  v46 = 0;
  v59 = a6;
  v47 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DBA30, &unk_268F9C860) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v50);
  v51 = &v10 - v47;

  v57 = v49;
  v58 = v50;
  sub_268CD95D4(v48, v51);
  v52 = sub_268F9B0E4();
  v53 = *(v52 - 8);
  v54 = v52 - 8;
  if ((*(v53 + 48))(v51, 1) == 1)
  {
    sub_268CD96FC(v51);
    v39 = 0;
  }

  else
  {
    v38 = sub_268F9B0D4();
    (*(v53 + 8))(v51, v52);
    v39 = v38;
  }

  v35 = v39 | 0x1C00;
  v37 = *(v50 + 16);
  v36 = *(v50 + 24);
  swift_unknownObjectRetain();

  if (v37)
  {
    v33 = v37;
    v34 = v36;
    v27 = v36;
    v28 = v37;
    swift_getObjectType();
    v29 = sub_268F9B0B4();
    v30 = v6;
    swift_unknownObjectRelease();
    v31 = v29;
    v32 = v30;
  }

  else
  {
    v31 = 0;
    v32 = 0;
  }

  v25 = v32;
  v26 = v31;

  if (v41)
  {
    v23 = v40;
    v24 = v41;
    v7 = v46;
    v20 = v41;
    v21 = sub_268F9AEA4();

    v8 = *(v21 + 16);
    sub_268E4C6A4(v21 + 32, &v57, &v55);
    if (v7)
    {
      __break(1u);
    }

    v19 = v55;

    v22 = v19;
  }

  else
  {
    v22 = 0;
  }

  v18 = v22;
  if (v22)
  {
    v13 = v18;
    v12 = v18;
    sub_268CD96FC(v48);

    v14 = v12;
  }

  else
  {

    sub_268CD96FC(v48);
    v15 = v57;
    v16 = v58;

    v17 = 0;
    if (v26 != 0 || v25 != 0)
    {
      v56[0] = 0;
      v56[1] = 0;
      v56[2] = v26;
      v56[3] = v25;
      v17 = v56;
    }

    v14 = swift_task_create();
  }

  v11 = v14;

  return v11;
}

uint64_t sub_268E4C6A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X5>, uint64_t *a3@<X8>)
{
  if (!a1)
  {
    sub_268F9B584();
    __break(1u);
  }

  v4 = *a2;
  v5 = a2[1];

  result = swift_task_create();
  *a3 = result;
  return result;
}

uint64_t sub_268E4C868()
{
  v2 = *(v0 + 24);

  return v2;
}

uint64_t sub_268E4C894()
{
  v2 = *(v0 + 32);

  return v2;
}

uint64_t sub_268E4C8E0()
{
  v2 = *(v0 + 80);

  return v2;
}

uint64_t sub_268E4C90C(uint64_t *a1, uint64_t a2)
{
  v14 = a1;
  v13 = a2;
  v12 = v2;
  v3 = sub_268F9B734();
  *v4 = 29;
  v4[1] = 12;
  v4[2] = 45;
  v4[3] = 7;
  sub_268CD0F7C();
  v2[2] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD5E8, &qword_268FA4750);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD5F0, &qword_268FA4758);
  sub_268E12E98();
  v2[3] = sub_268F9ADA4();
  v5 = sub_268F9B734();
  *v6 = 0;
  v6[1] = 16;
  v6[2] = 51;
  v6[3] = 22;
  v6[4] = 12;
  sub_268CD0F7C();
  v2[4] = v5;
  sub_268CDE730(a1, v11);
  sub_268CDF978(v11, v2 + 5);

  v2[10] = a2;

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v10;
}

uint64_t sub_268E4CA7C(uint64_t a1)
{
  v38 = a1;
  v34 = "Open setting intent requires device unlock.";
  v35 = &dword_268CBE000;
  v36 = "The BinarySettingIdentifier cannot be created from the siriKitIntent";
  v37 = "Unlock is not required - device is currently unlocked";
  v61 = 0;
  v60 = 0;
  v56 = 0;
  v54 = 0;
  v51 = 0;
  v44 = sub_268F99A74();
  v42 = *(v44 - 8);
  v43 = v44 - 8;
  v39 = (*(v42 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v45 = v5 - v39;
  v61 = MEMORY[0x28223BE20](v38);
  v60 = v1;
  v46 = v57;
  sub_268CDE730(v1 + 40, v57);
  v40 = v58;
  v41 = v59;
  __swift_project_boxed_opaque_existential_1(v46, v58);
  sub_268F99A64();
  v47 = sub_268F997B4();
  (*(v42 + 8))(v45, v44);
  __swift_destroy_boxed_opaque_existential_0(v46);
  if (v47)
  {
    v32 = *sub_268DC8C4C();
    MEMORY[0x277D82BE0](v32);
    v30 = sub_268F9B284();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v31 = sub_268F9B734();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v32);
    v33 = 0;
    return v33 & 1;
  }

  MEMORY[0x277D82BE0](v38);
  objc_opt_self();
  v29 = swift_dynamicCastObjCClass();
  if (v29)
  {
    MEMORY[0x277D82BD8](v29);
    v28 = 1;
  }

  else
  {
    MEMORY[0x277D82BD8](v38);
    v28 = 0;
  }

  if (v28)
  {
    v7 = *sub_268DC8C4C();
    MEMORY[0x277D82BE0](v7);
    v5[1] = sub_268F9B284();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v6 = sub_268F9B734();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v7);
    v33 = 1;
    return v33 & 1;
  }

  v27._countAndFlagsBits = sub_268E4D198();
  v27._object = v2;
  if (!v2)
  {
LABEL_25:
    v10 = *sub_268DC8C4C();
    MEMORY[0x277D82BE0](v10);
    v8 = sub_268F9B284();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v9 = sub_268F9B734();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v10);
    v33 = 0;
    return v33 & 1;
  }

  v26 = v27;
  v24 = v27;
  v56 = v27;

  BinarySettingIdentifier.init(rawValue:)(v24);
  v25 = v55;
  if (v55 == 65)
  {

    goto LABEL_25;
  }

  v23 = v25;
  v21 = v25;
  v54 = v25;
  v22 = sub_268E4D4D0(v38);
  if (v3)
  {
    v53 = v21;
    v13 = sub_268E4D5E4(&v53);

    MEMORY[0x277D82BE0](v38);
    if (v13)
    {
      v12 = 1;
    }

    else
    {
      v52 = v21;
      v12 = sub_268E4D7EC(v38, &v52);
    }

    v11 = v12;

    MEMORY[0x277D82BD8](v38);

    v33 = v11;
  }

  else
  {
    v20 = v22;
    v18 = v22;
    v51 = v22;
    v50 = v21;
    v19 = sub_268E4D5E4(&v50);

    MEMORY[0x277D82BE0](v38);
    if (v19)
    {
      v17 = 1;
    }

    else
    {
      v49 = v21;
      v17 = sub_268E4D7EC(v38, &v49);
    }

    v16 = v17;

    MEMORY[0x277D82BD8](v38);

    if (v16)
    {
      v15 = 1;
    }

    else
    {
      v48 = v21;
      v15 = sub_268E4D6A0(&v48);
    }

    v14 = v15;

    v33 = v14;
  }

  return v33 & 1;
}

uint64_t sub_268E4D198()
{
  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (v16)
  {
    MEMORY[0x277D82BE0](v16);
    v0 = sub_268CD7620();
    v14 = SettingIntent.settingIdentifier.getter(v0, &protocol witness table for INSetBinarySettingIntent);
    MEMORY[0x277D82BD8](v16);
    return v14;
  }

  else
  {
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      MEMORY[0x277D82BE0](v13);
      v1 = sub_268D588E0();
      v12 = SettingIntent.settingIdentifier.getter(v1, &protocol witness table for INSetNumericSettingIntent);
      MEMORY[0x277D82BD8](v13);
      return v12;
    }

    else
    {
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        MEMORY[0x277D82BE0](v11);
        v2 = sub_268E4DA90();
        v10 = SettingIntent.settingIdentifier.getter(v2, &protocol witness table for INSetTemporalSettingIntent);
        MEMORY[0x277D82BD8](v11);
        return v10;
      }

      else
      {
        objc_opt_self();
        v9 = swift_dynamicCastObjCClass();
        if (v9)
        {
          MEMORY[0x277D82BE0](v9);
          v3 = sub_268DC0720();
          v8 = SettingIntent.settingIdentifier.getter(v3, &protocol witness table for INSetLabeledSettingIntent);
          MEMORY[0x277D82BD8](v9);
          return v8;
        }

        else
        {
          objc_opt_self();
          v7 = swift_dynamicCastObjCClass();
          if (v7)
          {
            MEMORY[0x277D82BE0](v7);
            v4 = sub_268D2E630();
            v6 = SettingIntent.settingIdentifier.getter(v4, &protocol witness table for INGetSettingIntent);
            MEMORY[0x277D82BD8](v7);
            return v6;
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }
}

id sub_268E4D4D0(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v4 = v6;
  }

  else
  {
    MEMORY[0x277D82BD8](a1);
    v4 = 0;
  }

  if (!v4)
  {
    return 0;
  }

  v2 = [v4 binaryValue];
  MEMORY[0x277D82BD8](v4);
  return v2;
}

uint64_t sub_268E4D5E4(char *a1)
{
  v7 = 0;
  v6 = 0;
  v7 = *a1;
  v6 = v1;
  v3 = *(v1 + 16);

  v5 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC090, &qword_268F9D9A0);
  sub_268D28B4C();
  sub_268D288C8();
  v4 = sub_268F9AFC4();
  sub_268CD7930(&v5);
  return v4 & 1;
}

uint64_t sub_268E4D6A0(char *a1)
{
  v7 = *a1;
  v5 = *(v1 + 24);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD5F0, &qword_268FA4758);
  sub_268E12E98();
  sub_268F9ADC4();

  if (v6)
  {
    sub_268E4DAF4();
    sub_268D292B8();
    v3 = sub_268F9AFC4();

    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_268E4D7EC(uint64_t a1, char *a2)
{
  v17 = 0;
  v16[1] = 0;
  v18 = a1;
  v17 = *a2;
  MEMORY[0x277D82BE0](a1);
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (v15)
  {
    MEMORY[0x277D82BD8](v15);
    v12 = 1;
  }

  else
  {
    MEMORY[0x277D82BD8](a1);
    v12 = 0;
  }

  MEMORY[0x277D82BE0](a1);
  if (v12)
  {
    v11 = 1;
  }

  else
  {
    MEMORY[0x277D82BE0](a1);
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      MEMORY[0x277D82BD8](v10);
      v9 = 1;
    }

    else
    {
      MEMORY[0x277D82BD8](a1);
      v9 = 0;
    }

    v11 = v9;
  }

  MEMORY[0x277D82BD8](a1);

  if (v11)
  {
    v6 = *(v13 + 32);

    v16[0] = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC090, &qword_268F9D9A0);
    sub_268D28B4C();
    sub_268D288C8();
    v7 = sub_268F9AFC4();
    sub_268CD7930(v16);
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v3 = *(v13 + 80);

    v4 = sub_268D3CC50();

    v5 = v4 ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

unint64_t sub_268E4DA90()
{
  v2 = qword_2802DD5F8;
  if (!qword_2802DD5F8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DD5F8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_268E4DAF4()
{
  v2 = qword_2802DD600;
  if (!qword_2802DD600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DD5F0, &qword_268FA4758);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD600);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268E4DB7C()
{
  sub_268CD7930(v0 + 2);
  sub_268CD7930(v0 + 3);
  sub_268CD7930(v0 + 4);
  __swift_destroy_boxed_opaque_existential_0(v0 + 5);
  v1 = v0[10];

  return v3;
}

uint64_t *sub_268E4DC3C()
{
  if (qword_280FE38D8 != -1)
  {
    swift_once();
  }

  return &qword_280FE80B8;
}

uint64_t sub_268E4DC9C()
{
  type metadata accessor for GetDisplayBrightnessHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_280FE80B8 = result;
  return result;
}

uint64_t sub_268E4DD04()
{
  v1 = *sub_268E4DC3C();

  return v1;
}

void sub_268E4DD34(void *a1, void (*a2)(id), uint64_t a3)
{
  v37 = a3;
  v38 = a2;
  v44 = a1;
  v45 = 0;
  v57 = 0;
  v39 = 0;
  v60 = a1;
  v58 = a2;
  v59 = a3;
  v41 = sub_268F9B284();
  v43 = *sub_268DC7AE8();
  v3 = v43;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v42 = sub_268F9B734();
  sub_268F9AC14();

  v56 = v44;
  v4 = sub_268D2E630();
  v46 = SettingIntent.deviceCategory.getter(v4, &protocol witness table for INGetSettingIntent);
  v47 = v5;
  v48 = &v54;
  v52 = v46;
  v53 = v5 & 1;
  v54 = 6;
  v55 = 0;
  if ((v5 & 1) == 0)
  {
    v50 = v46;
    v51 = v47 & 1;
    if ((v48[1] & 1) == 0)
    {
      v49 = *v48;
      v34 = type metadata accessor for INDeviceCategory();
      sub_268CD7818();
      v35 = sub_268F9AE04();
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  if ((v48[1] & 1) == 0)
  {
LABEL_9:
    v35 = 0;
    goto LABEL_7;
  }

  v35 = 1;
LABEL_7:
  if (v35)
  {
    v20[1] = sub_268F9B284();
    v22 = *sub_268DC7AE8();
    v17 = v22;
    v21 = sub_268F9B734();
    sub_268F9AC14();

    sub_268E948B8();
    v23 = v18;
    v24 = sub_268E41B70();

    v38(v24);

    v25 = v39;
  }

  else
  {
    v6 = v39;
    v7 = sub_268DBB944();
    v31 = *v7;
    v27 = v7[1];
    v28 = *(v7 + 16);
    v29 = *sub_268DC7AE8();
    v26 = v29;
    v8 = v29;
    v30 = *(v36 + 24);

    v9 = v44;
    v32 = v20;
    MEMORY[0x28223BE20](v31);
    v19[2] = v10;
    v19[3] = v38;
    v19[4] = v37;
    v19[5] = v11;
    sub_268DB944C(v12, v13, v14, v15, v16, sub_268E4E958, v19, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
    v33 = v6;
  }
}

void sub_268E4E1A4(uint64_t a1, void (*a2)(id), uint64_t a3, void *a4)
{
  v59 = a1;
  v58 = a2;
  v56 = a3;
  v57 = a4;
  v54 = "Sending back response %@";
  v55 = "Adjusting display brightness is not supported in ambinet mode";
  v75 = 0;
  v73 = 0;
  v74 = 0;
  v72 = 0;
  v70 = 0;
  v60 = sub_268F9B6F4();
  v61 = *(v60 - 8);
  v62 = v60 - 8;
  v63 = (*(v61 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v59);
  v64 = &v22 - v63;
  v65 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v66 = &v22 - v65;
  v75 = v6;
  v73 = v7;
  v74 = v8;
  v72 = v9;
  v67 = *(v6 + 16);

  v68 = sub_268D36220();

  if (v68)
  {
    v49 = sub_268F9B284();
    v51 = *sub_268DC7AE8();
    MEMORY[0x277D82BE0](v51);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v50 = sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v51);

    sub_268E948B8();
    v52 = v10;
    v53 = sub_268E41B70();

    v58(v53);
    MEMORY[0x277D82BD8](v53);

    return;
  }

  v40 = [v57 settingMetadata];
  v41 = 0;
  v42 = sub_268DD26C8();
  v43 = sub_268D34FD4();
  v44 = *(v59 + 16);

  sub_268D39FDC();
  v45 = v11;

  v46 = sub_268E557EC(v45);
  v47 = MEMORY[0x277D84678];
  (*(v61 + 104))(v66, *MEMORY[0x277D84678], v60);
  v71 = v46;
  (*(v61 + 16))(v64, v66, v60);
  v48 = (*(v61 + 88))(v64, v60);
  if (v48 == *v47)
  {
    v71 = round(v46);
    goto LABEL_17;
  }

  if (v48 == *MEMORY[0x277D84670])
  {
    v71 = rint(v46);
    goto LABEL_17;
  }

  if (v48 == *MEMORY[0x277D84680])
  {
    goto LABEL_15;
  }

  if (v48 == *MEMORY[0x277D84688])
  {
LABEL_16:
    v71 = floor(v46);
    goto LABEL_17;
  }

  if (v48 == *MEMORY[0x277D84660])
  {
    v71 = trunc(v46);
    goto LABEL_17;
  }

  if (v48 != *MEMORY[0x277D84668])
  {
    sub_268F9B114();
    (*(v61 + 8))(v64, v60);
LABEL_17:
    v23 = v71;
    (*(v61 + 8))(v66, v60);
    v12 = sub_268E5580C(v23);
    v26 = 1;
    v25 = sub_268E3E3F0(v12);
    v24 = sub_268D4AA1C();
    v13 = sub_268D4AA1C();
    v27 = 0;
    v38 = sub_268E41A08(v40, v25, v24, v13, 0, 0);
    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](v40);
    v70 = v38;
    v35 = sub_268F9B284();
    v37 = *sub_268DC7AE8();
    MEMORY[0x277D82BE0](v37);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v34 = sub_268F9B734();
    v32 = v14;
    MEMORY[0x277D82BE0](v38);
    v29 = &v69;
    v69 = v38;
    v28 = sub_268CDD0DC();
    sub_268CDD1A4();
    v30 = sub_268F9AE74();
    v31 = v15;
    v32[3] = MEMORY[0x277D837D0];
    v16 = sub_268CDD224();
    v17 = v30;
    v18 = v31;
    v19 = v32;
    v20 = v16;
    v21 = v34;
    v32[4] = v20;
    *v19 = v17;
    v19[1] = v18;
    sub_268CD0F7C();
    v36 = v21;
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v37);

    v58(v38);

    MEMORY[0x277D82BD8](v38);
    return;
  }

  v39 = *&v46 >> 63;
  if (v46 >= 0.0)
  {
LABEL_15:
    v71 = ceil(v46);
    goto LABEL_17;
  }

  if (v39 == 1)
  {
    goto LABEL_16;
  }

  __break(1u);
}

uint64_t sub_268E4E9B0()
{
  type metadata accessor for SetAppearanceHandler();
  v2 = sub_268CDC590();
  v0 = sub_268E4EA30();
  result = sub_268DCA218(v2, 1, v0);
  qword_2802F14B0 = result;
  return result;
}

uint64_t sub_268E4EA30()
{
  v1 = *sub_268F47BC4();

  return v1;
}

uint64_t *sub_268E4EA60()
{
  if (qword_2802DB680 != -1)
  {
    swift_once();
  }

  return &qword_2802F14B0;
}

uint64_t sub_268E4EAC0()
{
  v1 = *sub_268E4EA60();

  return v1;
}

uint64_t sub_268E4EAF0(void *a1, void (*a2)(void), uint64_t a3)
{
  v30 = 0;
  v34 = a1;
  v32 = a2;
  v33 = a3;
  v31 = v3;
  v27 = *(v3 + 32);

  sub_268DAB218(a1);
  v29[0] = v29[1];
  v28 = sub_268F47F9C(v29);

  if (v28 == 2)
  {
    sub_268F9B294();
    v10 = sub_268DC7AE8();
    v11 = *v10;
    MEMORY[0x277D82BE0](*v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v11);

    v12 = sub_268DA9A7C(7, 0);
    a2();
    MEMORY[0x277D82BD8](v12);
  }

  else
  {
    v30 = v28 & 0x101;
    sub_268F9B284();
    v4 = sub_268DC7AE8();
    v16 = *v4;
    MEMORY[0x277D82BE0](*v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v15 = v5;
    MEMORY[0x277D82BE0](a1);
    sub_268CD7620();
    sub_268D28940();
    v13 = sub_268F9AE74();
    v14 = v6;
    v15[3] = MEMORY[0x277D837D0];
    v15[4] = sub_268CDD224();
    *v15 = v13;
    v15[1] = v14;
    sub_268CD0F7C();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v16);
    v17 = *(v25 + 32);

    v22 = sub_268F47E98(v28 & 0x101);

    v7 = sub_268DBCD34();
    v18 = *v7;
    v19 = v7[1];
    v20 = *(v7 + 16);
    v21 = *(v25 + 24);

    v8 = swift_allocObject();
    *(v8 + 16) = v25;
    *(v8 + 24) = v28 & 1;
    *(v8 + 25) = HIBYTE(v28) & 1;
    sub_268DAAB84(v22, a1, v18, v19, v20, v21 & 1, a2, a3, sub_268E4F1F4, v8, 0, 1, 0, 0);
    return sub_268CD9A28(sub_268E4F1F4);
  }
}

uint64_t sub_268E4EFA4(char a1, __int16 a2)
{
  v12 = a2;
  v13 = HIBYTE(a2);
  v14 = *(v2 + 16);

  v15 = sub_268D43E38();

  if (v15)
  {
    sub_268F9B284();
    v3 = sub_268DC7AE8();
    v8 = *v3;
    MEMORY[0x277D82BE0](*v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v8);
    v9 = *(v11 + 16);

    if (a1)
    {
      v7 = v13;
    }

    else
    {
      v7 = !sub_268D2CBA4(v13 & 1, 1);
    }

    sub_268D43F68(v7);
  }

  else
  {
    v6 = *(v11 + 16);

    if (a1)
    {
      v5 = v12;
    }

    else
    {
      v5 = !sub_268D2CBA4(v12, 1);
    }

    sub_268D43EAC(v5);
  }
}

uint64_t sub_268E4F354()
{
  sub_268F9B734();
  *v0 = "com.apple.siri.DirectInvocation.Settings.UndoBinarySetting";
  *(v0 + 8) = 58;
  *(v0 + 16) = 2;
  *(v0 + 24) = "com.apple.siri.DirectInvocation.Settings.UndoNumericSetting";
  *(v0 + 32) = 59;
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

uint64_t sub_268E4F488()
{
  sub_268F9B734();
  *v0 = "oldValue";
  *(v0 + 8) = 8;
  *(v0 + 16) = 2;
  *(v0 + 24) = "settingName";
  *(v0 + 32) = 11;
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

unint64_t sub_268E4F608()
{
  v2 = qword_2802DD608;
  if (!qword_2802DD608)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD608);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268E4F754@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_268E4F354();
  *a2 = result;
  return result;
}

uint64_t sub_268E4F78C@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  result = sub_268E4F23C();
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_268E4F810()
{
  v2 = qword_2802DD610;
  if (!qword_2802DD610)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD610);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268E4F95C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_268E4F488();
  *a2 = result;
  return result;
}

uint64_t sub_268E4F994@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  result = sub_268E4F2C8();
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_268E4FA34()
{
  v2 = qword_2802DD618;
  if (!qword_2802DD618)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD618);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E4FAC8()
{
  v2 = qword_2802DD620;
  if (!qword_2802DD620)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD620);
    return WitnessTable;
  }

  return v2;
}

BOOL sub_268E4FB44()
{
  sub_268F9B734();
  *v0 = "setFlashlightHandler";
  *(v0 + 8) = 20;
  *(v0 + 16) = 2;
  sub_268CD0F7C();
  v2 = sub_268F9B5C4();

  return v2 != 0;
}

BOOL sub_268E4FC50()
{
  sub_268F9B734();
  *v0 = "flashlightUnavailable";
  *(v0 + 8) = 21;
  *(v0 + 16) = 2;
  sub_268CD0F7C();
  v2 = sub_268F9B5C4();

  return v2 != 0;
}

unint64_t sub_268E4FDA8()
{
  v2 = qword_2802DD628;
  if (!qword_2802DD628)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD628);
    return WitnessTable;
  }

  return v2;
}

BOOL sub_268E4FEF4@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_268E4FB44();
  *a2 = result;
  return result;
}

uint64_t sub_268E4FF34@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268E4FC1C();
  *a1 = result;
  a1[1] = v2;
  return result;
}

unint64_t sub_268E4FFB0()
{
  v2 = qword_2802DD630;
  if (!qword_2802DD630)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD630);
    return WitnessTable;
  }

  return v2;
}

BOOL sub_268E500FC@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_268E4FC50();
  *a2 = result;
  return result;
}

uint64_t sub_268E5013C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268E4FD28();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_268E5016C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_268DABAF0(a3);
  if (a3)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = a3;
    *(v4 + 24) = a4;
    v9 = sub_268E50A20;
    v10 = v4;
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  if (v9)
  {
    v13 = v9;
    v14 = v10;
  }

  else
  {
    v13 = sub_268E50498;
    v14 = 0;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = v13;
  *(v8 + 24) = v14;
  sub_268F9A814();
  sub_268F9AEF4();
  v6 = [objc_opt_self() processInfo];
  v7 = [v6 processName];
  sub_268F9AE24();
  MEMORY[0x277D82BD8](v6);
  sub_268F9A804();
  MEMORY[0x277D82BD8](v7);
  sub_268E4FC1C();
  sub_268E4FD28();
  sub_268F9A7F4();
}

double sub_268E50498(char *a1)
{
  v21 = 0;
  v7 = *a1;
  v21 = *a1 & 1;
  v15 = sub_268F9B284();
  v1 = sub_268DCA0F0();
  v14 = *v1;
  MEMORY[0x277D82BE0](*v1);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v10 = swift_allocObject();
  *(v10 + 16) = 32;
  v11 = swift_allocObject();
  *(v11 + 16) = 8;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_268E50B90;
  *(v9 + 24) = v8;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_268CD7608;
  *(v12 + 24) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
  sub_268F9B734();
  v13 = v2;

  *v13 = sub_268CD7600;
  v13[1] = v10;

  v13[2] = sub_268CD7600;
  v13[3] = v11;

  v13[4] = sub_268CD7614;
  v13[5] = v12;
  sub_268CD0F7C();

  if (os_log_type_enabled(v14, v15))
  {
    buf = sub_268F9B3A4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
    v5 = sub_268CD5448(0);
    v6 = sub_268CD5448(1);
    v20 = buf;
    v19 = v5;
    v18 = v6;
    sub_268CD549C(2, &v20);
    sub_268CD549C(1, &v20);
    v16 = sub_268CD7600;
    v17 = v10;
    sub_268CD54B0(&v16, &v20, &v19, &v18);
    v16 = sub_268CD7600;
    v17 = v11;
    sub_268CD54B0(&v16, &v20, &v19, &v18);
    v16 = sub_268CD7614;
    v17 = v12;
    sub_268CD54B0(&v16, &v20, &v19, &v18);
    _os_log_impl(&dword_268CBE000, v14, v15, "ABC result: %s", buf, 0xCu);
    sub_268CD54FC(v5);
    sub_268CD54FC(v6);
    sub_268F9B384();
  }

  else
  {
  }

  *&result = MEMORY[0x277D82BD8](v14).n128_u64[0];
  return result;
}

void *sub_268E50918(void *a1)
{
  if (*a1)
  {
    v1 = a1[1];
  }

  return a1;
}

unint64_t sub_268E50A80()
{
  v2 = qword_2802DD638;
  if (!qword_2802DD638)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD638);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E50B14()
{
  v2 = qword_2802DD640;
  if (!qword_2802DD640)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD640);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_268E50B9C()
{
  if (qword_2802DB688 != -1)
  {
    swift_once();
  }

  return &qword_2802F14B8;
}

uint64_t sub_268E50BFC()
{
  type metadata accessor for SidekickUtils();
  result = sub_268CDA260();
  qword_2802F14B8 = result;
  return result;
}

uint64_t sub_268E50C58()
{
  v1 = *sub_268E50B9C();

  return v1;
}

uint64_t sub_268E50C88(void *a1)
{
  v24 = 0;
  v25 = a1;
  MEMORY[0x277D82BE0](a1);
  if (a1 && (v17 = [a1 targetDevice], *&v1 = MEMORY[0x277D82BD8](a1).n128_u64[0], v17))
  {
    v2 = [v17 deviceModel];
    v16 = v2;
    if (v2)
    {
      v12 = sub_268F9AE24();
      v13 = v3;
      MEMORY[0x277D82BD8](v16);
      v14 = v12;
      v15 = v13;
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }

    MEMORY[0x277D82BD8](v17);
    v10 = v14;
    v11 = v15;
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  v8 = sub_268F9AEF4();
  v9 = v4;

  v22[0] = v10;
  v22[1] = v11;
  *&v23 = v8;
  *(&v23 + 1) = v9;
  if (!v11)
  {
    if (!*(&v23 + 1))
    {
      sub_268CD9D30(v22);
      v7 = 1;
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  sub_268D28874(v22, &v21);
  if (!*(&v23 + 1))
  {
    sub_268CD9D30(&v21);
LABEL_18:
    sub_268D28550(v22);
    v7 = 0;
    goto LABEL_17;
  }

  v20 = v21;
  v19 = v23;
  v6 = MEMORY[0x26D62DB50](v21, *(&v21 + 1), v23, *(&v23 + 1));
  sub_268CD9D30(&v19);
  sub_268CD9D30(&v20);
  sub_268CD9D30(v22);
  v7 = v6;
LABEL_17:

  return v7 & 1;
}

uint64_t sub_268E50F4C()
{
  sub_268F9B734();
  *v0 = "appearance";
  *(v0 + 8) = 10;
  *(v0 + 16) = 2;
  *(v0 + 24) = "wifi";
  *(v0 + 32) = 4;
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

uint64_t sub_268E51140(char a1)
{
  if (a1)
  {
    v2 = *sub_268D35434();

    v3 = sub_268D39294();

    return v3;
  }

  else
  {
    v4 = *sub_268D35434();

    v5 = sub_268D36508();

    return v5;
  }
}

uint64_t sub_268E5124C()
{
  result = sub_268F9B734();
  *v1 = 0;
  v1[1] = 1;
  sub_268CD0F7C();
  return result;
}

unint64_t sub_268E512E8()
{
  v2 = qword_2802DD648;
  if (!qword_2802DD648)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD648);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268E51434@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_268E50F4C();
  *a2 = result;
  return result;
}

uint64_t sub_268E5146C@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  result = sub_268E510B4();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_268E514A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268E5124C();
  *a1 = result;
  return result;
}

uint64_t sub_268E51530()
{
  sub_268E51588();
  sub_268E51604();
  sub_268E512E8();
  return sub_268F9A4A4();
}

unint64_t sub_268E51588()
{
  v2 = qword_2802DD650;
  if (!qword_2802DD650)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD650);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E51604()
{
  v2 = qword_2802DD658;
  if (!qword_2802DD658)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD658);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E516AC()
{
  v2 = qword_2802DD660;
  if (!qword_2802DD660)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD660);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E51740()
{
  v2 = qword_2802DD668;
  if (!qword_2802DD668)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD668);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E517D4()
{
  v2 = qword_2802DD670;
  if (!qword_2802DD670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DD678, &qword_268FA4CB8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD670);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E51874()
{
  v2 = qword_2802DD680;
  if (!qword_2802DD680)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD680);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_268E518F0()
{
  if (qword_280FE6330 != -1)
  {
    swift_once();
  }

  return &qword_280FE8348;
}

uint64_t sub_268E51950@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  sub_268CDE730(v1 + 16, a1);
  return swift_endAccess();
}

uint64_t sub_268E519A4(uint64_t *a1)
{
  sub_268CDE730(a1, v4);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v1 + 16));
  sub_268CDF978(v4, (v1 + 16));
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_268E51A14()
{
  type metadata accessor for SiriReferenceResolutionConverter();
  sub_268E51A88(v1);
  result = sub_268D2B2E8(v1);
  qword_280FE8348 = result;
  return result;
}

uint64_t sub_268E51A88@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_268F9ABD4();
  result = sub_268F9ABC4();
  a1[3] = v2;
  a1[4] = MEMORY[0x277D5FDD8];
  *a1 = result;
  return result;
}

uint64_t sub_268E51AE0()
{
  v1 = *sub_268E518F0();

  return v1;
}

uint64_t sub_268E51B10(uint64_t a1)
{
  v7 = a1;
  v16 = 0;
  v15 = 0;
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC5C8, &qword_268F9F530) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v9 = &v5 - v8;
  v16 = v2;
  v15 = v1;
  sub_268E51CD8(v2, &v5 - v8);
  v10 = sub_268F9ACE4();
  v11 = *(v10 - 8);
  v12 = v10 - 8;
  if ((*(v11 + 48))(v9, 1) == 1)
  {
    sub_268D59D2C(v9);
    v6 = 0uLL;
  }

  else
  {
    *&v5 = sub_268F9ACC4();
    *(&v5 + 1) = v3;
    (*(v11 + 8))(v9, v10);
    v6 = v5;
  }

  v13 = v6;
  if (*(&v6 + 1))
  {
    return v13;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_268E51CD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v114 = a1;
  v79 = "Siri Reference Resolution resolve call was unsuccessful";
  v80 = "Siri Reference Resolution resolve call was successful but returned ambiguous or empty matches";
  v81 = sub_268E53084;
  v82 = sub_268CD7608;
  v83 = sub_268CD7600;
  v84 = sub_268CD7600;
  v85 = sub_268CD7614;
  v131 = 0;
  v130 = 0;
  v129 = 0;
  v128 = 0;
  v132 = 0;
  v133 = 0;
  v86 = 0;
  v96 = 0;
  v87 = sub_268F9AC74();
  v89 = *(v87 - 8);
  v88 = v87 - 8;
  v90 = v89;
  v91 = *(v89 + 64);
  v92 = (v91 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v93 = v29 - v92;
  v94 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v95 = v29 - v94;
  v133 = v29 - v94;
  v97 = sub_268F9ACF4();
  v98 = *(v97 - 8);
  v99 = v97 - 8;
  v100 = (*(v98 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v96);
  v101 = v29 - v100;
  v102 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v103 = v29 - v102;
  v132 = v29 - v102;
  v104 = sub_268F9AC94();
  v105 = *(v104 - 8);
  v106 = v104 - 8;
  v107 = (*(v105 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v104);
  v108 = (v29 - v107);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD688, qword_268FA4D58);
  v110 = (*(*(v109 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v114);
  v111 = (v29 - v110);
  v112 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v113 = (v29 - v112);
  v131 = v29 - v112;
  v130 = v9;
  v129 = v2;

  if (!v114)
  {
    v28 = sub_268F9ACE4();
    return (*(*(v28 - 8) + 56))(v77, 1);
  }

  v76 = v114;
  v73 = v114;
  v128 = v114;
  v69 = v78 + 16;
  v70 = &v124;
  swift_beginAccess();
  v74 = v125;
  sub_268CDE730(v69, v125);
  swift_endAccess();
  v71 = v126;
  v72 = v127;
  __swift_project_boxed_opaque_existential_1(v74, v126);
  v75 = sub_268F9ABE4();
  __swift_destroy_boxed_opaque_existential_0(v74);
  if ((v75 & 1) == 0)
  {
LABEL_14:
    v27 = sub_268F9ACE4();
    (*(*(v27 - 8) + 56))(v77, 1);
  }

  v64 = v78 + 16;
  v65 = &v120;
  swift_beginAccess();
  v68 = v121;
  sub_268CDE730(v64, v121);
  swift_endAccess();
  v66 = v122;
  v67 = v123;
  __swift_project_boxed_opaque_existential_1(v68, v122);

  v10 = v105;
  *v108 = v73;
  v11 = *MEMORY[0x277D5FEA8];
  (*(v10 + 104))();
  sub_268F9ABF4();
  (*(v105 + 8))(v108, v104);
  __swift_destroy_boxed_opaque_existential_0(v68);
  sub_268E52E58(v113, v111);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = *v111;
    v29[1] = sub_268F9B284();
    v31 = *sub_268DC842C();
    MEMORY[0x277D82BE0](v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v30 = sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v31);

    goto LABEL_13;
  }

  (*(v98 + 32))(v103, v111, v97);
  v132 = v103;
  (*(v98 + 16))(v101);
  if ((*(v98 + 88))(v101, v97) != *MEMORY[0x277D5FEC0])
  {
    v33 = sub_268F9B284();
    v35 = *sub_268DC842C();
    MEMORY[0x277D82BE0](v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v34 = sub_268F9B734();
    sub_268F9AC14();

    v26 = MEMORY[0x277D82BD8](v35);
    v37 = *(v98 + 8);
    v36 = v98 + 8;
    v37(v101, v97, v26);
    (v37)(v103, v97);
LABEL_13:
    sub_268E52F2C(v113);
    goto LABEL_14;
  }

  (*(v98 + 96))(v101, v97);
  v47 = v90;
  v50 = *(v89 + 32);
  v49 = v89 + 32;
  v50(v95, v101, v87);
  v133 = v95;
  v63 = sub_268F9B284();
  v62 = *sub_268DC842C();
  MEMORY[0x277D82BE0](v62);
  (*(v89 + 16))(v93, v95, v87);
  v48 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v53 = 7;
  v54 = swift_allocObject();
  v50((v54 + v48), v93, v87);
  v51 = 17;
  v56 = swift_allocObject();
  *(v56 + 16) = 32;
  v57 = swift_allocObject();
  *(v57 + 16) = 8;
  v52 = 32;
  v12 = swift_allocObject();
  v13 = v54;
  v55 = v12;
  *(v12 + 16) = v81;
  *(v12 + 24) = v13;
  v14 = swift_allocObject();
  v15 = v55;
  v59 = v14;
  *(v14 + 16) = v82;
  *(v14 + 24) = v15;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
  v58 = sub_268F9B734();
  v60 = v16;

  v17 = v56;
  v18 = v60;
  *v60 = v83;
  v18[1] = v17;

  v19 = v57;
  v20 = v60;
  v60[2] = v84;
  v20[3] = v19;

  v21 = v59;
  v22 = v60;
  v60[4] = v85;
  v22[5] = v21;
  sub_268CD0F7C();

  if (os_log_type_enabled(v62, v63))
  {
    v23 = v86;
    v40 = sub_268F9B3A4();
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
    v41 = sub_268CD5448(0);
    v42 = sub_268CD5448(1);
    v43 = &v119;
    v119 = v40;
    v44 = &v118;
    v118 = v41;
    v45 = &v117;
    v117 = v42;
    sub_268CD549C(2, &v119);
    sub_268CD549C(1, v43);
    v115 = v83;
    v116 = v56;
    sub_268CD54B0(&v115, v43, v44, v45);
    v46 = v23;
    if (v23)
    {

      __break(1u);
    }

    else
    {
      v115 = v84;
      v116 = v57;
      sub_268CD54B0(&v115, &v119, &v118, &v117);
      v38 = 0;
      v115 = v85;
      v116 = v59;
      sub_268CD54B0(&v115, &v119, &v118, &v117);
      _os_log_impl(&dword_268CBE000, v62, v63, "Siri Reference Resolution resolve call was successful with resolved entity match: %s", v40, 0xCu);
      sub_268CD54FC(v41);
      sub_268CD54FC(v42);
      sub_268F9B384();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v62);
  sub_268F9AC64();
  v24 = sub_268F9ACE4();
  (*(*(v24 - 8) + 56))(v77, 0, 1);
  (*(v89 + 8))(v95, v87);
  (*(v98 + 8))(v103, v97);
  sub_268E52F2C(v113);
}

void *sub_268E52E58(id *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD688, qword_268FA4D58);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = *a1;
    v3 = *a1;
    *a2 = v5;
  }

  else
  {
    v2 = sub_268F9ACF4();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

id *sub_268E52F2C(id *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD688, qword_268FA4D58);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v1 = sub_268F9ACF4();
    (*(*(v1 - 8) + 8))(a1);
  }

  return a1;
}

uint64_t sub_268E52FC8(uint64_t a1)
{
  v3[1] = a1;
  v6 = sub_268F9AC74();
  v5 = *(v6 - 8);
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](v6);
  v7 = v3 - v4;
  (*(v5 + 16))(v1);
  sub_268E53498();
  return sub_268F9AE74();
}

uint64_t sub_268E53084()
{
  v1 = *(sub_268F9AC74() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_268E52FC8(v2);
}

uint64_t sub_268E530E8@<X0>(uint64_t a1@<X8>)
{
  v10 = a1;
  v11 = "Creation of was common_setting entity was unsuccessful";
  v24 = 0;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  v17 = 0;
  v16 = sub_268F9A434();
  v13 = *(v16 - 8);
  v14 = v16 - 8;
  v12 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v15 = v4 - v12;
  v24 = v1;
  sub_268F9A614();
  v18 = sub_268F9A604();
  v23 = v18;
  (*(v13 + 104))(v15, *MEMORY[0x277D5EE50], v16);
  sub_268F9A5F4();
  (*(v13 + 8))(v15, v16);
  sub_268F9A494();
  v19 = sub_268F9A484();
  v22 = v19;

  sub_268F9A2B4();

  v20 = MEMORY[0x26D62CE60](v19);
  if (v20)
  {
    v9 = v20;
    v8 = v20;
    v21 = v20;

    sub_268E51CD8(v8, v10);
  }

  else
  {
    v4[1] = sub_268F9B284();
    v6 = *sub_268DC842C();
    MEMORY[0x277D82BE0](v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v7 = 0;
    v5 = sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v6);
    v3 = sub_268F9ACE4();
    (*(*(v3 - 8) + 56))(v10, 1);
  }
}

unint64_t sub_268E53498()
{
  v2 = qword_2802DD690;
  if (!qword_2802DD690)
  {
    sub_268F9AC74();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD690);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268E53518()
{
  if (qword_280FE6018 != -1)
  {
    swift_once();
  }

  return v1;
}

Swift::Bool __swiftcall SettingsFeatureFlagsImpl.isGetSetHotspotEnabled()()
{
  v2[3] = &unk_287992D58;
  v2[4] = sub_268E54038();
  LOBYTE(v2[0]) = 4;
  v1 = sub_268F99C84();
  __swift_destroy_boxed_opaque_existential_0(v2);
  return v1 & 1;
}

const char *sub_268E535DC(char a1)
{
  if (a1 && a1 == 9)
  {
    return "ResponseFramework";
  }

  else
  {
    return "SiriSettings";
  }
}

const char *sub_268E5374C(char a1)
{
  switch(a1)
  {
    case 0:
      return "settings_on_sirix";
    case 1:
      return "settings_RF";
    case 2:
      return "settings_undo";
    case 3:
      return "settings_Hybrid_on_macOS";
    case 4:
      return "settings_get_set_hotspot";
    case 5:
      return "settings_standby_punchout";
    case 6:
      return "settings_tell_me_generated";
    case 7:
      return "settings_tell_me_generated_suggestions";
    case 8:
      return "settings_tell_me_generated_contextual";
    case 9:
      return "SMART";
  }

  return "settings_immersion";
}

BOOL sub_268E53A44(char a1, char a2)
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
      default:
        v4 = 10;
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
      default:
        v3 = 10;
        break;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

unint64_t sub_268E54038()
{
  v2 = qword_280FE5C80;
  if (!qword_280FE5C80)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE5C80);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E540B4()
{
  v2 = qword_2802DD698;
  if (!qword_2802DD698)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD698);
    return WitnessTable;
  }

  return v2;
}

Swift::Bool __swiftcall SettingsFeatureFlagsImpl.isSiriXEnabled()()
{
  v2[3] = &unk_287992D58;
  v2[4] = sub_268E54038();
  LOBYTE(v2[0]) = 0;
  v1 = sub_268F99C84();
  __swift_destroy_boxed_opaque_existential_0(v2);
  return v1 & 1;
}

Swift::Bool __swiftcall SettingsFeatureFlagsImpl.isRFEnabled()()
{
  v2[3] = &unk_287992D58;
  v2[4] = sub_268E54038();
  LOBYTE(v2[0]) = 1;
  v1 = sub_268F99C84();
  __swift_destroy_boxed_opaque_existential_0(v2);
  return v1 & 1;
}

Swift::Bool __swiftcall SettingsFeatureFlagsImpl.isUndoEnabled()()
{
  v2[3] = &unk_287992D58;
  v2[4] = sub_268E54038();
  LOBYTE(v2[0]) = 2;
  v1 = sub_268F99C84();
  __swift_destroy_boxed_opaque_existential_0(v2);
  return v1 & 1;
}

Swift::Bool __swiftcall SettingsFeatureFlagsImpl.isHybridOnMacEnabled()()
{
  v2[3] = &unk_287992D58;
  v2[4] = sub_268E54038();
  LOBYTE(v2[0]) = 3;
  v1 = sub_268F99C84();
  __swift_destroy_boxed_opaque_existential_0(v2);
  return v1 & 1;
}

Swift::Bool __swiftcall SettingsFeatureFlagsImpl.isStandByPunchoutEnabled()()
{
  v2[3] = &unk_287992D58;
  v2[4] = sub_268E54038();
  LOBYTE(v2[0]) = 5;
  v1 = sub_268F99C84();
  __swift_destroy_boxed_opaque_existential_0(v2);
  return v1 & 1;
}

Swift::Bool __swiftcall SettingsFeatureFlagsImpl.isSMARTEnabled()()
{
  v2[3] = &unk_287992D58;
  v2[4] = sub_268E54038();
  LOBYTE(v2[0]) = 9;
  v1 = sub_268F99C84();
  __swift_destroy_boxed_opaque_existential_0(v2);
  return v1 & 1;
}

Swift::Bool __swiftcall SettingsFeatureFlagsImpl.isSettingsTellMeGeneratedEnabled()()
{
  v2[3] = &unk_287992D58;
  v2[4] = sub_268E54038();
  LOBYTE(v2[0]) = 6;
  v1 = sub_268F99C84();
  __swift_destroy_boxed_opaque_existential_0(v2);
  return v1 & 1;
}

Swift::Bool __swiftcall SettingsFeatureFlagsImpl.isTellMeGeneratedSuggestionsEnabled()()
{
  v2[3] = &unk_287992D58;
  v2[4] = sub_268E54038();
  LOBYTE(v2[0]) = 7;
  v1 = sub_268F99C84();
  __swift_destroy_boxed_opaque_existential_0(v2);
  return v1 & 1;
}

Swift::Bool __swiftcall SettingsFeatureFlagsImpl.isTellMeGeneratedContextualEnabled()()
{
  v2[3] = &unk_287992D58;
  v2[4] = sub_268E54038();
  LOBYTE(v2[0]) = 8;
  v1 = sub_268F99C84();
  __swift_destroy_boxed_opaque_existential_0(v2);
  return v1 & 1;
}

Swift::Bool __swiftcall SettingsFeatureFlagsImpl.isImmersionEnabled()()
{
  v2[3] = &unk_287992D58;
  v2[4] = sub_268E54038();
  LOBYTE(v2[0]) = 10;
  v1 = sub_268F99C84();
  __swift_destroy_boxed_opaque_existential_0(v2);
  return v1 & 1;
}

uint64_t sub_268E54650(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xF5)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 10) >> 8) + 1;
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
      v5 = (*a1 | ((v6 - 1) << 8)) + 245;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 11;
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

_BYTE *sub_268E547B8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xF5)
  {
    v5 = ((a3 + 10) >> 8) + 1;
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

  if (a2 > 0xF5)
  {
    v4 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
      *result = a2 + 10;
    }
  }

  return result;
}

unint64_t sub_268E54B80()
{
  v2 = qword_2802DD6A0;
  if (!qword_2802DD6A0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD6A0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268E54BFC()
{
  type metadata accessor for SetSiriHandler();
  result = sub_268E41DF0(1);
  qword_2802F14C0 = result;
  return result;
}

uint64_t *sub_268E54C60()
{
  if (qword_2802DB690 != -1)
  {
    swift_once();
  }

  return &qword_2802F14C0;
}

uint64_t sub_268E54CC0()
{
  v1 = *sub_268E54C60();

  return v1;
}

uint64_t sub_268E54CF0(uint64_t a1, void (*a2)(id))
{
  sub_268F9B284();
  v2 = sub_268DC7AE8();
  v4 = *v2;
  MEMORY[0x277D82BE0](*v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v4);

  sub_268E948B8();
  v6 = sub_268DAB158();

  a2(v6);
  MEMORY[0x277D82BD8](v6);
}

uint64_t sub_268E54E68()
{
  type metadata accessor for SetAXColorFiltersColorTintHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_2802F14C8 = result;
  return result;
}

uint64_t *sub_268E54ED0()
{
  if (qword_2802DB698 != -1)
  {
    swift_once();
  }

  return &qword_2802F14C8;
}

uint64_t sub_268E54F30()
{
  v1 = *sub_268E54ED0();

  return v1;
}

uint64_t sub_268E54F60(void *a1, void (*a2)(void), uint64_t a3)
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

  v10 = sub_268D3ED64();

  v5 = sub_268DBD5C4();
  v12 = *v5;
  v13 = v5[1];
  v14 = *(v5 + 16);
  v15 = *(v8 + 24);

  sub_268DAAB84(v10, a1, v12, v13, v14, v15 & 1, a2, a3, sub_268E55184, v8, 0, 1, 0, 0);
  return sub_268CD9A28(sub_268E55184);
}

uint64_t sub_268E55114(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);

  sub_268D3ED94();
}

uint64_t sub_268E551D0()
{
  type metadata accessor for SetDictationHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_2802F14D0 = result;
  return result;
}

uint64_t *sub_268E55238()
{
  if (qword_2802DB6A0 != -1)
  {
    swift_once();
  }

  return &qword_2802F14D0;
}

uint64_t sub_268E55298()
{
  v1 = *sub_268E55238();

  return v1;
}

uint64_t sub_268E552C8(uint64_t a1, void (*a2)(id))
{
  sub_268F9B284();
  v2 = sub_268DC7AE8();
  v4 = *v2;
  MEMORY[0x277D82BE0](*v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v4);

  sub_268E948B8();
  v6 = sub_268DAB158();

  a2(v6);
  MEMORY[0x277D82BD8](v6);
}

uint64_t sub_268E55440()
{
  type metadata accessor for SetBackgroundSoundsHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_2802F14D8 = result;
  return result;
}

uint64_t *sub_268E554A8()
{
  if (qword_2802DB6A8 != -1)
  {
    swift_once();
  }

  return &qword_2802F14D8;
}

uint64_t sub_268E55508()
{
  v1 = *sub_268E554A8();

  return v1;
}

uint64_t sub_268E55538(void *a1, void (*a2)(void), uint64_t a3)
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

  v10 = sub_268D3DC04();

  v5 = sub_268DBF054();
  v12 = *v5;
  v13 = v5[1];
  v14 = *(v5 + 16);
  v15 = *(v8 + 24);

  sub_268DAAB84(v10 & 1, a1, v12, v13, v14, v15 & 1, a2, a3, sub_268E5575C, v8, 0, 1, 0, 0);
  return sub_268CD9A28(sub_268E5575C);
}

uint64_t sub_268E556EC(char a1, uint64_t a2)
{
  v4 = *(a2 + 16);

  sub_268D3DC44(a1 & 1);
}

id sub_268E5580C(double a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDouble_];
  MEMORY[0x277D82BE0](v2);
  MEMORY[0x277D82BD8](v2);
  return v2;
}

id sub_268E5589C()
{
  sub_268D34FD4();
  [v1 doubleValue];
  return sub_268E3E3B0();
}

uint64_t sub_268E55918()
{
  type metadata accessor for SetAXVoiceControlHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_2802F14E0 = result;
  return result;
}

uint64_t *sub_268E55980()
{
  if (qword_2802DB6B0 != -1)
  {
    swift_once();
  }

  return &qword_2802F14E0;
}

uint64_t sub_268E559E0()
{
  v1 = *sub_268E55980();

  return v1;
}

uint64_t sub_268E55A10(void *a1, void (*a2)(void), uint64_t a3)
{
  v41 = 0;
  v38 = 0;
  v44 = a1;
  v42 = a2;
  v43 = a3;
  sub_268F9B284();
  v3 = sub_268DC7AE8();
  v32 = *v3;
  MEMORY[0x277D82BE0](*v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  v34 = [a1 settingMetadata];
  if (v34 && (v28 = [v34 targetDevice], *&v4 = MEMORY[0x277D82BD8](v34).n128_u64[0], v28))
  {
    v5 = [v28 deviceName];
    v27 = v5;
    if (v5)
    {
      v23 = sub_268F9AE24();
      v24 = v6;
      MEMORY[0x277D82BD8](v27);
      v25 = v23;
      v26 = v24;
    }

    else
    {
      v25 = 0;
      v26 = 0;
    }

    MEMORY[0x277D82BD8](v28);
    v21 = v25;
    v22 = v26;
  }

  else
  {
    v21 = 0;
    v22 = 0;
  }

  v19 = sub_268F9AEF4();
  v20 = v7;

  v39[0] = v21;
  v39[1] = v22;
  *&v40 = v19;
  *(&v40 + 1) = v20;
  if (!v22)
  {
    if (!*(&v40 + 1))
    {
      sub_268CD9D30(v39);
      v18 = 1;
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  sub_268D28874(v39, &v37);
  if (!*(&v40 + 1))
  {
    sub_268CD9D30(&v37);
LABEL_18:
    sub_268D28550(v39);
    v18 = 0;
    goto LABEL_17;
  }

  v36 = v37;
  v35 = v40;
  v17 = MEMORY[0x26D62DB50](v37, *(&v37 + 1), v40, *(&v40 + 1));
  sub_268CD9D30(&v35);
  sub_268CD9D30(&v36);
  sub_268CD9D30(v39);
  v18 = v17;
LABEL_17:

  v38 = v18 & 1;
  v11 = *(v31 + 16);

  v16 = sub_268D3EFDC(v18 & 1);

  v8 = sub_268DBDBE4();
  v12 = *v8;
  v13 = v8[1];
  v14 = *(v8 + 16);
  v15 = *(v31 + 24);

  v9 = swift_allocObject();
  *(v9 + 16) = v31;
  *(v9 + 24) = v18 & 1;
  sub_268DAAB84(v16, a1, v12, v13, v14, v15 & 1, a2, a3, sub_268E55F4C, v9, 0, 1, 0, 0);
  return sub_268CD9A28(sub_268E55F4C);
}

uint64_t sub_268E55EBC(char a1, uint64_t a2, char a3)
{
  v6 = *(a2 + 16);

  sub_268D3F048(a1 & 1, a3 & 1);
}

uint64_t sub_268E55FA4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v23 = a2;
  v22 = a1;
  v47 = 0;
  v46 = 0;
  v45 = 0;
  v40 = 0;
  v38 = 0;
  v37 = 0;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD6A8, &qword_268FA5170);
  v26 = *(v29 - 8);
  v27 = v29 - 8;
  v13 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v29);
  v28 = &v12 - v13;
  v47 = &v12 - v13;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD6B0, &qword_268FA5178);
  v31 = *(v34 - 8);
  v32 = v34 - 8;
  v14 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v22);
  v18 = &v12 - v14;
  v15 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v33 = &v12 - v15;
  v46 = &v12 - v15;
  v45 = v4;
  v36 = &v44;
  sub_268F99C44();
  v35 = &v43;
  sub_268F99764();
  v17 = v42;
  sub_268CDE730(v36, v42);
  v16 = v41;
  sub_268CDE730(v35, v41);
  sub_268E56408(v17, v16, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD6B8, &qword_268FA5180);
  (*(v31 + 16))(v18, v33, v34);
  v30 = sub_268F995F4();
  v40 = v30;
  v21 = 0;
  v19 = type metadata accessor for OpenSettingFlowStrategy();
  v5 = sub_268CDA260();
  v20 = &v39;
  v39 = v5;

  sub_268E56A78();
  sub_268F998C4();
  sub_268F9AB54();
  sub_268F9AEF4();
  v25 = sub_268F9AB34();
  v38 = v25;
  v24 = sub_268F998B4();
  v37 = v24;

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD6C8, &qword_268FA5188);
  v23[3] = v6;
  v7 = sub_268E56AF8();
  v8 = v23;
  v9 = v7;
  v10 = v24;
  v23[4] = v9;
  *v8 = v10;

  (*(v26 + 8))(v28, v29);

  (*(v31 + 8))(v33, v34);
  __swift_destroy_boxed_opaque_existential_0(v35);
  return __swift_destroy_boxed_opaque_existential_0(v36);
}

uint64_t sub_268E56408@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, char *a3@<X8>)
{
  v66 = a3;
  v70 = a1;
  v69 = a2;
  v88 = 0;
  v87 = 0;
  v86 = 0;
  v80 = 0;
  v59 = 0;
  v19 = (*(*(sub_268F9AB24() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v45 = &v18 - v19;
  v29 = sub_268F99274();
  v26 = *(v29 - 8);
  v27 = v29 - 8;
  v20 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v29);
  v28 = &v18 - v20;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD6B0, &qword_268FA5178);
  v54 = *(v72 - 8);
  v55 = v72 - 8;
  v22 = *(v54 + 64);
  v21 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v59);
  v56 = &v18 - v21;
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v71 = &v18 - v23;
  v88 = &v18 - v23;
  v87 = v4;
  v86 = v5;
  v60 = sub_268DA96FC();
  v61 = sub_268DB7E34();
  sub_268F995E4();
  (*(v54 + 32))(v71, v56, v72);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD6D8, qword_268FA5190);
  v34 = 1;
  v47 = sub_268F9AEF4();
  v40 = v6;
  v25 = v70[3];
  v24 = v70[4];
  __swift_project_boxed_opaque_existential_1(v70, v25);
  sub_268F99784();
  v30 = sub_268F99254();
  v31 = v7;
  (*(v26 + 8))(v28, v29);
  v39 = v85;
  v85[0] = v30;
  v85[1] = v31;
  v32 = 1;
  v8 = sub_268F9AEF4();
  v38 = v84;
  v84[0] = v8;
  v84[1] = v9;
  v10 = sub_268F9AEF4();
  v37 = v83;
  v83[0] = v10;
  v83[1] = v11;
  v33 = sub_268D58980();
  v35 = MEMORY[0x277D837D0];
  sub_268D58944();
  v41 = sub_268F9B3E4();
  v42 = v12;
  sub_268CD9D30(v37);
  sub_268CD9D30(v38);
  sub_268CD9D30(v39);
  v43 = v82;
  sub_268CDE730(v69, v82);
  v44 = v81;
  sub_268CDE730(v70, v81);
  sub_268D58A5C();
  v46 = sub_268E56B80();
  v13 = sub_268E56BD0();
  v65 = sub_268E6C368(v47, v40, v41, v42, v43, v44, v45, v46, v13);
  v80 = v65;
  v68 = *(v54 + 16);
  v67 = v54 + 16;
  v68(v56, v71, v72);
  v52 = type metadata accessor for OpenSettingHandleIntentFlowStrategy();
  v48 = v79;
  sub_268CDE730(v70, v79);
  v49 = v78;
  sub_268CDE730(v69, v78);

  v50 = v77;
  sub_268D58CB4(v77);
  v51 = v76;
  sub_268D58CF4(v76);
  v14 = sub_268EC75B0(v48, v49, v65, v50, v51);
  v53 = &v75;
  v75 = v14;
  sub_268E56C08();
  v57 = sub_268D58F00(v53, v72);
  v58 = v15;

  v74 = *(v54 + 8);
  v73 = v54 + 8;
  v74(v56, v72);
  sub_268F995B4();
  sub_268F9AB54();
  v62 = sub_268F9AB34();
  v63 = sub_268F99594();
  v64 = v16;

  sub_268F995C4();

  v68(v66, v71, v72);
  __swift_destroy_boxed_opaque_existential_0(v69);
  __swift_destroy_boxed_opaque_existential_0(v70);
  return (v74)(v71, v72);
}

unint64_t sub_268E56A78()
{
  v2 = qword_2802DD6C0;
  if (!qword_2802DD6C0)
  {
    type metadata accessor for OpenSettingFlowStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD6C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E56AF8()
{
  v2 = qword_2802DD6D0;
  if (!qword_2802DD6D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DD6C8, &qword_268FA5188);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD6D0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268E56BD0()
{
  v1 = *sub_268F6FA4C();

  return v1;
}

unint64_t sub_268E56C08()
{
  v2 = qword_2802DD6E0;
  if (!qword_2802DD6E0)
  {
    type metadata accessor for OpenSettingHandleIntentFlowStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD6E0);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_268E56C9C()
{
  if (qword_280FE57A8 != -1)
  {
    swift_once();
  }

  return &qword_280FE8240;
}

uint64_t sub_268E56CFC()
{
  type metadata accessor for SnippetProvider();
  result = sub_268E56D58();
  qword_280FE8240 = result;
  return result;
}

uint64_t sub_268E56D94()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD6E8, &qword_268FA51C0);
  sub_268F9B734();
  v16 = v1;
  *v1 = 0;
  v26 = *MEMORY[0x277D48910];
  MEMORY[0x277D82BE0](*MEMORY[0x277D48910]);
  *(v16 + 1) = sub_268F9AE24();
  *(v16 + 2) = v2;
  v16[24] = 4;
  v25 = *MEMORY[0x277D48918];
  MEMORY[0x277D82BE0](*MEMORY[0x277D48918]);
  *(v16 + 4) = sub_268F9AE24();
  *(v16 + 5) = v3;
  v16[48] = 12;
  v24 = *MEMORY[0x277D48920];
  MEMORY[0x277D82BE0](*MEMORY[0x277D48920]);
  *(v16 + 7) = sub_268F9AE24();
  *(v16 + 8) = v4;
  v16[72] = 16;
  v23 = *MEMORY[0x277D48928];
  MEMORY[0x277D82BE0](*MEMORY[0x277D48928]);
  *(v16 + 10) = sub_268F9AE24();
  *(v16 + 11) = v5;
  v16[96] = 28;
  v22 = *MEMORY[0x277D48938];
  MEMORY[0x277D82BE0](*MEMORY[0x277D48938]);
  *(v16 + 13) = sub_268F9AE24();
  *(v16 + 14) = v6;
  v16[120] = 29;
  v21 = *MEMORY[0x277D48940];
  MEMORY[0x277D82BE0](*MEMORY[0x277D48940]);
  *(v16 + 16) = sub_268F9AE24();
  *(v16 + 17) = v7;
  v16[144] = 38;
  v20 = *MEMORY[0x277D48958];
  MEMORY[0x277D82BE0](*MEMORY[0x277D48958]);
  *(v16 + 19) = sub_268F9AE24();
  *(v16 + 20) = v8;
  v16[168] = 49;
  v19 = *MEMORY[0x277D48968];
  MEMORY[0x277D82BE0](*MEMORY[0x277D48968]);
  *(v16 + 22) = sub_268F9AE24();
  *(v16 + 23) = v9;
  v16[192] = 48;
  v18 = *MEMORY[0x277D48960];
  MEMORY[0x277D82BE0](*MEMORY[0x277D48960]);
  *(v16 + 25) = sub_268F9AE24();
  *(v16 + 26) = v10;
  v16[216] = 51;
  v17 = *MEMORY[0x277D48970];
  MEMORY[0x277D82BE0](*MEMORY[0x277D48970]);
  *(v16 + 28) = sub_268F9AE24();
  *(v16 + 29) = v11;
  sub_268CD0F7C();
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](v26);
  sub_268E12E98();
  *(v0 + 16) = sub_268F9ADA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD6F0, &qword_268FA51C8);
  sub_268F9B734();
  v27 = v12;
  *v12 = 2;
  v28 = *MEMORY[0x277D48930];
  MEMORY[0x277D82BE0](*MEMORY[0x277D48930]);
  *(v27 + 1) = sub_268F9AE24();
  *(v27 + 2) = v13;
  sub_268CD0F7C();
  MEMORY[0x277D82BD8](v28);
  sub_268E571E0();
  v14 = sub_268F9ADA4();
  result = v29;
  *(v29 + 24) = v14;
  return result;
}

unint64_t sub_268E571E0()
{
  v2 = qword_280FE3F48;
  if (!qword_280FE3F48)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE3F48);
    return WitnessTable;
  }

  return v2;
}

id sub_268E57258(char *a1, uint64_t a2)
{
  v13 = *a1;
  v9 = *(v2 + 16);

  sub_268E12E98();
  sub_268F9ADC4();

  if (!v12)
  {
    return 0;
  }

  sub_268E57478();
  v10 = sub_268CF0C44();
  MEMORY[0x277D82BE0](a2);
  [v10 setValue_];
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BE0](v10);
  sub_268F9B734();
  v5 = v3;

  v5[3] = MEMORY[0x277D837D0];
  *v5 = v11;
  v5[1] = v12;
  sub_268CD0F7C();
  v6 = sub_268F9B004();

  [v10 setSettingKeys_];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v10);

  return v10;
}

unint64_t sub_268E57478()
{
  v2 = qword_2802DD6F8;
  if (!qword_2802DD6F8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DD6F8);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_268E574DC(char *a1)
{
  v12 = *a1;
  v8 = *(v1 + 24);

  sub_268E571E0();
  sub_268F9ADC4();

  if (!v11)
  {
    return 0;
  }

  sub_268E576F4();
  v9 = sub_268CF0C44();
  v4 = sub_268E5589C();
  [v9 setValue_];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BE0](v9);
  sub_268F9B734();
  v5 = v2;

  v5[3] = MEMORY[0x277D837D0];
  *v5 = v10;
  v5[1] = v11;
  sub_268CD0F7C();
  v6 = sub_268F9B004();

  [v9 setSettingKeys_];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v9);

  return v9;
}

unint64_t sub_268E576F4()
{
  v2 = qword_2802DD700;
  if (!qword_2802DD700)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DD700);
    return ObjCClassMetadata;
  }

  return v2;
}

BOOL sub_268E57758(char *a1)
{
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v12 = *a1;
  if (v12 == 65)
  {
    return 0;
  }

  else
  {
    v10 = v12;
    v3 = *(v5 + 16);

    v7 = v12;
    sub_268E12E98();
    sub_268F9ADC4();
    v4 = v9;

    v6[0] = v8;
    v6[1] = v9;
    sub_268CD9D30(v6);
    return v4 != 0;
  }
}

BOOL sub_268E5787C(char *a1)
{
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v12 = *a1;
  if (v12 == 13)
  {
    return 0;
  }

  else
  {
    v10 = v12;
    v3 = *(v5 + 24);

    v7 = v12;
    sub_268E571E0();
    sub_268F9ADC4();
    v4 = v9;

    v6[0] = v8;
    v6[1] = v9;
    sub_268CD9D30(v6);
    return v4 != 0;
  }
}

uint64_t sub_268E579A0()
{
  sub_268CD7930((v0 + 16));
  sub_268CD7930((v0 + 24));
  return v2;
}

uint64_t *sub_268E57A20()
{
  if (qword_280FE3B40 != -1)
  {
    swift_once();
  }

  return &qword_280FE80E0;
}

uint64_t sub_268E57A80()
{
  type metadata accessor for GetBackgroundSoundsHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_280FE80E0 = result;
  return result;
}

uint64_t sub_268E57AE8()
{
  v1 = *sub_268E57A20();

  return v1;
}

double sub_268E57B18(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v5 = sub_268DBC924();
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
  sub_268DB944C(v9, v13, v14, v15, v16 & 1, sub_268E58034, v17, MEMORY[0x277D84F78] + 8, v3);

  MEMORY[0x277D82BD8](a1);

  *&result = MEMORY[0x277D82BD8](v15).n128_u64[0];
  return result;
}

double sub_268E57D30(uint64_t a1, void *a2, void (*a3)(id))
{
  v15 = *(a1 + 16);

  v19 = sub_268D3DC04();

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

uint64_t sub_268E5808C()
{
  type metadata accessor for FlowProvider();
  sub_268D58CB4(v1);
  result = sub_268D2B2E8(v1);
  qword_280FE5BE0 = result;
  return result;
}

uint64_t *sub_268E58100()
{
  if (qword_280FE5BD8 != -1)
  {
    swift_once();
  }

  return &qword_280FE5BE0;
}

uint64_t static FlowProvider.shared.getter()
{
  v1 = *sub_268E58100();

  return v1;
}

double sub_268E581C8@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v147 = a2;
  v154 = a1;
  v196 = 0;
  v195 = 0;
  v193 = 0;
  v191 = 0;
  v184 = 0;
  v182 = 0;
  v180 = 0;
  v178 = 0;
  v174 = 0;
  v166 = 0;
  v151 = 0;
  v149 = (*(*(sub_268F99214() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v150 = v30 - v149;
  v152 = (*(*(sub_268F9AB24() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v151);
  v153 = v30 - v152;
  v155 = sub_268F99274();
  v156 = *(v155 - 8);
  v157 = v155 - 8;
  v158 = (*(v156 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v154);
  v159 = v30 - v158;
  v196 = v3;
  v195 = v2;
  if (sub_268E5918C(v3))
  {
    v145 = type metadata accessor for ToggleBinarySettingDIFlow();
    v144 = &v160;
    sub_268E5915C();
    v146 = sub_268F214DC(v144);
    v147[3] = v145;
    v4 = sub_268E5AA20();
    v6 = v147;
    v7 = v4;
    v8 = v146;
    v147[4] = v7;
    *v6 = v8;
    return result;
  }

  v143 = sub_268E594F4(v154);

  if (v143)
  {
    v140 = v161;
    sub_268CDE730(v148 + 16, v161);
    v139 = v162;
    v138 = v163;
    __swift_project_boxed_opaque_existential_1(v140, v162);
    v141 = (*(v138 + 24))(v139);
    __swift_destroy_boxed_opaque_existential_0(v140);
    v142 = v141;
  }

  else
  {
    v142 = 0;
  }

  v137 = v142;

  if (v137)
  {
    v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD720, &qword_268FA5278);
    v129 = sub_268F9AEF4();
    v123 = v9;
    sub_268F99264();
    v124 = sub_268F99254();
    v125 = v10;
    (*(v156 + 8))(v159, v155);
    v126 = &v168;
    sub_268F99764();
    v127 = &v167;
    sub_268F99C44();
    v131 = 0;
    v115 = sub_268D55AB4();
    v114 = sub_268E5A8BC();
    v128 = sub_268D589F8();
    sub_268D58A5C();
    v116 = sub_268D58A84();
    v117 = sub_268D58B9C();
    v118 = sub_268D58ABC();
    v119 = sub_268D58AF4();
    sub_268D5A488();
    v120 = sub_268D58B64();
    v121 = sub_268D58C0C();
    v122 = sub_268D5A4B0();
    v11 = sub_268D5A4E8();
    v130 = &v29;
    v136 = sub_268CDEAF0(v129, v123, v124, v125, v126, v127, v128, v153, v116, v117, v118, v119, v150, v120, v121, v122, v11);
    v166 = v136;
    v134 = type metadata accessor for UndoBinarySettingFlow();

    v132 = &v165;
    sub_268F99C44();
    v133 = &v164;
    sub_268F99B64();
    v135 = sub_268E801A8(v136, v132, v133);
    v147[3] = v134;
    v12 = sub_268E5A9A0();
    v13 = v135;
    v14 = v147;
    v147[4] = v12;
    *v14 = v13;

    return result;
  }

  v112 = sub_268E5985C(v154);

  if (v112)
  {
    v109 = v169;
    sub_268CDE730(v148 + 16, v169);
    v108 = v170;
    v107 = v171;
    __swift_project_boxed_opaque_existential_1(v109, v170);
    v110 = (*(v107 + 24))(v108);
    __swift_destroy_boxed_opaque_existential_0(v109);
    v111 = v110;
  }

  else
  {
    v111 = 0;
  }

  v106 = v111;

  if (v106)
  {
    v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD708, &qword_268FA5270);
    v99 = sub_268F9AEF4();
    v93 = v15;
    sub_268F99264();
    v94 = sub_268F99254();
    v95 = v16;
    (*(v156 + 8))(v159, v155);
    v96 = &v176;
    sub_268F99764();
    v97 = &v175;
    sub_268F99C44();
    v100 = 0;
    v87 = sub_268D55AB4();
    v86 = sub_268E5A8BC();
    v98 = sub_268D589F8();
    sub_268D58A5C();
    v88 = sub_268D58A84();
    v89 = sub_268D58ABC();
    v90 = sub_268D58AF4();
    v91 = sub_268D58B2C();
    v92 = sub_268D58B64();
    v17 = sub_268D58B9C();
    v105 = sub_268EC9E48(v99, v93, v94, v95, v96, v97, v98, v153, v88, v89, v90, v91, v92, v17);
    v174 = v105;
    v103 = type metadata accessor for UndoNumericSettingFlow();

    v101 = &v173;
    sub_268F99C44();
    v102 = &v172;
    sub_268F99B64();
    v104 = sub_268E61EB4(v105, v101, v102);
    v147[3] = v103;
    v18 = sub_268E5A920();
    v19 = v104;
    v20 = v147;
    v147[4] = v18;
    *v20 = v19;

    return result;
  }

  v83 = &v194;
  sub_268E59174();
  v84 = sub_268E59BC4(v154, v83);
  __swift_destroy_boxed_opaque_existential_0(v83);
  v193 = v84;
  if (!v84)
  {
    goto LABEL_63;
  }

  v82 = v84;
  v81 = v84;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      MEMORY[0x277D82BE0](v84);
      if (v84)
      {
        v71 = v84;
        v69 = v84;
        objc_opt_self();
        v70 = swift_dynamicCastObjCClass();
        if (v70)
        {
          v68 = v70;
        }

        else
        {
          MEMORY[0x277D82BD8](v69);
          v68 = 0;
        }

        v67 = v68;
      }

      else
      {
        v67 = 0;
      }

      v66 = v67;
      if (v67)
      {
        v65 = v66;
        v64 = v66;
        v180 = v66;
        v63 = v179;
        sub_268D57874(v66, v179);
        sub_268CDF978(v63, __dst);
        MEMORY[0x277D82BD8](v64);
        goto LABEL_64;
      }
    }

    else
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        MEMORY[0x277D82BE0](v84);
        if (v84)
        {
          v62 = v84;
          v60 = v84;
          objc_opt_self();
          v61 = swift_dynamicCastObjCClass();
          if (v61)
          {
            v59 = v61;
          }

          else
          {
            MEMORY[0x277D82BD8](v60);
            v59 = 0;
          }

          v58 = v59;
        }

        else
        {
          v58 = 0;
        }

        v57 = v58;
        if (v58)
        {
          v56 = v57;
          v55 = v57;
          v182 = v57;
          v54 = v181;
          sub_268F45EDC(v57, v181);
          sub_268CDF978(v54, __dst);
          MEMORY[0x277D82BD8](v55);
          goto LABEL_64;
        }
      }

      else
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          MEMORY[0x277D82BE0](v84);
          if (v84)
          {
            v53 = v84;
            v51 = v84;
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

          v48 = v49;
          if (v49)
          {
            v47 = v48;
            v46 = v48;
            v184 = v48;
            v45 = v183;
            sub_268E55FA4(v48, v183);
            sub_268CDF978(v45, __dst);
            MEMORY[0x277D82BD8](v46);
            goto LABEL_64;
          }
        }

        else
        {
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            MEMORY[0x277D82BE0](v84);
            if (v84)
            {
              v44 = v84;
              v42 = v84;
              objc_opt_self();
              v43 = swift_dynamicCastObjCClass();
              if (v43)
              {
                v41 = v43;
              }

              else
              {
                MEMORY[0x277D82BD8](v42);
                v41 = 0;
              }

              v40 = v41;
            }

            else
            {
              v40 = 0;
            }

            v39 = v40;
            if (v40)
            {
              v38 = v39;
              v37 = v39;
              v191 = v39;
              v35 = &v189;
              sub_268F99C44();
              v34 = &v188;
              sub_268F99764();
              v36 = v190;
              sub_268DBF874(v35, v34, v37, v190);
              __swift_destroy_boxed_opaque_existential_0(v34);
              __swift_destroy_boxed_opaque_existential_0(v35);
              sub_268CDF978(v36, __dst);
              MEMORY[0x277D82BD8](v37);
              goto LABEL_64;
            }
          }
        }
      }
    }

LABEL_63:
    v21 = v84;
    v22 = v147;
    *v147 = 0;
    v22[1] = 0;
    v22[2] = 0;
    v22[3] = 0;
    v22[4] = 0;
    *&result = MEMORY[0x277D82BD8](v21).n128_u64[0];
    return result;
  }

  MEMORY[0x277D82BE0](v84);
  if (v84)
  {
    v80 = v84;
    v78 = v84;
    objc_opt_self();
    v79 = swift_dynamicCastObjCClass();
    if (v79)
    {
      v77 = v79;
    }

    else
    {
      MEMORY[0x277D82BD8](v78);
      v77 = 0;
    }

    v76 = v77;
  }

  else
  {
    v76 = 0;
  }

  v75 = v76;
  if (!v76)
  {
    goto LABEL_63;
  }

  v74 = v75;
  v73 = v75;
  v178 = v75;
  v72 = v177;
  sub_268D5A520(v75, v177);
  sub_268CDF978(v72, __dst);
  MEMORY[0x277D82BD8](v73);
LABEL_64:
  v33 = __dst;
  v31 = v185;
  sub_268CDE730(__dst, v185);
  v30[1] = v186;
  v30[0] = v187;
  __swift_project_boxed_opaque_existential_1(v31, v186);
  v23 = sub_268F99604();
  v32 = sub_268DADCB4(v23);
  __swift_destroy_boxed_opaque_existential_0(v31);
  v147[3] = &unk_28798E160;
  v24 = sub_268E5A844();
  v25 = v32;
  v26 = v147;
  v27 = v24;
  v28 = v33;
  v147[4] = v27;
  *v26 = v25;
  __swift_destroy_boxed_opaque_existential_0(v28);
  *&result = MEMORY[0x277D82BD8](v84).n128_u64[0];
  return result;
}

uint64_t sub_268E5918C(uint64_t a1)
{
  v16 = a1;
  v28 = 0;
  v27 = 0;
  v29 = 0;
  v10 = 0;
  v11 = sub_268F99C24();
  v12 = *(v11 - 8);
  v13 = v11 - 8;
  v14 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v15 = &v7[-v14];
  v29 = &v7[-v14];
  v25 = sub_268F99C34();
  v23 = *(v25 - 8);
  v24 = v25 - 8;
  v18 = *(v23 + 64);
  v17 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v25);
  v19 = &v7[-v17];
  v20 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](&v7[-v17]);
  v26 = &v7[-v20];
  v28 = v3;
  v27 = v1;
  v21 = *(v23 + 16);
  v22 = v23 + 16;
  v21(v2);
  if ((*(v23 + 88))(v26, v25) != *MEMORY[0x277D5C150])
  {
    goto LABEL_5;
  }

  v4 = v15;
  (v21)(v19, v26, v25);
  (*(v23 + 96))(v19, v25);
  (*(v12 + 32))(v4, v19, v11);
  v9 = type metadata accessor for ToggleBinarySetting();
  v5 = sub_268D90E70();
  if ((sub_268F39FF8(v9, v9, v5) & 1) == 0)
  {
    (*(v12 + 8))(v15, v11);
LABEL_5:
    (*(v23 + 8))(v26, v25);
    v8 = 0;
    return v8 & 1;
  }

  v29 = v15;
  (*(v12 + 8))();
  (*(v23 + 8))(v26, v25);
  v8 = 1;
  return v8 & 1;
}

uint64_t sub_268E594F4(uint64_t a1)
{
  v16 = a1;
  v28 = 0;
  v27 = 0;
  v29 = 0;
  v10 = 0;
  v11 = sub_268F99C24();
  v12 = *(v11 - 8);
  v13 = v11 - 8;
  v14 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v15 = &v7[-v14];
  v29 = &v7[-v14];
  v25 = sub_268F99C34();
  v23 = *(v25 - 8);
  v24 = v25 - 8;
  v18 = *(v23 + 64);
  v17 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v25);
  v19 = &v7[-v17];
  v20 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](&v7[-v17]);
  v26 = &v7[-v20];
  v28 = v3;
  v27 = v1;
  v21 = *(v23 + 16);
  v22 = v23 + 16;
  v21(v2);
  if ((*(v23 + 88))(v26, v25) != *MEMORY[0x277D5C150])
  {
    goto LABEL_5;
  }

  v4 = v15;
  (v21)(v19, v26, v25);
  (*(v23 + 96))(v19, v25);
  (*(v12 + 32))(v4, v19, v11);
  v9 = type metadata accessor for UndoBinarySetting();
  v5 = sub_268D90EF0();
  if ((sub_268F39FF8(v9, v9, v5) & 1) == 0)
  {
    (*(v12 + 8))(v15, v11);
LABEL_5:
    (*(v23 + 8))(v26, v25);
    v8 = 0;
    return v8 & 1;
  }

  v29 = v15;
  (*(v12 + 8))();
  (*(v23 + 8))(v26, v25);
  v8 = 1;
  return v8 & 1;
}

uint64_t sub_268E5985C(uint64_t a1)
{
  v16 = a1;
  v28 = 0;
  v27 = 0;
  v29 = 0;
  v10 = 0;
  v11 = sub_268F99C24();
  v12 = *(v11 - 8);
  v13 = v11 - 8;
  v14 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v15 = &v7[-v14];
  v29 = &v7[-v14];
  v25 = sub_268F99C34();
  v23 = *(v25 - 8);
  v24 = v25 - 8;
  v18 = *(v23 + 64);
  v17 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v25);
  v19 = &v7[-v17];
  v20 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](&v7[-v17]);
  v26 = &v7[-v20];
  v28 = v3;
  v27 = v1;
  v21 = *(v23 + 16);
  v22 = v23 + 16;
  v21(v2);
  if ((*(v23 + 88))(v26, v25) != *MEMORY[0x277D5C150])
  {
    goto LABEL_5;
  }

  v4 = v15;
  (v21)(v19, v26, v25);
  (*(v23 + 96))(v19, v25);
  (*(v12 + 32))(v4, v19, v11);
  v9 = type metadata accessor for UndoNumericSetting();
  v5 = sub_268D90F70();
  if ((sub_268F39FF8(v9, v9, v5) & 1) == 0)
  {
    (*(v12 + 8))(v15, v11);
LABEL_5:
    (*(v23 + 8))(v26, v25);
    v8 = 0;
    return v8 & 1;
  }

  v29 = v15;
  (*(v12 + 8))();
  (*(v23 + 8))(v26, v25);
  v8 = 1;
  return v8 & 1;
}

id sub_268E59BC4(uint64_t a1, uint64_t a2)
{
  v92 = a1;
  v94 = a2;
  v68 = "Unable to convert uso intent to SiriKit intent: %@ Error: %@";
  v69 = &dword_268CBE000;
  v70 = "Unable to convert NLV3 intent to SiriKit intent: %@";
  v109 = 0;
  v108 = 0;
  v107 = 0;
  v111 = 0;
  v71 = 0;
  v104 = 0;
  v110 = 0;
  v100 = 0;
  v84 = 0;
  v72 = sub_268F99CB4();
  v73 = *(v72 - 8);
  v74 = v72 - 8;
  v75 = (*(v73 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v76 = &v37 - v75;
  v77 = sub_268F99C64();
  v78 = *(v77 - 8);
  v79 = v77 - 8;
  v80 = (*(v78 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v84);
  v81 = &v37 - v80;
  v82 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v83 = &v37 - v82;
  v111 = &v37 - v82;
  v85 = sub_268F9A704();
  v86 = *(v85 - 8);
  v87 = v85 - 8;
  v88 = (*(v86 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v84);
  v89 = &v37 - v88;
  v90 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v91 = &v37 - v90;
  v110 = &v37 - v90;
  v97 = sub_268F99C34();
  v95 = *(v97 - 8);
  v96 = v97 - 8;
  v93 = (*(v95 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20](v97);
  v98 = &v37 - v93;
  v109 = v8;
  v108 = v94;
  v107 = v2;
  (*(v95 + 16))(v7);
  v99 = (*(v95 + 88))(v98, v97);
  if (v99 == *MEMORY[0x277D5C128])
  {
    (*(v95 + 96))(v98, v97);
    (*(v86 + 32))(v91, v98, v85);
    v110 = v91;
    v66 = v102;
    sub_268CDE730(v94, v102);
    v65 = &v101;
    sub_268D8E52C(&v101);
    v67 = sub_268DA7690(v91, v66, v65);
    sub_268D28414(v65);
    sub_268D28414(v66);
    if (v67)
    {
      v64 = v67;
      v62 = v67;
      v100 = v67;
      (*(v86 + 8))(v91, v85);
      return v62;
    }

    else
    {
      v61 = *sub_268DC8EFC();
      MEMORY[0x277D82BE0](v61);
      v59 = sub_268F9B294();
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      v58 = sub_268F9B734();
      v56 = v9;
      (*(v86 + 16))(v89, v91, v85);
      sub_268DA7B0C();
      v54 = sub_268F9AE74();
      v55 = v10;
      v56[3] = MEMORY[0x277D837D0];
      v11 = sub_268CDD224();
      v12 = v54;
      v13 = v55;
      v14 = v56;
      v15 = v11;
      v16 = v58;
      v56[4] = v15;
      *v14 = v12;
      v14[1] = v13;
      sub_268CD0F7C();
      v60 = v16;
      sub_268F9AC04();

      v17 = MEMORY[0x277D82BD8](v61);
      (*(v86 + 8))(v91, v85, v17);
      return v84;
    }
  }

  else if (v99 == *MEMORY[0x277D5C160])
  {
    v18 = v71;
    v19 = v83;
    (*(v95 + 96))(v98, v97);
    (*(v78 + 32))(v19, v98, v77);
    v111 = v19;
    sub_268F99C54();
    v50 = &v106;
    sub_268CDE730(v94, &v106);
    v51 = &v105;
    sub_268D8E52C(&v105);
    v52 = sub_268E17680(v76, v50, v51);
    v53 = v18;
    if (v18)
    {
      v48 = v53;
      sub_268D28414(&v105);
      sub_268D28414(&v106);
      (*(v73 + 8))(v76, v72);
      v21 = v48;
      v104 = v48;
      v47 = *sub_268DC8EFC();
      MEMORY[0x277D82BE0](v47);
      v45 = sub_268F9B294();
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      v43 = sub_268F9B734();
      v42 = v22;
      (*(v78 + 16))(v81, v83, v77);
      v37 = sub_268F9AE64();
      v38 = v23;
      v40 = MEMORY[0x277D837D0];
      v42[3] = MEMORY[0x277D837D0];
      v24 = sub_268CDD224();
      v25 = v37;
      v26 = v38;
      v27 = v42;
      v28 = v24;
      v29 = v48;
      v41 = v28;
      v42[4] = v28;
      *v27 = v25;
      v27[1] = v26;
      v30 = v29;
      v39 = &v103;
      v103 = v48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
      v31 = sub_268F9AE64();
      v32 = v41;
      v33 = v42;
      v34 = v31;
      v35 = v43;
      v42[8] = v40;
      v33[9] = v32;
      v33[5] = v34;
      v33[6] = v36;
      sub_268CD0F7C();
      v46 = v35;
      sub_268F9AC04();

      MEMORY[0x277D82BD8](v47);

      (*(v78 + 8))(v83, v77);
      return v84;
    }

    else
    {
      v49 = v52;
      sub_268D28414(&v105);
      sub_268D28414(&v106);
      (*(v73 + 8))(v76, v72);
      (*(v78 + 8))(v83, v77);
      return v49;
    }
  }

  else
  {
    (*(v95 + 8))(v98, v97);
    return v84;
  }
}

unint64_t sub_268E5A844()
{
  v2 = qword_280FE5BE8;
  if (!qword_280FE5BE8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE5BE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E5A8BC()
{
  v2 = qword_2802DD710;
  if (!qword_2802DD710)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DD710);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_268E5A920()
{
  v2 = qword_2802DD718;
  if (!qword_2802DD718)
  {
    type metadata accessor for UndoNumericSettingFlow();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD718);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E5A9A0()
{
  v2 = qword_2802DD728;
  if (!qword_2802DD728)
  {
    type metadata accessor for UndoBinarySettingFlow();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD728);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E5AA20()
{
  v2 = qword_2802DD730;
  if (!qword_2802DD730)
  {
    type metadata accessor for ToggleBinarySettingDIFlow();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD730);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268E5AAA0@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for ClarityUIFlow();
  v5 = sub_268CDA260();
  a1[3] = v3;
  v1 = sub_268E5AB10();
  result = v5;
  a1[4] = v1;
  *a1 = v5;
  return result;
}

unint64_t sub_268E5AB10()
{
  v2 = qword_2802DD738;
  if (!qword_2802DD738)
  {
    type metadata accessor for ClarityUIFlow();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD738);
    return WitnessTable;
  }

  return v2;
}

id sub_268E5ACA8(uint64_t a1, uint64_t *a2)
{
  v14 = a1;
  v13 = a2;
  sub_268E42694(&v12);
  if (v12 == 65)
  {
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v7 = BinarySettingIdentifier.rawValue.getter();
    v8 = v2;
  }

  v5 = sub_268F284EC(v7, v8, a2, 0, 0);

  has_malloc_size = _swift_stdlib_has_malloc_size();
  v11 = sub_268F28680(a1, has_malloc_size & 1);
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithSettingMetadata:v5 labeledValue:0 temporalEventTrigger:v11];
  MEMORY[0x277D82BE0](v6);
  v15 = v6;
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v5);
  sub_268D28414(a2);
  sub_268D87800(a1);
  MEMORY[0x277D82BD8](v15);
  return v6;
}

uint64_t sub_268E5AE2C()
{
  type metadata accessor for SetSoundAnalysisHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_2802F14E8 = result;
  return result;
}

uint64_t *sub_268E5AE94()
{
  if (qword_2802DB6C0 != -1)
  {
    swift_once();
  }

  return &qword_2802F14E8;
}

uint64_t sub_268E5AEF4()
{
  v1 = *sub_268E5AE94();

  return v1;
}

uint64_t sub_268E5AF24(uint64_t a1, void (*a2)(id))
{
  sub_268F9B284();
  v2 = sub_268DC7AE8();
  v5 = *v2;
  MEMORY[0x277D82BE0](*v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v5);
  sub_268F9B294();
  v3 = sub_268DC7AE8();
  v6 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v6);

  sub_268E948B8();
  v8 = sub_268DAB158();

  a2(v8);
  MEMORY[0x277D82BD8](v8);
}

uint64_t sub_268E5B124@<X0>(uint64_t a1@<X8>)
{
  v90 = a1;
  v91 = "#ReferenceResolution toRREntity failed to recognize setting ID as BinarySettingIdentifier or NumericSettingIdentifier";
  v92 = sub_268E5BFF4;
  v93 = sub_268CD7608;
  v94 = sub_268CD7600;
  v95 = sub_268CD7600;
  v96 = sub_268CD7614;
  v97 = "#ReferenceResolution INSettingMetadata.toRREntity error creating RREntity";
  v129 = 0;
  v128 = 0;
  v126 = 0;
  v127 = 0;
  v121 = 0;
  v98 = 0;
  v120 = 0;
  v99 = 0;
  v100 = sub_268F99F64();
  v101 = *(v100 - 8);
  v102 = v100 - 8;
  v103 = (*(v101 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v104 = v28 - v103;
  v129 = v1;
  sub_268F9A494();
  v105 = sub_268F9A484();
  v128 = v105;
  v108 = 0x1FB9C5000uLL;
  v107 = [v109 0x1FB9C58F5];
  sub_268F9AE24();
  v106 = v2;
  sub_268F9A474();

  MEMORY[0x277D82BD8](v107);
  v110 = [v109 (v108 + 2293)];
  v3._countAndFlagsBits = sub_268F9AE24();
  BinarySettingIdentifier.init(rawValue:)(v3);
  MEMORY[0x277D82BD8](v110);
  v124 = v125;
  v89 = v125 != 65;
  if (v125 == 65)
  {
    v88 = [v109 settingId];
    v4._countAndFlagsBits = sub_268F9AE24();
    NumericSettingIdentifier.init(rawValue:)(v4);
    MEMORY[0x277D82BD8](v88);
    v122 = v123;
    v87 = v123 != 13;
    if (v123 == 13)
    {
      v83 = sub_268F9B294();
      v85 = *sub_268DC842C();
      MEMORY[0x277D82BE0](v85);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      v86 = 0;
      v84 = sub_268F9B734();
      sub_268F9AC14();

      MEMORY[0x277D82BD8](v85);
      v5 = sub_268F9ACE4();
      (*(*(v5 - 8) + 56))(v90, 1);
    }
  }

  v126 = sub_268F9AEF4();
  v127 = v7;
  v82 = sub_268F9A464();
  if (v82)
  {
    v81 = v82;
    v76 = v82;
    v77 = [v109 settingId];
    v78 = sub_268F9AE24();
    v79 = v8;
    v80 = [v109 targetApp];
    if (v80)
    {
      v75 = v80;
      v73 = v80;
      v74 = [v80 bundleIdentifier];
      if (v74)
      {
        v72 = v74;
        v67 = v74;
        v68 = sub_268F9AE24();
        v69 = v9;
        MEMORY[0x277D82BD8](v67);
        v70 = v68;
        v71 = v69;
      }

      else
      {
        v70 = 0;
        v71 = 0;
      }

      v64 = v71;
      v63 = v70;
      MEMORY[0x277D82BD8](v73);
      v65 = v63;
      v66 = v64;
    }

    else
    {
      v65 = 0;
      v66 = 0;
    }

    v111 = v65;
    v112 = v66;
    if (v66)
    {
      v113 = v111;
      v114 = v112;
    }

    else
    {
      v10 = sub_268DC7C08();
      sub_268D28874(v10, &v113);
      if (v112)
      {
        sub_268CD9D30(&v111);
      }
    }

    v59 = v113;
    v60 = v114;
    v61 = v126;
    v62 = v127;

    sub_268F99F34();
    MEMORY[0x277D82BD8](v77);
    sub_268F99EE4();
    (*(v101 + 8))(v104, v100);
  }

  v58 = MEMORY[0x26D62CE60](v105);
  if (v58)
  {
    v57 = v58;
    v45 = v58;
    v121 = v58;
    v56 = sub_268F9B284();
    v55 = *sub_268DC842C();
    MEMORY[0x277D82BE0](v55);

    v44 = 17;
    v47 = 7;
    v49 = swift_allocObject();
    *(v49 + 16) = 32;
    v50 = swift_allocObject();
    *(v50 + 16) = 8;
    v46 = 32;
    v11 = swift_allocObject();
    v12 = v45;
    v48 = v11;
    *(v11 + 16) = v92;
    *(v11 + 24) = v12;
    v13 = swift_allocObject();
    v14 = v48;
    v52 = v13;
    *(v13 + 16) = v93;
    *(v13 + 24) = v14;
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
    v51 = sub_268F9B734();
    v53 = v15;

    v16 = v49;
    v17 = v53;
    *v53 = v94;
    v17[1] = v16;

    v18 = v50;
    v19 = v53;
    v53[2] = v95;
    v19[3] = v18;

    v20 = v52;
    v21 = v53;
    v53[4] = v96;
    v21[5] = v20;
    sub_268CD0F7C();

    if (os_log_type_enabled(v55, v56))
    {
      v22 = v98;
      v37 = sub_268F9B3A4();
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
      v38 = sub_268CD5448(0);
      v39 = sub_268CD5448(1);
      v40 = &v119;
      v119 = v37;
      v41 = &v118;
      v118 = v38;
      v42 = &v117;
      v117 = v39;
      sub_268CD549C(2, &v119);
      sub_268CD549C(1, v40);
      v115 = v94;
      v116 = v49;
      sub_268CD54B0(&v115, v40, v41, v42);
      v43 = v22;
      if (v22)
      {

        __break(1u);
      }

      else
      {
        v115 = v95;
        v116 = v50;
        sub_268CD54B0(&v115, &v119, &v118, &v117);
        v34 = 0;
        v115 = v96;
        v116 = v52;
        sub_268CD54B0(&v115, &v119, &v118, &v117);
        v33 = 0;
        _os_log_impl(&dword_268CBE000, v55, v56, "#ReferenceResolution UsoBuilderConversionUtils.convertEntityBuilderToEntity creating UsoEntity: %s.", v37, 0xCu);
        sub_268CD54FC(v38);
        sub_268CD54FC(v39);
        sub_268F9B384();

        v35 = v33;
      }
    }

    else
    {
      v23 = v98;

      v35 = v23;
    }

    v24 = v35;
    MEMORY[0x277D82BD8](v55);
    sub_268E5BFFC(v45, v90);
    v32 = v24;
    if (!v24)
    {
      v25 = sub_268F9ACE4();
      (*(*(v25 - 8) + 56))(v90, 0, 1);

      sub_268CD9D30(&v126);
    }

    v31 = v32;

    v27 = v31;
    v120 = v31;
    v28[1] = sub_268F9B294();
    v30 = *sub_268DC842C();
    MEMORY[0x277D82BE0](v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v29 = sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v30);
  }

  v26 = sub_268F9ACE4();
  (*(*(v26 - 8) + 56))(v90, 1);
  sub_268CD9D30(&v126);
}

uint64_t sub_268E5BFAC()
{

  sub_268F9A714();
  return sub_268F9AE64();
}

uint64_t sub_268E5BFFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v53 = a1;
  v64 = 0;
  v63 = 0;
  v61 = 0;
  v62 = 0;
  v56 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD740, &unk_268FA5328) - 8) + 64);
  v55 = (v56 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v54);
  v57 = &v14 - v55;
  v58 = v55;
  v3 = MEMORY[0x28223BE20](v2);
  v59 = &v14 - v58;
  v64 = v4;
  v63 = v3;
  v60 = [v3 targetApp];
  if (v60)
  {
    v50 = v60;
    v48 = v60;
    v49 = [v60 bundleIdentifier];
    if (v49)
    {
      v47 = v49;
      v42 = v49;
      v43 = sub_268F9AE24();
      v44 = v5;
      MEMORY[0x277D82BD8](v42);
      v45 = v43;
      v46 = v44;
    }

    else
    {
      v45 = 0;
      v46 = 0;
    }

    v39 = v46;
    v38 = v45;
    MEMORY[0x277D82BD8](v48);
    v40 = v38;
    v41 = v39;
  }

  else
  {
    v40 = 0;
    v41 = 0;
  }

  v36 = v41;
  v37 = v40;
  if (v41)
  {
    v34 = v37;
    v35 = v36;
    v29 = v36;
    v28 = v37;
    v61 = v37;
    v62 = v36;
    v26 = [v54 settingId];
    v31 = sub_268F9AE24();
    v30 = v6;

    MEMORY[0x277D82BE0](v54);
    v27 = 0;
    v7 = sub_268F9AC84();
    (*(*(v7 - 8) + 56))(v59, 1);
    sub_268D291D4();
    v8 = v52;
    sub_268F9ACB4();
    v32 = v8;
    v33 = v8;
    if (v8)
    {
      v15 = v33;
      MEMORY[0x277D82BD8](v26);

      v16 = v15;
    }

    else
    {
      MEMORY[0x277D82BD8](v26);

      v25 = v32;
    }
  }

  else
  {
    v17 = [v54 settingId];
    v22 = sub_268F9AE24();
    v21 = v10;
    v11 = sub_268DC7C08();
    v19 = *v11;
    v20 = v11[1];

    MEMORY[0x277D82BE0](v54);
    v18 = 0;
    v12 = sub_268F9AC84();
    (*(*(v12 - 8) + 56))(v57, 1);
    sub_268D291D4();
    v13 = v52;
    sub_268F9ACB4();
    v23 = v13;
    v24 = v13;
    if (v13)
    {
      v14 = v24;
      return MEMORY[0x277D82BD8](v17);
    }

    else
    {
      MEMORY[0x277D82BD8](v17);
      result = v23;
      v25 = v23;
    }
  }

  return result;
}

uint64_t *sub_268E5C568()
{
  if (qword_280FE3E48 != -1)
  {
    swift_once();
  }

  return &qword_280FE8100;
}

uint64_t sub_268E5C5C8()
{
  type metadata accessor for GetAXSwitchControlHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_280FE8100 = result;
  return result;
}

uint64_t sub_268E5C630()
{
  v1 = *sub_268E5C568();

  return v1;
}

double sub_268E5C660(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v5 = sub_268DBB384();
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
  sub_268DB944C(v9, v13, v14, v15, v16 & 1, sub_268E5CAE4, v17, MEMORY[0x277D84F78] + 8, v3);
  MEMORY[0x277D82BD8](a1);

  *&result = MEMORY[0x277D82BD8](v15).n128_u64[0];
  return result;
}

double sub_268E5C87C(void *a1, uint64_t a2, void (*a3)(id))
{
  v15 = [a1 settingMetadata];
  v16 = *(a2 + 16);

  v17 = sub_268D3F104();

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

uint64_t sub_268E5CB48()
{
  type metadata accessor for SetImmersionHandler();
  v1 = sub_268CDC590();
  v2 = sub_268CDD6D4();
  sub_268D58CB4(v3);
  result = sub_268E5CBD8(v1, v2 & 1, v3);
  qword_2802F14F0 = result;
  return result;
}

uint64_t *sub_268E5CC38()
{
  if (qword_2802DB6D0 != -1)
  {
    swift_once();
  }

  return &qword_2802F14F0;
}

uint64_t sub_268E5CC98()
{
  v1 = *sub_268E5CC38();

  return v1;
}

uint64_t sub_268E5CD08(uint64_t a1, char a2, uint64_t *a3)
{
  v13 = a1;
  v12 = a2 & 1;
  v11 = a3;
  v10 = v3;

  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  sub_268CDE730(a3, v9);
  sub_268CDF978(v9, (v3 + 32));
  __swift_destroy_boxed_opaque_existential_0(a3);

  return v8;
}

uint64_t sub_268E5CDA8(uint64_t a1, void (*a2)(void))
{

  v4 = sub_268F70C6C();
  a2();
  MEMORY[0x277D82BD8](v4);
}

uint64_t sub_268E5CE3C(uint64_t a1, uint64_t a2, void (*a3)(void), double a4, double a5, double a6)
{

  v13 = sub_268E5CF14(a1, a2, a4, a5, a6);
  a3();
  MEMORY[0x277D82BD8](v13);
}

uint64_t sub_268E5CF14(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  v73 = a3;
  v52 = a1;
  v55 = a2;
  v53 = a4;
  v54 = a5;
  v49 = "Fatal error";
  v50 = "Unexpectedly found nil while unwrapping an Optional value";
  v51 = "Swift/FloatingPointTypes.swift";
  v98 = 0.0;
  v97 = 0;
  v96 = 0;
  v95 = 0;
  v94 = 0;
  v93 = 0;
  v71 = 0;
  v83 = sub_268F9B6F4();
  v81 = *(v83 - 8);
  v82 = v83 - 8;
  v69 = *(v81 + 64);
  v56 = (v69 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v57 = &v25 - v56;
  v58 = v56;
  MEMORY[0x28223BE20](v6);
  v59 = &v25 - v58;
  v60 = (v69 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v61 = &v25 - v60;
  v62 = (v69 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v63 = &v25 - v62;
  v64 = (v69 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9);
  v65 = &v25 - v64;
  v66 = (v69 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10);
  v67 = &v25 - v66;
  v68 = (v69 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11);
  v84 = &v25 - v68;
  v70 = (v69 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = MEMORY[0x28223BE20](v12);
  v78 = &v25 - v70;
  v98 = v13;
  v97 = v14;
  v96 = v15;
  v95 = v16;
  v94 = v17;
  v93 = v5;
  v72 = sub_268DD26C8();
  v74 = sub_268D34FD4();
  v77 = sub_268E557EC(v73);
  v87 = MEMORY[0x277D84678];
  v18 = *MEMORY[0x277D84678];
  v75 = *(v81 + 104);
  v76 = v81 + 104;
  v75(v78, v18, v83);
  v92 = v77;
  v79 = *(v81 + 16);
  v80 = v81 + 16;
  v79(v84, v78, v83);
  v85 = *(v81 + 88);
  v86 = v81 + 88;
  v88 = v85(v84, v83);
  if (v88 == *v87)
  {
    v92 = round(v77);
    goto LABEL_15;
  }

  if (v88 == *MEMORY[0x277D84670])
  {
    v92 = rint(v77);
    goto LABEL_15;
  }

  if (v88 == *MEMORY[0x277D84680])
  {
    goto LABEL_13;
  }

  if (v88 != *MEMORY[0x277D84688])
  {
    if (v88 == *MEMORY[0x277D84660])
    {
      v92 = trunc(v77);
      goto LABEL_15;
    }

    if (v88 != *MEMORY[0x277D84668])
    {
      sub_268F9B114();
      (*(v81 + 8))(v84, v83);
      goto LABEL_15;
    }

    v48 = *&v77 >> 63;
    if (v77 < 0.0)
    {
      if (v48 != 1)
      {
        sub_268F9B584();
        __break(1u);
        goto LABEL_25;
      }

      goto LABEL_14;
    }

LABEL_13:
    v92 = ceil(v77);
    goto LABEL_15;
  }

LABEL_14:
  v92 = floor(v77);
LABEL_15:
  v43 = v92;
  v41 = *(v81 + 8);
  v42 = v81 + 8;
  v41(v78, v83);
  v19 = sub_268E3E3B0();
  v44 = sub_268E3E3F0(v19);
  sub_268F9B0F4();
  v45 = sub_268E557EC(v20);
  v46 = MEMORY[0x277D84678];
  v75(v67, *MEMORY[0x277D84678], v83);
  v91 = v45;
  v79(v65, v67, v83);
  v47 = v85(v65, v83);
  if (v47 == *v46)
  {
LABEL_25:
    v91 = round(v45);
    goto LABEL_32;
  }

  if (v47 == *MEMORY[0x277D84670])
  {
    v91 = rint(v45);
    goto LABEL_32;
  }

  if (v47 == *MEMORY[0x277D84680])
  {
    goto LABEL_30;
  }

  if (v47 != *MEMORY[0x277D84688])
  {
    if (v47 == *MEMORY[0x277D84660])
    {
      v91 = trunc(v45);
      goto LABEL_32;
    }

    if (v47 != *MEMORY[0x277D84668])
    {
      sub_268F9B114();
      v41(v65, v83);
      goto LABEL_32;
    }

    v40 = *&v45 >> 63;
    if (v45 < 0.0)
    {
      if (v40 != 1)
      {
        sub_268F9B584();
        __break(1u);
        goto LABEL_42;
      }

      goto LABEL_31;
    }

LABEL_30:
    v91 = ceil(v45);
    goto LABEL_32;
  }

LABEL_31:
  v91 = floor(v45);
LABEL_32:
  v35 = v91;
  v41(v67, v83);
  v21 = sub_268E3E3B0();
  v36 = sub_268E3E3F0(v21);
  v37 = sub_268E557EC(v53);
  v38 = MEMORY[0x277D84678];
  v75(v63, *MEMORY[0x277D84678], v83);
  v90 = v37;
  v79(v61, v63, v83);
  v39 = v85(v61, v83);
  if (v39 == *v38)
  {
LABEL_42:
    v90 = round(v37);
    goto LABEL_49;
  }

  if (v39 == *MEMORY[0x277D84670])
  {
    v90 = rint(v37);
    goto LABEL_49;
  }

  if (v39 == *MEMORY[0x277D84680])
  {
    goto LABEL_47;
  }

  if (v39 != *MEMORY[0x277D84688])
  {
    if (v39 == *MEMORY[0x277D84660])
    {
      v90 = trunc(v37);
      goto LABEL_49;
    }

    if (v39 != *MEMORY[0x277D84668])
    {
      sub_268F9B114();
      v41(v61, v83);
      goto LABEL_49;
    }

    v34 = *&v37 >> 63;
    if (v37 < 0.0)
    {
      if (v34 != 1)
      {
        sub_268F9B584();
        __break(1u);
        goto LABEL_59;
      }

      goto LABEL_48;
    }

LABEL_47:
    v90 = ceil(v37);
    goto LABEL_49;
  }

LABEL_48:
  v90 = floor(v37);
LABEL_49:
  v29 = v90;
  v41(v63, v83);
  v22 = sub_268E3E3B0();
  v30 = sub_268E3E3F0(v22);
  v31 = sub_268E557EC(v54);
  v32 = MEMORY[0x277D84678];
  v75(v59, *MEMORY[0x277D84678], v83);
  v89 = v31;
  v79(v57, v59, v83);
  v33 = v85(v57, v83);
  if (v33 == *v32)
  {
LABEL_59:
    v89 = round(v31);
    goto LABEL_66;
  }

  if (v33 == *MEMORY[0x277D84670])
  {
    v89 = rint(v31);
    goto LABEL_66;
  }

  if (v33 == *MEMORY[0x277D84680])
  {
    goto LABEL_64;
  }

  if (v33 == *MEMORY[0x277D84688])
  {
LABEL_65:
    v89 = floor(v31);
    goto LABEL_66;
  }

  if (v33 == *MEMORY[0x277D84660])
  {
    v89 = trunc(v31);
    goto LABEL_66;
  }

  if (v33 != *MEMORY[0x277D84668])
  {
    sub_268F9B114();
    v41(v57, v83);
LABEL_66:
    v25 = v89;
    v41(v59, v83);
    v23 = sub_268E3E3B0();
    v26 = sub_268E3E3F0(v23);
    v27 = sub_268F72AA8(0, v44, v36, v30, v26);
    MEMORY[0x277D82BD8](v26);
    MEMORY[0x277D82BD8](v30);
    MEMORY[0x277D82BD8](v36);
    MEMORY[0x277D82BD8](v44);
    return v27;
  }

  v28 = *&v31 >> 63;
  if (v31 >= 0.0)
  {
LABEL_64:
    v89 = ceil(v31);
    goto LABEL_66;
  }

  if (v28 == 1)
  {
    goto LABEL_65;
  }

  result = sub_268F9B584();
  __break(1u);
  return result;
}

uint64_t sub_268E5DF34()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_0((v0 + 32));
  return v3;
}

uint64_t *sub_268E5DFD8()
{
  if (qword_280FE31A8 != -1)
  {
    swift_once();
  }

  return &qword_280FE8048;
}

uint64_t sub_268E5E038()
{
  type metadata accessor for GetAXClassicInvertColorsHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_280FE8048 = result;
  return result;
}

uint64_t sub_268E5E0A0()
{
  v1 = *sub_268E5DFD8();

  return v1;
}

double sub_268E5E0D0(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v5 = sub_268DBA8E4();
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
  sub_268DB944C(v9, v13, v14, v15, v16 & 1, sub_268E5E554, v17, MEMORY[0x277D84F78] + 8, v3);
  MEMORY[0x277D82BD8](a1);

  *&result = MEMORY[0x277D82BD8](v15).n128_u64[0];
  return result;
}

double sub_268E5E2EC(void *a1, uint64_t a2, void (*a3)(id))
{
  v15 = [a1 settingMetadata];
  v16 = *(a2 + 16);

  v17 = sub_268D3EA14();

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

uint64_t sub_268E5E5AC()
{
  type metadata accessor for SetBassHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_2802F14F8 = result;
  return result;
}

uint64_t *sub_268E5E614()
{
  if (qword_2802DB6E0 != -1)
  {
    swift_once();
  }

  return &qword_2802F14F8;
}

uint64_t sub_268E5E674()
{
  v1 = *sub_268E5E614();

  return v1;
}

uint64_t sub_268E5E6A4(uint64_t a1, void (*a2)(id), uint64_t a3)
{
  sub_268F9B284();
  v3 = sub_268DC7AE8();
  v16 = *v3;
  MEMORY[0x277D82BE0](*v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v16);
  v4 = sub_268CD7620();
  SettingIntent.deviceCategory.getter(v4, &protocol witness table for INSetBinarySettingIntent);
  if (v5)
  {
    v12 = 0;
  }

  else
  {
    type metadata accessor for INDeviceCategory();
    sub_268CD7818();
    v12 = sub_268F9AE04();
  }

  if (v12)
  {
    v11 = *(v15 + 16);

    MEMORY[0x277D82BE0](a1);
    v10 = swift_allocObject();
    v10[2] = v15;
    v10[3] = a2;
    v10[4] = a3;
    v10[5] = a1;
    sub_268D47788();
  }

  else
  {
    sub_268F9B294();
    v6 = sub_268DC7AE8();
    v8 = *v6;
    MEMORY[0x277D82BE0](*v6);
    sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v8);

    sub_268E948B8();
    v9 = sub_268DAB158();

    a2(v9);
    MEMORY[0x277D82BD8](v9);
  }
}

uint64_t sub_268E5EA3C(char a1, uint64_t a2, void (*a3)(void), uint64_t a4, void *a5)
{
  v17 = a1 == 2;

  if (a1 == 2)
  {
    v15 = *(a2 + 16);

    v16 = sub_268D477AC();

    v23 = v16;
  }

  else
  {
    v23 = a1;
  }

  if (v23 == 2)
  {
    sub_268F9B294();
    v8 = sub_268DC7AE8();
    v9 = *v8;
    MEMORY[0x277D82BE0](*v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v9);

    v10 = sub_268DA9A7C(7, 0);
    a3();
    MEMORY[0x277D82BD8](v10);
  }

  else
  {
    v5 = sub_268DBDCB4();
    v11 = *v5;
    v12 = v5[1];
    v13 = *(v5 + 16);
    v14 = *(a2 + 24);

    v6 = swift_allocObject();
    *(v6 + 16) = v17;
    *(v6 + 24) = a2;
    sub_268DAAB84(v23 & 1, a5, v11, v12, v13, v14 & 1, a3, a4, sub_268E5EE5C, v6, 0, 1, 0, 0);
    return sub_268CD9A28(sub_268E5EE5C);
  }
}

uint64_t sub_268E5ED78(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    v5 = *(a3 + 16);
  }

  else
  {
    v4 = *(a3 + 16);
  }

  sub_268D47920();
}

uint64_t sub_268E5EE90(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v24 = v7;
  *v7 = sub_268F9AEF4();
  v24[1] = v8;
  v22 = MEMORY[0x277D839B0];
  v24[5] = MEMORY[0x277D839B0];
  *(v24 + 16) = a1;
  v24[6] = sub_268F9AEF4();
  v24[7] = v9;
  v24[11] = v22;
  *(v24 + 64) = a2;
  v24[12] = sub_268F9AEF4();
  v24[13] = v10;

  if (a3)
  {
    v24[17] = type metadata accessor for SettingsNumericSetting();
    v24[14] = a3;
  }

  else
  {
    v24[14] = 0;
    v24[15] = 0;
    v24[16] = 0;
    v24[17] = 0;
  }

  v24[18] = sub_268F9AEF4();
  v24[19] = v11;

  if (a4)
  {
    v24[23] = type metadata accessor for SettingsNumericSettingAction();
    v24[20] = a4;
  }

  else
  {
    v24[20] = 0;
    v24[21] = 0;
    v24[22] = 0;
    v24[23] = 0;
  }

  v24[24] = sub_268F9AEF4();
  v24[25] = v12;

  if (a5)
  {
    v24[29] = sub_268F9AA44();
    v24[26] = a5;
  }

  else
  {
    v24[26] = 0;
    v24[27] = 0;
    v24[28] = 0;
    v24[29] = 0;
  }

  v24[30] = sub_268F9AEF4();
  v24[31] = v13;
  v16 = MEMORY[0x277D839B0];
  v24[35] = MEMORY[0x277D839B0];
  *(v24 + 256) = a6;
  v24[36] = sub_268F9AEF4();
  v24[37] = v14;
  v24[41] = v16;
  *(v24 + 304) = a7;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8E4();
}

uint64_t sub_268E5F2B0(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v24 = v7;
  *v7 = sub_268F9AEF4();
  v24[1] = v8;
  v22 = MEMORY[0x277D839B0];
  v24[5] = MEMORY[0x277D839B0];
  *(v24 + 16) = a1;
  v24[6] = sub_268F9AEF4();
  v24[7] = v9;
  v24[11] = v22;
  *(v24 + 64) = a2;
  v24[12] = sub_268F9AEF4();
  v24[13] = v10;

  if (a3)
  {
    v24[17] = type metadata accessor for SettingsNumericSetting();
    v24[14] = a3;
  }

  else
  {
    v24[14] = 0;
    v24[15] = 0;
    v24[16] = 0;
    v24[17] = 0;
  }

  v24[18] = sub_268F9AEF4();
  v24[19] = v11;

  if (a4)
  {
    v24[23] = type metadata accessor for SettingsNumericSettingAction();
    v24[20] = a4;
  }

  else
  {
    v24[20] = 0;
    v24[21] = 0;
    v24[22] = 0;
    v24[23] = 0;
  }

  v24[24] = sub_268F9AEF4();
  v24[25] = v12;

  if (a5)
  {
    v24[29] = sub_268F9AA44();
    v24[26] = a5;
  }

  else
  {
    v24[26] = 0;
    v24[27] = 0;
    v24[28] = 0;
    v24[29] = 0;
  }

  v24[30] = sub_268F9AEF4();
  v24[31] = v13;
  v16 = MEMORY[0x277D839B0];
  v24[35] = MEMORY[0x277D839B0];
  *(v24 + 256) = a6;
  v24[36] = sub_268F9AEF4();
  v24[37] = v14;
  v24[41] = v16;
  *(v24 + 304) = a7;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8F4();
}

uint64_t sub_268E5F6B4(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v13 = v4;
  *v4 = sub_268F9AEF4();
  v13[1] = v5;
  v13[5] = MEMORY[0x277D839B0];
  *(v13 + 16) = a1;
  v13[6] = sub_268F9AEF4();
  v13[7] = v6;

  if (a2)
  {
    v13[11] = type metadata accessor for SettingsNumericSetting();
    v13[8] = a2;
  }

  else
  {
    v13[8] = 0;
    v13[9] = 0;
    v13[10] = 0;
    v13[11] = 0;
  }

  v13[12] = sub_268F9AEF4();
  v13[13] = v7;

  if (a3)
  {
    v13[17] = type metadata accessor for SettingsNumericSettingAction();
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

  if (a4)
  {
    v13[23] = sub_268F9AA44();
    v13[20] = a4;
  }

  else
  {
    v13[20] = 0;
    v13[21] = 0;
    v13[22] = 0;
    v13[23] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8E4();
}

uint64_t sub_268E5F9D0(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v13 = v4;
  *v4 = sub_268F9AEF4();
  v13[1] = v5;
  v13[5] = MEMORY[0x277D839B0];
  *(v13 + 16) = a1;
  v13[6] = sub_268F9AEF4();
  v13[7] = v6;

  if (a2)
  {
    v13[11] = type metadata accessor for SettingsNumericSetting();
    v13[8] = a2;
  }

  else
  {
    v13[8] = 0;
    v13[9] = 0;
    v13[10] = 0;
    v13[11] = 0;
  }

  v13[12] = sub_268F9AEF4();
  v13[13] = v7;

  if (a3)
  {
    v13[17] = type metadata accessor for SettingsNumericSettingAction();
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

  if (a4)
  {
    v13[23] = sub_268F9AA44();
    v13[20] = a4;
  }

  else
  {
    v13[20] = 0;
    v13[21] = 0;
    v13[22] = 0;
    v13[23] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8F4();
}