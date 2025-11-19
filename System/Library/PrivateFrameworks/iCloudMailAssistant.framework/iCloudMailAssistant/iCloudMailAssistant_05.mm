uint64_t sub_214909CE0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v66 = a3;
  v74 = a2;
  v6 = sub_21498E610();
  v68 = *(v6 - 8);
  v69 = v6;
  v7 = *(v68 + 64);
  MEMORY[0x28223BE20](v6);
  v67 = &v60[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v70 = sub_21498E600();
  v73 = *(v70 - 8);
  v9 = *(v73 + 64);
  MEMORY[0x28223BE20](v70);
  v72 = &v60[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A320, &unk_2149916D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v60[-v13];
  v15 = sub_21498E5D0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v71 = &v60[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v60[-v21];
  MEMORY[0x28223BE20](v20);
  v24 = &v60[-v23];
  v25 = OBJC_IVAR____TtC19iCloudMailAssistant20MARemoteViewDelegate_signpostID;
  swift_beginAccess();
  sub_2148AA824(v4 + v25, v14, &qword_27CA1A320, &unk_2149916D0);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    return sub_21489DFCC(v14, &qword_27CA1A320, &unk_2149916D0);
  }

  (*(v16 + 32))(v24, v14, v15);
  v76[0] = a1;
  v76[1] = v74;
  strcpy(v75, "/encodedview/");
  v75[7] = -4864;
  sub_2148A4020();
  sub_2148A4074();
  if ((sub_21498F800() & 1) == 0)
  {
    return (*(v16 + 8))(v24, v15);
  }

  v62 = a1;
  v27 = *(v16 + 16);
  v64 = v15;
  v65 = v24;
  v27(v22, v24, v15);
  v28 = sub_21498E650();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  sub_21498E640();
  if (qword_281190DA8 != -1)
  {
    swift_once();
  }

  v31 = v70;
  v32 = __swift_project_value_buffer(v70, qword_281194E30);
  v33 = v72;
  v34 = v73;
  (*(v73 + 16))(v72, v32, v31);
  v63 = *(v4 + 16);
  v35 = *(v4 + 32);
  sub_21490D9A4();

  sub_21490A414();
  sub_214895734(v36);
  v37 = sub_21498E5F0();
  v38 = v71;
  sub_21498E630();
  v61 = sub_21498FC70();
  result = sub_21498FCE0();
  if ((result & 1) == 0)
  {

    v44 = *(v16 + 8);
    v45 = v64;
    v44(v38, v64);
    (*(v34 + 8))(v33, v31);
    return (v44)(v65, v45);
  }

  v39 = v31;
  if (v35)
  {
    if (!(v63 >> 32))
    {
      v42 = v68;
      v41 = v69;
      v43 = v67;
      if ((v63 & 0xFFFFF800) == 0xD800)
      {
LABEL_23:
        __break(1u);
        return result;
      }

      result = v74;
      if (v63 >> 16 <= 0x10)
      {

        v40 = v76;
        goto LABEL_16;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v40 = v63;
  if (!v63)
  {
    __break(1u);
    goto LABEL_21;
  }

  v42 = v68;
  v41 = v69;
  v43 = v67;
LABEL_16:
  v46 = v39;

  sub_21498E660();

  if ((*(v42 + 88))(v43, v41) == *MEMORY[0x277D85B00])
  {
    v47 = 0;
    v48 = 0;
    v49 = "[Error] Interval already ended";
  }

  else
  {
    (*(v42 + 8))(v43, v41);
    v49 = "%s urlPath=%{signpost.telemetry:string1,public}s success=%{signpost.telemetry:number1,public}ld";
    v48 = 2;
    v47 = 3;
  }

  v50 = swift_slowAlloc();
  v51 = swift_slowAlloc();
  v76[0] = v51;
  *v50 = v48;
  *(v50 + 1) = v47;
  *(v50 + 2) = 2080;
  v52 = sub_21498FE10();
  v54 = sub_2149079F4(v52, v53, v76);

  *(v50 + 4) = v54;
  *(v50 + 12) = 2082;
  *(v50 + 14) = sub_2149079F4(v62, v74, v76);
  *(v50 + 22) = 2050;
  *(v50 + 24) = v66 & 1;
  v55 = v71;
  v56 = sub_21498E5C0();
  _os_signpost_emit_with_name_impl(&dword_21488E000, v37, v61, v56, v40, v49, v50, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x216059AC0](v51, -1, -1);
  MEMORY[0x216059AC0](v50, -1, -1);

  v57 = *(v16 + 8);
  v58 = v55;
  v59 = v64;
  v57(v58, v64);
  (*(v73 + 8))(v72, v46);
  return (v57)(v65, v59);
}

uint64_t sub_21490A484(uint64_t a1, unint64_t a2)
{
  v4 = sub_21498E690();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_214909CE0(a1, a2, 1);
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_281194E18);
  (*(v5 + 16))(v8, v9, v4);

  v10 = sub_21498E670();
  v11 = sub_21498FBD0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v16 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_2149079F4(a1, a2, &v16);
    _os_log_impl(&dword_21488E000, v10, v11, "[MARemoteViewDelegate] Finished loading RemoteContentView: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x216059AC0](v13, -1, -1);
    MEMORY[0x216059AC0](v12, -1, -1);
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_21490A698(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = sub_21498E690();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_214909CE0(a1, a2, 0);
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v6, qword_281194E18);
  (*(v7 + 16))(v10, v11, v6);

  v12 = a3;
  v13 = sub_21498E670();
  v14 = sub_21498FBD0();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v22 = a1;
    v16 = v15;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v23 = v18;
    *v16 = 136315394;
    *(v16 + 4) = sub_2149079F4(v22, a2, &v23);
    *(v16 + 12) = 2112;
    v19 = a3;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v20;
    *v17 = v20;
    _os_log_impl(&dword_21488E000, v13, v14, "[MARemoteViewDelegate] Error loading RemoteContentView: %s Error: %@", v16, 0x16u);
    sub_21489DFCC(v17, &qword_27CA1A8F8, &unk_2149938A0);
    MEMORY[0x216059AC0](v17, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x216059AC0](v18, -1, -1);
    MEMORY[0x216059AC0](v16, -1, -1);
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_21490A91C()
{
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C078, &unk_214999960);
  v1 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  v54 = &v45 - v2;
  v53 = sub_21498E600();
  v56 = *(v53 - 8);
  v3 = *(v56 + 64);
  v4 = MEMORY[0x28223BE20](v53);
  v51 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v45 - v6;
  v8 = sub_21498E5D0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v50 = &v45 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A320, &unk_2149916D0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v45 - v20;
  v22 = OBJC_IVAR____TtC19iCloudMailAssistant20MARemoteViewDelegate_signpostID;
  swift_beginAccess();
  v49 = v0;
  sub_2148AA824(v0 + v22, v21, &qword_27CA1A320, &unk_2149916D0);
  v52 = v9;
  v23 = *(v9 + 48);
  v48 = v8;
  LODWORD(v9) = v23(v21, 1, v8);
  sub_21489DFCC(v21, &qword_27CA1A320, &unk_2149916D0);
  if (v9 == 1)
  {
    v47 = v13;
    v24 = v56;
    if (qword_281190DA8 != -1)
    {
      swift_once();
    }

    v25 = v53;
    v26 = __swift_project_value_buffer(v53, qword_281194E30);
    v27 = *(v24 + 16);
    v27(v7, v26, v25);
    sub_21498E5F0();
    v28 = v50;
    sub_21498E5B0();
    v29 = *(v24 + 8);
    v56 = v24 + 8;
    v46 = v29;
    v29(v7, v25);
    v30 = v52;
    v31 = v48;
    v45 = *(v52 + 16);
    v45(v19, v28, v48);
    (*(v30 + 56))(v19, 0, 1, v31);
    v32 = v49;
    swift_beginAccess();
    sub_21489B818(v19, v32 + v22);
    swift_endAccess();
    v33 = v51;
    v27(v51, v26, v25);
    v34 = sub_21498E5F0();
    v35 = sub_21498FC80();
    if (sub_21498FCE0())
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      v37 = sub_21498E5C0();
      _os_signpost_emit_with_name_impl(&dword_21488E000, v34, v35, v37, "LoadRemoteView", "", v36, 2u);
      MEMORY[0x216059AC0](v36, -1, -1);
    }

    v45(v47, v28, v31);
    v38 = sub_21498E650();
    v39 = *(v38 + 48);
    v40 = *(v38 + 52);
    swift_allocObject();
    sub_21498E640();

    v46(v33, v53);
    (*(v52 + 8))(v28, v31);
  }

  v41 = v54;
  sub_21498EBC0();
  v57 = 0;
  sub_21498F400();
  v42 = v59;
  v43 = &v41[*(v55 + 36)];
  *v43 = v58;
  *(v43 + 1) = v42;
  *(v43 + 2) = 0x4000000000000000;
  sub_21490D8EC();
  return sub_21498F470();
}

uint64_t sub_21490AE74()
{
  sub_21489DFCC(v0 + OBJC_IVAR____TtC19iCloudMailAssistant20MARemoteViewDelegate_signpostID, &qword_27CA1A320, &unk_2149916D0);
  v1 = *(v0 + OBJC_IVAR____TtC19iCloudMailAssistant20MARemoteViewDelegate_onRetry + 8);
  sub_214895734(*(v0 + OBJC_IVAR____TtC19iCloudMailAssistant20MARemoteViewDelegate_onRetry));
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_21490AF24()
{
  sub_21490BED0(319, &qword_27CA1BF80, MEMORY[0x277D85AD8], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_21490B008()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  return v1;
}

uint64_t sub_21490B07C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  return v1;
}

uint64_t sub_21490B0F0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  return v1;
}

id sub_21490B164(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v52 = a2;
  v53 = a4;
  v51 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A328, &unk_2149933A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v50 = &v46 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C008, &qword_214999808);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v46 - v13;
  v15 = sub_21498E350();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21498E340();
  v20 = sub_21498E330();
  v22 = v21;
  v23 = *(v16 + 8);
  v48 = v16 + 8;
  v49 = v15;
  v24 = v15;
  v25 = v51;
  v47 = v23;
  v23(v19, v24);
  *(v5 + 16) = v20;
  *(v5 + 24) = v22;
  v26 = OBJC_IVAR____TtC19iCloudMailAssistant17MARemoteViewModel__retryTrigger;
  *&v56 = 0;
  sub_21498E9F0();
  (*(v11 + 32))(v5 + v26, v14, v10);
  v27 = v52;
  *(v5 + OBJC_IVAR____TtC19iCloudMailAssistant17MARemoteViewModel_appleAccount) = a1;
  sub_2148AA824(v27, v5 + OBJC_IVAR____TtC19iCloudMailAssistant17MARemoteViewModel_source, &qword_27CA1A328, &unk_2149933A0);
  swift_beginAccess();
  *&v54 = v25;
  sub_21498E8C0();
  v28 = a1;

  sub_21498E9F0();
  swift_endAccess();
  result = [v28 accountStore];
  if (result)
  {
    v30 = result;
    v31 = v50;
    sub_2148AA824(v27, v50, &qword_27CA1A328, &unk_2149933A0);
    v32 = type metadata accessor for MALiftUIDataSource(0);
    v33 = *(v32 + 48);
    v34 = *(v32 + 52);
    swift_allocObject();
    v35 = v28;

    v36 = sub_2149236D0(v30, v35, v31, v25);
    v37 = sub_21490D27C(&qword_27CA1C010, type metadata accessor for MALiftUIDataSource);
    swift_beginAccess();
    *&v54 = v36;
    *(&v54 + 1) = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1BFB8, &qword_2149996D0);
    sub_21498E9F0();
    swift_endAccess();
    v38 = v53;
    sub_2148AA824(v53, &v54, &qword_27CA1C018, &qword_214999810);
    if (v55)
    {

      sub_21489DFCC(v38, &qword_27CA1C018, &qword_214999810);
      sub_21489DFCC(v27, &qword_27CA1A328, &unk_2149933A0);
      sub_2148AAE3C(&v54, &v56);
LABEL_7:
      sub_2148AAE3C(&v56, v5 + OBJC_IVAR____TtC19iCloudMailAssistant17MARemoteViewModel_repository);
      return v5;
    }

    result = [v35 accountStore];
    if (result)
    {
      v39 = result;
      v40 = type metadata accessor for MARepositoryDefault();
      v41 = swift_allocObject();
      v42 = v35;
      sub_21498E340();
      v43 = sub_21498E330();
      v45 = v44;
      v47(v19, v49);
      v41[2] = v43;
      v41[3] = v45;
      v41[4] = v39;
      v41[5] = v42;
      v57 = v40;
      v58 = &off_2826CB168;

      *&v56 = v41;
      sub_21489DFCC(v53, &qword_27CA1C018, &qword_214999810);
      sub_21489DFCC(v27, &qword_27CA1A328, &unk_2149933A0);
      if (v55)
      {
        sub_21489DFCC(&v54, &qword_27CA1C018, &qword_214999810);
      }

      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_21490B684()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A328, &unk_2149933A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v33 - v4;
  v6 = sub_21498E510();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A330, &qword_2149916E0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = (v33 - v13);
  v15 = sub_21498E8C0();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = sub_21498E8B0();
  v19 = swift_allocObject();
  (*(v7 + 104))(v10, *MEMORY[0x277D245A0], v6);
  v20 = sub_21498E500();
  (*(v7 + 8))(v10, v6);
  *(v19 + 16) = v20 & 1;
  *v14 = v19;
  v21 = *MEMORY[0x277D23258];
  v22 = sub_21498E7C0();
  v23 = *(v22 - 8);
  (*(v23 + 104))(v14, v21, v22);
  (*(v23 + 56))(v14, 0, 1, v22);
  sub_21498E8E0();
  swift_getKeyPath();
  swift_getKeyPath();
  v33[0] = v18;

  sub_21498EA20();
  v24 = *(v1 + OBJC_IVAR____TtC19iCloudMailAssistant17MARemoteViewModel_appleAccount);
  result = [v24 accountStore];
  if (result)
  {
    v26 = result;
    sub_2148AA824(v1 + OBJC_IVAR____TtC19iCloudMailAssistant17MARemoteViewModel_source, v5, &qword_27CA1A328, &unk_2149933A0);
    v27 = type metadata accessor for MALiftUIDataSource(0);
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    swift_allocObject();

    v30 = sub_2149236D0(v26, v24, v5, v18);
    v31 = sub_21490D27C(&qword_27CA1C010, type metadata accessor for MALiftUIDataSource);
    swift_getKeyPath();
    swift_getKeyPath();
    v33[0] = v30;
    v33[1] = v31;

    sub_21498EA20();
    swift_getKeyPath();
    swift_getKeyPath();
    result = sub_21498EA00();
    if (!__OFADD__(*v32, 1))
    {
      ++*v32;
      (result)(v33, 0);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21490BAE0()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtC19iCloudMailAssistant17MARemoteViewModel__dataSource;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C068, &qword_214999950);
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  __swift_destroy_boxed_opaque_existential_1(&v0[OBJC_IVAR____TtC19iCloudMailAssistant17MARemoteViewModel_repository]);

  sub_21489DFCC(&v0[OBJC_IVAR____TtC19iCloudMailAssistant17MARemoteViewModel_source], &qword_27CA1A328, &unk_2149933A0);
  v4 = OBJC_IVAR____TtC19iCloudMailAssistant17MARemoteViewModel__retryTrigger;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C008, &qword_214999808);
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = OBJC_IVAR____TtC19iCloudMailAssistant17MARemoteViewModel__remoteStateStore;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C070, &qword_214999958);
  (*(*(v7 - 8) + 8))(&v0[v6], v7);
  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_21490BC90()
{
  sub_21490C198(319, &qword_27CA1BFB0, &qword_27CA1BFB8, &qword_2149996D0, MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_21490BED0(319, &qword_27CA1BFC0, type metadata accessor for MALiftUISource, MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_21490BE80();
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_21490BED0(319, &qword_27CA1BFD0, MEMORY[0x277D23330], MEMORY[0x277CBCED0]);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_21490BE80()
{
  if (!qword_27CA1BFC8)
  {
    v0 = sub_21498EA30();
    if (!v1)
    {
      atomic_store(v0, &qword_27CA1BFC8);
    }
  }
}

void sub_21490BED0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_21490BF7C()
{
  type metadata accessor for MALiftUISource(319);
  if (v0 <= 0x3F)
  {
    sub_21490C104();
    if (v1 <= 0x3F)
    {
      sub_21490C198(319, &qword_27CA1BFF8, &qword_27CA1C000, &qword_214999708, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for MARemoteViewDelegate(319);
        if (v3 <= 0x3F)
        {
          sub_214899B90(319, &qword_27CA1A310, 0x277CB8F48);
          if (v4 <= 0x3F)
          {
            sub_214899B90(319, &qword_27CA1A308, 0x277CB8F30);
            if (v5 <= 0x3F)
            {
              sub_21490BED0(319, &qword_27CA1BF80, MEMORY[0x277D85AD8], MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_21490C104()
{
  if (!qword_27CA1BFE8)
  {
    type metadata accessor for MARemoteViewModel(255);
    sub_21490D27C(&qword_27CA1BFF0, type metadata accessor for MARemoteViewModel);
    v0 = sub_21498EBA0();
    if (!v1)
    {
      atomic_store(v0, &qword_27CA1BFE8);
    }
  }
}

void sub_21490C198(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_21490C218(uint64_t a1, uint64_t a2)
{
  if (*(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == *(*a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_214990080();
  }
}

uint64_t sub_21490C244@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MARemoteViewModel(0);
  result = sub_21498E9D0();
  *a1 = result;
  return result;
}

uint64_t sub_21490C2AC@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v2 = type metadata accessor for MARemoteView(0);
  v52 = *(v2 - 8);
  v3 = *(v52 + 64);
  MEMORY[0x28223BE20](v2);
  v53 = v4;
  v54 = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21498E950();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C020, &qword_214999818);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v48 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C028, &qword_214999820);
  v50 = *(v14 - 8);
  v51 = v14;
  v15 = *(v50 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v48 - v16;
  sub_21490C8C0(v9);
  if (qword_27CA19F88 != -1)
  {
    swift_once();
  }

  v18 = qword_27CA31008;
  sub_21490D27C(&qword_27CA1C030, MEMORY[0x277D23388]);
  v19 = v18;
  MEMORY[0x2160581D0]();

  (*(v6 + 8))(v9, v5);
  v20 = (v1 + *(v2 + 24));
  v22 = *v20;
  v21 = v20[1];
  v23 = *(v20 + 16);
  type metadata accessor for MARemoteViewModel(0);
  v48[0] = v1;
  sub_21490D27C(&qword_27CA1BFF0, type metadata accessor for MARemoteViewModel);
  v48[1] = v21;
  v49 = v23;
  v24 = sub_21498EB80();
  KeyPath = swift_getKeyPath();
  v26 = &v13[*(v10 + 36)];
  *v26 = KeyPath;
  v26[1] = v24;
  sub_21498EB80();
  swift_getKeyPath();
  v27 = v2;
  swift_getKeyPath();
  sub_21498EA10();

  v28 = v56[0];
  v29 = v56[1];
  v30 = sub_21490D49C();
  MEMORY[0x2160581C0](v28, v29, v10, v30);
  swift_unknownObjectRelease();
  sub_214895454(v13);
  v31 = *(v27 + 32);
  v32 = v48[0];
  v33 = *(v48[0] + v31);
  v34 = sub_21490D27C(&qword_27CA1C050, type metadata accessor for MARemoteViewDelegate);
  v56[0] = v10;
  v56[1] = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = v55;
  v37 = v33;
  v38 = v51;
  MEMORY[0x2160581B0](v37, v34, v51, OpaqueTypeConformance2);
  (*(v50 + 8))(v17, v38);
  v39 = v54;
  sub_21490D884(v32, v54, type metadata accessor for MARemoteView);
  v40 = (*(v52 + 80) + 16) & ~*(v52 + 80);
  v41 = swift_allocObject();
  sub_21490D5B4(v39, v41 + v40);
  v42 = (v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C058, &qword_2149998A8) + 36));
  *v42 = 0;
  v42[1] = 0;
  v42[2] = sub_21490D618;
  v42[3] = v41;
  strcpy(v56, "MARemoteView-");
  HIWORD(v56[1]) = -4864;
  sub_21498EB80();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  v43 = sub_214990050();
  MEMORY[0x2160589C0](v43);

  v44 = v56[0];
  v45 = v56[1];
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C060, &qword_2149998F8);
  v47 = (v36 + *(result + 52));
  *v47 = v44;
  v47[1] = v45;
  return result;
}

uint64_t sub_21490C8C0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v51 = a1;
  v3 = sub_21498E1B0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v48 - v9;
  v11 = type metadata accessor for MALiftUISource(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for MARemoteView(0);
  sub_21490D884(v1 + *(v15 + 20), v14, type metadata accessor for MALiftUISource);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v17 = *v14;
    v18 = v14[1];
    if (EnumCaseMultiPayload == 1)
    {
      v19 = v1[1];
      v52 = *v1;
      v53 = v19;

      MEMORY[0x2160589C0](45, 0xE100000000000000);
      v20 = v1 + *(v15 + 24);
      v21 = *v20;
      v22 = *(v20 + 1);
      v23 = v20[16];
      type metadata accessor for MARemoteViewModel(0);
      sub_21490D27C(&qword_27CA1BFF0, type metadata accessor for MARemoteViewModel);
      sub_21498EB80();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_21498EA10();

      v24 = sub_214990050();
      MEMORY[0x2160589C0](v24);

      sub_21498EB80();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_21498EA10();

      v25 = sub_21498E870();
      v26 = *(v25 + 48);
      v27 = *(v25 + 52);
      swift_allocObject();
      sub_21498E860();
      return sub_21498E940();
    }

    else
    {
      v39 = v1[1];
      v52 = *v1;
      v53 = v39;

      MEMORY[0x2160589C0](45, 0xE100000000000000);
      v40 = v1 + *(v15 + 24);
      v41 = *v40;
      v42 = *(v40 + 1);
      v43 = v40[16];
      type metadata accessor for MARemoteViewModel(0);
      sub_21490D27C(&qword_27CA1BFF0, type metadata accessor for MARemoteViewModel);
      sub_21498EB80();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_21498EA10();

      v44 = sub_214990050();
      MEMORY[0x2160589C0](v44);

      sub_21498EB80();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_21498EA10();

      v45 = sub_21498E870();
      v46 = *(v45 + 48);
      v47 = *(v45 + 52);
      swift_allocObject();
      sub_21498E860();
      return sub_21498E930();
    }
  }

  else
  {
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B1C8, &qword_214994C20);
    v30 = *(v14 + *(v29 + 48) + 8);

    v31 = *(v14 + *(v29 + 64) + 8);

    (*(v4 + 32))(v10, v14, v3);
    v32 = v2[1];
    v52 = *v2;
    v53 = v32;

    MEMORY[0x2160589C0](45, 0xE100000000000000);
    v33 = v2 + *(v15 + 24);
    v34 = *(v33 + 1);
    v50 = *v33;
    v49 = v33[16];
    type metadata accessor for MARemoteViewModel(0);
    sub_21490D27C(&qword_27CA1BFF0, type metadata accessor for MARemoteViewModel);
    sub_21498EB80();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21498EA10();

    v35 = sub_214990050();
    MEMORY[0x2160589C0](v35);

    v48[1] = v53;
    (*(v4 + 16))(v8, v10, v3);
    sub_21498EB80();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21498EA10();

    v36 = sub_21498E870();
    v37 = *(v36 + 48);
    v38 = *(v36 + 52);
    swift_allocObject();
    sub_21498E860();
    sub_21498E920();
    return (*(v4 + 8))(v10, v3);
  }
}

void sub_21490D00C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A328, &unk_2149933A0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v16 - v2;
  v4 = [objc_opt_self() defaultStore];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 aa_primaryAppleAccount];

    if (v6)
    {
      v7 = type metadata accessor for MALiftUISource(0);
      (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
      v8 = sub_21498E8C0();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_21498E8B0();
      v12 = type metadata accessor for MARemoteViewModel(0);
      memset(v16, 0, sizeof(v16));
      v17 = 0;
      v13 = *(v12 + 48);
      v14 = *(v12 + 52);
      v15 = swift_allocObject();
      sub_21490B164(v6, v3, v11, v16);
      qword_27CA1BF58 = v15;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_21490D178@<X0>(void *a1@<X8>)
{
  if (qword_27CA19FD0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_27CA1BF58;
}

uint64_t sub_21490D1E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21490D27C(&qword_27CA1A5B0, type metadata accessor for MARemoteViewModel);

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_21490D27C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21490D2C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  *a2 = v5;
  return result;
}

uint64_t sub_21490D344(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21498EA20();
}

double sub_21490D3C0@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_21490D440(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getObjectType();
  swift_unknownObjectRetain();

  return sub_21490D804();
}

unint64_t sub_21490D49C()
{
  result = qword_27CA1C038;
  if (!qword_27CA1C038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1C020, &qword_214999818);
    sub_21498E950();
    sub_21490D27C(&qword_27CA1C030, MEMORY[0x277D23388]);
    swift_getOpaqueTypeConformance2();
    sub_2148B4C20(&qword_27CA1C040, &qword_27CA1C048, &unk_214999898);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C038);
  }

  return result;
}

uint64_t sub_21490D5B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MARemoteView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21490D618()
{
  v1 = type metadata accessor for MARemoteView(0);
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = v0 + *(result + 36) + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  if (*v4)
  {
    v5 = *(v4 + 8);
    return (*v4)();
  }

  return result;
}

uint64_t sub_21490D68C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  *a2 = v5;
  return result;
}

uint64_t sub_21490D70C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21498EA20();
}

uint64_t sub_21490D804()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21498EA20();
}

uint64_t sub_21490D884(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_21490D8EC()
{
  result = qword_27CA1C080;
  if (!qword_27CA1C080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1C078, &unk_214999960);
    sub_2148B4C20(&qword_27CA1A8E0, &qword_27CA1A8E8, &qword_2149933C8);
    sub_2148B490C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C080);
  }

  return result;
}

unint64_t sub_21490D9A4()
{
  result = qword_27CA1C088;
  if (!qword_27CA1C088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C088);
  }

  return result;
}

uint64_t sub_21490D9F8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_21490DA08(uint64_t a1)
{
  v2 = type metadata accessor for MARemoteViewOfflineView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21490DAAC()
{
  sub_21490BED0(319, &qword_27CA1BF80, MEMORY[0x277D85AD8], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_21490DB7C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a2[3] = swift_getOpaqueTypeMetadata2();
  a2[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_21498F160();
}

unint64_t sub_21490DC34()
{
  result = qword_27CA1C0B8;
  if (!qword_27CA1C0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C0B8);
  }

  return result;
}

uint64_t sub_21490DC98(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v15 = a5;
  v16 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C0C0, &qword_214999B90);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21490E0B4();
  sub_2149901C0();
  v22 = 0;
  sub_214990000();
  if (!v5)
  {
    v13 = BYTE1(v16);
    v21 = v16;
    v20 = 1;
    sub_21490E108();
    sub_214990040();
    v19 = v13;
    v18 = 2;
    sub_21490E15C();
    sub_214990040();
    v17 = 3;
    sub_214990030();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_21490DE98()
{
  v1 = 0x6449626F6ALL;
  v2 = 0x737574617473;
  if (*v0 != 2)
  {
    v2 = 0x547364726F636572;
  }

  if (*v0)
  {
    v1 = 0x6E6F69746361;
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

uint64_t sub_21490DF14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21490E9D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21490DF3C(uint64_t a1)
{
  v2 = sub_21490E0B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21490DF78(uint64_t a1)
{
  v2 = sub_21490E0B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21490DFB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v4 = *(a1 + 24);
  v5 = *(a2 + 16);
  v6 = *(a2 + 17);
  v7 = *(a2 + 24);
  v8 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v8 || (sub_214990080()) && (sub_214958458(v2, v5))
  {
    return sub_2149582BC(v3, v6) & (v4 == v7);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21490E054@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_21490EB30(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }

  return result;
}

unint64_t sub_21490E0B4()
{
  result = qword_27CA1C0C8;
  if (!qword_27CA1C0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C0C8);
  }

  return result;
}

unint64_t sub_21490E108()
{
  result = qword_27CA1C0D0;
  if (!qword_27CA1C0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C0D0);
  }

  return result;
}

unint64_t sub_21490E15C()
{
  result = qword_27CA1C0D8;
  if (!qword_27CA1C0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C0D8);
  }

  return result;
}

uint64_t sub_21490E1BC()
{
  v1 = *v0;
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_21490E28C()
{
  *v0;
  *v0;
  *v0;
  sub_21498F900();
}

uint64_t sub_21490E348()
{
  v1 = *v0;
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_21490E414@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21490F0D4();
  *a2 = result;
  return result;
}

void sub_21490E444(unint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1163284301;
  v4 = 0xED0000455A49524FLL;
  v5 = 0x47455441435F4552;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000018;
    v4 = 0x80000002149A09E0;
  }

  if (*v1)
  {
    v3 = 0x4145525F4B52414DLL;
    v2 = 0xE900000000000044;
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

uint64_t sub_21490E58C()
{
  v1 = *v0;
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_21490E67C()
{
  *v0;
  *v0;
  *v0;
  sub_21498F900();
}

uint64_t sub_21490E758()
{
  v1 = *v0;
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_21490E844@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21490F120();
  *a2 = result;
  return result;
}

void sub_21490E874(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x474E49444E4550;
  v5 = 0xE500000000000000;
  v6 = 0x524F525245;
  v7 = 0x454C54544F524854;
  if (v2 != 3)
  {
    v7 = 0x4554454C504D4F43;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = 0xE900000000000044;
  }

  if (*v1)
  {
    v4 = 0x52474F52505F4E49;
    v3 = 0xEB00000000535345;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

uint64_t sub_21490E9D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449626F6ALL && a2 == 0xE500000000000000;
  if (v4 || (sub_214990080() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000 || (sub_214990080() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (sub_214990080() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x547364726F636572 && a2 == 0xEE0064656863756FLL)
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

uint64_t sub_21490EB30(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C0E0, &qword_214999B98);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21490E0B4();
  sub_2149901B0();
  if (!v1)
  {
    v15 = 0;
    v8 = sub_21498FF60();
    v14 = 1;
    sub_21490ED9C();
    sub_21498FFA0();
    v12 = 2;
    sub_21490EDF0();
    sub_21498FFA0();
    v10[3] = v13;
    v11 = 3;
    sub_21498FF90();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t sub_21490ED9C()
{
  result = qword_27CA1C0E8;
  if (!qword_27CA1C0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C0E8);
  }

  return result;
}

unint64_t sub_21490EDF0()
{
  result = qword_27CA1C0F0;
  if (!qword_27CA1C0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C0F0);
  }

  return result;
}

unint64_t sub_21490EE78()
{
  result = qword_27CA1C0F8;
  if (!qword_27CA1C0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C0F8);
  }

  return result;
}

unint64_t sub_21490EED0()
{
  result = qword_27CA1C100;
  if (!qword_27CA1C100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C100);
  }

  return result;
}

unint64_t sub_21490EF28()
{
  result = qword_27CA1C108;
  if (!qword_27CA1C108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C108);
  }

  return result;
}

unint64_t sub_21490EF80()
{
  result = qword_27CA1C110;
  if (!qword_27CA1C110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C110);
  }

  return result;
}

unint64_t sub_21490EFD8()
{
  result = qword_27CA1C118;
  if (!qword_27CA1C118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C118);
  }

  return result;
}

unint64_t sub_21490F02C()
{
  result = qword_27CA1C120;
  if (!qword_27CA1C120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C120);
  }

  return result;
}

unint64_t sub_21490F080()
{
  result = qword_27CA1C128;
  if (!qword_27CA1C128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C128);
  }

  return result;
}

uint64_t sub_21490F0D4()
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

uint64_t sub_21490F120()
{
  v0 = sub_21498FEF0();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

id sub_21490F16C(void *a1)
{
  v1 = a1;
  sub_21498E130();

  v2 = sub_21498F840();

  return v2;
}

uint64_t sub_21490F1E4()
{
  v1 = qword_27CA1C130;
  v2 = sub_21498E1B0();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id sub_21490F24C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MALiftUIRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21490F284(uint64_t a1)
{
  v2 = qword_27CA1C130;
  v3 = sub_21498E1B0();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1 + v2, v3);
}

uint64_t type metadata accessor for MALiftUIRequest()
{
  result = qword_27CA1C138;
  if (!qword_27CA1C138)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21490F33C()
{
  result = sub_21498E1B0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_21490F42C()
{
  sub_21490F5F0();
  if (v0 <= 0x3F)
  {
    sub_21498E6A0();
    if (v1 <= 0x3F)
    {
      sub_21490F730(319, &qword_27CA1B648, MEMORY[0x277D232D0], MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_21490F654(319, &qword_27CA1AC00, MEMORY[0x277D232E8], &qword_27CA1AC08, MEMORY[0x277D232E8]);
        if (v3 <= 0x3F)
        {
          sub_21490F654(319, &qword_27CA1B660, MEMORY[0x277D23330], &qword_27CA1A858, MEMORY[0x277D23330]);
          if (v4 <= 0x3F)
          {
            sub_21490F730(319, &qword_27CA1A860, type metadata accessor for MARemoteViewModel, MEMORY[0x277CDF468]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_21490F5F0()
{
  if (!qword_27CA1BB60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1AD30, &unk_214997FD0);
    v0 = sub_21498FCF0();
    if (!v1)
    {
      atomic_store(v0, &qword_27CA1BB60);
    }
  }
}

void sub_21490F654(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_21490F6E8(a4, a5);
    v8 = sub_21498ED30();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_21490F6E8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_21490F730(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = *(a1 + 8);
    if (v6 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    return (v6 + 1);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = a1 + *(a3 + 20);

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = sub_21498E6A0();
      v16 = *(*(v15 - 8) + 48);
      v17 = a1 + *(a3 + 24);

      return v16(v17, a2, v15);
    }
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a3)
    {
      v12 = v10;
      v13 = *(v11 + 56);
      v14 = v7 + *(a4 + 20);

      return v13(v14, a2, a2, v12);
    }

    else
    {
      v15 = sub_21498E6A0();
      v16 = *(*(v15 - 8) + 56);
      v17 = v7 + *(a4 + 24);

      return v16(v17, a2, a2, v15);
    }
  }

  return result;
}

void sub_21490FA2C()
{
  sub_21490FC08();
  if (v0 <= 0x3F)
  {
    sub_21498E6A0();
    if (v1 <= 0x3F)
    {
      sub_21490F730(319, &qword_27CA1B648, MEMORY[0x277D232D0], MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_21490F654(319, &qword_27CA1AC00, MEMORY[0x277D232E8], &qword_27CA1AC08, MEMORY[0x277D232E8]);
        if (v3 <= 0x3F)
        {
          sub_21490F654(319, &qword_27CA1B660, MEMORY[0x277D23330], &qword_27CA1A858, MEMORY[0x277D23330]);
          if (v4 <= 0x3F)
          {
            sub_21490F730(319, &qword_27CA1A860, type metadata accessor for MARemoteViewModel, MEMORY[0x277CDF468]);
            if (v5 <= 0x3F)
            {
              sub_21490FC60();
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_21490FC08()
{
  if (!qword_27CA1C168)
  {
    v0 = sub_21498E770();
    if (!v1)
    {
      atomic_store(v0, &qword_27CA1C168);
    }
  }
}

void sub_21490FC60()
{
  if (!qword_27CA1C170)
  {
    v0 = sub_21498F440();
    if (!v1)
    {
      atomic_store(v0, &qword_27CA1C170);
    }
  }
}

uint64_t sub_21490FCC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C1E8, &qword_21499A208);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v43 - v5;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C1D0, &qword_21499A200);
  v7 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v9 = &v43 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C240, &qword_21499A238);
  v45 = *(v10 - 8);
  v46 = v10;
  v11 = *(v45 + 64);
  MEMORY[0x28223BE20](v10);
  v43 = &v43 - v12;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C218, &unk_21499A220);
  v13 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v15 = &v43 - v14;
  v16 = type metadata accessor for MANavigationLinkView(0);
  v17 = (a1 + *(v16 + 40));
  v18 = *v17;
  if (!*v17)
  {
    v39 = v17[1];
    sub_21498E8C0();
    v40 = &qword_27CA1A858;
    v41 = MEMORY[0x277D23330];
LABEL_8:
    sub_21490F6E8(v40, v41);
    result = sub_21498ED10();
    __break(1u);
    return result;
  }

  v19 = v16;
  v20 = *(v16 + 28);
  sub_21498E8C0();
  sub_21490F6E8(&qword_27CA1A858, MEMORY[0x277D23330]);

  v21 = sub_21498E9C0();
  v22 = sub_21498E6A0();
  (*(*(v22 - 8) + 16))(v6, a1 + v20, v22);
  v23 = &v6[*(v3 + 36)];
  *v23 = v21;
  v23[1] = v18;
  v24 = (a1 + *(v19 + 36));
  v25 = *v24;
  if (!*v24)
  {
    v42 = v24[1];
    sub_21498E870();
    v40 = &qword_27CA1AC08;
    v41 = MEMORY[0x277D232E8];
    goto LABEL_8;
  }

  sub_21498E870();
  sub_21490F6E8(&qword_27CA1AC08, MEMORY[0x277D232E8]);

  v26 = sub_21498E9C0();
  sub_2148B4C68(v6, v9, &qword_27CA1C1E8, &qword_21499A208);
  v27 = &v9[*(v44 + 36)];
  *v27 = v26;
  v27[1] = v25;
  if (qword_27CA19F88 != -1)
  {
    swift_once();
  }

  v28 = qword_27CA31008;
  sub_214913900();
  v29 = v28;
  v30 = v43;
  MEMORY[0x2160581D0]();

  sub_21489DFCC(v9, &qword_27CA1C1D0, &qword_21499A200);
  v31 = sub_214911534(type metadata accessor for MANavigationLinkView);
  KeyPath = swift_getKeyPath();
  (*(v45 + 32))(v15, v30, v46);
  v33 = v47;
  v34 = &v15[*(v47 + 36)];
  *v34 = KeyPath;
  v34[1] = v31;
  sub_214911534(type metadata accessor for MANavigationLinkView);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  v35 = v49;
  v36 = v50;
  v37 = sub_214913B68();
  MEMORY[0x2160581A0](v35, v36, v33, v37);
  swift_unknownObjectRelease();
  return sub_214895A50(v15);
}

uint64_t sub_2149101E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = type metadata accessor for MANavigationLinkView(0);
  v34[0] = *(v3 - 1);
  v4 = *(v34[0] + 64);
  MEMORY[0x28223BE20](v3);
  v34[1] = v5;
  v35 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C1E8, &qword_21499A208);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C1D0, &qword_21499A200);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v34 - v12;
  v14 = (a1 + v3[10]);
  v15 = *v14;
  if (*v14)
  {
    v16 = v3[6];
    sub_21498E8C0();
    sub_21490F6E8(&qword_27CA1A858, MEMORY[0x277D23330]);

    v17 = sub_21498E9C0();
    v18 = sub_21498E6A0();
    (*(*(v18 - 8) + 16))(v9, a1 + v16, v18);
    v19 = &v9[*(v6 + 36)];
    *v19 = v17;
    v19[1] = v15;
    v20 = (a1 + v3[9]);
    v21 = *v20;
    if (*v20)
    {
      sub_21498E870();
      sub_21490F6E8(&qword_27CA1AC08, MEMORY[0x277D232E8]);

      v22 = sub_21498E9C0();
      sub_2148B4C68(v9, v13, &qword_27CA1C1E8, &qword_21499A208);
      v23 = &v13[*(v10 + 36)];
      *v23 = v22;
      v23[1] = v21;
      v24 = v35;
      sub_214914048(a1, v35, type metadata accessor for MANavigationLinkView);
      v25 = (*(v34[0] + 80) + 16) & ~*(v34[0] + 80);
      v26 = swift_allocObject();
      sub_2149140B0(v24, v26 + v25, type metadata accessor for MANavigationLinkView);
      v27 = v36;
      sub_2148B4C68(v13, v36, &qword_27CA1C1D0, &qword_21499A200);
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C278, &qword_21499A2D0);
      v29 = (v27 + *(result + 36));
      *v29 = sub_214914118;
      v29[1] = v26;
      v29[2] = 0;
      v29[3] = 0;
      return result;
    }

    v33 = v20[1];
    sub_21498E870();
    v31 = &qword_27CA1AC08;
    v32 = MEMORY[0x277D232E8];
  }

  else
  {
    v30 = v14[1];
    sub_21498E8C0();
    v31 = &qword_27CA1A858;
    v32 = MEMORY[0x277D23330];
  }

  sub_21490F6E8(v31, v32);
  result = sub_21498ED10();
  __break(1u);
  return result;
}

uint64_t sub_2149105DC(uint64_t a1)
{
  v2 = type metadata accessor for MANavigationLinkView(0);
  v3 = (a1 + *(v2 + 40));
  if (*v3)
  {
    v4 = v2;
    v5 = *(v2 + 20);
    v6 = *v3;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD30, &unk_214997FD0);
    sub_21498E750();

    v7 = (a1 + *(v4 + 48));
    v10 = *v7;
    v11 = *(v7 + 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C270, &qword_21499A2C8);
    return sub_21498F420();
  }

  else
  {
    v9 = v3[1];
    sub_21498E8C0();
    sub_21490F6E8(&qword_27CA1A858, MEMORY[0x277D23330]);
    result = sub_21498ED10();
    __break(1u);
  }

  return result;
}

uint64_t sub_214910740@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_214914540();
  *a2 = result;
  return result;
}

uint64_t sub_214910770@<X0>(_BYTE *a1@<X8>)
{
  result = sub_214914540();
  *a1 = result;
  return result;
}

uint64_t sub_214910798(uint64_t a1)
{
  v2 = sub_214914178();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2149107D4(uint64_t a1)
{
  v2 = sub_214914178();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214910810@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v69 = sub_21498E6A0();
  v66 = *(v69 - 8);
  v3 = *(v66 + 64);
  v4 = MEMORY[0x28223BE20](v69);
  v60 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v63 = &v58 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AC78, qword_214999F40);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v65 = &v58 - v9;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD30, &unk_214997FD0);
  v64 = *(v67 - 8);
  v10 = *(v64 + 64);
  MEMORY[0x28223BE20](v67);
  v62 = &v58 - v11;
  v61 = sub_21498E350();
  v68 = *(v61 - 8);
  v12 = *(v68 + 64);
  MEMORY[0x28223BE20](v61);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C288, &qword_21499A2D8);
  v70 = *(v15 - 8);
  v16 = *(v70 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v58 - v17;
  v19 = type metadata accessor for MANavigationLinkView(0);
  v20 = *(*(v19 - 1) + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = (&v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(v23 + *(v21 + 32)) = MEMORY[0x277D84F90];
  v24 = (v23 + *(v21 + 36));
  sub_21498E870();
  sub_21490F6E8(&qword_27CA1AC08, MEMORY[0x277D232E8]);
  v74 = sub_21498ED20();
  *v24 = v74;
  v24[1] = v25;
  v26 = (v23 + v19[10]);
  sub_21498E8C0();
  sub_21490F6E8(&qword_27CA1A858, MEMORY[0x277D23330]);
  v73 = sub_21498ED20();
  *v26 = v73;
  v26[1] = v27;
  v28 = v23 + v19[11];
  KeyPath = swift_getKeyPath();
  *v28 = KeyPath;
  v28[8] = 0;
  v29 = v23 + v19[12];
  v79 = 0;
  sub_21498F400();
  v30 = v78;
  *v29 = v77;
  v71 = v30;
  *(v29 + 1) = v30;
  v31 = a1[3];
  v32 = a1[4];
  v76 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v31);
  sub_214914178();
  v33 = v75;
  sub_2149901B0();
  if (v33)
  {
    __swift_destroy_boxed_opaque_existential_1(v76);
  }

  else
  {
    v34 = v68;
    v77 = 0;
    v35 = sub_21498FF20();
    v37 = v18;
    v38 = v15;
    v75 = v37;
    if (!v36)
    {
      v40 = v14;
      sub_21498E340();
      v41 = sub_21498E330();
      v43 = v42;
      (*(v34 + 8))(v40, v61);
      v36 = v43;
      v35 = v41;
    }

    v44 = v66;
    *v23 = v35;
    v23[1] = v36;
    v68 = v36;
    v77 = 1;
    sub_2148B4C20(&qword_27CA1BC18, &qword_27CA1AD30, &unk_214997FD0);
    v45 = v65;
    v46 = v67;
    sub_21498FF40();
    v61 = v38;
    v47 = v64;
    v48 = *(v64 + 48);
    if (v48(v45, 1, v46) == 1)
    {
      v49 = v62;
      *v62 = 0;
      (*(v47 + 104))(v49, *MEMORY[0x277D23230], v46);
      v50 = v48(v45, 1, v46);
      v51 = v49;
      v44 = v66;
      if (v50 != 1)
      {
        sub_21489DFCC(v45, &qword_27CA1AC78, qword_214999F40);
      }
    }

    else
    {
      v51 = v62;
      (*(v47 + 32))(v62, v45, v46);
    }

    (*(v47 + 32))(v23 + v19[5], v51, v46);
    v77 = 2;
    v52 = sub_21490F6E8(&qword_27CA1B770, MEMORY[0x277D231A8]);
    v53 = v63;
    v54 = v69;
    v55 = v61;
    v65 = v52;
    v56 = v75;
    sub_21498FFA0();
    v57 = *(v44 + 32);
    v57(v23 + v19[6], v53, v54);
    v77 = 3;
    sub_21498FFA0();
    (*(v70 + 8))(v56, v55);
    v57(v23 + v19[7], v60, v54);
    sub_214914048(v23, v59, type metadata accessor for MANavigationLinkView);
    __swift_destroy_boxed_opaque_existential_1(v76);
    return sub_2149141CC(v23, type metadata accessor for MANavigationLinkView);
  }
}

uint64_t sub_21491109C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21490F6E8(&qword_27CA1B8E8, type metadata accessor for MANavigationLinkView);

  return MEMORY[0x282182170](a1, v4, a2);
}

uint64_t sub_214911120(uint64_t a1, uint64_t a2)
{
  v4 = sub_21490F6E8(&qword_27CA1C178, type metadata accessor for MANavigationLinkView);

  return MEMORY[0x282182168](a1, a2, v4);
}

uint64_t sub_21491119C(uint64_t a1)
{
  v2 = sub_21490F6E8(&qword_27CA1C178, type metadata accessor for MANavigationLinkView);

  return MEMORY[0x2821822F0](a1, v2);
}

uint64_t sub_214911218(uint64_t a1, uint64_t a2)
{
  v4 = sub_21490F6E8(&qword_27CA1C1A8, type metadata accessor for MANavigationLinkView);

  return MEMORY[0x282182160](a1, a2, v4);
}

uint64_t sub_21491129C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C248, &qword_21499A240);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v13[-v5];
  v7 = v1 + *(a1 + 48);
  v8 = *v7;
  v9 = *(v7 + 8);
  v17 = v8;
  v18 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C270, &qword_21499A2C8);
  sub_21498F430();
  v14 = v1;
  sub_21490FCC8(v1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C278, &qword_21499A2D0);
  sub_214913FBC();
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1C218, &unk_21499A220);
  v11 = sub_214913B68();
  v15 = v10;
  v16 = v11;
  swift_getOpaqueTypeConformance2();
  return sub_21498EC70();
}

uint64_t sub_214911464()
{
  sub_21490F6E8(&qword_27CA1B8E8, type metadata accessor for MANavigationLinkView);
  sub_21490F6E8(&qword_27CA1C178, type metadata accessor for MANavigationLinkView);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_214911534(uint64_t (*a1)(void))
{
  v3 = sub_21498EDC0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (v1 + *(a1(0) + 44));
  v9 = *v8;
  v10 = *(v8 + 8);

  if ((v10 & 1) == 0)
  {
    sub_21498FBC0();
    v11 = sub_21498EFC0();
    sub_21498E5A0();

    sub_21498EDB0();
    swift_getAtKeyPath();

    (*(v4 + 8))(v7, v3);
    return v13[1];
  }

  return v9;
}

uint64_t sub_21491168C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v43 = a1;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C1B8, &qword_21499A1E8);
  v3 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v38 = &v36 - v4;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C1C0, &qword_21499A1F0);
  v40 = *(v42 - 8);
  v5 = *(v40 + 64);
  MEMORY[0x28223BE20](v42);
  v7 = &v36 - v6;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C1C8, &qword_21499A1F8);
  v8 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v10 = &v36 - v9;
  v11 = type metadata accessor for BindableMANavigationLink(0);
  v37 = *(v11 - 8);
  v12 = *(v37 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v13);
  v15 = &v36 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AC78, qword_214999F40);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v36 - v18;
  sub_214913874(v2 + *(v11 + 20), &v36 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD30, &unk_214997FD0);
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    v22 = sub_21489DFCC(v19, &qword_27CA1AC78, qword_214999F40);
    MEMORY[0x28223BE20](v22);
    *(&v36 - 2) = v2;
    sub_214911D6C(v2, &unk_2826C9AF8, sub_214913F08, v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C1D0, &qword_21499A200);
    sub_214913900();
    sub_214913AA0();
    sub_21498EC60();
    v25 = v40;
    v26 = v42;
    (*(v40 + 16))(v10, v7, v42);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C228, &qword_21499A230);
    sub_2148B4C20(&qword_27CA1C230, &qword_27CA1C228, &qword_21499A230);
    sub_2148B4C20(&qword_27CA1C238, &qword_27CA1C1C0, &qword_21499A1F0);
    sub_21498EE90();
    return (*(v25 + 8))(v7, v26);
  }

  else
  {
    v36 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v23 = (v2 + *(v11 + 40));
    if (*v23)
    {
      v24 = *v23;

      sub_21498E760();

      (*(v21 + 8))(v19, v20);
      v28 = v45;
      v40 = v44;
      v29 = v46;
      sub_214914048(v2, v15, type metadata accessor for BindableMANavigationLink);
      v30 = (*(v37 + 80) + 16) & ~*(v37 + 80);
      v31 = swift_allocObject();
      sub_2149140B0(v15, v31 + v30, type metadata accessor for BindableMANavigationLink);
      v32 = v2;
      v33 = v36;
      sub_214914048(v32, v36, type metadata accessor for BindableMANavigationLink);
      v34 = swift_allocObject();
      sub_2149140B0(v33, v34 + v30, type metadata accessor for BindableMANavigationLink);
      *v10 = v40;
      *(v10 + 1) = v28;
      v10[16] = v29;
      *(v10 + 3) = sub_214913C5C;
      *(v10 + 4) = v31;
      *(v10 + 5) = sub_214913EA4;
      *(v10 + 6) = v34;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C228, &qword_21499A230);
      sub_2148B4C20(&qword_27CA1C230, &qword_27CA1C228, &qword_21499A230);
      sub_2148B4C20(&qword_27CA1C238, &qword_27CA1C1C0, &qword_21499A1F0);
      return sub_21498EE90();
    }

    else
    {
      v35 = v23[1];
      sub_21498E8C0();
      sub_21490F6E8(&qword_27CA1A858, MEMORY[0x277D23330]);
      result = sub_21498ED10();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_214911D6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v67 = a4;
  v68 = a3;
  v66 = a2;
  v5 = type metadata accessor for BindableMANavigationLink(0);
  v63 = *(v5 - 1);
  v6 = *(v63 + 64);
  MEMORY[0x28223BE20](v5);
  v64 = v7;
  v65 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C1E8, &qword_21499A208);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v55 - v10;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C1D0, &qword_21499A200);
  v12 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56);
  v14 = &v55 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C240, &qword_21499A238);
  v57 = *(v15 - 8);
  v58 = v15;
  v16 = *(v57 + 64);
  MEMORY[0x28223BE20](v15);
  v55 = &v55 - v17;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C218, &unk_21499A220);
  v18 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v20 = &v55 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C248, &qword_21499A240);
  v61 = *(v21 - 8);
  v62 = v21;
  v22 = *(v61 + 64);
  MEMORY[0x28223BE20](v21);
  v60 = &v55 - v23;
  v24 = (a1 + v5[10]);
  v25 = *v24;
  if (!*v24)
  {
    v51 = v24[1];
    sub_21498E8C0();
    v52 = &qword_27CA1A858;
    v53 = MEMORY[0x277D23330];
LABEL_8:
    sub_21490F6E8(v52, v53);
    result = sub_21498ED10();
    __break(1u);
    return result;
  }

  v26 = v5[7];
  sub_21498E8C0();
  sub_21490F6E8(&qword_27CA1A858, MEMORY[0x277D23330]);

  v27 = sub_21498E9C0();
  v28 = sub_21498E6A0();
  (*(*(v28 - 8) + 16))(v11, a1 + v26, v28);
  v29 = &v11[*(v8 + 36)];
  *v29 = v27;
  v29[1] = v25;
  v30 = (a1 + v5[9]);
  v31 = *v30;
  if (!*v30)
  {
    v54 = v30[1];
    sub_21498E870();
    v52 = &qword_27CA1AC08;
    v53 = MEMORY[0x277D232E8];
    goto LABEL_8;
  }

  sub_21498E870();
  sub_21490F6E8(&qword_27CA1AC08, MEMORY[0x277D232E8]);

  v32 = sub_21498E9C0();
  sub_2148B4C68(v11, v14, &qword_27CA1C1E8, &qword_21499A208);
  v33 = &v14[*(v56 + 36)];
  *v33 = v32;
  v33[1] = v31;
  if (qword_27CA19F88 != -1)
  {
    swift_once();
  }

  v34 = qword_27CA31008;
  sub_214913900();
  v35 = v34;
  v36 = v55;
  MEMORY[0x2160581D0]();

  sub_21489DFCC(v14, &qword_27CA1C1D0, &qword_21499A200);
  v37 = sub_214911534(type metadata accessor for BindableMANavigationLink);
  KeyPath = swift_getKeyPath();
  (*(v57 + 32))(v20, v36, v58);
  v39 = v59;
  v40 = &v20[*(v59 + 36)];
  *v40 = KeyPath;
  v40[1] = v37;
  sub_214911534(type metadata accessor for BindableMANavigationLink);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  v41 = v69;
  v42 = v70;
  v43 = sub_214913B68();
  v44 = v60;
  MEMORY[0x2160581A0](v41, v42, v39, v43);
  swift_unknownObjectRelease();
  sub_214895A50(v20);
  v45 = v65;
  sub_214914048(a1, v65, type metadata accessor for BindableMANavigationLink);
  v46 = (*(v63 + 80) + 16) & ~*(v63 + 80);
  v47 = swift_allocObject();
  sub_2149140B0(v45, v47 + v46, type metadata accessor for BindableMANavigationLink);
  v48 = v67;
  (*(v61 + 32))(v67, v44, v62);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C1B8, &qword_21499A1E8);
  v50 = (v48 + *(result + 36));
  *v50 = v68;
  v50[1] = v47;
  v50[2] = 0;
  v50[3] = 0;
  return result;
}

uint64_t sub_214912424(uint64_t a1)
{
  v2 = type metadata accessor for BindableMANavigationLink(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21498E690();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v6, qword_281194E18);
  (*(v7 + 16))(v10, v11, v6);
  sub_214914048(a1, v5, type metadata accessor for BindableMANavigationLink);
  v12 = sub_21498E670();
  v13 = sub_21498FBD0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v29 = v26;
    v27 = v14;
    *v14 = 136315138;
    v15 = &v5[*(v2 + 40)];
    if (*v15)
    {
      v16 = *v15;

      v17 = sub_21498E980();

      v28 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C250, &qword_21499A2B8);
      sub_2148B4C20(&qword_27CA1C258, &qword_27CA1C250, &qword_21499A2B8);
      v18 = sub_21498F980();
      v20 = v19;

      sub_2149141CC(v5, type metadata accessor for BindableMANavigationLink);
      v21 = sub_2149079F4(v18, v20, &v29);

      v22 = v27;
      *(v27 + 1) = v21;
      _os_log_impl(&dword_21488E000, v12, v13, "Store: %s", v22, 0xCu);
      v23 = v26;
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x216059AC0](v23, -1, -1);
      MEMORY[0x216059AC0](v22, -1, -1);

      return (*(v7 + 8))(v10, v6);
    }

    else
    {
      v25 = *(v15 + 1);
      sub_21498E8C0();
      sub_21490F6E8(&qword_27CA1A858, MEMORY[0x277D23330]);
      result = sub_21498ED10();
      __break(1u);
    }
  }

  else
  {

    (*(v7 + 8))(v10, v6);
    return sub_2149141CC(v5, type metadata accessor for BindableMANavigationLink);
  }

  return result;
}

uint64_t sub_2149127E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C1E8, &qword_21499A208);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - v6;
  v8 = type metadata accessor for BindableMANavigationLink(0);
  v9 = (a1 + *(v8 + 40));
  v10 = *v9;
  if (*v9)
  {
    v11 = v8;
    v12 = *(v8 + 24);
    sub_21498E8C0();
    sub_21490F6E8(&qword_27CA1A858, MEMORY[0x277D23330]);

    v13 = sub_21498E9C0();
    v14 = sub_21498E6A0();
    (*(*(v14 - 8) + 16))(v7, a1 + v12, v14);
    v15 = &v7[*(v4 + 36)];
    *v15 = v13;
    v15[1] = v10;
    v16 = (a1 + *(v11 + 36));
    v17 = *v16;
    if (*v16)
    {
      sub_21498E870();
      sub_21490F6E8(&qword_27CA1AC08, MEMORY[0x277D232E8]);

      v18 = sub_21498E9C0();
      sub_2148B4C68(v7, a2, &qword_27CA1C1E8, &qword_21499A208);
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C1D0, &qword_21499A200);
      v20 = (a2 + *(result + 36));
      *v20 = v18;
      v20[1] = v17;
      return result;
    }

    v24 = v16[1];
    sub_21498E870();
    v22 = &qword_27CA1AC08;
    v23 = MEMORY[0x277D232E8];
  }

  else
  {
    v21 = v9[1];
    sub_21498E8C0();
    v22 = &qword_27CA1A858;
    v23 = MEMORY[0x277D23330];
  }

  sub_21490F6E8(v22, v23);
  result = sub_21498ED10();
  __break(1u);
  return result;
}

uint64_t sub_214912A70()
{
  v1 = *v0;
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_214912B2C()
{
  *v0;
  *v0;
  *v0;
  sub_21498F900();
}

uint64_t sub_214912BD4()
{
  v1 = *v0;
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_214912C8C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21491458C();
  *a2 = result;
  return result;
}

uint64_t sub_214912CBC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21491458C();
  *a1 = result;
  return result;
}

uint64_t sub_214912CE4(uint64_t a1)
{
  v2 = sub_214913F60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214912D20(uint64_t a1)
{
  v2 = sub_214913F60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214912D5C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v54 = sub_21498E6A0();
  v51 = *(v54 - 8);
  v3 = *(v51 + 64);
  v4 = MEMORY[0x28223BE20](v54);
  v47 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v49 = &v44 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AC78, qword_214999F40);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v50 = &v44 - v9;
  v48 = sub_21498E350();
  v52 = *(v48 - 8);
  v10 = *(v52 + 64);
  MEMORY[0x28223BE20](v48);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C260, &qword_21499A2C0);
  v53 = *(v13 - 8);
  v14 = *(v53 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v44 - v15;
  v17 = type metadata accessor for BindableMANavigationLink(0);
  v18 = *(*(v17 - 1) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = (&v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(v21 + *(v19 + 32)) = MEMORY[0x277D84F90];
  v22 = (v21 + *(v19 + 36));
  sub_21498E870();
  sub_21490F6E8(&qword_27CA1AC08, MEMORY[0x277D232E8]);
  v57 = sub_21498ED20();
  *v22 = v57;
  v22[1] = v23;
  v24 = (v21 + v17[10]);
  sub_21498E8C0();
  sub_21490F6E8(&qword_27CA1A858, MEMORY[0x277D23330]);
  v56 = sub_21498ED20();
  *v24 = v56;
  v24[1] = v25;
  v26 = v21 + v17[11];
  KeyPath = swift_getKeyPath();
  *v26 = KeyPath;
  v26[8] = 0;
  v27 = a1[3];
  v28 = a1[4];
  v59 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v27);
  sub_214913F60();
  v29 = v58;
  sub_2149901B0();
  if (v29)
  {
    __swift_destroy_boxed_opaque_existential_1(v59);
  }

  else
  {
    v30 = v52;
    v31 = v54;
    v63 = 0;
    v32 = sub_21498FF20();
    v35 = v33;
    v58 = v16;
    v45 = v13;
    if (!v33)
    {
      sub_21498E340();
      v36 = sub_21498E330();
      v38 = v37;
      (*(v30 + 8))(v12, v48);
      v35 = v38;
      v32 = v36;
    }

    *v21 = v32;
    v21[1] = v35;
    v54 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD30, &unk_214997FD0);
    v62 = 1;
    sub_2148B4C20(&qword_27CA1BC18, &qword_27CA1AD30, &unk_214997FD0);
    v39 = v50;
    v40 = v45;
    v41 = v58;
    sub_21498FF40();
    sub_2148B4C68(v39, v21 + v17[5], &qword_27CA1AC78, qword_214999F40);
    v61 = 2;
    sub_21490F6E8(&qword_27CA1B770, MEMORY[0x277D231A8]);
    v42 = v49;
    sub_21498FFA0();
    v43 = v21 + v17[6];
    v52 = *(v51 + 32);
    (v52)(v43, v42, v31);
    v60 = 3;
    sub_21498FFA0();
    (*(v53 + 8))(v41, v40);
    (v52)(v21 + v17[7], v47, 0);
    sub_214914048(v21, v46, type metadata accessor for BindableMANavigationLink);
    __swift_destroy_boxed_opaque_existential_1(v59);
    return sub_2149141CC(v21, type metadata accessor for BindableMANavigationLink);
  }
}

uint64_t sub_214913464(uint64_t a1, uint64_t a2)
{
  v4 = sub_21490F6E8(&qword_27CA1B948, type metadata accessor for BindableMANavigationLink);

  return MEMORY[0x282182170](a1, v4, a2);
}

uint64_t sub_2149134E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21490F6E8(&qword_27CA1C180, type metadata accessor for BindableMANavigationLink);

  return MEMORY[0x282182168](a1, a2, v4);
}

uint64_t sub_214913564(uint64_t a1)
{
  v2 = sub_21490F6E8(&qword_27CA1C180, type metadata accessor for BindableMANavigationLink);

  return MEMORY[0x2821822F0](a1, v2);
}

uint64_t sub_2149135E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21490F6E8(&qword_27CA1C1B0, type metadata accessor for BindableMANavigationLink);

  return MEMORY[0x282182160](a1, a2, v4);
}

uint64_t sub_21491369C()
{
  sub_21490F6E8(&qword_27CA1B948, type metadata accessor for BindableMANavigationLink);
  sub_21490F6E8(&qword_27CA1C180, type metadata accessor for BindableMANavigationLink);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_214913874(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AC78, qword_214999F40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_214913900()
{
  result = qword_27CA1C1D8;
  if (!qword_27CA1C1D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1C1D0, &qword_21499A200);
    sub_2149139B8();
    sub_2148B4C20(&qword_27CA1C200, &qword_27CA1C208, &qword_21499A218);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C1D8);
  }

  return result;
}

unint64_t sub_2149139B8()
{
  result = qword_27CA1C1E0;
  if (!qword_27CA1C1E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1C1E8, &qword_21499A208);
    sub_21490F6E8(&qword_27CA1AD60, MEMORY[0x277D231A8]);
    sub_2148B4C20(&qword_27CA1C1F0, &qword_27CA1C1F8, &qword_21499A210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C1E0);
  }

  return result;
}

unint64_t sub_214913AA0()
{
  result = qword_27CA1C210;
  if (!qword_27CA1C210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1C1B8, &qword_21499A1E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1C218, &unk_21499A220);
    sub_214913B68();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C210);
  }

  return result;
}

unint64_t sub_214913B68()
{
  result = qword_27CA1C220;
  if (!qword_27CA1C220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1C218, &unk_21499A220);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1C1D0, &qword_21499A200);
    sub_214913900();
    swift_getOpaqueTypeConformance2();
    sub_2148B4C20(&qword_27CA1C040, &qword_27CA1C048, &unk_214999898);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C220);
  }

  return result;
}

uint64_t objectdestroyTm_2()
{
  v1 = type metadata accessor for BindableMANavigationLink(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = v1[5];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD30, &unk_214997FD0);
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  v10 = v1[6];
  v11 = sub_21498E6A0();
  v12 = *(*(v11 - 8) + 8);
  v12(v5 + v10, v11);
  v12(v5 + v1[7], v11);
  v13 = *(v5 + v1[8]);

  v14 = *(v5 + v1[9]);

  v15 = *(v5 + v1[10]);

  v16 = *(v5 + v1[11]);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

unint64_t sub_214913F60()
{
  result = qword_27CA1C268;
  if (!qword_27CA1C268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C268);
  }

  return result;
}

unint64_t sub_214913FBC()
{
  result = qword_27CA1C280;
  if (!qword_27CA1C280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1C278, &qword_21499A2D0);
    sub_214913900();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C280);
  }

  return result;
}

uint64_t sub_214914048(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2149140B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_214914118()
{
  v1 = *(type metadata accessor for MANavigationLinkView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2149105DC(v2);
}

unint64_t sub_214914178()
{
  result = qword_27CA1C290;
  if (!qword_27CA1C290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C290);
  }

  return result;
}

uint64_t sub_2149141CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21491424C()
{
  result = qword_27CA1C298;
  if (!qword_27CA1C298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1C2A0, &qword_21499A2F0);
    sub_2148B4C20(&qword_27CA1C230, &qword_27CA1C228, &qword_21499A230);
    sub_2148B4C20(&qword_27CA1C238, &qword_27CA1C1C0, &qword_21499A1F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C298);
  }

  return result;
}

unint64_t sub_214914334()
{
  result = qword_27CA1C2B8;
  if (!qword_27CA1C2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C2B8);
  }

  return result;
}

unint64_t sub_21491438C()
{
  result = qword_27CA1C2C0;
  if (!qword_27CA1C2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C2C0);
  }

  return result;
}

unint64_t sub_2149143E4()
{
  result = qword_27CA1C2C8;
  if (!qword_27CA1C2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C2C8);
  }

  return result;
}

unint64_t sub_21491443C()
{
  result = qword_27CA1C2D0;
  if (!qword_27CA1C2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C2D0);
  }

  return result;
}

unint64_t sub_214914494()
{
  result = qword_27CA1C2D8;
  if (!qword_27CA1C2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C2D8);
  }

  return result;
}

unint64_t sub_2149144EC()
{
  result = qword_27CA1C2E0;
  if (!qword_27CA1C2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C2E0);
  }

  return result;
}

uint64_t sub_214914540()
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

uint64_t sub_21491458C()
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

uint64_t sub_2149145F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v62 = a8;
  v60 = a7;
  v57 = a6;
  v56 = a5;
  v9 = v8;
  v59 = a3;
  v63 = a2;
  v58 = a1;
  v11 = sub_21498F510();
  v69 = *(v11 - 8);
  v70 = v11;
  v12 = *(v69 + 64);
  MEMORY[0x28223BE20](v11);
  v67 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_21498F540();
  v66 = *(v68 - 8);
  v14 = *(v66 + 64);
  MEMORY[0x28223BE20](v68);
  v65 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_21498F560();
  v16 = *(v64 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v64);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v61 = &v54 - v21;
  v55 = sub_21498F520();
  v22 = *(v55 - 1);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v55);
  v25 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_21498E690();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v54 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = a4;
  v31 = exp2(a4);
  v32 = sub_214925B68(0x20000000000001uLL);
  v33 = vcvtd_n_f64_u64(v32, 0x35uLL) * 0.5 + 0.75;
  if (v32 == 0x20000000000000)
  {
    v33 = 1.25;
  }

  v34 = v31 * v33;
  if (v34 <= 30.0)
  {
    v35 = v34;
  }

  else
  {
    v35 = 30.0;
  }

  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v36 = __swift_project_value_buffer(v26, qword_281194E18);
  (*(v27 + 16))(v30, v36, v26);
  v37 = v9;
  v38 = sub_21498E670();
  v39 = sub_21498FB90();
  if (!os_log_type_enabled(v38, v39))
  {

    v38 = v37;
    goto LABEL_12;
  }

  v54 = v16;
  result = swift_slowAlloc();
  *result = 134218496;
  *(result + 4) = v35;
  *(result + 12) = 2048;
  if (!__OFADD__(v71, 1))
  {
    v41 = result;
    *(result + 14) = v71 + 1;
    *(result + 22) = 2048;
    *(result + 24) = 5;

    _os_log_impl(&dword_21488E000, v38, v39, "Rate limited (429). Retrying in %f seconds. Attempt %ld/%ld", v41, 0x20u);
    MEMORY[0x216059AC0](v41, -1, -1);
    v16 = v54;
LABEL_12:

    (*(v27 + 8))(v30, v26);
    sub_2148FFDCC();
    v42 = v55;
    (*(v22 + 104))(v25, *MEMORY[0x277D851D0], v55);
    v54 = sub_21498FC60();
    (*(v22 + 8))(v25, v42);
    sub_21498F550();
    v43 = v61;
    sub_21498F570();
    v55 = *(v16 + 8);
    v44 = v20;
    v45 = v64;
    (v55)(v44, v64);
    v46 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v47 = swift_allocObject();
    v48 = v58;
    *(v47 + 16) = v46;
    *(v47 + 24) = v48;
    *(v47 + 32) = v63;
    *(v47 + 40) = v59 & 1;
    *(v47 + 48) = v71;
    aBlock[4] = v60;
    aBlock[5] = v47;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2148A457C;
    aBlock[3] = v62;
    v49 = _Block_copy(aBlock);

    v50 = v65;
    sub_21498F530();
    v72 = MEMORY[0x277D84F90];
    sub_214925D14();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C348, &qword_21499A980);
    sub_214925D6C();
    v51 = v67;
    v52 = v70;
    sub_21498FD60();
    v53 = v54;
    MEMORY[0x216058C80](v43, v50, v51, v49);
    _Block_release(v49);

    (*(v69 + 8))(v51, v52);
    (*(v66 + 8))(v50, v68);
    (v55)(v43, v45);
  }

  __break(1u);
  return result;
}

void sub_214914CE8(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v56 = a6;
  v55 = a4;
  v10 = sub_21498E690();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v10, qword_281194E18);
  (*(v11 + 16))(v14, v15, v10);
  v16 = a2;
  v60 = a1;
  v17 = a1;
  v18 = sub_21498E670();
  v19 = sub_21498FBB0();
  v59 = v16;

  v58 = v17;
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v54 = a5;
    v22 = a3;
    v23 = v21;
    *v20 = 138412546;
    v24 = v58;
    *(v20 + 4) = v58;
    *(v20 + 12) = 2112;
    v25 = v59;
    *(v20 + 14) = v59;
    *v21 = v60;
    v21[1] = a2;
    v26 = v24;
    v27 = v25;
    _os_log_impl(&dword_21488E000, v18, v19, "401 response from server for request %@ response %@", v20, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A8F8, &unk_2149938A0);
    swift_arrayDestroy();
    v28 = v23;
    a3 = v22;
    a5 = v54;
    MEMORY[0x216059AC0](v28, -1, -1);
    MEMORY[0x216059AC0](v20, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A640, &unk_21499A680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_214991BE0;
  v30 = *MEMORY[0x277CB90A0];
  *(inited + 32) = sub_21498F870();
  *(inited + 40) = v31;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = 1;
  v32 = *MEMORY[0x277CB9090];
  *(inited + 80) = sub_21498F870();
  *(inited + 88) = v33;
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A378, &qword_214993B80);
  *(inited + 96) = &unk_2826C3DD0;
  v34 = sub_2148E0B1C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4C8, &unk_214992030);
  swift_arrayDestroy();
  v35 = qword_281190E68;
  v36 = v57;
  v37 = *(v57 + qword_281190E68);
  if (v37)
  {
    v38 = *(v57 + qword_281190E68);
LABEL_9:
    v43 = *(v36 + qword_281190E60);
    v44 = v37;
    sub_21491F834(v34);

    v45 = sub_21498F7D0();

    v46 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v47 = swift_allocObject();
    v48 = v55;
    v47[2] = v46;
    v47[3] = v48;
    v49 = v60;
    v47[4] = a5;
    v47[5] = v49;
    v47[6] = a2;
    v47[7] = a3;
    v47[8] = v56;
    aBlock[4] = sub_2149264B4;
    aBlock[5] = v47;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_214920010;
    aBlock[3] = &block_descriptor_224;
    v50 = _Block_copy(aBlock);
    v51 = v58;
    v52 = v59;

    v53 = a3;

    [v38 renewCredentialsForAccount:v43 options:v45 completion:v50];
    _Block_release(v50);

    return;
  }

  v39 = objc_opt_self();
  v40 = [v39 defaultStore];
  v41 = *(v36 + v35);
  *(v36 + v35) = v40;

  v42 = [v39 defaultStore];
  if (v42)
  {
    v38 = v42;
    v37 = 0;
    goto LABEL_9;
  }

  __break(1u);
}

void sub_214915234(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v56 = a6;
  v55 = a4;
  v10 = sub_21498E690();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v10, qword_281194E18);
  (*(v11 + 16))(v14, v15, v10);
  v16 = a2;
  v60 = a1;
  v17 = a1;
  v18 = sub_21498E670();
  v19 = sub_21498FBB0();
  v59 = v16;

  v58 = v17;
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v54 = a5;
    v22 = a3;
    v23 = v21;
    *v20 = 138412546;
    v24 = v58;
    *(v20 + 4) = v58;
    *(v20 + 12) = 2112;
    v25 = v59;
    *(v20 + 14) = v59;
    *v21 = v60;
    v21[1] = a2;
    v26 = v24;
    v27 = v25;
    _os_log_impl(&dword_21488E000, v18, v19, "401 response from server for request %@ response %@", v20, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A8F8, &unk_2149938A0);
    swift_arrayDestroy();
    v28 = v23;
    a3 = v22;
    a5 = v54;
    MEMORY[0x216059AC0](v28, -1, -1);
    MEMORY[0x216059AC0](v20, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A640, &unk_21499A680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_214991BE0;
  v30 = *MEMORY[0x277CB90A0];
  *(inited + 32) = sub_21498F870();
  *(inited + 40) = v31;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = 1;
  v32 = *MEMORY[0x277CB9090];
  *(inited + 80) = sub_21498F870();
  *(inited + 88) = v33;
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A378, &qword_214993B80);
  *(inited + 96) = &unk_2826C3E00;
  v34 = sub_2148E0B1C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4C8, &unk_214992030);
  swift_arrayDestroy();
  v35 = qword_281190E68;
  v36 = v57;
  v37 = *(v57 + qword_281190E68);
  if (v37)
  {
    v38 = *(v57 + qword_281190E68);
LABEL_9:
    v43 = *(v36 + qword_281190E60);
    v44 = v37;
    sub_21491F834(v34);

    v45 = sub_21498F7D0();

    v46 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v47 = swift_allocObject();
    v48 = v55;
    v47[2] = v46;
    v47[3] = v48;
    v49 = v60;
    v47[4] = a5;
    v47[5] = v49;
    v47[6] = a2;
    v47[7] = a3;
    v47[8] = v56;
    aBlock[4] = sub_214925CE4;
    aBlock[5] = v47;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_214920010;
    aBlock[3] = &block_descriptor_31;
    v50 = _Block_copy(aBlock);
    v51 = v58;
    v52 = v59;

    v53 = a3;

    [v38 renewCredentialsForAccount:v43 options:v45 completion:v50];
    _Block_release(v50);

    return;
  }

  v39 = objc_opt_self();
  v40 = [v39 defaultStore];
  v41 = *(v36 + v35);
  *(v36 + v35) = v40;

  v42 = [v39 defaultStore];
  if (v42)
  {
    v38 = v42;
    v37 = 0;
    goto LABEL_9;
  }

  __break(1u);
}

void sub_214915780(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v56 = a6;
  v55 = a4;
  v10 = sub_21498E690();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v10, qword_281194E18);
  (*(v11 + 16))(v14, v15, v10);
  v16 = a2;
  v60 = a1;
  v17 = a1;
  v18 = sub_21498E670();
  v19 = sub_21498FBB0();
  v59 = v16;

  v58 = v17;
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v54 = a5;
    v22 = a3;
    v23 = v21;
    *v20 = 138412546;
    v24 = v58;
    *(v20 + 4) = v58;
    *(v20 + 12) = 2112;
    v25 = v59;
    *(v20 + 14) = v59;
    *v21 = v60;
    v21[1] = a2;
    v26 = v24;
    v27 = v25;
    _os_log_impl(&dword_21488E000, v18, v19, "401 response from server for request %@ response %@", v20, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A8F8, &unk_2149938A0);
    swift_arrayDestroy();
    v28 = v23;
    a3 = v22;
    a5 = v54;
    MEMORY[0x216059AC0](v28, -1, -1);
    MEMORY[0x216059AC0](v20, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A640, &unk_21499A680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_214991BE0;
  v30 = *MEMORY[0x277CB90A0];
  *(inited + 32) = sub_21498F870();
  *(inited + 40) = v31;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = 1;
  v32 = *MEMORY[0x277CB9090];
  *(inited + 80) = sub_21498F870();
  *(inited + 88) = v33;
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A378, &qword_214993B80);
  *(inited + 96) = &unk_2826C3E30;
  v34 = sub_2148E0B1C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4C8, &unk_214992030);
  swift_arrayDestroy();
  v35 = qword_281190E68;
  v36 = v57;
  v37 = *(v57 + qword_281190E68);
  if (v37)
  {
    v38 = *(v57 + qword_281190E68);
LABEL_9:
    v43 = *(v36 + qword_281190E60);
    v44 = v37;
    sub_21491F834(v34);

    v45 = sub_21498F7D0();

    v46 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v47 = swift_allocObject();
    v48 = v55;
    v47[2] = v46;
    v47[3] = v48;
    v49 = v60;
    v47[4] = a5;
    v47[5] = v49;
    v47[6] = a2;
    v47[7] = a3;
    v47[8] = v56;
    aBlock[4] = sub_21492632C;
    aBlock[5] = v47;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_214920010;
    aBlock[3] = &block_descriptor_128;
    v50 = _Block_copy(aBlock);
    v51 = v58;
    v52 = v59;

    v53 = a3;

    [v38 renewCredentialsForAccount:v43 options:v45 completion:v50];
    _Block_release(v50);

    return;
  }

  v39 = objc_opt_self();
  v40 = [v39 defaultStore];
  v41 = *(v36 + v35);
  *(v36 + v35) = v40;

  v42 = [v39 defaultStore];
  if (v42)
  {
    v38 = v42;
    v37 = 0;
    goto LABEL_9;
  }

  __break(1u);
}

void sub_214915CCC(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v56 = a6;
  v55 = a4;
  v10 = sub_21498E690();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v10, qword_281194E18);
  (*(v11 + 16))(v14, v15, v10);
  v16 = a2;
  v60 = a1;
  v17 = a1;
  v18 = sub_21498E670();
  v19 = sub_21498FBB0();
  v59 = v16;

  v58 = v17;
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v54 = a5;
    v22 = a3;
    v23 = v21;
    *v20 = 138412546;
    v24 = v58;
    *(v20 + 4) = v58;
    *(v20 + 12) = 2112;
    v25 = v59;
    *(v20 + 14) = v59;
    *v21 = v60;
    v21[1] = a2;
    v26 = v24;
    v27 = v25;
    _os_log_impl(&dword_21488E000, v18, v19, "401 response from server for request %@ response %@", v20, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A8F8, &unk_2149938A0);
    swift_arrayDestroy();
    v28 = v23;
    a3 = v22;
    a5 = v54;
    MEMORY[0x216059AC0](v28, -1, -1);
    MEMORY[0x216059AC0](v20, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A640, &unk_21499A680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_214991BE0;
  v30 = *MEMORY[0x277CB90A0];
  *(inited + 32) = sub_21498F870();
  *(inited + 40) = v31;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = 1;
  v32 = *MEMORY[0x277CB9090];
  *(inited + 80) = sub_21498F870();
  *(inited + 88) = v33;
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A378, &qword_214993B80);
  *(inited + 96) = &unk_2826C3E60;
  v34 = sub_2148E0B1C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4C8, &unk_214992030);
  swift_arrayDestroy();
  v35 = qword_281190E68;
  v36 = v57;
  v37 = *(v57 + qword_281190E68);
  if (v37)
  {
    v38 = *(v57 + qword_281190E68);
LABEL_9:
    v43 = *(v36 + qword_281190E60);
    v44 = v37;
    sub_21491F834(v34);

    v45 = sub_21498F7D0();

    v46 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v47 = swift_allocObject();
    v48 = v55;
    v47[2] = v46;
    v47[3] = v48;
    v49 = v60;
    v47[4] = a5;
    v47[5] = v49;
    v47[6] = a2;
    v47[7] = a3;
    v47[8] = v56;
    aBlock[4] = sub_214926254;
    aBlock[5] = v47;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_214920010;
    aBlock[3] = &block_descriptor_56;
    v50 = _Block_copy(aBlock);
    v51 = v58;
    v52 = v59;

    v53 = a3;

    [v38 renewCredentialsForAccount:v43 options:v45 completion:v50];
    _Block_release(v50);

    return;
  }

  v39 = objc_opt_self();
  v40 = [v39 defaultStore];
  v41 = *(v36 + v35);
  *(v36 + v35) = v40;

  v42 = [v39 defaultStore];
  if (v42)
  {
    v38 = v42;
    v37 = 0;
    goto LABEL_9;
  }

  __break(1u);
}

void sub_214916218(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v56 = a6;
  v55 = a4;
  v10 = sub_21498E690();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v10, qword_281194E18);
  (*(v11 + 16))(v14, v15, v10);
  v16 = a2;
  v60 = a1;
  v17 = a1;
  v18 = sub_21498E670();
  v19 = sub_21498FBB0();
  v59 = v16;

  v58 = v17;
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v54 = a5;
    v22 = a3;
    v23 = v21;
    *v20 = 138412546;
    v24 = v58;
    *(v20 + 4) = v58;
    *(v20 + 12) = 2112;
    v25 = v59;
    *(v20 + 14) = v59;
    *v21 = v60;
    v21[1] = a2;
    v26 = v24;
    v27 = v25;
    _os_log_impl(&dword_21488E000, v18, v19, "401 response from server for request %@ response %@", v20, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A8F8, &unk_2149938A0);
    swift_arrayDestroy();
    v28 = v23;
    a3 = v22;
    a5 = v54;
    MEMORY[0x216059AC0](v28, -1, -1);
    MEMORY[0x216059AC0](v20, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A640, &unk_21499A680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_214991BE0;
  v30 = *MEMORY[0x277CB90A0];
  *(inited + 32) = sub_21498F870();
  *(inited + 40) = v31;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = 1;
  v32 = *MEMORY[0x277CB9090];
  *(inited + 80) = sub_21498F870();
  *(inited + 88) = v33;
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A378, &qword_214993B80);
  *(inited + 96) = &unk_2826C3E90;
  v34 = sub_2148E0B1C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4C8, &unk_214992030);
  swift_arrayDestroy();
  v35 = qword_281190E68;
  v36 = v57;
  v37 = *(v57 + qword_281190E68);
  if (v37)
  {
    v38 = *(v57 + qword_281190E68);
LABEL_9:
    v43 = *(v36 + qword_281190E60);
    v44 = v37;
    sub_21491F834(v34);

    v45 = sub_21498F7D0();

    v46 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v47 = swift_allocObject();
    v48 = v55;
    v47[2] = v46;
    v47[3] = v48;
    v49 = v60;
    v47[4] = a5;
    v47[5] = v49;
    v47[6] = a2;
    v47[7] = a3;
    v47[8] = v56;
    aBlock[4] = sub_2149265D4;
    aBlock[5] = v47;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_214920010;
    aBlock[3] = &block_descriptor_320;
    v50 = _Block_copy(aBlock);
    v51 = v58;
    v52 = v59;

    v53 = a3;

    [v38 renewCredentialsForAccount:v43 options:v45 completion:v50];
    _Block_release(v50);

    return;
  }

  v39 = objc_opt_self();
  v40 = [v39 defaultStore];
  v41 = *(v36 + v35);
  *(v36 + v35) = v40;

  v42 = [v39 defaultStore];
  if (v42)
  {
    v38 = v42;
    v37 = 0;
    goto LABEL_9;
  }

  __break(1u);
}

void sub_214916764(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v56 = a6;
  v55 = a4;
  v10 = sub_21498E690();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v10, qword_281194E18);
  (*(v11 + 16))(v14, v15, v10);
  v16 = a2;
  v60 = a1;
  v17 = a1;
  v18 = sub_21498E670();
  v19 = sub_21498FBB0();
  v59 = v16;

  v58 = v17;
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v54 = a5;
    v22 = a3;
    v23 = v21;
    *v20 = 138412546;
    v24 = v58;
    *(v20 + 4) = v58;
    *(v20 + 12) = 2112;
    v25 = v59;
    *(v20 + 14) = v59;
    *v21 = v60;
    v21[1] = a2;
    v26 = v24;
    v27 = v25;
    _os_log_impl(&dword_21488E000, v18, v19, "401 response from server for request %@ response %@", v20, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A8F8, &unk_2149938A0);
    swift_arrayDestroy();
    v28 = v23;
    a3 = v22;
    a5 = v54;
    MEMORY[0x216059AC0](v28, -1, -1);
    MEMORY[0x216059AC0](v20, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A640, &unk_21499A680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_214991BE0;
  v30 = *MEMORY[0x277CB90A0];
  *(inited + 32) = sub_21498F870();
  *(inited + 40) = v31;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = 1;
  v32 = *MEMORY[0x277CB9090];
  *(inited + 80) = sub_21498F870();
  *(inited + 88) = v33;
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A378, &qword_214993B80);
  *(inited + 96) = &unk_2826C3EC0;
  v34 = sub_2148E0B1C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4C8, &unk_214992030);
  swift_arrayDestroy();
  v35 = qword_281190E68;
  v36 = v57;
  v37 = *(v57 + qword_281190E68);
  if (v37)
  {
    v38 = *(v57 + qword_281190E68);
LABEL_9:
    v43 = *(v36 + qword_281190E60);
    v44 = v37;
    sub_21491F834(v34);

    v45 = sub_21498F7D0();

    v46 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v47 = swift_allocObject();
    v48 = v55;
    v47[2] = v46;
    v47[3] = v48;
    v49 = v60;
    v47[4] = a5;
    v47[5] = v49;
    v47[6] = a2;
    v47[7] = a3;
    v47[8] = v56;
    aBlock[4] = sub_21492646C;
    aBlock[5] = v47;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_214920010;
    aBlock[3] = &block_descriptor_200;
    v50 = _Block_copy(aBlock);
    v51 = v58;
    v52 = v59;

    v53 = a3;

    [v38 renewCredentialsForAccount:v43 options:v45 completion:v50];
    _Block_release(v50);

    return;
  }

  v39 = objc_opt_self();
  v40 = [v39 defaultStore];
  v41 = *(v36 + v35);
  *(v36 + v35) = v40;

  v42 = [v39 defaultStore];
  if (v42)
  {
    v38 = v42;
    v37 = 0;
    goto LABEL_9;
  }

  __break(1u);
}

void sub_214916CB0(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v56 = a6;
  v55 = a4;
  v10 = sub_21498E690();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v10, qword_281194E18);
  (*(v11 + 16))(v14, v15, v10);
  v16 = a2;
  v60 = a1;
  v17 = a1;
  v18 = sub_21498E670();
  v19 = sub_21498FBB0();
  v59 = v16;

  v58 = v17;
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v54 = a5;
    v22 = a3;
    v23 = v21;
    *v20 = 138412546;
    v24 = v58;
    *(v20 + 4) = v58;
    *(v20 + 12) = 2112;
    v25 = v59;
    *(v20 + 14) = v59;
    *v21 = v60;
    v21[1] = a2;
    v26 = v24;
    v27 = v25;
    _os_log_impl(&dword_21488E000, v18, v19, "401 response from server for request %@ response %@", v20, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A8F8, &unk_2149938A0);
    swift_arrayDestroy();
    v28 = v23;
    a3 = v22;
    a5 = v54;
    MEMORY[0x216059AC0](v28, -1, -1);
    MEMORY[0x216059AC0](v20, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A640, &unk_21499A680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_214991BE0;
  v30 = *MEMORY[0x277CB90A0];
  *(inited + 32) = sub_21498F870();
  *(inited + 40) = v31;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = 1;
  v32 = *MEMORY[0x277CB9090];
  *(inited + 80) = sub_21498F870();
  *(inited + 88) = v33;
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A378, &qword_214993B80);
  *(inited + 96) = &unk_2826C3EF0;
  v34 = sub_2148E0B1C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4C8, &unk_214992030);
  swift_arrayDestroy();
  v35 = qword_281190E68;
  v36 = v57;
  v37 = *(v57 + qword_281190E68);
  if (v37)
  {
    v38 = *(v57 + qword_281190E68);
LABEL_9:
    v43 = *(v36 + qword_281190E60);
    v44 = v37;
    sub_21491F834(v34);

    v45 = sub_21498F7D0();

    v46 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v47 = swift_allocObject();
    v48 = v55;
    v47[2] = v46;
    v47[3] = v48;
    v49 = v60;
    v47[4] = a5;
    v47[5] = v49;
    v47[6] = a2;
    v47[7] = a3;
    v47[8] = v56;
    aBlock[4] = sub_21492675C;
    aBlock[5] = v47;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_214920010;
    aBlock[3] = &block_descriptor_344;
    v50 = _Block_copy(aBlock);
    v51 = v58;
    v52 = v59;

    v53 = a3;

    [v38 renewCredentialsForAccount:v43 options:v45 completion:v50];
    _Block_release(v50);

    return;
  }

  v39 = objc_opt_self();
  v40 = [v39 defaultStore];
  v41 = *(v36 + v35);
  *(v36 + v35) = v40;

  v42 = [v39 defaultStore];
  if (v42)
  {
    v38 = v42;
    v37 = 0;
    goto LABEL_9;
  }

  __break(1u);
}

void sub_2149171FC(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v56 = a6;
  v55 = a4;
  v10 = sub_21498E690();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v10, qword_281194E18);
  (*(v11 + 16))(v14, v15, v10);
  v16 = a2;
  v60 = a1;
  v17 = a1;
  v18 = sub_21498E670();
  v19 = sub_21498FBB0();
  v59 = v16;

  v58 = v17;
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v54 = a5;
    v22 = a3;
    v23 = v21;
    *v20 = 138412546;
    v24 = v58;
    *(v20 + 4) = v58;
    *(v20 + 12) = 2112;
    v25 = v59;
    *(v20 + 14) = v59;
    *v21 = v60;
    v21[1] = a2;
    v26 = v24;
    v27 = v25;
    _os_log_impl(&dword_21488E000, v18, v19, "401 response from server for request %@ response %@", v20, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A8F8, &unk_2149938A0);
    swift_arrayDestroy();
    v28 = v23;
    a3 = v22;
    a5 = v54;
    MEMORY[0x216059AC0](v28, -1, -1);
    MEMORY[0x216059AC0](v20, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A640, &unk_21499A680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_214991BE0;
  v30 = *MEMORY[0x277CB90A0];
  *(inited + 32) = sub_21498F870();
  *(inited + 40) = v31;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = 1;
  v32 = *MEMORY[0x277CB9090];
  *(inited + 80) = sub_21498F870();
  *(inited + 88) = v33;
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A378, &qword_214993B80);
  *(inited + 96) = &unk_2826C3F20;
  v34 = sub_2148E0B1C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4C8, &unk_214992030);
  swift_arrayDestroy();
  v35 = qword_281190E68;
  v36 = v57;
  v37 = *(v57 + qword_281190E68);
  if (v37)
  {
    v38 = *(v57 + qword_281190E68);
LABEL_9:
    v43 = *(v36 + qword_281190E60);
    v44 = v37;
    sub_21491F834(v34);

    v45 = sub_21498F7D0();

    v46 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v47 = swift_allocObject();
    v48 = v55;
    v47[2] = v46;
    v47[3] = v48;
    v49 = v60;
    v47[4] = a5;
    v47[5] = v49;
    v47[6] = a2;
    v47[7] = a3;
    v47[8] = v56;
    aBlock[4] = sub_2149263DC;
    aBlock[5] = v47;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_214920010;
    aBlock[3] = &block_descriptor_152;
    v50 = _Block_copy(aBlock);
    v51 = v58;
    v52 = v59;

    v53 = a3;

    [v38 renewCredentialsForAccount:v43 options:v45 completion:v50];
    _Block_release(v50);

    return;
  }

  v39 = objc_opt_self();
  v40 = [v39 defaultStore];
  v41 = *(v36 + v35);
  *(v36 + v35) = v40;

  v42 = [v39 defaultStore];
  if (v42)
  {
    v38 = v42;
    v37 = 0;
    goto LABEL_9;
  }

  __break(1u);
}

void sub_214917748(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v56 = a6;
  v55 = a4;
  v10 = sub_21498E690();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v10, qword_281194E18);
  (*(v11 + 16))(v14, v15, v10);
  v16 = a2;
  v60 = a1;
  v17 = a1;
  v18 = sub_21498E670();
  v19 = sub_21498FBB0();
  v59 = v16;

  v58 = v17;
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v54 = a5;
    v22 = a3;
    v23 = v21;
    *v20 = 138412546;
    v24 = v58;
    *(v20 + 4) = v58;
    *(v20 + 12) = 2112;
    v25 = v59;
    *(v20 + 14) = v59;
    *v21 = v60;
    v21[1] = a2;
    v26 = v24;
    v27 = v25;
    _os_log_impl(&dword_21488E000, v18, v19, "401 response from server for request %@ response %@", v20, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A8F8, &unk_2149938A0);
    swift_arrayDestroy();
    v28 = v23;
    a3 = v22;
    a5 = v54;
    MEMORY[0x216059AC0](v28, -1, -1);
    MEMORY[0x216059AC0](v20, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A640, &unk_21499A680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_214991BE0;
  v30 = *MEMORY[0x277CB90A0];
  *(inited + 32) = sub_21498F870();
  *(inited + 40) = v31;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = 1;
  v32 = *MEMORY[0x277CB9090];
  *(inited + 80) = sub_21498F870();
  *(inited + 88) = v33;
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A378, &qword_214993B80);
  *(inited + 96) = &unk_2826C3F50;
  v34 = sub_2148E0B1C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4C8, &unk_214992030);
  swift_arrayDestroy();
  v35 = qword_281190E68;
  v36 = v57;
  v37 = *(v57 + qword_281190E68);
  if (v37)
  {
    v38 = *(v57 + qword_281190E68);
LABEL_9:
    v43 = *(v36 + qword_281190E60);
    v44 = v37;
    sub_21491F834(v34);

    v45 = sub_21498F7D0();

    v46 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v47 = swift_allocObject();
    v48 = v55;
    v47[2] = v46;
    v47[3] = v48;
    v49 = v60;
    v47[4] = a5;
    v47[5] = v49;
    v47[6] = a2;
    v47[7] = a3;
    v47[8] = v56;
    aBlock[4] = sub_214926424;
    aBlock[5] = v47;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_214920010;
    aBlock[3] = &block_descriptor_176;
    v50 = _Block_copy(aBlock);
    v51 = v58;
    v52 = v59;

    v53 = a3;

    [v38 renewCredentialsForAccount:v43 options:v45 completion:v50];
    _Block_release(v50);

    return;
  }

  v39 = objc_opt_self();
  v40 = [v39 defaultStore];
  v41 = *(v36 + v35);
  *(v36 + v35) = v40;

  v42 = [v39 defaultStore];
  if (v42)
  {
    v38 = v42;
    v37 = 0;
    goto LABEL_9;
  }

  __break(1u);
}

void sub_214917C94(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v56 = a6;
  v55 = a4;
  v10 = sub_21498E690();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v10, qword_281194E18);
  (*(v11 + 16))(v14, v15, v10);
  v16 = a2;
  v60 = a1;
  v17 = a1;
  v18 = sub_21498E670();
  v19 = sub_21498FBB0();
  v59 = v16;

  v58 = v17;
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v54 = a5;
    v22 = a3;
    v23 = v21;
    *v20 = 138412546;
    v24 = v58;
    *(v20 + 4) = v58;
    *(v20 + 12) = 2112;
    v25 = v59;
    *(v20 + 14) = v59;
    *v21 = v60;
    v21[1] = a2;
    v26 = v24;
    v27 = v25;
    _os_log_impl(&dword_21488E000, v18, v19, "401 response from server for request %@ response %@", v20, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A8F8, &unk_2149938A0);
    swift_arrayDestroy();
    v28 = v23;
    a3 = v22;
    a5 = v54;
    MEMORY[0x216059AC0](v28, -1, -1);
    MEMORY[0x216059AC0](v20, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A640, &unk_21499A680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_214991BE0;
  v30 = *MEMORY[0x277CB90A0];
  *(inited + 32) = sub_21498F870();
  *(inited + 40) = v31;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = 1;
  v32 = *MEMORY[0x277CB9090];
  *(inited + 80) = sub_21498F870();
  *(inited + 88) = v33;
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A378, &qword_214993B80);
  *(inited + 96) = &unk_2826C3F80;
  v34 = sub_2148E0B1C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4C8, &unk_214992030);
  swift_arrayDestroy();
  v35 = qword_281190E68;
  v36 = v57;
  v37 = *(v57 + qword_281190E68);
  if (v37)
  {
    v38 = *(v57 + qword_281190E68);
LABEL_9:
    v43 = *(v36 + qword_281190E60);
    v44 = v37;
    sub_21491F834(v34);

    v45 = sub_21498F7D0();

    v46 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v47 = swift_allocObject();
    v48 = v55;
    v47[2] = v46;
    v47[3] = v48;
    v49 = v60;
    v47[4] = a5;
    v47[5] = v49;
    v47[6] = a2;
    v47[7] = a3;
    v47[8] = v56;
    aBlock[4] = sub_21492658C;
    aBlock[5] = v47;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_214920010;
    aBlock[3] = &block_descriptor_296;
    v50 = _Block_copy(aBlock);
    v51 = v58;
    v52 = v59;

    v53 = a3;

    [v38 renewCredentialsForAccount:v43 options:v45 completion:v50];
    _Block_release(v50);

    return;
  }

  v39 = objc_opt_self();
  v40 = [v39 defaultStore];
  v41 = *(v36 + v35);
  *(v36 + v35) = v40;

  v42 = [v39 defaultStore];
  if (v42)
  {
    v38 = v42;
    v37 = 0;
    goto LABEL_9;
  }

  __break(1u);
}

void sub_2149181E0(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v56 = a6;
  v55 = a4;
  v10 = sub_21498E690();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v10, qword_281194E18);
  (*(v11 + 16))(v14, v15, v10);
  v16 = a2;
  v60 = a1;
  v17 = a1;
  v18 = sub_21498E670();
  v19 = sub_21498FBB0();
  v59 = v16;

  v58 = v17;
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v54 = a5;
    v22 = a3;
    v23 = v21;
    *v20 = 138412546;
    v24 = v58;
    *(v20 + 4) = v58;
    *(v20 + 12) = 2112;
    v25 = v59;
    *(v20 + 14) = v59;
    *v21 = v60;
    v21[1] = a2;
    v26 = v24;
    v27 = v25;
    _os_log_impl(&dword_21488E000, v18, v19, "401 response from server for request %@ response %@", v20, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A8F8, &unk_2149938A0);
    swift_arrayDestroy();
    v28 = v23;
    a3 = v22;
    a5 = v54;
    MEMORY[0x216059AC0](v28, -1, -1);
    MEMORY[0x216059AC0](v20, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A640, &unk_21499A680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_214991BE0;
  v30 = *MEMORY[0x277CB90A0];
  *(inited + 32) = sub_21498F870();
  *(inited + 40) = v31;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = 1;
  v32 = *MEMORY[0x277CB9090];
  *(inited + 80) = sub_21498F870();
  *(inited + 88) = v33;
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A378, &qword_214993B80);
  *(inited + 96) = &unk_2826C3FB0;
  v34 = sub_2148E0B1C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4C8, &unk_214992030);
  swift_arrayDestroy();
  v35 = qword_281190E68;
  v36 = v57;
  v37 = *(v57 + qword_281190E68);
  if (v37)
  {
    v38 = *(v57 + qword_281190E68);
LABEL_9:
    v43 = *(v36 + qword_281190E60);
    v44 = v37;
    sub_21491F834(v34);

    v45 = sub_21498F7D0();

    v46 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v47 = swift_allocObject();
    v48 = v55;
    v47[2] = v46;
    v47[3] = v48;
    v49 = v60;
    v47[4] = a5;
    v47[5] = v49;
    v47[6] = a2;
    v47[7] = a3;
    v47[8] = v56;
    aBlock[4] = sub_21492629C;
    aBlock[5] = v47;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_214920010;
    aBlock[3] = &block_descriptor_80;
    v50 = _Block_copy(aBlock);
    v51 = v58;
    v52 = v59;

    v53 = a3;

    [v38 renewCredentialsForAccount:v43 options:v45 completion:v50];
    _Block_release(v50);

    return;
  }

  v39 = objc_opt_self();
  v40 = [v39 defaultStore];
  v41 = *(v36 + v35);
  *(v36 + v35) = v40;

  v42 = [v39 defaultStore];
  if (v42)
  {
    v38 = v42;
    v37 = 0;
    goto LABEL_9;
  }

  __break(1u);
}

void sub_21491872C(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v56 = a6;
  v55 = a4;
  v10 = sub_21498E690();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v10, qword_281194E18);
  (*(v11 + 16))(v14, v15, v10);
  v16 = a2;
  v60 = a1;
  v17 = a1;
  v18 = sub_21498E670();
  v19 = sub_21498FBB0();
  v59 = v16;

  v58 = v17;
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v54 = a5;
    v22 = a3;
    v23 = v21;
    *v20 = 138412546;
    v24 = v58;
    *(v20 + 4) = v58;
    *(v20 + 12) = 2112;
    v25 = v59;
    *(v20 + 14) = v59;
    *v21 = v60;
    v21[1] = a2;
    v26 = v24;
    v27 = v25;
    _os_log_impl(&dword_21488E000, v18, v19, "401 response from server for request %@ response %@", v20, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A8F8, &unk_2149938A0);
    swift_arrayDestroy();
    v28 = v23;
    a3 = v22;
    a5 = v54;
    MEMORY[0x216059AC0](v28, -1, -1);
    MEMORY[0x216059AC0](v20, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A640, &unk_21499A680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_214991BE0;
  v30 = *MEMORY[0x277CB90A0];
  *(inited + 32) = sub_21498F870();
  *(inited + 40) = v31;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = 1;
  v32 = *MEMORY[0x277CB9090];
  *(inited + 80) = sub_21498F870();
  *(inited + 88) = v33;
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A378, &qword_214993B80);
  *(inited + 96) = &unk_2826C3FE0;
  v34 = sub_2148E0B1C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4C8, &unk_214992030);
  swift_arrayDestroy();
  v35 = qword_281190E68;
  v36 = v57;
  v37 = *(v57 + qword_281190E68);
  if (v37)
  {
    v38 = *(v57 + qword_281190E68);
LABEL_9:
    v43 = *(v36 + qword_281190E60);
    v44 = v37;
    sub_21491F834(v34);

    v45 = sub_21498F7D0();

    v46 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v47 = swift_allocObject();
    v48 = v55;
    v47[2] = v46;
    v47[3] = v48;
    v49 = v60;
    v47[4] = a5;
    v47[5] = v49;
    v47[6] = a2;
    v47[7] = a3;
    v47[8] = v56;
    aBlock[4] = sub_2149262E4;
    aBlock[5] = v47;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_214920010;
    aBlock[3] = &block_descriptor_104;
    v50 = _Block_copy(aBlock);
    v51 = v58;
    v52 = v59;

    v53 = a3;

    [v38 renewCredentialsForAccount:v43 options:v45 completion:v50];
    _Block_release(v50);

    return;
  }

  v39 = objc_opt_self();
  v40 = [v39 defaultStore];
  v41 = *(v36 + v35);
  *(v36 + v35) = v40;

  v42 = [v39 defaultStore];
  if (v42)
  {
    v38 = v42;
    v37 = 0;
    goto LABEL_9;
  }

  __break(1u);
}

void sub_214918C78(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v56 = a6;
  v55 = a4;
  v10 = sub_21498E690();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v10, qword_281194E18);
  (*(v11 + 16))(v14, v15, v10);
  v16 = a2;
  v60 = a1;
  v17 = a1;
  v18 = sub_21498E670();
  v19 = sub_21498FBB0();
  v59 = v16;

  v58 = v17;
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v54 = a5;
    v22 = a3;
    v23 = v21;
    *v20 = 138412546;
    v24 = v58;
    *(v20 + 4) = v58;
    *(v20 + 12) = 2112;
    v25 = v59;
    *(v20 + 14) = v59;
    *v21 = v60;
    v21[1] = a2;
    v26 = v24;
    v27 = v25;
    _os_log_impl(&dword_21488E000, v18, v19, "401 response from server for request %@ response %@", v20, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A8F8, &unk_2149938A0);
    swift_arrayDestroy();
    v28 = v23;
    a3 = v22;
    a5 = v54;
    MEMORY[0x216059AC0](v28, -1, -1);
    MEMORY[0x216059AC0](v20, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A640, &unk_21499A680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_214991BE0;
  v30 = *MEMORY[0x277CB90A0];
  *(inited + 32) = sub_21498F870();
  *(inited + 40) = v31;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = 1;
  v32 = *MEMORY[0x277CB9090];
  *(inited + 80) = sub_21498F870();
  *(inited + 88) = v33;
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A378, &qword_214993B80);
  *(inited + 96) = &unk_2826C4010;
  v34 = sub_2148E0B1C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4C8, &unk_214992030);
  swift_arrayDestroy();
  v35 = qword_281190E68;
  v36 = v57;
  v37 = *(v57 + qword_281190E68);
  if (v37)
  {
    v38 = *(v57 + qword_281190E68);
LABEL_9:
    v43 = *(v36 + qword_281190E60);
    v44 = v37;
    sub_21491F834(v34);

    v45 = sub_21498F7D0();

    v46 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v47 = swift_allocObject();
    v48 = v55;
    v47[2] = v46;
    v47[3] = v48;
    v49 = v60;
    v47[4] = a5;
    v47[5] = v49;
    v47[6] = a2;
    v47[7] = a3;
    v47[8] = v56;
    aBlock[4] = sub_214926544;
    aBlock[5] = v47;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_214920010;
    aBlock[3] = &block_descriptor_272;
    v50 = _Block_copy(aBlock);
    v51 = v58;
    v52 = v59;

    v53 = a3;

    [v38 renewCredentialsForAccount:v43 options:v45 completion:v50];
    _Block_release(v50);

    return;
  }

  v39 = objc_opt_self();
  v40 = [v39 defaultStore];
  v41 = *(v36 + v35);
  *(v36 + v35) = v40;

  v42 = [v39 defaultStore];
  if (v42)
  {
    v38 = v42;
    v37 = 0;
    goto LABEL_9;
  }

  __break(1u);
}

void sub_2149191C4(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v56 = a6;
  v55 = a4;
  v10 = sub_21498E690();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v10, qword_281194E18);
  (*(v11 + 16))(v14, v15, v10);
  v16 = a2;
  v60 = a1;
  v17 = a1;
  v18 = sub_21498E670();
  v19 = sub_21498FBB0();
  v59 = v16;

  v58 = v17;
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v54 = a5;
    v22 = a3;
    v23 = v21;
    *v20 = 138412546;
    v24 = v58;
    *(v20 + 4) = v58;
    *(v20 + 12) = 2112;
    v25 = v59;
    *(v20 + 14) = v59;
    *v21 = v60;
    v21[1] = a2;
    v26 = v24;
    v27 = v25;
    _os_log_impl(&dword_21488E000, v18, v19, "401 response from server for request %@ response %@", v20, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A8F8, &unk_2149938A0);
    swift_arrayDestroy();
    v28 = v23;
    a3 = v22;
    a5 = v54;
    MEMORY[0x216059AC0](v28, -1, -1);
    MEMORY[0x216059AC0](v20, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A640, &unk_21499A680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_214991BE0;
  v30 = *MEMORY[0x277CB90A0];
  *(inited + 32) = sub_21498F870();
  *(inited + 40) = v31;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = 1;
  v32 = *MEMORY[0x277CB9090];
  *(inited + 80) = sub_21498F870();
  *(inited + 88) = v33;
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A378, &qword_214993B80);
  *(inited + 96) = &unk_2826C4040;
  v34 = sub_2148E0B1C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4C8, &unk_214992030);
  swift_arrayDestroy();
  v35 = qword_281190E68;
  v36 = v57;
  v37 = *(v57 + qword_281190E68);
  if (v37)
  {
    v38 = *(v57 + qword_281190E68);
LABEL_9:
    v43 = *(v36 + qword_281190E60);
    v44 = v37;
    sub_21491F834(v34);

    v45 = sub_21498F7D0();

    v46 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v47 = swift_allocObject();
    v48 = v55;
    v47[2] = v46;
    v47[3] = v48;
    v49 = v60;
    v47[4] = a5;
    v47[5] = v49;
    v47[6] = a2;
    v47[7] = a3;
    v47[8] = v56;
    aBlock[4] = sub_2149264FC;
    aBlock[5] = v47;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_214920010;
    aBlock[3] = &block_descriptor_248;
    v50 = _Block_copy(aBlock);
    v51 = v58;
    v52 = v59;

    v53 = a3;

    [v38 renewCredentialsForAccount:v43 options:v45 completion:v50];
    _Block_release(v50);

    return;
  }

  v39 = objc_opt_self();
  v40 = [v39 defaultStore];
  v41 = *(v36 + v35);
  *(v36 + v35) = v40;

  v42 = [v39 defaultStore];
  if (v42)
  {
    v38 = v42;
    v37 = 0;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_214919710(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v69 = a4;
  v66 = a3;
  v72 = a2;
  v67 = a1;
  v5 = sub_21498E690();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v58 - v11;
  v13 = sub_21498E320();
  v70 = *(v13 - 8);
  v71 = v13;
  v14 = *(v70 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v64 = v16;
  v65 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v68 = &v58 - v17;
  sub_21498E310();
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v5, qword_281194E18);
  v62 = v6[2];
  v63 = v18;
  v62(v12);
  v19 = v4;
  v20 = sub_21498E670();
  v21 = sub_21498FBA0();

  if (os_log_type_enabled(v20, v21))
  {
    v60 = v10;
    v22 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    aBlock[0] = v59;
    *v22 = 136315394;
    v23 = (*((*MEMORY[0x277D85000] & *v19) + 0xF8))();
    v61 = v5;
    v24 = v6;
    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v25 = 0xE300000000000000;
        v26 = 5526864;
      }

      else
      {
        v25 = 0xE600000000000000;
        v26 = 0x4554454C4544;
      }
    }

    else if (v23)
    {
      v25 = 0xE400000000000000;
      v26 = 1414745936;
    }

    else
    {
      v25 = 0xE300000000000000;
      v26 = 5522759;
    }

    v28 = sub_2149079F4(v26, v25, aBlock);

    *(v22 + 4) = v28;
    *(v22 + 12) = 2080;
    v29 = [v19 urlString];
    v30 = sub_21498F870();
    v32 = v31;

    v33 = sub_2149079F4(v30, v32, aBlock);

    *(v22 + 14) = v33;
    _os_log_impl(&dword_21488E000, v20, v21, "%s %s", v22, 0x16u);
    v34 = v59;
    swift_arrayDestroy();
    MEMORY[0x216059AC0](v34, -1, -1);
    MEMORY[0x216059AC0](v22, -1, -1);

    v6 = v24;
    v27 = v24[1];
    v5 = v61;
    v27(v12, v61);
    v10 = v60;
  }

  else
  {

    v27 = v6[1];
    v27(v12, v5);
  }

  (v62)(v10, v63, v5);
  v35 = v19;
  v36 = sub_21498E670();
  v37 = v10;
  v38 = sub_21498FBA0();

  if (os_log_type_enabled(v36, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    aBlock[0] = v40;
    *v39 = 136315138;
    v62 = v6;
    v41 = *(v35 + qword_281190E40);
    v42 = *(v35 + qword_281190E40 + 8);

    v43 = sub_2149079F4(v41, v42, aBlock);

    *(v39 + 4) = v43;
    _os_log_impl(&dword_21488E000, v36, v38, "X-Apple-Request-UUID: %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v40);
    MEMORY[0x216059AC0](v40, -1, -1);
    MEMORY[0x216059AC0](v39, -1, -1);
  }

  v27(v37, v5);
  v63 = v35;
  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v46 = v70;
  v45 = v71;
  v47 = v65;
  v48 = v68;
  (*(v70 + 16))(v65, v68, v71);
  v49 = (*(v46 + 80) + 24) & ~*(v46 + 80);
  v50 = v49 + v64;
  v51 = (((v49 + v64) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  *(v52 + 16) = v44;
  (*(v46 + 32))(v52 + v49, v47, v45);
  *(v52 + v50) = v66 & 1;
  v53 = v52 + (v50 & 0xFFFFFFFFFFFFFFF8);
  v54 = v72;
  *(v53 + 8) = v67;
  *(v53 + 16) = v54;
  *(v52 + v51) = v69;
  aBlock[4] = sub_21492649C;
  aBlock[5] = v52;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_214923150;
  aBlock[3] = &block_descriptor_216;
  v55 = _Block_copy(aBlock);

  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C3B8, &qword_21499A6F8);
  v73.receiver = v63;
  v73.super_class = v56;
  objc_msgSendSuper2(&v73, sel_performRequestWithHandler_, v55);
  _Block_release(v55);
  return (*(v46 + 8))(v48, v45);
}

uint64_t sub_214919DF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v69 = a4;
  v66 = a3;
  v72 = a2;
  v67 = a1;
  v5 = sub_21498E690();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v58 - v11;
  v13 = sub_21498E320();
  v70 = *(v13 - 8);
  v71 = v13;
  v14 = *(v70 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v64 = v16;
  v65 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v68 = &v58 - v17;
  sub_21498E310();
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v5, qword_281194E18);
  v62 = v6[2];
  v63 = v18;
  v62(v12);
  v19 = v4;
  v20 = sub_21498E670();
  v21 = sub_21498FBA0();

  if (os_log_type_enabled(v20, v21))
  {
    v60 = v10;
    v22 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    aBlock[0] = v59;
    *v22 = 136315394;
    v23 = (*((*MEMORY[0x277D85000] & *v19) + 0xF8))();
    v61 = v5;
    v24 = v6;
    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v25 = 0xE300000000000000;
        v26 = 5526864;
      }

      else
      {
        v25 = 0xE600000000000000;
        v26 = 0x4554454C4544;
      }
    }

    else if (v23)
    {
      v25 = 0xE400000000000000;
      v26 = 1414745936;
    }

    else
    {
      v25 = 0xE300000000000000;
      v26 = 5522759;
    }

    v28 = sub_2149079F4(v26, v25, aBlock);

    *(v22 + 4) = v28;
    *(v22 + 12) = 2080;
    v29 = [v19 urlString];
    v30 = sub_21498F870();
    v32 = v31;

    v33 = sub_2149079F4(v30, v32, aBlock);

    *(v22 + 14) = v33;
    _os_log_impl(&dword_21488E000, v20, v21, "%s %s", v22, 0x16u);
    v34 = v59;
    swift_arrayDestroy();
    MEMORY[0x216059AC0](v34, -1, -1);
    MEMORY[0x216059AC0](v22, -1, -1);

    v6 = v24;
    v27 = v24[1];
    v5 = v61;
    v27(v12, v61);
    v10 = v60;
  }

  else
  {

    v27 = v6[1];
    v27(v12, v5);
  }

  (v62)(v10, v63, v5);
  v35 = v19;
  v36 = sub_21498E670();
  v37 = v10;
  v38 = sub_21498FBA0();

  if (os_log_type_enabled(v36, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    aBlock[0] = v40;
    *v39 = 136315138;
    v62 = v6;
    v41 = *(v35 + qword_281190E40);
    v42 = *(v35 + qword_281190E40 + 8);

    v43 = sub_2149079F4(v41, v42, aBlock);

    *(v39 + 4) = v43;
    _os_log_impl(&dword_21488E000, v36, v38, "X-Apple-Request-UUID: %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v40);
    MEMORY[0x216059AC0](v40, -1, -1);
    MEMORY[0x216059AC0](v39, -1, -1);
  }

  v27(v37, v5);
  v63 = v35;
  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v46 = v70;
  v45 = v71;
  v47 = v65;
  v48 = v68;
  (*(v70 + 16))(v65, v68, v71);
  v49 = (*(v46 + 80) + 24) & ~*(v46 + 80);
  v50 = v49 + v64;
  v51 = (((v49 + v64) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  *(v52 + 16) = v44;
  (*(v46 + 32))(v52 + v49, v47, v45);
  *(v52 + v50) = v66 & 1;
  v53 = v52 + (v50 & 0xFFFFFFFFFFFFFFF8);
  v54 = v72;
  *(v53 + 8) = v67;
  *(v53 + 16) = v54;
  *(v52 + v51) = v69;
  aBlock[4] = sub_214925CB4;
  aBlock[5] = v52;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_214923150;
  aBlock[3] = &block_descriptor_3;
  v55 = _Block_copy(aBlock);

  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C340, &qword_21499A678);
  v73.receiver = v63;
  v73.super_class = v56;
  objc_msgSendSuper2(&v73, sel_performRequestWithHandler_, v55);
  _Block_release(v55);
  return (*(v46 + 8))(v48, v45);
}

uint64_t sub_21491A4D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v69 = a4;
  v66 = a3;
  v72 = a2;
  v67 = a1;
  v5 = sub_21498E690();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v58 - v11;
  v13 = sub_21498E320();
  v70 = *(v13 - 8);
  v71 = v13;
  v14 = *(v70 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v64 = v16;
  v65 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v68 = &v58 - v17;
  sub_21498E310();
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v5, qword_281194E18);
  v62 = v6[2];
  v63 = v18;
  v62(v12);
  v19 = v4;
  v20 = sub_21498E670();
  v21 = sub_21498FBA0();

  if (os_log_type_enabled(v20, v21))
  {
    v60 = v10;
    v22 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    aBlock[0] = v59;
    *v22 = 136315394;
    v23 = (*((*MEMORY[0x277D85000] & *v19) + 0xF8))();
    v61 = v5;
    v24 = v6;
    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v25 = 0xE300000000000000;
        v26 = 5526864;
      }

      else
      {
        v25 = 0xE600000000000000;
        v26 = 0x4554454C4544;
      }
    }

    else if (v23)
    {
      v25 = 0xE400000000000000;
      v26 = 1414745936;
    }

    else
    {
      v25 = 0xE300000000000000;
      v26 = 5522759;
    }

    v28 = sub_2149079F4(v26, v25, aBlock);

    *(v22 + 4) = v28;
    *(v22 + 12) = 2080;
    v29 = [v19 urlString];
    v30 = sub_21498F870();
    v32 = v31;

    v33 = sub_2149079F4(v30, v32, aBlock);

    *(v22 + 14) = v33;
    _os_log_impl(&dword_21488E000, v20, v21, "%s %s", v22, 0x16u);
    v34 = v59;
    swift_arrayDestroy();
    MEMORY[0x216059AC0](v34, -1, -1);
    MEMORY[0x216059AC0](v22, -1, -1);

    v6 = v24;
    v27 = v24[1];
    v5 = v61;
    v27(v12, v61);
    v10 = v60;
  }

  else
  {

    v27 = v6[1];
    v27(v12, v5);
  }

  (v62)(v10, v63, v5);
  v35 = v19;
  v36 = sub_21498E670();
  v37 = v10;
  v38 = sub_21498FBA0();

  if (os_log_type_enabled(v36, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    aBlock[0] = v40;
    *v39 = 136315138;
    v62 = v6;
    v41 = *(v35 + qword_281190E40);
    v42 = *(v35 + qword_281190E40 + 8);

    v43 = sub_2149079F4(v41, v42, aBlock);

    *(v39 + 4) = v43;
    _os_log_impl(&dword_21488E000, v36, v38, "X-Apple-Request-UUID: %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v40);
    MEMORY[0x216059AC0](v40, -1, -1);
    MEMORY[0x216059AC0](v39, -1, -1);
  }

  v27(v37, v5);
  v63 = v35;
  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v46 = v70;
  v45 = v71;
  v47 = v65;
  v48 = v68;
  (*(v70 + 16))(v65, v68, v71);
  v49 = (*(v46 + 80) + 24) & ~*(v46 + 80);
  v50 = v49 + v64;
  v51 = (((v49 + v64) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  *(v52 + 16) = v44;
  (*(v46 + 32))(v52 + v49, v47, v45);
  *(v52 + v50) = v66 & 1;
  v53 = v52 + (v50 & 0xFFFFFFFFFFFFFFF8);
  v54 = v72;
  *(v53 + 8) = v67;
  *(v53 + 16) = v54;
  *(v52 + v51) = v69;
  aBlock[4] = sub_214926314;
  aBlock[5] = v52;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_214923150;
  aBlock[3] = &block_descriptor_120;
  v55 = _Block_copy(aBlock);

  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C390, &qword_21499A6D0);
  v73.receiver = v63;
  v73.super_class = v56;
  objc_msgSendSuper2(&v73, sel_performRequestWithHandler_, v55);
  _Block_release(v55);
  return (*(v46 + 8))(v48, v45);
}

uint64_t sub_21491ABB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v69 = a4;
  v66 = a3;
  v72 = a2;
  v67 = a1;
  v5 = sub_21498E690();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v58 - v11;
  v13 = sub_21498E320();
  v70 = *(v13 - 8);
  v71 = v13;
  v14 = *(v70 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v64 = v16;
  v65 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v68 = &v58 - v17;
  sub_21498E310();
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v5, qword_281194E18);
  v62 = v6[2];
  v63 = v18;
  v62(v12);
  v19 = v4;
  v20 = sub_21498E670();
  v21 = sub_21498FBA0();

  if (os_log_type_enabled(v20, v21))
  {
    v60 = v10;
    v22 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    aBlock[0] = v59;
    *v22 = 136315394;
    v23 = (*((*MEMORY[0x277D85000] & *v19) + 0xF8))();
    v61 = v5;
    v24 = v6;
    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v25 = 0xE300000000000000;
        v26 = 5526864;
      }

      else
      {
        v25 = 0xE600000000000000;
        v26 = 0x4554454C4544;
      }
    }

    else if (v23)
    {
      v25 = 0xE400000000000000;
      v26 = 1414745936;
    }

    else
    {
      v25 = 0xE300000000000000;
      v26 = 5522759;
    }

    v28 = sub_2149079F4(v26, v25, aBlock);

    *(v22 + 4) = v28;
    *(v22 + 12) = 2080;
    v29 = [v19 urlString];
    v30 = sub_21498F870();
    v32 = v31;

    v33 = sub_2149079F4(v30, v32, aBlock);

    *(v22 + 14) = v33;
    _os_log_impl(&dword_21488E000, v20, v21, "%s %s", v22, 0x16u);
    v34 = v59;
    swift_arrayDestroy();
    MEMORY[0x216059AC0](v34, -1, -1);
    MEMORY[0x216059AC0](v22, -1, -1);

    v6 = v24;
    v27 = v24[1];
    v5 = v61;
    v27(v12, v61);
    v10 = v60;
  }

  else
  {

    v27 = v6[1];
    v27(v12, v5);
  }

  (v62)(v10, v63, v5);
  v35 = v19;
  v36 = sub_21498E670();
  v37 = v10;
  v38 = sub_21498FBA0();

  if (os_log_type_enabled(v36, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    aBlock[0] = v40;
    *v39 = 136315138;
    v62 = v6;
    v41 = *(v35 + qword_281190E40);
    v42 = *(v35 + qword_281190E40 + 8);

    v43 = sub_2149079F4(v41, v42, aBlock);

    *(v39 + 4) = v43;
    _os_log_impl(&dword_21488E000, v36, v38, "X-Apple-Request-UUID: %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v40);
    MEMORY[0x216059AC0](v40, -1, -1);
    MEMORY[0x216059AC0](v39, -1, -1);
  }

  v27(v37, v5);
  v63 = v35;
  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v46 = v70;
  v45 = v71;
  v47 = v65;
  v48 = v68;
  (*(v70 + 16))(v65, v68, v71);
  v49 = (*(v46 + 80) + 24) & ~*(v46 + 80);
  v50 = v49 + v64;
  v51 = (((v49 + v64) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  *(v52 + 16) = v44;
  (*(v46 + 32))(v52 + v49, v47, v45);
  *(v52 + v50) = v66 & 1;
  v53 = v52 + (v50 & 0xFFFFFFFFFFFFFFF8);
  v54 = v72;
  *(v53 + 8) = v67;
  *(v53 + 16) = v54;
  *(v52 + v51) = v69;
  aBlock[4] = sub_214926164;
  aBlock[5] = v52;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_214923150;
  aBlock[3] = &block_descriptor_48;
  v55 = _Block_copy(aBlock);

  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C370, &qword_21499A6B0);
  v73.receiver = v63;
  v73.super_class = v56;
  objc_msgSendSuper2(&v73, sel_performRequestWithHandler_, v55);
  _Block_release(v55);
  return (*(v46 + 8))(v48, v45);
}

uint64_t sub_21491B290(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v69 = a4;
  v66 = a3;
  v72 = a2;
  v67 = a1;
  v5 = sub_21498E690();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v58 - v11;
  v13 = sub_21498E320();
  v70 = *(v13 - 8);
  v71 = v13;
  v14 = *(v70 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v64 = v16;
  v65 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v68 = &v58 - v17;
  sub_21498E310();
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v5, qword_281194E18);
  v62 = v6[2];
  v63 = v18;
  v62(v12);
  v19 = v4;
  v20 = sub_21498E670();
  v21 = sub_21498FBA0();

  if (os_log_type_enabled(v20, v21))
  {
    v60 = v10;
    v22 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    aBlock[0] = v59;
    *v22 = 136315394;
    v23 = (*((*MEMORY[0x277D85000] & *v19) + 0xF8))();
    v61 = v5;
    v24 = v6;
    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v25 = 0xE300000000000000;
        v26 = 5526864;
      }

      else
      {
        v25 = 0xE600000000000000;
        v26 = 0x4554454C4544;
      }
    }

    else if (v23)
    {
      v25 = 0xE400000000000000;
      v26 = 1414745936;
    }

    else
    {
      v25 = 0xE300000000000000;
      v26 = 5522759;
    }

    v28 = sub_2149079F4(v26, v25, aBlock);

    *(v22 + 4) = v28;
    *(v22 + 12) = 2080;
    v29 = [v19 urlString];
    v30 = sub_21498F870();
    v32 = v31;

    v33 = sub_2149079F4(v30, v32, aBlock);

    *(v22 + 14) = v33;
    _os_log_impl(&dword_21488E000, v20, v21, "%s %s", v22, 0x16u);
    v34 = v59;
    swift_arrayDestroy();
    MEMORY[0x216059AC0](v34, -1, -1);
    MEMORY[0x216059AC0](v22, -1, -1);

    v6 = v24;
    v27 = v24[1];
    v5 = v61;
    v27(v12, v61);
    v10 = v60;
  }

  else
  {

    v27 = v6[1];
    v27(v12, v5);
  }

  (v62)(v10, v63, v5);
  v35 = v19;
  v36 = sub_21498E670();
  v37 = v10;
  v38 = sub_21498FBA0();

  if (os_log_type_enabled(v36, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    aBlock[0] = v40;
    *v39 = 136315138;
    v62 = v6;
    v41 = *(v35 + qword_281190E40);
    v42 = *(v35 + qword_281190E40 + 8);

    v43 = sub_2149079F4(v41, v42, aBlock);

    *(v39 + 4) = v43;
    _os_log_impl(&dword_21488E000, v36, v38, "X-Apple-Request-UUID: %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v40);
    MEMORY[0x216059AC0](v40, -1, -1);
    MEMORY[0x216059AC0](v39, -1, -1);
  }

  v27(v37, v5);
  v63 = v35;
  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v46 = v70;
  v45 = v71;
  v47 = v65;
  v48 = v68;
  (*(v70 + 16))(v65, v68, v71);
  v49 = (*(v46 + 80) + 24) & ~*(v46 + 80);
  v50 = v49 + v64;
  v51 = (((v49 + v64) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  *(v52 + 16) = v44;
  (*(v46 + 32))(v52 + v49, v47, v45);
  *(v52 + v50) = v66 & 1;
  v53 = v52 + (v50 & 0xFFFFFFFFFFFFFFF8);
  v54 = v72;
  *(v53 + 8) = v67;
  *(v53 + 16) = v54;
  *(v52 + v51) = v69;
  aBlock[4] = sub_2149265BC;
  aBlock[5] = v52;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_214923150;
  aBlock[3] = &block_descriptor_312;
  v55 = _Block_copy(aBlock);

  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C3D8, &qword_21499B5B0);
  v73.receiver = v63;
  v73.super_class = v56;
  objc_msgSendSuper2(&v73, sel_performRequestWithHandler_, v55);
  _Block_release(v55);
  return (*(v46 + 8))(v48, v45);
}

uint64_t sub_21491B970(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v69 = a4;
  v66 = a3;
  v72 = a2;
  v67 = a1;
  v5 = sub_21498E690();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v58 - v11;
  v13 = sub_21498E320();
  v70 = *(v13 - 8);
  v71 = v13;
  v14 = *(v70 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v64 = v16;
  v65 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v68 = &v58 - v17;
  sub_21498E310();
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v5, qword_281194E18);
  v62 = v6[2];
  v63 = v18;
  v62(v12);
  v19 = v4;
  v20 = sub_21498E670();
  v21 = sub_21498FBA0();

  if (os_log_type_enabled(v20, v21))
  {
    v60 = v10;
    v22 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    aBlock[0] = v59;
    *v22 = 136315394;
    v23 = (*((*MEMORY[0x277D85000] & *v19) + 0xF8))();
    v61 = v5;
    v24 = v6;
    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v25 = 0xE300000000000000;
        v26 = 5526864;
      }

      else
      {
        v25 = 0xE600000000000000;
        v26 = 0x4554454C4544;
      }
    }

    else if (v23)
    {
      v25 = 0xE400000000000000;
      v26 = 1414745936;
    }

    else
    {
      v25 = 0xE300000000000000;
      v26 = 5522759;
    }

    v28 = sub_2149079F4(v26, v25, aBlock);

    *(v22 + 4) = v28;
    *(v22 + 12) = 2080;
    v29 = [v19 urlString];
    v30 = sub_21498F870();
    v32 = v31;

    v33 = sub_2149079F4(v30, v32, aBlock);

    *(v22 + 14) = v33;
    _os_log_impl(&dword_21488E000, v20, v21, "%s %s", v22, 0x16u);
    v34 = v59;
    swift_arrayDestroy();
    MEMORY[0x216059AC0](v34, -1, -1);
    MEMORY[0x216059AC0](v22, -1, -1);

    v6 = v24;
    v27 = v24[1];
    v5 = v61;
    v27(v12, v61);
    v10 = v60;
  }

  else
  {

    v27 = v6[1];
    v27(v12, v5);
  }

  (v62)(v10, v63, v5);
  v35 = v19;
  v36 = sub_21498E670();
  v37 = v10;
  v38 = sub_21498FBA0();

  if (os_log_type_enabled(v36, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    aBlock[0] = v40;
    *v39 = 136315138;
    v62 = v6;
    v41 = *(v35 + qword_281190E40);
    v42 = *(v35 + qword_281190E40 + 8);

    v43 = sub_2149079F4(v41, v42, aBlock);

    *(v39 + 4) = v43;
    _os_log_impl(&dword_21488E000, v36, v38, "X-Apple-Request-UUID: %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v40);
    MEMORY[0x216059AC0](v40, -1, -1);
    MEMORY[0x216059AC0](v39, -1, -1);
  }

  v27(v37, v5);
  v63 = v35;
  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v46 = v70;
  v45 = v71;
  v47 = v65;
  v48 = v68;
  (*(v70 + 16))(v65, v68, v71);
  v49 = (*(v46 + 80) + 24) & ~*(v46 + 80);
  v50 = v49 + v64;
  v51 = (((v49 + v64) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  *(v52 + 16) = v44;
  (*(v46 + 32))(v52 + v49, v47, v45);
  *(v52 + v50) = v66 & 1;
  v53 = v52 + (v50 & 0xFFFFFFFFFFFFFFF8);
  v54 = v72;
  *(v53 + 8) = v67;
  *(v53 + 16) = v54;
  *(v52 + v51) = v69;
  aBlock[4] = sub_214926454;
  aBlock[5] = v52;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_214923150;
  aBlock[3] = &block_descriptor_192;
  v55 = _Block_copy(aBlock);

  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C3B0, &qword_21499A6F0);
  v73.receiver = v63;
  v73.super_class = v56;
  objc_msgSendSuper2(&v73, sel_performRequestWithHandler_, v55);
  _Block_release(v55);
  return (*(v46 + 8))(v48, v45);
}

uint64_t sub_21491C050(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v69 = a4;
  v66 = a3;
  v72 = a2;
  v67 = a1;
  v5 = sub_21498E690();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v58 - v11;
  v13 = sub_21498E320();
  v70 = *(v13 - 8);
  v71 = v13;
  v14 = *(v70 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v64 = v16;
  v65 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v68 = &v58 - v17;
  sub_21498E310();
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v5, qword_281194E18);
  v62 = v6[2];
  v63 = v18;
  v62(v12);
  v19 = v4;
  v20 = sub_21498E670();
  v21 = sub_21498FBA0();

  if (os_log_type_enabled(v20, v21))
  {
    v60 = v10;
    v22 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    aBlock[0] = v59;
    *v22 = 136315394;
    v23 = (*((*MEMORY[0x277D85000] & *v19) + 0xF8))();
    v61 = v5;
    v24 = v6;
    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v25 = 0xE300000000000000;
        v26 = 5526864;
      }

      else
      {
        v25 = 0xE600000000000000;
        v26 = 0x4554454C4544;
      }
    }

    else if (v23)
    {
      v25 = 0xE400000000000000;
      v26 = 1414745936;
    }

    else
    {
      v25 = 0xE300000000000000;
      v26 = 5522759;
    }

    v28 = sub_2149079F4(v26, v25, aBlock);

    *(v22 + 4) = v28;
    *(v22 + 12) = 2080;
    v29 = [v19 urlString];
    v30 = sub_21498F870();
    v32 = v31;

    v33 = sub_2149079F4(v30, v32, aBlock);

    *(v22 + 14) = v33;
    _os_log_impl(&dword_21488E000, v20, v21, "%s %s", v22, 0x16u);
    v34 = v59;
    swift_arrayDestroy();
    MEMORY[0x216059AC0](v34, -1, -1);
    MEMORY[0x216059AC0](v22, -1, -1);

    v6 = v24;
    v27 = v24[1];
    v5 = v61;
    v27(v12, v61);
    v10 = v60;
  }

  else
  {

    v27 = v6[1];
    v27(v12, v5);
  }

  (v62)(v10, v63, v5);
  v35 = v19;
  v36 = sub_21498E670();
  v37 = v10;
  v38 = sub_21498FBA0();

  if (os_log_type_enabled(v36, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    aBlock[0] = v40;
    *v39 = 136315138;
    v62 = v6;
    v41 = *(v35 + qword_281190E40);
    v42 = *(v35 + qword_281190E40 + 8);

    v43 = sub_2149079F4(v41, v42, aBlock);

    *(v39 + 4) = v43;
    _os_log_impl(&dword_21488E000, v36, v38, "X-Apple-Request-UUID: %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v40);
    MEMORY[0x216059AC0](v40, -1, -1);
    MEMORY[0x216059AC0](v39, -1, -1);
  }

  v27(v37, v5);
  v63 = v35;
  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v46 = v70;
  v45 = v71;
  v47 = v65;
  v48 = v68;
  (*(v70 + 16))(v65, v68, v71);
  v49 = (*(v46 + 80) + 24) & ~*(v46 + 80);
  v50 = v49 + v64;
  v51 = (((v49 + v64) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  *(v52 + 16) = v44;
  (*(v46 + 32))(v52 + v49, v47, v45);
  *(v52 + v50) = v66 & 1;
  v53 = v52 + (v50 & 0xFFFFFFFFFFFFFFF8);
  v54 = v72;
  *(v53 + 8) = v67;
  *(v53 + 16) = v54;
  *(v52 + v51) = v69;
  aBlock[4] = sub_2149266EC;
  aBlock[5] = v52;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_214923150;
  aBlock[3] = &block_descriptor_336;
  v55 = _Block_copy(aBlock);

  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C3E0, &qword_21499A720);
  v73.receiver = v63;
  v73.super_class = v56;
  objc_msgSendSuper2(&v73, sel_performRequestWithHandler_, v55);
  _Block_release(v55);
  return (*(v46 + 8))(v48, v45);
}

uint64_t sub_21491C730(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v69 = a4;
  v66 = a3;
  v72 = a2;
  v67 = a1;
  v5 = sub_21498E690();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v58 - v11;
  v13 = sub_21498E320();
  v70 = *(v13 - 8);
  v71 = v13;
  v14 = *(v70 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v64 = v16;
  v65 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v68 = &v58 - v17;
  sub_21498E310();
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v5, qword_281194E18);
  v62 = v6[2];
  v63 = v18;
  v62(v12);
  v19 = v4;
  v20 = sub_21498E670();
  v21 = sub_21498FBA0();

  if (os_log_type_enabled(v20, v21))
  {
    v60 = v10;
    v22 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    aBlock[0] = v59;
    *v22 = 136315394;
    v23 = (*((*MEMORY[0x277D85000] & *v19) + 0xF8))();
    v61 = v5;
    v24 = v6;
    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v25 = 0xE300000000000000;
        v26 = 5526864;
      }

      else
      {
        v25 = 0xE600000000000000;
        v26 = 0x4554454C4544;
      }
    }

    else if (v23)
    {
      v25 = 0xE400000000000000;
      v26 = 1414745936;
    }

    else
    {
      v25 = 0xE300000000000000;
      v26 = 5522759;
    }

    v28 = sub_2149079F4(v26, v25, aBlock);

    *(v22 + 4) = v28;
    *(v22 + 12) = 2080;
    v29 = [v19 urlString];
    v30 = sub_21498F870();
    v32 = v31;

    v33 = sub_2149079F4(v30, v32, aBlock);

    *(v22 + 14) = v33;
    _os_log_impl(&dword_21488E000, v20, v21, "%s %s", v22, 0x16u);
    v34 = v59;
    swift_arrayDestroy();
    MEMORY[0x216059AC0](v34, -1, -1);
    MEMORY[0x216059AC0](v22, -1, -1);

    v6 = v24;
    v27 = v24[1];
    v5 = v61;
    v27(v12, v61);
    v10 = v60;
  }

  else
  {

    v27 = v6[1];
    v27(v12, v5);
  }

  (v62)(v10, v63, v5);
  v35 = v19;
  v36 = sub_21498E670();
  v37 = v10;
  v38 = sub_21498FBA0();

  if (os_log_type_enabled(v36, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    aBlock[0] = v40;
    *v39 = 136315138;
    v62 = v6;
    v41 = *(v35 + qword_281190E40);
    v42 = *(v35 + qword_281190E40 + 8);

    v43 = sub_2149079F4(v41, v42, aBlock);

    *(v39 + 4) = v43;
    _os_log_impl(&dword_21488E000, v36, v38, "X-Apple-Request-UUID: %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v40);
    MEMORY[0x216059AC0](v40, -1, -1);
    MEMORY[0x216059AC0](v39, -1, -1);
  }

  v27(v37, v5);
  v63 = v35;
  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v46 = v70;
  v45 = v71;
  v47 = v65;
  v48 = v68;
  (*(v70 + 16))(v65, v68, v71);
  v49 = (*(v46 + 80) + 24) & ~*(v46 + 80);
  v50 = v49 + v64;
  v51 = (((v49 + v64) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  *(v52 + 16) = v44;
  (*(v46 + 32))(v52 + v49, v47, v45);
  *(v52 + v50) = v66 & 1;
  v53 = v52 + (v50 & 0xFFFFFFFFFFFFFFF8);
  v54 = v72;
  *(v53 + 8) = v67;
  *(v53 + 16) = v54;
  *(v52 + v51) = v69;
  aBlock[4] = sub_2149263C4;
  aBlock[5] = v52;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_214923150;
  aBlock[3] = &block_descriptor_144;
  v55 = _Block_copy(aBlock);

  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C3A0, &unk_21499A6E0);
  v73.receiver = v63;
  v73.super_class = v56;
  objc_msgSendSuper2(&v73, sel_performRequestWithHandler_, v55);
  _Block_release(v55);
  return (*(v46 + 8))(v48, v45);
}

uint64_t sub_21491CE10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v69 = a4;
  v66 = a3;
  v72 = a2;
  v67 = a1;
  v5 = sub_21498E690();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v58 - v11;
  v13 = sub_21498E320();
  v70 = *(v13 - 8);
  v71 = v13;
  v14 = *(v70 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v64 = v16;
  v65 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v68 = &v58 - v17;
  sub_21498E310();
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v5, qword_281194E18);
  v62 = v6[2];
  v63 = v18;
  v62(v12);
  v19 = v4;
  v20 = sub_21498E670();
  v21 = sub_21498FBA0();

  if (os_log_type_enabled(v20, v21))
  {
    v60 = v10;
    v22 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    aBlock[0] = v59;
    *v22 = 136315394;
    v23 = (*((*MEMORY[0x277D85000] & *v19) + 0xF8))();
    v61 = v5;
    v24 = v6;
    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v25 = 0xE300000000000000;
        v26 = 5526864;
      }

      else
      {
        v25 = 0xE600000000000000;
        v26 = 0x4554454C4544;
      }
    }

    else if (v23)
    {
      v25 = 0xE400000000000000;
      v26 = 1414745936;
    }

    else
    {
      v25 = 0xE300000000000000;
      v26 = 5522759;
    }

    v28 = sub_2149079F4(v26, v25, aBlock);

    *(v22 + 4) = v28;
    *(v22 + 12) = 2080;
    v29 = [v19 urlString];
    v30 = sub_21498F870();
    v32 = v31;

    v33 = sub_2149079F4(v30, v32, aBlock);

    *(v22 + 14) = v33;
    _os_log_impl(&dword_21488E000, v20, v21, "%s %s", v22, 0x16u);
    v34 = v59;
    swift_arrayDestroy();
    MEMORY[0x216059AC0](v34, -1, -1);
    MEMORY[0x216059AC0](v22, -1, -1);

    v6 = v24;
    v27 = v24[1];
    v5 = v61;
    v27(v12, v61);
    v10 = v60;
  }

  else
  {

    v27 = v6[1];
    v27(v12, v5);
  }

  (v62)(v10, v63, v5);
  v35 = v19;
  v36 = sub_21498E670();
  v37 = v10;
  v38 = sub_21498FBA0();

  if (os_log_type_enabled(v36, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    aBlock[0] = v40;
    *v39 = 136315138;
    v62 = v6;
    v41 = *(v35 + qword_281190E40);
    v42 = *(v35 + qword_281190E40 + 8);

    v43 = sub_2149079F4(v41, v42, aBlock);

    *(v39 + 4) = v43;
    _os_log_impl(&dword_21488E000, v36, v38, "X-Apple-Request-UUID: %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v40);
    MEMORY[0x216059AC0](v40, -1, -1);
    MEMORY[0x216059AC0](v39, -1, -1);
  }

  v27(v37, v5);
  v63 = v35;
  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v46 = v70;
  v45 = v71;
  v47 = v65;
  v48 = v68;
  (*(v70 + 16))(v65, v68, v71);
  v49 = (*(v46 + 80) + 24) & ~*(v46 + 80);
  v50 = v49 + v64;
  v51 = (((v49 + v64) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  *(v52 + 16) = v44;
  (*(v46 + 32))(v52 + v49, v47, v45);
  *(v52 + v50) = v66 & 1;
  v53 = v52 + (v50 & 0xFFFFFFFFFFFFFFF8);
  v54 = v72;
  *(v53 + 8) = v67;
  *(v53 + 16) = v54;
  *(v52 + v51) = v69;
  aBlock[4] = sub_21492640C;
  aBlock[5] = v52;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_214923150;
  aBlock[3] = &block_descriptor_168;
  v55 = _Block_copy(aBlock);

  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C3A8, &qword_21499B4A0);
  v73.receiver = v63;
  v73.super_class = v56;
  objc_msgSendSuper2(&v73, sel_performRequestWithHandler_, v55);
  _Block_release(v55);
  return (*(v46 + 8))(v48, v45);
}

uint64_t sub_21491D4F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v69 = a4;
  v66 = a3;
  v72 = a2;
  v67 = a1;
  v5 = sub_21498E690();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v58 - v11;
  v13 = sub_21498E320();
  v70 = *(v13 - 8);
  v71 = v13;
  v14 = *(v70 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v64 = v16;
  v65 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v68 = &v58 - v17;
  sub_21498E310();
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v5, qword_281194E18);
  v62 = v6[2];
  v63 = v18;
  v62(v12);
  v19 = v4;
  v20 = sub_21498E670();
  v21 = sub_21498FBA0();

  if (os_log_type_enabled(v20, v21))
  {
    v60 = v10;
    v22 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    aBlock[0] = v59;
    *v22 = 136315394;
    v23 = (*((*MEMORY[0x277D85000] & *v19) + 0xF8))();
    v61 = v5;
    v24 = v6;
    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v25 = 0xE300000000000000;
        v26 = 5526864;
      }

      else
      {
        v25 = 0xE600000000000000;
        v26 = 0x4554454C4544;
      }
    }

    else if (v23)
    {
      v25 = 0xE400000000000000;
      v26 = 1414745936;
    }

    else
    {
      v25 = 0xE300000000000000;
      v26 = 5522759;
    }

    v28 = sub_2149079F4(v26, v25, aBlock);

    *(v22 + 4) = v28;
    *(v22 + 12) = 2080;
    v29 = [v19 urlString];
    v30 = sub_21498F870();
    v32 = v31;

    v33 = sub_2149079F4(v30, v32, aBlock);

    *(v22 + 14) = v33;
    _os_log_impl(&dword_21488E000, v20, v21, "%s %s", v22, 0x16u);
    v34 = v59;
    swift_arrayDestroy();
    MEMORY[0x216059AC0](v34, -1, -1);
    MEMORY[0x216059AC0](v22, -1, -1);

    v6 = v24;
    v27 = v24[1];
    v5 = v61;
    v27(v12, v61);
    v10 = v60;
  }

  else
  {

    v27 = v6[1];
    v27(v12, v5);
  }

  (v62)(v10, v63, v5);
  v35 = v19;
  v36 = sub_21498E670();
  v37 = v10;
  v38 = sub_21498FBA0();

  if (os_log_type_enabled(v36, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    aBlock[0] = v40;
    *v39 = 136315138;
    v62 = v6;
    v41 = *(v35 + qword_281190E40);
    v42 = *(v35 + qword_281190E40 + 8);

    v43 = sub_2149079F4(v41, v42, aBlock);

    *(v39 + 4) = v43;
    _os_log_impl(&dword_21488E000, v36, v38, "X-Apple-Request-UUID: %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v40);
    MEMORY[0x216059AC0](v40, -1, -1);
    MEMORY[0x216059AC0](v39, -1, -1);
  }

  v27(v37, v5);
  v63 = v35;
  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v46 = v70;
  v45 = v71;
  v47 = v65;
  v48 = v68;
  (*(v70 + 16))(v65, v68, v71);
  v49 = (*(v46 + 80) + 24) & ~*(v46 + 80);
  v50 = v49 + v64;
  v51 = (((v49 + v64) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  *(v52 + 16) = v44;
  (*(v46 + 32))(v52 + v49, v47, v45);
  *(v52 + v50) = v66 & 1;
  v53 = v52 + (v50 & 0xFFFFFFFFFFFFFFF8);
  v54 = v72;
  *(v53 + 8) = v67;
  *(v53 + 16) = v54;
  *(v52 + v51) = v69;
  aBlock[4] = sub_214926574;
  aBlock[5] = v52;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_214923150;
  aBlock[3] = &block_descriptor_288;
  v55 = _Block_copy(aBlock);

  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C3D0, &unk_21499A710);
  v73.receiver = v63;
  v73.super_class = v56;
  objc_msgSendSuper2(&v73, sel_performRequestWithHandler_, v55);
  _Block_release(v55);
  return (*(v46 + 8))(v48, v45);
}

uint64_t sub_21491DBD0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v69 = a4;
  v66 = a3;
  v72 = a2;
  v67 = a1;
  v5 = sub_21498E690();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v58 - v11;
  v13 = sub_21498E320();
  v70 = *(v13 - 8);
  v71 = v13;
  v14 = *(v70 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v64 = v16;
  v65 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v68 = &v58 - v17;
  sub_21498E310();
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v5, qword_281194E18);
  v62 = v6[2];
  v63 = v18;
  v62(v12);
  v19 = v4;
  v20 = sub_21498E670();
  v21 = sub_21498FBA0();

  if (os_log_type_enabled(v20, v21))
  {
    v60 = v10;
    v22 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    aBlock[0] = v59;
    *v22 = 136315394;
    v23 = (*((*MEMORY[0x277D85000] & *v19) + 0xF8))();
    v61 = v5;
    v24 = v6;
    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v25 = 0xE300000000000000;
        v26 = 5526864;
      }

      else
      {
        v25 = 0xE600000000000000;
        v26 = 0x4554454C4544;
      }
    }

    else if (v23)
    {
      v25 = 0xE400000000000000;
      v26 = 1414745936;
    }

    else
    {
      v25 = 0xE300000000000000;
      v26 = 5522759;
    }

    v28 = sub_2149079F4(v26, v25, aBlock);

    *(v22 + 4) = v28;
    *(v22 + 12) = 2080;
    v29 = [v19 urlString];
    v30 = sub_21498F870();
    v32 = v31;

    v33 = sub_2149079F4(v30, v32, aBlock);

    *(v22 + 14) = v33;
    _os_log_impl(&dword_21488E000, v20, v21, "%s %s", v22, 0x16u);
    v34 = v59;
    swift_arrayDestroy();
    MEMORY[0x216059AC0](v34, -1, -1);
    MEMORY[0x216059AC0](v22, -1, -1);

    v6 = v24;
    v27 = v24[1];
    v5 = v61;
    v27(v12, v61);
    v10 = v60;
  }

  else
  {

    v27 = v6[1];
    v27(v12, v5);
  }

  (v62)(v10, v63, v5);
  v35 = v19;
  v36 = sub_21498E670();
  v37 = v10;
  v38 = sub_21498FBA0();

  if (os_log_type_enabled(v36, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    aBlock[0] = v40;
    *v39 = 136315138;
    v62 = v6;
    v41 = *(v35 + qword_281190E40);
    v42 = *(v35 + qword_281190E40 + 8);

    v43 = sub_2149079F4(v41, v42, aBlock);

    *(v39 + 4) = v43;
    _os_log_impl(&dword_21488E000, v36, v38, "X-Apple-Request-UUID: %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v40);
    MEMORY[0x216059AC0](v40, -1, -1);
    MEMORY[0x216059AC0](v39, -1, -1);
  }

  v27(v37, v5);
  v63 = v35;
  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v46 = v70;
  v45 = v71;
  v47 = v65;
  v48 = v68;
  (*(v70 + 16))(v65, v68, v71);
  v49 = (*(v46 + 80) + 24) & ~*(v46 + 80);
  v50 = v49 + v64;
  v51 = (((v49 + v64) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  *(v52 + 16) = v44;
  (*(v46 + 32))(v52 + v49, v47, v45);
  *(v52 + v50) = v66 & 1;
  v53 = v52 + (v50 & 0xFFFFFFFFFFFFFFF8);
  v54 = v72;
  *(v53 + 8) = v67;
  *(v53 + 16) = v54;
  *(v52 + v51) = v69;
  aBlock[4] = sub_214926284;
  aBlock[5] = v52;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_214923150;
  aBlock[3] = &block_descriptor_72;
  v55 = _Block_copy(aBlock);

  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C380, &unk_21499A6C0);
  v73.receiver = v63;
  v73.super_class = v56;
  objc_msgSendSuper2(&v73, sel_performRequestWithHandler_, v55);
  _Block_release(v55);
  return (*(v46 + 8))(v48, v45);
}

uint64_t sub_21491E2B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v69 = a4;
  v66 = a3;
  v72 = a2;
  v67 = a1;
  v5 = sub_21498E690();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v58 - v11;
  v13 = sub_21498E320();
  v70 = *(v13 - 8);
  v71 = v13;
  v14 = *(v70 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v64 = v16;
  v65 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v68 = &v58 - v17;
  sub_21498E310();
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v5, qword_281194E18);
  v62 = v6[2];
  v63 = v18;
  v62(v12);
  v19 = v4;
  v20 = sub_21498E670();
  v21 = sub_21498FBA0();

  if (os_log_type_enabled(v20, v21))
  {
    v60 = v10;
    v22 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    aBlock[0] = v59;
    *v22 = 136315394;
    v23 = (*((*MEMORY[0x277D85000] & *v19) + 0xF8))();
    v61 = v5;
    v24 = v6;
    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v25 = 0xE300000000000000;
        v26 = 5526864;
      }

      else
      {
        v25 = 0xE600000000000000;
        v26 = 0x4554454C4544;
      }
    }

    else if (v23)
    {
      v25 = 0xE400000000000000;
      v26 = 1414745936;
    }

    else
    {
      v25 = 0xE300000000000000;
      v26 = 5522759;
    }

    v28 = sub_2149079F4(v26, v25, aBlock);

    *(v22 + 4) = v28;
    *(v22 + 12) = 2080;
    v29 = [v19 urlString];
    v30 = sub_21498F870();
    v32 = v31;

    v33 = sub_2149079F4(v30, v32, aBlock);

    *(v22 + 14) = v33;
    _os_log_impl(&dword_21488E000, v20, v21, "%s %s", v22, 0x16u);
    v34 = v59;
    swift_arrayDestroy();
    MEMORY[0x216059AC0](v34, -1, -1);
    MEMORY[0x216059AC0](v22, -1, -1);

    v6 = v24;
    v27 = v24[1];
    v5 = v61;
    v27(v12, v61);
    v10 = v60;
  }

  else
  {

    v27 = v6[1];
    v27(v12, v5);
  }

  (v62)(v10, v63, v5);
  v35 = v19;
  v36 = sub_21498E670();
  v37 = v10;
  v38 = sub_21498FBA0();

  if (os_log_type_enabled(v36, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    aBlock[0] = v40;
    *v39 = 136315138;
    v62 = v6;
    v41 = *(v35 + qword_281190E40);
    v42 = *(v35 + qword_281190E40 + 8);

    v43 = sub_2149079F4(v41, v42, aBlock);

    *(v39 + 4) = v43;
    _os_log_impl(&dword_21488E000, v36, v38, "X-Apple-Request-UUID: %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v40);
    MEMORY[0x216059AC0](v40, -1, -1);
    MEMORY[0x216059AC0](v39, -1, -1);
  }

  v27(v37, v5);
  v63 = v35;
  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v46 = v70;
  v45 = v71;
  v47 = v65;
  v48 = v68;
  (*(v70 + 16))(v65, v68, v71);
  v49 = (*(v46 + 80) + 24) & ~*(v46 + 80);
  v50 = v49 + v64;
  v51 = (((v49 + v64) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  *(v52 + 16) = v44;
  (*(v46 + 32))(v52 + v49, v47, v45);
  *(v52 + v50) = v66 & 1;
  v53 = v52 + (v50 & 0xFFFFFFFFFFFFFFF8);
  v54 = v72;
  *(v53 + 8) = v67;
  *(v53 + 16) = v54;
  *(v52 + v51) = v69;
  aBlock[4] = sub_2149262CC;
  aBlock[5] = v52;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_214923150;
  aBlock[3] = &block_descriptor_96;
  v55 = _Block_copy(aBlock);

  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C388, &qword_21499B450);
  v73.receiver = v63;
  v73.super_class = v56;
  objc_msgSendSuper2(&v73, sel_performRequestWithHandler_, v55);
  _Block_release(v55);
  return (*(v46 + 8))(v48, v45);
}

uint64_t sub_21491E990(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v69 = a4;
  v66 = a3;
  v72 = a2;
  v67 = a1;
  v5 = sub_21498E690();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v58 - v11;
  v13 = sub_21498E320();
  v70 = *(v13 - 8);
  v71 = v13;
  v14 = *(v70 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v64 = v16;
  v65 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v68 = &v58 - v17;
  sub_21498E310();
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v5, qword_281194E18);
  v62 = v6[2];
  v63 = v18;
  v62(v12);
  v19 = v4;
  v20 = sub_21498E670();
  v21 = sub_21498FBA0();

  if (os_log_type_enabled(v20, v21))
  {
    v60 = v10;
    v22 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    aBlock[0] = v59;
    *v22 = 136315394;
    v23 = (*((*MEMORY[0x277D85000] & *v19) + 0xF8))();
    v61 = v5;
    v24 = v6;
    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v25 = 0xE300000000000000;
        v26 = 5526864;
      }

      else
      {
        v25 = 0xE600000000000000;
        v26 = 0x4554454C4544;
      }
    }

    else if (v23)
    {
      v25 = 0xE400000000000000;
      v26 = 1414745936;
    }

    else
    {
      v25 = 0xE300000000000000;
      v26 = 5522759;
    }

    v28 = sub_2149079F4(v26, v25, aBlock);

    *(v22 + 4) = v28;
    *(v22 + 12) = 2080;
    v29 = [v19 urlString];
    v30 = sub_21498F870();
    v32 = v31;

    v33 = sub_2149079F4(v30, v32, aBlock);

    *(v22 + 14) = v33;
    _os_log_impl(&dword_21488E000, v20, v21, "%s %s", v22, 0x16u);
    v34 = v59;
    swift_arrayDestroy();
    MEMORY[0x216059AC0](v34, -1, -1);
    MEMORY[0x216059AC0](v22, -1, -1);

    v6 = v24;
    v27 = v24[1];
    v5 = v61;
    v27(v12, v61);
    v10 = v60;
  }

  else
  {

    v27 = v6[1];
    v27(v12, v5);
  }

  (v62)(v10, v63, v5);
  v35 = v19;
  v36 = sub_21498E670();
  v37 = v10;
  v38 = sub_21498FBA0();

  if (os_log_type_enabled(v36, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    aBlock[0] = v40;
    *v39 = 136315138;
    v62 = v6;
    v41 = *(v35 + qword_281190E40);
    v42 = *(v35 + qword_281190E40 + 8);

    v43 = sub_2149079F4(v41, v42, aBlock);

    *(v39 + 4) = v43;
    _os_log_impl(&dword_21488E000, v36, v38, "X-Apple-Request-UUID: %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v40);
    MEMORY[0x216059AC0](v40, -1, -1);
    MEMORY[0x216059AC0](v39, -1, -1);
  }

  v27(v37, v5);
  v63 = v35;
  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v46 = v70;
  v45 = v71;
  v47 = v65;
  v48 = v68;
  (*(v70 + 16))(v65, v68, v71);
  v49 = (*(v46 + 80) + 24) & ~*(v46 + 80);
  v50 = v49 + v64;
  v51 = (((v49 + v64) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  *(v52 + 16) = v44;
  (*(v46 + 32))(v52 + v49, v47, v45);
  *(v52 + v50) = v66 & 1;
  v53 = v52 + (v50 & 0xFFFFFFFFFFFFFFF8);
  v54 = v72;
  *(v53 + 8) = v67;
  *(v53 + 16) = v54;
  *(v52 + v51) = v69;
  aBlock[4] = sub_21492652C;
  aBlock[5] = v52;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_214923150;
  aBlock[3] = &block_descriptor_264;
  v55 = _Block_copy(aBlock);

  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C3C8, &qword_21499B550);
  v73.receiver = v63;
  v73.super_class = v56;
  objc_msgSendSuper2(&v73, sel_performRequestWithHandler_, v55);
  _Block_release(v55);
  return (*(v46 + 8))(v48, v45);
}

uint64_t sub_21491F070(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v69 = a4;
  v66 = a3;
  v72 = a2;
  v67 = a1;
  v5 = sub_21498E690();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v58 - v11;
  v13 = sub_21498E320();
  v70 = *(v13 - 8);
  v71 = v13;
  v14 = *(v70 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v64 = v16;
  v65 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v68 = &v58 - v17;
  sub_21498E310();
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v5, qword_281194E18);
  v62 = v6[2];
  v63 = v18;
  v62(v12);
  v19 = v4;
  v20 = sub_21498E670();
  v21 = sub_21498FBA0();

  if (os_log_type_enabled(v20, v21))
  {
    v60 = v10;
    v22 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    aBlock[0] = v59;
    *v22 = 136315394;
    v23 = (*((*MEMORY[0x277D85000] & *v19) + 0xF8))();
    v61 = v5;
    v24 = v6;
    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v25 = 0xE300000000000000;
        v26 = 5526864;
      }

      else
      {
        v25 = 0xE600000000000000;
        v26 = 0x4554454C4544;
      }
    }

    else if (v23)
    {
      v25 = 0xE400000000000000;
      v26 = 1414745936;
    }

    else
    {
      v25 = 0xE300000000000000;
      v26 = 5522759;
    }

    v28 = sub_2149079F4(v26, v25, aBlock);

    *(v22 + 4) = v28;
    *(v22 + 12) = 2080;
    v29 = [v19 urlString];
    v30 = sub_21498F870();
    v32 = v31;

    v33 = sub_2149079F4(v30, v32, aBlock);

    *(v22 + 14) = v33;
    _os_log_impl(&dword_21488E000, v20, v21, "%s %s", v22, 0x16u);
    v34 = v59;
    swift_arrayDestroy();
    MEMORY[0x216059AC0](v34, -1, -1);
    MEMORY[0x216059AC0](v22, -1, -1);

    v6 = v24;
    v27 = v24[1];
    v5 = v61;
    v27(v12, v61);
    v10 = v60;
  }

  else
  {

    v27 = v6[1];
    v27(v12, v5);
  }

  (v62)(v10, v63, v5);
  v35 = v19;
  v36 = sub_21498E670();
  v37 = v10;
  v38 = sub_21498FBA0();

  if (os_log_type_enabled(v36, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    aBlock[0] = v40;
    *v39 = 136315138;
    v62 = v6;
    v41 = *(v35 + qword_281190E40);
    v42 = *(v35 + qword_281190E40 + 8);

    v43 = sub_2149079F4(v41, v42, aBlock);

    *(v39 + 4) = v43;
    _os_log_impl(&dword_21488E000, v36, v38, "X-Apple-Request-UUID: %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v40);
    MEMORY[0x216059AC0](v40, -1, -1);
    MEMORY[0x216059AC0](v39, -1, -1);
  }

  v27(v37, v5);
  v63 = v35;
  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v46 = v70;
  v45 = v71;
  v47 = v65;
  v48 = v68;
  (*(v70 + 16))(v65, v68, v71);
  v49 = (*(v46 + 80) + 24) & ~*(v46 + 80);
  v50 = v49 + v64;
  v51 = (((v49 + v64) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  *(v52 + 16) = v44;
  (*(v46 + 32))(v52 + v49, v47, v45);
  *(v52 + v50) = v66 & 1;
  v53 = v52 + (v50 & 0xFFFFFFFFFFFFFFF8);
  v54 = v72;
  *(v53 + 8) = v67;
  *(v53 + 16) = v54;
  *(v52 + v51) = v69;
  aBlock[4] = sub_2149264E4;
  aBlock[5] = v52;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_214923150;
  aBlock[3] = &block_descriptor_240;
  v55 = _Block_copy(aBlock);

  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C3C0, &unk_21499A700);
  v73.receiver = v63;
  v73.super_class = v56;
  objc_msgSendSuper2(&v73, sel_performRequestWithHandler_, v55);
  _Block_release(v55);
  return (*(v46 + 8))(v48, v45);
}

uint64_t sub_21491F750()
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

void sub_21491F79C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, void, uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (__OFADD__(a5, 1))
    {
      __break(1u);
    }

    else
    {
      v12 = Strong;
      a6(a2, a3, a4 & 1, a5 + 1);
    }
  }
}

uint64_t sub_21491F834(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B590, &unk_214995AD0);
    v2 = sub_21498FEC0();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_21489E614(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_2148A4198(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_2148A4198(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_2148A4198(v32, v33);
    v17 = *(v2 + 40);
    result = sub_21498FD90();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_2148A4198(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_21491FAFC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(void (*)(uint64_t, uint64_t, uint64_t), uint64_t, void, uint64_t))
{
  v47 = a6;
  v48 = a7;
  v49 = a5;
  v50 = a4;
  v13 = sub_21498E690();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v46 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v46 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v46 - v25;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v28 = Strong;
    if (a1)
    {
      if (a1 == 1)
      {
        if (qword_281190DA0 != -1)
        {
          swift_once();
        }

        v33 = __swift_project_value_buffer(v13, qword_281194E18);
        (*(v14 + 16))(v24, v33, v13);
        v34 = sub_21498E670();
        v35 = sub_21498FB90();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          *v36 = 0;
          _os_log_impl(&dword_21488E000, v34, v35, "auth token renew failed. User rejected.", v36, 2u);
          MEMORY[0x216059AC0](v36, -1, -1);
        }

        (*(v14 + 8))(v24, v13);
      }

      else if (a1 == 2)
      {
        if (qword_281190DA0 != -1)
        {
          swift_once();
        }

        v29 = __swift_project_value_buffer(v13, qword_281194E18);
        (*(v14 + 16))(v26, v29, v13);
        v30 = sub_21498E670();
        v31 = sub_21498FB90();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          *v32 = 0;
          _os_log_impl(&dword_21488E000, v30, v31, "auth token renew failed.", v32, 2u);
          MEMORY[0x216059AC0](v32, -1, -1);
        }

        (*(v14 + 8))(v26, v13);
      }

      else
      {
        if (qword_281190DA0 != -1)
        {
          swift_once();
        }

        v41 = __swift_project_value_buffer(v13, qword_281194E18);
        (*(v14 + 16))(v18, v41, v13);
        v42 = sub_21498E670();
        v43 = sub_21498FB90();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          *v44 = 0;
          _os_log_impl(&dword_21488E000, v42, v43, "auth token renew failed. @unknown result", v44, 2u);
          MEMORY[0x216059AC0](v44, -1, -1);
        }

        (*(v14 + 8))(v18, v13);
      }

      if (a2)
      {
        v45 = a2;
      }

      else
      {
        v45 = a8;
      }

      v50(v47, v48, v45);
    }

    else
    {
      if (qword_281190DA0 != -1)
      {
        swift_once();
      }

      v37 = __swift_project_value_buffer(v13, qword_281194E18);
      (*(v14 + 16))(v21, v37, v13);
      v38 = sub_21498E670();
      v39 = sub_21498FB90();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_21488E000, v38, v39, "auth token renewed. Retrying request with server.", v40, 2u);
        MEMORY[0x216059AC0](v40, -1, -1);
      }

      (*(v14 + 8))(v21, v13);
      a10(v50, v49, 0, a9);
    }
  }
}

void sub_214920010(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

void sub_214920088(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, int a6, void (*a7)(void, void, void), uint64_t a8, uint64_t a9)
{
  v43 = a6;
  v14 = sub_21498E690();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    if (a2)
    {
      v21 = [a2 statusCode];
    }

    else
    {
      v21 = 0;
    }

    v41 = a1;
    v42 = a2;
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v40 = a9;
    v22 = __swift_project_value_buffer(v14, qword_281194E18);
    (*(v15 + 16))(v18, v22, v14);
    v23 = v20;
    v24 = sub_21498E670();
    v25 = sub_21498FBA0();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v39 = v23;
      v27 = v26;
      v28 = swift_slowAlloc();
      v38 = a8;
      v29 = v28;
      v44 = v28;
      *v27 = 134218242;
      *(v27 + 4) = v21;
      *(v27 + 12) = 2080;
      v36 = v15;
      v37 = a3;
      v30 = a7;
      v31 = *&v39[qword_281190E40];
      v32 = *&v39[qword_281190E40 + 8];

      v33 = sub_2149079F4(v31, v32, &v44);
      a7 = v30;
      a3 = v37;

      *(v27 + 14) = v33;
      _os_log_impl(&dword_21488E000, v24, v25, "[%ld] Response: X-Apple-Request-UUID: %s", v27, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v29);
      v34 = v29;
      a8 = v38;
      MEMORY[0x216059AC0](v34, -1, -1);
      v35 = v27;
      v23 = v39;
      MEMORY[0x216059AC0](v35, -1, -1);

      (*(v36 + 8))(v18, v14);
    }

    else
    {

      (*(v15 + 8))(v18, v14);
    }

    if (v21 == 429)
    {
      if (v40 <= 4)
      {
        sub_2149145F4(a7, a8, v43 & 1, v40, &unk_2826CA5A0, &unk_2826CA668, sub_2149264CC, &block_descriptor_231);
        goto LABEL_17;
      }
    }

    else if (v21 == 401 && (v43 & 1) != 0)
    {
      sub_214914CE8(v41, v42, a3, a7, a8, v40);
LABEL_17:

      return;
    }

    a7(v41, v42, a3);
    goto LABEL_17;
  }
}

void sub_214920404(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, int a6, void (*a7)(void, void, void), uint64_t a8, uint64_t a9)
{
  v43 = a6;
  v14 = sub_21498E690();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    if (a2)
    {
      v21 = [a2 statusCode];
    }

    else
    {
      v21 = 0;
    }

    v41 = a1;
    v42 = a2;
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v40 = a9;
    v22 = __swift_project_value_buffer(v14, qword_281194E18);
    (*(v15 + 16))(v18, v22, v14);
    v23 = v20;
    v24 = sub_21498E670();
    v25 = sub_21498FBA0();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v39 = v23;
      v27 = v26;
      v28 = swift_slowAlloc();
      v38 = a8;
      v29 = v28;
      v44 = v28;
      *v27 = 134218242;
      *(v27 + 4) = v21;
      *(v27 + 12) = 2080;
      v36 = v15;
      v37 = a3;
      v30 = a7;
      v31 = *&v39[qword_281190E40];
      v32 = *&v39[qword_281190E40 + 8];

      v33 = sub_2149079F4(v31, v32, &v44);
      a7 = v30;
      a3 = v37;

      *(v27 + 14) = v33;
      _os_log_impl(&dword_21488E000, v24, v25, "[%ld] Response: X-Apple-Request-UUID: %s", v27, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v29);
      v34 = v29;
      a8 = v38;
      MEMORY[0x216059AC0](v34, -1, -1);
      v35 = v27;
      v23 = v39;
      MEMORY[0x216059AC0](v35, -1, -1);

      (*(v36 + 8))(v18, v14);
    }

    else
    {

      (*(v15 + 8))(v18, v14);
    }

    if (v21 == 429)
    {
      if (v40 <= 4)
      {
        sub_2149145F4(a7, a8, v43 & 1, v40, &unk_2826C9CE0, &unk_2826C9DA8, sub_214925CFC, &block_descriptor_38);
        goto LABEL_17;
      }
    }

    else if (v21 == 401 && (v43 & 1) != 0)
    {
      sub_214915234(v41, v42, a3, a7, a8, v40);
LABEL_17:

      return;
    }

    a7(v41, v42, a3);
    goto LABEL_17;
  }
}

void sub_214920780(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, int a6, void (*a7)(void, void, void), uint64_t a8, uint64_t a9)
{
  v43 = a6;
  v14 = sub_21498E690();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    if (a2)
    {
      v21 = [a2 statusCode];
    }

    else
    {
      v21 = 0;
    }

    v41 = a1;
    v42 = a2;
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v40 = a9;
    v22 = __swift_project_value_buffer(v14, qword_281194E18);
    (*(v15 + 16))(v18, v22, v14);
    v23 = v20;
    v24 = sub_21498E670();
    v25 = sub_21498FBA0();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v39 = v23;
      v27 = v26;
      v28 = swift_slowAlloc();
      v38 = a8;
      v29 = v28;
      v44 = v28;
      *v27 = 134218242;
      *(v27 + 4) = v21;
      *(v27 + 12) = 2080;
      v36 = v15;
      v37 = a3;
      v30 = a7;
      v31 = *&v39[qword_281190E40];
      v32 = *&v39[qword_281190E40 + 8];

      v33 = sub_2149079F4(v31, v32, &v44);
      a7 = v30;
      a3 = v37;

      *(v27 + 14) = v33;
      _os_log_impl(&dword_21488E000, v24, v25, "[%ld] Response: X-Apple-Request-UUID: %s", v27, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v29);
      v34 = v29;
      a8 = v38;
      MEMORY[0x216059AC0](v34, -1, -1);
      v35 = v27;
      v23 = v39;
      MEMORY[0x216059AC0](v35, -1, -1);

      (*(v36 + 8))(v18, v14);
    }

    else
    {

      (*(v15 + 8))(v18, v14);
    }

    if (v21 == 429)
    {
      if (v40 <= 4)
      {
        sub_2149145F4(a7, a8, v43 & 1, v40, &unk_2826CA140, &unk_2826CA208, sub_214926344, &block_descriptor_135);
        goto LABEL_17;
      }
    }

    else if (v21 == 401 && (v43 & 1) != 0)
    {
      sub_214915780(v41, v42, a3, a7, a8, v40);
LABEL_17:

      return;
    }

    a7(v41, v42, a3);
    goto LABEL_17;
  }
}

void sub_214920AFC(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, int a6, void (*a7)(void, void, void), uint64_t a8, uint64_t a9)
{
  v43 = a6;
  v14 = sub_21498E690();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    if (a2)
    {
      v21 = [a2 statusCode];
    }

    else
    {
      v21 = 0;
    }

    v41 = a1;
    v42 = a2;
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v40 = a9;
    v22 = __swift_project_value_buffer(v14, qword_281194E18);
    (*(v15 + 16))(v18, v22, v14);
    v23 = v20;
    v24 = sub_21498E670();
    v25 = sub_21498FBA0();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v39 = v23;
      v27 = v26;
      v28 = swift_slowAlloc();
      v38 = a8;
      v29 = v28;
      v44 = v28;
      *v27 = 134218242;
      *(v27 + 4) = v21;
      *(v27 + 12) = 2080;
      v36 = v15;
      v37 = a3;
      v30 = a7;
      v31 = *&v39[qword_281190E40];
      v32 = *&v39[qword_281190E40 + 8];

      v33 = sub_2149079F4(v31, v32, &v44);
      a7 = v30;
      a3 = v37;

      *(v27 + 14) = v33;
      _os_log_impl(&dword_21488E000, v24, v25, "[%ld] Response: X-Apple-Request-UUID: %s", v27, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v29);
      v34 = v29;
      a8 = v38;
      MEMORY[0x216059AC0](v34, -1, -1);
      v35 = v27;
      v23 = v39;
      MEMORY[0x216059AC0](v35, -1, -1);

      (*(v36 + 8))(v18, v14);
    }

    else
    {

      (*(v15 + 8))(v18, v14);
    }

    if (v21 == 429)
    {
      if (v40 <= 4)
      {
        sub_2149145F4(a7, a8, v43 & 1, v40, &unk_2826C9DF8, &unk_2826C9EC0, sub_21492626C, &block_descriptor_63);
        goto LABEL_17;
      }
    }

    else if (v21 == 401 && (v43 & 1) != 0)
    {
      sub_214915CCC(v41, v42, a3, a7, a8, v40);
LABEL_17:

      return;
    }

    a7(v41, v42, a3);
    goto LABEL_17;
  }
}

void sub_214920E78(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, int a6, void (*a7)(void, void, void), uint64_t a8, uint64_t a9)
{
  v43 = a6;
  v14 = sub_21498E690();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    if (a2)
    {
      v21 = [a2 statusCode];
    }

    else
    {
      v21 = 0;
    }

    v41 = a1;
    v42 = a2;
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v40 = a9;
    v22 = __swift_project_value_buffer(v14, qword_281194E18);
    (*(v15 + 16))(v18, v22, v14);
    v23 = v20;
    v24 = sub_21498E670();
    v25 = sub_21498FBA0();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v39 = v23;
      v27 = v26;
      v28 = swift_slowAlloc();
      v38 = a8;
      v29 = v28;
      v44 = v28;
      *v27 = 134218242;
      *(v27 + 4) = v21;
      *(v27 + 12) = 2080;
      v36 = v15;
      v37 = a3;
      v30 = a7;
      v31 = *&v39[qword_281190E40];
      v32 = *&v39[qword_281190E40 + 8];

      v33 = sub_2149079F4(v31, v32, &v44);
      a7 = v30;
      a3 = v37;

      *(v27 + 14) = v33;
      _os_log_impl(&dword_21488E000, v24, v25, "[%ld] Response: X-Apple-Request-UUID: %s", v27, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v29);
      v34 = v29;
      a8 = v38;
      MEMORY[0x216059AC0](v34, -1, -1);
      v35 = v27;
      v23 = v39;
      MEMORY[0x216059AC0](v35, -1, -1);

      (*(v36 + 8))(v18, v14);
    }

    else
    {

      (*(v15 + 8))(v18, v14);
    }

    if (v21 == 429)
    {
      if (v40 <= 4)
      {
        sub_2149145F4(a7, a8, v43 & 1, v40, &unk_2826CAA00, &unk_2826CAAC8, sub_2149265EC, &block_descriptor_327);
        goto LABEL_17;
      }
    }

    else if (v21 == 401 && (v43 & 1) != 0)
    {
      sub_214916218(v41, v42, a3, a7, a8, v40);
LABEL_17:

      return;
    }

    a7(v41, v42, a3);
    goto LABEL_17;
  }
}

void sub_2149211F4(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, int a6, void (*a7)(void, void, void), uint64_t a8, uint64_t a9)
{
  v43 = a6;
  v14 = sub_21498E690();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    if (a2)
    {
      v21 = [a2 statusCode];
    }

    else
    {
      v21 = 0;
    }

    v41 = a1;
    v42 = a2;
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v40 = a9;
    v22 = __swift_project_value_buffer(v14, qword_281194E18);
    (*(v15 + 16))(v18, v22, v14);
    v23 = v20;
    v24 = sub_21498E670();
    v25 = sub_21498FBA0();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v39 = v23;
      v27 = v26;
      v28 = swift_slowAlloc();
      v38 = a8;
      v29 = v28;
      v44 = v28;
      *v27 = 134218242;
      *(v27 + 4) = v21;
      *(v27 + 12) = 2080;
      v36 = v15;
      v37 = a3;
      v30 = a7;
      v31 = *&v39[qword_281190E40];
      v32 = *&v39[qword_281190E40 + 8];

      v33 = sub_2149079F4(v31, v32, &v44);
      a7 = v30;
      a3 = v37;

      *(v27 + 14) = v33;
      _os_log_impl(&dword_21488E000, v24, v25, "[%ld] Response: X-Apple-Request-UUID: %s", v27, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v29);
      v34 = v29;
      a8 = v38;
      MEMORY[0x216059AC0](v34, -1, -1);
      v35 = v27;
      v23 = v39;
      MEMORY[0x216059AC0](v35, -1, -1);

      (*(v36 + 8))(v18, v14);
    }

    else
    {

      (*(v15 + 8))(v18, v14);
    }

    if (v21 == 429)
    {
      if (v40 <= 4)
      {
        sub_2149145F4(a7, a8, v43 & 1, v40, &unk_2826CA488, &unk_2826CA550, sub_214926484, &block_descriptor_207);
        goto LABEL_17;
      }
    }

    else if (v21 == 401 && (v43 & 1) != 0)
    {
      sub_214916764(v41, v42, a3, a7, a8, v40);
LABEL_17:

      return;
    }

    a7(v41, v42, a3);
    goto LABEL_17;
  }
}

void sub_214921570(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, int a6, void (*a7)(void, void, void), uint64_t a8, uint64_t a9)
{
  v43 = a6;
  v14 = sub_21498E690();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    if (a2)
    {
      v21 = [a2 statusCode];
    }

    else
    {
      v21 = 0;
    }

    v41 = a1;
    v42 = a2;
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v40 = a9;
    v22 = __swift_project_value_buffer(v14, qword_281194E18);
    (*(v15 + 16))(v18, v22, v14);
    v23 = v20;
    v24 = sub_21498E670();
    v25 = sub_21498FBA0();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v39 = v23;
      v27 = v26;
      v28 = swift_slowAlloc();
      v38 = a8;
      v29 = v28;
      v44 = v28;
      *v27 = 134218242;
      *(v27 + 4) = v21;
      *(v27 + 12) = 2080;
      v36 = v15;
      v37 = a3;
      v30 = a7;
      v31 = *&v39[qword_281190E40];
      v32 = *&v39[qword_281190E40 + 8];

      v33 = sub_2149079F4(v31, v32, &v44);
      a7 = v30;
      a3 = v37;

      *(v27 + 14) = v33;
      _os_log_impl(&dword_21488E000, v24, v25, "[%ld] Response: X-Apple-Request-UUID: %s", v27, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v29);
      v34 = v29;
      a8 = v38;
      MEMORY[0x216059AC0](v34, -1, -1);
      v35 = v27;
      v23 = v39;
      MEMORY[0x216059AC0](v35, -1, -1);

      (*(v36 + 8))(v18, v14);
    }

    else
    {

      (*(v15 + 8))(v18, v14);
    }

    if (v21 == 429)
    {
      if (v40 <= 4)
      {
        sub_2149145F4(a7, a8, v43 & 1, v40, &unk_2826CAB18, &unk_2826CABE0, sub_2149267EC, &block_descriptor_351);
        goto LABEL_17;
      }
    }

    else if (v21 == 401 && (v43 & 1) != 0)
    {
      sub_214916CB0(v41, v42, a3, a7, a8, v40);
LABEL_17:

      return;
    }

    a7(v41, v42, a3);
    goto LABEL_17;
  }
}

void sub_2149218EC(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, int a6, void (*a7)(void, void, void), uint64_t a8, uint64_t a9)
{
  v43 = a6;
  v14 = sub_21498E690();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    if (a2)
    {
      v21 = [a2 statusCode];
    }

    else
    {
      v21 = 0;
    }

    v41 = a1;
    v42 = a2;
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v40 = a9;
    v22 = __swift_project_value_buffer(v14, qword_281194E18);
    (*(v15 + 16))(v18, v22, v14);
    v23 = v20;
    v24 = sub_21498E670();
    v25 = sub_21498FBA0();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v39 = v23;
      v27 = v26;
      v28 = swift_slowAlloc();
      v38 = a8;
      v29 = v28;
      v44 = v28;
      *v27 = 134218242;
      *(v27 + 4) = v21;
      *(v27 + 12) = 2080;
      v36 = v15;
      v37 = a3;
      v30 = a7;
      v31 = *&v39[qword_281190E40];
      v32 = *&v39[qword_281190E40 + 8];

      v33 = sub_2149079F4(v31, v32, &v44);
      a7 = v30;
      a3 = v37;

      *(v27 + 14) = v33;
      _os_log_impl(&dword_21488E000, v24, v25, "[%ld] Response: X-Apple-Request-UUID: %s", v27, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v29);
      v34 = v29;
      a8 = v38;
      MEMORY[0x216059AC0](v34, -1, -1);
      v35 = v27;
      v23 = v39;
      MEMORY[0x216059AC0](v35, -1, -1);

      (*(v36 + 8))(v18, v14);
    }

    else
    {

      (*(v15 + 8))(v18, v14);
    }

    if (v21 == 429)
    {
      if (v40 <= 4)
      {
        sub_2149145F4(a7, a8, v43 & 1, v40, &unk_2826CA258, &unk_2826CA320, sub_2149263F4, &block_descriptor_159);
        goto LABEL_17;
      }
    }

    else if (v21 == 401 && (v43 & 1) != 0)
    {
      sub_2149171FC(v41, v42, a3, a7, a8, v40);
LABEL_17:

      return;
    }

    a7(v41, v42, a3);
    goto LABEL_17;
  }
}

void sub_214921C68(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, int a6, void (*a7)(void, void, void), uint64_t a8, uint64_t a9)
{
  v43 = a6;
  v14 = sub_21498E690();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    if (a2)
    {
      v21 = [a2 statusCode];
    }

    else
    {
      v21 = 0;
    }

    v41 = a1;
    v42 = a2;
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v40 = a9;
    v22 = __swift_project_value_buffer(v14, qword_281194E18);
    (*(v15 + 16))(v18, v22, v14);
    v23 = v20;
    v24 = sub_21498E670();
    v25 = sub_21498FBA0();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v39 = v23;
      v27 = v26;
      v28 = swift_slowAlloc();
      v38 = a8;
      v29 = v28;
      v44 = v28;
      *v27 = 134218242;
      *(v27 + 4) = v21;
      *(v27 + 12) = 2080;
      v36 = v15;
      v37 = a3;
      v30 = a7;
      v31 = *&v39[qword_281190E40];
      v32 = *&v39[qword_281190E40 + 8];

      v33 = sub_2149079F4(v31, v32, &v44);
      a7 = v30;
      a3 = v37;

      *(v27 + 14) = v33;
      _os_log_impl(&dword_21488E000, v24, v25, "[%ld] Response: X-Apple-Request-UUID: %s", v27, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v29);
      v34 = v29;
      a8 = v38;
      MEMORY[0x216059AC0](v34, -1, -1);
      v35 = v27;
      v23 = v39;
      MEMORY[0x216059AC0](v35, -1, -1);

      (*(v36 + 8))(v18, v14);
    }

    else
    {

      (*(v15 + 8))(v18, v14);
    }

    if (v21 == 429)
    {
      if (v40 <= 4)
      {
        sub_2149145F4(a7, a8, v43 & 1, v40, &unk_2826CA370, &unk_2826CA438, sub_21492643C, &block_descriptor_183);
        goto LABEL_17;
      }
    }

    else if (v21 == 401 && (v43 & 1) != 0)
    {
      sub_214917748(v41, v42, a3, a7, a8, v40);
LABEL_17:

      return;
    }

    a7(v41, v42, a3);
    goto LABEL_17;
  }
}

void sub_214921FE4(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, int a6, void (*a7)(void, void, void), uint64_t a8, uint64_t a9)
{
  v43 = a6;
  v14 = sub_21498E690();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    if (a2)
    {
      v21 = [a2 statusCode];
    }

    else
    {
      v21 = 0;
    }

    v41 = a1;
    v42 = a2;
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v40 = a9;
    v22 = __swift_project_value_buffer(v14, qword_281194E18);
    (*(v15 + 16))(v18, v22, v14);
    v23 = v20;
    v24 = sub_21498E670();
    v25 = sub_21498FBA0();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v39 = v23;
      v27 = v26;
      v28 = swift_slowAlloc();
      v38 = a8;
      v29 = v28;
      v44 = v28;
      *v27 = 134218242;
      *(v27 + 4) = v21;
      *(v27 + 12) = 2080;
      v36 = v15;
      v37 = a3;
      v30 = a7;
      v31 = *&v39[qword_281190E40];
      v32 = *&v39[qword_281190E40 + 8];

      v33 = sub_2149079F4(v31, v32, &v44);
      a7 = v30;
      a3 = v37;

      *(v27 + 14) = v33;
      _os_log_impl(&dword_21488E000, v24, v25, "[%ld] Response: X-Apple-Request-UUID: %s", v27, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v29);
      v34 = v29;
      a8 = v38;
      MEMORY[0x216059AC0](v34, -1, -1);
      v35 = v27;
      v23 = v39;
      MEMORY[0x216059AC0](v35, -1, -1);

      (*(v36 + 8))(v18, v14);
    }

    else
    {

      (*(v15 + 8))(v18, v14);
    }

    if (v21 == 429)
    {
      if (v40 <= 4)
      {
        sub_2149145F4(a7, a8, v43 & 1, v40, &unk_2826CA8E8, &unk_2826CA9B0, sub_2149265A4, &block_descriptor_303);
        goto LABEL_17;
      }
    }

    else if (v21 == 401 && (v43 & 1) != 0)
    {
      sub_214917C94(v41, v42, a3, a7, a8, v40);
LABEL_17:

      return;
    }

    a7(v41, v42, a3);
    goto LABEL_17;
  }
}

void sub_214922360(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, int a6, void (*a7)(void, void, void), uint64_t a8, uint64_t a9)
{
  v43 = a6;
  v14 = sub_21498E690();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    if (a2)
    {
      v21 = [a2 statusCode];
    }

    else
    {
      v21 = 0;
    }

    v41 = a1;
    v42 = a2;
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v40 = a9;
    v22 = __swift_project_value_buffer(v14, qword_281194E18);
    (*(v15 + 16))(v18, v22, v14);
    v23 = v20;
    v24 = sub_21498E670();
    v25 = sub_21498FBA0();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v39 = v23;
      v27 = v26;
      v28 = swift_slowAlloc();
      v38 = a8;
      v29 = v28;
      v44 = v28;
      *v27 = 134218242;
      *(v27 + 4) = v21;
      *(v27 + 12) = 2080;
      v36 = v15;
      v37 = a3;
      v30 = a7;
      v31 = *&v39[qword_281190E40];
      v32 = *&v39[qword_281190E40 + 8];

      v33 = sub_2149079F4(v31, v32, &v44);
      a7 = v30;
      a3 = v37;

      *(v27 + 14) = v33;
      _os_log_impl(&dword_21488E000, v24, v25, "[%ld] Response: X-Apple-Request-UUID: %s", v27, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v29);
      v34 = v29;
      a8 = v38;
      MEMORY[0x216059AC0](v34, -1, -1);
      v35 = v27;
      v23 = v39;
      MEMORY[0x216059AC0](v35, -1, -1);

      (*(v36 + 8))(v18, v14);
    }

    else
    {

      (*(v15 + 8))(v18, v14);
    }

    if (v21 == 429)
    {
      if (v40 <= 4)
      {
        sub_2149145F4(a7, a8, v43 & 1, v40, &unk_2826C9F10, &unk_2826C9FD8, sub_2149262B4, &block_descriptor_87);
        goto LABEL_17;
      }
    }

    else if (v21 == 401 && (v43 & 1) != 0)
    {
      sub_2149181E0(v41, v42, a3, a7, a8, v40);
LABEL_17:

      return;
    }

    a7(v41, v42, a3);
    goto LABEL_17;
  }
}

void sub_2149226DC(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, int a6, void (*a7)(void, void, void), uint64_t a8, uint64_t a9)
{
  v43 = a6;
  v14 = sub_21498E690();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    if (a2)
    {
      v21 = [a2 statusCode];
    }

    else
    {
      v21 = 0;
    }

    v41 = a1;
    v42 = a2;
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v40 = a9;
    v22 = __swift_project_value_buffer(v14, qword_281194E18);
    (*(v15 + 16))(v18, v22, v14);
    v23 = v20;
    v24 = sub_21498E670();
    v25 = sub_21498FBA0();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v39 = v23;
      v27 = v26;
      v28 = swift_slowAlloc();
      v38 = a8;
      v29 = v28;
      v44 = v28;
      *v27 = 134218242;
      *(v27 + 4) = v21;
      *(v27 + 12) = 2080;
      v36 = v15;
      v37 = a3;
      v30 = a7;
      v31 = *&v39[qword_281190E40];
      v32 = *&v39[qword_281190E40 + 8];

      v33 = sub_2149079F4(v31, v32, &v44);
      a7 = v30;
      a3 = v37;

      *(v27 + 14) = v33;
      _os_log_impl(&dword_21488E000, v24, v25, "[%ld] Response: X-Apple-Request-UUID: %s", v27, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v29);
      v34 = v29;
      a8 = v38;
      MEMORY[0x216059AC0](v34, -1, -1);
      v35 = v27;
      v23 = v39;
      MEMORY[0x216059AC0](v35, -1, -1);

      (*(v36 + 8))(v18, v14);
    }

    else
    {

      (*(v15 + 8))(v18, v14);
    }

    if (v21 == 429)
    {
      if (v40 <= 4)
      {
        sub_2149145F4(a7, a8, v43 & 1, v40, &unk_2826CA028, &unk_2826CA0F0, sub_2149262FC, &block_descriptor_111);
        goto LABEL_17;
      }
    }

    else if (v21 == 401 && (v43 & 1) != 0)
    {
      sub_21491872C(v41, v42, a3, a7, a8, v40);
LABEL_17:

      return;
    }

    a7(v41, v42, a3);
    goto LABEL_17;
  }
}

void sub_214922A58(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, int a6, void (*a7)(void, void, void), uint64_t a8, uint64_t a9)
{
  v43 = a6;
  v14 = sub_21498E690();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    if (a2)
    {
      v21 = [a2 statusCode];
    }

    else
    {
      v21 = 0;
    }

    v41 = a1;
    v42 = a2;
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v40 = a9;
    v22 = __swift_project_value_buffer(v14, qword_281194E18);
    (*(v15 + 16))(v18, v22, v14);
    v23 = v20;
    v24 = sub_21498E670();
    v25 = sub_21498FBA0();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v39 = v23;
      v27 = v26;
      v28 = swift_slowAlloc();
      v38 = a8;
      v29 = v28;
      v44 = v28;
      *v27 = 134218242;
      *(v27 + 4) = v21;
      *(v27 + 12) = 2080;
      v36 = v15;
      v37 = a3;
      v30 = a7;
      v31 = *&v39[qword_281190E40];
      v32 = *&v39[qword_281190E40 + 8];

      v33 = sub_2149079F4(v31, v32, &v44);
      a7 = v30;
      a3 = v37;

      *(v27 + 14) = v33;
      _os_log_impl(&dword_21488E000, v24, v25, "[%ld] Response: X-Apple-Request-UUID: %s", v27, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v29);
      v34 = v29;
      a8 = v38;
      MEMORY[0x216059AC0](v34, -1, -1);
      v35 = v27;
      v23 = v39;
      MEMORY[0x216059AC0](v35, -1, -1);

      (*(v36 + 8))(v18, v14);
    }

    else
    {

      (*(v15 + 8))(v18, v14);
    }

    if (v21 == 429)
    {
      if (v40 <= 4)
      {
        sub_2149145F4(a7, a8, v43 & 1, v40, &unk_2826CA7D0, &unk_2826CA898, sub_21492655C, &block_descriptor_279);
        goto LABEL_17;
      }
    }

    else if (v21 == 401 && (v43 & 1) != 0)
    {
      sub_214918C78(v41, v42, a3, a7, a8, v40);
LABEL_17:

      return;
    }

    a7(v41, v42, a3);
    goto LABEL_17;
  }
}

void sub_214922DD4(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, int a6, void (*a7)(void, void, void), uint64_t a8, uint64_t a9)
{
  v43 = a6;
  v14 = sub_21498E690();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    if (a2)
    {
      v21 = [a2 statusCode];
    }

    else
    {
      v21 = 0;
    }

    v41 = a1;
    v42 = a2;
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v40 = a9;
    v22 = __swift_project_value_buffer(v14, qword_281194E18);
    (*(v15 + 16))(v18, v22, v14);
    v23 = v20;
    v24 = sub_21498E670();
    v25 = sub_21498FBA0();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v39 = v23;
      v27 = v26;
      v28 = swift_slowAlloc();
      v38 = a8;
      v29 = v28;
      v44 = v28;
      *v27 = 134218242;
      *(v27 + 4) = v21;
      *(v27 + 12) = 2080;
      v36 = v15;
      v37 = a3;
      v30 = a7;
      v31 = *&v39[qword_281190E40];
      v32 = *&v39[qword_281190E40 + 8];

      v33 = sub_2149079F4(v31, v32, &v44);
      a7 = v30;
      a3 = v37;

      *(v27 + 14) = v33;
      _os_log_impl(&dword_21488E000, v24, v25, "[%ld] Response: X-Apple-Request-UUID: %s", v27, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v29);
      v34 = v29;
      a8 = v38;
      MEMORY[0x216059AC0](v34, -1, -1);
      v35 = v27;
      v23 = v39;
      MEMORY[0x216059AC0](v35, -1, -1);

      (*(v36 + 8))(v18, v14);
    }

    else
    {

      (*(v15 + 8))(v18, v14);
    }

    if (v21 == 429)
    {
      if (v40 <= 4)
      {
        sub_2149145F4(a7, a8, v43 & 1, v40, &unk_2826CA6B8, &unk_2826CA780, sub_214926514, &block_descriptor_255);
        goto LABEL_17;
      }
    }

    else if (v21 == 401 && (v43 & 1) != 0)
    {
      sub_2149191C4(v41, v42, a3, a7, a8, v40);
LABEL_17:

      return;
    }

    a7(v41, v42, a3);
    goto LABEL_17;
  }
}

void sub_214923150(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v11 = a2;
  v9 = a3;
  v10 = a4;
  v8(a2, a3, a4);
}

uint64_t sub_2149231F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C338, &qword_21499A670);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  (*(v3 + 16))(&v10 - v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  sub_214919DF0(sub_214925C20, v8, 1, 0);
}

uint64_t sub_214923348(uint64_t a1, uint64_t a2)
{
  if (!a2 || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C350, &qword_21499A690), (v2 = swift_dynamicCastClass()) == 0))
  {
    if (qword_27CA19F80 != -1)
    {
      swift_once();
    }

    v12 = qword_27CA30F98;
    v11 = unk_27CA30FA0;
    v13 = qword_27CA30FA8;
    v14 = byte_27CA30FB0;
    v15 = qword_27CA30FB8;
    v16 = byte_27CA30FC0;
    sub_2148A2800();
    swift_allocError();
    *v17 = v12;
    *(v17 + 8) = v11;
    *(v17 + 16) = v13;
    *(v17 + 24) = v14;
    *(v17 + 32) = v15;
    *(v17 + 40) = v16;

    goto LABEL_8;
  }

  v3 = v2 + *((*MEMORY[0x277D85000] & *v2) + 0x60);
  v5 = *v3;
  v4 = *(v3 + 1);
  v7 = *(v3 + 2);
  v6 = *(v3 + 3);
  v8 = *(v3 + 4);
  v9 = v3[40];
  if (v3[41])
  {
    sub_2148A2800();
    swift_allocError();
    *v10 = v5;
    *(v10 + 8) = v4;
    *(v10 + 16) = v7;
    *(v10 + 24) = v6 & 1;
    *(v10 + 32) = v8;
    *(v10 + 40) = v9 & 1;
    sub_214925DD0(v5, v4, v7, v6, v8, v9, 1);
LABEL_8:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C338, &qword_21499A670);
    return sub_21498FA60();
  }

  v19 = *v3;
  v20 = *(v3 + 1);
  sub_214925DD0(v5, v4, v7, v6, v8, v9, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C338, &qword_21499A670);
  return sub_21498FA70();
}

uint64_t sub_214923544(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_2149235F0(uint64_t (*a1)(uint64_t *))
{
  sub_21498FE50();
  sub_21498FED0();
  v3 = v10;
  if (v10)
  {
    v4 = v9;
    while (1)
    {
      v9 = v4;
      v10 = v3;
      v5 = a1(&v9);
      if (v1)
      {

        return v7 & 1;
      }

      v6 = v5;

      if (v6)
      {
        break;
      }

      sub_21498FED0();
      v4 = v9;
      v3 = v10;
      if (!v10)
      {
        goto LABEL_6;
      }
    }

    v7 = 1;
  }

  else
  {
LABEL_6:

    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_2149236D0(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A330, &qword_2149916E0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = (&v33 - v12);
  v14 = sub_21498E690();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + OBJC_IVAR____TtC19iCloudMailAssistant18MALiftUIDataSource_successRange) = xmmword_21499A590;
  *(v5 + 16) = a2;
  *(v5 + 24) = a1;
  v35 = a3;
  sub_214926040(a3, v5 + OBJC_IVAR____TtC19iCloudMailAssistant18MALiftUIDataSource_source);
  v19 = qword_281190DA0;
  v34 = a2;
  v20 = a1;
  if (v19 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v14, qword_281194E18);
  (*(v15 + 16))(v18, v21, v14);
  v22 = sub_21498E670();
  v23 = sub_21498FBD0();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_21488E000, v22, v23, "Init data source", v24, 2u);
    MEMORY[0x216059AC0](v24, -1, -1);
  }

  (*(v15 + 8))(v18, v14);

  sub_21498E980();

  v38[0] = 0xD000000000000023;
  v38[1] = 0x80000002149A10E0;
  v36 = 0xD000000000000023;
  v37 = 0x80000002149A10E0;
  v25 = sub_21498FE60();
  if (v25 != 2)
  {
    v31 = v25;

    if ((v31 & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_9:
    sub_21489DFCC(v35, &qword_27CA1A328, &unk_2149933A0);

    goto LABEL_10;
  }

  MEMORY[0x28223BE20](v25);
  *(&v33 - 2) = v38;
  v26 = sub_2149235F0(sub_21492610C);

  if (v26)
  {
    goto LABEL_9;
  }

LABEL_7:
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0xE000000000000000;
  *v13 = v27;
  v28 = *MEMORY[0x277D232A0];
  v29 = sub_21498E7C0();
  v30 = *(v29 - 8);
  (*(v30 + 104))(v13, v28, v29);
  (*(v30 + 56))(v13, 0, 1, v29);
  sub_21498E8E0();

  sub_21489DFCC(v35, &qword_27CA1A328, &unk_2149933A0);
LABEL_10:
  *(v5 + OBJC_IVAR____TtC19iCloudMailAssistant18MALiftUIDataSource_stateStore) = a4;
  return v5;
}

void sub_214923AE4(char *a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v3 = sub_21498F8C0();
  v72 = *(v3 - 8);
  v73 = v3;
  v4 = *(v72 + 64);
  MEMORY[0x28223BE20](v3);
  v71 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A328, &unk_2149933A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v80 = &v67 - v8;
  v9 = sub_21498E1B0();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v78 = &v67 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v67 - v17;
  v19 = sub_21498E690();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v19, qword_281194E18);
  (*(v20 + 16))(v23, v24, v19);
  v76 = v19;
  v25 = v10[2];
  v83 = a1;
  v77 = v25;
  v25(v18, a1, v9);
  v26 = v23;
  v27 = v20;
  v28 = sub_21498E670();
  v29 = sub_21498FBD0();
  v30 = os_log_type_enabled(v28, v29);
  v74 = v10;
  v75 = v14;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v68 = v9;
    v32 = v31;
    v69 = swift_slowAlloc();
    v84 = v69;
    *v32 = 136315138;
    v70 = v26;
    v33 = sub_21498E130();
    v35 = v34;
    v36 = (v10 + 1);
    v37 = v10[1];
    v82 = v36 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v38 = v18;
    v39 = v68;
    v37(v38, v68);
    v40 = sub_2149079F4(v33, v35, &v84);

    *(v32 + 4) = v40;
    _os_log_impl(&dword_21488E000, v28, v29, "request for: %s", v32, 0xCu);
    v41 = v69;
    __swift_destroy_boxed_opaque_existential_1(v69);
    MEMORY[0x216059AC0](v41, -1, -1);
    MEMORY[0x216059AC0](v32, -1, -1);

    (*(v27 + 8))(v70, v76);
  }

  else
  {

    v42 = (v10 + 1);
    v37 = v10[1];
    v82 = v42 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v37(v18, v9);
    (*(v27 + 8))(v26, v76);
    v39 = v9;
  }

  v43 = v78;
  v44 = v79;
  v46 = *(v79 + 16);
  v45 = *(v79 + 24);
  v47 = v77;
  v77(v78, v83, v39);
  v48 = objc_allocWithZone(type metadata accessor for MALiftUIRequest());
  v47(&v48[qword_27CA1C130], v43, v39);
  v49 = v46;
  v50 = v45;
  v51 = sub_214925E04(v45, v49, 0, 0xF000000000000000, &qword_27CA1C368, &qword_21499A6A8, &qword_27CA1C360, &qword_21499A6A0);

  v52 = v39;
  v53 = v39;
  v54 = v37;
  v37(v43, v53);
  v55 = [v51 urlRequest];
  sub_21498DE80();

  v56 = v80;
  sub_214926040(v44 + OBJC_IVAR____TtC19iCloudMailAssistant18MALiftUIDataSource_source, v80);
  v57 = type metadata accessor for MALiftUISource(0);
  if ((*(*(v57 - 8) + 48))(v56, 1, v57) == 1)
  {

    sub_21489DFCC(v56, &qword_27CA1A328, &unk_2149933A0);
  }

  else if (swift_getEnumCaseMultiPayload())
  {

    sub_2149260B0(v56);
  }

  else
  {
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B1C8, &qword_214994C20);
    v59 = (v56 + *(v58 + 48));
    v60 = v56;
    v62 = *v59;
    v61 = v59[1];
    v63 = (v60 + *(v58 + 64));
    v64 = v63[1];
    v79 = *v63;
    v65 = v75;
    (v74[4])(v75);
    if (sub_21498E150())
    {
      if (v61)
      {
        sub_21498DE60();
      }

      if (v64)
      {
        v66 = v71;
        sub_21498F8B0();
        sub_21498F880();

        (*(v72 + 8))(v66, v73);
        sub_21498DEC0();

        v54(v75, v52);
      }

      else
      {
        v54(v75, v52);
      }
    }

    else
    {
      v54(v65, v52);
    }
  }
}

uint64_t sub_2149241E8(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  v3 = sub_21498DEE0();
  v2[17] = v3;
  v4 = *(v3 - 8);
  v2[18] = v4;
  v2[19] = *(v4 + 64);
  v2[20] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A330, &qword_2149916E0) - 8) + 64) + 15;
  v2[21] = swift_task_alloc();
  v6 = sub_21498E690();
  v2[22] = v6;
  v7 = *(v6 - 8);
  v2[23] = v7;
  v8 = *(v7 + 64) + 15;
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A348, &qword_214991700) - 8) + 64) + 15;
  v2[26] = swift_task_alloc();
  sub_21498FAB0();
  v2[27] = sub_21498FAA0();
  v11 = sub_21498FA50();
  v2[28] = v11;
  v2[29] = v10;

  return MEMORY[0x2822009F8](sub_2149243BC, v11, v10);
}

uint64_t sub_2149243BC()
{
  v68 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 120);
  sub_21498DEA0();
  v3 = sub_21498E1B0();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = *(v0 + 208);
  if (v5 == 1)
  {
    sub_21489DFCC(*(v0 + 208), &qword_27CA1A348, &qword_214991700);
    v7 = 0xE700000000000000;
    v8 = 0x6C694E5F6C7255;
  }

  else
  {
    v8 = sub_21498E130();
    v7 = v9;
    (*(v4 + 8))(v6, v3);
  }

  *(v0 + 240) = v7;
  v10 = *(v0 + 120);
  v11 = sub_21498DE50();
  v13 = 0x4E5F646F6874654DLL;
  if (v12)
  {
    v13 = v11;
  }

  v14 = 0xEA00000000006C69;
  if (v12)
  {
    v14 = v12;
  }

  v66 = v13;
  v67 = v14;
  MEMORY[0x2160589C0](32, 0xE100000000000000);
  v64 = v8;
  v65 = v7;
  MEMORY[0x2160589C0](v8, v7);
  v15 = v66;
  v16 = v67;
  *(v0 + 248) = v66;
  *(v0 + 256) = v16;
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v17 = *(v0 + 200);
  v19 = *(v0 + 176);
  v18 = *(v0 + 184);
  v20 = __swift_project_value_buffer(v19, qword_281194E18);
  *(v0 + 264) = v20;
  v21 = *(v18 + 16);
  *(v0 + 272) = v21;
  *(v0 + 280) = (v18 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v21(v17, v20, v19);

  v22 = sub_21498E670();
  v23 = sub_21498FBD0();

  v24 = os_log_type_enabled(v22, v23);
  v25 = *(v0 + 200);
  v27 = *(v0 + 176);
  v26 = *(v0 + 184);
  if (v24)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v66 = v29;
    *v28 = 136315138;
    *(v28 + 4) = sub_2149079F4(v15, v16, &v66);
    _os_log_impl(&dword_21488E000, v22, v23, "LiftUI Request: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x216059AC0](v29, -1, -1);
    MEMORY[0x216059AC0](v28, -1, -1);
  }

  v30 = *(v26 + 8);
  v30(v25, v27);
  *(v0 + 288) = v30;
  v31 = *(v0 + 120);
  sub_21498DE50();
  if (!v32 || (v33 = sub_21491F750(), v34 = v33, v33 == 4))
  {
    v35 = *(v0 + 120);
    v36 = sub_21498DEB0();
    v38 = v37;
LABEL_15:
    v39 = 0xE400000000000000;
    v63 = 1;
    v40 = 1414745936;
    goto LABEL_16;
  }

  v57 = v33;
  v58 = *(v0 + 120);
  v36 = sub_21498DEB0();
  v38 = v59;
  if (v34 > 1)
  {
    v63 = v57;
    if (v34 == 2)
    {
      v39 = 0xE300000000000000;
      v40 = 5526864;
    }

    else
    {
      v39 = 0xE600000000000000;
      v40 = 0x4554454C4544;
    }
  }

  else
  {
    if (v34)
    {
      goto LABEL_15;
    }

    v63 = v57;
    v39 = 0xE300000000000000;
    v40 = 5522759;
  }

LABEL_16:
  v61 = v36;
  v62 = v40;
  *(v0 + 304) = v36;
  *(v0 + 312) = v39;
  *(v0 + 296) = v38;
  v41 = *(v0 + 168);
  *(v0 + 320) = *(*(v0 + 128) + OBJC_IVAR____TtC19iCloudMailAssistant18MALiftUIDataSource_stateStore);
  v42 = swift_allocObject();
  *(v42 + 16) = 0;
  *(v42 + 24) = 0xE000000000000000;
  *v41 = v42;
  v43 = *MEMORY[0x277D232A0];
  *(v0 + 108) = v43;
  v44 = sub_21498E7C0();
  *(v0 + 328) = v44;
  v45 = *(v44 - 8);
  v46 = *(v45 + 104);
  *(v0 + 336) = v46;
  *(v0 + 344) = (v45 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v46(v41, v43, v44);
  v47 = *(v45 + 56);
  *(v0 + 352) = v47;
  *(v0 + 360) = (v45 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v47(v41, 0, 1, v44);

  sub_21498E8E0();
  if (qword_27CA19FC8 != -1)
  {
    swift_once();
  }

  v49 = *(v0 + 152);
  v48 = *(v0 + 160);
  v51 = *(v0 + 136);
  v50 = *(v0 + 144);
  v52 = *(v0 + 120);
  v60 = *(v0 + 128);
  *(v0 + 16) = v62;
  *(v0 + 24) = v39;
  *(v0 + 32) = v64;
  *(v0 + 40) = v65;
  *(v0 + 48) = v61;
  *(v0 + 56) = v38;
  (*(v50 + 16))(v48, v52, v51);
  v53 = (*(v50 + 80) + 33) & ~*(v50 + 80);
  v54 = swift_allocObject();
  *(v0 + 368) = v54;
  *(v54 + 16) = v64;
  *(v54 + 24) = v65;
  *(v54 + 32) = v63;
  (*(v50 + 32))(v54 + v53, v48, v51);
  *(v54 + ((v49 + v53 + 7) & 0xFFFFFFFFFFFFFFF8)) = v60;

  v55 = swift_task_alloc();
  *(v0 + 376) = v55;
  *v55 = v0;
  v55[1] = sub_2149249A0;

  return sub_214906618((v0 + 16), &unk_21499A660, v54);
}