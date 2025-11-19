id sub_265FFCB50()
{
  OUTLINED_FUNCTION_12();
  v0 = *(*(sub_266039184() - 8) + 64);
  (MEMORY[0x28223BE20])();
  v1 = sub_266039764();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = (MEMORY[0x28223BE20])();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v9 = objc_opt_self();
  [v9 currentVersion];
  [v9 currentGamesPrivacyNoticeVersion];
  [v9 currentGamesCrossUseNoticeVersion];
  sub_266039754();
  result = [objc_opt_self() shared];
  if (result)
  {
    v11 = result;
    [result cacheTTLOverride];

    sub_266039174();
    result = [objc_opt_self() currentDevice];
    if (result)
    {
      sub_265FFE378(result);
      (*(v2 + 16))(v6, v8, v1);
      sub_266039724();
      return (*(v2 + 8))(v8, v1);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_265FFCDB8()
{
  OUTLINED_FUNCTION_12();
  v2 = sub_266039734();
  v3 = OUTLINED_FUNCTION_5(v2);
  v5 = *(v4 + 16);

  return v5(v0, v1, v3);
}

uint64_t sub_265FFCE14()
{
  OUTLINED_FUNCTION_10();
  v2 = sub_266039734();
  v3 = OUTLINED_FUNCTION_5(v2);
  v5 = *(v4 + 40);

  return v5(v1, v0, v3);
}

id sub_265FFCE94()
{
  v1 = *(v0 + *(type metadata accessor for FakeGameServicesSupport() + 20));

  return v1;
}

void sub_265FFCEC8()
{
  OUTLINED_FUNCTION_10();
  v2 = *(type metadata accessor for FakeGameServicesSupport() + 20);

  *(v1 + v2) = v0;
}

uint64_t (*sub_265FFCF04())()
{
  OUTLINED_FUNCTION_10();
  v0 = *(type metadata accessor for FakeGameServicesSupport() + 20);
  return nullsub_1;
}

uint64_t sub_265FFCF54()
{
  v1 = (v0 + *(type metadata accessor for FakeGameServicesSupport() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_265FFCF94(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for FakeGameServicesSupport() + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*sub_265FFCFDC())()
{
  OUTLINED_FUNCTION_10();
  v0 = *(type metadata accessor for FakeGameServicesSupport() + 24);
  return nullsub_1;
}

uint64_t sub_265FFD034()
{
  OUTLINED_FUNCTION_8();
  sub_266039224();
  sub_265FFE434();
  OUTLINED_FUNCTION_6();
  sub_266039204();
  swift_willThrow();
  OUTLINED_FUNCTION_11();

  return v0();
}

uint64_t sub_265FFD0B4()
{
  OUTLINED_FUNCTION_12();
  v1 = sub_2660390F4();

  return __swift_storeEnumTagSinglePayload(v0, 1, 1, v1);
}

uint64_t sub_265FFD178()
{
  sub_266039224();
  sub_265FFE434();
  swift_allocError();
  sub_266039204();
  return swift_willThrow();
}

id sub_265FFD1D0@<X0>(uint64_t a1@<X8>)
{
  sub_265FFCB50();
  v2 = type metadata accessor for FakeGameServicesSupport();
  v3 = *(v2 + 20);
  result = [objc_opt_self() defaultCenter];
  *(a1 + v3) = result;
  v5 = (a1 + *(v2 + 24));
  *v5 = 0;
  v5[1] = 0;
  return result;
}

id sub_265FFD23C()
{
  v0 = [objc_opt_self() defaultCenter];

  return v0;
}

uint64_t sub_265FFD27C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_266039734();
  OUTLINED_FUNCTION_5(v10);
  (*(v11 + 32))(a5, a1);
  result = type metadata accessor for FakeGameServicesSupport();
  *(a5 + *(result + 20)) = a2;
  v13 = (a5 + *(result + 24));
  *v13 = a3;
  v13[1] = a4;
  return result;
}

uint64_t sub_265FFD318()
{
  OUTLINED_FUNCTION_8();
  v2 = (v0 + *(v1 + 24));
  v4 = *v2;
  v3 = v2[1];
  OUTLINED_FUNCTION_11();
  v7 = v5;

  return v7(v4, v3);
}

uint64_t sub_265FFD3AC()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);

  return sub_265FFD0F8();
}

uint64_t sub_265FFD42C()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);

  return sub_265FFD0F8();
}

uint64_t sub_265FFD4AC()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);

  return sub_265FFD020();
}

uint64_t sub_265FFD52C()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_4();
  *v4 = v3;

  OUTLINED_FUNCTION_11();

  return v5();
}

uint64_t sub_265FFD60C()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);

  return sub_265FFD020();
}

uint64_t sub_265FFD68C()
{
  OUTLINED_FUNCTION_8();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_9();
  v7 = *(v6 + 16);
  v8 = *v1;
  OUTLINED_FUNCTION_4();
  *v9 = v8;

  v12 = *(v8 + 8);
  if (!v0)
  {
    v10 = v5;
    v11 = v3;
  }

  return v12(v10, v11);
}

uint64_t sub_265FFD78C()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);

  return sub_265FFD0F8();
}

uint64_t sub_265FFD80C()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);

  return sub_265FFD0F8();
}

uint64_t sub_265FFD88C()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);

  return sub_265FFD11C();
}

uint64_t sub_265FFD90C()
{
  OUTLINED_FUNCTION_1();
  v2 = v1;
  OUTLINED_FUNCTION_9();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_4();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t sub_265FFD9F8()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);

  return sub_265FFD138();
}

uint64_t sub_265FFDA78()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);

  return sub_265FFD0F8();
}

uint64_t sub_265FFDAF8()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);

  return sub_265FFD0F8();
}

uint64_t sub_265FFDB90()
{
  OUTLINED_FUNCTION_8();
  sub_265FFD178();
  OUTLINED_FUNCTION_11();

  return v0();
}

uint64_t sub_265FFDC00()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);

  return sub_265FFD0F8();
}

uint64_t sub_265FFDC80()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);

  return sub_265FFD0F8();
}

uint64_t sub_265FFDD00()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);

  return sub_265FFD0F8();
}

uint64_t sub_265FFDD80()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);

  return sub_265FFD0F8();
}

uint64_t sub_265FFDE00()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);

  return sub_265FFD0F8();
}

uint64_t sub_265FFDE80()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);

  return sub_265FFD020();
}

uint64_t sub_265FFDF00()
{
  OUTLINED_FUNCTION_1();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_4();
  *v7 = v6;

  v9 = *(v6 + 8);
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_265FFDFF0()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);

  return sub_265FFD0F8();
}

uint64_t sub_265FFE070()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);

  return sub_265FFD0F8();
}

uint64_t sub_265FFE0F0()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);

  return sub_265FFD0F8();
}

uint64_t sub_265FFE174()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);

  return sub_265FFD0F8();
}

uint64_t sub_265FFE1F4()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);

  return sub_265FFD0F8();
}

uint64_t sub_265FFE274()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);

  return sub_265FFD0F8();
}

uint64_t sub_265FFE2F8()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);

  return sub_265FFD0F8();
}

uint64_t sub_265FFE378(void *a1)
{
  v2 = [a1 udid];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_2660398E4();

  return v3;
}

uint64_t type metadata accessor for FakeGameServicesSupport()
{
  result = qword_280058860;
  if (!qword_280058860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_265FFE434()
{
  result = qword_2800584E0;
  if (!qword_2800584E0)
  {
    sub_266039224();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800584E0);
  }

  return result;
}

uint64_t sub_265FFE4C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_10();
  v6 = sub_266039734();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_265FFE5AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_266039734();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_265FFE654()
{
  sub_266039734();
  if (v0 <= 0x3F)
  {
    sub_265FFE6F0();
    if (v1 <= 0x3F)
    {
      sub_265FFE734();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_265FFE6F0()
{
  result = qword_280057D90;
  if (!qword_280057D90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280057D90);
  }

  return result;
}

void sub_265FFE734()
{
  if (!qword_280057D98)
  {
    v0 = sub_266039A34();
    if (!v1)
    {
      atomic_store(v0, &qword_280057D98);
    }
  }
}

uint64_t OUTLINED_FUNCTION_6()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_11()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void GKPlayer.ref.getter(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800584D0, &unk_26603B740);
  v6 = OUTLINED_FUNCTION_2_0(v5);
  v68 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v11 = &v60 - v10;
  v12 = [v3 internal];
  v13 = [v12 scopedIDs];

  if (v13)
  {
    if ([v13 arePersistent])
    {
      v14 = [v13 gameBundleID];
      v15 = sub_2660398E4();
      v66 = a1;
      v67 = v2;
      v16 = v15;
      v18 = v17;

      OUTLINED_FUNCTION_14(v16, v18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057E80, &unk_26603BD00);
      sub_265FFED20();
      v62 = v19;
      OUTLINED_FUNCTION_6_0();
      v21 = *(v20 + 72);
      v23 = *(v22 + 80);
      v63 = v21;
      v64 = v5;
      v24 = (v23 + 32) & ~v23;
      v25 = swift_allocObject();
      v65 = v25;
      *(v25 + 16) = xmmword_26603B710;
      v26 = (v25 + v24);
      v27 = [v3 internal];
      v28 = [v27 playerID];

      v29 = sub_2660398E4();
      v30 = v11;
      v60 = v11;
      v32 = v31;

      *v26 = v29;
      v26[1] = v32;
      swift_storeEnumTagMultiPayload();
      v33 = (v26 + v21);
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280057DA0, &qword_26603B750);
      v35 = *(v34 + 48);
      v36 = [v13 gamePlayerID];
      v37 = sub_2660398E4();
      v39 = v38;

      *v33 = v37;
      v33[1] = v39;
      v61 = *(v68 + 16);
      v40 = v30;
      v41 = v64;
      v61(v33 + v35, v40, v64);
      swift_storeEnumTagMultiPayload();
      v42 = (v26 + 2 * v63);
      v43 = *(v34 + 48);
      v44 = [v13 teamPlayerID];
      v45 = sub_2660398E4();
      v47 = v46;

      *v42 = v45;
      v42[1] = v47;
      v48 = v60;
      v61(v42 + v43, v60, v41);
      swift_storeEnumTagMultiPayload();
      sub_266039584();
      (*(v68 + 8))(v48, v41);

      return;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057E80, &unk_26603BD00);
  sub_265FFED20();
  OUTLINED_FUNCTION_6_0();
  v50 = *(v49 + 72);
  v52 = (*(v51 + 80) + 32) & ~*(v51 + 80);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_26603B720;
  v54 = (v53 + v52);
  v55 = [v3 &selRef_reportMultiplayerActivityMetricsEvent_];
  v56 = [v55 playerID];

  v57 = sub_2660398E4();
  v59 = v58;

  *v54 = v57;
  v54[1] = v59;
  swift_storeEnumTagMultiPayload();
  sub_266039584();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void sub_265FFED20()
{
  if (!qword_280058180)
  {
    v0 = sub_266039564();
    if (!v1)
    {
      atomic_store(v0, &qword_280058180);
    }
  }
}

uint64_t GKGameDescriptor.ref.getter()
{
  v1 = v0;
  v2 = [v0 bundleIdentifier];
  v3 = sub_2660398E4();
  v5 = v4;

  v6 = [v1 adamID];
  v7 = [v6 stringValue];

  v8 = sub_2660398E4();
  v10 = v9;

  v11 = [objc_opt_self() stringForPlatform_];
  v12 = sub_2660398E4();
  v14 = v13;

  v15 = [v1 shortBundleVersion];
  v16 = sub_2660398E4();
  v18 = v17;

  return MEMORY[0x2821652B8](v3, v5, v8, v10, v12, v14, v16, v18);
}

id sub_265FFEED4()
{
  result = sub_2660394B4();
  if (!v0)
  {
    v3 = result;
    v4 = v2;
    v5 = sub_2660394C4();
    v7 = v6;
    if (v4 | v6)
    {
      v8 = v5;
      v9 = sub_266039504();
      v11 = v10;
      v12 = sub_2660394D4();
      v14 = v13;
      sub_265FFFCFC(0, &qword_280057DB0, 0x277D0C050);
      return sub_265FFF030(v3, v4, v8, v7, v9, v11, v12, v14);
    }

    else
    {
      sub_266039224();
      sub_265FFE434();
      OUTLINED_FUNCTION_15();
      swift_allocError();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280057DA8, &qword_26603B758);
      sub_2660391F4();
      return swift_willThrow();
    }
  }

  return result;
}

id sub_265FFF030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v11 = sub_2660398D4();

    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v11 = 0;
    if (a4)
    {
LABEL_3:
      v12 = sub_2660398D4();

      if (a6)
      {
        goto LABEL_4;
      }

LABEL_8:
      v13 = 0;
      if (a8)
      {
        goto LABEL_5;
      }

LABEL_9:
      v14 = 0;
      goto LABEL_10;
    }
  }

  v12 = 0;
  if (!a6)
  {
    goto LABEL_8;
  }

LABEL_4:
  v13 = sub_2660398D4();

  if (!a8)
  {
    goto LABEL_9;
  }

LABEL_5:
  v14 = sub_2660398D4();

LABEL_10:
  v15 = [swift_getObjCClassFromMetadata() gameDescriptorWithAdamID:v11 bundleID:v12 platform:v13 shortBundleVersion:v14];

  return v15;
}

id sub_265FFF154()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D0C118]) init];
  sub_266039544();
  v2 = v1;
  if (!v0)
  {
    v2 = sub_2660398D4();

    [v1 setBaseLeaderboardID_];
  }

  return v1;
}

uint64_t sub_265FFF218@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, unsigned int *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_5(v7);
  (*(v8 + 16))(a4, v4);
  v9 = *a3;
  v10 = sub_266039264();
  v11 = OUTLINED_FUNCTION_5(v10);
  v13 = *(v12 + 104);

  return v13(a4, v9, v11);
}

uint64_t sub_265FFF2B8()
{
  OUTLINED_FUNCTION_1();
  *(v1 + 120) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800584D0, &unk_26603B740);
  *(v1 + 32) = v4;
  OUTLINED_FUNCTION_3_0(v4);
  *(v1 + 40) = v5;
  v7 = *(v6 + 64) + 15;
  *(v1 + 48) = swift_task_alloc();
  *(v1 + 56) = swift_task_alloc();
  sub_265FFED20();
  *(v1 + 64) = v8;
  OUTLINED_FUNCTION_3_0(v8);
  *(v1 + 72) = v9;
  v11 = *(v10 + 64) + 15;
  *(v1 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265FFF3DC, 0, 0);
}

uint64_t sub_265FFF3DC()
{
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  OUTLINED_FUNCTION_1_0();
  v10 = (v4 + *v4);
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_265FFF4F4;
  v8 = v0[3];

  return v10(v8, v2, v3);
}

uint64_t sub_265FFF4F4()
{
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *v1;
  *v4 = v7;
  v3[12] = v8;
  v3[13] = v9;
  v3[14] = v0;

  if (v0)
  {
    v10 = v3[10];
    v13 = v3 + 6;
    v11 = v3[6];
    v12 = v13[1];

    v14 = *(v7 + 8);

    return v14();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_265FFF648, 0, 0);
  }
}

uint64_t sub_265FFF648()
{
  v1 = *(v0 + 104);
  if (v1)
  {
    v2 = *(v0 + 96);
    sub_265FFFCFC(0, &qword_280058210, 0x277D0C1C8);

    OUTLINED_FUNCTION_12_0();
    v3 = sub_265FFFD3C();
  }

  else
  {
    if (*(v0 + 120) == 1)
    {
      v4 = *(v0 + 24);
      sub_266039224();
      sub_265FFE434();
      OUTLINED_FUNCTION_15();
      swift_allocError();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280057F80, &qword_26603B9F0);
      sub_2660391F4();
      swift_willThrow();
LABEL_9:
      v9 = *(v0 + 80);
      v11 = *(v0 + 48);
      v10 = *(v0 + 56);

      v12 = *(v0 + 8);

      return v12();
    }

    v3 = [objc_allocWithZone(MEMORY[0x277D0C248]) init];
  }

  v5 = *(v0 + 112);
  v6 = *(v0 + 24);
  v7 = sub_2660395A4();
  if (v5)
  {
    v8 = *(v0 + 104);

LABEL_8:

    goto LABEL_9;
  }

  v14 = v7;
  v68 = v1;
  v69 = v3;
  v15 = 0;
  v70 = 0;
  v72 = 0;
  v78 = 0;
  v79 = 0;
  v80 = 0;
  v16 = *(v0 + 72);
  v17 = *(v0 + 40);
  v18 = *(v7 + 16);
  v74 = (v17 + 32);
  v75 = *(v0 + 80);
  v19 = (v17 + 8);
  v66 = v0 + 48;
  v67 = v0 + 56;
  while (v18 != v15)
  {
    v20 = *(v0 + 64);
    sub_265FFFC3C(v14 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v15, *(v0 + 80));
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v22 = *(v0 + 80);
    if (EnumCaseMultiPayload == 1)
    {
      sub_265FFFCA0(*(v0 + 80));
      ++v15;
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        v37 = *(v0 + 48);
        v38 = *(v0 + 32);
        v73 = *v22;
        v77 = *(v75 + 8);
        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280057DA0, &qword_26603B750);
        v47 = OUTLINED_FUNCTION_11_0(v39, v40, v41, v42, v43, v44, v45, v46, v66, v67, v68, v69, v70, v73, v74);
        v48(v47);
        sub_2660394F4();
        v49 = *v19;
        OUTLINED_FUNCTION_19();
        v50(*(v0 + 48), *(v0 + 32));

        v78 = v77;
      }

      else
      {
        v23 = *(v0 + 56);
        v24 = *(v0 + 32);
        v71 = *v22;
        v76 = *(v75 + 8);
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280057DA0, &qword_26603B750);
        v33 = OUTLINED_FUNCTION_11_0(v25, v26, v27, v28, v29, v30, v31, v32, v66, v67, v68, v69, v71, v72, v74);
        v34(v33);
        sub_2660394F4();
        v35 = *v19;
        OUTLINED_FUNCTION_19();
        v36(*(v0 + 56), *(v0 + 32));

        v79 = v76;
      }

      v80 = v19;
      v19 = 0;
    }
  }

  if (!v68)
  {

LABEL_27:

    v59 = v69;
    goto LABEL_28;
  }

  v51 = *(v0 + 104);
  if (!v80)
  {

    goto LABEL_27;
  }

  if (!v79 || !v78)
  {
    v64 = *(v0 + 24);
    v65 = *(v0 + 104);

    sub_266039224();
    sub_265FFE434();
    OUTLINED_FUNCTION_15();
    swift_allocError();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280057F80, &qword_26603B9F0);
    sub_2660391F4();
    swift_willThrow();

    goto LABEL_8;
  }

  v52 = *(v0 + 96);
  v53 = objc_opt_self();
  OUTLINED_FUNCTION_12_0();
  v54 = sub_2660398D4();

  v55 = sub_2660398D4();
  v56 = sub_2660398D4();
  v57 = sub_2660398D4();
  v58 = [v53 makePersistentWithPlayerID:v54 gameBundleID:v55 gamePlayerID:v56 teamPlayerID:v57];

  v59 = v69;
  [v69 setScopedIDs_];

LABEL_28:
  v60 = *(v0 + 80);
  v61 = *(v0 + 48);
  v62 = *(v0 + 56);

  v63 = *(v0 + 8);

  return v63(v59);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_265FFFC3C(uint64_t a1, uint64_t a2)
{
  sub_265FFED20();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_265FFFCA0(uint64_t a1)
{
  sub_265FFED20();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_265FFFCFC(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

id sub_265FFFD3C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D0C1C8]) init];
  OUTLINED_FUNCTION_12_0();
  v1 = sub_2660398D4();
  [v0 setPlayerID_];

  return v0;
}

uint64_t sub_265FFFDAC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return OUTLINED_FUNCTION_0_0();
}

void sub_265FFFDC0()
{
  v1 = *(v0[3] + 16);
  v0[4] = v1;
  v2 = sub_2660015A4(0, v1, 0, MEMORY[0x277D84F90]);
  v0[5] = 0;
  v0[6] = v2;
  if (v0[4])
  {
    v3 = v0[2];
    v4 = v0[3];
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F70, &unk_26603B960);
    OUTLINED_FUNCTION_16(v5);
    v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v8 = *(v3 + 24);
    v9 = *(v3 + 32);
    v10 = OUTLINED_FUNCTION_12_0();
    __swift_project_boxed_opaque_existential_1(v10, v11);
    OUTLINED_FUNCTION_1_0();
    v20 = v12 + *v12;
    v14 = *(v13 + 4);
    v15 = swift_task_alloc();
    v0[7] = v15;
    *v15 = v0;
    OUTLINED_FUNCTION_8_0(v15);
    OUTLINED_FUNCTION_21();

    __asm { BRAA            X3, X16 }
  }

  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_21();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_265FFFF64()
{
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  *v4 = *v1;
  v3[8] = v8;
  v3[9] = v9;

  if (v0)
  {
    v10 = v3[6];

    v11 = *(v7 + 8);

    return v11();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2660000A8, 0, 0);
  }
}

uint64_t sub_2660000A8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 48);
  v6 = v4[2];
  v5 = v4[3];
  if (v6 >= v5 >> 1)
  {
    a1 = sub_2660015A4((v5 > 1), v6 + 1, 1, v4);
    v4 = a1;
  }

  v7 = *(v3 + 64);
  v4[2] = v6 + 1;
  *&v4[2 * v6 + 4] = v7;
  v8 = *(v3 + 32);
  v9 = *(v3 + 40) + 1;
  *(v3 + 40) = v9;
  *(v3 + 48) = v4;
  if (v9 == v8)
  {
    v10 = OUTLINED_FUNCTION_18(a1, a2, a3, v4);

    return v11(v10);
  }

  else
  {
    v13 = *(v3 + 16);
    v14 = *(v3 + 24);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F70, &unk_26603B960);
    OUTLINED_FUNCTION_3_0(v15);
    v18 = v14 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v17 + 72) * v9;
    v19 = v13[4];
    __swift_project_boxed_opaque_existential_1(v13, v13[3]);
    OUTLINED_FUNCTION_10_0();
    v26 = v20 + *v20;
    v22 = *(v21 + 4);
    v23 = swift_task_alloc();
    *(v3 + 56) = v23;
    *v23 = v3;
    v24 = OUTLINED_FUNCTION_9_0(v23);

    return v25(v24);
  }
}

uint64_t sub_26600029C(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return OUTLINED_FUNCTION_0_0();
}

void sub_2660002B0()
{
  v1 = *(v0[7] + 16);
  v0[8] = v1;
  v2 = sub_2660016D4(0, v1, 0, MEMORY[0x277D84F90]);
  v0[9] = 0;
  v0[10] = v2;
  if (v0[8])
  {
    v3 = v0[6];
    v4 = v0[7];
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F70, &unk_26603B960);
    OUTLINED_FUNCTION_16(v5);
    v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v8 = *(v3 + 24);
    v9 = *(v3 + 32);
    v10 = OUTLINED_FUNCTION_12_0();
    __swift_project_boxed_opaque_existential_1(v10, v11);
    OUTLINED_FUNCTION_1_0();
    v20 = v12 + *v12;
    v14 = *(v13 + 4);
    v15 = swift_task_alloc();
    v0[11] = v15;
    *v15 = v0;
    OUTLINED_FUNCTION_8_0(v15);
    OUTLINED_FUNCTION_21();

    __asm { BRAA            X3, X16 }
  }

  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_21();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_266000454(uint64_t a1)
{
  OUTLINED_FUNCTION_9();
  v5 = v4;
  OUTLINED_FUNCTION_7_0();
  *v6 = v5;
  v8 = *(v7 + 88);
  v9 = *v2;
  v5[12] = v10;
  v5[13] = v1;

  if (v1)
  {
    v11 = v5[10];

    v12 = *(v9 + 8);

    return v12();
  }

  else
  {
    v5[14] = a1;

    return MEMORY[0x2822009F8](sub_2660005A0, 0, 0);
  }
}

void sub_2660005A0()
{
  v0[2] = v0[14];
  v1 = v0[13];
  v0[3] = v0[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800585D0, &qword_26603B790);
  sub_266039A24();
  v2 = v0[12];
  v3 = v0[10];
  if (v1)
  {
    v4 = v0[10];

    v5 = v0[1];
    OUTLINED_FUNCTION_21();

    __asm { BRAA            X1, X16 }
  }

  v8 = v0[12];

  v12 = v0[4];
  v13 = v0[5];
  v15 = *(v3 + 16);
  v14 = *(v3 + 24);
  v16 = v0[10];
  if (v15 >= v14 >> 1)
  {
    v9 = sub_2660016D4((v14 > 1), v15 + 1, 1, v16);
    v16 = v9;
  }

  *(v16 + 16) = v15 + 1;
  v17 = v16 + 16 * v15;
  *(v17 + 32) = v12;
  *(v17 + 40) = v13;
  v18 = v0[8];
  v19 = v0[9] + 1;
  v0[9] = v19;
  v0[10] = v16;
  if (v19 == v18)
  {
    OUTLINED_FUNCTION_18(v9, v10, v11, v16);
    OUTLINED_FUNCTION_21();

    __asm { BRAA            X2, X16 }
  }

  v22 = v0[6];
  v23 = v0[7];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F70, &unk_26603B960);
  OUTLINED_FUNCTION_3_0(v24);
  v27 = v23 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v26 + 72) * v19;
  v28 = v22[4];
  __swift_project_boxed_opaque_existential_1(v22, v22[3]);
  OUTLINED_FUNCTION_10_0();
  v35 = v29 + *v29;
  v31 = *(v30 + 4);
  v32 = swift_task_alloc();
  v0[11] = v32;
  *v32 = v0;
  OUTLINED_FUNCTION_9_0(v32);
  OUTLINED_FUNCTION_21();

  __asm { BRAA            X3, X16 }
}

uint64_t sub_266000818(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 88) = a2;
  *(v3 + 24) = a1;
  *(v3 + 32) = a3;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_266000830()
{
  OUTLINED_FUNCTION_1();
  v0[2] = MEMORY[0x277D84F90];
  v1 = *(v0[4] + 16);
  v0[5] = v1;
  sub_2660017DC(v1);
  v2 = v0[5];
  v3 = v0[2];
  v0[6] = 0;
  v0[7] = v3;
  if (v2)
  {
    v4 = v0[4];
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F70, &unk_26603B960);
    OUTLINED_FUNCTION_16(v5);
    v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v8 = swift_task_alloc();
    v0[8] = v8;
    *v8 = v0;
    OUTLINED_FUNCTION_4_0(v8);

    return sub_265FFF2B8();
  }

  else
  {
    OUTLINED_FUNCTION_5_0();

    return v10();
  }
}

uint64_t sub_26600094C()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 64);
  *v4 = *v1;
  v3[9] = v7;
  v3[10] = v0;

  if (v0)
  {
    v8 = v3[7];

    v9 = sub_266000BBC;
  }

  else
  {
    v9 = sub_266000A58;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_266000A58()
{
  OUTLINED_FUNCTION_1();
  MEMORY[0x266776E60]();
  if (*((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_266039974();
  }

  v1 = v0[9];
  sub_266039994();
  v2 = v0[5];
  v3 = v0[6] + 1;
  v4 = v0[2];
  v0[6] = v3;
  v0[7] = v4;
  if (v3 == v2)
  {
    OUTLINED_FUNCTION_5_0();

    return v5();
  }

  else
  {
    v7 = v0[4];
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F70, &unk_26603B960);
    OUTLINED_FUNCTION_3_0(v8);
    v11 = v7 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v10 + 72) * v3;
    v12 = swift_task_alloc();
    v0[8] = v12;
    *v12 = v0;
    OUTLINED_FUNCTION_4_0();

    return sub_265FFF2B8();
  }
}

void sub_266000BD4(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800584D0, &unk_26603B740);
  v6 = OUTLINED_FUNCTION_2_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v60 - v11;
  v13 = [v3 scopedIDs];
  if (v13)
  {
    v14 = v13;
    v64 = v13;
    v15 = [v13 gameBundleID];
    v70 = v5;
    v16 = v15;
    v17 = sub_2660398E4();
    v67 = a1;
    v68 = v2;
    v18 = v17;
    v20 = v19;

    OUTLINED_FUNCTION_14(v18, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057E80, &unk_26603BD00);
    sub_265FFED20();
    v69 = v21;
    OUTLINED_FUNCTION_6_0();
    v61 = v3;
    v60 = *(v22 + 72);
    v24 = *(v23 + 80);
    v25 = v12;
    v62 = v12;
    v26 = (v24 + 32) & ~v24;
    v27 = swift_allocObject();
    v66 = v27;
    *(v27 + 16) = xmmword_26603B710;
    v28 = (v27 + v26);
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280057DA0, &qword_26603B750);
    v29 = *(v65 + 48);
    v30 = [v14 gamePlayerID];
    v31 = sub_2660398E4();
    v33 = v32;

    *v28 = v31;
    v28[1] = v33;
    v63 = *(v8 + 16);
    v63(v28 + v29, v25, v70);
    swift_storeEnumTagMultiPayload();
    v34 = v60;
    v35 = (v28 + v60);
    v36 = [v61 playerID];
    v37 = sub_2660398E4();
    v39 = v38;

    *v35 = v37;
    v35[1] = v39;
    OUTLINED_FUNCTION_12_0();
    swift_storeEnumTagMultiPayload();
    v40 = (v28 + 2 * v34);
    v41 = v64;
    v42 = *(v65 + 48);
    v43 = [v64 teamPlayerID];
    v44 = sub_2660398E4();
    v46 = v45;

    *v40 = v44;
    v40[1] = v46;
    v47 = v40 + v42;
    v48 = v62;
    v49 = v70;
    v63(v47, v62, v70);
    swift_storeEnumTagMultiPayload();
    sub_266039584();
    (*(v8 + 8))(v48, v49);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057E80, &unk_26603BD00);
    sub_265FFED20();
    OUTLINED_FUNCTION_6_0();
    v51 = *(v50 + 72);
    v53 = (*(v52 + 80) + 32) & ~*(v52 + 80);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_26603B720;
    v55 = (v54 + v53);
    v56 = [v3 playerID];
    v57 = sub_2660398E4();
    v59 = v58;

    *v55 = v57;
    v55[1] = v59;
    swift_storeEnumTagMultiPayload();
    sub_266039584();
  }
}

uint64_t sub_266000FE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 == 1)
  {
    v3 = MEMORY[0x277D0CFF0];
    goto LABEL_5;
  }

  if (!a1)
  {
    v3 = MEMORY[0x277D0CFE8];
LABEL_5:
    v4 = *v3;
    v5 = sub_2660392C4();
    OUTLINED_FUNCTION_5(v5);
    return (*(v6 + 104))(a2, v4);
  }

  v8 = sub_266039224();
  sub_265FFE434();
  OUTLINED_FUNCTION_15();
  swift_allocError();
  v10 = v9;
  sub_266039B04();
  MEMORY[0x266776E20](0xD00000000000001ELL, 0x800000026603AD00);
  type metadata accessor for GKLeaderboardType();
  sub_266039B94();
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  (*(*(v8 - 8) + 104))(v10, *MEMORY[0x277D0CE68], v8);
  return swift_willThrow();
}

uint64_t Artwork.init(templateURL:metadata:)@<X0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v36 = a1;
  v37 = a3;
  v4 = sub_266039864();
  v5 = OUTLINED_FUNCTION_2_0(v4);
  v34 = v6;
  v35 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057E70, &unk_26603B7A0);
  v10 = OUTLINED_FUNCTION_16(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = sub_266039624();
  v14 = OUTLINED_FUNCTION_2_0(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v14);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v33 - v22;
  v24 = [a2 width];
  [v24 doubleValue];

  v25 = [a2 height];
  [v25 doubleValue];

  sub_266039614();
  sub_266039534();
  (*(v16 + 16))(v21, v23, v13);
  v26 = sub_266001934(a2, &selRef_backgroundColor);
  v35 = v27;
  v36 = v26;
  v28 = sub_266001934(a2, &selRef_textColor1);
  v33 = v29;
  v34 = v28;
  sub_266001934(a2, &selRef_textColor2);
  sub_266001934(a2, &selRef_textColor3);
  sub_266001934(a2, &selRef_textColor4);
  v30 = v37;
  sub_266039604();

  (*(v16 + 8))(v23, v13);
  v31 = sub_266039634();
  return __swift_storeEnumTagSinglePayload(v30, 0, 1, v31);
}

void *sub_2660015A4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057DD0, &qword_26603B7E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800585D0, &qword_26603B790);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2660016D4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280057DC8, &qword_26603CCA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2660017DC(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_266039BB4();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_266039B24();
  *v1 = result;
  return result;
}

void type metadata accessor for GKLeaderboardType()
{
  if (!qword_280057DC0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_280057DC0);
    }
  }
}

uint64_t sub_2660018CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800583F0, &qword_26603C340);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266001934(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_2660398E4();

  return v4;
}

uint64_t OUTLINED_FUNCTION_1_0()
{
  result = v0 + 16;
  v2 = *(v0 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_0(uint64_t result)
{
  *(result + 8) = sub_26600094C;
  v2 = *(v1 + 88);
  v3 = *(v1 + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_10_0()
{
  result = v0 + 16;
  v2 = *(v0 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t *a15)
{
  v17 = *a15;
  v18 = v16 + *(a1 + 48);
  return v15;
}

uint64_t OUTLINED_FUNCTION_14(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x2821652B8](a1, a2, 0, 0, 0, 0, 0, 0);
}

uint64_t sub_266001B38()
{
  OUTLINED_FUNCTION_1();
  v0[19] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280057E48, &qword_26603B938);
  v0[20] = v2;
  v3 = *(v2 - 8);
  v0[21] = v3;
  v4 = *(v3 + 64) + 15;
  v0[22] = swift_task_alloc();
  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_266001BFC()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v7 = v0[21];
  v6 = v0[22];
  v8 = v0[20];
  v11 = v1[19];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_266001DC8;
  swift_continuation_init();
  v1[17] = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280057E50, &unk_26603B940);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280057E58, &qword_26603C6E0);
  sub_2660399B4();
  (*(v7 + 32))(boxed_opaque_existential_0, v6, v8);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_266001FA4;
  v1[13] = &block_descriptor;
  [v11 getFriendsLatestActivityWithCompletion_];
  (*(v7 + 8))(boxed_opaque_existential_0, v8);

  return MEMORY[0x282200938](v3);
}

uint64_t sub_266001DC8()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  v1 = *v0;
  *(v2 + 184) = *(v2 + 48);
  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_266001ECC()
{
  OUTLINED_FUNCTION_1();
  v1 = v0[22];
  v2 = v0[18];

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_266001F34()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  swift_willThrow();

  OUTLINED_FUNCTION_11();
  v4 = *(v0 + 184);

  return v3();
}

void sub_266001FA4(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    sub_266002058();
  }

  else
  {
    sub_266003284();
    sub_266039964();

    sub_2660020A4();
  }
}

uint64_t sub_2660020F0()
{
  OUTLINED_FUNCTION_1();
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_3(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_2(v3);

  return sub_266001B38();
}

uint64_t sub_266002178@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  a3[3] = &type metadata for ShimActivityService.GCFFriendActivityServiceAdapter;
  a3[4] = &off_2877B8390;
  *a3 = a1;
  return sub_2660021E4(a2, (a3 + 5));
}

uint64_t sub_2660021A0@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  sub_2660021E4(a1, a3);

  return sub_2660021E4(a2, a3 + 40);
}

uint64_t sub_2660021E4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t ShimActivityService.listFriendActivities(player:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  OUTLINED_FUNCTION_7_1();
  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_266002228()
{
  v1 = v0[4];
  v2 = v1[8];
  v3 = v1[9];
  __swift_project_boxed_opaque_existential_1(v1 + 5, v2);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *(v4 + 16) = v1;
  v5 = *(v3 + 32);
  OUTLINED_FUNCTION_3_1();
  v13 = (v6 + *v6);
  v8 = *(v7 + 4);
  v9 = swift_task_alloc();
  v0[6] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280057DE0, &unk_26603B808);
  *v9 = v0;
  v9[1] = sub_2660023A0;
  v11 = v0[3];

  return (v13)(v0 + 2, v11, &unk_26603B800, v4, v10, v2, v3);
}

uint64_t sub_2660023A0()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v4 = *(v2 + 48);
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (!v0)
  {
    v7 = *(v3 + 40);
  }

  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2660024C4()
{
  OUTLINED_FUNCTION_1();
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_11();
  v3 = *(v0 + 56);

  return v2();
}

uint64_t sub_266002520()
{
  OUTLINED_FUNCTION_1();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_2660392B4();
  v0[4] = v3;
  v4 = *(v3 - 8);
  v0[5] = v4;
  v5 = *(v4 + 64) + 15;
  v0[6] = swift_task_alloc();
  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2660025D8()
{
  v1 = *(v0 + 24);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 8);
  OUTLINED_FUNCTION_3_1();
  v10 = (v5 + *v5);
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  *(v0 + 56) = v8;
  *v8 = v0;
  OUTLINED_FUNCTION_2(v8);

  return v10(v2, v3);
}

uint64_t sub_2660026F0()
{
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v4 = v2[7];
  v5 = *v1;
  v3[8] = v6;
  v3[9] = v0;

  if (v0)
  {
    v7 = v3[6];

    v8 = *(v5 + 8);

    return v8();
  }

  else
  {
    OUTLINED_FUNCTION_7_1();

    return MEMORY[0x2822009F8](v10, v11, v12);
  }
}

size_t sub_266002838()
{
  v29 = v0;
  v1 = sub_266003570(*(v0 + 64));
  if (v1)
  {
    v2 = v1;
    v26 = MEMORY[0x277D84F90];
    result = sub_2660032C8(0, v1 & ~(v1 >> 63), 0);
    if ((v2 & 0x8000000000000000) == 0)
    {
      v4 = 0;
      v5 = *(v0 + 40);
      v6 = v26;
      v7 = *(v0 + 64);
      v8 = *(v0 + 72);
      v9 = v7 & 0xC000000000000001;
      v24 = v7 + 32;
      v25 = v7 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        v10 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        if (v9)
        {
          v11 = MEMORY[0x266777030](v4, *(v0 + 64));
        }

        else
        {
          if (v4 >= *(v25 + 16))
          {
            goto LABEL_21;
          }

          v11 = *(v24 + 8 * v4);
        }

        v12 = v11;
        v13 = *(v0 + 48);
        v27 = v11;
        sub_266002AD4(&v27, &v28, v13);
        if (v8)
        {
          v19 = *(v0 + 64);

          v20 = *(v0 + 48);

          OUTLINED_FUNCTION_11();
          goto LABEL_17;
        }

        v15 = *(v26 + 16);
        v14 = *(v26 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_2660032C8(v14 > 1, v15 + 1, 1);
        }

        v16 = *(v0 + 48);
        v17 = *(v0 + 32);
        *(v26 + 16) = v15 + 1;
        result = (*(v5 + 32))(v26 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v15, v16, v17);
        v8 = 0;
        ++v4;
        if (v10 == v2)
        {
          v22 = *(v0 + 64);

          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v18 = *(v0 + 64);

    v6 = MEMORY[0x277D84F90];
LABEL_16:
    v23 = *(v0 + 48);
    **(v0 + 16) = v6;

    OUTLINED_FUNCTION_11();
LABEL_17:

    return v21();
  }

  return result;
}

uint64_t sub_266002A3C()
{
  OUTLINED_FUNCTION_1();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_3(v2);
  *v3 = v4;
  v3[1] = sub_265FFD52C;

  return sub_266002520();
}

uint64_t sub_266002AD4@<X0>(void **a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a2;
  v27[2] = a3;
  v4 = sub_266039154();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v27[1] = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057E70, &unk_26603B7A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v29 = v27 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F70, &unk_26603B960);
  v28 = *(v10 - 8);
  v11 = *(v28 + 64);
  MEMORY[0x28223BE20](v10);
  v12 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057E80, &unk_26603BD00);
  sub_265FFED20();
  v14 = *(*(v13 - 8) + 72);
  v15 = (*(*(v13 - 8) + 80) + 32) & ~*(*(v13 - 8) + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_26603B720;
  v17 = (v16 + v15);
  v18 = [v12 playerID];
  v19 = sub_2660398E4();
  v21 = v20;

  *v17 = v19;
  v17[1] = v21;
  swift_storeEnumTagMultiPayload();
  v22 = v31;
  result = sub_266039584();
  if (v22)
  {
    *v30 = v22;
  }

  else
  {
    v24 = [v12 context];
    v31 = sub_2660398E4();

    v25 = [v12 imageURL];
    sub_2660398E4();

    sub_266039534();
    v26 = [v12 timestamp];
    sub_266039144();

    return sub_2660392A4();
  }

  return result;
}

uint64_t sub_266002E2C()
{
  OUTLINED_FUNCTION_1();
  v1 = v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_3(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_2(v3);

  return ShimActivityService.listFriendActivities(player:)(v1);
}

uint64_t dispatch thunk of GCFFriendActivityService.getFriendsLatestActivity()(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  OUTLINED_FUNCTION_3_1();
  v12 = (v5 + *v5);
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_3(v8);
  *v9 = v10;
  OUTLINED_FUNCTION_2(v9);

  return v12(a1, a2);
}

uint64_t sub_266002FBC()
{
  OUTLINED_FUNCTION_1();
  v2 = v1;
  OUTLINED_FUNCTION_9();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_4();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t sub_2660030B0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2660030F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_2660031D4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_266003284()
{
  result = qword_280057E60;
  if (!qword_280057E60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280057E60);
  }

  return result;
}

size_t sub_2660032C8(size_t a1, int64_t a2, char a3)
{
  result = sub_2660032E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2660032E8(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280057E68, &unk_26603B950);
  v10 = *(sub_2660392B4() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_2660392B4() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_26600349C(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_26600349C(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_2660392B4(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    sub_2660392B4();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_266003570(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_266039BB4();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_2660035B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_2660035CC()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_2660036B8;
  v6 = *(v0 + 40);
  v7 = *(v0 + 16);
  OUTLINED_FUNCTION_3_2();

  return MEMORY[0x2822008A0](v8);
}

uint64_t sub_2660036B8()
{
  OUTLINED_FUNCTION_1();
  v2 = *v1;
  OUTLINED_FUNCTION_4_1();
  *v3 = v2;
  v5 = *(v4 + 56);
  v6 = *v1;
  OUTLINED_FUNCTION_4_1();
  *v7 = v6;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2660037E8, 0, 0);
  }

  else
  {
    v8 = *(v2 + 48);

    v9 = *(v6 + 8);

    return v9();
  }
}

uint64_t sub_2660037E8()
{
  OUTLINED_FUNCTION_1();
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_266003848(uint64_t a1, void (*a2)(uint64_t (*)(uint64_t a1, void *a2), uint64_t), uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280057E58, &qword_26603C6E0);
  v7 = sub_2660399E4();
  OUTLINED_FUNCTION_1_1();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12);
  v14 = &v18 - v13;
  (*(v9 + 16))(&v18 - v13, a1, v7);
  v15 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  (*(v9 + 32))(v16 + v15, v14, v7);
  a2(sub_266004364, v16);
}

uint64_t sub_2660039C4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_266039A34();
  OUTLINED_FUNCTION_1_1();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12);
  v14 = v33 - v13;
  OUTLINED_FUNCTION_1_1();
  v16 = v15;
  v18 = *(v17 + 64);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = v33 - v23;
  if (a2)
  {
    v25 = sub_266039224();
    sub_265FFE434();
    v26 = swift_allocError();
    *v27 = a2;
    v28 = *MEMORY[0x277D0CE60];
    OUTLINED_FUNCTION_5_1(v25);
    (*(v29 + 104))();
    *&v33[0] = v26;
    v30 = a2;
  }

  else
  {
    (*(v9 + 16))(v14, a1, v7);
    if (__swift_getEnumTagSinglePayload(v14, 1, a4) != 1)
    {
      (*(v16 + 32))(v24, v14, a4);
      (*(v16 + 16))(v22, v24, a4);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280057E58, &qword_26603C6E0);
      sub_2660399E4();
      sub_2660399D4();
      return (*(v16 + 8))(v24, a4);
    }

    (*(v9 + 8))(v14, v7);
    sub_266039224();
    sub_265FFE434();
    memset(v33, 0, sizeof(v33));
    v31 = swift_allocError();
    sub_266039214();
    sub_266004410(v33);
    *&v33[0] = v31;
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280057E58, &qword_26603C6E0);
  sub_2660399E4();
  return sub_2660399C4();
}

uint64_t sub_266003CE8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_266003CFC()
{
  OUTLINED_FUNCTION_1();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *(v1 + 16) = *(v0 + 16);
  v2 = *(MEMORY[0x277D85A40] + 4);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_266003DD4;
  OUTLINED_FUNCTION_3_2();

  return MEMORY[0x2822008A0](v4);
}

uint64_t sub_266003DD4()
{
  OUTLINED_FUNCTION_1();
  v2 = *v1;
  OUTLINED_FUNCTION_4_1();
  *v3 = v2;
  v5 = *(v4 + 40);
  v6 = *v1;
  OUTLINED_FUNCTION_4_1();
  *v7 = v6;
  *(v2 + 48) = v0;

  if (v0)
  {
    v8 = sub_266003EFC;
  }

  else
  {
    v9 = *(v2 + 32);

    v8 = sub_266003EE4;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_266003EFC()
{
  OUTLINED_FUNCTION_1();
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_266003F5C(uint64_t a1, void (*a2)(uint64_t (*)(void *a1), uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280058600, &unk_26603B9B0);
  OUTLINED_FUNCTION_1_1();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  (*(v6 + 16))(&v15 - v10, a1, v4);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  (*(v6 + 32))(v13 + v12, v11, v4);
  a2(sub_26600414C, v13);
}

uint64_t sub_2660040BC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280058600, &unk_26603B9B0);
  OUTLINED_FUNCTION_5_1(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26600414C(void *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280058600, &unk_26603B9B0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  if (!a1)
  {
    return sub_2660399D4();
  }

  v4 = sub_266039224();
  sub_265FFE434();
  swift_allocError();
  *v5 = a1;
  v6 = *MEMORY[0x277D0CE60];
  OUTLINED_FUNCTION_5_1(v4);
  (*(v7 + 104))();
  v8 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280058600, &unk_26603B9B0);
  return sub_2660399C4();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2660042B8()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280057E58, &qword_26603C6E0);
  v2 = sub_2660399E4();
  OUTLINED_FUNCTION_5_1(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + v6, v4 | 7);
}

uint64_t sub_266004364(uint64_t a1, void *a2)
{
  v5 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280057E58, &qword_26603C6E0);
  v6 = *(sub_2660399E4() - 8);
  v7 = v2 + ((*(v6 + 80) + 24) & ~*(v6 + 80));

  return sub_2660039C4(a1, a2, v7, v5);
}

uint64_t sub_266004410(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F50, &qword_26603B9C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2660045BC@<X0>(uint64_t *a1@<X8>)
{
  result = ShimGameServicesRoot.delegate.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2660045E8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = swift_unknownObjectRetain();
  return ShimGameServicesRoot.delegate.setter(v3, v2);
}

uint64_t ShimGameServicesRoot.delegate.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 376);
  sub_2660046C0(a1, a2);

  return swift_unknownObjectRelease();
}

uint64_t sub_266004660()
{
  v1 = OBJC_IVAR____TtC16ShimGameServicesP33_BB4D3006578329CF5C2F6C1B26EE34E428GameServiceDelegateReference_lock;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC16ShimGameServicesP33_BB4D3006578329CF5C2F6C1B26EE34E428GameServiceDelegateReference_lock));
  v2 = v0 + OBJC_IVAR____TtC16ShimGameServicesP33_BB4D3006578329CF5C2F6C1B26EE34E428GameServiceDelegateReference_value;
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = *(v2 + 8);
  os_unfair_lock_unlock((v0 + v1));
  return Strong;
}

void sub_2660046C0(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC16ShimGameServicesP33_BB4D3006578329CF5C2F6C1B26EE34E428GameServiceDelegateReference_lock;
  os_unfair_lock_lock((v2 + OBJC_IVAR____TtC16ShimGameServicesP33_BB4D3006578329CF5C2F6C1B26EE34E428GameServiceDelegateReference_lock));
  *(v2 + OBJC_IVAR____TtC16ShimGameServicesP33_BB4D3006578329CF5C2F6C1B26EE34E428GameServiceDelegateReference_value + 8) = a2;
  swift_unknownObjectWeakAssign();
  v6 = [*(v2 + OBJC_IVAR____TtC16ShimGameServicesP33_BB4D3006578329CF5C2F6C1B26EE34E428GameServiceDelegateReference_serviceProxy) baseProxy];
  v7 = v6;
  v8 = &selRef_removeDataUpdateDelegate_;
  if (a1)
  {
    v8 = &selRef_addDataUpdateDelegate_;
  }

  [v6 *v8];

  os_unfair_lock_unlock((v2 + v5));
}

uint64_t (*ShimGameServicesRoot.delegate.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = *(v1 + 376);
  *a1 = sub_266004660();
  a1[1] = v3;
  return sub_2660047C4;
}

uint64_t sub_2660047C4(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (a2)
  {
    v5 = swift_unknownObjectRetain();
    sub_2660046C0(v5, v2);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_2660046C0(v4, v2);
  }

  return swift_unknownObjectRelease();
}

void ShimGameServicesRoot.init(localPlayer:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F60, &unk_26603B9E0);
  OUTLINED_FUNCTION_16(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - v10;
  sub_265FFED20();
  v13 = OUTLINED_FUNCTION_5(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_2();
  sub_266039594();
  if (!v2)
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v16 = *v3;
      v17 = v3[1];
      v18 = [objc_allocWithZone(MEMORY[0x277D0C138]) init];
      v19 = [v18 internal];
      v20 = sub_2660398D4();

      [v19 setPlayerID_];

      v21 = [objc_opt_self() proxyForPlayer_];
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F70, &unk_26603B960);
      v23 = *(v22 - 8);
      (*(v23 + 16))(v11, a1, v22);
      __swift_storeEnumTagSinglePayload(v11, 0, 1, v22);
      ShimGameServicesRoot.init(serviceProxy:localPlayer:)(v21, v11, a2);
      (*(v23 + 8))(a1, v22);

      return;
    }

    sub_265FFFCA0(v3);
    sub_266039224();
    sub_266006120(&qword_2800584E0, MEMORY[0x277D0CE80]);
    swift_allocError();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280057F80, &qword_26603B9F0);
    sub_2660391F4();
    swift_willThrow();
  }

  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F70, &unk_26603B960);
  OUTLINED_FUNCTION_5(v24);
  (*(v25 + 8))(a1);
}

uint64_t ShimGameServicesRoot.init(serviceProxy:localPlayer:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F60, &unk_26603B9E0);
  OUTLINED_FUNCTION_16(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  *a3 = a1;
  v12 = objc_allocWithZone(type metadata accessor for GameServiceDelegateReference());
  v13 = a1;
  ObjectType = swift_getObjectType();
  *&v12[OBJC_IVAR____TtC16ShimGameServicesP33_BB4D3006578329CF5C2F6C1B26EE34E428GameServiceDelegateReference_lock] = 0;
  *&v12[OBJC_IVAR____TtC16ShimGameServicesP33_BB4D3006578329CF5C2F6C1B26EE34E428GameServiceDelegateReference_value + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v12[OBJC_IVAR____TtC16ShimGameServicesP33_BB4D3006578329CF5C2F6C1B26EE34E428GameServiceDelegateReference_serviceProxy] = v13;
  v29.receiver = v12;
  v29.super_class = ObjectType;
  a3[47] = objc_msgSendSuper2(&v29, sel_init);
  sub_266005C18(a2, v11);
  v15 = [v13 friendServicePrivate];
  v16 = [v13 profileServicePrivate];
  v17 = [v13 utilityServicePrivate];
  OUTLINED_FUNCTION_5_2();
  a3[4] = type metadata accessor for InternalService();
  a3[5] = &off_2877B8648;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3 + 1);
  sub_266007CA0(v11, v15, v16, &OBJC_IVAR____TtC16ShimGameServicesP33_BB4D3006578329CF5C2F6C1B26EE34E428GameServiceDelegateReference_lock, boxed_opaque_existential_0);
  v19 = [v13 gameStatService];
  sub_266005E54((a3 + 1), &v29);
  a3[15] = &type metadata for ShimAchievementService;
  a3[16] = sub_266005C88();
  OUTLINED_FUNCTION_14_0();
  v20 = swift_allocObject();
  a3[12] = v20;
  sub_26600DE38(v19, &v29, (v20 + 16));
  v21 = sub_266039704();
  OUTLINED_FUNCTION_13();
  *(swift_allocObject() + 16) = v13;
  v22 = sub_2660391C4();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v25 = v13;
  sub_2660391B4();
  a3[11] = sub_2660396A4();

  sub_2660396C4();
  OUTLINED_FUNCTION_5_2();
  a3[20] = sub_2660397C4();
  a3[21] = sub_266006120(&qword_280057F90, MEMORY[0x277D0D5E8]);
  a3[17] = v21;
  sub_266039684();
  OUTLINED_FUNCTION_5_2();
  a3[25] = sub_266039774();
  a3[26] = sub_266006120(&qword_280057F98, MEMORY[0x277D0D5A8]);
  a3[22] = v21;
  sub_2660396D4();
  OUTLINED_FUNCTION_5_2();
  a3[30] = sub_266039714();
  a3[31] = sub_266006120(&qword_280057FA0, MEMORY[0x277D0D588]);
  a3[27] = v21;
  sub_2660396E4();
  sub_2660396F4();
  OUTLINED_FUNCTION_5_2();
  a3[9] = sub_266039744();
  a3[10] = sub_266006120(&qword_280057FA8, MEMORY[0x277D0D598]);
  a3[6] = v21;
  sub_2660396B4();
  OUTLINED_FUNCTION_5_2();
  a3[40] = sub_266039794();
  a3[41] = sub_266006120(&qword_280057FB0, MEMORY[0x277D0D5C8]);
  a3[37] = v21;
  v26 = sub_266039694();

  a3[45] = sub_266039784();
  a3[46] = sub_266006120(&qword_280057FB8, MEMORY[0x277D0D5B8]);

  a3[42] = v26;
  return sub_2660078E8(a2, &unk_280057F60, &unk_26603B9E0);
}

uint64_t ShimGameServicesRoot.init(daemonProxy:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F60, &unk_26603B9E0);
  OUTLINED_FUNCTION_16(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20](v7);
  v9 = &v12 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F70, &unk_26603B960);
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
  return ShimGameServicesRoot.init(serviceProxy:localPlayer:)(a1, v9, a2);
}

uint64_t ShimGameServicesRoot.activities.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = [*v1 friendServicePrivate];
  sub_266005E54((v1 + 1), v6);
  a1[3] = &type metadata for ShimActivityService;
  a1[4] = sub_266005D70();
  OUTLINED_FUNCTION_14_0();
  v4 = swift_allocObject();
  *a1 = v4;
  return sub_266002178(v3, v6, (v4 + 16));
}

uint64_t ShimGameServicesRoot.friends.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = [*v1 friendServicePrivate];
  v5 = [v3 utilityServicePrivate];
  sub_266005E54((v1 + 1), v8);
  a1[3] = &type metadata for ShimFriendService;
  a1[4] = sub_266005E00();
  OUTLINED_FUNCTION_14_0();
  v6 = swift_allocObject();
  *a1 = v6;
  return sub_26602BB48(v4, v5, v8, (v6 + 16));
}

uint64_t ShimGameServicesRoot.profiles.getter@<X0>(uint64_t *a1@<X8>)
{
  sub_266005E54((v1 + 6), v7);
  v3 = [*v1 profileServicePrivate];
  sub_266005E54((v1 + 1), v6);
  a1[3] = &type metadata for ShimProfileService;
  a1[4] = sub_266005EB8();
  v4 = swift_allocObject();
  *a1 = v4;
  return sub_266016660(v7, v3, v6, (v4 + 16));
}

uint64_t static ShimGameServicesRoot.makeActivitiesMessageExtensionService(serviceProxy:)()
{
  v3 = OUTLINED_FUNCTION_17();
  v4 = OUTLINED_FUNCTION_2_0(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_2();
  v7 = sub_266039824();
  sub_266039244();
  OUTLINED_FUNCTION_13();
  *(swift_allocObject() + 16) = v1;
  v8 = sub_2660391C4();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = v1;
  sub_2660391B4();
  OUTLINED_FUNCTION_11_1();
  v12 = sub_266039814();
  if (v2)
  {
    v13 = OUTLINED_FUNCTION_3_3();
    v14(v13);
  }

  else
  {
    v16 = v12;
    v17 = OUTLINED_FUNCTION_3_3();
    v18(v17);

    v0[3] = v7;
    result = sub_266006120(&qword_280057FD8, MEMORY[0x277D0D600]);
    v0[4] = result;
    *v0 = v16;
  }

  return result;
}

uint64_t static ShimGameServicesRoot.makePreferencesService(serviceProxy:)()
{
  v3 = OUTLINED_FUNCTION_17();
  v4 = OUTLINED_FUNCTION_2_0(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_2();
  v7 = sub_2660397B4();
  sub_266039234();
  OUTLINED_FUNCTION_13();
  *(swift_allocObject() + 16) = v1;
  v8 = sub_2660391C4();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = v1;
  sub_2660391B4();
  OUTLINED_FUNCTION_11_1();
  v12 = sub_2660397A4();
  if (v2)
  {
    v13 = OUTLINED_FUNCTION_3_3();
    v14(v13);
  }

  else
  {
    v16 = v12;
    v17 = OUTLINED_FUNCTION_3_3();
    v18(v17);

    v0[3] = v7;
    result = sub_266006120(&unk_280057FE0, MEMORY[0x277D0D5D8]);
    v0[4] = result;
    *v0 = v16;
  }

  return result;
}

uint64_t sub_266005568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800580B0, &qword_26603BC00);
  v3[23] = v4;
  v5 = *(v4 - 8);
  v3[24] = v5;
  v6 = *(v5 + 64) + 15;
  v3[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266005638, 0, 0);
}

uint64_t sub_266005638()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 18;
  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[23];
  v7 = v1[21];
  v8 = v1[20];
  v9 = [v1[22] baseProxy];
  v1[26] = v9;
  v10 = sub_266039104();
  v1[27] = v10;
  v1[2] = v1;
  v1[7] = v3;
  v1[3] = sub_266005828;
  swift_continuation_init();
  v1[17] = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280057E58, &qword_26603C6E0);
  sub_2660399B4();
  (*(v5 + 32))(boxed_opaque_existential_0, v4, v6);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_266005A44;
  v1[13] = &block_descriptor_0;
  [v9 gameServicesRemoteCall:v10 completionHandler:?];
  (*(v5 + 8))(boxed_opaque_existential_0, v6);

  return MEMORY[0x282200938](v2);
}

uint64_t sub_266005828()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  if (v2)
  {
    v3 = sub_2660059BC;
  }

  else
  {
    v3 = sub_266005938;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_266005938()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 216);
  v2 = *(v0 + 200);
  v3 = *(v0 + 144);
  v4 = *(v0 + 152);

  v5 = *(v0 + 8);

  return v5(v3, v4);
}

uint64_t sub_2660059BC()
{
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[25];
  v4 = v0[26];
  swift_willThrow();

  v5 = v0[1];
  v6 = v0[28];

  return v5();
}

void sub_266005A44(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;
    sub_266005B04();
  }

  else
  {
    v5 = a2;
    sub_266039114();

    sub_266005B50();
  }
}

uint64_t (*sub_266005BCC(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = *(v1 + 376);
  *a1 = sub_266004660();
  a1[1] = v3;
  return sub_2660047C4;
}

uint64_t sub_266005C18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F60, &unk_26603B9E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_266005C88()
{
  result = qword_280057F88;
  if (!qword_280057F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280057F88);
  }

  return result;
}

uint64_t sub_266005CE0()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_6_1();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_2_1(v1);

  return sub_266005568(v2, v3, v4);
}

unint64_t sub_266005D70()
{
  result = qword_280057FC0;
  if (!qword_280057FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280057FC0);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  OUTLINED_FUNCTION_14_0();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

unint64_t sub_266005E00()
{
  result = qword_280057FC8;
  if (!qword_280057FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280057FC8);
  }

  return result;
}

uint64_t sub_266005E54(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_266005EB8()
{
  result = qword_280057FD0;
  if (!qword_280057FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280057FD0);
  }

  return result;
}

uint64_t sub_266005F0C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_266005F54()
{
  OUTLINED_FUNCTION_13();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_266005F88()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_6_1();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_2_1(v1);

  return sub_266005568(v2, v3, v4);
}

uint64_t sub_266006018()
{
  OUTLINED_FUNCTION_8();
  v2 = v1;
  v4 = v3;
  v5 = *(*v0 + 16);
  v8 = *v0;

  v6 = *(v8 + 8);

  return v6(v4, v2);
}

uint64_t sub_266006120(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_266006170(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 384))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2660061B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 376) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 384) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 384) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_266006264(unsigned int a1, uint64_t a2)
{
  v106 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058058, &qword_26603BBA8);
  OUTLINED_FUNCTION_16(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20](v6);
  v8 = &v101 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058060, &qword_26603BBB0);
  v10 = OUTLINED_FUNCTION_2_0(v9);
  v103 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7_2();
  v16 = (v14 - v15);
  MEMORY[0x28223BE20](v17);
  v19 = &v101 - v18;
  v20 = sub_266039864();
  v21 = OUTLINED_FUNCTION_2_0(v20);
  v107 = v22;
  v108 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_7_2();
  v27 = v25 - v26;
  v29 = MEMORY[0x28223BE20](v28);
  v105 = &v101 - v30;
  MEMORY[0x28223BE20](v29);
  v104 = &v101 - v31;
  v32 = sub_2660391A4();
  v33 = OUTLINED_FUNCTION_2_0(v32);
  v110 = v34;
  v111 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  v109 = (&v101 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058068, &qword_26603BBB8);
  OUTLINED_FUNCTION_16(v38);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20](v41);
  v43 = &v101 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280058070, &unk_26603BBC0);
  v45 = OUTLINED_FUNCTION_2_0(v44);
  v102 = v46;
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_7_2();
  v51 = (v49 - v50);
  MEMORY[0x28223BE20](v52);
  v54 = &v101 - v53;
  if (a1 > 0x18)
  {
    goto LABEL_21;
  }

  if (((1 << a1) & 0xD00020) == 0)
  {
    if (a1 == 1)
    {
      OUTLINED_FUNCTION_16_0();
      sub_266039AC4();
      sub_266006E54(v113, v106, &v114);
      sub_266007894(v113);
      if (v115)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058080, &qword_26603BBD0);
        result = swift_dynamicCast();
        if (result)
        {
          v76 = 0;
          v102 = v103 + 4;
          v104 = MEMORY[0x277D84F90];
          v77 = v112;
          v78 = v112 + 40;
          v79 = *(v112 + 16);
          v101 = v112 + 40;
LABEL_26:
          v80 = (v78 + 16 * v76);
          while (v79 != v76)
          {
            if (v76 >= *(v77 + 16))
            {
LABEL_58:
              __break(1u);
              return result;
            }

            v82 = *(v80 - 1);
            v81 = *v80;
            swift_bridgeObjectRetain_n();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058088, &qword_26603BBD8);
            sub_266039484();
            __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);

            if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
            {
              v83 = *v102;
              (*v102)(v19, v8, v9);
              v83(v16, v19, v9);
              v84 = v104;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v84 = sub_266007030(0, *(v84 + 16) + 1, 1, v84, &qword_2800580A0, &qword_26603BBF0, &qword_280058060, &qword_26603BBB0);
              }

              v86 = *(v84 + 16);
              v85 = *(v84 + 24);
              v104 = v84;
              if (v86 >= v85 >> 1)
              {
                v104 = sub_266007030(v85 > 1, v86 + 1, 1, v104, &qword_2800580A0, &qword_26603BBF0, &qword_280058060, &qword_26603BBB0);
              }

              ++v76;
              *(v104 + 16) = v86 + 1;
              OUTLINED_FUNCTION_12_1();
              result = (v83)(v87 + v88 * v86, v16, v9);
              v78 = v101;
              goto LABEL_26;
            }

            result = sub_2660078E8(v8, &qword_280058058, &qword_26603BBA8);
            v80 += 2;
            ++v76;
          }

          v97 = v104;
          if (!*(v104 + 16))
          {

            goto LABEL_51;
          }

          if (sub_266004660())
          {
            swift_getObjectType();
            v58 = v109;
            *v109 = v97;
            v96 = MEMORY[0x277D0CCB8];
            goto LABEL_47;
          }
        }
      }

      else
      {
        sub_2660078E8(&v114, &unk_280057F50, &qword_26603B9C0);
      }

LABEL_51:
      v27 = v105;
      sub_266039834();

      v73 = sub_266039854();
      v89 = sub_266039A04();

      if (os_log_type_enabled(v73, v89))
      {
        v75 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        v113[0] = v90;
        *v75 = 136315138;
        v98 = sub_266039894();
        v100 = sub_266007324(v98, v99, v113);

        *(v75 + 4) = v100;
        v94 = "No valid ChallengeRef found for: %s";
LABEL_53:
        _os_log_impl(&dword_265FFB000, v73, v89, v94, v75, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v90);
        MEMORY[0x266777640](v90, -1, -1);
        goto LABEL_54;
      }

LABEL_55:

      return (*(v107 + 8))(v27, v108);
    }

    if (a1 == 24)
    {
      OUTLINED_FUNCTION_16_0();
      sub_266039AC4();
      sub_266006E54(v113, v106, &v114);
      sub_266007894(v113);
      if (v115)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058080, &qword_26603BBD0);
        result = swift_dynamicCast();
        if (result)
        {
          v60 = 0;
          v103 = v102 + 4;
          v105 = MEMORY[0x277D84F90];
          v61 = v112;
          v62 = v112 + 40;
          v63 = *(v112 + 16);
          v101 = v112 + 40;
LABEL_11:
          v64 = (v62 + 16 * v60);
          while (v63 != v60)
          {
            if (v60 >= *(v61 + 16))
            {
              __break(1u);
              goto LABEL_58;
            }

            v66 = *(v64 - 1);
            v65 = *v64;
            swift_bridgeObjectRetain_n();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058090, &qword_26603BBE0);
            sub_266039484();
            __swift_storeEnumTagSinglePayload(v43, 0, 1, v44);

            if (__swift_getEnumTagSinglePayload(v43, 1, v44) != 1)
            {
              v67 = *v103;
              (*v103)(v54, v43, v44);
              v67(v51, v54, v44);
              v68 = v105;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v68 = sub_266007030(0, *(v68 + 16) + 1, 1, v68, &qword_280058098, &qword_26603BBE8, &unk_280058070, &unk_26603BBC0);
              }

              v70 = *(v68 + 16);
              v69 = *(v68 + 24);
              v105 = v68;
              if (v70 >= v69 >> 1)
              {
                v105 = sub_266007030(v69 > 1, v70 + 1, 1, v105, &qword_280058098, &qword_26603BBE8, &unk_280058070, &unk_26603BBC0);
              }

              ++v60;
              *(v105 + 16) = v70 + 1;
              OUTLINED_FUNCTION_12_1();
              result = (v67)(v71 + v72 * v70, v51, v44);
              v62 = v101;
              goto LABEL_11;
            }

            result = sub_2660078E8(v43, &qword_280058068, &qword_26603BBB8);
            v64 += 2;
            ++v60;
          }

          v95 = v105;
          if (!*(v105 + 16))
          {

            v27 = v104;
            goto LABEL_38;
          }

          if (!sub_266004660())
          {
          }

          swift_getObjectType();
          v58 = v109;
          *v109 = v95;
          v96 = MEMORY[0x277D0CCC0];
LABEL_47:
          v56 = *v96;
          v57 = v110;
          goto LABEL_5;
        }
      }

      else
      {
        sub_2660078E8(&v114, &unk_280057F50, &qword_26603B9C0);
      }

      v27 = v104;
LABEL_38:
      sub_266039834();

      v73 = sub_266039854();
      v89 = sub_266039A04();

      if (!os_log_type_enabled(v73, v89))
      {
        goto LABEL_55;
      }

      v75 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v113[0] = v90;
      *v75 = 136315138;
      v91 = sub_266039894();
      v93 = sub_266007324(v91, v92, v113);

      *(v75 + 4) = v93;
      v94 = "No valid ChallengeDefinitionRef found for: %s";
      goto LABEL_53;
    }

LABEL_21:
    sub_266039834();
    v73 = sub_266039854();
    v74 = sub_266039A04();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 67109120;
      *(v75 + 4) = a1;
      _os_log_impl(&dword_265FFB000, v73, v74, "Ignoring service delegate event for type: %u", v75, 8u);
LABEL_54:
      MEMORY[0x266777640](v75, -1, -1);
      goto LABEL_55;
    }

    goto LABEL_55;
  }

  result = sub_266004660();
  if (result)
  {
    swift_getObjectType();
    v56 = *MEMORY[0x277D0CCC8];
    v58 = v109;
    v57 = v110;
LABEL_5:
    v59 = v111;
    (*(v57 + 104))(v58, v56, v111);
    sub_266039194();
    swift_unknownObjectRelease();
    return (*(v57 + 8))(v58, v59);
  }

  return result;
}

double sub_266006E54@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_266007940(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_2660031D4(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

id sub_266006F7C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_266007000()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058050, &qword_26603BBA0);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

size_t sub_266007030(size_t result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = *(a4 + 16);
  v15 = sub_266007144(v14, v13, a5, a6);
  v16 = OUTLINED_FUNCTION_15_0();
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v16, v17) - 8);
  if (v11)
  {
    v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    sub_266007240(a4 + v19, v14, v15 + v19, a7, a8);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v15;
}

size_t sub_266007144(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = OUTLINED_FUNCTION_15_0();
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v6, v7) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_266007240(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a3 < a1 || (v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5), result = OUTLINED_FUNCTION_5(v10), a1 + *(v12 + 72) * a2 <= a3))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    OUTLINED_FUNCTION_15_0();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_15_0();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_266007324(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2660073E8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_2660031D4(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2660073E8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2660074E8(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_266039B34();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_2660074E8(uint64_t a1, unint64_t a2)
{
  v4 = sub_266007534(a1, a2);
  sub_26600764C(&unk_2877B8438);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_266007534(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_266039914())
  {
    result = sub_266007730(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_266039AF4();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_266039B34();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_26600764C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_2660077A0(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_266007730(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800580A8, &qword_26603BBF8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_2660077A0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800580A8, &qword_26603BBF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_2660078E8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_5(v4);
  (*(v5 + 8))(a1);
  return a1;
}

unint64_t sub_266007940(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_266039AA4();

  return sub_266007984(a1, v5);
}

unint64_t sub_266007984(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_266007A48(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x266776FD0](v8, a1);
    sub_266007894(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

uint64_t OUTLINED_FUNCTION_17()
{

  return MEMORY[0x282164C30](0);
}

uint64_t type metadata accessor for InternalService()
{
  result = qword_280058970;
  if (!qword_280058970)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266007CA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F60, &unk_26603B9E0);
  v11 = OUTLINED_FUNCTION_16(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v25 - v14;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v16 = nullsub_1(a2, a4);
  v18 = v17;
  v25[1] = a3;
  v19 = swift_unknownObjectRetain();
  v21 = nullsub_1(v19, v20);
  v25[10] = &unk_2877B8DF0;
  v25[11] = sub_266007E80();
  v25[7] = v16;
  v25[8] = v18;
  v25[5] = &type metadata for ShimProfileService.GCFProfileServiceAdapter;
  v25[6] = sub_266007ED4();
  v25[2] = v21;
  sub_26600C95C(a1, v15, &unk_280057F60, &unk_26603B9E0);
  v22 = type metadata accessor for InternalService();
  v23 = *(v22 + 24);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_2660397F4();
  sub_26600C95C(a1, a5 + *(v22 + 28), &unk_280057F60, &unk_26603B9E0);
  a5[3] = &unk_2877B8DF0;
  a5[4] = sub_266007FF0();
  *a5 = v16;
  a5[1] = v18;
  a5[8] = &type metadata for ShimProfileService.GCFProfileServiceAdapter;
  a5[9] = sub_266008044();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  a5[5] = v21;
  return sub_2660078E8(a1, &unk_280057F60, &unk_26603B9E0);
}

unint64_t sub_266007E80()
{
  result = qword_280058640;
  if (!qword_280058640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280058640);
  }

  return result;
}

unint64_t sub_266007ED4()
{
  result = qword_2800582E0;
  if (!qword_2800582E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800582E0);
  }

  return result;
}

uint64_t sub_266007F28@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for InternalService();
  sub_26600CA38(a1, a5 + *(v10 + 28), &unk_280057F60, &unk_26603B9E0);
  sub_2660021E4(a2, a5);
  sub_2660021E4(a3, a5 + 40);
  v11 = *(v10 + 24);
  v12 = sub_266039804();
  OUTLINED_FUNCTION_5(v12);
  v14 = *(v13 + 32);

  return v14(a5 + v11, a4);
}

unint64_t sub_266007FF0()
{
  result = qword_280058610;
  if (!qword_280058610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280058610);
  }

  return result;
}

unint64_t sub_266008044()
{
  result = qword_2800582B0;
  if (!qword_2800582B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800582B0);
  }

  return result;
}

uint64_t sub_266008098()
{
  OUTLINED_FUNCTION_8();
  v1 = v0;
  v2 = *(type metadata accessor for InternalService() + 24);
  v3 = *(MEMORY[0x277D0D5F0] + 4);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_3(v4);
  *v5 = v6;
  v5[1] = sub_265FFD68C;

  return MEMORY[0x282165640](v1);
}

uint64_t sub_266008140(uint64_t a1, uint64_t a2)
{
  v3[29] = a2;
  v3[30] = v2;
  v3[28] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_266008158()
{
  OUTLINED_FUNCTION_24();
  v1 = *(v0 + 240);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 40);
  OUTLINED_FUNCTION_3_1();
  v10 = (v5 + *v5);
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  *(v0 + 248) = v8;
  *v8 = v0;
  OUTLINED_FUNCTION_2(v8);

  return v10(v2, v3);
}

uint64_t sub_26600826C()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_1();
  *v3 = v2;
  v5 = *(v4 + 248);
  *v3 = *v1;
  *(v2 + 256) = v6;
  *(v2 + 264) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_7_1();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }
}

void sub_26600838C()
{
  v14 = v0;
  v1 = 0;
  v13 = MEMORY[0x277D84F90];
  v3 = v0[32];
  v2 = v0[33];
  v4 = *(v3 + 16);
  v5 = v3 + 32;
  while (v4 != v1)
  {
    if (v1 >= *(v3 + 16))
    {
      __break(1u);
      return;
    }

    v7 = v0[28];
    v6 = v0[29];
    sub_266008E00(v5, (v0 + 2));
    sub_2660084D0(&v13, v0 + 2, v7, v6);
    if (v2)
    {
      v11 = v0[32];

      sub_266008E5C((v0 + 2));

      OUTLINED_FUNCTION_11();

      v12();
      return;
    }

    ++v1;
    sub_266008E5C((v0 + 2));
    v5 += 208;
  }

  v8 = v0[32];

  v9 = v13;
  v10 = v0[1];

  v10(v9);
}

uint64_t sub_2660084D0(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v107 = a1;
  v8 = sub_2660393F4();
  v9 = OUTLINED_FUNCTION_2_0(v8);
  v101 = v10;
  v102 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_19_0();
  v104 = v13;
  v14 = sub_266039154();
  v15 = OUTLINED_FUNCTION_16(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_19_0();
  v108 = v18;
  v19 = sub_266039444();
  v20 = OUTLINED_FUNCTION_2_0(v19);
  v105 = v21;
  v106 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_19_0();
  v103 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058390, &qword_26603C300);
  v26 = OUTLINED_FUNCTION_16(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_41();
  v100 = v29;
  v31 = MEMORY[0x28223BE20](v30);
  v33 = &v99 - v32;
  MEMORY[0x28223BE20](v31);
  v111 = &v99 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F70, &unk_26603B960);
  v36 = OUTLINED_FUNCTION_2_0(v35);
  v109 = v37;
  v110 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_41();
  v99 = v40;
  v42 = MEMORY[0x28223BE20](v41);
  v44 = &v99 - v43;
  v45 = MEMORY[0x28223BE20](v42);
  v47 = &v99 - v46;
  MEMORY[0x28223BE20](v45);
  v116 = &v99 - v48;
  v49 = a2[7];
  v50 = a2[8];
  v51 = v49 == a3 && v50 == a4;
  if (v51 || (v52 = a2[7], v53 = a2[8], (sub_266039BE4() & 1) != 0))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057E80, &unk_26603BD00);
    sub_265FFED20();
    OUTLINED_FUNCTION_39(v54);
    v56 = *(v55 + 72);
    v58 = (*(v57 + 80) + 32) & ~*(v57 + 80);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_26603B720;
    v60 = (v59 + v58);
    v61 = a2[6];
    *v60 = a2[5];
    v60[1] = v61;
    swift_storeEnumTagMultiPayload();

    result = sub_266039584();
    if (v4)
    {
      return result;
    }

    v64 = v109;
    v63 = v110;
    (*(v109 + 32))(v116, v47, v110);
    if (a2[10])
    {
      v65 = a2[9];
      v66 = a2[10];
      swift_bridgeObjectRetain_n();
      sub_2660395C4();

      v77 = 0;
    }

    else
    {
      v77 = 1;
    }

    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280057DB8, &unk_26603B760);
    __swift_storeEnumTagSinglePayload(v33, v77, 1, v78);
    sub_26600CA38(v33, v111, &qword_280058390, &qword_26603C300);
  }

  else
  {
    if (a2[5] != a3 || a2[6] != a4)
    {
      result = sub_266039BE4();
      if ((result & 1) == 0)
      {
        return result;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057E80, &unk_26603BD00);
    sub_265FFED20();
    OUTLINED_FUNCTION_39(v68);
    v70 = *(v69 + 72);
    v72 = (*(v71 + 80) + 32) & ~*(v71 + 80);
    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_26603B720;
    v74 = (v73 + v72);
    *v74 = v49;
    v74[1] = v50;
    swift_storeEnumTagMultiPayload();

    result = sub_266039584();
    if (v4)
    {
      return result;
    }

    v64 = v109;
    v75 = v44;
    v63 = v110;
    (*(v109 + 32))(v116, v75, v110);
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280057DB8, &unk_26603B760);
    __swift_storeEnumTagSinglePayload(v111, 1, 1, v76);
  }

  if (a2[13])
  {
    v79 = a2[12];
    sub_26600C95C((a2 + 14), &v112, &unk_2800585E0, &unk_26603BD10);
    if (v113)
    {
      sub_2660021E4(&v112, v114);
      v80 = v115;
      v81 = __swift_project_boxed_opaque_existential_1(v114, v115);

      sub_26602821C(v80);
      OUTLINED_FUNCTION_23();
      (*(v101 + 104))(v81, *MEMORY[0x277D0D348], v102);
      (*(v64 + 16))(v99, v116, v63);
      sub_26600C95C(v111, v100, &qword_280058390, &qword_26603C300);
      v82 = v103;
      sub_266039414();
      v83 = v107;
      sub_26600C9AC();
      v84 = *(*v83 + 16);
      sub_26600C9F8(v84);
      v85 = *v83;
      *(v85 + 16) = v84 + 1;
      (*(v105 + 32))(v85 + ((*(v105 + 80) + 32) & ~*(v105 + 80)) + *(v105 + 72) * v84, v82, v106);
      *v83 = v85;
      __swift_destroy_boxed_opaque_existential_0(v114);
    }

    else
    {
      sub_2660078E8(&v112, &unk_2800585E0, &unk_26603BD10);
    }
  }

  if (a2[20])
  {
    v86 = a2[19];
    sub_26600C95C((a2 + 21), &v112, &unk_2800585E0, &unk_26603BD10);
    if (v113)
    {
      sub_2660021E4(&v112, v114);
      v87 = v115;
      v88 = __swift_project_boxed_opaque_existential_1(v114, v115);

      sub_26602821C(v87);
      OUTLINED_FUNCTION_23();
      (*(v101 + 104))(v88, *MEMORY[0x277D0D350], v102);
      v89 = v116;
      (*(v64 + 16))(v99, v116, v63);
      v90 = v111;
      sub_26600C95C(v111, v100, &qword_280058390, &qword_26603C300);
      v91 = v103;
      sub_266039414();
      v92 = v107;
      sub_26600C9AC();
      v93 = *(*v92 + 16);
      sub_26600C9F8(v93);
      sub_2660078E8(v90, &qword_280058390, &qword_26603C300);
      (*(v64 + 8))(v89, v63);
      v94 = *v92;
      *(v94 + 16) = v93 + 1;
      (*(v105 + 32))(v94 + ((*(v105 + 80) + 32) & ~*(v105 + 80)) + *(v105 + 72) * v93, v91, v106);
      *v92 = v94;
      return __swift_destroy_boxed_opaque_existential_0(v114);
    }

    else
    {
      sub_2660078E8(v111, &qword_280058390, &qword_26603C300);
      v97 = OUTLINED_FUNCTION_27();
      v98(v97);
      return sub_2660078E8(&v112, &unk_2800585E0, &unk_26603BD10);
    }
  }

  else
  {
    sub_2660078E8(v111, &qword_280058390, &qword_26603C300);
    v95 = OUTLINED_FUNCTION_27();
    return v96(v95);
  }
}

uint64_t sub_266008EE4()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);

  return sub_266008098();
}

uint64_t sub_266008F6C()
{
  OUTLINED_FUNCTION_8();
  v1 = v0;
  v3 = v2;
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_3(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_2(v5);

  return sub_266008140(v3, v1);
}

uint64_t sub_266009004()
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_35();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  v1[1] = sub_265FFE784;
  OUTLINED_FUNCTION_38();

  return sub_266009BC8();
}

uint64_t sub_2660090BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 120) = a4;
  *(v5 + 128) = v4;
  *(v5 + 104) = a2;
  *(v5 + 112) = a3;
  *(v5 + 96) = a1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F60, &unk_26603B9E0) - 8) + 64) + 15;
  *(v5 + 136) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F70, &unk_26603B960);
  *(v5 + 144) = v8;
  v9 = *(v8 - 8);
  *(v5 + 152) = v9;
  v10 = *(v9 + 64) + 15;
  *(v5 + 160) = swift_task_alloc();
  v11 = type metadata accessor for InternalService();
  *(v5 + 168) = v11;
  *(v5 + 288) = *(v11 + 24);
  v12 = *(MEMORY[0x277D0D5F0] + 4);
  v13 = swift_task_alloc();
  *(v5 + 176) = v13;
  *v13 = v5;
  v13[1] = sub_266009220;

  return MEMORY[0x282165640](a2);
}

uint64_t sub_266009220()
{
  OUTLINED_FUNCTION_8();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  v5 = v4;
  OUTLINED_FUNCTION_7_0();
  *v6 = v5;
  v8 = *(v7 + 176);
  v9 = *v1;
  OUTLINED_FUNCTION_4();
  *v10 = v9;
  v5[23] = v11;
  v5[24] = v0;

  if (v0)
  {
    v12 = v5[20];
    v13 = v5[17];

    v14 = *(v9 + 8);

    return v14();
  }

  else
  {
    v5[25] = v3;
    OUTLINED_FUNCTION_7_1();

    return MEMORY[0x2822009F8](v16, v17, v18);
  }
}

uint64_t sub_266009368()
{
  OUTLINED_FUNCTION_24();
  *(v0 + 16) = *(v0 + 200);
  v1 = *(v0 + 192);
  *(v0 + 24) = *(v0 + 184);
  *(v0 + 208) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800585D0, &qword_26603B790);
  sub_266039A24();
  v2 = *(v0 + 184);
  if (v1)
  {

LABEL_5:
    v13 = *(v0 + 160);
    v14 = *(v0 + 136);

    OUTLINED_FUNCTION_11();

    return v15();
  }

  v3 = *(v0 + 168);
  v5 = *(v0 + 136);
  v4 = *(v0 + 144);
  v6 = *(v0 + 128);

  v7 = *(v0 + 40);
  *(v0 + 216) = *(v0 + 32);
  *(v0 + 224) = v7;
  sub_26600C95C(v6 + *(v3 + 28), v5, &unk_280057F60, &unk_26603B9E0);
  if (__swift_getEnumTagSinglePayload(v5, 1, v4) == 1)
  {
    v8 = *(v0 + 136);

    sub_2660078E8(v8, &unk_280057F60, &unk_26603B9E0);
    v9 = sub_266039224();
    sub_265FFE434();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_32(v10, "Nil local player");
    v11 = *MEMORY[0x277D0CE68];
    OUTLINED_FUNCTION_5_1(v9);
    (*(v12 + 104))();
    swift_willThrow();
    goto LABEL_5;
  }

  v17 = *(v0 + 288);
  v18 = *(v0 + 128);
  (*(*(v0 + 152) + 32))(*(v0 + 160), *(v0 + 136), *(v0 + 144));
  v19 = *(MEMORY[0x277D0D5F0] + 4);
  v20 = swift_task_alloc();
  *(v0 + 232) = v20;
  *v20 = v0;
  v20[1] = sub_26600959C;
  v21 = *(v0 + 160);

  return MEMORY[0x282165640](v21);
}

uint64_t sub_26600959C()
{
  OUTLINED_FUNCTION_8();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  v5 = v4;
  OUTLINED_FUNCTION_7_0();
  *v6 = v5;
  v8 = *(v7 + 232);
  v9 = *v1;
  OUTLINED_FUNCTION_4();
  *v10 = v9;
  v5[30] = v11;
  v5[31] = v0;

  if (!v0)
  {
    v5[32] = v3;
  }

  OUTLINED_FUNCTION_14_1();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

void sub_2660096A4()
{
  v0[6] = v0[32];
  v1 = v0[31];
  v2 = v0[26];
  v0[7] = v0[30];
  sub_266039A24();
  v3 = v0[30];
  v4 = v0[28];
  if (v1)
  {
    (*(v0[19] + 8))(v0[20], v0[18]);

    goto LABEL_3;
  }

  v9 = v0[27];
  v10 = v0[30];

  v11 = v0[8];
  v12 = v0[9];
  v0[33] = v12;
  v13 = v0[28];
  if (v9 == v11 && v4 == v12)
  {
    v25 = v0[28];
  }

  else
  {
    v15 = v0[27];
    v16 = OUTLINED_FUNCTION_48();

    if ((v16 & 1) == 0)
    {
      v18 = v0[19];
      v17 = v0[20];
      v19 = v0[18];
      v20 = v0[13];

      v21 = sub_266039224();
      sub_265FFE434();
      OUTLINED_FUNCTION_47();
      OUTLINED_FUNCTION_29();
      v0[10] = v32;
      v0[11] = v33;
      sub_266039B94();
      OUTLINED_FUNCTION_33();
      v22 = v0[11];
      *v12 = v0[10];
      v12[1] = v22;
      v23 = *MEMORY[0x277D0CE68];
      OUTLINED_FUNCTION_5_1(v21);
      (*(v24 + 104))(v12);
      swift_willThrow();
      (*(v18 + 8))(v17, v19);
LABEL_3:
      v5 = v0[20];
      v6 = v0[17];

      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_31();

      __asm { BRAA            X1, X16 }
    }
  }

  OUTLINED_FUNCTION_9_1();
  v27 = *(v26 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_26();
  v0[34] = v28;
  *v28 = v29;
  OUTLINED_FUNCTION_25(v28);
  OUTLINED_FUNCTION_31();

  __asm { BRAA            X3, X16 }
}

uint64_t sub_266009914()
{
  OUTLINED_FUNCTION_8();
  v1 = v0[28];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[18];

  (*(v3 + 8))(v2, v4);
  v5 = v0[31];
  v6 = v0[20];
  v7 = v0[17];

  OUTLINED_FUNCTION_11();

  return v8();
}

uint64_t sub_2660099AC()
{
  OUTLINED_FUNCTION_8();
  v2 = *v1;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *(v2 + 272);
  *v4 = *v1;
  *(v3 + 280) = v0;

  v6 = *(v2 + 264);

  OUTLINED_FUNCTION_14_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_266009ACC()
{
  OUTLINED_FUNCTION_1();
  v1 = v0[17];
  (*(v0[19] + 8))(v0[20], v0[18]);

  OUTLINED_FUNCTION_7_3();

  return v2();
}

uint64_t sub_266009B48()
{
  OUTLINED_FUNCTION_1();
  (*(v0[19] + 8))(v0[20], v0[18]);
  v1 = v0[35];
  v2 = v0[20];
  v3 = v0[17];

  OUTLINED_FUNCTION_11();

  return v4();
}

uint64_t sub_266009BC8()
{
  OUTLINED_FUNCTION_24();
  v3 = v2;
  v1[17] = v2;
  v1[18] = v0;
  v1[15] = v4;
  v1[16] = v5;
  v1[13] = v6;
  v1[14] = v7;
  v1[12] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F60, &unk_26603B9E0);
  OUTLINED_FUNCTION_16(v9);
  v11 = *(v10 + 64) + 15;
  v1[19] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F70, &unk_26603B960);
  v1[20] = v12;
  v13 = *(v12 - 8);
  v1[21] = v13;
  v14 = *(v13 + 64) + 15;
  v1[22] = swift_task_alloc();
  v15 = *(v3 + 16);
  v1[23] = v15;
  v1[24] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0x66C8000000000000;
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  v1[25] = v17;
  *v17 = v1;
  OUTLINED_FUNCTION_2(v17);
  OUTLINED_FUNCTION_37();

  return v19();
}

uint64_t sub_266009D9C()
{
  OUTLINED_FUNCTION_8();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  v5 = v4;
  OUTLINED_FUNCTION_7_0();
  *v6 = v5;
  v8 = *(v7 + 200);
  v9 = *v1;
  OUTLINED_FUNCTION_4();
  *v10 = v9;
  v5[26] = v11;
  v5[27] = v0;

  if (v0)
  {
    v12 = v5[22];
    v13 = v5[19];

    v14 = *(v9 + 8);

    return v14();
  }

  else
  {
    v5[28] = v3;
    OUTLINED_FUNCTION_7_1();

    return MEMORY[0x2822009F8](v16, v17, v18);
  }
}

uint64_t sub_266009EE4()
{
  OUTLINED_FUNCTION_36();
  v0[2] = v0[28];
  v1 = v0[27];
  v0[3] = v0[26];
  v0[29] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800585D0, &qword_26603B790);
  sub_266039A24();
  v2 = v0[26];
  if (v1)
  {

LABEL_5:
    v14 = v0[22];
    v15 = v0[19];

    OUTLINED_FUNCTION_11();

    return v16();
  }

  v4 = v0[19];
  v3 = v0[20];
  v6 = v0[17];
  v5 = v0[18];
  v7 = v0[16];

  v8 = v0[5];
  v0[30] = v0[4];
  v0[31] = v8;
  (*(v6 + 8))(v7, v6);
  if (__swift_getEnumTagSinglePayload(v4, 1, v3) == 1)
  {
    v9 = v0[19];

    sub_2660078E8(v9, &unk_280057F60, &unk_26603B9E0);
    v10 = sub_266039224();
    sub_265FFE434();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_32(v11, "Nil local player");
    v12 = *MEMORY[0x277D0CE68];
    OUTLINED_FUNCTION_5_1(v10);
    (*(v13 + 104))();
    swift_willThrow();
    goto LABEL_5;
  }

  v19 = v0[23];
  v18 = v0[24];
  (*(v0[21] + 32))(v0[22], v0[19], v0[20]);
  v27 = (v19 + *v19);
  v20 = v19[1];
  v21 = swift_task_alloc();
  v0[32] = v21;
  *v21 = v0;
  v21[1] = sub_26600A174;
  v22 = v0[24];
  v23 = v0[22];
  v24 = v0[17];
  v25 = v0[18];
  v26 = v0[16];

  return v27(v23, v26, v24);
}

uint64_t sub_26600A174()
{
  OUTLINED_FUNCTION_8();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  v5 = v4;
  OUTLINED_FUNCTION_7_0();
  *v6 = v5;
  v8 = *(v7 + 256);
  v9 = *v1;
  OUTLINED_FUNCTION_4();
  *v10 = v9;
  v5[33] = v11;
  v5[34] = v0;

  if (v0)
  {
    v12 = v5[31];
  }

  else
  {
    v5[35] = v3;
  }

  OUTLINED_FUNCTION_14_1();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

void sub_26600A284()
{
  v0[6] = v0[35];
  v1 = v0[34];
  v2 = v0[29];
  v0[7] = v0[33];
  sub_266039A24();
  v3 = v0[33];
  v4 = v0[31];
  if (v1)
  {
    v5 = OUTLINED_FUNCTION_28();
    v6(v5);

    goto LABEL_3;
  }

  v11 = v0[30];
  v12 = v0[33];

  v13 = v0[8];
  v14 = v0[9];
  v0[36] = v14;
  v15 = v0[31];
  if (v11 == v13 && v4 == v14)
  {
    v27 = v0[31];
  }

  else
  {
    v17 = v0[30];
    v18 = OUTLINED_FUNCTION_48();

    if ((v18 & 1) == 0)
    {
      v20 = v0[21];
      v19 = v0[22];
      v21 = v0[20];
      v22 = v0[13];

      v23 = sub_266039224();
      sub_265FFE434();
      OUTLINED_FUNCTION_47();
      OUTLINED_FUNCTION_29();
      v0[10] = v34;
      v0[11] = v35;
      sub_266039B94();
      OUTLINED_FUNCTION_33();
      v24 = v0[11];
      *v14 = v0[10];
      v14[1] = v24;
      v25 = *MEMORY[0x277D0CE68];
      OUTLINED_FUNCTION_5_1(v23);
      (*(v26 + 104))(v14);
      swift_willThrow();
      (*(v20 + 8))(v19, v21);
LABEL_3:
      v7 = v0[22];
      v8 = v0[19];

      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_31();

      __asm { BRAA            X1, X16 }
    }
  }

  OUTLINED_FUNCTION_9_1();
  v29 = *(v28 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_26();
  v0[37] = v30;
  *v30 = v31;
  OUTLINED_FUNCTION_25(v30);
  OUTLINED_FUNCTION_31();

  __asm { BRAA            X3, X16 }
}

uint64_t sub_26600A4EC()
{
  OUTLINED_FUNCTION_8();
  v2 = *v1;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *(v2 + 296);
  *v4 = *v1;
  *(v3 + 304) = v0;

  v6 = *(v2 + 288);

  OUTLINED_FUNCTION_14_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26600A60C()
{
  OUTLINED_FUNCTION_1();
  v1 = v0[19];
  (*(v0[21] + 8))(v0[22], v0[20]);

  OUTLINED_FUNCTION_7_3();

  return v2();
}

uint64_t sub_26600A688()
{
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_28();
  v2(v1);
  v3 = v0[34];
  v4 = v0[22];
  v5 = v0[19];

  OUTLINED_FUNCTION_11();

  return v6();
}

uint64_t sub_26600A700()
{
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_28();
  v2(v1);
  v3 = v0[38];
  v4 = v0[22];
  v5 = v0[19];

  OUTLINED_FUNCTION_11();

  return v6();
}

uint64_t sub_26600A778()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_34();
  v0 = OUTLINED_FUNCTION_44(dword_26603BCD8);
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);
  v3 = OUTLINED_FUNCTION_40();

  return v5(v3);
}

uint64_t sub_26600A814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_26600A83C, 0, 0);
}

uint64_t sub_26600A83C()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 32);
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  v5 = OUTLINED_FUNCTION_44(dword_26603BCF0);
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_26600A914;
  v6 = *(v0 + 48);
  v7 = *(v0 + 16);

  return v9();
}

uint64_t sub_26600A914()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_1();
  *v3 = v2;
  v5 = *(v4 + 64);
  v6 = *(v4 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  *(v9 + 72) = v0;

  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_26600AA4C()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 72);
  return v2();
}

uint64_t sub_26600AA70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_26600AA90()
{
  OUTLINED_FUNCTION_24();
  v1 = *(v0 + 64);
  v17 = *(v0 + 56);
  v2 = *(v0 + 48);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  v5 = *(v0 + 32);
  *(v4 + 16) = v2;
  *(v4 + 24) = v17;
  *(v4 + 32) = v3;
  *(v4 + 40) = v1;
  *(v4 + 48) = v5;
  v6 = *(v17 + 32);
  OUTLINED_FUNCTION_3_1();
  v16 = (v7 + *v7);
  v9 = *(v8 + 4);
  v10 = swift_task_alloc();
  *(v0 + 80) = v10;
  *v10 = v0;
  v10[1] = sub_26600ABF8;
  v11 = *(v0 + 56);
  v12 = *(v0 + 64);
  v13 = *(v0 + 48);
  v14 = *(v0 + 16);

  return v16();
}

uint64_t sub_26600ABF8()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  *(v3 + 88) = v0;

  if (!v0)
  {
    v9 = *(v3 + 72);
  }

  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_26600ACF8()
{
  OUTLINED_FUNCTION_1();
  v1 = *(v0 + 72);

  OUTLINED_FUNCTION_11();
  v3 = *(v0 + 88);

  return v2();
}

uint64_t sub_26600AD54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[11] = a6;
  v7[12] = a7;
  v7[9] = a4;
  v7[10] = a5;
  v7[7] = a2;
  v7[8] = a3;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_26600AD70()
{
  OUTLINED_FUNCTION_1();
  v1 = v0[10];
  v0[5] = type metadata accessor for InternalService();
  v0[6] = &off_2877B8648;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  sub_26600C8F8(v1, boxed_opaque_existential_0);
  swift_task_alloc();
  OUTLINED_FUNCTION_26();
  v0[13] = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_43(v3);

  return sub_26600029C(v5, v6);
}

uint64_t sub_26600AE24()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_1();
  *v3 = v2;
  v5 = *(v4 + 104);
  *v3 = *v1;
  *(v2 + 112) = v6;
  *(v2 + 120) = v0;

  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void *sub_26600AF28()
{
  OUTLINED_FUNCTION_8();
  result = v0[14];
  v2 = v0[11];
  v3 = result[2];
  v0[16] = v3;
  v0[17] = 0;
  if (v3)
  {
    if (result[2])
    {
      v0[18] = result[5];
      v4 = result[4];

      OUTLINED_FUNCTION_0_1();
      v5 = *(v2 + 4);
      v6 = swift_task_alloc();
      v0[19] = v6;
      *v6 = v0;
      v7 = OUTLINED_FUNCTION_1_3(v6);

      return v8(v7);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    OUTLINED_FUNCTION_5_3();

    return v9();
  }

  return result;
}

uint64_t sub_26600B048()
{
  OUTLINED_FUNCTION_1();
  v1 = *(v0 + 120);
  OUTLINED_FUNCTION_5_3();

  return v2();
}

uint64_t sub_26600B09C()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 152);
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  *(v3 + 160) = v0;

  if (!v0)
  {
    v9 = *(v3 + 144);
  }

  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

void sub_26600B19C()
{
  OUTLINED_FUNCTION_8();
  v1 = v0[16];
  v2 = v0[17] + 1;
  v0[17] = v2;
  if (v2 == v1)
  {
    v3 = v0[14];

    OUTLINED_FUNCTION_5_3();

    v4();
  }

  else
  {
    v5 = v0[14];
    if (v2 >= *(v5 + 16))
    {
      __break(1u);
    }

    else
    {
      v6 = v0[11];
      v7 = v5 + 16 * v2;
      v0[18] = *(v7 + 40);
      v8 = *(v7 + 32);

      OUTLINED_FUNCTION_0_1();
      v9 = *(v6 + 4);
      v10 = swift_task_alloc();
      v0[19] = v10;
      *v10 = v0;
      v11 = OUTLINED_FUNCTION_1_3(v10);

      v12(v11);
    }
  }
}

uint64_t sub_26600B2D0()
{
  OUTLINED_FUNCTION_1();
  v1 = v0[18];
  v2 = v0[14];

  v3 = v0[20];
  OUTLINED_FUNCTION_5_3();

  return v4();
}

uint64_t sub_26600B338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a8;
  v8[14] = v13;
  v8[11] = a6;
  v8[12] = a7;
  v8[9] = a4;
  v8[10] = a5;
  v8[7] = a2;
  v8[8] = a3;
  OUTLINED_FUNCTION_7_1();
  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26600B378()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 80);
  v8 = *(v0 + 104);
  *(v0 + 40) = v8;
  __swift_allocate_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_5_1(v8);
  (*(v2 + 16))();
  swift_task_alloc();
  OUTLINED_FUNCTION_26();
  *(v0 + 120) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_43(v3);

  return sub_26600029C(v5, v6);
}

uint64_t sub_26600B448()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_1();
  *v3 = v2;
  v5 = *(v4 + 120);
  *v3 = *v1;
  *(v2 + 128) = v6;
  *(v2 + 136) = v0;

  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void *sub_26600B54C()
{
  OUTLINED_FUNCTION_8();
  result = v0[16];
  v2 = v0[11];
  v3 = result[2];
  v0[18] = v3;
  v0[19] = 0;
  if (v3)
  {
    if (result[2])
    {
      v0[20] = result[5];
      v4 = result[4];

      OUTLINED_FUNCTION_0_1();
      v5 = *(v2 + 4);
      v6 = swift_task_alloc();
      v0[21] = v6;
      *v6 = v0;
      v7 = OUTLINED_FUNCTION_1_3(v6);

      return v8(v7);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    OUTLINED_FUNCTION_5_3();

    return v9();
  }

  return result;
}

uint64_t sub_26600B66C()
{
  OUTLINED_FUNCTION_1();
  v1 = *(v0 + 136);
  OUTLINED_FUNCTION_5_3();

  return v2();
}

uint64_t sub_26600B6C0()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 168);
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  *(v3 + 176) = v0;

  if (!v0)
  {
    v9 = *(v3 + 160);
  }

  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

void sub_26600B7C0()
{
  OUTLINED_FUNCTION_8();
  v1 = v0[18];
  v2 = v0[19] + 1;
  v0[19] = v2;
  if (v2 == v1)
  {
    v3 = v0[16];

    OUTLINED_FUNCTION_5_3();

    v4();
  }

  else
  {
    v5 = v0[16];
    if (v2 >= *(v5 + 16))
    {
      __break(1u);
    }

    else
    {
      v6 = v0[11];
      v7 = v5 + 16 * v2;
      v0[20] = *(v7 + 40);
      v8 = *(v7 + 32);

      OUTLINED_FUNCTION_0_1();
      v9 = *(v6 + 4);
      v10 = swift_task_alloc();
      v0[21] = v10;
      *v10 = v0;
      v11 = OUTLINED_FUNCTION_1_3(v10);

      v12(v11);
    }
  }
}

uint64_t sub_26600B8F4()
{
  OUTLINED_FUNCTION_1();
  v1 = v0[20];
  v2 = v0[16];

  v3 = v0[22];
  OUTLINED_FUNCTION_5_3();

  return v4();
}

uint64_t sub_26600B95C()
{
  OUTLINED_FUNCTION_36();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[6];
  v5 = v0[7];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_3(v7);
  *v8 = v9;
  v8[1] = sub_265FFE784;
  OUTLINED_FUNCTION_37();

  return sub_26600B338(v10, v11, v12, v3, v4, v6, v5, v1);
}

uint64_t sub_26600BA2C()
{
  OUTLINED_FUNCTION_1();
  v2 = v1;
  v4 = v3;
  v0[2] = v5;
  v0[3] = v6;
  v7 = swift_task_alloc();
  v0[4] = v7;
  *v7 = v0;
  OUTLINED_FUNCTION_2(v7);

  return sub_26600029C(v4, v2);
}

uint64_t sub_26600BAC8()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_1();
  *v3 = v2;
  v5 = *(v4 + 32);
  *v3 = *v1;
  *(v2 + 40) = v6;

  if (v0)
  {
    OUTLINED_FUNCTION_11();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_7_1();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }
}

void *sub_26600BBE8()
{
  OUTLINED_FUNCTION_8();
  result = v0[5];
  v2 = v0[2];
  v3 = result[2];
  v0[6] = v3;
  v0[7] = 0;
  if (v3)
  {
    if (result[2])
    {
      v0[8] = result[5];
      v4 = result[4];

      OUTLINED_FUNCTION_10_1();
      v5 = *(v2 + 4);
      v6 = swift_task_alloc();
      v0[9] = v6;
      *v6 = v0;
      v7 = OUTLINED_FUNCTION_13_0(v6);

      return v8(v7);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    OUTLINED_FUNCTION_7_3();

    return v9();
  }

  return result;
}

uint64_t sub_26600BCEC()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v3 + 64);
    v10 = *(v3 + 40);

    v11 = *(v7 + 8);

    return v11();
  }

  else
  {
    OUTLINED_FUNCTION_14_1();

    return MEMORY[0x2822009F8](v13, v14, v15);
  }
}

uint64_t sub_26600BE24()
{
  OUTLINED_FUNCTION_8();
  v1 = v0[8];

  v2 = v0[6];
  v3 = v0[7] + 1;
  v0[7] = v3;
  result = v0[5];
  if (v3 == v2)
  {

    OUTLINED_FUNCTION_7_3();

    return v5();
  }

  else if (v3 >= *(result + 16))
  {
    __break(1u);
  }

  else
  {
    v6 = v0[2];
    v7 = result + 16 * v3;
    v0[8] = *(v7 + 40);
    v8 = *(v7 + 32);

    OUTLINED_FUNCTION_10_1();
    v9 = *(v6 + 4);
    v10 = swift_task_alloc();
    v0[9] = v10;
    *v10 = v0;
    v11 = OUTLINED_FUNCTION_13_0(v10);

    return v12(v11);
  }

  return result;
}

uint64_t sub_26600BF54()
{
  OUTLINED_FUNCTION_24();
  v1 = *(v0 + 16);
  v7 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_3(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_2(v4);
  OUTLINED_FUNCTION_37();

  return v7();
}

uint64_t sub_26600C06C()
{
  OUTLINED_FUNCTION_8();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_9();
  v6 = *(v5 + 16);
  v7 = *v0;
  OUTLINED_FUNCTION_4();
  *v8 = v7;

  v9 = *(v7 + 8);

  return v9(v4, v2);
}

uint64_t sub_26600C168()
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_34();
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_3_1();
  v10 = (v2 + *v2);
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_3(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_2(v6);
  v8 = OUTLINED_FUNCTION_40();

  return v10(v8);
}

uint64_t sub_26600C26C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(a7 + 32);
  v20 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_3(v16);
  *v17 = v18;
  v17[1] = sub_265FFE784;

  return v20(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_26600C3C4()
{
  OUTLINED_FUNCTION_35();
  v1 = *(v0 + 40);
  OUTLINED_FUNCTION_3_1();
  v9 = (v2 + *v2);
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_3(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_2(v6);
  OUTLINED_FUNCTION_38();

  return v9();
}

uint64_t sub_26600C4F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_266039804();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 24);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F60, &unk_26603B9E0);
      v10 = *(a3 + 28);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_26600C5E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = sub_266039804();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 24);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F60, &unk_26603B9E0);
      v10 = *(a4 + 28);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

void sub_26600C6B8()
{
  sub_26600C78C(319, &qword_2800580D8);
  if (v0 <= 0x3F)
  {
    sub_26600C78C(319, &qword_2800580E0);
    if (v1 <= 0x3F)
    {
      sub_266039804();
      if (v2 <= 0x3F)
      {
        sub_26600C7E0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_26600C78C(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_26600C7E0()
{
  if (!qword_2800580E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280057F70, &unk_26603B960);
    v0 = sub_266039A34();
    if (!v1)
    {
      atomic_store(v0, &qword_2800580E8);
    }
  }
}

uint64_t sub_26600C844()
{
  OUTLINED_FUNCTION_24();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_3(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_2(v6);
  OUTLINED_FUNCTION_37();

  return sub_26600AD54(v8, v9, v10, v1, v2, v4, v3);
}

uint64_t sub_26600C8F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InternalService();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26600C95C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_45(a1, a2, a3, a4);
  OUTLINED_FUNCTION_5(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

size_t sub_26600C9AC()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_26600CA88(result, *(v1 + 16) + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

size_t sub_26600C9F8(size_t result)
{
  v2 = *(*v1 + 24);
  if ((result + 1) > (v2 >> 1))
  {
    result = sub_26600CA88(v2 > 1, result + 1, 1, *v1);
    *v1 = result;
  }

  return result;
}

uint64_t sub_26600CA38(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_45(a1, a2, a3, a4);
  OUTLINED_FUNCTION_5(v6);
  (*(v7 + 32))(v4, v5);
  return v4;
}

size_t sub_26600CA88(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  v9 = sub_26600CB74(v8, v7);
  v10 = *(sub_266039444() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_26600CC70(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

size_t sub_26600CB74(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058380, &qword_26603C2F0);
  v4 = *(sub_266039444() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26600CC70(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_266039444(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    sub_266039444();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_3(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[12];
  v4 = v2[8];
  return v2[7];
}

uint64_t OUTLINED_FUNCTION_5_3()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_7_3()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_13_0(uint64_t a1)
{
  *(a1 + 8) = sub_26600BCEC;
  v3 = *(v2 + 24);
  return v1;
}

uint64_t OUTLINED_FUNCTION_23()
{
  v4 = *(v2 - 232);

  return MEMORY[0x2821652B8](v1, v0, 0, 0, 0, 0, 0, 0);
}

uint64_t OUTLINED_FUNCTION_25(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 120);
  return *(v2 + 96);
}

uint64_t OUTLINED_FUNCTION_28()
{
  result = v0[22];
  v2 = v0[20];
  v3 = *(v0[21] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_29()
{

  return sub_266039B04();
}

void OUTLINED_FUNCTION_33()
{

  JUMPOUT(0x266776E20);
}

uint64_t OUTLINED_FUNCTION_43(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 72);
  return v2 + 16;
}

uint64_t OUTLINED_FUNCTION_44@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_45(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_47()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_48()
{

  return sub_266039BE4();
}

uint64_t sub_26600D0C8(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return OUTLINED_FUNCTION_0(sub_26600D0E0);
}

uint64_t sub_26600D0E0()
{
  OUTLINED_FUNCTION_8();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = *(MEMORY[0x277D85A40] + 4);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800581F8, &qword_26603BFD8);
  *v3 = v0;
  v3[1] = sub_26600D1E0;
  OUTLINED_FUNCTION_14_1();

  return MEMORY[0x2822008A0]();
}

uint64_t sub_26600D1E0()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  *(v3 + 56) = v0;

  if (!v0)
  {
    v9 = *(v3 + 40);
  }

  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_26600D2E0()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_31_0();
  return v2();
}

void sub_26600D308(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280058200, &qword_26603BFE0);
  v7 = OUTLINED_FUNCTION_2_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = aBlock - v12;
  (*(v9 + 16))(aBlock - v12, a1, v6);
  v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v15 = swift_allocObject();
  (*(v9 + 32))(v15 + v14, v13, v6);
  aBlock[4] = sub_266014CD8;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26600D5C0;
  aBlock[3] = &block_descriptor_27;
  v16 = _Block_copy(aBlock);

  [a2 getAchievementDescriptionsForGameDescriptor:a3 handler:v16];
  _Block_release(v16);
}

uint64_t sub_26600D4B4(uint64_t a1)
{
  v7 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_266039B64();
  v3 = a1 + 32;
  if (!v2)
  {
    return v7;
  }

  while (1)
  {
    sub_2660031D4(v3, v6);
    sub_265FFFCFC(0, &qword_280058220, 0x277D0BFC0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_266039B44();
    v4 = *(v7 + 16);
    sub_266039B74();
    sub_266039B84();
    sub_266039B54();
    v3 += 32;
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

void sub_26600D5C0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = sub_266039964();

  v7 = a3;
  v5(v6, a3);
}

uint64_t sub_26600D654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return OUTLINED_FUNCTION_0(sub_26600D670);
}

uint64_t sub_26600D670()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800581F8, &qword_26603BFD8);
  *v5 = v0;
  v5[1] = sub_26600D774;
  OUTLINED_FUNCTION_14_1();

  return MEMORY[0x2822008A0]();
}

uint64_t sub_26600D774()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  *(v3 + 64) = v0;

  if (!v0)
  {
    v9 = *(v3 + 48);
  }

  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_26600D874()
{
  OUTLINED_FUNCTION_1();
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_11();
  v3 = *(v0 + 64);

  return v2();
}

void sub_26600D8D0(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280058200, &qword_26603BFE0);
  v9 = OUTLINED_FUNCTION_2_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  v15 = aBlock - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058760, &qword_26603BFE8);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_26603B720;
  *(v16 + 56) = sub_265FFFCFC(0, &qword_280058210, 0x277D0C1C8);
  *(v16 + 32) = a4;
  v17 = a4;
  v18 = sub_266039954();

  (*(v11 + 16))(v15, a1, v8);
  v19 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v20 = swift_allocObject();
  (*(v11 + 32))(v20 + v19, v15, v8);
  aBlock[4] = sub_266014AEC;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26600DB68;
  aBlock[3] = &block_descriptor_1;
  v21 = _Block_copy(aBlock);

  [a2 getAchievementsForGameDescriptor:a3 players:v18 handler:v21];
  _Block_release(v21);
}

uint64_t sub_26600DB04(uint64_t a1)
{
  result = sub_2660147A8(a1);
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_2660147E8(result, v3, 0, a1);
  }
}

void sub_26600DB68(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800581F8, &qword_26603BFD8);
  v6 = sub_266039884();

  v7 = a3;
  v5(v6, a3);
}

uint64_t sub_26600DC24()
{
  OUTLINED_FUNCTION_1();
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_3(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_4_2(v3);

  return sub_26600D0C8(v5, v1);
}

uint64_t sub_26600DCB0()
{
  OUTLINED_FUNCTION_1();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_4();
  *v7 = v6;

  OUTLINED_FUNCTION_31_0();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_26600DD9C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_47_0();
  v3 = *v1;
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_3(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_2(v5);

  return sub_26600D654(v2, v0, v3);
}

uint64_t sub_26600DE38@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  a3[3] = &type metadata for ShimAchievementService.GCFGameStatServiceAchievementsAdapter;
  a3[4] = &off_2877B8720;
  *a3 = a1;
  return sub_2660021E4(a2, (a3 + 5));
}

uint64_t ShimAchievementService.describe(achievements:)()
{
  OUTLINED_FUNCTION_1();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800580F0, &qword_26603BD38);
  OUTLINED_FUNCTION_16(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_28_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800580F8, &qword_26603BD40);
  OUTLINED_FUNCTION_16(v6);
  v8 = *(v7 + 64);
  v1[5] = OUTLINED_FUNCTION_28_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280058100, &unk_26603BD48);
  OUTLINED_FUNCTION_3_0(v9);
  v1[6] = v10;
  v12 = *(v11 + 64);
  v1[7] = OUTLINED_FUNCTION_43_0();
  v1[8] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800584D0, &unk_26603B740);
  v1[9] = v13;
  OUTLINED_FUNCTION_3_0(v13);
  v1[10] = v14;
  v16 = *(v15 + 64);
  v1[11] = OUTLINED_FUNCTION_43_0();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280058110, &qword_26603BD58);
  v1[14] = v17;
  OUTLINED_FUNCTION_3_0(v17);
  v1[15] = v18;
  v20 = *(v19 + 64);
  v1[16] = OUTLINED_FUNCTION_28_0();
  v21 = OUTLINED_FUNCTION_41_0();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_26600E038()
{
  OUTLINED_FUNCTION_1();
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[17] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[18] = v3;
  *v3 = v0;
  v3[1] = sub_26600E0EC;
  OUTLINED_FUNCTION_18_0(v0[2]);

  return sub_26600EC88();
}

uint64_t sub_26600E0EC()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 144);
  *v4 = *v1;
  v3[19] = v7;
  v3[20] = v8;
  v3[21] = v0;

  if (!v0)
  {
    v9 = v3[17];
  }

  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

void sub_26600E1F8()
{
  v1 = 0;
  v117 = v0[10];
  v116 = v117 + 1;
  v120 = v0[15];
  v2 = v0 + 7;
  v3 = MEMORY[0x277D84F90];
  v118 = v0[20];
  v119 = v0[6];
  v121 = *(v0[2] + 16);
  v122 = v0[19];
  v4 = v0[21];
  while (v1 != v121)
  {
    v5 = v0[16];
    v6 = v0[14];
    v7 = v0[2];
    v8 = *(v120 + 80);
    OUTLINED_FUNCTION_35_0();
    v123 = v1;
    (*(v10 + 16))(v5, v9 + *(v10 + 72) * v1);
    v11 = sub_266039514();
    if (v4)
    {
      v100 = v0[19];
      v101 = v0[20];
      v102 = OUTLINED_FUNCTION_49();
      v103(v102);

      v104 = v0[16];
      v105 = v0[12];
      v106 = v0[13];
      v107 = v0[11];
      v109 = v0[7];
      v108 = v0[8];
      v111 = v0[4];
      v110 = v0[5];

      OUTLINED_FUNCTION_11();

      v112();
      return;
    }

    v13 = v12;
    if (!*(v122 + 16) || (v14 = v11, v15 = v0[19], v16 = sub_26601368C(v0[16], &unk_280058110, &qword_26603BD58, &qword_280058270, &qword_280058278), (v17 & 1) == 0))
    {

LABEL_24:
      v41 = *v2;
      sub_2660393A4();
      OUTLINED_FUNCTION_34_0();
      __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);
      v46 = v123;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_11_2();
        sub_266013738();
        v3 = v85;
      }

      v48 = *(v3 + 16);
      v47 = *(v3 + 24);
      v49 = v48 + 1;
      if (v48 >= v47 >> 1)
      {
        OUTLINED_FUNCTION_22(v47);
        sub_266013738();
        v3 = v86;
      }

      v50 = v2;
      goto LABEL_29;
    }

    v18 = v0[13];
    v115 = v117[2];
    v115(v0[12], *(v122 + 56) + v117[9] * v16, v0[9]);
    v19 = v117[4];
    v20 = OUTLINED_FUNCTION_53();
    v21(v20);
    if (!*(v118 + 16) || (v22 = v0[20], v23 = sub_26601368C(v0[13], &qword_2800584D0, &unk_26603B740, &qword_280058258, &qword_280058260), (v24 & 1) == 0))
    {
      v36 = v0[13];
      v37 = v0[9];

      v38 = *v116;
      v39 = OUTLINED_FUNCTION_53();
      v40(v39);
LABEL_23:
      v2 = v0 + 7;
      goto LABEL_24;
    }

    v113 = v3;
    v25 = *(*(v118 + 56) + 8 * v23);
    v26 = sub_266003570(v25);

    for (i = 0; ; ++i)
    {
      if (v26 == i)
      {
        v57 = v0[13];
        v58 = v0[9];

        v59 = *v116;
        v60 = OUTLINED_FUNCTION_12_0();
        v61(v60);
        v3 = v113;
        goto LABEL_23;
      }

      if ((v25 & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x266777030](i, v25);
      }

      else
      {
        if (i >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_46;
        }

        v28 = *(v25 + 8 * i + 32);
      }

      v29 = v28;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_46:
        __break(1u);
        return;
      }

      v30 = [v28 identifier];
      v31 = sub_2660398E4();
      v33 = v32;

      if (v31 == v14 && v33 == v13)
      {
        break;
      }

      v35 = sub_266039BE4();

      if (v35)
      {
        goto LABEL_32;
      }
    }

LABEL_32:
    v62 = v0[13];
    v63 = v0[11];
    v64 = v0[9];

    v115(v63, v62, v64);
    v65 = [v29 identifier];
    sub_2660398E4();

    sub_2660143C8(v29);
    v66 = [v29 title];
    sub_2660398E4();

    v67 = [v29 unachievedDescription];
    sub_2660398E4();

    v68 = [v29 achievedDescription];
    sub_2660398E4();

    [v29 maximumPoints];
    [v29 isHidden];
    [v29 isReplayable];
    v69 = [v29 rarityPercent];
    v70 = v69;
    if (v69)
    {
      [v69 doubleValue];
    }

    v71 = v0[11];
    v72 = v0[8];
    v74 = v0[4];
    v73 = v0[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057E70, &unk_26603B7A0);
    OUTLINED_FUNCTION_34_0();
    __swift_storeEnumTagSinglePayload(v75, v76, v77, v78);
    sub_26600FD7C([v29 releaseState], v74);
    sub_266039394();
    v79 = sub_2660393A4();
    __swift_storeEnumTagSinglePayload(v72, 0, 1, v79);
    v3 = v113;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_11_2();
      sub_266013738();
      v3 = v87;
    }

    v46 = v123;
    v48 = *(v3 + 16);
    v80 = *(v3 + 24);
    v49 = v48 + 1;
    if (v48 >= v80 >> 1)
    {
      OUTLINED_FUNCTION_22(v80);
      sub_266013738();
      v3 = v88;
    }

    v81 = v0[13];
    v82 = v0[9];

    v83 = OUTLINED_FUNCTION_36_0();
    v84(v83);
    v50 = v0 + 8;
    v2 = v0 + 7;
LABEL_29:
    v1 = v46 + 1;
    v51 = *v50;
    v52 = OUTLINED_FUNCTION_49();
    v53(v52);
    *(v3 + 16) = v49;
    v54 = *(v119 + 80);
    OUTLINED_FUNCTION_32_0();
    sub_2660146BC(v51, v3 + v55 + *(v56 + 72) * v48, &unk_280058100, &unk_26603BD48);
    v4 = 0;
  }

  v89 = v0[19];
  v90 = v0[20];
  v91 = v0[16];
  v93 = v0[12];
  v92 = v0[13];
  v94 = v0[11];
  v96 = v0[7];
  v95 = v0[8];
  v114 = v3;
  v98 = v0[4];
  v97 = v0[5];

  OUTLINED_FUNCTION_31_0();

  v99(v114);
}

uint64_t sub_26600EA9C()
{
  v1 = v0[17];

  v2 = v0[21];
  v3 = v0[16];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[11];
  v8 = v0[7];
  v7 = v0[8];
  v10 = v0[4];
  v9 = v0[5];

  OUTLINED_FUNCTION_11();

  return v11();
}

uint64_t sub_26600EB64(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return OUTLINED_FUNCTION_0(sub_26600EB7C);
}

uint64_t sub_26600EB7C()
{
  OUTLINED_FUNCTION_24();
  v1 = *(v0 + 24);
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v3 = *(v2 + 8);
  OUTLINED_FUNCTION_6_2();
  v11 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  *(v0 + 32) = v7;
  *v7 = v0;
  v8 = OUTLINED_FUNCTION_25_0(v7);

  return v9(v8);
}

uint64_t sub_26600EC88()
{
  OUTLINED_FUNCTION_1();
  v0[5] = v1;
  v0[6] = v2;
  v0[4] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800584D0, &unk_26603B740);
  v0[7] = v4;
  OUTLINED_FUNCTION_3_0(v4);
  v0[8] = v5;
  v7 = *(v6 + 64);
  v0[9] = OUTLINED_FUNCTION_43_0();
  v0[10] = swift_task_alloc();
  v0[11] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280058110, &qword_26603BD58);
  v0[12] = v8;
  OUTLINED_FUNCTION_3_0(v8);
  v0[13] = v9;
  v11 = *(v10 + 64);
  v0[14] = OUTLINED_FUNCTION_43_0();
  v0[15] = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_41_0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_26600EDB8()
{
  v1 = 0;
  v2 = MEMORY[0x277D84F98];
  v3 = *(v0[4] + 16);
  v0[16] = v3;
  v4 = v2;
  while (1)
  {
    v0[18] = v1;
    v0[19] = v2;
    v0[17] = v2;
    v5 = v0[15];
    if (v1 == v3)
    {
      v45 = v0[14];
      v47 = v0[10];
      v46 = v0[11];
      v48 = v0[9];
      v49 = v0[15];

      v50 = v0[1];
      OUTLINED_FUNCTION_38_0();

      __asm { BRAA            X3, X16 }
    }

    v6 = v0[12];
    v7 = v0[13];
    v8 = v0[11];
    v9 = v0[4];
    v10 = *(v7 + 16);
    v7 += 16;
    v11 = *(v7 + 56);
    v12 = *(v7 + 64);
    v13 = OUTLINED_FUNCTION_39_0();
    v10(v13);
    sub_266039524();
    v14 = v0[15];
    v15 = v0[12];
    v16 = OUTLINED_FUNCTION_48_0();
    v63 = v10;
    v10(v16);
    v17 = OUTLINED_FUNCTION_24_0();
    v61 = v18;
    v18(v17);
    swift_isUniquelyReferenced_nonNull_native();
    v0[2] = v4;
    v19 = sub_26601368C(v5, &unk_280058110, &qword_26603BD58, &qword_280058270, &qword_280058278);
    if (__OFADD__(*(v4 + 16), (v20 & 1) == 0))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      return MEMORY[0x2821FE290]();
    }

    v21 = v19;
    v22 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058280, &qword_26603C038);
    if (sub_266039BA4())
    {
      break;
    }

LABEL_7:
    v26 = v0[2];
    v0[22] = v26;
    v27 = v0[13];
    v28 = v0[14];
    v29 = v0[12];
    v31 = v0[7];
    v30 = v0[8];
    v64 = v26;
    if (v22)
    {
      v32 = *(v30 + 72);
      (*(v30 + 40))(*(v26 + 56) + v32 * v21, v0[10], v31);
      v33 = *(v27 + 8);
      v33(v28, v29);
    }

    else
    {
      OUTLINED_FUNCTION_51(v26 + 8 * (v21 >> 6));
      v62 = v35;
      v63(v34 + v21 * v11, v28, v29);
      v32 = *(v30 + 72);
      (*(v30 + 32))(*(v64 + 56) + v32 * v21, v62, v31);
      v33 = *(v27 + 8);
      v33(v28, v29);
      v36 = *(v64 + 16);
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_25;
      }

      *(v64 + 16) = v38;
    }

    v0[23] = v32;
    v0[24] = v33;
    v2 = MEMORY[0x277D84F98];
    if (!*(MEMORY[0x277D84F98] + 16) || (v39 = v0[11], , sub_26601368C(v39, &qword_2800584D0, &unk_26603B740, &qword_280058258, &qword_280058260), LOBYTE(v39) = v40, , (v39 & 1) == 0))
    {
      v44 = OUTLINED_FUNCTION_50();
      v61(v44);
      v0[25] = sub_265FFEED4();
      OUTLINED_FUNCTION_7_4();
      v54 = *(v53 + 4);
      v55 = swift_task_alloc();
      v0[26] = v55;
      *v55 = v0;
      OUTLINED_FUNCTION_12_2(v55);
      OUTLINED_FUNCTION_38_0();

      __asm { BRAA            X1, X16 }
    }

    v41 = OUTLINED_FUNCTION_30();
    v42(v41);
    v43 = OUTLINED_FUNCTION_53();
    (v33)(v43);
    v4 = v0[22];
    v1 = v0[18] + 1;
    v3 = v0[16];
  }

  v23 = v0[2];
  v24 = sub_26601368C(v0[14], &unk_280058110, &qword_26603BD58, &qword_280058270, &qword_280058278);
  if ((v22 & 1) == (v25 & 1))
  {
    v21 = v24;
    goto LABEL_7;
  }

  v58 = v0[12];
  OUTLINED_FUNCTION_38_0();

  return MEMORY[0x2821FE290]();
}

uint64_t sub_26600F308()
{
  OUTLINED_FUNCTION_8();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  v5 = v2[26];
  v6 = *v1;
  OUTLINED_FUNCTION_7_0();
  *v7 = v6;
  v3[27] = v8;
  v3[28] = v0;

  v9 = v2[25];
  if (v0)
  {
    v10 = v3[22];
    v11 = v3[19];
    v13 = v3[8];
    v12 = v3[9];
    v14 = v3[7];
    v15 = *(v13 + 8);
    v3[29] = v15;
    v3[30] = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v15(v12, v14);
  }

  else
  {
  }

  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_26600F46C()
{
  v1 = v0[17];
  v2 = v0[9];
  swift_isUniquelyReferenced_nonNull_native();
  v0[3] = v1;
  v3 = sub_26601368C(v2, &qword_2800584D0, &unk_26603B740, &qword_280058258, &qword_280058260);
  if (__OFADD__(*(v1 + 16), (v4 & 1) == 0))
  {
    goto LABEL_40;
  }

  v5 = v3;
  v6 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058288, &unk_26603C040);
  if ((sub_266039BA4() & 1) == 0)
  {
LABEL_6:
    v11 = v0[3];
    v12 = v0[27];
    v103 = v11;
    if (v6)
    {
      v13 = v11[7];
      v14 = *(v13 + 8 * v5);
      *(v13 + 8 * v5) = v12;
    }

    else
    {
      v15 = v0[23];
      v17 = v0[20];
      v16 = v0[21];
      v18 = v0[9];
      v19 = v0[7];
      v11[(v5 >> 6) + 8] |= 1 << v5;
      v17(v11[6] + v15 * v5, v18, v19);
      *(v11[7] + 8 * v5) = v12;
      v20 = v11[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
LABEL_41:
        __break(1u);
        return MEMORY[0x2821FE290]();
      }

      v11[2] = v22;
    }

    v23 = v0[12];
    v24 = v0[24];
    v25 = v0[15];
    v26 = v0[11];
    v27 = v0[7];
    v28 = v0[13] + 8;
    v29 = *(v0[8] + 8);
    v29(v0[9], v27);
    v29(v26, v27);
    v30 = OUTLINED_FUNCTION_15_0();
    v24(v30);
    v31 = v0[28];
    v32 = v103;
    while (1)
    {
      v33 = v0[22];
      v34 = v0[18] + 1;
      v0[18] = v34;
      v0[19] = v32;
      v0[17] = v32;
      v35 = v0[15];
      if (v34 == v0[16])
      {
        v76 = v0[14];
        v78 = v0[10];
        v77 = v0[11];
        v79 = v0[9];
        v80 = v0[15];

        v81 = v0[1];
        OUTLINED_FUNCTION_37_0();

        __asm { BRAA            X3, X16 }
      }

      v36 = v0[12];
      v37 = v0[13];
      v38 = v0[11];
      v39 = v0[4];
      v41 = *(v37 + 16);
      v37 += 16;
      v40 = v41;
      v42 = *(v37 + 56);
      v43 = *(v37 + 64);
      v44 = OUTLINED_FUNCTION_39_0();
      v41(v44);
      v45 = sub_266039524();
      v46 = v0[12];
      if (v31)
      {
        v84 = *(v0[13] + 8);
        v85 = OUTLINED_FUNCTION_45_0(v45, v0[15]);
        v86(v85);

        v88 = v0[14];
        v87 = v0[15];
        v90 = v0[10];
        v89 = v0[11];
        v91 = v0[9];

        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_37_0();

        __asm { BRAA            X1, X16 }
      }

      v47 = OUTLINED_FUNCTION_48_0();
      v40(v47);
      v48 = OUTLINED_FUNCTION_24_0();
      v102 = v49;
      v49(v48);
      swift_isUniquelyReferenced_nonNull_native();
      v0[2] = v33;
      v50 = sub_26601368C(v35, &unk_280058110, &qword_26603BD58, &qword_280058270, &qword_280058278);
      if (__OFADD__(*(v33 + 16), (v51 & 1) == 0))
      {
        break;
      }

      v52 = v50;
      v53 = v51;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058280, &qword_26603C038);
      if (sub_266039BA4())
      {
        v54 = v0[2];
        v55 = sub_26601368C(v0[14], &unk_280058110, &qword_26603BD58, &qword_280058270, &qword_280058278);
        if ((v53 & 1) != (v56 & 1))
        {
          v10 = v0 + 12;
          goto LABEL_35;
        }

        v52 = v55;
      }

      v57 = v0[2];
      v0[22] = v57;
      v58 = v0[13];
      v59 = v0[14];
      v60 = v0[12];
      v62 = v0[7];
      v61 = v0[8];
      v105 = v57;
      if (v53)
      {
        v63 = *(v61 + 72);
        (*(v61 + 40))(*(v57 + 56) + v63 * v52, v0[10], v62);
        v64 = *(v58 + 8);
        v64(v59, v60);
      }

      else
      {
        OUTLINED_FUNCTION_51(v57 + 8 * (v52 >> 6));
        v104 = v66;
        v67(v65 + v52 * v42, v59, v60);
        v63 = *(v61 + 72);
        (*(v61 + 32))(*(v105 + 56) + v63 * v52, v104, v62);
        v64 = *(v58 + 8);
        v64(v59, v60);
        v68 = *(v105 + 16);
        v21 = __OFADD__(v68, 1);
        v69 = v68 + 1;
        if (v21)
        {
          goto LABEL_39;
        }

        *(v105 + 16) = v69;
      }

      v0[23] = v63;
      v0[24] = v64;
      v32 = v103;
      if (!v103[2] || (v70 = v0[11], , sub_26601368C(v70, &qword_2800584D0, &unk_26603B740, &qword_280058258, &qword_280058260), LOBYTE(v70) = v71, , (v70 & 1) == 0))
      {
        v75 = OUTLINED_FUNCTION_50();
        v102(v75);
        v0[25] = sub_265FFEED4();
        OUTLINED_FUNCTION_7_4();
        v95 = *(v94 + 4);
        v96 = swift_task_alloc();
        v0[26] = v96;
        *v96 = v0;
        OUTLINED_FUNCTION_12_2();
        OUTLINED_FUNCTION_37_0();

        __asm { BRAA            X1, X16 }
      }

      v72 = OUTLINED_FUNCTION_30();
      v73(v72);
      v74 = OUTLINED_FUNCTION_53();
      (v64)(v74);
      v31 = 0;
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v7 = v0[3];
  v8 = sub_26601368C(v0[9], &qword_2800584D0, &unk_26603B740, &qword_280058258, &qword_280058260);
  if ((v6 & 1) == (v9 & 1))
  {
    v5 = v8;
    goto LABEL_6;
  }

  v10 = v0 + 7;
LABEL_35:
  v99 = *v10;
  OUTLINED_FUNCTION_37_0();

  return MEMORY[0x2821FE290]();
}

uint64_t sub_26600FB4C()
{
  OUTLINED_FUNCTION_24();
  v1 = *(v0 + 240);
  v2 = *(v0 + 192);
  v3 = *(v0 + 120);
  v4 = *(v0 + 96);
  v5 = *(v0 + 104) + 8;
  (*(v0 + 232))(*(v0 + 88), *(v0 + 56));
  v6 = OUTLINED_FUNCTION_12_0();
  v2(v6);
  v7 = *(v0 + 224);
  v9 = *(v0 + 112);
  v8 = *(v0 + 120);
  v11 = *(v0 + 80);
  v10 = *(v0 + 88);
  v12 = *(v0 + 72);

  OUTLINED_FUNCTION_11();

  return v13();
}

uint64_t sub_26600FC10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_26601368C(a1, &unk_280058110, &qword_26603BD58, &qword_280058270, &qword_280058278), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(a2 + 56);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800584D0, &unk_26603B740);
    (*(*(v9 - 8) + 16))(a3, v8 + *(*(v9 - 8) + 72) * v7, v9);
    v10 = a3;
    v11 = 0;
    v12 = v9;
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800584D0, &unk_26603B740);
    v10 = a3;
    v11 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v12);
}

uint64_t sub_26600FD0C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_26601368C(a1, &qword_2800584D0, &unk_26603B740, &qword_280058258, &qword_280058260);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
}

uint64_t sub_26600FD7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 == 1)
  {
    v3 = MEMORY[0x277D0CEE8];
    goto LABEL_5;
  }

  if (a1 == 2)
  {
    v3 = MEMORY[0x277D0CEF0];
LABEL_5:
    v4 = *v3;
    v5 = sub_266039274();
    OUTLINED_FUNCTION_5(v5);
    (*(v6 + 104))(a2, v4, v5);
    v7 = a2;
    v8 = 0;
    v9 = 1;
    v10 = v5;
    goto LABEL_7;
  }

  sub_266039274();
  OUTLINED_FUNCTION_34_0();
LABEL_7:

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t ShimAchievementService.listAchievements(games:after:)()
{
  OUTLINED_FUNCTION_1();
  v1[7] = v2;
  v1[8] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058120, &unk_26603C2D0);
  OUTLINED_FUNCTION_16(v3);
  v5 = *(v4 + 64);
  v1[9] = OUTLINED_FUNCTION_28_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058128, &qword_26603BD90);
  v1[10] = v6;
  OUTLINED_FUNCTION_3_0(v6);
  v1[11] = v7;
  v9 = *(v8 + 64);
  v1[12] = OUTLINED_FUNCTION_28_0();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800584D0, &unk_26603B740);
  v1[13] = v10;
  OUTLINED_FUNCTION_3_0(v10);
  v1[14] = v11;
  v13 = *(v12 + 64);
  v1[15] = OUTLINED_FUNCTION_28_0();
  v14 = OUTLINED_FUNCTION_41_0();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_26600FF70()
{
  v1 = v0[14];
  v2 = v0[7];
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  v0[17] = 0;
  v0[18] = v4;
  v0[16] = v3;
  if (v3)
  {
    v5 = v0[8];
    (*(v1 + 16))(v0[15], v2 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v0[13]);
    sub_266005E54(v5, (v0 + 2));
    v6 = v0[5];
    v7 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v6);
    v8 = sub_265FFEED4();
    v0[19] = v8;
    v15 = v8;
    v16 = *(v7 + 8);
    OUTLINED_FUNCTION_6_2();
    v21 = (v17 + *v17);
    v19 = *(v18 + 4);
    v20 = swift_task_alloc();
    v0[20] = v20;
    *v20 = v0;
    OUTLINED_FUNCTION_2(v20);

    return v21(v15, v6, v7);
  }

  else
  {
    v9 = v0[15];
    v10 = v0[12];
    v11 = v0[9];

    OUTLINED_FUNCTION_31_0();
    v13 = MEMORY[0x277D84F90];

    return v12(v13);
  }
}

uint64_t sub_2660101F4()
{
  OUTLINED_FUNCTION_8();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  v5 = v2[20];
  v6 = *v1;
  OUTLINED_FUNCTION_7_0();
  *v7 = v6;
  v3[21] = v8;
  v3[22] = v0;

  v9 = v2[19];
  if (v0)
  {
    v10 = v3[18];
  }

  else
  {
  }

  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

void sub_266010328()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[15];
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  sub_26601081C(sub_26601442C, v4, v1);
  v5 = v0[21];
  v6 = v0[18];
  if (v2)
  {

    v8 = v0[14];
    v7 = v0[15];
    v10 = v0[12];
    v9 = v0[13];
    OUTLINED_FUNCTION_55();
    v11 = OUTLINED_FUNCTION_12_0();
    v12(v11);

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_54();

    __asm { BRAA            X1, X16 }
  }

  v15 = v0[12];
  v16 = v0[9];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_2660395F4();
  OUTLINED_FUNCTION_34_0();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280058110, &qword_26603BD58);
  OUTLINED_FUNCTION_14_2();
  sub_266014E7C(v21, &unk_280058110);
  OUTLINED_FUNCTION_13_1();
  sub_266014E7C(v22, &unk_280058110);
  sub_2660395E4();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = v0[18];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v49 = *(v24 + 16);
    v50 = v0[18];
    sub_266013738();
    v24 = v51;
  }

  v25 = *(v24 + 16);
  if (v25 >= *(v24 + 24) >> 1)
  {
    sub_266013738();
    v24 = v52;
  }

  v27 = v0[14];
  v26 = v0[15];
  v28 = v0[12];
  v29 = v0[13];
  v30 = v0[10];
  v31 = v0[11];
  *(v24 + 16) = v25 + 1;
  (*(v31 + 32))(v24 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v25, v28, v30);
  (*(v27 + 8))(v26, v29);
  v32 = v0[16];
  v33 = v0[17] + 1;
  v0[17] = v33;
  v0[18] = v24;
  v34 = v0[15];
  if (v33 == v32)
  {
    v35 = v0[12];
    v36 = v0[9];
    v37 = v0[15];

    OUTLINED_FUNCTION_31_0();
    OUTLINED_FUNCTION_54();

    __asm { BRAA            X2, X16 }
  }

  v40 = v0[8];
  (*(v0[14] + 16))(v0[15], v0[7] + ((*(v0[14] + 80) + 32) & ~*(v0[14] + 80)) + *(v0[14] + 72) * v33, v0[13]);
  sub_266005E54(v40, (v0 + 2));
  v41 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v0[19] = sub_265FFEED4();
  v42 = *(v41 + 8);
  OUTLINED_FUNCTION_6_2();
  v53 = v43 + *v43;
  v45 = *(v44 + 4);
  v46 = swift_task_alloc();
  v0[20] = v46;
  *v46 = v0;
  OUTLINED_FUNCTION_2(v46);
  OUTLINED_FUNCTION_54();

  __asm { BRAA            X3, X16 }
}

uint64_t sub_266010780()
{
  OUTLINED_FUNCTION_24();
  v1 = v0[22];
  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  OUTLINED_FUNCTION_55();
  v6(v2, v4);

  OUTLINED_FUNCTION_11();

  return v7();
}

void sub_26601081C(void (*a1)(id *, uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v20 = a1;
  v21 = a2;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280058110, &qword_26603BD58);
  v6 = *(v19 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = v16 - v8;
  if (a3 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_266039BB4())
  {
    v25 = MEMORY[0x277D84F90];
    sub_26601319C();
    if (i < 0)
    {
      __break(1u);
      return;
    }

    v10 = 0;
    v11 = v25;
    v17 = i;
    v18 = a3 & 0xC000000000000001;
    v16[0] = a3 & 0xFFFFFFFFFFFFFF8;
    v16[1] = v6 + 32;
    while (1)
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v18)
      {
        v13 = MEMORY[0x266777030](v10, a3);
      }

      else
      {
        if (v10 >= *(v16[0] + 16))
        {
          goto LABEL_19;
        }

        v13 = *(a3 + 8 * v10 + 32);
      }

      v14 = v13;
      v24 = v13;
      v20(&v24, &v23);
      if (v4)
      {

        return;
      }

      v4 = 0;

      v25 = v11;
      v15 = *(v11 + 16);
      if (v15 >= *(v11 + 24) >> 1)
      {
        sub_26601319C();
        v11 = v25;
      }

      *(v11 + 16) = v15 + 1;
      (*(v6 + 32))(v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, v22, v19);
      ++v10;
      if (v12 == v17)
      {
        return;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }
}

uint64_t ShimAchievementService.getProgress(achievements:belongingTo:)()
{
  OUTLINED_FUNCTION_1();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280058140, &unk_26603BDA0);
  OUTLINED_FUNCTION_16(v4);
  v6 = *(v5 + 64);
  v1[5] = OUTLINED_FUNCTION_43_0();
  v1[6] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F70, &unk_26603B960);
  v1[7] = v7;
  OUTLINED_FUNCTION_3_0(v7);
  v1[8] = v8;
  v10 = *(v9 + 64);
  v1[9] = OUTLINED_FUNCTION_28_0();
  v11 = sub_266039354();
  v1[10] = v11;
  OUTLINED_FUNCTION_3_0(v11);
  v1[11] = v12;
  v14 = *(v13 + 64);
  v1[12] = OUTLINED_FUNCTION_28_0();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280058150, &qword_26603BDB0);
  OUTLINED_FUNCTION_16(v15);
  v17 = *(v16 + 64);
  v1[13] = OUTLINED_FUNCTION_28_0();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800584D0, &unk_26603B740);
  v1[14] = v18;
  OUTLINED_FUNCTION_3_0(v18);
  v1[15] = v19;
  v21 = *(v20 + 64);
  v1[16] = OUTLINED_FUNCTION_28_0();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280058110, &qword_26603BD58);
  v1[17] = v22;
  OUTLINED_FUNCTION_3_0(v22);
  v1[18] = v23;
  v25 = *(v24 + 64);
  v1[19] = OUTLINED_FUNCTION_43_0();
  v1[20] = swift_task_alloc();
  v26 = OUTLINED_FUNCTION_41_0();

  return MEMORY[0x2822009F8](v26, v27, v28);
}

uint64_t sub_266010C8C()
{
  OUTLINED_FUNCTION_1();
  v1 = swift_task_alloc();
  *(v0 + 168) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 176) = v2;
  *v2 = v0;
  v2[1] = sub_266010D44;
  OUTLINED_FUNCTION_18_0(*(v0 + 16));

  return sub_26600EC88();
}

uint64_t sub_266010D44()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 176);
  *v4 = *v1;
  v3[23] = v7;
  v3[24] = v8;
  v3[25] = v0;

  if (!v0)
  {
    v9 = v3[21];
  }

  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

void sub_266010E50()
{
  v1 = 0;
  v2 = v0[15];
  v128 = v0[18];
  v129 = *(v0[2] + 16);
  v123 = (v0[8] + 16);
  v124 = v0[11];
  v126 = (v2 + 8);
  v127 = (v2 + 32);
  v122 = v124 + 32;
  v132 = MEMORY[0x277D84F90];
  v3 = v0[25];
  while (v1 != v129)
  {
    v4 = v0[23];
    v5 = v0[20];
    v6 = v0[17];
    v8 = v0[13];
    v7 = v0[14];
    v9 = v0[2];
    v10 = *(v128 + 80);
    OUTLINED_FUNCTION_35_0();
    v13 = *(v12 + 16);
    v13(v5, v11 + *(v12 + 72) * v1);
    sub_26600FC10(v5, v4, v8);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v7);
    v15 = v0[24];
    if (EnumTagSinglePayload == 1)
    {
      v96 = v0[23];
      v97 = v0[13];

      sub_266014654(v97);
LABEL_38:
      v101 = v0[20];
      v102 = v0[17];
      sub_266039224();
      sub_265FFE434();
      OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_44_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058160, &qword_26603BDC8);
      sub_2660391F4();
      swift_willThrow();
      v103 = OUTLINED_FUNCTION_36_0();
      v104(v103);
LABEL_40:
      OUTLINED_FUNCTION_42();

      OUTLINED_FUNCTION_11();

      v120();
      return;
    }

    v16 = v0[16];
    (*v127)(v16, v0[13], v0[14]);
    v17 = sub_26600FD0C(v16, v15);
    if (!v17)
    {
      v99 = v0[23];
      v98 = v0[24];
      OUTLINED_FUNCTION_33_0(v0[16], v0[14], v18, v19, v20, v21, v22, v23, v121, v122, v123, v124, v125, v126);
      v100();

      goto LABEL_38;
    }

    v24 = v17;
    v25 = v0[20];
    v26 = sub_266039514();
    if (v3)
    {
      v106 = v0[23];
      v105 = v0[24];
      v107 = v0[20];
      v109 = v0[16];
      v108 = v0[17];
      v110 = v0[14];

      OUTLINED_FUNCTION_33_0(v111, v112, v113, v114, v115, v116, v117, v118, v121, v122, v123, v124, v125, v126);
      v119(v109, v110);
      (*(v128 + 8))(v107, v108);

      goto LABEL_40;
    }

    v28 = v26;
    v29 = v27;
    v130 = v13;
    v131 = v1 + 1;
    v30 = sub_266003570(v24);
    for (i = 0; ; ++i)
    {
      if (v30 == i)
      {

        v33 = 0;
        goto LABEL_22;
      }

      if ((v24 & 0xC000000000000001) != 0)
      {
        v32 = MEMORY[0x266777030](i, v24);
      }

      else
      {
        if (i >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_44;
        }

        v32 = *(v24 + 8 * i + 32);
      }

      v33 = v32;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_44:
        __break(1u);
        return;
      }

      v34 = [v32 identifier];
      v35 = sub_2660398E4();
      v37 = v36;

      if (v35 == v28 && v37 == v29)
      {
        break;
      }

      OUTLINED_FUNCTION_29_0();
      v39 = sub_266039BE4();

      if (v39)
      {
        goto LABEL_21;
      }
    }

LABEL_21:

LABEL_22:
    v0 = v125;
    v41 = v125[19];
    v40 = v125[20];
    v42 = v125[17];
    (*v123)(v125[9], v125[3], v125[7]);
    v130(v41, v40, v42);
    if (v33)
    {
      [v33 percentComplete];
      [v33 isCompleted];
      v43 = [v33 lastReportedDate];
      if (v43)
      {
        v44 = v43;
        v45 = v125[5];
        sub_266039144();

        v46 = 0;
      }

      else
      {
        v46 = 1;
      }

      v53 = v125[5];
      v52 = v125[6];
      v54 = sub_266039154();
      __swift_storeEnumTagSinglePayload(v53, v46, 1, v54);
      sub_2660146BC(v53, v52, &unk_280058140, &unk_26603BDA0);
    }

    else
    {
      v47 = v125[6];
      sub_266039154();
      OUTLINED_FUNCTION_34_0();
      __swift_storeEnumTagSinglePayload(v48, v49, v50, v51);
    }

    v55 = v125[19];
    v56 = v125[12];
    v57 = v125[9];
    v58 = v125[6];
    sub_266039344();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v132 = sub_26601383C(0, *(v132 + 16) + 1, 1, v132);
    }

    v60 = *(v132 + 16);
    v59 = *(v132 + 24);
    if (v60 >= v59 >> 1)
    {
      v82 = OUTLINED_FUNCTION_22(v59);
      v132 = sub_26601383C(v82, v83, v84, v132);
    }

    v61 = v125[20];
    v63 = v125[16];
    v62 = v125[17];
    v64 = v125[14];
    v65 = v125[12];
    v66 = v125[10];

    OUTLINED_FUNCTION_33_0(v67, v68, v69, v70, v71, v72, v73, v74, v121, v122, v123, v124, v125, v126);
    v75(v63, v64);
    v76 = OUTLINED_FUNCTION_36_0();
    v77(v76);
    *(v132 + 16) = v60 + 1;
    v78 = *(v124 + 80);
    OUTLINED_FUNCTION_32_0();
    (*(v81 + 32))(v80 + v79 + *(v81 + 72) * v60, v65, v66);
    v3 = 0;
    v1 = v131;
  }

  v85 = v0[23];
  v86 = v0[24];
  v88 = v0[19];
  v87 = v0[20];
  v89 = v0[16];
  v91 = v0[12];
  v90 = v0[13];
  v92 = v0[9];
  v94 = v0[5];
  v93 = v0[6];

  OUTLINED_FUNCTION_31_0();

  v95(v132);
}

uint64_t sub_26601151C()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 200);
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_11();

  return v3();
}

uint64_t sub_2660115D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  return OUTLINED_FUNCTION_0(sub_2660115EC);
}

uint64_t sub_2660115EC()
{
  OUTLINED_FUNCTION_1();
  sub_266005E54(*(v0 + 64), v0 + 16);
  v1 = *(v0 + 40);
  *(v0 + 80) = v1;
  *(v0 + 96) = __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *v2 = v0;
  v2[1] = sub_2660116B0;
  v3 = *(v0 + 72);

  return sub_265FFF2B8();
}

uint64_t sub_2660116B0()
{
  OUTLINED_FUNCTION_24();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  v5 = v4;
  OUTLINED_FUNCTION_7_0();
  *v6 = v5;
  v8 = *(v7 + 104);
  v9 = *v1;
  OUTLINED_FUNCTION_4();
  *v10 = v9;
  v5[14] = v3;
  v5[15] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_14_1();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  else
  {
    v14 = *(v5[11] + 16);
    OUTLINED_FUNCTION_6_2();
    v24 = (v15 + *v15);
    v17 = *(v16 + 4);
    v18 = swift_task_alloc();
    v5[16] = v18;
    *v18 = v9;
    v18[1] = sub_26601189C;
    v19 = v5[11];
    v20 = v5[12];
    v21 = v5[10];
    v22 = v5[7];

    return v24(v22, v3, v21, v19);
  }
}

uint64_t sub_26601189C()
{
  OUTLINED_FUNCTION_8();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  v5 = v4;
  OUTLINED_FUNCTION_7_0();
  *v6 = v5;
  v8 = *(v7 + 128);
  v9 = *v1;
  OUTLINED_FUNCTION_4();
  *v10 = v9;
  *(v5 + 136) = v0;

  if (!v0)
  {

    *(v5 + 144) = v3;
  }

  OUTLINED_FUNCTION_14_1();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2660119AC()
{
  OUTLINED_FUNCTION_1();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_31_0();
  v2 = *(v0 + 144);

  return v1(v2);
}

uint64_t sub_266011A0C()
{
  OUTLINED_FUNCTION_1();
  v1 = *(v0 + 120);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_11();

  return v2();
}

uint64_t sub_266011A68()
{
  OUTLINED_FUNCTION_1();

  v1 = *(v0 + 136);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_11();

  return v2();
}

uint64_t ShimAchievementService.listFriends(having:after:)()
{
  OUTLINED_FUNCTION_1();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F70, &unk_26603B960);
  v1[4] = v3;
  OUTLINED_FUNCTION_3_0(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_28_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058120, &unk_26603C2D0);
  OUTLINED_FUNCTION_16(v7);
  v9 = *(v8 + 64);
  v1[7] = OUTLINED_FUNCTION_28_0();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058168, &qword_26603BDD8);
  v1[8] = v10;
  OUTLINED_FUNCTION_3_0(v10);
  v1[9] = v11;
  v13 = *(v12 + 64);
  v1[10] = OUTLINED_FUNCTION_28_0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280058150, &qword_26603BDB0);
  OUTLINED_FUNCTION_16(v14);
  v16 = *(v15 + 64);
  v1[11] = OUTLINED_FUNCTION_28_0();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800584D0, &unk_26603B740);
  v1[12] = v17;
  OUTLINED_FUNCTION_3_0(v17);
  v1[13] = v18;
  v20 = *(v19 + 64);
  v1[14] = OUTLINED_FUNCTION_28_0();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280058110, &qword_26603BD58);
  v1[15] = v21;
  OUTLINED_FUNCTION_3_0(v21);
  v1[16] = v22;
  v24 = *(v23 + 64);
  v1[17] = OUTLINED_FUNCTION_28_0();
  v25 = OUTLINED_FUNCTION_41_0();

  return MEMORY[0x2822009F8](v25, v26, v27);
}

uint64_t sub_266011CDC()
{
  OUTLINED_FUNCTION_1();
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[18] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[19] = v3;
  *v3 = v0;
  v3[1] = sub_266011D90;
  OUTLINED_FUNCTION_18_0(v0[2]);

  return sub_26600EC88();
}

uint64_t sub_266011D90()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 152);
  *v4 = *v1;
  v3[20] = v7;
  v3[21] = v8;
  v3[22] = v0;

  if (!v0)
  {
    v9 = v3[18];
  }

  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_266011E9C()
{
  v2 = 0;
  v140 = v1[16];
  v3 = v1[13];
  v139 = (v3 + 32);
  v144 = v1[5];
  v138 = (v3 + 8);
  v4 = (v140 + 8);
  v5 = MEMORY[0x277D84F90];
  v6 = *(v1[2] + 16);
  v136 = v1[9];
  v134 = v136 + 32;
  v153 = v1[22];
  v132 = v140 + 8;
  for (i = v6; ; v6 = i)
  {
    v7 = v1[11];
    if (v2 == v6)
    {
      v114 = v1[20];
      v115 = v1[21];
      v116 = v1[17];
      v117 = v1[14];
      v118 = v1[10];
      v120 = v1[6];
      v119 = v1[7];

      OUTLINED_FUNCTION_31_0();

      return v121(v5);
    }

    v8 = v1[20];
    v9 = v1[17];
    v10 = v1[15];
    v11 = v1[12];
    v12 = v1[2];
    v13 = *(v140 + 80);
    OUTLINED_FUNCTION_35_0();
    v141 = v14;
    (*(v16 + 16))(v9, v15 + *(v16 + 72) * v14);
    sub_26600FC10(v9, v8, v7);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v11);
    v18 = v1[21];
    if (EnumTagSinglePayload == 1)
    {
      v122 = v1[20];
      v123 = v1[11];

      sub_266014654(v123);
      goto LABEL_50;
    }

    v19 = v1[14];
    (*v139)(v19, v1[11], v1[12]);
    v20 = sub_26600FD0C(v19, v18);
    if (!v20)
    {
      break;
    }

    v27 = v20;
    v142 = v141 + 1;
    v154 = MEMORY[0x277D84FA0];
    v28 = sub_266003570(v20);
    v29 = 0;
    v30 = v27 & 0xC000000000000001;
    while (v28 != v29)
    {
      sub_2660130EC(v29, v30 == 0, v27);
      if (v30)
      {
        result = MEMORY[0x266777030](v29, v27);
      }

      else
      {
        result = *(v27 + 8 * v29 + 32);
      }

      v32 = result;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
        return result;
      }

      v33 = [result friendsWhoHaveThis];
      sub_265FFFCFC(0, &unk_280058170, 0x277D0BFC8);
      v34 = sub_266039964();

      v0 = v153;
      sub_266012ABC(v34);

      ++v29;
    }

    v35 = v154;
    v36 = *(v154 + 16);
    v37 = v148;
    if (v36)
    {
      v137 = v5;
      v155 = MEMORY[0x277D84F90];
      sub_2660131DC();
      result = sub_266014838(v35);
      v40 = result;
      v41 = 0;
      v152 = v35 + 56;
      v143 = v35 + 64;
      v146 = v35;
      v145 = v36;
      if ((result & 0x8000000000000000) == 0)
      {
        while (v40 < 1 << *(v35 + 32))
        {
          v42 = v40 >> 6;
          if ((*(v152 + 8 * (v40 >> 6)) & (1 << v40)) == 0)
          {
            goto LABEL_53;
          }

          if (*(v35 + 36) != v38)
          {
            goto LABEL_54;
          }

          v151 = v39;
          v149 = v41;
          v150 = v38;
          v43 = v37[6];
          v44 = (*(v35 + 48) + 16 * v40);
          v45 = *v44;
          v46 = v44[1];
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057E80, &unk_26603BD00);
          sub_265FFED20();
          v48 = *(*(v47 - 8) + 72);
          v49 = (*(*(v47 - 8) + 80) + 32) & ~*(*(v47 - 8) + 80);
          v50 = swift_allocObject();
          *(v50 + 16) = xmmword_26603B720;
          v51 = (v50 + v49);
          *v51 = v45;
          v51[1] = v46;
          swift_storeEnumTagMultiPayload();
          swift_bridgeObjectRetain_n();
          sub_266039584();
          v147 = v153;
          if (v153)
          {
            v92 = v148[20];
            v93 = v148[21];
            v94 = v148[17];
            v96 = v148[14];
            v95 = v148[15];
            v97 = v148[12];

            v1 = v148;

            OUTLINED_FUNCTION_33_0(v98, v99, v100, v101, v102, v103, v104, v105, v132, v134, i, v136, v137, v138);
            v106(v96, v97);
            (*v133)(v94, v95);

            goto LABEL_42;
          }

          v52 = *(v155 + 16);
          if (v52 >= *(v155 + 24) >> 1)
          {
            sub_2660131DC();
          }

          v37 = v148;
          v53 = v148[6];
          v54 = v148[4];
          *(v155 + 16) = v52 + 1;
          v55 = *(v144 + 80);
          OUTLINED_FUNCTION_32_0();
          result = (*(v57 + 32))(v155 + v56 + *(v57 + 72) * v52);
          v35 = v146;
          if (v151)
          {
            goto LABEL_58;
          }

          v58 = 1 << *(v146 + 32);
          if (v40 >= v58)
          {
            goto LABEL_55;
          }

          v59 = *(v152 + 8 * v42);
          if ((v59 & (1 << v40)) == 0)
          {
            goto LABEL_56;
          }

          if (*(v146 + 36) != v150)
          {
            goto LABEL_57;
          }

          v60 = v59 & (-2 << (v40 & 0x3F));
          if (v60)
          {
            v58 = __clz(__rbit64(v60)) | v40 & 0x7FFFFFFFFFFFFFC0;
            v61 = v145;
          }

          else
          {
            v62 = v42 << 6;
            v63 = (v143 + 8 * v42);
            v64 = v42 + 1;
            v61 = v145;
            while (v64 < (v58 + 63) >> 6)
            {
              v66 = *v63++;
              v65 = v66;
              v62 += 64;
              ++v64;
              if (v66)
              {
                result = sub_266014878(v40, v150, 0);
                v58 = __clz(__rbit64(v65)) + v62;
                goto LABEL_31;
              }
            }

            result = sub_266014878(v40, v150, 0);
          }

LABEL_31:
          v41 = v149 + 1;
          if (v149 + 1 == v61)
          {

            v153 = 0;
            v4 = v132;
            v5 = v137;
            goto LABEL_36;
          }

          v153 = 0;
          v39 = 0;
          v38 = *(v146 + 36);
          v40 = v58;
          if (v58 < 0)
          {
            goto LABEL_52;
          }
        }
      }

      goto LABEL_52;
    }

    v147 = v0;

LABEL_36:
    v67 = v37[10];
    v68 = v37[7];
    v69 = v37[4];
    sub_2660395F4();
    OUTLINED_FUNCTION_34_0();
    __swift_storeEnumTagSinglePayload(v70, v71, v72, v73);
    OUTLINED_FUNCTION_14_2();
    sub_266014E7C(&qword_280058188, &unk_280057F70);
    OUTLINED_FUNCTION_13_1();
    sub_266014E7C(&qword_280058190, &unk_280057F70);
    OUTLINED_FUNCTION_29_0();
    sub_2660395E4();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_11_2();
      sub_266013738();
      v5 = v90;
    }

    v0 = v147;
    v80 = *(v5 + 16);
    if (v80 >= *(v5 + 24) >> 1)
    {
      sub_266013738();
      v5 = v91;
    }

    v81 = v148[17];
    v82 = v148[15];
    v83 = v148[10];
    v84 = v148[8];
    OUTLINED_FUNCTION_33_0(v148[14], v148[12], v74, v75, v76, v77, v78, v79, v132, v134, i, v136, v137, v138);
    v85();
    (*v4)(v81, v82);
    *(v5 + 16) = v80 + 1;
    v86 = *(v136 + 80);
    OUTLINED_FUNCTION_32_0();
    v89 = v5 + v87 + *(v88 + 72) * v80;
    v1 = v148;
    (*(v88 + 32))(v89, v83, v84);
    v2 = v142;
  }

  v124 = v1[20];
  v125 = v1[21];
  OUTLINED_FUNCTION_33_0(v1[14], v1[12], v21, v22, v23, v24, v25, v26, v132, v134, i, v136, v137, v138);
  v126();

LABEL_50:
  v127 = v1[17];
  v128 = v1[15];
  sub_266039224();
  sub_265FFE434();
  OUTLINED_FUNCTION_44_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058160, &qword_26603BDC8);
  sub_2660391F4();
  swift_willThrow();
  v129 = *v4;
  v130 = OUTLINED_FUNCTION_29_0();
  v131(v130);
LABEL_42:
  v107 = v1[17];
  v108 = v1[14];
  v109 = v1[10];
  v110 = v1[11];
  v112 = v1[6];
  v111 = v1[7];

  OUTLINED_FUNCTION_11();

  return v113();
}

uint64_t sub_266012804()
{
  OUTLINED_FUNCTION_24();
  v1 = v0[18];

  v2 = v0[22];
  v3 = v0[17];
  v4 = v0[14];
  v6 = v0[10];
  v5 = v0[11];
  v8 = v0[6];
  v7 = v0[7];

  OUTLINED_FUNCTION_11();

  return v9();
}

uint64_t sub_2660128AC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return OUTLINED_FUNCTION_0(sub_2660128C4);
}

uint64_t sub_2660128C4()
{
  OUTLINED_FUNCTION_24();
  v1 = *(v0 + 24);
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v3 = *(v2 + 8);
  OUTLINED_FUNCTION_6_2();
  v11 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  *(v0 + 32) = v7;
  *v7 = v0;
  v8 = OUTLINED_FUNCTION_25_0(v7);

  return v9(v8);
}

uint64_t sub_2660129D0()
{
  OUTLINED_FUNCTION_1();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  v5 = *(v4 + 32);
  v6 = *v1;
  OUTLINED_FUNCTION_4();
  *v7 = v6;

  OUTLINED_FUNCTION_31_0();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

void sub_266012ABC(unint64_t a1)
{
  v2 = sub_266003570(a1);
  v3 = 0;
  v13 = a1 & 0xC000000000000001;
  while (v2 != v3)
  {
    if (v13)
    {
      v4 = MEMORY[0x266777030](v3, a1);
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v4 = *(a1 + 8 * v3 + 32);
    }

    v5 = v4;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      return;
    }

    v6 = [v4 friendPlayer];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 playerID];
      v9 = sub_2660398E4();
      v11 = v10;

      sub_266013B2C(&v12, v9, v11);
    }

    else
    {
    }

    ++v3;
  }
}

uint64_t sub_266012C48()
{
  OUTLINED_FUNCTION_8();
  sub_266039224();
  sub_265FFE434();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_44_0();
  sub_266039204();
  swift_willThrow();
  OUTLINED_FUNCTION_11();

  return v0();
}

uint64_t sub_266012CCC()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_2(v1);

  return ShimAchievementService.describe(achievements:)();
}

uint64_t sub_266012D50()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_2(v1);

  return ShimAchievementService.listAchievements(games:after:)();
}

uint64_t sub_266012DD4()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_47_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);

  return ShimAchievementService.getProgress(achievements:belongingTo:)();
}

uint64_t sub_266012E68()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_2(v1);

  return ShimAchievementService.listFriends(having:after:)();
}

uint64_t sub_266012EEC()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);

  return ShimAchievementService.resetProgress(achievements:belongingTo:)();
}

uint64_t sub_266012F6C()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);

  return ShimAchievementService.reveal(achievements:belongingTo:)();
}

uint64_t sub_266012FEC()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);

  return ShimAchievementService.submit(progress:)();
}

uint64_t sub_26601306C()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);

  return ShimAchievementService.clearCache()();
}

unint64_t sub_2660130EC(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_266013110()
{
  OUTLINED_FUNCTION_1();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_3(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_4_2(v3);

  return sub_26600EB64(v5, v1);
}

void sub_26601319C()
{
  v1 = *v0;
  sub_26601340C();
  *v0 = v2;
}

void sub_2660131DC()
{
  v1 = *v0;
  sub_26601340C();
  *v0 = v2;
}

size_t sub_26601321C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058240, &qword_26603C018);
  v4 = *(sub_266039354() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

size_t sub_266013318(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = OUTLINED_FUNCTION_15_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_3_0(v8);
  v10 = *(v9 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (v10)
  {
    if (result - v12 != 0x8000000000000000 || v10 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v10);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_26601340C()
{
  OUTLINED_FUNCTION_46();
  if (v7)
  {
    v8 = *(v0 + 24);
    v9 = v8 >> 1;
    if ((v8 >> 1) < v4)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= v4)
      {
        v9 = v4;
      }
    }
  }

  else
  {
    v9 = v4;
  }

  v10 = *(v0 + 16);
  if (v9 <= v10)
  {
    v11 = *(v0 + 16);
  }

  else
  {
    v11 = v9;
  }

  if (!v11)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  v12 = OUTLINED_FUNCTION_15_0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  OUTLINED_FUNCTION_3_0(v14);
  v16 = *(v15 + 72);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = swift_allocObject();
  v20 = _swift_stdlib_malloc_size(v19);
  if (!v16)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v20 - v18 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_24;
  }

  v19[2] = v10;
  v19[3] = 2 * ((v20 - v18) / v16);
LABEL_19:
  v22 = OUTLINED_FUNCTION_15_0();
  v24 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(v22, v23) - 8) + 80);
  OUTLINED_FUNCTION_32_0();
  if (v3)
  {
    sub_266007240(v0 + v25, v10, v19 + v25, v2, v1);
    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_2660135B8(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_266039354(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    sub_266039354();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

unint64_t sub_26601368C(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, unint64_t *a5)
{
  v10 = *(v5 + 40);
  v11 = OUTLINED_FUNCTION_45_0(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
  sub_266014E7C(a4, a2);
  sub_2660398B4();
  v13 = OUTLINED_FUNCTION_52();
  return sub_266013928(v13, v14, a2, a3, a5);
}

void sub_266013738()
{
  OUTLINED_FUNCTION_46();
  if (v7)
  {
    v8 = *(v0 + 24);
    v9 = v8 >> 1;
    if ((v8 >> 1) < v4)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= v4)
      {
        v9 = v4;
      }
    }
  }

  else
  {
    v9 = v4;
  }

  v10 = *(v0 + 16);
  v11 = sub_266013318(v10, v9, v5, v6);
  v12 = OUTLINED_FUNCTION_15_0();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(v12, v13) - 8) + 80);
  OUTLINED_FUNCTION_32_0();
  if (v3)
  {
    sub_266007240(v0 + v15, v10, v11 + v15, v2, v1);
    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

size_t sub_26601383C(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  v9 = sub_26601321C(v8, v7);
  v10 = *(sub_266039354() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_2660135B8(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

unint64_t sub_266013928(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  v22 = a4;
  v23 = a5;
  v19 = a1;
  v21 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = OUTLINED_FUNCTION_2_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  v14 = &v19 - v13;
  v24 = v5 + 64;
  v20 = v5;
  v15 = ~(-1 << *(v5 + 32));
  for (i = a2 & v15; ((1 << i) & *(v24 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v15)
  {
    (*(v10 + 16))(v14, *(v20 + 48) + *(v10 + 72) * i, v7);
    sub_266014E7C(v23, v21);
    v17 = sub_2660398C4();
    (*(v10 + 8))(v14, v7);
    if (v17)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_266013AC8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_26603BD20;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

BOOL sub_266013B2C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_266039C24();
  sub_2660398F4();
  v9 = sub_266039C34();
  v10 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v7 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (sub_266039BE4() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v9 = v11 + 1;
  }

  v17 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;

  sub_266013ED4(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v20;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

uint64_t sub_266013C78(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800583B0, &qword_26603C010);
  result = sub_266039AE4();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

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
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_266013AC8(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    sub_266039C24();
    sub_2660398F4();
    result = sub_266039C34();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}