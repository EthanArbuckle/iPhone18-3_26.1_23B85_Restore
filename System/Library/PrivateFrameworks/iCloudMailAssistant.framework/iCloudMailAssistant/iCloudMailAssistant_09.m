uint64_t sub_21496F778()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA1B600, &qword_214995ED8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v20 - v4;
  v6 = sub_21498E690();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v6, qword_281194E18);
  (*(v7 + 16))(v10, v11, v6);
  v12 = sub_21498E670();
  v13 = sub_21498FBA0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_21488E000, v12, v13, "[DataStore] saving...", v14, 2u);
    MEMORY[0x216059AC0](v14, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  sub_21496C7C0();
  v15 = sub_2148E3404();

  if (v15)
  {
    if (sub_21496C3B4())
    {
      sub_21498F5D0();
    }

    v20[0] = *(v1 + OBJC_IVAR____TtCCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel9DataStore____lazy_storage___dataModel);
    v17 = v20[0];
    swift_getKeyPath();
    sub_214976158(&qword_281191F48, type metadata accessor for MailCleanupSchemaV1.DataModel);

    sub_21498E3D0();

    swift_getKeyPath();
    sub_214976158(&qword_281191F50, type metadata accessor for MailCleanupSchemaV1.DataModel);
    sub_214976158(&qword_281192040, type metadata accessor for MailCleanupState);
    sub_21498F6A0();

    v18 = type metadata accessor for MailCleanupState();
    (*(*(v18 - 8) + 56))(v5, 0, 1, v18);
    v19 = OBJC_IVAR____TtCO19iCloudMailAssistant19MailCleanupSchemaV19DataModel_persistedState;
    swift_beginAccess();
    sub_214975FF0(v5, v17 + v19);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_21496FB38()
{
  v1[16] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABA0, &qword_214993E20) - 8) + 64) + 15;
  v1[17] = swift_task_alloc();
  v3 = sub_21498E320();
  v1[18] = v3;
  v4 = *(v3 - 8);
  v1[19] = v4;
  v5 = *(v4 + 64) + 15;
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v6 = sub_21498E690();
  v1[23] = v6;
  v7 = *(v6 - 8);
  v1[24] = v7;
  v8 = *(v7 + 64) + 15;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  if (qword_281191B88 != -1)
  {
    swift_once();
  }

  v9 = qword_281194E50;
  v1[28] = qword_281194E50;

  return MEMORY[0x2822009F8](sub_21496FCF4, v9, 0);
}

uint64_t sub_21496FCF4()
{
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v1 = v0[27];
  v2 = v0[23];
  v3 = v0[24];
  v4 = __swift_project_value_buffer(v2, qword_281194E18);
  v0[29] = v4;
  v5 = *(v3 + 16);
  v0[30] = v5;
  v0[31] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_21498E670();
  v7 = sub_21498FBA0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_21488E000, v6, v7, "[DataStore] loadTipsAndDashboardEntrypointInfo()", v8, 2u);
    MEMORY[0x216059AC0](v8, -1, -1);
  }

  v9 = v0[27];
  v10 = v0[23];
  v11 = v0[24];
  v12 = v0[22];
  v13 = v0[16];

  v14 = *(v11 + 8);
  v0[32] = v14;
  v14(v9, v10);
  sub_21498E310();
  v15 = *__swift_project_boxed_opaque_existential_1((v13 + 16), *(v13 + 40));
  v16 = swift_task_alloc();
  v0[33] = v16;
  *v16 = v0;
  v16[1] = sub_21496FEC0;

  return sub_214937B00((v0 + 2), 1);
}

uint64_t sub_21496FEC0()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v4 = *v1;
  *(*v1 + 272) = v0;

  v5 = *(v2 + 224);
  if (v0)
  {
    v6 = sub_214970438;
  }

  else
  {
    v6 = sub_21496FFEC;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_21496FFEC()
{
  v53 = v0;
  v1 = v0;
  v2 = *(v0 + 248);
  (*(v0 + 240))(*(v0 + 208), *(v0 + 232), *(v0 + 184));
  v4 = *(v0 + 16);
  v3 = v0 + 16;
  v5 = *(v3 + 24);
  *(v3 + 48) = *(v3 + 8);
  *(v3 + 64) = v5;

  sub_2148AA824(v3 + 48, v3 + 80, &qword_27CA1AB18, &unk_21499A610);
  sub_2148AA824(v3 + 64, v3 + 96, &qword_27CA1AB18, &unk_21499A610);
  v6 = sub_21498E670();
  v7 = sub_21498FBA0();

  sub_21489DFCC(v3 + 48, &qword_27CA1AB18, &unk_21499A610);
  sub_21489DFCC(v3 + 64, &qword_27CA1AB18, &unk_21499A610);
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v3 + 240);
  v10 = v1[26];
  v11 = *(v3 + 176);
  v12 = v1[23];
  if (v8)
  {
    v51 = v1[26];
    v13 = swift_slowAlloc();
    v50 = v12;
    v14 = swift_slowAlloc();
    v52 = v14;
    *v13 = 136315138;

    v49 = v9;
    v16 = MEMORY[0x216058A90](v15, &type metadata for MATip);
    v18 = v17;

    v19 = sub_2149079F4(v16, v18, &v52);

    *(v13 + 4) = v19;
    _os_log_impl(&dword_21488E000, v6, v7, "[DataStore] loadTipsAndDashboardEntrypointInfo - got: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x216059AC0](v14, -1, -1);
    MEMORY[0x216059AC0](v13, -1, -1);

    v49(v51, v50);
  }

  else
  {

    v9(v10, v12);
  }

  v20 = v1[22];
  v21 = v1[18];
  v22 = v1[19];
  v24 = v1[16];
  v23 = v1[17];
  sub_21496C7C0();
  v25 = swift_task_alloc();
  *(v25 + 16) = v3;
  *(v25 + 24) = v20;
  sub_2148E3C1C(sub_214975FE8, v25);

  sub_21489DFCC(v3 + 48, &qword_27CA1AB18, &unk_21499A610);
  sub_21489DFCC(v3 + 64, &qword_27CA1AB18, &unk_21499A610);

  v26 = *(v24 + 72);
  sub_214976218(v23);
  if ((*(v22 + 48))(v23, 1, v21) == 1)
  {
    sub_21489DFCC(v1[17], &qword_27CA1ABA0, &qword_214993E20);
  }

  else
  {
    v27 = v1[20];
    v29 = v1[18];
    v28 = v1[19];
    (*(v28 + 32))(v1[21], v1[17], v29);
    sub_21498E310();
    v30 = sub_21498E2C0();
    v31 = *(v28 + 8);
    v31(v27, v29);
    if (v30)
    {
      v33 = v1[21];
      v32 = v1[22];
      v34 = v1[18];
      v35 = sub_21498E2B0();
      v36 = *&v26[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_tipsStaleSinceKey];
      v37 = *&v26[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_tipsStaleSinceKey + 8];
      v38 = sub_21498F840();
      [v26 setValue:v35 forKey:v38];

      v39 = v33;
      v40 = v34;
    }

    else
    {
      v39 = v1[21];
      v40 = v1[18];
    }

    v31(v39, v40);
  }

  v41 = v1[26];
  v42 = v1[27];
  v43 = v1[25];
  v44 = v1[21];
  v45 = v1[20];
  v46 = v1[17];
  (*(v1[19] + 8))(v1[22], v1[18]);

  v47 = v1[1];

  return v47();
}

uint64_t sub_214970438()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 248);
  (*(v0 + 240))(*(v0 + 200), *(v0 + 232), *(v0 + 184));
  v3 = v1;
  v4 = sub_21498E670();
  v5 = sub_21498FBB0();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 272);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_21488E000, v4, v5, "[DataStore] loadTipsAndDashboardEntrypointInfo - error: %@", v8, 0xCu);
    sub_21489DFCC(v9, &qword_27CA1A8F8, &unk_2149938A0);
    MEMORY[0x216059AC0](v9, -1, -1);
    MEMORY[0x216059AC0](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 192) + 8;
  (*(v0 + 256))(*(v0 + 200), *(v0 + 184));
  v13 = *(v0 + 208);
  v14 = *(v0 + 216);
  v15 = *(v0 + 200);
  v16 = *(v0 + 168);
  v17 = *(v0 + 160);
  v18 = *(v0 + 136);
  (*(*(v0 + 152) + 8))(*(v0 + 176), *(v0 + 144));

  v19 = *(v0 + 8);

  return v19();
}

double sub_214970630@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  sub_214975F78(a1, a4, type metadata accessor for MailCleanupState);
  v7 = *a2;
  v8 = *a4;

  *a4 = v7;
  v9 = type metadata accessor for MailCleanupState();
  v10 = v9[5];
  sub_21489DFCC(&a4[v10], &qword_27CA1ABA0, &qword_214993E20);
  v11 = sub_21498E320();
  v12 = *(v11 - 8);
  v13 = *(v12 + 16);
  v13(&a4[v10], a3, v11);
  v14 = *(v12 + 56);
  v14(&a4[v10], 0, 1, v11);
  v15 = v9[16];
  sub_21489DFCC(&a4[v15], &qword_27CA1ABA0, &qword_214993E20);
  v13(&a4[v15], a3, v11);
  v14(&a4[v15], 0, 1, v11);
  v20 = *(a2 + 3);
  v16 = &a4[v9[15]];
  v17 = *(v16 + 1);
  sub_2148AA824(&v20, &v19, &qword_27CA1AB18, &unk_21499A610);

  result = *&v20;
  *v16 = v20;
  return result;
}

uint64_t sub_2149707E4()
{
  v1[2] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABA0, &qword_214993E20) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = sub_21498E320();
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v6 = sub_21498E690();
  v1[8] = v6;
  v7 = *(v6 - 8);
  v1[9] = v7;
  v8 = *(v7 + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  if (qword_281191B88 != -1)
  {
    swift_once();
  }

  v9 = qword_281194E50;
  v1[12] = qword_281194E50;

  return MEMORY[0x2822009F8](sub_214970988, v9, 0);
}

uint64_t sub_214970988()
{
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = __swift_project_value_buffer(v2, qword_281194E18);
  v0[13] = v4;
  v5 = *(v3 + 16);
  v0[14] = v5;
  v0[15] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_21498E670();
  v7 = sub_21498FBA0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_21488E000, v6, v7, "[DataStore] loadBlockAndAutomationRules()", v8, 2u);
    MEMORY[0x216059AC0](v8, -1, -1);
  }

  v9 = v0[11];
  v10 = v0[8];
  v11 = v0[9];
  v12 = v0[7];
  v13 = v0[2];

  v14 = *(v11 + 8);
  v0[16] = v14;
  v14(v9, v10);
  sub_21498E310();
  v15 = *__swift_project_boxed_opaque_existential_1((v13 + 16), *(v13 + 40));
  v16 = swift_task_alloc();
  v0[17] = v16;
  *v16 = v0;
  v16[1] = sub_214970B54;

  return sub_214933DA0(&unk_2826C4430);
}

uint64_t sub_214970B54(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 136);
  v6 = *v2;
  v4[18] = v1;

  v7 = v4[12];
  if (v1)
  {
    v8 = sub_214970EB8;
  }

  else
  {
    v4[19] = a1;
    v8 = sub_214970C90;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_214970C90()
{
  v1 = v0[19];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  v5 = v0[3];
  sub_21496C7C0();
  v7 = swift_task_alloc();
  *(v7 + 16) = v1;
  *(v7 + 24) = v2;
  sub_2148E3C1C(sub_214975FE0, v7);

  v8 = *(v6 + 72);
  sub_214976374(v5);
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    v9 = v0[5];
    sub_21489DFCC(v0[3], &qword_27CA1ABA0, &qword_214993E20);
    v10 = *(v9 + 8);
  }

  else
  {
    v11 = v0[7];
    (*(v0[5] + 32))(v0[6], v0[3], v0[4]);
    if (sub_21498E2C0())
    {
      v13 = v0[6];
      v12 = v0[7];
      v14 = v0[4];
      v15 = v0[5];
      v16 = sub_21498E2B0();
      v17 = *&v8[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_rulesStaleSinceKey];
      v18 = *&v8[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_rulesStaleSinceKey + 8];
      v19 = sub_21498F840();
      [v8 setValue:v16 forKey:v19];

      v10 = *(v15 + 8);
      v10(v13, v14);
    }

    else
    {
      v10 = *(v0[5] + 8);
      v10(v0[6], v0[4]);
    }
  }

  v20 = v0[10];
  v21 = v0[11];
  v22 = v0[6];
  v23 = v0[3];
  v10(v0[7], v0[4]);

  v24 = v0[1];

  return v24();
}

uint64_t sub_214970EB8()
{
  v1 = *(v0 + 144);
  v3 = *(v0 + 112);
  v2 = *(v0 + 120);
  v4 = *(v0 + 104);
  v5 = *(v0 + 80);
  v6 = *(v0 + 64);
  (*(*(v0 + 40) + 8))(*(v0 + 56), *(v0 + 32));
  v3(v5, v4, v6);
  v7 = v1;
  v8 = sub_21498E670();
  v9 = sub_21498FBA0();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 144);
  if (v10)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = v11;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_21488E000, v8, v9, "[DataStore] loadBlockAndAutomationRules - error: %@", v12, 0xCu);
    sub_21489DFCC(v13, &qword_27CA1A8F8, &unk_2149938A0);
    MEMORY[0x216059AC0](v13, -1, -1);
    MEMORY[0x216059AC0](v12, -1, -1);
  }

  else
  {
  }

  v16 = *(v0 + 72) + 8;
  v17 = *(v0 + 88);
  v19 = *(v0 + 48);
  v18 = *(v0 + 56);
  v20 = *(v0 + 24);
  (*(v0 + 128))(*(v0 + 80), *(v0 + 64));

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_21497109C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_214975F78(a1, a4, type metadata accessor for MailCleanupState);
  v6 = *(a2 + 16);
  v48 = a2;
  if (v6)
  {
    v7 = 0;
    v8 = a2 + 32;
    v9 = MEMORY[0x277D84F90];
    v50 = a2 + 32;
    do
    {
      v10 = (v8 + 112 * v7);
      v11 = v7;
      while (1)
      {
        if (v11 >= v6)
        {
          __break(1u);
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        v12 = v10[5];
        v59 = v10[4];
        v60 = v12;
        v61 = v10[6];
        v13 = v10[1];
        v55 = *v10;
        v56 = v13;
        v14 = v10[3];
        v57 = v10[2];
        v58 = v14;
        v7 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_39;
        }

        if (v57 && v57 != 2)
        {
          break;
        }

        v15 = sub_214990080();
        sub_2148D9164(&v55, v54);

        if (v15)
        {
          goto LABEL_12;
        }

        result = sub_2149504C4(&v55);
        ++v11;
        v10 += 7;
        if (v7 == v6)
        {
          goto LABEL_19;
        }
      }

      sub_2148D9164(&v55, v54);

LABEL_12:
      result = swift_isUniquelyReferenced_nonNull_native();
      v62 = v9;
      if ((result & 1) == 0)
      {
        result = sub_2148A9D20(0, *(v9 + 16) + 1, 1);
        v9 = v62;
      }

      v17 = *(v9 + 16);
      v16 = *(v9 + 24);
      if (v17 >= v16 >> 1)
      {
        result = sub_2148A9D20((v16 > 1), v17 + 1, 1);
        v9 = v62;
      }

      *(v9 + 16) = v17 + 1;
      v18 = (v9 + 112 * v17);
      v19 = v55;
      v20 = v57;
      v18[3] = v56;
      v18[4] = v20;
      v18[2] = v19;
      v21 = v58;
      v22 = v59;
      v23 = v61;
      v18[7] = v60;
      v18[8] = v23;
      v18[5] = v21;
      v18[6] = v22;
      v8 = v50;
    }

    while (v7 != v6);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

LABEL_19:
  v51 = type metadata accessor for MailCleanupState();
  v24 = v51[11];
  v25 = *(a4 + v24);

  *(a4 + v24) = v9;
  if (v6)
  {
    v26 = 0;
    v27 = v48 + 32;
    v28 = MEMORY[0x277D84F90];
    v49 = v48 + 32;
LABEL_21:
    v29 = (v27 + 112 * v26);
    v30 = v26;
    while (v30 < v6)
    {
      v31 = v29[5];
      v59 = v29[4];
      v60 = v31;
      v61 = v29[6];
      v32 = v29[1];
      v55 = *v29;
      v56 = v32;
      v33 = v29[3];
      v57 = v29[2];
      v58 = v33;
      v26 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        goto LABEL_41;
      }

      if (v57 && v57 != 1)
      {
        sub_2148D9164(&v55, v54);

LABEL_30:
        result = swift_isUniquelyReferenced_nonNull_native();
        v62 = v28;
        if ((result & 1) == 0)
        {
          result = sub_2148A9D20(0, *(v28 + 16) + 1, 1);
          v28 = v62;
        }

        v36 = *(v28 + 16);
        v35 = *(v28 + 24);
        if (v36 >= v35 >> 1)
        {
          result = sub_2148A9D20((v35 > 1), v36 + 1, 1);
          v28 = v62;
        }

        *(v28 + 16) = v36 + 1;
        v37 = (v28 + 112 * v36);
        v38 = v55;
        v39 = v57;
        v37[3] = v56;
        v37[4] = v39;
        v37[2] = v38;
        v40 = v58;
        v41 = v59;
        v42 = v61;
        v37[7] = v60;
        v37[8] = v42;
        v37[5] = v40;
        v37[6] = v41;
        v27 = v49;
        if (v26 != v6)
        {
          goto LABEL_21;
        }

        goto LABEL_37;
      }

      v34 = sub_214990080();
      sub_2148D9164(&v55, v54);

      if (v34)
      {
        goto LABEL_30;
      }

      result = sub_2149504C4(&v55);
      ++v30;
      v29 += 7;
      if (v26 == v6)
      {
        goto LABEL_37;
      }
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }

  else
  {
    v28 = MEMORY[0x277D84F90];
LABEL_37:
    v43 = v51[12];
    v44 = *(a4 + v43);

    *(a4 + v43) = v28;
    v45 = v51[13];
    sub_21489DFCC(a4 + v45, &qword_27CA1ABA0, &qword_214993E20);
    v46 = sub_21498E320();
    v47 = *(v46 - 8);
    (*(v47 + 16))(a4 + v45, a3, v46);
    return (*(v47 + 56))(a4 + v45, 0, 1, v46);
  }

  return result;
}

uint64_t sub_214971514()
{
  v1[9] = v0;
  v2 = sub_21498E690();
  v1[10] = v2;
  v3 = *(v2 - 8);
  v1[11] = v3;
  v4 = *(v3 + 64) + 15;
  v1[12] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABA0, &qword_214993E20) - 8) + 64) + 15;
  v1[13] = swift_task_alloc();
  v6 = sub_21498E320();
  v1[14] = v6;
  v7 = *(v6 - 8);
  v1[15] = v7;
  v8 = *(v7 + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  if (qword_281191B88 != -1)
  {
    swift_once();
  }

  v9 = qword_281194E50;
  v1[18] = qword_281194E50;

  return MEMORY[0x2822009F8](sub_2149716AC, v9, 0);
}

uint64_t sub_2149716AC()
{
  v1 = v0[17];
  v2 = v0[9];
  sub_21498E310();
  v3 = *__swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  v4 = swift_task_alloc();
  v0[19] = v4;
  *v4 = v0;
  v4[1] = sub_21497175C;

  return sub_21493A124((v0 + 2));
}

uint64_t sub_21497175C()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = v0;

  v5 = *(v2 + 144);
  if (v0)
  {
    v6 = sub_214971AAC;
  }

  else
  {
    v6 = sub_214971888;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_214971888()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[13];
  v5 = v0[9];
  sub_21496C7C0();
  v6 = swift_task_alloc();
  *(v6 + 16) = v0 + 2;
  *(v6 + 24) = v1;
  sub_2148E3C1C(sub_214975F70, v6);
  sub_21492BB98((v0 + 2));

  v7 = *(v5 + 72);
  sub_21497620C(v4);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v8 = v0[15];
    sub_21489DFCC(v0[13], &qword_27CA1ABA0, &qword_214993E20);
    v9 = *(v8 + 8);
  }

  else
  {
    v10 = v0[17];
    (*(v0[15] + 32))(v0[16], v0[13], v0[14]);
    if (sub_21498E2C0())
    {
      v12 = v0[16];
      v11 = v0[17];
      v13 = v0[14];
      v14 = v0[15];
      v15 = sub_21498E2B0();
      v16 = *&v7[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_preferencesStaleSinceKey];
      v17 = *&v7[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_preferencesStaleSinceKey + 8];
      v18 = sub_21498F840();
      [v7 setValue:v15 forKey:v18];

      v9 = *(v14 + 8);
      v9(v12, v13);
    }

    else
    {
      v9 = *(v0[15] + 8);
      v9(v0[16], v0[14]);
    }
  }

  v19 = v0[13];
  v20 = v0[16];
  v21 = v0[12];
  v9(v0[17], v0[14]);

  v22 = v0[1];

  return v22();
}

uint64_t sub_214971AAC()
{
  (*(v0[15] + 8))(v0[17], v0[14]);
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];
  v5 = __swift_project_value_buffer(v4, qword_281194E18);
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_21498E670();
  v8 = sub_21498FBA0();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[20];
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v10;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_21488E000, v7, v8, "[DataStore] loadPreferences - error: %@", v11, 0xCu);
    sub_21489DFCC(v12, &qword_27CA1A8F8, &unk_2149938A0);
    MEMORY[0x216059AC0](v12, -1, -1);
    MEMORY[0x216059AC0](v11, -1, -1);
  }

  else
  {
  }

  v15 = v0[16];
  v16 = v0[17];
  v17 = v0[13];
  (*(v0[11] + 8))(v0[12], v0[10]);

  v18 = v0[1];

  return v18();
}

uint64_t sub_214971CC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_214975F78(a1, a4, type metadata accessor for MailCleanupState);
  v7 = *(a2 + 8);
  v8 = *(a2 + 32);
  v9 = *(a2 + 48);
  if (v7 == 1 || v8 == 0)
  {
    *(a4 + *(type metadata accessor for MailCleanupState() + 36)) = 0;
    if (v7 == 1 || v9 == 2)
    {
LABEL_19:
      v12 = type metadata accessor for MailCleanupState();
      v14 = 1;
      *(a4 + v12[7]) = 1;
      goto LABEL_21;
    }
  }

  else
  {
    v15 = *(a2 + 24);
    v16 = v15 == 0x6465747065636341 && v8 == 0xE800000000000000;
    if (v16 || (sub_214990080() & 1) != 0)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
      if (v15 != 0x64656E696C636544 || v8 != 0xE800000000000000)
      {
        if (sub_214990080())
        {
          v17 = 2;
        }

        else
        {
          v17 = 3;
        }
      }
    }

    *(a4 + *(type metadata accessor for MailCleanupState() + 36)) = v17;
    if (v9 == 2)
    {
      goto LABEL_19;
    }
  }

  v12 = type metadata accessor for MailCleanupState();
  v13 = v12[7];
  v14 = 0;
  *(a4 + v13) = (v9 & 1) != 0;
LABEL_21:
  *(a4 + v12[8]) = v14;
  type metadata accessor for MailCleanupState();
  v18 = v12[10];
  sub_21489DFCC(a4 + v18, &qword_27CA1ABA0, &qword_214993E20);
  v19 = sub_21498E320();
  v22 = *(v19 - 8);
  (*(v22 + 16))(a4 + v18, a3, v19);
  v20 = *(v22 + 56);

  return v20(a4 + v18, 0, 1, v19);
}

uint64_t sub_214971EE8(char a1, char a2)
{
  *(v3 + 24) = v2;
  *(v3 + 105) = a2;
  *(v3 + 104) = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABA0, &qword_214993E20) - 8) + 64) + 15;
  *(v3 + 32) = swift_task_alloc();
  *(v3 + 40) = swift_task_alloc();
  v5 = type metadata accessor for MailCleanupState();
  *(v3 + 48) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v3 + 56) = swift_task_alloc();
  v7 = sub_21498E690();
  *(v3 + 64) = v7;
  v8 = *(v7 - 8);
  *(v3 + 72) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 88) = swift_task_alloc();
  if (qword_281191B88 != -1)
  {
    swift_once();
  }

  v10 = qword_281194E50;

  return MEMORY[0x2822009F8](sub_214972064, v10, 0);
}

uint64_t sub_214972064()
{
  v46 = v0;
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  v40 = __swift_project_value_buffer(*(v0 + 64), qword_281194E18);
  v39 = *(v2 + 16);
  v39(v1);
  v3 = sub_21498E670();
  v4 = sub_21498FBA0();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 88);
  v8 = *(v0 + 64);
  v7 = *(v0 + 72);
  if (v5)
  {
    v9 = *(v0 + 104);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v45 = v11;
    *v10 = 136315138;
    if (v9)
    {
      v12 = 0x646563726F66;
    }

    else
    {
      v12 = 0;
    }

    if (v9)
    {
      v13 = 0xE600000000000000;
    }

    else
    {
      v13 = 0xE000000000000000;
    }

    v14 = sub_2149079F4(v12, v13, &v45);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_21488E000, v3, v4, "[DataStore] syncBlockRules(%s)", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x216059AC0](v11, -1, -1);
    MEMORY[0x216059AC0](v10, -1, -1);
  }

  v38 = *(v7 + 8);
  v38(v6, v8);
  if (*(v0 + 105) == 1)
  {
    v15 = *__swift_project_boxed_opaque_existential_1((*(v0 + 24) + 16), *(*(v0 + 24) + 40));
    v44 = sub_21493B060(0xD00000000000003ELL, 0x80000002149A3670);
    v16 = *(v0 + 105) ^ 1;
  }

  else
  {
    v44 = 0;
    v16 = 1;
  }

  v43 = v16;
  v17 = *(v0 + 56);
  v41 = *(v0 + 48);
  v19 = *(v0 + 32);
  v18 = *(v0 + 40);
  v20 = *(v0 + 24);
  v42 = *(v0 + 104);
  *(v0 + 16) = sub_21496C7C0();
  swift_getKeyPath();
  sub_214976158(&qword_281191F48, type metadata accessor for MailCleanupSchemaV1.DataModel);
  sub_21498E3D0();

  swift_getKeyPath();
  sub_214976158(&qword_281191F50, type metadata accessor for MailCleanupSchemaV1.DataModel);
  sub_214976158(&qword_281192040, type metadata accessor for MailCleanupState);
  sub_21498F6A0();

  sub_2148AA824(v17 + *(v41 + 52), v18, &qword_27CA1ABA0, &qword_214993E20);
  sub_214950444(v17, type metadata accessor for MailCleanupState);
  v21 = *(v20 + 72);
  sub_214976374(v19);
  LOBYTE(v21) = sub_214974D58(v42, v44, v43 & 1, v18, v19, 0);
  sub_21489DFCC(v19, &qword_27CA1ABA0, &qword_214993E20);
  sub_21489DFCC(v18, &qword_27CA1ABA0, &qword_214993E20);
  if (v21)
  {
    v22 = swift_task_alloc();
    *(v0 + 96) = v22;
    *v22 = v0;
    v22[1] = sub_2149725BC;
    v23 = *(v0 + 24);

    return sub_2149707E4();
  }

  else
  {
    (v39)(*(v0 + 80), v40, *(v0 + 64));
    v25 = sub_21498E670();
    v26 = sub_21498FBA0();
    v27 = os_log_type_enabled(v25, v26);
    v29 = *(v0 + 72);
    v28 = *(v0 + 80);
    v30 = *(v0 + 64);
    if (v27)
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_21488E000, v25, v26, "[DataStore] syncBlockRules - no need to refresh block rules", v31, 2u);
      MEMORY[0x216059AC0](v31, -1, -1);
    }

    v38(v28, v30);
    v33 = *(v0 + 80);
    v32 = *(v0 + 88);
    v34 = *(v0 + 56);
    v36 = *(v0 + 32);
    v35 = *(v0 + 40);

    v37 = *(v0 + 8);

    return v37();
  }
}

uint64_t sub_2149725BC()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v10 = *v0;

  v3 = v1[11];
  v4 = v1[10];
  v5 = v1[7];
  v6 = v1[5];
  v7 = v1[4];

  v8 = *(v10 + 8);

  return v8();
}

uint64_t sub_21497274C(char a1, char a2)
{
  *(v3 + 24) = v2;
  *(v3 + 153) = a2;
  *(v3 + 152) = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABA0, &qword_214993E20) - 8) + 64) + 15;
  *(v3 + 32) = swift_task_alloc();
  *(v3 + 40) = swift_task_alloc();
  v5 = type metadata accessor for MailCleanupState();
  *(v3 + 48) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v3 + 56) = swift_task_alloc();
  v7 = sub_21498E690();
  *(v3 + 64) = v7;
  v8 = *(v7 - 8);
  *(v3 + 72) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 88) = swift_task_alloc();
  if (qword_281191B88 != -1)
  {
    swift_once();
  }

  v10 = qword_281194E50;
  *(v3 + 96) = qword_281194E50;

  return MEMORY[0x2822009F8](sub_2149728CC, v10, 0);
}

uint64_t sub_2149728CC()
{
  v23 = v0;
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = __swift_project_value_buffer(v2, qword_281194E18);
  *(v0 + 104) = v4;
  v5 = *(v3 + 16);
  *(v0 + 112) = v5;
  *(v0 + 120) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_21498E670();
  v7 = sub_21498FBA0();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 88);
  v10 = *(v0 + 64);
  v11 = *(v0 + 72);
  if (v8)
  {
    v12 = *(v0 + 152);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 136315138;
    if (v12)
    {
      v15 = 0x646563726F66;
    }

    else
    {
      v15 = 0;
    }

    if (v12)
    {
      v16 = 0xE600000000000000;
    }

    else
    {
      v16 = 0xE000000000000000;
    }

    v17 = sub_2149079F4(v15, v16, &v22);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_21488E000, v6, v7, "[DataStore] syncTips(%s)", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x216059AC0](v14, -1, -1);
    MEMORY[0x216059AC0](v13, -1, -1);
  }

  v18 = *(v11 + 8);
  v18(v9, v10);
  *(v0 + 128) = v18;
  v19 = swift_task_alloc();
  *(v0 + 136) = v19;
  *v19 = v0;
  v19[1] = sub_214972AF4;
  v20 = *(v0 + 24);

  return sub_214973874();
}

uint64_t sub_214972AF4(char a1)
{
  v2 = *(*v1 + 136);
  v3 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 154) = a1;

  return MEMORY[0x2822009F8](sub_214972C0C, v3, 0);
}

uint64_t sub_214972C0C()
{
  if (*(v0 + 153) == 1)
  {
    v1 = *__swift_project_boxed_opaque_existential_1((*(v0 + 24) + 16), *(*(v0 + 24) + 40));
    v30 = sub_21493B060(0xD00000000000003BLL, 0x80000002149A15B0);
    v2 = *(v0 + 153) ^ 1;
  }

  else
  {
    v30 = 0;
    v2 = 1;
  }

  v29 = v2;
  v3 = *(v0 + 56);
  v26 = *(v0 + 48);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = *(v0 + 24);
  v27 = *(v0 + 152);
  v28 = *(v0 + 154);
  *(v0 + 16) = sub_21496C7C0();
  swift_getKeyPath();
  sub_214976158(&qword_281191F48, type metadata accessor for MailCleanupSchemaV1.DataModel);
  sub_21498E3D0();

  swift_getKeyPath();
  sub_214976158(&qword_281191F50, type metadata accessor for MailCleanupSchemaV1.DataModel);
  sub_214976158(&qword_281192040, type metadata accessor for MailCleanupState);
  sub_21498F6A0();

  sub_2148AA824(v3 + *(v26 + 20), v4, &qword_27CA1ABA0, &qword_214993E20);
  sub_214950444(v3, type metadata accessor for MailCleanupState);
  v7 = *(v6 + 72);
  sub_214976218(v5);
  LOBYTE(v7) = sub_214974D58(v27, v30, v29 & 1, v4, v5, v28);
  sub_21489DFCC(v5, &qword_27CA1ABA0, &qword_214993E20);
  sub_21489DFCC(v4, &qword_27CA1ABA0, &qword_214993E20);
  if (v7)
  {
    v8 = swift_task_alloc();
    *(v0 + 144) = v8;
    *v8 = v0;
    v8[1] = sub_214972FF0;
    v9 = *(v0 + 24);

    return sub_21496FB38();
  }

  else
  {
    v11 = *(v0 + 120);
    (*(v0 + 112))(*(v0 + 80), *(v0 + 104), *(v0 + 64));
    v12 = sub_21498E670();
    v13 = sub_21498FBA0();
    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 128);
    v17 = *(v0 + 72);
    v16 = *(v0 + 80);
    v18 = *(v0 + 64);
    if (v14)
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_21488E000, v12, v13, "[DataStore] syncTips - no need to refresh tips", v19, 2u);
      MEMORY[0x216059AC0](v19, -1, -1);
    }

    v15(v16, v18);
    v21 = *(v0 + 80);
    v20 = *(v0 + 88);
    v22 = *(v0 + 56);
    v24 = *(v0 + 32);
    v23 = *(v0 + 40);

    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_214972FF0()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v10 = *v0;

  v3 = v1[11];
  v4 = v1[10];
  v5 = v1[7];
  v6 = v1[5];
  v7 = v1[4];

  v8 = *(v10 + 8);

  return v8();
}

uint64_t sub_214973180(char a1, char a2)
{
  *(v3 + 24) = v2;
  *(v3 + 97) = a2;
  *(v3 + 96) = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABA0, &qword_214993E20) - 8) + 64) + 15;
  *(v3 + 32) = swift_task_alloc();
  *(v3 + 40) = swift_task_alloc();
  v5 = type metadata accessor for MailCleanupState();
  *(v3 + 48) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v3 + 56) = swift_task_alloc();
  v7 = sub_21498E690();
  *(v3 + 64) = v7;
  v8 = *(v7 - 8);
  *(v3 + 72) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 80) = swift_task_alloc();
  if (qword_281191B88 != -1)
  {
    swift_once();
  }

  v10 = qword_281194E50;

  return MEMORY[0x2822009F8](sub_2149732F0, v10, 0);
}

uint64_t sub_2149732F0()
{
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = __swift_project_value_buffer(v3, qword_281194E18);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_21498E670();
  v6 = sub_21498FBA0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_21488E000, v5, v6, "[DataStore] syncPreferences()", v7, 2u);
    MEMORY[0x216059AC0](v7, -1, -1);
  }

  v9 = *(v0 + 72);
  v8 = *(v0 + 80);
  v10 = *(v0 + 64);
  v11 = *(v0 + 97);

  (*(v9 + 8))(v8, v10);
  if (v11 == 1)
  {
    v12 = *__swift_project_boxed_opaque_existential_1((*(v0 + 24) + 16), *(*(v0 + 24) + 40));
    v29 = sub_21493B060(0xD00000000000003DLL, 0x80000002149A3630);
  }

  else
  {
    v29 = 0;
  }

  v13 = *(v0 + 56);
  v26 = *(v0 + 48);
  v15 = *(v0 + 32);
  v14 = *(v0 + 40);
  v16 = *(v0 + 24);
  v27 = *(v0 + 96);
  v28 = *(v0 + 97);
  *(v0 + 16) = sub_21496C7C0();
  swift_getKeyPath();
  sub_214976158(&qword_281191F48, type metadata accessor for MailCleanupSchemaV1.DataModel);
  sub_21498E3D0();

  swift_getKeyPath();
  sub_214976158(&qword_281191F50, type metadata accessor for MailCleanupSchemaV1.DataModel);
  sub_214976158(&qword_281192040, type metadata accessor for MailCleanupState);
  sub_21498F6A0();

  sub_2148AA824(v13 + *(v26 + 40), v14, &qword_27CA1ABA0, &qword_214993E20);
  sub_214950444(v13, type metadata accessor for MailCleanupState);
  v17 = *(v16 + 72);
  sub_21497620C(v15);
  LOBYTE(v17) = sub_214974D58(v27, v29, (v28 & 1) == 0, v14, v15, 0);
  sub_21489DFCC(v15, &qword_27CA1ABA0, &qword_214993E20);
  sub_21489DFCC(v14, &qword_27CA1ABA0, &qword_214993E20);
  if (v17)
  {
    v18 = swift_task_alloc();
    *(v0 + 88) = v18;
    *v18 = v0;
    v18[1] = sub_214973708;
    v19 = *(v0 + 24);

    return sub_214971514();
  }

  else
  {
    v21 = *(v0 + 80);
    v22 = *(v0 + 56);
    v24 = *(v0 + 32);
    v23 = *(v0 + 40);

    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_214973708()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v9 = *v0;

  v3 = v1[10];
  v4 = v1[7];
  v5 = v1[5];
  v6 = v1[4];

  v7 = *(v9 + 8);

  return v7();
}

uint64_t sub_214973874()
{
  v1[151] = v0;
  v2 = *(type metadata accessor for MATipDismissal() - 8);
  v1[152] = v2;
  v3 = *(v2 + 64) + 15;
  v1[153] = swift_task_alloc();
  v4 = type metadata accessor for MailCleanupState();
  v1[154] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v1[155] = swift_task_alloc();
  v1[156] = swift_task_alloc();
  if (qword_281191B88 != -1)
  {
    swift_once();
  }

  v6 = qword_281194E50;
  v1[157] = qword_281194E50;

  return MEMORY[0x2822009F8](sub_2149739A4, v6, 0);
}

uint64_t sub_2149739A4()
{
  v1 = *(v0 + 1248);
  v2 = *(v0 + 1240);
  v33 = *(v0 + 1232);
  v3 = *(v0 + 1208);
  *(v0 + 1184) = MEMORY[0x277D84FA0];
  *(v0 + 1192) = sub_21496C7C0();
  swift_getKeyPath();
  sub_214976158(&qword_281191F48, type metadata accessor for MailCleanupSchemaV1.DataModel);
  sub_21498E3D0();

  swift_getKeyPath();
  sub_214976158(&qword_281191F50, type metadata accessor for MailCleanupSchemaV1.DataModel);
  sub_214976158(&qword_281192040, type metadata accessor for MailCleanupState);
  sub_21498F6A0();

  v4 = OBJC_IVAR____TtCCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel9DataStore____lazy_storage___dataModel;
  *(v0 + 1264) = OBJC_IVAR____TtCCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel9DataStore____lazy_storage___dataModel;
  *(v0 + 1200) = *(v3 + v4);
  swift_getKeyPath();

  sub_21498E3D0();

  swift_getKeyPath();
  sub_21498F6A0();

  v5 = *(v2 + *(v33 + 24));
  *(v0 + 1272) = v5;

  result = sub_214950444(v2, type metadata accessor for MailCleanupState);
  v7 = *(v5 + 16);
  *(v0 + 1280) = v7;
  if (v7)
  {
    v8 = 0;
    v9 = *(v0 + 1216);
    v10 = **(v0 + 1248);
    *(v0 + 1288) = v10;
    *(v0 + 1296) = *(v10 + 16);
    *(v0 + 396) = *(v9 + 80);
    while (1)
    {
      *(v0 + 1304) = v8;
      v11 = *(v0 + 1272);
      if (v8 >= *(v11 + 16))
      {
LABEL_26:
        __break(1u);
        return result;
      }

      v12 = *(v0 + 1296);
      v13 = *(v0 + 1224);
      sub_214975F78(v11 + ((*(v0 + 396) + 32) & ~*(v0 + 396)) + *(*(v0 + 1216) + 72) * v8, v13, type metadata accessor for MATipDismissal);
      v15 = *v13;
      v14 = v13[1];

      sub_214950444(v13, type metadata accessor for MATipDismissal);

      sub_214974494((v0 + 1168), v15, v14);
      v16 = *(v0 + 1176);

      if (v12)
      {
        break;
      }

LABEL_3:

LABEL_4:
      v8 = *(v0 + 1304) + 1;
      if (v8 == *(v0 + 1280))
      {
        v22 = *(v0 + 1272);
        goto LABEL_19;
      }
    }

    v17 = 0;
    v18 = 32;
    while (1)
    {
      v19 = *(v0 + 1288);
      if (v17 >= *(v19 + 16))
      {
        __break(1u);
        goto LABEL_26;
      }

      memcpy((v0 + 16), (v19 + v18), 0x179uLL);
      v20 = *(v0 + 392);
      if (*(v0 + 16) == v15 && *(v0 + 24) == v14)
      {
        break;
      }

      result = sub_214990080();
      if (result)
      {
        break;
      }

      ++v17;
      v18 += 384;
      if (v17 == *(v0 + 1296))
      {
        goto LABEL_3;
      }
    }

    sub_2148D8FC8(v0 + 16, v0 + 400);

    if (!v20)
    {
      result = sub_2148F6AF8(v0 + 16);
      goto LABEL_4;
    }

    v30 = __swift_project_boxed_opaque_existential_1((*(v0 + 1208) + 16), *(*(v0 + 1208) + 40));
    memcpy((v0 + 784), (v0 + 16), 0x179uLL);
    v31 = *v30;
    v32 = swift_task_alloc();
    *(v0 + 1312) = v32;
    *v32 = v0;
    v32[1] = sub_214973EB8;

    return sub_21493A44C(v0 + 784);
  }

  else
  {
LABEL_19:

    v23 = *(v0 + 1248);
    v24 = *(v0 + 1240);
    v25 = *(v0 + 1224);
    v26 = *(*(v0 + 1208) + *(v0 + 1264));

    sub_2148E38CC(v27, (v0 + 1184));

    sub_214950444(v23, type metadata accessor for MailCleanupState);
    v28 = *(v0 + 1184);

    v29 = *(v0 + 8);

    return v29(0);
  }
}

uint64_t sub_214973EB8()
{
  v1 = *v0;
  v2 = *(*v0 + 1312);
  v3 = *(*v0 + 1256);
  v5 = *v0;

  sub_2148F6AF8(v1 + 16);

  return MEMORY[0x2822009F8](sub_214973FD0, v3, 0);
}

void sub_214973FD0()
{
  while (1)
  {
LABEL_3:
    v1 = *(v0 + 1304) + 1;
    if (v1 == *(v0 + 1280))
    {
      v13 = *(v0 + 1272);

      v14 = *(v0 + 1248);
      v15 = *(v0 + 1240);
      v16 = *(v0 + 1224);
      v17 = *(*(v0 + 1208) + *(v0 + 1264));

      sub_2148E38CC(v18, (v0 + 1184));

      sub_214950444(v14, type metadata accessor for MailCleanupState);
      v19 = *(v0 + 1184);

      v20 = *(v0 + 8);

      v20(1);
      return;
    }

    *(v0 + 1304) = v1;
    v2 = *(v0 + 1272);
    if (v1 >= *(v2 + 16))
    {
LABEL_24:
      __break(1u);
      return;
    }

    v3 = *(v0 + 1296);
    v4 = *(v0 + 1224);
    sub_214975F78(v2 + ((*(v0 + 396) + 32) & ~*(v0 + 396)) + *(*(v0 + 1216) + 72) * v1, v4, type metadata accessor for MATipDismissal);
    v6 = *v4;
    v5 = v4[1];

    sub_214950444(v4, type metadata accessor for MATipDismissal);

    sub_214974494((v0 + 1168), v6, v5);
    v7 = *(v0 + 1176);

    if (v3)
    {
      break;
    }

LABEL_2:
  }

  v8 = 0;
  v9 = 32;
  while (1)
  {
    v10 = *(v0 + 1288);
    if (v8 >= *(v10 + 16))
    {
      __break(1u);
      goto LABEL_24;
    }

    memcpy((v0 + 16), (v10 + v9), 0x179uLL);
    v11 = *(v0 + 392);
    v12 = *(v0 + 16) == v6 && *(v0 + 24) == v5;
    if (v12 || (sub_214990080() & 1) != 0)
    {
      break;
    }

    ++v8;
    v9 += 384;
    if (v8 == *(v0 + 1296))
    {
      goto LABEL_2;
    }
  }

  sub_2148D8FC8(v0 + 16, v0 + 400);

  if (!v11)
  {
    sub_2148F6AF8(v0 + 16);
    goto LABEL_3;
  }

  v21 = __swift_project_boxed_opaque_existential_1((*(v0 + 1208) + 16), *(*(v0 + 1208) + 40));
  memcpy((v0 + 784), (v0 + 16), 0x179uLL);
  v22 = *v21;
  v23 = swift_task_alloc();
  *(v0 + 1312) = v23;
  *v23 = v0;
  v23[1] = sub_214973EB8;

  sub_21493A44C(v0 + 784);
}

uint64_t sub_2149742A4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_2148E609C(v0 + 56);

  v1 = OBJC_IVAR____TtCCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel9DataStore_modelConfiguration;
  v2 = sub_21498F710();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_214976060(*(v0 + OBJC_IVAR____TtCCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel9DataStore____lazy_storage___modelContext));
  v3 = *(v0 + OBJC_IVAR____TtCCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel9DataStore____lazy_storage___dataModel);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t _s9DataStoreCMa()
{
  result = qword_281192678;
  if (!qword_281192678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2149743CC()
{
  result = sub_21498F710();
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

uint64_t sub_214974494(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_214990160();
  sub_21498F900();
  v9 = sub_214990190();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_214990080() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_214974844(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_2149745E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CC30, &qword_21499DE28);
  result = sub_21498FDE0();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_214990160();
      sub_21498F900();
      result = sub_214990190();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_214974844(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_2149745E4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2149749C4();
      goto LABEL_16;
    }

    sub_214974B20(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_214990160();
  sub_21498F900();
  result = sub_214990190();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_214990080();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_2149900E0();
  __break(1u);
  return result;
}

void *sub_2149749C4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CC30, &qword_21499DE28);
  v2 = *v0;
  v3 = sub_21498FDD0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_214974B20(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CC30, &qword_21499DE28);
  result = sub_21498FDE0();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_214990160();

      sub_21498F900();
      result = sub_214990190();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_214974D58(char a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, char a6)
{
  v169 = a5;
  LODWORD(v171) = a3;
  v167 = a2;
  v9 = sub_21498E690();
  v174 = *(v9 - 8);
  v175 = v9;
  v10 = *(v174 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v156 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v170 = &v156 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v156 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v166 = &v156 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v165 = &v156 - v22;
  MEMORY[0x28223BE20](v21);
  v172 = &v156 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABA0, &qword_214993E20);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v168 = &v156 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v156 - v28;
  v30 = sub_21498E320();
  v31 = *(v30 - 8);
  v176 = v30;
  v177 = v31;
  v32 = *(v31 + 64);
  v33 = MEMORY[0x28223BE20](v30);
  v34 = MEMORY[0x28223BE20](v33);
  v35 = MEMORY[0x28223BE20](v34);
  v36 = MEMORY[0x28223BE20](v35);
  v37 = MEMORY[0x28223BE20](v36);
  v39 = &v156 - v38;
  v40 = MEMORY[0x28223BE20](v37);
  v41 = MEMORY[0x28223BE20](v40);
  v43 = &v156 - v42;
  v44 = MEMORY[0x28223BE20](v41);
  v46 = &v156 - v45;
  v47 = MEMORY[0x28223BE20](v44);
  MEMORY[0x28223BE20](v47);
  v55 = &v156 - v54;
  result = 1;
  if (a1 & 1) != 0 || (a6)
  {
    return result;
  }

  v161 = v49;
  v162 = v50;
  v158 = v48;
  v159 = v53;
  v160 = v18;
  v163 = v52;
  v173 = v51;
  sub_21498E310();
  sub_2148AA824(a4, v29, &qword_27CA1ABA0, &qword_214993E20);
  v58 = v176;
  v57 = v177;
  v59 = *(v177 + 48);
  if (v59(v29, 1, v176) == 1)
  {
    sub_21489DFCC(v29, &qword_27CA1ABA0, &qword_214993E20);
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v60 = v175;
    v61 = __swift_project_value_buffer(v175, qword_281194E18);
    v62 = v174;
    (*(v174 + 16))(v13, v61, v60);
    v63 = sub_21498E670();
    v64 = sub_21498FBB0();
    v65 = os_log_type_enabled(v63, v64);
    v66 = v176;
    if (v65)
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_21488E000, v63, v64, "[DataStore] dateFetched is null. Returning shouldLoad=true.", v67, 2u);
      MEMORY[0x216059AC0](v67, -1, -1);
    }

    (*(v62 + 8))(v13, v60);
    (*(v57 + 8))(v55, v66);
    return 1;
  }

  v157 = *(v57 + 32);
  v157(v173, v29, v58);
  v164 = v55;
  if (sub_21498E2C0())
  {
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v68 = v175;
    v69 = __swift_project_value_buffer(v175, qword_281194E18);
    v70 = v174;
    v71 = v172;
    (*(v174 + 16))(v172, v69, v68);
    v72 = v177;
    v73 = *(v177 + 16);
    v73(v46, v173, v58);
    v74 = v164;
    v73(v43, v164, v58);
    v75 = sub_21498E670();
    v76 = sub_21498FBB0();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v171 = swift_slowAlloc();
      v178[0] = v171;
      *v77 = 136315394;
      sub_214976158(&qword_27CA1BA28, MEMORY[0x277CC9578]);
      v78 = v58;
      LODWORD(v170) = v76;
      v79 = sub_214990050();
      v81 = v80;
      v82 = *(v72 + 8);
      v82(v46, v58);
      v83 = sub_2149079F4(v79, v81, v178);

      *(v77 + 4) = v83;
      *(v77 + 12) = 2080;
      v84 = sub_214990050();
      v86 = v85;
      v82(v43, v78);
      v87 = sub_2149079F4(v84, v86, v178);

      *(v77 + 14) = v87;
      _os_log_impl(&dword_21488E000, v75, v170, "[DataStore] dateFetched is in the future: %s > currentTime: %s", v77, 0x16u);
      v88 = v171;
      swift_arrayDestroy();
      MEMORY[0x216059AC0](v88, -1, -1);
      MEMORY[0x216059AC0](v77, -1, -1);

      (*(v174 + 8))(v172, v175);
      v82(v173, v78);
      v82(v164, v78);
    }

    else
    {

      v102 = *(v72 + 8);
      v102(v43, v58);
      v102(v46, v58);
      (*(v70 + 8))(v71, v68);
      v102(v173, v58);
      v102(v74, v58);
    }

    return 1;
  }

  v89 = v175;
  if ((v171 & 1) == 0)
  {
    v90 = v58;
    v91 = v177;
    (*(v177 + 16))(v39, v173, v90);
    v92 = v162;
    sub_21498E2A0();
    sub_214976158(&qword_2811926F0, MEMORY[0x277CC9578]);
    if ((sub_21498F820() & 1) == 0)
    {
      if (qword_281190DA0 != -1)
      {
        swift_once();
      }

      v123 = __swift_project_value_buffer(v89, qword_281194E18);
      v124 = v174;
      v125 = v165;
      (*(v174 + 16))(v165, v123, v89);
      v126 = sub_21498E670();
      v127 = sub_21498FBB0();
      v128 = os_log_type_enabled(v126, v127);
      v130 = v176;
      v129 = v177;
      if (v128)
      {
        v131 = swift_slowAlloc();
        *v131 = 0;
        _os_log_impl(&dword_21488E000, v126, v127, "[DataStore] cache expired", v131, 2u);
        MEMORY[0x216059AC0](v131, -1, -1);
      }

      (*(v124 + 8))(v125, v89);
      v132 = *(v129 + 8);
      v132(v162, v130);
      v132(v173, v130);
      v132(v164, v130);
      return 1;
    }

    (*(v91 + 8))(v92, v90);
    v58 = v90;
  }

  v93 = v168;
  sub_2148AA824(v169, v168, &qword_27CA1ABA0, &qword_214993E20);
  if (v59(v93, 1, v58) != 1)
  {
    v103 = v163;
    v157(v163, v93, v58);
    v104 = sub_21498E2C0();
    v95 = v174;
    v96 = v170;
    if (v104)
    {
      v105 = v177;
      if (qword_281190DA0 != -1)
      {
        swift_once();
      }

      v106 = __swift_project_value_buffer(v89, qword_281194E18);
      v107 = v166;
      (*(v95 + 16))(v166, v106, v89);
      v108 = v161;
      v109 = v163;
      (*(v105 + 16))(v161, v163, v58);
      v110 = sub_21498E670();
      v111 = sub_21498FBB0();
      if (os_log_type_enabled(v110, v111))
      {
        v112 = swift_slowAlloc();
        v176 = v112;
        v113 = v105;
        v114 = swift_slowAlloc();
        v178[0] = v114;
        *v112 = 136315138;
        sub_214976158(&qword_27CA1BA28, MEMORY[0x277CC9578]);
        v115 = sub_214990050();
        v116 = v58;
        v118 = v117;
        v119 = *(v113 + 8);
        v119(v108, v116);
        v120 = sub_2149079F4(v115, v118, v178);

        v121 = v176;
        *(v176 + 4) = v120;
        v122 = v121;
        _os_log_impl(&dword_21488E000, v110, v111, "[DataStore] staleSince is in the future: %s", v121, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v114);
        MEMORY[0x216059AC0](v114, -1, -1);
        MEMORY[0x216059AC0](v122, -1, -1);

        (*(v95 + 8))(v166, v175);
        v119(v163, v116);
        v119(v173, v116);
        v119(v164, v116);
        return 1;
      }

      v134 = *(v105 + 8);
      v134(v108, v58);
      (*(v95 + 8))(v107, v89);
      v134(v109, v58);
      v135 = v173;
    }

    else
    {
      sub_214976158(&qword_2811926F0, MEMORY[0x277CC9578]);
      v133 = sub_21498F820();
      v94 = v177;
      if (v133)
      {
        (*(v177 + 8))(v103, v58);
        goto LABEL_19;
      }

      if (qword_281190DA0 != -1)
      {
        swift_once();
      }

      v136 = __swift_project_value_buffer(v89, qword_281194E18);
      v137 = v160;
      (*(v95 + 16))(v160, v136, v89);
      v138 = *(v94 + 16);
      v139 = v158;
      v140 = v173;
      v138(v158, v173, v58);
      v141 = v159;
      v138(v159, v163, v58);
      v142 = sub_21498E670();
      v143 = sub_21498FBB0();
      if (os_log_type_enabled(v142, v143))
      {
        v144 = swift_slowAlloc();
        v176 = swift_slowAlloc();
        v178[0] = v176;
        *v144 = 136315394;
        sub_214976158(&qword_27CA1BA28, MEMORY[0x277CC9578]);
        v145 = v58;
        LODWORD(v172) = v143;
        v146 = sub_214990050();
        v148 = v147;
        v149 = *(v94 + 8);
        v149(v139, v58);
        v150 = sub_2149079F4(v146, v148, v178);

        *(v144 + 4) = v150;
        *(v144 + 12) = 2080;
        v151 = sub_214990050();
        v153 = v152;
        v149(v141, v145);
        v154 = sub_2149079F4(v151, v153, v178);

        *(v144 + 14) = v154;
        _os_log_impl(&dword_21488E000, v142, v172, "[DataStore] dateFetched <= staleSince: %s <= %s", v144, 0x16u);
        v155 = v176;
        swift_arrayDestroy();
        MEMORY[0x216059AC0](v155, -1, -1);
        MEMORY[0x216059AC0](v144, -1, -1);

        (*(v174 + 8))(v160, v175);
        v149(v163, v145);
        v149(v173, v145);
        v149(v164, v145);
        return 1;
      }

      v134 = *(v94 + 8);
      v134(v141, v58);
      v134(v139, v58);
      (*(v95 + 8))(v137, v89);
      v134(v163, v58);
      v135 = v140;
    }

    v134(v135, v58);
    v134(v164, v58);
    return 1;
  }

  sub_21489DFCC(v93, &qword_27CA1ABA0, &qword_214993E20);
  v94 = v177;
  v95 = v174;
  v96 = v170;
LABEL_19:
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v97 = __swift_project_value_buffer(v89, qword_281194E18);
  (*(v95 + 16))(v96, v97, v89);
  v98 = sub_21498E670();
  v99 = sub_21498FBB0();
  if (os_log_type_enabled(v98, v99))
  {
    v100 = swift_slowAlloc();
    *v100 = 0;
    _os_log_impl(&dword_21488E000, v98, v99, "[DataStore] computeShouldLoad=false", v100, 2u);
    MEMORY[0x216059AC0](v100, -1, -1);
  }

  (*(v95 + 8))(v96, v89);
  v101 = *(v94 + 8);
  v101(v173, v58);
  v101(v164, v58);
  return 0;
}

uint64_t sub_214975F78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_214975FF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA1B600, &qword_214995ED8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_214976060(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_214976070(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MATipDismissal();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2149760D4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_2148E2E88();
}

uint64_t sub_2149760F4(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t sub_214976104()
{
  result = qword_281191C98[0];
  if (!qword_281191C98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281191C98);
  }

  return result;
}

uint64_t sub_214976158(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id NSUserDefaults.MailCleanupUserDefaults.__allocating_init(suiteName:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_21498F840();
  }

  else
  {
    v3 = 0;
  }

  v4 = [objc_allocWithZone(v2) initWithSuiteName_];

  return v4;
}

uint64_t sub_214976224@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = &v2[*a1];
  v5 = *v4;
  v6 = *(v4 + 1);
  v7 = sub_21498F840();
  v8 = [v2 objectForKey_];

  if (v8)
  {
    sub_21498FD40();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v15[0] = v13;
  v15[1] = v14;
  if (*(&v14 + 1))
  {
    v9 = sub_21498E320();
    v10 = swift_dynamicCast();
    return (*(*(v9 - 8) + 56))(a2, v10 ^ 1u, 1, v9);
  }

  else
  {
    sub_21489DFCC(v15, &qword_27CA1B878, qword_214996678);
    v12 = sub_21498E320();
    return (*(*(v12 - 8) + 56))(a2, 1, 1, v12);
  }
}

id NSUserDefaults.MailCleanupUserDefaults.init(suiteName:)(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_mailCleanupIsCategoryDisabledKey];
  *v3 = 0xD00000000000001DLL;
  *(v3 + 1) = 0x80000002149A36B0;
  v4 = &v2[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_mailCleanupIsCacheDisabledKey];
  *v4 = 0xD00000000000001ALL;
  *(v4 + 1) = 0x80000002149A36D0;
  v5 = &v2[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_turnOffMailCleanupTipDismissedKey];
  *v5 = 0xD00000000000001ELL;
  *(v5 + 1) = 0x80000002149A36F0;
  v6 = &v2[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_useBulkActionServiceForDashboardKey];
  *v6 = 0xD000000000000020;
  *(v6 + 1) = 0x80000002149A3710;
  v7 = &v2[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_categoriesDisabledTimestampKey];
  *v7 = 0xD000000000000029;
  *(v7 + 1) = 0x80000002149A1610;
  v8 = &v2[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_showConsentInMailAppWhenDeclinedKey];
  *v8 = 0xD00000000000002BLL;
  *(v8 + 1) = 0x80000002149A3740;
  v9 = &v2[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_preferencesStaleSinceKey];
  *v9 = 0xD000000000000020;
  *(v9 + 1) = 0x80000002149A3770;
  v10 = &v2[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_tipsStaleSinceKey];
  *v10 = 0xD000000000000019;
  *(v10 + 1) = 0x80000002149A37A0;
  v11 = &v2[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_rulesStaleSinceKey];
  *v11 = 0xD00000000000001ALL;
  *(v11 + 1) = 0x80000002149A37C0;
  v12 = &v2[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_dashboardEntryPointInfoStaleSinceKey];
  *v12 = 0xD00000000000002CLL;
  *(v12 + 1) = 0x80000002149A37E0;
  v13 = &v2[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_forceShowUnsubscribeTipKey];
  *v13 = 0xD000000000000022;
  *(v13 + 1) = 0x80000002149A3810;
  v14 = &v2[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_forceShowPromotionsTipKey];
  *v14 = 0xD000000000000021;
  *(v14 + 1) = 0x80000002149A3840;
  if (a2)
  {
    v15 = sub_21498F840();
  }

  else
  {
    v15 = 0;
  }

  v18.receiver = v2;
  v18.super_class = type metadata accessor for NSUserDefaults.MailCleanupUserDefaults();
  v16 = objc_msgSendSuper2(&v18, sel_initWithSuiteName_, v15);

  if (v16)
  {
  }

  return v16;
}

id NSUserDefaults.MailCleanupUserDefaults.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NSUserDefaults.MailCleanupUserDefaults();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void _sSo14NSUserDefaultsC19iCloudMailAssistantE11mailCleanupAbCE0dg4UserB0CvgZ_0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A348, &qword_214991700);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v12 - v2;
  v4 = [objc_opt_self() defaultManager];
  v5 = sub_21498F840();
  v6 = [v4 containerURLForSecurityApplicationGroupIdentifier_];

  if (v6)
  {
    sub_21498E160();

    v7 = sub_21498E1B0();
    (*(*(v7 - 8) + 56))(v3, 0, 1, v7);
  }

  else
  {
    v8 = sub_21498E1B0();
    (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  }

  sub_21489DFCC(v3, &qword_27CA1A348, &qword_214991700);
  v9 = objc_allocWithZone(type metadata accessor for NSUserDefaults.MailCleanupUserDefaults());
  v10 = sub_21498F840();
  v11 = [v9 initWithSuiteName_];

  if (!v11)
  {
    __break(1u);
  }
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_214976974(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2149769BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_214976A30(uint64_t a1)
{
  v2 = sub_214978464();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214976A6C(uint64_t a1)
{
  v2 = sub_214978464();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214976AA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2148F0A20();

  return MEMORY[0x282182170](a1, v4, a2);
}

uint64_t sub_214976AFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_214976EDC();

  return MEMORY[0x282182168](a1, a2, v4);
}

uint64_t sub_214976B48(uint64_t a1)
{
  v2 = sub_214976EDC();

  return MEMORY[0x2821822F0](a1, v2);
}

uint64_t sub_214976B94(uint64_t a1, uint64_t a2)
{
  v4 = sub_214977C44();

  return MEMORY[0x282182160](a1, a2, v4);
}

uint64_t sub_214976BE8@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_21498E450();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = v1[1];
  v19 = *v1;
  v20 = v8;
  v21 = v1[2];
  v22 = *(v1 + 6);
  v9 = swift_allocObject();
  v10 = v1[1];
  *(v9 + 16) = *v1;
  *(v9 + 32) = v10;
  *(v9 + 48) = v1[2];
  *(v9 + 64) = *(v1 + 6);
  sub_21497842C(&v19, v18);
  sub_21498E400();
  v11 = sub_2148BEEDC(v20);
  v12 = *(&v20 + 1);
  if (*(&v20 + 1))
  {
    v13 = *(&v21 + 1);
    if (*(&v21 + 1))
    {
      v14 = v11;

      v15 = sub_2148BF184(v14, v12, v13);

      result = (*(v4 + 8))(v7, v3);
      *a1 = v15;
      return result;
    }
  }

  else
  {
    sub_21498E8C0();
    sub_214978370(&qword_27CA1A858, MEMORY[0x277D23330]);
    sub_21498ED10();
    __break(1u);
  }

  sub_21498E870();
  sub_214978370(&qword_27CA1AC08, MEMORY[0x277D232E8]);

  result = sub_21498ED10();
  __break(1u);
  return result;
}

unint64_t sub_214976EDC()
{
  result = qword_27CA1CCB8;
  if (!qword_27CA1CCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CCB8);
  }

  return result;
}

uint64_t sub_214976F30(void *a1)
{
  v2 = sub_21498E690();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  if (!a1[3])
  {
    v6 = a1[4];
    sub_21498E8C0();
    sub_214978370(&qword_27CA1A858, MEMORY[0x277D23330]);
    sub_21498ED10();
    __break(1u);
    goto LABEL_7;
  }

  if (!a1[5])
  {
LABEL_7:
    v7 = a1[6];
    sub_21498E870();
    sub_214978370(&qword_27CA1AC08, MEMORY[0x277D232E8]);

    result = sub_21498ED10();
    __break(1u);
    return result;
  }

  v4 = a1[2];

  sub_21498FA10();
}

uint64_t sub_2149772B8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x736E6F69746361;
  }

  else
  {
    v4 = 25705;
  }

  if (v3)
  {
    v5 = 0xE200000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x736E6F69746361;
  }

  else
  {
    v6 = 25705;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xE200000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_214990080();
  }

  return v9 & 1;
}

uint64_t sub_214977354()
{
  v1 = *v0;
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_2149773CC()
{
  v1 = *v0;
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_21497744C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_21498FEF0();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_2149774B4@<X0>(char *a1@<X8>)
{
  v2 = sub_21498FEF0();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_214977514(uint64_t a1)
{
  v2 = sub_21497831C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214977550(uint64_t a1)
{
  v2 = sub_21497831C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21497758C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2148F0A74();

  return MEMORY[0x282182170](a1, v4, a2);
}

uint64_t sub_2149775E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_214977A90();

  return MEMORY[0x282182168](a1, a2, v4);
}

uint64_t sub_21497762C(uint64_t a1)
{
  v2 = sub_214977A90();

  return MEMORY[0x2821822F0](a1, v2);
}

uint64_t sub_214977678(uint64_t a1, uint64_t a2)
{
  v4 = sub_214977C98();

  return MEMORY[0x282182160](a1, a2, v4);
}

uint64_t sub_2149776CC@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_21498E410();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = v1[1];
  v19 = *v1;
  v20 = v8;
  v21 = v1[2];
  v22 = *(v1 + 6);
  v9 = swift_allocObject();
  v10 = v1[1];
  *(v9 + 16) = *v1;
  *(v9 + 32) = v10;
  *(v9 + 48) = v1[2];
  *(v9 + 64) = *(v1 + 6);
  sub_214977D10(&v19, v18);
  sub_21498E400();
  v11 = sub_2148BEEDC(v20);
  v12 = *(&v20 + 1);
  if (*(&v20 + 1))
  {
    v13 = *(&v21 + 1);
    if (*(&v21 + 1))
    {
      v14 = v11;

      v15 = sub_2148BF1CC(v14, v12, v13);

      result = (*(v4 + 8))(v7, v3);
      *a1 = v15;
      return result;
    }
  }

  else
  {
    sub_21498E8C0();
    sub_214978370(&qword_27CA1A858, MEMORY[0x277D23330]);
    sub_21498ED10();
    __break(1u);
  }

  sub_21498E870();
  sub_214978370(&qword_27CA1AC08, MEMORY[0x277D232E8]);

  result = sub_21498ED10();
  __break(1u);
  return result;
}

double sub_214977978@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, void (*a4)(void)@<X5>, uint64_t a5@<X8>)
{
  sub_214977D48(a1, a2, a3, a4, v9);
  if (!v5)
  {
    v8 = v9[1];
    *a5 = v9[0];
    *(a5 + 16) = v8;
    result = *&v10;
    *(a5 + 32) = v10;
    *(a5 + 48) = v11;
  }

  return result;
}

uint64_t sub_214977A20(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(void))
{
  a4();
  a5();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_214977A90()
{
  result = qword_27CA1CCC0;
  if (!qword_27CA1CCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CCC0);
  }

  return result;
}

unint64_t sub_214977AE8()
{
  result = qword_27CA1CCC8;
  if (!qword_27CA1CCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CCC8);
  }

  return result;
}

unint64_t sub_214977B40()
{
  result = qword_27CA1CCD0;
  if (!qword_27CA1CCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CCD0);
  }

  return result;
}

unint64_t sub_214977B98()
{
  result = qword_27CA1CCD8;
  if (!qword_27CA1CCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CCD8);
  }

  return result;
}

unint64_t sub_214977BF0()
{
  result = qword_27CA1CCE0;
  if (!qword_27CA1CCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CCE0);
  }

  return result;
}

unint64_t sub_214977C44()
{
  result = qword_27CA1CCE8;
  if (!qword_27CA1CCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CCE8);
  }

  return result;
}

unint64_t sub_214977C98()
{
  result = qword_27CA1CCF0;
  if (!qword_27CA1CCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CCF0);
  }

  return result;
}

uint64_t sub_214977D48@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t *a5@<X8>)
{
  v58 = a4;
  v53 = a5;
  v63 = sub_21498E890();
  v56 = *(v63 - 8);
  v8 = *(v56 + 64);
  MEMORY[0x28223BE20](v63);
  v62 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21498E350();
  v54 = *(v10 - 8);
  v55 = v10;
  v11 = *(v54 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a3;
  v15 = a1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, v14);
  v57 = *(v16 - 8);
  v17 = *(v57 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v47 - v18;
  sub_21498E8C0();
  sub_214978370(&qword_27CA1A858, MEMORY[0x277D23330]);
  v61 = sub_21498ED20();
  v52 = v20;
  sub_21498E870();
  sub_214978370(&qword_27CA1AC08, MEMORY[0x277D232E8]);
  v60 = sub_21498ED20();
  v22 = v21;
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v58();
  v24 = v59;
  sub_2149901B0();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v26 = v54;
    v25 = v55;
    v51 = v22;
    v27 = v56;
    LOBYTE(v64) = 0;
    v28 = sub_21498FF20();
    v50 = v19;
    if (v29)
    {
      v48 = v28;
      v49 = v29;
    }

    else
    {
      sub_21498E340();
      v48 = sub_21498E330();
      v49 = v31;
      (*(v26 + 8))(v13, v25);
    }

    v32 = v52;
    v33 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A5F0, &qword_21499B770);
    LOBYTE(v64) = 1;
    sub_2148AAA9C();
    v34 = v50;
    sub_21498FFA0();
    v54 = v16;
    v55 = 0;
    v35 = v66;
    v36 = *(v66 + 16);
    if (v36)
    {
      v47 = v15;
      v65 = MEMORY[0x277D84F90];
      sub_2148A9BD8(0, v36, 0);
      v37 = v65;
      v38 = *(v27 + 16);
      v39 = v35 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
      v58 = *(v27 + 72);
      v59 = v38;
      v40 = v63;
      do
      {
        v41 = v62;
        v59(v62, v39, v40);
        sub_21498E880();
        v40 = v63;
        (*(v27 + 8))(v41, v63);
        v65 = v37;
        v43 = *(v37 + 16);
        v42 = *(v37 + 24);
        if (v43 >= v42 >> 1)
        {
          sub_2148A9BD8((v42 > 1), v43 + 1, 1);
          v40 = v63;
          v37 = v65;
        }

        *(v37 + 16) = v43 + 1;
        sub_2148970B8(&v64, v37 + 40 * v43 + 32);
        v39 += v58;
        --v36;
      }

      while (v36);
      (*(v57 + 8))(v50, v54);

      v15 = v47;
      v32 = v52;
      v33 = v53;
    }

    else
    {

      (*(v57 + 8))(v34, v54);
      v37 = MEMORY[0x277D84F90];
    }

    v44 = v60;

    v45 = v49;

    v46 = v61;

    __swift_destroy_boxed_opaque_existential_1(v15);

    *v33 = v48;
    v33[1] = v45;
    v33[2] = v37;
    v33[3] = v46;
    v33[4] = v32;
    v33[5] = v44;
    v33[6] = v51;
  }

  return result;
}

unint64_t sub_21497831C()
{
  result = qword_27CA1CD00;
  if (!qword_27CA1CD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CD00);
  }

  return result;
}

uint64_t sub_214978370(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroyTm_5()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

unint64_t sub_214978464()
{
  result = qword_27CA1CD10;
  if (!qword_27CA1CD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CD10);
  }

  return result;
}

unint64_t sub_2149784DC()
{
  result = qword_27CA1CD18;
  if (!qword_27CA1CD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CD18);
  }

  return result;
}

unint64_t sub_214978534()
{
  result = qword_27CA1CD20;
  if (!qword_27CA1CD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CD20);
  }

  return result;
}

unint64_t sub_21497858C()
{
  result = qword_27CA1CD28;
  if (!qword_27CA1CD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CD28);
  }

  return result;
}

unint64_t sub_2149785E4()
{
  result = qword_27CA1CD30;
  if (!qword_27CA1CD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CD30);
  }

  return result;
}

unint64_t sub_21497863C()
{
  result = qword_27CA1CD38;
  if (!qword_27CA1CD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CD38);
  }

  return result;
}

unint64_t sub_214978694()
{
  result = qword_27CA1CD40;
  if (!qword_27CA1CD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CD40);
  }

  return result;
}

uint64_t sub_214978718(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7361637265776F6CLL;
  v4 = 0xE400000000000000;
  if (v2 == 1)
  {
    v4 = 0xE900000000000065;
  }

  else
  {
    v3 = 1701736302;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x7361637265707075;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE900000000000065;
  }

  v7 = 0x7361637265776F6CLL;
  v8 = 0xE400000000000000;
  if (*a2 == 1)
  {
    v8 = 0xE900000000000065;
  }

  else
  {
    v7 = 1701736302;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x7361637265707075;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE900000000000065;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_214990080();
  }

  return v11 & 1;
}

uint64_t sub_214978804()
{
  v1 = *v0;
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_2149788A0()
{
  *v0;
  *v0;
  sub_21498F900();
}

uint64_t sub_214978928()
{
  v1 = *v0;
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_2149789C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_214978F90();
  *a2 = result;
  return result;
}

void sub_2149789F0(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000065;
  v3 = *v1;
  v4 = 0x7361637265776F6CLL;
  v5 = 0xE400000000000000;
  if (v3 == 1)
  {
    v5 = 0xE900000000000065;
  }

  else
  {
    v4 = 1701736302;
  }

  v6 = v3 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x7361637265707075;
  }

  if (!v6)
  {
    v2 = v5;
  }

  *a1 = v7;
  a1[1] = v2;
}

uint64_t sub_214978AF8@<X0>(void *a1@<X0>, unsigned __int8 a2@<W3>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CD50, &qword_21499E538);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v23 - v11;
  v13 = a1[4];
  v14 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (a2 > 1u)
  {
    if (a2 != 2)
    {
      v20 = sub_21498F0D0();
      (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
      goto LABEL_10;
    }

    v16 = sub_21498F0D0();
    (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
  }

  else
  {
    v23[3] = v14;
    if (a2)
    {
      v15 = MEMORY[0x277CE0B40];
    }

    else
    {
      v15 = MEMORY[0x277CE0B48];
    }

    v17 = *v15;
    v18 = sub_21498F0D0();
    v19 = *(v18 - 8);
    (*(v19 + 104))(v10, v17, v18);
    (*(v19 + 56))(v10, 0, 1, v18);
  }

  sub_214978F20(v10, v12);
LABEL_10:
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1CD58, &qword_21499E540);
  a3[3] = sub_21498ECC0();
  v21 = sub_214978E54();
  v23[0] = v13;
  v23[1] = v21;
  a3[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(a3);
  sub_21498F230();
  return sub_214978EB8(v12);
}

unint64_t sub_214978DD0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_214978FDC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_214978E00()
{
  result = qword_27CA1CD48;
  if (!qword_27CA1CD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CD48);
  }

  return result;
}

unint64_t sub_214978E54()
{
  result = qword_27CA1CD60;
  if (!qword_27CA1CD60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1CD58, &qword_21499E540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CD60);
  }

  return result;
}

uint64_t sub_214978EB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CD50, &qword_21499E538);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_214978F20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CD50, &qword_21499E538);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_214978F90()
{
  v0 = sub_21498FEF0();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_214978FDC(uint64_t *a1)
{
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2149901A0();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    sub_2149790B8();
    sub_2149900A0();
    v4 = v7;
    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

unint64_t sub_2149790B8()
{
  result = qword_27CA1CD68;
  if (!qword_27CA1CD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CD68);
  }

  return result;
}

unint64_t sub_214979120()
{
  result = qword_27CA1CD70;
  if (!qword_27CA1CD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CD70);
  }

  return result;
}

unint64_t sub_214979174()
{
  result = qword_27CA1CD78;
  if (!qword_27CA1CD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CD78);
  }

  return result;
}

uint64_t sub_2149791C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_214979210(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21497928C()
{
  v12 = *MEMORY[0x277D85DE8];
  v1[12] = v0;
  v2 = sub_21498E690();
  v1[13] = v2;
  v3 = *(v2 - 8);
  v1[14] = v3;
  v4 = *(v3 + 64) + 15;
  v1[15] = swift_task_alloc();
  v5 = sub_21498E1B0();
  v1[16] = v5;
  v6 = *(v5 - 8);
  v1[17] = v6;
  v7 = *(v6 + 64) + 15;
  v1[18] = swift_task_alloc();
  sub_21498FAB0();
  v1[19] = sub_21498FAA0();
  v8 = sub_21498FA50();
  v1[20] = v8;
  v1[21] = v9;
  v10 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_214979410, v8, v9);
}

uint64_t sub_214979410()
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = v0[12];
  sub_214979C6C(*(v1 + 40), *(v1 + 56), *(v1 + 64), v0[18]);
  v2 = __swift_project_boxed_opaque_existential_1(v1, *(v1 + 24));
  v3 = sub_21498E130();
  v5 = v4;
  v0[22] = v4;
  v6 = *v2;
  v7 = swift_task_alloc();
  v0[23] = v7;
  *v7 = v0;
  v7[1] = sub_214979528;
  v8 = *MEMORY[0x277D85DE8];

  return sub_214937744(v3, v5, 1, 0, 0xF000000000000000);
}

uint64_t sub_214979528(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 184);
  v7 = *v3;
  v5[24] = a1;
  v5[25] = a2;
  v5[26] = v2;

  v8 = v4[22];

  v9 = v4[21];
  v10 = v4[20];
  if (v2)
  {
    v11 = sub_2149796B4;
  }

  else
  {
    v11 = sub_214979954;
  }

  v12 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v11, v10, v9);
}

uint64_t sub_2149796B4()
{
  v36 = v0;
  v35[1] = *MEMORY[0x277D85DE8];
  v1 = v0[19];

  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v2 = v0[26];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[13];
  v6 = __swift_project_value_buffer(v5, qword_281194E18);
  (*(v4 + 16))(v3, v6, v5);
  v7 = v2;
  v8 = sub_21498E670();
  v9 = sub_21498FBB0();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[26];
  v13 = v0[17];
  v12 = v0[18];
  v15 = v0[15];
  v14 = v0[16];
  v17 = v0[13];
  v16 = v0[14];
  if (v10)
  {
    v34 = v0[13];
    v18 = swift_slowAlloc();
    v33 = v14;
    v19 = swift_slowAlloc();
    v35[0] = v19;
    *v18 = 136315138;
    swift_getErrorValue();
    v32 = v12;
    v21 = v0[6];
    v20 = v0[7];
    v22 = v0[8];
    v23 = sub_214990100();
    v31 = v15;
    v25 = sub_2149079F4(v23, v24, v35);

    *(v18 + 4) = v25;
    _os_log_impl(&dword_21488E000, v8, v9, "Unable to load entry point: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x216059AC0](v19, -1, -1);
    MEMORY[0x216059AC0](v18, -1, -1);

    (*(v16 + 8))(v31, v34);
    (*(v13 + 8))(v32, v33);
  }

  else
  {

    (*(v16 + 8))(v15, v17);
    (*(v13 + 8))(v12, v14);
  }

  v26 = v0[18];
  v27 = v0[15];

  v28 = v0[1];
  v29 = *MEMORY[0x277D85DE8];

  return v28(0);
}

uint64_t sub_214979954()
{
  v39 = *MEMORY[0x277D85DE8];
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[19];

  v4 = objc_opt_self();
  v5 = sub_21498E1C0();
  v0[10] = 0;
  v6 = [v4 JSONObjectWithData:v5 options:0 error:v0 + 10];

  v7 = v0[10];
  if (!v6)
  {
    v21 = v0[24];
    v22 = v0[25];
    v24 = v0[17];
    v23 = v0[18];
    v25 = v0[16];
    v26 = v7;
    v27 = sub_21498E100();

    swift_willThrow();
    sub_21489B4F8(v21, v22);

    (*(v24 + 8))(v23, v25);
    v28 = 0;
    goto LABEL_14;
  }

  v8 = v7;
  sub_21498FD40();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CD80, qword_21499E728);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v29 = v0[24];
    v30 = v0[25];
    (*(v0[17] + 8))(v0[18], v0[16]);
    sub_21489B4F8(v29, v30);
    goto LABEL_10;
  }

  v9 = v0[11];
  if (!*(v9 + 16) || (v10 = v0[11], v11 = sub_214907F9C(2003134838, 0xE400000000000000), (v12 & 1) == 0))
  {
    v32 = v0[17];
    v31 = v0[18];
    v33 = v0[16];
    sub_21489B4F8(v0[24], v0[25]);

    (*(v32 + 8))(v31, v33);
    v28 = 0;
    goto LABEL_14;
  }

  v13 = *(*(v9 + 56) + 8 * v11);

  v15 = v0[24];
  v14 = v0[25];
  v17 = v0[17];
  v16 = v0[18];
  v18 = v0[16];
  if (*(v13 + 16))
  {
    sub_214907F9C(0x6569567974706D45, 0xE900000000000077);
    v20 = v19;
    sub_21489B4F8(v15, v14);
    (*(v17 + 8))(v16, v18);

    if ((v20 & 1) == 0)
    {
      goto LABEL_13;
    }

LABEL_10:
    v28 = 0;
    goto LABEL_14;
  }

  (*(v17 + 8))(v0[18], v0[16]);
  sub_21489B4F8(v15, v14);

LABEL_13:
  v28 = 1;
LABEL_14:
  v34 = v0[18];
  v35 = v0[15];

  v36 = v0[1];
  v37 = *MEMORY[0x277D85DE8];

  return v36(v28);
}

uint64_t sub_214979C6C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A348, &qword_214991700);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v18 - v10;
  v12 = sub_21489E320(a1);
  v20 = a2;
  v21 = a3;
  v18 = v12;
  v19 = v13;
  v18 = sub_21498F970();
  v19 = v14;
  sub_21498F920();
  sub_21498E1A0();
  v15 = sub_21498E1B0();
  v16 = *(v15 - 8);
  result = (*(v16 + 48))(v11, 1, v15);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    return (*(v16 + 32))(a4, v11, v15);
  }

  return result;
}

uint64_t sub_214979DE0@<X0>(uint64_t *a1@<X8>)
{
  v74 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A320, &unk_2149916D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v78 = &v69 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A328, &unk_2149933A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v84 = &v69 - v7;
  v83 = sub_21498E510();
  v81 = *(v83 - 8);
  v8 = *(v81 + 64);
  MEMORY[0x28223BE20](v83);
  v77 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A330, &qword_2149916E0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v76 = (&v69 - v12);
  v13 = type metadata accessor for TracingContext(0);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v70 = (&v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v82 = sub_21498E1B0();
  v17 = *(v82 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v82);
  v20 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for MALiftUISource(0);
  v75 = *(v72 - 8);
  v21 = *(v75 + 64);
  MEMORY[0x28223BE20](v72);
  v23 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v1[5];
  v24 = v1[7];
  v25 = v1[8];
  sub_214979C6C(v71, v24, v25, v20);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B1C8, &qword_214994C20);
  v27 = *(v26 + 48);
  v28 = &v23[*(v26 + 64)];
  (*(v17 + 32))(v23, v20, v82);
  *&v23[v27] = xmmword_214994690;
  v29 = v70;
  *v28 = 0;
  *(v28 + 1) = 0;
  swift_storeEnumTagMultiPayload();
  v30 = v1[6];
  v31 = *(v14 + 28);
  v73 = v31;
  v80 = sub_21498E5D0();
  v32 = *(v80 - 8);
  v79 = *(v32 + 56);
  v82 = v32 + 56;
  v79(v29 + v31, 1, 1, v80);
  *v29 = v24;
  v29[1] = v25;
  v33 = v74;
  *v74 = v24;
  v33[1] = v25;
  v34 = type metadata accessor for MARemoteView(0);
  sub_2148D9620(v23, v33 + v34[5]);
  *(v33 + v34[9]) = v30;
  v35 = v71;
  *(v33 + v34[10]) = v71;
  v36 = (v33 + v34[7]);
  v37 = sub_21498E8C0();
  *v36 = 0;
  v36[1] = 0;
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  swift_allocObject();
  swift_bridgeObjectRetain_n();
  v40 = v30;
  v71 = v35;
  v41 = sub_21498E8B0();
  v69 = "Assistant19IntervalGuardAction";
  v42 = swift_allocObject();
  v43 = v81;
  v44 = v77;
  v45 = v83;
  (*(v81 + 104))(v77, *MEMORY[0x277D245A0], v83);
  LOBYTE(v31) = sub_21498E500();
  (*(v43 + 8))(v44, v45);
  *(v42 + 16) = v31 & 1;
  v46 = v76;
  *v76 = v42;
  v47 = *MEMORY[0x277D23258];
  v48 = sub_21498E7C0();
  v49 = *(v48 - 8);
  (*(v49 + 104))(v46, v47, v48);
  (*(v49 + 56))(v46, 0, 1, v48);
  sub_21498E8E0();
  v50 = v84;
  sub_2148D9620(v23, v84);
  (*(v75 + 56))(v50, 0, 1, v72);
  v51 = type metadata accessor for MARemoteViewModel(0);
  memset(v85, 0, sizeof(v85));
  v86 = 0;
  v52 = *(v51 + 48);
  v53 = *(v51 + 52);
  swift_allocObject();
  v54 = v71;

  v55 = sub_21490B164(v54, v50, v41, v85);
  v56 = v33 + v34[6];
  *v56 = sub_21489B760;
  *(v56 + 1) = v55;
  v56[16] = 0;
  v57 = v73;
  v58 = v33;
  sub_21489B768(v29 + v73, v33 + v34[11]);
  v59 = v78;
  sub_21489B768(v29 + v57, v78);
  v60 = type metadata accessor for MARemoteViewDelegate(0);
  v61 = *(v60 + 48);
  v62 = *(v60 + 52);
  v63 = swift_allocObject();
  v64 = OBJC_IVAR____TtC19iCloudMailAssistant20MARemoteViewDelegate_signpostID;
  v79((v63 + OBJC_IVAR____TtC19iCloudMailAssistant20MARemoteViewDelegate_signpostID), 1, 1, v80);
  v65 = qword_281190DA8;

  if (v65 != -1)
  {
    swift_once();
  }

  sub_2148D9684(v29, type metadata accessor for TracingContext);
  sub_2148D9684(v23, type metadata accessor for MALiftUISource);
  v66 = sub_21498E600();
  __swift_project_value_buffer(v66, qword_281194E30);
  *(v63 + 16) = "LoadRemoteView";
  *(v63 + 24) = 14;
  *(v63 + 32) = 2;
  swift_beginAccess();
  sub_21489B818(v59, v63 + v64);
  result = swift_endAccess();
  v68 = (v63 + OBJC_IVAR____TtC19iCloudMailAssistant20MARemoteViewDelegate_onRetry);
  *v68 = sub_21489B7D8;
  v68[1] = v55;
  *(v58 + v34[8]) = v63;
  return result;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_21497A590(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21497A5D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21497A644()
{
  v1 = *(v0 + 56);
  v2 = (v1 + 72);
  v3 = *(v1 + 16) + 1;
  while (--v3)
  {
    v4 = *(v2 - 1);
    v5 = *v2;
    if (*(v2 - 5) != 0x5441435F4C49414DLL || *(v2 - 4) != 0xED000059524F4745)
    {
      v2 += 7;
      if ((sub_214990080() & 1) == 0)
      {
        continue;
      }
    }

    return v4;
  }

  return 0;
}

uint64_t sub_21497A6F0()
{
  v1 = *(v0 + 56);
  v2 = (v1 + 80);
  v3 = *(v1 + 16) + 1;
  while (--v3)
  {
    v4 = *v2;
    v2 += 7;
    if (v4)
    {
    }
  }

  return 0;
}

uint64_t sub_21497A734(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_214990080() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_21497A7C4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v25 = a2 + 32;
  v26 = result + 32;
  v24 = *(result + 16);
  while (v3 != v2)
  {
    v4 = (v26 + 56 * v3);
    result = *v4;
    v5 = v4[1];
    v6 = v4[2];
    v7 = v4[3];
    v8 = v4[5];
    v27 = v4[4];
    v9 = v4[6];
    v10 = (v25 + 56 * v3);
    v11 = v10[2];
    v12 = v10[3];
    v14 = v10[4];
    v13 = v10[5];
    v15 = v10[6];
    if (result != *v10 || v5 != v10[1])
    {
      result = sub_214990080();
      if ((result & 1) == 0)
      {
        return 0;
      }
    }

    if (v6 != v11 || v7 != v12)
    {
      result = sub_214990080();
      if ((result & 1) == 0)
      {
        return 0;
      }
    }

    if (v8)
    {
      if (!v13)
      {
        return 0;
      }

      result = v27;
      if (v27 != v14 || v8 != v13)
      {
        result = sub_214990080();
        if ((result & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v13)
    {
      return 0;
    }

    if (v9)
    {
      if (!v15)
      {
        return 0;
      }

      v19 = *(v9 + 16);
      if (v19 != *(v15 + 16))
      {
        return 0;
      }

      if (v19)
      {
        v20 = v9 == v15;
      }

      else
      {
        v20 = 1;
      }

      if (!v20)
      {
        v21 = (v9 + 40);
        v22 = (v15 + 40);
        while (v19)
        {
          result = *(v21 - 1);
          if (result != *(v22 - 1) || *v21 != *v22)
          {
            result = sub_214990080();
            if ((result & 1) == 0)
            {
              return 0;
            }
          }

          v21 += 2;
          v22 += 2;
          if (!--v19)
          {
            goto LABEL_6;
          }
        }

        __break(1u);
        break;
      }
    }

    else if (v15)
    {
      return 0;
    }

LABEL_6:
    ++v3;
    result = 1;
    v2 = v24;
    if (v3 == v24)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21497A984(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v17 = v2;
  v18 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    memcpy(__dst, v5, 0x179uLL);
    memcpy(v12, v5, 0x179uLL);
    memcpy(v14, v6, 0x179uLL);
    memcpy(__src, v6, 0x179uLL);
    sub_2148D8FC8(__dst, v10);
    sub_2148D8FC8(v14, v10);
    v8 = _s19iCloudMailAssistant5MATipV2eeoiySbAC_ACtFZ_0(v12, __src);
    memcpy(v15, __src, 0x179uLL);
    sub_2148F6AF8(v15);
    memcpy(v16, v12, 0x179uLL);
    sub_2148F6AF8(v16);
    if ((v8 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 384;
    v5 += 384;
  }

  return 1;
}

uint64_t sub_21497AAB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MATipDismissal();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v11 = (&v24 - v10);
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    return 0;
  }

  if (!v12 || a1 == a2)
  {
    return 1;
  }

  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v16 = *(v9 + 72);
  while (1)
  {
    result = sub_2148F6D1C(v14, v11);
    if (!v12)
    {
      break;
    }

    sub_2148F6D1C(v15, v8);
    v18 = *v11 == *v8 && v11[1] == v8[1];
    if (!v18 && (sub_214990080() & 1) == 0 || (v19 = *(v4 + 20), (sub_21498E2F0() & 1) == 0))
    {
      sub_2148F6D80(v8);
      sub_2148F6D80(v11);
      return 0;
    }

    v20 = *(v4 + 24);
    v21 = *(v11 + v20);
    v22 = *(v8 + v20);
    sub_2148F6D80(v8);
    sub_2148F6D80(v11);
    result = v21 == v22;
    v23 = v21 != v22 || v12-- == 1;
    v15 += v16;
    v14 += v16;
    if (v23)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21497AC70(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v38 = v2;
  v39 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[5];
    v29 = v5[4];
    v30 = v8;
    v31 = v5[6];
    v9 = v5[1];
    v26 = *v5;
    v27 = v9;
    v10 = v5[3];
    *v28 = v5[2];
    *&v28[16] = v10;
    v11 = v6[1];
    v32 = *v6;
    v33 = v11;
    v12 = v6[2];
    v13 = v6[3];
    v14 = v6[6];
    v36 = v6[5];
    v37 = v14;
    v15 = v6[4];
    *&v34[16] = v13;
    v35 = v15;
    *v34 = v12;
    if (*(&v26 + 1))
    {
      if (!*(&v32 + 1) || v26 != v32 && (sub_214990080() & 1) == 0)
      {
        return 0;
      }
    }

    else if (*(&v32 + 1))
    {
      return 0;
    }

    if (v27 != v33 && (sub_214990080() & 1) == 0)
    {
      return 0;
    }

    if (v28[0])
    {
      if (v28[0] == 1)
      {
        v16 = 0xE500000000000000;
        v17 = 0x4B434F4C42;
        v18 = v34[0];
        if (!v34[0])
        {
          goto LABEL_22;
        }
      }

      else
      {
        v17 = 0x4954414D4F545541;
        v16 = 0xEA00000000004E4FLL;
        v18 = v34[0];
        if (!v34[0])
        {
LABEL_22:
          v19 = 0xE600000000000000;
          if (v17 != 0x4E4F4D4D4F43)
          {
            goto LABEL_27;
          }

          goto LABEL_25;
        }
      }
    }

    else
    {
      v16 = 0xE600000000000000;
      v17 = 0x4E4F4D4D4F43;
      v18 = v34[0];
      if (!v34[0])
      {
        goto LABEL_22;
      }
    }

    if (v18 == 1)
    {
      v19 = 0xE500000000000000;
      if (v17 != 0x4B434F4C42)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v19 = 0xEA00000000004E4FLL;
      if (v17 != 0x4954414D4F545541)
      {
        goto LABEL_27;
      }
    }

LABEL_25:
    if (v16 == v19)
    {
      sub_2148D9164(&v26, v25);
      sub_2148D9164(&v32, v25);

      goto LABEL_28;
    }

LABEL_27:
    v20 = sub_214990080();
    sub_2148D9164(&v26, v25);
    sub_2148D9164(&v32, v25);

    if ((v20 & 1) == 0)
    {
      goto LABEL_46;
    }

LABEL_28:
    v21 = *&v28[24];
    v22 = *&v34[24];
    if (*&v28[8] != *&v34[8] && (sub_214990080() & 1) == 0 || (sub_21497A7C4(v21, v22) & 1) == 0 || v29 != v35 && (sub_214990080() & 1) == 0)
    {
LABEL_46:
      sub_2149504C4(&v32);
      sub_2149504C4(&v26);
      return 0;
    }

    if (*(&v30 + 1))
    {
      if (!*(&v36 + 1) || v30 != v36 && (sub_214990080() & 1) == 0)
      {
        goto LABEL_46;
      }
    }

    else if (*(&v36 + 1))
    {
      goto LABEL_46;
    }

    if (v31 == v37)
    {
      sub_2149504C4(&v32);
      sub_2149504C4(&v26);
    }

    else
    {
      v23 = sub_214990080();
      sub_2149504C4(&v32);
      sub_2149504C4(&v26);
      if ((v23 & 1) == 0)
      {
        return 0;
      }
    }

    if (!i)
    {
      break;
    }

    v6 += 7;
    v5 += 7;
  }

  return 1;
}

uint64_t sub_21497AFCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v4 = *(a1 + 48);
    v5 = *(a1 + 49);
    v6 = *(a1 + 56);
    v7 = *(a2 + 48);
    v8 = *(a2 + 49);
    v31 = *(a2 + 56);
    if (*(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40) || (v9 = a2, v10 = sub_214990080(), a2 = v9, (v10 & 1) != 0))
    {
      v29 = a2;
      v30 = v6;
      v11 = 0;
      v12 = 0xED0000455A49524FLL;
      for (i = v2 - 1; ; --i)
      {
        if (v4 > 1u)
        {
          if (v4 == 2)
          {
            v14 = 0x47455441435F4552;
          }

          else
          {
            v14 = 0xD000000000000018;
          }

          if (v4 == 2)
          {
            v15 = 0xED0000455A49524FLL;
          }

          else
          {
            v15 = 0x80000002149A09E0;
          }
        }

        else
        {
          if (v4)
          {
            v14 = 0x4145525F4B52414DLL;
          }

          else
          {
            v14 = 1163284301;
          }

          if (v4)
          {
            v15 = 0xE900000000000044;
          }

          else
          {
            v15 = 0xE400000000000000;
          }
        }

        if (v7 == 2)
        {
          v16 = 0x47455441435F4552;
        }

        else
        {
          v16 = 0xD000000000000018;
        }

        if (v7 != 2)
        {
          v12 = 0x80000002149A09E0;
        }

        if (v7)
        {
          v17 = 0x4145525F4B52414DLL;
        }

        else
        {
          v17 = 1163284301;
        }

        v18 = 0xE900000000000044;
        if (!v7)
        {
          v18 = 0xE400000000000000;
        }

        if (v7 <= 1u)
        {
          v19 = v17;
        }

        else
        {
          v19 = v16;
        }

        if (v7 <= 1u)
        {
          v20 = v18;
        }

        else
        {
          v20 = v12;
        }

        if (v14 == v19 && v15 == v20)
        {
        }

        else
        {
          v21 = sub_214990080();

          if ((v21 & 1) == 0)
          {

            return 0;
          }
        }

        if (v5 <= 1u)
        {
          if (v5)
          {
            v22 = 0x52474F52505F4E49;
            v23 = 0xEB00000000535345;
          }

          else
          {
            v23 = 0xE700000000000000;
            v22 = 0x474E49444E4550;
          }
        }

        else if (v5 == 2)
        {
          v23 = 0xE500000000000000;
          v22 = 0x524F525245;
        }

        else
        {
          if (v5 == 3)
          {
            v22 = 0x454C54544F524854;
          }

          else
          {
            v22 = 0x4554454C504D4F43;
          }

          v23 = 0xE900000000000044;
        }

        if (v8 <= 1u)
        {
          if (v8)
          {
            v25 = 0xEB00000000535345;
            if (v22 != 0x52474F52505F4E49)
            {
              goto LABEL_69;
            }
          }

          else
          {
            v25 = 0xE700000000000000;
            if (v22 != 0x474E49444E4550)
            {
              goto LABEL_69;
            }
          }
        }

        else if (v8 == 2)
        {
          v25 = 0xE500000000000000;
          if (v22 != 0x524F525245)
          {
            goto LABEL_69;
          }
        }

        else
        {
          if (v8 == 3)
          {
            v24 = 0x454C54544F524854;
          }

          else
          {
            v24 = 0x4554454C504D4F43;
          }

          v25 = 0xE900000000000044;
          if (v22 != v24)
          {
            goto LABEL_69;
          }
        }

        if (v23 == v25)
        {

          if (v30 != v31)
          {
            return 0;
          }

          goto LABEL_71;
        }

LABEL_69:
        v26 = sub_214990080();

        result = 0;
        if ((v26 & 1) == 0 || v30 != v31)
        {
          return result;
        }

LABEL_71:
        if (!i)
        {
          return 1;
        }

        v4 = *(a1 + v11 + 80);
        v5 = *(a1 + v11 + 81);
        v28 = *(a1 + v11 + 88);
        v7 = *(v29 + v11 + 80);
        v8 = *(v29 + v11 + 81);
        v30 = v28;
        v31 = *(v29 + v11 + 88);
        if ((*(a1 + v11 + 64) != *(v29 + v11 + 64) || *(a1 + v11 + 72) != *(v29 + v11 + 72)) && (sub_214990080() & 1) == 0)
        {
          return 0;
        }

        v11 += 32;
        v12 = 0xED0000455A49524FLL;
      }
    }
  }

  return 0;
}

uint64_t sub_21497B454(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CD90, &qword_21499E980);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21497C4D0();
  sub_2149901C0();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v22) = 0;
  sub_21498FFC0();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    LOBYTE(v22) = 1;
    sub_214990000();
    LOBYTE(v22) = *(v3 + 32);
    v24 = 2;
    sub_21497C524();
    sub_214990040();
    v22 = *(v3 + 5);
    v23 = v3[7];
    v24 = 3;
    sub_21497C578();
    sub_214990040();
    v16 = v3[8];
    v17 = v3[9];
    LOBYTE(v22) = 4;
    sub_214990000();
    v18 = v3[10];
    v19 = v3[11];
    LOBYTE(v22) = 5;
    sub_21498FFC0();
    v20 = v3[12];
    v21 = v3[13];
    LOBYTE(v22) = 6;
    sub_214990000();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_21497B6DC()
{
  v1 = *v0;
  v2 = 0x6449656C7572;
  v3 = 0x746567726174;
  if (v1 != 5)
  {
    v3 = 0x69546E6F69746361;
  }

  v4 = 0x7461636964657270;
  if (v1 != 3)
  {
    v4 = 0x6E6F69746361;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x656D614E656C7572;
  if (v1 != 1)
  {
    v5 = 6775156;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_21497B7AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21497CD0C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21497B7D4(uint64_t a1)
{
  v2 = sub_21497C4D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21497B810(uint64_t a1)
{
  v2 = sub_21497C4D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21497B84C(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v13[4] = a1[4];
  v13[5] = v2;
  v3 = a1[6];
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  v6 = *a2;
  v7 = a2[1];
  v13[6] = v3;
  v14[0] = v6;
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[6];
  v14[5] = a2[5];
  v14[6] = v10;
  v11 = a2[4];
  v14[3] = v9;
  v14[4] = v11;
  v14[1] = v7;
  v14[2] = v8;
  return sub_21497CA04(v13, v14) & 1;
}

__n128 sub_21497B8B4@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_21497CF58(a1, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 96) = v7[6];
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

uint64_t sub_21497B920@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_21498E350();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1[1];
  if (v8)
  {
    v9 = *v1;
    v10 = v8;
  }

  else
  {
    sub_21498E340();
    v9 = sub_21498E330();
    v10 = v11;
    (*(v4 + 8))(v7, v3);
  }

  *a1 = v9;
  a1[1] = v10;
}

uint64_t sub_21497BA1C()
{
  v1 = *(v0 + 32);
  if (*(v0 + 32) && v1 == 1)
  {

    goto LABEL_5;
  }

  v2 = sub_214990080();

  if (v2)
  {
LABEL_5:
    v3 = *(v0 + 56);
    v4 = (v3 + 80);
    v5 = *(v3 + 16) + 1;
    while (--v5)
    {
      v7 = *v4;
      v4 += 7;
      v6 = v7;
      if (v7)
      {
        v8 = *(v6 + 16);
        break;
      }
    }

    sub_21498FE00();

    v17 = 0x28204B434F4C42;
    v9 = sub_214990050();
    MEMORY[0x2160589C0](v9);

    v10 = 0x737265646E657320;
    v11 = 0xE900000000000029;
    goto LABEL_17;
  }

  if (v1 > 1)
  {

    goto LABEL_14;
  }

  v12 = sub_214990080();

  if (v12)
  {
LABEL_14:
    v13 = sub_21497A644();
    v14 = 0xD00000000000001DLL;
    if (v15)
    {
      v14 = v13;
    }

    v17 = v14;
    MEMORY[0x2160589C0](2108704, 0xE300000000000000);
    v10 = *(v0 + 64);
    v11 = *(v0 + 72);
LABEL_17:
    MEMORY[0x2160589C0](v10, v11);
    return v17;
  }

  v17 = 0;
  sub_21498FE70();
  return v17;
}

uint64_t sub_21497BC64(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CDE8, &qword_21499EB58);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21497D7B0();
  sub_2149901C0();
  v15 = 0;
  sub_214990000();
  if (!v4)
  {
    v13[1] = v13[0];
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CDF8, &qword_21499EB60);
    sub_21497DA8C(&qword_27CA1CE00, sub_21497D804);
    sub_214990040();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_21497BE38(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CE40, &unk_21499ED38);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21497DC80();
  sub_2149901C0();
  v11 = *v3;
  v12 = v3[1];
  v22 = 0;
  sub_214990000();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v21 = 1;
    sub_214990000();
    v15 = v3[4];
    v16 = v3[5];
    v20 = 2;
    sub_21498FFC0();
    v19 = v3[6];
    v18[15] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A378, &qword_214993B80);
    sub_2148F6A8C(&qword_281190CF8);
    sub_21498FFE0();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_21497C074(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x4B434F4C42;
  if (v2 != 1)
  {
    v4 = 0x4954414D4F545541;
    v3 = 0xEA00000000004E4FLL;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x4E4F4D4D4F43;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x4B434F4C42;
  if (*a2 != 1)
  {
    v8 = 0x4954414D4F545541;
    v7 = 0xEA00000000004E4FLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x4E4F4D4D4F43;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_214990080();
  }

  return v11 & 1;
}

uint64_t sub_21497C174()
{
  v1 = *v0;
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_21497C214()
{
  *v0;
  *v0;
  sub_21498F900();
}

uint64_t sub_21497C2A0()
{
  v1 = *v0;
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_21497C33C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21497D5E8();
  *a2 = result;
  return result;
}

void sub_21497C36C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x4B434F4C42;
  if (v2 != 1)
  {
    v5 = 0x4954414D4F545541;
    v4 = 0xEA00000000004E4FLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x4E4F4D4D4F43;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_21497C47C()
{
  result = qword_27CA1CD88;
  if (!qword_27CA1CD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CD88);
  }

  return result;
}

unint64_t sub_21497C4D0()
{
  result = qword_27CA1CD98;
  if (!qword_27CA1CD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CD98);
  }

  return result;
}

unint64_t sub_21497C524()
{
  result = qword_27CA1CDA0;
  if (!qword_27CA1CDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CDA0);
  }

  return result;
}

unint64_t sub_21497C578()
{
  result = qword_27CA1CDA8;
  if (!qword_27CA1CDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CDA8);
  }

  return result;
}

uint64_t sub_21497C5CC()
{
  if (*v0)
  {
    result = 0x6F697469646E6F63;
  }

  else
  {
    result = 1701869940;
  }

  *v0;
  return result;
}

uint64_t sub_21497C604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_214990080() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F697469646E6F63 && a2 == 0xEA0000000000736ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_214990080();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_21497C6E8(uint64_t a1)
{
  v2 = sub_21497D7B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21497C724(uint64_t a1)
{
  v2 = sub_21497D7B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21497C760(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_214990080() & 1) == 0)
  {
    return 0;
  }

  return sub_21497A7C4(v2, v3);
}

uint64_t sub_21497C7D4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_21497D858(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_21497C824()
{
  v1 = 0x786966657270;
  v2 = 2036625250;
  if (*v0 != 2)
  {
    v2 = 0x7473694C79646F62;
  }

  if (*v0)
  {
    v1 = 0x6F697469646E6F63;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21497C8A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21497DCD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21497C8C8(uint64_t a1)
{
  v2 = sub_21497DC80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21497C904(uint64_t a1)
{
  v2 = sub_21497DC80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21497C940(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_21497CC40(v5, v7) & 1;
}

double sub_21497C99C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_21497DE3C(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_21497CA04(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1;
    v7 = *a1 == *a2 && v4 == v5;
    if (!v7 && (sub_214990080() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v8 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v8 && (sub_214990080() & 1) == 0)
  {
    return 0;
  }

  v9 = 0xE500000000000000;
  v10 = 0x4B434F4C42;
  if (*(a1 + 32) != 1)
  {
    v10 = 0x4954414D4F545541;
    v9 = 0xEA00000000004E4FLL;
  }

  if (*(a1 + 32))
  {
    v11 = v10;
  }

  else
  {
    v11 = 0x4E4F4D4D4F43;
  }

  if (*(a1 + 32))
  {
    v12 = v9;
  }

  else
  {
    v12 = 0xE600000000000000;
  }

  v13 = 0xE500000000000000;
  v14 = 0x4B434F4C42;
  if (*(a2 + 32) != 1)
  {
    v14 = 0x4954414D4F545541;
    v13 = 0xEA00000000004E4FLL;
  }

  if (*(a2 + 32))
  {
    v15 = v14;
  }

  else
  {
    v15 = 0x4E4F4D4D4F43;
  }

  if (*(a2 + 32))
  {
    v16 = v13;
  }

  else
  {
    v16 = 0xE600000000000000;
  }

  if (v11 == v15 && v12 == v16)
  {
  }

  else
  {
    v17 = sub_214990080();

    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  v18 = a1[7];
  v19 = *(a2 + 56);
  if ((a1[5] != *(a2 + 40) || a1[6] != *(a2 + 48)) && (sub_214990080() & 1) == 0 || (sub_21497A7C4(v18, v19) & 1) == 0 || (a1[8] != *(a2 + 64) || a1[9] != *(a2 + 72)) && (sub_214990080() & 1) == 0)
  {
    return 0;
  }

  v20 = a1[11];
  v21 = *(a2 + 88);
  if (v20)
  {
    if (v21 && (a1[10] == *(a2 + 80) && v20 == v21 || (sub_214990080() & 1) != 0))
    {
      goto LABEL_47;
    }

    return 0;
  }

  if (v21)
  {
    return 0;
  }

LABEL_47:
  if (a1[12] == *(a2 + 96) && a1[13] == *(a2 + 104))
  {
    return 1;
  }

  return sub_214990080();
}

uint64_t sub_21497CC40(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_214990080() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_214990080() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[5];
  v7 = a2[5];
  if (v6)
  {
    if (!v7 || (a1[4] != a2[4] || v6 != v7) && (sub_214990080() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v8 = a1[6];
  v9 = a2[6];
  if (v8)
  {
    if (v9 && (sub_21497A734(v8, v9) & 1) != 0)
    {
      return 1;
    }
  }

  else if (!v9)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_21497CD0C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449656C7572 && a2 == 0xE600000000000000;
  if (v4 || (sub_214990080() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D614E656C7572 && a2 == 0xE800000000000000 || (sub_214990080() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 6775156 && a2 == 0xE300000000000000 || (sub_214990080() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7461636964657270 && a2 == 0xE900000000000065 || (sub_214990080() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000 || (sub_214990080() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x746567726174 && a2 == 0xE600000000000000 || (sub_214990080() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x69546E6F69746361 && a2 == 0xEA0000000000656DLL)
  {

    return 6;
  }

  else
  {
    v6 = sub_214990080();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_21497CF58@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CDB0, &qword_21499E988);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21497C4D0();
  sub_2149901B0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v49) = 0;
  v11 = sub_21498FF20();
  v41 = v12;
  LOBYTE(v49) = 1;
  *&v40 = sub_21498FF60();
  *(&v40 + 1) = v13;
  LOBYTE(v42) = 2;
  sub_21497D540();
  sub_21498FFA0();
  v14 = v49;
  LOBYTE(v42) = 3;
  sub_21497D594();
  sub_21498FFA0();
  v63 = v14;
  v15 = v49;
  v39 = v50;
  v38 = v51;
  LOBYTE(v49) = 4;
  v34 = sub_21498FF60();
  v33 = v15;
  v35 = 0;
  v37 = v16;
  LOBYTE(v49) = 5;
  v17 = sub_21498FF20();
  v36 = v18;
  v64 = 6;
  v32 = sub_21498FF60();
  v20 = v19;
  (*(v6 + 8))(v9, v5);
  *&v42 = v11;
  v21 = v41;
  *(&v42 + 1) = v41;
  v43 = v40;
  v22 = *(&v40 + 1);
  LOBYTE(v44) = v63;
  v23 = v17;
  v31 = v17;
  v24 = v33;
  *(&v44 + 1) = v33;
  *&v45 = v39;
  *(&v45 + 1) = v38;
  *&v46 = v34;
  *(&v46 + 1) = v37;
  *&v47 = v23;
  v25 = v32;
  *(&v47 + 1) = v36;
  *&v48 = v32;
  *(&v48 + 1) = v20;
  sub_2148D9164(&v42, &v49);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v49 = v11;
  v50 = v21;
  v51 = v40;
  v52 = v22;
  v53 = v63;
  v54 = v24;
  v55 = v39;
  v56 = v38;
  v57 = v34;
  v58 = v37;
  v59 = v31;
  v60 = v36;
  v61 = v25;
  v62 = v20;
  result = sub_2149504C4(&v49);
  v27 = v47;
  a2[4] = v46;
  a2[5] = v27;
  a2[6] = v48;
  v28 = v43;
  *a2 = v42;
  a2[1] = v28;
  v29 = v45;
  a2[2] = v44;
  a2[3] = v29;
  return result;
}

unint64_t sub_21497D540()
{
  result = qword_27CA1CDB8;
  if (!qword_27CA1CDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CDB8);
  }

  return result;
}

unint64_t sub_21497D594()
{
  result = qword_27CA1CDC0;
  if (!qword_27CA1CDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CDC0);
  }

  return result;
}

uint64_t sub_21497D5E8()
{
  v0 = sub_21498FEF0();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_21497D634()
{
  result = qword_27CA1CDC8;
  if (!qword_27CA1CDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CDC8);
  }

  return result;
}

unint64_t sub_21497D6AC()
{
  result = qword_27CA1CDD0;
  if (!qword_27CA1CDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CDD0);
  }

  return result;
}

unint64_t sub_21497D704()
{
  result = qword_27CA1CDD8;
  if (!qword_27CA1CDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CDD8);
  }

  return result;
}

unint64_t sub_21497D75C()
{
  result = qword_27CA1CDE0;
  if (!qword_27CA1CDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CDE0);
  }

  return result;
}

unint64_t sub_21497D7B0()
{
  result = qword_27CA1CDF0;
  if (!qword_27CA1CDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CDF0);
  }

  return result;
}

unint64_t sub_21497D804()
{
  result = qword_27CA1CE08;
  if (!qword_27CA1CE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CE08);
  }

  return result;
}

uint64_t sub_21497D858(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CE10, &qword_21499EB68);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21497D7B0();
  sub_2149901B0();
  if (!v1)
  {
    v10[31] = 0;
    v8 = sub_21498FF60();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CDF8, &qword_21499EB60);
    v10[15] = 1;
    sub_21497DA8C(&qword_27CA1CE18, sub_21497DB04);
    sub_21498FFA0();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

uint64_t sub_21497DA8C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1CDF8, &qword_21499EB60);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21497DB04()
{
  result = qword_27CA1CE20;
  if (!qword_27CA1CE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CE20);
  }

  return result;
}

unint64_t sub_21497DB7C()
{
  result = qword_27CA1CE28;
  if (!qword_27CA1CE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CE28);
  }

  return result;
}

unint64_t sub_21497DBD4()
{
  result = qword_27CA1CE30;
  if (!qword_27CA1CE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CE30);
  }

  return result;
}

unint64_t sub_21497DC2C()
{
  result = qword_27CA1CE38;
  if (!qword_27CA1CE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CE38);
  }

  return result;
}

unint64_t sub_21497DC80()
{
  result = qword_27CA1CE48;
  if (!qword_27CA1CE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CE48);
  }

  return result;
}

uint64_t sub_21497DCD4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x786966657270 && a2 == 0xE600000000000000;
  if (v4 || (sub_214990080() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F697469646E6F63 && a2 == 0xED0000657079546ELL || (sub_214990080() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 2036625250 && a2 == 0xE400000000000000 || (sub_214990080() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7473694C79646F62 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_214990080();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_21497DE3C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CE50, &qword_21499ED48);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21497DC80();
  sub_2149901B0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v31 = 0;
  v11 = sub_21498FF60();
  v13 = v12;
  v25 = v11;
  v30 = 1;
  v14 = sub_21498FF60();
  v26 = v15;
  v23 = v14;
  v29 = 2;
  v22 = sub_21498FF20();
  v24 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A378, &qword_214993B80);
  v28 = 3;
  sub_2148F6A8C(&qword_281190CE8);
  sub_21498FF40();
  (*(v6 + 8))(v9, v5);
  v17 = v27;

  v18 = v26;

  v19 = v24;

  __swift_destroy_boxed_opaque_existential_1(a1);

  *a2 = v25;
  a2[1] = v13;
  v21 = v22;
  a2[2] = v23;
  a2[3] = v18;
  a2[4] = v21;
  a2[5] = v19;
  a2[6] = v17;
  return result;
}

unint64_t sub_21497E190()
{
  result = qword_27CA1CE58;
  if (!qword_27CA1CE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CE58);
  }

  return result;
}

unint64_t sub_21497E1E8()
{
  result = qword_27CA1CE60;
  if (!qword_27CA1CE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CE60);
  }

  return result;
}

unint64_t sub_21497E240()
{
  result = qword_27CA1CE68;
  if (!qword_27CA1CE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CE68);
  }

  return result;
}

uint64_t sub_21497E294(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = a7;
  *(v8 + 64) = a8;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 144) = a4;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  v9 = sub_21498E5D0();
  *(v8 + 72) = v9;
  v10 = *(v9 - 8);
  *(v8 + 80) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 88) = swift_task_alloc();
  *(v8 + 96) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21497E36C, 0, 0);
}

uint64_t sub_21497E36C()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 40);
  sub_21498E5F0();
  sub_21498E5B0();
  v3 = sub_21498E5F0();
  v4 = sub_21498FC80();
  result = sub_21498FCE0();
  if (result)
  {
    v6 = *(v0 + 24);
    if ((*(v0 + 144) & 1) == 0)
    {
      if (v6)
      {
LABEL_9:
        v7 = *(v0 + 96);
        v8 = swift_slowAlloc();
        *v8 = 0;
        v9 = sub_21498E5C0();
        _os_signpost_emit_with_name_impl(&dword_21488E000, v3, v4, v9, v6, "", v8, 2u);
        MEMORY[0x216059AC0](v8, -1, -1);
        goto LABEL_10;
      }

      __break(1u);
    }

    if (v6 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v6 & 0xFFFFF800) == 0xD800)
      {
LABEL_15:
        __break(1u);
        return result;
      }

      if (v6 >> 16 <= 0x10)
      {
        v6 = (v0 + 16);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_10:

  v11 = *(v0 + 56);
  v10 = *(v0 + 64);
  v12 = *(v0 + 48);
  (*(*(v0 + 80) + 16))(*(v0 + 88), *(v0 + 96), *(v0 + 72));
  v13 = sub_21498E650();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *(v0 + 104) = sub_21498E640();
  *(v0 + 112) = *(v12 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A5A0, &qword_2149924F0);
  v16 = swift_allocObject();
  *(v0 + 120) = v16;
  *(v16 + 16) = xmmword_214991720;
  *(v16 + 32) = v11;
  *(v16 + 40) = v10;

  v17 = swift_task_alloc();
  *(v0 + 128) = v17;
  *v17 = v0;
  v17[1] = sub_21497E590;

  return sub_21494DD78(v16, 0, 0, 0);
}

uint64_t sub_21497E590()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v8 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = sub_21497E788;
  }

  else
  {
    v6 = *(v2 + 112);
    v5 = *(v2 + 120);

    v4 = sub_21497E6B4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21497E6B4()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  v6 = *(v0 + 64);
  v5 = *(v0 + 72);
  v7 = *(v0 + 48);
  sub_21497EFE0(*(v0 + 40), *(v0 + 24), *(v0 + 32), *(v0 + 144));

  (*(v4 + 8))(v1, v5);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_21497E788()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = *(v0 + 80);
  v6 = *(v0 + 72);
  v15 = *(v0 + 64);
  v16 = *(v0 + 88);
  v7 = *(v0 + 40);
  v14 = *(v0 + 48);
  v8 = *(v0 + 24);
  v9 = *(v0 + 32);
  v10 = *(v0 + 144);

  sub_21497EFE0(v7, v8, v9, v10);

  (*(v5 + 8))(v4, v6);

  v11 = *(v0 + 8);
  v12 = *(v0 + 136);

  return v11();
}

uint64_t sub_21497E88C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = a7;
  *(v8 + 64) = a8;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 136) = a4;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  v9 = sub_21498E5D0();
  *(v8 + 72) = v9;
  v10 = *(v9 - 8);
  *(v8 + 80) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 88) = swift_task_alloc();
  *(v8 + 96) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21497E964, 0, 0);
}

uint64_t sub_21497E964()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 40);
  sub_21498E5F0();
  sub_21498E5B0();
  v3 = sub_21498E5F0();
  v4 = sub_21498FC80();
  result = sub_21498FCE0();
  if (result)
  {
    v6 = *(v0 + 24);
    if ((*(v0 + 136) & 1) == 0)
    {
      if (v6)
      {
LABEL_9:
        v7 = *(v0 + 96);
        v8 = swift_slowAlloc();
        *v8 = 0;
        v9 = sub_21498E5C0();
        _os_signpost_emit_with_name_impl(&dword_21488E000, v3, v4, v9, v6, "", v8, 2u);
        MEMORY[0x216059AC0](v8, -1, -1);
        goto LABEL_10;
      }

      __break(1u);
    }

    if (v6 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v6 & 0xFFFFF800) == 0xD800)
      {
LABEL_15:
        __break(1u);
        return result;
      }

      if (v6 >> 16 <= 0x10)
      {
        v6 = (v0 + 16);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_10:

  v10 = *(v0 + 48);
  (*(*(v0 + 80) + 16))(*(v0 + 88), *(v0 + 96), *(v0 + 72));
  v11 = sub_21498E650();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *(v0 + 104) = sub_21498E640();
  *(v0 + 112) = *(v10 + 64);

  v14 = swift_task_alloc();
  *(v0 + 120) = v14;
  *v14 = v0;
  v14[1] = sub_21497EB3C;
  v16 = *(v0 + 56);
  v15 = *(v0 + 64);

  return sub_21494E8C4(v16, v15);
}

uint64_t sub_21497EB3C()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_21497ED2C;
  }

  else
  {
    v5 = *(v2 + 112);

    v4 = sub_21497EC58;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21497EC58()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  v6 = *(v0 + 64);
  v5 = *(v0 + 72);
  v7 = *(v0 + 48);
  sub_21497EFE0(*(v0 + 40), *(v0 + 24), *(v0 + 32), *(v0 + 136));

  (*(v4 + 8))(v1, v5);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_21497ED2C()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  v4 = *(v0 + 72);
  v5 = *(v0 + 80);
  v14 = *(v0 + 64);
  v15 = *(v0 + 88);
  v7 = *(v0 + 40);
  v6 = *(v0 + 48);
  v9 = *(v0 + 24);
  v8 = *(v0 + 32);
  v10 = *(v0 + 136);

  sub_21497EFE0(v7, v9, v8, v10);

  (*(v5 + 8))(v3, v4);

  v11 = *(v0 + 8);
  v12 = *(v0 + 128);

  return v11();
}

uint64_t sub_21497EE24()
{
  v0 = sub_21498E690();
  __swift_allocate_value_buffer(v0, qword_281194E18);
  __swift_project_value_buffer(v0, qword_281194E18);
  return sub_21498E680();
}

uint64_t sub_21497EEA4()
{
  v0 = sub_21498E690();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21498E600();
  __swift_allocate_value_buffer(v5, qword_281194E30);
  __swift_project_value_buffer(v5, qword_281194E30);
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_281194E18);
  (*(v1 + 16))(v4, v6, v0);
  return sub_21498E5E0();
}

uint64_t sub_21497EFE0(uint64_t a1, const char *a2, uint64_t a3, char a4)
{
  v28 = a2;
  v5 = sub_21498E610();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_21498E5D0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v26[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_21498E5F0();
  sub_21498E630();
  v27 = sub_21498FC70();
  result = sub_21498FCE0();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v11 + 8))(v14, v10);
  }

  if ((a4 & 1) == 0)
  {
    if (v28)
    {
LABEL_9:

      sub_21498E660();

      if ((*(v6 + 88))(v9, v5) == *MEMORY[0x277D85B00])
      {
        v17 = 0;
        v18 = 0;
        v19 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v9, v5);
        v19 = "%s";
        v18 = 2;
        v17 = 1;
      }

      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v29 = v21;
      *v20 = v18;
      *(v20 + 1) = v17;
      *(v20 + 2) = 2080;
      v22 = sub_21498FE10();
      v24 = sub_2149079F4(v22, v23, &v29);

      *(v20 + 4) = v24;
      v25 = sub_21498E5C0();
      _os_signpost_emit_with_name_impl(&dword_21488E000, v15, v27, v25, v28, v19, v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x216059AC0](v21, -1, -1);
      MEMORY[0x216059AC0](v20, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v28 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v28 & 0xFFFFF800) != 0xD800)
  {
    if (v28 >> 16 <= 0x10)
    {
      v28 = &v30;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_21497F2F8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v3;
  v6 = *(v2 + OBJC_IVAR____TtC19iCloudMailAssistant22MALoadRemoteDataAction_onSuccessActions);
  v31 = *(v2 + OBJC_IVAR____TtC19iCloudMailAssistant22MALoadRemoteDataAction_onErrorActions);

  sub_2148A8A04(v7);
  v8 = *(v2 + OBJC_IVAR____TtC19iCloudMailAssistant22MALoadRemoteDataAction_onCompletionActions);

  sub_2148A8A04(v9);
  v10 = v31;
  result = sub_2148994D0(a1, &v25);
  v12 = *(v10 + 16);
  if (v12)
  {
    v13 = 0;
    v14 = v10 + 32;
    while (v13 < *(v10 + 16))
    {
      sub_2148994D0(v14, v24);
      v15 = v24[4];
      __swift_project_boxed_opaque_existential_1(v24, v24[3]);
      v16 = *(v15 + 8);
      sub_21498E7E0();
      if (v4)
      {
        __swift_destroy_boxed_opaque_existential_1(&v25);

        v21 = v24;
        return __swift_destroy_boxed_opaque_existential_1(v21);
      }

      ++v13;
      __swift_destroy_boxed_opaque_existential_1(&v25);
      __swift_destroy_boxed_opaque_existential_1(v24);
      result = sub_2148970B8(&v23, &v25);
      v14 += 40;
      if (v12 == v13)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    sub_2148970B8(&v25, v28);
    v17 = v29;
    v18 = v30;
    __swift_project_boxed_opaque_existential_1(v28, v29);
    swift_getKeyPath();
    v19 = type metadata accessor for MARemoteViewModel(255);
    v20 = sub_214985D14(&qword_27CA1A5B0, type metadata accessor for MARemoteViewModel);
    *&v25 = v17;
    *(&v25 + 1) = v19;
    v26 = v18;
    v27 = v20;
    a2[3] = swift_getOpaqueTypeMetadata2();
    *&v25 = v17;
    *(&v25 + 1) = v19;
    v26 = v18;
    v27 = v20;
    a2[4] = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1(a2);

    sub_21498F1C0();

    v21 = v28;
    return __swift_destroy_boxed_opaque_existential_1(v21);
  }

  return result;
}

uint64_t sub_21497F590(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6D0, &qword_2149916C0) - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A330, &qword_2149916E0) - 8) + 64) + 15;
  v3[21] = swift_task_alloc();
  v6 = sub_21498E7C0();
  v3[22] = v6;
  v7 = *(v6 - 8);
  v3[23] = v7;
  v3[24] = *(v7 + 64);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A808, &unk_21499B730) - 8) + 64) + 15;
  v3[27] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A800, &unk_214993100) - 8) + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_21498E690();
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A348, &qword_214991700) - 8) + 64) + 15;
  v3[36] = swift_task_alloc();
  v14 = sub_21498E1B0();
  v3[37] = v14;
  v15 = *(v14 - 8);
  v3[38] = v15;
  v16 = *(v15 + 64) + 15;
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v17 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_21497F8AC, 0, 0);
}

uint64_t sub_21497F8AC()
{
  v120 = v0;
  v119[1] = *MEMORY[0x277D85DE8];
  v1 = v0[17];
  v2 = v0[19] + OBJC_IVAR____TtC19iCloudMailAssistant22MALoadRemoteDataAction_urlReference;
  v3 = sub_21498E8F0();
  v0[42] = v4;
  v5 = v4;
  v6 = v0[37];
  v7 = v0[38];
  v8 = v0[36];
  v116 = v3;
  sub_21498E1A0();
  if ((*(v7 + 48))(v8, 1, v6) == 1)
  {
    sub_21489DFCC(v0[36], &qword_27CA1A348, &qword_214991700);
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v9 = v0[32];
    v10 = v0[29];
    v11 = v0[30];
    v12 = __swift_project_value_buffer(v10, qword_281194E18);
    (*(v11 + 16))(v9, v12, v10);

    v13 = sub_21498E670();
    v14 = sub_21498FBB0();

    v15 = os_log_type_enabled(v13, v14);
    v16 = v0[32];
    v17 = v0[29];
    v18 = v0[30];
    if (v15)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v119[0] = v20;
      *v19 = 136315138;
      v21 = sub_2149079F4(v116, v5, v119);

      *(v19 + 4) = v21;
      _os_log_impl(&dword_21488E000, v13, v14, "HTTP Request Action: not url: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x216059AC0](v20, -1, -1);
      MEMORY[0x216059AC0](v19, -1, -1);
    }

    else
    {
    }

    (*(v18 + 8))(v16, v17);
    v51 = v0[18];
    v52 = v0[19];
    v53 = v0[17];
    v54 = *(v52 + OBJC_IVAR____TtC19iCloudMailAssistant22MALoadRemoteDataAction_onErrorActions);
    sub_21498FA20();
    v55 = *(v52 + OBJC_IVAR____TtC19iCloudMailAssistant22MALoadRemoteDataAction_onCompletionActions);
    sub_21498FA20();
LABEL_30:
    v90 = v0[40];
    v89 = v0[41];
    v91 = v0[39];
    v93 = v0[35];
    v92 = v0[36];
    v95 = v0[33];
    v94 = v0[34];
    v97 = v0[31];
    v96 = v0[32];
    v98 = v0[28];
    v109 = v0[27];
    v111 = v0[26];
    v113 = v0[25];
    v115 = v0[21];
    v118 = v0[20];

    v99 = v0[1];
    v100 = *MEMORY[0x277D85DE8];

    return v99();
  }

  v22 = v0[19];
  (*(v0[38] + 32))(v0[41], v0[36], v0[37]);
  v23 = *(v22 + OBJC_IVAR____TtC19iCloudMailAssistant22MALoadRemoteDataAction_viewModel);
  v0[43] = v23;
  if (!v23)
  {

    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v56 = v0[33];
    v57 = v0[29];
    v58 = v0[30];
    v59 = __swift_project_value_buffer(v57, qword_281194E18);
    (*(v58 + 16))(v56, v59, v57);
    v60 = sub_21498E670();
    v61 = sub_21498FBB0();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_21488E000, v60, v61, "ViewModel is nil", v62, 2u);
      MEMORY[0x216059AC0](v62, -1, -1);
    }

    v117 = v0[41];
    v63 = v0[37];
    v64 = v0[38];
    v65 = v0[33];
    v66 = v0[29];
    v67 = v0[30];
    v69 = v0[18];
    v68 = v0[19];
    v70 = v0[17];

    (*(v67 + 8))(v65, v66);
    v71 = *(v68 + OBJC_IVAR____TtC19iCloudMailAssistant22MALoadRemoteDataAction_onErrorActions);
    sub_21498FA20();
    v72 = *(v68 + OBJC_IVAR____TtC19iCloudMailAssistant22MALoadRemoteDataAction_onCompletionActions);
    sub_21498FA20();
    (*(v64 + 8))(v117, v63);
    goto LABEL_30;
  }

  v24 = qword_281190DA0;

  if (v24 != -1)
  {
    swift_once();
  }

  v26 = v0[40];
  v25 = v0[41];
  v27 = v0[37];
  v28 = v0[38];
  v29 = v0[35];
  v30 = v0[29];
  v31 = v0[30];
  v32 = __swift_project_value_buffer(v30, qword_281194E18);
  v0[44] = v32;
  v33 = *(v31 + 16);
  v0[45] = v33;
  v0[46] = (v31 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v33(v29, v32, v30);
  v34 = *(v28 + 16);
  v0[47] = v34;
  v0[48] = (v28 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v34(v26, v25, v27);
  v35 = sub_21498E670();
  v114 = sub_21498FBD0();
  v36 = os_log_type_enabled(v35, v114);
  v37 = v0[40];
  v38 = v0[37];
  v39 = v0[38];
  v40 = v0[35];
  v41 = v0[29];
  v42 = v0[30];
  if (v36)
  {
    v112 = v23;
    v43 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    v119[0] = v110;
    *v43 = 136315138;
    sub_214985D14(&unk_281192700, MEMORY[0x277CC9260]);
    v107 = v41;
    v108 = v40;
    v44 = sub_214990050();
    v46 = v45;
    log = v35;
    v47 = *(v39 + 8);
    v47(v37, v38);
    v48 = sub_2149079F4(v44, v46, v119);

    *(v43 + 4) = v48;
    _os_log_impl(&dword_21488E000, log, v114, "HTTP Request Action: %s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v110);
    MEMORY[0x216059AC0](v110, -1, -1);
    v49 = v43;
    v23 = v112;
    MEMORY[0x216059AC0](v49, -1, -1);

    v50 = *(v42 + 8);
    v50(v108, v107);
  }

  else
  {

    v47 = *(v39 + 8);
    v47(v37, v38);
    v50 = *(v42 + 8);
    v50(v40, v41);
  }

  v0[49] = v47;
  v0[50] = v50;
  v73 = v0[28];
  sub_2148AA824(v0[19] + OBJC_IVAR____TtC19iCloudMailAssistant22MALoadRemoteDataAction_method, v73, &qword_27CA1A800, &unk_214993100);
  v74 = sub_21498E900();
  v75 = *(v74 - 8);
  if ((*(v75 + 48))(v73, 1, v74) == 1)
  {
    sub_21489DFCC(v0[28], &qword_27CA1A800, &unk_214993100);
    v76 = 1;
  }

  else
  {
    v77 = v0[17];
    sub_21498E8F0();
    (*(v75 + 8))(v0[28], v74);
    v78 = sub_21491F750();
    if (v78 == 4)
    {
      v76 = 1;
    }

    else
    {
      v76 = v78;
    }
  }

  v79 = v0[27];
  sub_2148AA824(v0[19] + OBJC_IVAR____TtC19iCloudMailAssistant22MALoadRemoteDataAction_jsonBody, v79, &qword_27CA1A808, &unk_21499B730);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A838, &qword_21499B640);
  v81 = *(v80 - 8);
  if ((*(v81 + 48))(v79, 1, v80) == 1)
  {
    sub_21489DFCC(v0[27], &qword_27CA1A808, &unk_21499B730);
    v82 = 0;
    v83 = 0xF000000000000000;
  }

  else
  {
    v88 = v0[17];
    sub_2148B4A4C();
    sub_21498E750();
    (*(v81 + 8))(v0[27], v80);
    v101 = v0[12];
    v102 = sub_21498DF70();
    v103 = *(v102 + 48);
    v104 = *(v102 + 52);
    swift_allocObject();
    sub_21498DF60();
    v0[16] = v101;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A6D0, &qword_2149933D0);
    sub_2148B4AC8();
    v82 = sub_21498DF50();
    v83 = v105;
  }

  v0[51] = v82;
  v0[52] = v83;
  v84 = *__swift_project_boxed_opaque_existential_1((v23 + OBJC_IVAR____TtC19iCloudMailAssistant17MARemoteViewModel_repository), *(v23 + OBJC_IVAR____TtC19iCloudMailAssistant17MARemoteViewModel_repository + 24));
  v85 = swift_task_alloc();
  v0[53] = v85;
  *v85 = v0;
  v85[1] = sub_21498070C;
  v86 = *MEMORY[0x277D85DE8];

  return sub_214937744(v116, v5, v76, v82, v83);
}

uint64_t sub_21498070C(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 424);
  v7 = *v3;
  v5[54] = a1;
  v5[55] = a2;
  v5[56] = v2;

  v8 = v4[42];

  if (v2)
  {
    v9 = sub_214980878;
  }

  else
  {
    v9 = sub_214980CD8;
  }

  v10 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_214980878()
{
  v64 = v0;
  v63[1] = *MEMORY[0x277D85DE8];
  sub_21489B8F0(v0[51], v0[52]);
  v61 = v0[56];
  v0[13] = v61;
  v55 = v0[47];
  v58 = v0[48];
  v1 = v0[45];
  v2 = v0[46];
  v3 = v0[44];
  v52 = v0[41];
  v4 = v0[39];
  v5 = v0[37];
  v6 = v0[31];
  v7 = v0[29];
  v0[10] = 0;
  v0[11] = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4D0, &qword_2149993E0);
  sub_21498FE70();
  v50 = v0[10];
  v8 = v0[11];
  v1(v6, v3, v7);
  v55(v4, v52, v5);

  v9 = sub_21498E670();
  LOBYTE(v3) = sub_21498FBB0();

  v56 = v3;
  v10 = os_log_type_enabled(v9, v3);
  v12 = v0[49];
  v11 = v0[50];
  v14 = v0[38];
  v13 = v0[39];
  v15 = v0[37];
  v16 = v0[31];
  v59 = v0[30];
  v17 = v0[29];
  if (v10)
  {
    v53 = v0[31];
    v18 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v63[0] = v49;
    *v18 = 136315394;
    sub_214985D14(&unk_281192700, MEMORY[0x277CC9260]);
    v47 = v17;
    v48 = v11;
    v19 = sub_214990050();
    v21 = v20;
    v12(v13, v15);
    v22 = sub_2149079F4(v19, v21, v63);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    v23 = sub_2149079F4(v50, v8, v63);

    *(v18 + 14) = v23;
    _os_log_impl(&dword_21488E000, v9, v56, "Network request failed with url: %s | Error: %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x216059AC0](v49, -1, -1);
    MEMORY[0x216059AC0](v18, -1, -1);

    v48(v53, v47);
  }

  else
  {

    v12(v13, v15);
    v11(v16, v17);
  }

  v24 = v0[18];
  v25 = v0[19];
  v26 = v0[17];
  v27 = *(v25 + OBJC_IVAR____TtC19iCloudMailAssistant22MALoadRemoteDataAction_onErrorActions);
  sub_21498FA20();
  v28 = *(v25 + OBJC_IVAR____TtC19iCloudMailAssistant22MALoadRemoteDataAction_onCompletionActions);
  sub_21498FA20();

  v29 = v0[49];
  v30 = v0[43];
  v31 = v0[41];
  v32 = v0[37];
  v33 = v0[38];

  v29(v31, v32);
  v35 = v0[40];
  v34 = v0[41];
  v36 = v0[39];
  v38 = v0[35];
  v37 = v0[36];
  v40 = v0[33];
  v39 = v0[34];
  v42 = v0[31];
  v41 = v0[32];
  v43 = v0[28];
  v51 = v0[27];
  v54 = v0[26];
  v57 = v0[25];
  v60 = v0[21];
  v62 = v0[20];

  v44 = v0[1];
  v45 = *MEMORY[0x277D85DE8];

  return v44();
}

uint64_t sub_214980CD8()
{
  v118 = v0;
  v117[1] = *MEMORY[0x277D85DE8];
  v1 = v0[54];
  v2 = v0[55];
  v3 = objc_opt_self();
  v4 = sub_21498E1C0();
  v0[14] = 0;
  v5 = [v3 JSONObjectWithData:v4 options:0 error:v0 + 14];

  v6 = v0[14];
  if (!v5)
  {
    v23 = v0[54];
    v24 = v0[55];
    v26 = v0[51];
    v25 = v0[52];
    v27 = v6;
    v28 = sub_21498E100();

    swift_willThrow();
    sub_21489B4F8(v23, v24);
    sub_21489B8F0(v26, v25);
    v0[10] = 0;
    v106 = v0[47];
    v110 = v0[48];
    v29 = v0[45];
    v30 = v0[44];
    v98 = v0[46];
    v102 = v0[41];
    v31 = v0[39];
    v32 = v0[37];
    v33 = v0[31];
    v34 = v0[29];
    v0[11] = 0xE000000000000000;
    v114 = v28;
    v0[13] = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4D0, &qword_2149993E0);
    sub_21498FE70();
    v35 = v0[11];
    v97 = v0[10];
    v29(v33, v30, v34);
    v106(v31, v102, v32);

    v36 = sub_21498E670();
    LOBYTE(v30) = sub_21498FBB0();

    v107 = v30;
    v37 = os_log_type_enabled(v36, v30);
    v39 = v0[49];
    v38 = v0[50];
    v41 = v0[38];
    v40 = v0[39];
    v42 = v0[37];
    v43 = v0[31];
    v111 = v0[30];
    v44 = v0[29];
    if (v37)
    {
      v103 = v0[31];
      v45 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v117[0] = v99;
      *v45 = 136315394;
      sub_214985D14(&unk_281192700, MEMORY[0x277CC9260]);
      v95 = v44;
      v96 = v38;
      v46 = sub_214990050();
      v48 = v47;
      v39(v40, v42);
      v49 = sub_2149079F4(v46, v48, v117);

      *(v45 + 4) = v49;
      *(v45 + 12) = 2080;
      v50 = sub_2149079F4(v97, v35, v117);

      *(v45 + 14) = v50;
      _os_log_impl(&dword_21488E000, v36, v107, "Network request failed with url: %s | Error: %s", v45, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x216059AC0](v99, -1, -1);
      MEMORY[0x216059AC0](v45, -1, -1);

      v96(v103, v95);
    }

    else
    {

      v39(v40, v42);
      v38(v43, v44);
    }

    v51 = v0[18];
    v52 = v0[19];
    v53 = v0[17];
    v54 = *(v52 + OBJC_IVAR____TtC19iCloudMailAssistant22MALoadRemoteDataAction_onErrorActions);
    sub_21498FA20();
    v55 = *(v52 + OBJC_IVAR____TtC19iCloudMailAssistant22MALoadRemoteDataAction_onCompletionActions);
    sub_21498FA20();

    goto LABEL_14;
  }

  v7 = v6;
  sub_21498FD40();
  swift_unknownObjectRelease();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CE98, &qword_21499EFA0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_5;
  }

  v9 = v0[22];
  v10 = v0[23];
  v11 = v0 + 22;
  v12 = v0[21];
  v13 = v0[19];
  v14 = v0[15];
  v0[9] = v8;
  v0[6] = v14;
  sub_2149814F4((v0 + 6), v12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 6);
  if ((*(v10 + 48))(v12, 1, v9) == 1)
  {
    sub_21489DFCC(v0[21], &qword_27CA1A330, &qword_2149916E0);
LABEL_5:
    v11 = v0 + 29;
    v15 = v0[46];
    v16 = v0 + 34;
    (v0[45])(v0[34], v0[44], v0[29]);
    v17 = sub_21498E670();
    v18 = sub_21498FBB0();
    v19 = os_log_type_enabled(v17, v18);
    v20 = v0[30];
    if (v19)
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_21488E000, v17, v18, "Unable to parse json", v21, 2u);
      MEMORY[0x216059AC0](v21, -1, -1);
    }

    v22 = (v0 + 50);
    goto LABEL_13;
  }

  v16 = v0 + 26;
  v56 = v0[26];
  v57 = v0[25];
  v59 = v0[22];
  v58 = v0[23];
  v60 = v0[20];
  v104 = v57;
  v108 = v60;
  v100 = v0[19];
  v61 = v0[17];
  v112 = v0[24];
  v115 = *(v58 + 32);
  v115(v56, v0[21], v59);
  v62 = sub_21498FAE0();
  (*(*(v62 - 8) + 56))(v60, 1, 1, v62);
  v63 = *(v58 + 16);
  v58 += 16;
  v63(v57, v56, v59);
  sub_21498FAB0();

  v64 = sub_21498FAA0();
  v65 = (*(v58 + 64) + 48) & ~*(v58 + 64);
  v66 = swift_allocObject();
  v67 = MEMORY[0x277D85700];
  v66[2] = v64;
  v66[3] = v67;
  v66[4] = v100;
  v66[5] = v61;
  v115(v66 + v65, v104, v59);
  sub_214906278(0, 0, v108, &unk_21499EFB0, v66);

  v22 = (v58 - 8);
LABEL_13:
  v68 = v0[54];
  v69 = v0[55];
  v71 = v0[51];
  v70 = v0[52];
  v72 = v0[18];
  v73 = v0[19];
  v74 = v0[17];
  (*v22)(*v16, *v11);
  v75 = *(v73 + OBJC_IVAR____TtC19iCloudMailAssistant22MALoadRemoteDataAction_onSuccessActions);
  sub_21498FA20();
  v76 = *(v73 + OBJC_IVAR____TtC19iCloudMailAssistant22MALoadRemoteDataAction_onCompletionActions);
  sub_21498FA20();
  sub_21489B8F0(v71, v70);
  sub_21489B4F8(v68, v69);
LABEL_14:
  v77 = v0[49];
  v78 = v0[43];
  v79 = v0[41];
  v80 = v0[37];
  v81 = v0[38];

  v77(v79, v80);
  v83 = v0[40];
  v82 = v0[41];
  v84 = v0[39];
  v86 = v0[35];
  v85 = v0[36];
  v88 = v0[33];
  v87 = v0[34];
  v90 = v0[31];
  v89 = v0[32];
  v91 = v0[28];
  v101 = v0[27];
  v105 = v0[26];
  v109 = v0[25];
  v113 = v0[21];
  v116 = v0[20];

  v92 = v0[1];
  v93 = *MEMORY[0x277D85DE8];

  return v92();
}

uint64_t sub_2149814F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A330, &qword_2149916E0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v89 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v98 = v89 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = v89 - v14;
  v16 = sub_21498E7C0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v100 = v89 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = v89 - v24;
  sub_21489E614(a1, &v105);
  if (swift_dynamicCast())
  {
    sub_21498FB60();
    return (*(v17 + 56))(a2, 0, 1, v16);
  }

  sub_21489E614(a1, &v105);
  if (swift_dynamicCast())
  {
    sub_21498F910();

    return (*(v17 + 56))(a2, 0, 1, v16);
  }

  sub_21489E614(a1, &v105);
  if (swift_dynamicCast())
  {
    sub_21498FA40();
    return (*(v17 + 56))(a2, 0, 1, v16);
  }

  sub_21489E614(a1, &v105);
  if (swift_dynamicCast())
  {
    sub_21498FB10();
    return (*(v17 + 56))(a2, 0, 1, v16);
  }

  sub_21489E614(a1, &v105);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CEA8, &qword_21499EFD8);
  v27 = swift_dynamicCast();
  v99 = v16;
  v97 = v17;
  if (v27)
  {
    v28 = *(v102 + 16);
    if (v28)
    {
      v89[0] = a2;
      v100 = v102;
      v29 = v102 + 32;
      v30 = (v97 + 48);
      v31 = (v97 + 32);
      v32 = MEMORY[0x277D84F90];
      do
      {
        sub_21489E614(v29, &v105);
        sub_2149814F4(&v105);
        __swift_destroy_boxed_opaque_existential_1(&v105);
        v33 = v99;
        if ((*v30)(v15, 1, v99) == 1)
        {
          sub_21489DFCC(v15, &qword_27CA1A330, &qword_2149916E0);
        }

        else
        {
          v34 = *v31;
          (*v31)(v25, v15, v33);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v32 = sub_2148A92FC(0, *(v32 + 2) + 1, 1, v32);
          }

          v36 = *(v32 + 2);
          v35 = *(v32 + 3);
          if (v36 >= v35 >> 1)
          {
            v32 = sub_2148A92FC(v35 > 1, v36 + 1, 1, v32);
          }

          *(v32 + 2) = v36 + 1;
          v34(&v32[((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v36], v25, v99);
        }

        v29 += 32;
        --v28;
      }

      while (v28);

      a2 = v89[0];
    }

    else
    {

      v32 = MEMORY[0x277D84F90];
    }

    v86 = swift_allocObject();
    *(v86 + 16) = v32;
    *a2 = v86;
    v87 = v97;
    v88 = v99;
    (*(v97 + 104))(a2, *MEMORY[0x277D23278], v99);
    return (*(v87 + 56))(a2, 0, 1, v88);
  }

  sub_21489E614(a1, &v105);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CE98, &qword_21499EFA0);
  if (!swift_dynamicCast())
  {
    sub_21489E614(a1, &v105);
    v78 = swift_dynamicCast();
    v79 = v17;
    v80 = *(v17 + 56);
    if (v78)
    {
      v80(v8, 0, 1, v16);
      v81 = *(v79 + 32);
      v81(v21, v8, v16);
      v81(a2, v21, v16);
      v82 = a2;
      v83 = 0;
    }

    else
    {
      v80(v8, 1, 1, v16);
      sub_21489DFCC(v8, &qword_27CA1A330, &qword_2149916E0);
      v82 = a2;
      v83 = 1;
    }

    return (v80)(v82, v83, 1, v16);
  }

  v90 = v11;
  v89[0] = a2;
  v37 = v102;
  v38 = sub_2148E0C4C(MEMORY[0x277D84F90]);
  v39 = 0;
  v41 = v37 + 64;
  v40 = *(v37 + 64);
  v92 = v37;
  v42 = 1 << *(v37 + 32);
  v43 = -1;
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  v44 = v43 & v40;
  v45 = (v42 + 63) >> 6;
  v96 = (v17 + 48);
  v95 = (v17 + 32);
  v89[1] = v17 + 40;
  v91 = (v17 + 56);
  v46 = v98;
  v93 = v45;
  v94 = v37 + 64;
  if ((v43 & v40) == 0)
  {
    goto LABEL_29;
  }

  do
  {
    while (1)
    {
      v49 = v39;
LABEL_37:
      v52 = __clz(__rbit64(v44));
      v44 &= v44 - 1;
      v53 = v52 | (v49 << 6);
      v54 = (*(v92 + 48) + 16 * v53);
      v56 = *v54;
      v55 = v54[1];
      sub_21489E614(*(v92 + 56) + 32 * v53, v101);
      *&v102 = v56;
      *(&v102 + 1) = v55;
      sub_2148A4198(v101, &v103);

LABEL_38:
      v105 = v102;
      v106[0] = v103;
      v106[1] = v104;
      v57 = *(&v102 + 1);
      if (!*(&v102 + 1))
      {

        v84 = swift_allocObject();
        *(v84 + 16) = v38;
        v85 = v89[0];
        *v89[0] = v84;
        (*(v17 + 104))(v85, *MEMORY[0x277D23270], v16);
        return (*(v17 + 56))(v85, 0, 1, v16);
      }

      v58 = v105;
      sub_2148A4198(v106, &v102);
      sub_2149814F4(&v102);
      if ((*v96)(v46, 1, v16) == 1)
      {
        break;
      }

      v64 = *v95;
      (*v95)(v100, v46, v16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v101[0] = v38;
      v67 = sub_214907F9C(v58, v57);
      v68 = v38[2];
      v69 = (v66 & 1) == 0;
      v70 = v68 + v69;
      if (__OFADD__(v68, v69))
      {
        goto LABEL_67;
      }

      v71 = v66;
      if (v38[3] >= v70)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v16 = v99;
          if ((v66 & 1) == 0)
          {
            goto LABEL_54;
          }
        }

        else
        {
          sub_214985524();
          v16 = v99;
          if ((v71 & 1) == 0)
          {
            goto LABEL_54;
          }
        }
      }

      else
      {
        sub_214955BF4(v70, isUniquelyReferenced_nonNull_native);
        v72 = sub_214907F9C(v58, v57);
        if ((v71 & 1) != (v73 & 1))
        {
          goto LABEL_69;
        }

        v67 = v72;
        v16 = v99;
        if ((v71 & 1) == 0)
        {
LABEL_54:
          v38 = *&v101[0];
          *(*&v101[0] + 8 * (v67 >> 6) + 64) |= 1 << v67;
          v74 = (v38[6] + 16 * v67);
          *v74 = v58;
          v74[1] = v57;
          v64((v38[7] + *(v97 + 72) * v67), v100, v16);
          __swift_destroy_boxed_opaque_existential_1(&v102);
          v75 = v38[2];
          v76 = __OFADD__(v75, 1);
          v77 = v75 + 1;
          if (v76)
          {
            goto LABEL_68;
          }

          v38[2] = v77;
          v17 = v97;
          goto LABEL_56;
        }
      }

      v38 = *&v101[0];
      v17 = v97;
      (*(v97 + 40))(*(*&v101[0] + 56) + *(v97 + 72) * v67, v100, v16);
      __swift_destroy_boxed_opaque_existential_1(&v102);
LABEL_56:
      v46 = v98;
      v41 = v94;
      v45 = v93;
      if (!v44)
      {
        goto LABEL_29;
      }
    }

    sub_21489DFCC(v46, &qword_27CA1A330, &qword_2149916E0);
    v59 = sub_214907F9C(v58, v57);
    v61 = v60;

    if (v61)
    {
      v62 = swift_isUniquelyReferenced_nonNull_native();
      *&v101[0] = v38;
      v41 = v94;
      v45 = v93;
      if (!v62)
      {
        sub_214985524();
        v38 = *&v101[0];
      }

      v63 = *(v38[6] + 16 * v59 + 8);

      v48 = v90;
      (*(v17 + 32))(v90, v38[7] + *(v17 + 72) * v59, v16);
      sub_2149850EC(v59, v38);
      __swift_destroy_boxed_opaque_existential_1(&v102);
      v47 = 0;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(&v102);
      v47 = 1;
      v48 = v90;
      v41 = v94;
      v45 = v93;
    }

    (*v91)(v48, v47, 1, v16);
    sub_21489DFCC(v48, &qword_27CA1A330, &qword_2149916E0);
  }

  while (v44);
LABEL_29:
  if (v45 <= v39 + 1)
  {
    v50 = v39 + 1;
  }

  else
  {
    v50 = v45;
  }

  v51 = v50 - 1;
  while (1)
  {
    v49 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    if (v49 >= v45)
    {
      v44 = 0;
      v103 = 0u;
      v104 = 0u;
      v39 = v51;
      v102 = 0u;
      goto LABEL_38;
    }

    v44 = *(v41 + 8 * v49);
    ++v39;
    if (v44)
    {
      v39 = v49;
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  result = sub_2149900F0();
  __break(1u);
  return result;
}

uint64_t sub_214982060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_21498FAB0();
  v6[5] = sub_21498FAA0();
  v8 = sub_21498FA50();

  return MEMORY[0x2822009F8](sub_2149820FC, v8, v7);
}

uint64_t sub_2149820FC()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  sub_214982188(v3, v2);
  v5 = v0[1];

  return v5();
}

uint64_t sub_214982188(NSObject *a1, uint64_t a2)
{
  v89 = sub_21498E690();
  v5 = *(v89 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v89);
  v9 = (&v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v88 = &v79 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A330, &qword_2149916E0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v100 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v99 = &v79 - v16;
  MEMORY[0x28223BE20](v15);
  v98 = &v79 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CEA0, &unk_21499EFC0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v104 = (&v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20);
  v101 = (&v79 - v22);
  v23 = sub_21498E7C0();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v87 = &v79 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v94 = &v79 - v29;
  MEMORY[0x28223BE20](v28);
  v31 = (&v79 - v30);
  v92 = *(v24 + 16);
  v93 = v24 + 16;
  v92(&v79 - v30, a2, v23);
  if ((*(v24 + 88))(v31, v23) != *MEMORY[0x277D23270])
  {
    if (qword_281190DA0 == -1)
    {
LABEL_26:
      v73 = v89;
      v74 = __swift_project_value_buffer(v89, qword_281194E18);
      (*(v5 + 16))(v9, v74, v73);
      v75 = sub_21498E670();
      v76 = sub_21498FBB0();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        *v77 = 0;
        _os_log_impl(&dword_21488E000, v75, v76, "updateDataStore input is not a dictionary", v77, 2u);
        MEMORY[0x216059AC0](v77, -1, -1);
      }

      (*(v5 + 8))(v9, v89);
      return (*(v24 + 8))(v31, v23);
    }

LABEL_31:
    swift_once();
    goto LABEL_26;
  }

  v97 = a1;
  v81 = v2;
  v90 = v24;
  v9 = (v24 + 96);
  (*(v24 + 96))(v31, v23);
  v80 = *v31;
  v32 = *(v80 + 16);
  v33 = *(v32 + 64);
  v83 = v32 + 64;
  v34 = 1 << *(v32 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v24 = v35 & v33;
  v82 = (v34 + 63) >> 6;
  v103 = v9 - 8;
  v95 = &v9[-6];
  v96 = v9 - 5;
  v86 = v9 - 11;
  v85 = (v5 + 16);
  v84 = (v5 + 8);
  v91 = v32;

  v36 = 0;
  v31 = &qword_27CA1CB10;
  v37 = v104;
  if (!v24)
  {
LABEL_6:
    if (v82 <= v36 + 1)
    {
      v38 = v36 + 1;
    }

    else
    {
      v38 = v82;
    }

    v39 = v38 - 1;
    v40 = v103;
    while (1)
    {
      v5 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v5 >= v82)
      {
        v53 = v23;
        v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CB10, &qword_21499D2A0);
        (*(*(v72 - 8) + 56))(v37, 1, 1, v72);
        v24 = 0;
        goto LABEL_14;
      }

      v24 = *(v83 + 8 * v5);
      ++v36;
      if (v24)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_31;
  }

  while (1)
  {
    v5 = v36;
LABEL_13:
    v41 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    v42 = v41 | (v5 << 6);
    v43 = v90;
    v44 = (*(v91 + 48) + 16 * v42);
    v46 = *v44;
    v45 = v44[1];
    v47 = v94;
    v92(v94, *(v91 + 56) + *(v90 + 72) * v42, v23);
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CB10, &qword_21499D2A0);
    v49 = *(v48 + 48);
    v50 = v104;
    *v104 = v46;
    v50[1] = v45;
    v51 = *(v43 + 32);
    v52 = v47;
    v53 = v23;
    v37 = v50;
    v40 = v103;
    v51(v50 + v49, v52, v23);
    (*(*(v48 - 8) + 56))(v37, 0, 1, v48);

    v39 = v5;
LABEL_14:
    v54 = v37;
    v55 = v101;
    sub_2148B4C68(v54, v101, &qword_27CA1CEA0, &unk_21499EFC0);
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CB10, &qword_21499D2A0);
    if ((*(*(v56 - 8) + 48))(v55, 1, v56) == 1)
    {
      break;
    }

    v107 = v39;
    v57 = *v55;
    v58 = v55[1];
    isa = v40->isa;
    v60 = v55 + *(v56 + 48);
    v61 = v99;
    v23 = v53;
    (v40->isa)(v99, v60, v53);
    (v96->isa)(v61, 0, 1, v53);
    v62 = v100;
    v102 = v57;
    v63 = v97;
    sub_21498E8D0();
    v64 = v98;
    sub_214982B08(v61, v62, v98);
    sub_21489DFCC(v62, &qword_27CA1A330, &qword_2149916E0);
    sub_21489DFCC(v61, &qword_27CA1A330, &qword_2149916E0);
    if ((*v95)(v64, 1, v23) == 1)
    {

      sub_21489DFCC(v64, &qword_27CA1A330, &qword_2149916E0);
      if (qword_281190DA0 != -1)
      {
        swift_once();
      }

      v65 = v89;
      v66 = __swift_project_value_buffer(v89, qword_281194E18);
      v67 = v88;
      (*v85)(v88, v66, v65);
      v9 = sub_21498E670();
      v68 = sub_21498FBB0();
      v69 = os_log_type_enabled(v9, v68);
      v37 = v104;
      if (v69)
      {
        v70 = swift_slowAlloc();
        *v70 = 0;
        _os_log_impl(&dword_21488E000, v9, v68, "updateDataStore: unable to get decodable value", v70, 2u);
        MEMORY[0x216059AC0](v70, -1, -1);
      }

      (*v84)(v67, v65);
      v36 = v107;
    }

    else
    {
      v71 = v87;
      isa(v87, v64, v23);
      v105 = v102;
      v106 = v58;
      v9 = v63;
      sub_21498E990();
      (v86->isa)(v71, v23);

      v36 = v107;
      v37 = v104;
    }

    v31 = &qword_27CA1CB10;
    if (!v24)
    {
      goto LABEL_6;
    }
  }
}

uint64_t sub_214982B08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v221 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CEA0, &unk_21499EFC0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v217 = &v185 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v216 = (&v185 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A330, &qword_2149916E0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v201 = &v185 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v207 = &v185 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v206 = &v185 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v205 = &v185 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v185 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v185 - v23;
  v25 = sub_21498E7C0();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v25);
  v211 = &v185 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v203 = &v185 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v204 = &v185 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v210 = &v185 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v220 = &v185 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v213 = &v185 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v42 = &v185 - v41;
  v43 = MEMORY[0x28223BE20](v40);
  i = &v185 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v47 = &v185 - v46;
  v48 = MEMORY[0x28223BE20](v45);
  v209 = &v185 - v49;
  MEMORY[0x28223BE20](v48);
  v51 = &v185 - v50;
  sub_2148AA824(a1, v24, &qword_27CA1A330, &qword_2149916E0);
  v52 = *(v26 + 48);
  if (v52(v24, 1, v25) == 1)
  {
    sub_21489DFCC(v24, &qword_27CA1A330, &qword_2149916E0);
    return sub_2148AA824(v221, a3, &qword_27CA1A330, &qword_2149916E0);
  }

  v200 = v42;
  v202 = a3;
  v54 = *(v26 + 32);
  v54(v51, v24, v25);
  sub_2148AA824(v221, v22, &qword_27CA1A330, &qword_2149916E0);
  v195 = v26 + 48;
  v194 = v52;
  if (v52(v22, 1, v25) == 1)
  {
    (*(v26 + 8))(v51, v25);
    sub_21489DFCC(v22, &qword_27CA1A330, &qword_2149916E0);
    return (*(v26 + 56))(v202, 1, 1, v25);
  }

  v55 = v209;
  v218 = v26 + 32;
  v219 = v54;
  v54(v209, v22, v25);
  v56 = v26 + 16;
  v57 = *(v26 + 16);
  v191 = v51;
  v57(v47, v51, v25);
  v58 = *(v26 + 88);
  v59 = v58(v47, v25);
  v60 = v59 == *MEMORY[0x277D23278];
  v61 = v202;
  v62 = v26;
  v221 = v25;
  if (v60)
  {
    v63 = *(v26 + 96);
    v64 = v59;
    v65 = v221;
    v216 = v63;
    (v63)(v47, v221);
    v220 = *v47;
    v217 = *(v220 + 2);
    v66 = i;
    v57(i, v55, v65);
    v67 = v66;
    if (v58(v66, v65) == v64)
    {
      v68 = v221;
      (v216)(v66, v221);
      v69 = *(*v66 + 16);
      v70 = v217;

      v222 = v69;
      sub_2148A8D38(v70);
      v71 = *(v62 + 8);
      v71(v55, v68);
      v71(v191, v68);
      v72 = swift_allocObject();
      *(v72 + 16) = v222;
      v73 = v202;
      *v202 = v72;
      (*(v62 + 104))(v73, v64, v68);
    }

    else
    {
      v173 = *(v62 + 8);
      v68 = v221;
      v173(v55, v221);
      v173(v67, v68);
      v73 = v202;
      v219(v202, v191, v68);
    }

    (*(v62 + 56))(v73, 0, 1, v68);
  }

  else
  {
    v214 = v57;
    if (v59 == *MEMORY[0x277D23270])
    {
      v208 = v26;
      v74 = *(v26 + 96);
      v186 = v59;
      v75 = v221;
      v74(v47, v221);
      v76 = *v47;
      v77 = *(*v47 + 16);
      v78 = v200;
      v79 = v56;
      v80 = v209;
      v212 = v79;
      v214(v200, v209, v75);
      v81 = v58(v78, v75);
      if (v81 != v186)
      {
        v176 = v208;
        v177 = *(v208 + 8);
        v178 = v221;
        v177(v80, v221);
        v177(v78, v178);
        v179 = v202;
        v219(v202, v191, v178);
        (*(v176 + 56))(v179, 0, 1, v178);
      }

      v185 = v76;
      v74(v78, v221);
      v82 = *(*v78 + 16);

      v200 = v82;

      v83 = sub_2148E0C4C(MEMORY[0x277D84F90]);
      v84 = v83;
      v85 = 0;
      v86 = v77 + 64;
      v87 = 1 << *(v77 + 32);
      v88 = -1;
      if (v87 < 64)
      {
        v88 = ~(-1 << v87);
      }

      v89 = v88 & *(v77 + 64);
      v90 = (v87 + 63) >> 6;
      v91 = v208;
      v189 = v208 + 56;
      v198 = (v208 + 8);
      v187 = (v208 + 40);
      v92 = v217;
      v199 = v77;
      v197 = v77 + 64;
      v196 = v90;
      for (i = v83; v89; i = v84)
      {
        while (1)
        {
          v93 = v85;
LABEL_23:
          v96 = __clz(__rbit64(v89));
          v89 &= v89 - 1;
          v97 = v96 | (v93 << 6);
          v98 = (*(v77 + 48) + 16 * v97);
          v100 = *v98;
          v99 = v98[1];
          v101 = *(v77 + 56) + *(v91 + 72) * v97;
          v102 = v213;
          v103 = v221;
          v214(v213, v101, v221);
          v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CB10, &qword_21499D2A0);
          v105 = *(v104 + 48);
          *v92 = v100;
          v92[1] = v99;
          v219(v92 + v105, v102, v103);
          (*(*(v104 - 8) + 56))(v92, 0, 1, v104);

          v84 = i;
LABEL_24:
          v106 = v216;
          sub_2148B4C68(v92, v216, &qword_27CA1CEA0, &unk_21499EFC0);
          v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CB10, &qword_21499D2A0);
          if ((*(*(v107 - 8) + 48))(v106, 1, v107) == 1)
          {

            v180 = v208;
            v181 = *(v208 + 8);
            v182 = v221;
            v181(v209, v221);
            v181(v191, v182);
            v183 = swift_allocObject();
            *(v183 + 16) = v84;
            v184 = v202;
            *v202 = v183;
            (*(v180 + 104))(v184, v186, v182);
            (*(v180 + 56))(v184, 0, 1, v182);
          }

          v108 = *v106;
          v109 = v106[1];
          v219(v220, v106 + *(v107 + 48), v221);
          v110 = v200;
          if (!*(v200 + 2))
          {
            break;
          }

          v111 = sub_214907F9C(v108, v109);
          if ((v112 & 1) == 0)
          {
            break;
          }

          v192 = v108;
          v193 = v109;
          v113 = *(v110 + 7);
          v114 = v208;
          v190 = *(v208 + 72);
          v115 = v204;
          v116 = v221;
          v117 = v214;
          v214(v204, (v113 + v190 * v111), v221);
          v118 = v210;
          v219(v210, v115, v116);
          v119 = v206;
          v117(v206, v220, v116);
          v120 = *(v114 + 56);
          v120(v119, 0, 1, v116);
          v121 = v207;
          v117(v207, v118, v116);
          v188 = v120;
          v120(v121, 0, 1, v116);
          v122 = v205;
          sub_214982B08(v119, v121);
          sub_21489DFCC(v121, &qword_27CA1A330, &qword_2149916E0);
          sub_21489DFCC(v119, &qword_27CA1A330, &qword_2149916E0);
          if (v194(v122, 1, v116) == 1)
          {
            sub_21489DFCC(v122, &qword_27CA1A330, &qword_2149916E0);
            v84 = i;
            v123 = sub_214907F9C(v192, v193);
            v125 = v124;

            if (v125)
            {
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v222 = v84;
              v92 = v217;
              if (!isUniquelyReferenced_nonNull_native)
              {
                sub_214985524();
                v84 = v222;
              }

              v127 = *(*(v84 + 6) + 16 * v123 + 8);

              v128 = v201;
              v129 = v221;
              v219(v201, (*(v84 + 7) + v123 * v190), v221);
              sub_2149850EC(v123, v84);
              v130 = *v198;
              (*v198)(v210, v129);
              v130(v220, v129);
              v131 = 0;
              v91 = v208;
            }

            else
            {
              v166 = *v198;
              v167 = v221;
              (*v198)(v210, v221);
              v166(v220, v167);
              v131 = 1;
              v91 = v208;
              v92 = v217;
              v128 = v201;
            }

            v188(v128, v131, 1, v221);
            sub_21489DFCC(v128, &qword_27CA1A330, &qword_2149916E0);
            v77 = v199;
            goto LABEL_56;
          }

          v219(v203, v122, v221);
          v150 = i;
          v151 = swift_isUniquelyReferenced_nonNull_native();
          v222 = v150;
          v152 = v192;
          v153 = v193;
          v154 = sub_214907F9C(v192, v193);
          v156 = *(v150 + 2);
          v157 = (v155 & 1) == 0;
          v138 = __OFADD__(v156, v157);
          v158 = v156 + v157;
          if (v138)
          {
            goto LABEL_71;
          }

          v159 = v155;
          if (*(v150 + 3) >= v158)
          {
            v77 = v199;
            if (v151)
            {
              if ((v155 & 1) == 0)
              {
                goto LABEL_48;
              }
            }

            else
            {
              v172 = v154;
              sub_214985524();
              v77 = v199;
              v154 = v172;
              if ((v159 & 1) == 0)
              {
                goto LABEL_48;
              }
            }
          }

          else
          {
            sub_214955BF4(v158, v151);
            v154 = sub_214907F9C(v152, v153);
            if ((v159 & 1) != (v160 & 1))
            {
              goto LABEL_73;
            }

            v77 = v199;
            if ((v159 & 1) == 0)
            {
LABEL_48:
              v161 = v221;
              v84 = v222;
              *&v222[8 * (v154 >> 6) + 64] |= 1 << v154;
              v162 = (*(v84 + 6) + 16 * v154);
              *v162 = v152;
              v162[1] = v153;
              v219((*(v84 + 7) + v154 * v190), v203, v161);
              v163 = *v198;
              (*v198)(v210, v161);
              v163(v220, v161);
              v164 = *(v84 + 2);
              v138 = __OFADD__(v164, 1);
              v165 = v164 + 1;
              if (v138)
              {
                goto LABEL_72;
              }

              *(v84 + 2) = v165;
              goto LABEL_55;
            }
          }

          v168 = v154;

          v169 = v221;
          v84 = v222;
          (*v187)(*(v222 + 7) + v168 * v190, v203, v221);
          v170 = *v198;
          (*v198)(v210, v169);
          v170(v220, v169);
LABEL_55:
          v91 = v208;
          v92 = v217;
LABEL_56:
          v86 = v197;
          v90 = v196;
          i = v84;
          if (!v89)
          {
            goto LABEL_15;
          }
        }

        v132 = v211;
        v214(v211, v220, v221);
        v133 = swift_isUniquelyReferenced_nonNull_native();
        v222 = v84;
        v134 = sub_214907F9C(v108, v109);
        v136 = *(v84 + 2);
        v137 = (v135 & 1) == 0;
        v138 = __OFADD__(v136, v137);
        v139 = v136 + v137;
        if (v138)
        {
          goto LABEL_69;
        }

        v140 = v135;
        if (*(v84 + 3) >= v139)
        {
          v77 = v199;
          if (v133)
          {
            if ((v135 & 1) == 0)
            {
              goto LABEL_36;
            }
          }

          else
          {
            v171 = v134;
            sub_214985524();
            v77 = v199;
            v134 = v171;
            if ((v140 & 1) == 0)
            {
              goto LABEL_36;
            }
          }
        }

        else
        {
          sub_214955BF4(v139, v133);
          v134 = sub_214907F9C(v108, v109);
          if ((v140 & 1) != (v141 & 1))
          {
            goto LABEL_73;
          }

          v77 = v199;
          if ((v140 & 1) == 0)
          {
LABEL_36:
            v142 = v221;
            v84 = v222;
            *&v222[8 * (v134 >> 6) + 64] |= 1 << v134;
            v143 = (*(v84 + 6) + 16 * v134);
            *v143 = v108;
            v143[1] = v109;
            v91 = v208;
            v219((*(v84 + 7) + *(v208 + 72) * v134), v132, v142);
            (*(v91 + 8))(v220, v142);
            v144 = *(v84 + 2);
            v138 = __OFADD__(v144, 1);
            v145 = v144 + 1;
            if (v138)
            {
              goto LABEL_70;
            }

            *(v84 + 2) = v145;
            goto LABEL_41;
          }
        }

        v146 = v134;

        v84 = v222;
        v91 = v208;
        v147 = *(v222 + 7) + *(v208 + 72) * v146;
        v148 = v221;
        (*(v208 + 40))(v147, v132, v221);
        (*(v91 + 8))(v220, v148);
LABEL_41:
        v92 = v217;
        v86 = v197;
        v90 = v196;
      }

LABEL_15:
      if (v90 <= v85 + 1)
      {
        v94 = v85 + 1;
      }

      else
      {
        v94 = v90;
      }

      v95 = v94 - 1;
      while (1)
      {
        v93 = v85 + 1;
        if (__OFADD__(v85, 1))
        {
          break;
        }

        if (v93 >= v90)
        {
          v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CB10, &qword_21499D2A0);
          (*(*(v149 - 8) + 56))(v92, 1, 1, v149);
          v89 = 0;
          v85 = v95;
          goto LABEL_24;
        }

        v89 = *(v86 + 8 * v93);
        ++v85;
        if (v89)
        {
          v85 = v93;
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      result = sub_2149900F0();
      __break(1u);
    }

    else
    {
      v174 = *(v26 + 8);
      v175 = v221;
      v174(v209, v221);
      v219(v61, v191, v175);
      (*(v26 + 56))(v61, 0, 1, v175);
      return (v174)(v47, v175);
    }
  }

  return result;
}

uint64_t sub_214983ED0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_214985E74();
  *a2 = result;
  return result;
}

uint64_t sub_214983F00@<X0>(_BYTE *a1@<X8>)
{
  result = sub_214985E74();
  *a1 = result;
  return result;
}

uint64_t sub_214983F28(uint64_t a1)
{
  v2 = sub_214985CC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214983F64(uint64_t a1)
{
  v2 = sub_214985CC0();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_214983FA0(uint64_t *a1)
{
  v3 = v1;
  v5 = *v1;
  v89 = v2;
  v90 = v5;
  v84 = sub_21498E890();
  v81 = *(v84 - 8);
  v6 = *(v81 + 64);
  MEMORY[0x28223BE20](v84);
  v83 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A808, &unk_21499B730);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v82 = &v71 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A800, &unk_214993100);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v86 = &v71 - v13;
  v14 = sub_21498E900();
  v85 = *(v14 - 8);
  v15 = *(v85 + 64);
  MEMORY[0x28223BE20](v14);
  v88 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CEB0, &qword_21499F008);
  v87 = *(v17 - 8);
  v18 = *(v87 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v71 - v19;
  *(v1 + OBJC_IVAR____TtC19iCloudMailAssistant22MALoadRemoteDataAction_viewModel) = 0;
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214985CC0();
  v22 = v89;
  sub_2149901B0();
  if (v22)
  {
LABEL_5:
    v31 = *(v3 + OBJC_IVAR____TtC19iCloudMailAssistant22MALoadRemoteDataAction_viewModel);

    v32 = *(*v3 + 48);
    v33 = *(*v3 + 52);
    swift_deallocPartialClassInstance();
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v3;
  }

  v23 = v86;
  v89 = v1;
  v80 = a1;
  LOBYTE(v91[0]) = 0;
  sub_214985D14(&qword_27CA1A2C0, MEMORY[0x277D23340]);
  sub_21498FFA0();
  v24 = *(v85 + 32);
  v25 = v89;
  v79 = OBJC_IVAR____TtC19iCloudMailAssistant22MALoadRemoteDataAction_urlReference;
  v24(v89 + OBJC_IVAR____TtC19iCloudMailAssistant22MALoadRemoteDataAction_urlReference, v88, v14);
  LOBYTE(v91[0]) = 1;
  sub_21498FF40();
  v78 = v14;
  sub_2148B4C68(v23, v25 + OBJC_IVAR____TtC19iCloudMailAssistant22MALoadRemoteDataAction_method, &qword_27CA1A800, &unk_214993100);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A838, &qword_21499B640);
  LOBYTE(v91[0]) = 6;
  sub_214941B08();
  v26 = v82;
  v77 = 0;
  sub_21498FF40();
  v27 = v87;
  sub_2148B4C68(v26, v25 + OBJC_IVAR____TtC19iCloudMailAssistant22MALoadRemoteDataAction_jsonBody, &qword_27CA1A808, &unk_21499B730);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A5F0, &qword_21499B770);
  LOBYTE(v92) = 3;
  v29 = sub_2148AAA9C();
  sub_21498FF40();
  v73 = v29;
  v74 = v28;
  v75 = v20;
  v76 = v17;
  v72 = 0;
  v36 = *&v91[0];
  v37 = MEMORY[0x277D84F90];
  if (!*&v91[0])
  {
    v36 = MEMORY[0x277D84F90];
  }

  v82 = v36;
  v38 = *(v36 + 2);
  if (v38)
  {
    v92 = MEMORY[0x277D84F90];
    sub_2148A9BD8(0, v38, 0);
    v39 = v92;
    v88 = *(v81 + 16);
    v40 = v83;
    v41 = &v82[(*(v81 + 80) + 32) & ~*(v81 + 80)];
    v86 = *(v81 + 72);
    v42 = (v81 + 8);
    v43 = v84;
    do
    {
      (v88)(v40, v41, v43);
      sub_21498E880();
      (*v42)(v40, v43);
      v92 = v39;
      v45 = *(v39 + 2);
      v44 = *(v39 + 3);
      if (v45 >= v44 >> 1)
      {
        sub_2148A9BD8((v44 > 1), v45 + 1, 1);
        v39 = v92;
      }

      *(v39 + 2) = v45 + 1;
      sub_2148970B8(v91, &v39[40 * v45 + 32]);
      v41 += v86;
      --v38;
      v40 = v83;
      v43 = v84;
    }

    while (v38);

    v27 = v87;
    v37 = MEMORY[0x277D84F90];
  }

  else
  {

    v39 = MEMORY[0x277D84F90];
    v40 = v83;
    v43 = v84;
  }

  *(v89 + OBJC_IVAR____TtC19iCloudMailAssistant22MALoadRemoteDataAction_onSuccessActions) = v39;
  LOBYTE(v92) = 4;
  v46 = v75;
  v47 = v76;
  v48 = v72;
  sub_21498FF40();
  v49 = v85;
  if (v48)
  {
    (*(v27 + 8))(v46, v47);
    v3 = v89;
    v30 = v77;
    (*(v49 + 8))(v89 + v79, v78);
    if (!v30)
    {
      sub_21489DFCC(v3 + OBJC_IVAR____TtC19iCloudMailAssistant22MALoadRemoteDataAction_method, &qword_27CA1A800, &unk_214993100);
    }

    sub_21489DFCC(v3 + OBJC_IVAR____TtC19iCloudMailAssistant22MALoadRemoteDataAction_jsonBody, &qword_27CA1A808, &unk_21499B730);
    v35 = *(v3 + OBJC_IVAR____TtC19iCloudMailAssistant22MALoadRemoteDataAction_onSuccessActions);

    a1 = v80;
    goto LABEL_5;
  }

  if (*&v91[0])
  {
    v50 = *&v91[0];
  }

  else
  {
    v50 = v37;
  }

  v51 = *(v50 + 2);
  if (v51)
  {
    v92 = v37;
    sub_2148A9BD8(0, v51, 0);
    v52 = v92;
    v88 = *(v81 + 16);
    v53 = &v50[(*(v81 + 80) + 32) & ~*(v81 + 80)];
    v86 = *(v81 + 72);
    v82 = (v81 + 16);
    v54 = v50;
    v55 = (v81 + 8);
    v72 = v54;
    do
    {
      (v88)(v40, v53, v43);
      sub_21498E880();
      (*v55)(v40, v43);
      v92 = v52;
      v57 = *(v52 + 2);
      v56 = *(v52 + 3);
      if (v57 >= v56 >> 1)
      {
        sub_2148A9BD8((v56 > 1), v57 + 1, 1);
        v52 = v92;
      }

      *(v52 + 2) = v57 + 1;
      sub_2148970B8(v91, &v52[40 * v57 + 32]);
      v53 += v86;
      --v51;
      v40 = v83;
      v43 = v84;
    }

    while (v51);

    v27 = v87;
    v37 = MEMORY[0x277D84F90];
  }

  else
  {

    v52 = MEMORY[0x277D84F90];
  }

  v3 = v89;
  *(v89 + OBJC_IVAR____TtC19iCloudMailAssistant22MALoadRemoteDataAction_onErrorActions) = v52;
  LOBYTE(v92) = 5;
  v58 = v75;
  v59 = v76;
  sub_21498FF40();
  if (*&v91[0])
  {
    v60 = *&v91[0];
  }

  else
  {
    v60 = v37;
  }

  v61 = *(v60 + 2);
  if (v61)
  {
    v92 = v37;
    sub_2148A9BD8(0, v61, 0);
    v62 = v92;
    v90 = *(v81 + 16);
    v63 = *(v81 + 80);
    v86 = v60;
    v64 = &v60[(v63 + 32) & ~v63];
    v88 = *(v81 + 72);
    v65 = (v81 + 8);
    v81 += 16;
    do
    {
      v67 = v83;
      v66 = v84;
      v90(v83, v64, v84);
      sub_21498E880();
      (*v65)(v67, v66);
      v92 = v62;
      v69 = *(v62 + 2);
      v68 = *(v62 + 3);
      if (v69 >= v68 >> 1)
      {
        sub_2148A9BD8((v68 > 1), v69 + 1, 1);
        v62 = v92;
      }

      *(v62 + 2) = v69 + 1;
      sub_2148970B8(v91, &v62[40 * v69 + 32]);
      v64 = &v88[v64];
      --v61;
    }

    while (v61);
    (*(v87 + 8))(v75, v76);

    v70 = v80;
    v3 = v89;
  }

  else
  {

    (*(v27 + 8))(v58, v59);
    v62 = MEMORY[0x277D84F90];
    v70 = v80;
  }

  *(v3 + OBJC_IVAR____TtC19iCloudMailAssistant22MALoadRemoteDataAction_onCompletionActions) = v62;
  __swift_destroy_boxed_opaque_existential_1(v70);
  return v3;
}

uint64_t sub_214984B14()
{
  v1 = OBJC_IVAR____TtC19iCloudMailAssistant22MALoadRemoteDataAction_urlReference;
  v2 = sub_21498E900();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_21489DFCC(v0 + OBJC_IVAR____TtC19iCloudMailAssistant22MALoadRemoteDataAction_method, &qword_27CA1A800, &unk_214993100);
  sub_21489DFCC(v0 + OBJC_IVAR____TtC19iCloudMailAssistant22MALoadRemoteDataAction_jsonBody, &qword_27CA1A808, &unk_21499B730);
  v3 = *(v0 + OBJC_IVAR____TtC19iCloudMailAssistant22MALoadRemoteDataAction_onSuccessActions);

  v4 = *(v0 + OBJC_IVAR____TtC19iCloudMailAssistant22MALoadRemoteDataAction_onErrorActions);

  v5 = *(v0 + OBJC_IVAR____TtC19iCloudMailAssistant22MALoadRemoteDataAction_onCompletionActions);

  v6 = *(v0 + OBJC_IVAR____TtC19iCloudMailAssistant22MALoadRemoteDataAction_viewModel);

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MALoadRemoteDataAction()
{
  result = qword_27CA1CE78;
  if (!qword_27CA1CE78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_214984C84()
{
  v0 = sub_21498E900();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_2149415D0();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_214941628();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_214984DA4(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_214899138;

  return sub_21497F590(a1, a2);
}

void *sub_214984F00@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *(v2 + 48);
  v7 = *(v2 + 52);
  v8 = swift_allocObject();
  result = sub_214983FA0(a1);
  if (!v3)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t sub_214984FE8(uint64_t a1)
{
  v4 = *(sub_21498E7C0() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_214899138;

  return sub_214982060(a1, v6, v7, v8, v9, v1 + v5);
}

unint64_t sub_2149850EC(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21498FD80() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_214990160();

      sub_21498F900();
      v13 = sub_214990190();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(sub_21498E7C0() - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2149852D8(uint64_t result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21498FD80() + 1) & ~v5;
    v31 = v2;
    v32 = v4;
    do
    {
      v9 = v7;
      v10 = *(v2 + 40);
      v11 = (*(v2 + 48) + 48 * v6);
      v12 = *v11;
      v13 = v11[1];
      v15 = v11[2];
      v14 = v11[3];
      v16 = v11[4];
      v17 = v11[5];
      sub_214990160();

      sub_21489B6F8(v16, v17);
      sub_21489B6F8(v16, v17);
      sub_21498F900();
      sub_21498F900();
      if (v17 >> 60 != 15)
      {
        sub_21498E1E0();
        sub_21489B8F0(v16, v17);
      }

      v18 = sub_214990190();

      result = sub_21489B8F0(v16, v17);
      v7 = v9;
      v19 = v18 & v9;
      if (v3 >= v8)
      {
        v2 = v31;
        v4 = v32;
        if (v19 < v8)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v2 = v31;
        v4 = v32;
        if (v19 >= v8)
        {
          goto LABEL_12;
        }
      }

      if (v3 >= v19)
      {
LABEL_12:
        v20 = *(v2 + 48);
        v21 = (v20 + 48 * v3);
        v22 = (v20 + 48 * v6);
        if (v3 != v6 || v21 >= v22 + 3)
        {
          v23 = *v22;
          v24 = v22[2];
          v21[1] = v22[1];
          v21[2] = v24;
          *v21 = v23;
        }

        v25 = *(v2 + 56);
        v26 = (v25 + 8 * v3);
        v27 = (v25 + 8 * v6);
        if (v3 != v6 || v26 >= v27 + 1)
        {
          *v26 = *v27;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v28 = *(v2 + 16);
  v29 = __OFSUB__(v28, 1);
  v30 = v28 - 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v30;
    ++*(v2 + 36);
  }

  return result;
}

char *sub_214985524()
{
  v1 = v0;
  v36 = sub_21498E7C0();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B598, &qword_21499EFD0);
  v4 = *v0;
  v5 = sub_21498FEA0();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v38;
        v25 = *(v38 + 72) * v19;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v4 + 56) + v25, v36);
        v28 = v37;
        v29 = (*(v37 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        (*(v24 + 32))(*(v28 + 56) + v25, v26, v27);

        v14 = v39;
      }

      while (v39);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v31;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v32 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_2149857A4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4B8, &qword_214992020);
  v2 = *v0;
  v3 = sub_21498FEA0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_21489E614(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_2148A4198(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_214985948()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CB38, &qword_21499F010);
  v2 = *v0;
  v3 = sub_21498FEA0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_214985AD8(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v27 = v2;
  v3 = *v2;
  v4 = sub_21498FEA0();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = (*(v3 + 48) + 48 * v18);
        v20 = v19[1];
        v21 = v19[2];
        v22 = v19[3];
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v19[4];
        v25 = v19[5];
        v26 = (*(v5 + 48) + 48 * v18);
        *v26 = *v19;
        v26[1] = v20;
        v26[2] = v21;
        v26[3] = v22;
        v26[4] = v24;
        v26[5] = v25;
        *(*(v5 + 56) + 8 * v18) = v23;

        sub_21489B6F8(v24, v25);
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v27 = v5;
  }

  return result;
}

uint64_t sub_214985C78(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC19iCloudMailAssistant22MALoadRemoteDataAction_viewModel);
  *(v1 + OBJC_IVAR____TtC19iCloudMailAssistant22MALoadRemoteDataAction_viewModel) = *a1;
}

unint64_t sub_214985CC0()
{
  result = qword_27CA1CEB8;
  if (!qword_27CA1CEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CEB8);
  }

  return result;
}

uint64_t sub_214985D14(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_214985D70()
{
  result = qword_27CA1CEC0;
  if (!qword_27CA1CEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CEC0);
  }

  return result;
}

unint64_t sub_214985DC8()
{
  result = qword_27CA1CEC8;
  if (!qword_27CA1CEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CEC8);
  }

  return result;
}

unint64_t sub_214985E20()
{
  result = qword_27CA1CED0[0];
  if (!qword_27CA1CED0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CA1CED0);
  }

  return result;
}

uint64_t sub_214985E74()
{
  v0 = sub_21498FEF0();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_214985EC4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_214985F18(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_214985F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = *(*(a9 - 8) + 64);
  v10 = MEMORY[0x28223BE20](a1);
  v11(v10);
  return sub_21498EC70();
}

uint64_t sub_21498603C@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v27 = a2;
  v3 = a1[3];
  v25 = a1[2];
  v26 = v3;
  v4 = a1[5];
  v23 = a1[4];
  v24 = v4;
  v28 = v3;
  v29 = v25;
  v30 = v4;
  v31 = v23;
  v5 = sub_21498EC80();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - v11;
  v13 = *v2;
  v14 = *(v2 + 8);
  v15 = *(v2 + 16);
  v16 = *(v2 + 24);
  v22 = *(v2 + 32);
  v18 = *(v2 + 40);
  v17 = *(v2 + 48);

  sub_214985F5C(v13, v14, v15, v16, v22, v18, v17, v26, v25);
  swift_getWitnessTable();
  v19 = v6[2];
  v19(v12, v10, v5);
  v20 = v6[1];
  v20(v10, v5);
  v19(v27, v12, v5);
  return (v20)(v12, v5);
}

uint64_t sub_21498623C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6449656C7572 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_214990080();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2149862C0(uint64_t a1)
{
  v2 = sub_214986A98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2149862FC(uint64_t a1)
{
  v2 = sub_214986A98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214986338@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CF78, &qword_21499F390);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214986A98();
  sub_2149901B0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = sub_21498FF60();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v11;
  a2[1] = v13;
  return result;
}

uint64_t sub_2149864B4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CF68, &qword_21499F388);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214986A98();
  sub_2149901C0();
  sub_214990000();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_2149865F8()
{
  v1 = sub_21498E690();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DeleteUnifiedRuleAPIRequest();
  v33.receiver = v0;
  v33.super_class = v6;
  v7 = objc_msgSendSuper2(&v33, sel_urlString);
  v8 = sub_21498F870();
  v10 = v9;

  v34 = v8;
  v35 = v10;
  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v12 = __swift_project_value_buffer(v1, qword_281194E18);
    (*(v2 + 16))(v5, v12, v1);
    v13 = v0;
    v14 = sub_21498E670();
    v15 = sub_21498FBD0();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v25 = v17;
      *v16 = 136315394;
      *(v16 + 4) = sub_2149079F4(0xD00000000000002FLL, 0x80000002149A0C40, &v25);
      *(v16 + 12) = 2080;

      v18 = sub_2149079F4(v8, v10, &v25);

      *(v16 + 14) = v18;
      _os_log_impl(&dword_21488E000, v14, v15, "Using fallback url for %s: %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x216059AC0](v17, -1, -1);
      MEMORY[0x216059AC0](v16, -1, -1);
    }

    v19 = (*(v2 + 8))(v5, v1);
    v25 = sub_21498BF80(v19);
    v26 = v20;

    MEMORY[0x2160589C0](0xD000000000000024, 0x80000002149A0C70);

    v8 = v25;
    v21 = v26;
    swift_beginAccess();
    v34 = v8;
    v35 = v21;

    v10 = v21;
  }

  v31 = v8;
  v32 = v10;
  v29 = 0x776574616763636DLL;
  v30 = 0xEA00000000007961;
  v27 = 6513517;
  v28 = 0xE300000000000000;
  sub_21489CA00();
  v22 = sub_21498FD20();

  return v22;
}

id sub_214986984(void *a1)
{
  v1 = a1;
  sub_2149865F8();

  v2 = sub_21498F840();

  return v2;
}

id sub_2149869EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeleteUnifiedRuleAPIRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for DeleteUnifiedRuleAPIRequest()
{
  result = qword_27CA1CF58;
  if (!qword_27CA1CF58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_214986A98()
{
  result = qword_27CA1CF70;
  if (!qword_27CA1CF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CF70);
  }

  return result;
}

unint64_t sub_214986B00()
{
  result = qword_27CA1CF80;
  if (!qword_27CA1CF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CF80);
  }

  return result;
}

unint64_t sub_214986B58()
{
  result = qword_27CA1CF88;
  if (!qword_27CA1CF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CF88);
  }

  return result;
}

unint64_t sub_214986BB0()
{
  result = qword_27CA1CF90;
  if (!qword_27CA1CF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CF90);
  }

  return result;
}

uint64_t sub_214986C04(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_214986C60(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for DelayedDisplay()
{
  result = qword_27CA1CF98;
  if (!qword_27CA1CF98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_214986D38()
{
  sub_2148F7A38();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_214986DA4(uint64_t a1, uint64_t a2, double a3)
{
  v9 = 0;
  sub_21498F400();
  v8 = a3;
  MEMORY[0x2160582A0](v7, a1, &type metadata for DelayDisplayModifier, a2);
}

uint64_t sub_214986E40(uint64_t a1, char a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CFB8, &qword_21499F600);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v18[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CFC0, &qword_21499F608);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v18[-v12];
  v18[16] = a2;
  v19 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C270, &qword_21499A2C8);
  sub_21498F410();
  v14 = v18[15];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CFC8, &qword_21499F610);
  v16 = *(*(v15 - 8) + 16);
  if (v14 == 1)
  {
    v16(v13, a1, v15);
    swift_storeEnumTagMultiPayload();
    sub_2148B4C20(&qword_27CA1CFD0, &qword_27CA1CFC8, &qword_21499F610);
    sub_214987C04();
    return sub_21498EE90();
  }

  else
  {
    v16(v9, a1, v15);
    sub_214987B94(v9, v13);
    swift_storeEnumTagMultiPayload();
    sub_2148B4C20(&qword_27CA1CFD0, &qword_27CA1CFC8, &qword_21499F610);
    sub_214987C04();
    sub_21498EE90();
    return sub_214987D10(v9);
  }
}

uint64_t sub_2149870AC(char a1, uint64_t a2, double a3)
{
  *(v3 + 40) = a3;
  *(v3 + 32) = a2;
  *(v3 + 81) = a1;
  sub_21498FAB0();
  *(v3 + 48) = sub_21498FAA0();
  v5 = sub_21498FA50();
  *(v3 + 56) = v5;
  *(v3 + 64) = v4;

  return MEMORY[0x2822009F8](sub_21498714C, v5, v4);
}

uint64_t sub_21498714C(unint64_t a1)
{
  v3 = *(v1 + 40) * 1000000000.0;
  if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return MEMORY[0x282200480](a1);
  }

  v4 = v3;
  v5 = *(MEMORY[0x277D857E8] + 4);
  v6 = swift_task_alloc();
  *(v1 + 72) = v6;
  *v6 = v1;
  v6[1] = sub_214987234;
  a1 = v4;

  return MEMORY[0x282200480](a1);
}

uint64_t sub_214987234()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;

  if (v0)
  {

    v5 = *(v2 + 56);
    v6 = *(v2 + 64);
    v7 = sub_214988104;
  }

  else
  {
    v5 = *(v2 + 56);
    v6 = *(v2 + 64);
    v7 = sub_214987358;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_214987358()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  v3 = *(v0 + 81);

  *(v0 + 16) = v3;
  *(v0 + 24) = v2;
  *(v0 + 80) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C270, &qword_21499A2C8);
  sub_21498F420();
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_214987424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  sub_214986E40(a1, *v2, v5);
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  v8 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CFB0, &unk_21499F5F0) + 36));
  v9 = *(sub_21498EC30() + 20);

  result = sub_21498FAC0();
  *v8 = &unk_21499F5E8;
  v8[1] = v7;
  return result;
}

uint64_t sub_2149874E0()
{
  sub_214990160();
  sub_21498F900();
  return sub_214990190();
}

uint64_t sub_214987544()
{
  sub_214990160();
  sub_21498F900();
  return sub_214990190();
}

uint64_t sub_214987590@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_21498FEF0();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_214987610@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_21498FEF0();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_214987668(uint64_t a1)
{
  v2 = sub_214987D78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2149876A4(uint64_t a1)
{
  v2 = sub_214987D78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2149876E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A848, &qword_214993160);
  v21 = *(v3 - 8);
  v4 = *(v21 + 64);
  MEMORY[0x28223BE20](v3);
  v22 = &v19 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CFE8, &qword_21499F618);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  v11 = type metadata accessor for DelayedDisplay();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214987D78();
  v16 = v23;
  sub_2149901B0();
  if (!v16)
  {
    v17 = v21;
    sub_2148B4C20(&qword_27CA1A930, &qword_27CA1A848, &qword_214993160);
    sub_21498FFA0();
    (*(v7 + 8))(v10, v6);
    (*(v17 + 32))(v14, v22, v3);
    sub_214987DCC(v14, v20);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214987964@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A848, &qword_214993160);
  result = sub_21498E750();
  if (!v2)
  {
    v6 = a1[3];
    v7 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v6);
    a2[3] = sub_21498ECC0();
    sub_2148B490C();
    a2[4] = swift_getWitnessTable();
    __swift_allocate_boxed_opaque_existential_1(a2);
    return sub_214986DA4(v6, v7, v8);
  }

  return result;
}

uint64_t sub_214987AE8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_214899138;

  return sub_2149870AC(v2, v3, v4);
}

uint64_t sub_214987B94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CFB8, &qword_21499F600);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_214987C04()
{
  result = qword_27CA1CFD8;
  if (!qword_27CA1CFD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1CFB8, &qword_21499F600);
    sub_2148B4C20(&qword_27CA1CFD0, &qword_27CA1CFC8, &qword_21499F610);
    sub_214987CBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CFD8);
  }

  return result;
}

unint64_t sub_214987CBC()
{
  result = qword_27CA1CFE0;
  if (!qword_27CA1CFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CFE0);
  }

  return result;
}

uint64_t sub_214987D10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CFB8, &qword_21499F600);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_214987D78()
{
  result = qword_27CA1CFF0;
  if (!qword_27CA1CFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CFF0);
  }

  return result;
}

uint64_t sub_214987DCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DelayedDisplay();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_214987E40()
{
  result = qword_27CA1CFF8;
  if (!qword_27CA1CFF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1CFB0, &unk_21499F5F0);
    sub_214987EFC();
    sub_214987FB4(&qword_27CA1B7A0, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CFF8);
  }

  return result;
}

unint64_t sub_214987EFC()
{
  result = qword_27CA1D000;
  if (!qword_27CA1D000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1D008, &qword_21499F630);
    sub_2148B4C20(&qword_27CA1CFD0, &qword_27CA1CFC8, &qword_21499F610);
    sub_214987C04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1D000);
  }

  return result;
}

uint64_t sub_214987FB4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_214988000()
{
  result = qword_27CA1D010;
  if (!qword_27CA1D010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1D010);
  }

  return result;
}

unint64_t sub_214988058()
{
  result = qword_27CA1D018;
  if (!qword_27CA1D018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1D018);
  }

  return result;
}

unint64_t sub_2149880B0()
{
  result = qword_27CA1D020;
  if (!qword_27CA1D020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1D020);
  }

  return result;
}

uint64_t sub_214988108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_214899964;

  return v11(a1, a2, a3);
}

uint64_t sub_214988258()
{
  v1 = v0;
  v30 = sub_21498FC10();
  v2 = *(v30 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v30);
  v29 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21498FBE0();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = sub_21498F540();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_21498EAC0();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  *(v0 + 16) = sub_21498EAB0();
  *(v0 + 32) = 0;
  swift_unknownObjectWeakInit();
  v12 = OBJC_IVAR____TtC19iCloudMailAssistant21NetworkStatusProvider_pathStatus;
  v13 = *MEMORY[0x277CD8F70];
  v14 = sub_21498EAE0();
  (*(*(v14 - 8) + 104))(v1 + v12, v13, v14);
  v23[0] = OBJC_IVAR____TtC19iCloudMailAssistant21NetworkStatusProvider_syncQueue;
  sub_2148FFDCC();
  sub_21498F530();
  v31 = MEMORY[0x277D84F90];
  v28 = sub_214989100();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1D028, &unk_21499F840);
  v26 = sub_214989158();
  sub_21498FD60();
  v24 = *MEMORY[0x277D85260];
  v15 = *(v2 + 104);
  v23[1] = v2 + 104;
  v25 = v15;
  v17 = v29;
  v16 = v30;
  v15(v29);
  v18 = v17;
  *(v1 + v23[0]) = sub_21498FC50();
  v19 = *(v1 + 16);
  swift_allocObject();
  swift_weakInit();

  sub_21490D9F8(sub_2149891BC);
  sub_21498EA80();

  v20 = *(v1 + 16);

  sub_21498F530();
  v31 = MEMORY[0x277D84F90];
  sub_21498FD60();
  v25(v18, v24, v16);
  v21 = sub_21498FC50();
  sub_21498EA90();

  return v1;
}

uint64_t sub_214988640(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6D0, &qword_2149916C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &aBlock[-1] - v4;
  v6 = sub_21498EB00();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = *(result + OBJC_IVAR____TtC19iCloudMailAssistant21NetworkStatusProvider_syncQueue);
    (*(v7 + 16))(&aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
    v12 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = v10;
    (*(v7 + 32))(v13 + v12, &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
    v14 = swift_allocObject();
    *(v14 + 16) = sub_2149891C4;
    *(v14 + 24) = v13;
    aBlock[4] = sub_214989228;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2148FF3A8;
    aBlock[3] = &block_descriptor_11;
    v15 = _Block_copy(aBlock);

    dispatch_sync(v11, v15);
    _Block_release(v15);
    LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

    if (v11)
    {
      __break(1u);
    }

    else
    {
      v16 = sub_21498FAE0();
      (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
      v17 = swift_allocObject();
      v17[2] = 0;
      v17[3] = 0;
      v17[4] = v10;

      sub_214926C38(0, 0, v5, &unk_21499F858, v17);
    }
  }

  return result;
}

uint64_t sub_214988984(uint64_t a1)
{
  v2 = sub_21498EAE0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21498EAF0();
  v7 = OBJC_IVAR____TtC19iCloudMailAssistant21NetworkStatusProvider_pathStatus;
  swift_beginAccess();
  (*(v3 + 40))(a1 + v7, v6, v2);
  return swift_endAccess();
}

uint64_t sub_214988A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_214988AA0, 0, 0);
}

uint64_t sub_214988AA0()
{
  v1 = *(v0 + 24);
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 32) = Strong;
  if (Strong)
  {
    v3 = *(*(v0 + 24) + OBJC_IVAR____TtC19iCloudMailAssistant21NetworkStatusProvider_syncQueue);
    sub_21498FC30();
    v4 = *(v0 + 48);
    v5 = swift_task_alloc();
    *(v0 + 40) = v5;
    *v5 = v0;
    v5[1] = sub_214988BD0;

    return sub_21494D8A8(v4);
  }

  else
  {
    **(v0 + 16) = 1;
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_214988BD0()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v4 = *v0;

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_214988CE8, 0, 0);
}

uint64_t sub_214988D10@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = sub_21498EAE0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = OBJC_IVAR____TtC19iCloudMailAssistant21NetworkStatusProvider_pathStatus;
  swift_beginAccess();
  (*(v5 + 16))(v11, a1 + v12, v4);
  (*(v5 + 104))(v9, *MEMORY[0x277CD8F78], v4);
  LOBYTE(a1) = sub_21498EAD0();
  v13 = *(v5 + 8);
  v13(v9, v4);
  result = (v13)(v11, v4);
  *a2 = a1 & 1;
  return result;
}

uint64_t sub_214988E9C()
{
  v1 = v0;
  v2 = *(v0 + 2);

  sub_21498EAA0();

  v3 = *(v1 + 2);

  sub_2148E609C((v1 + 24));
  v4 = OBJC_IVAR____TtC19iCloudMailAssistant21NetworkStatusProvider_pathStatus;
  v5 = sub_21498EAE0();
  (*(*(v5 - 8) + 8))(&v1[v4], v5);

  v6 = *(*v1 + 48);
  v7 = *(*v1 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for NetworkStatusProvider()
{
  result = qword_281191660;
  if (!qword_281191660)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_214988FC8()
{
  result = sub_21498EAE0();
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

uint64_t sub_21498907C()
{
  v1 = *(v0 + OBJC_IVAR____TtC19iCloudMailAssistant21NetworkStatusProvider_syncQueue);
  sub_21498FC30();
  return v3;
}

unint64_t sub_214989100()
{
  result = qword_281190CD0;
  if (!qword_281190CD0)
  {
    sub_21498FBE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281190CD0);
  }

  return result;
}

unint64_t sub_214989158()
{
  result = qword_281190CE0;
  if (!qword_281190CE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1D028, &unk_21499F840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281190CE0);
  }

  return result;
}

uint64_t sub_2149891C4()
{
  v1 = *(*(sub_21498EB00() - 8) + 80);
  v2 = *(v0 + 16);

  return sub_214988984(v2);
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_214989248(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_214899138;

  return sub_214988A80(a1, v4, v5, v6);
}

uint64_t sub_214989320()
{
  v1 = *v0;
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_2149893EC()
{
  *v0;
  *v0;
  *v0;
  sub_21498F900();
}

uint64_t sub_2149894A4()
{
  v1 = *v0;
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_21498956C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21498AAD8();
  *a2 = result;
  return result;
}

void sub_21498959C(unint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x656C746974;
  v4 = 0xE800000000000000;
  v5 = 0x656D614E6E6F6369;
  if (*v1 != 2)
  {
    v5 = 0x72656665526C7275;
    v4 = 0xEC00000065636E65;
  }

  if (*v1)
  {
    v3 = 0xD00000000000001DLL;
    v2 = 0x80000002149A0B40;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_214989624()
{
  v1 = 0x656C746974;
  v2 = 0x656D614E6E6F6369;
  if (*v0 != 2)
  {
    v2 = 0x72656665526C7275;
  }

  if (*v0)
  {
    v1 = 0xD00000000000001DLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2149896A8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21498AAD8();
  *a1 = result;
  return result;
}

uint64_t sub_2149896D0(uint64_t a1)
{
  v2 = sub_21498A924();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21498970C(uint64_t a1)
{
  v2 = sub_21498A924();

  return MEMORY[0x2821FE720](a1, v2);
}

char *sub_214989748(uint64_t *a1)
{
  v4 = *v1;
  v42 = v2;
  v43 = v4;
  v5 = sub_21498E900();
  v36 = *(v5 - 8);
  v37 = v5;
  v6 = *(v36 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v32 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v32 - v14;
  MEMORY[0x28223BE20](v13);
  v41 = &v32 - v16;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1D050, &qword_21499F980);
  v40 = *(v38 - 8);
  v17 = *(v40 + 64);
  MEMORY[0x28223BE20](v38);
  v19 = &v32 - v18;
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21498A924();
  v39 = v19;
  v21 = v42;
  sub_2149901B0();
  if (v21)
  {
    v28 = *(*v1 + 48);
    v29 = *(*v1 + 52);
    swift_deallocPartialClassInstance();
    v31 = a1;
  }

  else
  {
    v22 = v12;
    v35 = v9;
    v42 = a1;
    v47 = 0;
    v23 = sub_21498A978(&qword_27CA1A2C0, MEMORY[0x277D23340]);
    v24 = v37;
    v25 = v38;
    sub_21498FFA0();
    v33 = *(v36 + 32);
    v34 = OBJC_IVAR____TtC19iCloudMailAssistant25EmitNavigationEventAction_title;
    v33(&v1[OBJC_IVAR____TtC19iCloudMailAssistant25EmitNavigationEventAction_title], v41, v24);
    v46 = 1;
    v41 = v23;
    sub_21498FFA0();
    v26 = v33;
    v33(&v1[OBJC_IVAR____TtC19iCloudMailAssistant25EmitNavigationEventAction_localizedNavigationPathString], v15, v24);
    v45 = 2;
    sub_21498FFA0();
    v26(&v1[OBJC_IVAR____TtC19iCloudMailAssistant25EmitNavigationEventAction_iconName], v22, v24);
    v44 = 3;
    v27 = v35;
    sub_21498FFA0();
    (*(v40 + 8))(v39, v25);
    v26(&v1[OBJC_IVAR____TtC19iCloudMailAssistant25EmitNavigationEventAction_urlReference], v27, v24);
    v31 = v42;
  }

  __swift_destroy_boxed_opaque_existential_1(v31);
  return v1;
}

uint64_t sub_214989C58()
{
  v1 = OBJC_IVAR____TtC19iCloudMailAssistant25EmitNavigationEventAction_title;
  v2 = sub_21498E900();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC19iCloudMailAssistant25EmitNavigationEventAction_localizedNavigationPathString, v2);
  v3(v0 + OBJC_IVAR____TtC19iCloudMailAssistant25EmitNavigationEventAction_iconName, v2);
  v3(v0 + OBJC_IVAR____TtC19iCloudMailAssistant25EmitNavigationEventAction_urlReference, v2);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EmitNavigationEventAction()
{
  result = qword_27CA1D030;
  if (!qword_27CA1D030)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_214989DB0()
{
  result = sub_21498E900();
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

uint64_t sub_214989E44(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_214899138;

  return (sub_21498A104)(a1);
}

char *sub_21498A01C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *(v2 + 48);
  v7 = *(v2 + 52);
  v8 = swift_allocObject();
  result = sub_214989748(a1);
  if (!v3)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t sub_21498A104(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_21498F580();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v6 = sub_21498DF90();
  v2[13] = v6;
  v7 = *(v6 - 8);
  v2[14] = v7;
  v8 = *(v7 + 64) + 15;
  v2[15] = swift_task_alloc();
  v9 = sub_21498E120();
  v2[16] = v9;
  v10 = *(v9 - 8);
  v2[17] = v10;
  v11 = *(v10 + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A348, &qword_214991700) - 8) + 64) + 15;
  v2[20] = swift_task_alloc();
  v13 = sub_21498E1B0();
  v2[21] = v13;
  v14 = *(v13 - 8);
  v2[22] = v14;
  v15 = *(v14 + 64) + 15;
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21498A31C, 0, 0);
}

uint64_t sub_21498A31C()
{
  v1 = v0[8];
  v2 = v0[9] + OBJC_IVAR____TtC19iCloudMailAssistant25EmitNavigationEventAction_urlReference;
  v3 = sub_21498E8F0();
  v6 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    MEMORY[0x2160589C0]();
  }

  v7 = v0[21];
  v8 = v0[22];
  v9 = v0[20];
  sub_21498E1A0();

  if ((*(v8 + 48))(v9, 1, v7) == 1)
  {
    sub_21498A8BC(v0[20]);
    goto LABEL_11;
  }

  v17 = v0[8];
  v18 = v0[9];
  (*(v0[22] + 32))(v0[23], v0[20], v0[21]);
  v0[2] = sub_21498E8F0();
  v0[3] = v19;
  v0[4] = 9602786;
  v0[5] = 0xA300000000000000;
  sub_21489CA00();
  v20 = sub_21498FD00();

  v52 = *(v20 + 16);
  if (!v52)
  {
LABEL_20:
    v34 = v0[8];
    v33 = v0[9];

    sub_21498F5B0();
    sub_21498F5A0();
    v35 = sub_21498E8F0();
    v37 = v0[11];
    v36 = v0[12];
    v39 = v0[9];
    v38 = v0[10];
    v40 = v0[8];
    *v36 = v35;
    v36[1] = v41;
    (*(v37 + 104))(v36, *MEMORY[0x277D4D788], v38);
    sub_21498E8F0();
    v42 = v0[22];
    v43 = v0[23];
    v44 = v0[21];
    v46 = v0[17];
    v45 = v0[18];
    v48 = v0[11];
    v47 = v0[12];
    v53 = v0[16];
    v54 = v0[10];
    sub_21498E110();
    sub_21498F590();

    (*(v46 + 8))(v45, v53);
    (*(v48 + 8))(v47, v54);
    (*(v42 + 8))(v43, v44);
LABEL_11:
    v10 = v0[23];
    v11 = v0[19];
    v12 = v0[20];
    v13 = v0[18];
    v14 = v0[15];
    v15 = v0[12];

    v16 = v0[1];

    return v16();
  }

  v21 = 0;
  v49 = (v0[14] + 8);
  v50 = v0[17];
  v22 = (v20 + 40);
  v23 = MEMORY[0x277D84F90];
  v51 = v20;
  while (v21 < *(v20 + 16))
  {
    v24 = v0[19];
    v25 = v0[15];
    v26 = v0[13];
    v27 = v23;
    v28 = *v22;
    v0[6] = *(v22 - 1);
    v0[7] = v28;

    sub_21498DF80();
    sub_21498FD10();
    (*v49)(v25, v26);
    sub_21498E110();
    v23 = v27;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_2148A9324(0, v27[2] + 1, 1, v27);
    }

    v30 = v23[2];
    v29 = v23[3];
    if (v30 >= v29 >> 1)
    {
      v23 = sub_2148A9324(v29 > 1, v30 + 1, 1, v23);
    }

    ++v21;
    v31 = v0[19];
    v32 = v0[16];
    v23[2] = v30 + 1;
    result = (*(v50 + 32))(v23 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v30, v31, v32);
    v22 += 2;
    v20 = v51;
    if (v52 == v21)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21498A8BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A348, &qword_214991700);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21498A924()
{
  result = qword_27CA1D058;
  if (!qword_27CA1D058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1D058);
  }

  return result;
}

uint64_t sub_21498A978(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21498A9D4()
{
  result = qword_27CA1D060;
  if (!qword_27CA1D060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1D060);
  }

  return result;
}

unint64_t sub_21498AA2C()
{
  result = qword_27CA1D068;
  if (!qword_27CA1D068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1D068);
  }

  return result;
}

unint64_t sub_21498AA84()
{
  result = qword_27CA1D070;
  if (!qword_27CA1D070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1D070);
  }

  return result;
}

uint64_t sub_21498AAD8()
{
  v0 = sub_21498FEF0();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t type metadata accessor for AllowsHitTestingModifier()
{
  result = qword_27CA1D078;
  if (!qword_27CA1D078)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21498AB98()
{
  sub_21490FC08();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_21498AC04@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD30, &unk_214997FD0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16[-1] - v7;
  v9 = type metadata accessor for AllowsHitTestingModifier();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v16[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2149901A0();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v16, v16[3]);
    sub_2148FE654();
    sub_2149900A0();
    (*(v5 + 32))(v12, v8, v4);
    __swift_destroy_boxed_opaque_existential_1(v16);
    sub_21498AF58(v12, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21498ADD0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD30, &unk_214997FD0);
  sub_21498E750();
  if (v2)
  {
  }

  a2[3] = sub_21498ECC0();
  a2[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_21498F1B0();
}

unint64_t sub_21498AF00()
{
  result = qword_27CA1D088;
  if (!qword_27CA1D088)
  {
    type metadata accessor for AllowsHitTestingModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1D088);
  }

  return result;
}

uint64_t sub_21498AF58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AllowsHitTestingModifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21498AFBC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1D0A0, &unk_21499FC18);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v34 - v3;
  v5 = sub_21498E030();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A348, &qword_214991700);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - v15;
  v17 = sub_21498E1B0();
  v36 = *(v17 - 8);
  v18 = *(v36 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v0 + qword_281190E60);
  v23 = (*((*MEMORY[0x277D85000] & *v0) + 0xF0))(v19);

  v24 = [v22 propertiesForDataclass_];

  if (!v24)
  {
    return 0;
  }

  v34 = v6;
  v35 = v5;
  v25 = sub_21498F7E0();

  v37 = 0xD000000000000026;
  v38 = 0x80000002149A1E00;
  sub_21498FDB0();
  if (!*(v25 + 16) || (v26 = sub_214908014(v39), (v27 & 1) == 0))
  {

    sub_21489E5C0(v39);
    return 0;
  }

  sub_21489E614(*(v25 + 56) + 32 * v26, v40);
  sub_21489E5C0(v39);

  if (!swift_dynamicCast())
  {
    return 0;
  }

  sub_21498E1A0();

  v28 = v36;
  v29 = *(v36 + 48);
  if (v29(v16, 1, v17) == 1)
  {
    sub_21489DFCC(v16, &qword_27CA1A348, &qword_214991700);
    return 0;
  }

  (*(v28 + 32))(v21, v16, v17);
  sub_21498DFD0();
  v32 = v34;
  v31 = v35;
  if ((*(v34 + 48))(v4, 1, v35) == 1)
  {
    (*(v28 + 8))(v21, v17);
    sub_21489DFCC(v4, &qword_27CA1D0A0, &unk_21499FC18);
    return 0;
  }

  (*(v32 + 32))(v9, v4, v31);
  MEMORY[0x216057090](0, 0xE000000000000000);
  sub_21498DFE0();
  if (v29(v14, 1, v17) == 1)
  {
    sub_21489DFCC(v14, &qword_27CA1A348, &qword_214991700);
    v33 = 0;
  }

  else
  {
    v33 = sub_21498E130();
    (*(v28 + 8))(v14, v17);
  }

  (*(v32 + 8))(v9, v31);
  (*(v28 + 8))(v21, v17);
  return v33;
}

uint64_t sub_21498B4CC()
{
  v0 = *MEMORY[0x277CB89C8];
  v1 = *MEMORY[0x277CB89C8];
  return v0;
}

uint64_t sub_21498B514()
{
  v1 = sub_21498E690();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MAUpdateConsentAPIRequest();
  v32.receiver = v0;
  v32.super_class = v6;
  v7 = objc_msgSendSuper2(&v32, sel_urlString);
  v8 = sub_21498F870();
  v10 = v9;

  v33 = v8;
  v34 = v10;
  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v12 = __swift_project_value_buffer(v1, qword_281194E18);
    (*(v2 + 16))(v5, v12, v1);
    v13 = v0;
    v14 = sub_21498E670();
    v15 = sub_21498FBD0();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v24 = v17;
      *v16 = 136315394;
      *(v16 + 4) = sub_2149079F4(0xD000000000000031, 0x80000002149A3DE0, &v24);
      *(v16 + 12) = 2080;

      v18 = sub_2149079F4(v8, v10, &v24);

      *(v16 + 14) = v18;
      _os_log_impl(&dword_21488E000, v14, v15, "Using fallback url for %s: %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x216059AC0](v17, -1, -1);
      MEMORY[0x216059AC0](v16, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
    v24 = sub_21498AFBC();
    v25 = v19;

    MEMORY[0x2160589C0](0xD000000000000029, 0x80000002149A3250);

    v8 = v24;
    v20 = v25;
    swift_beginAccess();
    v33 = v8;
    v34 = v20;

    v10 = v20;
  }

  v30 = v8;
  v31 = v10;
  v28 = 0x776574616763636DLL;
  v29 = 0xEA00000000007961;
  v26 = 6513517;
  v27 = 0xE300000000000000;
  sub_21489CA00();
  v21 = sub_21498FD20();

  return v21;
}

id sub_21498B8A0(void *a1)
{
  v1 = a1;
  sub_21498B514();

  v2 = sub_21498F840();

  return v2;
}

id sub_21498B908()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MAUpdateConsentAPIRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for MAUpdateConsentAPIRequest()
{
  result = qword_27CA1D090;
  if (!qword_27CA1D090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21498B9A4(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1D0A8, &qword_21499FCC0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21498BC90();
  sub_2149901C0();
  v15[1] = a2;
  v15[2] = a3;
  *&v15[3] = a4;
  sub_2148EFA40();
  sub_214990040();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_21498BB24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD00000000000001CLL && 0x80000002149A1EA0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_214990080();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_21498BBB8(uint64_t a1)
{
  v2 = sub_21498BC90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21498BBF4(uint64_t a1)
{
  v2 = sub_21498BC90();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_21498BC30(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = sub_21498BCE4(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }
}

unint64_t sub_21498BC90()
{
  result = qword_27CA1D0B0;
  if (!qword_27CA1D0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1D0B0);
  }

  return result;
}

double sub_21498BCE4(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1D0B8, &qword_21499FCC8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21498BC90();
  sub_2149901B0();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    sub_2148EF9EC();
    sub_21498FFA0();
    (*(v5 + 8))(v8, v4);
    v2 = *&v11[3];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v2;
}

unint64_t sub_21498BE7C()
{
  result = qword_27CA1D0C0;
  if (!qword_27CA1D0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1D0C0);
  }

  return result;
}

unint64_t sub_21498BED4()
{
  result = qword_27CA1D0C8;
  if (!qword_27CA1D0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1D0C8);
  }

  return result;
}

unint64_t sub_21498BF2C()
{
  result = qword_27CA1D0D0;
  if (!qword_27CA1D0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1D0D0);
  }

  return result;
}

uint64_t sub_21498BF8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 392))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21498BFD4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 376) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 392) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 392) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21498C0A4@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1D0D8, &qword_21499FFF8);
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v17 - v10;
  memcpy(v19, v2, sizeof(v19));
  v17[2] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1D0E0, &qword_2149A0000);
  sub_2148B4C20(&qword_27CA1D0E8, &qword_27CA1D0E0, &qword_2149A0000);
  sub_21498F090();
  v12 = swift_allocObject();
  memcpy((v12 + 16), v19, 0x188uLL);
  v13 = v5[2];
  v13(v9, v11, v4);
  v13(a1, v9, v4);
  v14 = &a1[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1D0F0, &qword_2149A0008) + 48)];
  *v14 = sub_21498CCFC;
  *(v14 + 1) = v12;
  v14[16] = 0;
  sub_21498CD04(v19, &v18);
  sub_214897F3C();
  v15 = v5[1];
  v15(v11, v4);
  sub_214897F28();
  return (v15)(v9, v4);
}

uint64_t sub_21498C310@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v42 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1D0F8, &qword_2149A0058);
  v39 = *(v41 - 8);
  v3 = *(v39 + 64);
  v4 = MEMORY[0x28223BE20](v41);
  v40 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1D100, &qword_2149A0060);
  v37 = *(v8 - 8);
  v9 = v37;
  v38 = v8;
  v10 = *(v37 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v33 - v14;
  v44 = a1;
  sub_21498EE40();
  v45 = sub_21498F0F0();
  v46 = v16;
  v47 = v17 & 1;
  v48 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1D108, &qword_2149A0068);
  sub_2148B4C20(&qword_27CA1D110, &qword_27CA1D108, &qword_2149A0068);
  v36 = v15;
  sub_21498F4A0();
  v43 = a1;
  sub_21498EE40();
  v45 = sub_21498F0F0();
  v46 = v19;
  v47 = v20 & 1;
  v48 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1D118, &qword_2149A0070);
  sub_2148B4C20(&qword_27CA1D120, &qword_27CA1D118, &qword_2149A0070);
  v34 = v7;
  sub_21498F4A0();
  v22 = *(v9 + 16);
  v35 = v13;
  v23 = v38;
  v22(v13, v15, v38);
  v25 = v39;
  v24 = v40;
  v26 = *(v39 + 16);
  v27 = v41;
  v26(v40, v7, v41);
  v28 = v42;
  v22(v42, v13, v23);
  v29 = &v28[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1D128, &unk_2149A0078) + 48)];
  v26(v29, v24, v27);
  v30 = *(v25 + 8);
  v30(v34, v27);
  v31 = *(v37 + 8);
  v31(v36, v23);
  v30(v24, v27);
  return (v31)(v35, v23);
}

uint64_t sub_21498C768@<X0>(const void *a1@<X0>, char *a2@<X8>)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B020, &qword_2149948A0);
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v24 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v24 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v24 - v15;
  v17 = swift_allocObject();
  memcpy((v17 + 16), a1, 0x188uLL);
  sub_21498CD04(a1, v26);
  sub_21498F450();
  v18 = swift_allocObject();
  memcpy((v18 + 16), a1, 0x188uLL);
  sub_21498CD04(a1, v26);
  sub_21498F450();
  v19 = v4[2];
  v19(v11, v16, v3);
  v19(v8, v14, v3);
  v20 = v25;
  v19(v25, v11, v3);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1D130, &qword_2149A0088);
  v19(&v20[*(v21 + 48)], v8, v3);
  v22 = v4[1];
  v22(v14, v3);
  v22(v16, v3);
  v22(v8, v3);
  return (v22)(v11, v3);
}

uint64_t sub_21498CA6C(void *a1)
{
  v2 = a1[48];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  (*(*v4 + 448))(*a1, a1[1]);
}

uint64_t sub_21498CB40(void *a1)
{
  v2 = a1[48];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  (*(*v4 + 472))(*a1, a1[1]);
}

uint64_t sub_21498CC18@<X0>(uint64_t a1@<X8>)
{
  sub_21498EE40();
  result = sub_21498F0F0();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_21498CC78(uint64_t a1)
{
  v1 = *(a1 + 384);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  return v3;
}

uint64_t sub_21498CD3C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  *a2 = v5;
  return result;
}

uint64_t sub_21498CDBC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21498EA20();
}

uint64_t sub_21498CE40@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  memcpy(__dst, v3, 0x179uLL);
  memcpy(a1, v3, 0x179uLL);
  return sub_2148D8FC8(__dst, &v5);
}

uint64_t objectdestroyTm_6()
{
  v1 = v0[3];

  if (v0[5])
  {

    v2 = v0[7];
  }

  v3 = v0[9];

  v4 = v0[11];

  v5 = v0[13];

  if (v0[15])
  {

    v6 = v0[17];

    v7 = v0[19];

    v8 = v0[21];
  }

  v9 = v0[23];

  if (v0[25])
  {

    v10 = v0[27];

    v11 = v0[29];

    v12 = v0[31];
  }

  if (v0[33])
  {

    v13 = v0[35];

    v14 = v0[37];

    v15 = v0[39];
  }

  if (v0[41])
  {

    v16 = v0[43];

    v17 = v0[45];

    v18 = v0[47];
  }

  v19 = v0[48];

  v20 = v0[50];

  return MEMORY[0x2821FE8E8](v0, 408, 7);
}

unint64_t sub_21498CFBC()
{
  v1 = sub_21498E690();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + qword_281190E60);
  v8 = (*((*MEMORY[0x277D85000] & *v0) + 0xF0))(v4);

  v9 = [v7 propertiesForDataclass_];

  if (v9)
  {
    v10 = sub_21498F7E0();

    v19 = 0xD000000000000020;
    v20 = 0x80000002149A0D20;
    sub_21498FDB0();
    if (*(v10 + 16) && (v11 = sub_214908014(v21), (v12 & 1) != 0))
    {
      sub_21489E614(*(v10 + 56) + 32 * v11, v22);
      sub_21489E5C0(v21);

      if (swift_dynamicCast())
      {
        return v19;
      }
    }

    else
    {

      sub_21489E5C0(v21);
    }
  }

  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v1, qword_281194E18);
  (*(v2 + 16))(v6, v14, v1);
  v15 = sub_21498E670();
  v16 = sub_21498FB90();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_21488E000, v15, v16, "[MSRequest] apiGatewayUrl is empty", v17, 2u);
    MEMORY[0x216059AC0](v17, -1, -1);
  }

  (*(v2 + 8))(v6, v1);
  return 0;
}

uint64_t sub_21498D2A4()
{
  v0 = *MEMORY[0x277CB89C8];
  v1 = *MEMORY[0x277CB89C8];
  return v0;
}

uint64_t sub_21498D2EC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A348, &qword_214991700);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v31 - v4;
  v6 = sub_21498E690();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UnsubscribeLinksAPIRequest();
  v38.receiver = v0;
  v38.super_class = v11;
  v12 = objc_msgSendSuper2(&v38, sel_urlString);
  v13 = sub_21498F870();
  v15 = v14;

  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v16 && (v36 = v13, v37 = v15, strcpy(v35, "/encodedview/"), HIWORD(v35[3]) = -4864, sub_21489CA00(), (sub_21498FD30() & 1) != 0))
  {
    v36 = v13;
    v37 = v15;
    strcpy(v35, "/mailws/");
    BYTE1(v35[2]) = 0;
    HIWORD(v35[2]) = 0;
    v35[3] = -402653184;
    v33 = 0x3273776C69616D2FLL;
    v34 = 0xE90000000000002FLL;
    sub_21498FD20();
  }

  else
  {
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v17 = __swift_project_value_buffer(v6, qword_281194E18);
    (*(v7 + 16))(v10, v17, v6);
    v18 = v1;
    v19 = sub_21498E670();
    v20 = sub_21498FBD0();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v32 = v5;
      v23 = v22;
      v36 = v22;
      *v21 = 136315394;
      *(v21 + 4) = sub_2149079F4(0xD000000000000031, 0x80000002149A3E60, &v36);
      *(v21 + 12) = 2080;

      v24 = sub_2149079F4(v13, v15, &v36);

      *(v21 + 14) = v24;
      _os_log_impl(&dword_21488E000, v19, v20, "Using fallback url for %s: %s", v21, 0x16u);
      swift_arrayDestroy();
      v25 = v23;
      v5 = v32;
      MEMORY[0x216059AC0](v25, -1, -1);
      MEMORY[0x216059AC0](v21, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
    v36 = sub_21498CFBC();
    v37 = v26;

    MEMORY[0x2160589C0](0xD00000000000003ELL, 0x80000002149A3EA0);
  }

  sub_21498E1A0();

  v27 = sub_21498E1B0();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v5, 1, v27) == 1)
  {
    sub_21498A8BC(v5);
    v29 = 0;
  }

  else
  {
    v29 = sub_21498E130();
    (*(v28 + 8))(v5, v27);
  }

  return v29;
}

id sub_21498D7D8(void *a1)
{
  v1 = a1;
  sub_21498D2EC();

  v2 = sub_21498F840();

  return v2;
}

id sub_21498D840()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UnsubscribeLinksAPIRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for UnsubscribeLinksAPIRequest()
{
  result = qword_27CA1D148;
  if (!qword_27CA1D148)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21498D8E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7265646E6573 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_214990080();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21498D968(uint64_t a1)
{
  v2 = sub_21498DCA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21498D9A4(uint64_t a1)
{
  v2 = sub_21498DCA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21498D9E0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1D168, &qword_2149A0188);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21498DCA8();
  sub_2149901B0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = sub_21498FF60();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v11;
  a2[1] = v13;
  return result;
}

uint64_t sub_21498DB5C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1D158, &qword_2149A0180);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21498DCA8();
  sub_2149901C0();
  sub_214990000();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_21498DCA8()
{
  result = qword_27CA1D160;
  if (!qword_27CA1D160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1D160);
  }

  return result;
}

unint64_t sub_21498DD10()
{
  result = qword_27CA1D170;
  if (!qword_27CA1D170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1D170);
  }

  return result;
}

unint64_t sub_21498DD68()
{
  result = qword_27CA1D178;
  if (!qword_27CA1D178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1D178);
  }

  return result;
}

unint64_t sub_21498DDC0()
{
  result = qword_27CA1D180;
  if (!qword_27CA1D180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1D180);
  }

  return result;
}