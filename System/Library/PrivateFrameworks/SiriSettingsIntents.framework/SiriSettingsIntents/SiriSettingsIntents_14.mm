uint64_t sub_268E80204()
{
  swift_beginAccess();
  v2 = *(v0 + 24);

  swift_endAccess();
  return v2;
}

uint64_t sub_268E80254(uint64_t a1)
{

  swift_beginAccess();
  v2 = *(v1 + 24);
  *(v1 + 24) = a1;

  swift_endAccess();
}

uint64_t sub_268E802B4@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  sub_268CDE730(v1 + 32, a1);
  return swift_endAccess();
}

uint64_t sub_268E80308(uint64_t *a1)
{
  sub_268CDE730(a1, v4);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v1 + 32));
  sub_268CDF978(v4, (v1 + 32));
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_268E80378@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  sub_268CDE730(v1 + 72, a1);
  return swift_endAccess();
}

uint64_t sub_268E803CC(uint64_t *a1)
{
  sub_268CDE730(a1, v4);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v1 + 72));
  sub_268CDF978(v4, (v1 + 72));
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_268E8043C@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_followupPluginAction);
  swift_beginAccess();
  sub_268E80B1C(v3, a1);
  return swift_endAccess();
}

uint64_t sub_268E80498(uint64_t a1)
{
  v8 = a1;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DDA10, &qword_268FA62E0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v5 = &v4 - v4;
  sub_268E80B1C(v2, &v4 - v4);
  v6 = (v1 + OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_followupPluginAction);
  v7 = &v9;
  swift_beginAccess();
  sub_268E80C44(v5, v6);
  swift_endAccess();
  return sub_268E80E6C(v8);
}

uint64_t sub_268E80568()
{
  v2 = (v0 + OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_intent);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

double sub_268E805D0(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_intent);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_268E80658()
{
  v2 = (v0 + OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_settingId);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];

  swift_endAccess();
  return v3;
}

uint64_t sub_268E806C4(uint64_t a1, uint64_t a2)
{

  v6 = (v2 + OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_settingId);
  swift_beginAccess();
  v3 = v6[1];
  *v6 = a1;
  v6[1] = a2;

  swift_endAccess();
}

uint64_t sub_268E80744()
{
  v2 = (v0 + OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_state);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_268E807A0(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_state);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_268E80824()
{
  v2 = *(v0 + OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_taskType);
  v3 = *(v0 + OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_taskType + 8);

  return v2;
}

uint64_t sub_268E80868()
{
  v2 = *(v0 + OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_attribute);
  v3 = *(v0 + OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_attribute + 8);

  return v2;
}

char *sub_268E808AC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v25 = 0;
  v28 = a1;
  v27 = a2;
  v26 = a3;
  sub_268D2DF48();
  sub_268F9AEF4();
  sub_268F9AEF4();
  *(v21 + 2) = sub_268F9B374();
  v14 = OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_followupPluginAction;
  v3 = sub_268F99884();
  (*(*(v3 - 8) + 56))(&v21[v14], 1);
  *&v21[OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_intent] = 0;
  v15 = OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_settingId;
  v4 = sub_268F9AEF4();
  v5 = &v21[v15];
  *v5 = v4;
  v5[1] = v6;
  *&v21[OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_state] = 0;
  v16 = OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_taskType;
  v7 = sub_268F9AEF4();
  v8 = &v21[v16];
  *v8 = v7;
  v8[1] = v9;
  v17 = OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_attribute;
  v10 = sub_268F9AEF4();
  v11 = &v21[v17];
  *v11 = v10;
  v11[1] = v12;

  *(v21 + 3) = a1;
  sub_268CDE730(a2, v24);
  sub_268CDF978(v24, v21 + 32);
  sub_268CDE730(a3, v23);
  sub_268CDF978(v23, v21 + 72);
  sub_268F99674();
  sub_268CDF978(v22, &v21[OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_eventSender]);
  __swift_destroy_boxed_opaque_existential_0(a3);
  __swift_destroy_boxed_opaque_existential_0(a2);

  return v21;
}

void *sub_268E80B1C(const void *a1, void *a2)
{
  v6 = sub_268F99884();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DDA10, &qword_268FA62E0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *sub_268E80C44(const void *a1, void *a2)
{
  v7 = sub_268F99884();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DDA10, &qword_268FA62E0);
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
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DDA10, &qword_268FA62E0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

uint64_t sub_268E80E6C(uint64_t a1)
{
  v3 = sub_268F99884();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_268E80F14(uint64_t a1)
{
  v91 = a1;
  v2 = v1;
  v102 = v2;
  v92 = "UndoBinarySettingsFlow: accepting input.";
  v93 = &dword_268CBE000;
  v94 = "UndoBinarySettingsFlow: binary value is unknown.";
  v133 = 0;
  v132 = 0;
  v134 = 0;
  v131 = 0;
  v128 = 0;
  v124 = 0;
  v125 = 0;
  v112 = 0;
  v95 = 0;
  v96 = sub_268F99C24();
  v97 = *(v96 - 8);
  v98 = v96 - 8;
  v99 = (*(v97 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v100 = v19 - v99;
  v134 = v19 - v99;
  v106 = sub_268F99C34();
  v103 = *(v106 - 8);
  v104 = v106 - 8;
  v101 = (*(v103 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v106);
  v105 = v19 - v101;
  v133 = a1;
  v132 = v102;
  sub_268F99BE4();
  if ((*(v103 + 88))(v105, v106) != *MEMORY[0x277D5C150])
  {
    (*(v103 + 8))(v105, v106);
    v54 = 0;
    return v54 & 1;
  }

  v4 = v100;
  (*(v103 + 96))(v105, v106);
  (*(v97 + 32))(v4, v105, v96);
  v134 = v4;
  v90 = sub_268F99C14();
  if (!v90)
  {
    goto LABEL_35;
  }

  v89 = v90;
  v87 = v90;
  v131 = v90;
  v5 = sub_268E4F2C8();
  v88 = v129;
  v129[0] = v5;
  v129[1] = v6;
  sub_268F9ADC4();
  sub_268CD9D30(v88);
  if (v130[3])
  {
    if (swift_dynamicCast())
    {
      v85 = v107;
      v86 = 0;
    }

    else
    {
      v85 = 0;
      v86 = 1;
    }

    v83 = v85;
    v84 = v86;
  }

  else
  {
    sub_268D28414(v130);
    v83 = 0;
    v84 = 1;
  }

  v82 = v83;
  if (v84)
  {
    goto LABEL_12;
  }

  v81 = v82;
  v79 = v82;
  v128 = v82;
  v7 = sub_268E4F2C8();
  v80 = v126;
  v126[0] = v7;
  v126[1] = v8;
  sub_268F9ADC4();
  sub_268CD9D30(v80);
  if (v127[3])
  {
    if (swift_dynamicCast())
    {
      v77 = v108;
      v78 = v109;
    }

    else
    {
      v77 = 0;
      v78 = 0;
    }

    v75 = v77;
    v76 = v78;
  }

  else
  {
    sub_268D28414(v127);
    v75 = 0;
    v76 = 0;
  }

  v73 = v76;
  v74 = v75;
  if (!v76)
  {
LABEL_12:

LABEL_35:
    (*(v97 + 8))(v100, v96);
    v54 = 0;
    return v54 & 1;
  }

  v71 = v74;
  v72 = v73;
  v69 = v73;
  v67 = v74;
  v124 = v74;
  v125 = v73;

  v68 = (v102 + OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_settingId);
  v70 = &v123;
  swift_beginAccess();
  v9 = v68;
  v10 = v69;
  v11 = v68[1];
  *v68 = v67;
  v9[1] = v10;

  swift_endAccess();
  sub_268CD4500();
  v121 = v12;
  v122 = v13 & 1;
  if (v13)
  {
    v66 = 0;
  }

  else
  {
    v66 = v121;
  }

  v56 = v66;
  v58 = &qword_2802DD000;
  v55 = (v102 + OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_state);
  v57 = &v120;
  v59 = 0;
  swift_beginAccess();
  *v55 = v56;
  swift_endAccess();
  v60 = (v102 + v58[325]);
  v61 = &v119;
  swift_beginAccess();
  v62 = *v60;
  swift_endAccess();
  v65 = &v118;
  v118 = v62;
  v63 = &v117;
  v117 = 0;
  v64 = type metadata accessor for INBinarySettingValue();
  sub_268CD925C();
  if (sub_268F9B754())
  {
    v53 = *(v102 + 16);
    MEMORY[0x277D82BE0](v53);
    v51 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v52 = sub_268F9B734();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v53);

    (*(v97 + 8))(v100, v96);
    v54 = 0;
  }

  else
  {
    v47 = sub_268F99C04();
    v49 = v14;
    v15 = sub_268E4F23C();
    v48 = v16;
    v50 = MEMORY[0x26D62DB50](v47, v49, v15);

    if (v50)
    {
      v34 = *(v102 + 16);
      MEMORY[0x277D82BE0](v34);
      v32 = sub_268F9B284();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      v44 = 0;
      v33 = sub_268F9B734();
      sub_268F9AC04();

      MEMORY[0x277D82BD8](v34);
      v35 = sub_268D291D4();
      v36 = (v102 + OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_settingId);
      v39 = &v116;
      v40 = 32;
      v41 = 0;
      swift_beginAccess();
      v37 = *v36;
      v38 = v36[1];

      swift_endAccess();
      v42 = v102 + 32;
      v43 = &v115;
      swift_beginAccess();
      v46 = v114;
      sub_268CDE730(v42, v114);
      swift_endAccess();
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD758, &qword_268FA55C0);
      sub_268E62B3C();
      if (swift_dynamicCast())
      {
        v31 = v113;
      }

      else
      {
        v31 = 0;
      }

      v25 = 0;
      v30 = sub_268F2B620(v37, v38, v31, 0);
      v112 = v30;
      sub_268CD7620();
      MEMORY[0x277D82BE0](v30);
      v22 = (v102 + OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_state);
      v23 = &v111;
      v26 = 0;
      swift_beginAccess();
      v24 = *v22;
      swift_endAccess();
      v28 = sub_268DA95CC(v30, v24, v25);
      v27 = (v102 + OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_intent);
      v29 = &v110;
      swift_beginAccess();
      v17 = *v27;
      *v27 = v28;
      MEMORY[0x277D82BD8](v17);
      swift_endAccess();
      MEMORY[0x277D82BD8](v30);

      (*(v97 + 8))(v100, v96);
      v54 = 1;
    }

    else
    {
      v21 = *(v102 + 16);
      MEMORY[0x277D82BE0](v21);
      v19[3] = sub_268F9B284();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      v20 = sub_268F9B734();
      sub_268F9AC04();

      MEMORY[0x277D82BD8](v21);

      (*(v97 + 8))(v100, v96);
      v54 = 1;
    }
  }

  return v54 & 1;
}

uint64_t sub_268E81A74(uint64_t a1)
{
  *(v2 + 688) = v1;
  *(v2 + 680) = a1;
  *(v2 + 600) = v2;
  *(v2 + 608) = 0;
  *(v2 + 616) = 0;
  *(v2 + 584) = 0;
  *(v2 + 592) = 0;
  *(v2 + 912) = 0;
  *(v2 + 648) = 0;
  *(v2 + 664) = 0;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2B0, &unk_268F9E0C0) - 8) + 64) + 15;
  *(v2 + 696) = swift_task_alloc();
  v4 = sub_268F999F4();
  *(v2 + 704) = v4;
  v14 = *(v4 - 8);
  *(v2 + 712) = v14;
  v5 = *(v14 + 64) + 15;
  *(v2 + 720) = swift_task_alloc();
  v6 = sub_268F99C74();
  *(v2 + 728) = v6;
  v15 = *(v6 - 8);
  *(v2 + 736) = v15;
  v7 = *(v15 + 64) + 15;
  *(v2 + 744) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
  *(v2 + 752) = v8;
  v16 = *(*(v8 - 8) + 64);
  *(v2 + 760) = swift_task_alloc();
  *(v2 + 768) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD760, qword_268FA55D0) - 8) + 64) + 15;
  *(v2 + 776) = swift_task_alloc();
  v10 = sub_268F99864();
  *(v2 + 784) = v10;
  v17 = *(v10 - 8);
  *(v2 + 792) = v17;
  v11 = *(v17 + 64) + 15;
  *(v2 + 800) = swift_task_alloc();
  *(v2 + 608) = v1;
  v12 = *(v2 + 600);

  return MEMORY[0x2822009F8](sub_268E81D30, 0);
}

uint64_t sub_268E81D30()
{
  v85 = v0;
  v75 = v0[100];
  v73 = v0[99];
  v74 = v0[98];
  v78 = v0[97];
  v80 = v0[86];
  v0[75] = v0;
  sub_268CDE730(v80 + OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_eventSender, (v0 + 2));
  v79 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v0[101] = sub_268F99744();
  v1 = *MEMORY[0x277D5BB08];
  v2 = *(v73 + 104);
  v0[102] = v2;
  v0[103] = (v73 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v2(v75, v1, v74);
  v76 = *(v80 + OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_taskType);
  v77 = *(v80 + OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_taskType + 8);

  v3 = sub_268F996B4();
  v0[104] = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 56);
  v0[105] = v5;
  v0[106] = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v5(v78, 1);

  sub_268F99724();
  sub_268F99684();

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v81 = (v80 + OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_intent);
  swift_beginAccess();
  v82 = *v81;
  v0[107] = *v81;
  MEMORY[0x277D82BE0](v82);
  swift_endAccess();
  if (!v82)
  {
    goto LABEL_19;
  }

  *(v72 + 616) = v82;
  *(v72 + 624) = v82;
  v6 = sub_268CD7620();
  v71._countAndFlagsBits = SettingIntent.settingIdentifier.getter(v6, &protocol witness table for INSetBinarySettingIntent);
  v71._object = v7;
  *(v72 + 864) = v7;
  if (!v7)
  {
    MEMORY[0x277D82BD8](v82);
LABEL_19:
    v33 = *(v72 + 680);
    v32 = *(*(v72 + 688) + 16);
    MEMORY[0x277D82BE0](v32);
    sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v32);
    v21 = sub_268F9AEF4();
    sub_268E83BB0(v21, v22);

    sub_268F998F4();
    goto LABEL_20;
  }

  *(v72 + 584) = v71._countAndFlagsBits;
  *(v72 + 592) = v7;

  BinarySettingIdentifier.init(rawValue:)(v71);
  if (v83 == 65)
  {
    goto LABEL_18;
  }

  *(v72 + 912) = v83;
  v70 = *sub_268F7AD98();

  v84 = v83;
  sub_268F7C430(&v84);

  if (!*(v72 + 120))
  {
    sub_268D28414((v72 + 96));
LABEL_18:
    v35 = *(v72 + 680);
    v34 = *(*(v72 + 688) + 16);
    MEMORY[0x277D82BE0](v34);
    sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v34);
    v19 = sub_268F9AEF4();
    sub_268E83BB0(v19, v20);

    sub_268F998F4();

    MEMORY[0x277D82BD8](v82);
LABEL_20:
    v23 = *(v72 + 800);
    v26 = *(v72 + 776);
    v27 = *(v72 + 768);
    v28 = *(v72 + 760);
    v29 = *(v72 + 744);
    v30 = *(v72 + 720);
    v31 = *(v72 + 696);

    v24 = *(*(v72 + 600) + 8);
    v25 = *(v72 + 600);

    return v24();
  }

  sub_268CDF978((v72 + 96), (v72 + 56));
  v68 = *(v72 + 80);
  v69 = *(v72 + 88);
  __swift_project_boxed_opaque_existential_1((v72 + 56), v68);
  if ((*(v69 + 16))(v82, v68))
  {
    sub_268F9B284();
    v8 = sub_268DC7AE8();
    v64 = *v8;
    MEMORY[0x277D82BE0](*v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v63 = v9;
    sub_268CDE730(v72 + 56, v72 + 376);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DCAA8, &unk_268FAA330);
    v61 = sub_268F9AE64();
    v62 = v10;
    v63[3] = MEMORY[0x277D837D0];
    v63[4] = sub_268CDD224();
    *v63 = v61;
    v63[1] = v62;
    sub_268CD0F7C();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v64);
    v65 = *(v72 + 80);
    v66 = *(v72 + 88);
    __swift_project_boxed_opaque_existential_1((v72 + 56), v65);
    v67 = (*(v66 + 32) + **(v66 + 32));
    v11 = *(*(v66 + 32) + 4);
    v12 = swift_task_alloc();
    *(v72 + 872) = v12;
    *v12 = *(v72 + 600);
    v12[1] = sub_268E82F6C;

    return v67(v82, v65, v66);
  }

  else
  {
    v58 = *(v72 + 768);
    v56 = *(v72 + 760);
    v60 = *(v72 + 752);
    v59 = *(v72 + 720);
    v54 = *(v72 + 688);
    v46 = *(v72 + 80);
    v47 = *(v72 + 88);
    __swift_project_boxed_opaque_existential_1((v72 + 56), v46);

    sub_268CDE730(v72 + 56, v72 + 136);
    v48 = swift_allocObject();
    *(v48 + 16) = v54;
    sub_268CDF978((v72 + 136), (v48 + 24));
    (*(v47 + 8))(v82, sub_268E8433C, v48, v46);

    type metadata accessor for SettingsBinarySetting();
    v49 = (v54 + OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_settingId);
    swift_beginAccess();
    v53 = *v49;
    v52 = v49[1];

    swift_endAccess();
    v50 = (v54 + OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_state);
    swift_beginAccess();
    v51 = *v50;
    swift_endAccess();
    *(v72 + 632) = v51;
    *(v72 + 640) = 1;
    type metadata accessor for INBinarySettingValue();
    sub_268CD925C();
    v14 = sub_268F9B754();
    v55 = SettingsBinarySetting.__allocating_init(settingId:value:)(v53, v52, v14 & 1);
    *(v72 + 888) = v55;
    *(v72 + 648) = v55;
    swift_beginAccess();
    v57 = *(v54 + 24);

    swift_endAccess();
    sub_268D08D90(v55, *(v55 + OBJC_IVAR____TtC19SiriSettingsIntents21SettingsBinarySetting_value) & 1);

    sub_268D28A00(v58, v56);
    sub_268D2DFAC(v60, v72 + 656, v59);
    v42 = *(v72 + 744);
    v43 = *(v72 + 728);
    v38 = *(v72 + 720);
    v39 = *(v72 + 704);
    v36 = *(v72 + 696);
    v40 = *(v72 + 688);
    v41 = *(v72 + 736);
    v37 = *(v72 + 712);
    swift_beginAccess();
    sub_268CDE730(v40 + 32, v72 + 216);
    swift_endAccess();
    v15 = sub_268F999A4();
    (*(*(v15 - 8) + 56))(v36, 1);
    *(v72 + 256) = 0;
    *(v72 + 264) = 0;
    *(v72 + 272) = 0;
    *(v72 + 280) = 0;
    *(v72 + 288) = 0;
    sub_268E64994();
    sub_268CDD6D4();
    _swift_stdlib_has_malloc_size();
    sub_268D31B10();
    sub_268F998D4();

    sub_268D28414((v72 + 256));
    sub_268D34AC0(v36);
    __swift_destroy_boxed_opaque_existential_0((v72 + 216));
    (*(v37 + 8))(v38, v39);
    swift_beginAccess();
    sub_268CDE730(v40 + 72, v72 + 296);
    swift_endAccess();
    v44 = *(v72 + 320);
    v45 = *(v72 + 328);
    __swift_project_boxed_opaque_existential_1((v72 + 296), v44);
    *(v72 + 360) = v43;
    *(v72 + 368) = MEMORY[0x277D5C1D8];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v72 + 336));
    (*(v41 + 16))(boxed_opaque_existential_1, v42, v43);
    v17 = *(MEMORY[0x277D5BF40] + 4);
    v18 = swift_task_alloc();
    *(v72 + 896) = v18;
    *v18 = *(v72 + 600);
    v18[1] = sub_268E831D8;

    return MEMORY[0x2821BB5D0](v72 + 336, v44, v45);
  }
}

uint64_t sub_268E82F6C(uint64_t a1)
{
  v6 = *v1;
  v3 = *(*v1 + 872);
  *(v6 + 600) = *v1;
  *(v6 + 880) = a1;

  v4 = *(v6 + 600);

  return MEMORY[0x2822009F8](sub_268E83088, 0);
}

uint64_t sub_268E83088()
{
  v1 = v0[110];
  v7 = v0[108];
  v8 = v0[107];
  v6 = v0[85];
  v0[75] = v0;
  MEMORY[0x277D82BD8](v1);
  sub_268F998F4();
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);

  MEMORY[0x277D82BD8](v8);
  v2 = v0[100];
  v9 = v0[97];
  v10 = v0[96];
  v11 = v0[95];
  v12 = v0[93];
  v13 = v0[90];
  v14 = v0[87];

  v3 = *(v0[75] + 8);
  v4 = v0[75];

  return v3();
}

uint64_t sub_268E831D8()
{
  v9 = *v1;
  v7 = (*v1 + 600);
  v8 = (*v1 + 336);
  v2 = *(*v1 + 896);
  *(v9 + 600) = *v1;
  *(v9 + 904) = v0;

  if (v0)
  {
    v5 = *v7;
    v4 = sub_268E83664;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v8);
    v3 = *v7;
    v4 = sub_268E83354;
  }

  return MEMORY[0x2822009F8](v4, 0);
}

uint64_t sub_268E83354()
{
  v7 = v0[93];
  v6 = v0[92];
  v8 = v0[91];
  v0[75] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 37);
  (*(v6 + 8))(v7, v8);
  v23 = v0[111];
  v24 = v0[108];
  v25 = v0[107];
  v13 = v0[106];
  v14 = v0[105];
  v12 = v0[104];
  v10 = v0[103];
  v11 = v0[102];
  v1 = v0[101];
  v15 = v0[100];
  v9 = v0[98];
  v18 = v0[97];
  v22 = v0[96];
  v19 = v0[86];
  v21 = v0[85];
  sub_268CDE730(v19 + OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_eventSender, (v0 + 22));
  v20 = v0[26];
  __swift_project_boxed_opaque_existential_1(v0 + 22, v0[25]);
  v11(v15, *MEMORY[0x277D5BC10], v9);
  v16 = *(v19 + OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_taskType);
  v17 = *(v19 + OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_taskType + 8);

  v14(v18, 1, 1, v12);

  sub_268F99724();
  sub_268F99684();

  __swift_destroy_boxed_opaque_existential_0(v0 + 22);
  sub_268F998F4();
  sub_268D28378(v22);

  __swift_destroy_boxed_opaque_existential_0(v0 + 7);

  MEMORY[0x277D82BD8](v25);
  v2 = v0[100];
  v26 = v0[97];
  v27 = v0[96];
  v28 = v0[95];
  v29 = v0[93];
  v30 = v0[90];
  v31 = v0[87];

  v3 = *(v0[75] + 8);
  v4 = v0[75];

  return v3();
}

uint64_t sub_268E83664()
{
  v15 = v0[93];
  v14 = v0[92];
  v16 = v0[91];
  v0[75] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 42);
  __swift_destroy_boxed_opaque_existential_0(v0 + 37);
  (*(v14 + 8))(v15, v16);
  v22 = v0[113];
  v17 = v0[86];
  v1 = v22;
  v0[83] = v22;
  v21 = *(v17 + 16);
  MEMORY[0x277D82BE0](v21);
  sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v20 = v2;
  swift_getErrorValue();
  v3 = v0[64];
  v4 = v0[65];
  v5 = v0[66];
  sub_268F9B7C4();
  v18 = sub_268F9AEC4();
  v19 = v6;
  v20[3] = MEMORY[0x277D837D0];
  v20[4] = sub_268CDD224();
  *v20 = v18;
  v20[1] = v19;

  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v21);
  v7 = sub_268F9AEF4();
  sub_268E83BB0(v7, v8);

  v37 = v0[111];
  v38 = v0[108];
  v39 = v0[107];
  v27 = v0[106];
  v28 = v0[105];
  v26 = v0[104];
  v24 = v0[103];
  v25 = v0[102];
  v9 = v0[101];
  v29 = v0[100];
  v23 = v0[98];
  v32 = v0[97];
  v36 = v0[96];
  v33 = v0[86];
  v35 = v0[85];
  sub_268CDE730(v33 + OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_eventSender, (v0 + 22));
  v34 = v0[26];
  __swift_project_boxed_opaque_existential_1(v0 + 22, v0[25]);
  v25(v29, *MEMORY[0x277D5BC10], v23);
  v30 = *(v33 + OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_taskType);
  v31 = *(v33 + OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_taskType + 8);

  v28(v32, 1, 1, v26);

  sub_268F99724();
  sub_268F99684();

  __swift_destroy_boxed_opaque_existential_0(v0 + 22);
  sub_268F998F4();
  sub_268D28378(v36);

  __swift_destroy_boxed_opaque_existential_0(v0 + 7);

  MEMORY[0x277D82BD8](v39);
  v10 = v0[100];
  v40 = v0[97];
  v41 = v0[96];
  v42 = v0[95];
  v43 = v0[93];
  v44 = v0[90];
  v45 = v0[87];

  v11 = *(v0[75] + 8);
  v12 = v0[75];

  return v11();
}

uint64_t sub_268E83B24(uint64_t *a1, uint64_t a2)
{
  v6 = *a1;

  v4 = *(a2 + OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_attribute);
  v5 = *(a2 + OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_attribute + 8);

  sub_268F99714();
}

uint64_t sub_268E83BB0(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v20 = a2;
  v24 = sub_268E84348;
  v35 = 0;
  v36 = 0;
  v34 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD760, qword_268FA55D0);
  v12 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v23 = &v11 - v12;
  v17 = 0;
  v16 = sub_268F99864();
  v14 = *(v16 - 8);
  v15 = v16 - 8;
  v13 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19);
  v25 = &v11 - v13;
  v35 = v4;
  v36 = v5;
  v34 = v2;
  v30 = v31;
  sub_268CDE730(v2 + OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_eventSender, v31);
  v27 = v32;
  v28 = v33;
  v26 = __swift_project_boxed_opaque_existential_1(v30, v32);
  sub_268F99744();
  (*(v14 + 104))(v25, *MEMORY[0x277D5BC00], v16);
  v21 = *(v18 + OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_taskType);
  v22 = *(v18 + OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_taskType + 8);

  v6 = sub_268F996B4();
  (*(*(v6 - 8) + 56))(v23, 1);

  v7 = swift_allocObject();
  v8 = v19;
  v9 = v20;
  v7[2] = v18;
  v7[3] = v8;
  v7[4] = v9;
  v29 = sub_268F99724();
  sub_268F99684();

  return __swift_destroy_boxed_opaque_existential_0(v30);
}

double sub_268E83E48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = a1;
  v14 = a2;
  v13 = a3;
  sub_268F9B284();
  v11 = *(a2 + 16);
  MEMORY[0x277D82BE0](v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v10 = v3;
  sub_268CDE730(a3, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DCAA8, &unk_268FAA330);
  v8 = sub_268F9AE64();
  v9 = v4;
  v10[3] = MEMORY[0x277D837D0];
  v10[4] = sub_268CDD224();
  *v10 = v8;
  v10[1] = v9;
  sub_268CD0F7C();
  sub_268F9AC14();

  *&result = MEMORY[0x277D82BD8](v11).n128_u64[0];
  return result;
}

uint64_t sub_268E83FA4()
{
  v2 = *v0;
  sub_268E5A9A0();
  return sub_268F99614();
}

uint64_t sub_268E84038(uint64_t *a1, uint64_t a2)
{
  v6 = *a1;

  v4 = *(a2 + OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_attribute);
  v5 = *(a2 + OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_attribute + 8);

  sub_268F99714();

  v8 = *a1;

  sub_268F99704();
}

uint64_t sub_268E84108()
{
  MEMORY[0x277D82BD8](v0[2]);
  v1 = v0[3];

  __swift_destroy_boxed_opaque_existential_0(v0 + 4);
  __swift_destroy_boxed_opaque_existential_0(v0 + 9);
  sub_268E80E6C(v0 + OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_followupPluginAction);
  sub_268D35038((v0 + OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_intent));
  sub_268CD9D30(v0 + OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_settingId);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_eventSender));
  sub_268CD9D30(v0 + OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_taskType);
  sub_268CD9D30(v0 + OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_attribute);
  return v3;
}

uint64_t sub_268E841D4()
{
  v0 = *sub_268E84108();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t sub_268E84284(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_268CD7B50;

  return sub_268E81A74(a1);
}

uint64_t sub_268E84348(uint64_t *a1)
{
  v2 = v1[3];
  v3 = v1[4];
  return sub_268E84038(a1, v1[2]);
}

uint64_t type metadata accessor for UndoBinarySettingFlow()
{
  v1 = qword_2802DDA30;
  if (!qword_2802DDA30)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_268E843E8()
{
  v2 = sub_268E84534();
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

uint64_t sub_268E84534()
{
  v4 = qword_2802DDA40;
  if (!qword_2802DDA40)
  {
    sub_268F99884();
    v3 = sub_268F9B3B4();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_2802DDA40);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_268E845D0()
{
  type metadata accessor for SetAXDifferentiateWithoutColorHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_2802F15A0 = result;
  return result;
}

uint64_t *sub_268E84638()
{
  if (qword_2802DB740 != -1)
  {
    swift_once();
  }

  return &qword_2802F15A0;
}

uint64_t sub_268E84698()
{
  v1 = *sub_268E84638();

  return v1;
}

uint64_t sub_268E846C8(void *a1, void (*a2)(void), uint64_t a3)
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

  v10 = sub_268D3E8F4();

  v5 = sub_268DBD694();
  v12 = *v5;
  v13 = v5[1];
  v14 = *(v5 + 16);
  v15 = *(v8 + 24);

  sub_268DAAB84(v10, a1, v12, v13, v14, v15 & 1, a2, a3, sub_268E848EC, v8, 0, 1, 0, 0);
  return sub_268CD9A28(sub_268E848EC);
}

uint64_t sub_268E8487C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);

  sub_268D3E924();
}

uint64_t sub_268E84938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a3;
  v31 = a1;
  v56 = a2;
  v4 = v3;
  v5 = v31;
  v55 = v4;
  v62 = "ConfirmSettingsIntentStrategy actionForInput.";
  v60 = &dword_268CBE000;
  v32 = "ConfirmSettingsIntentStrategy actionForInput is ignore.";
  v33 = "ConfirmSettingsIntentStrategy actionForInput is handle.";
  v72 = 0;
  v71 = 0;
  v70 = 0;
  v74 = 0;
  v73 = 0;
  v58 = 0;
  v34 = sub_268F996C4();
  v35 = *(v34 - 8);
  v36 = v34 - 8;
  v37 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v38 = v15 - v37;
  v39 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v40 = v15 - v39;
  v41 = (*(*(type metadata accessor for SettingsNLIntent() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v58);
  v42 = v15 - v41;
  v43 = sub_268F9A704();
  v44 = *(v43 - 8);
  v45 = v43 - 8;
  v46 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v58);
  v47 = v15 - v46;
  v48 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9);
  v49 = v15 - v48;
  v74 = v15 - v48;
  v50 = sub_268F99C64();
  v51 = *(v50 - 8);
  v52 = v50 - 8;
  v53 = (*(v51 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v58);
  v54 = v15 - v53;
  v73 = v15 - v53;
  v68 = sub_268F99C34();
  v65 = *(v68 - 8);
  v66 = v68 - 8;
  v57 = (*(v65 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v68);
  v67 = v15 - v57;
  v72 = v5;
  v71 = v10;
  v70 = v11;
  v64 = *sub_268DC916C();
  MEMORY[0x277D82BE0](v64);
  v61 = sub_268F9B284();
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v63 = sub_268F9B734();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v64);
  sub_268F99BE4();
  v69 = (*(v65 + 88))(v67, v68);
  if (v69 == *MEMORY[0x277D5C128])
  {
    v13 = v42;
    (*(v65 + 96))(v67, v68);
    (*(v44 + 32))(v49, v67, v43);
    v74 = v49;
    v20 = *sub_268DC916C();
    MEMORY[0x277D82BE0](v20);
    v18 = sub_268F9B284();
    v19 = sub_268F9B734();
    sub_268F9AC04();

    v14 = MEMORY[0x277D82BD8](v20);
    (*(v44 + 16))(v47, v49, v43, v14);
    sub_268E42410(v47, v13);
    sub_268E42470(v40);
    sub_268D87800(v42);
    (*(v35 + 104))(v38, *MEMORY[0x277D5B960], v34);
    sub_268D8785C();
    v23 = sub_268F9B754();
    v22 = *(v35 + 8);
    v21 = v35 + 8;
    v22(v38, v34);
    v22(v40, v34);
    if (v23)
    {
      sub_268F998A4();
    }

    else
    {
      sub_268F99894();
    }

    return (*(v44 + 8))(v49, v43);
  }

  else if (v69 == *MEMORY[0x277D5C160])
  {
    (*(v65 + 96))(v67, v68);
    (*(v51 + 32))(v54, v67, v50);
    v73 = v54;
    if (sub_268E8533C(v54))
    {
      v29 = *sub_268DC916C();
      MEMORY[0x277D82BE0](v29);
      v27 = sub_268F9B284();
      v28 = sub_268F9B734();
      sub_268F9AC04();

      MEMORY[0x277D82BD8](v29);
      sub_268F99894();
    }

    else
    {
      v26 = *sub_268DC916C();
      MEMORY[0x277D82BE0](v26);
      v24 = sub_268F9B284();
      v25 = sub_268F9B734();
      sub_268F9AC04();

      MEMORY[0x277D82BD8](v26);
      sub_268F998A4();
    }

    return (*(v51 + 8))(v54, v50);
  }

  else
  {
    v17 = *sub_268DC916C();
    MEMORY[0x277D82BE0](v17);
    v15[3] = sub_268F9B284();
    v16 = sub_268F9B734();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v17);
    sub_268F998A4();
    return (*(v65 + 8))(v67, v68);
  }
}

uint64_t sub_268E8533C(uint64_t a1)
{
  v22 = a1;
  v2 = v1;
  v3 = v22;
  v34 = v2;
  v58 = 0;
  v57 = 0;
  v44 = 0;
  v37 = sub_268F99CB4();
  v35 = *(v37 - 8);
  v36 = v37 - 8;
  v23 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v37);
  v24 = &v8[-v23];
  v25 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v8[-v23]);
  v26 = &v8[-v25];
  v27 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v8[-v25]);
  v38 = &v8[-v27];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC748, &qword_268F9F1F8);
  v31 = *(*(v6 - 8) + 64);
  v28 = (v31 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v29 = &v8[-v28];
  v30 = (v31 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v8[-v28]);
  v32 = &v8[-v30];
  v33 = (v31 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v8[-v30]);
  v45 = &v8[-v33];
  v58 = v3;
  v57 = v34;
  sub_268F99C54();
  v43 = sub_268F99CA4();
  v39 = *(v35 + 8);
  v40 = v35 + 8;
  v39(v38, v37);
  v56 = v43;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC750, &qword_268F9F200);
  v42 = sub_268D88014();
  sub_268F9B234();

  v46 = sub_268F99DE4();
  v47 = *(v46 - 8);
  v48 = v46 - 8;
  v49 = *(v47 + 48);
  v50 = v47 + 48;
  if (v49(v45, 1) == 1)
  {
    sub_268D8809C(v45);
    v21 = 2;
  }

  else
  {
    v20 = sub_268F99D64();
    (*(v47 + 8))(v45, v46);
    v21 = v20 & 1;
  }

  v55 = v21;
  if (v21 == 2)
  {
    v19 = 0;
  }

  else
  {
    v19 = v55;
  }

  if (v19)
  {
    v18 = 1;
  }

  else
  {
    sub_268F99C54();
    v17 = sub_268F99CA4();
    v39(v26, v37);
    v54 = v17;
    sub_268F9B234();

    if ((v49)(v32, 1, v46) == 1)
    {
      sub_268D8809C(v32);
      v16 = 2;
    }

    else
    {
      v15 = sub_268F99D74();
      (*(v47 + 8))(v32, v46);
      v16 = v15 & 1;
    }

    v53 = v16;
    if (v16 == 2)
    {
      v14 = 0;
    }

    else
    {
      v14 = v53;
    }

    v18 = v14;
  }

  if (v18)
  {
    v13 = 1;
  }

  else
  {
    sub_268F99C54();
    v12 = sub_268F99CA4();
    v39(v24, v37);
    v52 = v12;
    sub_268F9B234();

    if ((v49)(v29, 1, v46) == 1)
    {
      sub_268D8809C(v29);
      v11 = 2;
    }

    else
    {
      v10 = sub_268F99D84();
      (*(v47 + 8))(v29, v46);
      v11 = v10 & 1;
    }

    v51 = v11;
    if (v11 == 2)
    {
      v9 = 0;
    }

    else
    {
      v9 = v51;
    }

    v13 = v9;
  }

  return v13 & 1;
}

uint64_t sub_268E85A74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = v3;
  v4[8] = a3;
  v4[7] = a2;
  v4[6] = a1;
  v4[2] = v4;
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC760, &unk_268F9F210) - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v6 = sub_268F996C4();
  v4[11] = v6;
  v11 = *(v6 - 8);
  v4[12] = v11;
  v12 = *(v11 + 64);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v7 = sub_268F99C34();
  v4[15] = v7;
  v13 = *(v7 - 8);
  v4[16] = v13;
  v8 = *(v13 + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = v3;
  v9 = v4[2];

  return MEMORY[0x2822009F8](sub_268E85C6C, 0);
}

uint64_t sub_268E85C6C()
{
  v39 = v0[17];
  v38 = v0[16];
  v40 = v0[15];
  v41 = v0[14];
  v44 = v0[13];
  v42 = v0[12];
  v43 = v0[11];
  v37 = v0[9];
  v32 = v0[7];
  v0[2] = v0;
  v1 = sub_268DC916C();
  v36 = *v1;
  MEMORY[0x277D82BE0](*v1);
  sub_268F9B284();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v35 = v2;
  sub_268F99BE4();
  v33 = sub_268F9AE64();
  v34 = v3;
  v35[3] = MEMORY[0x277D837D0];
  v35[4] = sub_268CDD224();
  *v35 = v33;
  v35[1] = v34;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v36);
  sub_268F99BE4();
  sub_268E862B0(v39, v41);
  (*(v38 + 8))(v39, v40);
  (*(v42 + 104))(v44, *MEMORY[0x277D5B978], v43);
  sub_268D8785C();
  v46 = sub_268F9B754();
  v45 = *(v42 + 8);
  v45(v44, v43);
  if (v46)
  {
    v29 = v31[14];
    v30 = v31[11];
    v28 = v31[10];
    v4 = v31[8];
    v27 = v31[6];
    v5 = sub_268DC916C();
    v23 = *v5;
    MEMORY[0x277D82BE0](*v5);
    sub_268F9B284();
    sub_268F9B734();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v23);
    v24 = *MEMORY[0x277D5BED8];
    v26 = sub_268F99A94();
    v25 = *(v26 - 8);
    (*(v25 + 104))(v28, v24);
    (*(v25 + 56))(v28, 0, 1, v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2B8, &unk_268F9E0D0);
    sub_268F99B44();
    sub_268D2E630();
    sub_268F99A84();
    v45(v29, v30);
  }

  else
  {
    v21 = v31[14];
    v22 = v31[11];
    v20 = v31[10];
    v6 = v31[8];
    v19 = v31[6];
    v7 = sub_268DC916C();
    v15 = *v7;
    MEMORY[0x277D82BE0](*v7);
    sub_268F9B284();
    sub_268F9B734();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v15);
    v16 = *MEMORY[0x277D5BED0];
    v18 = sub_268F99A94();
    v17 = *(v18 - 8);
    (*(v17 + 104))(v20, v16);
    (*(v17 + 56))(v20, 0, 1, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2B8, &unk_268F9E0D0);
    sub_268F99B44();
    sub_268D2E630();
    sub_268F99A84();
    v45(v21, v22);
  }

  v8 = v31[17];
  v12 = v31[14];
  v13 = v31[13];
  v14 = v31[10];

  v9 = *(v31[2] + 8);
  v10 = v31[2];

  return v9();
}

uint64_t sub_268E862B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v103 = a1;
  v71 = "ConfirmSettingsIntentStrategy received unsupported parse object: %@.";
  v72 = sub_268D89874;
  v73 = sub_268D89940;
  v74 = sub_268D89984;
  v75 = "ConfirmSettingsIntentStrategy userDialogAct is UserCancelled";
  v76 = "ConfirmSettingsIntentStrategy userDialogAct is UserRejected";
  v77 = "ConfirmSettingsIntentStrategy userDialogAct is UserAccepted";
  v119 = 0;
  v118 = 0;
  v121 = 0;
  v78 = 0;
  v120 = 0;
  v95 = 0;
  v79 = sub_268F99CB4();
  v80 = *(v79 - 8);
  v81 = v79 - 8;
  v82 = (*(v80 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v83 = &v30[-v82];
  v84 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v85 = &v30[-v84];
  v86 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v87 = &v30[-v86];
  v88 = sub_268F99C64();
  v89 = *(v88 - 8);
  v90 = v88 - 8;
  v91 = (*(v89 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v95);
  v92 = &v30[-v91];
  v121 = &v30[-v91];
  v93 = (*(*(type metadata accessor for SettingsNLIntent() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v95);
  v94 = &v30[-v93];
  v96 = sub_268F9A704();
  v97 = *(v96 - 8);
  v98 = v96 - 8;
  v99 = (*(v97 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v95);
  v100 = &v30[-v99];
  v101 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v102 = &v30[-v101];
  v120 = &v30[-v101];
  v112 = sub_268F99C34();
  v110 = *(v112 - 8);
  v111 = v112 - 8;
  v105 = *(v110 + 64);
  v104 = (v105 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v112);
  v106 = &v30[-v104];
  v107 = (v105 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x28223BE20](&v30[-v104]);
  v113 = &v30[-v107];
  v119 = v10;
  v118 = v2;
  v108 = *(v110 + 16);
  v109 = v110 + 16;
  v108(v9);
  v114 = (*(v110 + 88))(v113, v112);
  if (v114 == *MEMORY[0x277D5C128])
  {
    v11 = v94;
    (*(v110 + 96))(v113, v112);
    (*(v97 + 32))(v102, v113, v96);
    v120 = v102;
    (*(v97 + 16))(v100);
    sub_268E42410(v100, v11);
    sub_268E42470(v70);
    sub_268D87800(v94);
    return (*(v97 + 8))(v102, v96);
  }

  if (v114 == *MEMORY[0x277D5C160])
  {
    v13 = v78;
    v14 = v92;
    (*(v110 + 96))(v113, v112);
    (*(v89 + 32))(v14, v113, v88);
    v121 = v14;
    sub_268F99C54();
    v65 = sub_268F99CA4();
    v63 = *(v80 + 8);
    v64 = v80 + 8;
    v63(v87, v79);
    v117 = v65;
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC750, &qword_268F9F200);
    v67 = sub_268D898B8();
    result = sub_268F9AFB4();
    v68 = v13;
    v69 = result;
    if (v13)
    {
      __break(1u);
    }

    else
    {
      v62 = v69;
      sub_268CD7930(&v117);
      if (v62)
      {
        v57 = sub_268F9B284();
        v59 = *sub_268DC916C();
        MEMORY[0x277D82BE0](v59);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
        v60 = 0;
        v58 = sub_268F9B734();
        sub_268F9AC14();

        MEMORY[0x277D82BD8](v59);
        v61 = *MEMORY[0x277D5B978];
        v15 = sub_268F996C4();
        (*(*(v15 - 8) + 104))(v70, v61);
        return (*(v89 + 8))(v92, v88);
      }

      v16 = v68;
      sub_268F99C54();
      v54 = sub_268F99CA4();
      v63(v85, v79);
      v116 = v54;
      result = sub_268F9AFB4();
      v55 = v16;
      v56 = result;
      if (!v16)
      {
        v53 = v56;
        sub_268CD7930(&v116);
        if (v53)
        {
          v48 = sub_268F9B284();
          v50 = *sub_268DC916C();
          MEMORY[0x277D82BE0](v50);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
          v51 = 0;
          v49 = sub_268F9B734();
          sub_268F9AC14();

          MEMORY[0x277D82BD8](v50);
          v52 = *MEMORY[0x277D5B968];
          v17 = sub_268F996C4();
          (*(*(v17 - 8) + 104))(v70, v52);
          return (*(v89 + 8))(v92, v88);
        }

        v18 = v55;
        sub_268F99C54();
        v46 = sub_268F99CA4();
        v63(v83, v79);
        v115 = v46;
        result = sub_268F9AFB4();
        v47 = result;
        if (!v18)
        {
          v45 = v47;
          sub_268CD7930(&v115);
          if (v45)
          {
            v40 = sub_268F9B284();
            v42 = *sub_268DC916C();
            MEMORY[0x277D82BE0](v42);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
            v43 = 0;
            v41 = sub_268F9B734();
            sub_268F9AC14();

            MEMORY[0x277D82BD8](v42);
            v44 = *MEMORY[0x277D5B970];
            v19 = sub_268F996C4();
            (*(*(v19 - 8) + 104))(v70, v44);
            return (*(v89 + 8))(v92, v88);
          }

          (*(v89 + 8))(v92, v88);
          goto LABEL_15;
        }

LABEL_19:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

  v37 = sub_268F9B294();
  v39 = *sub_268DC916C();
  MEMORY[0x277D82BE0](v39);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v36 = sub_268F9B734();
  v34 = v20;
  (v108)(v106, v103, v112);
  v32 = sub_268F9AE64();
  v33 = v21;
  v34[3] = MEMORY[0x277D837D0];
  v22 = sub_268CDD224();
  v23 = v32;
  v24 = v33;
  v25 = v34;
  v26 = v22;
  v27 = v36;
  v34[4] = v26;
  *v25 = v23;
  v25[1] = v24;
  sub_268CD0F7C();
  v38 = v27;
  sub_268F9AC14();

  v28 = MEMORY[0x277D82BD8](v39);
  (*(v110 + 8))(v113, v112, v28);
LABEL_15:
  v31 = *MEMORY[0x277D5B960];
  v29 = sub_268F996C4();
  return (*(*(v29 - 8) + 104))(v70, v31);
}

uint64_t sub_268E871A4(uint64_t a1, uint64_t a2)
{
  v3[13] = v2;
  v3[12] = a2;
  v3[11] = a1;
  v3[7] = v3;
  v3[8] = 0;
  v3[9] = 0;
  v3[10] = 0;
  v4 = *(*(sub_268F99834() - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v5 = sub_268F99BC4();
  v3[15] = v5;
  v9 = *(v5 - 8);
  v3[16] = v9;
  v6 = *(v9 + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[8] = a2;
  v3[9] = v2;
  v7 = v3[7];

  return MEMORY[0x2822009F8](sub_268E872F4, 0);
}

uint64_t sub_268E872F4()
{
  v5 = v0[13];
  v6 = v0[12];
  v0[7] = v0;
  v1 = sub_268DC916C();
  v4 = *v1;
  MEMORY[0x277D82BE0](*v1);
  sub_268F9B284();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v4);
  v0[18] = *(v5 + 104);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2B8, &unk_268F9E0D0);
  v10 = sub_268F99B34();
  v0[19] = v10;
  v8 = sub_268F99B44();
  v0[20] = v8;
  v9 = sub_268F99B24();
  v0[21] = v9;
  v2 = swift_task_alloc();
  *(v7 + 176) = v2;
  *v2 = *(v7 + 56);
  v2[1] = sub_268E874C8;

  return sub_268EFBC10(v10, v8, v9);
}

uint64_t sub_268E874C8(uint64_t a1)
{
  v12 = *v2;
  v4 = *(*v2 + 176);
  *(v12 + 56) = *v2;
  v13 = (v12 + 56);
  *(v12 + 184) = a1;
  *(v12 + 192) = v1;

  if (v1)
  {
    v7 = *v13;
    v6 = sub_268E87A70;
  }

  else
  {
    v9 = *(v12 + 160);
    v10 = *(v12 + 152);
    v11 = *(v12 + 144);

    v5 = *v13;
    v6 = sub_268E8767C;
  }

  return MEMORY[0x2822009F8](v6, 0);
}

uint64_t sub_268E8767C()
{
  v1 = v0[23];
  v9 = v0[17];
  v10 = v0[14];
  v12 = v0[13];
  v8 = v0[12];
  v0[7] = v0;
  v0[10] = v1;
  sub_268F99814();

  v11 = swift_task_alloc();
  *(v11 + 16) = v12;
  *(v11 + 24) = v8;
  sub_268F99B94();

  sub_268CDE730(v12 + 152, (v0 + 2));
  v14 = v0[5];
  v15 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v14);
  v2 = *(MEMORY[0x277D5BE50] + 4);
  v3 = swift_task_alloc();
  v13[25] = v3;
  *v3 = v13[7];
  v3[1] = sub_268E87808;
  v4 = v13[23];
  v5 = v13[17];
  v6 = v13[11];

  return MEMORY[0x2821BB480](v6, v4, v5, v14, v15);
}

uint64_t sub_268E87808()
{
  v7 = *v1;
  v2 = *(*v1 + 200);
  *(v7 + 56) = *v1;
  v8 = (v7 + 56);
  *(v7 + 208) = v0;

  if (v0)
  {
    v5 = *v8;
    v4 = sub_268E87B6C;
  }

  else
  {
    v3 = *v8;
    v4 = sub_268E87970;
  }

  return MEMORY[0x2822009F8](v4, 0);
}

uint64_t sub_268E87970()
{
  v6 = v0[23];
  v7 = v0[17];
  v4 = v0[16];
  v5 = v0[15];
  v8 = v0[14];
  v0[7] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  (*(v4 + 8))(v7, v5);
  MEMORY[0x277D82BD8](v6);

  v1 = *(v0[7] + 8);
  v2 = v0[7];

  return v1();
}

uint64_t sub_268E87A70()
{
  v1 = v0[21];
  v7 = v0[20];
  v8 = v0[19];
  v9 = v0[18];
  v0[7] = v0;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v7);

  v2 = v0[24];
  v3 = v0[17];
  v10 = v0[14];

  v4 = *(v0[7] + 8);
  v5 = v0[7];

  return v4();
}

uint64_t sub_268E87B6C()
{
  v9 = v0[23];
  v7 = v0[17];
  v6 = v0[16];
  v8 = v0[15];
  v0[7] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  (*(v6 + 8))(v7, v8);
  MEMORY[0x277D82BD8](v9);
  v1 = v0[26];
  v2 = v0[17];
  v10 = v0[14];

  v3 = *(v0[7] + 8);
  v4 = v0[7];

  return v3();
}

uint64_t sub_268E87C7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = a1;
  v8[1] = a2;
  v10 = a3;
  v20 = 0;
  v19 = 0;
  v18 = 0;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2B0, &unk_268F9E0C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v16);
  v15 = v8 - v9;
  v20 = v4;
  v19 = v5;
  v18 = a3;
  v14 = *(v5 + 96);

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2B8, &unk_268F9E0D0);
  v13 = sub_268F99B44();
  v12 = sub_268F99B24();
  sub_268D594BC(v13, v12, v15);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);

  v6 = *(*(sub_268F999A4() - 8) + 56);
  v17 = 1;
  v6(v15, 0);
  sub_268F99BA4();
  return sub_268F99BB4();
}

uint64_t sub_268E87E18(uint64_t a1, uint64_t a2)
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
  return MEMORY[0x2822009F8](sub_268E87E6C, 0);
}

uint64_t sub_268E87E6C()
{
  *(v0 + 16) = v0;
  v1 = sub_268DC916C();
  v7 = *v1;
  MEMORY[0x277D82BE0](*v1);
  sub_268F9B284();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v7);
  v2 = swift_task_alloc();
  v8[8] = v2;
  *v2 = v8[2];
  v2[1] = sub_268D8B9D8;
  v3 = v8[7];
  v4 = v8[6];
  v5 = v8[5];

  return sub_268E87FC4(v5, v4);
}

uint64_t sub_268E87FC4(uint64_t a1, uint64_t a2)
{
  v3[13] = v2;
  v3[12] = a2;
  v3[11] = a1;
  v3[7] = v3;
  v3[8] = 0;
  v3[9] = 0;
  v3[10] = 0;
  v4 = *(*(sub_268F99834() - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v5 = sub_268F99BC4();
  v3[15] = v5;
  v9 = *(v5 - 8);
  v3[16] = v9;
  v6 = *(v9 + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[8] = a2;
  v3[9] = v2;
  v7 = v3[7];

  return MEMORY[0x2822009F8](sub_268E88114, 0);
}

uint64_t sub_268E88114()
{
  v5 = v0[13];
  v6 = v0[12];
  v0[7] = v0;
  v1 = sub_268DC916C();
  v4 = *v1;
  MEMORY[0x277D82BE0](*v1);
  sub_268F9B284();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v4);
  v0[18] = *(v5 + 104);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2B8, &unk_268F9E0D0);
  v10 = sub_268F99B34();
  v0[19] = v10;
  v8 = sub_268F99B44();
  v0[20] = v8;
  v9 = sub_268F99B24();
  v0[21] = v9;
  v2 = swift_task_alloc();
  *(v7 + 176) = v2;
  *v2 = *(v7 + 56);
  v2[1] = sub_268E882E8;

  return sub_268EFCA6C(v10, v8, v9);
}

uint64_t sub_268E882E8(uint64_t a1)
{
  v12 = *v2;
  v4 = *(*v2 + 176);
  *(v12 + 56) = *v2;
  v13 = (v12 + 56);
  *(v12 + 184) = a1;
  *(v12 + 192) = v1;

  if (v1)
  {
    v7 = *v13;
    v6 = sub_268E87A70;
  }

  else
  {
    v9 = *(v12 + 160);
    v10 = *(v12 + 152);
    v11 = *(v12 + 144);

    v5 = *v13;
    v6 = sub_268E8849C;
  }

  return MEMORY[0x2822009F8](v6, 0);
}

uint64_t sub_268E8849C()
{
  v1 = v0[23];
  v9 = v0[17];
  v10 = v0[14];
  v12 = v0[13];
  v8 = v0[12];
  v0[7] = v0;
  v0[10] = v1;
  sub_268F99804();

  v11 = swift_task_alloc();
  *(v11 + 16) = v12;
  *(v11 + 24) = v8;
  sub_268F99B94();

  sub_268CDE730(v12 + 152, (v0 + 2));
  v14 = v0[5];
  v15 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v14);
  v2 = *(MEMORY[0x277D5BE50] + 4);
  v3 = swift_task_alloc();
  v13[25] = v3;
  *v3 = v13[7];
  v3[1] = sub_268E87808;
  v4 = v13[23];
  v5 = v13[17];
  v6 = v13[11];

  return MEMORY[0x2821BB480](v6, v4, v5, v14, v15);
}

uint64_t sub_268E88628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = a1;
  v8 = a2;
  v10 = a3;
  v19 = 0;
  v18 = 0;
  v17 = 0;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2B0, &unk_268F9E0C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12);
  v16 = &v8 - v9;
  v19 = v4;
  v18 = v5;
  v17 = a3;
  v15 = *(v5 + 96);

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2B8, &unk_268F9E0D0);
  v14 = sub_268F99B44();
  v13 = sub_268F99B24();
  sub_268D594BC(v14, v13, v16);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);

  v6 = sub_268F999A4();
  (*(*(v6 - 8) + 56))(v16, 0, 1);
  return sub_268F99BA4();
}

uint64_t sub_268E887D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v5 = *v3;
  v6 = swift_task_alloc();
  *(v8 + 24) = v6;
  *v6 = *(v8 + 16);
  v6[1] = sub_268D34238;

  return sub_268E85A74(a1, a2, a3);
}

uint64_t sub_268E8889C(uint64_t a1, uint64_t a2)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v4 = *v2;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_268D34238;

  return sub_268E871A4(a1, a2);
}

uint64_t sub_268E8895C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4;
  *(v4 + 16) = v4;
  v5 = *(MEMORY[0x277D5B430] + 4);
  v6 = swift_task_alloc();
  *(v9 + 24) = v6;
  SettingIntentStrategy = type metadata accessor for ConfirmGetSettingIntentStrategy();
  *v6 = *(v9 + 16);
  v6[1] = sub_268D34238;

  return MEMORY[0x2821B9D08](a1, a2, SettingIntentStrategy, a4);
}

uint64_t sub_268E88A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4;
  *(v4 + 16) = v4;
  v5 = *(MEMORY[0x277D5B438] + 4);
  v6 = swift_task_alloc();
  *(v9 + 24) = v6;
  SettingIntentStrategy = type metadata accessor for ConfirmGetSettingIntentStrategy();
  *v6 = *(v9 + 16);
  v6[1] = sub_268D34238;

  return MEMORY[0x2821B9D10](a1, a2, SettingIntentStrategy, a4);
}

uint64_t sub_268E88B04(uint64_t a1, uint64_t a2)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v4 = *v2;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_268D34238;

  return sub_268E87FC4(a1, a2);
}

uint64_t sub_268E88BC4(uint64_t a1, uint64_t a2)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v4 = *v2;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_268D34238;

  return sub_268E87E18(a1, a2);
}

uint64_t sub_268E88C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = v5;
  *(v5 + 16) = v5;
  v6 = *(MEMORY[0x277D5B428] + 4);
  v7 = swift_task_alloc();
  *(v10 + 24) = v7;
  SettingIntentStrategy = type metadata accessor for ConfirmGetSettingIntentStrategy();
  *v7 = *(v10 + 16);
  v7[1] = sub_268D34238;

  return MEMORY[0x2821B9D00](a1, a2, a3, SettingIntentStrategy, a5);
}

id sub_268E88DA0(uint64_t a1, uint64_t *a2)
{
  v23 = 0;
  v25 = a1;
  v24 = a2;
  sub_268CD7620();
  v20 = sub_268E892CC(a1);
  if (v2)
  {
    sub_268D28414(a2);
    sub_268D87800(a1);
    return 0;
  }

  else
  {
    v23 = v20;
    sub_268E42694(&v22);
    if (v22 == 65)
    {
      v15 = 0;
      v16 = 0;
    }

    else
    {
      v15 = BinarySettingIdentifier.rawValue.getter();
      v16 = v3;
    }

    v13 = sub_268F284EC(v15, v16, a2, 0, 0);

    has_malloc_size = _swift_stdlib_has_malloc_size();
    v21 = sub_268F28680(a1, has_malloc_size & 1);
    sub_268F9B284();
    v5 = sub_268DC7F08();
    v12 = *v5;
    MEMORY[0x277D82BE0](*v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v11 = v6;
    MEMORY[0x277D82BE0](v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DDA48, &qword_268FA65A0);
    v9 = sub_268F9AE64();
    v10 = v7;
    v11[3] = MEMORY[0x277D837D0];
    v11[4] = sub_268CDD224();
    *v11 = v9;
    v11[1] = v10;
    sub_268CD0F7C();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v12);
    v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithSettingMetadata:v13 binaryValue:v20 temporalEventTrigger:v21];
    MEMORY[0x277D82BE0](v14);
    v26 = v14;
    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BD8](v13);
    sub_268D28414(a2);
    sub_268D87800(a1);
    MEMORY[0x277D82BD8](v26);
    return v14;
  }
}

id sub_268E890A8(uint64_t a1)
{
  v16 = 0;
  v17 = a1;
  sub_268F9B284();
  v1 = sub_268DC7F08();
  v10 = *v1;
  MEMORY[0x277D82BE0](*v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v10);
  sub_268CD7620();
  v12 = sub_268E897BC();
  if (v2)
  {
    sub_268D87800(a1);
    return 0;
  }

  else
  {
    v16 = v12;
    v15 = 10;
    v3 = BinarySettingIdentifier.rawValue.getter();
    memset(v14, 0, sizeof(v14));
    v7 = sub_268F284EC(v3, v4, v14, 0, 0);
    sub_268D28414(v14);

    has_malloc_size = _swift_stdlib_has_malloc_size();
    v13 = sub_268F28680(a1, has_malloc_size & 1);
    v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithSettingMetadata:v7 binaryValue:v12 temporalEventTrigger:v13];
    MEMORY[0x277D82BE0](v8);
    v18 = v8;
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](v7);
    sub_268D87800(a1);
    MEMORY[0x277D82BD8](v18);
    return v8;
  }
}

uint64_t sub_268E892CC(uint64_t a1)
{
  v40 = a1;
  v42 = v1;
  v41 = "Couldn't form INBinarySettingValue using SettingsNLIntent: %@";
  v59 = 0;
  v58 = 0;
  v43 = type metadata accessor for SettingsNLIntent();
  v44 = (*(*(v43 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v43);
  v45 = &v14 - v44;
  v59 = v40;
  v58 = v2;
  v46 = sub_268E4277C();
  if (v46 == 6)
  {
    goto LABEL_27;
  }

  v39 = v46;
  v38 = v46;
  if (v46 == 2)
  {
    v35 = sub_268E48F04();
    if (v35 != 2)
    {
      v34 = v35;
      if (v35)
      {
        v36 = 2;
      }

      else
      {
        v36 = 1;
      }

      v37 = 0;
      return v36;
    }

    sub_268E42694(&v57);
    v56 = v57;
    v33 = &v55;
    v55 = 1;
    v32 = &v54;
    sub_268D288B4(&v56, &v53);
    sub_268D288B4(v33, v32);
    if (v53 == 65)
    {
      if (v54 == 65)
      {
        v31 = 1;
LABEL_18:
        if (v31)
        {
          v36 = 3;
          v37 = 0;
        }

        else
        {
          v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DDA50, &qword_268FA65A8);
          v3 = sub_268F9B734();
          *v4 = 2;
          v4[1] = 3;
          sub_268CD0F7C();
          v27 = &v52;
          v52 = v3;
          sub_268E42694(&v51);
          v26 = &v50;
          v50 = v51;
          v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DDA58, &qword_268FA65B0);
          v25 = sub_268E898FC();
          sub_268E89984();
          v28 = sub_268F9AFC4();
          sub_268CD7930(v27);
          if ((v28 & 1) == 0)
          {
            goto LABEL_27;
          }

          v36 = 1;
          v37 = 0;
        }

        return v36;
      }
    }

    else
    {
      sub_268D288B4(&v53, &v49);
      if (v54 != 65)
      {
        v30 = &v48;
        v48 = v49;
        v29 = &v47;
        v47 = v54;
        sub_268D288C8();
        v31 = sub_268F9AE04();
        goto LABEL_18;
      }
    }

    v31 = 0;
    goto LABEL_18;
  }

  if (v38 == 3)
  {
    v36 = 3;
    v37 = 0;
  }

  else
  {
    if (v38 != 4)
    {
LABEL_27:
      v20 = sub_268F9B294();
      v22 = *sub_268DC7F08();
      MEMORY[0x277D82BE0](v22);
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      v19 = sub_268F9B734();
      v17 = v5;
      sub_268DA7C90(v40, v45);
      sub_268DA967C();
      v15 = sub_268F9AE74();
      v16 = v6;
      v17[3] = MEMORY[0x277D837D0];
      v7 = sub_268CDD224();
      v8 = v15;
      v9 = v16;
      v10 = v17;
      v11 = v7;
      v12 = v19;
      v17[4] = v11;
      *v10 = v8;
      v10[1] = v9;
      sub_268CD0F7C();
      v21 = v12;
      sub_268F9AC14();

      MEMORY[0x277D82BD8](v22);
      v36 = 0;
      v37 = 1;
      return v36;
    }

    v36 = 0;
    v37 = 0;
  }

  return v36;
}

uint64_t sub_268E897BC()
{
  v2 = sub_268E430FC();
  switch(v2)
  {
    case 5:
      return 0;
    case 0:
      return 2;
    case 1:
      return 1;
    case 3:
      return 2;
  }

  return v2 == 4;
}

unint64_t sub_268E898FC()
{
  v2 = qword_2802DDA60;
  if (!qword_2802DDA60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DDA58, &qword_268FA65B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDA60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E89984()
{
  v2 = qword_2802DDA68;
  if (!qword_2802DDA68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DDA50, &qword_268FA65A8);
    sub_268D288C8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDA68);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_268E89A1C()
{
  if (qword_280FE5938 != -1)
  {
    swift_once();
  }

  return &qword_280FE8260;
}

uint64_t sub_268E89A7C()
{
  type metadata accessor for GetWifiHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_280FE8260 = result;
  return result;
}

uint64_t sub_268E89AE4()
{
  v1 = *sub_268E89A1C();

  return v1;
}

double sub_268E89B14(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v5 = sub_268DBB874();
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
  sub_268DB944C(v9, v13, v14, v15, v16 & 1, sub_268E8A030, v17, MEMORY[0x277D84F78] + 8, v3);

  MEMORY[0x277D82BD8](a1);

  *&result = MEMORY[0x277D82BD8](v15).n128_u64[0];
  return result;
}

double sub_268E89D2C(uint64_t a1, void *a2, void (*a3)(id))
{
  v15 = *(a1 + 16);

  v19 = sub_268D39148();

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

uint64_t sub_268E8A088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  return sub_268E8A284(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_268E8A120()
{
  v2 = *(v0 + qword_2802DDA70);

  return v2;
}

uint64_t sub_268E8A154@<X0>(uint64_t a1@<X8>)
{
  v4 = qword_2802DDA78;
  v2 = sub_268F9AB24();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_268E8A1C0()
{
  v2 = *(v0 + qword_2802DDA80);

  return v2;
}

uint64_t sub_268E8A1F4()
{
  v2 = *(v0 + qword_2802DDA88);

  return v2;
}

uint64_t sub_268E8A228()
{
  v2 = *(v0 + qword_2802DDA90);

  return v2;
}

uint64_t sub_268E8A284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  v64 = a1;
  v58 = a2;
  v52 = a3;
  v53 = a4;
  v54 = a5;
  v55 = a6;
  v59 = a7;
  v56 = a8;
  v57 = a9;
  v83 = 0;
  v81 = 0;
  v82 = 0;
  v79 = 0;
  v80 = 0;
  v78 = 0;
  v77 = 0;
  v76 = 0;
  v75 = 0;
  v74 = 0;
  v71 = 0;
  v65 = *v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC060, &unk_268F9D980);
  v50 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10);
  v51 = &v28 - v50;
  v60 = sub_268F9AB24();
  v61 = *(v60 - 8);
  v62 = v60 - 8;
  v63 = (*(v61 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x28223BE20](v59);
  v66 = &v28 - v63;
  v85 = *(v65 + qword_2802F15C0);
  v84 = *(v65 + qword_2802F15C0 + 8);
  v81 = v64;
  v82 = v12;
  v79 = v13;
  v80 = v14;
  v78 = v15;
  v77 = v16;
  v76 = v17;
  v75 = v18;
  v74 = v19;
  v83 = v9;
  v67 = v9;
  if (MEMORY[0x26D62DA00](v11))
  {
    v47 = sub_268F99874();
    v48 = sub_268F9B594();

    v49 = v48;
  }

  else
  {

    v49 = v59;
  }

  v20 = v60;
  v21 = v56;
  v22 = v61;
  v23 = v66;
  *(v67 + qword_2802DDA70) = v49;
  v29 = v83;
  v35 = *(v22 + 16);
  v34 = v22 + 16;
  v35(v23, v21, v20);
  (*(v61 + 32))(v29 + qword_2802DDA78, v66, v60);
  v31 = v83;
  v41 = 0;
  sub_268F9AA44();
  v30 = v73;
  sub_268CDE730(v55, v73);
  *(v31 + qword_2802DDA80) = sub_268F9AA14();
  sub_268F9A8C4();
  v32 = v72;
  sub_268CDE730(v55, v72);
  v45 = sub_268F9A894();
  v71 = v45;
  v33 = v83;
  type metadata accessor for SetLabeledSettingIntentCATs();
  v35(v66, v56, v60);
  MEMORY[0x277D82BE0](v45);
  *(v33 + qword_2802DDA88) = sub_268F9A904();
  v36 = v83;
  type metadata accessor for SettingIntentCATs();
  v35(v66, v56, v60);
  MEMORY[0x277D82BE0](v45);
  v24 = sub_268F9A904();
  v25 = v57;
  *(v36 + qword_2802DDA90) = v24;
  v37 = v83;
  v38 = v70;
  sub_268CDE730(v25, v70);
  sub_268CDF978(v38, v37 + qword_2802DDA98);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC068, &qword_268FA5B90);
  v40 = sub_268F9B734();
  v39 = type metadata accessor for INIntentSlotValueType();
  sub_268CDFA4C();
  v42 = sub_268F9ADA4();
  v43 = v69;
  sub_268CDE730(v54, v69);
  v44 = v68;
  sub_268CDE730(v55, v68);
  v26 = sub_268F99BD4();
  (*(*(v26 - 8) + 56))(v51, 1);
  v46 = sub_268F99AA4();

  v83 = v46;
  MEMORY[0x277D82BD8](v45);
  __swift_destroy_boxed_opaque_existential_0(v57);
  (*(v61 + 8))(v56, v60);

  __swift_destroy_boxed_opaque_existential_0(v55);
  __swift_destroy_boxed_opaque_existential_0(v54);

  return v46;
}

uint64_t sub_268E8A910@<X0>(uint64_t a1@<X8>)
{
  v7 = *(*v1 + qword_2802F15C0);
  v6 = *(*v1 + qword_2802F15C0 + 8);
  v4 = sub_268E8AA0C();
  v2 = sub_268F999F4();
  (*(*(v2 - 8) + 16))(a1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_268E8AA0C()
{
  if (qword_2802DB750 != -1)
  {
    swift_once();
  }

  v0 = sub_268F999F4();
  return __swift_project_value_buffer(v0, qword_2802F15A8);
}

uint64_t sub_268E8AA78@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v45 = a4;
  v47 = a1;
  v48 = a2;
  v55 = a3;
  v69 = 0;
  v68 = 0;
  v67 = 0;
  v66 = 0;
  v53 = *v4;
  v49 = sub_268F9A9C4();
  v50 = *(v49 - 8);
  v51 = v49 - 8;
  v52 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v55);
  v54 = &v13 - v52;
  v69 = v5;
  v68 = v6;
  v67 = v7;
  v66 = v4;
  v65[3] = *(v53 + qword_2802F15C0);
  v65[2] = *(v53 + qword_2802F15C0 + 8);
  MEMORY[0x277D82BE0](v7);
  if (v55)
  {
    v44 = v55;
    v42 = v55;
    v43 = [v55 errorDetail];
    if (v43)
    {
      v41 = v43;
      v36 = v43;
      v37 = sub_268F9AE24();
      v38 = v8;
      MEMORY[0x277D82BD8](v36);
      v39 = v37;
      v40 = v38;
    }

    else
    {
      v39 = 0;
      v40 = 0;
    }

    v33 = v40;
    v32 = v39;
    MEMORY[0x277D82BD8](v42);
    v34 = v32;
    v35 = v33;
  }

  else
  {
    v34 = 0;
    v35 = 0;
  }

  v29 = v35;
  v28 = v34;

  v30 = sub_268E948B8();
  v31 = v9;

  v65[0] = v28;
  v65[1] = v29;
  v62 = v30;
  v63 = v31;
  sub_268D28874(v65, &v64);
  if (v63)
  {
    sub_268D28874(&v62, v57);
    if (*(&v64 + 1))
    {
      v24 = &v56;
      v56 = v64;
      v25 = v57;
      v26 = MEMORY[0x26D62DB50](v57[0], v57[1], v64, *(&v64 + 1));
      sub_268CD9D30(v24);
      sub_268CD9D30(v25);
      sub_268CD9D30(&v62);
      v27 = v26;
      goto LABEL_12;
    }

    sub_268CD9D30(v57);
    goto LABEL_14;
  }

  if (*(&v64 + 1))
  {
LABEL_14:
    sub_268D28550(&v62);
    v27 = 0;
    goto LABEL_12;
  }

  sub_268CD9D30(&v62);
  v27 = 1;
LABEL_12:
  v23 = v27;

  if (v23)
  {

    v21 = *(v46 + qword_2802DDA88);

    v22 = [v48 settingMetadata];
    if (v22)
    {
      v20 = v22;
      v14 = v22;
      v15 = [v22 settingId];
      v16 = sub_268F9AE24();
      v17 = v10;
      MEMORY[0x277D82BD8](v14);
      MEMORY[0x277D82BD8](v15);
      v18 = v16;
      v19 = v17;
    }

    else
    {
      v18 = 0;
      v19 = 0;
    }

    v58 = v18;
    v59 = v19;
    if (v19)
    {
      v60 = v58;
      v61 = v59;
    }

    else
    {
      v60 = sub_268F9AEF4();
      v61 = v11;
      if (v59)
      {
        sub_268CD9D30(&v58);
      }
    }

    sub_268F9A9A4();
    sub_268DB57C0(v54);
    (*(v50 + 8))(v54, v49);
  }

  else
  {

    v13 = *(v46 + qword_2802DDA90);

    sub_268F537E4();
  }
}

uint64_t sub_268E8B0DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[24] = v3;
  v4[23] = a3;
  v4[22] = a2;
  v4[15] = v4;
  v4[16] = 0;
  v4[17] = 0;
  v4[18] = 0;
  v4[19] = 0;
  v4[20] = 0;
  v4[13] = 0;
  v4[14] = 0;
  v9 = *(*(sub_268F9A9C4() - 8) + 64);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
  v4[27] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[28] = swift_task_alloc();
  v4[16] = a1;
  v4[17] = a2;
  v4[18] = a3;
  v4[19] = v3;
  v7 = v4[15];

  return MEMORY[0x2822009F8](sub_268E8B260, 0);
}

uint64_t sub_268E8B260()
{
  v1 = *(v0 + 184);
  v60 = v1;
  *(v0 + 120) = v0;
  MEMORY[0x277D82BE0](v1);
  if (v60)
  {
    v55 = v59[23];
    v56 = [v55 code];
    MEMORY[0x277D82BD8](v55);
    v57 = v56;
    v58 = 0;
  }

  else
  {
    v57 = 0;
    v58 = 1;
  }

  if (v58)
  {
    v15 = sub_268DC8A0C();
    v22 = *v15;
    MEMORY[0x277D82BE0](*v15);
    sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v22);
    sub_268D284D4();
    swift_allocError();
    *v16 = 4;
    swift_willThrow();
  }

  else
  {
    v59[20] = v57;
    if (v57 == 8)
    {
      v53 = v59[22];
      v52 = *(v59[24] + qword_2802DDA90);

      type metadata accessor for SettingsBinarySetting();
      v54 = [v53 settingMetadata];
      if (v54)
      {
        v47 = [v54 settingId];
        v48 = sub_268F9AE24();
        v49 = v2;
        MEMORY[0x277D82BD8](v54);
        MEMORY[0x277D82BD8](v47);
        v50 = v48;
        v51 = v49;
      }

      else
      {
        v50 = 0;
        v51 = 0;
      }

      v59[7] = v50;
      v59[8] = v51;
      if (v59[8])
      {
        v63 = v59[7];
        v64 = v59[8];
      }

      else
      {
        sub_268F9AEF4();
        if (v59[8])
        {
          sub_268CD9D30((v59 + 7));
        }
      }

      v3 = v59[26];
      v45 = v59[22];
      sub_268F9A9A4();
      v46 = [v45 settingMetadata];
      if (v46)
      {
        v40 = [v46 settingId];
        v41 = sub_268F9AE24();
        v42 = v4;
        MEMORY[0x277D82BD8](v46);
        MEMORY[0x277D82BD8](v40);
        v43 = v41;
        v44 = v42;
      }

      else
      {
        v43 = 0;
        v44 = 0;
      }

      v59[9] = v43;
      v59[10] = v44;
      if (v59[10])
      {
        v65 = v59[9];
        v66 = v59[10];
      }

      else
      {
        sub_268F9AEF4();
        if (v59[10])
        {
          sub_268CD9D30((v59 + 9));
        }
      }

      v37 = v59[28];
      v36 = v59[27];
      v34 = v59[26];
      v33 = v59[25];
      sub_268F9A9A4();
      v5 = sub_268CDD6D4();
      v35 = sub_268F77F04(v34, v5 & 1, v33);
      sub_268F56768(v35, 0, 0);

      v39 = sub_268F9B824();
      v38 = v6;
      sub_268D28378(v37);
      v59[11] = v39;
      v59[12] = v38;
      if (v59[12])
      {
        v61 = v59[11];
        v62 = v59[12];
      }

      else
      {
        v61 = sub_268F9AEF4();
        v62 = v7;
        if (v59[12])
        {
          sub_268CD9D30((v59 + 11));
        }
      }

      v28 = v59[24];
      v59[29] = v62;
      v59[13] = v61;
      v59[14] = v62;
      sub_268CDE730(v28 + qword_2802DDA98, (v59 + 2));
      v30 = v59[5];
      v31 = v59[6];
      __swift_project_boxed_opaque_existential_1(v59 + 2, v30);

      v29 = swift_task_alloc();
      v59[30] = v29;
      v29[2] = v61;
      v29[3] = v62;
      v29[4] = v28;
      v32 = (*(v31 + 96) + **(v31 + 96));
      v8 = *(*(v31 + 96) + 4);
      v9 = swift_task_alloc();
      v59[31] = v9;
      *v9 = v59[15];
      v9[1] = sub_268E8BE2C;

      return v32(sub_268E8CD6C, v29, v30, v31);
    }

    v23 = v59[23];
    v11 = sub_268DC7B48();
    v27 = *v11;
    MEMORY[0x277D82BE0](*v11);
    sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v26 = v12;
    MEMORY[0x277D82BE0](v23);
    v59[21] = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DDAA0, qword_268FA6618);
    v24 = sub_268F9AE64();
    v25 = v13;
    v26[3] = MEMORY[0x277D837D0];
    v26[4] = sub_268CDD224();
    *v26 = v24;
    v26[1] = v25;
    sub_268CD0F7C();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v27);
    sub_268D284D4();
    swift_allocError();
    *v14 = 7;
    swift_willThrow();
  }

  v17 = v59[28];
  v20 = v59[26];
  v21 = v59[25];

  v18 = *(v59[15] + 8);
  v19 = v59[15];

  return v18();
}

uint64_t sub_268E8BE2C(uint64_t a1)
{
  v12 = *v2;
  v4 = *(*v2 + 248);
  v12[15] = *v2;
  v13 = v12 + 15;
  v12[32] = a1;
  v12[33] = v1;

  if (v1)
  {
    v8 = *v13;
    v7 = sub_268E8C0C0;
  }

  else
  {
    v5 = v12[30];
    v10 = v12[29];
    v11 = v12[24];

    v6 = *v13;
    v7 = sub_268E8BFD0;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268E8BFD0()
{
  v5 = v0[29];
  v6 = v0[28];
  v7 = v0[26];
  v8 = v0[25];
  v0[15] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v1 = *(*(v9 + 120) + 8);
  v2 = *(v9 + 120);
  v3 = *(v9 + 256);

  return v1(v3);
}

uint64_t sub_268E8C0C0()
{
  v1 = v0[30];
  v8 = v0[29];
  v7 = v0[24];
  v0[15] = v0;

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v2 = v0[33];
  v3 = v0[28];
  v9 = v0[26];
  v10 = v0[25];

  v4 = *(v0[15] + 8);
  v5 = v0[15];

  return v4();
}

void *sub_268E8C1E0(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v17 = a1;
  v14 = a2;
  v15 = a3;
  v24 = 0;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  v13 = *a4;
  v12 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v15);
  v18 = &v11 - v12;
  v24 = v5;
  v22 = v6;
  v23 = v7;
  v21 = a4;
  v16 = 0;
  v20 = *(v13 + qword_2802F15C0);
  v19 = *(v13 + qword_2802F15C0 + 8);

  sub_268F9A9A4();
  v8 = sub_268F9A9C4();
  (*(*(v8 - 8) + 56))(v18, 0, 1);
  sub_268D29FC8(v18, v17);
  sub_268E8C394(v18);
  v9 = type metadata accessor for SettingIntentResourceNotDownloadedParameters();
  return sub_268D29FC8(v18, &v17[*(v9 + 20)]);
}

uint64_t sub_268E8C394@<X0>(uint64_t a1@<X8>)
{
  v14 = *(*v1 + qword_2802F15C0);
  v13 = *(*v1 + qword_2802F15C0 + 8);
  v9 = type metadata accessor for LaunchEnvPicker();
  sub_268CDA260();
  v10 = sub_268D90FF0();
  v11 = sub_268E0C3D8();
  sub_268F3A0D0(v11, v9, v10);
  v12 = v2;
  MEMORY[0x277D82BD8](v11);

  if (v12)
  {
    sub_268F9A9A4();
    v3 = sub_268F9A9C4();
    return (*(*(v3 - 8) + 56))(a1, 0, 1);
  }

  else
  {
    sub_268F9B284();
    v5 = sub_268DC9D70();
    v7 = *v5;
    MEMORY[0x277D82BE0](*v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v7);
    v6 = sub_268F9A9C4();
    return (*(*(v6 - 8) + 56))(a1, 1);
  }
}

void sub_268E8C5DC()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_268E8C650(v3);
}

void sub_268E8C650(uint64_t a1@<X8>)
{
  v3 = *(*v1 + qword_2802F15C0);
  v2 = *(*v1 + qword_2802F15C0 + 8);
  sub_268DB83F0("init(ducFamily:locale:extensionValueTypeNamesByValueType:aceServiceInvoker:)", 76, "SiriSettingsIntents/SetLabeledSettingTemplatingService.swift", 60, 2, "SiriSettingsIntents.SetLabeledSettingTemplatingService", 54, 0x11uLL, a1, 7uLL);
  __break(1u);
}

void sub_268E8C73C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_268E8C7C0(v3);
}

void sub_268E8C7C0(uint64_t a1@<X8>)
{
  v3 = *(*v1 + qword_2802F15C0);
  v2 = *(*v1 + qword_2802F15C0 + 8);
  sub_268DB83F0("init(ducFamily:locale:extensionValueTypeNamesByValueType:aceServiceInvoker:deviceState:localContext:)", 101, "SiriSettingsIntents/SetLabeledSettingTemplatingService.swift", 60, 2, "SiriSettingsIntents.SetLabeledSettingTemplatingService", 54, 0x11uLL, a1, 7uLL);
  __break(1u);
}

uint64_t sub_268E8C8BC()
{
  v8 = *(*v0 + qword_2802F15C0);
  v7 = *(*v0 + qword_2802F15C0 + 8);
  sub_268CD7930(&v0[qword_2802DDA70]);
  v6 = qword_2802DDA78;
  v1 = sub_268F9AB24();
  (*(*(v1 - 8) + 8))(&v0[v6]);
  v2 = *&v0[qword_2802DDA80];

  v3 = *&v0[qword_2802DDA88];

  v4 = *&v0[qword_2802DDA90];

  return __swift_destroy_boxed_opaque_existential_0(&v0[qword_2802DDA98]);
}

uint64_t sub_268E8C9D4()
{
  v9 = *(*v0 + qword_2802F15C0);
  v8 = *(*v0 + qword_2802F15C0 + 8);
  v7 = sub_268F99AB4();
  sub_268CD7930((v7 + qword_2802DDA70));
  v6 = qword_2802DDA78;
  v1 = sub_268F9AB24();
  (*(*(v1 - 8) + 8))(v7 + v6);
  v2 = *(v7 + qword_2802DDA80);

  v3 = *(v7 + qword_2802DDA88);

  v4 = *(v7 + qword_2802DDA90);

  __swift_destroy_boxed_opaque_existential_0((v7 + qword_2802DDA98));
  return v7;
}

uint64_t sub_268E8CB04()
{
  v6 = *(*v0 + qword_2802F15C0);
  v5 = *(*v0 + qword_2802F15C0 + 8);
  v1 = *sub_268E8C9D4();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  return swift_deallocClassInstance();
}

uint64_t sub_268E8CC00()
{
  v1 = sub_268F999F4();
  __swift_allocate_value_buffer(v1, qword_2802F15A8);
  __swift_project_value_buffer(v1, qword_2802F15A8);
  sub_268F9AEF4();
  sub_268F9B734();
  sub_268F9B734();
  return sub_268F999E4();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    return *a2;
  }

  return v3;
}

uint64_t sub_268E8CD08@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_268E8AA0C();
  v1 = sub_268F999F4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

unint64_t sub_268E8CD7C()
{
  v2 = qword_2802DDAA8[0];
  if (!qword_2802DDAA8[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_2802DDAA8);
    return WitnessTable;
  }

  return v2;
}

uint64_t __swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v6 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v2 = *(*(a1 - 8) + 64);
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return v6;
}

uint64_t sub_268E8CE94()
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

unint64_t sub_268E8D034()
{
  v2 = qword_2802DDB30;
  if (!qword_2802DDB30)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDB30);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268E8D0B0()
{
  type metadata accessor for SetDisplayBrightnessHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_2802F15D0 = result;
  return result;
}

uint64_t *sub_268E8D118()
{
  if (qword_2802DB758 != -1)
  {
    swift_once();
  }

  return &qword_2802F15D0;
}

uint64_t sub_268E8D178()
{
  v1 = *sub_268E8D118();

  return v1;
}

uint64_t sub_268E8D1A8(void *a1, void (*a2)(void), uint64_t a3)
{
  sub_268F9B284();
  v3 = sub_268DC7AE8();
  v35 = *v3;
  MEMORY[0x277D82BE0](*v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  v37 = [a1 settingMetadata];
  if (v37 && (v31 = [v37 targetDevice], *&v4 = MEMORY[0x277D82BD8](v37).n128_u64[0], v31))
  {
    [v31 deviceCategory];
    MEMORY[0x277D82BD8](v31);
    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  if (v30)
  {
    v29 = 0;
  }

  else
  {
    type metadata accessor for INDeviceCategory();
    sub_268CD7818();
    v29 = sub_268F9AE04();
  }

  if (v29)
  {
    sub_268F9B284();
    v8 = sub_268DC7AE8();
    v10 = *v8;
    MEMORY[0x277D82BE0](*v8);
    sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v10);

    v11 = sub_268F70C6C();
    a2();
    MEMORY[0x277D82BD8](v11);
  }

  else
  {
    v27 = *(v34 + 16);

    v28 = sub_268D36220();

    if (v28)
    {
      sub_268F9B284();
      v5 = sub_268DC7AE8();
      v25 = *v5;
      MEMORY[0x277D82BE0](*v5);
      sub_268F9B734();
      sub_268F9AC14();

      MEMORY[0x277D82BD8](v25);

      v26 = sub_268F70C6C();
      a2();
      MEMORY[0x277D82BD8](v26);
    }

    else
    {
      v20 = *(v34 + 16);

      v21 = sub_268D39FC4();

      v22 = *(v34 + 16);

      sub_268D39FDC();
      v23 = v6;

      v24 = [a1 numericValue];
      if (v24)
      {
        v17 = [v24 unit];
        MEMORY[0x277D82BD8](v24);
        v18 = v17;
        v19 = 0;
      }

      else
      {
        v18 = 0;
        v19 = 1;
      }

      if (v19)
      {
        v16 = 0;
      }

      else
      {
        v16 = v18;
      }

      v7 = sub_268DBF394();
      v12 = *v7;
      v13 = v7[1];
      v14 = *(v7 + 16);
      v15 = *(v34 + 24);

      sub_268F70D1C(a1, v16, v12, v13, v14, v15 & 1, a2, a3, v23, 0.0, 1.0, v21, sub_268E8D848, v34);
    }
  }
}

uint64_t sub_268E8D7E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);

  sub_268D3A018();
}

uint64_t sub_268E8D890()
{
  type metadata accessor for SetBluetoothHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_2802F15D8 = result;
  return result;
}

uint64_t *sub_268E8D8F8()
{
  if (qword_2802DB760 != -1)
  {
    swift_once();
  }

  return &qword_2802F15D8;
}

uint64_t sub_268E8D958()
{
  v1 = *sub_268E8D8F8();

  return v1;
}

void sub_268E8D988(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v53 = a1;
  v42 = a2;
  v41 = a3;
  v49 = "SetBluetoothHandler handling intent";
  v34 = "SetBluetoothHandler cannot modify state of Bluetooth for HomePod or Apple TV";
  v35 = sub_268E8E2C0;
  v82 = 0;
  v80 = 0;
  v81 = 0;
  v79 = 0;
  v54 = 0;
  v36 = sub_268F9AD14();
  v37 = *(v36 - 8);
  v38 = v36 - 8;
  v39 = (*(v37 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v40 = v14 - v39;
  v43 = sub_268F9AD34();
  v44 = *(v43 - 8);
  v45 = v43 - 8;
  v46 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v53);
  v47 = v14 - v46;
  v82 = v4;
  v80 = v5;
  v81 = v6;
  v79 = v3;
  v50 = sub_268F9B284();
  v52 = *sub_268DC7AE8();
  MEMORY[0x277D82BE0](v52);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v51 = sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v52);
  v78 = v53;
  v55 = sub_268CD7620();
  v56 = SettingIntent.deviceCategory.getter(v55, &protocol witness table for INSetBinarySettingIntent);
  v57 = v7;
  v74 = v56;
  v75 = v7 & 1;
  v76 = 6;
  v77 = 0;
  if (v7)
  {
    v32 = 0;
  }

  else
  {
    v58[1] = v56;
    v59 = v57 & 1;
    v30 = v58;
    v58[0] = v76;
    v31 = type metadata accessor for INDeviceCategory();
    sub_268CD7818();
    v32 = sub_268F9AE04();
  }

  v29 = v32;
  MEMORY[0x277D82BE0](v53);
  if (v29)
  {
    v23 = 0;
  }

  else
  {
    v66 = v53;
    v27 = SettingIntent.deviceCategory.getter(v55, &protocol witness table for INSetBinarySettingIntent);
    v28 = v8;
    v62 = v27;
    v63 = v8 & 1;
    v64 = 5;
    v65 = 0;
    if (v8)
    {
      v26 = 0;
    }

    else
    {
      v60[1] = v27;
      v61 = v28 & 1;
      v24 = v60;
      v60[0] = v64;
      v25 = type metadata accessor for INDeviceCategory();
      sub_268CD7818();
      v26 = sub_268F9AE04();
    }

    v23 = v26 ^ 1;
  }

  v22 = v23;
  MEMORY[0x277D82BD8](v53);
  if (v22)
  {
    v19 = 0;
    sub_268CDD000();
    v21 = sub_268F9B2C4();

    MEMORY[0x277D82BE0](v53);

    v9 = swift_allocObject();
    v10 = v53;
    v11 = v42;
    v12 = v41;
    v13 = v35;
    v9[2] = v33;
    v9[3] = v10;
    v9[4] = v11;
    v9[5] = v12;
    v72 = v13;
    v73 = v9;
    aBlock = MEMORY[0x277D85DD0];
    v68 = 1107296256;
    v69 = 0;
    v70 = sub_268D5BAEC;
    v71 = &block_descriptor_2;
    v20 = _Block_copy(&aBlock);

    sub_268D5D06C();
    sub_268D5D084();
    MEMORY[0x26D62DF20](v19, v47, v40, v20);
    (*(v37 + 8))(v40, v36);
    (*(v44 + 8))(v47, v43);
    _Block_release(v20);
    MEMORY[0x277D82BD8](v21);
  }

  else
  {
    v14[1] = sub_268F9B284();
    v16 = *sub_268DC7AE8();
    MEMORY[0x277D82BE0](v16);
    v17 = 0;
    v15 = sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v16);

    v18 = sub_268DA9A7C(7, v17);
    v42();
    MEMORY[0x277D82BD8](v18);
  }
}

uint64_t sub_268E8E19C(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v6 = *(a1 + 16);

  v7 = sub_268D37834();

  v4 = sub_268DBCED4();
  v10 = *v4;
  v11 = v4[1];
  v12 = *(v4 + 16);
  v13 = *(a1 + 24);

  sub_268DAAB84(v7 & 1, a2, v10, v11, v12, v13 & 1, a3, a4, sub_268E8E4BC, a1, 0, 1, 0, 0);
  return sub_268CD9A28(sub_268E8E4BC);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_268E8E338(char a1, uint64_t a2)
{
  v4 = *(a2 + 16);

  sub_268D3D470(a1 & 1);
}

uint64_t sub_268E8E3CC(uint64_t result)
{
  v5 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v5 > 0)
    {

      sub_268F9AD14();
      v3 = sub_268F9B044();

      *(v3 + 16) = v5;

      v4 = v3;
    }

    else
    {
      v4 = MEMORY[0x277D84F90];
    }

    v1 = sub_268F9AD14();
    result = v4;
    v2 = v4 + ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80));
  }

  return result;
}

uint64_t *sub_268E8E4E4()
{
  if (qword_280FE3378 != -1)
  {
    swift_once();
  }

  return &qword_280FE8058;
}

uint64_t sub_268E8E544()
{
  type metadata accessor for GetAXReduceTransparencyHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_280FE8058 = result;
  return result;
}

uint64_t sub_268E8E5AC()
{
  v1 = *sub_268E8E4E4();

  return v1;
}

double sub_268E8E5DC(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v5 = sub_268DBB114();
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
  sub_268DB944C(v9, v13, v14, v15, v16 & 1, sub_268E8EA60, v17, MEMORY[0x277D84F78] + 8, v3);
  MEMORY[0x277D82BD8](a1);

  *&result = MEMORY[0x277D82BD8](v15).n128_u64[0];
  return result;
}

double sub_268E8E7F8(void *a1, uint64_t a2, void (*a3)(id))
{
  v15 = [a1 settingMetadata];
  v16 = *(a2 + 16);

  v17 = sub_268D3E754();

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

uint64_t *sub_268E8EAB8()
{
  if (qword_280FE3510 != -1)
  {
    swift_once();
  }

  return &qword_280FE8068;
}

uint64_t sub_268E8EB18()
{
  type metadata accessor for GetAXReduceWhitePointHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_280FE8068 = result;
  return result;
}

uint64_t sub_268E8EB80()
{
  v1 = *sub_268E8EAB8();

  return v1;
}

double sub_268E8EBB0(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v5 = sub_268DBB1E4();
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
  sub_268DB944C(v9, v13, v14, v15, v16 & 1, sub_268E8F034, v17, MEMORY[0x277D84F78] + 8, v3);
  MEMORY[0x277D82BD8](a1);

  *&result = MEMORY[0x277D82BD8](v15).n128_u64[0];
  return result;
}

double sub_268E8EDCC(void *a1, uint64_t a2, void (*a3)(id))
{
  v15 = [a1 settingMetadata];
  v16 = *(a2 + 16);

  v17 = sub_268D3EF0C();

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

uint64_t *sub_268E8F08C()
{
  if (qword_280FE4468 != -1)
  {
    swift_once();
  }

  return &qword_280FE8148;
}

uint64_t sub_268E8F0EC()
{
  type metadata accessor for GetSoundAnalysisHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_280FE8148 = result;
  return result;
}

uint64_t sub_268E8F154()
{
  v1 = *sub_268E8F08C();

  return v1;
}

uint64_t sub_268E8F184(uint64_t a1, void (*a2)(id))
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
  v8 = sub_268E41B70();

  a2(v8);
  MEMORY[0x277D82BD8](v8);
}

uint64_t *sub_268E8F370()
{
  if (qword_280FE4370 != -1)
  {
    swift_once();
  }

  return &qword_280FE4378;
}

uint64_t sub_268E8F3D0()
{
  type metadata accessor for VolumeAdjustmentTracker();
  v1 = *sub_268F88868();

  result = sub_268E8F448(v1);
  qword_280FE4378 = result;
  return result;
}

uint64_t static VolumeAdjustmentTracker.shared.getter()
{
  v1 = *sub_268E8F370();

  return v1;
}

uint64_t sub_268E8F4E8()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);

  return v2;
}

uint64_t sub_268E8F52C()
{
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);

  return v2;
}

uint64_t sub_268E8F570()
{
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);

  return v2;
}

uint64_t sub_268E8F5B4()
{
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);

  return v2;
}

uint64_t sub_268E8F5F8()
{
  v2 = *(v0 + 88);
  MEMORY[0x277D82BE0]();
  return v2;
}

uint64_t sub_268E8F654()
{
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);

  return v2;
}

uint64_t sub_268E8F698(uint64_t a1)
{
  v1[2] = 3;
  v1[3] = sub_268F9AEF4();
  v1[4] = v2;
  v1[5] = sub_268F9AEF4();
  v1[6] = v3;
  v1[7] = sub_268F9AEF4();
  v1[8] = v4;
  v1[9] = sub_268F9AEF4();
  v1[10] = v5;
  v1[12] = 0x4122750000000000;
  v1[13] = sub_268F9AEF4();
  v1[14] = v6;

  if (a1)
  {
    v8 = sub_268F23C10();

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  *(v10 + 88) = v9;

  return v10;
}

void sub_268E8F818(uint64_t a1, void *a2, unsigned int a3)
{
  v17 = sub_268E90C0C();
  v22 = sub_268E9096C();
  v23 = sub_268E90CF8(a1, a2, a3);
  if (v23 == 2)
  {
    v16 = 0;
  }

  else
  {
    if (v17 != 2 && (v23 & 1) == (v17 & 1))
    {
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        return;
      }

      v14 = v22 + 1;
    }

    else
    {
      v13 = v18[11];
      MEMORY[0x277D82BE0](v13);
      if (v13)
      {
        if (v23 == 2)
        {
          v12 = 0;
        }

        else
        {
          v12 = sub_268F9B0A4();
        }

        v9 = v18[3];
        v10 = v18[4];

        v11 = sub_268F9AE14();

        [v13 setObject:v12 forKey:v11];
        MEMORY[0x277D82BD8](v11);
        swift_unknownObjectRelease();
        MEMORY[0x277D82BD8](v13);
      }

      v14 = 1;
    }

    v16 = v14;
  }

  if (v18[2] < v16)
  {
    v8 = 1;
  }

  else
  {
    v8 = v16;
  }

  v7 = v18[11];
  MEMORY[0x277D82BE0](v7);
  if (v7)
  {
    v4 = v18[5];
    v5 = v18[6];

    v6 = sub_268F9AE14();

    [v7 setInteger:v8 forKey:v6];
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
  }
}

BOOL sub_268E8FBCC(char a1)
{
  v6 = sub_268E9096C();
  v7 = *(v5 + 16);

  if (v6 != v7)
  {
    v2 = 0;
    goto LABEL_12;
  }

  v8 = sub_268E90C0C();
  if (a1 == 2)
  {
    if (v8 == 2)
    {
      v3 = 1;
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  if (v8 == 2)
  {
LABEL_9:
    v3 = 0;
    goto LABEL_8;
  }

  v3 = (a1 & 1) == (v8 & 1);
LABEL_8:
  v2 = v3;
LABEL_12:

  return v2;
}

void sub_268E8FCF8(unint64_t a1, char a2)
{
  v25 = sub_268E90ABC();
  if (a2)
  {
    v8 = 0;
  }

  else
  {
    v21 = v23[11];
    MEMORY[0x277D82BE0](v21);
    if (v21)
    {
      v15 = v23[7];
      v16 = v23[8];

      v17 = sub_268F9AE14();

      v18 = [v21 integerForKey_];
      MEMORY[0x277D82BD8](v17);
      MEMORY[0x277D82BD8](v21);
      v19 = v18;
      v20 = 0;
    }

    else
    {
      v19 = 0;
      v20 = 1;
    }

    if (((a1 >> 52) & 0x7FF) == 0x7FF)
    {
      sub_268F9B584();
      __break(1u);
    }

    if (*&a1 <= -9.22337204e18)
    {
      sub_268F9B584();
      __break(1u);
    }

    if (*&a1 >= 9.22337204e18)
    {
      sub_268F9B584();
      __break(1u);
    }

    if ((v20 & 1) == 0 && v19 == *&a1)
    {
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        return;
      }

      v13 = v25 + 1;
    }

    else
    {
      v12 = v23[11];
      MEMORY[0x277D82BE0](v12);
      if (v12)
      {
        v9 = v23[7];
        v10 = v23[8];

        v11 = sub_268F9AE14();

        [v12 setInteger:*&a1 forKey:v11];
        MEMORY[0x277D82BD8](v11);
        MEMORY[0x277D82BD8](v12);
      }

      v13 = 1;
    }

    v8 = v13;
  }

  if (v23[2] < v8)
  {
    v7 = 1;
  }

  else
  {
    v7 = v8;
  }

  v6 = v23[11];
  MEMORY[0x277D82BE0](v6);
  if (v6)
  {
    v3 = v23[9];
    v4 = v23[10];

    v5 = sub_268F9AE14();

    [v6 setInteger:v7 forKey:v5];
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
  }
}

double sub_268E902F4()
{
  sub_268F9B284();
  v1 = sub_268DC7AE8();
  v19 = *v1;
  MEMORY[0x277D82BE0](*v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v19);
  v20 = *(v0 + 88);
  MEMORY[0x277D82BE0](v20);
  if (v20)
  {
    v15 = v18[3];
    v16 = v18[4];

    v17 = sub_268F9AE14();

    [v20 removeObjectForKey_];
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](v20);
  }

  v14 = v18[11];
  MEMORY[0x277D82BE0](v14);
  if (v14)
  {
    v11 = v18[5];
    v12 = v18[6];

    v13 = sub_268F9AE14();

    [v14 removeObjectForKey_];
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](v14);
  }

  v10 = v18[11];
  MEMORY[0x277D82BE0](v10);
  if (v10)
  {
    v7 = v18[7];
    v8 = v18[8];

    v9 = sub_268F9AE14();

    [v10 removeObjectForKey_];
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v10);
  }

  v6 = v18[11];
  MEMORY[0x277D82BE0](v6);
  if (v6)
  {
    v3 = v18[9];
    v4 = v18[10];

    v5 = sub_268F9AE14();

    [v6 removeObjectForKey_];
    MEMORY[0x277D82BD8](v5);
    *&result = MEMORY[0x277D82BD8](v6).n128_u64[0];
  }

  return result;
}

BOOL sub_268E90658(uint64_t a1)
{
  v25 = a1;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v32 = 0;
  v26 = sub_268F99214();
  v27 = *(v26 - 8);
  v28 = v26 - 8;
  v29 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v30 = v8 - v29;
  v37 = v8 - v29;
  v36 = MEMORY[0x28223BE20](v25);
  v35 = v1;
  v31 = *(v1 + 88);
  MEMORY[0x277D82BE0](v31);
  if (v31)
  {
    v23 = v31;
    v19 = v31;
    v16 = *(v24 + 104);
    v17 = *(v24 + 112);

    v18 = sub_268F9AE14();

    [v19 doubleForKey_];
    v20 = v2;
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](v19);
    v21 = v20;
    v22 = 0;
  }

  else
  {
    v21 = 0;
    v22 = 1;
  }

  v33 = v21;
  v34 = v22 & 1;
  if (v22)
  {
    v15 = 0;
  }

  else
  {
    v15 = v33;
  }

  sub_268F99194();
  sub_268F991B4();
  v4 = v3;
  v5 = *(v24 + 96);
  v14 = v5 <= v4;
  v32 = v5 <= v4;
  if (v5 <= v4)
  {
    v13 = *(v24 + 88);
    MEMORY[0x277D82BE0](v13);
    if (v13)
    {
      v12 = v13;
      v11 = v13;
      sub_268F991A4();
      v9 = v6;
      v8[1] = *(v24 + 104);
      v8[2] = *(v24 + 112);

      v10 = sub_268F9AE14();

      [v11 setDouble:v10 forKey:v9];
      MEMORY[0x277D82BD8](v10);
      MEMORY[0x277D82BD8](v11);
    }
  }

  (*(v27 + 8))(v30, v26);
  return v14;
}

id sub_268E9096C()
{
  v10 = *(v0 + 88);
  MEMORY[0x277D82BE0](v10);
  if (v10)
  {
    v3 = *(v9 + 40);
    v4 = *(v9 + 48);

    v5 = sub_268F9AE14();

    v6 = [v10 integerForKey_];
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v10);
    v7 = v6;
    v8 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 1;
  }

  if (v8)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

id sub_268E90ABC()
{
  v10 = *(v0 + 88);
  MEMORY[0x277D82BE0](v10);
  if (v10)
  {
    v3 = *(v9 + 72);
    v4 = *(v9 + 80);

    v5 = sub_268F9AE14();

    v6 = [v10 integerForKey_];
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v10);
    v7 = v6;
    v8 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 1;
  }

  if (v8)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_268E90C0C()
{
  v8 = *(v0 + 88);
  MEMORY[0x277D82BE0](v8);
  if (v8)
  {
    v2 = *(v7 + 24);
    v3 = *(v7 + 32);

    v4 = sub_268F9AE14();

    v5 = [v8 BOOLForKey_];
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v8);
    return v5;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_268E90CF8(uint64_t a1, void *a2, unsigned int a3)
{
  MEMORY[0x277D82BE0](a2);
  if (!a2)
  {
    return a3;
  }

  v5 = [a2 compare_];
  type metadata accessor for ComparisonResult();
  if (v5 == -1)
  {
    MEMORY[0x277D82BD8](a2);
    return 0;
  }

  if (!v5)
  {
    MEMORY[0x277D82BD8](a2);
    return 2;
  }

  if (v5 != 1)
  {
    sub_268F9B774();
    __break(1u);
    return a3;
  }

  MEMORY[0x277D82BD8](a2);
  return 1;
}

uint64_t VolumeAdjustmentTracker.deinit()
{
  sub_268CD9D30(v0 + 24);
  sub_268CD9D30(v0 + 40);
  sub_268CD9D30(v0 + 56);
  sub_268CD9D30(v0 + 72);
  sub_268D35038((v0 + 88));
  sub_268CD9D30(v0 + 104);
  return v2;
}

uint64_t *sub_268E90F44()
{
  if (qword_280FE5878 != -1)
  {
    swift_once();
  }

  return &qword_280FE8258;
}

uint64_t sub_268E90FA4()
{
  type metadata accessor for GetZoomHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_280FE8258 = result;
  return result;
}

uint64_t sub_268E9100C()
{
  v1 = *sub_268E90F44();

  return v1;
}

uint64_t sub_268E9103C(uint64_t a1, void (*a2)(id))
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
  v6 = sub_268E41B70();

  a2(v6);
  MEMORY[0x277D82BD8](v6);
}

uint64_t sub_268E9119C()
{
  swift_beginAccess();
  v2 = *(v0 + 16);
  swift_endAccess();
  return v2 & 1;
}

uint64_t sub_268E911EC(char a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
  return swift_endAccess();
}

uint64_t sub_268E91238()
{
  swift_beginAccess();
  v2 = *(v0 + 17);
  swift_endAccess();
  return v2 & 1;
}

uint64_t sub_268E91288(char a1)
{
  swift_beginAccess();
  *(v1 + 17) = a1;
  return swift_endAccess();
}

uint64_t sub_268E91330()
{
  swift_beginAccess();
  v2 = *(v0 + 18);
  swift_endAccess();
  return v2 & 1;
}

uint64_t sub_268E91380(char a1)
{
  swift_beginAccess();
  *(v1 + 18) = a1;
  return swift_endAccess();
}

uint64_t sub_268E91428()
{
  swift_beginAccess();
  v2 = *(v0 + 19);
  swift_endAccess();
  return v2 & 1;
}

uint64_t sub_268E91478(char a1)
{
  swift_beginAccess();
  *(v1 + 19) = a1;
  return swift_endAccess();
}

uint64_t sub_268E91520()
{
  swift_beginAccess();
  v2 = *(v0 + 20);
  swift_endAccess();
  return v2 & 1;
}

uint64_t sub_268E91570(char a1)
{
  swift_beginAccess();
  *(v1 + 20) = a1;
  return swift_endAccess();
}

uint64_t sub_268E916B0()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 17) = 0;
  *(v0 + 18) = 0;
  *(v0 + 19) = 0;
  *(v0 + 20) = 0;
  *(v0 + 24) = 0;
  return result;
}

uint64_t sub_268E916EC(char a1)
{

  swift_beginAccess();
  *(v1 + 16) = a1;
  swift_endAccess();

  return v4;
}

uint64_t sub_268E91774(char a1)
{

  swift_beginAccess();
  *(v1 + 17) = a1;
  swift_endAccess();

  return v4;
}

uint64_t sub_268E917FC(char a1)
{

  swift_beginAccess();
  *(v1 + 18) = a1;
  swift_endAccess();

  return v4;
}

uint64_t sub_268E91884(char a1)
{

  swift_beginAccess();
  *(v1 + 19) = a1;
  swift_endAccess();

  return v4;
}

uint64_t sub_268E9190C(char a1)
{

  swift_beginAccess();
  *(v1 + 20) = a1;
  swift_endAccess();

  return v4;
}

uint64_t sub_268E91994(uint64_t a1)
{

  swift_beginAccess();
  v2 = *(v1 + 24);
  *(v1 + 24) = a1;

  swift_endAccess();

  return v5;
}

uint64_t sub_268E91A34(uint64_t a1)
{

  if (a1)
  {
    v4 = sub_268F9A834();

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  swift_beginAccess();
  v2 = *(v1 + 24);
  *(v1 + 24) = v5;

  swift_endAccess();

  return v1;
}

uint64_t sub_268E91B38()
{
  type metadata accessor for SettingsNumericSettingAction();

  return sub_268E91BAC(v1);
}

uint64_t sub_268E91CAC()
{
  swift_beginAccess();
  v2 = *(v0 + 16);
  MEMORY[0x277D82BE0](v2);
  swift_endAccess();
  return v2;
}

double sub_268E91D04(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  swift_beginAccess();
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_268E91DAC(uint64_t a1)
{
  *(v1 + 16) = 0;
  swift_beginAccess();
  v3 = *(a1 + 16);
  swift_endAccess();
  *(v1 + 24) = v3;
  swift_beginAccess();
  v4 = *(a1 + 17);
  swift_endAccess();
  *(v1 + 25) = v4;
  swift_beginAccess();
  v5 = *(a1 + 18);
  swift_endAccess();
  *(v1 + 26) = v5;
  swift_beginAccess();
  v6 = *(a1 + 19);
  swift_endAccess();
  *(v1 + 27) = v6;
  swift_beginAccess();
  v7 = *(a1 + 20);
  swift_endAccess();
  *(v1 + 28) = v7;
  swift_beginAccess();
  v8 = *(a1 + 24);

  swift_endAccess();
  *(v1 + 32) = v8;

  return v10;
}

uint64_t sub_268E91F5C(char a1, char a2, char a3, char a4, char a5, uint64_t a6)
{
  type metadata accessor for SettingsNumericSettingAction.Builder();
  sub_268E91674();
  sub_268E916EC(a1 & 1);

  sub_268E91774(a2 & 1);

  sub_268E917FC(a3 & 1);

  sub_268E91884(a4 & 1);

  sub_268E9190C(a5 & 1);

  v12 = sub_268E91994(a6);

  v14 = sub_268E91BAC(v12);

  return v14;
}

uint64_t sub_268E92128@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31[2] = 0;
  v31[3] = a1;
  v31[4] = a2;

  v31[0] = sub_268F9AEF4();
  v31[1] = v3;
  v30[2] = a1;
  v30[3] = a2;
  v25 = MEMORY[0x26D62DB50](v31[0], v3, a1, a2);
  sub_268CD9D30(v31);
  if (v25)
  {

    v5 = *(v22 + 24);
    *(a3 + 24) = MEMORY[0x277D839B0];
    *a3 = v5;
  }

  else
  {

    v30[0] = sub_268F9AEF4();
    v30[1] = v6;
    v29[2] = a1;
    v29[3] = a2;
    v20 = MEMORY[0x26D62DB50](v30[0], v6, a1, a2);
    sub_268CD9D30(v30);
    if (v20)
    {

      v7 = *(v22 + 25);
      *(a3 + 24) = MEMORY[0x277D839B0];
      *a3 = v7;
    }

    else
    {

      v29[0] = sub_268F9AEF4();
      v29[1] = v8;
      v28[2] = a1;
      v28[3] = a2;
      v19 = MEMORY[0x26D62DB50](v29[0], v8, a1, a2);
      sub_268CD9D30(v29);
      if (v19)
      {

        v9 = *(v22 + 26);
        *(a3 + 24) = MEMORY[0x277D839B0];
        *a3 = v9;
      }

      else
      {

        v28[0] = sub_268F9AEF4();
        v28[1] = v10;
        v27[2] = a1;
        v27[3] = a2;
        v18 = MEMORY[0x26D62DB50](v28[0], v10, a1, a2);
        sub_268CD9D30(v28);
        if (v18)
        {

          v11 = *(v22 + 27);
          *(a3 + 24) = MEMORY[0x277D839B0];
          *a3 = v11;
        }

        else
        {

          v27[0] = sub_268F9AEF4();
          v27[1] = v12;
          v26[2] = a1;
          v26[3] = a2;
          v17 = MEMORY[0x26D62DB50](v27[0], v12, a1, a2);
          sub_268CD9D30(v27);
          if (v17)
          {

            v13 = *(v22 + 28);
            *(a3 + 24) = MEMORY[0x277D839B0];
            *a3 = v13;
          }

          else
          {

            v26[0] = sub_268F9AEF4();
            v26[1] = v14;
            v16 = MEMORY[0x26D62DB50](v26[0], v14, a1, a2);
            sub_268CD9D30(v26);
            if (v16)
            {

              v15 = *(v22 + 32);

              if (v15)
              {
                result = sub_268F9A874();
                *(a3 + 24) = result;
                *a3 = v15;
              }

              else
              {
                *a3 = 0;
                *(a3 + 8) = 0;
                *(a3 + 16) = 0;
                *(a3 + 24) = 0;
              }
            }

            else
            {

              *a3 = 0;
              *(a3 + 8) = 0;
              *(a3 + 16) = 0;
              *(a3 + 24) = 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_268E925BC()
{
  sub_268F9B734();
  *v0 = "isSetValue";
  *(v0 + 8) = 10;
  *(v0 + 16) = 2;
  *(v0 + 24) = "isMinimum";
  *(v0 + 32) = 9;
  *(v0 + 40) = 2;
  *(v0 + 48) = "isMaximum";
  *(v0 + 56) = 9;
  *(v0 + 64) = 2;
  *(v0 + 72) = "isIncrease";
  *(v0 + 80) = 10;
  *(v0 + 88) = 2;
  *(v0 + 96) = "isDecrease";
  *(v0 + 104) = 10;
  *(v0 + 112) = 2;
  *(v0 + 120) = "value";
  *(v0 + 128) = 5;
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

uint64_t sub_268E9280C()
{

  v2 = sub_268E925BC();

  if (v2 == 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_268E92AB0()
{
  v2 = qword_2802DDB38;
  if (!qword_2802DDB38)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDB38);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268E92BFC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_268E925BC();
  *a2 = result;
  return result;
}

uint64_t sub_268E92C34@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  result = sub_268E928BC();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_268E92C84@<X0>(_BYTE *a1@<X8>)
{
  result = sub_268E9280C();
  *a1 = result;
  return result;
}

uint64_t sub_268E92CB0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_268E928A4();
  *a1 = result;
  return result;
}

unint64_t sub_268E92D0C()
{
  v2 = qword_2802DDB40;
  if (!qword_2802DDB40)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDB40);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268E92DB8()
{
  sub_268D35038((v0 + 16));
  sub_268D287E8((v0 + 32));
  return v2;
}

uint64_t sub_268E92E38(uint64_t a1)
{
  v26 = a1;
  v46 = 0;
  v45 = 0;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DDB80, &unk_268FA6D58);
  v27 = *(v34 - 8);
  v28 = v34 - 8;
  v29 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v26);
  v32 = v11 - v29;
  v46 = v2;
  v45 = v1;
  v30 = v2[3];
  v31 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v30);
  sub_268E92D0C();
  sub_268F9B844();
  v3 = v35;
  v4 = *(v33 + 24);
  v44 = 0;
  sub_268F9B6B4();
  v36 = v3;
  v37 = v3;
  if (v3)
  {
    v11[5] = v37;
    return (*(v27 + 8))(v32, v34);
  }

  else
  {
    v5 = *(v33 + 25);
    v43 = 1;
    sub_268F9B6B4();
    v24 = 0;
    v25 = 0;
    v6 = *(v33 + 26);
    v42 = 2;
    sub_268F9B6B4();
    v22 = 0;
    v23 = 0;
    v7 = *(v33 + 27);
    v41 = 3;
    sub_268F9B6B4();
    v20 = 0;
    v21 = 0;
    v8 = *(v33 + 28);
    v40 = 4;
    sub_268F9B6B4();
    v18 = 0;
    v19 = 0;
    v12 = *(v33 + 32);

    v15 = &v39;
    v39 = v12;
    v13 = &v38;
    v38 = 5;
    v14 = sub_268F9A874();
    sub_268E94098();
    v9 = v18;
    sub_268F9B694();
    v16 = v9;
    v17 = v9;
    if (v9)
    {
      v11[0] = v17;
    }

    sub_268D287E8(&v39);
    return (*(v27 + 8))(v32, v34);
  }
}

uint64_t sub_268E93310(uint64_t *a1)
{
  swift_allocObject();
  v5 = sub_268E9339C(a1);
  if (v3)
  {
    return v2;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_268E9339C(uint64_t *a1)
{
  v40 = a1;
  v59 = 0;
  v58 = 0;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DDB70, &qword_268FA6D50);
  v42 = *(v41 - 8);
  v43 = v41 - 8;
  v44 = (*(v42 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v40);
  v45 = v14 - v44;
  v59 = v2;
  v58 = v1;
  *(v1 + 16) = 0;
  v47 = v2[3];
  v48 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v47);
  sub_268E92D0C();
  v3 = v46;
  sub_268F9B834();
  v49 = v3;
  v50 = v3;
  if (v3)
  {
    v18 = v50;
    v19 = 1;
  }

  else
  {
    v57 = 0;
    v4 = sub_268F9B624();
    v36 = 0;
    v37 = v4;
    v38 = 0;
    *(v39 + 24) = v4 & 1;
    v56 = 1;
    v5 = sub_268F9B624();
    v33 = 0;
    v34 = v5;
    v35 = 0;
    *(v39 + 25) = v5 & 1;
    v55 = 2;
    v6 = sub_268F9B624();
    v30 = 0;
    v31 = v6;
    v32 = 0;
    *(v39 + 26) = v6 & 1;
    v54 = 3;
    v7 = sub_268F9B624();
    v27 = 0;
    v28 = v7;
    v29 = 0;
    *(v39 + 27) = v7 & 1;
    v53 = 4;
    v8 = sub_268F9B624();
    v24 = 0;
    v25 = v8;
    v26 = 0;
    *(v39 + 28) = v8 & 1;
    v21 = sub_268F9A874();
    v20 = &v51;
    v51 = 5;
    sub_268E94018();
    v9 = v24;
    sub_268F9B604();
    v22 = v9;
    v23 = v9;
    if (!v9)
    {
      v10 = v41;
      v11 = v45;
      v12 = v42;
      *(v39 + 32) = v52;
      (*(v12 + 8))(v11, v10);
      __swift_destroy_boxed_opaque_existential_0(v40);
      return v39;
    }

    v17 = v23;
    (*(v42 + 8))(v45, v41);
    v18 = v17;
    v19 = 63;
  }

  v15 = v19;
  v16 = v18;
  if ((v19 & 0x7F) == 0x7F)
  {
  }

  else
  {
    sub_268D35038((v39 + 16));
    v14[3] = v39;
    v14[2] = v39;
    type metadata accessor for SettingsNumericSettingAction();
    swift_deallocPartialClassInstance();
  }

  __swift_destroy_boxed_opaque_existential_0(v40);
  return v14[1];
}

void (*sub_268E93AF4(void *a1))(void **a1, char a2)
{
  v4 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v4;
  v2 = *v1;
  v4[4] = sub_268CDD364();
  return sub_268E93B70;
}

void sub_268E93B70(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v2[4](v2, 1);
  }

  else
  {
    v2[4](v2, 0);
  }

  free(v2);
}

unint64_t sub_268E93C3C()
{
  v2 = qword_2802DDB48;
  if (!qword_2802DDB48)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDB48);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268E93CB8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_268E93310(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_268E93D84()
{
  v2 = qword_2802DDB50;
  if (!qword_2802DDB50)
  {
    type metadata accessor for SettingsNumericSettingAction();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDB50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E93E1C()
{
  v2 = qword_2802DDB58;
  if (!qword_2802DDB58)
  {
    type metadata accessor for SettingsNumericSettingAction();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDB58);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E93EB4()
{
  v2 = qword_2802DDB60;
  if (!qword_2802DDB60)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDB60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E93F48()
{
  v2 = qword_2802DDB68;
  if (!qword_2802DDB68)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDB68);
    return WitnessTable;
  }

  return v2;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  else
  {
    return malloc(a1);
  }
}

unint64_t sub_268E94018()
{
  v2 = qword_2802DDB78;
  if (!qword_2802DDB78)
  {
    sub_268F9A874();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDB78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E94098()
{
  v2 = qword_280FE66A8;
  if (!qword_280FE66A8)
  {
    sub_268F9A874();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE66A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268E94118()
{
  type metadata accessor for SetAXClassicInvertColorsHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_2802F15E0 = result;
  return result;
}

uint64_t *sub_268E94180()
{
  if (qword_2802DB770 != -1)
  {
    swift_once();
  }

  return &qword_2802F15E0;
}

uint64_t sub_268E941E0()
{
  v1 = *sub_268E94180();

  return v1;
}

uint64_t sub_268E94210(void *a1, void (*a2)(void), uint64_t a3)
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

    v12 = sub_268D3EA14();

    v9 = sub_268DBD214();
    v13 = *v9;
    v14 = v9[1];
    v15 = *(v9 + 16);
    v16 = *(v25 + 24);

    sub_268DAAB84(v12, a1, v13, v14, v15, v16 & 1, a2, a3, sub_268E9486C, v25, 0, 1, 0, 0);
    return sub_268CD9A28(sub_268E9486C);
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

uint64_t sub_268E947FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);

  sub_268D3EA44();
}

uint64_t sub_268E94CD8()
{
  sub_268F9B734();
  *v0 = "appNotInstalledForAnnounceNotifications";
  *(v0 + 8) = 39;
  *(v0 + 16) = 2;
  *(v0 + 24) = "cannotConnectToWifiNetwork";
  *(v0 + 32) = 26;
  *(v0 + 40) = 2;
  *(v0 + 48) = "cannotTemporarilyEnableAnnounceMessages";
  *(v0 + 56) = 39;
  *(v0 + 64) = 2;
  *(v0 + 72) = "deviceDoesNotSupportSetting";
  *(v0 + 80) = 27;
  *(v0 + 88) = 2;
  *(v0 + 96) = "environmentNotInstalled";
  *(v0 + 104) = 23;
  *(v0 + 112) = 2;
  *(v0 + 120) = "flashlightOverheated";
  *(v0 + 128) = 20;
  *(v0 + 136) = 2;
  *(v0 + 144) = "flashlightUnavailable";
  *(v0 + 152) = 21;
  *(v0 + 160) = 2;
  *(v0 + 168) = "focusNotConfigured";
  *(v0 + 176) = 18;
  *(v0 + 184) = 2;
  *(v0 + 192) = "operationNotPermitted";
  *(v0 + 200) = 21;
  *(v0 + 208) = 2;
  *(v0 + 216) = "applicableDevicesNeverConnected";
  *(v0 + 224) = 31;
  *(v0 + 232) = 2;
  *(v0 + 240) = "targetDeviceNotFoundReadBattery";
  *(v0 + 248) = 31;
  *(v0 + 256) = 2;
  *(v0 + 264) = "missingSIMOrCellular";
  *(v0 + 272) = 20;
  *(v0 + 280) = 2;
  *(v0 + 288) = "enabledHotspotDiscoverability";
  *(v0 + 296) = 29;
  *(v0 + 304) = 2;
  *(v0 + 312) = "disabledHotspotDiscoverability";
  *(v0 + 320) = 30;
  *(v0 + 328) = 2;
  *(v0 + 336) = "leaveHotspotDiscoverabilityDisabled";
  *(v0 + 344) = 35;
  *(v0 + 352) = 2;
  *(v0 + 360) = "hotspotDiscoverabilityAlreadyEnabled";
  *(v0 + 368) = 36;
  *(v0 + 376) = 2;
  *(v0 + 384) = "hotspotDiscoverabilityIsOn";
  *(v0 + 392) = 26;
  *(v0 + 400) = 2;
  *(v0 + 408) = "siriCannotChangeSetting";
  *(v0 + 416) = 23;
  *(v0 + 424) = 2;
  *(v0 + 432) = "siriCannotDisableItself";
  *(v0 + 440) = 23;
  *(v0 + 448) = 2;
  *(v0 + 456) = "siriCannotExecuteUserRequest";
  *(v0 + 464) = 28;
  *(v0 + 472) = 2;
  *(v0 + 480) = "siriCanOnlyAnnounceMessagesInCarPlay";
  *(v0 + 488) = 36;
  *(v0 + 496) = 2;
  *(v0 + 504) = "siriCannotChangeVoice";
  *(v0 + 512) = 21;
  *(v0 + 520) = 2;
  *(v0 + 528) = "setDisplayBrightnessNotSupportedInAmbient";
  *(v0 + 536) = 41;
  *(v0 + 544) = 2;
  *(v0 + 552) = "siriCannotGetOrSetStandBy";
  *(v0 + 560) = 25;
  *(v0 + 568) = 2;
  sub_268CD0F7C();
  v4 = sub_268F9B5C4();

  switch(v4)
  {
    case 0:
      v3 = 0;
LABEL_50:

      return v3;
    case 1:
      v3 = 1;
      goto LABEL_50;
    case 2:
      v3 = 2;
      goto LABEL_50;
    case 3:
      v3 = 3;
      goto LABEL_50;
    case 4:
      v3 = 4;
      goto LABEL_50;
    case 5:
      v3 = 5;
      goto LABEL_50;
    case 6:
      v3 = 6;
      goto LABEL_50;
    case 7:
      v3 = 7;
      goto LABEL_50;
    case 8:
      v3 = 8;
      goto LABEL_50;
    case 9:
      v3 = 9;
      goto LABEL_50;
    case 10:
      v3 = 10;
      goto LABEL_50;
    case 11:
      v3 = 11;
      goto LABEL_50;
    case 12:
      v3 = 12;
      goto LABEL_50;
    case 13:
      v3 = 13;
      goto LABEL_50;
    case 14:
      v3 = 14;
      goto LABEL_50;
    case 15:
      v3 = 15;
      goto LABEL_50;
    case 16:
      v3 = 16;
      goto LABEL_50;
    case 17:
      v3 = 17;
      goto LABEL_50;
    case 18:
      v3 = 18;
      goto LABEL_50;
    case 19:
      v3 = 19;
      goto LABEL_50;
    case 20:
      v3 = 20;
      goto LABEL_50;
    case 21:
      v3 = 21;
      goto LABEL_50;
    case 22:
      v3 = 22;
      goto LABEL_50;
    case 23:
      v3 = 23;
      goto LABEL_50;
  }

  return 24;
}

unint64_t sub_268E95450()
{
  v2 = qword_2802DDB88;
  if (!qword_2802DDB88)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDB88);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268E9559C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_268E94CD8();
  *a2 = result;
  return result;
}

uint64_t sub_268E955D4@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  result = sub_268E948B8();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_268E95608(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xE8)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 23) >> 8) + 1;
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
      v5 = (*a1 | ((v6 - 1) << 8)) + 232;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 24;
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

_BYTE *sub_268E95770(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xE8)
  {
    v5 = ((a3 + 23) >> 8) + 1;
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

  if (a2 > 0xE8)
  {
    v4 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
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
      *result = a2 + 23;
    }
  }

  return result;
}

unint64_t sub_268E95998()
{
  v2 = qword_2802DDB90;
  if (!qword_2802DDB90)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDB90);
    return WitnessTable;
  }

  return v2;
}

id sub_268E95A14()
{
  type metadata accessor for SetLabeledIntentHandler();
  v0 = sub_268E95A74();
  result = sub_268E95AA4(v0);
  qword_2802F15E8 = result;
  return result;
}

uint64_t sub_268E95A74()
{
  v1 = *sub_268F7AD98();

  return v1;
}

uint64_t *sub_268E95AE0()
{
  if (qword_2802DB778 != -1)
  {
    swift_once();
  }

  return &qword_2802F15E8;
}

uint64_t sub_268E95B40()
{
  v0 = sub_268E95AE0();
  v2 = *v0;
  MEMORY[0x277D82BE0](*v0);
  return v2;
}

uint64_t sub_268E95B80()
{
  v2 = *(v0 + OBJC_IVAR____TtC19SiriSettingsIntents23SetLabeledIntentHandler_setHandlerProvider);

  return v2;
}

id sub_268E95BC0(uint64_t a1)
{
  v6 = 0;
  v5 = a1;

  *OBJC_IVAR____TtC19SiriSettingsIntents23SetLabeledIntentHandler_setHandlerProvider = a1;
  v4.receiver = v6;
  v4.super_class = type metadata accessor for SetLabeledIntentHandler();
  v3 = objc_msgSendSuper2(&v4, sel_init);
  MEMORY[0x277D82BE0](v3);
  v6 = v3;

  MEMORY[0x277D82BD8](v6);
  return v3;
}

uint64_t sub_268E95C78(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v28 = 0;
  v27 = 0;
  v31 = a1;
  v29 = a2;
  v30 = a3;
  sub_268F9B284();
  v3 = sub_268DC7AE8();
  v21 = *v3;
  MEMORY[0x277D82BE0](*v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v21);
  v23 = sub_268E77870(a1);
  if (v23 != 2)
  {
    v27 = v23 & 1;
    v17 = *(v20 + OBJC_IVAR____TtC19SiriSettingsIntents23SetLabeledIntentHandler_setHandlerProvider);

    sub_268F7C5B0();

    if (v25[3])
    {
      sub_268CDF978(v25, __dst);
      sub_268F9B284();
      v4 = sub_268DC7AE8();
      v14 = *v4;
      MEMORY[0x277D82BE0](*v4);
      sub_268F9B734();
      v13 = v5;
      sub_268CDE730(__dst, v24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DDBB8, &qword_268FA6EA8);
      v11 = sub_268F9AE64();
      v12 = v6;
      v13[3] = MEMORY[0x277D837D0];
      v13[4] = sub_268CDD224();
      *v13 = v11;
      v13[1] = v12;
      sub_268CD0F7C();
      sub_268F9AC14();

      MEMORY[0x277D82BD8](v14);
      v15 = __dst[4];
      __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);

      v16 = swift_allocObject();
      *(v16 + 16) = a2;
      *(v16 + 24) = a3;
      (*(v15 + 8))(a1, sub_268E96444);

      return __swift_destroy_boxed_opaque_existential_0(__dst);
    }

    sub_268D28414(v25);
  }

  v8 = sub_268DC7AE8();
  v9 = *v8;
  MEMORY[0x277D82BE0](*v8);
  sub_268F9B274();
  sub_268F9B734();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v9);

  sub_268DC0784();
  v10 = sub_268CD42AC(4, 0);
  a2();
  MEMORY[0x277D82BD8](v10);
}

uint64_t sub_268E96094(uint64_t a1, void (*a2)(uint64_t))
{
  sub_268F9B284();
  v2 = sub_268DC7AE8();
  v9 = *v2;
  MEMORY[0x277D82BE0](*v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v8 = v3;
  MEMORY[0x277D82BE0](a1);
  sub_268DC0784();
  sub_268E964F0();
  v6 = sub_268F9AE74();
  v7 = v4;
  v8[3] = MEMORY[0x277D837D0];
  v8[4] = sub_268CDD224();
  *v8 = v6;
  v8[1] = v7;
  sub_268CD0F7C();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v9);

  a2(a1);
}

id SetLabeledIntentHandler.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SetLabeledIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_268E964F0()
{
  v2 = qword_2802DDC20;
  if (!qword_2802DDC20)
  {
    sub_268DC0784();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDC20);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_268E96570()
{
  if (qword_280FE4DF0 != -1)
  {
    swift_once();
  }

  return &qword_280FE81B8;
}

uint64_t sub_268E965D0()
{
  type metadata accessor for GetBassReduceHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_280FE81B8 = result;
  return result;
}

uint64_t sub_268E96638()
{
  v1 = *sub_268E96570();

  return v1;
}

uint64_t sub_268E96668(void *a1, void (*a2)(id), uint64_t a3)
{
  sub_268F9B284();
  v3 = sub_268DC7AE8();
  v19 = *v3;
  MEMORY[0x277D82BE0](*v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v19);
  v22 = *sub_268E50B9C();

  v21 = [a1 settingMetadata];
  v23 = sub_268E50C88(v21);
  MEMORY[0x277D82BD8](v21);

  if (v23)
  {
    sub_268F9B294();
    v8 = sub_268DC7AE8();
    v9 = *v8;
    MEMORY[0x277D82BE0](*v8);
    sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v9);

    sub_268E948B8();
    v10 = sub_268E41B70();

    a2(v10);
    MEMORY[0x277D82BD8](v10);
  }

  else
  {
    v4 = sub_268D2E630();
    SettingIntent.deviceCategory.getter(v4, &protocol witness table for INGetSettingIntent);
    if (v5)
    {
      v15 = 0;
    }

    else
    {
      type metadata accessor for INDeviceCategory();
      sub_268CD7818();
      v15 = sub_268F9AE04();
    }

    if (v15)
    {
      v14 = *(v18 + 16);

      MEMORY[0x277D82BE0](a1);
      v13 = swift_allocObject();
      v13[2] = v18;
      v13[3] = a2;
      v13[4] = a3;
      v13[5] = a1;
      sub_268D47788();
    }

    else
    {
      sub_268F9B294();
      v6 = sub_268DC7AE8();
      v11 = *v6;
      MEMORY[0x277D82BE0](*v6);
      sub_268F9B734();
      sub_268F9AC14();

      MEMORY[0x277D82BD8](v11);

      sub_268E948B8();
      v12 = sub_268E41B70();

      a2(v12);
      MEMORY[0x277D82BD8](v12);
    }
  }
}

uint64_t sub_268E96B1C(unsigned __int8 a1, uint64_t a2, void (*a3)(void), uint64_t a4, void *a5)
{
  v40 = a5;
  v41 = a4;
  v42 = a3;
  v43 = a2;
  v45 = 0;
  v44 = 0;
  v52 = a1;
  v51 = a2;
  v49 = a3;
  v50 = a4;
  v48 = a5;
  v46 = a1;

  if (v46 == 2)
  {
    v38 = *(v43 + 16);

    v39 = sub_268D477AC();

    v47 = v39;
  }

  else
  {
    v47 = v46;
  }

  v37 = v47;
  if (v47 == 2)
  {
    v22[1] = sub_268F9B294();
    v24 = *sub_268DC7AE8();
    v16 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v23 = sub_268F9B734();
    sub_268F9AC14();

    sub_268CDD0DC();
    v25 = sub_268CD42AC(6, 0);
    v42();

    return v44;
  }

  else
  {
    v36 = v37;
    v5 = v44;
    v34 = v37 & 1;
    v45 = v37 & 1;
    v6 = sub_268DBBEF4();
    v28 = *v6;
    v29 = v6[1];
    v30 = *(v6 + 16);
    v31 = *sub_268DC7AE8();
    v27 = v31;
    v7 = v31;
    v32 = *(v43 + 24);
    v8 = v40;

    v33 = v22;
    MEMORY[0x28223BE20](v28);
    v18[2] = v9;
    v19 = v34;
    v20 = v42;
    v21 = v10;
    sub_268DB944C(v11, v12, v13, v14, v15, sub_268E9715C, v18, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
    v35 = v5;

    return v35;
  }
}

double sub_268E96E68(void *a1, char a2, void (*a3)(id))
{
  sub_268CDD0DC();
  v15 = sub_268CD42AC(3, 0);
  sub_268CDD140();
  sub_268F9B734();
  v17 = v3;
  v19 = [a1 settingMetadata];
  if (a2)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  *v17 = sub_268E41954(v19, 0, 0, v13, 0, 0);
  sub_268CD0F7C();
  v8 = sub_268F9B004();

  [v15 setSettingResponseDatas_];
  MEMORY[0x277D82BD8](v8);
  sub_268F9B284();
  v4 = sub_268DC7AE8();
  v12 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v11 = v5;
  MEMORY[0x277D82BE0](v15);
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

  a3(v15);

  *&result = MEMORY[0x277D82BD8](v15).n128_u64[0];
  return result;
}

uint64_t sub_268E97194()
{
  sub_268F9B734();
  *v0 = "GetSettingIntent#DescribeMultiSettingState";
  *(v0 + 8) = 42;
  *(v0 + 16) = 2;
  *(v0 + 24) = "GetSettingIntent#SiriCannotChangeSetting";
  *(v0 + 32) = 40;
  *(v0 + 40) = 2;
  *(v0 + 48) = "GetSettingIntent#DescribeBinarySettingState";
  *(v0 + 56) = 43;
  *(v0 + 64) = 2;
  *(v0 + 72) = "GetSettingIntent#DescribeNumericSettingStateSpokenOnly";
  *(v0 + 80) = 54;
  *(v0 + 88) = 2;
  *(v0 + 96) = "GetSettingIntent#DescribeNumericSettingState";
  *(v0 + 104) = 44;
  *(v0 + 112) = 2;
  *(v0 + 120) = "GetSettingIntent#TargetDeviceNotFoundReadBattery";
  *(v0 + 128) = 48;
  *(v0 + 136) = 2;
  *(v0 + 144) = "GetSettingIntent#HotspotDiscoverabilityPrompt";
  *(v0 + 152) = 45;
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

unint64_t sub_268E9763C()
{
  v2 = qword_2802DDC30;
  if (!qword_2802DDC30)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDC30);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268E97788@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_268E97194();
  *a2 = result;
  return result;
}

uint64_t sub_268E977C0@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  result = sub_268E97434();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_268E977F4(uint64_t a1)
{
  v5 = a1;
  v3[0] = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v4 = v3 - v3[0];
  sub_268D2A1F0(v1, v3 - v3[0]);
  sub_268D29FC8(v4, v3[1]);
  return sub_268D28588(v5);
}

uint64_t sub_268E97898()
{
  v26 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  v16 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v22 = &v15 - v16;
  v26 = v0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  v18 = sub_268F9B734();
  v19 = v2;
  v21 = 1;
  v3 = sub_268F9AEF4();
  v4 = v19;
  v5 = v3;
  v6 = v20;
  v8 = v7;
  v9 = v22;
  *v19 = v5;
  v4[1] = v8;
  sub_268D2A1F0(v6, v9);
  v23 = sub_268F9A9C4();
  v24 = *(v23 - 8);
  v25 = v23 - 8;
  if ((*(v24 + 48))(v22, v21) == 1)
  {
    sub_268D28588(v22);
    v14 = v19;
    v19[2] = 0;
    v14[3] = 0;
    v14[4] = 0;
    v14[5] = 0;
  }

  else
  {
    v10 = v19;
    v19[5] = v23;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10 + 2);
    (*(v24 + 32))(boxed_opaque_existential_1, v22, v23);
  }

  v12 = v18;
  sub_268CD0F7C();
  v15 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  return sub_268F9B4F4();
}

void *sub_268E97A84@<X0>(void *a1@<X8>)
{
  v6 = a1;
  v7 = 0;
  v3[1] = 0;
  v4 = (*(*(type metadata accessor for GetSettingIntentTargetDeviceNotFoundReadBatteryParameters() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v5 = v3 - v4;
  v7 = v3 - v4;
  v1 = sub_268F9A9C4();
  (*(*(v1 - 8) + 56))(v5, 1);
  return sub_268D84F40(v5, v6);
}

uint64_t type metadata accessor for GetSettingIntentDescribeMultiSettingStateParameters()
{
  v1 = qword_2802DDC48;
  if (!qword_2802DDC48)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_268E97C00(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_268D2A1F0(v2, &v5 - v6);
  SettingIntentDescribeMultiSettingStateParameters = type metadata accessor for GetSettingIntentDescribeMultiSettingStateParameters();
  sub_268D29FC8(v7, (v1 + *(SettingIntentDescribeMultiSettingStateParameters + 20)));
  return sub_268D28588(v8);
}

uint64_t sub_268E97CB0()
{
  v2 = *(v0 + *(type metadata accessor for GetSettingIntentDescribeMultiSettingStateParameters() + 24));

  return v2;
}

uint64_t sub_268E97CE8(uint64_t a1)
{

  v2 = (v1 + *(type metadata accessor for GetSettingIntentDescribeMultiSettingStateParameters() + 24));
  v3 = *v2;
  *v2 = a1;
}

uint64_t sub_268E97D58(unsigned int a1)
{
  SettingIntentDescribeMultiSettingStateParameters = type metadata accessor for GetSettingIntentDescribeMultiSettingStateParameters();
  result = a1;
  *(v1 + *(SettingIntentDescribeMultiSettingStateParameters + 28)) = a1;
  return result;
}

uint64_t sub_268E97DC8(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_268D2A1F0(v2, &v5 - v6);
  SettingIntentDescribeMultiSettingStateParameters = type metadata accessor for GetSettingIntentDescribeMultiSettingStateParameters();
  sub_268D29FC8(v7, (v1 + *(SettingIntentDescribeMultiSettingStateParameters + 32)));
  return sub_268D28588(v8);
}

uint64_t sub_268E97EB0(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_268D2A1F0(v2, &v5 - v6);
  SettingIntentDescribeMultiSettingStateParameters = type metadata accessor for GetSettingIntentDescribeMultiSettingStateParameters();
  sub_268D29FC8(v7, (v1 + *(SettingIntentDescribeMultiSettingStateParameters + 36)));
  return sub_268D28588(v8);
}

uint64_t sub_268E97F98(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_268D2A1F0(v2, &v5 - v6);
  SettingIntentDescribeMultiSettingStateParameters = type metadata accessor for GetSettingIntentDescribeMultiSettingStateParameters();
  sub_268D29FC8(v7, (v1 + *(SettingIntentDescribeMultiSettingStateParameters + 40)));
  return sub_268D28588(v8);
}

uint64_t sub_268E98080(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_268D2A1F0(v2, &v5 - v6);
  SettingIntentDescribeMultiSettingStateParameters = type metadata accessor for GetSettingIntentDescribeMultiSettingStateParameters();
  sub_268D29FC8(v7, (v1 + *(SettingIntentDescribeMultiSettingStateParameters + 44)));
  return sub_268D28588(v8);
}

uint64_t sub_268E98168(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_268D2A1F0(v2, &v5 - v6);
  SettingIntentDescribeMultiSettingStateParameters = type metadata accessor for GetSettingIntentDescribeMultiSettingStateParameters();
  sub_268D29FC8(v7, (v1 + *(SettingIntentDescribeMultiSettingStateParameters + 48)));
  return sub_268D28588(v8);
}

uint64_t sub_268E98250(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_268D2A1F0(v2, &v5 - v6);
  SettingIntentDescribeMultiSettingStateParameters = type metadata accessor for GetSettingIntentDescribeMultiSettingStateParameters();
  sub_268D29FC8(v7, (v1 + *(SettingIntentDescribeMultiSettingStateParameters + 52)));
  return sub_268D28588(v8);
}

uint64_t sub_268E98338(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_268D2A1F0(v2, &v5 - v6);
  SettingIntentDescribeMultiSettingStateParameters = type metadata accessor for GetSettingIntentDescribeMultiSettingStateParameters();
  sub_268D29FC8(v7, (v1 + *(SettingIntentDescribeMultiSettingStateParameters + 56)));
  return sub_268D28588(v8);
}

uint64_t sub_268E98440()
{
  v177 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  v156 = *(*(v1 - 8) + 64);
  v157 = (v156 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v158 = &v123 - v157;
  v159 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v123 - v157);
  v160 = &v123 - v159;
  v161 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v123 - v159);
  v162 = &v123 - v161;
  v163 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v123 - v161);
  v164 = &v123 - v163;
  v165 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v123 - v163);
  v166 = &v123 - v165;
  v167 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v123 - v165);
  v168 = &v123 - v167;
  v169 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v123 - v167);
  v170 = &v123 - v169;
  v171 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v123 - v169);
  v172 = &v123 - v171;
  v177 = v0;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  v174 = sub_268F9B734();
  v175 = v9;
  v10 = sub_268F9AEF4();
  v11 = v175;
  *v175 = v10;
  v11[1] = v12;
  v176 = *v0;

  if (v176)
  {
    v154 = v176;
    v153 = v176;
    v13 = sub_268F9AA44();
    v14 = v175;
    v15 = v153;
    v175[5] = v13;
    v14[2] = v15;
  }

  else
  {
    v122 = v175;
    v175[2] = 0;
    v122[3] = 0;
    v122[4] = 0;
    v122[5] = 0;
  }

  v144 = v175 + 8;
  v147 = 1;
  v16 = sub_268F9AEF4();
  v17 = v175;
  v175[6] = v16;
  v17[7] = v18;
  v146 = 0;
  SettingIntentDescribeMultiSettingStateParameters = type metadata accessor for GetSettingIntentDescribeMultiSettingStateParameters();
  sub_268D2A1F0((v155 + *(SettingIntentDescribeMultiSettingStateParameters + 20)), v172);
  v148 = sub_268F9A9C4();
  v149 = *(v148 - 8);
  v150 = v148 - 8;
  v151 = *(v149 + 48);
  v152 = v149 + 48;
  if (v151(v172, v147) == 1)
  {
    sub_268D28588(v172);
    v121 = v175;
    v175[8] = 0;
    v121[9] = 0;
    v121[10] = 0;
    v121[11] = 0;
  }

  else
  {
    v19 = v144;
    v175[11] = v148;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
    (*(v149 + 32))(boxed_opaque_existential_1, v172, v148);
  }

  v21 = sub_268F9AEF4();
  v22 = v175;
  v23 = SettingIntentDescribeMultiSettingStateParameters;
  v24 = v155;
  v175[12] = v21;
  v22[13] = v25;
  v143 = *(v24 + *(v23 + 24));

  if (v143)
  {
    v142 = v143;
    v141 = v143;
    v26 = type metadata accessor for SettingsMultiSetting();
    v27 = v175;
    v28 = v141;
    v175[17] = v26;
    v27[14] = v28;
  }

  else
  {
    v120 = v175;
    v175[14] = 0;
    v120[15] = 0;
    v120[16] = 0;
    v120[17] = 0;
  }

  v29 = sub_268F9AEF4();
  v30 = v175;
  v31 = SettingIntentDescribeMultiSettingStateParameters;
  v32 = v155;
  v175[18] = v29;
  v30[19] = v33;
  v140 = *(v32 + *(v31 + 28));
  if (v140 == 2)
  {
    v119 = v175;
    v175[20] = 0;
    v119[21] = 0;
    v119[22] = 0;
    v119[23] = 0;
  }

  else
  {
    v139 = v140;
    v34 = v175;
    v35 = v140;
    v175[23] = MEMORY[0x277D839B0];
    *(v34 + 160) = v35 & 1;
  }

  v137 = v175 + 26;
  v138 = 1;
  v36 = sub_268F9AEF4();
  v37 = v175;
  v38 = SettingIntentDescribeMultiSettingStateParameters;
  v39 = v155;
  v41 = v40;
  v42 = v170;
  v175[24] = v36;
  v37[25] = v41;
  sub_268D2A1F0((v39 + *(v38 + 32)), v42);
  if ((v151)(v170, v138, v148) == 1)
  {
    sub_268D28588(v170);
    v118 = v175;
    v175[26] = 0;
    v118[27] = 0;
    v118[28] = 0;
    v118[29] = 0;
  }

  else
  {
    v43 = v137;
    v175[29] = v148;
    v44 = __swift_allocate_boxed_opaque_existential_1(v43);
    (*(v149 + 32))(v44, v170, v148);
  }

  v135 = v175 + 32;
  v136 = 1;
  v45 = sub_268F9AEF4();
  v46 = v175;
  v47 = SettingIntentDescribeMultiSettingStateParameters;
  v48 = v155;
  v50 = v49;
  v51 = v168;
  v175[30] = v45;
  v46[31] = v50;
  sub_268D2A1F0((v48 + *(v47 + 36)), v51);
  if ((v151)(v168, v136, v148) == 1)
  {
    sub_268D28588(v168);
    v117 = v175;
    v175[32] = 0;
    v117[33] = 0;
    v117[34] = 0;
    v117[35] = 0;
  }

  else
  {
    v52 = v135;
    v175[35] = v148;
    v53 = __swift_allocate_boxed_opaque_existential_1(v52);
    (*(v149 + 32))(v53, v168, v148);
  }

  v133 = v175 + 38;
  v134 = 1;
  v54 = sub_268F9AEF4();
  v55 = v175;
  v56 = SettingIntentDescribeMultiSettingStateParameters;
  v57 = v155;
  v59 = v58;
  v60 = v166;
  v175[36] = v54;
  v55[37] = v59;
  sub_268D2A1F0((v57 + *(v56 + 40)), v60);
  if ((v151)(v166, v134, v148) == 1)
  {
    sub_268D28588(v166);
    v116 = v175;
    v175[38] = 0;
    v116[39] = 0;
    v116[40] = 0;
    v116[41] = 0;
  }

  else
  {
    v61 = v133;
    v175[41] = v148;
    v62 = __swift_allocate_boxed_opaque_existential_1(v61);
    (*(v149 + 32))(v62, v166, v148);
  }

  v131 = v175 + 44;
  v132 = 1;
  v63 = sub_268F9AEF4();
  v64 = v175;
  v65 = SettingIntentDescribeMultiSettingStateParameters;
  v66 = v155;
  v68 = v67;
  v69 = v164;
  v175[42] = v63;
  v64[43] = v68;
  sub_268D2A1F0((v66 + *(v65 + 56)), v69);
  if ((v151)(v164, v132, v148) == 1)
  {
    sub_268D28588(v164);
    v115 = v175;
    v175[44] = 0;
    v115[45] = 0;
    v115[46] = 0;
    v115[47] = 0;
  }

  else
  {
    v70 = v131;
    v175[47] = v148;
    v71 = __swift_allocate_boxed_opaque_existential_1(v70);
    (*(v149 + 32))(v71, v164, v148);
  }

  v130 = 1;
  v72 = sub_268F9AEF4();
  v73 = v175;
  v74 = SettingIntentDescribeMultiSettingStateParameters;
  v75 = v155;
  v175[48] = v72;
  v73[49] = v76;
  LOBYTE(v75) = *(v75 + *(v74 + 60));
  v128 = MEMORY[0x277D839B0];
  v73[53] = MEMORY[0x277D839B0];
  *(v73 + 400) = v75;
  v77 = sub_268F9AEF4();
  v78 = v128;
  v79 = v175;
  v80 = SettingIntentDescribeMultiSettingStateParameters;
  v81 = v155;
  v175[54] = v77;
  v79[55] = v82;
  LOBYTE(v81) = *(v81 + *(v80 + 64));
  v79[59] = v78;
  *(v79 + 448) = v81;
  v129 = v79 + 62;
  v83 = sub_268F9AEF4();
  v84 = v175;
  v85 = SettingIntentDescribeMultiSettingStateParameters;
  v86 = v155;
  v88 = v87;
  v89 = v162;
  v175[60] = v83;
  v84[61] = v88;
  sub_268D2A1F0((v86 + *(v85 + 44)), v89);
  if ((v151)(v162, v130, v148) == 1)
  {
    sub_268D28588(v162);
    v114 = v175;
    v175[62] = 0;
    v114[63] = 0;
    v114[64] = 0;
    v114[65] = 0;
  }

  else
  {
    v90 = v129;
    v175[65] = v148;
    v91 = __swift_allocate_boxed_opaque_existential_1(v90);
    (*(v149 + 32))(v91, v162, v148);
  }

  v126 = v175 + 68;
  v127 = 1;
  v92 = sub_268F9AEF4();
  v93 = v175;
  v94 = SettingIntentDescribeMultiSettingStateParameters;
  v95 = v155;
  v97 = v96;
  v98 = v160;
  v175[66] = v92;
  v93[67] = v97;
  sub_268D2A1F0((v95 + *(v94 + 48)), v98);
  if ((v151)(v160, v127, v148) == 1)
  {
    sub_268D28588(v160);
    v113 = v175;
    v175[68] = 0;
    v113[69] = 0;
    v113[70] = 0;
    v113[71] = 0;
  }

  else
  {
    v99 = v126;
    v175[71] = v148;
    v100 = __swift_allocate_boxed_opaque_existential_1(v99);
    (*(v149 + 32))(v100, v160, v148);
  }

  v124 = v175 + 74;
  v125 = 1;
  v101 = sub_268F9AEF4();
  v102 = v175;
  v103 = SettingIntentDescribeMultiSettingStateParameters;
  v104 = v155;
  v106 = v105;
  v107 = v158;
  v175[72] = v101;
  v102[73] = v106;
  sub_268D2A1F0((v104 + *(v103 + 52)), v107);
  if ((v151)(v158, v125, v148) == 1)
  {
    sub_268D28588(v158);
    v112 = v175;
    v175[74] = 0;
    v112[75] = 0;
    v112[76] = 0;
    v112[77] = 0;
  }

  else
  {
    v108 = v124;
    v175[77] = v148;
    v109 = __swift_allocate_boxed_opaque_existential_1(v108);
    (*(v149 + 32))(v109, v158, v148);
  }

  v110 = v174;
  sub_268CD0F7C();
  v123 = v110;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  return sub_268F9B4F4();
}

int *sub_268E99160@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, const void *a5@<X4>, const void *a6@<X5>, const void *a7@<X6>, const void *a8@<X7>, void *a9@<X8>, const void *a10, const void *a11, const void *a12, char a13, char a14)
{
  *a9 = a1;
  SettingIntentDescribeMultiSettingStateParameters = type metadata accessor for GetSettingIntentDescribeMultiSettingStateParameters();
  sub_268D84F40(a2, a9 + SettingIntentDescribeMultiSettingStateParameters[5]);
  *(a9 + SettingIntentDescribeMultiSettingStateParameters[6]) = a3;
  *(a9 + SettingIntentDescribeMultiSettingStateParameters[7]) = a4;
  sub_268D84F40(a5, a9 + SettingIntentDescribeMultiSettingStateParameters[8]);
  sub_268D84F40(a6, a9 + SettingIntentDescribeMultiSettingStateParameters[9]);
  sub_268D84F40(a7, a9 + SettingIntentDescribeMultiSettingStateParameters[10]);
  sub_268D84F40(a8, a9 + SettingIntentDescribeMultiSettingStateParameters[11]);
  sub_268D84F40(a10, a9 + SettingIntentDescribeMultiSettingStateParameters[12]);
  sub_268D84F40(a11, a9 + SettingIntentDescribeMultiSettingStateParameters[13]);
  sub_268D84F40(a12, a9 + SettingIntentDescribeMultiSettingStateParameters[14]);
  result = SettingIntentDescribeMultiSettingStateParameters;
  *(a9 + SettingIntentDescribeMultiSettingStateParameters[15]) = a13;
  *(a9 + SettingIntentDescribeMultiSettingStateParameters[16]) = a14;
  return result;
}

uint64_t type metadata accessor for GetSettingIntentSiriCannotChangeSettingParameters()
{
  v1 = qword_2802DDC58;
  if (!qword_2802DDC58)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_268E99384(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_268D2A1F0(v2, &v5 - v6);
  v3 = type metadata accessor for GetSettingIntentSiriCannotChangeSettingParameters();
  sub_268D29FC8(v7, (v1 + *(v3 + 28)));
  return sub_268D28588(v8);
}

uint64_t sub_268E99458(unsigned int a1)
{
  v2 = type metadata accessor for GetSettingIntentSiriCannotChangeSettingParameters();
  result = a1;
  *(v1 + *(v2 + 32)) = a1;
  return result;
}

uint64_t sub_268E99490()
{
  v56 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  v48 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v49 = v35 - v48;
  v56 = v0;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  v51 = sub_268F9B734();
  v54 = v2;
  v53 = 1;
  v3 = sub_268F9AEF4();
  v5 = v4;
  v6 = v54;
  *v54 = v3;
  v6[1] = v5;
  LOBYTE(v5) = *v0;
  v52 = MEMORY[0x277D839B0];
  v6[5] = MEMORY[0x277D839B0];
  *(v6 + 16) = v5;
  v7 = sub_268F9AEF4();
  v8 = v52;
  v10 = v9;
  v11 = v54;
  v54[6] = v7;
  v11[7] = v10;
  LOBYTE(v10) = *(v0 + 1);
  v11[11] = v8;
  *(v11 + 64) = v10;
  v12 = sub_268F9AEF4();
  v13 = v54;
  v54[12] = v12;
  v13[13] = v14;
  v55 = *(v0 + 8);

  if (v55)
  {
    v46 = v55;
    v45 = v55;
    v15 = type metadata accessor for SettingsBinarySetting();
    v16 = v54;
    v17 = v45;
    v54[17] = v15;
    v16[14] = v17;
  }

  else
  {
    v34 = v54;
    v54[14] = 0;
    v34[15] = 0;
    v34[16] = 0;
    v34[17] = 0;
  }

  v38 = v54 + 20;
  v41 = 1;
  v18 = sub_268F9AEF4();
  v19 = v54;
  v54[18] = v18;
  v19[19] = v20;
  v40 = 0;
  v39 = type metadata accessor for GetSettingIntentSiriCannotChangeSettingParameters();
  sub_268D2A1F0((v47 + *(v39 + 28)), v49);
  v42 = sub_268F9A9C4();
  v43 = *(v42 - 8);
  v44 = v42 - 8;
  if ((*(v43 + 48))(v49, v41) == 1)
  {
    sub_268D28588(v49);
    v33 = v54;
    v54[20] = 0;
    v33[21] = 0;
    v33[22] = 0;
    v33[23] = 0;
  }

  else
  {
    v21 = v38;
    v54[23] = v42;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
    (*(v43 + 32))(boxed_opaque_existential_1, v49, v42);
  }

  v23 = sub_268F9AEF4();
  v24 = v54;
  v25 = v39;
  v26 = v47;
  v54[24] = v23;
  v24[25] = v27;
  v37 = *(v26 + *(v25 + 32));
  if (v37 == 2)
  {
    v32 = v54;
    v54[26] = 0;
    v32[27] = 0;
    v32[28] = 0;
    v32[29] = 0;
  }

  else
  {
    v36 = v37;
    v28 = v54;
    v29 = v37;
    v54[29] = MEMORY[0x277D839B0];
    *(v28 + 208) = v29 & 1;
  }

  v30 = v51;
  sub_268CD0F7C();
  v35[1] = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  return sub_268F9B4F4();
}

uint64_t sub_268E99838@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, const void *a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  *(a6 + 8) = a3;
  v10 = type metadata accessor for GetSettingIntentSiriCannotChangeSettingParameters();
  sub_268D84F40(a4, (a6 + *(v10 + 28)));
  result = v10;
  *(a6 + *(v10 + 32)) = a5;
  return result;
}

uint64_t type metadata accessor for GetSettingIntentDescribeBinarySettingStateParameters()
{
  v1 = qword_2802DDC68;
  if (!qword_2802DDC68)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_268E99950(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_268D2A1F0(v2, &v5 - v6);
  SettingIntentDescribeBinarySettingStateParameters = type metadata accessor for GetSettingIntentDescribeBinarySettingStateParameters();
  sub_268D29FC8(v7, (v1 + *(SettingIntentDescribeBinarySettingStateParameters + 20)));
  return sub_268D28588(v8);
}

uint64_t sub_268E99A00()
{
  v2 = *(v0 + *(type metadata accessor for GetSettingIntentDescribeBinarySettingStateParameters() + 24));

  return v2;
}

uint64_t sub_268E99A38(uint64_t a1)
{

  v2 = (v1 + *(type metadata accessor for GetSettingIntentDescribeBinarySettingStateParameters() + 24));
  v3 = *v2;
  *v2 = a1;
}

uint64_t sub_268E99AA8(unsigned int a1)
{
  SettingIntentDescribeBinarySettingStateParameters = type metadata accessor for GetSettingIntentDescribeBinarySettingStateParameters();
  result = a1;
  *(v1 + *(SettingIntentDescribeBinarySettingStateParameters + 28)) = a1;
  return result;
}

uint64_t sub_268E99B18(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_268D2A1F0(v2, &v5 - v6);
  SettingIntentDescribeBinarySettingStateParameters = type metadata accessor for GetSettingIntentDescribeBinarySettingStateParameters();
  sub_268D29FC8(v7, (v1 + *(SettingIntentDescribeBinarySettingStateParameters + 32)));
  return sub_268D28588(v8);
}

uint64_t sub_268E99C00(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_268D2A1F0(v2, &v5 - v6);
  SettingIntentDescribeBinarySettingStateParameters = type metadata accessor for GetSettingIntentDescribeBinarySettingStateParameters();
  sub_268D29FC8(v7, (v1 + *(SettingIntentDescribeBinarySettingStateParameters + 36)));
  return sub_268D28588(v8);
}

uint64_t sub_268E99CE8(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_268D2A1F0(v2, &v5 - v6);
  SettingIntentDescribeBinarySettingStateParameters = type metadata accessor for GetSettingIntentDescribeBinarySettingStateParameters();
  sub_268D29FC8(v7, (v1 + *(SettingIntentDescribeBinarySettingStateParameters + 40)));
  return sub_268D28588(v8);
}

uint64_t sub_268E99DD0(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_268D2A1F0(v2, &v5 - v6);
  SettingIntentDescribeBinarySettingStateParameters = type metadata accessor for GetSettingIntentDescribeBinarySettingStateParameters();
  sub_268D29FC8(v7, (v1 + *(SettingIntentDescribeBinarySettingStateParameters + 44)));
  return sub_268D28588(v8);
}

uint64_t sub_268E99EB8(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_268D2A1F0(v2, &v5 - v6);
  SettingIntentDescribeBinarySettingStateParameters = type metadata accessor for GetSettingIntentDescribeBinarySettingStateParameters();
  sub_268D29FC8(v7, (v1 + *(SettingIntentDescribeBinarySettingStateParameters + 48)));
  return sub_268D28588(v8);
}

uint64_t sub_268E99FA0(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_268D2A1F0(v2, &v5 - v6);
  SettingIntentDescribeBinarySettingStateParameters = type metadata accessor for GetSettingIntentDescribeBinarySettingStateParameters();
  sub_268D29FC8(v7, (v1 + *(SettingIntentDescribeBinarySettingStateParameters + 52)));
  return sub_268D28588(v8);
}

uint64_t sub_268E9A088(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_268D2A1F0(v2, &v5 - v6);
  SettingIntentDescribeBinarySettingStateParameters = type metadata accessor for GetSettingIntentDescribeBinarySettingStateParameters();
  sub_268D29FC8(v7, (v1 + *(SettingIntentDescribeBinarySettingStateParameters + 56)));
  return sub_268D28588(v8);
}

uint64_t sub_268E9A1B4(unsigned int a1)
{
  SettingIntentDescribeBinarySettingStateParameters = type metadata accessor for GetSettingIntentDescribeBinarySettingStateParameters();
  result = a1;
  *(v1 + *(SettingIntentDescribeBinarySettingStateParameters + 68)) = a1;
  return result;
}

uint64_t sub_268E9A1EC()
{
  v187 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  v166 = *(*(v1 - 8) + 64);
  v167 = (v166 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v168 = v131 - v167;
  v169 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v131 - v167);
  v170 = v131 - v169;
  v171 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v131 - v169);
  v172 = v131 - v171;
  v173 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v131 - v171);
  v174 = v131 - v173;
  v175 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v131 - v173);
  v176 = v131 - v175;
  v177 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v131 - v175);
  v178 = v131 - v177;
  v179 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v131 - v177);
  v180 = v131 - v179;
  v181 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v131 - v179);
  v182 = v131 - v181;
  v187 = v0;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  v184 = sub_268F9B734();
  v185 = v9;
  v10 = sub_268F9AEF4();
  v11 = v185;
  *v185 = v10;
  v11[1] = v12;
  v186 = *v0;

  if (v186)
  {
    v164 = v186;
    v163 = v186;
    v13 = sub_268F9AA44();
    v14 = v185;
    v15 = v163;
    v185[5] = v13;
    v14[2] = v15;
  }

  else
  {
    v130 = v185;
    v185[2] = 0;
    v130[3] = 0;
    v130[4] = 0;
    v130[5] = 0;
  }

  v154 = v185 + 8;
  v157 = 1;
  v16 = sub_268F9AEF4();
  v17 = v185;
  v185[6] = v16;
  v17[7] = v18;
  v156 = 0;
  SettingIntentDescribeBinarySettingStateParameters = type metadata accessor for GetSettingIntentDescribeBinarySettingStateParameters();
  sub_268D2A1F0((v165 + *(SettingIntentDescribeBinarySettingStateParameters + 20)), v182);
  v158 = sub_268F9A9C4();
  v159 = *(v158 - 8);
  v160 = v158 - 8;
  v161 = *(v159 + 48);
  v162 = v159 + 48;
  if (v161(v182, v157) == 1)
  {
    sub_268D28588(v182);
    v129 = v185;
    v185[8] = 0;
    v129[9] = 0;
    v129[10] = 0;
    v129[11] = 0;
  }

  else
  {
    v19 = v154;
    v185[11] = v158;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
    (*(v159 + 32))(boxed_opaque_existential_1, v182, v158);
  }

  v21 = sub_268F9AEF4();
  v22 = v185;
  v23 = SettingIntentDescribeBinarySettingStateParameters;
  v24 = v165;
  v185[12] = v21;
  v22[13] = v25;
  v153 = *(v24 + *(v23 + 24));

  if (v153)
  {
    v152 = v153;
    v151 = v153;
    v26 = type metadata accessor for SettingsBinarySetting();
    v27 = v185;
    v28 = v151;
    v185[17] = v26;
    v27[14] = v28;
  }

  else
  {
    v128 = v185;
    v185[14] = 0;
    v128[15] = 0;
    v128[16] = 0;
    v128[17] = 0;
  }

  v29 = sub_268F9AEF4();
  v30 = v185;
  v31 = SettingIntentDescribeBinarySettingStateParameters;
  v32 = v165;
  v185[18] = v29;
  v30[19] = v33;
  v150 = *(v32 + *(v31 + 28));
  if (v150 == 2)
  {
    v127 = v185;
    v185[20] = 0;
    v127[21] = 0;
    v127[22] = 0;
    v127[23] = 0;
  }

  else
  {
    v149 = v150;
    v34 = v185;
    v35 = v150;
    v185[23] = MEMORY[0x277D839B0];
    *(v34 + 160) = v35 & 1;
  }

  v147 = v185 + 26;
  v148 = 1;
  v36 = sub_268F9AEF4();
  v37 = v185;
  v38 = SettingIntentDescribeBinarySettingStateParameters;
  v39 = v165;
  v41 = v40;
  v42 = v180;
  v185[24] = v36;
  v37[25] = v41;
  sub_268D2A1F0((v39 + *(v38 + 32)), v42);
  if ((v161)(v180, v148, v158) == 1)
  {
    sub_268D28588(v180);
    v126 = v185;
    v185[26] = 0;
    v126[27] = 0;
    v126[28] = 0;
    v126[29] = 0;
  }

  else
  {
    v43 = v147;
    v185[29] = v158;
    v44 = __swift_allocate_boxed_opaque_existential_1(v43);
    (*(v159 + 32))(v44, v180, v158);
  }

  v145 = v185 + 32;
  v146 = 1;
  v45 = sub_268F9AEF4();
  v46 = v185;
  v47 = SettingIntentDescribeBinarySettingStateParameters;
  v48 = v165;
  v50 = v49;
  v51 = v178;
  v185[30] = v45;
  v46[31] = v50;
  sub_268D2A1F0((v48 + *(v47 + 36)), v51);
  if ((v161)(v178, v146, v158) == 1)
  {
    sub_268D28588(v178);
    v125 = v185;
    v185[32] = 0;
    v125[33] = 0;
    v125[34] = 0;
    v125[35] = 0;
  }

  else
  {
    v52 = v145;
    v185[35] = v158;
    v53 = __swift_allocate_boxed_opaque_existential_1(v52);
    (*(v159 + 32))(v53, v178, v158);
  }

  v143 = v185 + 38;
  v144 = 1;
  v54 = sub_268F9AEF4();
  v55 = v185;
  v56 = SettingIntentDescribeBinarySettingStateParameters;
  v57 = v165;
  v59 = v58;
  v60 = v176;
  v185[36] = v54;
  v55[37] = v59;
  sub_268D2A1F0((v57 + *(v56 + 40)), v60);
  if ((v161)(v176, v144, v158) == 1)
  {
    sub_268D28588(v176);
    v124 = v185;
    v185[38] = 0;
    v124[39] = 0;
    v124[40] = 0;
    v124[41] = 0;
  }

  else
  {
    v61 = v143;
    v185[41] = v158;
    v62 = __swift_allocate_boxed_opaque_existential_1(v61);
    (*(v159 + 32))(v62, v176, v158);
  }

  v141 = v185 + 44;
  v142 = 1;
  v63 = sub_268F9AEF4();
  v64 = v185;
  v65 = SettingIntentDescribeBinarySettingStateParameters;
  v66 = v165;
  v68 = v67;
  v69 = v174;
  v185[42] = v63;
  v64[43] = v68;
  sub_268D2A1F0((v66 + *(v65 + 56)), v69);
  if ((v161)(v174, v142, v158) == 1)
  {
    sub_268D28588(v174);
    v123 = v185;
    v185[44] = 0;
    v123[45] = 0;
    v123[46] = 0;
    v123[47] = 0;
  }

  else
  {
    v70 = v141;
    v185[47] = v158;
    v71 = __swift_allocate_boxed_opaque_existential_1(v70);
    (*(v159 + 32))(v71, v174, v158);
  }

  v140 = 1;
  v72 = sub_268F9AEF4();
  v73 = v185;
  v74 = SettingIntentDescribeBinarySettingStateParameters;
  v75 = v165;
  v185[48] = v72;
  v73[49] = v76;
  LOBYTE(v75) = *(v75 + *(v74 + 60));
  v138 = MEMORY[0x277D839B0];
  v73[53] = MEMORY[0x277D839B0];
  *(v73 + 400) = v75;
  v77 = sub_268F9AEF4();
  v78 = v138;
  v79 = v185;
  v80 = SettingIntentDescribeBinarySettingStateParameters;
  v81 = v165;
  v185[54] = v77;
  v79[55] = v82;
  LOBYTE(v81) = *(v81 + *(v80 + 64));
  v79[59] = v78;
  *(v79 + 448) = v81;
  v139 = v79 + 62;
  v83 = sub_268F9AEF4();
  v84 = v185;
  v85 = SettingIntentDescribeBinarySettingStateParameters;
  v86 = v165;
  v88 = v87;
  v89 = v172;
  v185[60] = v83;
  v84[61] = v88;
  sub_268D2A1F0((v86 + *(v85 + 44)), v89);
  if ((v161)(v172, v140, v158) == 1)
  {
    sub_268D28588(v172);
    v122 = v185;
    v185[62] = 0;
    v122[63] = 0;
    v122[64] = 0;
    v122[65] = 0;
  }

  else
  {
    v90 = v139;
    v185[65] = v158;
    v91 = __swift_allocate_boxed_opaque_existential_1(v90);
    (*(v159 + 32))(v91, v172, v158);
  }

  v136 = v185 + 68;
  v137 = 1;
  v92 = sub_268F9AEF4();
  v93 = v185;
  v94 = SettingIntentDescribeBinarySettingStateParameters;
  v95 = v165;
  v97 = v96;
  v98 = v170;
  v185[66] = v92;
  v93[67] = v97;
  sub_268D2A1F0((v95 + *(v94 + 48)), v98);
  if ((v161)(v170, v137, v158) == 1)
  {
    sub_268D28588(v170);
    v121 = v185;
    v185[68] = 0;
    v121[69] = 0;
    v121[70] = 0;
    v121[71] = 0;
  }

  else
  {
    v99 = v136;
    v185[71] = v158;
    v100 = __swift_allocate_boxed_opaque_existential_1(v99);
    (*(v159 + 32))(v100, v170, v158);
  }

  v134 = v185 + 74;
  v135 = 1;
  v101 = sub_268F9AEF4();
  v102 = v185;
  v103 = SettingIntentDescribeBinarySettingStateParameters;
  v104 = v165;
  v106 = v105;
  v107 = v168;
  v185[72] = v101;
  v102[73] = v106;
  sub_268D2A1F0((v104 + *(v103 + 52)), v107);
  if ((v161)(v168, v135, v158) == 1)
  {
    sub_268D28588(v168);
    v120 = v185;
    v185[74] = 0;
    v120[75] = 0;
    v120[76] = 0;
    v120[77] = 0;
  }

  else
  {
    v108 = v134;
    v185[77] = v158;
    v109 = __swift_allocate_boxed_opaque_existential_1(v108);
    (*(v159 + 32))(v109, v168, v158);
  }

  v110 = sub_268F9AEF4();
  v111 = v185;
  v112 = SettingIntentDescribeBinarySettingStateParameters;
  v113 = v165;
  v185[78] = v110;
  v111[79] = v114;
  v133 = *(v113 + *(v112 + 68));
  if (v133 == 2)
  {
    v119 = v185;
    v185[80] = 0;
    v119[81] = 0;
    v119[82] = 0;
    v119[83] = 0;
  }

  else
  {
    v132 = v133;
    v115 = v185;
    v116 = v133;
    v185[83] = MEMORY[0x277D839B0];
    *(v115 + 640) = v116 & 1;
  }

  v117 = v184;
  sub_268CD0F7C();
  v131[1] = v117;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  return sub_268F9B4F4();
}

int *sub_268E9AFB0@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, const void *a5@<X4>, const void *a6@<X5>, const void *a7@<X6>, const void *a8@<X7>, void *a9@<X8>, const void *a10, const void *a11, const void *a12, char a13, char a14, char a15)
{
  *a9 = a1;
  SettingIntentDescribeBinarySettingStateParameters = type metadata accessor for GetSettingIntentDescribeBinarySettingStateParameters();
  sub_268D84F40(a2, a9 + SettingIntentDescribeBinarySettingStateParameters[5]);
  *(a9 + SettingIntentDescribeBinarySettingStateParameters[6]) = a3;
  *(a9 + SettingIntentDescribeBinarySettingStateParameters[7]) = a4;
  sub_268D84F40(a5, a9 + SettingIntentDescribeBinarySettingStateParameters[8]);
  sub_268D84F40(a6, a9 + SettingIntentDescribeBinarySettingStateParameters[9]);
  sub_268D84F40(a7, a9 + SettingIntentDescribeBinarySettingStateParameters[10]);
  sub_268D84F40(a8, a9 + SettingIntentDescribeBinarySettingStateParameters[11]);
  sub_268D84F40(a10, a9 + SettingIntentDescribeBinarySettingStateParameters[12]);
  sub_268D84F40(a11, a9 + SettingIntentDescribeBinarySettingStateParameters[13]);
  sub_268D84F40(a12, a9 + SettingIntentDescribeBinarySettingStateParameters[14]);
  result = SettingIntentDescribeBinarySettingStateParameters;
  *(a9 + SettingIntentDescribeBinarySettingStateParameters[15]) = a13;
  *(a9 + SettingIntentDescribeBinarySettingStateParameters[16]) = a14;
  *(a9 + SettingIntentDescribeBinarySettingStateParameters[17]) = a15;
  return result;
}

uint64_t sub_268E9B140(uint64_t a1)
{

  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t type metadata accessor for GetSettingIntentDescribeNumericSettingStateSpokenOnlyParameters()
{
  v1 = qword_2802DDC78;
  if (!qword_2802DDC78)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_268E9B228(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_268D2A1F0(v2, &v5 - v6);
  SettingIntentDescribeNumericSettingStateSpokenOnlyParameters = type metadata accessor for GetSettingIntentDescribeNumericSettingStateSpokenOnlyParameters();
  sub_268D29FC8(v7, (v1 + *(SettingIntentDescribeNumericSettingStateSpokenOnlyParameters + 28)));
  return sub_268D28588(v8);
}

uint64_t sub_268E9B2D8()
{
  v57 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  v51 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v52 = v35 - v51;
  v57 = v0;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  v54 = sub_268F9B734();
  v55 = v2;
  v3 = sub_268F9AEF4();
  v4 = v55;
  *v55 = v3;
  v4[1] = v5;
  v56 = *v0;

  if (v56)
  {
    v49 = v56;
    v48 = v56;
    v6 = type metadata accessor for SettingsNumericSettingAction();
    v7 = v55;
    v8 = v48;
    v55[5] = v6;
    v7[2] = v8;
  }

  else
  {
    v34 = v55;
    v55[2] = 0;
    v34[3] = 0;
    v34[4] = 0;
    v34[5] = 0;
  }

  v9 = sub_268F9AEF4();
  v10 = v55;
  v11 = v50;
  v55[6] = v9;
  v10[7] = v12;
  v47 = *(v11 + 8);

  if (v47)
  {
    v46 = v47;
    v45 = v47;
    v13 = sub_268F9AA44();
    v14 = v55;
    v15 = v45;
    v55[11] = v13;
    v14[8] = v15;
  }

  else
  {
    v33 = v55;
    v55[8] = 0;
    v33[9] = 0;
    v33[10] = 0;
    v33[11] = 0;
  }

  v16 = sub_268F9AEF4();
  v17 = v55;
  v18 = v50;
  v55[12] = v16;
  v17[13] = v19;
  v44 = *(v18 + 16);

  if (v44)
  {
    v43 = v44;
    v42 = v44;
    v20 = type metadata accessor for SettingsNumericSetting();
    v21 = v55;
    v22 = v42;
    v55[17] = v20;
    v21[14] = v22;
  }

  else
  {
    v32 = v55;
    v55[14] = 0;
    v32[15] = 0;
    v32[16] = 0;
    v32[17] = 0;
  }

  v36 = v55 + 20;
  v38 = 1;
  v23 = sub_268F9AEF4();
  v24 = v55;
  v55[18] = v23;
  v24[19] = v25;
  v37 = 0;
  SettingIntentDescribeNumericSettingStateSpokenOnlyParameters = type metadata accessor for GetSettingIntentDescribeNumericSettingStateSpokenOnlyParameters();
  sub_268D2A1F0((v50 + *(SettingIntentDescribeNumericSettingStateSpokenOnlyParameters + 28)), v52);
  v39 = sub_268F9A9C4();
  v40 = *(v39 - 8);
  v41 = v39 - 8;
  if ((*(v40 + 48))(v52, v38) == 1)
  {
    sub_268D28588(v52);
    v31 = v55;
    v55[20] = 0;
    v31[21] = 0;
    v31[22] = 0;
    v31[23] = 0;
  }

  else
  {
    v27 = v36;
    v55[23] = v39;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
    (*(v40 + 32))(boxed_opaque_existential_1, v52, v39);
  }

  v29 = v54;
  sub_268CD0F7C();
  v35[1] = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  return sub_268F9B4F4();
}

char *sub_268E9B680@<X0>(char *a1@<X8>)
{
  v9 = a1;
  v10 = 0;
  v5 = 0;
  v6 = (*(*(type metadata accessor for GetSettingIntentDescribeNumericSettingStateSpokenOnlyParameters() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v1 = &v5 - v6;
  v8 = v1;
  v10 = &v5 - v6;
  *v1 = 0;
  *(v1 + 1) = 0;
  *(v1 + 2) = 0;
  v7 = *(v2 + 28);
  v3 = sub_268F9A9C4();
  (*(*(v3 - 8) + 56))(&v8[v7], 1);
  return sub_268EA2DE4(v8, v9);
}

uint64_t sub_268E9B770(uint64_t a1)
{

  v2 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t type metadata accessor for GetSettingIntentDescribeNumericSettingStateParameters()
{
  v1 = qword_2802DDC90;
  if (!qword_2802DDC90)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_268E9B864(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_268D2A1F0(v2, &v5 - v6);
  SettingIntentDescribeNumericSettingStateParameters = type metadata accessor for GetSettingIntentDescribeNumericSettingStateParameters();
  sub_268D29FC8(v7, (v1 + *(SettingIntentDescribeNumericSettingStateParameters + 40)));
  return sub_268D28588(v8);
}

uint64_t sub_268E9B914()
{
  v72 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  v66 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v67 = v48 - v66;
  v72 = v0;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  v69 = sub_268F9B734();
  v70 = v2;
  v3 = sub_268F9AEF4();
  v4 = v70;
  *v70 = v3;
  v4[1] = v5;
  v71 = *v0;

  if (v71)
  {
    v64 = v71;
    v63 = v71;
    v6 = type metadata accessor for SettingsNumericSettingAction();
    v7 = v70;
    v8 = v63;
    v70[5] = v6;
    v7[2] = v8;
  }

  else
  {
    v47 = v70;
    v70[2] = 0;
    v47[3] = 0;
    v47[4] = 0;
    v47[5] = 0;
  }

  v9 = sub_268F9AEF4();
  v10 = v70;
  v11 = v65;
  v70[6] = v9;
  v10[7] = v12;
  v62 = *(v11 + 8);

  if (v62)
  {
    v61 = v62;
    v60 = v62;
    v13 = sub_268F9AA44();
    v14 = v70;
    v15 = v60;
    v70[11] = v13;
    v14[8] = v15;
  }

  else
  {
    v46 = v70;
    v70[8] = 0;
    v46[9] = 0;
    v46[10] = 0;
    v46[11] = 0;
  }

  v58 = 1;
  v16 = sub_268F9AEF4();
  v17 = v70;
  v18 = v65;
  v70[12] = v16;
  v17[13] = v19;
  LOBYTE(v18) = *(v18 + 16);
  v57 = MEMORY[0x277D839B0];
  v17[17] = MEMORY[0x277D839B0];
  *(v17 + 112) = v18;
  v20 = sub_268F9AEF4();
  v21 = v57;
  v22 = v70;
  v23 = v65;
  v70[18] = v20;
  v22[19] = v24;
  LOBYTE(v23) = *(v23 + 17);
  v22[23] = v21;
  *(v22 + 160) = v23;
  v25 = sub_268F9AEF4();
  v26 = v70;
  v27 = v65;
  v70[24] = v25;
  v26[25] = v28;
  v59 = *(v27 + 24);

  if (v59)
  {
    v56 = v59;
    v55 = v59;
    v29 = type metadata accessor for SettingsNumericSetting();
    v30 = v70;
    v31 = v55;
    v70[29] = v29;
    v30[26] = v31;
  }

  else
  {
    v45 = v70;
    v70[26] = 0;
    v45[27] = 0;
    v45[28] = 0;
    v45[29] = 0;
  }

  v51 = 1;
  v32 = sub_268F9AEF4();
  v33 = v70;
  v34 = v65;
  v70[30] = v32;
  v33[31] = v35;
  LOBYTE(v34) = *(v34 + 32);
  v33[35] = MEMORY[0x277D839B0];
  *(v33 + 256) = v34;
  v49 = v33 + 38;
  v36 = sub_268F9AEF4();
  v37 = v70;
  v70[36] = v36;
  v37[37] = v38;
  v50 = 0;
  SettingIntentDescribeNumericSettingStateParameters = type metadata accessor for GetSettingIntentDescribeNumericSettingStateParameters();
  sub_268D2A1F0((v65 + *(SettingIntentDescribeNumericSettingStateParameters + 40)), v67);
  v52 = sub_268F9A9C4();
  v53 = *(v52 - 8);
  v54 = v52 - 8;
  if ((*(v53 + 48))(v67, v51) == 1)
  {
    sub_268D28588(v67);
    v44 = v70;
    v70[38] = 0;
    v44[39] = 0;
    v44[40] = 0;
    v44[41] = 0;
  }

  else
  {
    v40 = v49;
    v70[41] = v52;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v40);
    (*(v53 + 32))(boxed_opaque_existential_1, v67, v52);
  }

  v42 = v69;
  sub_268CD0F7C();
  v48[1] = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  return sub_268F9B4F4();
}

void *sub_268E9BD7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, const void *a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 17) = a4;
  *(a8 + 24) = a5;
  *(a8 + 32) = a6;
  SettingIntentDescribeNumericSettingStateParameters = type metadata accessor for GetSettingIntentDescribeNumericSettingStateParameters();
  return sub_268D84F40(a7, (a8 + *(SettingIntentDescribeNumericSettingStateParameters + 40)));
}

uint64_t sub_268E9BDD8(uint64_t a1, uint64_t a2)
{
  v3[8] = v2;
  v3[7] = a2;
  v3[6] = a1;
  v3[4] = v3;
  v3[2] = 0;
  v3[3] = 0;
  v3[5] = 0;
  v6 = *(*(type metadata accessor for GetSettingIntentTargetDeviceNotFoundReadBatteryParameters() - 8) + 64);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[2] = a1;
  v3[3] = a2;
  v3[5] = v2;
  v4 = v3[4];

  return MEMORY[0x2822009F8](sub_268E9BEE4, 0);
}

uint64_t sub_268E9BEE4()
{
  v11 = MEMORY[0x277D55BE8];
  v1 = v0[10];
  v9 = v1;
  v10 = v0[9];
  v2 = v0[7];
  v8 = v0[6];
  v0[4] = v0;
  sub_268E97A84(v1);
  v8(v9);
  v16 = sub_268F9AEF4();
  v13 = v3;
  v0[11] = v3;
  sub_268D2A1F0(v9, v10);
  v14 = sub_268E97898();
  v0[12] = v14;
  sub_268D28588(v10);
  v15 = (v11 + *v11);
  v4 = v11[1];
  v5 = swift_task_alloc();
  v12[13] = v5;
  *v5 = v12[4];
  v5[1] = sub_268E9C044;
  v6 = v12[8];

  return v15(v16, v13, v14);
}

uint64_t sub_268E9C044(uint64_t a1)
{
  v11 = *v2;
  v4 = *(*v2 + 104);
  v11[4] = *v2;
  v12 = v11 + 4;
  v11[14] = a1;
  v11[15] = v1;

  if (v1)
  {
    v8 = *v12;
    v7 = sub_268E9C298;
  }

  else
  {
    v5 = v11[12];
    v10 = v11[11];

    v6 = *v12;
    v7 = sub_268E9C1D8;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268E9C1D8()
{
  v1 = v0[10];
  v7 = v0[9];
  v0[4] = v0;
  sub_268D28588(v1);

  v2 = v0;
  v3 = *(v0[4] + 8);
  v4 = v0[4];
  v5 = v2[14];

  return v3(v5);
}

uint64_t sub_268E9C298()
{
  v1 = v0[12];
  v7 = v0[11];
  v8 = v0[10];
  v9 = v0[9];
  v0[4] = v0;

  sub_268D28588(v8);

  v2 = v0;
  v3 = *(v0[4] + 8);
  v4 = v0[4];
  v5 = v2[15];

  return v3();
}

uint64_t type metadata accessor for GetSettingIntentTargetDeviceNotFoundReadBatteryParameters()
{
  v1 = qword_2802DDC38;
  if (!qword_2802DDC38)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_268E9C3E8(char a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 64) = v4;
  *(v5 + 56) = a4;
  *(v5 + 48) = a3;
  *(v5 + 194) = a2 & 1;
  *(v5 + 193) = a1 & 1;
  *(v5 + 32) = v5;
  *(v5 + 192) = 0;
  *(v5 + 200) = 0;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 40) = 0;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64);
  *(v5 + 72) = swift_task_alloc();
  *(v5 + 80) = swift_task_alloc();
  *(v5 + 88) = swift_task_alloc();
  *(v5 + 96) = swift_task_alloc();
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 112) = swift_task_alloc();
  *(v5 + 120) = swift_task_alloc();
  *(v5 + 128) = swift_task_alloc();
  v9 = *(*(type metadata accessor for GetSettingIntentDescribeMultiSettingStateParameters() - 8) + 64);
  *(v5 + 136) = swift_task_alloc();
  *(v5 + 144) = swift_task_alloc();
  *(v5 + 192) = a1 & 1;
  *(v5 + 200) = a2 & 1;
  *(v5 + 16) = a3;
  *(v5 + 24) = a4;
  *(v5 + 40) = v4;
  v6 = *(v5 + 32);

  return MEMORY[0x2822009F8](sub_268E9C62C, 0);
}

uint64_t sub_268E9C62C()
{
  v22 = MEMORY[0x277D55BE8];
  v20 = *(v0 + 144);
  v21 = *(v0 + 136);
  v14 = *(v0 + 128);
  v15 = *(v0 + 120);
  v16 = *(v0 + 112);
  v17 = *(v0 + 104);
  v18 = *(v0 + 96);
  v9 = *(v0 + 88);
  v10 = *(v0 + 80);
  v11 = *(v0 + 72);
  v1 = *(v0 + 56);
  v19 = *(v0 + 48);
  v13 = *(v0 + 194);
  v12 = *(v0 + 193);
  *(v0 + 32) = v0;
  v7 = sub_268F9A9C4();
  v8 = *(*(v7 - 8) + 56);
  v8(v14, 1);
  (v8)(v15, 1, 1, v7);
  (v8)(v16, 1, 1, v7);
  (v8)(v17, 1, 1, v7);
  (v8)(v18, 1, 1, v7);
  (v8)(v9, 1, 1, v7);
  (v8)(v10, 1, 1, v7);
  (v8)(v11, 1, 1, v7);
  sub_268E99160(0, v14, 0, 2, v15, v16, v17, v18, v20, v9, v10, v11, v12, v13);
  v19(v20);
  v27 = sub_268F9AEF4();
  v24 = v2;
  *(v0 + 152) = v2;
  sub_268E9CDC4(v20, v21);
  v25 = sub_268E98440();
  *(v0 + 160) = v25;
  sub_268E9D6B8(v21);
  v26 = (v22 + *v22);
  v3 = v22[1];
  v4 = swift_task_alloc();
  v23[21] = v4;
  *v4 = v23[4];
  v4[1] = sub_268E9C984;
  v5 = v23[8];

  return v26(v27, v24, v25);
}

uint64_t sub_268E9C984(uint64_t a1)
{
  v11 = *v2;
  v4 = *(*v2 + 168);
  v11[4] = *v2;
  v12 = v11 + 4;
  v11[22] = a1;
  v11[23] = v1;

  if (v1)
  {
    v8 = *v12;
    v7 = sub_268E9CC60;
  }

  else
  {
    v5 = v11[20];
    v10 = v11[19];

    v6 = *v12;
    v7 = sub_268E9CB18;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268E9CB18()
{
  v1 = v0[18];
  v7 = v0[17];
  v8 = v0[16];
  v9 = v0[15];
  v10 = v0[14];
  v11 = v0[13];
  v12 = v0[12];
  v13 = v0[11];
  v14 = v0[10];
  v15 = v0[9];
  v0[4] = v0;
  sub_268E9D6B8(v1);

  v2 = v0;
  v3 = *(v0[4] + 8);
  v4 = v0[4];
  v5 = v2[22];

  return v3(v5);
}

uint64_t sub_268E9CC60()
{
  v1 = v0[20];
  v7 = v0[19];
  v8 = v0[18];
  v9 = v0[17];
  v10 = v0[16];
  v11 = v0[15];
  v12 = v0[14];
  v13 = v0[13];
  v14 = v0[12];
  v15 = v0[11];
  v16 = v0[10];
  v17 = v0[9];
  v0[4] = v0;

  sub_268E9D6B8(v8);

  v2 = v0;
  v3 = *(v0[4] + 8);
  v4 = v0[4];
  v5 = v2[23];

  return v3();
}

char *sub_268E9CDC4(void *a1, char *a2)
{
  v28 = *a1;

  *a2 = v28;
  SettingIntentDescribeMultiSettingStateParameters = type metadata accessor for GetSettingIntentDescribeMultiSettingStateParameters();
  v30 = SettingIntentDescribeMultiSettingStateParameters[5];
  v32 = sub_268F9A9C4();
  v33 = *(v32 - 8);
  v34 = *(v33 + 48);
  if ((v34)(a1 + v30, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(&a2[v30], a1 + v30, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v33 + 16))();
    (*(v33 + 56))(&a2[v30], 0, 1, v32);
  }

  v23 = SettingIntentDescribeMultiSettingStateParameters[6];
  v24 = *(a1 + v23);

  *&a2[v23] = v24;
  a2[SettingIntentDescribeMultiSettingStateParameters[7]] = *(a1 + SettingIntentDescribeMultiSettingStateParameters[7]);
  __dst = &a2[SettingIntentDescribeMultiSettingStateParameters[8]];
  __src = a1 + SettingIntentDescribeMultiSettingStateParameters[8];
  if (v34())
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(__dst, __src, *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v33 + 16))(__dst, __src, v32);
    (*(v33 + 56))(__dst, 0, 1, v32);
  }

  v21 = &a2[SettingIntentDescribeMultiSettingStateParameters[9]];
  v22 = a1 + SettingIntentDescribeMultiSettingStateParameters[9];
  if (v34())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v21, v22, *(*(v4 - 8) + 64));
  }

  else
  {
    (*(v33 + 16))(v21, v22, v32);
    (*(v33 + 56))(v21, 0, 1, v32);
  }

  v19 = &a2[SettingIntentDescribeMultiSettingStateParameters[10]];
  v20 = a1 + SettingIntentDescribeMultiSettingStateParameters[10];
  if (v34())
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v19, v20, *(*(v5 - 8) + 64));
  }

  else
  {
    (*(v33 + 16))(v19, v20, v32);
    (*(v33 + 56))(v19, 0, 1, v32);
  }

  v17 = &a2[SettingIntentDescribeMultiSettingStateParameters[11]];
  v18 = a1 + SettingIntentDescribeMultiSettingStateParameters[11];
  if (v34())
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v17, v18, *(*(v6 - 8) + 64));
  }

  else
  {
    (*(v33 + 16))(v17, v18, v32);
    (*(v33 + 56))(v17, 0, 1, v32);
  }

  v15 = &a2[SettingIntentDescribeMultiSettingStateParameters[12]];
  v16 = a1 + SettingIntentDescribeMultiSettingStateParameters[12];
  if (v34())
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v15, v16, *(*(v7 - 8) + 64));
  }

  else
  {
    (*(v33 + 16))(v15, v16, v32);
    (*(v33 + 56))(v15, 0, 1, v32);
  }

  v13 = &a2[SettingIntentDescribeMultiSettingStateParameters[13]];
  v14 = a1 + SettingIntentDescribeMultiSettingStateParameters[13];
  if (v34())
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v13, v14, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v33 + 16))(v13, v14, v32);
    (*(v33 + 56))(v13, 0, 1, v32);
  }

  v11 = &a2[SettingIntentDescribeMultiSettingStateParameters[14]];
  v12 = a1 + SettingIntentDescribeMultiSettingStateParameters[14];
  if (v34())
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v11, v12, *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v33 + 16))(v11, v12, v32);
    (*(v33 + 56))(v11, 0, 1, v32);
  }

  result = a2;
  a2[SettingIntentDescribeMultiSettingStateParameters[15]] = *(a1 + SettingIntentDescribeMultiSettingStateParameters[15]);
  a2[SettingIntentDescribeMultiSettingStateParameters[16]] = *(a1 + SettingIntentDescribeMultiSettingStateParameters[16]);
  return result;
}

char *sub_268E9D6B8(char *a1)
{
  v1 = *a1;

  SettingIntentDescribeMultiSettingStateParameters = type metadata accessor for GetSettingIntentDescribeMultiSettingStateParameters();
  v12 = SettingIntentDescribeMultiSettingStateParameters[5];
  v14 = sub_268F9A9C4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  if (!(v16)(&a1[v12], 1))
  {
    (*(v15 + 8))(&a1[v12], v14);
  }

  v2 = *&a1[SettingIntentDescribeMultiSettingStateParameters[6]];

  v10 = &a1[SettingIntentDescribeMultiSettingStateParameters[8]];
  if (!v16())
  {
    (*(v15 + 8))(v10, v14);
  }

  v9 = &a1[SettingIntentDescribeMultiSettingStateParameters[9]];
  if (!v16())
  {
    (*(v15 + 8))(v9, v14);
  }

  v8 = &a1[SettingIntentDescribeMultiSettingStateParameters[10]];
  if (!v16())
  {
    (*(v15 + 8))(v8, v14);
  }

  v7 = &a1[SettingIntentDescribeMultiSettingStateParameters[11]];
  if (!v16())
  {
    (*(v15 + 8))(v7, v14);
  }

  v6 = &a1[SettingIntentDescribeMultiSettingStateParameters[12]];
  if (!v16())
  {
    (*(v15 + 8))(v6, v14);
  }

  v5 = &a1[SettingIntentDescribeMultiSettingStateParameters[13]];
  if (!v16())
  {
    (*(v15 + 8))(v5, v14);
  }

  v4 = &a1[SettingIntentDescribeMultiSettingStateParameters[14]];
  if (!v16())
  {
    (*(v15 + 8))(v4, v14);
  }

  return a1;
}

uint64_t sub_268E9DAA4(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 64) = v3;
  *(v4 + 56) = a3;
  *(v4 + 48) = a2;
  *(v4 + 137) = a1 & 1;
  *(v4 + 32) = v4;
  *(v4 + 136) = 0;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 40) = 0;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15;
  *(v4 + 72) = swift_task_alloc();
  v8 = *(*(type metadata accessor for GetSettingIntentSiriCannotChangeSettingParameters() - 8) + 64);
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = swift_task_alloc();
  *(v4 + 136) = a1 & 1;
  *(v4 + 16) = a2;
  *(v4 + 24) = a3;
  *(v4 + 40) = v3;
  v6 = *(v4 + 32);

  return MEMORY[0x2822009F8](sub_268E9DC28, 0);
}

uint64_t sub_268E9DC28()
{
  v14 = MEMORY[0x277D55BE8];
  v12 = *(v0 + 88);
  v13 = *(v0 + 80);
  v10 = *(v0 + 72);
  v1 = *(v0 + 56);
  v11 = *(v0 + 48);
  v9 = *(v0 + 137);
  *(v0 + 32) = v0;
  v2 = sub_268F9A9C4();
  (*(*(v2 - 8) + 56))(v10, 1);
  v3 = sub_268CDD6D4();
  sub_268E99838(v9 & 1, v3 & 1, 0, v10, 2, v12);
  v11(v12);
  v19 = sub_268F9AEF4();
  v16 = v4;
  *(v0 + 96) = v4;
  sub_268E9E160(v12, v13);
  v17 = sub_268E99490();
  *(v0 + 104) = v17;
  sub_268E9E320(v13);
  v18 = (v14 + *v14);
  v5 = v14[1];
  v6 = swift_task_alloc();
  v15[14] = v6;
  *v6 = v15[4];
  v6[1] = sub_268E9DE08;
  v7 = v15[8];

  return v18(v19, v16, v17);
}

uint64_t sub_268E9DE08(uint64_t a1)
{
  v11 = *v2;
  v4 = *(*v2 + 112);
  v11[4] = *v2;
  v12 = v11 + 4;
  v11[15] = a1;
  v11[16] = v1;

  if (v1)
  {
    v8 = *v12;
    v7 = sub_268E9E070;
  }

  else
  {
    v5 = v11[13];
    v10 = v11[12];

    v6 = *v12;
    v7 = sub_268E9DF9C;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268E9DF9C()
{
  v1 = v0[11];
  v7 = v0[10];
  v8 = v0[9];
  v0[4] = v0;
  sub_268E9E320(v1);

  v2 = v0;
  v3 = *(v0[4] + 8);
  v4 = v0[4];
  v5 = v2[15];

  return v3(v5);
}

uint64_t sub_268E9E070()
{
  v1 = v0[13];
  v7 = v0[12];
  v8 = v0[11];
  v9 = v0[10];
  v10 = v0[9];
  v0[4] = v0;

  sub_268E9E320(v8);

  v2 = v0;
  v3 = *(v0[4] + 8);
  v4 = v0[4];
  v5 = v2[16];

  return v3();
}

uint64_t sub_268E9E160(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 1) = *(a1 + 1);
  v5 = *(a1 + 8);

  *(a2 + 8) = v5;
  v6 = type metadata accessor for GetSettingIntentSiriCannotChangeSettingParameters();
  v7 = *(v6 + 28);
  v9 = sub_268F9A9C4();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(a1 + v7, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy((a2 + v7), (a1 + v7), *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v10 + 16))();
    (*(v10 + 56))(a2 + v7, 0, 1, v9);
  }

  result = a2;
  *(a2 + *(v6 + 32)) = *(a1 + *(v6 + 32));
  return result;
}

uint64_t sub_268E9E320(uint64_t a1)
{
  v1 = *(a1 + 8);

  v3 = *(type metadata accessor for GetSettingIntentSiriCannotChangeSettingParameters() + 28);
  v5 = sub_268F9A9C4();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(a1 + v3, 1))
  {
    (*(v6 + 8))(a1 + v3, v5);
  }

  return a1;
}

uint64_t sub_268E9E3F8(char a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 64) = v4;
  *(v5 + 56) = a4;
  *(v5 + 48) = a3;
  *(v5 + 194) = a2 & 1;
  *(v5 + 193) = a1 & 1;
  *(v5 + 32) = v5;
  *(v5 + 192) = 0;
  *(v5 + 200) = 0;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 40) = 0;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64);
  *(v5 + 72) = swift_task_alloc();
  *(v5 + 80) = swift_task_alloc();
  *(v5 + 88) = swift_task_alloc();
  *(v5 + 96) = swift_task_alloc();
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 112) = swift_task_alloc();
  *(v5 + 120) = swift_task_alloc();
  *(v5 + 128) = swift_task_alloc();
  v9 = *(*(type metadata accessor for GetSettingIntentDescribeBinarySettingStateParameters() - 8) + 64);
  *(v5 + 136) = swift_task_alloc();
  *(v5 + 144) = swift_task_alloc();
  *(v5 + 192) = a1 & 1;
  *(v5 + 200) = a2 & 1;
  *(v5 + 16) = a3;
  *(v5 + 24) = a4;
  *(v5 + 40) = v4;
  v6 = *(v5 + 32);

  return MEMORY[0x2822009F8](sub_268E9E63C, 0);
}

uint64_t sub_268E9E63C()
{
  v22 = MEMORY[0x277D55BE8];
  v20 = *(v0 + 144);
  v21 = *(v0 + 136);
  v14 = *(v0 + 128);
  v15 = *(v0 + 120);
  v16 = *(v0 + 112);
  v17 = *(v0 + 104);
  v18 = *(v0 + 96);
  v9 = *(v0 + 88);
  v10 = *(v0 + 80);
  v11 = *(v0 + 72);
  v1 = *(v0 + 56);
  v19 = *(v0 + 48);
  v13 = *(v0 + 194);
  v12 = *(v0 + 193);
  *(v0 + 32) = v0;
  v7 = sub_268F9A9C4();
  v8 = *(*(v7 - 8) + 56);
  v8(v14, 1);
  (v8)(v15, 1, 1, v7);
  (v8)(v16, 1, 1, v7);
  (v8)(v17, 1, 1, v7);
  (v8)(v18, 1, 1, v7);
  (v8)(v9, 1, 1, v7);
  (v8)(v10, 1, 1, v7);
  (v8)(v11, 1, 1, v7);
  sub_268E9AFB0(0, v14, 0, 2, v15, v16, v17, v18, v20, v9, v10, v11, v12, v13, 2);
  v19(v20);
  v27 = sub_268F9AEF4();
  v24 = v2;
  *(v0 + 152) = v2;
  sub_268E9EDDC(v20, v21);
  v25 = sub_268E9A1EC();
  *(v0 + 160) = v25;
  sub_268E9F6F0(v21);
  v26 = (v22 + *v22);
  v3 = v22[1];
  v4 = swift_task_alloc();
  v23[21] = v4;
  *v4 = v23[4];
  v4[1] = sub_268E9E99C;
  v5 = v23[8];

  return v26(v27, v24, v25);
}

uint64_t sub_268E9E99C(uint64_t a1)
{
  v11 = *v2;
  v4 = *(*v2 + 168);
  v11[4] = *v2;
  v12 = v11 + 4;
  v11[22] = a1;
  v11[23] = v1;

  if (v1)
  {
    v8 = *v12;
    v7 = sub_268E9EC78;
  }

  else
  {
    v5 = v11[20];
    v10 = v11[19];

    v6 = *v12;
    v7 = sub_268E9EB30;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268E9EB30()
{
  v1 = v0[18];
  v7 = v0[17];
  v8 = v0[16];
  v9 = v0[15];
  v10 = v0[14];
  v11 = v0[13];
  v12 = v0[12];
  v13 = v0[11];
  v14 = v0[10];
  v15 = v0[9];
  v0[4] = v0;
  sub_268E9F6F0(v1);

  v2 = v0;
  v3 = *(v0[4] + 8);
  v4 = v0[4];
  v5 = v2[22];

  return v3(v5);
}

uint64_t sub_268E9EC78()
{
  v1 = v0[20];
  v7 = v0[19];
  v8 = v0[18];
  v9 = v0[17];
  v10 = v0[16];
  v11 = v0[15];
  v12 = v0[14];
  v13 = v0[13];
  v14 = v0[12];
  v15 = v0[11];
  v16 = v0[10];
  v17 = v0[9];
  v0[4] = v0;

  sub_268E9F6F0(v8);

  v2 = v0;
  v3 = *(v0[4] + 8);
  v4 = v0[4];
  v5 = v2[23];

  return v3();
}

char *sub_268E9EDDC(void *a1, char *a2)
{
  v28 = *a1;

  *a2 = v28;
  SettingIntentDescribeBinarySettingStateParameters = type metadata accessor for GetSettingIntentDescribeBinarySettingStateParameters();
  v30 = SettingIntentDescribeBinarySettingStateParameters[5];
  v32 = sub_268F9A9C4();
  v33 = *(v32 - 8);
  v34 = *(v33 + 48);
  if ((v34)(a1 + v30, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(&a2[v30], a1 + v30, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v33 + 16))();
    (*(v33 + 56))(&a2[v30], 0, 1, v32);
  }

  v23 = SettingIntentDescribeBinarySettingStateParameters[6];
  v24 = *(a1 + v23);

  *&a2[v23] = v24;
  a2[SettingIntentDescribeBinarySettingStateParameters[7]] = *(a1 + SettingIntentDescribeBinarySettingStateParameters[7]);
  __dst = &a2[SettingIntentDescribeBinarySettingStateParameters[8]];
  __src = a1 + SettingIntentDescribeBinarySettingStateParameters[8];
  if (v34())
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(__dst, __src, *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v33 + 16))(__dst, __src, v32);
    (*(v33 + 56))(__dst, 0, 1, v32);
  }

  v21 = &a2[SettingIntentDescribeBinarySettingStateParameters[9]];
  v22 = a1 + SettingIntentDescribeBinarySettingStateParameters[9];
  if (v34())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v21, v22, *(*(v4 - 8) + 64));
  }

  else
  {
    (*(v33 + 16))(v21, v22, v32);
    (*(v33 + 56))(v21, 0, 1, v32);
  }

  v19 = &a2[SettingIntentDescribeBinarySettingStateParameters[10]];
  v20 = a1 + SettingIntentDescribeBinarySettingStateParameters[10];
  if (v34())
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v19, v20, *(*(v5 - 8) + 64));
  }

  else
  {
    (*(v33 + 16))(v19, v20, v32);
    (*(v33 + 56))(v19, 0, 1, v32);
  }

  v17 = &a2[SettingIntentDescribeBinarySettingStateParameters[11]];
  v18 = a1 + SettingIntentDescribeBinarySettingStateParameters[11];
  if (v34())
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v17, v18, *(*(v6 - 8) + 64));
  }

  else
  {
    (*(v33 + 16))(v17, v18, v32);
    (*(v33 + 56))(v17, 0, 1, v32);
  }

  v15 = &a2[SettingIntentDescribeBinarySettingStateParameters[12]];
  v16 = a1 + SettingIntentDescribeBinarySettingStateParameters[12];
  if (v34())
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v15, v16, *(*(v7 - 8) + 64));
  }

  else
  {
    (*(v33 + 16))(v15, v16, v32);
    (*(v33 + 56))(v15, 0, 1, v32);
  }

  v13 = &a2[SettingIntentDescribeBinarySettingStateParameters[13]];
  v14 = a1 + SettingIntentDescribeBinarySettingStateParameters[13];
  if (v34())
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v13, v14, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v33 + 16))(v13, v14, v32);
    (*(v33 + 56))(v13, 0, 1, v32);
  }

  v11 = &a2[SettingIntentDescribeBinarySettingStateParameters[14]];
  v12 = a1 + SettingIntentDescribeBinarySettingStateParameters[14];
  if (v34())
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v11, v12, *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v33 + 16))(v11, v12, v32);
    (*(v33 + 56))(v11, 0, 1, v32);
  }

  result = a2;
  a2[SettingIntentDescribeBinarySettingStateParameters[15]] = *(a1 + SettingIntentDescribeBinarySettingStateParameters[15]);
  a2[SettingIntentDescribeBinarySettingStateParameters[16]] = *(a1 + SettingIntentDescribeBinarySettingStateParameters[16]);
  a2[SettingIntentDescribeBinarySettingStateParameters[17]] = *(a1 + SettingIntentDescribeBinarySettingStateParameters[17]);
  return result;
}

char *sub_268E9F6F0(char *a1)
{
  v1 = *a1;

  SettingIntentDescribeBinarySettingStateParameters = type metadata accessor for GetSettingIntentDescribeBinarySettingStateParameters();
  v12 = SettingIntentDescribeBinarySettingStateParameters[5];
  v14 = sub_268F9A9C4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  if (!(v16)(&a1[v12], 1))
  {
    (*(v15 + 8))(&a1[v12], v14);
  }

  v2 = *&a1[SettingIntentDescribeBinarySettingStateParameters[6]];

  v10 = &a1[SettingIntentDescribeBinarySettingStateParameters[8]];
  if (!v16())
  {
    (*(v15 + 8))(v10, v14);
  }

  v9 = &a1[SettingIntentDescribeBinarySettingStateParameters[9]];
  if (!v16())
  {
    (*(v15 + 8))(v9, v14);
  }

  v8 = &a1[SettingIntentDescribeBinarySettingStateParameters[10]];
  if (!v16())
  {
    (*(v15 + 8))(v8, v14);
  }

  v7 = &a1[SettingIntentDescribeBinarySettingStateParameters[11]];
  if (!v16())
  {
    (*(v15 + 8))(v7, v14);
  }

  v6 = &a1[SettingIntentDescribeBinarySettingStateParameters[12]];
  if (!v16())
  {
    (*(v15 + 8))(v6, v14);
  }

  v5 = &a1[SettingIntentDescribeBinarySettingStateParameters[13]];
  if (!v16())
  {
    (*(v15 + 8))(v5, v14);
  }

  v4 = &a1[SettingIntentDescribeBinarySettingStateParameters[14]];
  if (!v16())
  {
    (*(v15 + 8))(v4, v14);
  }

  return a1;
}

uint64_t sub_268E9FADC(uint64_t a1, uint64_t a2)
{
  v3[8] = v2;
  v3[7] = a2;
  v3[6] = a1;
  v3[4] = v3;
  v3[2] = 0;
  v3[3] = 0;
  v3[5] = 0;
  v6 = *(*(type metadata accessor for GetSettingIntentDescribeNumericSettingStateSpokenOnlyParameters() - 8) + 64);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[2] = a1;
  v3[3] = a2;
  v3[5] = v2;
  v4 = v3[4];

  return MEMORY[0x2822009F8](sub_268E9FBE8, 0);
}

uint64_t sub_268E9FBE8()
{
  v11 = MEMORY[0x277D55BE8];
  v1 = v0[10];
  v9 = v1;
  v10 = v0[9];
  v2 = v0[7];
  v8 = v0[6];
  v0[4] = v0;
  sub_268E9B680(v1);
  v8(v9);
  v16 = sub_268F9AEF4();
  v13 = v3;
  v0[11] = v3;
  sub_268EA0078(v9, v10);
  v14 = sub_268E9B2D8();
  v0[12] = v14;
  sub_268EA0238(v10);
  v15 = (v11 + *v11);
  v4 = v11[1];
  v5 = swift_task_alloc();
  v12[13] = v5;
  *v5 = v12[4];
  v5[1] = sub_268E9FD48;
  v6 = v12[8];

  return v15(v16, v13, v14);
}

uint64_t sub_268E9FD48(uint64_t a1)
{
  v11 = *v2;
  v4 = *(*v2 + 104);
  v11[4] = *v2;
  v12 = v11 + 4;
  v11[14] = a1;
  v11[15] = v1;

  if (v1)
  {
    v8 = *v12;
    v7 = sub_268E9FF9C;
  }

  else
  {
    v5 = v11[12];
    v10 = v11[11];

    v6 = *v12;
    v7 = sub_268E9FEDC;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268E9FEDC()
{
  v1 = v0[10];
  v7 = v0[9];
  v0[4] = v0;
  sub_268EA0238(v1);

  v2 = v0;
  v3 = *(v0[4] + 8);
  v4 = v0[4];
  v5 = v2[14];

  return v3(v5);
}

uint64_t sub_268E9FF9C()
{
  v1 = v0[12];
  v7 = v0[11];
  v8 = v0[10];
  v9 = v0[9];
  v0[4] = v0;

  sub_268EA0238(v8);

  v2 = v0;
  v3 = *(v0[4] + 8);
  v4 = v0[4];
  v5 = v2[15];

  return v3();
}

char *sub_268EA0078(char *a1, char *a2)
{
  v4 = *a1;

  *a2 = v4;
  v5 = *(a1 + 1);

  *(a2 + 1) = v5;
  v7 = *(a1 + 2);

  *(a2 + 2) = v7;
  v8 = *(type metadata accessor for GetSettingIntentDescribeNumericSettingStateSpokenOnlyParameters() + 28);
  v10 = sub_268F9A9C4();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(&a1[v8], 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(&a2[v8], &a1[v8], *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v11 + 16))();
    (*(v11 + 56))(&a2[v8], 0, 1, v10);
  }

  return a2;
}

char *sub_268EA0238(char *a1)
{
  v1 = *a1;

  v2 = *(a1 + 1);

  v3 = *(a1 + 2);

  v5 = *(type metadata accessor for GetSettingIntentDescribeNumericSettingStateSpokenOnlyParameters() + 28);
  v7 = sub_268F9A9C4();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(&a1[v5], 1))
  {
    (*(v8 + 8))(&a1[v5], v7);
  }

  return a1;
}

uint64_t sub_268EA0328(char a1, char a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 64) = v5;
  *(v6 + 56) = a5;
  *(v6 + 48) = a4;
  *(v6 + 139) = a3 & 1;
  *(v6 + 138) = a2 & 1;
  *(v6 + 137) = a1 & 1;
  *(v6 + 32) = v6;
  *(v6 + 136) = 0;
  *(v6 + 144) = 0;
  *(v6 + 152) = 0;
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 40) = 0;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15;
  *(v6 + 72) = swift_task_alloc();
  v10 = *(*(type metadata accessor for GetSettingIntentDescribeNumericSettingStateParameters() - 8) + 64);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 136) = a1 & 1;
  *(v6 + 144) = a2 & 1;
  *(v6 + 152) = a3 & 1;
  *(v6 + 16) = a4;
  *(v6 + 24) = a5;
  *(v6 + 40) = v5;
  v8 = *(v6 + 32);

  return MEMORY[0x2822009F8](sub_268EA050C, 0);
}

uint64_t sub_268EA050C()
{
  v15 = MEMORY[0x277D55BE8];
  v13 = *(v0 + 88);
  v14 = *(v0 + 80);
  v11 = *(v0 + 72);
  v1 = *(v0 + 56);
  v12 = *(v0 + 48);
  v10 = *(v0 + 139);
  v9 = *(v0 + 138);
  v8 = *(v0 + 137);
  *(v0 + 32) = v0;
  v2 = sub_268F9A9C4();
  (*(*(v2 - 8) + 56))(v11, 1);
  sub_268E9BD7C(0, 0, v8 & 1, v9 & 1, 0, v10 & 1, v11, v13);
  v12(v13);
  v20 = sub_268F9AEF4();
  v17 = v3;
  *(v0 + 96) = v3;
  sub_268EA0A74(v13, v14);
  v18 = sub_268E9B914();
  *(v0 + 104) = v18;
  sub_268EA0C50(v14);
  v19 = (v15 + *v15);
  v4 = v15[1];
  v5 = swift_task_alloc();
  v16[14] = v5;
  *v5 = v16[4];
  v5[1] = sub_268EA070C;
  v6 = v16[8];

  return v19(v20, v17, v18);
}

uint64_t sub_268EA070C(uint64_t a1)
{
  v11 = *v2;
  v4 = *(*v2 + 112);
  v11[4] = *v2;
  v12 = v11 + 4;
  v11[15] = a1;
  v11[16] = v1;

  if (v1)
  {
    v8 = *v12;
    v7 = sub_268EA097C;
  }

  else
  {
    v5 = v11[13];
    v10 = v11[12];

    v6 = *v12;
    v7 = sub_268EA08A0;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268EA08A0()
{
  v1 = v0[11];
  v7 = v0[10];
  v8 = v0[9];
  v0[4] = v0;
  sub_268EA0C50(v1);

  v2 = v0;
  v3 = *(v0[4] + 8);
  v4 = v0[4];
  v5 = v2[15];

  return v3(v5);
}

uint64_t sub_268EA097C()
{
  v1 = v0[13];
  v7 = v0[12];
  v8 = v0[11];
  v9 = v0[10];
  v10 = v0[9];
  v0[4] = v0;

  sub_268EA0C50(v8);

  v2 = v0;
  v3 = *(v0[4] + 8);
  v4 = v0[4];
  v5 = v2[16];

  return v3();
}

uint64_t sub_268EA0A74(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;

  *a2 = v4;
  v5 = a1[1];

  *(a2 + 8) = v5;
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 17) = *(a1 + 17);
  v6 = a1[3];

  *(a2 + 24) = v6;
  *(a2 + 32) = *(a1 + 32);
  v8 = *(type metadata accessor for GetSettingIntentDescribeNumericSettingStateParameters() + 40);
  v10 = sub_268F9A9C4();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(a1 + v8, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy((a2 + v8), a1 + v8, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v11 + 16))();
    (*(v11 + 56))(a2 + v8, 0, 1, v10);
  }

  return a2;
}