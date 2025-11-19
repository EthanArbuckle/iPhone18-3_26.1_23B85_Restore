void sub_26944E990(uint64_t a1, unint64_t a2)
{
  v5 = *v2;

  v6 = sub_26945CC68();
  v7 = sub_26945CDA8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_269455F28(a1, a2, v13);
    _os_log_impl(&dword_26944D000, v6, v7, "%s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x26D63DD90](v9, -1, -1);
    MEMORY[0x26D63DD90](v8, -1, -1);
  }

  v10 = sub_26945CCD8();
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = v5;
  v13[4] = sub_26944EEA8;
  v13[5] = v11;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_26944EC44;
  v13[3] = &block_descriptor;
  v12 = _Block_copy(v13);

  AnalyticsSendEventLazy();
  _Block_release(v12);
}

unint64_t sub_26944EB98()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803172A0, &qword_26945D4F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26945D4A0;
  *(inited + 32) = 0x726F727245;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = sub_26945CCD8();
  v1 = sub_269457868(inited);
  swift_setDeallocating();
  sub_26944EFAC(inited + 32);
  return v1;
}

id sub_26944EC44(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_26944EF18();
    v5 = sub_26945CC98();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_26944ECD0()
{
  v1 = OBJC_IVAR____TtC19SiriTurnRestatement30CalculatorErrorMetricSubmitter_logger;
  v2 = sub_26945CC88();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CalculatorErrorMetricSubmitter()
{
  result = qword_280317288;
  if (!qword_280317288)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26944EDC0()
{
  result = sub_26945CC88();
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

uint64_t sub_26944EE70()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_26944EEA8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_26944EB98();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
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

unint64_t sub_26944EF18()
{
  result = qword_280317298;
  if (!qword_280317298)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280317298);
  }

  return result;
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

uint64_t sub_26944EFAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803172A8, &qword_26945D4F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SiriTurnRestatementFeatureFlags.hashValue.getter()
{
  sub_26945CF48();
  MEMORY[0x26D63D930](0);
  return sub_26945CF68();
}

uint64_t sub_26944F0B8()
{
  sub_26945CF48();
  MEMORY[0x26D63D930](0);
  return sub_26945CF68();
}

uint64_t sub_26944F124()
{
  sub_26945CF48();
  MEMORY[0x26D63D930](0);
  return sub_26945CF68();
}

unint64_t sub_26944F168()
{
  result = qword_2803172B0;
  if (!qword_2803172B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803172B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriTurnRestatementFeatureFlags(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for SiriTurnRestatementFeatureFlags(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

char *sub_26944F2D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_26945C9D8();
  v63 = *(v4 - 8);
  v5 = *(v63 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v51 - v9;
  v11 = sub_26945C918();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = a1;
  v16 = sub_26945BB90();
  v18 = v17;
  v59 = a2;
  v19 = sub_26945BB90();
  v21 = v20;
  if (!v18)
  {
    sub_26944F7A8();
    swift_allocError();
    v43 = 0;
LABEL_14:
    *v42 = v43;
    swift_willThrow();

LABEL_18:

    return v15;
  }

  v55 = v4;
  v56 = v19;
  v53 = v8;
  v54 = v10;
  v52 = v16;
  v61 = v16;
  v62 = v18;

  sub_26945C8F8();
  sub_26944F7FC();
  v22 = sub_26945CDD8();
  v24 = v23;
  v25 = *(v12 + 8);
  v25(v15, v11);

  v26 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v26 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (!v26)
  {
    sub_26944F7A8();
    swift_allocError();
    v43 = 1;
    goto LABEL_14;
  }

  if (!v21)
  {
    v44 = 0;
LABEL_17:
    sub_26944F7A8();
    swift_allocError();
    *v45 = v44;
    swift_willThrow();

    goto LABEL_18;
  }

  v27 = v56;
  v61 = v56;
  v62 = v21;

  sub_26945C8F8();
  v28 = sub_26945CDD8();
  v30 = v29;
  v25(v15, v11);

  v31 = HIBYTE(v30) & 0xF;
  if ((v30 & 0x2000000000000000) == 0)
  {
    v31 = v28 & 0xFFFFFFFFFFFFLL;
  }

  if (!v31)
  {
    v44 = 1;
    goto LABEL_17;
  }

  v32 = *(v57 + 32);
  v33 = v54;
  sub_26945AF94(v54);
  v34 = v53;
  sub_26945AF94(v53);
  v15 = sub_26945BCA4(v52, v18, v33);
  v36 = v35;

  v37 = sub_26945BCA4(v27, v21, v34);
  v39 = v38;

  v40 = v60;
  sub_26945C2DC(v15, v36);
  if (v40)
  {

    v41 = *(v63 + 8);
    v15 = v55;
    v41(v34, v55);
    v41(v33, v15);
  }

  else
  {
    sub_26945C2DC(v37, v39);
    v47 = *(v63 + 8);
    v48 = v34;
    v49 = v33;
    v50 = v55;
    v47(v48, v55);
    v47(v49, v50);
  }

  return v15;
}

uint64_t sub_26944F734()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return swift_deallocClassInstance();
}

unint64_t sub_26944F7A8()
{
  result = qword_2803172B8;
  if (!qword_2803172B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803172B8);
  }

  return result;
}

unint64_t sub_26944F7FC()
{
  result = qword_2803172C0;
  if (!qword_2803172C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803172C0);
  }

  return result;
}

uint64_t sub_26944F850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 8);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_26944F998;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_26944F998(uint64_t a1, char a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2 & 1);
}

uint64_t SiriTurnRestatementError.hashValue.getter()
{
  v1 = *v0;
  sub_26945CF48();
  MEMORY[0x26D63D930](v1);
  return sub_26945CF68();
}

uint64_t sub_26944FB48()
{
  v1 = *v0;
  sub_26945CF48();
  MEMORY[0x26D63D930](v1);
  return sub_26945CF68();
}

uint64_t sub_26944FBBC()
{
  v1 = *v0;
  sub_26945CF48();
  MEMORY[0x26D63D930](v1);
  return sub_26945CF68();
}

uint64_t SiriTurnRestatementPlugin.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  SiriTurnRestatementPlugin.init()();
  return v3;
}

uint64_t SiriTurnRestatementPlugin.init()()
{
  v1 = v0;
  v2 = sub_26945CC88();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = (MEMORY[0x28223BE20])();
  v96 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v99 = &v88 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v107 = &v88 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v88 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v88 - v14;
  v16 = OBJC_IVAR____TtC19SiriTurnRestatement25SiriTurnRestatementPlugin_logger;
  sub_26945CC78();
  v17 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v18 = sub_26945CCD8();
  v19 = [v17 initWithSuiteName_];

  if (v19)
  {
    v20 = sub_26945CBD8();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    v97 = v19;
    v23 = sub_26945CBC8();
    v105 = v20;
    v106 = MEMORY[0x277D04550];
    v104[0] = v23;
    v98 = *(v3 + 16);
    v98(v13, v1 + v16, v2);
    v24 = sub_26945CA98();
    v25 = *(v24 + 48);
    v26 = *(v24 + 52);
    swift_allocObject();
    v27 = v100;
    v28 = sub_26945CA78();
    v29 = v16;
    if (!v27)
    {
      v38 = v28;
      v39 = objc_allocWithZone(sub_26945CB58());

      v40 = v38;
      v41 = [v39 init];
      v95 = 0;
      v93 = v41;
      v90 = [objc_allocWithZone(sub_26945CC58()) init];
      v42 = v107;
      v43 = v98;
      v98(v107, v1 + v29, v2);
      v44 = type metadata accessor for SiriTurnRestatementDataProvider(0);
      v45 = *(v44 + 48);
      v46 = *(v44 + 52);
      v47 = swift_allocObject();
      v94 = v3;
      v48 = *(v3 + 32);
      v100 = v3 + 32;
      v91 = v48;
      v48(v47 + OBJC_IVAR____TtC19SiriTurnRestatement31SiriTurnRestatementDataProvider_logger, v42, v2);
      v92 = v40;
      *(v47 + OBJC_IVAR____TtC19SiriTurnRestatement31SiriTurnRestatementDataProvider_bookmarkService) = v40;
      *(v47 + OBJC_IVAR____TtC19SiriTurnRestatement31SiriTurnRestatementDataProvider_dimFeatureExtractor) = v93;
      *(v47 + OBJC_IVAR____TtC19SiriTurnRestatement31SiriTurnRestatementDataProvider_ueiFeatureExtractor) = v90;
      *(v1 + OBJC_IVAR____TtC19SiriTurnRestatement25SiriTurnRestatementPlugin_dataProvider) = v47;
      v43(v42, v1 + v29, v2);
      v43(v99, v42, v2);
      v49 = sub_26945CBB8();
      v50 = *(v49 + 48);
      v51 = *(v49 + 52);
      swift_allocObject();

      v90 = sub_26945CBA8();
      type metadata accessor for TurnTextExtractor();
      v52 = swift_allocObject();
      type metadata accessor for TurnTextValidator();
      v53 = swift_allocObject();
      v93 = v29;
      v54 = v53;
      type metadata accessor for TurnLanguageCodeReader();
      v55 = swift_allocObject();
      type metadata accessor for TurnTextSanitizer();
      v56 = swift_allocObject();
      type metadata accessor for SanitizedTextExtractor();
      v57 = swift_allocObject();
      v57[2] = v52;
      v57[3] = v54;
      v57[4] = v55;
      v57[5] = v56;
      v58 = v96;
      v98(v96, v107, v2);
      v59 = type metadata accessor for CalculatorErrorMetricSubmitter();
      v60 = *(v59 + 48);
      v61 = *(v59 + 52);
      v89 = swift_allocObject();
      v62 = v91;
      v91(v89 + OBJC_IVAR____TtC19SiriTurnRestatement30CalculatorErrorMetricSubmitter_logger, v58, v2);
      v105 = v49;
      v106 = &off_2879F9A18;
      v104[0] = v90;
      v63 = type metadata accessor for SiriTurnRestatementCalculator();
      v64 = *(v63 + 48);
      v65 = *(v63 + 52);
      v66 = swift_allocObject();
      v67 = __swift_mutable_project_boxed_opaque_existential_1(v104, v49);
      v96 = &v88;
      v68 = *(*(v49 - 8) + 64);
      MEMORY[0x28223BE20](v67);
      v70 = (&v88 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v71 + 16))(v70);
      v72 = *v70;
      v102 = v49;
      v103 = &off_2879F9A18;
      *&v101 = v72;
      sub_26945C9F8();
      v73 = v107;
      (*(v94 + 8))(v107, v2);
      v62(v66 + OBJC_IVAR____TtC19SiriTurnRestatement29SiriTurnRestatementCalculator_logger, v99, v2);
      *(v66 + OBJC_IVAR____TtC19SiriTurnRestatement29SiriTurnRestatementCalculator_bookmarkService) = v92;
      sub_26945114C(&v101, v66 + OBJC_IVAR____TtC19SiriTurnRestatement29SiriTurnRestatementCalculator_similarityScorer);
      *(v66 + OBJC_IVAR____TtC19SiriTurnRestatement29SiriTurnRestatementCalculator_sanitizedTextExtractor) = v57;
      *(v66 + OBJC_IVAR____TtC19SiriTurnRestatement29SiriTurnRestatementCalculator_errorMetricSubmitter) = v89;
      *(v66 + 16) = 0x404E000000000000;
      *(v66 + 24) = 10;
      __swift_destroy_boxed_opaque_existential_0(v104);
      *(v1 + OBJC_IVAR____TtC19SiriTurnRestatement25SiriTurnRestatementPlugin_calculator) = v66;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803172E8, &qword_26945D6B0);
      v74 = swift_allocObject();
      *(v74 + 16) = xmmword_26945D6A0;
      v75 = v73;
      v98(v73, &v93[v1], v2);
      v76 = type metadata accessor for SiriTurnRestatementSELFReporter();
      v77 = *(v76 + 48);
      v78 = *(v76 + 52);
      v79 = swift_allocObject();
      *(v79 + 16) = [objc_opt_self() sharedLoggerWithPersistenceConfiguration_];
      v62(v79 + OBJC_IVAR____TtC19SiriTurnRestatement31SiriTurnRestatementSELFReporter_logger, v75, v2);
      *(v74 + 32) = v79;
      v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803172F0, &qword_26945D6B8);
      v81 = *(v80 + 48);
      v82 = *(v80 + 52);
      swift_allocObject();
      v104[0] = sub_26945CA38();
      v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803172F8, qword_26945D6C0);
      v84 = *(v83 + 48);
      v85 = *(v83 + 52);
      swift_allocObject();
      v86 = sub_26945CA48();

      *(v1 + OBJC_IVAR____TtC19SiriTurnRestatement25SiriTurnRestatementPlugin_reporter) = v86;
      return v1;
    }

    (*(v3 + 8))(v1 + v16, v2);
  }

  else
  {
    v30 = v3;
    (*(v3 + 16))(v15, v1 + v16, v2);
    v31 = sub_26945CC68();
    v32 = sub_26945CDA8();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_26944D000, v31, v32, "Can't get user defaults initialized", v33, 2u);
      MEMORY[0x26D63DD90](v33, -1, -1);
    }

    v34 = *(v30 + 8);
    v34(v15, v2);
    sub_269450528();
    swift_allocError();
    *v35 = 0;
    swift_willThrow();
    v34((v1 + v16), v2);
  }

  type metadata accessor for SiriTurnRestatementPlugin();
  v36 = *(*v1 + 48);
  v37 = *(*v1 + 52);
  swift_deallocPartialClassInstance();
  return v1;
}

unint64_t sub_269450528()
{
  result = qword_2803172D0;
  if (!qword_2803172D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803172D0);
  }

  return result;
}

uint64_t type metadata accessor for SiriTurnRestatementPlugin()
{
  result = qword_280317338;
  if (!qword_280317338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2694505C8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2694505E8, 0, 0);
}

uint64_t sub_2694505E8()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC19SiriTurnRestatement25SiriTurnRestatementPlugin_dataProvider);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_269451A38;
  v3 = v0[2];

  return sub_269458344(v3);
}

uint64_t sub_26945068C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2694506B0, 0, 0);
}

uint64_t sub_2694506B0()
{
  v1 = *(v0[4] + OBJC_IVAR____TtC19SiriTurnRestatement25SiriTurnRestatementPlugin_calculator);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_269451A3C;
  v3 = v0[2];
  v4 = v0[3];

  return SiriTurnRestatementCalculator.doWork(_:)(v3, v4);
}

uint64_t sub_269450758(uint64_t a1)
{
  *(v2 + 40) = v1;
  *(v2 + 48) = *a1;
  *(v2 + 64) = *(a1 + 16);
  return MEMORY[0x2822009F8](sub_269450788, 0, 0);
}

uint64_t sub_269450788()
{
  v1 = *(v0 + 64);
  v2 = *(*(v0 + 40) + OBJC_IVAR____TtC19SiriTurnRestatement25SiriTurnRestatementPlugin_reporter);
  *(v0 + 16) = *(v0 + 48);
  *(v0 + 32) = v1;
  v3 = *(MEMORY[0x277D04440] + 4);
  v6 = (*MEMORY[0x277D04440] + MEMORY[0x277D04440]);
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_269450854;

  return v6(v0 + 16);
}

uint64_t sub_269450854()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  *(v3 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_269451A40, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t SiriTurnRestatementPlugin.deinit()
{
  v1 = OBJC_IVAR____TtC19SiriTurnRestatement25SiriTurnRestatementPlugin_logger;
  v2 = sub_26945CC88();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC19SiriTurnRestatement25SiriTurnRestatementPlugin_dataProvider);

  v4 = *(v0 + OBJC_IVAR____TtC19SiriTurnRestatement25SiriTurnRestatementPlugin_calculator);

  v5 = *(v0 + OBJC_IVAR____TtC19SiriTurnRestatement25SiriTurnRestatementPlugin_reporter);

  return v0;
}

uint64_t SiriTurnRestatementPlugin.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC19SiriTurnRestatement25SiriTurnRestatementPlugin_logger;
  v2 = sub_26945CC88();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC19SiriTurnRestatement25SiriTurnRestatementPlugin_dataProvider);

  v4 = *(v0 + OBJC_IVAR____TtC19SiriTurnRestatement25SiriTurnRestatementPlugin_calculator);

  v5 = *(v0 + OBJC_IVAR____TtC19SiriTurnRestatement25SiriTurnRestatementPlugin_reporter);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_269450AE4(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_269450B08, 0, 0);
}

uint64_t sub_269450B08()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC19SiriTurnRestatement25SiriTurnRestatementPlugin_dataProvider);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_269450BAC;
  v3 = v0[2];

  return sub_269458344(v3);
}

uint64_t sub_269450BAC()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_269450CA0(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](sub_269450CC8, 0, 0);
}

uint64_t sub_269450CC8()
{
  v1 = *(v0[4] + OBJC_IVAR____TtC19SiriTurnRestatement25SiriTurnRestatementPlugin_calculator);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_269450D70;
  v3 = v0[2];
  v4 = v0[3];

  return SiriTurnRestatementCalculator.doWork(_:)(v3, v4);
}

uint64_t sub_269450D70()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_269450E64(uint64_t a1)
{
  *(v2 + 40) = *v1;
  *(v2 + 48) = *a1;
  *(v2 + 64) = *(a1 + 16);
  return MEMORY[0x2822009F8](sub_269450E98, 0, 0);
}

uint64_t sub_269450E98()
{
  v1 = *(v0 + 64);
  v2 = *(*(v0 + 40) + OBJC_IVAR____TtC19SiriTurnRestatement25SiriTurnRestatementPlugin_reporter);
  *(v0 + 16) = *(v0 + 48);
  *(v0 + 32) = v1;
  v3 = *(MEMORY[0x277D04440] + 4);
  v6 = (*MEMORY[0x277D04440] + MEMORY[0x277D04440]);
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_269450F64;

  return v6(v0 + 16);
}

uint64_t sub_269450F64()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  *(v3 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_269451098, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_2694510B0(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_26945114C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_269451168()
{
  result = qword_280317308;
  if (!qword_280317308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280317308);
  }

  return result;
}

uint64_t sub_2694512DC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_269451328()
{
  result = qword_280317330;
  if (!qword_280317330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280317330);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriTurnRestatementError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SiriTurnRestatementError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2694514F4()
{
  result = sub_26945CC88();
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

uint64_t dispatch thunk of SiriTurnRestatementPlugin.loadData()(uint64_t a1)
{
  v4 = *(*v1 + 120);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_269451A44;

  return v8(a1);
}

uint64_t dispatch thunk of SiriTurnRestatementPlugin.doWork(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 128);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_269451824;

  return v10(a1, a2);
}

uint64_t sub_269451824()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t dispatch thunk of SiriTurnRestatementPlugin.report(_:)(uint64_t a1)
{
  v4 = *(*v1 + 136);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_269451A44;

  return v8(a1);
}

uint64_t SiriTurnRestatementCalculator.__allocating_init(logger:bookmarkService:maxSeconds:maxConsecutiveTurns:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v46 = a2;
  v47 = a3;
  v6 = sub_26945CC88();
  v43 = *(v6 - 8);
  v7 = v43;
  v8 = *(v43 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v45 = &v39 - v12;
  v13 = *(v7 + 16);
  v40 = a1;
  v41 = v13;
  v13();
  v14 = sub_26945CBB8();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v42 = sub_26945CBA8();
  type metadata accessor for TurnTextExtractor();
  v17 = swift_allocObject();
  type metadata accessor for TurnTextValidator();
  v18 = swift_allocObject();
  type metadata accessor for TurnLanguageCodeReader();
  v19 = swift_allocObject();
  type metadata accessor for TurnTextSanitizer();
  v20 = swift_allocObject();
  type metadata accessor for SanitizedTextExtractor();
  v21 = swift_allocObject();
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  v21[5] = v20;
  (v41)(v11, a1, v6);
  v22 = type metadata accessor for CalculatorErrorMetricSubmitter();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  v25 = swift_allocObject();
  v26 = v43;
  v27 = *(v43 + 32);
  v27(v25 + OBJC_IVAR____TtC19SiriTurnRestatement30CalculatorErrorMetricSubmitter_logger, v11, v6);
  v48[3] = v14;
  v48[4] = &off_2879F9A18;
  v48[0] = v42;
  v28 = *(v44 + 48);
  v29 = *(v44 + 52);
  v30 = swift_allocObject();
  v31 = __swift_mutable_project_boxed_opaque_existential_1(v48, v14);
  v32 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v34 = (&v39 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v35 + 16))(v34);
  v36 = *v34;
  v37 = (v30 + OBJC_IVAR____TtC19SiriTurnRestatement29SiriTurnRestatementCalculator_similarityScorer);
  v37[3] = v14;
  v37[4] = &off_2879F9A18;
  *v37 = v36;
  sub_26945C9F8();
  (*(v26 + 8))(v40, v6);
  v27(v30 + OBJC_IVAR____TtC19SiriTurnRestatement29SiriTurnRestatementCalculator_logger, v45, v6);
  *(v30 + OBJC_IVAR____TtC19SiriTurnRestatement29SiriTurnRestatementCalculator_bookmarkService) = v46;
  *(v30 + OBJC_IVAR____TtC19SiriTurnRestatement29SiriTurnRestatementCalculator_sanitizedTextExtractor) = v21;
  *(v30 + OBJC_IVAR____TtC19SiriTurnRestatement29SiriTurnRestatementCalculator_errorMetricSubmitter) = v25;
  *(v30 + 16) = a4;
  *(v30 + 24) = v47;
  __swift_destroy_boxed_opaque_existential_0(v48);
  return v30;
}

uint64_t SiriTurnRestatementCalculator.doWork(_:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_26945C958();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_269451E90, 0, 0);
}

uint64_t sub_269451E90()
{
  v83 = v0;
  v72 = v0[5];
  v1 = sub_26945CC68();
  v2 = sub_26945CD98();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_26944D000, v1, v2, "Running SiriTurnRestatementCalculator", v3, 2u);
    MEMORY[0x26D63DD90](v3, -1, -1);
  }

  v4 = v0[4];

  v5 = sub_26945CAB8();
  v6 = MEMORY[0x277D84F90];
  v79 = sub_269457C78(MEMORY[0x277D84F90]);
  v7 = sub_269457C78(v6);
  v0[2] = v6;
  if (!(v5 >> 62))
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

LABEL_68:
    v73 = MEMORY[0x277D84F90];
LABEL_69:
    v0[9] = v73;
    v0[10] = v79;

    v63 = swift_task_alloc();
    v0[11] = v63;
    *v63 = v0;
    v63[1] = sub_2694525D4;
    v64 = v0[5];

    return sub_26945284C(v79, v73);
  }

LABEL_67:
  v62 = v7;
  result = sub_26945CE78();
  v7 = v62;
  if (!result)
  {
    goto LABEL_68;
  }

LABEL_5:
  v9 = 0;
  v78 = 0;
  v69 = v5 & 0xC000000000000001;
  v65 = v5 + 32;
  v66 = v5 & 0xFFFFFFFFFFFFFF8;
  v73 = MEMORY[0x277D84F90];
  v75 = v0;
  v67 = result;
  v68 = v5;
  while (1)
  {
    v81 = v7;
    if (v69)
    {
      MEMORY[0x26D63D7F0](v9, v5);
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_66;
      }
    }

    else
    {
      if (v9 >= *(v66 + 16))
      {
        __break(1u);
        return result;
      }

      v11 = *(v65 + 8 * v9);

      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }
    }

    v70 = v10;
    v74 = v9;
    v12 = sub_26945CB88();
    v13 = v12;
    if (v12 >> 62)
    {
      break;
    }

    v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_15;
    }

LABEL_6:

    v9 = v70;
    v5 = v68;
    v7 = v81;
    if (v70 == v67)
    {
      goto LABEL_69;
    }
  }

  v14 = sub_26945CE78();
  if (!v14)
  {
    goto LABEL_6;
  }

LABEL_15:
  v5 = 0;
  v80 = v13 & 0xC000000000000001;
  v71 = v13 & 0xFFFFFFFFFFFFFF8;
  v76 = v13;
  v77 = v14;
  while (1)
  {
    if (v80)
    {
      MEMORY[0x26D63D7F0](v5, v13);
      v15 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_59;
      }
    }

    else
    {
      if (v5 >= *(v71 + 16))
      {
        goto LABEL_63;
      }

      v16 = *(v13 + 8 * v5 + 32);

      v15 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }
    }

    v17 = sub_26945CC08();

    if ((v17 & 1) == 0)
    {
      v31 = sub_26945CC68();
      v32 = sub_26945CDA8();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v82 = v34;
        *v33 = 136315138;
        v35 = sub_26945CC18();
        v37 = sub_269455F28(v35, v36, &v82);

        *(v33 + 4) = v37;
        v0 = v75;
        v13 = v76;
        _os_log_impl(&dword_26944D000, v31, v32, "Turn: %s has an invalid timestamp", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v34);
        MEMORY[0x26D63DD90](v34, -1, -1);
        v38 = v33;
        v14 = v77;
        MEMORY[0x26D63DD90](v38, -1, -1);
      }

      else
      {
      }

      goto LABEL_17;
    }

    MEMORY[0x26D63D710](v18);
    if (*((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v56 = *((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_26945CD48();
    }

    sub_26945CD58();
    v0 = v0[2];
    v19 = sub_26945CC18();
    v21 = v20;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v82 = v81;
    v24 = sub_2694564E0(v19, v21);
    v25 = *(v81 + 16);
    v7 = (v23 & 1) == 0;
    v26 = v25 + v7;
    if (__OFADD__(v25, v7))
    {
      goto LABEL_60;
    }

    v27 = v23;
    v73 = v0;
    if (*(v81 + 24) < v26)
    {
      sub_269456B48(v26, isUniquelyReferenced_nonNull_native);
      v28 = sub_2694564E0(v19, v21);
      v0 = v79;
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_56;
      }

      v24 = v28;
      goto LABEL_31;
    }

    v0 = v79;
    v30 = v74;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_269457134();
LABEL_31:
      v30 = v74;
    }

    if (v27)
    {

      v81 = v82;
      *(v82[7] + 8 * v24) = v30;
    }

    else
    {
      v39 = v82;
      v40 = &v82[v24 >> 6];
      v7 = v40[8] | (1 << v24);
      v40[8] = v7;
      v41 = (v39[6] + 16 * v24);
      *v41 = v19;
      v41[1] = v21;
      *(v39[7] + 8 * v24) = v30;
      v42 = v39[2];
      v43 = __OFADD__(v42, 1);
      v44 = v42 + 1;
      if (v43)
      {
        goto LABEL_64;
      }

      v81 = v39;
      v39[2] = v44;
    }

    v45 = sub_26945CC18();
    v47 = v46;
    v48 = swift_isUniquelyReferenced_nonNull_native();
    v82 = v0;
    v49 = sub_2694564E0(v45, v47);
    v51 = v0[2];
    v7 = (v50 & 1) == 0;
    v43 = __OFADD__(v51, v7);
    v52 = v51 + v7;
    if (v43)
    {
      goto LABEL_61;
    }

    v53 = v50;
    if (v0[3] < v52)
    {
      break;
    }

    v0 = v78;
    if (v48)
    {
      v14 = v77;
      if (v50)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v57 = v49;
      sub_269457134();
      v49 = v57;
      v14 = v77;
      if (v53)
      {
LABEL_46:
        v55 = v49;

        v79 = v82;
        *(v82[7] + 8 * v55) = v0;

        goto LABEL_51;
      }
    }

LABEL_49:
    v58 = v82;
    v82[(v49 >> 6) + 8] |= 1 << v49;
    v59 = (v58[6] + 16 * v49);
    *v59 = v45;
    v59[1] = v47;
    *(v58[7] + 8 * v49) = v0;

    v60 = v58[2];
    v43 = __OFADD__(v60, 1);
    v61 = v60 + 1;
    if (v43)
    {
      goto LABEL_65;
    }

    v79 = v58;
    v58[2] = v61;
LABEL_51:
    v43 = __OFADD__(v0, 1);
    v78 = (v0 + 1);
    v0 = v75;
    v13 = v76;
    if (v43)
    {
      goto LABEL_62;
    }

LABEL_17:
    ++v5;
    if (v15 == v14)
    {
      goto LABEL_6;
    }
  }

  sub_269456B48(v52, v48);
  v49 = sub_2694564E0(v45, v47);
  if ((v53 & 1) == (v54 & 1))
  {
    v0 = v78;
    v14 = v77;
    if (v53)
    {
      goto LABEL_46;
    }

    goto LABEL_49;
  }

LABEL_56:

  return sub_26945CEE8();
}

uint64_t sub_2694525D4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v7 = sub_2694527D4;
  }

  else
  {
    v8 = v4[9];
    v9 = v4[10];

    v4[13] = a1;
    v7 = sub_26945270C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26945270C()
{
  v1 = v0[13];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  v5 = v0[3];
  sub_26945CA18();
  v6 = sub_26945CA28();
  (*(v3 + 8))(v2, v4);
  v7 = MEMORY[0x277D84F90];
  *v5 = v1;
  v5[1] = v7;
  v5[2] = v6;

  v8 = v0[1];

  return v8();
}

uint64_t sub_2694527D4()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];

  v4 = v0[1];
  v5 = v0[12];

  return v4();
}

uint64_t sub_26945284C(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803173C0, &qword_26945D9F0) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v5 = sub_26945CB78();
  v3[14] = v5;
  v6 = *(v5 - 8);
  v3[15] = v6;
  v7 = *(v6 + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v8 = sub_26945CA08();
  v3[18] = v8;
  v9 = *(v8 - 8);
  v3[19] = v9;
  v10 = *(v9 + 64) + 15;
  v3[20] = swift_task_alloc();
  v11 = sub_26945C958();
  v3[21] = v11;
  v12 = *(v11 - 8);
  v3[22] = v12;
  v13 = *(v12 + 64) + 15;
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_269452A18, 0, 0);
}

uint64_t sub_269452A18()
{
  v150 = v0;
  v1 = *(v0 + 88);
  *(v0 + 48) = sub_269457B48(MEMORY[0x277D84F90]);
  v2 = v0 + 48;
  if (v1 >> 62)
  {
LABEL_102:
    v1 &= 0xFFFFFFFFFFFFFF8uLL;
    if (*(v0 + 88) < 0)
    {
      v140 = *(v0 + 88);
    }

    v3 = sub_26945CE78();
  }

  else
  {
    v1 &= 0xFFFFFFFFFFFFFF8uLL;
    v3 = *(v1 + 16);
  }

  *(v0 + 200) = v1;
  *(v0 + 208) = v3;
  v4 = OBJC_IVAR____TtC19SiriTurnRestatement29SiriTurnRestatementCalculator_logger;
  *(v0 + 216) = OBJC_IVAR____TtC19SiriTurnRestatement29SiriTurnRestatementCalculator_errorMetricSubmitter;
  *(v0 + 224) = v4;
  v5 = OBJC_IVAR____TtC19SiriTurnRestatement29SiriTurnRestatementCalculator_similarityScorer;
  *(v0 + 232) = OBJC_IVAR____TtC19SiriTurnRestatement29SiriTurnRestatementCalculator_sanitizedTextExtractor;
  *(v0 + 240) = v5;
  if (!v3)
  {
    goto LABEL_83;
  }

  v6 = 0;
  v141 = (v2 + 305);
  v143 = v2;
  v142 = (v2 - 32);
  while (1)
  {
LABEL_5:
    v7 = *(v0 + 88);
    if ((v7 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x26D63D7F0](v6);
    }

    else
    {
      if (v6 >= *(*(v0 + 200) + 16))
      {
        goto LABEL_100;
      }

      v8 = *(v7 + 8 * v6 + 32);
    }

    v10 = __OFADD__(v6, 1);
    v11 = v6 + 1;
    *(v0 + 248) = v9;
    *(v0 + 256) = v11;
    if (v10)
    {
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
      goto LABEL_102;
    }

    sub_26945CD68();
    v13 = *(v0 + 184);
    v12 = *(v0 + 192);
    v146 = v11;
    v14 = *(v0 + 168);
    v15 = *(v0 + 176);
    v16 = *(v0 + 152);
    v17 = *(v0 + 160);
    v18 = *(v0 + 144);
    sub_26945CC38();
    sub_26945C928();
    sub_26945C9F8();
    sub_26945C938();
    (*(v16 + 8))(v17, v18);
    v19 = *(v15 + 8);
    v19(v13, v14);
    sub_26945C948();
    *(v0 + 264) = v20;
    v19(v12, v14);
    if ((sub_26945CBE8() & 1) == 0)
    {
      v1 = *(*(v0 + 96) + *(v0 + 216));
      sub_26944E990(0xD000000000000014, 0x800000026945DF90);

      v2 = v143;
      goto LABEL_79;
    }

    v22 = *(v0 + 88);
    v21 = *(v0 + 96);
    v23 = *(v0 + 80);
    v24 = sub_26945CC18();
    v1 = sub_269455310(v24, v25, v23, v22, *(v21 + 24), v21);
    *(v0 + 272) = v1;

    v2 = v143;
    if (v1)
    {
      break;
    }

    v107 = *(v0 + 224);
    v108 = *(v0 + 96);

    v1 = v108 + v107;
    v109 = sub_26945CC68();
    v110 = sub_26945CD98();

    if (!os_log_type_enabled(v109, v110))
    {

      goto LABEL_78;
    }

    v111 = swift_slowAlloc();
    v112 = swift_slowAlloc();
    v149 = v112;
    *v111 = 136315138;
    v113 = sub_26945CC18();
    v1 = v114;
    v115 = sub_269455F28(v113, v114, &v149);

    *(v111 + 4) = v115;
    _os_log_impl(&dword_26944D000, v109, v110, "No consecutive turns after turn %s.", v111, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v112);
    MEMORY[0x26D63DD90](v112, -1, -1);
    MEMORY[0x26D63DD90](v111, -1, -1);

LABEL_79:
    v6 = v146;
    if (v146 == *(v0 + 208))
    {
      goto LABEL_83;
    }
  }

  if (v1 >> 62)
  {
    v26 = sub_26945CE78();
  }

  else
  {
    v26 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v27 = v142;
  *(v0 + 280) = v26;
  if (!v26)
  {

LABEL_78:

    goto LABEL_79;
  }

  v1 = 0;
  do
  {
    v30 = *(v0 + 272);
    if ((v30 & 0xC000000000000001) != 0)
    {
      v31 = MEMORY[0x26D63D7F0](v1);
    }

    else
    {
      if (v1 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_97;
      }

      v31 = *(v30 + 8 * v1 + 32);
    }

    *(v0 + 288) = v31;
    *(v0 + 296) = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

    v32 = *(v0 + 248);
    if (sub_26945CBE8() & 1) != 0 && (sub_26945CBE8())
    {
      v33 = *(*(v0 + 96) + *(v0 + 232));
      v34 = sub_26944F2D4(*(v0 + 248), v31);
      *(v0 + 304) = v35;
      *(v0 + 312) = v36;
      v130 = (*(v0 + 96) + *(v0 + 240));
      v131 = v34;
      v132 = v35;
      v134 = v133;
      v135 = v36;
      *(v0 + 320) = sub_26945CD08();
      *(v0 + 362) = v136;
      v137 = *__swift_project_boxed_opaque_existential_1(v130, v130[3]);
      v138 = *(MEMORY[0x277D04528] + 4);
      v148 = (*MEMORY[0x277D04528] + MEMORY[0x277D04528]);
      v139 = swift_task_alloc();
      *(v0 + 328) = v139;
      *v139 = v0;
      v139[1] = sub_2694536C4;

      return v148(v131, v132, v134, v135);
    }

    sub_26944F7A8();
    v37 = swift_allocError();
    *v38 = 0;
    swift_willThrow();
    *(v0 + 56) = v37;
    v39 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803173C8, &qword_26945D9F8);
    v40 = swift_dynamicCast();
    v41 = *(v0 + 96);
    if (v40)
    {
      v42 = *(v0 + 216);
      MEMORY[0x26D63DC60](v37);
      v43 = *(v0 + 361);
      v44 = *(v41 + v42);
      v45 = 0xD000000000000020;
      v46 = 0xD00000000000001FLL;
      if (v43 != 3)
      {
        v46 = 0xD000000000000044;
      }

      v47 = "rn Text is empty";
      if (v43 != 3)
      {
        v47 = "Failed to embed turn utterances";
      }

      if (v43 != 2)
      {
        v45 = v46;
      }

      v48 = "ASR Turn Text is empty";
      if (v43 != 2)
      {
        v48 = v47;
      }

      v49 = 0xD000000000000016;
      if (!*(v0 + 361))
      {
        v49 = 0xD000000000000014;
      }

      v50 = &xmmword_26945DF90;
      if (*(v0 + 361))
      {
        v50 = "ASR Turn Text is nil";
      }

      if (*(v0 + 361) <= 1u)
      {
        v51 = v49;
      }

      else
      {
        v51 = v45;
      }

      if (*(v0 + 361) <= 1u)
      {
        v52 = v50;
      }

      else
      {
        v52 = v48;
      }

      sub_26944E990(v51, v52 | 0x8000000000000000);

      v53 = *(v2 + 8);
    }

    else
    {
      v54 = *(v0 + 224);
      MEMORY[0x26D63DC60](*(v0 + 56));
      v55 = v37;
      v56 = sub_26945CC68();
      v57 = sub_26945CDA8();
      MEMORY[0x26D63DC60](v37);
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        *v58 = 138412290;
        v60 = v37;
        v61 = _swift_stdlib_bridgeErrorToNSError();
        *(v58 + 4) = v61;
        *v59 = v61;
        _os_log_impl(&dword_26944D000, v56, v57, "Failed to calculate restatement scores: %@", v58, 0xCu);
        sub_269457FA8(v59, &qword_2803173D0, &qword_26945DA00);
        MEMORY[0x26D63DD90](v59, -1, -1);
        MEMORY[0x26D63DD90](v58, -1, -1);
        MEMORY[0x26D63DC60](v37);

        goto LABEL_49;
      }

      v53 = v37;
    }

    MEMORY[0x26D63DC60](v53);
LABEL_49:
    v62 = *(v0 + 248);
    v63 = *(v0 + 104);
    sub_26945CC28();
    v64 = sub_26945C9B8();
    v65 = *(v64 - 8);
    if ((*(v65 + 48))(v63, 1, v64) == 1)
    {
      v28 = *(v0 + 288);
      v29 = *(v0 + 104);

      sub_269457FA8(v29, &qword_2803173C0, &qword_26945D9F0);
      goto LABEL_16;
    }

    v66 = *(v0 + 104);
    v67 = sub_26945C978();
    v69 = v68;
    (*(v65 + 8))(v66, v64);
    v1 = *(v0 + 48);
    if (!*(v1 + 16))
    {
      goto LABEL_53;
    }

    sub_2694564E0(v67, v69);
    if ((v70 & 1) == 0)
    {
      v1 = *v2;
LABEL_53:

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v2 + 16) = v1;
      v72 = sub_2694564E0(v67, v69);
      v74 = *(v1 + 16);
      v75 = (v73 & 1) == 0;
      v10 = __OFADD__(v74, v75);
      v76 = v74 + v75;
      if (v10)
      {
        goto LABEL_98;
      }

      v77 = v73;
      if (*(v1 + 24) >= v76)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v1 = v2 + 16;
          v106 = v72;
          sub_269456F98();
          v72 = v106;
        }
      }

      else
      {
        sub_269456868(v76, isUniquelyReferenced_nonNull_native);
        v1 = *(v2 + 16);
        v72 = sub_2694564E0(v67, v69);
        if ((v77 & 1) != (v78 & 1))
        {

          return sub_26945CEE8();
        }
      }

      v79 = *(v0 + 64);
      v80 = *(v0 + 264);
      if (v77)
      {
        v81 = (v79[7] + 32 * v72);
        v82 = v81[1];
        v83 = v81[3];
        *v81 = v67;
        v81[1] = v69;
        v81[2] = v80;
        v81[3] = MEMORY[0x277D84F90];
      }

      else
      {
        v79[(v72 >> 6) + 8] |= 1 << v72;
        v84 = (v79[6] + 16 * v72);
        *v84 = v67;
        v84[1] = v69;
        v85 = (v79[7] + 32 * v72);
        *v85 = v67;
        v85[1] = v69;
        v85[2] = v80;
        v85[3] = MEMORY[0x277D84F90];
        v86 = v79[2];
        v10 = __OFADD__(v86, 1);
        v87 = v86 + 1;
        if (v10)
        {
          goto LABEL_101;
        }

        v79[2] = v87;
      }

      *v2 = v79;
    }

    v89 = sub_269455A44(v27, v67, v69);
    v90 = *(v0 + 288);
    if (*(v88 + 8))
    {
      v91 = v88;
      v92 = *(v0 + 248);
      v93 = sub_26945CC18();
      v144 = v94;
      v145 = v93;
      v95 = sub_26945CC18();
      v97 = v96;
      *(v2 + 304) = 1;
      *(v2 + 312) = 1;
      v98 = *(v0 + 352);
      v147 = *(v0 + 360);
      v99 = *(v91 + 24);
      v100 = swift_isUniquelyReferenced_nonNull_native();
      *(v91 + 24) = v99;
      if ((v100 & 1) == 0)
      {
        v99 = sub_269455D14(0, *(v99 + 2) + 1, 1, v99);
        *(v91 + 24) = v99;
      }

      v102 = *(v99 + 2);
      v101 = *(v99 + 3);
      if (v102 >= v101 >> 1)
      {
        v99 = sub_269455D14((v101 > 1), v102 + 1, 1, v99);
        *(v91 + 24) = v99;
      }

      v103 = *(v0 + 288);
      *(v99 + 2) = v102 + 1;
      v104 = &v99[64 * v102];
      *(v104 + 4) = v145;
      *(v104 + 5) = v144;
      *(v104 + 6) = v95;
      *(v104 + 7) = v97;
      *(v104 + 8) = 0;
      v104[72] = v98;
      v27 = v142;
      v105 = *v141;
      *(v104 + 19) = *(v141 + 3);
      *(v104 + 73) = v105;
      *(v104 + 10) = 0;
      v104[88] = v147;
      (v89)(v142, 0);

      v2 = v143;
    }

    else
    {
      (v89)(v27, 0);
    }

LABEL_16:
    v1 = *(v0 + 296);
  }

  while (v1 != *(v0 + 280));
  v1 = *(v0 + 272);
  v116 = *(v0 + 248);

  v6 = *(v0 + 256);
  if (v6 != *(v0 + 208))
  {
    goto LABEL_5;
  }

LABEL_83:
  v117 = *v2;
  v118 = *(*v2 + 16);
  if (v118)
  {
    v119 = sub_269455E20(*(*v2 + 16), 0);
    v120 = sub_2694576E0(&v149, v119 + 4, v118, v117);

    result = sub_269458094();
    if (v120 == v118)
    {

      goto LABEL_87;
    }

    __break(1u);
  }

  else
  {
    v122 = *v2;

    v119 = MEMORY[0x277D84F90];
LABEL_87:
    v124 = *(v0 + 184);
    v123 = *(v0 + 192);
    v125 = *(v0 + 160);
    v127 = *(v0 + 128);
    v126 = *(v0 + 136);
    v128 = *(v0 + 104);

    v129 = *(v0 + 8);

    return v129(v119);
  }

  return result;
}

uint64_t sub_2694536C4(uint64_t a1, char a2)
{
  v6 = *v3;
  v7 = *(*v3 + 328);
  v8 = *v3;
  *(*v3 + 336) = v2;

  if (v2)
  {
    v9 = sub_2694544B4;
  }

  else
  {
    *(v6 + 363) = a2;
    *(v6 + 344) = a1;
    v9 = sub_2694537FC;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

void sub_2694537FC()
{
  v169 = v0;
  v1 = v0;
  v164 = (v0 + 16);
  v161 = (v0 + 353);
  v2 = *(v0 + 304);
  v3 = *(v0 + 312);

  v4 = *(v0 + 336);
  v5 = *(v0 + 344);
  v6 = *(v0 + 320);
  v7 = *(v0 + 363);
  v8 = *(v0 + 362);
  v166 = v0;
  while (1)
  {
    v9 = v1[31];
    v10 = v1[13];
    sub_26945CC28();
    v11 = sub_26945C9B8();
    v12 = v1;
    v13 = *(v11 - 8);
    if ((*(v13 + 48))(v10, 1, v11) == 1)
    {
      v14 = v12[36];
      v15 = v12[13];

      sub_269457FA8(v15, &qword_2803173C0, &qword_26945D9F0);
      v1 = v12;
      goto LABEL_26;
    }

    v163 = v7;
    v165 = v6;
    v16 = v12[13];
    v17 = sub_26945C978();
    v19 = v18;
    (*(v13 + 8))(v16, v11);
    v20 = v12[6];
    v1 = v12;
    if (!*(v20 + 16))
    {
      break;
    }

    sub_2694564E0(v17, v19);
    v21 = v164;
    if ((v22 & 1) == 0)
    {
      v20 = v12[6];
      break;
    }

LABEL_18:
    v162 = v5;
    v42 = sub_269455A44(v21, v17, v19);
    v44 = v12[36];
    if (*(v43 + 8))
    {
      v45 = v43;
      v157 = v42;
      v46 = v12[31];
      v47 = sub_26945CC18();
      v159 = v48;
      v160 = v47;
      v49 = sub_26945CC18();
      v158 = v50;
      *(v12 + 352) = v8 & 1;
      *(v12 + 360) = v163 & 1;
      v51 = *(v12 + 352);
      v52 = *(v45 + 24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v45 + 24) = v52;
      v54 = v49;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v52 = sub_269455D14(0, *(v52 + 2) + 1, 1, v52);
        *(v45 + 24) = v52;
      }

      v56 = *(v52 + 2);
      v55 = *(v52 + 3);
      if (v56 >= v55 >> 1)
      {
        v52 = sub_269455D14((v55 > 1), v56 + 1, 1, v52);
        *(v45 + 24) = v52;
      }

      v57 = v166[36];
      *(v52 + 2) = v56 + 1;
      v58 = &v52[64 * v56];
      *(v58 + 4) = v160;
      *(v58 + 5) = v159;
      *(v58 + 6) = v54;
      *(v58 + 7) = v158;
      *(v58 + 8) = v165;
      v58[72] = v51;
      v1 = v166;
      v59 = *v161;
      *(v58 + 19) = *(v161 + 3);
      *(v58 + 73) = v59;
      *(v58 + 10) = v162;
      v58[88] = v163 & 1;
      v157();
    }

    else
    {
      (v42)(v21, 0);
    }

LABEL_26:
    v60 = v1[37];
    if (v60 == v1[35])
    {
      v61 = v1[34];
      v62 = v1[31];

      v63 = v1[32];
      if (v63 == v1[26])
      {
LABEL_85:
        v129 = v1[6];
        v130 = *(v129 + 16);
        if (v130)
        {
          v131 = sub_269455E20(*(v129 + 16), 0);
          v132 = sub_2694576E0(v168, v131 + 4, v130, v129);

          sub_269458094();
          if (v132 != v130)
          {
            goto LABEL_107;
          }

          v1 = v166;
        }

        else
        {
          v140 = v1[6];

          v131 = MEMORY[0x277D84F90];
        }

        v142 = v1[23];
        v141 = v1[24];
        v143 = v1[20];
        v145 = v1[16];
        v144 = v1[17];
        v146 = v1[13];

        v147 = v1[1];

        v147(v131);
        return;
      }

      while (2)
      {
        v66 = v1[11];
        if ((v66 & 0xC000000000000001) != 0)
        {
          v67 = MEMORY[0x26D63D7F0](v63);
        }

        else
        {
          if (v63 >= *(v1[25] + 16))
          {
            goto LABEL_102;
          }

          v67 = *(v66 + 8 * v63 + 32);
        }

        v1[31] = v67;
        v1[32] = v63 + 1;
        if (__OFADD__(v63, 1))
        {
          __break(1u);
LABEL_102:
          __break(1u);
          goto LABEL_103;
        }

        sub_26945CD68();
        v68 = v4;
        v70 = v1[23];
        v69 = v1[24];
        if (v68)
        {
          v133 = v1[20];
          v135 = v1[16];
          v134 = v1[17];
          v136 = v1;
          v137 = v1[13];

          v138 = v136[6];

          v139 = v136[1];

          v139();
          return;
        }

        v71 = v1[21];
        v72 = v1[22];
        v74 = v1[19];
        v73 = v1[20];
        v75 = v166[18];
        sub_26945CC38();
        sub_26945C928();
        sub_26945C9F8();
        sub_26945C938();
        v76 = v75;
        v1 = v166;
        (*(v74 + 8))(v73, v76);
        v77 = *(v72 + 8);
        v77(v70, v71);
        sub_26945C948();
        v166[33] = v78;
        v77(v69, v71);
        if (sub_26945CBE8())
        {
          v80 = v166[11];
          v79 = v166[12];
          v81 = v166[10];
          v82 = sub_26945CC18();
          v84 = sub_269455310(v82, v83, v81, v80, *(v79 + 24), v79);
          v166[34] = v84;

          if (v84)
          {
            if (v84 >> 62)
            {
              v85 = sub_26945CE78();
            }

            else
            {
              v85 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v65 = v63 + 1;
            v166[35] = v85;
            if (v85)
            {
              v4 = 0;
              v60 = 0;
              break;
            }

            goto LABEL_32;
          }

          v86 = v166[28];
          v87 = v166[12];

          v88 = sub_26945CC68();
          v89 = sub_26945CD98();

          if (os_log_type_enabled(v88, v89))
          {
            v90 = swift_slowAlloc();
            v91 = swift_slowAlloc();
            v168[0] = v91;
            *v90 = 136315138;
            v92 = sub_26945CC18();
            v94 = sub_269455F28(v92, v93, v168);

            *(v90 + 4) = v94;
            v1 = v166;
            _os_log_impl(&dword_26944D000, v88, v89, "No consecutive turns after turn %s.", v90, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v91);
            MEMORY[0x26D63DD90](v91, -1, -1);
            MEMORY[0x26D63DD90](v90, -1, -1);

            goto LABEL_31;
          }
        }

        else
        {
          v64 = *(v166[12] + v166[27]);
          sub_26944E990(0xD000000000000014, 0x800000026945DF90);
        }

LABEL_31:
        v65 = v63 + 1;
LABEL_32:
        v4 = 0;
        ++v63;
        if (v65 == v1[26])
        {
          goto LABEL_85;
        }

        continue;
      }
    }

    v95 = v1[34];
    if ((v95 & 0xC000000000000001) != 0)
    {
      v96 = MEMORY[0x26D63D7F0](v60);
    }

    else
    {
      if (v60 >= *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_105;
      }

      v96 = *(v95 + 8 * v60 + 32);
    }

    v1[36] = v96;
    v1[37] = v60 + 1;
    if (__OFADD__(v60, 1))
    {
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
LABEL_107:
      __break(1u);
      return;
    }

    v97 = v1[31];
    if (sub_26945CBE8() & 1) != 0 && (sub_26945CBE8())
    {
      v98 = *(v1[12] + v1[29]);
      v99 = sub_26944F2D4(v1[31], v96);
      v103 = v4;
      v1[38] = v100;
      v1[39] = v102;
      if (!v4)
      {
        v148 = (v1[12] + v1[30]);
        v149 = v99;
        v150 = v100;
        v151 = v101;
        v152 = v102;
        v1[40] = sub_26945CD08();
        *(v1 + 362) = v153;
        v154 = *__swift_project_boxed_opaque_existential_1(v148, v148[3]);
        v155 = *(MEMORY[0x277D04528] + 4);
        v167 = (*MEMORY[0x277D04528] + MEMORY[0x277D04528]);
        v156 = swift_task_alloc();
        v1[41] = v156;
        *v156 = v1;
        v156[1] = sub_2694536C4;

        v167(v149, v150, v151, v152);
        return;
      }
    }

    else
    {
      sub_26944F7A8();
      v103 = swift_allocError();
      *v104 = 0;
      swift_willThrow();
    }

    v1[7] = v103;
    v105 = v103;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803173C8, &qword_26945D9F8);
    v106 = swift_dynamicCast();
    v107 = v1[12];
    if (v106)
    {
      v108 = v1[27];
      MEMORY[0x26D63DC60](v103);
      v109 = *(v1 + 361);
      v110 = *(v107 + v108);
      v111 = 0xD000000000000020;
      v112 = 0xD00000000000001FLL;
      if (v109 != 3)
      {
        v112 = 0xD000000000000044;
      }

      v113 = "rn Text is empty";
      if (v109 != 3)
      {
        v113 = "Failed to embed turn utterances";
      }

      if (v109 != 2)
      {
        v111 = v112;
      }

      v114 = "ASR Turn Text is empty";
      if (v109 != 2)
      {
        v114 = v113;
      }

      v115 = 0xD000000000000016;
      if (!*(v1 + 361))
      {
        v115 = 0xD000000000000014;
      }

      v116 = &xmmword_26945DF90;
      if (*(v1 + 361))
      {
        v116 = "ASR Turn Text is nil";
      }

      if (*(v1 + 361) <= 1u)
      {
        v117 = v115;
      }

      else
      {
        v117 = v111;
      }

      if (*(v1 + 361) <= 1u)
      {
        v118 = v116;
      }

      else
      {
        v118 = v114;
      }

      sub_26944E990(v117, v118 | 0x8000000000000000);

      v119 = v1[7];
    }

    else
    {
      v120 = v1[28];
      MEMORY[0x26D63DC60](v1[7]);
      v121 = v103;
      v122 = sub_26945CC68();
      v123 = sub_26945CDA8();
      MEMORY[0x26D63DC60](v103);
      if (os_log_type_enabled(v122, v123))
      {
        v124 = swift_slowAlloc();
        v125 = swift_slowAlloc();
        *v124 = 138412290;
        v126 = v103;
        v127 = _swift_stdlib_bridgeErrorToNSError();
        *(v124 + 4) = v127;
        *v125 = v127;
        _os_log_impl(&dword_26944D000, v122, v123, "Failed to calculate restatement scores: %@", v124, 0xCu);
        sub_269457FA8(v125, &qword_2803173D0, &qword_26945DA00);
        MEMORY[0x26D63DD90](v125, -1, -1);
        MEMORY[0x26D63DD90](v124, -1, -1);
        MEMORY[0x26D63DC60](v103);

        goto LABEL_84;
      }

      v119 = v103;
    }

    MEMORY[0x26D63DC60](v119);
LABEL_84:
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 1;
    v8 = 1;
  }

  v23 = swift_isUniquelyReferenced_nonNull_native();
  v12[8] = v20;
  v24 = sub_2694564E0(v17, v19);
  v26 = *(v20 + 16);
  v27 = (v25 & 1) == 0;
  v28 = __OFADD__(v26, v27);
  v29 = v26 + v27;
  if (v28)
  {
    goto LABEL_104;
  }

  v30 = v25;
  if (*(v20 + 24) >= v29)
  {
    if ((v23 & 1) == 0)
    {
      v128 = v24;
      sub_269456F98();
      v24 = v128;
    }

    goto LABEL_13;
  }

  sub_269456868(v29, v23);
  v31 = v12[8];
  v24 = sub_2694564E0(v17, v19);
  if ((v30 & 1) == (v32 & 1))
  {
LABEL_13:
    v33 = v12[8];
    v34 = v12[33];
    if (v30)
    {
      v35 = (v33[7] + 32 * v24);
      v36 = v35[1];
      v37 = v35[3];
      *v35 = v17;
      v35[1] = v19;
      v35[2] = v34;
      v35[3] = MEMORY[0x277D84F90];
    }

    else
    {
      v33[(v24 >> 6) + 8] |= 1 << v24;
      v38 = (v33[6] + 16 * v24);
      *v38 = v17;
      v38[1] = v19;
      v39 = (v33[7] + 32 * v24);
      *v39 = v17;
      v39[1] = v19;
      v39[2] = v34;
      v39[3] = MEMORY[0x277D84F90];
      v40 = v33[2];
      v28 = __OFADD__(v40, 1);
      v41 = v40 + 1;
      if (v28)
      {
        goto LABEL_106;
      }

      v33[2] = v41;
    }

    v12[6] = v33;
    v21 = v164;
    goto LABEL_18;
  }

  sub_26945CEE8();
}

void sub_2694544B4()
{
  v179 = v0;
  v1 = *(v0 + 336);
  *(v0 + 72) = v1;
  v169 = (v0 + 48);
  v171 = (v0 + 16);
  v172 = (v0 + 56);
  v168 = (v0 + 64);
  v2 = *(v0 + 136);
  v3 = *(v0 + 112);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803173C8, &qword_26945D9F8);
  v5 = swift_dynamicCast();
  v6 = *(v0 + 336);
  if (v5)
  {
    v7 = *(v0 + 128);
    v8 = *(v0 + 136);
    v9 = *(v0 + 112);
    v10 = *(v0 + 120);
    MEMORY[0x26D63DC60](*(v0 + 336));
    (*(v10 + 32))(v7, v8, v9);
    sub_26945CB68();
    v11 = sub_26945B694();
    if (v11 == 5)
    {
      v13 = *(v0 + 120);
      v12 = *(v0 + 128);
      v14 = *(v0 + 112);
      sub_26945804C(&qword_2803173D8, MEMORY[0x277D04508]);
      v6 = swift_allocError();
      (*(v13 + 16))(v15, v12, v14);
    }

    else
    {
      v16 = v11;
      sub_26944F7A8();
      v6 = swift_allocError();
      *v17 = v16;
    }

    v19 = *(v0 + 120);
    v18 = *(v0 + 128);
    v20 = *(v0 + 112);
    swift_willThrow();
    (*(v19 + 8))(v18, v20);
  }

  v166 = (v0 + 353);
  v21 = *(v0 + 304);
  v22 = *(v0 + 312);
  MEMORY[0x26D63DC60](*(v0 + 72));

  v23 = *(v0 + 320);
  v24 = *(v0 + 362);
  v167 = v0;
  v170 = v0 + 72;
  while (1)
  {
    v175 = v23;
    *(v0 + 56) = v6;
    v25 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803173C8, &qword_26945D9F8);
    v26 = swift_dynamicCast();
    v27 = *(v0 + 96);
    if (v26)
    {
      v28 = *(v0 + 216);
      MEMORY[0x26D63DC60](v6);
      v29 = *(v0 + 361);
      v30 = *(v27 + v28);
      v31 = 0xD000000000000020;
      v32 = 0xD00000000000001FLL;
      if (v29 != 3)
      {
        v32 = 0xD000000000000044;
      }

      v33 = "rn Text is empty";
      if (v29 != 3)
      {
        v33 = "Failed to embed turn utterances";
      }

      if (v29 != 2)
      {
        v31 = v32;
      }

      v34 = "ASR Turn Text is empty";
      if (v29 != 2)
      {
        v34 = v33;
      }

      v35 = 0xD000000000000016;
      if (!*(v0 + 361))
      {
        v35 = 0xD000000000000014;
      }

      v36 = &xmmword_26945DF90;
      if (*(v0 + 361))
      {
        v36 = "ASR Turn Text is nil";
      }

      v37 = *(v0 + 361) <= 1u ? v35 : v31;
      v38 = *(v0 + 361) <= 1u ? v36 : v34;
      sub_26944E990(v37, v38 | 0x8000000000000000);

      v39 = *v172;
    }

    else
    {
      v40 = *(v0 + 224);
      MEMORY[0x26D63DC60](*(v0 + 56));
      v41 = v6;
      v42 = sub_26945CC68();
      v43 = sub_26945CDA8();
      MEMORY[0x26D63DC60](v6);
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *v44 = 138412290;
        v46 = v6;
        v47 = _swift_stdlib_bridgeErrorToNSError();
        *(v44 + 4) = v47;
        *v45 = v47;
        _os_log_impl(&dword_26944D000, v42, v43, "Failed to calculate restatement scores: %@", v44, 0xCu);
        sub_269457FA8(v45, &qword_2803173D0, &qword_26945DA00);
        MEMORY[0x26D63DD90](v45, -1, -1);
        MEMORY[0x26D63DD90](v44, -1, -1);
        MEMORY[0x26D63DC60](v6);

        goto LABEL_31;
      }

      v39 = v6;
    }

    MEMORY[0x26D63DC60](v39);
LABEL_31:
    v48 = *(v0 + 248);
    v49 = *(v0 + 104);
    sub_26945CC28();
    v50 = sub_26945C9B8();
    v51 = *(v50 - 8);
    if ((*(v51 + 48))(v49, 1, v50) == 1)
    {
      v52 = *(v0 + 288);
      v53 = *(v0 + 104);

      sub_269457FA8(v53, &qword_2803173C0, &qword_26945D9F0);
      goto LABEL_54;
    }

    v54 = *(v0 + 104);
    v55 = sub_26945C978();
    v57 = v56;
    (*(v51 + 8))(v54, v50);
    v58 = *(v0 + 48);
    if (!*(v58 + 16))
    {
      goto LABEL_36;
    }

    sub_2694564E0(v55, v57);
    v59 = v171;
    if ((v60 & 1) == 0)
    {
      v58 = *v169;
LABEL_36:

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v168 = v58;
      v62 = sub_2694564E0(v55, v57);
      v64 = *(v58 + 16);
      v65 = (v63 & 1) == 0;
      v66 = __OFADD__(v64, v65);
      v67 = v64 + v65;
      if (v66)
      {
        goto LABEL_101;
      }

      v68 = v63;
      if (*(v58 + 24) >= v67)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v141 = v62;
          sub_269456F98();
          v62 = v141;
        }
      }

      else
      {
        sub_269456868(v67, isUniquelyReferenced_nonNull_native);
        v69 = *v168;
        v62 = sub_2694564E0(v55, v57);
        if ((v68 & 1) != (v70 & 1))
        {

          sub_26945CEE8();
          return;
        }
      }

      v71 = *(v0 + 64);
      v72 = *(v0 + 264);
      if (v68)
      {
        v73 = (v71[7] + 32 * v62);
        v74 = v73[1];
        v75 = v73[3];
        *v73 = v55;
        v73[1] = v57;
        v73[2] = v72;
        v73[3] = MEMORY[0x277D84F90];
      }

      else
      {
        v71[(v62 >> 6) + 8] |= 1 << v62;
        v76 = (v71[6] + 16 * v62);
        *v76 = v55;
        v76[1] = v57;
        v77 = (v71[7] + 32 * v62);
        *v77 = v55;
        v77[1] = v57;
        v77[2] = v72;
        v77[3] = MEMORY[0x277D84F90];
        v78 = v71[2];
        v66 = __OFADD__(v78, 1);
        v79 = v78 + 1;
        if (v66)
        {
          goto LABEL_103;
        }

        v71[2] = v79;
      }

      *v169 = v71;
      v59 = v171;
    }

    v80 = sub_269455A44(v59, v55, v57);
    v82 = *(v0 + 288);
    if (*(v81 + 8))
    {
      v83 = v81;
      v165 = v80;
      v84 = *(v0 + 248);
      v85 = sub_26945CC18();
      v173 = v86;
      v87 = sub_26945CC18();
      v89 = v88;
      *(v170 + 280) = v24 & 1;
      *(v170 + 288) = 1;
      v164 = *(v0 + 352);
      v90 = *(v0 + 360);
      v91 = *(v83 + 24);
      v92 = swift_isUniquelyReferenced_nonNull_native();
      *(v83 + 24) = v91;
      v93 = v85;
      if ((v92 & 1) == 0)
      {
        v91 = sub_269455D14(0, *(v91 + 2) + 1, 1, v91);
        *(v83 + 24) = v91;
      }

      v95 = *(v91 + 2);
      v94 = *(v91 + 3);
      if (v95 >= v94 >> 1)
      {
        v91 = sub_269455D14((v94 > 1), v95 + 1, 1, v91);
        *(v83 + 24) = v91;
      }

      v0 = v167;
      v96 = *(v167 + 288);
      *(v91 + 2) = v95 + 1;
      v97 = &v91[64 * v95];
      *(v97 + 4) = v93;
      *(v97 + 5) = v173;
      *(v97 + 6) = v87;
      *(v97 + 7) = v89;
      *(v97 + 8) = v175;
      v97[72] = v164;
      v98 = *v166;
      *(v97 + 19) = *(v166 + 3);
      *(v97 + 73) = v98;
      *(v97 + 10) = 0;
      v97[88] = v90;
      v165();
    }

    else
    {
      (v80)(v59, 0);
    }

LABEL_54:
    v99 = *(v0 + 296);
    if (v99 == *(v0 + 280))
    {
      break;
    }

LABEL_76:
    v133 = *(v0 + 272);
    if ((v133 & 0xC000000000000001) != 0)
    {
      v134 = MEMORY[0x26D63D7F0](v99);
    }

    else
    {
      if (v99 >= *((v133 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_102;
      }

      v134 = *(v133 + 8 * v99 + 32);
    }

    *(v0 + 288) = v134;
    *(v0 + 296) = v99 + 1;
    if (__OFADD__(v99, 1))
    {
      goto LABEL_100;
    }

    v135 = *(v0 + 248);
    if (sub_26945CBE8() & 1) != 0 && (sub_26945CBE8())
    {
      v136 = *(*(v0 + 96) + *(v0 + 232));
      v137 = sub_26944F2D4(*(v0 + 248), v134);
      *(v0 + 304) = v138;
      *(v0 + 312) = v139;
      v154 = (*(v0 + 96) + *(v0 + 240));
      v155 = v137;
      v156 = v138;
      v158 = v157;
      v159 = v139;
      *(v0 + 320) = sub_26945CD08();
      *(v0 + 362) = v160;
      v161 = *__swift_project_boxed_opaque_existential_1(v154, v154[3]);
      v162 = *(MEMORY[0x277D04528] + 4);
      v177 = (*MEMORY[0x277D04528] + MEMORY[0x277D04528]);
      v163 = swift_task_alloc();
      *(v0 + 328) = v163;
      *v163 = v0;
      v163[1] = sub_2694536C4;

      v177(v155, v156, v158, v159);
      return;
    }

    sub_26944F7A8();
    v6 = swift_allocError();
    *v140 = 0;
    swift_willThrow();
    v23 = 0;
    v24 = 1;
  }

  v100 = *(v0 + 272);
  v101 = *(v0 + 248);

  v102 = *(v0 + 256);
  if (v102 != *(v0 + 208))
  {
    while (1)
    {
      v106 = *(v0 + 88);
      if ((v106 & 0xC000000000000001) != 0)
      {
        v107 = MEMORY[0x26D63D7F0](v102);
      }

      else
      {
        if (v102 >= *(*(v0 + 200) + 16))
        {
          goto LABEL_99;
        }

        v107 = *(v106 + 8 * v102 + 32);
      }

      *(v0 + 248) = v107;
      *(v0 + 256) = v102 + 1;
      if (__OFADD__(v102, 1))
      {
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
        return;
      }

      sub_26945CD68();
      v109 = *(v0 + 184);
      v108 = *(v0 + 192);
      v174 = v102 + 1;
      v176 = v102;
      v110 = *(v0 + 168);
      v111 = *(v0 + 176);
      v113 = *(v0 + 152);
      v112 = *(v0 + 160);
      v114 = *(v0 + 144);
      sub_26945CC38();
      sub_26945C928();
      sub_26945C9F8();
      sub_26945C938();
      (*(v113 + 8))(v112, v114);
      v115 = *(v111 + 8);
      v115(v109, v110);
      sub_26945C948();
      *(v0 + 264) = v116;
      v115(v108, v110);
      if ((sub_26945CBE8() & 1) == 0)
      {
        break;
      }

      v118 = *(v0 + 88);
      v117 = *(v0 + 96);
      v119 = *(v0 + 80);
      v120 = sub_26945CC18();
      v122 = sub_269455310(v120, v121, v119, v118, *(v117 + 24), v117);
      *(v0 + 272) = v122;

      if (!v122)
      {
        v124 = *(v0 + 224);
        v125 = *(v0 + 96);

        v126 = sub_26945CC68();
        v127 = sub_26945CD98();

        v104 = v174;
        if (os_log_type_enabled(v126, v127))
        {
          v128 = swift_slowAlloc();
          v129 = swift_slowAlloc();
          v178[0] = v129;
          *v128 = 136315138;
          v130 = sub_26945CC18();
          v132 = sub_269455F28(v130, v131, v178);

          *(v128 + 4) = v132;
          _os_log_impl(&dword_26944D000, v126, v127, "No consecutive turns after turn %s.", v128, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v129);
          MEMORY[0x26D63DD90](v129, -1, -1);
          MEMORY[0x26D63DD90](v128, -1, -1);
        }

        else
        {
        }

        goto LABEL_58;
      }

      if (v122 >> 62)
      {
        v123 = sub_26945CE78();
      }

      else
      {
        v123 = *((v122 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v105 = v176;
      *(v0 + 280) = v123;
      if (v123)
      {
        v99 = 0;
        goto LABEL_76;
      }

      v104 = v174;
LABEL_59:
      v102 = v105 + 1;
      if (v104 == *(v0 + 208))
      {
        goto LABEL_85;
      }
    }

    v103 = *(*(v0 + 96) + *(v0 + 216));
    sub_26944E990(0xD000000000000014, 0x800000026945DF90);

    v104 = v174;
LABEL_58:
    v105 = v176;
    goto LABEL_59;
  }

LABEL_85:
  v142 = *v169;
  v143 = *(*v169 + 16);
  if (v143)
  {
    v144 = sub_269455E20(*(*v169 + 16), 0);
    v145 = sub_2694576E0(v178, v144 + 4, v143, v142);

    sub_269458094();
    if (v145 != v143)
    {
      goto LABEL_104;
    }

    v0 = v167;
  }

  else
  {
    v146 = *v169;

    v144 = MEMORY[0x277D84F90];
  }

  v148 = *(v0 + 184);
  v147 = *(v0 + 192);
  v149 = *(v0 + 160);
  v151 = *(v0 + 128);
  v150 = *(v0 + 136);
  v152 = *(v0 + 104);

  v153 = *(v0 + 8);

  v153(v144);
}

uint64_t sub_269455310(uint64_t a1, unint64_t a2, unint64_t *a3, unint64_t a4, void *a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803173C0, &qword_26945D9F0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v64 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v54 - v16;
  v18 = sub_26945C9B8();
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18);
  MEMORY[0x28223BE20](v20);
  v24 = &v54 - v23;
  v25 = a4 >> 62;
  if (a4 >> 62)
  {
    goto LABEL_73;
  }

  v26 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v26)
  {
    return 0;
  }

  while (2)
  {
    if (!a3[2])
    {
      return 0;
    }

    v62 = v22;
    v63 = v24;
    v57 = v21;
    v27 = sub_2694564E0(a1, a2);
    if ((v28 & 1) == 0)
    {
      return 0;
    }

    v60 = a5;
    a2 = *(a3[7] + 8 * v27);
    v29 = a4 & 0xC000000000000001;
    if ((a4 & 0xC000000000000001) != 0)
    {
      goto LABEL_76;
    }

    if ((a2 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (a2 < *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      a3 = *(a4 + 8 * a2 + 32);

      if ((sub_26945CBE8() & 1) == 0)
      {
        goto LABEL_77;
      }

      goto LABEL_9;
    }

    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    do
    {
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      v38 = sub_26945CE78();
LABEL_40:
      v39 = v60;
      v40 = v62;
      if (v38 < 1)
      {
        v41 = MEMORY[0x277D84F90];
LABEL_71:

        return v41;
      }

      v26 = 0;
      v61 = (v62 + 48);
      v62 = a4 & 0xC000000000000001;
      v56 = (v40 + 32);
      v54 = (v40 + 8);
      v41 = MEMORY[0x277D84F90];
      v58 = v38;
      v55 = a6;
      while (1)
      {
        if (v41 >> 62)
        {
          if (sub_26945CE78() >= v39)
          {
            goto LABEL_71;
          }
        }

        else if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v39)
        {
          goto LABEL_71;
        }

        v29 = a4 + 8 * v26;
        if (!v62)
        {
          break;
        }

        MEMORY[0x26D63D7F0](v26, a4);
LABEL_47:
        v25 = v59;
        sub_26945CC38();
        v44 = v43;
        sub_26945CC38();
        v46 = v45;

        if (*(a6 + 16) < vabdd_f64(v44, v46))
        {
          goto LABEL_71;
        }

        sub_26945CC28();
        a2 = *v61;
        if ((*v61)(v17, 1, v18) == 1)
        {
          sub_269457FA8(v17, &qword_2803173C0, &qword_26945D9F0);
        }

        else
        {
          v47 = *v56;
          (*v56)(v63, v17, v18);
          if (v62)
          {
            MEMORY[0x26D63D7F0](v26, a4);
          }

          else
          {
            v48 = *(v29 + 32);
          }

          v25 = v64;
          sub_26945CC28();

          if ((a2)(v25, 1, v18) == 1)
          {
            (*v54)(v63, v18);
            sub_269457FA8(v25, &qword_2803173C0, &qword_26945D9F0);
          }

          else
          {
            a2 = v57;
            v47(v57, v25, v18);
            v25 = v63;
            if (sub_26945C998())
            {
              a6 = v55;
              if (v62)
              {
                a2 = MEMORY[0x26D63D7F0](v26, a4);
              }

              else
              {
                a2 = *(v29 + 32);
              }

              MEMORY[0x26D63D710]();
              v39 = v60;
              if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v51 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_26945CD48();
                v39 = v60;
              }

              sub_26945CD58();
              v25 = v54;
              v50 = *v54;
              (*v54)(v57, v18);
              v50(v63, v18);
              v41 = v65;
              goto LABEL_61;
            }

            v49 = *v54;
            (*v54)(a2, v18);
            v49(v25, v18);
          }

          a6 = v55;
        }

        v39 = v60;
LABEL_61:
        if (v58 == ++v26)
        {
          goto LABEL_71;
        }
      }

      if (v26 < *(a4 + 16))
      {
        v42 = *(v29 + 32);

        goto LABEL_47;
      }

      __break(1u);
LABEL_76:
      a3 = MEMORY[0x26D63D7F0](a2, a4);
      if ((sub_26945CBE8() & 1) == 0)
      {
LABEL_77:

        return 0;
      }

LABEL_9:
      v59 = a3;
      a1 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        goto LABEL_82;
      }

      if (v26 < a1)
      {
        goto LABEL_83;
      }

      if (v25)
      {
        v30 = sub_26945CE78();
      }

      else
      {
        v30 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    while (v30 < a1);
    if (a1 < 0)
    {
      goto LABEL_85;
    }

    if (v25)
    {
      result = sub_26945CE78();
    }

    else
    {
      result = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (result < v26)
    {
      goto LABEL_86;
    }

    if (!v29 || a1 == v26)
    {

      if (!v25)
      {
        goto LABEL_26;
      }

      goto LABEL_28;
    }

    if (a1 < v26)
    {
      a3 = sub_26945CC48();

      v32 = a2 + 1;
      do
      {
        v33 = v32 + 1;
        sub_26945CE08();
        v32 = v33;
      }

      while (v26 != v33);
      if (!v25)
      {
LABEL_26:
        a2 = (a4 & 0xFFFFFFFFFFFFFF8) + 32;
        goto LABEL_29;
      }

LABEL_28:

      sub_26945CE88();
      a2 = v34;
      a1 = v35;
      v26 = v36 >> 1;
LABEL_29:
      a5 = MEMORY[0x277D84F90];
      v65 = MEMORY[0x277D84F90];
      v37 = swift_unknownObjectRetain();
      a4 = a5;
      if (a1 != v26)
      {
        v61 = v37;
        while (a1 < v26)
        {
          a4 = *(a2 + 8 * a1);

          a3 = a4;
          if (sub_26945CBE8())
          {
            a3 = &v65;
            sub_26945CE38();
            v25 = *(v65 + 16);
            sub_26945CE58();
            sub_26945CE68();
            sub_26945CE48();
          }

          else
          {
          }

          if (v26 == ++a1)
          {
            a4 = v65;
            goto LABEL_37;
          }
        }

        __break(1u);
LABEL_73:
        v57 = v21;
        v63 = v24;
        v52 = v22;
        v53 = sub_26945CE78();
        v22 = v52;
        v26 = v53;
        v24 = v63;
        v21 = v57;
        if (!v53)
        {
          return 0;
        }

        continue;
      }

LABEL_37:
      swift_unknownObjectRelease_n();
      v65 = a5;
      if ((a4 & 0x8000000000000000) != 0 || (a4 & 0x4000000000000000) != 0)
      {
        goto LABEL_87;
      }

      v38 = *(a4 + 16);
      goto LABEL_40;
    }

    break;
  }

  __break(1u);
  return result;
}

void (*sub_269455A44(uint64_t **a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_26945729C(v6, a2, a3);
  return sub_269455ACC;
}

void sub_269455ACC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t SiriTurnRestatementCalculator.deinit()
{
  v1 = OBJC_IVAR____TtC19SiriTurnRestatement29SiriTurnRestatementCalculator_logger;
  v2 = sub_26945CC88();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC19SiriTurnRestatement29SiriTurnRestatementCalculator_calendar;
  v4 = sub_26945CA08();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC19SiriTurnRestatement29SiriTurnRestatementCalculator_bookmarkService);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC19SiriTurnRestatement29SiriTurnRestatementCalculator_similarityScorer));
  v6 = *(v0 + OBJC_IVAR____TtC19SiriTurnRestatement29SiriTurnRestatementCalculator_sanitizedTextExtractor);

  v7 = *(v0 + OBJC_IVAR____TtC19SiriTurnRestatement29SiriTurnRestatementCalculator_errorMetricSubmitter);

  return v0;
}

uint64_t SiriTurnRestatementCalculator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC19SiriTurnRestatement29SiriTurnRestatementCalculator_logger;
  v2 = sub_26945CC88();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC19SiriTurnRestatement29SiriTurnRestatementCalculator_calendar;
  v4 = sub_26945CA08();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC19SiriTurnRestatement29SiriTurnRestatementCalculator_bookmarkService);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC19SiriTurnRestatement29SiriTurnRestatementCalculator_similarityScorer));
  v6 = *(v0 + OBJC_IVAR____TtC19SiriTurnRestatement29SiriTurnRestatementCalculator_sanitizedTextExtractor);

  v7 = *(v0 + OBJC_IVAR____TtC19SiriTurnRestatement29SiriTurnRestatementCalculator_errorMetricSubmitter);

  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

char *sub_269455D14(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803173F0, &qword_26945DA18);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_269455E20(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803173E0, &qword_26945DA08);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

uint64_t sub_269455ECC(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_269455F28(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_269455F28(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_269455FF4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_269457F48(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_269455FF4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_269456100(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = sub_26945CE28();
    a6 = v11;
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

uint64_t sub_269456100(uint64_t a1, unint64_t a2)
{
  v4 = sub_26945614C(a1, a2);
  sub_26945627C(&unk_2879F9850);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_26945614C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_269456368(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_26945CE28();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_26945CD28();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_269456368(v10, 0);
        result = sub_26945CDF8();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_26945627C(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_2694563DC(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_269456368(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803173B8, &qword_26945D9E8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2694563DC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803173B8, &qword_26945D9E8);
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
    if (v10 != a4 || v12 >= &v13[v8])
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

_BYTE **sub_2694564D0(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

unint64_t sub_2694564E0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_26945CF48();
  sub_26945CD18();
  v6 = sub_26945CF68();

  return sub_2694565F0(a1, a2, v6);
}

unint64_t sub_269456558(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_26945C9D8();
  sub_26945804C(&qword_280317388, MEMORY[0x277CC9640]);
  v5 = sub_26945CCA8();

  return sub_2694566A8(a1, v5);
}

unint64_t sub_2694565F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_26945CED8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2694566A8(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_26945C9D8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_26945804C(&qword_280317390, MEMORY[0x277CC9640]);
      v16 = sub_26945CCC8();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t sub_269456868(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803173E8, &qword_26945DA10);
  v40 = a2;
  result = sub_26945CEA8();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = v23[1];
      v25 = (*(v5 + 56) + 32 * v22);
      v26 = v25[1];
      v41 = *v25;
      v42 = *v23;
      v27 = v25[2];
      v28 = v25[3];
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_26945CF48();
      sub_26945CD18();
      result = sub_26945CF68();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v42;
      v17[1] = v24;
      v18 = (*(v8 + 56) + 32 * v16);
      *v18 = v41;
      v18[1] = v26;
      v18[2] = v27;
      v18[3] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_269456B48(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803173B0, &qword_26945D9E0);
  v38 = a2;
  result = sub_26945CEA8();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_26945CF48();
      sub_26945CD18();
      result = sub_26945CF68();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_269456DE8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26945CDE8() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_26945CF48();

      sub_26945CD18();
      v14 = sub_26945CF68();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_269456F98()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803173E8, &qword_26945DA10);
  v2 = *v0;
  v3 = sub_26945CE98();
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 32;
        v22 = (*(v2 + 56) + v17);
        v23 = *v22;
        v24 = v22[1];
        v25 = v22[2];
        v26 = v22[3];
        v27 = (*(v4 + 48) + v18);
        *v27 = v21;
        v27[1] = v20;
        v28 = (*(v4 + 56) + v17);
        *v28 = v23;
        v28[1] = v24;
        v28[2] = v25;
        v28[3] = v26;
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

void *sub_269457134()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803173B0, &qword_26945D9E0);
  v2 = *v0;
  v3 = sub_26945CE98();
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

void (*sub_26945729C(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = sub_2694576AC(v8);
  v8[9] = sub_2694573A8(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_269457348;
}

void sub_269457348(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_2694573A8(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, char a2)
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x48uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[5] = a3;
  v10[6] = v4;
  v10[4] = a2;
  v12 = *v4;
  v13 = sub_2694564E0(a2, a3);
  *(v11 + 64) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_269456F98();
      v13 = v21;
      goto LABEL_11;
    }

    sub_269456868(v18, a4 & 1);
    v22 = *v5;
    v13 = sub_2694564E0(a2, a3);
    if ((v19 & 1) == (v23 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_26945CEE8();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[7] = v13;
  if (v19)
  {
    v24 = (*(*v5 + 56) + 32 * v13);
    v25 = *v24;
    v26 = v24[1];
    v27 = v24[2];
    v28 = v24[3];
  }

  else
  {
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
  }

  *v11 = v25;
  v11[1] = v26;
  v11[2] = v27;
  v11[3] = v28;
  return sub_269457518;
}

void sub_269457518(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  LOBYTE(v7) = *(*a1 + 64);
  if (a2)
  {
    if (!v4)
    {
      goto LABEL_10;
    }

    v8 = v2[7];
    v9 = *v2[6];
    if ((*a1)[8])
    {
      goto LABEL_9;
    }

    v11 = v2[4];
    v10 = v2[5];
    v9[(v8 >> 6) + 8] |= 1 << v8;
    v12 = (v9[6] + 16 * v8);
    *v12 = v11;
    v12[1] = v10;
    v13 = (v9[7] + 32 * v8);
    *v13 = v3;
    v13[1] = v4;
    v13[2] = v5;
    v13[3] = v6;
    v14 = v9[2];
    v15 = __OFADD__(v14, 1);
    v7 = v14 + 1;
    if (!v15)
    {
LABEL_13:
      v24 = v2[5];
      v9[2] = v7;

      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v4)
  {
LABEL_10:
    if (v7)
    {
      v17 = v2[7];
      v18 = *v2[6];
      sub_269458124(*(v18 + 48) + 16 * v17);
      sub_269456DE8(v17, v18);
    }

    goto LABEL_14;
  }

  v8 = v2[7];
  v9 = *v2[6];
  if ((v7 & 1) == 0)
  {
    v20 = v2[4];
    v19 = v2[5];
    v9[(v8 >> 6) + 8] |= 1 << v8;
    v21 = (v9[6] + 16 * v8);
    *v21 = v20;
    v21[1] = v19;
    v22 = (v9[7] + 32 * v8);
    *v22 = v3;
    v22[1] = v4;
    v22[2] = v5;
    v22[3] = v6;
    v23 = v9[2];
    v15 = __OFADD__(v23, 1);
    v7 = v23 + 1;
    if (v15)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_9:
  v16 = (v9[7] + 32 * v8);
  *v16 = v3;
  v16[1] = v4;
  v16[2] = v5;
  v16[3] = v6;
LABEL_14:
  v25 = *v2;
  v26 = v2[1];
  v27 = v2[2];
  v28 = v2[3];
  sub_26945809C(v3, v4);
  sub_2694580E0(v25, v26);

  free(v2);
}

uint64_t (*sub_2694576AC(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_2694576D4;
}

void *sub_2694576E0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v24 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 56) + ((v12 << 11) | (32 * v17)));
      v19 = v18[1];
      v20 = v18[2];
      v21 = v18[3];
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      v11[3] = v21;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 4;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v23 = v12 + 1;
    }

    else
    {
      v23 = v13;
    }

    v12 = v23 - 1;
    v10 = result;
LABEL_23:
    v7 = v24;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

unint64_t sub_269457868(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803173A8, &qword_26945D9D8);
    v3 = sub_26945CEB8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_2694564E0(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_26945796C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317398, &qword_26945D9C8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803173A0, &qword_26945D9D0);
    v8 = sub_26945CEB8();
    v9 = &v6[*(v2 + 48)];
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_269457ED8(v10, v6);
      result = sub_269456558(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_26945C9D8();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = (v8[7] + 16 * v14);
      v18 = *(v9 + 1);
      *v17 = *v9;
      v17[1] = v18;
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_269457B48(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803173E8, &qword_26945DA10);
    v3 = sub_26945CEB8();

    for (i = (a1 + 72); ; i += 6)
    {
      v5 = *(i - 5);
      v6 = *(i - 4);
      v8 = *(i - 3);
      v7 = *(i - 2);
      v9 = *(i - 1);
      v10 = *i;

      result = sub_2694564E0(v5, v6);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 16 * result);
      *v13 = v5;
      v13[1] = v6;
      v14 = (v3[7] + 32 * result);
      *v14 = v8;
      v14[1] = v7;
      v14[2] = v9;
      v14[3] = v10;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_269457C78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803173B0, &qword_26945D9E0);
    v3 = sub_26945CEB8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2694564E0(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t type metadata accessor for SiriTurnRestatementCalculator()
{
  result = qword_280317378;
  if (!qword_280317378)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_269457DC8()
{
  result = sub_26945CC88();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_26945CA08();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_269457ED8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317398, &qword_26945D9C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269457F48(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_269457FA8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_26945804C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26945809C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_2694580E0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t SiriTurnRestatementDataProvider.__allocating_init(bookmarkService:dimFeatureExtractor:ueiFeatureExtractor:logger:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  v12 = OBJC_IVAR____TtC19SiriTurnRestatement31SiriTurnRestatementDataProvider_logger;
  v13 = sub_26945CC88();
  (*(*(v13 - 8) + 32))(v11 + v12, a4, v13);
  *(v11 + OBJC_IVAR____TtC19SiriTurnRestatement31SiriTurnRestatementDataProvider_bookmarkService) = a1;
  *(v11 + OBJC_IVAR____TtC19SiriTurnRestatement31SiriTurnRestatementDataProvider_dimFeatureExtractor) = a2;
  *(v11 + OBJC_IVAR____TtC19SiriTurnRestatement31SiriTurnRestatementDataProvider_ueiFeatureExtractor) = a3;
  return v11;
}

uint64_t SiriTurnRestatementDataRecord.featurizedConversationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26945CAC8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SiriTurnRestatementDataProvider.init(bookmarkService:dimFeatureExtractor:ueiFeatureExtractor:logger:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = OBJC_IVAR____TtC19SiriTurnRestatement31SiriTurnRestatementDataProvider_logger;
  v10 = sub_26945CC88();
  (*(*(v10 - 8) + 32))(v4 + v9, a4, v10);
  *(v4 + OBJC_IVAR____TtC19SiriTurnRestatement31SiriTurnRestatementDataProvider_bookmarkService) = a1;
  *(v4 + OBJC_IVAR____TtC19SiriTurnRestatement31SiriTurnRestatementDataProvider_dimFeatureExtractor) = a2;
  *(v4 + OBJC_IVAR____TtC19SiriTurnRestatement31SiriTurnRestatementDataProvider_ueiFeatureExtractor) = a3;
  return v4;
}

uint64_t sub_269458344(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_26945CA08();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_26945C958();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_269458460, 0, 0);
}

uint64_t sub_269458460()
{
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v5 = v0[4];
  sub_26945CAE8();
  v6 = *(v4 + OBJC_IVAR____TtC19SiriTurnRestatement31SiriTurnRestatementDataProvider_bookmarkService);
  sub_26945C9F8();
  sub_26945CA88();
  (*(v3 + 8))(v2, v5);
  v0[10] = [objc_allocWithZone(sub_26945CB98()) init];
  v7 = sub_26945CA68();
  v0[11] = v7;
  v8 = v0[3];
  v9 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803172E8, &qword_26945D6B0);
  v10 = swift_allocObject();
  v0[12] = v10;
  *(v10 + 16) = xmmword_26945DA20;
  v11 = *(v8 + OBJC_IVAR____TtC19SiriTurnRestatement31SiriTurnRestatementDataProvider_dimFeatureExtractor);
  *(v10 + 32) = v11;
  v12 = *(v8 + OBJC_IVAR____TtC19SiriTurnRestatement31SiriTurnRestatementDataProvider_ueiFeatureExtractor);
  v13 = *(MEMORY[0x277D04520] + 4);
  v18 = (*MEMORY[0x277D04520] + MEMORY[0x277D04520]);
  *(v10 + 40) = v12;
  v14 = v11;
  v15 = v12;
  v16 = swift_task_alloc();
  v0[13] = v16;
  *v16 = v0;
  v16[1] = sub_26945867C;

  return v18(v9, v10);
}

uint64_t sub_26945867C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 104);
  v5 = *(*v2 + 96);
  v6 = *(*v2 + 88);
  v9 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  if (v1)
  {
    v7 = sub_269458968;
  }

  else
  {
    v7 = sub_2694587D0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2694587D0()
{
  v1 = v0[14];
  v2 = v0[3];

  v3 = sub_26945CC68();
  v4 = sub_26945CD98();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[14];
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    if (v6 >> 62)
    {
      v0[14];
      v21 = v7;
      v8 = sub_26945CE78();
      v7 = v21;
    }

    else
    {
      v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = v0[14];
    *(v7 + 4) = v8;
    v10 = v7;

    _os_log_impl(&dword_26944D000, v3, v4, "marker: fetched SELF conversations, count=%ld", v10, 0xCu);
    MEMORY[0x26D63DD90](v10, -1, -1);
  }

  else
  {
    v11 = v0[14];
  }

  v12 = v0[14];
  v13 = v0[9];
  v14 = v0[10];
  v15 = v0[7];
  v16 = v0[8];
  v17 = v0[6];
  v18 = v0[2];
  sub_26945CAA8();

  (*(v16 + 8))(v13, v15);

  v19 = v0[1];

  return v19();
}

uint64_t sub_269458968()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);

  (*(v3 + 8))(v1, v2);
  v4 = *(v0 + 120);
  v5 = *(v0 + 72);
  v6 = *(v0 + 48);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t SiriTurnRestatementDataProvider.deinit()
{
  v1 = OBJC_IVAR____TtC19SiriTurnRestatement31SiriTurnRestatementDataProvider_logger;
  v2 = sub_26945CC88();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC19SiriTurnRestatement31SiriTurnRestatementDataProvider_bookmarkService);

  return v0;
}

uint64_t SiriTurnRestatementDataProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC19SiriTurnRestatement31SiriTurnRestatementDataProvider_logger;
  v2 = sub_26945CC88();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC19SiriTurnRestatement31SiriTurnRestatementDataProvider_bookmarkService);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_269458B60(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_269451824;

  return sub_269458344(a1);
}

unint64_t sub_269458C00()
{
  result = qword_280317328;
  if (!qword_280317328)
  {
    type metadata accessor for SiriTurnRestatementDataRecord(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280317328);
  }

  return result;
}

uint64_t sub_269458C8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26945CAC8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_269458D0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26945CAC8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_269458D7C()
{
  result = sub_26945CAC8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_269458E10(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_269458E48()
{
  result = sub_26945CC88();
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

uint64_t dispatch thunk of SiriTurnRestatementDataProvider.loadData()(uint64_t a1)
{
  v4 = *(*v1 + 120);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_269451824;

  return v8(a1);
}

uint64_t SiriTurnRestatementSELFReporter.__allocating_init(logger:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  *(v5 + 16) = [objc_opt_self() sharedLoggerWithPersistenceConfiguration_];
  v6 = OBJC_IVAR____TtC19SiriTurnRestatement31SiriTurnRestatementSELFReporter_logger;
  v7 = sub_26945CC88();
  (*(*(v7 - 8) + 32))(v5 + v6, a1, v7);
  return v5;
}

uint64_t SiriTurnRestatementSELFReporter.init(logger:)(uint64_t a1)
{
  *(v1 + 16) = [objc_opt_self() sharedLoggerWithPersistenceConfiguration_];
  v3 = OBJC_IVAR____TtC19SiriTurnRestatement31SiriTurnRestatementSELFReporter_logger;
  v4 = sub_26945CC88();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

uint64_t SiriTurnRestatementSELFReporter.report(_:)(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 80) = v1;
  *(v2 + 88) = v3;
  return MEMORY[0x2822009F8](sub_2694591AC, 0, 0);
}

void sub_2694591AC()
{
  v1 = *(v0 + 80);
  *(v0 + 96) = OBJC_IVAR____TtC19SiriTurnRestatement31SiriTurnRestatementSELFReporter_logger;
  v2 = sub_26945CC68();
  v3 = sub_26945CD98();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_26944D000, v2, v3, "Running SiriTurnRestatementSELFReporter", v4, 2u);
    MEMORY[0x26D63DD90](v4, -1, -1);
  }

  v5 = *(v0 + 88);

  v6 = *(v5 + 16);
  *(v0 + 104) = v6;
  if (v6)
  {
    *(v0 + 144) = 0;
    *(v0 + 112) = 0;
    v7 = *(v0 + 88);
    if (v7[2])
    {
      v8 = *(v0 + 80);
      v9 = v7[7];
      v10 = v7[6];
      v11 = v7[5];
      *(v0 + 16) = v7[4];
      *(v0 + 24) = v11;
      *(v0 + 32) = v10;
      *(v0 + 40) = v9;

      v12 = sub_269459CCC((v0 + 16));
      *(v0 + 120) = v12;

      v17 = swift_task_alloc();
      *(v0 + 128) = v17;
      *v17 = v0;
      v17[1] = sub_2694595AC;
      v18 = *(v0 + 80);

      sub_26945A274(v12);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v13 = sub_26945CC68();
    v14 = sub_26945CD88();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_26944D000, v13, v14, "No restatement scores to be reported", v15, 2u);
      MEMORY[0x26D63DD90](v15, -1, -1);
    }

    v16 = *(v0 + 8);

    v16();
  }
}

uint64_t sub_2694595AC()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_2694599E8;
  }

  else
  {
    v3 = sub_2694596C0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_2694596C0()
{
  v35 = v0;
  v1 = *(v0 + 112);
  v2 = *(v0 + 104);

  if (v1 + 1 == v2)
  {
    if (*(v0 + 144))
    {
LABEL_11:
      sub_269450528();
      swift_allocError();
      *v31 = 1;
      swift_willThrow();
      v3 = *(v0 + 8);
    }

    else
    {
      v3 = *(v0 + 8);
    }

    v3();
  }

  else
  {
    v4 = *(v0 + 136);
    v5 = *(v0 + 112) + 1;
    *(v0 + 112) = v5;
    v6 = *(v0 + 88);
    if (v5 >= *(v6 + 16))
    {
LABEL_18:
      __break(1u);
    }

    else
    {
      while (1)
      {
        v17 = *(v0 + 80);
        v18 = (v6 + 32 * v5);
        v19 = v18[7];
        v20 = v18[6];
        v21 = v18[5];
        *(v0 + 16) = v18[4];
        *(v0 + 24) = v21;
        *(v0 + 32) = v20;
        *(v0 + 40) = v19;

        v22 = sub_269459CCC((v0 + 16));
        *(v0 + 120) = v22;

        if (!v4)
        {
          break;
        }

        v23 = *(v0 + 96);
        v24 = *(v0 + 80);
        v25 = v4;
        v26 = sub_26945CC68();
        v27 = sub_26945CDA8();
        MEMORY[0x26D63DC60](v4);
        v28 = os_log_type_enabled(v26, v27);
        v30 = *(v0 + 104);
        v29 = *(v0 + 112);
        if (v28)
        {
          v7 = v29 + 1;
          v8 = swift_slowAlloc();
          v9 = swift_slowAlloc();
          v34 = v9;
          *v8 = 136315138;
          swift_getErrorValue();
          v11 = *(v0 + 48);
          v10 = *(v0 + 56);
          v12 = *(v0 + 64);
          v13 = sub_26945CEF8();
          v15 = sub_269455F28(v13, v14, &v34);

          *(v8 + 4) = v15;
          _os_log_impl(&dword_26944D000, v26, v27, "Unable to report event: %s", v8, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v9);
          MEMORY[0x26D63DD90](v9, -1, -1);
          MEMORY[0x26D63DD90](v8, -1, -1);
          MEMORY[0x26D63DC60](v4);

          if (v7 == v30)
          {
            goto LABEL_11;
          }
        }

        else
        {

          MEMORY[0x26D63DC60](v4);
          if (v29 + 1 == v30)
          {
            goto LABEL_11;
          }
        }

        v4 = 0;
        v16 = *(v0 + 112);
        *(v0 + 144) = 1;
        v5 = v16 + 1;
        *(v0 + 112) = v5;
        v6 = *(v0 + 88);
        if (v5 >= *(v6 + 16))
        {
          goto LABEL_18;
        }
      }

      v32 = swift_task_alloc();
      *(v0 + 128) = v32;
      *v32 = v0;
      v32[1] = sub_2694595AC;
      v33 = *(v0 + 80);

      sub_26945A274(v22);
    }
  }
}

void sub_2694599E8()
{
  v32 = v0;

  v1 = *(v0 + 136);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = v1;
  v5 = sub_26945CC68();
  v6 = sub_26945CDA8();
  MEMORY[0x26D63DC60](v1);
  v7 = os_log_type_enabled(v5, v6);
  v9 = *(v0 + 104);
  v8 = *(v0 + 112);
  if (v7)
  {
    v10 = v8 + 1;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v31 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v14 = *(v0 + 48);
    v13 = *(v0 + 56);
    v15 = *(v0 + 64);
    v16 = sub_26945CEF8();
    v18 = sub_269455F28(v16, v17, &v31);

    *(v11 + 4) = v18;
    _os_log_impl(&dword_26944D000, v5, v6, "Unable to report event: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x26D63DD90](v12, -1, -1);
    MEMORY[0x26D63DD90](v11, -1, -1);
    MEMORY[0x26D63DC60](v1);

    if (v10 == v9)
    {
      goto LABEL_9;
    }
  }

  else
  {

    MEMORY[0x26D63DC60](v1);
    if (v8 + 1 == v9)
    {
LABEL_9:
      sub_269450528();
      swift_allocError();
      *v29 = 1;
      swift_willThrow();
      v30 = *(v0 + 8);

      v30();
      return;
    }
  }

  v19 = *(v0 + 112) + 1;
  *(v0 + 144) = 1;
  *(v0 + 112) = v19;
  v20 = *(v0 + 88);
  if (v19 >= *(v20 + 16))
  {
    __break(1u);
  }

  else
  {
    v21 = *(v0 + 80);
    v22 = (v20 + 32 * v19);
    v23 = v22[7];
    v24 = v22[6];
    v25 = v22[5];
    *(v0 + 16) = v22[4];
    *(v0 + 24) = v25;
    *(v0 + 32) = v24;
    *(v0 + 40) = v23;

    v26 = sub_269459CCC((v0 + 16));
    *(v0 + 120) = v26;

    v27 = swift_task_alloc();
    *(v0 + 128) = v27;
    *v27 = v0;
    v27[1] = sub_2694595AC;
    v28 = *(v0 + 80);

    sub_26945A274(v26);
  }
}

id sub_269459CCC(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803173C0, &qword_26945D9F0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v62 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v61 = &v53 - v7;
  v8 = sub_26945C9B8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v56 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v55 = &v53 - v13;
  v14 = *a1;
  v15 = a1[1];
  v16 = a1[2];
  v17 = a1[3];
  v18 = [objc_allocWithZone(MEMORY[0x277D59188]) init];
  if (v18)
  {
    v65[0] = v14;
    v65[1] = v15;
    v65[2] = v16;
    v65[3] = v17;
    v19 = sub_26945A838(v65);
    if (v1)
    {
    }

    else
    {
      v24 = v19;
      v53 = 0;
      v60 = v8;
      [v18 setEventMetadata_];

      v25 = [objc_allocWithZone(MEMORY[0x277D591A8]) init];
      [v18 setTurnRestatementScoresReported_];

      v26 = *(v17 + 16);
      if (v26)
      {
        v27 = (v9 + 48);
        v57 = (v9 + 8);
        v58 = (v9 + 32);
        v28 = (v17 + 48);
        v59 = (v9 + 48);
        v54 = v18;
        do
        {
          v30 = *(v28 - 2);
          v31 = *(v28 - 1);
          v32 = *(v28 + 1);
          v64 = *v28;
          v33 = v28[2];
          v34 = v28[4];
          v35 = *(v28 + 40);
          v66 = *(v28 + 24);
          v67 = v35;
          v36 = objc_allocWithZone(MEMORY[0x277D591A0]);

          v37 = [v36 init];
          if (v37)
          {
            v38 = v37;
            v39 = v61;
            v63 = v31;
            sub_26945C968();
            v40 = *v27;
            v41 = v60;
            if ((*v27)(v39, 1, v60) == 1)
            {
              sub_26945AED8(v39);
            }

            else
            {
              v42 = v55;
              (*v58)(v55, v39, v41);
              v43 = objc_allocWithZone(MEMORY[0x277D5AC78]);
              v44 = sub_26945C988();
              v45 = [v43 initWithNSUUID_];

              [v38 setCurrentTurnId_];
              v18 = v54;
              v46 = v42;
              v27 = v59;
              (*v57)(v46, v41);
            }

            v47 = v62;
            sub_26945C968();
            if (v40(v47, 1, v41) == 1)
            {
              sub_26945AED8(v47);
            }

            else
            {
              v48 = v56;
              (*v58)(v56, v47, v41);
              v49 = objc_allocWithZone(MEMORY[0x277D5AC78]);
              v50 = sub_26945C988();
              v51 = [v49 initWithNSUUID_];

              [v38 setNextTurnId_];
              v27 = v59;
              (*v57)(v48, v41);
            }

            if ((v66 & 1) == 0)
            {
              [v38 setUtteranceRestatementScore_];
            }

            if ((v67 & 1) == 0)
            {
              [v38 setSemanticSimilarityScore_];
            }

            v29 = [v18 turnRestatementScoresReported];
            [v29 addTurnRestatementScores_];
          }

          else
          {
          }

          v28 += 8;
          --v26;
        }

        while (v26);
      }
    }
  }

  else
  {
    v20 = sub_26945CC68();
    v21 = sub_26945CDA8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_26944D000, v20, v21, "Error initiating SELF wrapper", v22, 2u);
      MEMORY[0x26D63DD90](v22, -1, -1);
    }

    sub_269450528();
    swift_allocError();
    *v23 = 1;
    swift_willThrow();
  }

  return v18;
}

uint64_t sub_26945A274(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return MEMORY[0x2822009F8](sub_26945A294, 0, 0);
}

uint64_t sub_26945A294()
{
  v20 = v0;
  v1 = *(v0 + 152);
  v2 = [*(v0 + 144) wrapAsAnyEvent];
  *(v0 + 160) = v2;
  if (v2)
  {
    v3 = v2;
    v4 = sub_26945CC68();
    v5 = sub_26945CD98();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v19 = v7;
      *v6 = 136315138;
      [v3 anyEventType];
      v8 = sub_26945CDB8();
      v10 = sub_269455F28(v8, v9, &v19);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_26944D000, v4, v5, "FBF Shared reporter: store the event %s and send to server", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x26D63DD90](v7, -1, -1);
      MEMORY[0x26D63DD90](v6, -1, -1);
    }

    v11 = *(*(v0 + 152) + 16);
    v12 = sub_26945CCD8();
    *(v0 + 168) = v12;
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_26945A59C;
    v13 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317450, qword_26945DBF0);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_26945A78C;
    *(v0 + 104) = &block_descriptor_0;
    *(v0 + 112) = v13;
    [v11 reportSiriInstrumentationEvent:v3 forBundleID:v12 completion:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    v14 = sub_26945CC68();
    v15 = sub_26945CDA8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_26944D000, v14, v15, "Couldn't package event in AnyEvent wrapper.", v16, 2u);
      MEMORY[0x26D63DD90](v16, -1, -1);
    }

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_26945A59C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_26945A714;
  }

  else
  {
    v3 = sub_26945A6AC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26945A6AC()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26945A714()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  swift_willThrow();

  v4 = v0[1];
  v5 = v0[22];

  return v4();
}

uint64_t sub_26945A78C(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803173C8, &qword_26945D9F8);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

id sub_26945A838(uint64_t a1)
{
  v3 = sub_26945C958();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26945C9B8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  v14 = [objc_allocWithZone(MEMORY[0x277D59190]) init];
  if (!v14)
  {
    v23 = sub_26945CC68();
    v24 = sub_26945CDA8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_26944D000, v23, v24, "Error initiating Event metadata", v25, 2u);
      MEMORY[0x26D63DD90](v25, -1, -1);
    }

    sub_269450528();
    swift_allocError();
    *v26 = 1;
    swift_willThrow();
    return v14;
  }

  v27[3] = v1;
  sub_26945C9A8();
  v15 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v16 = sub_26945C988();
  v17 = [v15 initWithNSUUID_];

  (*(v9 + 8))(v12, v8);
  [v14 setOdbatchId_];

  sub_26945CA18();
  sub_26945C948();
  v19 = v18;
  v20 = v18;
  result = (*(v4 + 8))(v7, v3);
  if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v19 <= -1.0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v19 >= 1.84467441e19)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!is_mul_ok(v19, 0x3E8uLL))
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [v14 setEventTimestampInMsSince1970_];
  result = [objc_allocWithZone(MEMORY[0x277D593F8]) init];
  v22 = result;
  if (!result)
  {
LABEL_11:
    [v14 setAggregationInterval_];

    return v14;
  }

  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_20;
  }

  if (v13 <= -1.0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v13 < 1.84467441e19)
  {
    [result setStartTimestampInSecondsSince1970_];
    [v22 setNumberOfSeconds_];
    goto LABEL_11;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t SiriTurnRestatementSELFReporter.deinit()
{
  v1 = OBJC_IVAR____TtC19SiriTurnRestatement31SiriTurnRestatementSELFReporter_logger;
  v2 = sub_26945CC88();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SiriTurnRestatementSELFReporter.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC19SiriTurnRestatement31SiriTurnRestatementSELFReporter_logger;
  v2 = sub_26945CC88();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t sub_26945AD08(uint64_t *a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_269451824;

  return SiriTurnRestatementSELFReporter.report(_:)(a1);
}

uint64_t type metadata accessor for SiriTurnRestatementSELFReporter()
{
  result = qword_280317440;
  if (!qword_280317440)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26945ADF4()
{
  result = sub_26945CC88();
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

uint64_t sub_26945AED8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803173C0, &qword_26945D9F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26945AF40()
{
  v0 = sub_26945C9D8();
  __swift_allocate_value_buffer(v0, qword_280317458);
  __swift_project_value_buffer(v0, qword_280317458);
  return sub_26945C9C8();
}

uint64_t sub_26945AF94@<X0>(uint64_t a1@<X8>)
{
  sub_26945CB28();
  sub_26945CB18();
  sub_26945CBF8();

  if (v12 && (v2 = MEMORY[0x26D63D430](), , v2) && (v3 = [v2 languageCode], v2, v3))
  {
    v4 = v3 - 1;
    if (v3 - 1 > 0xB8)
    {
      v5 = @"ISOLANGUAGECODE_UNKNOWN";
      v6 = @"ISOLANGUAGECODE_UNKNOWN";
    }

    else
    {
      v5 = off_279C57FD0[v4];
      v6 = off_279C58598[v4];
    }

    v10 = v5;
    v11 = v6;
    sub_26945CCE8();

    return sub_26945C9E8();
  }

  else
  {
    if (qword_280317270 != -1)
    {
      swift_once();
    }

    v7 = sub_26945C9D8();
    v8 = __swift_project_value_buffer(v7, qword_280317458);
    return (*(*(v7 - 8) + 16))(a1, v8, v7);
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_26945B204(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = &xmmword_26945DF90;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0xD000000000000016;
    }

    else
    {
      v5 = 0xD000000000000014;
    }

    if (v3)
    {
      v4 = "ASR Turn Text is nil";
    }

    else
    {
      v4 = &xmmword_26945DF90;
    }
  }

  else if (a1 == 2)
  {
    v4 = "ASR Turn Text is empty";
    v5 = 0xD000000000000020;
  }

  else if (a1 == 3)
  {
    v4 = "rn Text is empty";
    v5 = 0xD00000000000001FLL;
  }

  else
  {
    v4 = "Failed to embed turn utterances";
    v5 = 0xD000000000000044;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0xD000000000000016;
    }

    else
    {
      v6 = 0xD000000000000014;
    }

    if (a2)
    {
      v2 = "ASR Turn Text is nil";
    }
  }

  else if (a2 == 2)
  {
    v2 = "ASR Turn Text is empty";
    v6 = 0xD000000000000020;
  }

  else
  {
    v2 = "rn Text is empty";
    if (a2 == 3)
    {
      v6 = 0xD00000000000001FLL;
    }

    else
    {
      v6 = 0xD000000000000044;
    }

    if (a2 != 3)
    {
      v2 = "Failed to embed turn utterances";
    }
  }

  if (v5 == v6 && (v4 | 0x8000000000000000) == (v2 | 0x8000000000000000))
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_26945CED8();
  }

  return v7 & 1;
}

uint64_t sub_26945B36C()
{
  v1 = *v0;
  sub_26945CF48();
  sub_26945CD18();

  return sub_26945CF68();
}

uint64_t sub_26945B440()
{
  *v0;
  *v0;
  *v0;
  sub_26945CD18();
}

uint64_t sub_26945B500()
{
  v1 = *v0;
  sub_26945CF48();
  sub_26945CD18();

  return sub_26945CF68();
}

uint64_t sub_26945B5D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26945B694();
  *a2 = result;
  return result;
}

void sub_26945B600(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000014;
  v3 = *v1;
  v4 = &xmmword_26945DF90;
  v5 = "ASR Turn Text is empty";
  v6 = 0xD000000000000020;
  v7 = "rn Text is empty";
  v8 = 0xD00000000000001FLL;
  if (v3 != 3)
  {
    v8 = 0xD000000000000044;
    v7 = "Failed to embed turn utterances";
  }

  if (v3 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v2 = 0xD000000000000016;
    v4 = "ASR Turn Text is nil";
  }

  if (*v1 > 1u)
  {
    v2 = v6;
    v4 = v5;
  }

  *a1 = v2;
  a1[1] = v4 | 0x8000000000000000;
}

uint64_t sub_26945B694()
{
  v0 = sub_26945CEC8();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t getEnumTagSinglePayload for TurnRestatementError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TurnRestatementError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26945B83C()
{
  result = qword_280317470;
  if (!qword_280317470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280317470);
  }

  return result;
}

uint64_t TurnRestatementReportBatch.restatementScores.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t SiriTurnRestatementResult.restatementReportBatches.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_26945B974(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_26945B9BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_26945BA28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_26945BA70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_26945BAD4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26945BB1C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_26945BB90()
{
  sub_26945CB08();
  sub_26945CAF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317478, qword_26945DEF8);
  sub_26945CBF8();

  if (!v3)
  {
    goto LABEL_5;
  }

  if (!v3[2])
  {

LABEL_5:
    sub_26945CB48();
    sub_26945CB38();
    sub_26945CBF8();

    return v3;
  }

  v0 = v3[4];
  v1 = v3[5];

  return v0;
}

uint64_t sub_26945BCA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317480, &qword_26945DF38);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317488, qword_26945DF40);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v35 = &v32 - v10;
  v11 = sub_26945C918();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_26945CCF8();
  v42 = v16;
  sub_26945C908();
  v17 = sub_26944F7FC();
  v18 = sub_26945CDC8();
  v33 = *(v12 + 8);
  v34 = v11;
  v33(v15, v11);

  v41 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317478, qword_26945DEF8);
  sub_26945C270(&qword_280317490, &qword_280317478, qword_26945DEF8);
  v19 = sub_26945CCB8();
  v21 = v20;

  if (qword_280317278 != -1)
  {
    swift_once();
  }

  v22 = off_2803174B0;
  if (*(off_2803174B0 + 2))
  {
    v23 = sub_269456558(v36);
    if (v24)
    {
      v25 = (v22[7] + 16 * v23);
      v27 = *v25;
      v26 = v25[1];
    }
  }

  sub_26945CAD8();
  (*(v8 + 56))(v6, 0, 1, v7);
  v28 = *(v8 + 32);
  v36 = v17;
  v29 = v35;
  v28(v35, v6, v7);
  v39 = v19;
  v40 = v21;
  v37 = 0;
  v38 = 0xE000000000000000;
  sub_26945C1C8();
  sub_26945C21C();
  sub_26945C270(&qword_2803174A8, &qword_280317488, qword_26945DF40);
  sub_26945CD78();

  v39 = v41;
  v40 = v42;
  sub_26945C8F8();
  v30 = sub_26945CDD8();
  v33(v15, v34);

  (*(v8 + 8))(v29, v7);
  return v30;
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

uint64_t sub_26945C160(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317480, &qword_26945DF38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26945C1C8()
{
  result = qword_280317498;
  if (!qword_280317498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280317498);
  }

  return result;
}

unint64_t sub_26945C21C()
{
  result = qword_2803174A0;
  if (!qword_2803174A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803174A0);
  }

  return result;
}

uint64_t sub_26945C270(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26945C2DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26945C918();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[0] = a1;
  v15[1] = a2;
  sub_26945C8F8();
  sub_26944F7FC();
  v9 = sub_26945CDD8();
  v11 = v10;
  (*(v5 + 8))(v8, v4);

  v13 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v13 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {
    sub_26944F7A8();
    swift_allocError();
    *v14 = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_26945C42C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803174B8, &unk_26945DFA0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317398, &qword_26945D9C8);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_26945DF90;
  v4 = v3 + v2;
  v5 = (v4 + *(v0 + 48));
  sub_26945C9C8();
  *v5 = 0x1000000000000041;
  v5[1] = 0x800000026945E810;
  v6 = (v4 + v1 + *(v0 + 48));
  sub_26945C9C8();
  *v6 = 0xD00000000000002ALL;
  v6[1] = 0x800000026945E860;
  v7 = (v4 + 2 * v1 + *(v0 + 48));
  sub_26945C9C8();
  *v7 = 0xD000000000000035;
  v7[1] = 0x800000026945E890;
  v8 = (v4 + 3 * v1 + *(v0 + 48));
  sub_26945C9C8();
  *v8 = 0xD000000000000028;
  v8[1] = 0x800000026945E7B0;
  v9 = (v4 + 4 * v1 + *(v0 + 48));
  sub_26945C9C8();
  *v9 = 0xD000000000000034;
  v9[1] = 0x800000026945E8D0;
  v10 = (v4 + 5 * v1 + *(v0 + 48));
  sub_26945C9C8();
  *v10 = 0xD000000000000028;
  v10[1] = 0x800000026945E910;
  v11 = (v4 + 6 * v1 + *(v0 + 48));
  sub_26945C9C8();
  *v11 = 0xD00000000000002FLL;
  v11[1] = 0x800000026945E940;
  v12 = (v4 + 7 * v1 + *(v0 + 48));
  sub_26945C9C8();
  *v12 = 0xD000000000000028;
  v12[1] = 0x800000026945E970;
  v13 = (v4 + 8 * v1 + *(v0 + 48));
  sub_26945C9C8();
  *v13 = 0xD000000000000028;
  v13[1] = 0x800000026945E7B0;
  v14 = (v4 + 9 * v1 + *(v0 + 48));
  sub_26945C9C8();
  *v14 = 0x1000000000000027;
  v14[1] = 0x800000026945E9A0;
  v15 = (v4 + 10 * v1 + *(v0 + 48));
  sub_26945C9C8();
  *v15 = 0xD000000000000030;
  v15[1] = 0x800000026945E9D0;
  v16 = (v4 + 11 * v1 + *(v0 + 48));
  sub_26945C9C8();
  *v16 = 0x1000000000000028;
  v16[1] = 0x800000026945EA10;
  v17 = (v4 + 12 * v1 + *(v0 + 48));
  sub_26945C9C8();
  *v17 = 0x100000000000002ALL;
  v17[1] = 0x800000026945EA40;
  v18 = (v4 + 13 * v1 + *(v0 + 48));
  sub_26945C9C8();
  *v18 = 0x1000000000000031;
  v18[1] = 0x800000026945EA70;
  v19 = (v4 + 14 * v1 + *(v0 + 48));
  sub_26945C9C8();
  *v19 = 0x1000000000000031;
  v19[1] = 0x800000026945EAB0;
  v20 = (v4 + 15 * v1 + *(v0 + 48));
  sub_26945C9C8();
  *v20 = 0x1000000000000037;
  v20[1] = 0x800000026945EAF0;
  v21 = (v4 + 16 * v1 + *(v0 + 48));
  sub_26945C9C8();
  *v21 = 0xD000000000000028;
  v21[1] = 0x800000026945E7B0;
  v22 = (v4 + 17 * v1 + *(v0 + 48));
  sub_26945C9E8();
  *v22 = 0x1000000000000034;
  v22[1] = 0x800000026945EB30;
  v23 = (v4 + 18 * v1 + *(v0 + 48));
  sub_26945C9E8();
  *v23 = 0x1000000000000040;
  v23[1] = 0x800000026945EB70;
  v24 = sub_26945796C(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  off_2803174B0 = v24;
  return result;
}