uint64_t sub_268F078A8()
{
  v1 = v0[137];
  v2 = v0[136];
  v3 = v0[135];
  v0[121] = v0;
  v43._countAndFlagsBits = sub_268F1B14C(v3, v2);
  v43._object = v4;
  v44 = v5;
  v0[140] = v43._countAndFlagsBits;
  v0[141] = v4;
  v0[142] = v5;
  if (!v4)
  {
    sub_268D28BD4();
    swift_allocError();
    *v18 = 2;
    swift_willThrow();
LABEL_32:
    v19 = *(v42 + 1112);
    v21 = *(v42 + 1104);

    v9 = *(*(v42 + 968) + 8);
    v20 = *(v42 + 968);

    return v9();
  }

  v41 = v4;
  v40 = v5;
  *(v42 + 880) = v43._countAndFlagsBits;
  *(v42 + 888) = v4;
  *(v42 + 896) = v5;

  NumericSettingIdentifier.init(rawValue:)(v43);
  *(v42 + 1187) = v45;
  *(v42 + 1196) = 0;
  sub_268D288B4((v42 + 1187), (v42 + 1185));
  sub_268D288B4((v42 + 1196), (v42 + 1186));
  if (*(v42 + 1185) == 13)
  {
    if (*(v42 + 1186) != 13)
    {
      goto LABEL_13;
    }

LABEL_10:
    __dst = *(v42 + 1072);
    v7 = sub_268DC858C();
    v37 = *v7;
    MEMORY[0x277D82BE0](*v7);
    sub_268F9B284();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v37);
    sub_268D34B74((v42 + 736));
    memcpy(__dst, (v42 + 736), 0x90uLL);

    MEMORY[0x277D82BD8](v44);
    v8 = *(v42 + 1112);
    v39 = *(v42 + 1104);

    v9 = *(*(v42 + 968) + 8);
    v10 = *(v42 + 968);

    return v9();
  }

  sub_268D288B4((v42 + 1185), (v42 + 1198));
  if (*(v42 + 1186) != 13)
  {
    *(v42 + 1199) = *(v42 + 1198);
    *(v42 + 1200) = *(v42 + 1186);
    sub_268D91118();
    v6 = sub_268F9AE04();
    if (v6)
    {
      goto LABEL_10;
    }
  }

LABEL_13:
  v36 = *(v42 + 1088);
  MEMORY[0x277D82BE0](v36);
  if (v36)
  {
    v34 = *(v42 + 1088);
    v35 = [v34 settingResponseDatas];
    if (v35)
    {
      sub_268CDD140();
      v32 = sub_268F9B014();
      MEMORY[0x277D82BD8](v35);
      v33 = v32;
    }

    else
    {
      v33 = 0;
    }

    *(v42 + 1048) = v33;
    if (*(v42 + 1048))
    {
      v30 = *(v42 + 1048);

      sub_268CD7930((v42 + 1048));
      MEMORY[0x277D82BD8](v34);
      *(v42 + 1056) = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2E8, qword_268F9E0F0);
      sub_268D3506C();
      sub_268F9B234();
      v31 = *(v42 + 1064);

      if (v31)
      {
        v29 = [v31 numericValue];
        MEMORY[0x277D82BD8](v31);
        if (v29)
        {
          v27 = [v29 value];
          MEMORY[0x277D82BD8](v29);
          v28 = v27;
          goto LABEL_25;
        }
      }
    }

    else
    {
      sub_268CD7930((v42 + 1048));
      MEMORY[0x277D82BD8](v34);
    }
  }

  v28 = 0;
LABEL_25:
  *(v42 + 1144) = v28;
  if (!v28)
  {
    v22 = *(v42 + 1088);
    v14 = sub_268DC858C();
    v26 = *v14;
    MEMORY[0x277D82BE0](*v14);
    sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v25 = v15;
    MEMORY[0x277D82BE0](v22);
    *(v42 + 1008) = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE180, qword_268FA9EF8);
    v23 = sub_268F9AE64();
    v24 = v16;
    v25[3] = MEMORY[0x277D837D0];
    v25[4] = sub_268CDD224();
    *v25 = v23;
    v25[1] = v24;
    sub_268CD0F7C();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v26);
    sub_268D28BD4();
    swift_allocError();
    *v17 = 2;
    swift_willThrow();

    MEMORY[0x277D82BD8](v44);
    goto LABEL_32;
  }

  *(v42 + 1016) = v28;
  v11 = swift_task_alloc();
  *(v42 + 1152) = v11;
  *v11 = *(v42 + 968);
  v11[1] = sub_268F08388;
  v12 = *(v42 + 1096);

  return sub_268F19D6C(v43._countAndFlagsBits, v41, v40, v28);
}

uint64_t sub_268F08388(uint64_t a1, uint64_t a2)
{
  v11 = *v3;
  v10 = v11 + 121;
  v5 = *(*v3 + 1152);
  v11[121] = *v3;
  v11[145] = v2;
  v11[146] = a1;
  v11[147] = a2;

  if (v2)
  {
    v8 = *v10;
    v7 = sub_268F0946C;
  }

  else
  {
    v6 = *v10;
    v7 = sub_268F08500;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268F08500()
{
  v97 = v0;
  object = v0[73]._object;
  countAndFlagsBits = v0[73]._countAndFlagsBits;
  v87 = v0[70];
  v0[60]._object = v0;
  v0[56]._object = countAndFlagsBits;
  v0[57]._countAndFlagsBits = object;

  NumericSettingIdentifier.init(rawValue:)(v87);
  if (v88 == 13)
  {
    v43 = *(v86 + 1176);
    v36 = *(v86 + 1120);
    v44 = *(v86 + 1144);
    v45 = *(v86 + 1136);
    v37 = *(v86 + 1128);
    v24 = sub_268DC858C();
    v42 = *v24;
    MEMORY[0x277D82BE0](*v24);
    sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v41 = v25;

    *(v86 + 920) = v36;
    *(v86 + 928) = v37;
    v38 = MEMORY[0x277D837D0];
    v39 = sub_268F9AE84();
    v40 = v26;
    v41[3] = v38;
    v41[4] = sub_268CDD224();
    *v41 = v39;
    v41[1] = v40;
    sub_268CD0F7C();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v42);
    sub_268D28BD4();
    swift_allocError();
    *v27 = 1;
    swift_willThrow();

    MEMORY[0x277D82BD8](v44);

    MEMORY[0x277D82BD8](v45);
    v28 = *(v86 + 1112);
    v46 = *(v86 + 1104);

    v29 = *(*(v86 + 968) + 8);
    v30 = *(v86 + 968);

    return v29();
  }

  else
  {
    *(v86 + 1184) = v88;
    v89[0] = v88;
    *(v86 + 1188) = sub_268E07EE4(v89);
    *(v86 + 1192) = v3;
    v4 = sub_268F9B734();
    *v5 = 1;
    v5[1] = 2;
    sub_268CD0F7C();
    *(v86 + 1024) = v4;
    *(v86 + 1032) = v4;
    *(v86 + 1197) = v88;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC910, "ā");
    sub_268DB7A80();
    sub_268D91118();
    if (sub_268F9AFC4())
    {
      v82 = *(v86 + 1112);
      v89[1] = v88;
      settingId._countAndFlagsBits = NumericSettingIdentifier.rawValue.getter();
      settingId._object = v6;
      v89[2] = v88;
      graphicIcon._countAndFlagsBits = sub_268EB0934();
      graphicIcon._object = v7;
      v91 = v88;
      sub_268EB0234(v82);
      v83 = sub_268F9A9C4();
      v84 = *(v83 - 8);
      v85 = *(v84 + 48);
      if (v85(v82, 1) == 1)
      {
        sub_268D28588(*(v86 + 1112));
        v78 = 0;
        v79 = 0;
      }

      else
      {
        v75 = *(v86 + 1112);
        v76 = sub_268F9A9B4();
        v77 = v8;
        (*(v84 + 8))(v75, v83);
        v78 = v76;
        v79 = v77;
      }

      *(v86 + 936) = v78;
      *(v86 + 944) = v79;
      if (*(v86 + 944))
      {
        v9 = *(v86 + 944);
        v90._countAndFlagsBits = *(v86 + 936);
        v90._object = v9;
      }

      else
      {
        v90._countAndFlagsBits = sub_268F9AEF4();
        v90._object = v10;
        if (*(v86 + 944))
        {
          sub_268CD9D30(v86 + 936);
        }
      }

      v11 = *(v86 + 1104);
      v74 = v11;
      leftIconName = v90;
      v93 = v88;
      sub_268EB0474(v11);
      if ((v85)(v74, 1, v83) == 1)
      {
        sub_268D28588(*(v86 + 1104));
        v71 = 0;
        v72 = 0;
      }

      else
      {
        v68 = *(v86 + 1104);
        v69 = sub_268F9A9B4();
        v70 = v12;
        (*(v84 + 8))(v68, v83);
        v71 = v69;
        v72 = v70;
      }

      *(v86 + 952) = v71;
      *(v86 + 960) = v72;
      if (*(v86 + 960))
      {
        v13 = *(v86 + 960);
        v92._countAndFlagsBits = *(v86 + 952);
        v92._object = v13;
      }

      else
      {
        v92._countAndFlagsBits = sub_268F9AEF4();
        v92._object = v14;
        if (*(v86 + 960))
        {
          sub_268CD9D30(v86 + 952);
        }
      }

      v15 = *(v86 + 1176);
      v66 = *(v86 + 1080);
      v60 = *(v86 + 1144);
      rightIconName = v92;

      [v60 0x1FAD21978];
      oldValue = v16;
      [v60 0x1FAD21978];
      updatedValue = v17;
      sub_268F9B124();
      minValue = v18;
      sub_268F9B124();
      maxValue = v19;
      v94[0] = v88;
      step = sub_268E07F78(v94);
      v94[1] = v88;
      url.value._countAndFlagsBits = sub_268EB0030();
      url.value._object = v20;
      *(v86 + 1040) = v66;
      v21 = sub_268D2E630();
      SettingIntent.deviceCategory.getter(v21, &protocol witness table for INGetSettingIntent);
      if (v22)
      {
        v57 = 0;
        v58 = 1;
      }

      else
      {
        sub_268CD4334();
        v57 = v23;
        v58 = 0;
      }

      v95 = v57;
      v96 = v58 & 1;
      if (v58)
      {
        deviceCategoryInt = 0;
      }

      else
      {
        deviceCategoryInt = v95;
      }

      __dst = *(v86 + 1072);
      v53 = *(v86 + 1144);
      v55 = *(v86 + 1136);
      v54 = *(v86 + 1128);
      NumericSettingModel.init(settingId:graphicIcon:leftIconName:rightIconName:label:oldValue:updatedValue:minValue:maxValue:step:url:deviceCategoryInt:)((v86 + 160), settingId, graphicIcon, leftIconName, rightIconName, *(v86 + 1168), oldValue, updatedValue, minValue, maxValue, step, url, deviceCategoryInt);
      memcpy((v86 + 448), (v86 + 160), 0x90uLL);
      sub_268D34CD8((v86 + 448), (v86 + 592));
      memcpy((v86 + 304), (v86 + 448), 0x90uLL);
      nullsub_1(v86 + 304);
      memcpy(__dst, (v86 + 304), 0x90uLL);
      sub_268D34F58((v86 + 448));

      MEMORY[0x277D82BD8](v53);

      MEMORY[0x277D82BD8](v55);
    }

    else
    {
      v48 = *(v86 + 1176);
      v47 = *(v86 + 1072);
      v49 = *(v86 + 1144);
      v51 = *(v86 + 1136);
      v50 = *(v86 + 1128);
      sub_268D34B74((v86 + 16));
      memcpy(v47, (v86 + 16), 0x90uLL);

      MEMORY[0x277D82BD8](v49);

      MEMORY[0x277D82BD8](v51);
    }

    v32 = *(v86 + 1112);
    v35 = *(v86 + 1104);

    v33 = *(*(v86 + 968) + 8);
    v34 = *(v86 + 968);

    return v33();
  }
}

uint64_t sub_268F0946C()
{
  v1 = v0[143];
  v8 = v0[142];
  v7 = v0[141];
  v0[121] = v0;
  MEMORY[0x277D82BD8](v1);

  MEMORY[0x277D82BD8](v8);
  v2 = v0[145];
  v3 = v0[139];
  v9 = v0[138];

  v4 = *(v0[121] + 8);
  v5 = v0[121];

  return v4();
}

uint64_t sub_268F09578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = v3;
  v4[11] = a3;
  v4[10] = a2;
  v4[9] = a1;
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
  return MEMORY[0x2822009F8](sub_268F095F0, 0);
}

uint64_t sub_268F095F0()
{
  v1 = v0[11];
  v14 = v1;
  v0[2] = v0;
  MEMORY[0x277D82BE0](v1);
  v15 = [v14 _intentResponseCode];
  MEMORY[0x277D82BD8](v14);
  v0[7] = v15;
  v0[8] = 4;
  type metadata accessor for INIntentResponseCode();
  sub_268ECCA4C();
  if (sub_268F9B754())
  {
    v12 = v13[11];
    MEMORY[0x277D82BE0](v12);
    v2 = swift_task_alloc();
    v13[13] = v2;
    *v2 = v13[2];
    v2[1] = sub_268EF2A5C;
    v3 = v13[12];
    v4 = v13[10];
    v5 = v13[9];

    return sub_268F0982C(v4, v5, v12);
  }

  else
  {
    v11 = v13[11];
    MEMORY[0x277D82BE0](v11);
    v7 = swift_task_alloc();
    v13[15] = v7;
    *v7 = v13[2];
    v7[1] = sub_268EF2C38;
    v8 = v13[12];
    v9 = v13[10];
    v10 = v13[9];

    return sub_268F0E814(v9, v10, v11);
  }
}

uint64_t sub_268F0982C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[16] = v3;
  v4[15] = a3;
  v4[14] = a2;
  v4[13] = a1;
  v4[4] = v4;
  v4[5] = 0;
  v4[6] = 0;
  v4[7] = 0;
  v4[8] = 0;
  v4[2] = 0;
  v4[3] = 0;
  v4[5] = a1;
  v4[6] = a2;
  v4[7] = a3;
  v4[8] = v3;
  v5 = v4[4];
  return MEMORY[0x2822009F8](sub_268F098B0, 0);
}

uint64_t sub_268F098B0()
{
  v1 = v0[14];
  v0[4] = v0;
  v0[9] = v1;
  v43 = sub_268D2E630();
  v44._countAndFlagsBits = SettingIntent.settingIdentifier.getter(v43, &protocol witness table for INGetSettingIntent);
  v44._object = v2;
  v0[17] = v2;
  if (v2)
  {
    v42[2] = v44._countAndFlagsBits;
    v42[3] = v2;

    BinarySettingIdentifier.init(rawValue:)(v44);
    if (v45 != 65)
    {
      v37 = v42[14];
      v3 = sub_268DC7B48();
      v41 = *v3;
      MEMORY[0x277D82BE0](*v3);
      sub_268F9B284();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      sub_268F9B734();
      v40 = v4;
      MEMORY[0x277D82BE0](v37);
      v42[12] = v37;
      sub_268D59CAC();
      v38 = sub_268F9AE74();
      v39 = v5;
      v40[3] = MEMORY[0x277D837D0];
      v40[4] = sub_268CDD224();
      *v40 = v38;
      v40[1] = v39;
      sub_268CD0F7C();
      sub_268F9AC04();

      MEMORY[0x277D82BD8](v41);
      v6 = swift_task_alloc();
      v42[18] = v6;
      *v6 = v42[4];
      v6[1] = sub_268EF3834;
      v7 = v42[16];
      v8 = v42[15];
      v9 = v42[14];
      v10 = v42[13];

      return sub_268F0ABF8(v10, v9, v8);
    }

    NumericSettingIdentifier.init(rawValue:)(v44);
    if (v46 != 13)
    {
      v12 = swift_task_alloc();
      v42[21] = v12;
      *v12 = v42[4];
      v12[1] = sub_268EF3A5C;
      v13 = v42[16];
      v14 = v42[15];
      v15 = v42[14];
      v16 = v42[13];

      return sub_268F0C810(v16, v15, v14);
    }

    v32 = v42[14];
    v17 = sub_268DC866C();
    v36 = *v17;
    MEMORY[0x277D82BE0](*v17);
    sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v35 = v18;
    MEMORY[0x277D82BE0](v32);
    v42[11] = v32;
    sub_268D59CAC();
    v33 = sub_268F9AE74();
    v34 = v19;
    v35[3] = MEMORY[0x277D837D0];
    v35[4] = sub_268CDD224();
    *v35 = v33;
    v35[1] = v34;
    sub_268CD0F7C();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v36);
    sub_268D28BD4();
    swift_allocError();
    *v20 = 1;
    swift_willThrow();
  }

  else
  {
    v27 = v42[14];
    v21 = sub_268DC866C();
    v31 = *v21;
    MEMORY[0x277D82BE0](*v21);
    sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v30 = v22;
    MEMORY[0x277D82BE0](v27);
    v42[10] = v27;
    sub_268D59CAC();
    v28 = sub_268F9AE74();
    v29 = v23;
    v30[3] = MEMORY[0x277D837D0];
    v30[4] = sub_268CDD224();
    *v30 = v28;
    v30[1] = v29;
    sub_268CD0F7C();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v31);
    sub_268D28BD4();
    swift_allocError();
    *v24 = 2;
    swift_willThrow();
  }

  v25 = *(v42[4] + 8);
  v26 = v42[4];

  return v25();
}

uint64_t sub_268F0A0DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[27] = v3;
  v4[26] = a3;
  v4[25] = a2;
  v4[24] = a1;
  v4[14] = v4;
  v4[15] = 0;
  v4[16] = 0;
  v4[17] = 0;
  v4[18] = 0;
  v4[20] = 0;
  v4[15] = a1;
  v4[16] = a2;
  v4[17] = a3;
  v4[18] = v3;
  v5 = v4[14];
  return MEMORY[0x2822009F8](sub_268F0A15C, 0);
}

uint64_t sub_268F0A15C()
{
  v1 = v0[27];
  v36 = v0[25];
  v0[14] = v0;
  v35 = *(v1 + qword_280FE37D8);
  MEMORY[0x277D82BE0](v35);
  v37 = [v36 settingMetadata];
  if (v37)
  {
    v29 = [v37 settingId];
    v30 = sub_268F9AE24();
    v31 = v2;
    MEMORY[0x277D82BD8](v37);
    MEMORY[0x277D82BD8](v29);
    v32 = v30;
    v33 = v31;
  }

  else
  {
    v32 = 0;
    v33 = 0;
  }

  v34[12] = v32;
  v34[13] = v33;
  if (v34[13])
  {
    v38 = v34[12];
    v39 = v34[13];
  }

  else
  {
    v38 = sub_268F9AEF4();
    v39 = v3;
    if (v34[13])
    {
      sub_268CD9D30((v34 + 12));
    }
  }

  sub_268DE0918(v38, v39, v34 + 7);

  MEMORY[0x277D82BD8](v35);
  if (v34[10])
  {
    v28 = v34[25];
    sub_268CDF978(v34 + 7, v34 + 2);
    v26 = v34[5];
    v27 = v34[6];
    __swift_project_boxed_opaque_existential_1(v34 + 2, v26);
    v4 = (*(v27 + 16))(v28, v26);
    if (v4)
    {
      v18 = v34[25];
      v5 = sub_268DC866C();
      v22 = *v5;
      MEMORY[0x277D82BE0](*v5);
      sub_268F9B284();
      v34[28] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      sub_268F9B734();
      v21 = v6;
      MEMORY[0x277D82BE0](v18);
      v34[19] = v18;
      sub_268D2E630();
      sub_268D59CAC();
      v19 = sub_268F9AE74();
      v20 = v7;
      v21[3] = MEMORY[0x277D837D0];
      v8 = sub_268CDD224();
      v34[29] = v8;
      v21[4] = v8;
      *v21 = v19;
      v21[1] = v20;
      sub_268CD0F7C();
      sub_268F9AC04();

      MEMORY[0x277D82BD8](v22);
      v23 = v34[5];
      v24 = v34[6];
      __swift_project_boxed_opaque_existential_1(v34 + 2, v23);
      v25 = (*(v24 + 32) + **(v24 + 32));
      v9 = *(*(v24 + 32) + 4);
      v10 = swift_task_alloc();
      v34[30] = v10;
      *v10 = v34[14];
      v10[1] = sub_268F0A794;
      v11 = v34[25];

      return v25(v11, v23, v24);
    }

    __swift_destroy_boxed_opaque_existential_0(v34 + 2);
  }

  else
  {
    sub_268D28414(v34 + 7);
  }

  v13 = swift_task_alloc();
  v34[38] = v13;
  *v13 = v34[14];
  v13[1] = sub_268EF4D98;
  v14 = v34[27];
  v15 = v34[26];
  v16 = v34[25];
  v17 = v34[24];

  return sub_268F0982C(v17, v16, v15);
}

uint64_t sub_268F0A794(uint64_t a1)
{
  v6 = *v1;
  v3 = *(*v1 + 240);
  *(v6 + 112) = *v1;
  *(v6 + 248) = a1;

  v4 = *(v6 + 112);

  return MEMORY[0x2822009F8](sub_268F0A8B0, 0);
}

uint64_t sub_268F0A8B0()
{
  v21 = v0[31];
  v17 = v0[29];
  v19 = v0[28];
  v0[14] = v0;
  v0[20] = v21;
  v1 = sub_268DC866C();
  v20 = *v1;
  MEMORY[0x277D82BE0](*v1);
  sub_268F9B284();
  sub_268F9B734();
  v18 = v2;
  MEMORY[0x277D82BE0](v21);
  v0[21] = v21;
  sub_268CDD0DC();
  sub_268CDD1A4();
  v3 = sub_268F9AE74();
  v18[3] = MEMORY[0x277D837D0];
  v18[4] = v17;
  *v18 = v3;
  v18[1] = v4;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v20);
  v0[22] = [v21 code];
  v0[23] = 3;
  type metadata accessor for INGetSettingIntentResponseCode();
  sub_268DDD0E4();
  if (sub_268F9B754())
  {
    v15 = v16[31];
    MEMORY[0x277D82BE0](v15);
    v5 = swift_task_alloc();
    v16[32] = v5;
    *v5 = v16[14];
    v5[1] = sub_268EF4908;
    v6 = v16[27];
    v7 = v16[25];
    v8 = v16[24];

    return sub_268F0982C(v8, v7, v15);
  }

  else
  {
    v14 = v16[31];
    MEMORY[0x277D82BE0](v14);
    v10 = swift_task_alloc();
    v16[35] = v10;
    *v10 = v16[14];
    v10[1] = sub_268EF4B50;
    v11 = v16[27];
    v12 = v16[25];
    v13 = v16[24];

    return sub_268F0E814(v13, v12, v14);
  }
}

uint64_t sub_268F0ABF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 192) = v3;
  *(v4 + 184) = a3;
  *(v4 + 176) = a2;
  *(v4 + 64) = v4;
  *(v4 + 72) = 0;
  *(v4 + 80) = 0;
  *(v4 + 88) = 0;
  *(v4 + 96) = 0;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 352) = 0;
  *(v4 + 353) = 0;
  *(v4 + 112) = 0;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 360) = 0;
  *(v4 + 120) = 0;
  *(v4 + 136) = 0;
  *(v4 + 368) = 0;
  *(v4 + 144) = 0;
  *(v4 + 160) = 0;
  *(v4 + 168) = 0;
  v5 = sub_268F9AB24();
  *(v4 + 200) = v5;
  v8 = *(v5 - 8);
  *(v4 + 208) = v8;
  v9 = *(v8 + 64);
  *(v4 + 216) = swift_task_alloc();
  *(v4 + 224) = swift_task_alloc();
  *(v4 + 72) = a1;
  *(v4 + 80) = a2;
  *(v4 + 88) = a3;
  *(v4 + 96) = v3;
  v6 = *(v4 + 64);

  return MEMORY[0x2822009F8](sub_268F0ADA0, 0);
}

uint64_t sub_268F0ADA0()
{
  v1 = v0[24];
  v2 = v0[23];
  v3 = v0[22];
  v0[8] = v0;
  v74 = sub_268F1A720(v3, v2);
  v75 = v4;
  v76 = v6;
  v0[29] = v4;
  if (!v4)
  {
    sub_268D28BD4();
    swift_allocError();
    *v25 = 2;
    swift_willThrow();
    goto LABEL_28;
  }

  *(v73 + 16) = v74;
  *(v73 + 24) = v4;
  *(v73 + 32) = v5;
  *(v73 + 40) = v6;
  v72 = sub_268E07A88(v5);
  if (v72 == 2)
  {
    v30 = *(v73 + 184);
    v21 = sub_268DC866C();
    v34 = *v21;
    MEMORY[0x277D82BE0](*v21);
    sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v33 = v22;
    MEMORY[0x277D82BE0](v30);
    *(v73 + 104) = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE180, qword_268FA9EF8);
    v31 = sub_268F9AE64();
    v32 = v23;
    v33[3] = MEMORY[0x277D837D0];
    v33[4] = sub_268CDD224();
    *v33 = v31;
    v33[1] = v32;
    sub_268CD0F7C();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v34);
    sub_268D28BD4();
    swift_allocError();
    *v24 = 1;
    swift_willThrow();

LABEL_28:
    v26 = *(v73 + 224);
    v29 = *(v73 + 216);

    v27 = *(*(v73 + 64) + 8);
    v28 = *(v73 + 64);

    return v27();
  }

  v65 = *(v73 + 192);
  *(v73 + 352) = v72 & 1;
  v64 = *(v65 + qword_280FE37B8);

  v71 = sub_268F23C10();
  *(v73 + 240) = v71;

  *(v73 + 112) = v71;

  v66 = *(v65 + qword_280FE37A8);

  v67 = sub_268E12F2C();
  v68 = v7;

  v69 = MEMORY[0x26D62DB30](v74, v75, v67, v68);
  v70 = v8;
  *(v73 + 248) = v8;

  *(v73 + 48) = v69;
  *(v73 + 56) = v70;
  MEMORY[0x277D82BE0](v71);
  if (v71)
  {

    v60 = sub_268F9AE14();

    v61 = [v71 integerForKey_];
    MEMORY[0x277D82BD8](v60);
    MEMORY[0x277D82BD8](v71);
    v62 = v61;
    v63 = 0;
  }

  else
  {
    v62 = 0;
    v63 = 1;
  }

  if (v63)
  {
    v59 = 0;
  }

  else
  {
    v9 = *(v73 + 192);
    *(v73 + 168) = v62;
    v10 = *(v9 + qword_280FE37A8);

    v58 = sub_268E12F10();

    if (v62 < v58)
    {
      MEMORY[0x277D82BE0](v71);
      if (v71)
      {
        result = v71;
        if (__OFADD__(v62, 1))
        {
          __break(1u);
          return result;
        }

        v57 = sub_268F9AE14();

        [v71 setInteger:v62 + 1 forKey:v57];
        MEMORY[0x277D82BD8](v57);
        MEMORY[0x277D82BD8](v71);
      }

      v13 = sub_268DC866C();
      v55 = *v13;
      MEMORY[0x277D82BE0](*v13);
      sub_268F9B284();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      sub_268F9B734();
      v54 = v14;

      v54[3] = MEMORY[0x277D837D0];
      v54[4] = sub_268CDD224();
      *v54 = v74;
      v54[1] = v75;
      sub_268CD0F7C();
      sub_268F9AC04();

      MEMORY[0x277D82BD8](v55);
      *(v73 + 353) = 1;
      v56 = 1;
    }

    else
    {
      v56 = 0;
    }

    v59 = v56;
  }

  v15 = *(v73 + 224);
  v45 = *(v73 + 216);
  v46 = *(v73 + 200);
  v43 = *(v73 + 192);
  v44 = *(v73 + 208);
  v16 = sub_268DB98D4();
  v49 = *v16;
  v50 = v16[1];
  v51 = *(v16 + 16);
  v17 = sub_268DC7BA8();
  v52 = *v17;
  MEMORY[0x277D82BE0](*v17);
  (*(v44 + 16))(v15, v43 + qword_280FE3800, v46);
  sub_268F9AB14();
  v48 = sub_268F9AB04();
  v47 = *(v44 + 8);
  v47(v45, v46);
  v47(v15, v46);
  sub_268DB9934(v49, v50, v51, v52, (v48 ^ 1) & 1);
  MEMORY[0x277D82BD8](v52);

  v18 = BinarySettingIdentifier.rawValue.getter();
  v53 = MEMORY[0x26D62DB50](v74, v75, v18);

  if (v53)
  {
    v39 = *(v73 + 192);
    v40 = sub_268E07A88(v76);
    *(v73 + 368) = v40;
    *(v73 + 256) = *(v39 + qword_280FE37E0);

    type metadata accessor for SettingsMultiSetting();

    v42 = sub_268E067CC(v74, v75, v72 & 1);
    *(v73 + 264) = v42;
    v41 = *(v39 + qword_280FE37C8);
    *(v73 + 272) = v41;

    v19 = swift_task_alloc();
    *(v73 + 280) = v19;
    *v19 = *(v73 + 64);
    v19[1] = sub_268F0BB00;

    return sub_268F4ABBC(v42, v40, v59 & 1, v41);
  }

  else
  {
    v35 = *(v73 + 192);
    v36 = sub_268E07A88(v76);
    *(v73 + 360) = v36;
    *(v73 + 304) = *(v35 + qword_280FE37E0);

    type metadata accessor for SettingsBinarySetting();

    v38 = SettingsBinarySetting.__allocating_init(settingId:value:)(v74, v75, v72 & 1);
    *(v73 + 312) = v38;
    v37 = *(v35 + qword_280FE37C8);
    *(v73 + 320) = v37;

    v20 = swift_task_alloc();
    *(v73 + 328) = v20;
    *v20 = *(v73 + 64);
    v20[1] = sub_268F0BE54;

    return sub_268F494C0(v38, v36, v59 & 1, v37);
  }
}

uint64_t sub_268F0BB00(uint64_t a1)
{
  v12 = *v2;
  v4 = *(*v2 + 280);
  v12[8] = *v2;
  v13 = v12 + 8;
  v12[36] = a1;
  v12[37] = v1;

  if (v1)
  {
    v8 = *v13;
    v7 = sub_268F0C1A8;
  }

  else
  {
    v5 = v12[34];
    v10 = v12[33];
    v11 = v12[32];

    v6 = *v13;
    v7 = sub_268F0BCA4;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268F0BCA4()
{
  v1 = v0[36];
  v12 = v0[31];
  v13 = v0[30];
  v14 = v0[29];
  v0[8] = v0;
  v0[20] = v1;
  v2 = sub_268DB98D4();
  v10 = *v2;
  v8 = v2[1];
  v9 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v11 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);

  MEMORY[0x277D82BD8](v13);

  v16 = v0[36];
  v4 = v0[28];
  v15 = v0[27];

  v5 = *(v0[8] + 8);
  v6 = v0[8];

  return v5(v16);
}

uint64_t sub_268F0BE54(uint64_t a1)
{
  v12 = *v2;
  v4 = *(*v2 + 328);
  v12[8] = *v2;
  v13 = v12 + 8;
  v12[42] = a1;
  v12[43] = v1;

  if (v1)
  {
    v8 = *v13;
    v7 = sub_268F0C4DC;
  }

  else
  {
    v5 = v12[40];
    v10 = v12[39];
    v11 = v12[38];

    v6 = *v13;
    v7 = sub_268F0BFF8;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268F0BFF8()
{
  v1 = v0[42];
  v12 = v0[31];
  v13 = v0[30];
  v14 = v0[29];
  v0[8] = v0;
  v0[17] = v1;
  v2 = sub_268DB98D4();
  v10 = *v2;
  v8 = v2[1];
  v9 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v11 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);

  MEMORY[0x277D82BD8](v13);

  v16 = v0[42];
  v4 = v0[28];
  v15 = v0[27];

  v5 = *(v0[8] + 8);
  v6 = v0[8];

  return v5(v16);
}

uint64_t sub_268F0C1A8()
{
  v23 = v0[37];
  v1 = v0[34];
  v13 = v0[33];
  v14 = v0[32];
  v24 = v0[31];
  v25 = v0[30];
  v26 = v0[29];
  v0[8] = v0;

  v2 = v23;
  v0[18] = v23;
  v3 = sub_268DC866C();
  v18 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v17 = v4;
  v5 = v23;
  v0[19] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v15 = sub_268F9AE64();
  v16 = v6;
  v17[3] = MEMORY[0x277D837D0];
  v17[4] = sub_268CDD224();
  *v17 = v15;
  v17[1] = v16;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v18);
  v7 = sub_268DB98D4();
  v21 = *v7;
  v19 = v7[1];
  v20 = *(v7 + 16);
  v8 = sub_268DC7BA8();
  v22 = *v8;
  MEMORY[0x277D82BE0](*v8);
  sub_268DB9B78(v21, v19, v20, v22);
  MEMORY[0x277D82BD8](v22);
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v25);

  v9 = v0[28];
  v27 = v0[27];

  v10 = *(v0[8] + 8);
  v11 = v0[8];

  return v10();
}

uint64_t sub_268F0C4DC()
{
  v23 = v0[43];
  v1 = v0[40];
  v13 = v0[39];
  v14 = v0[38];
  v24 = v0[31];
  v25 = v0[30];
  v26 = v0[29];
  v0[8] = v0;

  v2 = v23;
  v0[15] = v23;
  v3 = sub_268DC866C();
  v18 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v17 = v4;
  v5 = v23;
  v0[16] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v15 = sub_268F9AE64();
  v16 = v6;
  v17[3] = MEMORY[0x277D837D0];
  v17[4] = sub_268CDD224();
  *v17 = v15;
  v17[1] = v16;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v18);
  v7 = sub_268DB98D4();
  v21 = *v7;
  v19 = v7[1];
  v20 = *(v7 + 16);
  v8 = sub_268DC7BA8();
  v22 = *v8;
  MEMORY[0x277D82BE0](*v8);
  sub_268DB9B78(v21, v19, v20, v22);
  MEMORY[0x277D82BD8](v22);
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v25);

  v9 = v0[28];
  v27 = v0[27];

  v10 = *(v0[8] + 8);
  v11 = v0[8];

  return v10();
}

uint64_t sub_268F0C810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 192) = v3;
  *(v4 + 184) = a3;
  *(v4 + 176) = a2;
  *(v4 + 56) = v4;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 80) = 0;
  *(v4 + 88) = 0;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 104) = 0;
  *(v4 + 376) = 0;
  *(v4 + 384) = 0;
  *(v4 + 112) = 0;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(v4 + 144) = 0;
  *(v4 + 152) = 0;
  *(v4 + 168) = 0;
  v5 = sub_268F9AB24();
  *(v4 + 200) = v5;
  v8 = *(v5 - 8);
  *(v4 + 208) = v8;
  v9 = *(v8 + 64);
  *(v4 + 216) = swift_task_alloc();
  *(v4 + 224) = swift_task_alloc();
  *(v4 + 64) = a1;
  *(v4 + 72) = a2;
  *(v4 + 80) = a3;
  *(v4 + 88) = v3;
  v6 = *(v4 + 56);

  return MEMORY[0x2822009F8](sub_268F0C9B4, 0);
}

uint64_t sub_268F0C9B4()
{
  v1 = v0[24];
  v2 = v0[23];
  v3 = v0[22];
  v0[7] = v0;
  v86 = sub_268F1B14C(v3, v2);
  v87 = v4;
  v88 = v5;
  v0[29] = v4;
  v0[30] = v5;
  if (!v4)
  {
    sub_268D28BD4();
    swift_allocError();
    *v28 = 2;
    swift_willThrow();
    goto LABEL_29;
  }

  *(v85 + 16) = v86;
  *(v85 + 24) = v4;
  *(v85 + 32) = v5;
  MEMORY[0x277D82BE0](v5);
  v6 = [v88 value];
  v84 = v6;
  *(v85 + 248) = v6;
  if (!v6)
  {
    v33 = *(v85 + 184);
    MEMORY[0x277D82BD8](v88);
    v24 = sub_268DC866C();
    v37 = *v24;
    MEMORY[0x277D82BE0](*v24);
    sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v36 = v25;
    MEMORY[0x277D82BE0](v33);
    *(v85 + 96) = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE180, qword_268FA9EF8);
    v34 = sub_268F9AE64();
    v35 = v26;
    v36[3] = MEMORY[0x277D837D0];
    v36[4] = sub_268CDD224();
    *v36 = v34;
    v36[1] = v35;
    sub_268CD0F7C();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v37);
    sub_268D28BD4();
    swift_allocError();
    *v27 = 1;
    swift_willThrow();

    MEMORY[0x277D82BD8](v88);
LABEL_29:
    v29 = *(v85 + 224);
    v32 = *(v85 + 216);

    v30 = *(*(v85 + 56) + 8);
    v31 = *(v85 + 56);

    return v30();
  }

  *(v85 + 104) = v6;
  MEMORY[0x277D82BD8](v88);

  v7 = NumericSettingIdentifier.rawValue.getter();
  v83 = MEMORY[0x26D62DB50](v86, v87, v7);

  if (v83)
  {
    v76 = *(v85 + 192);
    v75 = *(v76 + qword_280FE37B8);

    v82 = sub_268F23C10();
    *(v85 + 256) = v82;

    *(v85 + 136) = v82;

    v77 = *(v76 + qword_280FE37A8);

    v78 = sub_268E12F2C();
    v79 = v8;

    v80 = MEMORY[0x26D62DB30](v86, v87, v78, v79);
    v81 = v9;
    *(v85 + 264) = v9;

    *(v85 + 40) = v80;
    *(v85 + 48) = v81;
    MEMORY[0x277D82BE0](v82);
    if (v82)
    {

      v71 = sub_268F9AE14();

      v72 = [v82 integerForKey_];
      MEMORY[0x277D82BD8](v71);
      MEMORY[0x277D82BD8](v82);
      v73 = v72;
      v74 = 0;
    }

    else
    {
      v73 = 0;
      v74 = 1;
    }

    if ((v74 & 1) == 0)
    {
      v10 = *(v85 + 192);
      *(v85 + 144) = v73;
      v11 = *(v10 + qword_280FE37A8);

      v70 = sub_268E12F10();

      if (v73 >= v70)
      {
        v12 = *(v85 + 224);
        v59 = *(v85 + 216);
        v60 = *(v85 + 200);
        v67 = *(v85 + 192);
        v58 = *(v85 + 208);
        v13 = sub_268DC866C();
        v57 = *v13;
        MEMORY[0x277D82BE0](*v13);
        sub_268F9B284();
        *(v85 + 272) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
        sub_268F9B734();
        sub_268F9AC04();

        MEMORY[0x277D82BD8](v57);
        v14 = sub_268DB98D4();
        v63 = *v14;
        v64 = v14[1];
        v65 = *(v14 + 16);
        v15 = sub_268DC7BA8();
        v66 = *v15;
        MEMORY[0x277D82BE0](*v15);
        (*(v58 + 16))(v12, v67 + qword_280FE3800, v60);
        sub_268F9AB14();
        v62 = sub_268F9AB04();
        v61 = *(v58 + 8);
        v61(v59, v60);
        v61(v12, v60);
        sub_268DB9934(v63, v64, v65, v66, (v62 ^ 1) & 1);
        MEMORY[0x277D82BD8](v66);
        *(v85 + 280) = *(v67 + qword_280FE37E0);

        type metadata accessor for SettingsNumericSetting();

        MEMORY[0x277D82BE0](v84);
        v69 = SettingsNumericSetting.__allocating_init(settingId:value:)(v86, v87, v84);
        *(v85 + 288) = v69;
        v68 = *(v67 + qword_280FE37C8);
        *(v85 + 296) = v68;

        v16 = swift_task_alloc();
        *(v85 + 304) = v16;
        *v16 = *(v85 + 56);
        v16[1] = sub_268F0DACC;

        return sub_268F4CFF4(v69, v68);
      }

      MEMORY[0x277D82BE0](v82);
      if (v82)
      {
        result = v82;
        if (__OFADD__(v73, 1))
        {
          __break(1u);
          return result;
        }

        v56 = sub_268F9AE14();

        [v82 setInteger:v73 + 1 forKey:v56];
        MEMORY[0x277D82BD8](v56);
        MEMORY[0x277D82BD8](v82);
      }

      v19 = sub_268DC866C();
      v55 = *v19;
      MEMORY[0x277D82BE0](*v19);
      sub_268F9B284();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      sub_268F9B734();
      sub_268F9AC04();

      MEMORY[0x277D82BD8](v55);
    }

    MEMORY[0x277D82BD8](v82);
  }

  v53 = *(v85 + 176);
  v54 = sub_268E07FF4(v53);
  *(v85 + 376) = v54 & 1;
  sub_268E07C44(v53);
  sub_268F9AE94();

  v89 = sub_268E493BC();
  if (v89 == 16)
  {
    v52 = 0;
  }

  else
  {
    *(v85 + 377) = 13;
    *(v85 + 378) = v89;
    sub_268E4A21C();
    v52 = sub_268F9AE04();
  }

  v20 = *(v85 + 224);
  v39 = *(v85 + 216);
  v40 = *(v85 + 200);
  v47 = *(v85 + 192);
  v38 = *(v85 + 208);
  *(v85 + 384) = v52 & 1;
  v21 = sub_268DB98D4();
  v43 = *v21;
  v44 = v21[1];
  v45 = *(v21 + 16);
  v22 = sub_268DC7BA8();
  v46 = *v22;
  MEMORY[0x277D82BE0](*v22);
  (*(v38 + 16))(v20, v47 + qword_280FE3800, v40);
  sub_268F9AB14();
  v42 = sub_268F9AB04();
  v41 = *(v38 + 8);
  v41(v39, v40);
  v41(v20, v40);
  sub_268DB9934(v43, v44, v45, v46, (v42 ^ 1) & 1);
  MEMORY[0x277D82BD8](v46);
  *(v85 + 328) = *(v47 + qword_280FE37E0);

  type metadata accessor for SettingsNumericSetting();

  MEMORY[0x277D82BE0](v84);
  v51 = SettingsNumericSetting.__allocating_init(settingId:value:)(v86, v87, v84);
  *(v85 + 336) = v51;
  v49 = *(v47 + qword_280FE37C8);
  *(v85 + 344) = v49;

  v48 = *(v47 + qword_280FE3818);

  v50 = sub_268EADBD0();

  v23 = swift_task_alloc();
  *(v85 + 352) = v23;
  *v23 = *(v85 + 56);
  v23[1] = sub_268F0DE40;

  return sub_268F4BD30(v51, v49, v50, v54 & 1, v52 & 1);
}

uint64_t sub_268F0DACC(uint64_t a1)
{
  v12 = *v2;
  v4 = *(*v2 + 304);
  v12[7] = *v2;
  v13 = v12 + 7;
  v12[39] = a1;
  v12[40] = v1;

  if (v1)
  {
    v8 = *v13;
    v7 = sub_268F0E188;
  }

  else
  {
    v5 = v12[37];
    v10 = v12[36];
    v11 = v12[35];

    v6 = *v13;
    v7 = sub_268F0DC70;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268F0DC70()
{
  v1 = v0[39];
  v12 = v0[33];
  v13 = v0[32];
  v14 = v0[31];
  v16 = v0[30];
  v15 = v0[29];
  v0[7] = v0;
  v0[21] = v1;
  v2 = sub_268DB98D4();
  v10 = *v2;
  v8 = v2[1];
  v9 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v11 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);

  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);

  MEMORY[0x277D82BD8](v16);
  v18 = v0[39];
  v4 = v0[28];
  v17 = v0[27];

  v5 = *(v0[7] + 8);
  v6 = v0[7];

  return v5(v18);
}

uint64_t sub_268F0DE40(uint64_t a1)
{
  v12 = *v2;
  v4 = *(*v2 + 352);
  v12[7] = *v2;
  v13 = v12 + 7;
  v12[45] = a1;
  v12[46] = v1;

  if (v1)
  {
    v8 = *v13;
    v7 = sub_268F0E4DC;
  }

  else
  {
    v5 = v12[43];
    v10 = v12[42];
    v11 = v12[41];

    v6 = *v13;
    v7 = sub_268F0DFE4;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268F0DFE4()
{
  v1 = v0[45];
  v12 = v0[31];
  v14 = v0[30];
  v13 = v0[29];
  v0[7] = v0;
  v0[16] = v1;
  v2 = sub_268DB98D4();
  v10 = *v2;
  v8 = v2[1];
  v9 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v11 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);

  MEMORY[0x277D82BD8](v14);
  v16 = v0[45];
  v4 = v0[28];
  v15 = v0[27];

  v5 = *(v0[7] + 8);
  v6 = v0[7];

  return v5(v16);
}

uint64_t sub_268F0E188()
{
  v24 = v0[40];
  v1 = v0[37];
  v13 = v0[36];
  v14 = v0[35];
  v18 = v0[34];
  v25 = v0[33];
  v26 = v0[32];
  v27 = v0[31];
  v29 = v0[30];
  v28 = v0[29];
  v0[7] = v0;

  v2 = v24;
  v0[19] = v24;
  v3 = sub_268DC866C();
  v19 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268F9B294();
  sub_268F9B734();
  v17 = v4;
  v5 = v24;
  v0[20] = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v15 = sub_268F9AE64();
  v16 = v6;
  v17[3] = MEMORY[0x277D837D0];
  v17[4] = sub_268CDD224();
  *v17 = v15;
  v17[1] = v16;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v19);
  v7 = sub_268DB9CB4();
  v22 = *v7;
  v20 = v7[1];
  v21 = *(v7 + 16);
  v8 = sub_268DC7BA8();
  v23 = *v8;
  MEMORY[0x277D82BE0](*v8);
  sub_268DB9B78(v22, v20, v21, v23);
  MEMORY[0x277D82BD8](v23);
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v26);
  MEMORY[0x277D82BD8](v27);

  MEMORY[0x277D82BD8](v29);
  v9 = v0[28];
  v30 = v0[27];

  v10 = *(v0[7] + 8);
  v11 = v0[7];

  return v10();
}

uint64_t sub_268F0E4DC()
{
  v23 = v0[46];
  v1 = v0[43];
  v13 = v0[42];
  v14 = v0[41];
  v24 = v0[31];
  v26 = v0[30];
  v25 = v0[29];
  v0[7] = v0;

  v2 = v23;
  v0[14] = v23;
  v3 = sub_268DC866C();
  v18 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v17 = v4;
  v5 = v23;
  v0[15] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v15 = sub_268F9AE64();
  v16 = v6;
  v17[3] = MEMORY[0x277D837D0];
  v17[4] = sub_268CDD224();
  *v17 = v15;
  v17[1] = v16;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v18);
  v7 = sub_268DB98D4();
  v21 = *v7;
  v19 = v7[1];
  v20 = *(v7 + 16);
  v8 = sub_268DC7BA8();
  v22 = *v8;
  MEMORY[0x277D82BE0](*v8);
  sub_268DB9B78(v21, v19, v20, v22);
  MEMORY[0x277D82BD8](v22);
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v24);

  MEMORY[0x277D82BD8](v26);
  v9 = v0[28];
  v27 = v0[27];

  v10 = *(v0[7] + 8);
  v11 = v0[7];

  return v10();
}

uint64_t sub_268F0E814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 144) = v3;
  *(v4 + 136) = a3;
  *(v4 + 128) = a2;
  *(v4 + 32) = v4;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 240) = 0;
  *(v4 + 40) = a1;
  *(v4 + 48) = a2;
  *(v4 + 56) = a3;
  *(v4 + 64) = v3;
  v5 = *(v4 + 32);
  return MEMORY[0x2822009F8](sub_268F0E898, 0);
}

uint64_t sub_268F0E898()
{
  v1 = *(v0 + 136);
  v62 = v1;
  *(v0 + 32) = v0;
  MEMORY[0x277D82BE0](v1);
  if (v62)
  {
    v57 = *(v61 + 136);
    v58 = [v57 code];
    MEMORY[0x277D82BD8](v57);
    v59 = v58;
    v60 = 0;
  }

  else
  {
    v59 = 0;
    v60 = 1;
  }

  if (v60)
  {
    v26 = sub_268DC866C();
    v30 = *v26;
    MEMORY[0x277D82BE0](*v26);
    sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v30);
    sub_268D28BD4();
    swift_allocError();
    *v27 = 2;
    swift_willThrow();
LABEL_25:
    v28 = *(*(v61 + 32) + 8);
    v29 = *(v61 + 32);

    return v28();
  }

  *(v61 + 72) = v59;
  if (v59 != 6)
  {
    if (v59 == 7)
    {
      v2 = swift_task_alloc();
      *(v61 + 152) = v2;
      *v2 = *(v61 + 32);
      v2[1] = sub_268F0F4A4;
      v3 = *(v61 + 144);
      v4 = *(v61 + 136);
      v5 = *(v61 + 128);

      return sub_268F11970(v5, v4);
    }

    v31 = *(v61 + 136);
    v22 = sub_268DC866C();
    v35 = *v22;
    MEMORY[0x277D82BE0](*v22);
    sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v34 = v23;
    MEMORY[0x277D82BE0](v31);
    *(v61 + 80) = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE180, qword_268FA9EF8);
    v32 = sub_268F9AE64();
    v33 = v24;
    v34[3] = MEMORY[0x277D837D0];
    v34[4] = sub_268CDD224();
    *v34 = v32;
    v34[1] = v33;
    sub_268CD0F7C();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v35);
    sub_268D284D4();
    swift_allocError();
    *v25 = 7;
    swift_willThrow();
    goto LABEL_25;
  }

  v49 = *(v61 + 136);
  v55 = *(v61 + 128);
  v7 = sub_268DC866C();
  v54 = *v7;
  MEMORY[0x277D82BE0](*v7);
  sub_268F9B284();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v52 = v8;
  MEMORY[0x277D82BE0](v49);
  *(v61 + 88) = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE180, qword_268FA9EF8);
  v50 = sub_268F9AE64();
  v51 = v9;
  v52[3] = MEMORY[0x277D837D0];
  v53 = sub_268CDD224();
  v52[4] = v53;
  *v52 = v50;
  v52[1] = v51;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v54);
  *(v61 + 96) = v55;
  v10 = sub_268D2E630();
  v56._countAndFlagsBits = SettingIntent.settingIdentifier.getter(v10, &protocol witness table for INGetSettingIntent);
  v56._object = v11;
  *(v61 + 160) = v11;
  if (v11)
  {
    *(v61 + 16) = v56._countAndFlagsBits;
    *(v61 + 24) = v11;

    BinarySettingIdentifier.init(rawValue:)(v56);
    if (v63 != 65)
    {
      *(v61 + 240) = v63;
      v47 = *sub_268E79858();

      *(v61 + 112) = v47;
      *(v61 + 241) = v63;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC090, &qword_268F9D9A0);
      sub_268D28B4C();
      sub_268D288C8();
      v48 = sub_268F9AFC4();
      sub_268CD7930((v61 + 112));
      if (v48)
      {
        v43 = *(v61 + 144);
        v40 = *(v61 + 136);
        v12 = sub_268DC866C();
        v42 = *v12;
        MEMORY[0x277D82BE0](*v12);
        sub_268F9B284();
        sub_268F9B734();
        v41 = v13;
        MEMORY[0x277D82BE0](v40);
        *(v61 + 120) = v40;
        v14 = sub_268F9AE64();
        v41[3] = MEMORY[0x277D837D0];
        v41[4] = v53;
        *v41 = v14;
        v41[1] = v15;
        sub_268CD0F7C();
        sub_268F9AC04();

        MEMORY[0x277D82BD8](v42);
        *(v61 + 168) = *(v43 + qword_280FE80A8);

        type metadata accessor for SettingsBinarySetting();

        v46 = SettingsBinarySetting.__allocating_init(settingId:value:)(v56._countAndFlagsBits, v56._object, 0);
        *(v61 + 176) = v46;
        v44 = *(v43 + qword_280FE37C8);
        *(v61 + 184) = v44;

        v45 = sub_268CDD6D4();
        v16 = swift_task_alloc();
        *(v61 + 192) = v16;
        *v16 = *(v61 + 32);
        v16[1] = sub_268F0F6B0;

        return sub_268EB8F90(v46, v44, 2, v45 & 1);
      }
    }
  }

  v39 = *(v61 + 144);
  v36 = *(v61 + 136);
  v17 = sub_268DC866C();
  v38 = *v17;
  MEMORY[0x277D82BE0](*v17);
  sub_268F9B284();
  sub_268F9B734();
  v37 = v18;
  MEMORY[0x277D82BE0](v36);
  *(v61 + 104) = v36;
  v19 = sub_268F9AE64();
  v37[3] = MEMORY[0x277D837D0];
  v37[4] = v53;
  *v37 = v19;
  v37[1] = v20;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v38);
  *(v61 + 216) = *(v39 + qword_280FE80A8);

  v21 = swift_task_alloc();
  *(v61 + 224) = v21;
  *v21 = *(v61 + 32);
  v21[1] = sub_268F0F914;

  return sub_268EB880C();
}

uint64_t sub_268F0F4A4(uint64_t a1)
{
  v8 = *v2;
  v3 = *(*v2 + 152);
  *(v8 + 32) = *v2;
  v9 = v8 + 32;

  if (v1)
  {
    v5 = *(*v9 + 8);
  }

  else
  {
    v4 = a1;
    v5 = *(*v9 + 8);
  }

  return v5(v4);
}

uint64_t sub_268F0F6B0(uint64_t a1)
{
  v12 = *v2;
  v4 = *(*v2 + 192);
  v12[4] = *v2;
  v13 = v12 + 4;
  v12[25] = a1;
  v12[26] = v1;

  if (v1)
  {
    v8 = *v13;
    v7 = sub_268F0FBB4;
  }

  else
  {
    v5 = v12[23];
    v10 = v12[22];
    v11 = v12[21];

    v6 = *v13;
    v7 = sub_268F0F854;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268F0F854()
{
  v1 = v0[20];
  v0[4] = v0;

  v2 = v0[25];
  v3 = *(v0[4] + 8);
  v4 = v0[4];

  return v3(v2);
}

uint64_t sub_268F0F914(uint64_t a1)
{
  v9 = *v2;
  v3 = *(*v2 + 224);
  v9[4] = *v2;
  v10 = v9 + 4;
  v9[29] = v1;

  if (v1)
  {
    v7 = *v10;

    return MEMORY[0x2822009F8](sub_268F0FB00, 0);
  }

  else
  {
    v4 = v9[27];

    v5 = *(*v10 + 8);

    return v5(a1);
  }
}

uint64_t sub_268F0FB00()
{
  v1 = v0[27];
  v0[4] = v0;

  v2 = v0[29];
  v3 = *(v0[4] + 8);
  v4 = v0[4];

  return v3();
}

uint64_t sub_268F0FBB4()
{
  v1 = v0[23];
  v6 = v0[22];
  v7 = v0[21];
  v8 = v0[20];
  v0[4] = v0;

  v2 = v0[26];
  v3 = *(v0[4] + 8);
  v4 = v0[4];

  return v3();
}

uint64_t sub_268F0FCA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 120) = v3;
  *(v4 + 112) = a2;
  *(v4 + 32) = v4;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 64) = 0;
  *(v4 + 208) = 0;
  *(v4 + 88) = 0;
  *(v4 + 96) = 0;
  v5 = sub_268F9AB24();
  *(v4 + 128) = v5;
  v8 = *(v5 - 8);
  *(v4 + 136) = v8;
  v9 = *(v8 + 64);
  *(v4 + 144) = swift_task_alloc();
  *(v4 + 152) = swift_task_alloc();
  *(v4 + 40) = a1;
  *(v4 + 48) = a2;
  *(v4 + 56) = a3;
  *(v4 + 64) = v3;
  v6 = *(v4 + 32);

  return MEMORY[0x2822009F8](sub_268F0FE14, 0);
}

uint64_t sub_268F0FE14()
{
  v38 = v0[14];
  v0[4] = v0;
  v1 = sub_268DC866C();
  v37 = *v1;
  MEMORY[0x277D82BE0](*v1);
  sub_268F9B284();
  v0[20] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v36 = v2;
  MEMORY[0x277D82BE0](v38);
  v0[9] = v38;
  v39 = sub_268D2E630();
  sub_268D59CAC();
  v34 = sub_268F9AE74();
  v35 = v3;
  v36[3] = MEMORY[0x277D837D0];
  v4 = sub_268CDD224();
  v0[21] = v4;
  v36[4] = v4;
  *v36 = v34;
  v36[1] = v35;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v37);
  v0[10] = v38;
  v0[2] = SettingIntent.settingIdentifier.getter(v39, &protocol witness table for INGetSettingIntent);
  v0[3] = v5;
  if (v0[3])
  {
    v41 = *(v33 + 16);
  }

  else
  {
    v41._countAndFlagsBits = sub_268F9AEF4();
    v41._object = v6;
    if (*(v33 + 24))
    {
      sub_268CD9D30(v33 + 16);
    }
  }

  v25 = *(v33 + 152);
  v24 = *(v33 + 144);
  v26 = *(v33 + 128);
  v22 = *(v33 + 120);
  v23 = *(v33 + 136);
  BinarySettingIdentifier.init(rawValue:)(v41);
  *(v33 + 208) = v40;
  sub_268D29170();
  *(v33 + 88) = sub_268CF0C44();
  v7 = sub_268DB98D4();
  v29 = *v7;
  v30 = v7[1];
  v31 = *(v7 + 16);
  v8 = sub_268DC7BA8();
  v32 = *v8;
  MEMORY[0x277D82BE0](*v8);
  (*(v23 + 16))(v25, v22 + qword_280FE3800, v26);
  sub_268F9AB14();
  v28 = sub_268F9AB04();
  v27 = *(v23 + 8);
  v27(v24, v26);
  v27(v25, v26);
  sub_268DB9934(v29, v30, v31, v32, (v28 ^ 1) & 1);
  MEMORY[0x277D82BD8](v32);
  if (v40 != 65 && (v40 == 35 || v40 == 36))
  {
    *(v33 + 176) = *(*(v33 + 120) + qword_280FE37E0);

    v9 = swift_task_alloc();
    *(v33 + 184) = v9;
    *v9 = *(v33 + 32);
    v9[1] = sub_268F104C0;

    return sub_268F4D82C();
  }

  else
  {
    v11 = sub_268DB98D4();
    v19 = *v11;
    v17 = v11[1];
    v18 = *(v11 + 16);
    v12 = sub_268DC7BA8();
    v20 = *v12;
    MEMORY[0x277D82BE0](*v12);
    sub_268DB9B78(v19, v17, v18, v20);
    MEMORY[0x277D82BD8](v20);
    sub_268D284D4();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();
    MEMORY[0x277D82BD8](*(v33 + 88));
    v14 = *(v33 + 152);
    v21 = *(v33 + 144);

    v15 = *(*(v33 + 32) + 8);
    v16 = *(v33 + 32);

    return v15();
  }
}

uint64_t sub_268F104C0(uint64_t a1)
{
  v10 = *v2;
  v4 = *(*v2 + 184);
  v10[4] = *v2;
  v11 = v10 + 4;
  v10[24] = a1;
  v10[25] = v1;

  if (v1)
  {
    v8 = *v11;
    v7 = sub_268F1079C;
  }

  else
  {
    v5 = v10[22];

    v6 = *v11;
    v7 = sub_268F10644;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268F10644()
{
  v1 = v0[24];
  v9 = v1;
  v14 = v0[19];
  v15 = v0[18];
  v0[4] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[11];
  v0[11] = v9;
  MEMORY[0x277D82BD8](v2);
  v3 = sub_268DB98D4();
  v12 = *v3;
  v10 = v3[1];
  v11 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v13 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v12, v10, v11, v13);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v0[11]);

  v5 = *(*(v16 + 32) + 8);
  v6 = *(v16 + 32);
  v7 = *(v16 + 192);

  return v5(v7);
}

uint64_t sub_268F1079C()
{
  v22 = v0[25];
  v1 = v0[22];
  v14 = v0[21];
  v16 = v0[20];
  v0[4] = v0;

  v2 = v22;
  v0[12] = v22;
  v3 = sub_268DC866C();
  v17 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268F9B294();
  sub_268F9B734();
  v15 = v4;
  v5 = v22;
  v0[13] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v6 = sub_268F9AE64();
  v15[3] = MEMORY[0x277D837D0];
  v15[4] = v14;
  *v15 = v6;
  v15[1] = v7;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v17);
  v8 = sub_268DB98D4();
  v20 = *v8;
  v18 = v8[1];
  v19 = *(v8 + 16);
  v9 = sub_268DC7BA8();
  v21 = *v9;
  MEMORY[0x277D82BE0](*v9);
  sub_268DB9B78(v20, v18, v19, v21);
  MEMORY[0x277D82BD8](v21);
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[11]);
  v10 = v0[19];
  v23 = v0[18];

  v11 = *(v0[4] + 8);
  v12 = v0[4];

  return v11();
}

uint64_t sub_268F10A64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[13] = v3;
  v4[12] = a2;
  v4[4] = v4;
  v4[5] = 0;
  v4[6] = 0;
  v4[7] = 0;
  v4[8] = 0;
  v4[9] = 0;
  v4[2] = 0;
  v4[3] = 0;
  v4[11] = 0;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15;
  v4[14] = swift_task_alloc();
  v6 = sub_268F9AB24();
  v4[15] = v6;
  v9 = *(v6 - 8);
  v4[16] = v9;
  v10 = *(v9 + 64);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[5] = a1;
  v4[6] = a2;
  v4[7] = a3;
  v4[8] = v3;
  v7 = v4[4];

  return MEMORY[0x2822009F8](sub_268F10C18, 0);
}

uint64_t sub_268F10C18()
{
  v1 = v0[18];
  v40 = v0[17];
  v39 = v0[16];
  v41 = v0[15];
  v38 = v0[13];
  v48 = v0[12];
  v0[4] = v0;
  v2 = sub_268DB98D4();
  v44 = *v2;
  v45 = v2[1];
  v46 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v47 = *v3;
  MEMORY[0x277D82BE0](*v3);
  (*(v39 + 16))(v1, v38 + qword_280FE3800, v41);
  sub_268F9AB14();
  v43 = sub_268F9AB04();
  v42 = *(v39 + 8);
  v42(v40, v41);
  v42(v1, v41);
  sub_268DB9934(v44, v45, v46, v47, (v43 ^ 1) & 1);
  v49 = [v48 settingMetadata];
  if (v49)
  {
    v34 = [v49 settingId];
    v35._countAndFlagsBits = sub_268F9AE24();
    v35._object = v4;
    MEMORY[0x277D82BD8](v49);
    MEMORY[0x277D82BD8](v34);
    v36 = v35;
  }

  else
  {
    v36 = 0;
  }

  v37[9]._object = v36._object;
  if (v36._object)
  {
    v37[1] = v36;

    BinarySettingIdentifier.init(rawValue:)(v36);
    if (v50 != 65 && (v50 == 35 || v50 == 36))
    {
      countAndFlagsBits = v37[7]._countAndFlagsBits;
      v37[10]._countAndFlagsBits = *(v37[6]._object + qword_280FE37C0);

      sub_268E948B8();
      sub_268F9A9A4();
      v5 = sub_268F9A9C4();
      (*(*(v5 - 8) + 56))(countAndFlagsBits, 0, 1);
      v6 = swift_task_alloc();
      v37[10]._object = v6;
      *v6 = v37[2]._countAndFlagsBits;
      v6[1] = sub_268F113E4;
      v7 = v37[7]._countAndFlagsBits;

      return sub_268DF2E84(v7);
    }

    sub_268D290F8();
    v31 = swift_allocError();
    swift_willThrow();

    v32 = v31;
  }

  else
  {
    v9 = sub_268DB98D4();
    v28 = *v9;
    v26 = v9[1];
    v27 = *(v9 + 16);
    v10 = sub_268DC7BA8();
    v29 = *v10;
    MEMORY[0x277D82BE0](*v10);
    sub_268DB9B78(v28, v26, v27, v29);
    MEMORY[0x277D82BD8](v29);
    sub_268D28BD4();
    v30 = swift_allocError();
    *v11 = 2;
    swift_willThrow();
    v32 = v30;
  }

  v23 = v37[9]._countAndFlagsBits;
  object = v37[8]._object;
  v25 = v37[7]._countAndFlagsBits;
  v12 = v32;
  v37[4]._object = v32;
  v13 = sub_268DC7B48();
  v22 = *v13;
  MEMORY[0x277D82BE0](*v13);
  sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v21 = v14;
  v15 = v32;
  v37[5]._countAndFlagsBits = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v19 = sub_268F9AE64();
  v20 = v16;
  v21[3] = MEMORY[0x277D837D0];
  v21[4] = sub_268CDD224();
  *v21 = v19;
  v21[1] = v20;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v22);
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  v17 = *(v37[2]._countAndFlagsBits + 8);
  v18 = v37[2]._countAndFlagsBits;

  return v17();
}

uint64_t sub_268F113E4(uint64_t a1)
{
  v10 = *v2;
  v4 = *(*v2 + 168);
  v10[4] = *v2;
  v11 = v10 + 4;
  v10[22] = a1;
  v10[23] = v1;

  if (v1)
  {
    v7 = *v11;
    v6 = sub_268F116C8;
  }

  else
  {
    v9 = v10[20];
    sub_268D28588(v10[14]);

    v5 = *v11;
    v6 = sub_268F11578;
  }

  return MEMORY[0x2822009F8](v6, 0);
}

uint64_t sub_268F11578()
{
  v1 = v0[22];
  v12 = v0[19];
  v13 = v0[18];
  v14 = v0[17];
  v15 = v0[14];
  v0[4] = v0;
  v0[11] = v1;
  v2 = sub_268DB98D4();
  v10 = *v2;
  v8 = v2[1];
  v9 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v11 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);

  v4 = *(*(v16 + 32) + 8);
  v5 = *(v16 + 32);
  v6 = *(v16 + 176);

  return v4(v6);
}

uint64_t sub_268F116C8()
{
  v10 = v0[20];
  v11 = v0[19];
  v1 = v0[14];
  v0[4] = v0;
  sub_268D28588(v1);

  v16 = v0[23];
  v17 = v0[18];
  v18 = v0[17];
  v19 = v0[14];
  v2 = v16;
  v0[9] = v16;
  v3 = sub_268DC7B48();
  v15 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v14 = v4;
  v5 = v16;
  v0[10] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v12 = sub_268F9AE64();
  v13 = v6;
  v14[3] = MEMORY[0x277D837D0];
  v14[4] = sub_268CDD224();
  *v14 = v12;
  v14[1] = v13;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v15);
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  v7 = *(v0[4] + 8);
  v8 = v0[4];

  return v7();
}

uint64_t sub_268F11970(uint64_t a1, uint64_t a2)
{
  *(v3 + 496) = v2;
  *(v3 + 488) = a2;
  *(v3 + 480) = a1;
  *(v3 + 208) = v3;
  *(v3 + 216) = 0;
  *(v3 + 224) = 0;
  *(v3 + 232) = 0;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 256) = 0;
  *(v3 + 272) = 0;
  *(v3 + 280) = 0;
  *(v3 + 296) = 0;
  *(v3 + 304) = 0;
  *(v3 + 320) = 0;
  *(v3 + 328) = 0;
  *(v3 + 336) = 0;
  *(v3 + 936) = 0;
  *(v3 + 144) = 0;
  *(v3 + 152) = 0;
  *(v3 + 344) = 0;
  *(v3 + 360) = 0;
  *(v3 + 160) = 0;
  *(v3 + 168) = 0;
  *(v3 + 376) = 0;
  *(v3 + 392) = 0;
  *(v3 + 176) = 0;
  *(v3 + 184) = 0;
  *(v3 + 408) = 0;
  *(v3 + 944) = 0;
  *(v3 + 952) = 0;
  *(v3 + 960) = 0;
  *(v3 + 968) = 0;
  *(v3 + 976) = 0;
  *(v3 + 416) = 0;
  *(v3 + 984) = 0;
  *(v3 + 192) = 0;
  *(v3 + 200) = 0;
  *(v3 + 432) = 0;
  *(v3 + 448) = 0;
  *(v3 + 456) = 0;
  *(v3 + 472) = 0;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64);
  *(v3 + 504) = swift_task_alloc();
  *(v3 + 512) = swift_task_alloc();
  *(v3 + 520) = swift_task_alloc();
  v4 = sub_268F9AB24();
  *(v3 + 528) = v4;
  v8 = *(v4 - 8);
  *(v3 + 536) = v8;
  v9 = *(v8 + 64);
  *(v3 + 544) = swift_task_alloc();
  *(v3 + 552) = swift_task_alloc();
  *(v3 + 216) = a1;
  *(v3 + 224) = a2;
  *(v3 + 232) = v2;
  v5 = *(v3 + 208);

  return MEMORY[0x2822009F8](sub_268F11BB4, 0);
}

uint64_t sub_268F11BB4()
{
  v209 = v0;
  v1 = *(v0 + 488);
  v203 = v1;
  *(v0 + 208) = v0;
  MEMORY[0x277D82BE0](v1);
  if (v203)
  {
    v200 = *(v202 + 488);
    v201 = [v200 errorDetail];
    if (v201)
    {
      v196 = sub_268F9AE24();
      v197 = v2;
      MEMORY[0x277D82BD8](v201);
      v198 = v196;
      v199 = v197;
    }

    else
    {
      v198 = 0;
      v199 = 0;
    }

    MEMORY[0x277D82BD8](v200);
    v194 = v198;
    v195 = v199;
  }

  else
  {
    v194 = 0;
    v195 = 0;
  }

  *(v202 + 560) = v195;
  if (!v195)
  {
    v82 = *(v202 + 488);
    v71 = sub_268DC866C();
    v86 = *v71;
    MEMORY[0x277D82BE0](*v71);
    sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v85 = v72;
    MEMORY[0x277D82BE0](v82);
    *(v202 + 240) = v82;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE180, qword_268FA9EF8);
    v83 = sub_268F9AE64();
    v84 = v73;
    v85[3] = MEMORY[0x277D837D0];
    v85[4] = sub_268CDD224();
    *v85 = v83;
    v85[1] = v84;
    sub_268CD0F7C();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v86);
    sub_268D28BD4();
    swift_allocError();
    *v74 = 3;
    swift_willThrow();
    goto LABEL_76;
  }

  v3 = *(v202 + 552);
  v185 = *(v202 + 544);
  v186 = *(v202 + 528);
  v183 = *(v202 + 496);
  v184 = *(v202 + 536);
  *(v202 + 16) = v194;
  *(v202 + 24) = v195;
  v4 = sub_268DB98D4();
  v189 = *v4;
  v190 = v4[1];
  v191 = *(v4 + 16);
  v5 = sub_268DC7BA8();
  v192 = *v5;
  MEMORY[0x277D82BE0](*v5);
  (*(v184 + 16))(v3, v183 + qword_280FE3800, v186);
  sub_268F9AB14();
  v188 = sub_268F9AB04();
  v187 = *(v184 + 8);
  v187(v185, v186);
  v187(v3, v186);
  sub_268DB9934(v189, v190, v191, v192, (v188 ^ 1) & 1);
  MEMORY[0x277D82BD8](v192);

  *(v202 + 32) = sub_268E948B8();
  *(v202 + 40) = v6;
  v193 = MEMORY[0x26D62DB50](*(v202 + 32), *(v202 + 40), v194, v195);
  sub_268CD9D30(v202 + 32);
  if (v193)
  {
    v181 = *(v202 + 480);

    v182 = [v181 settingMetadata];
    if (v182)
    {
      v176 = [v182 settingId];
      v177 = sub_268F9AE24();
      v178 = v7;
      MEMORY[0x277D82BD8](v182);
      MEMORY[0x277D82BD8](v176);
      v179 = v177;
      v180 = v178;
    }

    else
    {
      v179 = 0;
      v180 = 0;
    }

    *(v202 + 568) = v180;
    if (v180)
    {
      *(v202 + 192) = v179;
      *(v202 + 200) = v180;
      if (sub_268E07AE4(v179, v180))
      {
        v172 = *(v202 + 496);
        *(v202 + 576) = *(v172 + qword_280FE80A8);

        type metadata accessor for SettingsBinarySetting();

        v175 = SettingsBinarySetting.__allocating_init(settingId:value:)(v179, v180, 0);
        *(v202 + 584) = v175;
        v173 = *(v172 + qword_280FE37C8);
        *(v202 + 592) = v173;

        v174 = sub_268CDD6D4();
        v8 = swift_task_alloc();
        *(v202 + 600) = v8;
        *v8 = *(v202 + 208);
        v8[1] = sub_268F13E9C;

        return sub_268EB8F90(v175, v173, 2, v174 & 1);
      }

      if (sub_268E07B94(v179, v180))
      {
        v169 = *(v202 + 496);
        *(v202 + 624) = *(v169 + qword_280FE80A8);

        v171 = *(v169 + qword_280FE37C8);
        *(v202 + 632) = v171;

        v170 = sub_268CDD6D4();
        v10 = swift_task_alloc();
        *(v202 + 640) = v10;
        *v10 = *(v202 + 208);
        v10[1] = sub_268F141E0;

        return sub_268EBA484(v171, v170 & 1);
      }

      v68 = sub_268DB98D4();
      v89 = *v68;
      v87 = v68[1];
      v88 = *(v68 + 16);
      v69 = sub_268DC7BA8();
      v90 = *v69;
      MEMORY[0x277D82BE0](*v69);
      sub_268DB9B78(v89, v87, v88, v90);
      MEMORY[0x277D82BD8](v90);
      sub_268D28BD4();
      swift_allocError();
      *v70 = 4;
      swift_willThrow();
    }

    else
    {
      v11 = sub_268DB98D4();
      v167 = *v11;
      v165 = v11[1];
      v166 = *(v11 + 16);
      v12 = sub_268DC7BA8();
      v168 = *v12;
      MEMORY[0x277D82BE0](*v12);
      sub_268DB9B78(v167, v165, v166, v168);
      MEMORY[0x277D82BD8](v168);
      sub_268D28BD4();
      swift_allocError();
      *v13 = 2;
      swift_willThrow();
    }

    goto LABEL_76;
  }

  *(v202 + 48) = sub_268E948B8();
  *(v202 + 56) = v14;
  v164 = MEMORY[0x26D62DB50](*(v202 + 48), *(v202 + 56), v194, v195);
  sub_268CD9D30(v202 + 48);
  if (v164)
  {
    v162 = *(v202 + 480);

    *(v202 + 400) = v162;
    v15 = sub_268D2E630();
    v163._countAndFlagsBits = SettingIntent.settingIdentifier.getter(v15, &protocol witness table for INGetSettingIntent);
    v163._object = v16;
    *(v202 + 664) = v16;
    if (v16)
    {
      *(v202 + 176) = v163._countAndFlagsBits;
      *(v202 + 184) = v16;
      sub_268D29170();
      *(v202 + 408) = sub_268CF0C44();
      v17 = BinarySettingIdentifier.rawValue.getter();
      v161 = MEMORY[0x26D62DB50](v163._countAndFlagsBits, v163._object, v17);

      if (v161)
      {
        v158 = *(v202 + 496);
        v157 = *(v158 + qword_280FE37F8);

        v207[3] = 45;
        v18._countAndFlagsBits = BinarySettingIdentifier.rawValue.getter();
        BinarySettingIdentifier.init(rawValue:)(v18);
        v208 = v207[2];
        v160 = sub_268F397B4(&v208);

        *(v202 + 984) = v160;
        *(v202 + 672) = *(v158 + qword_280FE80A8);

        type metadata accessor for SettingsMultiSetting();

        v159 = sub_268E067CC(v163._countAndFlagsBits, v163._object, 0);
        *(v202 + 680) = v159;
        v19 = swift_task_alloc();
        *(v202 + 688) = v19;
        *v19 = *(v202 + 208);
        v19[1] = sub_268F14514;

        return sub_268EC0E00(v160, v159);
      }

      else
      {

        BinarySettingIdentifier.init(rawValue:)(v163);
        if (v204 == 65)
        {

          NumericSettingIdentifier.init(rawValue:)(v163);
          if (v205 != 13)
          {
            v22 = *(v202 + 496);
            *(v202 + 944) = v205;
            v150 = *(v22 + qword_280FE37F8);

            v206 = v205;
            v151 = sub_268F3988C(&v206);

            *(v202 + 952) = v151;
          }

          v143 = *(v202 + 664);
          v144 = *(v202 + 560);
          v23 = sub_268DB98D4();
          v141 = *v23;
          v139 = v23[1];
          v140 = *(v23 + 16);
          v24 = sub_268DC7BA8();
          v142 = *v24;
          MEMORY[0x277D82BE0](*v24);
          sub_268DB9B78(v141, v139, v140, v142);
          MEMORY[0x277D82BD8](v142);
          v149 = *(v202 + 408);
          MEMORY[0x277D82BE0](v149);
          MEMORY[0x277D82BD8](*(v202 + 408));

          v25 = *(v202 + 552);
          v145 = *(v202 + 544);
          v146 = *(v202 + 520);
          v147 = *(v202 + 512);
          v148 = *(v202 + 504);

          v26 = *(*(v202 + 208) + 8);
          v27 = *(v202 + 208);

          return v26(v149);
        }

        else
        {
          v153 = *(v202 + 496);
          *(v202 + 960) = v204;
          v152 = *(v153 + qword_280FE37F8);

          v207[0] = v204;
          v156 = sub_268F397B4(v207);

          *(v202 + 968) = v156;
          v207[1] = 44;
          v20 = BinarySettingIdentifier.rawValue.getter();
          v154 = MEMORY[0x26D62DB50](v20);

          *(v202 + 976) = v154 & 1;
          *(v202 + 712) = *(v153 + qword_280FE80A8);

          type metadata accessor for SettingsBinarySetting();

          v155 = SettingsBinarySetting.__allocating_init(settingId:value:)(v163._countAndFlagsBits, v163._object, 0);
          *(v202 + 720) = v155;
          v21 = swift_task_alloc();
          *(v202 + 728) = v21;
          *v21 = *(v202 + 208);
          v21[1] = sub_268F14884;

          return sub_268EC1F74(v156, v154 & 1, 0, v155);
        }
      }
    }

    v28 = sub_268DB98D4();
    v137 = *v28;
    v135 = v28[1];
    v136 = *(v28 + 16);
    v29 = sub_268DC7BA8();
    v138 = *v29;
    MEMORY[0x277D82BE0](*v29);
    sub_268DB9B78(v137, v135, v136, v138);
    MEMORY[0x277D82BD8](v138);
    sub_268D28BD4();
    swift_allocError();
    *v30 = 2;
    swift_willThrow();

LABEL_76:
    v75 = *(v202 + 552);
    v78 = *(v202 + 544);
    v79 = *(v202 + 520);
    v80 = *(v202 + 512);
    v81 = *(v202 + 504);

    v76 = *(*(v202 + 208) + 8);
    v77 = *(v202 + 208);

    return v76();
  }

  *(v202 + 64) = sub_268E948B8();
  *(v202 + 72) = v31;
  v134 = MEMORY[0x26D62DB50](*(v202 + 64), *(v202 + 72), v194, v195);
  sub_268CD9D30(v202 + 64);
  if (v134)
  {
    v131 = *(v202 + 480);

    *(v202 + 368) = v131;
    v32 = sub_268D2E630();
    v132 = SettingIntent.settingIdentifier.getter(v32, &protocol witness table for INGetSettingIntent);
    v133 = v33;
    *(v202 + 752) = v33;
    if (!v33)
    {
      v36 = sub_268DB98D4();
      v128 = *v36;
      v126 = v36[1];
      v127 = *(v36 + 16);
      v37 = sub_268DC7BA8();
      v129 = *v37;
      MEMORY[0x277D82BE0](*v37);
      sub_268DB9B78(v128, v126, v127, v129);
      MEMORY[0x277D82BD8](v129);
      sub_268D28BD4();
      swift_allocError();
      *v38 = 2;
      swift_willThrow();

      goto LABEL_76;
    }

    v34 = *(v202 + 496);
    *(v202 + 160) = v132;
    *(v202 + 168) = v33;
    *(v202 + 760) = *(v34 + qword_280FE80A8);

    type metadata accessor for SettingsBinarySetting();

    v130 = SettingsBinarySetting.__allocating_init(settingId:value:)(v132, v133, 0);
    *(v202 + 768) = v130;
    v35 = swift_task_alloc();
    *(v202 + 776) = v35;
    *v35 = *(v202 + 208);
    v35[1] = sub_268F14C10;

    return sub_268EBBFB8(v130);
  }

  else
  {

    *(v202 + 80) = sub_268E948B8();
    *(v202 + 88) = v39;
    v125 = MEMORY[0x26D62DB50](*(v202 + 80), *(v202 + 88), v194, v195);
    sub_268CD9D30(v202 + 80);
    if ((v125 & 1) == 0)
    {

      *(v202 + 96) = sub_268E948B8();
      *(v202 + 104) = v53;
      v107 = MEMORY[0x26D62DB50](*(v202 + 96), *(v202 + 104), v194, v195);
      sub_268CD9D30(v202 + 96);
      if (v107)
      {
        v106 = *(v202 + 512);
        v105 = *(v202 + 496);

        *(v202 + 840) = *(v105 + qword_280FE37C0);

        sub_268E948B8();
        sub_268F9A9A4();
        v54 = sub_268F9A9C4();
        (*(*(v54 - 8) + 56))(v106, 0, 1);
        v55 = swift_task_alloc();
        *(v202 + 848) = v55;
        *v55 = *(v202 + 208);
        v55[1] = sub_268F15290;
        v56 = *(v202 + 512);
      }

      else
      {

        *(v202 + 112) = sub_268E948B8();
        *(v202 + 120) = v57;
        v104 = MEMORY[0x26D62DB50](*(v202 + 112), *(v202 + 120), v194, v195);
        sub_268CD9D30(v202 + 112);
        if ((v104 & 1) == 0)
        {

          *(v202 + 128) = sub_268E948B8();
          *(v202 + 136) = v60;
          v101 = MEMORY[0x26D62DB50](*(v202 + 128), *(v202 + 136), v194, v195);
          sub_268CD9D30(v202 + 128);
          if ((v101 & 1) == 0)
          {
            v91 = *(v202 + 488);

            v62 = sub_268DC866C();
            v95 = *v62;
            MEMORY[0x277D82BE0](*v62);
            sub_268F9B294();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
            sub_268F9B734();
            v94 = v63;
            MEMORY[0x277D82BE0](v91);
            *(v202 + 248) = v91;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE180, qword_268FA9EF8);
            v92 = sub_268F9AE64();
            v93 = v64;
            v94[3] = MEMORY[0x277D837D0];
            v94[4] = sub_268CDD224();
            *v94 = v92;
            v94[1] = v93;
            sub_268CD0F7C();
            sub_268F9AC04();

            MEMORY[0x277D82BD8](v95);
            v65 = sub_268DB98D4();
            v98 = *v65;
            v96 = v65[1];
            v97 = *(v65 + 16);
            v66 = sub_268DC7BA8();
            v99 = *v66;
            MEMORY[0x277D82BE0](*v66);
            sub_268DB9B78(v98, v96, v97, v99);
            MEMORY[0x277D82BD8](v99);
            sub_268D28BD4();
            swift_allocError();
            *v67 = 4;
            swift_willThrow();

            goto LABEL_76;
          }

          v100 = *(v202 + 496);

          *(v202 + 904) = *(v100 + qword_280FE80A8);

          v61 = swift_task_alloc();
          *(v202 + 912) = v61;
          *v61 = *(v202 + 208);
          v61[1] = sub_268F158D0;

          return sub_268EBB148();
        }

        v103 = *(v202 + 504);
        v102 = *(v202 + 496);

        *(v202 + 872) = *(v102 + qword_280FE37C0);

        sub_268E948B8();
        sub_268F9A9A4();
        v58 = sub_268F9A9C4();
        (*(*(v58 - 8) + 56))(v103, 0, 1);
        v59 = swift_task_alloc();
        *(v202 + 880) = v59;
        *v59 = *(v202 + 208);
        v59[1] = sub_268F155B0;
        v56 = *(v202 + 504);
      }

      return sub_268DF2E84(v56);
    }

    v123 = *(v202 + 480);

    v124 = [v123 settingMetadata];
    if (v124)
    {
      v121 = [v124 targetDevice];
      MEMORY[0x277D82BD8](v124);
      v122 = v121;
    }

    else
    {
      v122 = 0;
    }

    *(v202 + 800) = v122;
    if (!v122)
    {
      v52 = sub_268DC866C();
      v108 = *v52;
      MEMORY[0x277D82BE0](*v52);
      sub_268F9B294();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      sub_268F9B734();
      sub_268F9AC04();

      MEMORY[0x277D82BD8](v108);
      sub_268D290F8();
      swift_allocError();
      swift_willThrow();

      goto LABEL_76;
    }

    v118 = *(v202 + 480);
    *(v202 + 328) = v122;
    v120 = [v122 deviceCategory];
    *(v202 + 336) = v120;
    v119 = sub_268E07FF4(v118);
    *(v202 + 936) = v119 & 1;
    *(v202 + 144) = sub_268F9AEF4();
    *(v202 + 152) = v40;
    if (v120 == 3)
    {
      BatteryDevice = ReadBatteryDeviceCategory.rawValue.getter();
      v117 = v41;

      v42 = *(v202 + 152);
      *(v202 + 144) = BatteryDevice;
      *(v202 + 152) = v117;
    }

    else if (v120 == 9)
    {
      if (v119)
      {
        v114 = ReadBatteryDeviceCategory.rawValue.getter();
        v115 = v43;

        v44 = *(v202 + 152);
        *(v202 + 144) = v114;
        *(v202 + 152) = v115;
      }

      else
      {
        v112 = ReadBatteryDeviceCategory.rawValue.getter();
        v113 = v45;

        v46 = *(v202 + 152);
        *(v202 + 144) = v112;
        *(v202 + 152) = v113;
      }
    }

    else
    {
      v110 = ReadBatteryDeviceCategory.rawValue.getter();
      v111 = v47;

      v48 = *(v202 + 152);
      *(v202 + 144) = v110;
      *(v202 + 152) = v111;
    }

    v109 = *(v202 + 520);
    *(v202 + 808) = *(*(v202 + 496) + qword_280FE37E0);

    sub_268F9A9A4();
    v49 = sub_268F9A9C4();
    (*(*(v49 - 8) + 56))(v109, 0, 1);
    v50 = swift_task_alloc();
    *(v202 + 816) = v50;
    *v50 = *(v202 + 208);
    v50[1] = sub_268F14F44;
    v51 = *(v202 + 520);

    return sub_268F4E80C(v51);
  }
}

uint64_t sub_268F13E9C(uint64_t a1)
{
  v12 = *v2;
  v4 = *(*v2 + 600);
  v12[26] = *v2;
  v13 = v12 + 26;
  v12[76] = a1;
  v12[77] = v1;

  if (v1)
  {
    v8 = *v13;
    v7 = sub_268F15BE0;
  }

  else
  {
    v5 = v12[74];
    v10 = v12[73];
    v11 = v12[72];

    v6 = *v13;
    v7 = sub_268F14040;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268F14040()
{
  v1 = v0[76];
  v12 = v0[71];
  v13 = v0[70];
  v0[26] = v0;
  v0[59] = v1;
  v2 = sub_268DB98D4();
  v10 = *v2;
  v8 = v2[1];
  v9 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v11 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);

  v18 = v0[76];
  v4 = v0[69];
  v14 = v0[68];
  v15 = v0[65];
  v16 = v0[64];
  v17 = v0[63];

  v5 = *(v0[26] + 8);
  v6 = v0[26];

  return v5(v18);
}

uint64_t sub_268F141E0(uint64_t a1)
{
  v11 = *v2;
  v4 = *(*v2 + 640);
  v11[26] = *v2;
  v12 = v11 + 26;
  v11[81] = a1;
  v11[82] = v1;

  if (v1)
  {
    v8 = *v12;
    v7 = sub_268F15F14;
  }

  else
  {
    v5 = v11[79];
    v10 = v11[78];

    v6 = *v12;
    v7 = sub_268F14374;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268F14374()
{
  v1 = v0[81];
  v12 = v0[71];
  v13 = v0[70];
  v0[26] = v0;
  v0[56] = v1;
  v2 = sub_268DB98D4();
  v10 = *v2;
  v8 = v2[1];
  v9 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v11 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);

  v18 = v0[81];
  v4 = v0[69];
  v14 = v0[68];
  v15 = v0[65];
  v16 = v0[64];
  v17 = v0[63];

  v5 = *(v0[26] + 8);
  v6 = v0[26];

  return v5(v18);
}

uint64_t sub_268F14514(uint64_t a1)
{
  v11 = *v2;
  v4 = *(*v2 + 688);
  v11[26] = *v2;
  v12 = v11 + 26;
  v11[87] = a1;
  v11[88] = v1;

  if (v1)
  {
    v8 = *v12;
    v7 = sub_268F16238;
  }

  else
  {
    v5 = v11[85];
    v10 = v11[84];

    v6 = *v12;
    v7 = sub_268F146A8;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268F146A8()
{
  v1 = v0[87];
  v0[26] = v0;
  v2 = v0[51];
  v0[51] = v1;
  MEMORY[0x277D82BD8](v2);
  v13 = v0[83];
  v14 = v0[70];
  v3 = sub_268DB98D4();
  v11 = *v3;
  v9 = v3[1];
  v10 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v12 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v11, v9, v10, v12);
  MEMORY[0x277D82BD8](v12);
  v19 = v0[51];
  MEMORY[0x277D82BE0](v19);
  MEMORY[0x277D82BD8](v0[51]);

  v5 = v0[69];
  v15 = v0[68];
  v16 = v0[65];
  v17 = v0[64];
  v18 = v0[63];

  v6 = *(v0[26] + 8);
  v7 = v0[26];

  return v6(v19);
}

uint64_t sub_268F14884(uint64_t a1)
{
  v11 = *v2;
  v4 = *(*v2 + 728);
  v11[26] = *v2;
  v12 = v11 + 26;
  v11[92] = a1;
  v11[93] = v1;

  if (v1)
  {
    v8 = *v12;
    v7 = sub_268F16588;
  }

  else
  {
    v5 = v11[90];
    v10 = v11[89];

    v6 = *v12;
    v7 = sub_268F14A18;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268F14A18()
{
  v1 = v0[92];
  v0[26] = v0;
  v2 = v0[51];
  v0[51] = v1;
  MEMORY[0x277D82BD8](v2);
  v13 = v0[83];
  v14 = v0[70];
  v3 = sub_268DB98D4();
  v11 = *v3;
  v9 = v3[1];
  v10 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v12 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v11, v9, v10, v12);
  MEMORY[0x277D82BD8](v12);
  v19 = v0[51];
  MEMORY[0x277D82BE0](v19);
  MEMORY[0x277D82BD8](v0[51]);

  v5 = v0[69];
  v15 = v0[68];
  v16 = v0[65];
  v17 = v0[64];
  v18 = v0[63];

  v6 = *(v0[26] + 8);
  v7 = v0[26];

  return v6(v19);
}

uint64_t sub_268F14C10(uint64_t a1)
{
  v11 = *v2;
  v4 = *(*v2 + 776);
  v11[26] = *v2;
  v12 = v11 + 26;
  v11[98] = a1;
  v11[99] = v1;

  if (v1)
  {
    v8 = *v12;
    v7 = sub_268F168E0;
  }

  else
  {
    v5 = v11[96];
    v10 = v11[95];

    v6 = *v12;
    v7 = sub_268F14DA4;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268F14DA4()
{
  v1 = v0[98];
  v12 = v0[94];
  v13 = v0[70];
  v0[26] = v0;
  v0[49] = v1;
  v2 = sub_268DB98D4();
  v10 = *v2;
  v8 = v2[1];
  v9 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v11 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);

  v18 = v0[98];
  v4 = v0[69];
  v14 = v0[68];
  v15 = v0[65];
  v16 = v0[64];
  v17 = v0[63];

  v5 = *(v0[26] + 8);
  v6 = v0[26];

  return v5(v18);
}

uint64_t sub_268F14F44(uint64_t a1)
{
  v10 = *v2;
  v4 = *(*v2 + 816);
  v10[26] = *v2;
  v11 = v10 + 26;
  v10[103] = a1;
  v10[104] = v1;

  if (v1)
  {
    v7 = *v11;
    v6 = sub_268F16C04;
  }

  else
  {
    v9 = v10[101];
    sub_268D28588(v10[65]);

    v5 = *v11;
    v6 = sub_268F150D8;
  }

  return MEMORY[0x2822009F8](v6, 0);
}

uint64_t sub_268F150D8()
{
  v1 = v0[103];
  v12 = v0[100];
  v13 = v0[70];
  v0[26] = v0;
  v0[45] = v1;
  v2 = sub_268DB98D4();
  v10 = *v2;
  v8 = v2[1];
  v9 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v11 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);
  sub_268CD9D30((v0 + 18));
  MEMORY[0x277D82BD8](v12);

  v18 = v0[103];
  v4 = v0[69];
  v14 = v0[68];
  v15 = v0[65];
  v16 = v0[64];
  v17 = v0[63];

  v5 = *(v0[26] + 8);
  v6 = v0[26];

  return v5(v18);
}

uint64_t sub_268F15290(uint64_t a1)
{
  v10 = *v2;
  v4 = *(*v2 + 848);
  v10[26] = *v2;
  v11 = v10 + 26;
  v10[107] = a1;
  v10[108] = v1;

  if (v1)
  {
    v7 = *v11;
    v6 = sub_268F16F40;
  }

  else
  {
    v9 = v10[105];
    sub_268D28588(v10[64]);

    v5 = *v11;
    v6 = sub_268F15424;
  }

  return MEMORY[0x2822009F8](v6, 0);
}

uint64_t sub_268F15424()
{
  v1 = v0[107];
  v12 = v0[70];
  v0[26] = v0;
  v0[40] = v1;
  v2 = sub_268DB98D4();
  v10 = *v2;
  v8 = v2[1];
  v9 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v11 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);

  v17 = v0[107];
  v4 = v0[69];
  v13 = v0[68];
  v14 = v0[65];
  v15 = v0[64];
  v16 = v0[63];

  v5 = *(v0[26] + 8);
  v6 = v0[26];

  return v5(v17);
}

uint64_t sub_268F155B0(uint64_t a1)
{
  v10 = *v2;
  v4 = *(*v2 + 880);
  v10[26] = *v2;
  v11 = v10 + 26;
  v10[111] = a1;
  v10[112] = v1;

  if (v1)
  {
    v7 = *v11;
    v6 = sub_268F17250;
  }

  else
  {
    v9 = v10[109];
    sub_268D28588(v10[63]);

    v5 = *v11;
    v6 = sub_268F15744;
  }

  return MEMORY[0x2822009F8](v6, 0);
}

uint64_t sub_268F15744()
{
  v1 = v0[111];
  v12 = v0[70];
  v0[26] = v0;
  v0[37] = v1;
  v2 = sub_268DB98D4();
  v10 = *v2;
  v8 = v2[1];
  v9 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v11 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);

  v17 = v0[111];
  v4 = v0[69];
  v13 = v0[68];
  v14 = v0[65];
  v15 = v0[64];
  v16 = v0[63];

  v5 = *(v0[26] + 8);
  v6 = v0[26];

  return v5(v17);
}

uint64_t sub_268F158D0(uint64_t a1)
{
  v10 = *v2;
  v4 = *(*v2 + 912);
  v10[26] = *v2;
  v11 = v10 + 26;
  v10[115] = a1;
  v10[116] = v1;

  if (v1)
  {
    v8 = *v11;
    v7 = sub_268F17560;
  }

  else
  {
    v5 = v10[113];

    v6 = *v11;
    v7 = sub_268F15A54;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268F15A54()
{
  v1 = v0[115];
  v12 = v0[70];
  v0[26] = v0;
  v0[34] = v1;
  v2 = sub_268DB98D4();
  v10 = *v2;
  v8 = v2[1];
  v9 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v11 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);

  v17 = v0[115];
  v4 = v0[69];
  v13 = v0[68];
  v14 = v0[65];
  v15 = v0[64];
  v16 = v0[63];

  v5 = *(v0[26] + 8);
  v6 = v0[26];

  return v5(v17);
}

uint64_t sub_268F15BE0()
{
  v23 = v0[77];
  v1 = v0[74];
  v13 = v0[73];
  v14 = v0[72];
  v24 = v0[71];
  v25 = v0[70];
  v0[26] = v0;

  v2 = v23;
  v0[57] = v23;
  v3 = sub_268DC866C();
  v18 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v17 = v4;
  v5 = v23;
  v0[58] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v15 = sub_268F9AE64();
  v16 = v6;
  v17[3] = MEMORY[0x277D837D0];
  v17[4] = sub_268CDD224();
  *v17 = v15;
  v17[1] = v16;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v18);
  v7 = sub_268DB98D4();
  v21 = *v7;
  v19 = v7[1];
  v20 = *(v7 + 16);
  v8 = sub_268DC7BA8();
  v22 = *v8;
  MEMORY[0x277D82BE0](*v8);
  sub_268DB9B78(v21, v19, v20, v22);
  MEMORY[0x277D82BD8](v22);
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  v9 = v0[69];
  v26 = v0[68];
  v27 = v0[65];
  v28 = v0[64];
  v29 = v0[63];

  v10 = *(v0[26] + 8);
  v11 = v0[26];

  return v10();
}

uint64_t sub_268F15F14()
{
  v22 = v0[82];
  v1 = v0[79];
  v13 = v0[78];
  v23 = v0[71];
  v24 = v0[70];
  v0[26] = v0;

  v2 = v22;
  v0[54] = v22;
  v3 = sub_268DC866C();
  v17 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v16 = v4;
  v5 = v22;
  v0[55] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v14 = sub_268F9AE64();
  v15 = v6;
  v16[3] = MEMORY[0x277D837D0];
  v16[4] = sub_268CDD224();
  *v16 = v14;
  v16[1] = v15;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v17);
  v7 = sub_268DB98D4();
  v20 = *v7;
  v18 = v7[1];
  v19 = *(v7 + 16);
  v8 = sub_268DC7BA8();
  v21 = *v8;
  MEMORY[0x277D82BE0](*v8);
  sub_268DB9B78(v20, v18, v19, v21);
  MEMORY[0x277D82BD8](v21);
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  v9 = v0[69];
  v25 = v0[68];
  v26 = v0[65];
  v27 = v0[64];
  v28 = v0[63];

  v10 = *(v0[26] + 8);
  v11 = v0[26];

  return v10();
}

uint64_t sub_268F16238()
{
  v1 = v0[85];
  v13 = v0[84];
  v0[26] = v0;

  MEMORY[0x277D82BD8](v0[51]);
  v22 = v0[88];
  v23 = v0[83];
  v24 = v0[70];
  v2 = v22;
  v0[52] = v22;
  v3 = sub_268DC866C();
  v17 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v16 = v4;
  v5 = v22;
  v0[53] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v14 = sub_268F9AE64();
  v15 = v6;
  v16[3] = MEMORY[0x277D837D0];
  v16[4] = sub_268CDD224();
  *v16 = v14;
  v16[1] = v15;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v17);
  v7 = sub_268DB98D4();
  v20 = *v7;
  v18 = v7[1];
  v19 = *(v7 + 16);
  v8 = sub_268DC7BA8();
  v21 = *v8;
  MEMORY[0x277D82BE0](*v8);
  sub_268DB9B78(v20, v18, v19, v21);
  MEMORY[0x277D82BD8](v21);
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  v9 = v0[69];
  v25 = v0[68];
  v26 = v0[65];
  v27 = v0[64];
  v28 = v0[63];

  v10 = *(v0[26] + 8);
  v11 = v0[26];

  return v10();
}

uint64_t sub_268F16588()
{
  v1 = v0[90];
  v13 = v0[89];
  v0[26] = v0;

  MEMORY[0x277D82BD8](v0[51]);
  v22 = v0[93];
  v23 = v0[83];
  v24 = v0[70];
  v2 = v22;
  v0[52] = v22;
  v3 = sub_268DC866C();
  v17 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v16 = v4;
  v5 = v22;
  v0[53] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v14 = sub_268F9AE64();
  v15 = v6;
  v16[3] = MEMORY[0x277D837D0];
  v16[4] = sub_268CDD224();
  *v16 = v14;
  v16[1] = v15;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v17);
  v7 = sub_268DB98D4();
  v20 = *v7;
  v18 = v7[1];
  v19 = *(v7 + 16);
  v8 = sub_268DC7BA8();
  v21 = *v8;
  MEMORY[0x277D82BE0](*v8);
  sub_268DB9B78(v20, v18, v19, v21);
  MEMORY[0x277D82BD8](v21);
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  v9 = v0[69];
  v25 = v0[68];
  v26 = v0[65];
  v27 = v0[64];
  v28 = v0[63];

  v10 = *(v0[26] + 8);
  v11 = v0[26];

  return v10();
}

uint64_t sub_268F168E0()
{
  v22 = v0[99];
  v1 = v0[96];
  v13 = v0[95];
  v23 = v0[94];
  v24 = v0[70];
  v0[26] = v0;

  v2 = v22;
  v0[47] = v22;
  v3 = sub_268DC866C();
  v17 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v16 = v4;
  v5 = v22;
  v0[48] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v14 = sub_268F9AE64();
  v15 = v6;
  v16[3] = MEMORY[0x277D837D0];
  v16[4] = sub_268CDD224();
  *v16 = v14;
  v16[1] = v15;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v17);
  v7 = sub_268DB98D4();
  v20 = *v7;
  v18 = v7[1];
  v19 = *(v7 + 16);
  v8 = sub_268DC7BA8();
  v21 = *v8;
  MEMORY[0x277D82BE0](*v8);
  sub_268DB9B78(v20, v18, v19, v21);
  MEMORY[0x277D82BD8](v21);
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  v9 = v0[69];
  v25 = v0[68];
  v26 = v0[65];
  v27 = v0[64];
  v28 = v0[63];

  v10 = *(v0[26] + 8);
  v11 = v0[26];

  return v10();
}

uint64_t sub_268F16C04()
{
  v22 = v0[104];
  v13 = v0[101];
  v23 = v0[100];
  v24 = v0[70];
  v1 = v0[65];
  v0[26] = v0;
  sub_268D28588(v1);

  v2 = v22;
  v0[43] = v22;
  v3 = sub_268DC866C();
  v17 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v16 = v4;
  v5 = v22;
  v0[44] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v14 = sub_268F9AE64();
  v15 = v6;
  v16[3] = MEMORY[0x277D837D0];
  v16[4] = sub_268CDD224();
  *v16 = v14;
  v16[1] = v15;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v17);
  v7 = sub_268DB98D4();
  v20 = *v7;
  v18 = v7[1];
  v19 = *(v7 + 16);
  v8 = sub_268DC7BA8();
  v21 = *v8;
  MEMORY[0x277D82BE0](*v8);
  sub_268DB9B78(v20, v18, v19, v21);
  MEMORY[0x277D82BD8](v21);
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  sub_268CD9D30((v0 + 18));
  MEMORY[0x277D82BD8](v23);

  v9 = v0[69];
  v25 = v0[68];
  v26 = v0[65];
  v27 = v0[64];
  v28 = v0[63];

  v10 = *(v0[26] + 8);
  v11 = v0[26];

  return v10();
}

uint64_t sub_268F16F40()
{
  v22 = v0[108];
  v13 = v0[105];
  v23 = v0[70];
  v1 = v0[64];
  v0[26] = v0;
  sub_268D28588(v1);

  v2 = v22;
  v0[38] = v22;
  v3 = sub_268DC866C();
  v17 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v16 = v4;
  v5 = v22;
  v0[39] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v14 = sub_268F9AE64();
  v15 = v6;
  v16[3] = MEMORY[0x277D837D0];
  v16[4] = sub_268CDD224();
  *v16 = v14;
  v16[1] = v15;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v17);
  v7 = sub_268DB98D4();
  v20 = *v7;
  v18 = v7[1];
  v19 = *(v7 + 16);
  v8 = sub_268DC7BA8();
  v21 = *v8;
  MEMORY[0x277D82BE0](*v8);
  sub_268DB9B78(v20, v18, v19, v21);
  MEMORY[0x277D82BD8](v21);
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  v9 = v0[69];
  v24 = v0[68];
  v25 = v0[65];
  v26 = v0[64];
  v27 = v0[63];

  v10 = *(v0[26] + 8);
  v11 = v0[26];

  return v10();
}

uint64_t sub_268F17250()
{
  v22 = v0[112];
  v13 = v0[109];
  v23 = v0[70];
  v1 = v0[63];
  v0[26] = v0;
  sub_268D28588(v1);

  v2 = v22;
  v0[35] = v22;
  v3 = sub_268DC866C();
  v17 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v16 = v4;
  v5 = v22;
  v0[36] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v14 = sub_268F9AE64();
  v15 = v6;
  v16[3] = MEMORY[0x277D837D0];
  v16[4] = sub_268CDD224();
  *v16 = v14;
  v16[1] = v15;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v17);
  v7 = sub_268DB98D4();
  v20 = *v7;
  v18 = v7[1];
  v19 = *(v7 + 16);
  v8 = sub_268DC7BA8();
  v21 = *v8;
  MEMORY[0x277D82BE0](*v8);
  sub_268DB9B78(v20, v18, v19, v21);
  MEMORY[0x277D82BD8](v21);
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  v9 = v0[69];
  v24 = v0[68];
  v25 = v0[65];
  v26 = v0[64];
  v27 = v0[63];

  v10 = *(v0[26] + 8);
  v11 = v0[26];

  return v10();
}

uint64_t sub_268F17560()
{
  v21 = v0[116];
  v1 = v0[113];
  v22 = v0[70];
  v0[26] = v0;

  v2 = v21;
  v0[32] = v21;
  v3 = sub_268DC866C();
  v16 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v15 = v4;
  v5 = v21;
  v0[33] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v13 = sub_268F9AE64();
  v14 = v6;
  v15[3] = MEMORY[0x277D837D0];
  v15[4] = sub_268CDD224();
  *v15 = v13;
  v15[1] = v14;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v16);
  v7 = sub_268DB98D4();
  v19 = *v7;
  v17 = v7[1];
  v18 = *(v7 + 16);
  v8 = sub_268DC7BA8();
  v20 = *v8;
  MEMORY[0x277D82BE0](*v8);
  sub_268DB9B78(v19, v17, v18, v20);
  MEMORY[0x277D82BD8](v20);
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  v9 = v0[69];
  v23 = v0[68];
  v24 = v0[65];
  v25 = v0[64];
  v26 = v0[63];

  v10 = *(v0[26] + 8);
  v11 = v0[26];

  return v10();
}

uint64_t sub_268F17860(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  rawValue._countAndFlagsBits = a1;
  rawValue._object = a2;
  v22 = 0u;
  v23 = 0u;
  v19 = 0;
  v17 = 0;
  v16 = 0;
  v5 = *v4;
  *&v22 = a1;
  *(&v22 + 1) = a2;
  *&v23 = a3;
  *(&v23 + 1) = a4;
  v21 = *(v5 + qword_280FE8090);
  v20 = *(v5 + qword_280FE8090 + 8);
  v19 = v4;

  BinarySettingIdentifier.init(rawValue:)(rawValue);
  if (v18 == 65 || (v17 = v18, v6 = sub_268E07A88(a3), v12 = v6, v6 == 2))
  {
    v8 = 0;
  }

  else
  {
    v16 = v6 & 1;
    v10 = *sub_268E7C7C8();

    v15 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC090, &qword_268F9D9A0);
    sub_268D28B4C();
    sub_268D288C8();
    v11 = sub_268F9AFC4();
    sub_268CD7930(&v15);
    if (v11)
    {
      v9 = v12 ^ 1;
    }

    else
    {
      v9 = 0;
    }

    v8 = v9;
  }

  return v8 & 1;
}

uint64_t sub_268F17A54(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  rawValue._countAndFlagsBits = a1;
  rawValue._object = a2;
  v44 = 0u;
  v45 = 0u;
  v41 = 0;
  v40 = 0;
  v39 = 0;
  v7 = *v6;
  *&v44 = a1;
  *(&v44 + 1) = a2;
  *&v45 = a3;
  *(&v45 + 1) = a4;
  v43 = *(v7 + qword_280FE8090);
  v42 = *(v7 + qword_280FE8090 + 8);
  v41 = a5 & 1;
  v40 = a6 & 1;
  v39 = v6;
  if (a6)
  {
    goto LABEL_34;
  }

  if (sub_268F17860(a1, a2, a3, a4))
  {
    v26 = *(v30 + qword_280FE37F0);

    v32 = 1;
    v27 = sub_268F47F9C(&v32);

    if (v27 == 2)
    {
      v25 = 2;
    }

    else
    {
      v25 = v27 & 1;
    }

    v24 = v25 != 2 && sub_268D2CBA4(v25 & 1, 1);

    BinarySettingIdentifier.init(rawValue:)(rawValue);
    if (v31 == 65 || (sub_268D28AD4(), v8 = sub_268F9B754(), (v8 & 1) == 0 ? (v23 = sub_268F9B754()) : (v23 = 1), (v23 & 1) == 0))
    {
      type metadata accessor for SettingsBinarySetting();
      v11 = BinarySettingIdentifier.rawValue.getter();
      return SettingsBinarySetting.__allocating_init(settingId:value:)(v11, v12, v24);
    }

    else
    {
      type metadata accessor for SettingsBinarySetting();
      v9 = BinarySettingIdentifier.rawValue.getter();
      return SettingsBinarySetting.__allocating_init(settingId:value:)(v9, v10, !v24);
    }
  }

  v38[1] = 1;
  v13 = BinarySettingIdentifier.rawValue.getter();
  v21 = MEMORY[0x26D62DB50](rawValue._countAndFlagsBits, rawValue._object, v13);

  if ((v21 & 1) == 0)
  {
LABEL_34:
    type metadata accessor for SettingsBinarySetting();

    return SettingsBinarySetting.__allocating_init(settingId:value:)(rawValue._countAndFlagsBits, rawValue._object, a5 & 1);
  }

  v19 = *(v30 + qword_280FE37F0);

  v38[0] = 1;
  v20 = sub_268F47F9C(v38);

  if (v20 == 2)
  {
    v18 = 2;
  }

  else
  {
    v18 = v20 & 1;
  }

  v36 = v18;
  v37 = 1;
  if (v18 == 2)
  {
    if (v37 == 2)
    {
      v17 = 1;
      goto LABEL_27;
    }

    goto LABEL_30;
  }

  v33 = v18;
  if (v37 == 2)
  {
LABEL_30:
    v17 = 0;
    goto LABEL_27;
  }

  v17 = sub_268D2CBA4(v33 & 1, v37 & 1);
LABEL_27:
  type metadata accessor for SettingsBinarySetting();
  if (v17)
  {
    v34 = 3;
  }

  else
  {
    v35 = 2;
  }

  v14 = BinarySettingIdentifier.rawValue.getter();
  return SettingsBinarySetting.__allocating_init(settingId:value:)(v14, v15, 1);
}

uint64_t sub_268F17FBC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v10 = *(*v4 + qword_280FE8090);
  v9 = *(*v4 + qword_280FE8090 + 8);
  type metadata accessor for SettingsNumericSetting();

  MEMORY[0x277D82BE0](a4);
  return SettingsNumericSetting.__allocating_init(settingId:value:)(a1, a2, a4);
}

uint64_t sub_268F18090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 144) = v5;
  *(v6 + 249) = a5 & 1;
  *(v6 + 136) = a4;
  *(v6 + 128) = a3;
  *(v6 + 120) = a2;
  *(v6 + 112) = a1;
  *(v6 + 80) = v6;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *(v6 + 248) = 0;
  *(v6 + 88) = 0;
  *(v6 + 96) = 0;
  *(v6 + 104) = 0;
  v7 = *v5;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  *(v6 + 152) = *(v7 + qword_280FE8090);
  *(v6 + 160) = *(v7 + qword_280FE8090 + 8);
  *(v6 + 248) = a5 & 1;
  *(v6 + 88) = v5;
  v8 = *(v6 + 80);
  return MEMORY[0x2822009F8](sub_268F1817C, 0);
}

uint64_t sub_268F1817C()
{
  v20 = v0[15];
  v19 = v0[14];
  v0[10] = v0;

  v1 = BinarySettingIdentifier.rawValue.getter();
  v21 = MEMORY[0x26D62DB50](v19, v20, v1);

  if (v21)
  {
    v16 = *(v18 + 249);
    v15 = *(v18 + 120);
    v14 = *(v18 + 112);
    *(v18 + 168) = *(*(v18 + 144) + qword_280FE80A8);

    type metadata accessor for SettingsMultiSetting();

    v17 = sub_268E067CC(v14, v15, v16 & 1);
    *(v18 + 176) = v17;
    v2 = swift_task_alloc();
    *(v18 + 184) = v2;
    *v2 = *(v18 + 80);
    v2[1] = sub_268F1842C;

    return sub_268EBCE34(v17);
  }

  else
  {
    v7 = *(v18 + 160);
    v6 = *(v18 + 152);
    v11 = *(v18 + 249);
    v10 = *(v18 + 136);
    v9 = *(v18 + 128);
    v8 = *(v18 + 120);
    v12 = *(v18 + 112);
    *(v18 + 208) = *(*(v18 + 144) + qword_280FE80A8);

    v4 = sub_268CDFACC();
    v13 = sub_268F17A54(v12, v8, v9, v10, v11 & 1, v4 & 1);
    *(v18 + 216) = v13;
    v5 = swift_task_alloc();
    *(v18 + 224) = v5;
    *v5 = *(v18 + 80);
    v5[1] = sub_268F188D8;

    return sub_268EB7990(v13);
  }
}

uint64_t sub_268F1842C(uint64_t a1)
{
  v11 = *v2;
  v4 = *(*v2 + 184);
  v11[10] = *v2;
  v12 = v11 + 10;
  v11[24] = a1;
  v11[25] = v1;

  if (v1)
  {
    v8 = *v12;
    v7 = sub_268F18D84;
  }

  else
  {
    v5 = v11[22];
    v10 = v11[21];

    v6 = *v12;
    v7 = sub_268F185C0;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268F185C0()
{
  v24 = *(v0 + 192);
  *(v0 + 80) = v0;
  if (v24)
  {
    v23[13] = v24;
    v21 = sub_268E0739C(v24);
    v22 = v1;
    MEMORY[0x277D82BD8](v24);
    v2 = v21;
    v3 = v22;
    v4 = *(v23[10] + 8);
    v5 = v23[10];
  }

  else
  {
    v13 = v23[15];
    v12 = v23[14];
    v6 = sub_268DC7B48();
    v18 = *v6;
    MEMORY[0x277D82BE0](*v6);
    sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v17 = v7;

    v23[8] = v12;
    v23[9] = v13;
    v14 = MEMORY[0x277D837D0];
    v15 = sub_268F9AE84();
    v16 = v8;
    v17[3] = v14;
    v17[4] = sub_268CDD224();
    *v17 = v15;
    v17[1] = v16;
    sub_268CD0F7C();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v18);
    sub_268D28BD4();
    swift_allocError();
    *v9 = 0;
    swift_willThrow();
    v2 = v19;
    v3 = v20;
    v4 = *(v23[10] + 8);
    v10 = v23[10];
  }

  return v4(v2, v3);
}

uint64_t sub_268F188D8(uint64_t a1)
{
  v11 = *v2;
  v4 = *(*v2 + 224);
  v11[10] = *v2;
  v12 = v11 + 10;
  v11[29] = a1;
  v11[30] = v1;

  if (v1)
  {
    v8 = *v12;
    v7 = sub_268F190BC;
  }

  else
  {
    v5 = v11[27];
    v10 = v11[26];

    v6 = *v12;
    v7 = sub_268F18A6C;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268F18A6C()
{
  v24 = *(v0 + 232);
  *(v0 + 80) = v0;
  if (v24)
  {
    v23[12] = v24;
    v21 = sub_268E0739C(v24);
    v22 = v1;
    MEMORY[0x277D82BD8](v24);
    v2 = v21;
    v3 = v22;
    v4 = *(v23[10] + 8);
    v5 = v23[10];
  }

  else
  {
    v13 = v23[15];
    v12 = v23[14];
    v6 = sub_268DC7B48();
    v18 = *v6;
    MEMORY[0x277D82BE0](*v6);
    sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v17 = v7;

    v23[6] = v12;
    v23[7] = v13;
    v14 = MEMORY[0x277D837D0];
    v15 = sub_268F9AE84();
    v16 = v8;
    v17[3] = v14;
    v17[4] = sub_268CDD224();
    *v17 = v15;
    v17[1] = v16;
    sub_268CD0F7C();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v18);
    sub_268D28BD4();
    swift_allocError();
    *v9 = 0;
    swift_willThrow();
    v2 = v19;
    v3 = v20;
    v4 = *(v23[10] + 8);
    v10 = v23[10];
  }

  return v4(v2, v3);
}

uint64_t sub_268F18D84()
{
  v18 = v0[25];
  v1 = v0[22];
  v17 = v0[21];
  v0[10] = v0;

  v10 = v16[15];
  v9 = v16[14];
  v2 = sub_268DC7B48();
  v15 = *v2;
  MEMORY[0x277D82BE0](*v2);
  sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v14 = v3;

  v16[8] = v9;
  v16[9] = v10;
  v11 = MEMORY[0x277D837D0];
  v12 = sub_268F9AE84();
  v13 = v4;
  v14[3] = v11;
  v14[4] = sub_268CDD224();
  *v14 = v12;
  v14[1] = v13;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v15);
  sub_268D28BD4();
  swift_allocError();
  *v5 = 0;
  swift_willThrow();
  v6 = *(v16[10] + 8);
  v7 = v16[10];

  return v6();
}

uint64_t sub_268F190BC()
{
  v18 = v0[30];
  v1 = v0[27];
  v17 = v0[26];
  v0[10] = v0;

  v10 = v16[15];
  v9 = v16[14];
  v2 = sub_268DC7B48();
  v15 = *v2;
  MEMORY[0x277D82BE0](*v2);
  sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v14 = v3;

  v16[6] = v9;
  v16[7] = v10;
  v11 = MEMORY[0x277D837D0];
  v12 = sub_268F9AE84();
  v13 = v4;
  v14[3] = v11;
  v14[4] = sub_268CDD224();
  *v14 = v12;
  v14[1] = v13;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v15);
  sub_268D28BD4();
  swift_allocError();
  *v5 = 0;
  swift_willThrow();
  v6 = *(v16[10] + 8);
  v7 = v16[10];

  return v6();
}

uint64_t sub_268F193F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 120) = v5;
  *(v6 + 169) = a5 & 1;
  *(v6 + 112) = a4;
  *(v6 + 104) = a3;
  *(v6 + 96) = a2;
  *(v6 + 88) = a1;
  *(v6 + 64) = v6;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *(v6 + 168) = 0;
  *(v6 + 72) = 0;
  *(v6 + 80) = 0;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  *(v6 + 168) = a5 & 1;
  *(v6 + 72) = v5;
  v7 = *(v6 + 64);
  return MEMORY[0x2822009F8](sub_268F1948C, 0);
}

uint64_t sub_268F1948C()
{
  v1 = *(v0 + 120);
  v8 = *(v0 + 169);
  v7 = *(v0 + 112);
  v6 = *(v0 + 104);
  v5 = *(v0 + 96);
  v4 = *(v0 + 88);
  *(v0 + 64) = v0;
  *(v0 + 128) = *(v1 + qword_280FE80A8);

  v10 = sub_268F17A54(v4, v5, v6, v7, v8 & 1, 1);
  *(v0 + 136) = v10;
  v2 = swift_task_alloc();
  *(v9 + 144) = v2;
  *v2 = *(v9 + 64);
  v2[1] = sub_268F195B8;

  return sub_268EB818C(v10);
}

uint64_t sub_268F195B8(uint64_t a1)
{
  v11 = *v2;
  v4 = *(*v2 + 144);
  v11[8] = *v2;
  v12 = v11 + 8;
  v11[19] = a1;
  v11[20] = v1;

  if (v1)
  {
    v8 = *v12;
    v7 = sub_268F19A4C;
  }

  else
  {
    v5 = v11[17];
    v10 = v11[16];

    v6 = *v12;
    v7 = sub_268F1974C;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268F1974C()
{
  v24 = *(v0 + 152);
  *(v0 + 64) = v0;
  if (v24)
  {
    v23[10] = v24;
    v21 = sub_268E0739C(v24);
    v22 = v1;
    MEMORY[0x277D82BD8](v24);
    v2 = v21;
    v3 = v22;
    v4 = *(v23[8] + 8);
    v5 = v23[8];
  }

  else
  {
    v13 = v23[12];
    v12 = v23[11];
    v6 = sub_268DC7B48();
    v18 = *v6;
    MEMORY[0x277D82BE0](*v6);
    sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v17 = v7;

    v23[6] = v12;
    v23[7] = v13;
    v14 = MEMORY[0x277D837D0];
    v15 = sub_268F9AE84();
    v16 = v8;
    v17[3] = v14;
    v17[4] = sub_268CDD224();
    *v17 = v15;
    v17[1] = v16;
    sub_268CD0F7C();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v18);
    sub_268D284D4();
    swift_allocError();
    *v9 = 1;
    swift_willThrow();
    v2 = v19;
    v3 = v20;
    v4 = *(v23[8] + 8);
    v10 = v23[8];
  }

  return v4(v2, v3);
}

uint64_t sub_268F19A4C()
{
  v18 = v0[20];
  v1 = v0[17];
  v17 = v0[16];
  v0[8] = v0;

  v10 = v16[12];
  v9 = v16[11];
  v2 = sub_268DC7B48();
  v15 = *v2;
  MEMORY[0x277D82BE0](*v2);
  sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v14 = v3;

  v16[6] = v9;
  v16[7] = v10;
  v11 = MEMORY[0x277D837D0];
  v12 = sub_268F9AE84();
  v13 = v4;
  v14[3] = v11;
  v14[4] = sub_268CDD224();
  *v14 = v12;
  v14[1] = v13;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v15);
  sub_268D284D4();
  swift_allocError();
  *v5 = 1;
  swift_willThrow();
  v6 = *(v16[8] + 8);
  v7 = v16[8];

  return v6();
}

uint64_t sub_268F19D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[14] = v4;
  v5[13] = a4;
  v5[12] = a2;
  v5[11] = a1;
  v5[7] = v5;
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = 0;
  v5[8] = 0;
  v5[9] = 0;
  v5[10] = 0;
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  v5[8] = a4;
  v5[9] = v4;
  v6 = v5[7];
  return MEMORY[0x2822009F8](sub_268F19DE8, 0);
}

uint64_t sub_268F19DE8()
{
  v1 = v0[14];
  v5 = v0[13];
  v4 = v0[12];
  v6 = v0[11];
  v0[7] = v0;
  v0[15] = *(v1 + qword_280FE80A8);

  type metadata accessor for SettingsNumericSetting();

  MEMORY[0x277D82BE0](v5);
  v8 = SettingsNumericSetting.__allocating_init(settingId:value:)(v6, v4, v5);
  v0[16] = v8;
  v2 = swift_task_alloc();
  *(v7 + 136) = v2;
  *v2 = *(v7 + 56);
  v2[1] = sub_268F19F14;

  return sub_268EBEBC0(v8);
}

uint64_t sub_268F19F14(uint64_t a1)
{
  v11 = *v2;
  v4 = *(*v2 + 136);
  v11[7] = *v2;
  v12 = v11 + 7;
  v11[18] = a1;
  v11[19] = v1;

  if (v1)
  {
    v8 = *v12;
    v7 = sub_268F1A3A8;
  }

  else
  {
    v5 = v11[16];
    v10 = v11[15];

    v6 = *v12;
    v7 = sub_268F1A0A8;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268F1A0A8()
{
  v24 = *(v0 + 144);
  *(v0 + 56) = v0;
  if (v24)
  {
    v23[10] = v24;
    v21 = sub_268E0739C(v24);
    v22 = v1;
    MEMORY[0x277D82BD8](v24);
    v2 = v21;
    v3 = v22;
    v4 = *(v23[7] + 8);
    v5 = v23[7];
  }

  else
  {
    v13 = v23[12];
    v12 = v23[11];
    v6 = sub_268DC7B48();
    v18 = *v6;
    MEMORY[0x277D82BE0](*v6);
    sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v17 = v7;

    v23[5] = v12;
    v23[6] = v13;
    v14 = MEMORY[0x277D837D0];
    v15 = sub_268F9AE84();
    v16 = v8;
    v17[3] = v14;
    v17[4] = sub_268CDD224();
    *v17 = v15;
    v17[1] = v16;
    sub_268CD0F7C();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v18);
    sub_268D28BD4();
    swift_allocError();
    *v9 = 0;
    swift_willThrow();
    v2 = v19;
    v3 = v20;
    v4 = *(v23[7] + 8);
    v10 = v23[7];
  }

  return v4(v2, v3);
}

uint64_t sub_268F1A3A8()
{
  v18 = v0[19];
  v1 = v0[16];
  v17 = v0[15];
  v0[7] = v0;

  v10 = v16[12];
  v9 = v16[11];
  v2 = sub_268DC7B48();
  v15 = *v2;
  MEMORY[0x277D82BE0](*v2);
  sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v14 = v3;

  v16[5] = v9;
  v16[6] = v10;
  v11 = MEMORY[0x277D837D0];
  v12 = sub_268F9AE84();
  v13 = v4;
  v14[3] = v11;
  v14[4] = sub_268CDD224();
  *v14 = v12;
  v14[1] = v13;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v15);
  sub_268D28BD4();
  swift_allocError();
  *v5 = 0;
  swift_willThrow();
  v6 = *(v16[7] + 8);
  v7 = v16[7];

  return v6();
}

uint64_t sub_268F1A720(void *a1, void *a2)
{
  v68 = 0;
  v67 = 0;
  v66 = 0;
  v63 = 0;
  v61 = 0;
  v59 = 0;
  v57 = 0;
  v3 = *v2;
  v68 = a1;
  v67 = a2;
  v66 = v2;
  v65 = *(v3 + qword_280FE8090);
  v64 = *(v3 + qword_280FE8090 + 8);
  v48 = [a1 settingMetadata];
  if (v48)
  {
    v42 = [v48 settingId];
    v43._countAndFlagsBits = sub_268F9AE24();
    v43._object = v4;
    MEMORY[0x277D82BD8](v48);
    MEMORY[0x277D82BD8](v42);
    v44 = v43;
  }

  else
  {
    v44 = 0;
  }

  if (!v44._object)
  {
    v15 = sub_268DC866C();
    v22 = *v15;
    MEMORY[0x277D82BE0](*v15);
    sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v21 = v16;
    MEMORY[0x277D82BE0](a1);
    v62 = a1;
    sub_268D2E630();
    sub_268D59CAC();
    v19 = sub_268F9AE74();
    v20 = v17;
    v21[3] = MEMORY[0x277D837D0];
    v21[4] = sub_268CDD224();
    *v21 = v19;
    v21[1] = v20;
    sub_268CD0F7C();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v22);
    return 0;
  }

  v63 = v44;
  MEMORY[0x277D82BE0](a2);
  if (a2)
  {
    v5 = [a2 settingResponseDatas];
    v41 = v5;
    if (v5)
    {
      sub_268CDD140();
      v39 = sub_268F9B014();
      MEMORY[0x277D82BD8](v41);
      v40 = v39;
    }

    else
    {
      v40 = 0;
    }

    v50 = v40;
    if (v40)
    {
      sub_268CDD140();
      sub_268F9B094();
      sub_268CD7930(&v50);
      MEMORY[0x277D82BD8](a2);
      v36 = [v49 binaryValue];
      (MEMORY[0x277D82BD8])();
      v37 = v36;
      v38 = 0;
      goto LABEL_13;
    }

    sub_268CD7930(&v50);
    MEMORY[0x277D82BD8](a2);
  }

  v37 = 0;
  v38 = 1;
LABEL_13:
  if (v38)
  {
    v14 = sub_268DC866C();
    v23 = *v14;
    MEMORY[0x277D82BE0](*v14);
    sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v23);
    sub_268CD9D30(&v63);
    return 0;
  }

  v61 = v37;

  v35 = sub_268F9AF14();

  if (v35)
  {
    v6 = sub_268DC866C();
    v33 = *v6;
    MEMORY[0x277D82BE0](*v6);
    sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v33);
    sub_268CD9D30(&v63);
    return 0;
  }

  v7 = v63;

  v60 = 1;
  v8 = BinarySettingIdentifier.rawValue.getter();
  v32 = MEMORY[0x26D62DB50](v7._countAndFlagsBits, v7._object, v8);

  if (v32)
  {
    v30 = *(v47 + qword_280FE37F0);

    rawValue = v63;

    BinarySettingIdentifier.init(rawValue:)(rawValue);
    v56[0] = v56[1];
    v31 = sub_268F47F9C(v56);

    if (v31 == 2)
    {
      v28 = 2;
    }

    else
    {
      v28 = v31 & 1;
    }

    v54 = v28;
    v55 = 0;
    if (v28 == 2)
    {
      if (v55 == 2)
      {
        v27 = 1;
        goto LABEL_25;
      }
    }

    else
    {
      v51 = v28;
      if (v55 != 2)
      {
        v27 = sub_268D2CBA4(v51 & 1, v55 & 1);
LABEL_25:
        if (v27)
        {
          v52 = 2;
        }

        else
        {
          v53 = 3;
        }

        v63._countAndFlagsBits = BinarySettingIdentifier.rawValue.getter();
        v63._object = v9;

        goto LABEL_32;
      }
    }

    v27 = 0;
    goto LABEL_25;
  }

LABEL_32:
  sub_268F9B734();
  *v10 = 28;
  v10[1] = 38;
  v10[2] = 11;
  sub_268CD0F7C();
  sub_268E12E98();
  v59 = sub_268F9B194();
  v26 = v63;

  BinarySettingIdentifier.init(rawValue:)(v26);
  if (v58 == 65 || (v57 = v58, v56[2] = v58, v11 = sub_268F9B1C4(), (v11 & 1) == 0))
  {

    [a1 confirmationValue];
    sub_268F1A6D8();
    v24 = v13;

    sub_268CD9D30(&v63);
    return v24;
  }

  else
  {

    sub_268F1A6D8();
    v25 = v12;

    sub_268CD9D30(&v63);
    return v25;
  }
}

uint64_t sub_268F1B14C(void *a1, void *a2)
{
  v43 = 0;
  v42 = 0;
  v41 = 0;
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v3 = *v2;
  v43 = a1;
  v42 = a2;
  v41 = v2;
  v40 = *(v3 + qword_280FE8090);
  v39 = *(v3 + qword_280FE8090 + 8);
  v32 = [a1 settingMetadata];
  if (v32)
  {
    v25 = [v32 settingId];
    v26 = sub_268F9AE24();
    v27 = v4;
    MEMORY[0x277D82BD8](v32);
    MEMORY[0x277D82BD8](v25);
    v28 = v26;
    v29 = v27;
  }

  else
  {
    v28 = 0;
    v29 = 0;
  }

  if (!v29)
  {
    v9 = sub_268DC866C();
    v16 = *v9;
    MEMORY[0x277D82BE0](*v9);
    sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v15 = v10;
    MEMORY[0x277D82BE0](a1);
    v38 = a1;
    sub_268D2E630();
    sub_268D59CAC();
    v13 = sub_268F9AE74();
    v14 = v11;
    v15[3] = MEMORY[0x277D837D0];
    v15[4] = sub_268CDD224();
    *v15 = v13;
    v15[1] = v14;
    sub_268CD0F7C();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v16);
    return 0;
  }

  v36 = v28;
  v37 = v29;
  MEMORY[0x277D82BE0](a2);
  if (a2)
  {
    v5 = [a2 settingResponseDatas];
    v24 = v5;
    if (v5)
    {
      sub_268CDD140();
      v22 = sub_268F9B014();
      MEMORY[0x277D82BD8](v24);
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    v34 = v23;
    if (v23)
    {
      sub_268CDD140();
      sub_268F9B094();
      sub_268CD7930(&v34);
      MEMORY[0x277D82BD8](a2);
      v20 = [v33 numericValue];
      (MEMORY[0x277D82BD8])();
      v21 = v20;
      goto LABEL_13;
    }

    sub_268CD7930(&v34);
    MEMORY[0x277D82BD8](a2);
  }

  v21 = 0;
LABEL_13:
  if (v21)
  {
    v35 = v21;
    if (sub_268F9AF14())
    {
      v6 = sub_268DC866C();
      v18 = *v6;
      MEMORY[0x277D82BE0](*v6);
      sub_268F9B294();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      sub_268F9B734();
      sub_268F9AC04();

      MEMORY[0x277D82BD8](v18);
      MEMORY[0x277D82BD8](v21);

      return 0;
    }

    else
    {
      sub_268EE21D4();
      return v7;
    }
  }

  else
  {
    v8 = sub_268DC866C();
    v17 = *v8;
    MEMORY[0x277D82BE0](*v8);
    sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v17);

    return 0;
  }
}

void sub_268F1B790()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_268F1B804(v3);
}

void sub_268F1B804(uint64_t a1@<X8>)
{
  v3 = *(*v1 + qword_280FE8090);
  v2 = *(*v1 + qword_280FE8090 + 8);
  sub_268DB83F0("init(ducFamily:locale:extensionValueTypeNamesByValueType:aceServiceInvoker:)", 76, "SiriSettingsIntents/GetSettingTemplatingService.swift", 53, 2, "SiriSettingsIntents.GetSettingTemplatingService", 47, 0x13uLL, a1, 7uLL);
  __break(1u);
}

void sub_268F1B8F0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_268F1B974(v3);
}

void sub_268F1B974(uint64_t a1@<X8>)
{
  v3 = *(*v1 + qword_280FE8090);
  v2 = *(*v1 + qword_280FE8090 + 8);
  sub_268DB83F0("init(ducFamily:locale:extensionValueTypeNamesByValueType:aceServiceInvoker:deviceState:localContext:)", 101, "SiriSettingsIntents/GetSettingTemplatingService.swift", 53, 2, "SiriSettingsIntents.GetSettingTemplatingService", 47, 0x13uLL, a1, 7uLL);
  __break(1u);
}

uint64_t sub_268F1BA70()
{
  v17 = *(*v0 + qword_280FE8090);
  v16 = *(*v0 + qword_280FE8090 + 8);
  sub_268CD7930(&v0[qword_280FE37A0]);
  v15 = qword_280FE3800;
  v1 = sub_268F9AB24();
  (*(*(v1 - 8) + 8))(&v0[v15]);
  v2 = *&v0[qword_280FE37C8];

  v3 = *&v0[qword_280FE3808];

  v4 = *&v0[qword_280FE37E0];

  __swift_destroy_boxed_opaque_existential_0(&v0[qword_280FE37D0]);
  v5 = *&v0[qword_280FE80B0];

  v6 = *&v0[qword_280FE80A8];

  __swift_destroy_boxed_opaque_existential_0(&v0[qword_280FE80A0]);
  v7 = *&v0[qword_280FE37C0];

  __swift_destroy_boxed_opaque_existential_0(&v0[qword_280FE37B0]);
  v8 = *&v0[qword_280FE37F8];

  v9 = *&v0[qword_280FE37A8];

  v10 = *&v0[qword_280FE37B8];

  v11 = *&v0[qword_280FE3818];

  v12 = *&v0[qword_280FE37E8];

  v13 = *&v0[qword_280FE37F0];

  __swift_destroy_boxed_opaque_existential_0(&v0[qword_280FE3810]);
  MEMORY[0x277D82BD8](*&v0[qword_280FE37D8]);
  return __swift_destroy_boxed_opaque_existential_0(&v0[qword_280FE3820]);
}

uint64_t sub_268F1BC80()
{
  v18 = *(*v0 + qword_280FE8090);
  v17 = *(*v0 + qword_280FE8090 + 8);
  v16 = sub_268F99AB4();
  sub_268CD7930((v16 + qword_280FE37A0));
  v15 = qword_280FE3800;
  v1 = sub_268F9AB24();
  (*(*(v1 - 8) + 8))(v16 + v15);
  v2 = *(v16 + qword_280FE37C8);

  v3 = *(v16 + qword_280FE3808);

  v4 = *(v16 + qword_280FE37E0);

  __swift_destroy_boxed_opaque_existential_0((v16 + qword_280FE37D0));
  v5 = *(v16 + qword_280FE80B0);

  v6 = *(v16 + qword_280FE80A8);

  __swift_destroy_boxed_opaque_existential_0((v16 + qword_280FE80A0));
  v7 = *(v16 + qword_280FE37C0);

  __swift_destroy_boxed_opaque_existential_0((v16 + qword_280FE37B0));
  v8 = *(v16 + qword_280FE37F8);

  v9 = *(v16 + qword_280FE37A8);

  v10 = *(v16 + qword_280FE37B8);

  v11 = *(v16 + qword_280FE3818);

  v12 = *(v16 + qword_280FE37E8);

  v13 = *(v16 + qword_280FE37F0);

  __swift_destroy_boxed_opaque_existential_0((v16 + qword_280FE3810));
  MEMORY[0x277D82BD8](*(v16 + qword_280FE37D8));
  __swift_destroy_boxed_opaque_existential_0((v16 + qword_280FE3820));
  return v16;
}

uint64_t sub_268F1BED0()
{
  v6 = *(*v0 + qword_280FE8090);
  v5 = *(*v0 + qword_280FE8090 + 8);
  v1 = *sub_268F1BC80();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  return swift_deallocClassInstance();
}

unint64_t sub_268F1C0D0()
{
  v2 = qword_2802DE188;
  if (!qword_2802DE188)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE188);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F1C148()
{
  v2 = qword_2802DE190;
  if (!qword_2802DE190)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE190);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F1C1C0()
{
  v2 = qword_2802DE198[0];
  if (!qword_2802DE198[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_2802DE198);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F1C23C()
{
  v2 = sub_268F9AB24();
  inited = v2;
  if (v0 <= 0x3F)
  {
    v4 = *(v2 - 8) + 64;
    inited = swift_initClassMetadata2();
    if (!inited)
    {
      return 0;
    }
  }

  return inited;
}

uint64_t sub_268F1C404(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy32_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_268F1C468(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_268F1C5A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_268F1C7A4(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_268F1C84C()
{
  v2 = qword_2802DE2A0;
  if (!qword_2802DE2A0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE2A0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F1C8C8()
{
  type metadata accessor for SetFocusModeHandler();
  v2 = sub_268CDC590();
  v0 = sub_268F1C948();
  result = sub_268DCA218(v2, 1, v0);
  qword_2802F1658 = result;
  return result;
}

uint64_t sub_268F1C948()
{
  v1 = *sub_268F88868();

  return v1;
}

uint64_t *sub_268F1C978()
{
  if (qword_2802DB7C8 != -1)
  {
    swift_once();
  }

  return &qword_2802F1658;
}

uint64_t sub_268F1C9D8()
{
  v1 = *sub_268F1C978();

  return v1;
}

double sub_268F1CA08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_268F9B284();
  v3 = sub_268DC7AE8();
  v5 = *v3;
  MEMORY[0x277D82BE0](*v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v5);
  return sub_268F1CAF8(a1, a2, a3);
}

double sub_268F1CAF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a1;
  v21 = a2;
  v22 = a3;
  v20 = v3;
  v4 = sub_268DBBE24();
  v7 = *v4;
  v11 = v4[1];
  v12 = *(v4 + 16);
  v5 = sub_268DC7AE8();
  v13 = *v5;
  MEMORY[0x277D82BE0](*v5);
  v14 = *(v3 + 24);
  MEMORY[0x277D82BE0](a1);

  v16 = a1;
  v17 = v3;
  v18 = a2;
  v19 = a3;
  sub_268DB944C(v7, v11, v12, v13, v14 & 1, sub_268F1CDD4, v15, MEMORY[0x277D84F78] + 8, v3);
  MEMORY[0x277D82BD8](a1);

  *&result = MEMORY[0x277D82BD8](v13).n128_u64[0];
  return result;
}

double sub_268F1CC80(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_268D2E630();
  v11 = sub_268E1B5D8([a1 settingMetadata]);
  v10 = *(a2 + 16);

  MEMORY[0x277D82BE0](a1);

  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = a1;
  v9[5] = a2;
  sub_268D48CFC(v11, sub_268F1F544, v9);

  *&result = MEMORY[0x277D82BD8](v11).n128_u64[0];
  return result;
}

uint64_t sub_268F1CE08(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4, void *a5, uint64_t a6)
{
  v80 = 0;
  v81 = 0;
  v83[6] = a1;
  v83[7] = a2;
  v83[4] = a3;
  v83[5] = a4;
  v83[3] = a5;
  v83[2] = a6;
  if (a2 == -1)
  {
    v6 = sub_268DC7AE8();
    v54 = *v6;
    MEMORY[0x277D82BE0](*v6);
    sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v54);

    v55 = sub_268DA9A7C(7, 0);
    a3();
    MEMORY[0x277D82BD8](v55);
  }

  else if (a2 == 100)
  {
    v8 = sub_268DC7AE8();
    v52 = *v8;
    MEMORY[0x277D82BE0](*v8);
    sub_268F9B284();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC04();

    v53 = [a5 settingMetadata];
    if (v53)
    {
      v47 = [v53 settingId];
      v48 = sub_268F9AE24();
      v49 = v9;
      MEMORY[0x277D82BD8](v53);
      MEMORY[0x277D82BD8](v47);
      v50 = v48;
      v51 = v49;
    }

    else
    {
      v50 = 0;
      v51 = 0;
    }

    v61[0] = v50;
    v61[1] = v51;
    sub_268CD9D30(v61);
    if (v51)
    {
      v45 = *(a6 + 32);

      v46 = sub_268F23C10();

      if (v46)
      {
        v10 = sub_268F42038();
        v42 = *v10;
        v43 = v10[1];

        v44 = sub_268F9AE14();

        [v46 setBool:1 forKey:v44];
        MEMORY[0x277D82BD8](v44);
        MEMORY[0x277D82BD8](v46);
      }
    }

    sub_268E948B8();
    v41 = sub_268DAB158();

    (a3)(v41);
    MEMORY[0x277D82BD8](v41);
  }

  else
  {
    v40 = [a5 settingMetadata];
    if (v40)
    {
      v35 = [v40 settingId];
      v36 = sub_268F9AE24();
      v37 = v11;
      MEMORY[0x277D82BD8](v40);
      MEMORY[0x277D82BD8](v35);
      v38 = v36;
      v39 = v37;
    }

    else
    {
      v38 = 0;
      v39 = 0;
    }

    v83[0] = v38;
    v83[1] = v39;
    sub_268CD9D30(v83);
    if (v39)
    {
      v33 = *(a6 + 32);

      v34 = sub_268F23C10();

      if (v34)
      {
        v12 = sub_268F42038();
        v30 = *v12;
        v31 = v12[1];

        v32 = sub_268F9AE14();

        [v34 setBool:0 forKey:v32];
        MEMORY[0x277D82BD8](v32);
        MEMORY[0x277D82BD8](v34);
      }
    }

    MEMORY[0x277D82BE0](a1);
    v29 = [a1 settingResponseDatas];
    if (v29)
    {
      sub_268CDD140();
      v27 = sub_268F9B014();
      MEMORY[0x277D82BD8](v29);
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    v82 = v28;
    if (v28)
    {
      sub_268CDD140();
      sub_268F9B094();
      sub_268CD7930(&v82);
      v24 = [v62 binaryValue];
      v13 = MEMORY[0x277D82BD8](v62).n128_u64[0];
      v25 = v24;
      v26 = 0;
    }

    else
    {
      sub_268CD7930(&v82);
      v13 = MEMORY[0x277D82BD8](a1).n128_u64[0];
      v25 = 0;
      v26 = 1;
    }

    v80 = v25;
    v81 = v26 & 1;
    v76 = [a5 binaryValue];
    v77 = 0;
    v78 = v25;
    v79 = v26 & 1;
    v65 = v76;
    v66 = 0;
    if (v26)
    {
      v23 = 0;
    }

    else
    {
      v64 = v65;
      v63 = v78;
      type metadata accessor for INBinarySettingValue();
      sub_268D292B8();
      v23 = sub_268F9AE04();
    }

    if (v23)
    {

      v21 = *(a6 + 16);

      v22 = sub_268D4FC9C(0, [a5 0x1FAF5B654], objc_msgSend(a5, 0x1FAF5B654));

      (a3)(v22);
      MEMORY[0x277D82BD8](v22);
    }

    else
    {
      v75 = [a5 binaryValue];
      v74 = 3;
      type metadata accessor for INBinarySettingValue();
      sub_268CD925C();
      v14 = sub_268F9B754();
      if (v14)
      {
        v19 = *(a6 + 16);

        sub_268CD7620();
        v20 = [a5 settingMetadata];
        v70 = v25;
        v71 = v26 & 1;
        v72 = 1;
        v73 = 0;
        if (v26)
        {
          v18 = 0;
        }

        else
        {
          v69 = v26;
          v68 = v25;
          v67 = v72;
          sub_268D292B8();
          v18 = sub_268F9AE04();
        }

        if (v18)
        {
          v17 = 2;
        }

        else
        {
          v17 = 1;
        }

        v16 = sub_268DA95CC(v20, v17, 0);
        sub_268D4E4F0(v16, a3, a4);
        MEMORY[0x277D82BD8](v16);
      }

      else
      {
        v15 = *(a6 + 16);

        sub_268D4E4F0(a5, a3, a4);
      }
    }
  }
}

uint64_t sub_268F1D918(uint64_t a1)
{
  *(v2 + 216) = v1;
  *(v2 + 208) = a1;
  *(v2 + 80) = v2;
  *(v2 + 88) = 0;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 120) = 0;
  *(v2 + 160) = 0;
  *(v2 + 192) = 0;
  *(v2 + 200) = 0;
  *(v2 + 88) = a1;
  *(v2 + 96) = v1;
  v3 = *(v2 + 80);
  return MEMORY[0x2822009F8](sub_268F1D994, 0);
}

uint64_t sub_268F1D994()
{
  v10 = v0[27];
  v9 = v0[26];
  v0[10] = v0;
  v1 = sub_268DBBE24();
  v7 = *v1;
  v5 = v1[1];
  v6 = *(v1 + 16);
  v2 = sub_268DC7AE8();
  v8 = *v2;
  MEMORY[0x277D82BE0](*v2);
  sub_268DB9934(v7, v5, v6, v8, *(v10 + 24) & 1);
  MEMORY[0x277D82BD8](v8);
  sub_268D2E630();
  v12 = sub_268E1B5D8([v9 settingMetadata]);
  v0[28] = v12;
  v0[13] = v12;
  v0[29] = *(v10 + 16);

  v3 = swift_task_alloc();
  *(v11 + 240) = v3;
  *v3 = *(v11 + 80);
  v3[1] = sub_268F1DB0C;

  return sub_268D4AA24(v12);
}

uint64_t sub_268F1DB0C(uint64_t a1, uint64_t a2)
{
  v8 = *v2;
  v4 = *(*v2 + 240);
  v7 = *(*v2 + 232);
  v8[10] = *v2;
  v8[31] = a1;
  v8[32] = a2;

  v5 = v8[10];

  return MEMORY[0x2822009F8](sub_268F1DC4C, 0);
}

uint64_t sub_268F1DC4C()
{
  v1 = v0[32];
  v2 = v0[31];
  v0[10] = v0;
  v0[2] = v2;
  v0[3] = v1;
  if (v1 == -1)
  {
    v73 = *(v77 + 248);
    v74 = *(v77 + 224);
    v3 = sub_268DC7AE8();
    v72 = *v3;
    MEMORY[0x277D82BE0](*v3);
    sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v72);
    v75 = sub_268DA9A7C(7, 0);
    *(v77 + 200) = v75;
    MEMORY[0x277D82BD8](v73);
    v4 = MEMORY[0x277D82BD8](v74);
    v76 = v75;
LABEL_35:
    v21 = *(*(v77 + 80) + 8);
    v22 = *(v77 + 80);

    return v21(v76, v4);
  }

  if (*(v77 + 256) == 100)
  {
    v70 = *(v77 + 208);
    v5 = sub_268DC7AE8();
    v69 = *v5;
    MEMORY[0x277D82BE0](*v5);
    sub_268F9B284();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC04();

    v71 = [v70 settingMetadata];
    if (v71)
    {
      v64 = [v71 settingId];
      v65 = sub_268F9AE24();
      v66 = v6;
      MEMORY[0x277D82BD8](v71);
      MEMORY[0x277D82BD8](v64);
      v67 = v65;
      v68 = v66;
    }

    else
    {
      v67 = 0;
      v68 = 0;
    }

    *(v77 + 48) = v67;
    *(v77 + 56) = v68;
    if (*(v77 + 56))
    {
      sub_268CD9D30(v77 + 48);
      v7 = *(*(v77 + 216) + 32);

      v63 = sub_268F23C10();

      if (v63)
      {
        v8 = sub_268F42038();
        v60 = *v8;
        v61 = v8[1];

        v62 = sub_268F9AE14();

        [v63 setBool:1 forKey:v62];
        MEMORY[0x277D82BD8](v62);
        MEMORY[0x277D82BD8](v63);
      }
    }

    else
    {
      sub_268CD9D30(v77 + 48);
    }

    v57 = *(v77 + 248);
    v58 = *(v77 + 224);
    sub_268E948B8();
    v59 = sub_268DAB158();

    *(v77 + 192) = v59;
    v9 = sub_268DBBE24();
    v55 = *v9;
    v53 = v9[1];
    v54 = *(v9 + 16);
    v10 = sub_268DC7AE8();
    v56 = *v10;
    MEMORY[0x277D82BE0](*v10);
    sub_268DB9B78(v55, v53, v54, v56);
    MEMORY[0x277D82BD8](v56);
    MEMORY[0x277D82BD8](v57);
    v4 = MEMORY[0x277D82BD8](v58);
    v76 = v59;
    goto LABEL_35;
  }

  v52 = [*(v77 + 208) settingMetadata];
  if (v52)
  {
    v47 = [v52 settingId];
    v48 = sub_268F9AE24();
    v49 = v11;
    MEMORY[0x277D82BD8](v52);
    MEMORY[0x277D82BD8](v47);
    v50 = v48;
    v51 = v49;
  }

  else
  {
    v50 = 0;
    v51 = 0;
  }

  *(v77 + 32) = v50;
  *(v77 + 40) = v51;
  if (*(v77 + 40))
  {
    sub_268CD9D30(v77 + 32);
    v45 = *(*(v77 + 216) + 32);

    v46 = sub_268F23C10();

    if (v46)
    {
      v12 = sub_268F42038();
      v42 = *v12;
      v43 = v12[1];

      v44 = sub_268F9AE14();

      [v46 setBool:0 forKey:v44];
      MEMORY[0x277D82BD8](v44);
      MEMORY[0x277D82BD8](v46);
    }
  }

  else
  {
    sub_268CD9D30(v77 + 32);
  }

  v40 = *(v77 + 248);
  MEMORY[0x277D82BE0](v40);
  v41 = [v40 settingResponseDatas];
  if (v41)
  {
    sub_268CDD140();
    v38 = sub_268F9B014();
    MEMORY[0x277D82BD8](v41);
    v39 = v38;
  }

  else
  {
    v39 = 0;
  }

  *(v77 + 112) = v39;
  if (*(v77 + 112))
  {
    v33 = *(v77 + 248);
    v32 = *(v77 + 112);
    sub_268CDD140();
    sub_268F9B094();
    v34 = *(v77 + 184);
    sub_268CD7930((v77 + 112));
    v35 = [v34 binaryValue];
    v13 = MEMORY[0x277D82BD8](v34).n128_u64[0];
    v36 = v35;
    v37 = 0;
  }

  else
  {
    v23 = *(v77 + 248);
    sub_268CD7930((v77 + 112));
    v13 = MEMORY[0x277D82BD8](v23).n128_u64[0];
    v36 = 0;
    v37 = 1;
  }

  *(v77 + 73) = v37 & 1;
  *(v77 + 264) = v36;
  v14 = *(v77 + 208);
  *(v77 + 64) = v36;
  *(v77 + 72) = v37 & 1;
  v78 = [v14 binaryValue];
  if ((v37 & 1) == 0)
  {
    *(v77 + 168) = v78;
    *(v77 + 176) = v36;
    type metadata accessor for INBinarySettingValue();
    sub_268D292B8();
    if (sub_268F9AE04())
    {
      v29 = *(v77 + 248);
      v30 = *(v77 + 224);
      v24 = *(v77 + 208);
      v15 = *(*(v77 + 216) + 16);

      v31 = sub_268D4FC9C(0, [v24 0x1FAF5B654], objc_msgSend(v24, 0x1FAF5B654));

      *(v77 + 160) = v31;
      v16 = sub_268DBBE24();
      v27 = *v16;
      v25 = v16[1];
      v26 = *(v16 + 16);
      v17 = sub_268DC7AE8();
      v28 = *v17;
      MEMORY[0x277D82BE0](*v17);
      sub_268DB9B78(v27, v25, v26, v28);
      MEMORY[0x277D82BD8](v28);
      MEMORY[0x277D82BD8](v29);
      v4 = MEMORY[0x277D82BD8](v30);
      v76 = v31;
      goto LABEL_35;
    }
  }

  *(v77 + 272) = *(*(v77 + 216) + 16);

  v18 = swift_task_alloc();
  *(v77 + 280) = v18;
  *v18 = *(v77 + 80);
  v18[1] = sub_268F1EAFC;
  v19 = *(v77 + 208);

  return sub_268D4ED60(v19);
}

uint64_t sub_268F1EAFC(uint64_t a1)
{
  v7 = *v1;
  v3 = *(*v1 + 280);
  v6 = *(*v1 + 272);
  *(v7 + 80) = *v1;
  *(v7 + 288) = a1;

  v4 = *(v7 + 80);

  return MEMORY[0x2822009F8](sub_268F1EC38, 0);
}

uint64_t sub_268F1EC38()
{
  v1 = v0[36];
  v2 = v0[26];
  v0[10] = v0;
  v0[15] = v1;
  v0[16] = [v2 binaryValue];
  v0[17] = 3;
  type metadata accessor for INBinarySettingValue();
  sub_268CD925C();
  if (sub_268F9B754())
  {
    v22 = *(v24 + 73);
    v21 = *(v24 + 264);
    v20 = *(v24 + 208);
    *(v24 + 296) = *(*(v24 + 216) + 16);

    sub_268CD7620();
    v23 = [v20 settingMetadata];
    if ((v22 & 1) != 0 || (v25 = *(v24 + 73) & 1, *(v24 + 144) = *(v24 + 264), *(v24 + 152) = 1, sub_268D292B8(), v3 = sub_268F9AE04(), (v3 & 1) == 0))
    {
      v19 = 1;
    }

    else
    {
      v19 = 2;
    }

    v18 = sub_268DA95CC(v23, v19, 0);
    *(v24 + 304) = v18;
    v4 = swift_task_alloc();
    *(v24 + 312) = v4;
    *v4 = *(v24 + 80);
    v4[1] = sub_268F1F154;

    return sub_268D4ED60(v18);
  }

  else
  {
    v15 = *(v24 + 248);
    v16 = *(v24 + 224);
    v6 = sub_268DBBE24();
    v13 = *v6;
    v11 = v6[1];
    v12 = *(v6 + 16);
    v7 = sub_268DC7AE8();
    v14 = *v7;
    MEMORY[0x277D82BE0](*v7);
    sub_268DB9B78(v13, v11, v12, v14);
    MEMORY[0x277D82BD8](v14);
    v17 = *(v24 + 120);
    MEMORY[0x277D82BE0](v17);
    MEMORY[0x277D82BD8](*(v24 + 120));
    MEMORY[0x277D82BD8](v15);
    v8 = MEMORY[0x277D82BD8](v16);
    v9 = *(*(v24 + 80) + 8);
    v10 = *(v24 + 80);

    return v9(v17, v8);
  }
}

uint64_t sub_268F1F154(uint64_t a1)
{
  v8 = *v1;
  v3 = *(*v1 + 312);
  v6 = *(*v1 + 304);
  v7 = *(*v1 + 296);
  *(v8 + 80) = *v1;
  *(v8 + 320) = a1;

  v4 = *(v8 + 80);

  return MEMORY[0x2822009F8](sub_268F1F2B0, 0);
}

uint64_t sub_268F1F2B0()
{
  v1 = v0[40];
  v0[10] = v0;
  v2 = v0[15];
  v0[15] = v1;
  MEMORY[0x277D82BD8](v2);
  v13 = v0[31];
  v14 = v0[28];
  v3 = sub_268DBBE24();
  v11 = *v3;
  v9 = v3[1];
  v10 = *(v3 + 16);
  v4 = sub_268DC7AE8();
  v12 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v11, v9, v10, v12);
  MEMORY[0x277D82BD8](v12);
  v15 = v0[15];
  MEMORY[0x277D82BE0](v15);
  MEMORY[0x277D82BD8](v0[15]);
  MEMORY[0x277D82BD8](v13);
  v5 = MEMORY[0x277D82BD8](v14);
  v6 = *(v0[10] + 8);
  v7 = v0[10];

  return v6(v15, v5);
}

uint64_t sub_268F1F48C(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_268D82A48;

  return sub_268F1D918(a1);
}

uint64_t sub_268F1F558()
{
  v2 = *(v0 + qword_2802DE2A8);

  return v2;
}

uint64_t sub_268F1F58C()
{
  v2 = *(v0 + qword_2802DE2B0);

  return v2;
}

uint64_t sub_268F1F5C0()
{
  v2 = *(v0 + qword_2802DE2B8);

  return v2;
}

uint64_t sub_268F1F5F4()
{
  v2 = *(v0 + qword_2802DE2C0);
  v3 = *(v0 + qword_2802DE2C0 + 8);

  return v2;
}

uint64_t sub_268F1F638()
{
  v2 = *(v0 + qword_2802DE2C8);

  return v2;
}

uint64_t sub_268F1F66C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  return sub_268F1F6E0(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_268F1F6E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17 = *(*v6 + qword_2802F1660);
  v16 = *(*v6 + qword_2802F1660 + 8);

  *(v6 + qword_2802DE2A8) = a1;

  *(v6 + qword_2802DE2B0) = a2;

  *(v6 + qword_2802DE2B8) = a3;

  v7 = (v6 + qword_2802DE2C0);
  *v7 = a4;
  v7[1] = a5;

  *(v6 + qword_2802DE2C8) = a6;
  v15 = sub_268F99B04();

  return v15;
}

uint64_t sub_268F1F8A8(uint64_t a1, id a2, void *a3, void (*a4)(void), uint64_t a5)
{
  v76 = 0;
  v75 = 0;
  v74 = 0;
  v72 = 0;
  v73 = 0;
  v71 = 0;
  v68 = 0;
  v62 = 0;
  v61 = 0;
  v55 = 0;
  v6 = *v5;
  v76 = a1;
  v75 = a2;
  v74 = a3;
  v72 = a4;
  v73 = a5;
  v71 = v5;
  v70 = *(v6 + qword_2802F1660);
  v69 = *(v6 + qword_2802F1660 + 8);
  v53 = [a2 settingMetadata];
  if (v53)
  {
    v47 = [v53 settingId];
    v48._countAndFlagsBits = sub_268F9AE24();
    v48._object = v8;
    MEMORY[0x277D82BD8](v53);
    *&v7 = MEMORY[0x277D82BD8](v47).n128_u64[0];
    v49 = v48;
  }

  else
  {
    v49 = 0;
  }

  if (v49._object)
  {
    v68 = v49;
    v67 = [a3 code];
    v66 = 3;
    type metadata accessor for INSetBinarySettingIntentResponseCode();
    sub_268CD91DC();
    if ((sub_268F9B754() & 1) == 0)
    {
      goto LABEL_39;
    }

    BinarySettingIdentifier.init(rawValue:)(v49);
    if (v56 == 65)
    {
      goto LABEL_39;
    }

    v55 = v56;
    v45 = *(v52 + qword_2802DE2A8);

    v54 = v56;
    sub_268D34FD4();
    [a3 updatedValue];
    type metadata accessor for INBinarySettingValue();
    sub_268CD925C();
    v9 = sub_268F9B754();
    v44 = sub_268DDD164(v9 & 1);
    v46 = sub_268E57258(&v54, v44);
    MEMORY[0x277D82BD8](v44);

    if (v46)
    {

      sub_268D34954();
      v43 = sub_268F9B734();
      v42 = v10;
      MEMORY[0x277D82BE0](v46);
      *v42 = v46;
      sub_268CD0F7C();
      a4();
      sub_268DADA74(v43, 0);

      MEMORY[0x277D82BD8](v46);
    }

    else
    {
      if (!sub_268F288D0(v49._countAndFlagsBits, v49._object))
      {
        goto LABEL_34;
      }

LABEL_39:
      v40 = *(v52 + qword_2802DE2C8);

      v41 = sub_268F23C10();

      if (v41)
      {
        v12 = sub_268F42038();
        v36 = *v12;
        v37 = v12[1];

        v38 = sub_268F9AE14();

        v39 = [v41 valueForKey_];
        MEMORY[0x277D82BD8](v38);
        MEMORY[0x277D82BD8](v41);
        if (v39)
        {
          sub_268F9B404();
          sub_268D55CF0(v57, &v58);
          swift_unknownObjectRelease();
        }

        else
        {
          v58 = 0uLL;
          v59 = 0uLL;
        }

        v64 = v58;
        v65 = v59;
      }

      else
      {
        v64 = 0uLL;
        v65 = 0uLL;
      }

      if (*(&v65 + 1))
      {
        v35 = (swift_dynamicCast() & 1) != 0 ? v60 & 1 : 2;
        v34 = v35;
      }

      else
      {
        sub_268D28414(&v64);
        v34 = 2;
      }

      v63 = v34;
      v33 = v34 == 2 ? 0 : v63;
      v62 = v33 & 1;
      v31 = *(v52 + qword_2802DE2C8);

      v32 = sub_268F23C10();

      if (v32)
      {
        v13 = sub_268F42038();
        v28 = *v13;
        v29 = v13[1];

        v30 = sub_268F9AE14();

        [v32 removeObjectForKey_];
        MEMORY[0x277D82BD8](v30);
        MEMORY[0x277D82BD8](v32);
      }

      if ((v33 & 1) == 0)
      {
        goto LABEL_34;
      }

      v26 = *(v52 + qword_2802DE2B0);

      v25 = *(v52 + qword_2802DE2B8);

      v23 = *(v52 + qword_2802DE2C0);
      v24 = *(v52 + qword_2802DE2C0 + 8);

      v27 = sub_268F36934(v25, v23, v24);

      if (v27)
      {
        v61 = v27;
        v14 = sub_268DC7F68();
        v20 = *v14;
        MEMORY[0x277D82BE0](*v14);
        sub_268F9B274();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
        sub_268F9B734();
        sub_268F9AC04();

        MEMORY[0x277D82BD8](v20);

        sub_268D34954();
        v22 = sub_268F9B734();
        v21 = v15;
        MEMORY[0x277D82BE0](v27);
        *v21 = v27;
        sub_268CD0F7C();
        a4();
        sub_268DADA74(v22, 0);

        MEMORY[0x277D82BD8](v27);
      }

      else
      {
LABEL_34:
        v16 = sub_268DC7F68();
        v18 = *v16;
        MEMORY[0x277D82BE0](*v16);
        sub_268F9B274();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
        sub_268F9B734();
        sub_268F9AC04();

        MEMORY[0x277D82BD8](v18);

        sub_268D34954();
        v19 = sub_268F9B734();
        a4();
        sub_268DADA74(v19, 0);
      }
    }
  }

  else
  {

    sub_268D34954();
    v17 = sub_268F9B734();
    a4();
    sub_268DADA74(v17, 0);
  }
}

void sub_268F202F8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v40 = 0;
  v39 = 0;
  v38 = 0;
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v30 = 0;
  v6 = *v5;
  v40 = a1;
  v39 = a2;
  v38 = a3;
  v36 = a4;
  v37 = a5;
  v35 = v5;
  v34 = *(v6 + qword_2802F1660);
  v33 = *(v6 + qword_2802F1660 + 8);
  v7 = sub_268DC7F68();
  v25 = *v7;
  MEMORY[0x277D82BE0](*v7);
  sub_268F9B284();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v24 = v8;
  MEMORY[0x277D82BE0](a2);
  v32 = a2;
  sub_268CD7620();
  sub_268D28940();
  v22 = sub_268F9AE74();
  v23 = v9;
  v24[3] = MEMORY[0x277D837D0];
  v24[4] = sub_268CDD224();
  *v24 = v22;
  v24[1] = v23;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v25);
  sub_268DAB218(a2);
  v27 = v31;
  if (v31 == 65)
  {
    goto LABEL_6;
  }

  v30 = v31;
  v18 = *(v21 + qword_2802DE2A8);

  v29 = v31;
  sub_268D34FD4();
  v28 = v27;
  v10 = sub_268F20D28(&v28);
  v17 = sub_268DDD164(v10 & 1);
  v19 = sub_268E57258(&v29, v17);
  MEMORY[0x277D82BD8](v17);

  if (!v19)
  {
LABEL_6:
    v12 = sub_268DC7F68();
    v13 = *v12;
    MEMORY[0x277D82BE0](*v12);
    sub_268F9B274();
    sub_268F9B734();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v13);

    sub_268D34954();
    v14 = sub_268F9B734();
    a4();
    sub_268DADA74(v14, 0);
  }

  else
  {

    sub_268D34954();
    v16 = sub_268F9B734();
    v15 = v11;
    MEMORY[0x277D82BE0](v19);
    *v15 = v19;
    sub_268CD0F7C();
    a4();
    sub_268DADA74(v16, 0);

    MEMORY[0x277D82BD8](v19);
  }
}

void sub_268F20748(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v18 = *(*v3 + qword_2802F1660);
  v17 = *(*v3 + qword_2802F1660 + 8);
  v15 = *(v3 + qword_2802DE2B0);

  v14 = *(v11 + qword_2802DE2B8);

  v12 = *(v11 + qword_2802DE2C0);
  v13 = *(v11 + qword_2802DE2C0 + 8);

  v16 = sub_268F36934(v14, v12, v13);

  if (v16)
  {

    sub_268D34954();
    v9 = sub_268F9B734();
    v8 = v4;
    MEMORY[0x277D82BE0](v16);
    *v8 = v16;
    sub_268CD0F7C();
    a3();
    sub_268DADA74(v9, 0);

    MEMORY[0x277D82BD8](v16);
  }

  else
  {
    v5 = sub_268DC7F68();
    v6 = *v5;
    MEMORY[0x277D82BE0](*v5);
    sub_268F9B274();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v6);

    sub_268D34954();
    v7 = sub_268F9B734();
    a3();
    sub_268DADA74(v7, 0);
  }
}

void sub_268F20A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  v21 = *(*v6 + qword_2802F1660);
  v20 = *(*v6 + qword_2802F1660 + 8);
  v18 = *(v6 + qword_2802DE2B0);

  v17 = *(v14 + qword_2802DE2B8);

  v15 = *(v14 + qword_2802DE2C0);
  v16 = *(v14 + qword_2802DE2C0 + 8);

  v19 = sub_268F36934(v17, v15, v16);

  if (v19)
  {

    sub_268D34954();
    v12 = sub_268F9B734();
    v11 = v7;
    MEMORY[0x277D82BE0](v19);
    *v11 = v19;
    sub_268CD0F7C();
    a6();
    sub_268DADA74(v12, 0);

    MEMORY[0x277D82BD8](v19);
  }

  else
  {
    v8 = sub_268DC7F68();
    v9 = *v8;
    MEMORY[0x277D82BE0](*v8);
    sub_268F9B274();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v9);

    sub_268D34954();
    v10 = sub_268F9B734();
    a6();
    sub_268DADA74(v10, 0);
  }
}

uint64_t sub_268F20D28(char *a1)
{
  v7 = *(*v1 + qword_2802F1660);
  v6 = *(*v1 + qword_2802F1660 + 8);
  v5 = *a1;
  sub_268D28AD4();
  if (sub_268F9B754())
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_268F9B754();
  }

  if (v4)
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_268F9B754();
  }

  return v3 & 1;
}

void sub_268F20E8C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_268F20EC8(v3);
}

void sub_268F20EC8(uint64_t a1@<X8>)
{
  v3 = *(*v1 + qword_2802F1660);
  v2 = *(*v1 + qword_2802F1660 + 8);
  sub_268DB83F0("init()", 6, "SiriSettingsIntents/SetBinarySettingAceViewProvider.swift", 57, 2, "SiriSettingsIntents.SetBinarySettingAceViewProvider", 51, 0xEuLL, a1, 7uLL);
  __break(1u);
}

uint64_t sub_268F20F78()
{
  v7 = *(*v0 + qword_2802F1660);
  v6 = *(*v0 + qword_2802F1660 + 8);
  v1 = *(v0 + qword_2802DE2A8);

  v2 = *(v0 + qword_2802DE2B0);

  v3 = *(v0 + qword_2802DE2B8);

  sub_268CD9D30(v0 + qword_2802DE2C0);
  v4 = *(v0 + qword_2802DE2C8);
}

uint64_t sub_268F2103C()
{
  v8 = *(*v0 + qword_2802F1660);
  v7 = *(*v0 + qword_2802F1660 + 8);
  v6 = sub_268F99B14();
  v1 = *(v6 + qword_2802DE2A8);

  v2 = *(v6 + qword_2802DE2B0);

  v3 = *(v6 + qword_2802DE2B8);

  sub_268CD9D30(v6 + qword_2802DE2C0);
  v4 = *(v6 + qword_2802DE2C8);

  return v6;
}

uint64_t sub_268F21118()
{
  v3 = *(*v0 + qword_2802F1660);
  v2 = *(*v0 + qword_2802F1660 + 8);
  sub_268F2103C();
  return swift_deallocClassInstance();
}

uint64_t sub_268F211A0()
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t sub_268F21278()
{
  type metadata accessor for SetAutoCorrectHandler();
  result = sub_268CDA260();
  qword_2802F1670 = result;
  return result;
}

uint64_t *sub_268F212D4()
{
  if (qword_2802DB7D0 != -1)
  {
    swift_once();
  }

  return &qword_2802F1670;
}

uint64_t sub_268F21334()
{
  v1 = *sub_268F212D4();

  return v1;
}

uint64_t sub_268F21364(uint64_t a1, void (*a2)(id))
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

uint64_t sub_268F21528@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  sub_268CDE730(v1 + 24, a1);
  return swift_endAccess();
}

uint64_t sub_268F2157C(uint64_t *a1)
{
  sub_268CDE730(a1, v4);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v1 + 24));
  sub_268CDF978(v4, (v1 + 24));
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_268F215EC(uint64_t *a1)
{
  v7 = a1;
  v6 = v1;
  *(v1 + 16) = 0;
  sub_268CDE730(a1, v5);
  sub_268CDF978(v5, (v1 + 24));
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v4;
}

uint64_t sub_268F21650(uint64_t a1)
{
  v62 = a1;
  v2 = v1;
  v72 = v2;
  v83 = "ToggleBinarySettingDIFlow on";
  v81 = &dword_268CBE000;
  v63 = "Parse is of unexpected type: %@.";
  v64 = "DI object isn't a unexpected type: %@.";
  v95 = 0;
  v94 = 0;
  v96 = 0;
  v92 = 0;
  v91 = 0;
  v79 = 0;
  v65 = sub_268F99C24();
  v66 = *(v65 - 8);
  v67 = v65 - 8;
  v68 = (*(v66 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v69 = &v33 - v68;
  v70 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v71 = &v33 - v70;
  v96 = &v33 - v70;
  v89 = sub_268F99C34();
  v86 = *(v89 - 8);
  v87 = v89 - 8;
  v76 = *(v86 + 64);
  v73 = (v76 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v89);
  v74 = &v33 - v73;
  v75 = (v76 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v33 - v73);
  v77 = &v33 - v75;
  v78 = (v76 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v33 - v75);
  v88 = &v33 - v78;
  v95 = a1;
  v94 = v6;
  v85 = *sub_268DC9C10();
  MEMORY[0x277D82BE0](v85);
  v82 = sub_268F9B284();
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v84 = sub_268F9B734();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v85);
  sub_268F99BE4();
  if ((*(v86 + 88))(v88, v89) != *MEMORY[0x277D5C150])
  {
    goto LABEL_7;
  }

  v7 = v71;
  (*(v86 + 16))(v77, v88, v89);
  (*(v86 + 96))(v77, v89);
  (*(v66 + 32))(v7, v77, v65);
  v60 = type metadata accessor for ToggleBinarySetting();
  v61 = sub_268D90E70();
  if ((sub_268F39FF8(v60, v60, v61) & 1) == 0)
  {
    (*(v66 + 8))(v71, v65);
LABEL_7:
    v37 = sub_268F9B284();
    v39 = *sub_268DC9C10();
    MEMORY[0x277D82BE0](v39);
    v36 = sub_268F9B734();
    v35 = v23;
    sub_268F99BE4();
    v33 = sub_268F9AE64();
    v34 = v24;
    v35[3] = MEMORY[0x277D837D0];
    v25 = sub_268CDD224();
    v26 = v33;
    v27 = v34;
    v28 = v35;
    v29 = v25;
    v30 = v36;
    v35[4] = v29;
    *v28 = v26;
    v28[1] = v27;
    sub_268CD0F7C();
    v38 = v30;
    sub_268F9AC14();

    v31 = MEMORY[0x277D82BD8](v39);
    (*(v86 + 8))(v88, v89, v31);
    v55 = 0;
    return v55 & 1;
  }

  v8 = v60;
  v96 = v71;
  v57 = *(v66 + 16);
  v58 = v66 + 16;
  v57(v69);
  sub_268F3A148(v69, v8, v61, &v93);
  v59 = v93;
  if (v93)
  {
    v56 = v59;
    v54 = v59;
    v92 = v59;
    v50 = 0;
    v47 = sub_268D291D4();
    v49 = v54[2];
    v48 = v54[3];

    sub_268E62B3C();
    v9 = v54[4];
    sub_268CD4500();
    v12 = sub_268E3D824(v50, v50, v50, v50, v11, v10 & 1);
    v53 = sub_268F2B620(v49, v48, v12, v50);
    v91 = v53;
    sub_268CD7620();
    MEMORY[0x277D82BE0](v53);
    v51 = sub_268DA95CC(v53, 3, v50);
    v52 = &v90;
    swift_beginAccess();
    v13 = *(v72 + 16);
    *(v72 + 16) = v51;
    MEMORY[0x277D82BD8](v13);
    swift_endAccess();
    MEMORY[0x277D82BD8](v53);

    (*(v66 + 8))(v71, v65);
    (*(v86 + 8))(v88, v89);
    v55 = 1;
  }

  else
  {
    v44 = sub_268F9B284();
    v46 = *sub_268DC9C10();
    MEMORY[0x277D82BE0](v46);
    v43 = sub_268F9B734();
    v42 = v14;
    (v57)(v69, v71, v65);
    v40 = sub_268F9AE64();
    v41 = v15;
    v42[3] = MEMORY[0x277D837D0];
    v16 = sub_268CDD224();
    v17 = v40;
    v18 = v41;
    v19 = v42;
    v20 = v16;
    v21 = v43;
    v42[4] = v20;
    *v19 = v17;
    v19[1] = v18;
    sub_268CD0F7C();
    v45 = v21;
    sub_268F9AC14();

    v22 = MEMORY[0x277D82BD8](v46);
    (*(v66 + 8))(v71, v65, v22);
    (*(v86 + 8))(v88, v89);
    v55 = 0;
  }

  return v55 & 1;
}

uint64_t sub_268F22050(uint64_t a1)
{
  *(v2 + 512) = v1;
  *(v2 + 504) = a1;
  *(v2 + 472) = v2;
  *(v2 + 480) = 0;
  *(v2 + 488) = 0;
  *(v2 + 456) = 0;
  *(v2 + 464) = 0;
  *(v2 + 552) = 0;
  *(v2 + 480) = v1;
  v3 = *(v2 + 472);
  return MEMORY[0x2822009F8](sub_268F220A8, 0);
}

uint64_t sub_268F220A8()
{
  v45 = v0;
  v41 = v0[64];
  v0[59] = v0;
  swift_beginAccess();
  v42 = *(v41 + 16);
  v0[65] = v42;
  MEMORY[0x277D82BE0](v42);
  swift_endAccess();
  if (!v42)
  {
    goto LABEL_17;
  }

  *(v40 + 488) = v42;
  *(v40 + 496) = v42;
  v1 = sub_268CD7620();
  v2 = SettingIntent.settingIdentifier.getter(v1, &protocol witness table for INSetBinarySettingIntent);
  v39._countAndFlagsBits = v2;
  v39._object = v3;
  *(v40 + 528) = v3;
  if (!v3)
  {
    MEMORY[0x277D82BD8](v42);
LABEL_17:
    v16 = *(v40 + 512);
    v18 = *(v40 + 504);
    v12 = sub_268DC9C10();
    v15 = *v12;
    MEMORY[0x277D82BE0](*v12);
    sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v15);
    swift_beginAccess();
    sub_268CDE730(v16 + 24, v40 + 16);
    swift_endAccess();
    v17 = *(v40 + 48);
    __swift_project_boxed_opaque_existential_1((v40 + 16), *(v40 + 40));
    sub_268DE460C(0);
    __swift_destroy_boxed_opaque_existential_0((v40 + 16));
    sub_268F998F4();
    goto LABEL_18;
  }

  *(v40 + 456) = v2;
  *(v40 + 464) = v3;

  BinarySettingIdentifier.init(rawValue:)(v39);
  if (v43 == 65)
  {
    goto LABEL_16;
  }

  *(v40 + 552) = v43;
  v38 = *sub_268F7AD98();

  v44 = v43;
  sub_268F7C430(&v44);

  if (!*(v40 + 160))
  {
    sub_268D28414((v40 + 136));
LABEL_16:
    v20 = *(v40 + 512);
    v22 = *(v40 + 504);
    v11 = sub_268DC9C10();
    v19 = *v11;
    MEMORY[0x277D82BE0](*v11);
    sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v19);
    swift_beginAccess();
    sub_268CDE730(v20 + 24, v40 + 56);
    swift_endAccess();
    v21 = *(v40 + 88);
    __swift_project_boxed_opaque_existential_1((v40 + 56), *(v40 + 80));
    sub_268DE460C(0);
    __swift_destroy_boxed_opaque_existential_0((v40 + 56));
    sub_268F998F4();

    v10 = MEMORY[0x277D82BD8](v42);
    goto LABEL_18;
  }

  sub_268CDF978((v40 + 136), (v40 + 96));
  v36 = *(v40 + 120);
  v37 = *(v40 + 128);
  __swift_project_boxed_opaque_existential_1((v40 + 96), v36);
  if (((*(v37 + 16))(v42, v36) & 1) == 0)
  {
    v26 = *(v40 + 512);
    v28 = *(v40 + 504);
    v23 = *(v40 + 120);
    v24 = *(v40 + 128);
    __swift_project_boxed_opaque_existential_1((v40 + 96), v23);
    sub_268CDE730(v40 + 96, v40 + 176);
    v25 = swift_allocObject();
    sub_268CDF978((v40 + 176), (v25 + 16));
    (*(v24 + 8))(v42, sub_268F23160, v25, v23);

    swift_beginAccess();
    sub_268CDE730(v26 + 24, v40 + 216);
    swift_endAccess();
    v27 = *(v40 + 248);
    __swift_project_boxed_opaque_existential_1((v40 + 216), *(v40 + 240));
    sub_268DE460C(1);
    __swift_destroy_boxed_opaque_existential_0((v40 + 216));
    sub_268F998F4();
    __swift_destroy_boxed_opaque_existential_0((v40 + 96));

    v10 = MEMORY[0x277D82BD8](v42);
LABEL_18:
    v13 = *(*(v40 + 472) + 8);
    v14 = *(v40 + 472);

    return v13(v10);
  }

  sub_268F9B284();
  v4 = sub_268DC7AE8();
  v32 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v31 = v5;
  sub_268CDE730(v40 + 96, v40 + 256);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DCAA8, &unk_268FAA330);
  v29 = sub_268F9AE64();
  v30 = v6;
  v31[3] = MEMORY[0x277D837D0];
  v31[4] = sub_268CDD224();
  *v31 = v29;
  v31[1] = v30;
  sub_268CD0F7C();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v32);
  v33 = *(v40 + 120);
  v34 = *(v40 + 128);
  __swift_project_boxed_opaque_existential_1((v40 + 96), v33);
  v35 = (*(v34 + 32) + **(v34 + 32));
  v7 = *(*(v34 + 32) + 4);
  v8 = swift_task_alloc();
  *(v40 + 536) = v8;
  *v8 = *(v40 + 472);
  v8[1] = sub_268F229DC;

  return v35(v42, v33, v34);
}

uint64_t sub_268F229DC(uint64_t a1)
{
  v6 = *v1;
  v3 = *(*v1 + 536);
  *(v6 + 472) = *v1;
  *(v6 + 544) = a1;

  v4 = *(v6 + 472);

  return MEMORY[0x2822009F8](sub_268F22AF8, 0);
}

uint64_t sub_268F22AF8()
{
  v1 = v0[68];
  v9 = v0[66];
  v10 = v0[65];
  v6 = v0[64];
  v8 = v0[63];
  v0[59] = v0;
  MEMORY[0x277D82BD8](v1);
  swift_beginAccess();
  sub_268CDE730(v6 + 24, (v0 + 37));
  swift_endAccess();
  v7 = v0[41];
  __swift_project_boxed_opaque_existential_1(v0 + 37, v0[40]);
  sub_268DE460C(1);
  __swift_destroy_boxed_opaque_existential_0(v0 + 37);
  sub_268F998F4();
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);

  v2 = MEMORY[0x277D82BD8](v10);
  v3 = *(v0[59] + 8);
  v4 = v0[59];

  return v3(v2);
}

double sub_268F22C5C(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v12 = a2;
  sub_268F9B284();
  v2 = sub_268DC7AE8();
  v10 = *v2;
  MEMORY[0x277D82BE0](*v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v9 = v3;
  sub_268CDE730(a2, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DCAA8, &unk_268FAA330);
  v7 = sub_268F9AE64();
  v8 = v4;
  v9[3] = MEMORY[0x277D837D0];
  v9[4] = sub_268CDD224();
  *v9 = v7;
  v9[1] = v8;
  sub_268CD0F7C();
  sub_268F9AC14();

  *&result = MEMORY[0x277D82BD8](v10).n128_u64[0];
  return result;
}

uint64_t sub_268F22DAC(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v16 = a2;
  v19 = &unk_268FAA348;
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

uint64_t sub_268F22F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

  return sub_268F22050(v16);
}

uint64_t sub_268F23094()
{
  sub_268D35038((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  return v2;
}

uint64_t sub_268F23168(uint64_t a1)
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

  return sub_268F22F24(a1, v6, v7, v8, v9, v10);
}

uint64_t sub_268F23280()
{
  type metadata accessor for SetLocationServicesHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_2802F1678 = result;
  return result;
}

uint64_t *sub_268F232E8()
{
  if (qword_2802DB7D8 != -1)
  {
    swift_once();
  }

  return &qword_2802F1678;
}

uint64_t sub_268F23348()
{
  v1 = *sub_268F232E8();

  return v1;
}

uint64_t sub_268F23378(void *a1, void (*a2)(void), uint64_t a3)
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

  v10 = sub_268D37138();

  v5 = sub_268DBE0C4();
  v12 = *v5;
  v13 = v5[1];
  v14 = *(v5 + 16);
  v15 = *(v8 + 24);

  sub_268DAAB84(v10 & 1, a1, v12, v13, v14, v15 & 1, a2, a3, sub_268F2359C, v8, 0, 1, 0, 0);
  return sub_268CD9A28(sub_268F2359C);
}

uint64_t sub_268F2352C(char a1, uint64_t a2)
{
  v4 = *(a2 + 16);

  sub_268D37174(a1 & 1);
}

uint64_t sub_268F235E8()
{
  type metadata accessor for SetPersonalizedVolumeHandler();
  v0 = sub_268CDC590();
  result = sub_268F23650(v0, 0);
  qword_2802F1680 = result;
  return result;
}

uint64_t *sub_268F236A8()
{
  if (qword_2802DB7E0 != -1)
  {
    swift_once();
  }

  return &qword_2802F1680;
}

uint64_t sub_268F23708()
{
  v1 = *sub_268F236A8();

  return v1;
}

uint64_t sub_268F23738(uint64_t a1, char a2)
{
  v3 = sub_268DBE9D4();
  v4 = v3[1];
  v5 = *(v3 + 16);
  *(v2 + 16) = *v3;
  *(v2 + 24) = v4;
  *(v2 + 32) = v5;

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;

  return v9;
}

uint64_t sub_268F237C8(char a1)
{
  *(v2 + 32) = v1;
  *(v2 + 57) = a1 & 1;
  *(v2 + 16) = v2;
  *(v2 + 56) = 0;
  *(v2 + 24) = 0;
  *(v2 + 56) = a1 & 1;
  *(v2 + 24) = v1;
  v3 = *(v2 + 16);
  return MEMORY[0x2822009F8](sub_268F23830, 0);
}

uint64_t sub_268F23830()
{
  v1 = v0[4];
  v0[2] = v0;
  v0[5] = *(v1 + 40);

  v2 = swift_task_alloc();
  *(v5 + 48) = v2;
  *v2 = *(v5 + 16);
  v2[1] = sub_268D8DA64;
  v3 = *(v5 + 57) & 1;

  return sub_268D510FC(v3);
}

uint64_t sub_268F238F4(char a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_268CD7DB8;

  return sub_268F237C8(a1 & 1);
}

uint64_t sub_268F239B0()
{
  v5 = v1;
  *(v1 + 16) = v1;
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_268CD7DB8;

  return sub_268DE39BC();
}

uint64_t *sub_268F23A60()
{
  if (qword_280FE56C8 != -1)
  {
    swift_once();
  }

  return &qword_280FE56D0;
}

void *sub_268F23AC0()
{
  type metadata accessor for ConfirmationUtil();
  v1 = sub_268F23B4C();
  v2 = sub_268F1C948();
  sub_268D58CB4(v3);
  result = sub_268F23B7C(v1, v2, v3);
  qword_280FE56D0 = result;
  return result;
}

uint64_t sub_268F23B4C()
{
  v1 = *sub_268F337EC();

  return v1;
}

uint64_t static ConfirmationUtil.shared.getter()
{
  v1 = *sub_268F23A60();

  return v1;
}

uint64_t sub_268F23C10()
{
  v2 = *(v0 + 16);
  MEMORY[0x277D82BE0]();
  return v2;
}

uint64_t sub_268F23C50()
{
  v2 = *(v0 + 24);

  return v2;
}

uint64_t sub_268F23C88()
{
  v2 = *(v0 + 32);

  return v2;
}

void *sub_268F23CF0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v9 = 0;
  v12 = a1;
  v11 = a2;
  v10 = a3;
  sub_268D2DF48();
  sub_268F9AEF4();
  sub_268F9AEF4();
  v7[2] = sub_268F9B374();

  v7[3] = a1;

  v7[4] = a2;
  sub_268CDE730(a3, v8);
  sub_268CDF978(v8, v7 + 5);
  __swift_destroy_boxed_opaque_existential_0(a3);

  return v7;
}

uint64_t sub_268F23E0C(uint64_t a1, uint64_t a2)
{
  MEMORY[0x277D82BE0](a1);
  objc_opt_self();
  v27 = swift_dynamicCastObjCClass();
  if (v27)
  {
    v23 = v27;
  }

  else
  {
    MEMORY[0x277D82BD8](a1);
    v23 = 0;
  }

  if (!v23)
  {
    goto LABEL_13;
  }

  MEMORY[0x277D82BE0](a2);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v22 = v2;
  }

  else
  {
    MEMORY[0x277D82BD8](a2);
    v22 = 0;
  }

  if (!v22)
  {
    MEMORY[0x277D82BD8](v23);
LABEL_13:
    MEMORY[0x277D82BE0](a1);
    objc_opt_self();
    v19 = swift_dynamicCastObjCClass();
    if (v19)
    {
      v18 = v19;
    }

    else
    {
      MEMORY[0x277D82BD8](a1);
      v18 = 0;
    }

    if (v18)
    {
      MEMORY[0x277D82BE0](a2);
      objc_opt_self();
      v3 = swift_dynamicCastObjCClass();
      if (v3)
      {
        v17 = v3;
      }

      else
      {
        MEMORY[0x277D82BD8](a2);
        v17 = 0;
      }

      if (v17)
      {
        v16 = sub_268F243F8(v18, v17);
        MEMORY[0x277D82BD8](v17);
        MEMORY[0x277D82BD8](v18);
        v21 = v16;
        return v21 & 1;
      }

      MEMORY[0x277D82BD8](v18);
    }

    MEMORY[0x277D82BE0](a1);
    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    if (v15)
    {
      v14 = v15;
    }

    else
    {
      MEMORY[0x277D82BD8](a1);
      v14 = 0;
    }

    if (v14)
    {
      MEMORY[0x277D82BE0](a2);
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      if (v4)
      {
        v13 = v4;
      }

      else
      {
        MEMORY[0x277D82BD8](a2);
        v13 = 0;
      }

      if (v13)
      {
        v12 = sub_268F26B04(v14, v13);
        MEMORY[0x277D82BD8](v13);
        MEMORY[0x277D82BD8](v14);
        v21 = v12;
        return v21 & 1;
      }

      MEMORY[0x277D82BD8](v14);
    }

    v11 = *(v25 + 16);
    MEMORY[0x277D82BE0](v11);
    sub_268F9B284();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v10 = v5;
    MEMORY[0x277D82BE0](a1);
    sub_268D55AB4();
    sub_268D55B18();
    v8 = sub_268F9AE74();
    v9 = v6;
    v10[3] = MEMORY[0x277D837D0];
    v10[4] = sub_268CDD224();
    *v10 = v8;
    v10[1] = v9;
    sub_268CD0F7C();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v11);
    v21 = 0;
    return v21 & 1;
  }

  v20 = sub_268F2580C(v23, v22);
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v23);
  v21 = v20;
  return v21 & 1;
}

uint64_t sub_268F243F8(void *a1, void *a2)
{
  v94 = 0;
  v93 = 0;
  v91 = 0;
  v96 = a1;
  v95 = a2;
  v83 = [a1 settingMetadata];
  if (v83)
  {
    v77 = [v83 settingId];
    v78._countAndFlagsBits = sub_268F9AE24();
    v78._object = v2;
    MEMORY[0x277D82BD8](v83);
    MEMORY[0x277D82BD8](v77);
    v79 = v78;
  }

  else
  {
    v79 = 0;
  }

  if (!v79._object)
  {
    goto LABEL_87;
  }

  v93 = v79;

  NumericSettingIdentifier.init(rawValue:)(v79);
  if (v92 == 13)
  {

LABEL_87:
    v24 = *(v82 + 16);
    MEMORY[0x277D82BE0](v24);
    sub_268F9B284();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v24);
    v73 = 0;
    return v73 & 1;
  }

  v91 = v92;
  v76 = *(v82 + 24);

  v90 = v92;
  sub_268F35CE8(&v90, v97);

  memcpy(__dst, v97, sizeof(__dst));
  if (!__dst[3])
  {
    v26 = *(v82 + 16);
    MEMORY[0x277D82BE0](v26);
    sub_268F9B284();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v25 = v22;

    v25[1]._object = MEMORY[0x277D837D0];
    v25[2]._countAndFlagsBits = sub_268CDD224();
    *v25 = v79;
    sub_268CD0F7C();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v26);

    v73 = 0;
    return v73 & 1;
  }

  memcpy(v99, __dst, sizeof(v99));
  v74 = v99[3];

  v75 = v74(a1);

  if (v75)
  {
    v72 = *(v82 + 16);
    MEMORY[0x277D82BE0](v72);
    sub_268F9B284();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v72);
    sub_268F27288(v99);

    v73 = 1;
    return v73 & 1;
  }

  v71 = [a1 numericValue];
  if (v71 && (v70 = [v71 value], *&v3 = MEMORY[0x277D82BD8](v71).n128_u64[0], v70))
  {
    [v70 floatValue];
    v67 = v4;
    MEMORY[0x277D82BD8](v70);
    v68 = v67;
    v69 = 0;
  }

  else
  {
    v68 = 0.0;
    v69 = 1;
  }

  v100 = v99[0];
  v101 = BYTE4(v99[0]);
  v86 = v68;
  v87 = v69 & 1;
  v88 = *v99;
  v89 = BYTE4(v99[0]);
  if ((v69 & 1) == 0)
  {
    if ((v89 & 1) == 0)
    {
      v66 = v68 == v88;
      goto LABEL_24;
    }

    goto LABEL_26;
  }

  if ((v89 & 1) == 0)
  {
LABEL_26:
    v66 = 0;
    goto LABEL_24;
  }

  v66 = 1;
LABEL_24:
  MEMORY[0x277D82BE0](a1);
  sub_268F271E0(v99, v85);
  if (v66)
  {
    v64 = 0;
  }

  else
  {
    [a1 boundedValue];
    v102 = v99[1];
    v103 = v99[2];
    if (v99[2])
    {
      v65 = 0;
    }

    else
    {
      type metadata accessor for INBoundedSettingValue();
      sub_268F272C0();
      v65 = sub_268F9AE04();
    }

    v64 = v65 ^ 1;
  }

  MEMORY[0x277D82BD8](a1);
  sub_268F27288(v99);
  if (v64)
  {
    v63 = *(v82 + 16);
    MEMORY[0x277D82BE0](v63);
    sub_268F9B284();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v62 = v5;

    v60 = MEMORY[0x277D837D0];
    v62[1]._object = MEMORY[0x277D837D0];
    v61 = sub_268CDD224();
    v62[2]._countAndFlagsBits = v61;
    *v62 = v79;
    [a1 numericValue];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE358, &unk_268FAA540);
    v6 = sub_268F9AE64();
    v62[4]._countAndFlagsBits = v60;
    v62[4]._object = v61;
    v62[2]._object = v6;
    v62[3]._countAndFlagsBits = v7;
    [a1 boundedValue];
    type metadata accessor for INBoundedSettingValue();
    v8 = sub_268F9AE64();
    v62[6]._object = v60;
    v62[7]._countAndFlagsBits = v61;
    v62[5]._countAndFlagsBits = v8;
    v62[5]._object = v9;
    sub_268CD0F7C();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v63);
    sub_268F27288(v99);

    v73 = 0;
    return v73 & 1;
  }

  v59 = [a1 numericValue];
  if (v59 && (v58 = [v59 value], *&v10 = MEMORY[0x277D82BD8](v59).n128_u64[0], v58))
  {
    [v58 floatValue];
    v55 = v11;
    MEMORY[0x277D82BD8](v58);
    v56 = v55;
    v57 = 0;
  }

  else
  {
    v56 = 0.0;
    v57 = 1;
  }

  if ((v57 & 1) == 0)
  {
    v104 = v99[0];
    v105 = BYTE4(v99[0]);
    if ((v99[0] & 0x100000000) == 0 && v56 == *v99)
    {
      v53 = *(v82 + 16);
      MEMORY[0x277D82BE0](v53);
      sub_268F9B284();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      sub_268F9B734();
      sub_268F9AC04();

      MEMORY[0x277D82BD8](v53);
      sub_268F27288(v99);

      v73 = 1;
      return v73 & 1;
    }
  }

  v84[2] = [a1 boundedValue];
  v84[1] = 0;
  type metadata accessor for INBoundedSettingValue();
  sub_268F272C0();
  if ((sub_268F9AE04() & 1) == 0)
  {
    [a1 boundedValue];
    v106 = v99[1];
    v107 = v99[2];
    v52 = (v99[2] & 1) != 0 ? 0 : sub_268F9AE04();
    if (v52)
    {
      v51 = *(v82 + 16);
      MEMORY[0x277D82BE0](v51);
      sub_268F9B284();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      sub_268F9B734();
      sub_268F9AC04();

      MEMORY[0x277D82BD8](v51);
      sub_268F27288(v99);

      v73 = 1;
      return v73 & 1;
    }
  }

  v84[0] = [a2 oldValue];
  if (!v84[0])
  {
    sub_268D35038(v84);
LABEL_83:
    v47 = 0.0;
    v48 = 1;
    goto LABEL_61;
  }

  v49 = v84[0];
  MEMORY[0x277D82BE0](v84[0]);
  sub_268D35038(v84);
  v50 = [v49 value];
  *&v12 = MEMORY[0x277D82BD8](v49).n128_u64[0];
  if (!v50)
  {
    goto LABEL_83;
  }

  [v50 floatValue];
  v46 = v13;
  MEMORY[0x277D82BD8](v50);
  v47 = v46;
  v48 = 0;
LABEL_61:
  if (v48)
  {
    goto LABEL_84;
  }

  v14 = [a1 numericValue];
  v45 = v14;
  if (v14)
  {
    v42 = [v14 unit];
    MEMORY[0x277D82BD8](v45);
    v43 = v42;
    v44 = 0;
  }

  else
  {
    v43 = 0;
    v44 = 1;
  }

  v41 = (v44 & 1) != 0 || v43 != 1 ? v47 : v47 * 100.0;
  v40 = [a1 numericValue];
  if (v40 && (v39 = [v40 value], *&v15 = MEMORY[0x277D82BD8](v40).n128_u64[0], v39))
  {
    [v39 floatValue];
    v36 = v16;
    MEMORY[0x277D82BD8](v39);
    v37 = v36;
    v38 = 0;
  }

  else
  {
    v37 = 0.0;
    v38 = 1;
  }

  if ((v38 & 1) != 0 || v41 != v37)
  {
LABEL_84:
    v32 = *(v82 + 16);
    MEMORY[0x277D82BE0](v32);
    sub_268F9B284();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v31 = v18;
    MEMORY[0x277D82BE0](a1);
    sub_268D588E0();
    sub_268DCA900();
    v27 = sub_268F9AE74();
    v28 = v19;
    v29 = MEMORY[0x277D837D0];
    v31[3] = MEMORY[0x277D837D0];
    v30 = sub_268CDD224();
    v31[4] = v30;
    *v31 = v27;
    v31[1] = v28;
    MEMORY[0x277D82BE0](a2);
    sub_268CDA484();
    sub_268EE4A98();
    v20 = sub_268F9AE74();
    v31[8] = v29;
    v31[9] = v30;
    v31[5] = v20;
    v31[6] = v21;
    sub_268CD0F7C();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v32);
    sub_268F27288(v99);

    v73 = 0;
  }

  else
  {
    v34 = *(v82 + 16);
    MEMORY[0x277D82BE0](v34);
    sub_268F9B284();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v33 = v17;

    v33[1]._object = MEMORY[0x277D837D0];
    v33[2]._countAndFlagsBits = sub_268CDD224();
    *v33 = v79;
    sub_268CD0F7C();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v34);
    sub_268F27288(v99);

    v73 = 0;
  }

  return v73 & 1;
}

uint64_t sub_268F2580C(void *a1, void *a2)
{
  v104 = 0;
  v103 = 0;
  v101 = 0;
  v94 = 0;
  v87 = 0;
  v85 = 0;
  v86 = 0;
  v83 = 0;
  v80 = 0;
  v106 = a1;
  v105 = a2;
  v74 = [a1 settingMetadata];
  if (v74)
  {
    v68 = [v74 settingId];
    v69._countAndFlagsBits = sub_268F9AE24();
    v69._object = v2;
    MEMORY[0x277D82BD8](v74);
    MEMORY[0x277D82BD8](v68);
    v70 = v69;
  }

  else
  {
    v70 = 0;
  }

  if (!v70._object)
  {
    goto LABEL_59;
  }

  v103 = v70;

  BinarySettingIdentifier.init(rawValue:)(v70);
  v67 = v102;
  if (v102 == 65)
  {

LABEL_59:
    v20 = v73[2];
    MEMORY[0x277D82BE0](v20);
    sub_268F9B284();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v20);
    v63 = 0;
    return v63 & 1;
  }

  v101 = v102;
  v66 = v73[3];

  v100 = v102;
  sub_268F35C24(&v100, v107);

  memcpy(__dst, v107, sizeof(__dst));
  if (!__dst[2])
  {
    v22 = v73[2];
    MEMORY[0x277D82BE0](v22);
    sub_268F9B284();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v21 = v19;

    v21[1]._object = MEMORY[0x277D837D0];
    v21[2]._countAndFlagsBits = sub_268CDD224();
    *v21 = v70;
    sub_268CD0F7C();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v22);

    v63 = 0;
    return v63 & 1;
  }

  memcpy(v109, __dst, 0x60uLL);
  v64 = v109[10];

  MEMORY[0x277D82BE0](a1);
  v65 = v64(a1);
  MEMORY[0x277D82BD8](a1);
  if (v65 == 2)
  {
  }

  else
  {

    if ((v65 & 1) == 0)
    {
      v62 = v73[2];
      MEMORY[0x277D82BE0](v62);
      sub_268F9B284();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      sub_268F9B734();
      v61 = v3;

      v61[1]._object = MEMORY[0x277D837D0];
      v61[2]._countAndFlagsBits = sub_268CDD224();
      *v61 = v70;
      sub_268CD0F7C();
      sub_268F9AC04();

      MEMORY[0x277D82BD8](v62);
      sub_268DD57B4(v109);

      v63 = 0;
      return v63 & 1;
    }
  }

  v59 = v109[4];

  sub_268CDE730((v73 + 5), v99);
  v60 = v59(v99);
  __swift_destroy_boxed_opaque_existential_0(v99);
  if (v60 != 2)
  {

    v58 = v73[2];
    MEMORY[0x277D82BE0](v58);
    sub_268F9B284();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    *(v4 + 24) = MEMORY[0x277D839B0];
    *(v4 + 32) = MEMORY[0x277D839F0];
    *v4 = v60 & 1;
    sub_268CD0F7C();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v58);
    sub_268DD57B4(v109);

    v63 = v60;
    return v63 & 1;
  }

  v98 = [a1 binaryValue];
  v97 = 3;
  type metadata accessor for INBinarySettingValue();
  sub_268D292B8();
  if (sub_268F9AE04())
  {
    v96 = [a2 oldValue];
    v95 = 1;
    sub_268CD925C();
    if (sub_268F9B754())
    {
      v56 = 2;
    }

    else
    {
      v56 = 1;
    }

    v57 = v56;
  }

  else
  {
    v57 = [a1 binaryValue];
  }

  v94 = v57;
  v93 = v57;
  v92 = 1;
  sub_268CD925C();
  v55 = sub_268F9B754();

  if (v55)
  {
    sub_268CDE730((v73 + 5), v75);
    v52 = v76;
    v51 = v77;
    __swift_project_boxed_opaque_existential_1(v75, v76);
    v53 = (*(v51 + 40))(v52);
    __swift_destroy_boxed_opaque_existential_0(v75);
    v54 = v53;
  }

  else
  {
    v54 = 0;
  }

  if (v54)
  {
    v5 = sub_268F9B734();
    *v6 = 35;
    v6[1] = 36;
    sub_268CD0F7C();
    v79[0] = v5;
    v78 = v67;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC090, &qword_268F9D9A0);
    sub_268D28B4C();
    sub_268D288C8();
    v49 = sub_268F9AFC4();
    sub_268CD7930(v79);
    v50 = v49;
  }

  else
  {
    v50 = 0;
  }

  if (v50)
  {
    v48 = sub_268F26E9C(a1);
    sub_268DD57B4(v109);

    v63 = v48;
    return v63 & 1;
  }

  v91 = v57;
  v109[12] = v109[0];
  v90 = v109[0];
  if ((sub_268F9AE04() & 1) == 0)
  {
    v47 = v73[2];
    MEMORY[0x277D82BE0](v47);
    sub_268F9B284();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v46 = v7;

    v44 = MEMORY[0x277D837D0];
    v46[1]._object = MEMORY[0x277D837D0];
    v45 = sub_268CDD224();
    v46[2]._countAndFlagsBits = v45;
    *v46 = v70;
    v79[1] = v57;
    v8 = sub_268F9AE64();
    v46[4]._countAndFlagsBits = v44;
    v46[4]._object = v45;
    v46[2]._object = v8;
    v46[3]._countAndFlagsBits = v9;
    sub_268CD0F7C();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v47);
    sub_268DD57B4(v109);

    v63 = 0;
    return v63 & 1;
  }

  v89 = [a2 oldValue];
  v88 = v57;
  if (sub_268F9B754())
  {
    v43 = v73[2];
    MEMORY[0x277D82BE0](v43);
    sub_268F9B284();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v42 = v10;

    v42[1]._object = MEMORY[0x277D837D0];
    v42[2]._countAndFlagsBits = sub_268CDD224();
    *v42 = v70;
    sub_268CD0F7C();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v43);
    sub_268DD57B4(v109);

    v63 = 0;
    return v63 & 1;
  }

  v110 = v109[1];
  if ((v109[1] & 1) == 0)
  {
    v41 = v73[2];
    MEMORY[0x277D82BE0](v41);
    sub_268F9B284();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v41);
    sub_268DD57B4(v109);

    v63 = 1;
    return v63 & 1;
  }

  v39 = v73[4];

  v40 = sub_268F23C10();

  v87 = v40;
  v85 = sub_268F3384C();
  v86 = v11;
  MEMORY[0x277D82BE0](v40);
  if (v40)
  {

    v35 = sub_268F9AE14();

    v36 = [v40 integerForKey_];
    MEMORY[0x277D82BD8](v35);
    MEMORY[0x277D82BD8](v40);
    v37 = v36;
    v38 = 0;
  }

  else
  {
    v37 = 0;
    v38 = 1;
  }

  if (v38)
  {
LABEL_56:
    v26 = v73[2];
    MEMORY[0x277D82BE0](v26);
    sub_268F9B284();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v25 = v17;
    MEMORY[0x277D82BE0](a1);
    v84 = a1;
    sub_268CD7620();
    sub_268D28940();
    v23 = sub_268F9AE74();
    v24 = v18;
    v25[3] = MEMORY[0x277D837D0];
    v25[4] = sub_268CDD224();
    *v25 = v23;
    v25[1] = v24;
    sub_268CD0F7C();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v26);

    MEMORY[0x277D82BD8](v40);
    sub_268DD57B4(v109);

    v63 = 0;
    return v63 & 1;
  }

  v83 = v37;
  v34 = v109[8];

  v81 = v34(v12);
  v82 = v13 & 1;

  if (v82)
  {
    v31 = v73[3];

    v32 = sub_268E12F10();

    v33 = v32;
  }

  else
  {
    v33 = v81;
  }

  v80 = v33;
  if (v37 >= v33)
  {
    v28 = v73[2];
    MEMORY[0x277D82BE0](v28);
    sub_268F9B284();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v27 = v16;

    v27[1]._object = MEMORY[0x277D837D0];
    v27[2]._countAndFlagsBits = sub_268CDD224();
    *v27 = v70;
    sub_268CD0F7C();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v28);
    goto LABEL_56;
  }

  result = MEMORY[0x277D82BE0](v40);
  if (!v40)
  {
LABEL_53:
    v29 = v73[2];
    MEMORY[0x277D82BE0](v29);
    sub_268F9B284();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v29);

    MEMORY[0x277D82BD8](v40);
    sub_268DD57B4(v109);

    v63 = 1;
    return v63 & 1;
  }

  if (!__OFADD__(v37, 1))
  {

    v30 = sub_268F9AE14();

    [v40 setInteger:v37 + 1 forKey:v30];
    MEMORY[0x277D82BD8](v30);
    MEMORY[0x277D82BD8](v40);
    goto LABEL_53;
  }

  __break(1u);
  return result;
}

uint64_t sub_268F26B04(void *a1, uint64_t a2)
{
  v27 = 0;
  v26 = 0;
  v24 = 0;
  v29 = a1;
  v28 = a2;
  v19 = [a1 settingMetadata];
  if (v19)
  {
    v14 = [v19 settingId];
    v15._countAndFlagsBits = sub_268F9AE24();
    v15._object = v2;
    MEMORY[0x277D82BD8](v19);
    MEMORY[0x277D82BD8](v14);
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (!v16._object)
  {
    goto LABEL_16;
  }

  v26 = v16;

  BinarySettingIdentifier.init(rawValue:)(v16);
  if (v25 == 65)
  {

LABEL_16:
    v7 = *(v18 + 16);
    MEMORY[0x277D82BE0](v7);
    sub_268F9B284();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v7);
    v9 = 0;
    return v9 & 1;
  }

  v24 = v25;
  sub_268CDE730(v18 + 40, v21);
  v13 = v22;
  v12 = v23;
  __swift_project_boxed_opaque_existential_1(v21, v22);
  v3 = (*(v12 + 40))(v13);
  if (v3)
  {
    v4 = sub_268F9B734();
    *v5 = 35;
    v5[1] = 36;
    sub_268CD0F7C();
    v20 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC090, &qword_268F9D9A0);
    sub_268D28B4C();
    sub_268D288C8();
    v10 = sub_268F9AFC4();
    sub_268CD7930(&v20);
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0(v21);
  if (v11)
  {
    v8 = sub_268F26E9C(a1);

    v9 = v8;
  }

  else
  {

    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_268F26E9C(uint64_t a1)
{
  v18 = *sub_268D35434();

  v19 = sub_268D370FC();

  if (v19)
  {
    MEMORY[0x277D82BE0](a1);
    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    if (v15)
    {
      v14 = v15;
    }

    else
    {
      MEMORY[0x277D82BD8](a1);
      v14 = 0;
    }

    if (v14)
    {
      MEMORY[0x277D82BD8](v14);
      v12 = *sub_268D35434();

      v13 = sub_268D36960();

      if (v13)
      {
        v11 = 1;
      }

      else
      {
        v9 = *sub_268D35434();

        v10 = sub_268D38D64();

        v11 = v10 ^ 1;
      }

      v16 = v11;
    }

    else
    {
      MEMORY[0x277D82BE0](a1);
      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      if (v8)
      {
        v7 = v8;
      }

      else
      {
        MEMORY[0x277D82BD8](a1);
        v7 = 0;
      }

      if (v7)
      {
        MEMORY[0x277D82BD8](v7);
        v5 = *sub_268D35434();

        v6 = sub_268D36D3C();

        if (v6)
        {
          v2 = *sub_268D35434();

          v3 = sub_268D36DD0();

          v4 = v3 ^ 1;
        }

        else
        {
          v4 = 0;
        }

        v16 = v4;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t ConfirmationUtil.deinit()
{
  MEMORY[0x277D82BD8](v0[2]);
  v1 = v0[3];

  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_0(v0 + 5);
  return v4;
}

uint64_t sub_268F271E0(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 4) = *(a1 + 4);
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);

  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 41) = *(a1 + 41);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);

  result = a2;
  *(a2 + 48) = v7;
  *(a2 + 56) = v8;
  return result;
}

uint64_t sub_268F27288(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = *(a1 + 56);

  return a1;
}

unint64_t sub_268F272C0()
{
  v2 = qword_2802DE350;
  if (!qword_2802DE350)
  {
    type metadata accessor for INBoundedSettingValue();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE350);
    return WitnessTable;
  }

  return v2;
}

id sub_268F2736C(uint64_t a1)
{
  v23 = 0;
  v24 = 0;
  v26 = a1;
  v25 = a1;
  v1 = sub_268D2E630();
  v19 = SettingIntent.settingIdentifier.getter(v1, &protocol witness table for INGetSettingIntent);
  v20 = v2;
  if (!v2)
  {
    return 0;
  }

  v23 = v19;
  v24 = v2;
  v16 = *sub_268F2BDEC();

  v21[0] = v19;
  v21[1] = v20;
  sub_268F9ADC4();
  sub_268CD9D30(v21);
  v17 = v21[2];
  v18 = v22;
  if (!v22)
  {

    return 0;
  }

  v3 = sub_268F276D4();
  v12 = *v3;
  v13 = v3[1];

  v14 = sub_268F9AE14();

  v15 = INIntentCreate();
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BE0](v15);
  if (v15)
  {
    v4 = sub_268F2BF24();
    v9 = *v4;
    v10 = v4[1];

    v11 = sub_268F9AE14();

    [v15 _setExtensionBundleId_];
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v15);
  }

  MEMORY[0x277D82BE0](v15);
  if (v15)
  {
    sub_268F2BE4C();

    v8 = sub_268F2FC84(v17, v18);
    sub_268F9AEF4();
    v7 = sub_268F9AE14();

    [v15 setValue:v8 forKey:v7];
    MEMORY[0x277D82BD8](v7);
    swift_unknownObjectRelease();
    MEMORY[0x277D82BD8](v15);
  }

  return v15;
}

uint64_t *sub_268F276D4()
{
  if (qword_2802DB800 != -1)
  {
    swift_once();
  }

  return &qword_2802F16A0;
}

id sub_268F27734(void *a1)
{
  v29 = 0;
  v30 = 0;
  v32 = a1;
  v31 = a1;
  v1 = sub_268CD7620();
  v25 = SettingIntent.settingIdentifier.getter(v1, &protocol witness table for INSetBinarySettingIntent);
  v26 = v2;
  if (!v2)
  {
    return 0;
  }

  v29 = v25;
  v30 = v2;
  v21 = *sub_268F2BDEC();

  v27[0] = v25;
  v27[1] = v26;
  sub_268F9ADC4();
  sub_268CD9D30(v27);
  v22 = v27[2];
  v23 = v28;
  if (!v28)
  {

    return 0;
  }

  v3 = sub_268F2C048();
  v17 = *v3;
  v18 = v3[1];

  v19 = sub_268F9AE14();

  v20 = INIntentCreate();
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BE0](v20);
  if (v20)
  {
    v4 = sub_268F2BF24();
    v14 = *v4;
    v15 = v4[1];

    v16 = sub_268F9AE14();

    [v20 _setExtensionBundleId_];
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BD8](v20);
  }

  MEMORY[0x277D82BE0](v20);
  if (v20)
  {
    sub_268F2BE4C();

    v13 = sub_268F2FC84(v22, v23);
    sub_268F9AEF4();
    v12 = sub_268F9AE14();

    [v20 setValue:v13 forKey:v12];
    MEMORY[0x277D82BD8](v12);
    swift_unknownObjectRelease();
    MEMORY[0x277D82BD8](v20);
  }

  MEMORY[0x277D82BE0](v20);
  if (v20)
  {
    [a1 binaryValue];
    type metadata accessor for INBinarySettingValue();
    sub_268CD925C();
    if (sub_268F9B754())
    {
      sub_268D34FD4();
      v11 = sub_268F2B5E0(1);
    }

    else
    {
      [a1 binaryValue];
      if (sub_268F9B754())
      {
        sub_268D34FD4();
        v10 = sub_268F2B5E0(2);
      }

      else
      {
        sub_268D34FD4();
        v10 = sub_268F2B5E0(3);
      }

      v11 = v10;
    }

    sub_268F9AEF4();
    v9 = sub_268F9AE14();

    [v20 setValue:v11 forKey:v9];
    MEMORY[0x277D82BD8](v9);
    swift_unknownObjectRelease();
    MEMORY[0x277D82BD8](v20);
  }

  MEMORY[0x277D82BE0](v20);
  if (v20)
  {
    v8 = sub_268F9B0A4();
    sub_268F9AEF4();
    v7 = sub_268F9AE14();

    [v20 setValue:v8 forKey:v7];
    MEMORY[0x277D82BD8](v7);
    swift_unknownObjectRelease();
    MEMORY[0x277D82BD8](v20);
  }

  return v20;
}

uint64_t sub_268F27D28()
{
  v55 = 0;
  v54 = 0;
  v53 = 0;
  v52 = 0;
  v51 = 0;
  v50 = 0;
  v31 = 0;
  v19 = (*(*(sub_268F99D44() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v20 = &v10 - v19;
  v21 = (*(*(sub_268F99CF4() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v31);
  v22 = &v10 - v21;
  v23 = sub_268F99E34();
  v24 = *(v23 - 8);
  v25 = v23 - 8;
  v26 = (v24[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = MEMORY[0x28223BE20](v31);
  v27 = &v10 - v26;
  v55 = &v10 - v26;
  v28 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v0);
  v29 = &v10 - v28;
  v54 = &v10 - v28;
  v30 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v43 = &v10 - v30;
  v53 = &v10 - v30;
  v32 = (*(*(sub_268F99CD4() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v31);
  v39 = &v10 - v32;
  v46 = sub_268F99DE4();
  v44 = *(v46 - 8);
  v45 = v46 - 8;
  v33 = (v44[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v46);
  v34 = &v10 - v33;
  v35 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v10 - v33);
  v36 = &v10 - v35;
  v37 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v10 - v35);
  v49 = &v10 - v37;
  v38 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v10 - v37);
  v40 = &v10 - v38;
  v52 = &v10 - v38;
  sub_268F99DD4();
  sub_268F99CC4();
  sub_268F99DA4();
  v41 = v44[2];
  v42 = v44 + 2;
  v41(v49, v40, v46);
  sub_268F325B4(v49, v43);
  v47 = v44[1];
  v48 = v44 + 1;
  v47(v49, v46);
  v51 = v49;
  sub_268F99DD4();
  sub_268F99CE4();
  sub_268F99DB4();
  v41(v36, v49, v46);
  sub_268F325B4(v36, v29);
  v47(v36, v46);
  v50 = v36;
  sub_268F99DD4();
  sub_268F99D34();
  sub_268F99DC4();
  v41(v34, v36, v46);
  sub_268F325B4(v34, v27);
  v47(v34, v46);
  v15 = sub_268F9B734();
  v12 = v7;
  v14 = v24[2];
  v13 = v24 + 2;
  v14();
  v11 = v24[9];
  (v14)(v12 + v11, v29, v23);
  (v14)(v12 + 2 * v11, v27, v23);
  v8 = v15;
  sub_268CD0F7C();
  v18 = v8;
  v17 = v24[1];
  v16 = v24 + 1;
  v17(v27, v23);
  v47(v36, v46);
  v17(v29, v23);
  v47(v49, v46);
  v17(v43, v23);
  v47(v40, v46);
  return v18;
}

uint64_t *sub_268F2842C()
{
  if (qword_2802DB830 != -1)
  {
    swift_once();
  }

  return &qword_2802F16E0;
}

uint64_t *sub_268F2848C()
{
  if (qword_280FE5948 != -1)
  {
    swift_once();
  }

  return &qword_280FE8270;
}

id sub_268F284EC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v17 = 0;
  v18 = 0;
  v26 = a1;
  v27 = a2;
  v25 = a3;
  v24 = a4;
  v23 = a5;

  v19 = a1;
  v20 = a2;
  if (a2)
  {
    v21 = v19;
    v22 = v20;
  }

  else
  {
    v21 = sub_268F9AEF4();
    v22 = v5;
  }

  v8 = v21;
  v9 = v22;
  v17 = v21;
  v18 = v22;
  sub_268D291D4();
  MEMORY[0x277D82BE0](a5);
  v15 = a5;
  if (a5)
  {
    v16 = v15;
  }

  else
  {
    v16 = sub_268F2CB30(a3);
  }

  v7 = v16;
  MEMORY[0x277D82BE0](a4);
  return sub_268F2B620(v8, v9, v7, a4);
}

id sub_268F28680(uint64_t a1, int a2)
{
  v15 = a1;
  v16 = a2;
  v27 = 0;
  v26 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE368, &unk_268FAA5B0);
  v17 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v18 = &v8 - v17;
  v27 = a1;
  v26 = v4 & 1;
  if (sub_268E490CC())
  {
    v13 = 0;
    v14 = 0;
  }

  else
  {
    v13 = sub_268E461E4();
    v14 = v5;
  }

  v22 = v13;
  v23 = v14;
  if (v14)
  {
    v24 = v22;
    v25 = v23;
  }

  else
  {
    v24 = sub_268F9AEF4();
    v25 = v6;
    if (v23)
    {
      sub_268CD9D30(&v22);
    }
  }

  v12 = sub_268E460CC();
  v20 = v12;
  v21 = 0;
  if (v12)
  {
    v11 = 0;
  }

  else
  {
    v19 = v12;
    sub_268E4A500();
    v11 = sub_268F9AE04();
  }

  if (v11)
  {
    return sub_268F2D9F0();
  }

  sub_268E49064();
  v9 = sub_268F2DFA4(v18);
  sub_268F32884(v18);
  return v9;
}

BOOL sub_268F288D0(uint64_t a1, uint64_t a2)
{
  v9[4] = a1;
  v9[5] = a2;
  v5 = *sub_268F2BDEC();

  v9[0] = a1;
  v9[1] = a2;
  sub_268F9ADC4();
  sub_268CD9D30(v9);
  v6 = v9[2];
  v7 = v9[3];

  v8[0] = v6;
  v8[1] = v7;
  sub_268CD9D30(v8);
  return v7 != 0;
}

uint64_t sub_268F289C0()
{
  v25 = 0;
  v24 = 0;
  v6 = 0;
  v17 = sub_268F99E34();
  v15 = *(v17 - 8);
  v16 = v17 - 8;
  v5 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v18 = &v4 - v5;
  v25 = &v4 - v5;
  v7 = (*(*(sub_268F99CD4() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v10 = &v4 - v7;
  v20 = sub_268F99DE4();
  v11 = *(v20 - 8);
  v12 = v20 - 8;
  v8 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v20);
  v13 = &v4 - v8;
  v9 = (v0 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v4 - v8);
  v19 = &v4 - v9;
  v24 = &v4 - v9;
  sub_268F99DD4();
  sub_268F99CC4();
  sub_268F99DA4();
  (*(v11 + 16))(v13, v19, v20);
  sub_268F325B4(v13, v18);
  v22 = *(v11 + 8);
  v21 = v11 + 8;
  v22(v13, v20);
  v14 = sub_268F9B734();
  (*(v15 + 16))(v1, v18, v17);
  v2 = v14;
  sub_268CD0F7C();
  v23 = v2;
  (*(v15 + 8))(v18, v17);
  v22(v19, v20);
  return v23;
}

uint64_t sub_268F28C88(uint64_t a1, uint64_t a2)
{
  v5[1] = a1;
  v5[2] = a2;
  v3 = *sub_268F2C54C();

  v5[0] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC560, qword_268FA0000);
  sub_268DA6BFC();
  v4 = sub_268F9AFC4();
  sub_268CD7930(v5);
  return v4 & 1;
}

uint64_t sub_268F28D48(uint64_t a1)
{
  v54 = a1;
  v50 = "ConverterUtils | Attempting to convert user entity: %@.";
  v39 = sub_268F2D5DC;
  v40 = "ConverterUtils | Could not determine target device from user entity.";
  v59 = 0;
  v56 = 0;
  v57 = 0;
  v41 = 0;
  v42 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7C8, &qword_268FA3290) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v54);
  v43 = v14 - v42;
  v59 = v1;
  v51 = sub_268F9B284();
  v53 = *sub_268DC7EA8();
  MEMORY[0x277D82BE0](v53);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v49 = sub_268F9B734();
  v47 = v2;

  v44 = &v58;
  v58 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE370, &unk_268FAA5C0);
  v45 = sub_268F9AE64();
  v46 = v3;
  v47[3] = MEMORY[0x277D837D0];
  v4 = sub_268CDD224();
  v5 = v45;
  v6 = v46;
  v7 = v47;
  v8 = v4;
  v9 = v49;
  v47[4] = v8;
  *v7 = v5;
  v7[1] = v6;
  sub_268CD0F7C();
  v52 = v9;
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v53);

  if (!v54)
  {
    goto LABEL_13;
  }

  v38 = v54;
  v36 = v54;
  sub_268F9AEF4();
  v35 = v10;
  v37 = sub_268F9A0A4();

  if (!v37)
  {
    goto LABEL_13;
  }

  v34 = v37;
  v11 = v41;
  v55 = v37;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
  sub_268DA5FC0();
  result = sub_268F9AF94();
  if (v11)
  {
    __break(1u);
    return result;
  }

  sub_268CD7930(&v55);
  v30 = sub_268F99F64();
  v31 = *(v30 - 8);
  v32 = v30 - 8;
  if ((*(v31 + 48))(v43, 1) == 1)
  {
    sub_268D9C0BC(v43);
LABEL_13:
    v28 = 0;
    v29 = 0;
    goto LABEL_11;
  }

  v26 = sub_268F99F44();
  v27 = v13;
  (*(v31 + 8))(v43, v30);
  v28 = v26;
  v29 = v27;
LABEL_11:
  v24 = v29;
  v25 = v28;
  if (v29)
  {
    v22 = v25;
    v23 = v24;
    v19 = v24;
    v18 = v25;
    v56 = v25;
    v57 = v24;

    v20 = sub_268F2B6D8(v18, v19);

    return v20;
  }

  else
  {
    v14[1] = sub_268F9B284();
    v16 = *sub_268DC7EA8();
    MEMORY[0x277D82BE0](v16);
    v17 = 0;
    v15 = sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v16);
    return v17;
  }
}