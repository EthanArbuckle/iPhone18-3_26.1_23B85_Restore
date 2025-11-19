id VisualIntelligenceIntroViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_27292E224();

  if (a4)
  {
    v12 = sub_27292E224();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

id VisualIntelligenceIntroViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VisualIntelligenceIntroViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_27291CE90()
{
  result = qword_28089BEF0;
  if (!qword_28089BEF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28089BEF0);
  }

  return result;
}

void sub_27291CF64()
{
  v0 = sub_27292E224();
  v1 = MGGetBoolAnswer();

  if (v1)
  {
    v2 = sub_27292E224();
    v3 = MGGetBoolAnswer();

    v4 = 0xD00000000000001FLL;
    if (v3)
    {
      v5 = "thoutCameraControl";
    }

    else
    {
      v4 = 0xD000000000000022;
      v5 = "deviceSnapshotWithNotch";
    }
  }

  else
  {
    v5 = "erUI11GMImageUtil";
    v4 = 0xD000000000000017;
  }

  qword_28089D678 = v4;
  unk_28089D680 = v5 | 0x8000000000000000;
}

id sub_27291D038(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v8 = [v7 bundleForClass_];
  v9 = sub_27292E224();
  v10 = [objc_opt_self() imageNamed:v9 inBundle:v8];

  if (v10)
  {
    return v10;
  }

  v11 = [v7 mainBundle];
  v12 = sub_27292E224();
  v13 = sub_27292E224();
  v14 = [v11 pathForResource:v12 ofType:v13];

  v15 = objc_allocWithZone(MEMORY[0x277D755B8]);
  if (v14)
  {
    v10 = [v15 initWithContentsOfFile_];

    if (v10)
    {
      return v10;
    }

    sub_27292E3F4();

    MEMORY[0x2743D0160](a1, a2);
    result = sub_27292E424();
    __break(1u);
  }

  else
  {

    return [v15 init];
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GM(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for GM(_WORD *result, int a2, int a3)
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

uint64_t sub_27291D37C()
{
  v0 = sub_27292D7F4();
  __swift_allocate_value_buffer(v0, qword_28089D688);
  __swift_project_value_buffer(v0, qword_28089D688);

  return sub_27292D7E4();
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

uint64_t sub_27291D498()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27292D8A4();

  return v1;
}

uint64_t sub_27291D504()
{
  v1 = OBJC_IVAR____TtC14VoiceTriggerUI21EnrollmentStateChange__trainingComplete;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BB18, &qword_2729353E0);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC14VoiceTriggerUI21EnrollmentStateChange__resetIfInTraining, v2);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_27291D604()
{
  sub_272917568();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_27291D694@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for EnrollmentStateChange(0);
  result = sub_27292D844();
  *a1 = result;
  return result;
}

uint64_t sub_27291D6D4@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v48 = a1;
  v3 = type metadata accessor for GMEnrollmentSetupIntroView(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BF58, &qword_272935B48);
  v41 = *(v39 - 8);
  v8 = *(v41 + 64);
  MEMORY[0x28223BE20](v39);
  v10 = &v37 - v9;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BF60, &qword_272935B50);
  v11 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v38 = &v37 - v12;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BF68, &qword_272935B58);
  v13 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v40 = &v37 - v14;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BF70, &qword_272935B60);
  v45 = *(v47 - 8);
  v15 = *(v45 + 64);
  v16 = MEMORY[0x28223BE20](v47);
  v42 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v44 = &v37 - v18;
  v19 = sub_27292DB44();
  sub_27290B624(v2, v7);
  v20 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v21 = swift_allocObject();
  sub_27290B5C0(v7, v21 + v20);
  v49 = v19;
  v50 = 0;
  LOBYTE(v51) = 0;
  v52 = sub_2729245D0;
  v53 = v21;
  sub_27292E094();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BF78, &qword_272935B68);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BF80, &qword_272935B70);
  v24 = sub_27290B998(&qword_28089BF88, &qword_28089BF78, &qword_272935B68);
  v25 = sub_272924650();
  v26 = MEMORY[0x277CE1350];
  v27 = MEMORY[0x277CE1340];
  sub_27292DF44();

  sub_27292E0D4();
  v49 = v22;
  v50 = v26;
  v51 = v23;
  v52 = v24;
  v53 = v27;
  v54 = v25;
  swift_getOpaqueTypeConformance2();
  v29 = v38;
  v28 = v39;
  sub_27292DF24();
  (*(v41 + 8))(v10, v28);
  v30 = *(v37 + *(v4 + 44) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27292D8A4();

  sub_272924708();
  sub_272924844();
  v31 = v40;
  sub_27292DF14();
  sub_27290B880(v29, &qword_28089BF60, &qword_272935B50);
  sub_27292D9A4();
  sub_27292E0F4();
  sub_27292D9C4();

  sub_27290B998(&qword_28089BFA8, &qword_28089BF68, &qword_272935B58);
  v32 = v42;
  sub_27292DE94();

  sub_27290B880(v31, &qword_28089BF68, &qword_272935B58);
  sub_272924898();
  v33 = v44;
  v34 = *(v45 + 16);
  v35 = v47;
  v34(v44, v32, v47);
  sub_27290B880(v32, &qword_28089BF70, &qword_272935B60);
  v34(v48, v33, v35);
  return sub_27290B880(v33, &qword_28089BF70, &qword_272935B60);
}

uint64_t sub_27291DCDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BFC8, &qword_272935BC8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10[-v7];
  sub_27292DD84();
  v11 = a2;
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BFD0, &qword_272935BD0);
  sub_272924984();
  sub_27292D8F4();
  sub_27292E124();
  sub_27290B998(&qword_28089C010, &qword_28089BFC8, &qword_272935BC8);
  sub_27292DED4();
  return (*(v5 + 8))(v8, v4);
}

double sub_27291DE78@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C000, &qword_272935BE8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BFE0, &qword_272935BD8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C018, &qword_272935BF0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v29 - v16;
  *v8 = sub_27292DB44();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C020, &qword_272935BF8);
  sub_27291E2C0(a1, &v8[*(v18 + 44)]);
  v29[3] = a2;
  sub_27292D9D4();
  sub_27292E0E4();
  sub_27292DA54();
  sub_27291A7B8(v8, v12, &qword_28089C000, &qword_272935BE8);
  v19 = &v12[*(v9 + 36)];
  v20 = v36;
  *(v19 + 4) = v35;
  *(v19 + 5) = v20;
  *(v19 + 6) = v37;
  v21 = v32;
  *v19 = v31;
  *(v19 + 1) = v21;
  v22 = v34;
  *(v19 + 2) = v33;
  *(v19 + 3) = v22;
  v23 = sub_27292E094();
  v24 = MEMORY[0x28223BE20](v23);
  MEMORY[0x28223BE20](v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BFE8, &qword_272935BE0);
  sub_272924A90();
  sub_272924B48();
  sub_27292DF34();
  sub_27290B880(v12, &qword_28089BFE0, &qword_272935BD8);
  sub_27292D9D4();
  sub_27292E0E4();
  sub_27292D974();
  v25 = v30;
  (*(v14 + 32))(v30, v17, v13);
  v26 = (v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BFD0, &qword_272935BD0) + 36));
  v27 = v39;
  *v26 = v38;
  v26[1] = v27;
  result = v40[0];
  v26[2] = *v40;
  return result;
}

uint64_t sub_27291E2C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C028, &qword_272935C00);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v38 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C030, &qword_272935C08);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v38 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v38 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C038, &qword_272935C10);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v38 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v38 - v25;
  if (*(a1 + 24) == 1 && (v27 = *(a1 + *(type metadata accessor for GMEnrollmentSetupIntroView(0) + 36) + 8), (sub_27291AD00() & 1) != 0))
  {
    v28 = sub_27292DB54();
  }

  else
  {
    v28 = sub_27292DB44();
  }

  *v24 = v28;
  *(v24 + 1) = 0;
  v24[16] = 0;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C040, &qword_272935C18);
  sub_27291E74C(a1, &v24[*(v29 + 44)]);
  sub_27291A7B8(v24, v26, &qword_28089C038, &qword_272935C10);
  *v6 = sub_27292DB44();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C048, &qword_272935C20);
  sub_27291F7E4(a1, &v6[*(v30 + 44)]);
  if (qword_28089BA10 != -1)
  {
    swift_once();
  }

  [qword_28089BEA0 isIpad];
  sub_27292E0E4();
  sub_27292DA54();
  sub_27291A7B8(v6, v14, &qword_28089C028, &qword_272935C00);
  v31 = &v14[*(v7 + 36)];
  v32 = v45;
  *(v31 + 4) = v44;
  *(v31 + 5) = v32;
  *(v31 + 6) = v46;
  v33 = v41;
  *v31 = v40;
  *(v31 + 1) = v33;
  v34 = v43;
  *(v31 + 2) = v42;
  *(v31 + 3) = v34;
  sub_27291A7B8(v14, v16, &qword_28089C030, &qword_272935C08);
  sub_27290939C(v26, v21, &qword_28089C038, &qword_272935C10);
  sub_27290939C(v16, v11, &qword_28089C030, &qword_272935C08);
  v35 = v39;
  sub_27290939C(v21, v39, &qword_28089C038, &qword_272935C10);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C050, &qword_272935C28);
  sub_27290939C(v11, v35 + *(v36 + 48), &qword_28089C030, &qword_272935C08);
  sub_27290B880(v16, &qword_28089C030, &qword_272935C08);
  sub_27290B880(v26, &qword_28089C038, &qword_272935C10);
  sub_27290B880(v11, &qword_28089C030, &qword_272935C08);
  return sub_27290B880(v21, &qword_28089C038, &qword_272935C10);
}

void sub_27291E74C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v128 = a2;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C218, &qword_272935DB8);
  v3 = *(*(v121 - 8) + 64);
  MEMORY[0x28223BE20](v121);
  v123 = (&v104 - v4);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C220, &qword_272935DC0);
  v5 = *(*(v122 - 8) + 64);
  MEMORY[0x28223BE20](v122);
  v119 = &v104 - v6;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C228, &qword_272935DC8);
  v7 = *(*(v115 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v115);
  v117 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v118 = &v104 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C230, &qword_272935DD0);
  v113 = *(v11 - 8);
  v114 = v11;
  v12 = *(v113 + 64);
  MEMORY[0x28223BE20](v11);
  v112 = &v104 - v13;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C238, &qword_272935DD8);
  v14 = *(*(v111 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v111);
  v116 = &v104 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v110 = &v104 - v18;
  MEMORY[0x28223BE20](v17);
  v120 = &v104 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C240, &qword_272935DE0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v127 = &v104 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v126 = &v104 - v24;
  v25 = type metadata accessor for GMEnrollmentSetupIntroView(0);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v129 = v28;
  v130 = &v104 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C248, &qword_272935DE8);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v32 = &v104 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C250, &qword_272935DF0);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v33);
  v125 = &v104 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v131 = &v104 - v37;
  if (qword_28089BA10 != -1)
  {
    swift_once();
  }

  v38 = qword_28089BEA0;
  v124 = [qword_28089BEA0 isIpad];
  v39 = *(a1 + 24);
  if (v39 == 1 && (v40 = *(a1 + *(v25 + 36) + 8), (sub_27291AD00() & 1) != 0))
  {
    v41 = sub_27292DB54();
  }

  else
  {
    v41 = sub_27292DB44();
  }

  *v32 = v41;
  *(v32 + 1) = 0;
  v32[16] = 0;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C258, &qword_272935DF8);
  sub_272922988(a1, &v32[*(v42 + 44)]);
  v43 = a1;
  v44 = a1;
  v45 = v130;
  sub_27290B624(v43, v130);
  v46 = *(v26 + 80);
  v47 = (v46 + 16) & ~v46;
  v108 = v46;
  v48 = swift_allocObject();
  v109 = v47;
  sub_27290B5C0(v45, v48 + v47);
  v49 = v131;
  sub_27291A7B8(v32, v131, &qword_28089C248, &qword_272935DE8);
  v50 = (v49 + *(v33 + 36));
  *v50 = sub_272925704;
  v50[1] = v48;
  v50[2] = 0;
  v50[3] = 0;
  v51 = *(v44 + *(v25 + 36) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27292D8A4();

  if (v140 || ![v38 isBuddyOrFollowUp])
  {
    v52 = [v38 isIpad];
    v53 = v126;
    if (v52)
    {
      v54 = v123;
      *v123 = 0;
      *(v54 + 8) = 1;
      swift_storeEnumTagMultiPayload();
      sub_27290B998(&qword_28089C270, &qword_28089C220, &qword_272935DC0);
      sub_27292DC34();
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C260, &qword_272935E00);
      (*(*(v55 - 8) + 56))(v53, 0, 1, v55);
    }

    else
    {
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C260, &qword_272935E00);
      (*(*(v56 - 8) + 56))(v53, 1, 1, v56);
    }

LABEL_20:
    v97 = v124;
    v98 = v124 ^ 1;
    v99 = v131;
    v100 = v125;
    sub_27290939C(v131, v125, &qword_28089C250, &qword_272935DF0);
    v101 = v127;
    sub_27290939C(v53, v127, &qword_28089C240, &qword_272935DE0);
    v102 = v128;
    *v128 = 0;
    *(v102 + 8) = v98;
    *(v102 + 9) = v97;
    v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C268, &qword_272935E08);
    sub_27290939C(v100, v102 + *(v103 + 48), &qword_28089C250, &qword_272935DF0);
    sub_27290939C(v101, v102 + *(v103 + 64), &qword_28089C240, &qword_272935DE0);
    sub_27290B880(v53, &qword_28089C240, &qword_272935DE0);
    sub_27290B880(v99, &qword_28089C250, &qword_272935DF0);
    sub_27290B880(v101, &qword_28089C240, &qword_272935DE0);
    sub_27290B880(v100, &qword_28089C250, &qword_272935DF0);
    return;
  }

  if ([v38 isIpad])
  {
    LOBYTE(v150) = 1;
    LOBYTE(v145) = 0;
    *&v132 = 0;
    BYTE8(v132) = 1;
    v136 = 0;
  }

  else
  {
    sub_27292E0E4();
    sub_27292D974();
    v139 = 1;
    v138 = v146;
    v137 = v148;
    LOBYTE(v150) = 1;
    *&v132 = 0;
    BYTE8(v132) = 1;
    *&v133 = v145;
    BYTE8(v133) = v146;
    *&v134 = v147;
    BYTE8(v134) = v148;
    v135 = v149;
    v136 = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C0C0, &qword_272935C98);
  sub_272924BEC();
  sub_27292DC34();
  v106 = v44;
  v57 = sub_27292E224();
  v58 = [v38 VTUIDeviceSpecificString_];

  v107 = v38;
  if (v58)
  {
    v59 = sub_27292E254();
    v61 = v60;

    *&v132 = v59;
    *(&v132 + 1) = v61;
    sub_2729255E8();
    v62 = sub_27292DE44();
    v64 = v63;
    LOBYTE(v59) = v65;
    sub_27292DDF4();
    v66 = sub_27292DE34();
    v68 = v67;
    v70 = v69;
    v72 = v71;

    sub_27292563C(v62, v64, v59 & 1);

    *&v132 = v66;
    *(&v132 + 1) = v68;
    LOBYTE(v133) = v70 & 1;
    *(&v133 + 1) = v72;
    sub_27292E094();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C278, &unk_272935E10);
    sub_27292571C();
    v73 = v112;
    sub_27292DF34();
    sub_27292563C(v66, v68, v70 & 1);

    v74 = sub_27292DF64();
    v75 = v110;
    (*(v113 + 32))(v110, v73, v114);
    *(v75 + *(v111 + 36)) = v74;
    sub_27291A7B8(v75, v120, &qword_28089C238, &qword_272935DD8);
    if ([v107 isIpad])
    {
      sub_27292E0E4();
      sub_27292D974();
      LODWORD(v113) = 0;
      v114 = v150;
      v111 = v154;
      v112 = v152;
      v110 = v155;
      v139 = 1;
      v138 = v151;
      v137 = v153;
      v104 = 1;
      v105 = v151;
      v107 = v153;
      LOBYTE(v132) = 0;
    }

    else
    {
      v114 = 0;
      v111 = 0;
      v112 = 0;
      v110 = 0;
      v107 = 0;
      v104 = 0;
      v105 = 0;
      LODWORD(v113) = 1;
    }

    v76 = v130;
    sub_27290B624(v106, v130);
    v77 = v109;
    v78 = swift_allocObject();
    v79 = sub_27290B5C0(v76, v78 + v77);
    MEMORY[0x28223BE20](v79);
    v80 = v118;
    sub_27292E054();
    v81 = sub_27292DF84();
    KeyPath = swift_getKeyPath();
    v83 = (v80 + *(v115 + 36));
    *v83 = KeyPath;
    v83[1] = v81;
    v134 = v142;
    v135 = v143;
    v136 = v144;
    v132 = v140;
    v133 = v141;
    v84 = v116;
    sub_27290939C(v120, v116, &qword_28089C238, &qword_272935DD8);
    v85 = v117;
    sub_27290939C(v80, v117, &qword_28089C228, &qword_272935DC8);
    v86 = v135;
    v87 = v119;
    *(v119 + 2) = v134;
    *(v87 + 48) = v86;
    *(v87 + 64) = v136;
    v88 = v133;
    *v87 = v132;
    *(v87 + 16) = v88;
    v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C298, &qword_272935E50);
    sub_27290939C(v84, v87 + v89[12], &qword_28089C238, &qword_272935DD8);
    v90 = v87 + v89[16];
    v91 = v104;
    *v90 = 0;
    *(v90 + 8) = v91;
    v92 = v105;
    *(v90 + 16) = v114;
    *(v90 + 24) = v92;
    v93 = v107;
    *(v90 + 32) = v112;
    *(v90 + 40) = v93;
    v94 = v110;
    *(v90 + 48) = v111;
    *(v90 + 56) = v94;
    *(v90 + 64) = v113;
    sub_27290939C(v85, v87 + v89[20], &qword_28089C228, &qword_272935DC8);
    sub_27290B880(v85, &qword_28089C228, &qword_272935DC8);
    sub_27290B880(v84, &qword_28089C238, &qword_272935DD8);
    sub_27290939C(v87, v123, &qword_28089C220, &qword_272935DC0);
    swift_storeEnumTagMultiPayload();
    sub_27290B998(&qword_28089C270, &qword_28089C220, &qword_272935DC0);
    v95 = v126;
    sub_27292DC34();
    v53 = v95;
    sub_27290B880(v87, &qword_28089C220, &qword_272935DC0);
    sub_27290B880(v80, &qword_28089C228, &qword_272935DC8);
    sub_27290B880(v120, &qword_28089C238, &qword_272935DD8);
    v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C260, &qword_272935E00);
    (*(*(v96 - 8) + 56))(v95, 0, 1, v96);
    goto LABEL_20;
  }

  __break(1u);
}

void sub_27291F610(uint64_t a1@<X8>)
{
  if (qword_28089BA10 != -1)
  {
    swift_once();
  }

  v2 = qword_28089BEA0;
  v3 = sub_27292E224();
  v4 = [v2 VTUIDeviceSpecificString_];

  if (v4)
  {
    sub_27292E254();

    sub_2729255E8();
    v5 = sub_27292DE44();
    v7 = v6;
    v9 = v8;
    sub_27292DDF4();
    v10 = sub_27292DE34();
    v12 = v11;
    v14 = v13;

    sub_27292563C(v5, v7, v9 & 1);

    v15 = [objc_opt_self() systemBlueColor];
    sub_27292DFD4();
    v16 = sub_27292DE24();
    v18 = v17;
    v20 = v19;
    v22 = v21;

    sub_27292563C(v10, v12, v14 & 1);

    *a1 = v16;
    *(a1 + 8) = v18;
    *(a1 + 16) = v20 & 1;
    *(a1 + 24) = v22;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_27291F7E4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v168 = a2;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C058, &qword_272935C30);
  v169 = *(v170 - 8);
  v3 = *(v169 + 64);
  v4 = MEMORY[0x28223BE20](v170);
  v180 = &v134 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v179 = &v134 - v6;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C060, &qword_272935C38);
  v7 = *(*(v143 - 8) + 64);
  MEMORY[0x28223BE20](v143);
  v145 = &v134 - v8;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C068, &qword_272935C40);
  v9 = *(*(v144 - 8) + 64);
  MEMORY[0x28223BE20](v144);
  v146 = &v134 - v10;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C070, &qword_272935C48);
  v11 = *(*(v166 - 8) + 64);
  MEMORY[0x28223BE20](v166);
  v147 = &v134 - v12;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C078, &qword_272935C50);
  v149 = *(v167 - 8);
  v13 = *(v149 + 64);
  MEMORY[0x28223BE20](v167);
  v148 = &v134 - v14;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C080, &qword_272935C58);
  v15 = *(*(v161 - 8) + 64);
  MEMORY[0x28223BE20](v161);
  v163 = &v134 - v16;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C088, &qword_272935C60);
  v17 = *(*(v151 - 8) + 64);
  MEMORY[0x28223BE20](v151);
  v150 = &v134 - v18;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C090, &qword_272935C68);
  v153 = *(v162 - 8);
  v19 = *(v153 + 64);
  MEMORY[0x28223BE20](v162);
  v152 = &v134 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C098, &qword_272935C70);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v184 = &v134 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v178 = &v134 - v25;
  v173 = type metadata accessor for GMEnrollmentSetupIntroView(0);
  v154 = *(v173 - 8);
  v26 = *(v154 + 8);
  MEMORY[0x28223BE20](v173);
  v171 = v27;
  v28 = &v134 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C0A0, &qword_272935C78);
  v29 = *(*(v158 - 8) + 64);
  MEMORY[0x28223BE20](v158);
  v31 = &v134 - v30;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C0A8, &qword_272935C80);
  v159 = *(v160 - 8);
  v32 = *(v159 + 64);
  MEMORY[0x28223BE20](v160);
  v157 = &v134 - v33;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C0B0, &qword_272935C88);
  v34 = *(*(v156 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v156);
  v177 = &v134 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v155 = &v134 - v38;
  MEMORY[0x28223BE20](v37);
  v183 = &v134 - v39;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C0B8, &qword_272935C90);
  v164 = *(v165 - 8);
  v40 = *(v164 + 64);
  v41 = MEMORY[0x28223BE20](v165);
  v182 = &v134 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v41);
  v176 = &v134 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v181 = &v134 - v46;
  MEMORY[0x28223BE20](v45);
  v48 = &v134 - v47;
  v49 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  v50 = *(a1 + 8);
  [v49 scaledValueForValue_];
  v52 = v51;

  v53 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  if ([objc_opt_self() isNaturalUIEnabled])
  {
    v54 = v50 * 0.5;
  }

  else
  {
    v54 = *(a1 + 16);
  }

  [v53 scaledValueForValue_];
  v56 = v55;

  v57 = sub_27292E094();
  MEMORY[0x28223BE20](v57);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C0C0, &qword_272935C98);
  v174 = sub_272924BEC();
  v175 = v48;
  sub_27292E0A4();
  sub_27290B624(a1, v28);
  v59 = (v154[80] + 16) & ~v154[80];
  v60 = swift_allocObject();
  v135 = v59;
  v154 = v28;
  v61 = sub_27290B5C0(v28, v60 + v59);
  MEMORY[0x28223BE20](v61);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C0D0, &qword_272935CA0);
  sub_27290B998(&qword_28089C0D8, &qword_28089C0D0, &qword_272935CA0);
  sub_27292E054();
  v62 = a1;
  sub_27292E0E4();
  v142 = v52;
  sub_27292D974();
  v63 = &v31[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C0E0, &qword_272935CA8) + 36)];
  v64 = v194;
  *v63 = v193;
  *(v63 + 1) = v64;
  *(v63 + 2) = v195;
  v134 = objc_opt_self();
  v65 = [v134 systemBlueColor];
  v66 = sub_27292DFD4();
  v67 = sub_27292DDA4();
  v68 = &v31[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C0E8, &qword_272935CB0) + 36)];
  *v68 = v66;
  v68[8] = v67;
  v69 = &v31[*(v158 + 36)];
  v141 = sub_27292DA44();
  v70 = *(v141 + 20);
  v71 = *MEMORY[0x277CE0118];
  v72 = sub_27292DB04();
  v73 = *(v72 - 8);
  v74 = *(v73 + 104);
  v140 = v71;
  v139 = v72;
  v138 = v74;
  v137 = v73 + 104;
  (v74)(&v69[v70], v71);
  *v69 = v56;
  *(v69 + 1) = v56;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C0F0, &qword_272935CB8);
  *&v69[*(v136 + 36)] = 256;
  sub_27292E094();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C0F8, &qword_272935CC0);
  sub_272924E34();
  v75 = MEMORY[0x277CE1340];
  sub_27290B998(&qword_28089C140, &qword_28089C0F8, &qword_272935CC0);
  v76 = MEMORY[0x277CE1350];
  v77 = v58;
  v78 = v157;
  sub_27292DF34();
  sub_27290B880(v31, &qword_28089C0A0, &qword_272935C78);
  v79 = *(v62 + *(v173 + 36) + 8);
  if (sub_27291AE14())
  {
    v80 = 1.0;
  }

  else
  {
    v80 = 0.0;
  }

  v81 = v155;
  (*(v159 + 32))(v155, v78, v160);
  *(v81 + *(v156 + 36)) = v80;
  sub_27291A7B8(v81, v183, &qword_28089C0B0, &qword_272935C88);
  v82 = sub_27292E094();
  MEMORY[0x28223BE20](v82);
  v173 = v77;
  sub_27292E0A4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27292D8A4();

  v172 = v62;
  if (v185)
  {
    goto LABEL_13;
  }

  if (qword_28089BA10 != -1)
  {
    swift_once();
  }

  if (([qword_28089BEA0 isBuddyOrFollowUp] & 1) == 0)
  {
LABEL_13:
    sub_27292E094();
    v97 = sub_27292DB14();
    MEMORY[0x28223BE20](v97);
    v185 = v76;
    v186 = v75;
    swift_getOpaqueTypeConformance2();
    v98 = v152;
    sub_27292E0B4();
    v99 = v153;
    v100 = v162;
    (*(v153 + 16))(v163, v98, v162);
    swift_storeEnumTagMultiPayload();
    sub_27292506C();
    v101 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089C150, &qword_272935CD8);
    v102 = sub_272925134();
    v103 = sub_27290B998(&qword_28089C180, &qword_28089C150, &qword_272935CD8);
    v185 = v166;
    v186 = MEMORY[0x277CE1350];
    v187 = v101;
    v188 = v166;
    v189 = v102;
    v190 = MEMORY[0x277CE1340];
    v191 = v103;
    v192 = v102;
    swift_getOpaqueTypeConformance2();
    v104 = v178;
    sub_27292DC34();
    (*(v99 + 8))(v98, v100);
  }

  else
  {
    v83 = v154;
    sub_27290B624(v62, v154);
    v84 = v135;
    v85 = swift_allocObject();
    v86 = sub_27290B5C0(v83, v85 + v84);
    MEMORY[0x28223BE20](v86);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C1A0, &qword_272935CF8);
    v87 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089C1A8, &qword_272935D00);
    v88 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089C1B0, &qword_272935D08);
    v89 = sub_27292547C();
    v90 = sub_272925500();
    v185 = v87;
    v186 = v76;
    v187 = v88;
    v188 = v88;
    v189 = v89;
    v190 = v75;
    v191 = v90;
    v192 = v90;
    swift_getOpaqueTypeConformance2();
    v91 = v145;
    sub_27292E054();
    sub_27292E0E4();
    sub_27292D974();
    v92 = (v91 + *(v143 + 36));
    v93 = v197;
    *v92 = v196;
    v92[1] = v93;
    v92[2] = v198;
    v94 = v76;
    if (*(v172 + 24) == 1)
    {
      v95 = [v134 systemGray6Color];
      v96 = sub_27292DFD4();
    }

    else
    {
      v96 = sub_27292DF84();
    }

    v121 = v96;
    v122 = sub_27292DDA4();
    v123 = v146;
    sub_27291A7B8(v91, v146, &qword_28089C060, &qword_272935C38);
    v124 = v123 + *(v144 + 36);
    *v124 = v121;
    *(v124 + 8) = v122;
    v125 = v166;
    v126 = v147;
    v127 = &v147[*(v166 + 36)];
    v138(&v127[*(v141 + 20)], v140, v139);
    *v127 = v56;
    *(v127 + 1) = v56;
    *&v127[*(v136 + 36)] = 256;
    sub_27291A7B8(v123, v126, &qword_28089C068, &qword_272935C40);
    sub_27292E094();
    v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C150, &qword_272935CD8);
    v129 = sub_272925134();
    v133 = sub_27290B998(&qword_28089C180, &qword_28089C150, &qword_272935CD8);
    v130 = v148;
    sub_27292DF34();
    sub_27290B880(v126, &qword_28089C070, &qword_272935C48);
    v131 = v149;
    v132 = v167;
    (*(v149 + 16))(v163, v130, v167);
    swift_storeEnumTagMultiPayload();
    sub_27292506C();
    v185 = v125;
    v186 = v94;
    v187 = v128;
    v188 = v125;
    v189 = v129;
    v190 = MEMORY[0x277CE1340];
    v191 = v133;
    v192 = v129;
    swift_getOpaqueTypeConformance2();
    v104 = v178;
    sub_27292DC34();
    (*(v131 + 8))(v130, v132);
  }

  v105 = sub_27292E094();
  MEMORY[0x28223BE20](v105);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C188, &qword_272935CE8);
  sub_272925364();
  v106 = v179;
  sub_27292E0A4();
  v107 = v164;
  v108 = *(v164 + 16);
  v109 = v176;
  v110 = v165;
  v108(v176, v175, v165);
  v111 = v177;
  sub_27290939C(v183, v177, &qword_28089C0B0, &qword_272935C88);
  v108(v182, v181, v110);
  sub_27290939C(v104, v184, &qword_28089C098, &qword_272935C70);
  v112 = v169;
  v174 = *(v169 + 16);
  v113 = v106;
  v114 = v170;
  v174(v180, v113, v170);
  v115 = v168;
  v108(v168, v109, v110);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C198, &qword_272935CF0);
  sub_27290939C(v111, &v115[v116[12]], &qword_28089C0B0, &qword_272935C88);
  v108(&v115[v116[16]], v182, v110);
  sub_27290939C(v184, &v115[v116[20]], &qword_28089C098, &qword_272935C70);
  v117 = v180;
  v174(&v115[v116[24]], v180, v114);
  v118 = *(v112 + 8);
  v118(v179, v114);
  sub_27290B880(v178, &qword_28089C098, &qword_272935C70);
  v119 = *(v107 + 8);
  v119(v181, v110);
  sub_27290B880(v183, &qword_28089C0B0, &qword_272935C88);
  v119(v175, v110);
  v118(v117, v114);
  sub_27290B880(v184, &qword_28089C098, &qword_272935C70);
  v119(v182, v110);
  sub_27290B880(v177, &qword_28089C0B0, &qword_272935C88);
  return (v119)(v176, v110);
}

double sub_272920FF4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for GMEnrollmentSetupIntroView(0) + 36) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27292D8A4();

  if (!v5)
  {
    if (qword_28089BA10 != -1)
    {
      swift_once();
    }

    [qword_28089BEA0 isBuddyOrFollowUp];
  }

  sub_27292E0E4();
  sub_27292D974();
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  result = *&v9;
  *(a2 + 48) = v9;
  return result;
}

uint64_t sub_272921148(void **a1)
{
  v2 = type metadata accessor for GMEnrollmentSetupIntroView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = &aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + *(MEMORY[0x28223BE20](v2) + 36) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27292D8A4();

  if (aBlock == 2 || sub_27291BDE0(aBlock + 1) == 4)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(aBlock) = 1;

    sub_27292D8B4();
    v7 = *a1;
    sub_27290B624(a1, &aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v8 = sub_27292E4B4();
    sub_27290B624(a1, &aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v10 = swift_allocObject();
    sub_27290B5C0(&aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
    v20 = sub_2729256EC;
    v21 = v10;
    aBlock = MEMORY[0x277D85DD0];
    v17 = 1107296256;
    v18 = sub_27290B0BC;
    v19 = &block_descriptor_52;
    v11 = _Block_copy(&aBlock);

    [v7 siriIntroViewControllerContinuePressed:v8 completion:v11];
LABEL_4:
    _Block_release(v11);
    return swift_unknownObjectRelease();
  }

  sub_27291AC24();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27292D8A4();

  if (aBlock == 4)
  {
    v13 = *a1;
    sub_27290B624(a1, v5);
    v14 = sub_27292E4B4();
    v20 = nullsub_1;
    v21 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v17 = 1107296256;
    v18 = sub_27290B0BC;
    v19 = &block_descriptor_2;
    v11 = _Block_copy(&aBlock);
    [v13 siriIntroViewControllerContinuePressed:v14 completion:v11];
    goto LABEL_4;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_27292D8A4();

  if (aBlock == 7)
  {
    v15 = *a1;
    sub_27290B624(a1, v5);
    [v15 siriIntroViewControllerContinuePressedOnSiriReady_];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_27292151C(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for GMEnrollmentSetupIntroView(0) + 36) + 8);
  sub_27291AC24();
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_27292D8B4();
}

uint64_t sub_2729215A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = sub_27292E0E4();
  a2[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C1E0, &qword_272935D48);
  return sub_2729215F4(a1, a2 + *(v5 + 44));
}

uint64_t sub_2729215F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a1;
  v77 = a2;
  v3 = sub_27292DCB4();
  v4 = *(v3 - 8);
  v73 = v3;
  v74 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v68 = &v59[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C1E8, &qword_272935D50);
  v75 = *(v7 - 8);
  v76 = v7;
  v8 = *(v75 + 64);
  MEMORY[0x28223BE20](v7);
  v69 = &v59[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C1F0, &qword_272935D58);
  v11 = *(v10 - 8);
  v71 = v10 - 8;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10 - 8);
  v72 = &v59[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v13);
  v70 = &v59[-v16];
  MEMORY[0x28223BE20](v15);
  v78 = &v59[-v17];
  v18 = type metadata accessor for GMEnrollmentSetupIntroView(0);
  v61 = *(a1 + *(v18 + 36) + 8);
  v62 = v18;
  sub_27291B67C();
  v90 = v19;
  v91 = v20;
  sub_2729255E8();
  v21 = sub_27292DE44();
  v23 = v22;
  v25 = v24;
  sub_27292DDB4();
  v26 = sub_27292DE34();
  v28 = v27;
  v30 = v29;

  sub_27292563C(v21, v23, v25 & 1);

  sub_27292DDD4();
  v31 = sub_27292DE14();
  v64 = v32;
  v65 = v31;
  LOBYTE(v21) = v33;
  v66 = v34;
  sub_27292563C(v26, v28, v30 & 1);

  sub_27292E0E4();
  sub_27292DA54();
  v112 = v21 & 1;
  v35 = v21 & 1;
  v60 = v21 & 1;
  *(&v63 + 1) = sub_27292DF94();
  *&v63 = swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27292D8A4();

  v36 = 1.0;
  if (v90)
  {
    v37 = 0.0;
  }

  else
  {
    v37 = 1.0;
  }

  v38 = *(v62 + 32);
  v39 = v68;
  sub_27292DCA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BF28, &qword_272935AC8);
  sub_27290B998(&qword_28089C1F8, &qword_28089BF28, &qword_272935AC8);
  sub_27292568C(&qword_28089C200, MEMORY[0x277CDE330]);
  v40 = v69;
  v41 = v73;
  sub_27292DE74();
  (*(v74 + 8))(v39, v41);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27292D8A4();

  if (!v90)
  {
    v36 = 0.0;
  }

  v42 = v70;
  (*(v75 + 32))(v70, v40, v76);
  *&v42[*(v71 + 44)] = v36;
  v43 = v42;
  v44 = v78;
  sub_27291A7B8(v43, v78, &qword_28089C1F0, &qword_272935D58);
  v45 = v72;
  sub_27290939C(v44, v72, &qword_28089C1F0, &qword_272935D58);
  v47 = v64;
  v46 = v65;
  *&v79 = v65;
  *(&v79 + 1) = v64;
  LOBYTE(v80) = v35;
  *(&v80 + 1) = *v111;
  DWORD1(v80) = *&v111[3];
  v48 = v66;
  *(&v80 + 1) = v66;
  v85 = v108;
  v86 = v109;
  v87 = v110;
  v81 = v104;
  v82 = v105;
  v83 = v106;
  v84 = v107;
  v49 = v63;
  v88 = v63;
  v89 = v37;
  v50 = v107;
  v51 = v77;
  *(v77 + 64) = v106;
  *(v51 + 80) = v50;
  v52 = v86;
  *(v51 + 96) = v85;
  *(v51 + 112) = v52;
  v53 = v80;
  *v51 = v79;
  *(v51 + 16) = v53;
  v54 = v82;
  *(v51 + 32) = v81;
  *(v51 + 48) = v54;
  v55 = v88;
  *(v51 + 128) = v87;
  *(v51 + 144) = v55;
  *(v51 + 160) = v89;
  v56 = v51;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C208, &qword_272935DA8);
  sub_27290939C(v45, v56 + *(v57 + 48), &qword_28089C1F0, &qword_272935D58);
  sub_27290939C(&v79, &v90, &qword_28089C210, &qword_272935DB0);
  sub_27290B880(v78, &qword_28089C1F0, &qword_272935D58);
  sub_27290B880(v45, &qword_28089C1F0, &qword_272935D58);
  v90 = v46;
  v91 = v47;
  v92 = v60;
  *v93 = *v111;
  *&v93[3] = *&v111[3];
  v99 = v108;
  v100 = v109;
  v101 = v110;
  v95 = v104;
  v96 = v105;
  v97 = v106;
  v98 = v107;
  v94 = v48;
  v102 = v49;
  v103 = v37;
  return sub_27290B880(&v90, &qword_28089C210, &qword_272935DB0);
}

double sub_272921CF8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for GMEnrollmentSetupIntroView(0) + 36) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27292D8A4();

  if (!v5)
  {
    if (qword_28089BA10 != -1)
    {
      swift_once();
    }

    [qword_28089BEA0 isBuddyOrFollowUp];
  }

  sub_27292E0E4();
  sub_27292D974();
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  result = *&v9;
  *(a2 + 48) = v9;
  return result;
}

double sub_272921E4C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  sub_27292E0E4();
  sub_27292D974();
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  result = *&v9;
  *(a2 + 48) = v9;
  return result;
}

uint64_t sub_272921EE4(void **a1)
{
  v2 = type metadata accessor for GMEnrollmentSetupIntroView(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = *a1;
  sub_27290B624(a1, &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  [v5 siriIntroViewControllerLaterPressed_];
  return swift_unknownObjectRelease();
}

void sub_272921F98()
{
  if (qword_28089BA10 != -1)
  {
    swift_once();
  }

  v0 = qword_28089BEA0;
  v1 = sub_27292E224();
  v2 = [v0 VTUIDeviceSpecificString_];

  if (v2)
  {
    sub_27292E254();

    sub_2729255E8();
    v3 = sub_27292DE44();
    v5 = v4;
    v7 = v6;
    sub_27292DDB4();
    v8 = sub_27292DE34();
    v10 = v9;
    v12 = v11;

    sub_27292563C(v3, v5, v7 & 1);

    sub_27292DDD4();
    v13 = sub_27292DE14();
    v15 = v14;
    v17 = v16;
    v19 = v18;
    sub_27292563C(v8, v10, v12 & 1);

    sub_27292E0E4();
    sub_27292DA54();
    v32 = v17 & 1;
    *&v22 = v13;
    *(&v22 + 1) = v15;
    LOBYTE(v23) = v17 & 1;
    *(&v23 + 1) = v19;
    v20 = sub_27292E094();
    v21 = MEMORY[0x28223BE20](v20);
    MEMORY[0x28223BE20](v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C1A8, &qword_272935D00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C1B0, &qword_272935D08);
    sub_27292547C();
    sub_272925500();
    sub_27292DF34();
    v31[6] = v28;
    v31[7] = v29;
    v31[8] = v30;
    v31[2] = v24;
    v31[3] = v25;
    v31[4] = v26;
    v31[5] = v27;
    v31[0] = v22;
    v31[1] = v23;
    sub_27290B880(v31, &qword_28089C1A8, &qword_272935D00);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2729222DC@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[7];
  v20[6] = a1[6];
  v20[7] = v4;
  v20[8] = a1[8];
  v5 = a1[3];
  v20[2] = a1[2];
  v20[3] = v5;
  v6 = a1[5];
  v20[4] = a1[4];
  v20[5] = v6;
  v7 = a1[1];
  v20[0] = *a1;
  v20[1] = v7;
  if (qword_28089BA10 != -1)
  {
    swift_once();
  }

  v8 = [qword_28089BEA0 isIpad];
  v9 = objc_opt_self();
  v10 = &selRef_labelColor;
  if (!v8)
  {
    v10 = &selRef_secondaryLabelColor;
  }

  v11 = [v9 *v10];
  v12 = sub_27292DFD4();
  KeyPath = swift_getKeyPath();
  v14 = a1[7];
  *(a2 + 96) = a1[6];
  *(a2 + 112) = v14;
  *(a2 + 128) = a1[8];
  v15 = a1[3];
  *(a2 + 32) = a1[2];
  *(a2 + 48) = v15;
  v16 = a1[5];
  *(a2 + 64) = a1[4];
  *(a2 + 80) = v16;
  v17 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v17;
  *(a2 + 144) = KeyPath;
  *(a2 + 152) = v12;
  return sub_27290939C(v20, &v19, &qword_28089C1A8, &qword_272935D00);
}

uint64_t sub_272922410@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[7];
  v18[6] = a1[6];
  v18[7] = v4;
  v18[8] = a1[8];
  v5 = a1[3];
  v18[2] = a1[2];
  v18[3] = v5;
  v6 = a1[5];
  v18[4] = a1[4];
  v18[5] = v6;
  v7 = a1[1];
  v18[0] = *a1;
  v18[1] = v7;
  if (qword_28089BA10 != -1)
  {
    swift_once();
  }

  if ([qword_28089BEA0 isIpad])
  {
    v8 = [objc_opt_self() systemBlueColor];
    v9 = sub_27292DFD4();
  }

  else
  {
    v9 = sub_27292DF94();
  }

  v10 = v9;
  KeyPath = swift_getKeyPath();
  v12 = a1[7];
  *(a2 + 96) = a1[6];
  *(a2 + 112) = v12;
  *(a2 + 128) = a1[8];
  v13 = a1[3];
  *(a2 + 32) = a1[2];
  *(a2 + 48) = v13;
  v14 = a1[5];
  *(a2 + 64) = a1[4];
  *(a2 + 80) = v14;
  v15 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v15;
  *(a2 + 144) = KeyPath;
  *(a2 + 152) = v10;
  return sub_27290939C(v18, &v17, &qword_28089C1A8, &qword_272935D00);
}

uint64_t sub_272922574(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  a4();
  return sub_27292DC44();
}

id sub_27292261C@<X0>(uint64_t a1@<X8>)
{
  if (qword_28089BA10 != -1)
  {
    swift_once();
  }

  result = [qword_28089BEA0 isIpad];
  if (result)
  {
    sub_27292E0E4();
    result = sub_27292D974();
    v3 = 0;
    v4 = v10;
    v5 = v12;
    v6 = v14;
    v7 = 1;
    v8 = v11;
    v9 = v13;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v9 = 0;
    v8 = 0;
    v7 = 0;
    v6 = 0uLL;
    v3 = 1;
  }

  *a1 = 0;
  *(a1 + 8) = v7;
  *(a1 + 16) = v4;
  *(a1 + 24) = v8;
  *(a1 + 32) = v5;
  *(a1 + 40) = v9;
  *(a1 + 48) = v6;
  *(a1 + 64) = v3;
  return result;
}

uint64_t sub_27292271C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_27292DD94();
  if (qword_28089BA10 != -1)
  {
    swift_once();
  }

  [qword_28089BEA0 isIpad];
  sub_27292D8E4();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_27290939C(a1, a2, &qword_28089BFE0, &qword_272935BD8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BFE8, &qword_272935BE0);
  v14 = a2 + *(result + 36);
  *v14 = v4;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  return result;
}

uint64_t sub_272922818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_27292DD94();
  if (qword_28089BA10 != -1)
  {
    swift_once();
  }

  [qword_28089BEA0 isIpad];
  sub_27292D8E4();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_27290939C(a1, a2, &qword_28089BFE0, &qword_272935BD8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BFE8, &qword_272935BE0);
  v14 = a2 + *(result + 36);
  *v14 = v4;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  return result;
}

uint64_t sub_272922910@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  v7 = a1[3];
  v6 = a1[4];
  v8 = sub_27292DA34();
  v9 = sub_27292DDA4();
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v7;
  *(a2 + 32) = v6;
  *(a2 + 40) = v8;
  *(a2 + 48) = v9;
}

uint64_t sub_272922988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v128 = a2;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C230, &qword_272935DD0);
  v119 = *(v121 - 8);
  v3 = v119[8];
  MEMORY[0x28223BE20](v121);
  v118 = &v102 - v4;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C2A0, &qword_272935E88);
  v122 = *(v123 - 1);
  v5 = *(v122 + 64);
  MEMORY[0x28223BE20](v123);
  v120 = &v102 - v6;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C2A8, &qword_272935E90);
  v126 = *(v127 - 8);
  v7 = *(v126 + 64);
  v8 = MEMORY[0x28223BE20](v127);
  v125 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v132 = &v102 - v10;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C088, &qword_272935C60);
  v11 = *(*(v117 - 1) + 64);
  MEMORY[0x28223BE20](v117);
  v116 = &v102 - v12;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C090, &qword_272935C68);
  v124 = *(v131 - 8);
  v13 = *(v124 + 64);
  v14 = MEMORY[0x28223BE20](v131);
  v130 = &v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v137 = &v102 - v16;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C2B0, &qword_272935E98);
  v133 = *(v107 - 8);
  v17 = *(v133 + 64);
  MEMORY[0x28223BE20](v107);
  v19 = &v102 - v18;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C2B8, &qword_272935EA0);
  v109 = *(v110 - 8);
  v20 = *(v109 + 64);
  MEMORY[0x28223BE20](v110);
  v108 = &v102 - v21;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C2C0, &qword_272935EA8);
  v112 = *(v113 - 8);
  v22 = *(v112 + 64);
  MEMORY[0x28223BE20](v113);
  v111 = &v102 - v23;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C2C8, &qword_272935EB0);
  v24 = *(*(v114 - 8) + 64);
  MEMORY[0x28223BE20](v114);
  v115 = &v102 - v25;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C2D0, &qword_272935EB8);
  v129 = *(v136 - 8);
  v26 = v129[8];
  v27 = MEMORY[0x28223BE20](v136);
  v135 = &v102 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v134 = &v102 - v29;
  if (qword_28089BA10 != -1)
  {
    swift_once();
  }

  v104 = qword_28089BEA0;
  if ([qword_28089BEA0 isIpad])
  {
    sub_27292E0E4();
    sub_27292D974();
    v140 = 1;
    v139 = v148;
    v138 = v150;
    v146 = 0;
    *&v141 = 0;
    BYTE8(v141) = 1;
    *&v142 = v147;
    BYTE8(v142) = v148;
    *&v143 = v149;
    BYTE8(v143) = v150;
    v144 = v151;
    v145 = 0;
  }

  else
  {
    LOBYTE(v147) = 1;
    v146 = 1;
    *&v141 = 0;
    BYTE8(v141) = 1;
    v145 = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C0C0, &qword_272935C98);
  sub_272924BEC();
  sub_27292DC34();
  v103 = type metadata accessor for GMEnrollmentSetupIntroView(0);
  v106 = *(a1 + *(v103 + 36) + 8);
  sub_27291AFD4();
  *&v141 = v30;
  *(&v141 + 1) = v31;
  v105 = sub_2729255E8();
  v32 = sub_27292DE44();
  v34 = v33;
  *&v141 = v32;
  *(&v141 + 1) = v33;
  v36 = v35 & 1;
  LOBYTE(v142) = v35 & 1;
  *(&v142 + 1) = v37;
  sub_27292E094();
  v38 = MEMORY[0x277CE0BC8];
  v39 = MEMORY[0x277CE0BD8];
  v40 = MEMORY[0x277CE1350];
  sub_27292DF34();
  sub_27292563C(v32, v34, v36);
  v41 = MEMORY[0x277CE1340];

  sub_27292DDC4();
  *&v141 = v39;
  *(&v141 + 1) = v40;
  *&v142 = v39;
  *(&v142 + 1) = v39;
  *&v143 = v38;
  *(&v143 + 1) = v41;
  *&v144 = v38;
  *(&v144 + 1) = v38;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v43 = v108;
  v44 = v107;
  sub_27292DE84();
  (*(v133 + 8))(v19, v44);
  v45 = sub_27292E094();
  MEMORY[0x28223BE20](v45);
  v133 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C2D8, &qword_272935EC0);
  *&v141 = v44;
  *(&v141 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_27292585C();
  v46 = v111;
  v47 = v110;
  sub_27292DF34();
  (*(v109 + 8))(v43, v47);
  if ([v104 isIpad])
  {
    v48 = sub_27292DFA4();
  }

  else
  {
    v48 = sub_27292DF94();
  }

  v49 = v48;
  v50 = v115;
  (*(v112 + 32))(v115, v46, v113);
  *(v50 + *(v114 + 36)) = v49;
  v51 = *(v103 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BB70, &qword_272934BF0);
  v52 = v133;
  sub_27292DC64();
  sub_27292599C();
  sub_27292DEF4();

  sub_27290B880(v50, &qword_28089C2C8, &qword_272935EB0);
  sub_27292E094();
  v53 = MEMORY[0x277CE1350];
  v54 = MEMORY[0x277CE1340];
  sub_27292DB14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C0C0, &qword_272935C98);
  *&v141 = v53;
  *(&v141 + 1) = v54;
  swift_getOpaqueTypeConformance2();
  sub_272924BEC();
  sub_27292E0B4();
  sub_27291B2A0();
  *&v141 = v55;
  *(&v141 + 1) = v56;
  v57 = sub_27292DE44();
  v59 = v58;
  v61 = v60;
  if (*(v52 + 24) == 1)
  {
    sub_27292DDE4();
  }

  else
  {
    sub_27292DDB4();
  }

  v62 = sub_27292DE34();
  v64 = v63;
  v66 = v65;
  v68 = v67;

  sub_27292563C(v57, v59, v61 & 1);

  *&v141 = v62;
  *(&v141 + 1) = v64;
  LOBYTE(v142) = v66 & 1;
  *(&v142 + 1) = v68;
  v69 = sub_27292E094();
  v117 = &v102;
  MEMORY[0x28223BE20](v69);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C278, &unk_272935E10);
  v71 = sub_27292571C();
  v72 = v118;
  v73 = MEMORY[0x277CE1350];
  sub_27292DF34();
  sub_27292563C(v62, v64, v66 & 1);

  v74 = sub_27292E094();
  v117 = &v102;
  MEMORY[0x28223BE20](v74);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C238, &qword_272935DD8);
  *&v141 = MEMORY[0x277CE0BD8];
  *(&v141 + 1) = v73;
  *&v142 = v70;
  *(&v142 + 1) = v70;
  *&v143 = MEMORY[0x277CE0BC8];
  *(&v143 + 1) = MEMORY[0x277CE1340];
  *&v144 = v71;
  *(&v144 + 1) = v71;
  v76 = swift_getOpaqueTypeConformance2();
  v101 = sub_272925B60();
  v77 = v120;
  v78 = v121;
  v79 = MEMORY[0x277CE1350];
  sub_27292DF34();
  (v119[1])(v72, v78);
  v80 = sub_27292E094();
  v119 = &v102;
  MEMORY[0x28223BE20](v80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C308, &qword_272935ED0);
  *&v141 = v78;
  *(&v141 + 1) = v79;
  *&v142 = v75;
  *(&v142 + 1) = v75;
  *&v143 = v76;
  *(&v143 + 1) = MEMORY[0x277CE1340];
  *&v144 = v101;
  *(&v144 + 1) = v101;
  swift_getOpaqueTypeConformance2();
  sub_272925C88();
  v81 = v132;
  v82 = v123;
  sub_27292DF44();
  (*(v122 + 8))(v77, v82);
  v143 = v154;
  v144 = v155;
  v145 = v156;
  v142 = v153;
  v141 = v152;
  v133 = v129[2];
  (v133)(v135, v134, v136);
  v83 = v124;
  v123 = *(v124 + 16);
  v84 = v130;
  (v123)(v130, v137, v131);
  v85 = v126;
  v122 = *(v126 + 16);
  v86 = v125;
  v87 = v81;
  v88 = v127;
  (v122)(v125, v87, v127);
  v89 = v144;
  v90 = v128;
  *(v128 + 32) = v143;
  *(v90 + 48) = v89;
  *(v90 + 64) = v145;
  v91 = v142;
  *v90 = v141;
  *(v90 + 16) = v91;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C318, &qword_272935ED8);
  (v133)(v90 + v92[12], v135, v136);
  v93 = v84;
  v94 = v131;
  (v123)(v90 + v92[16], v93, v131);
  (v122)(v90 + v92[20], v86, v88);
  v95 = *(v85 + 8);
  v95(v132, v88);
  v96 = *(v83 + 8);
  v97 = v94;
  v96(v137, v94);
  v98 = v129[1];
  v99 = v136;
  v98(v134, v136);
  v95(v86, v88);
  v96(v130, v97);
  return (v98)(v135, v99);
}

uint64_t sub_272923C68@<X0>(uint64_t *a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = a1[3];
  a2();
  v8 = sub_27292DE34();
  v10 = v9;
  LOBYTE(v6) = v11;
  v13 = v12;

  *a3 = v8;
  *(a3 + 8) = v10;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v13;
  return result;
}

uint64_t sub_272923CF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + *(type metadata accessor for GMEnrollmentSetupIntroView(0) + 36) + 8);
  LOBYTE(v5) = (sub_27291AD00() & 1) == 0;
  KeyPath = swift_getKeyPath();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C2B8, &qword_272935EA0);
  (*(*(v7 - 8) + 16))(a3, a1, v7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C2D8, &qword_272935EC0);
  v9 = a3 + *(result + 36);
  *v9 = KeyPath;
  *(v9 + 8) = v5;
  return result;
}

uint64_t sub_272923DC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C2B8, &qword_272935EA0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C2D8, &qword_272935EC0);
  v7 = a2 + *(result + 36);
  *v7 = KeyPath;
  *(v7 + 8) = 1;
  return result;
}

double sub_272923E74@<D0>(uint64_t a1@<X8>)
{
  sub_27292E0E4();
  sub_27292D974();
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  result = *&v7;
  *(a1 + 48) = v7;
  return result;
}

uint64_t sub_272923F0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a2 + *(type metadata accessor for GMEnrollmentSetupIntroView(0) + 36) + 8);
  v9 = (sub_27291AD00() & 1) == 0;
  KeyPath = swift_getKeyPath();
  *a3 = v4;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
  *(a3 + 24) = v7;
  *(a3 + 32) = KeyPath;
  *(a3 + 40) = v9;
  sub_272925844(v4, v5, v6);
}

uint64_t sub_272923FB4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  KeyPath = swift_getKeyPath();
  *a3 = v5;
  *(a3 + 8) = v6;
  *(a3 + 16) = v7;
  *(a3 + 24) = v8;
  *(a3 + 32) = KeyPath;
  *(a3 + 40) = a2;
  sub_272925844(v5, v6, v7);
}

uint64_t sub_272924034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_27292DFB4();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C230, &qword_272935DD0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C238, &qword_272935DD8);
  *(a2 + *(result + 36)) = v4;
  return result;
}

uint64_t sub_2729240CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_28089BA10 != -1)
  {
    swift_once();
  }

  if ([qword_28089BEA0 isIpad])
  {
    v4 = sub_27292DFA4();
  }

  else
  {
    v4 = sub_27292DF94();
  }

  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C230, &qword_272935DD0);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C238, &qword_272935DD8);
  *(a2 + *(result + 36)) = v5;
  return result;
}

uint64_t sub_2729241B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_27292DD94();
  v7 = *(a2 + *(type metadata accessor for GMEnrollmentSetupIntroView(0) + 36) + 8);
  sub_27291AD00();
  sub_27292D8E4();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C2A0, &qword_272935E88);
  (*(*(v16 - 8) + 16))(a3, a1, v16);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C308, &qword_272935ED0);
  v18 = a3 + *(result + 36);
  *v18 = v6;
  *(v18 + 8) = v9;
  *(v18 + 16) = v11;
  *(v18 + 24) = v13;
  *(v18 + 32) = v15;
  *(v18 + 40) = 0;
  return result;
}

uint64_t sub_2729242B0()
{
  v0 = *(type metadata accessor for GMEnrollmentSetupIntroView(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BB70, &qword_272934BF0);
  return sub_27292DC54();
}

uint64_t sub_27292435C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_272924394()
{
  sub_272918F08();
  if (v0 <= 0x3F)
  {
    sub_27292445C();
    if (v1 <= 0x3F)
    {
      sub_2729244C8();
      if (v2 <= 0x3F)
      {
        sub_27292455C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_27292445C()
{
  if (!qword_28089BF40)
  {
    v0 = sub_27292D964();
    if (!v1)
    {
      atomic_store(v0, &qword_28089BF40);
    }
  }
}

void sub_2729244C8()
{
  if (!qword_28089BF48)
  {
    type metadata accessor for GMIntroViewModel();
    sub_27292568C(&qword_28089BBC0, type metadata accessor for GMIntroViewModel);
    v0 = sub_27292DA14();
    if (!v1)
    {
      atomic_store(v0, &qword_28089BF48);
    }
  }
}

void sub_27292455C()
{
  if (!qword_28089BF50)
  {
    v0 = sub_27292DC84();
    if (!v1)
    {
      atomic_store(v0, &qword_28089BF50);
    }
  }
}

uint64_t sub_2729245D0(uint64_t a1)
{
  v3 = *(type metadata accessor for GMEnrollmentSetupIntroView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_27291DCDC(a1, v4);
}

unint64_t sub_272924650()
{
  result = qword_28089BF90;
  if (!qword_28089BF90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089BF80, &qword_272935B70);
    sub_27290B998(&qword_28089BF88, &qword_28089BF78, &qword_272935B68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089BF90);
  }

  return result;
}

unint64_t sub_272924708()
{
  result = qword_28089BF98;
  if (!qword_28089BF98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089BF60, &qword_272935B50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089BF78, &qword_272935B68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089BF80, &qword_272935B70);
    sub_27290B998(&qword_28089BF88, &qword_28089BF78, &qword_272935B68);
    sub_272924650();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089BF98);
  }

  return result;
}

unint64_t sub_272924844()
{
  result = qword_28089BFA0;
  if (!qword_28089BFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089BFA0);
  }

  return result;
}

unint64_t sub_272924898()
{
  result = qword_28089BFB0;
  if (!qword_28089BFB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089BF70, &qword_272935B60);
    sub_27290B998(&qword_28089BFA8, &qword_28089BF68, &qword_272935B58);
    sub_27290B998(&qword_28089BFB8, &qword_28089BFC0, &qword_272935BC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089BFB0);
  }

  return result;
}

unint64_t sub_272924984()
{
  result = qword_28089BFD8;
  if (!qword_28089BFD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089BFD0, &qword_272935BD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089BFE0, &qword_272935BD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089BFE8, &qword_272935BE0);
    sub_272924A90();
    sub_272924B48();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089BFD8);
  }

  return result;
}

unint64_t sub_272924A90()
{
  result = qword_28089BFF0;
  if (!qword_28089BFF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089BFE0, &qword_272935BD8);
    sub_27290B998(&qword_28089BFF8, &qword_28089C000, &qword_272935BE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089BFF0);
  }

  return result;
}

unint64_t sub_272924B48()
{
  result = qword_28089C008;
  if (!qword_28089C008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089BFE8, &qword_272935BE0);
    sub_272924A90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089C008);
  }

  return result;
}

unint64_t sub_272924BEC()
{
  result = qword_28089C0C8;
  if (!qword_28089C0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089C0C0, &qword_272935C98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089C0C8);
  }

  return result;
}

uint64_t objectdestroyTm_2()
{
  v1 = (type metadata accessor for GMEnrollmentSetupIntroView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3);
  swift_unknownObjectRelease();
  v6 = v1[10];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BF28, &qword_272935AC8);
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = *(v0 + v3 + v1[11] + 8);

  v9 = v0 + v3 + v1[12];
  v10 = sub_27292DC94();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v9, 1, v10))
  {
    (*(v11 + 8))(v9, v10);
  }

  v12 = *(v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BB70, &qword_272934BF0) + 40));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

unint64_t sub_272924E34()
{
  result = qword_28089C100;
  if (!qword_28089C100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089C0A0, &qword_272935C78);
    sub_272924EEC();
    sub_27290B998(&qword_28089C138, &qword_28089C0F0, &qword_272935CB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089C100);
  }

  return result;
}

unint64_t sub_272924EEC()
{
  result = qword_28089C108;
  if (!qword_28089C108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089C0E8, &qword_272935CB0);
    sub_272924FA4();
    sub_27290B998(&qword_28089C128, &qword_28089C130, &qword_272935CD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089C108);
  }

  return result;
}

unint64_t sub_272924FA4()
{
  result = qword_28089C110;
  if (!qword_28089C110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089C0E0, &qword_272935CA8);
    sub_27290B998(&qword_28089C118, &qword_28089C120, &qword_272935CC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089C110);
  }

  return result;
}

unint64_t sub_27292506C()
{
  result = qword_28089C148;
  if (!qword_28089C148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089C090, &qword_272935C68);
    swift_getOpaqueTypeConformance2();
    sub_272924BEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089C148);
  }

  return result;
}

unint64_t sub_272925134()
{
  result = qword_28089C158;
  if (!qword_28089C158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089C070, &qword_272935C48);
    sub_2729251EC();
    sub_27290B998(&qword_28089C138, &qword_28089C0F0, &qword_272935CB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089C158);
  }

  return result;
}

unint64_t sub_2729251EC()
{
  result = qword_28089C160;
  if (!qword_28089C160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089C068, &qword_272935C40);
    sub_2729252A4();
    sub_27290B998(&qword_28089C128, &qword_28089C130, &qword_272935CD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089C160);
  }

  return result;
}

unint64_t sub_2729252A4()
{
  result = qword_28089C168;
  if (!qword_28089C168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089C060, &qword_272935C38);
    sub_27290B998(&qword_28089C170, &qword_28089C178, &qword_272935CE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089C168);
  }

  return result;
}

unint64_t sub_272925364()
{
  result = qword_28089C190;
  if (!qword_28089C190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089C188, &qword_272935CE8);
    sub_272924BEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089C190);
  }

  return result;
}

uint64_t sub_272925400(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for GMEnrollmentSetupIntroView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_27292547C()
{
  result = qword_28089C1B8;
  if (!qword_28089C1B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089C1A8, &qword_272935D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089C1B8);
  }

  return result;
}

unint64_t sub_272925500()
{
  result = qword_28089C1C0;
  if (!qword_28089C1C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089C1B0, &qword_272935D08);
    sub_27292547C();
    sub_27290B998(&qword_28089C1C8, &qword_28089C1D0, &qword_272935D10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089C1C0);
  }

  return result;
}

unint64_t sub_2729255E8()
{
  result = qword_28089C1D8;
  if (!qword_28089C1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089C1D8);
  }

  return result;
}

uint64_t sub_27292563C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_27292568C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_27292571C()
{
  result = qword_28089C280;
  if (!qword_28089C280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089C278, &unk_272935E10);
    sub_27290B998(&qword_28089C288, &qword_28089C290, &unk_272936260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089C280);
  }

  return result;
}

id sub_2729257D4()
{
  v1 = *(type metadata accessor for GMEnrollmentSetupIntroView(0) - 8);
  v2 = *(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return [v2 siriIntroViewControllerPrivacyLinkTapped];
}

uint64_t sub_272925844(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_27292585C()
{
  result = qword_28089C2E0;
  if (!qword_28089C2E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089C2D8, &qword_272935EC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089C2B0, &qword_272935E98);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_27290B998(&qword_28089C288, &qword_28089C290, &unk_272936260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089C2E0);
  }

  return result;
}

unint64_t sub_27292599C()
{
  result = qword_28089C2E8;
  if (!qword_28089C2E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089C2C8, &qword_272935EB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089C2B8, &qword_272935EA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089C2D8, &qword_272935EC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089C2B0, &qword_272935E98);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_27292585C();
    swift_getOpaqueTypeConformance2();
    sub_27290B998(&qword_28089C2F0, &qword_28089C2F8, &qword_272935EC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089C2E8);
  }

  return result;
}

unint64_t sub_272925B60()
{
  result = qword_28089C300;
  if (!qword_28089C300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089C238, &qword_272935DD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089C278, &unk_272935E10);
    sub_27292571C();
    swift_getOpaqueTypeConformance2();
    sub_27290B998(&qword_28089C2F0, &qword_28089C2F8, &qword_272935EC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089C300);
  }

  return result;
}

unint64_t sub_272925C88()
{
  result = qword_28089C310;
  if (!qword_28089C310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089C308, &qword_272935ED0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089C230, &qword_272935DD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089C238, &qword_272935DD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089C278, &unk_272935E10);
    sub_27292571C();
    swift_getOpaqueTypeConformance2();
    sub_272925B60();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089C310);
  }

  return result;
}

uint64_t type metadata accessor for GMIntroIPadAnimationView()
{
  result = qword_28089C320;
  if (!qword_28089C320)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_272925E70()
{
  sub_27292D914();
  if (v0 <= 0x3F)
  {
    sub_2729244C8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_272925EF4(void *a1)
{
  v175 = a1;
  v2 = sub_27292E154();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v172 = &v160 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_27292E174();
  v173 = *(v6 - 8);
  v7 = *(v173 + 64);
  MEMORY[0x28223BE20](v6);
  v171 = &v160 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_27292E144();
  v168 = *(v169 - 1);
  v9 = v168[8];
  MEMORY[0x28223BE20](v169);
  v11 = (&v160 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v174 = sub_27292E194();
  v12 = *(v174 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v174);
  v16 = &v160 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v170 = &v160 - v17;
  v18 = *(v1 + *(type metadata accessor for GMIntroIPadAnimationView() + 20) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v167 = v18;
  sub_27292D8A4();

  if (aBlock > 2u)
  {
    if (aBlock == 7)
    {
      v24 = sub_27292E224();
      v25 = [v175 publishedObjectWithName_];

      if (v25)
      {
        sub_27292E3B4();
        swift_unknownObjectRelease();
      }

      else
      {
        v187 = 0u;
        v188 = 0u;
      }

      v189 = v187;
      v190 = v188;
      if (*(&v188 + 1))
      {
        sub_272908E38(0, &qword_28089BCB8, 0x277CD9ED0);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_79;
        }

        v75 = v186;
        [v186 bounds];
        v88 = v87;
        v90 = v89;
        v92 = v91;
        v94 = v93;
        v84 = [objc_allocWithZone(MEMORY[0x277D61A60]) init];
        [v84 setFrame_];
        [v84 setIsQuicktationPill_];
        LODWORD(v95) = 1045220557;
        [v84 setMinimumPowerLevel_];
        [v84 setColorPalette_];
        [v84 setPaused_];
        [v84 bounds];
        v97 = v96;
        v99 = v98;
        v101 = v100;
        v103 = v102;
        v104 = [objc_allocWithZone(MEMORY[0x277D61A48]) init];
        [v104 setOpaque_];
        LODWORD(v105) = 1045220557;
        [v104 setMinimumPowerLevel_];
        [v104 setAllowsHitTesting_];
        [v104 setFrame_];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BC98, &qword_272934D60);
        v106 = swift_allocObject();
        *(v106 + 16) = xmmword_272934680;
        CAColorMatrixMakeMultiplyColor();
        v107 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
        v108 = objc_opt_self();
        v178 = v183;
        v179 = v184;
        v180 = v185;
        v177 = v182;
        v176 = aBlock;
        v109 = [v108 valueWithCAColorMatrix_];
        [v107 setValue:v109 forKey:*MEMORY[0x277CDA440]];

        *(v106 + 56) = sub_272908E38(0, &qword_28089BCC8, 0x277CD9EA0);
        *(v106 + 32) = v107;
        v110 = sub_27292E2B4();

        [v84 setFilters_];

        [v84 setMask_];
        [v104 setBurstOpacity_];
        [v104 setBurstStartPosition_];
        LODWORD(v111) = 1137180672;
        LODWORD(v112) = 10.0;
        [v104 setCustomCornerRadius:v112 forWidth:v111];
        [v104 animateOn];

        goto LABEL_33;
      }

      p_aBlock = &v189;
LABEL_35:
      sub_272928A1C(p_aBlock);
      goto LABEL_79;
    }

    if (aBlock == 4)
    {
      sub_272908E38(0, &qword_28089BB40, 0x277D85C78);
      v30 = sub_27292E374();
      v166 = v6;
      v167 = v30;
      sub_27292E184();
      *v11 = 500;
      v31 = v168;
      v32 = v169;
      (v168[13])(v11, *MEMORY[0x277D85178], v169);
      v33 = v170;
      MEMORY[0x2743D0080](v16, v11);
      (v31[1])(v11, v32);
      v34 = *(v12 + 8);
      v165 = v12 + 8;
      v35 = v174;
      v34(v16, v174);
      v36 = swift_allocObject();
      v37 = v175;
      *(v36 + 16) = v175;
      *&v183 = sub_272928A84;
      *(&v183 + 1) = v36;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v182 = sub_27290B0BC;
      *(&v182 + 1) = &block_descriptor_3;
      v38 = _Block_copy(&aBlock);
      v39 = v37;

      v40 = v171;
      sub_27292E164();
      *&aBlock = MEMORY[0x277D84F90];
      sub_272928C9C(&qword_28089BB48, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BB50, &qword_272934B48);
      sub_2729136D0();
      v41 = v172;
      sub_27292E3D4();
      v42 = v167;
      MEMORY[0x2743D0240](v33, v40, v41, v38);
      _Block_release(v38);

      (*(v3 + 8))(v41, v2);
      (*(v173 + 8))(v40, v166);
      v34(v33, v35);
      goto LABEL_79;
    }

    if (aBlock != 3)
    {
      goto LABEL_79;
    }

LABEL_10:
    v21 = v175;
    sub_2729282F4(v175);
    v22 = sub_27292E224();
    v23 = [v21 publishedObjectWithName_];

    if (v23)
    {
      sub_27292E3B4();
      swift_unknownObjectRelease();
    }

    else
    {
      v187 = 0u;
      v188 = 0u;
    }

    v189 = v187;
    v190 = v188;
    if (*(&v188 + 1))
    {
      sub_272908E38(0, &qword_28089BCB8, 0x277CD9ED0);
      if (swift_dynamicCast())
      {
        v43 = v186;
        [v186 bounds];
        v45 = v44;
        v47 = v46;
        v49 = v48;
        v51 = v50;
        v52 = [objc_allocWithZone(MEMORY[0x277D61A60]) init];
        [v52 setFrame_];
        [v52 setIsQuicktationPill_];
        LODWORD(v53) = 1045220557;
        [v52 setMinimumPowerLevel_];
        [v52 setColorPalette_];
        [v52 setPaused_];
        [v52 bounds];
        v55 = v54;
        v57 = v56;
        v59 = v58;
        v61 = v60;
        v62 = [objc_allocWithZone(MEMORY[0x277D61A48]) init];
        [v62 setOpaque_];
        LODWORD(v63) = 1045220557;
        [v62 setMinimumPowerLevel_];
        [v62 setAllowsHitTesting_];
        [v62 setFrame_];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BC98, &qword_272934D60);
        v64 = swift_allocObject();
        *(v64 + 16) = xmmword_272934680;
        CAColorMatrixMakeMultiplyColor();
        v65 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
        v66 = objc_opt_self();
        v178 = v183;
        v179 = v184;
        v180 = v185;
        v177 = v182;
        v176 = aBlock;
        v67 = [v66 valueWithCAColorMatrix_];
        [v65 setValue:v67 forKey:*MEMORY[0x277CDA440]];

        *(v64 + 56) = sub_272908E38(0, &qword_28089BCC8, 0x277CD9EA0);
        *(v64 + 32) = v65;
        v68 = sub_27292E2B4();

        [v52 setFilters_];

        [v52 setMask_];
        [v62 setBurstOpacity_];
        [v62 setBurstStartPosition_];
        LODWORD(v69) = 1137180672;
        LODWORD(v70) = 10.0;
        [v62 setCustomCornerRadius:v70 forWidth:v69];
        [v62 animateOn];

        [v43 addSublayer_];
      }
    }

    else
    {
      sub_272928A1C(&v189);
    }

    v71 = sub_27292E224();
    v72 = v175;
    [v175 setState:v71 animated:1];

    v73 = sub_27292E224();
    v74 = [v72 publishedObjectWithName_];

    if (v74)
    {
      sub_27292E3B4();
      swift_unknownObjectRelease();
    }

    else
    {
      v177 = 0u;
      v176 = 0u;
    }

    v182 = v177;
    aBlock = v176;
    if (*(&v177 + 1))
    {
      sub_272908E38(0, &qword_28089BCB8, 0x277CD9ED0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_79;
      }

      v75 = v189;
      [v189 bounds];
      v77 = v76;
      v79 = v78;
      v81 = v80;
      v83 = v82;
      v84 = [objc_allocWithZone(MEMORY[0x277D61A60]) init];
      [v84 setFrame_];
      [v84 setIsQuicktationPill_];
      LODWORD(v85) = 1045220557;
      [v84 setMinimumPowerLevel_];
      [v84 setColorPalette_];
      [v84 setPaused_];
LABEL_33:
      [v75 addSublayer_];

      goto LABEL_79;
    }

    p_aBlock = &aBlock;
    goto LABEL_35;
  }

  if (!aBlock)
  {
    goto LABEL_10;
  }

  if (aBlock != 1)
  {
    if (aBlock != 2)
    {
      goto LABEL_79;
    }

    v19 = sub_27292E224();
    v20 = [v175 publishedObjectWithName_];

    if (v20)
    {
      sub_27292E3B4();
      swift_unknownObjectRelease();
    }

    else
    {
      v177 = 0u;
      v176 = 0u;
    }

    v182 = v177;
    aBlock = v176;
    v164 = v1;
    v163 = v3;
    v166 = v6;
    if (*(&v177 + 1))
    {
      sub_272908E38(0, &qword_28089BCB8, 0x277CD9ED0);
      if (swift_dynamicCast())
      {
        v113 = v189;
        v114 = [v189 sublayers];
        if (v114)
        {
          v165 = v12;
          v115 = v114;
          v116 = sub_27292E2C4();

          v162 = v2;
          v161 = v113;
          if (v116 >> 62)
          {
            goto LABEL_71;
          }

          for (i = *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_27292E434())
          {
            v118 = 0;
            while (1)
            {
              if ((v116 & 0xC000000000000001) != 0)
              {
                v119 = MEMORY[0x2743D02E0](v118, v116);
              }

              else
              {
                if (v118 >= *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_69;
                }

                v119 = *(v116 + 8 * v118 + 32);
              }

              v120 = v119;
              v121 = v118 + 1;
              if (__OFADD__(v118, 1))
              {
                break;
              }

              [v119 removeFromSuperlayer];

              ++v118;
              if (v121 == i)
              {
                goto LABEL_72;
              }
            }

            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
LABEL_71:
            ;
          }

LABEL_72:

          v2 = v162;
          v12 = v165;
        }

        else
        {
        }
      }
    }

    else
    {
      sub_272928A1C(&aBlock);
    }

    sub_272908E38(0, &qword_28089BB40, 0x277D85C78);
    v130 = sub_27292E374();
    sub_27292E184();
    *v11 = 1000;
    v131 = v168;
    v132 = v169;
    (v168[13])(v11, *MEMORY[0x277D85178], v169);
    v133 = v170;
    MEMORY[0x2743D0080](v16, v11);
    (v131[1])(v11, v132);
    v169 = *(v12 + 8);
    v134 = v174;
    (v169)(v16, v174);
    v135 = swift_allocObject();
    v136 = v175;
    *(v135 + 16) = v175;
    *&v183 = sub_272928AC0;
    *(&v183 + 1) = v135;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v182 = sub_27290B0BC;
    *(&v182 + 1) = &block_descriptor_9;
    v137 = _Block_copy(&aBlock);
    v168 = v136;

    v138 = v171;
    sub_27292E164();
    *&aBlock = MEMORY[0x277D84F90];
    sub_272928C9C(&qword_28089BB48, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BB50, &qword_272934B48);
    sub_2729136D0();
    v139 = v172;
    sub_27292E3D4();
    MEMORY[0x2743D0240](v133, v138, v139, v137);
    _Block_release(v137);

    (*(v163 + 8))(v139, v2);
    (*(v173 + 8))(v138, v166);
    (v169)(v133, v134);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_27292D8A4();

    v140 = aBlock;
    v141 = v168;
    goto LABEL_78;
  }

  v26 = sub_27292E224();
  v27 = v175;
  [v175 setState:v26 animated:1];

  v28 = sub_27292E224();
  v29 = [v27 publishedObjectWithName_];

  if (v29)
  {
    sub_27292E3B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v177 = 0u;
    v176 = 0u;
  }

  v182 = v177;
  aBlock = v176;
  if (*(&v177 + 1))
  {
    sub_272908E38(0, &qword_28089BCB8, 0x277CD9ED0);
    if (swift_dynamicCast())
    {
      v166 = v6;
      v122 = v189;
      v123 = [v189 sublayers];
      if (!v123)
      {
LABEL_76:
        sub_272908E38(0, &qword_28089BB40, 0x277D85C78);
        v164 = v1;
        v165 = sub_27292E374();
        sub_27292E184();
        *v11 = 1200;
        v142 = v168;
        v143 = v169;
        (v168[13])(v11, *MEMORY[0x277D85178], v169);
        v144 = v170;
        MEMORY[0x2743D0080](v16, v11);
        (v142[1])(v11, v143);
        v169 = *(v12 + 8);
        (v169)(v16, v174);
        v145 = swift_allocObject();
        *(v145 + 16) = v122;
        *&v183 = sub_272928B3C;
        *(&v183 + 1) = v145;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        *&v182 = sub_27290B0BC;
        *(&v182 + 1) = &block_descriptor_15;
        v146 = _Block_copy(&aBlock);
        v147 = v122;

        v148 = v171;
        sub_27292E164();
        *&aBlock = MEMORY[0x277D84F90];
        sub_272928C9C(&qword_28089BB48, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BB50, &qword_272934B48);
        sub_2729136D0();
        v149 = v3;
        v150 = v172;
        sub_27292E3D4();
        v151 = v165;
        MEMORY[0x2743D0240](v144, v148, v150, v146);
        _Block_release(v146);

        (*(v149 + 8))(v150, v2);
        (*(v173 + 8))(v148, v166);
        (v169)(v144, v174);
        goto LABEL_77;
      }

      v161 = v122;
      v165 = v12;
      v163 = v3;
      v124 = v123;
      v116 = sub_27292E2C4();

      v162 = v2;
      if (v116 >> 62)
      {
        v125 = sub_27292E434();
        if (v125)
        {
LABEL_57:
          v126 = 0;
          do
          {
            if ((v116 & 0xC000000000000001) != 0)
            {
              v127 = MEMORY[0x2743D02E0](v126, v116);
            }

            else
            {
              if (v126 >= *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_70;
              }

              v127 = *(v116 + 8 * v126 + 32);
            }

            v128 = v127;
            v129 = v126 + 1;
            if (__OFADD__(v126, 1))
            {
              goto LABEL_68;
            }

            [v127 removeFromSuperlayer];

            ++v126;
          }

          while (v129 != v125);
        }
      }

      else
      {
        v125 = *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v125)
        {
          goto LABEL_57;
        }
      }

      v2 = v162;
      v3 = v163;
      v12 = v165;
      v122 = v161;
      goto LABEL_76;
    }
  }

  else
  {
    sub_272928A1C(&aBlock);
  }

LABEL_77:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27292D8A4();

  v140 = aBlock;
  v141 = v175;
LABEL_78:
  sub_272927E90(v140, v141);
LABEL_79:
  v152 = [objc_opt_self() sharedStyle];
  v153 = [v152 isIPadWithVolumePowerSameSide];

  if (v153)
  {
    v154 = sub_27292E224();
    v155 = [v175 publishedObjectWithName_];

    if (v155)
    {
      sub_27292E3B4();
      swift_unknownObjectRelease();
    }

    else
    {
      v177 = 0u;
      v176 = 0u;
    }

    v182 = v177;
    aBlock = v176;
    if (*(&v177 + 1))
    {
      sub_272908E38(0, &qword_28089BCB8, 0x277CD9ED0);
      if (swift_dynamicCast())
      {
        v156 = v189;
        [v189 setHidden_];
      }
    }

    else
    {
      sub_272928A1C(&aBlock);
    }

    v157 = sub_27292E224();
    v158 = [v175 publishedObjectWithName_];

    if (v158)
    {
      sub_27292E3B4();
      swift_unknownObjectRelease();
    }

    else
    {
      v177 = 0u;
      v176 = 0u;
    }

    v182 = v177;
    aBlock = v176;
    if (*(&v177 + 1))
    {
      sub_272908E38(0, &qword_28089BCB8, 0x277CD9ED0);
      if (swift_dynamicCast())
      {
        v159 = v189;
        [v189 setHidden_];
      }
    }

    else
    {
      sub_272928A1C(&aBlock);
    }
  }
}

void sub_272927B54(void *a1)
{
  [a1 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [objc_allocWithZone(MEMORY[0x277D61A60]) init];
  [v10 setFrame_];
  [v10 setIsQuicktationPill_];
  LODWORD(v11) = 1045220557;
  [v10 setMinimumPowerLevel_];
  [v10 setColorPalette_];
  [v10 setPaused_];
  [v10 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [objc_allocWithZone(MEMORY[0x277D61A48]) init];
  [v20 setOpaque_];
  LODWORD(v21) = 1045220557;
  [v20 setMinimumPowerLevel_];
  [v20 setAllowsHitTesting_];
  [v20 setFrame_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BC98, &qword_272934D60);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_272934680;
  CAColorMatrixMakeMultiplyColor();
  v23 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
  v24 = [objc_opt_self() valueWithCAColorMatrix_];
  [v23 setValue:v24 forKey:*MEMORY[0x277CDA440]];

  *(v22 + 56) = sub_272908E38(0, &qword_28089BCC8, 0x277CD9EA0);
  *(v22 + 32) = v23;
  v25 = sub_27292E2B4();

  [v10 setFilters_];

  [v10 setMask_];
  LODWORD(v26) = 0.5;
  [v20 setBurstOpacity_];
  [v20 setBurstStartPosition_];
  [v20 setBurstStartPositionCustom_];
  LODWORD(v27) = 1137180672;
  LODWORD(v28) = 10.0;
  [v20 setCustomCornerRadius:v28 forWidth:v27];
  [v20 animateOn];

  [a1 addSublayer_];
}

uint64_t sub_272927E90(int a1, void *a2)
{
  v37 = a2;
  v36 = a1;
  v38 = sub_27292E154();
  v41 = *(v38 - 8);
  v2 = *(v41 + 64);
  MEMORY[0x28223BE20](v38);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_27292E174();
  v39 = *(v5 - 8);
  v40 = v5;
  v6 = *(v39 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for GMIntroIPadAnimationView();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_27292E194();
  v35 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v32 - v19;
  sub_272908E38(0, &qword_28089BB40, 0x277D85C78);
  v33 = sub_27292E374();
  sub_27292E184();
  sub_27292E1B4();
  v21 = *(v14 + 8);
  v21(v18, v13);
  sub_272928B44(v34, v12);
  v22 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v23 = v22 + v11;
  v24 = (v22 + v11) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  sub_272928BA8(v12, v25 + v22);
  *(v25 + v23) = v36;
  v26 = v37;
  *(v25 + v24 + 8) = v37;
  aBlock[4] = sub_272928C0C;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_27290B0BC;
  aBlock[3] = &block_descriptor_22;
  v27 = _Block_copy(aBlock);
  v28 = v26;

  sub_27292E164();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_272928C9C(&qword_28089BB48, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BB50, &qword_272934B48);
  sub_2729136D0();
  v29 = v38;
  sub_27292E3D4();
  v30 = v33;
  MEMORY[0x2743D0240](v20, v8, v4, v27);
  _Block_release(v27);

  (*(v41 + 8))(v4, v29);
  (*(v39 + 8))(v8, v40);
  return (v21)(v20, v35);
}

uint64_t sub_2729282F4(void *a1)
{
  v2 = sub_27292D914();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x277CDF3C0], v2);
  v7 = sub_27292D904();
  (*(v3 + 8))(v6, v2);
  v8 = aIppet;
  v9 = 3;
  do
  {
    v11 = *(v8 - 1);
    v10 = *v8;

    v12 = sub_27292E224();
    v13 = [a1 publishedObjectWithName_];

    if (v13)
    {
      sub_27292E3B4();
      swift_unknownObjectRelease();
    }

    else
    {
      v25 = 0u;
      v26 = 0u;
    }

    v27 = v25;
    v28 = v26;
    if (*(&v26 + 1))
    {
      sub_272908E38(0, &qword_28089BCB8, 0x277CD9ED0);
      if (swift_dynamicCast())
      {
        v14 = v24;
        [v24 setHidden_];
      }
    }

    else
    {

      sub_272928A1C(&v27);
    }

    v8 += 16;
    --v9;
  }

  while (v9);
  HIDWORD(v23) = v7 ^ 1;
  v15 = aPpet;
  v16 = 3;
  do
  {
    v19 = *(v15 - 1);
    v18 = *v15;

    v20 = sub_27292E224();
    v21 = [a1 publishedObjectWithName_];

    if (v21)
    {
      sub_27292E3B4();
      swift_unknownObjectRelease();
    }

    else
    {
      v25 = 0u;
      v26 = 0u;
    }

    v27 = v25;
    v28 = v26;
    if (*(&v26 + 1))
    {
      sub_272908E38(0, &qword_28089BCB8, 0x277CD9ED0);
      if (swift_dynamicCast())
      {
        v22 = v24;
        [v24 setHidden_];
      }
    }

    else
    {

      result = sub_272928A1C(&v27);
    }

    v15 += 16;
    --v16;
  }

  while (v16);
  return result;
}

uint64_t sub_272928620(uint64_t a1, char a2, void *a3)
{
  v5 = *(a1 + *(type metadata accessor for GMIntroIPadAnimationView() + 20) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27292D8A4();

  if (v8 == a2)
  {
    v7 = sub_27292E224();
    [a3 setState:v7 animated:1];

    swift_getKeyPath();
    swift_getKeyPath();

    return sub_27292D8B4();
  }

  return result;
}

void sub_272928740()
{
  type metadata accessor for GMDeviceSceneViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = objc_allocWithZone(MEMORY[0x277CF0D48]);
  v3 = sub_27292E224();
  v4 = [v2 initWithPackageName:v3 inBundle:v1];

  if (!v4)
  {
    __break(1u);
  }
}

uint64_t sub_272928854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_272928C9C(&qword_28089C338, type metadata accessor for GMIntroIPadAnimationView);

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_2729288E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_272928C9C(&qword_28089C338, type metadata accessor for GMIntroIPadAnimationView);

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_27292897C()
{
  sub_272928C9C(&qword_28089C338, type metadata accessor for GMIntroIPadAnimationView);
  sub_27292DC04();
  __break(1u);
}

uint64_t sub_272928A1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BCB0, &qword_272934D70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_272928AE0()
{
  v1 = *(v0 + 16);
  v2 = sub_27292E224();
  [v1 setState:v2 animated:1];
}

uint64_t sub_272928B44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GMIntroIPadAnimationView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_272928BA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GMIntroIPadAnimationView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_272928C0C()
{
  v1 = *(type metadata accessor for GMIntroIPadAnimationView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(v0 + (v3 & 0xFFFFFFFFFFFFFFF8) + 8);
  v5 = *(v0 + v3);

  return sub_272928620(v0 + v2, v5, v4);
}

uint64_t sub_272928C9C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_272928CFC@<X0>(char *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_27292E074();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C340, &qword_272936030);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  *(a3 + 88) = sub_27292D854();
  v11 = *(type metadata accessor for SmartDialogTextView() + 52);
  sub_27292E064();
  sub_27292E1D4();
  *a3 = a2;
  swift_getKeyPath();
  sub_272918D78(&qword_28089BDD8, type metadata accessor for GMEnrollmentViewModel);
  sub_27292D664();

  v37 = OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentViewModel__prelude;
  v12 = *&a1[OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentViewModel__prelude];
  swift_getKeyPath();
  sub_272918D78(&qword_28089BDE0, type metadata accessor for GMEnrollmentTextModel);
  v13 = v12;
  sub_27292D664();

  v14 = *&v13[OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__font];

  *(a3 + 8) = sub_27292DE04();
  swift_getKeyPath();
  sub_27292D664();

  v36 = OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentViewModel__instruction;
  v15 = *&a1[OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentViewModel__instruction];
  swift_getKeyPath();
  v16 = v15;
  sub_27292D664();

  v17 = *&v16[OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__font];

  *(a3 + 16) = sub_27292DE04();
  swift_getKeyPath();
  sub_27292D664();

  v35 = OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentViewModel__continuation;
  v18 = *&a1[OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentViewModel__continuation];
  swift_getKeyPath();
  v19 = v18;
  sub_27292D664();

  v20 = *&v19[OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__font];

  *(a3 + 24) = sub_27292DE04();
  swift_getKeyPath();
  sub_27292D664();

  v21 = *&a1[v37];
  swift_getKeyPath();
  v22 = v21;
  sub_27292D664();

  v24 = *&v22[OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__label];
  v23 = *&v22[OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__label + 8];

  *(a3 + 32) = v24;
  *(a3 + 40) = v23;
  swift_getKeyPath();
  sub_27292D664();

  v25 = *&a1[v36];
  swift_getKeyPath();
  v26 = v25;
  sub_27292D664();

  v28 = *&v26[OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__label];
  v27 = *&v26[OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__label + 8];

  *(a3 + 48) = v28;
  *(a3 + 56) = v27;
  swift_getKeyPath();

  sub_27292D664();

  v29 = *&a1[v35];
  swift_getKeyPath();
  v30 = v29;
  sub_27292D664();

  v32 = *&v30[OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__label];
  v31 = *&v30[OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__label + 8];

  *(a3 + 64) = v32;
  *(a3 + 72) = v31;

  v34 = HIBYTE(v27) & 0xF;
  if ((v27 & 0x2000000000000000) == 0)
  {
    v34 = v28 & 0xFFFFFFFFFFFFLL;
  }

  *(a3 + 80) = v34 == 0;
  return result;
}

uint64_t type metadata accessor for SmartDialogTextView()
{
  result = qword_28089C348;
  if (!qword_28089C348)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2729292C0@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v2 = sub_27292DCD4();
  v47 = *(v2 - 8);
  v48 = v2;
  v3 = *(v47 + 64);
  MEMORY[0x28223BE20](v2);
  v46 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SmartDialogTextView();
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v40 = v9;
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_27292E1E4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C360, &qword_272936168);
  v16 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v18 = &v40 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C368, &qword_272936170);
  v20 = *(v19 - 8);
  v44 = v19;
  v45 = v20;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v42 = &v40 - v22;
  (*(v12 + 16))(v15, v1 + *(v6 + 60), v11);
  v23 = *(v1 + 88);
  v41 = v1;
  *&v52 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C340, &qword_272936030);
  sub_27290B998(&qword_28089C370, &qword_28089C340, &qword_272936030);
  sub_27292D8D4();
  sub_27292AA14(v1, v10);
  v24 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v25 = swift_allocObject();
  sub_27292AA78(v10, v25 + v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C378, &qword_272936178);
  sub_27290B998(&qword_28089C380, &qword_28089C378, &qword_272936178);
  sub_27292E1C4();
  sub_27292E0C4();
  sub_27292D974();
  v26 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C388, &qword_272936180) + 36)];
  v27 = v53;
  *v26 = v52;
  *(v26 + 1) = v27;
  *(v26 + 2) = v54;
  sub_27292D9A4();
  sub_27292D9A4();
  MEMORY[0x2743CF870](0.0, -50.0);
  sub_27292D9B4();

  MEMORY[0x2743CFFE0](v28, 0.5, 0.9, 0.0);
  sub_27292D9C4();

  v29 = sub_27292D984();

  *&v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C390, &qword_272936188) + 36)] = v29;
  v30 = v41;
  sub_27292AA14(v41, v10);
  v31 = swift_allocObject();
  sub_27292AA78(v10, v31 + v24);
  v32 = v43;
  v33 = &v18[*(v43 + 36)];
  *v33 = sub_27292AC64;
  v33[1] = v31;
  v33[2] = 0;
  v33[3] = 0;
  v34 = v46;
  sub_27292DCC4();
  v35 = sub_27292ACC4();
  v36 = v42;
  sub_27292DEE4();
  (*(v47 + 8))(v34, v48);
  sub_27290B880(v18, &qword_28089C360, &qword_272936168);
  v37 = *(v30 + 80);
  v50 = v32;
  v51 = v35;
  swift_getOpaqueTypeConformance2();
  v38 = v44;
  sub_27292DEB4();
  return (*(v45 + 8))(v36, v38);
}

uint64_t sub_2729298D4@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C3C8, &qword_2729361A0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v23[-v9];
  sub_27292E0E4();
  sub_27292D974();
  v31 = v35;
  v32 = v33;
  v30 = v37;
  v29 = v38;
  v47 = 1;
  v46 = v34;
  v45 = v36;
  *v10 = sub_27292E0E4();
  *(v10 + 1) = v11;
  *(v10 + 2) = 0;
  v10[24] = 1;
  *(v10 + 4) = 0x4036000000000000;
  v10[40] = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C3D0, &qword_2729361A8);
  sub_272929B94(a1, &v10[*(v12 + 44)]);
  sub_27292E0E4();
  sub_27292D974();
  v28 = v39;
  v27 = v41;
  v26 = v43;
  v25 = v44;
  v50 = 1;
  v49 = v40;
  v48 = v42;
  v13 = v47;
  v14 = v46;
  v15 = v45;
  sub_27290939C(v10, v8, &qword_28089C3C8, &qword_2729361A0);
  LOBYTE(a1) = v50;
  v16 = v49;
  v24 = v48;
  *a2 = 0;
  *(a2 + 8) = v13;
  v17 = v31;
  *(a2 + 16) = v32;
  *(a2 + 24) = v14;
  *(a2 + 32) = v17;
  *(a2 + 40) = v15;
  v18 = v29;
  *(a2 + 48) = v30;
  *(a2 + 56) = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C3D8, &qword_2729361B0);
  sub_27290939C(v8, a2 + *(v19 + 48), &qword_28089C3C8, &qword_2729361A0);
  v20 = a2 + *(v19 + 64);
  *v20 = 0;
  *(v20 + 8) = a1;
  *(v20 + 16) = v28;
  *(v20 + 24) = v16;
  *(v20 + 32) = v27;
  *(v20 + 40) = v24;
  v21 = v25;
  *(v20 + 48) = v26;
  *(v20 + 56) = v21;
  sub_27290B880(v10, &qword_28089C3C8, &qword_2729361A0);
  return sub_27290B880(v8, &qword_28089C3C8, &qword_2729361A0);
}

uint64_t sub_272929B94@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C3E0, &qword_2729361B8);
  v43 = *(v3 - 8);
  v44 = v3;
  v4 = *(v43 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = (&v42 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C3E8, &qword_2729361C0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v42 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C3F0, &qword_2729361C8);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v42 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v42 - v23;
  *v24 = 0;
  v24[8] = 1;
  v25 = &v42 + *(v22 + 36) - v23;
  sub_27292A000(a1);
  if (*a1)
  {
    (*(v43 + 56))(v13, 1, 1, v44);
  }

  else
  {
    *&v46 = 0;
    BYTE8(v46) = 1;
    sub_27292A268(a1, &v47);
    *v21 = 0;
    v21[8] = 1;
    v26 = &v21[*(v14 + 36)];
    sub_27292A424(a1);
    sub_27290939C(v21, v18, &qword_28089C3F0, &qword_2729361C8);
    v27 = v55;
    v58[8] = v54;
    v58[9] = v55;
    v28 = v56;
    v29 = v57;
    v58[10] = v56;
    v58[11] = v57;
    v30 = v50;
    v31 = v51;
    v58[4] = v50;
    v58[5] = v51;
    v32 = v52;
    v33 = v53;
    v58[6] = v52;
    v58[7] = v53;
    v34 = v46;
    v35 = v47;
    v58[0] = v46;
    v58[1] = v47;
    v36 = v48;
    v37 = v49;
    v58[2] = v48;
    v58[3] = v49;
    v6[8] = v54;
    v6[9] = v27;
    v6[10] = v28;
    v6[11] = v29;
    v6[4] = v30;
    v6[5] = v31;
    v6[6] = v32;
    v6[7] = v33;
    *v6 = v34;
    v6[1] = v35;
    v6[2] = v36;
    v6[3] = v37;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C3F8, &qword_2729361D0);
    sub_27290939C(v18, v6 + *(v38 + 48), &qword_28089C3F0, &qword_2729361C8);
    sub_27290939C(v58, v59, &qword_28089C400, &qword_2729361D8);
    sub_27290B880(v21, &qword_28089C3F0, &qword_2729361C8);
    sub_27290B880(v18, &qword_28089C3F0, &qword_2729361C8);
    v59[8] = v54;
    v59[9] = v55;
    v59[10] = v56;
    v59[11] = v57;
    v59[4] = v50;
    v59[5] = v51;
    v59[6] = v52;
    v59[7] = v53;
    v59[0] = v46;
    v59[1] = v47;
    v59[2] = v48;
    v59[3] = v49;
    sub_27290B880(v59, &qword_28089C400, &qword_2729361D8);
    sub_27292AEC0(v6, v13);
    (*(v43 + 56))(v13, 0, 1, v44);
  }

  sub_27290939C(v24, v21, &qword_28089C3F0, &qword_2729361C8);
  sub_27290939C(v13, v11, &qword_28089C3E8, &qword_2729361C0);
  v39 = v45;
  sub_27290939C(v21, v45, &qword_28089C3F0, &qword_2729361C8);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C408, &qword_2729361E0);
  sub_27290939C(v11, v39 + *(v40 + 48), &qword_28089C3E8, &qword_2729361C0);
  sub_27290B880(v13, &qword_28089C3E8, &qword_2729361C0);
  sub_27290B880(v24, &qword_28089C3F0, &qword_2729361C8);
  sub_27290B880(v11, &qword_28089C3E8, &qword_2729361C0);
  return sub_27290B880(v21, &qword_28089C3F0, &qword_2729361C8);
}

uint64_t sub_27292A000(unsigned __int8 *a1)
{
  v23 = a1[80];
  if ((v23 & 1) != 0 || *a1 != 1)
  {
    v4 = 0xE100000000000000;
    v3 = 32;
  }

  else
  {
    v3 = *(a1 + 4);
    v2 = *(a1 + 5);
  }

  *&v25 = v3;
  *(&v25 + 1) = v4;
  sub_2729255E8();
  v5 = sub_27292DE44();
  v7 = v6;
  v9 = v8;
  v10 = *(a1 + 1);
  v22 = sub_27292DE34();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  sub_27292563C(v5, v7, v9 & 1);

  KeyPath = swift_getKeyPath();
  sub_27292E0C4();
  sub_27292DA54();
  *&v29[55] = v34;
  *&v29[71] = v35;
  *&v29[87] = v36;
  *&v29[103] = v37;
  *&v29[7] = v31;
  *&v29[23] = v32;
  v18 = v14 & 1;
  v30 = v14 & 1;
  *&v29[39] = v33;
  v19 = sub_27292DF94();
  *&v27[73] = *&v29[64];
  *&v27[89] = *&v29[80];
  *&v27[105] = *&v29[96];
  *&v27[9] = *v29;
  *&v27[25] = *&v29[16];
  *&v27[41] = *&v29[32];
  *&v25 = v22;
  *(&v25 + 1) = v12;
  LOBYTE(v26) = v18;
  *(&v26 + 1) = v16;
  *v27 = KeyPath;
  v27[8] = 1;
  *&v27[57] = *&v29[48];
  *&v27[120] = *(&v37 + 1);
  *&v28 = swift_getKeyPath();
  *(&v28 + 1) = v19;
  if (v23)
  {
    v20 = *a1 ^ 1u;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C410, &qword_272936248);
  sub_27292AFDC();
  sub_27292DEB4();
  v24[8] = *&v27[96];
  v24[9] = *&v27[112];
  v24[10] = v28;
  v24[4] = *&v27[32];
  v24[5] = *&v27[48];
  v24[6] = *&v27[64];
  v24[7] = *&v27[80];
  v24[0] = v25;
  v24[1] = v26;
  v24[2] = *v27;
  v24[3] = *&v27[16];
  return sub_27290B880(v24, &qword_28089C410, &qword_272936248);
}

__n128 sub_27292A268@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = *(a1 + 48);
  sub_2729255E8();

  v4 = sub_27292DE44();
  v6 = v5;
  v8 = v7;
  v9 = *(a1 + 16);
  v10 = sub_27292DE34();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  sub_27292563C(v4, v6, v8 & 1);

  KeyPath = swift_getKeyPath();
  sub_27292E0C4();
  sub_27292DA54();
  *&v22[55] = v26;
  *&v22[71] = v27;
  *&v22[87] = v28;
  *&v22[103] = v29;
  *&v22[7] = v23;
  *&v22[23] = v24;
  v18 = v14 & 1;
  *&v22[39] = v25;
  v19 = sub_27292DF94();
  v20 = swift_getKeyPath();
  *(a2 + 105) = *&v22[64];
  *(a2 + 121) = *&v22[80];
  *(a2 + 137) = *&v22[96];
  *(a2 + 41) = *v22;
  *(a2 + 57) = *&v22[16];
  result = *&v22[32];
  *(a2 + 73) = *&v22[32];
  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = v18;
  *(a2 + 24) = v16;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 1;
  *(a2 + 89) = *&v22[48];
  *(a2 + 152) = *(&v29 + 1);
  *(a2 + 160) = v20;
  *(a2 + 168) = v19;
  return result;
}

uint64_t sub_27292A424(uint64_t a1)
{
  if (*(a1 + 80))
  {
    v2 = 0xE100000000000000;
    v3 = 32;
  }

  else
  {
    v3 = *(a1 + 64);
    v4 = *(a1 + 72);
  }

  *&v26[0] = v3;
  *(&v26[0] + 1) = v2;
  sub_2729255E8();
  v5 = sub_27292DE44();
  v7 = v6;
  v9 = v8;
  v10 = *(a1 + 24);
  v11 = sub_27292DE34();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  sub_27292563C(v5, v7, v9 & 1);

  KeyPath = swift_getKeyPath();
  sub_27292E0C4();
  sub_27292DA54();
  *&v27[55] = v32;
  *&v27[71] = v33;
  *&v27[87] = v34;
  *&v27[103] = v35;
  *&v27[7] = v29;
  *&v27[23] = v30;
  v19 = v15 & 1;
  v28 = v15 & 1;
  *&v27[39] = v31;
  v20 = sub_27292DF94();
  *&v24[73] = *&v27[64];
  *&v24[89] = *&v27[80];
  *&v24[105] = *&v27[96];
  *&v24[9] = *v27;
  *&v24[25] = *&v27[16];
  *&v24[41] = *&v27[32];
  *&v22 = v11;
  *(&v22 + 1) = v13;
  LOBYTE(v23) = v19;
  *(&v23 + 1) = v17;
  *v24 = KeyPath;
  v24[8] = 1;
  *&v24[57] = *&v27[48];
  *&v24[120] = *(&v35 + 1);
  *&v25 = swift_getKeyPath();
  *(&v25 + 1) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C410, &qword_272936248);
  sub_27292AFDC();
  sub_27292DEB4();
  v26[8] = *&v24[96];
  v26[9] = *&v24[112];
  v26[10] = v25;
  v26[4] = *&v24[32];
  v26[5] = *&v24[48];
  v26[6] = *&v24[64];
  v26[7] = *&v24[80];
  v26[0] = v22;
  v26[1] = v23;
  v26[2] = *v24;
  v26[3] = *&v24[16];
  return sub_27290B880(v26, &qword_28089C410, &qword_272936248);
}

uint64_t sub_27292A660(uint64_t a1)
{
  v1 = *(a1 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C340, &qword_272936030);
  sub_27290B998(&qword_28089C3C0, &qword_28089C340, &qword_272936030);
  return sub_27292D874();
}

id sub_27292A6E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_272918D78(&qword_28089BDE0, type metadata accessor for GMEnrollmentTextModel);
  sub_27292D664();

  v4 = *(v3 + OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__font);
  *a2 = v4;

  return v4;
}

id sub_27292A7CC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_272918D78(&qword_28089BDD8, type metadata accessor for GMEnrollmentViewModel);
  sub_27292D664();

  v4 = *(v3 + OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentViewModel__continuation);
  *a2 = v4;

  return v4;
}

void sub_27292A8E0()
{
  sub_27292A994();
  if (v0 <= 0x3F)
  {
    sub_27292E1E4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_27292A994()
{
  if (!qword_28089C358)
  {
    v0 = sub_27292D864();
    if (!v1)
    {
      atomic_store(v0, &qword_28089C358);
    }
  }
}

uint64_t sub_27292AA14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SmartDialogTextView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27292AA78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SmartDialogTextView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_27292AADC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SmartDialogTextView() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_2729298D4(v4, a1);
}

uint64_t objectdestroyTm_3()
{
  v1 = (type metadata accessor for SmartDialogTextView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3 + 8);

  v6 = *(v0 + v3 + 16);

  v7 = *(v0 + v3 + 24);

  v8 = *(v0 + v3 + 40);

  v9 = *(v0 + v3 + 56);

  v10 = *(v0 + v3 + 72);

  v11 = *(v0 + v3 + 88);

  v12 = v1[15];
  v13 = sub_27292E1E4();
  (*(*(v13 - 8) + 8))(v0 + v3 + v12, v13);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_27292AC64()
{
  v1 = *(type metadata accessor for SmartDialogTextView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_27292A660(v2);
}

unint64_t sub_27292ACC4()
{
  result = qword_28089C398;
  if (!qword_28089C398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089C360, &qword_272936168);
    sub_27292AD50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089C398);
  }

  return result;
}

unint64_t sub_27292AD50()
{
  result = qword_28089C3A0;
  if (!qword_28089C3A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089C390, &qword_272936188);
    sub_27292AE08();
    sub_27290B998(&qword_28089BFB8, &qword_28089BFC0, &qword_272935BC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089C3A0);
  }

  return result;
}

unint64_t sub_27292AE08()
{
  result = qword_28089C3A8;
  if (!qword_28089C3A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089C388, &qword_272936180);
    sub_27290B998(&qword_28089C3B0, &qword_28089C3B8, &unk_272936190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089C3A8);
  }

  return result;
}

uint64_t sub_27292AEC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C3E0, &qword_2729361B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_27292AF30@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27292DAA4();
  *a1 = result;
  return result;
}

uint64_t sub_27292AF84@<X0>(uint64_t *a1@<X8>)
{
  result = sub_27292DA84();
  *a1 = result;
  return result;
}

uint64_t sub_27292AFB0(uint64_t *a1)
{
  v1 = *a1;

  return sub_27292DA94();
}

unint64_t sub_27292AFDC()
{
  result = qword_28089C418;
  if (!qword_28089C418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089C410, &qword_272936248);
    sub_27292B094();
    sub_27290B998(&qword_28089C1C8, &qword_28089C1D0, &qword_272935D10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089C418);
  }

  return result;
}

unint64_t sub_27292B094()
{
  result = qword_28089C420;
  if (!qword_28089C420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089C428, &unk_272936250);
    sub_27292571C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089C420);
  }

  return result;
}

unint64_t sub_27292B120()
{
  result = qword_28089C430;
  if (!qword_28089C430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089C438, &unk_272936270);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089C360, &qword_272936168);
    sub_27292ACC4();
    swift_getOpaqueTypeConformance2();
    sub_272918D78(&qword_28089BDF8, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089C430);
  }

  return result;
}

uint64_t sub_27292B218()
{
  swift_getKeyPath();
  sub_27292CE58(&qword_28089BDE0, type metadata accessor for GMEnrollmentTextModel);
  sub_27292D664();

  v1 = *(v0 + OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__label);
  v2 = *(v0 + OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__label + 8);

  return v1;
}

uint64_t sub_27292B2D4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__label);
  v6 = *(v2 + OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__label) == a1 && *(v2 + OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__label + 8) == a2;
  if (v6 || (v7 = *(v2 + OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__label + 8), (sub_27292E494() & 1) != 0))
  {
    *v5 = a1;
    v5[1] = a2;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_27292CE58(&qword_28089BDE0, type metadata accessor for GMEnrollmentTextModel);
    sub_27292D654();
  }
}

uint64_t sub_27292B440()
{
  swift_getKeyPath();
  sub_27292CE58(&qword_28089BDE0, type metadata accessor for GMEnrollmentTextModel);
  sub_27292D664();

  return *(v0 + OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__hidden);
}

uint64_t sub_27292B4E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_27292CE58(&qword_28089BDE0, type metadata accessor for GMEnrollmentTextModel);
  sub_27292D664();

  *a2 = *(v3 + OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__hidden);
  return result;
}

uint64_t sub_27292B598(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__hidden) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__hidden) = result & 1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_27292CE58(&qword_28089BDE0, type metadata accessor for GMEnrollmentTextModel);
    sub_27292D654();
  }

  return result;
}

id sub_27292B6B0()
{
  swift_getKeyPath();
  sub_27292CE58(&qword_28089BDE0, type metadata accessor for GMEnrollmentTextModel);
  sub_27292D664();

  v1 = *(v0 + OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__font);

  return v1;
}

void sub_27292B768(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__font;
  v5 = *(v1 + OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__font);
  sub_27292CDCC();
  v6 = v5;
  v7 = sub_27292E3A4();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_27292CE58(&qword_28089BDE0, type metadata accessor for GMEnrollmentTextModel);
    sub_27292D654();
  }
}

id GMEnrollmentTextModel.__allocating_init(font:label:hidden:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = objc_allocWithZone(v4);
  sub_27292D674();
  *&v9[OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__font] = a1;
  v10 = &v9[OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__label];
  *v10 = a2;
  v10[1] = a3;
  v9[OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__hidden] = a4;
  v12.receiver = v9;
  v12.super_class = v4;
  return objc_msgSendSuper2(&v12, sel_init);
}

id GMEnrollmentTextModel.init(font:label:hidden:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_27292D674();
  *&v4[OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__font] = a1;
  v9 = &v4[OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__label];
  *v9 = a2;
  v9[1] = a3;
  v4[OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__hidden] = a4;
  v11.receiver = v4;
  v11.super_class = type metadata accessor for GMEnrollmentTextModel(0);
  return objc_msgSendSuper2(&v11, sel_init);
}

id GMEnrollmentTextModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_27292BC58(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_27292CE58(&qword_28089BDD8, type metadata accessor for GMEnrollmentViewModel);
  sub_27292D664();

  v4 = *(v2 + *a2);

  return v4;
}

void sub_27292BD30(void *a1, uint64_t *a2)
{
  v3 = v2;
  v5 = *a2;
  v6 = *(v2 + *a2);
  type metadata accessor for GMEnrollmentTextModel(0);
  v7 = v6;
  v8 = sub_27292E3A4();

  if (v8)
  {
    v9 = *(v3 + v5);
    *(v3 + v5) = a1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_27292CE58(&qword_28089BDD8, type metadata accessor for GMEnrollmentViewModel);
    sub_27292D654();
  }
}

id GMEnrollmentViewModel.__allocating_init(prelude:instruction:continuation:)(void *a1, void *a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_27292C6B0(a1, a2, a3);

  return v8;
}

id GMEnrollmentViewModel.init(prelude:instruction:continuation:)(void *a1, void *a2, void *a3)
{
  v6 = sub_27292C6B0(a1, a2, a3);

  return v6;
}

uint64_t sub_27292C064()
{
  sub_27292E114();
  sub_27292D9E4();
}

void sub_27292C0C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  swift_getKeyPath();
  sub_27292CE58(&qword_28089BDD8, type metadata accessor for GMEnrollmentViewModel);
  sub_27292D664();

  v9 = *(a1 + *a5);

  sub_27292B2D4(a2, a3);
}

uint64_t sub_27292C1BC(void *a1)
{
  sub_27292E254();
  v1 = a1;
  sub_27292E114();
  sub_27292D9E4();
}

uint64_t sub_27292C2C4()
{
  sub_27292E114();
  sub_27292D9E4();
}

uint64_t sub_27292C328(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v6 = a2 & 1;
  swift_getKeyPath();
  sub_27292CE58(&qword_28089BDD8, type metadata accessor for GMEnrollmentViewModel);
  sub_27292D664();

  v8 = *(a1 + *a4);
  if (v8[OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__hidden] == v6)
  {
    v8[OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__hidden] = v6;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_27292CE58(&qword_28089BDE0, type metadata accessor for GMEnrollmentTextModel);
    v10 = v8;
    sub_27292D654();
  }

  return result;
}

uint64_t sub_27292C4EC(void *a1)
{
  v1 = a1;
  sub_27292E114();
  sub_27292D9E4();
}

id sub_27292C5D4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_27292C6B0(void *a1, void *a2, void *a3)
{
  v4 = objc_opt_self();
  v5 = *MEMORY[0x277D743F8];
  v6 = [v4 systemFontOfSize:28.0 weight:*MEMORY[0x277D743F8]];
  v7 = type metadata accessor for GMEnrollmentTextModel(0);
  v8 = objc_allocWithZone(v7);
  sub_27292D674();
  *&v8[OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__font] = v6;
  v9 = &v8[OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__label];
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v8[OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__hidden] = 0;
  v29.receiver = v8;
  v29.super_class = v7;
  v10 = objc_msgSendSuper2(&v29, sel_init);
  v11 = OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentViewModel__prelude;
  *&v3[OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentViewModel__prelude] = v10;
  v12 = [v4 systemFontOfSize:28.0 weight:v5];
  v13 = objc_allocWithZone(v7);
  sub_27292D674();
  *&v13[OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__font] = v12;
  v14 = &v13[OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__label];
  *v14 = 0;
  v14[1] = 0xE000000000000000;
  v13[OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__hidden] = 0;
  v28.receiver = v13;
  v28.super_class = v7;
  v15 = objc_msgSendSuper2(&v28, sel_init);
  v16 = OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentViewModel__instruction;
  *&v3[OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentViewModel__instruction] = v15;
  v17 = [v4 systemFontOfSize:28.0 weight:v5];
  v18 = objc_allocWithZone(v7);
  sub_27292D674();
  *&v18[OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__font] = v17;
  v19 = &v18[OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__label];
  *v19 = 0;
  v19[1] = 0xE000000000000000;
  v18[OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__hidden] = 0;
  v27.receiver = v18;
  v27.super_class = v7;
  v20 = objc_msgSendSuper2(&v27, sel_init);
  v21 = OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentViewModel__continuation;
  *&v3[OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentViewModel__continuation] = v20;
  sub_27292D674();
  objc_storeStrong(&v3[v11], a1);
  objc_storeStrong(&v3[v16], a2);
  objc_storeStrong(&v3[v21], a3);
  v26.receiver = v3;
  v26.super_class = type metadata accessor for GMEnrollmentViewModel(0);
  return objc_msgSendSuper2(&v26, sel_init);
}

uint64_t sub_27292CAD4()
{
  result = sub_27292D684();
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

void sub_27292CD0C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentViewModel__continuation);
  *(v1 + OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentViewModel__continuation) = v2;
  v4 = v2;
}

void sub_27292CD4C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentViewModel__instruction);
  *(v1 + OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentViewModel__instruction) = v2;
  v4 = v2;
}

void sub_27292CD8C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentViewModel__prelude);
  *(v1 + OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentViewModel__prelude) = v2;
  v4 = v2;
}

unint64_t sub_27292CDCC()
{
  result = qword_28089BAC0;
  if (!qword_28089BAC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28089BAC0);
  }

  return result;
}

void sub_27292CE18()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__font);
  *(v1 + OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__font) = v2;
  v4 = v2;
}

uint64_t sub_27292CE58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_27292CEB8()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__label);
  v3 = v2[1];
  *v2 = v0[3];
  v2[1] = v1;
}