id sub_21BA43B34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = MEMORY[0x277D85000];
  (*(*(*((*MEMORY[0x277D85000] & *v4) + 0x50) - 8) + 56))(&v4[*((*MEMORY[0x277D85000] & *v4) + 0x60)], 1, 1);
  v9 = *((*v8 & *v4) + 0x68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D358);
  swift_allocObject();
  *&v4[v9] = sub_21BA8691C();
  if (a3)
  {
    v10 = sub_21BA87C8C();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v4;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, sel_initWithStyle_reuseIdentifier_, a1, v10);

  return v11;
}

id sub_21BA43C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    a4 = sub_21BA87CBC();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_21BA43B34(a3, a4, v6);
}

uint64_t sub_21BA43D00(char a1, char a2)
{
  ObjectType = swift_getObjectType();
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x50);
  v7 = sub_21BA883CC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - v9;
  v11 = *(v6 - 8);
  *&v13 = MEMORY[0x28223BE20](v12).n128_u64[0];
  v15 = &v18 - v14;
  v19.receiver = v2;
  v19.super_class = ObjectType;
  objc_msgSendSuper2(&v19, sel_setHighlighted_animated_, a1 & 1, a2 & 1, v13);
  v16 = *((*MEMORY[0x277D85000] & *v2) + 0x60);
  swift_beginAccess();
  (*(v8 + 16))(v10, v2 + v16, v7);
  if ((*(v11 + 48))(v10, 1, v6) == 1)
  {
    return (*(v8 + 8))(v10, v7);
  }

  (*(v11 + 32))(v15, v10, v6);
  sub_21BA43F54(v15);
  return (*(v11 + 8))(v15, v6);
}

uint64_t sub_21BA43F54(uint64_t a1)
{
  v2 = v1;
  v23 = a1;
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & v3) + 0x50);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9F388);
  v6 = sub_21BA86C5C();
  v29 = *((v4 & v3) + 0x58);
  v30 = sub_21B9B35B8(&qword_27CD9F390, &qword_27CD9F388);
  v22 = v6;
  WitnessTable = swift_getWitnessTable();
  v26[0] = v6;
  v26[1] = MEMORY[0x277CE1420];
  v26[2] = WitnessTable;
  v27 = MEMORY[0x277CE1418];
  v7 = sub_21BA8722C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - v9;
  v11 = sub_21BA883CC();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v20 - v14;
  v16 = *(v5 - 8);
  v17 = v23;
  (*(v16 + 16))(&v20 - v14, v23, v5, v13);
  (*(v16 + 56))(v15, 0, 1, v5);
  v18 = *((*MEMORY[0x277D85000] & *v2) + 0x60);
  swift_beginAccess();
  (*(v12 + 40))(&v2[v18], v15, v11);
  swift_endAccess();
  v24 = v17;
  v25 = v2;
  sub_21BA8721C();
  sub_21BA8743C();
  v27 = v7;
  v28 = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(v26);
  sub_21BA8720C();
  (*(v8 + 8))(v10, v7);
  return MEMORY[0x21CEFD580](v26);
}

void sub_21BA442C8(void *a1, uint64_t a2, char a3, char a4)
{
  v6 = a1;
  sub_21BA43D00(a3, a4);
}

uint64_t sub_21BA44324@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X8>)
{
  v20 = a1;
  v21 = a3;
  v3 = *a2;
  v4 = *MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *a2) + 0x50);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9F388);
  v6 = sub_21BA86C5C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - v11;
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  v14[2] = v5;
  v15 = *((v4 & v3) + 0x58);
  v14[3] = v15;
  v14[4] = v13;
  sub_21BA44968();
  sub_21BA44C0C();
  sub_21BA8775C();

  v16 = sub_21B9B35B8(&qword_27CD9F390, &qword_27CD9F388);
  v22 = v15;
  v23 = v16;
  swift_getWitnessTable();
  v17 = *(v7 + 16);
  v17(v12, v9, v6);
  v18 = *(v7 + 8);
  v18(v9, v6);
  v17(v21, v12, v6);
  return (v18)(v12, v6);
}

id sub_21BA445AC()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21BA445E4(char *a1)
{
  v2 = *((*MEMORY[0x277D85000] & *a1) + 0x60);
  v3 = sub_21BA883CC();
  (*(*(v3 - 8) + 8))(&a1[v2], v3);
}

uint64_t sub_21BA446B8@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = qword_27CDB21C8;
  return result;
}

void *sub_21BA44704(void *a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = a2(&v4);
  *a1 = v4;
  return result;
}

void *sub_21BA44828@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

void sub_21BA44844()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  (*(*(*((*MEMORY[0x277D85000] & *v1) + 0x50) - 8) + 56))(&v1[*((*MEMORY[0x277D85000] & *v1) + 0x60)], 1, 1);
  v3 = *((*v2 & *v1) + 0x68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D358);
  swift_allocObject();
  *&v1[v3] = sub_21BA8691C();
  sub_21BA886DC();
  __break(1u);
}

unint64_t sub_21BA44968()
{
  result = qword_27CDACE70[0];
  if (!qword_27CDACE70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CDACE70);
  }

  return result;
}

unint64_t sub_21BA449BC()
{
  result = qword_27CD9F398;
  if (!qword_27CD9F398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F398);
  }

  return result;
}

uint64_t sub_21BA44A10()
{
  result = sub_21BA883CC();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA26_PreferenceWritingModifierVy06RemoteB0018CellSelectionStyleF3Key33_0873F0AA0352D4D2C23FA647896097F3LLVGGAaBHPxAaBHD1__AkA0cH0HPyHCHCTm(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
  sub_21BA86C5C();
  sub_21B9B35B8(a4, a2);
  return swift_getWitnessTable();
}

void sub_21BA44BA8(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong setSelectionStyle_];
  }
}

unint64_t sub_21BA44C0C()
{
  result = qword_27CD9F3C8;
  if (!qword_27CD9F3C8)
  {
    type metadata accessor for SelectionStyle(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F3C8);
  }

  return result;
}

uint64_t sub_21BA44C84()
{
  sub_21BA44CC0();
  sub_21BA86EAC();
  return v1;
}

unint64_t sub_21BA44CC0()
{
  result = qword_27CDAD100[0];
  if (!qword_27CDAD100[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CDAD100);
  }

  return result;
}

uint64_t sub_21BA44D50@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21BA86E9C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DD90);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for ReportAnalyticsModifier();
  sub_21B9AFF80(v1 + *(v10 + 24), v9, &qword_27CD9DD90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_21B9AFD2C(v9, a1);
  }

  sub_21BA8820C();
  v12 = sub_21BA8740C();
  sub_21BA8670C();

  sub_21BA86E8C();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_21BA44F28(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DBA0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v16 - v3;
  v5 = sub_21BA86E9C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (a1 + *(type metadata accessor for ReportAnalyticsModifier() + 28));
  v10 = *v9;
  v11 = *(v9 + 8);

  if ((v11 & 1) == 0)
  {
    sub_21BA8820C();
    v13 = sub_21BA8740C();
    sub_21BA8670C();

    sub_21BA86E8C();
    swift_getAtKeyPath();
    j__swift_release();
    result = (*(v6 + 8))(v8, v5);
    v10 = v16[1];
  }

  if (v10)
  {
    v14 = *a1;
    v15 = a1[1];
    sub_21BA44D50(v4);
    (*(*v10 + 112))(v14, v15, v4, *(a1 + 16));

    return sub_21B9CD454(v4);
  }

  return result;
}

uint64_t sub_21BA45128@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  sub_21BA455CC(v7, &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_21BA45630(&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F3E0);
  (*(*(v10 - 8) + 16))(a3, a1, v10);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F3E8);
  v12 = (a3 + *(result + 36));
  *v12 = sub_21BA45694;
  v12[1] = v9;
  v12[2] = 0;
  v12[3] = 0;
  return result;
}

uint64_t sub_21BA45284(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for ReportAnalyticsModifier();
  MEMORY[0x28223BE20](v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12[*(v10 + 24)] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DD90);
  swift_storeEnumTagMultiPayload();
  *v12 = a1;
  *(v12 + 1) = a2;
  v12[16] = a3;
  v13 = &v12[*(v10 + 28)];
  *v13 = swift_getKeyPath();
  v13[8] = 0;

  MEMORY[0x21CEFCB90](v12, a4, v10, a5);
  return sub_21BA453F8(v12);
}

uint64_t type metadata accessor for ReportAnalyticsModifier()
{
  result = qword_27CDAD120;
  if (!qword_27CDAD120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21BA453F8(uint64_t a1)
{
  v2 = type metadata accessor for ReportAnalyticsModifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21BA45454()
{
  result = qword_27CDAD118;
  if (!qword_27CDAD118)
  {
    type metadata accessor for ReportAnalyticsModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDAD118);
  }

  return result;
}

void sub_21BA454D4()
{
  sub_21B93FC24(319, &qword_27CD9BC60, &qword_27CD9DBA0);
  if (v0 <= 0x3F)
  {
    sub_21B93FC24(319, &qword_27CD9BC70, &qword_27CD9F3D8);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21BA455CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReportAnalyticsModifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BA45630(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReportAnalyticsModifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BA45694()
{
  v1 = *(type metadata accessor for ReportAnalyticsModifier() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_21BA44F28(v2);
}

unint64_t sub_21BA456F4()
{
  result = qword_27CD9F3F0;
  if (!qword_27CD9F3F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9F3E8);
    sub_21BA45780();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F3F0);
  }

  return result;
}

unint64_t sub_21BA45780()
{
  result = qword_27CD9F3F8;
  if (!qword_27CD9F3F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9F3E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F3F8);
  }

  return result;
}

uint64_t sub_21BA457E4()
{
  type metadata accessor for ResourceLoader();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_21BA8633C();

  return v2;
}

uint64_t sub_21BA4588C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21BA860EC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[0] = a1;
  v13[1] = a2;
  sub_21BA860CC();
  sub_21B9BAB9C();
  v8 = sub_21BA883EC();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {

    return 0;
  }

  return v8;
}

uint64_t sub_21BA459B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v29 = a1;
  v30 = a6;
  v32 = a5;
  v33 = a7;
  v10 = sub_21BA8801C();
  v34 = *(v10 - 8);
  v35 = v10;
  MEMORY[0x28223BE20](v10);
  v31 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v12 = sub_21BA87A9C();
  v28 = v12;
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v27 - v14;
  v16 = *(a4 - 8);
  v17 = *(v16 + 64);
  v19 = MEMORY[0x28223BE20](v18);
  v20 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v20, v29, a4, v19);
  (*(v13 + 16))(v15, a2, v12);
  v21 = (*(v16 + 80) + 48) & ~*(v16 + 80);
  v22 = (v17 + v21 + *(v13 + 80)) & ~*(v13 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = a3;
  *(v23 + 3) = a4;
  v24 = v30;
  *(v23 + 4) = v32;
  *(v23 + 5) = v24;
  (*(v16 + 32))(&v23[v21], v20, a4);
  (*(v13 + 32))(&v23[v22], v15, v28);
  v25 = v31;
  sub_21BA87FFC();
  sub_21BA877EC();

  return (*(v34 + 8))(v25, v35);
}

uint64_t sub_21BA45CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a4;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[6] = AssociatedTypeWitness;
  v6[7] = *(AssociatedTypeWitness - 8);
  v6[8] = swift_task_alloc();
  sub_21BA883CC();
  v6[9] = swift_task_alloc();
  v6[10] = *(a4 - 8);
  v6[11] = swift_task_alloc();
  v9 = swift_getAssociatedTypeWitness();
  v6[12] = v9;
  v6[13] = *(v9 - 8);
  v6[14] = swift_task_alloc();
  v6[15] = sub_21BA87FEC();
  v6[16] = sub_21BA87FDC();
  v11 = sub_21BA87F9C();
  v6[17] = v11;
  v6[18] = v10;

  return MEMORY[0x2822009F8](sub_21BA45ED8, v11, v10);
}

uint64_t sub_21BA45ED8()
{
  (*(v0[10] + 16))(v0[11], v0[2], v0[4]);
  sub_21BA880BC();
  v1 = sub_21BA87FDC();
  v0[19] = v1;
  swift_getAssociatedConformanceWitness();
  v2 = swift_task_alloc();
  v0[20] = v2;
  *v2 = v0;
  v2[1] = sub_21BA46010;
  v3 = v0[9];
  v4 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v3, v1, v4);
}

uint64_t sub_21BA46010()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 136);
    v5 = *(v2 + 144);

    return MEMORY[0x2822009F8](sub_21BA46124, v4, v5);
  }

  return result;
}

uint64_t sub_21BA46124()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[13] + 8))(v0[14], v0[12]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    (*(v3 + 32))(v0[8], v1, v2);
    sub_21BA87A9C();
    sub_21BA87A4C();
    v6 = sub_21BA87FDC();
    v0[19] = v6;
    swift_getAssociatedConformanceWitness();
    v7 = swift_task_alloc();
    v0[20] = v7;
    *v7 = v0;
    v7[1] = sub_21BA46010;
    v8 = v0[9];
    v9 = MEMORY[0x277D85700];

    return MEMORY[0x282200310](v8, v6, v9);
  }
}

uint64_t sub_21BA46310()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 40);
  v4 = (*(*(v2 - 8) + 80) + 48) & ~*(*(v2 - 8) + 80);
  v5 = v4 + *(*(v2 - 8) + 64);
  swift_getAssociatedTypeWitness();
  v6 = *(sub_21BA87A9C() - 8);
  v7 = (v5 + *(v6 + 80)) & ~*(v6 + 80);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_21B9AC1F4;

  return sub_21BA45CB4(v0 + v4, v0 + v7, v8, v2, v9, v3);
}

unint64_t sub_21BA46474()
{
  result = qword_27CD9CF30;
  if (!qword_27CD9CF30)
  {
    sub_21BA86B5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9CF30);
  }

  return result;
}

unint64_t KeyedDecodingContainer.decodeRUIAttributeDictionary(forKey:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F400);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - v3;
  if ((sub_21BA8882C() & 1) == 0)
  {
    return sub_21BA48270(MEMORY[0x277D84F90]);
  }

  sub_21BA48384();
  result = sub_21BA8878C();
  if (!v0)
  {
    v6 = sub_21BA46618();
    (*(v2 + 8))(v4, v1);
    return v6;
  }

  return result;
}

uint64_t sub_21BA46618()
{
  v1 = v0;
  v2 = sub_21BA48270(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F400);
  v3 = sub_21BA8881C();
  v4 = v3;
  v28 = *(v3 + 16);
  if (!v28)
  {
LABEL_18:

    return v2;
  }

  v5 = 0;
  v6 = v3 + 56;
  v27 = v3;
  while (v5 < *(v4 + 16))
  {
    v9 = *(v6 - 24);
    v8 = *(v6 - 16);
    swift_bridgeObjectRetain_n();
    v10 = sub_21BA887FC();
    if (v1)
    {

      swift_bridgeObjectRelease_n();
      return v2;
    }

    v29 = v10;
    v30 = v11;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = sub_21B940DCC(v9, v8);
    v15 = v2[2];
    v16 = (v13 & 1) == 0;
    v17 = v15 + v16;
    if (__OFADD__(v15, v16))
    {
      goto LABEL_22;
    }

    v18 = v13;
    if (v2[3] >= v17)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v13)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_21BA47EF8();
        if (v18)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_21BA47C38(v17, isUniquelyReferenced_nonNull_native);
      v19 = sub_21B940DCC(v9, v8);
      if ((v18 & 1) != (v20 & 1))
      {
        goto LABEL_24;
      }

      v14 = v19;
      if (v18)
      {
LABEL_3:

        v7 = (v2[7] + 16 * v14);
        *v7 = v29;
        v7[1] = v30;

        goto LABEL_4;
      }
    }

    v2[(v14 >> 6) + 8] |= 1 << v14;
    v21 = (v2[6] + 16 * v14);
    *v21 = v9;
    v21[1] = v8;
    v22 = (v2[7] + 16 * v14);
    *v22 = v29;
    v22[1] = v30;
    v23 = v2[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      goto LABEL_23;
    }

    v2[2] = v25;
LABEL_4:
    ++v5;
    v6 += 32;
    v4 = v27;
    v1 = 0;
    if (v28 == v5)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_21BA88B0C();
  __break(1u);
  return result;
}

uint64_t KeyedDecodingContainer<>.decodeRUIAttributeDictionary()(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v49 = a2;
  v6 = *(a1 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v44 = v8;
  v51 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21BA48270(MEMORY[0x277D84F90]);
  v48 = a1;
  v50 = v2;
  v10 = sub_21BA8881C();
  if (!sub_21BA87F7C())
  {
LABEL_23:

    return v9;
  }

  v11 = 0;
  v46 = (v7 + 8);
  v47 = (v7 + 16);
  v45 = v10;
  while (1)
  {
    v15 = sub_21BA87F5C();
    sub_21BA87F2C();
    if ((v15 & 1) == 0)
    {
      break;
    }

    v16 = v51;
    (*(v7 + 16))(v51, v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v11, v6);
    v17 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      goto LABEL_24;
    }

LABEL_7:
    v55 = v17;
    v56 = v11;
    v18 = sub_21BA88C5C();
    v20 = v19;
    v21 = sub_21BA887FC();
    if (v4)
    {
      (*v46)(v16, v6);

      goto LABEL_23;
    }

    v53 = v21;
    v54 = v22;
    v23 = v7;
    v52 = 0;
    v24 = v6;
    (*v46)(v16, v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v57 = v9;
    v27 = sub_21B940DCC(v18, v20);
    v28 = v9[2];
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_25;
    }

    v31 = v26;
    if (v9[3] >= v30)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_21BA47EF8();
      }
    }

    else
    {
      sub_21BA47C38(v30, isUniquelyReferenced_nonNull_native);
      v32 = sub_21B940DCC(v18, v20);
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_28;
      }

      v27 = v32;
    }

    v6 = v24;
    v7 = v23;
    if (v31)
    {

      v9 = v57;
      v12 = (v57[7] + 16 * v27);
      v13 = v54;
      *v12 = v53;
      v12[1] = v13;

      v10 = v45;
    }

    else
    {
      v9 = v57;
      v57[(v27 >> 6) + 8] |= 1 << v27;
      v34 = (v9[6] + 16 * v27);
      *v34 = v18;
      v34[1] = v20;
      v35 = (v9[7] + 16 * v27);
      v36 = v54;
      *v35 = v53;
      v35[1] = v36;
      v37 = v9[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      v10 = v45;
      if (v38)
      {
        goto LABEL_26;
      }

      v9[2] = v39;
    }

    v14 = sub_21BA87F7C();
    v11 = v56 + 1;
    v4 = v52;
    if (v55 == v14)
    {
      goto LABEL_23;
    }
  }

  v40 = sub_21BA885BC();
  if (v44 != 8)
  {
    goto LABEL_27;
  }

  v57 = v40;
  v41 = v51;
  (*v47)(v51, &v57, v6);
  v16 = v41;
  swift_unknownObjectRelease();
  v17 = v11 + 1;
  if (!__OFADD__(v11, 1))
  {
    goto LABEL_7;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result = sub_21BA88B0C();
  __break(1u);
  return result;
}

uint64_t sub_21BA46C54()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E418);
  v1 = sub_21BA8881C();
  if (*(v1 + 16))
  {
    v0 = *(v1 + 32);
  }

  else
  {

    v2 = sub_21BA885FC();
    swift_allocError();
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F410);
    *v4 = MEMORY[0x277D837D0];
    sub_21BA8879C();
    sub_21BA885EC();
    (*(*(v2 - 8) + 104))(v4, *MEMORY[0x277D84170], v2);
    swift_willThrow();
  }

  return v0;
}

uint64_t KeyedDecodingContainer<>.decodeRUITagName()(uint64_t a1, uint64_t a2)
{
  v16[1] = a2;
  v3 = *(a1 + 16);
  v16[0] = sub_21BA883CC();
  v4 = *(v16[0] - 8);
  MEMORY[0x28223BE20](v16[0]);
  v6 = v16 - v5;
  v7 = *(v3 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v2;
  v18 = sub_21BA8881C();
  sub_21BA87F8C();
  swift_getWitnessTable();
  sub_21BA8814C();
  if ((*(v7 + 48))(v6, 1, v3) == 1)
  {
    (*(v4 + 8))(v6, v16[0]);

    v11 = sub_21BA885FC();
    swift_allocError();
    v13 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F410);
    *v13 = MEMORY[0x277D837D0];
    v14 = v17;
    sub_21BA8879C();
    sub_21BA885EC();
    (*(*(v11 - 8) + 104))(v13, *MEMORY[0x277D84170], v11);
    swift_willThrow();
  }

  else
  {
    (*(v7 + 32))(v10, v6, v3);

    v14 = sub_21BA88C5C();
    (*(v7 + 8))(v10, v3);
  }

  return v14;
}

uint64_t sub_21BA47094(uint64_t a1, uint64_t a2)
{
  result = sub_21BA46C54();
  if (!v2)
  {
    if (result == a1 && v6 == a2)
    {
    }

    v7 = result;
    v8 = v6;
    if (sub_21BA8899C())
    {
    }

    else
    {
      v9 = sub_21BA885FC();
      swift_allocError();
      v11 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F410);
      *v11 = MEMORY[0x277D837D0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E418);
      sub_21BA8879C();
      sub_21BA8859C();

      MEMORY[0x21CEFD130](a1, a2);
      MEMORY[0x21CEFD130](0x3B646E756F66202CLL, 0xE900000000000020);
      MEMORY[0x21CEFD130](v7, v8);

      sub_21BA885EC();
      (*(*(v9 - 8) + 104))(v11, *MEMORY[0x277D84170], v9);
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t KeyedDecodingContainer<>.assertRUITagName(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = KeyedDecodingContainer<>.decodeRUITagName()(a3, a4);
  if (!v4)
  {
    if (result == a1 && v8 == a2)
    {
    }

    v9 = result;
    v10 = v8;
    if (sub_21BA8899C())
    {
    }

    else
    {
      v11 = sub_21BA885FC();
      swift_allocError();
      v13 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F410);
      *v13 = MEMORY[0x277D837D0];
      sub_21BA8879C();
      sub_21BA8859C();

      MEMORY[0x21CEFD130](a1, a2);
      MEMORY[0x21CEFD130](0x3B646E756F66202CLL, 0xE900000000000020);
      MEMORY[0x21CEFD130](v9, v10);

      sub_21BA885EC();
      (*(*(v11 - 8) + 104))(v13, *MEMORY[0x277D84170], v11);
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t Decoder.decodeRUIAttributeDictionary()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F400);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  sub_21BA48384();
  sub_21BA88C0C();
  if (!v1)
  {
    v0 = sub_21BA46618();
    (*(v3 + 8))(v5, v2);
  }

  return v0;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Decoder.decodeRUIID()()
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F400);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v23 - v5;
  sub_21BA48384();
  sub_21BA88C0C();
  if (!v1)
  {
    v27[0] = 25705;
    v27[1] = 0xE200000000000000;
    v27[2] = 0;
    LOBYTE(v28) = 1;
    v7 = sub_21BA887BC();
    v2 = v8;
    v26 = 0;
    if (v8)
    {
      v0 = v7;
    }

    else
    {
      v11 = sub_21BA88BDC();
      v12 = *(v11 + 16);
      if (v12)
      {
        v24 = v4;
        v25 = v3;
        v29 = MEMORY[0x277D84F90];
        sub_21B9BCCB8(0, v12, 0);
        v13 = v29;
        v23[1] = v11;
        v14 = v11 + 32;
        do
        {
          sub_21B9B3220(v14, v27);
          __swift_project_boxed_opaque_existential_1(v27, v28);
          v15 = sub_21BA88C5C();
          v17 = v16;
          __swift_destroy_boxed_opaque_existential_1(v27);
          v29 = v13;
          v19 = *(v13 + 16);
          v18 = *(v13 + 24);
          if (v19 >= v18 >> 1)
          {
            sub_21B9BCCB8((v18 > 1), v19 + 1, 1);
            v13 = v29;
          }

          *(v13 + 16) = v19 + 1;
          v20 = v13 + 16 * v19;
          *(v20 + 32) = v15;
          *(v20 + 40) = v17;
          v14 += 40;
          --v12;
        }

        while (v12);

        v4 = v24;
        v3 = v25;
      }

      else
      {

        v13 = MEMORY[0x277D84F90];
      }

      v27[0] = &unk_282D66580;
      sub_21BA48070(v13);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D258);
      sub_21B9BDDF0();
      v0 = sub_21BA87C4C();
      v2 = v21;
    }

    (*(v4 + 8))(v6, v3);
  }

  v9 = v0;
  v10 = v2;
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Decoder.decodeRUITagName()()
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E418);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - v5;
  sub_21B9FCED0();
  sub_21BA88C0C();
  if (!v1)
  {
    v0 = sub_21BA46C54();
    v2 = v7;
    (*(v4 + 8))(v6, v3);
  }

  v8 = v0;
  v9 = v2;
  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Decoder.assertRUITagName(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E418);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v8 - v6;
  sub_21B9FCED0();
  sub_21BA88C0C();
  if (!v1)
  {
    sub_21BA47094(countAndFlagsBits, object);
    (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_21BA47AC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_21BA8889C();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = a1;
  *(a2 + 24) = 0;
  return result;
}

uint64_t sub_21BA47B1C(uint64_t a1)
{
  v2 = sub_21BA48384();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21BA47B58(uint64_t a1)
{
  v2 = sub_21BA48384();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21BA47B94@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  return result;
}

double sub_21BA47BA8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = 0.0;
  *a2 = xmmword_21BA9C4E0;
  *(a2 + 16) = a1;
  *(a2 + 24) = 0;
  return result;
}

uint64_t sub_21BA47BC0(uint64_t a1)
{
  v2 = sub_21B9FCED0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21BA47BFC(uint64_t a1)
{
  v2 = sub_21B9FCED0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21BA47C38(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F438);
  v37 = a2;
  result = sub_21BA8871C();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_21BA88BAC();
      sub_21BA87D8C();
      result = sub_21BA88BCC();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void *sub_21BA47EF8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F438);
  v2 = *v0;
  v3 = sub_21BA8870C();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

uint64_t sub_21BA48070(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_21BA48164(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_21BA48164(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DCF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_21BA48270(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F438);
    v3 = sub_21BA8872C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_21B940DCC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_21BA48384()
{
  result = qword_27CD9F408;
  if (!qword_27CD9F408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F408);
  }

  return result;
}

unint64_t sub_21BA483D8(uint64_t a1)
{
  result = sub_21BA48384();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21BA48404()
{
  result = qword_27CD9F418;
  if (!qword_27CD9F418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F418);
  }

  return result;
}

unint64_t sub_21BA4845C()
{
  result = qword_27CD9F420;
  if (!qword_27CD9F420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F420);
  }

  return result;
}

unint64_t sub_21BA484B0(uint64_t a1)
{
  result = sub_21B9FCED0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21BA484DC()
{
  result = qword_27CD9F428;
  if (!qword_27CD9F428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F428);
  }

  return result;
}

unint64_t sub_21BA48534()
{
  result = qword_27CD9F430;
  if (!qword_27CD9F430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F430);
  }

  return result;
}

id sub_21BA485C4(uint64_t a1, uint64_t a2)
{
  v7[4] = a2;
  v7[3] = a1;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_1, v2, a1);
  v5 = objc_allocWithZone(type metadata accessor for ImageElement());
  return sub_21BA498F0(v7);
}

uint64_t type metadata accessor for ImageElement()
{
  result = qword_27CDAD700;
  if (!qword_27CDAD700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21BA486F4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x70))();
  *a2 = result;
  return result;
}

uint64_t sub_21BA48750(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x78);
  v4 = *a1;
  return v3(v2);
}

uint64_t (*sub_21BA487CC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_21BA8698C();
  return sub_21BA48870;
}

uint64_t sub_21BA48890(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F450);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F448);
  sub_21BA8697C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_21BA489C8(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F450);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC8RemoteUI12ImageElement__image;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F448);
  sub_21BA8696C();
  swift_endAccess();
  return sub_21BA4A3CC;
}

uint64_t sub_21BA48B38()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BA8699C();

  return v1;
}

uint64_t sub_21BA48BB0@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xA0))();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  return result;
}

uint64_t sub_21BA48C78()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_21BA869AC();
}

uint64_t (*sub_21BA48CFC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_21BA8698C();
  return sub_21BA4A3C8;
}

uint64_t sub_21BA48DBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F468);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F460);
  sub_21BA8697C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_21BA48EF4(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F468);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC8RemoteUI12ImageElement__imageSize;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F460);
  sub_21BA8696C();
  swift_endAccess();
  return sub_21BA49064;
}

uint64_t sub_21BA4907C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BA8699C();

  return v1;
}

uint64_t sub_21BA490E8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xD0))();
  *a2 = result;
  return result;
}

uint64_t sub_21BA49144(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0xD8);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_21BA491C0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_21BA869AC();
}

uint64_t (*sub_21BA49228(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_21BA8698C();
  return sub_21BA4A3C8;
}

void sub_21BA492CC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_21BA49350(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  sub_21BA8696C();
  return swift_endAccess();
}

uint64_t sub_21BA493C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F480);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F478);
  sub_21BA8697C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_21BA49500(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F480);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC8RemoteUI12ImageElement__tintColor;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F478);
  sub_21BA8696C();
  swift_endAccess();
  return sub_21BA4A3CC;
}

void sub_21BA49670(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_21BA8697C();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_21BA8697C();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t sub_21BA497D8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8RemoteUI12ImageElement_baseURL;
  swift_beginAccess();
  return sub_21B9AACF0(v1 + v3, a1);
}

uint64_t sub_21BA49830(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8RemoteUI12ImageElement_baseURL;
  swift_beginAccess();
  sub_21BA3C080(a1, v1 + v3);
  return swift_endAccess();
}

id sub_21BA498F0(void *a1)
{
  v29 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F478);
  v27 = *(v2 - 8);
  v28 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v27 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F460);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F448);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - v11;
  v13 = OBJC_IVAR____TtC8RemoteUI12ImageElement__image;
  v31 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F440);
  sub_21BA8695C();
  (*(v10 + 32))(&v1[v13], v12, v9);
  v14 = OBJC_IVAR____TtC8RemoteUI12ImageElement__imageSize;
  v31 = 0;
  v32 = 0;
  v33 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F458);
  sub_21BA8695C();
  (*(v6 + 32))(&v1[v14], v8, v5);
  v15 = OBJC_IVAR____TtC8RemoteUI12ImageElement__tintColor;
  v31 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F470);
  sub_21BA8695C();
  (*(v27 + 32))(&v1[v15], v4, v28);
  v16 = OBJC_IVAR____TtC8RemoteUI12ImageElement_baseURL;
  v17 = sub_21BA864AC();
  v18 = &v1[v16];
  v19 = v29;
  (*(*(v17 - 8) + 56))(v18, 1, 1, v17);
  v20 = type metadata accessor for ImageElement();
  v30.receiver = v1;
  v30.super_class = v20;
  v21 = objc_msgSendSuper2(&v30, sel_init);
  __swift_project_boxed_opaque_existential_1(v19, v19[3]);
  v22 = v21;
  v23 = v34;
  v24 = Decoder.decodeRUIAttributeDictionary()();
  if (v23)
  {
  }

  else
  {
    sub_21B9E9024(v24);

    v25 = sub_21BA87BBC();

    [v22 setAttributes_];
  }

  __swift_destroy_boxed_opaque_existential_1(v19);
  return v22;
}

id sub_21BA4A04C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ImageElement();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21BA4A1A4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ImageElement();
  result = sub_21BA8690C();
  *a1 = result;
  return result;
}

void sub_21BA4A1EC()
{
  sub_21BA4A374(319, &qword_27CD9F488, &qword_27CD9F440);
  if (v0 <= 0x3F)
  {
    sub_21BA4A374(319, &qword_27CD9F490, &qword_27CD9F458);
    if (v1 <= 0x3F)
    {
      sub_21BA4A374(319, &qword_27CD9F498, &qword_27CD9F470);
      if (v2 <= 0x3F)
      {
        sub_21B940364();
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_21BA4A374(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_21BA869BC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21BA4A3D0()
{
  sub_21BA4A420(&v2, v0);
  v1 = v2;
}

uint64_t sub_21BA4A420(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_21BA884EC();

    if (v9)
    {

      sub_21BA8636C();
      swift_dynamicCast();
      result = 0;
      *a1 = v22;
      return result;
    }

    result = sub_21BA884DC();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_21BA4A638(v7, result + 1);
    if (*(v19 + 24) <= *(v19 + 16))
    {
      sub_21BA4A818();
    }

    v18 = v8;
    sub_21BA4AA40(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_21BA8636C();
  v11 = sub_21BA882EC();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    v18 = a2;
    sub_21BA4AAC4(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v23;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_21BA882FC();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v20 = *(*(v6 + 48) + 8 * v13);
  *a1 = v20;
  v21 = v20;
  return 0;
}

uint64_t sub_21BA4A638(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F4A0);
    v2 = sub_21BA8856C();
    v14 = v2;
    sub_21BA884CC();
    if (sub_21BA884FC())
    {
      sub_21BA8636C();
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_21BA4A818();
        }

        v2 = v14;
        result = sub_21BA882EC();
        v4 = v14 + 56;
        v5 = -1 << *(v14 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v9 = 0;
          v10 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v10 && (v9 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v11 = v7 == v10;
            if (v7 == v10)
            {
              v7 = 0;
            }

            v9 |= v11;
            v12 = *(v4 + 8 * v7);
          }

          while (v12 == -1);
          v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v14 + 48) + 8 * v8) = v13;
        ++*(v14 + 16);
      }

      while (sub_21BA884FC());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_21BA4A818()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F4A0);
  result = sub_21BA8855C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_21BA882EC();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

unint64_t sub_21BA4AA40(uint64_t a1, uint64_t a2)
{
  sub_21BA882EC();
  result = sub_21BA884BC();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_21BA4AAC4(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_21BA4A818();
  }

  else
  {
    if (v7 > v6)
    {
      sub_21BA4AC24();
      goto LABEL_12;
    }

    sub_21BA4AD74();
  }

  v8 = *v3;
  v9 = sub_21BA882EC();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_21BA8636C();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_21BA882FC();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_21BA88AFC();
  __break(1u);
}

id sub_21BA4AC24()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F4A0);
  v2 = *v0;
  v3 = sub_21BA8854C();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

uint64_t sub_21BA4AD74()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F4A0);
  result = sub_21BA8855C();
  v4 = result;
  if (*(v2 + 16))
  {
    v23 = v0;
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = sub_21BA882EC();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v23;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_21BA4AF88@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E1E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v35 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F4A8);
  v38 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v35 - v6;
  if ([objc_opt_self() isInternalBuild] && (sub_21BA433D4(0) & 1) != 0)
  {
    sub_21BA8753C();
    v8 = sub_21BA874CC();
    (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
    sub_21BA8756C();
    sub_21B9ABAAC(v4, &qword_27CD9E1E0);
    v9 = sub_21BA8760C();
    v11 = v10;
    v13 = v12;

    LODWORD(v50[0]) = sub_21BA871EC();
    v14 = sub_21BA875FC();
    v16 = v15;
    v36 = v17;
    v37 = a1;
    v19 = v18;
    sub_21B9C318C(v9, v11, v13 & 1);

    KeyPath = swift_getKeyPath();
    LOBYTE(v11) = sub_21BA8743C();
    sub_21BA869EC();
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v29 = v19 & 1;
    LOBYTE(v50[0]) = v19 & 1;
    LOBYTE(v39) = 0;
    v30 = sub_21BA8743C();
    v31 = sub_21BA8747C();
    v49 = 1;
    *&v39 = v14;
    *(&v39 + 1) = v16;
    LOBYTE(v40) = v29;
    *(&v40 + 1) = v36;
    *&v41 = KeyPath;
    BYTE8(v41) = 1;
    LOBYTE(v42) = v11;
    *(&v42 + 1) = v22;
    *&v43 = v24;
    *(&v43 + 1) = v26;
    *&v44 = v28;
    BYTE8(v44) = 0;
    BYTE9(v44) = v30;
    *&v45 = 0x3FD3333333333333;
    BYTE8(v45) = v31;
    v46 = 0u;
    v47 = 0u;
    v48 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F4B0);
    sub_21BA4B828();
    sub_21BA877CC();
    v50[6] = v45;
    v50[7] = v46;
    v50[8] = v47;
    v51 = v48;
    v50[2] = v41;
    v50[3] = v42;
    v50[4] = v43;
    v50[5] = v44;
    v50[0] = v39;
    v50[1] = v40;
    sub_21B9ABAAC(v50, &qword_27CD9F4B0);
    v7[*(v5 + 36)] = 0;
    v32 = v37;
    sub_21BA4BA84(v7, v37);
    return (*(v38 + 56))(v32, 0, 1, v5);
  }

  else
  {
    v34 = *(v38 + 56);

    return v34(a1, 1, 1, v5);
  }
}

Swift::Void __swiftcall RUIPage.addRemoteUIWatermark()()
{
  v1 = v0;
  v2 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F500));
  v29 = sub_21BA8706C();
  [v0 addChildViewController_];
  v3 = [v0 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_13;
  }

  v4 = v3;
  v5 = [v29 view];
  if (!v5)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v6 = v5;
  [v4 addSubview_];

  v7 = [v29 view];
  if (!v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = [objc_opt_self() clearColor];
  [v7 setBackgroundColor_];

  sub_21BA86CAC();
  sub_21BA8704C();
  v9 = [v29 view];

  if (!v9)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  [v9 setTranslatesAutoresizingMaskIntoConstraints_];

  [v29 setAdditionalSafeAreaInsets_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD9D270);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_21BA9C820;
  v11 = [v29 view];

  if (!v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = [v11 safeAreaLayoutGuide];

  v13 = [v12 bottomAnchor];
  v14 = [v1 view];
  if (!v14)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v15 = v14;
  v16 = [v14 safeAreaLayoutGuide];

  v17 = [v16 bottomAnchor];
  v18 = [v13 constraintEqualToAnchor_];

  *(v10 + 32) = v18;
  v19 = [v29 view];

  if (!v19)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v20 = [v19 safeAreaLayoutGuide];

  v21 = [v20 trailingAnchor];
  v22 = [v1 view];
  if (!v22)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v23 = v22;
  v24 = objc_opt_self();
  v25 = [v23 safeAreaLayoutGuide];

  v26 = [v25 trailingAnchor];
  v27 = [v21 constraintEqualToAnchor:v26 constant:-20.0];

  *(v10 + 40) = v27;
  sub_21B9B6B80();
  v28 = sub_21BA87EFC();

  [v24 activateConstraints_];

  [v29 didMoveToParentViewController_];
}

unint64_t sub_21BA4B828()
{
  result = qword_27CD9F4B8;
  if (!qword_27CD9F4B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9F4B0);
    sub_21BA4B8B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F4B8);
  }

  return result;
}

unint64_t sub_21BA4B8B4()
{
  result = qword_27CD9F4C0;
  if (!qword_27CD9F4C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9F4C8);
    sub_21BA4B940();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F4C0);
  }

  return result;
}

unint64_t sub_21BA4B940()
{
  result = qword_27CD9F4D0;
  if (!qword_27CD9F4D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9F4D8);
    sub_21BA4B9F8();
    sub_21B9B35B8(&qword_27CD9F4F0, &qword_27CD9F4F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F4D0);
  }

  return result;
}

unint64_t sub_21BA4B9F8()
{
  result = qword_27CD9F4E0;
  if (!qword_27CD9F4E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9F4E8);
    sub_21B9FC6C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F4E0);
  }

  return result;
}

uint64_t sub_21BA4BA84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F4A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21BA4BB20()
{
  result = qword_27CD9F508;
  if (!qword_27CD9F508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9F510);
    sub_21BA4BBA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F508);
  }

  return result;
}

unint64_t sub_21BA4BBA4()
{
  result = qword_27CD9F518;
  if (!qword_27CD9F518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9F4A8);
    sub_21BA4BC30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F518);
  }

  return result;
}

unint64_t sub_21BA4BC30()
{
  result = qword_27CD9F520;
  if (!qword_27CD9F520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9F528);
    sub_21BA4B828();
    sub_21B9AC8D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F520);
  }

  return result;
}

uint64_t sub_21BA4BCBC@<X0>(uint64_t a1@<X8>)
{
  result = sub_21BA87A8C();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return result;
}

uint64_t EnvironmentValues.ruiIsRowSelected.getter()
{
  sub_21BA4BD4C();
  sub_21BA86EAC();
  return v1;
}

unint64_t sub_21BA4BD4C()
{
  result = qword_27CDAD7A0[0];
  if (!qword_27CDAD7A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CDAD7A0);
  }

  return result;
}

uint64_t sub_21BA4BDA0@<X0>(uint64_t a1@<X8>)
{
  sub_21BA4BD4C();
  result = sub_21BA86EAC();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return result;
}

uint64_t sub_21BA4BDF8()
{
  sub_21BA4BD4C();

  return sub_21BA86EBC();
}

void (*EnvironmentValues.ruiIsRowSelected.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  *(v3 + 56) = sub_21BA4BD4C();
  sub_21BA86EAC();
  v5 = *(v4 + 32);
  v6 = *(v4 + 40);
  *v4 = *(v4 + 24);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  return sub_21BA4BF48;
}

void sub_21BA4BF48(void **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[1];
  v2[3] = **a1;
  v4 = *(v2 + 16);
  v2[4] = v3;
  *(v2 + 40) = v4;
  if (a2)
  {

    sub_21BA86EBC();
  }

  else
  {
    sub_21BA86EBC();
  }

  free(v2);
}

uint64_t sub_21BA4BFFC()
{
  v1 = OBJC_IVAR____TtC8RemoteUI19RUICustomContentRow____lazy_storage___contentLoader;
  if (*(v0 + OBJC_IVAR____TtC8RemoteUI19RUICustomContentRow____lazy_storage___contentLoader))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8RemoteUI19RUICustomContentRow____lazy_storage___contentLoader);
  }

  else
  {
    v3 = v0;
    v4 = sub_21B9DDCB8();
    v5 = *((*MEMORY[0x277D85000] & **v4) + 0x90);
    v6 = *v4;
    v2 = v5();

    *(v3 + v1) = v2;
  }

  return v2;
}

id sub_21BA4C0B8()
{
  v1 = [v0 parent];
  if (v1)
  {
    v2 = v1;
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = [v3 tableElement];

      return v4;
    }
  }

  result = [v0 parent];
  if (result)
  {
    v6 = result;
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_21BA4C180()
{
  sub_21BA87FEC();
  v1 = v0;
  v2 = sub_21BA87FDC();
  v3 = swift_allocObject();
  v4 = MEMORY[0x277D85700];
  v3[2] = v2;
  v3[3] = v4;
  v3[4] = v1;
  v5 = v1;
  v6 = sub_21BA87FDC();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = v4;
  v7[4] = v5;
  sub_21BA87A7C();
  return v9;
}

void sub_21BA4C274(void *a1@<X0>, BOOL *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F590);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - v8;
  v10 = sub_21BA865CC();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *((*MEMORY[0x277D85000] & *a1) + 0x180);
  v16 = v15(v12);
  if (!v16)
  {
    (*(v11 + 56))(v9, 1, 1, v10);
LABEL_7:
    sub_21B9ABAAC(v9, &qword_27CD9F590);
LABEL_13:
    v28 = 0;
    goto LABEL_14;
  }

  v30 = v14;
  v17 = a2;
  v18 = v16;
  v19 = [v16 indexPathForRow_];

  if (v19)
  {
    sub_21BA865AC();

    (*(v11 + 56))(v6, 0, 1, v10);
  }

  else
  {
    (*(v11 + 56))(v6, 1, 1, v10);
  }

  sub_21BA4DE24(v6, v9);
  a2 = v17;
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    goto LABEL_7;
  }

  v20 = v30;
  v21 = (*(v11 + 32))(v30, v9, v10);
  v22 = (v15)(v21);
  if (!v22)
  {
LABEL_12:
    (*(v11 + 8))(v20, v10);
    goto LABEL_13;
  }

  v23 = v22;
  v24 = [v22 tableView];

  if (v24)
  {
    v25 = [v24 indexPathsForSelectedRows];

    if (v25)
    {
      v26 = sub_21BA87F0C();

      v27 = sub_21BA4C5D8(v20, v26);

      (*(v11 + 8))(v20, v10);
      v28 = v27;
LABEL_14:
      *a2 = v28;
      return;
    }

    goto LABEL_12;
  }

  __break(1u);
}

BOOL sub_21BA4C5D8(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    sub_21BA865CC();
    ++v2;
    sub_21BA4DE94(&qword_27CD9F598, MEMORY[0x277CC9AF8]);
  }

  while ((sub_21BA87C7C() & 1) == 0);
  return v3 != v4;
}

void sub_21BA4C6E4(unsigned __int8 *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F590);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  v10 = sub_21BA865CC();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *a1;
  v15 = *((*MEMORY[0x277D85000] & *a2) + 0x180);
  v16 = v15(v12);
  if (!v16)
  {
    (*(v11 + 56))(v9, 1, 1, v10);
LABEL_7:
    sub_21B9ABAAC(v9, &qword_27CD9F590);
    return;
  }

  v17 = v16;
  v18 = [v16 indexPathForRow_];

  if (v18)
  {
    sub_21BA865AC();

    (*(v11 + 56))(v6, 0, 1, v10);
  }

  else
  {
    (*(v11 + 56))(v6, 1, 1, v10);
  }

  sub_21BA4DE24(v6, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    goto LABEL_7;
  }

  v19 = v14;
  v20 = (*(v11 + 32))(v14, v9, v10);
  v34 = (*((*MEMORY[0x277D85000] & *a2) + 0x188))(v20);
  v35 = v21;
  v36 = v22 & 1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9CE78);
  MEMORY[0x21CEFCD90](&v33, v23);
  v24 = v33;

  v26 = v32;
  if (v32 == v24)
  {
    goto LABEL_17;
  }

  v27 = (v15)(v25);
  if (v26)
  {
    if (v27)
    {
      v28 = v27;
      v29 = [v27 tableView];

      if (v29)
      {
        v30 = sub_21BA8659C();
        [v29 selectRowAtIndexPath:v30 animated:1 scrollPosition:2];
LABEL_16:

        goto LABEL_17;
      }

      __break(1u);
      goto LABEL_19;
    }

LABEL_17:
    (*(v11 + 8))(v19, v10);
    return;
  }

  if (!v27)
  {
    goto LABEL_17;
  }

  v31 = v27;
  v29 = [v27 tableView];

  if (v29)
  {
    v30 = sub_21BA8659C();
    [v29 deselectRowAtIndexPath:v30 animated:1];
    goto LABEL_16;
  }

LABEL_19:
  __break(1u);
}

uint64_t objectdestroyTm_8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_21BA4CBE8()
{
  v1 = sub_21BA8655C();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for BuddyMLRendererWrapper(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F550);
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - v8;
  v10 = *(v0 + OBJC_IVAR____TtC8RemoteUI19RUICustomContentRow_cell);
  if (v10)
  {
    v35 = v10;
    v11 = [v0 pageElement];
    if (v11 && (v12 = v11, v13 = [v11 page], v12, v13) && (v14 = objc_msgSend(v13, sel_objectModel), v13, v14))
    {
      v15 = MEMORY[0x277D85000];
      v16 = v0;
      (*((*MEMORY[0x277D85000] & *v0) + 0x128))(v35);
      v34 = swift_allocObject();
      v17 = swift_unknownObjectWeakInit();
      v32 = (*((*v15 & *v0) + 0xA0))(v17);
      v31 = sub_21BA4BFFC();
      v18 = *(v0 + OBJC_IVAR____TtC8RemoteUI19RUICustomContentRow_childElementDirectory);
      v19 = v14;

      v20 = RUIObjectModel.decodingUserInfo.getter();
      sub_21BA0162C();
      v33 = v16;
      sub_21BA01630(v3, v32, v14, v16, v18, v20, v6);
      RUIObjectModel.activityIndicatorManager.getter();
      type metadata accessor for ActivityIndicatorManager(0);
      sub_21BA4DE94(&unk_27CD9E6C0, type metadata accessor for BuddyMLRendererWrapper);
      sub_21BA4DE94(&qword_27CD9D770, type metadata accessor for ActivityIndicatorManager);
      sub_21BA876EC();

      sub_21BA04874(v6);
      KeyPath = swift_getKeyPath();
      v22 = (*((*MEMORY[0x277D85000] & *v33) + 0x188))();
      v24 = v23;
      LOBYTE(v18) = v25;
      v26 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F558) + 36)];
      *v26 = KeyPath;
      *(v26 + 1) = v22;
      *(v26 + 2) = v24;
      v26[24] = v18 & 1;
      v27 = swift_allocObject();
      v28 = v34;
      *(v27 + 16) = sub_21BA4DB78;
      *(v27 + 24) = v28;
      v29 = &v9[*(v7 + 36)];
      *v29 = sub_21BA4DBD8;
      *(v29 + 1) = v27;
      sub_21BA4DC04();

      v36 = sub_21BA87A2C();
      sub_21BA43F54(&v36);
    }

    else
    {
      v30 = v35;
    }
  }
}

void *sub_21BA4D09C()
{
  v1 = OBJC_IVAR____TtC8RemoteUI19RUICustomContentRow_cell;
  v2 = *(v0 + OBJC_IVAR____TtC8RemoteUI19RUICustomContentRow_cell);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8RemoteUI19RUICustomContentRow_cell);
    v4 = v3;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F540);
    v4 = sub_21BA43AB8(0, 0, 0);
    v3 = 0;
    v2 = *(v0 + v1);
  }

  *(v0 + v1) = v4;
  v5 = v4;
  v6 = v3;
  v7 = v5;

  sub_21BA4CBE8();
  return v5;
}

void sub_21BA4D1B4(void *a1, uint64_t a2, const char **a3)
{
  v6.receiver = a1;
  v6.super_class = type metadata accessor for RUICustomContentRow();
  v4 = *a3;
  v5 = v6.receiver;
  objc_msgSendSuper2(&v6, v4);
  sub_21BA4CBE8();
}

uint64_t sub_21BA4D208()
{
  v1 = sub_21BA8673C();
  MEMORY[0x28223BE20](v1);
  v3 = v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21BA864AC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DBA0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = v23 - v10;
  result = (*((*MEMORY[0x277D85000] & *v0) + 0xA0))(v9);
  if (!result)
  {
    return result;
  }

  v13 = result;
  v14 = [v0 pageElement];
  if (!v14)
  {
    __break(1u);
    goto LABEL_11;
  }

  v15 = v14;
  v16 = [v14 page];

  if (!v16)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v17 = [v16 objectModel];

  if (!v17)
  {
LABEL_12:
    result = sub_21BA886DC();
    __break(1u);
    return result;
  }

  v23[1] = v3;
  v18 = [v17 sourceURL];
  if (v18)
  {
    v19 = v18;
    sub_21BA8643C();

    (*(v5 + 32))(v11, v7, v4);
    (*(v5 + 56))(v11, 0, 1, v4);
  }

  else
  {
    (*(v5 + 56))(v11, 1, 1, v4);
  }

  v20 = RUIObjectModel.decodingUserInfo.getter();
  type metadata accessor for HTTPDataSource();
  v21 = HTTPDataSource.__allocating_init()();
  v22 = RUIObjectModel.xmlUIData.getter();
  sub_21BA3E078(v13, v11, v20, v21, &protocol witness table for HTTPDataSource, v22);
  sub_21B9ABAAC(v11, &qword_27CD9DBA0);
}

id RUICustomContentRow.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RUICustomContentRow.init()()
{
  *&v0[OBJC_IVAR____TtC8RemoteUI19RUICustomContentRow_cell] = 0;
  v1 = OBJC_IVAR____TtC8RemoteUI19RUICustomContentRow_childElementDirectory;
  type metadata accessor for ElementDirectory();
  *&v0[v1] = sub_21BA52ABC();
  *&v0[OBJC_IVAR____TtC8RemoteUI19RUICustomContentRow____lazy_storage___contentLoader] = 0;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for RUICustomContentRow();
  return objc_msgSendSuper2(&v3, sel_init);
}

id RUICustomContentRow.__allocating_init(attributes:parent:)(uint64_t a1, void *a2)
{
  if (a1)
  {
    v4 = sub_21BA87BBC();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(v2) initWithAttributes:v4 parent:a2];

  return v5;
}

id RUICustomContentRow.init(attributes:parent:)(uint64_t a1, void *a2)
{
  v3 = v2;
  *&v2[OBJC_IVAR____TtC8RemoteUI19RUICustomContentRow_cell] = 0;
  v6 = OBJC_IVAR____TtC8RemoteUI19RUICustomContentRow_childElementDirectory;
  type metadata accessor for ElementDirectory();
  *&v2[v6] = sub_21BA52ABC();
  *&v2[OBJC_IVAR____TtC8RemoteUI19RUICustomContentRow____lazy_storage___contentLoader] = 0;
  if (a1)
  {
    v7 = sub_21BA87BBC();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = type metadata accessor for RUICustomContentRow();
  v8 = objc_msgSendSuper2(&v10, sel_initWithAttributes_parent_, v7, a2);

  if (v8)
  {
  }

  return v8;
}

uint64_t sub_21BA4DA70()
{
}

id RUICustomContentRow.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RUICustomContentRow();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_21BA4DB78(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong setSelectionScrollBehavior_];
  }
}

unint64_t sub_21BA4DC04()
{
  result = qword_27CD9F560;
  if (!qword_27CD9F560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9F550);
    sub_21BA4DCBC();
    sub_21B9B35B8(&qword_27CD9F580, &qword_27CD9F588);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F560);
  }

  return result;
}

unint64_t sub_21BA4DCBC()
{
  result = qword_27CD9F568;
  if (!qword_27CD9F568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9F558);
    type metadata accessor for BuddyMLRendererWrapper(255);
    type metadata accessor for ActivityIndicatorManager(255);
    sub_21BA4DE94(&unk_27CD9E6C0, type metadata accessor for BuddyMLRendererWrapper);
    sub_21BA4DE94(&qword_27CD9D770, type metadata accessor for ActivityIndicatorManager);
    swift_getOpaqueTypeConformance2();
    sub_21B9B35B8(&qword_27CD9F570, &qword_27CD9F578);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F568);
  }

  return result;
}

uint64_t sub_21BA4DE24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F590);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BA4DE94(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21BA4DEDC@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F5F0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v19 - v6;
  v8 = sub_21BA8726C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v19 - v13;
  sub_21BA8727C();
  *v7 = sub_21BA86FEC();
  *(v7 + 1) = 0;
  v7[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F5F8);
  sub_21BA8728C();
  v15 = *(v9 + 16);
  v15(v11, v14, v8);
  sub_21BA4E6A4(v7, v4);
  v15(a1, v11, v8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F600);
  sub_21BA4E6A4(v4, &a1[*(v16 + 48)]);
  sub_21BA4E714(v7);
  v17 = *(v9 + 8);
  v17(v14, v8);
  sub_21BA4E714(v4);
  return (v17)(v11, v8);
}

uint64_t sub_21BA4E130@<X0>(char *a1@<X8>)
{
  v32 = a1;
  v31 = sub_21BA8738C();
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v4 = &v27 - v3;
  v5 = sub_21BA8739C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F5D0);
  v29 = *(v9 - 8);
  v10 = v29;
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v27 - v14;
  sub_21BA873AC();
  sub_21BA4E5F8();
  sub_21BA4E650();
  sub_21BA876BC();
  (*(v6 + 8))(v8, v5);
  v27 = v4;
  sub_21BA873BC();
  v16 = *(v10 + 16);
  v28 = v12;
  v16(v12, v15, v9);
  v34 = 1;
  v17 = *(v33 + 16);
  v18 = v30;
  v19 = v31;
  v17(v30, v4, v31);
  v20 = v32;
  v16(v32, v12, v9);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F5E8);
  v22 = &v20[*(v21 + 48)];
  v23 = v34;
  *v22 = 0;
  v22[8] = v23;
  v17(&v20[*(v21 + 64)], v18, v19);
  v24 = *(v33 + 8);
  v24(v27, v19);
  v25 = *(v29 + 8);
  v25(v15, v9);
  v24(v18, v19);
  return (v25)(v28, v9);
}

uint64_t sub_21BA4E514@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X3>, uint64_t (*a3)(uint64_t)@<X5>, uint64_t a4@<X8>)
{
  *a4 = sub_21BA86ECC();
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  return a3(a1);
}

uint64_t sub_21BA4E5A4(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21BA4E5F8()
{
  result = qword_27CD9F5D8;
  if (!qword_27CD9F5D8)
  {
    sub_21BA8739C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F5D8);
  }

  return result;
}

unint64_t sub_21BA4E650()
{
  result = qword_27CD9F5E0;
  if (!qword_27CD9F5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F5E0);
  }

  return result;
}

uint64_t sub_21BA4E6A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F5F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BA4E714(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F5F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id RemoteUIController.decodingUserInfo.getter()
{
  result = [v0 loader];
  if (result)
  {
    v2 = result;
    v3 = [result decodingUserInfo];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t ContentInsetHandling.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_21BA4E7F0()
{
  v1 = *v0;
  sub_21BA88BAC();
  MEMORY[0x21CEFDF10](v1);
  return sub_21BA88BCC();
}

uint64_t sub_21BA4E864()
{
  v1 = *v0;
  sub_21BA88BAC();
  MEMORY[0x21CEFDF10](v1);
  return sub_21BA88BCC();
}

uint64_t *sub_21BA4E8A8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_21BA4E8D8(void *a1)
{
  sub_21BA4E998();
  sub_21BA4E9EC();
  v2 = a1;
  sub_21BA882BC();

  return v4;
}

uint64_t UITraitCollection.ruiContentInsetHandling.getter()
{
  sub_21BA4E998();
  sub_21BA4E9EC();
  sub_21BA882BC();
  return v1;
}

unint64_t sub_21BA4E998()
{
  result = qword_27CD9F608;
  if (!qword_27CD9F608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F608);
  }

  return result;
}

unint64_t sub_21BA4E9EC()
{
  result = qword_27CD9F610;
  if (!qword_27CD9F610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F610);
  }

  return result;
}

uint64_t UIMutableTraits.ruiContentInsetHandling.getter()
{
  sub_21BA4E998();
  sub_21BA4E9EC();
  sub_21BA8674C();
  return v1;
}

uint64_t sub_21BA4EAA8@<X0>(uint64_t *a1@<X8>)
{
  result = UIMutableTraits.ruiContentInsetHandling.getter();
  *a1 = result;
  return result;
}

uint64_t UIMutableTraits.ruiContentInsetHandling.setter()
{
  sub_21BA4E998();
  sub_21BA4E9EC();
  return sub_21BA8675C();
}

uint64_t (*UIMutableTraits.ruiContentInsetHandling.modify(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  *a1 = UIMutableTraits.ruiContentInsetHandling.getter();
  return sub_21BA4EBC8;
}

uint64_t sub_21BA4EBF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21BA4ECD4();

  return MEMORY[0x282130D38](a1, a2, a3, a4, v8);
}

id sub_21BA4EC54@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = [a1 ruiContentInsetHandling];
  *a2 = result;
  return result;
}

unint64_t sub_21BA4ECD4()
{
  result = qword_27CD9F618;
  if (!qword_27CD9F618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F618);
  }

  return result;
}

unint64_t sub_21BA4ED2C()
{
  result = qword_27CD9F620;
  if (!qword_27CD9F620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F620);
  }

  return result;
}

id sub_21BA4EDC0()
{
  v1 = type metadata accessor for URLLoadingParameters(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E028);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for PinViewElement(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![objc_opt_self() usesModernPinView])
  {
    return [v0 legacyPasscodeViewOM];
  }

  sub_21BA14438(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_21BA4F014(v6);
  }

  else
  {
    sub_21BA4F07C(v6, v10);
    sub_21BA27148(&v10[*(v7 + 56)], v3);
    v12 = [v0 pageElement];
    sub_21B9F5030(v3, v12);
    v14 = v13;

    sub_21BA4F0E0(v3, type metadata accessor for URLLoadingParameters);
    sub_21BA4F0E0(v10, type metadata accessor for PinViewElement);
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

uint64_t sub_21BA4F014(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E028);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21BA4F07C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PinViewElement(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BA4F0E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21BA4F184()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D3A0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_21BA886AC();
  __swift_allocate_value_buffer(v3, qword_27CDB21D8);
  v4 = __swift_project_value_buffer(v3, qword_27CDB21D8);
  sub_21BA8869C();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_21BA4F2BC()
{
  if (qword_27CDADDC0 != -1)
  {
    swift_once();
  }

  v0 = sub_21BA886AC();

  return __swift_project_value_buffer(v0, qword_27CDB21D8);
}

uint64_t sub_21BA4F320()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21B9AC1F4;

  return sub_21BA4F9B4();
}

uint64_t sub_21BA4F3C8()
{
  if (*v0)
  {
    return 0x6874654D70747468;
  }

  else
  {
    return 7107189;
  }
}

uint64_t sub_21BA4F400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v5 || (sub_21BA8899C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6874654D70747468 && a2 == 0xEA0000000000646FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21BA8899C();

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

uint64_t sub_21BA4F4E4(uint64_t a1)
{
  v2 = sub_21BA501F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21BA4F520(uint64_t a1)
{
  v2 = sub_21BA501F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21BA4F55C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21B9AC2E8;

  return MEMORY[0x2821820D0](a1, a2);
}

uint64_t sub_21BA4F604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21B9AC2E8;

  return MEMORY[0x2821820C0](a1, a2, a3);
}

uint64_t sub_21BA4F6B4()
{
  v2 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v2;
  *(v1 + 48) = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 56) = v3;
  *v3 = v1;
  v3[1] = sub_21BA4F768;

  return sub_21BA4F9B4();
}

uint64_t sub_21BA4F768()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

double sub_21BA4F96C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_21BA4FD14(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_21BA4F9D4()
{
  v1 = **(v0 + 144);
  v2 = sub_21BA87C8C();
  *(v0 + 152) = v2;
  v3 = sub_21BA87C8C();
  *(v0 + 160) = v3;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 176;
  *(v0 + 24) = sub_21BA4FB24;
  v4 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F060);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_21BA3484C;
  *(v0 + 104) = &block_descriptor_8;
  *(v0 + 112) = v4;
  [v1 openLink:v2 HTTPMethod:v3 completion:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_21BA4FB24()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_21BA4FC9C;
  }

  else
  {
    v2 = sub_21BA4FC34;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21BA4FC34()
{
  v1 = *(v0 + 152);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21BA4FC9C()
{
  v1 = v0[20];
  v2 = v0[19];
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

void sub_21BA4FD14(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F648);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = sub_21BA88BFC();
  if (qword_27CDADDC0 != -1)
  {
    swift_once();
  }

  v10 = sub_21BA886AC();
  v11 = __swift_project_value_buffer(v10, qword_27CDB21D8);
  if (!*(v9 + 16) || (v12 = sub_21B9C14A8(v11), (v13 & 1) == 0))
  {

    goto LABEL_9;
  }

  sub_21B9AFDF0(*(v9 + 56) + 32 * v12, v28);

  sub_21BA198D8();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    sub_21BA501A4();
    swift_allocError();
    *v15 = 0;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(a1);
    return;
  }

  v27 = a2;
  v14 = v29;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21BA501F8();
  sub_21BA88C0C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v16 = v14;
    v28[0] = 0;
    v17 = sub_21BA887FC();
    v19 = v18;
    v26 = v17;
    v28[0] = 1;
    v20 = sub_21BA887BC();
    if (v21)
    {
      v22 = v20;
    }

    else
    {
      v22 = 5522759;
    }

    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = 0xE300000000000000;
    }

    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v24 = v26;
    v25 = v27;
    *v27 = v16;
    v25[1] = v24;
    v25[2] = v19;
    v25[3] = v22;
    v25[4] = v23;
  }
}

unint64_t sub_21BA5002C()
{
  result = qword_27CD9F628;
  if (!qword_27CD9F628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F628);
  }

  return result;
}

unint64_t sub_21BA50084()
{
  result = qword_27CD9F630;
  if (!qword_27CD9F630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F630);
  }

  return result;
}

unint64_t sub_21BA500DC()
{
  result = qword_27CD9F638;
  if (!qword_27CD9F638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F638);
  }

  return result;
}

unint64_t sub_21BA50150()
{
  result = qword_27CD9F640;
  if (!qword_27CD9F640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F640);
  }

  return result;
}

unint64_t sub_21BA501A4()
{
  result = qword_27CD9F650;
  if (!qword_27CD9F650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F650);
  }

  return result;
}

unint64_t sub_21BA501F8()
{
  result = qword_27CDAE0D0[0];
  if (!qword_27CDAE0D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CDAE0D0);
  }

  return result;
}

unint64_t sub_21BA5028C()
{
  result = qword_27CDAE1E0[0];
  if (!qword_27CDAE1E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CDAE1E0);
  }

  return result;
}

unint64_t sub_21BA502E4()
{
  result = qword_27CDAE2F0;
  if (!qword_27CDAE2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDAE2F0);
  }

  return result;
}

unint64_t sub_21BA5033C()
{
  result = qword_27CDAE2F8[0];
  if (!qword_27CDAE2F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CDAE2F8);
  }

  return result;
}

void *sub_21BA503A0(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC8RemoteUI28RUITextActivityIndicatorView_activityIndicator;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  v10 = OBJC_IVAR____TtC8RemoteUI28RUITextActivityIndicatorView_label;
  v11 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  *&v4[v10] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD9D270);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_21BA9C820;
  v13 = *&v4[v9];
  *(v12 + 32) = v13;
  *(v12 + 40) = v11;
  v14 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_21B9BDFC0(0, &qword_27CD9D250);
  v15 = v13;
  v16 = v11;
  v17 = sub_21BA87EFC();

  v18 = [v14 initWithArrangedSubviews_];

  *&v4[OBJC_IVAR____TtC8RemoteUI28RUITextActivityIndicatorView_stackView] = v18;
  v23.receiver = v4;
  v23.super_class = type metadata accessor for RUITextActivityIndicatorView();
  v19 = objc_msgSendSuper2(&v23, sel_initWithFrame_, a1, a2, a3, a4);
  v20 = *((*MEMORY[0x277D85000] & *v19) + 0x78);
  v21 = v19;
  v20();

  return v21;
}

id sub_21BA50684(SEL *a1, char a2)
{
  [*&v2[OBJC_IVAR____TtC8RemoteUI28RUITextActivityIndicatorView_activityIndicator] *a1];

  return [v2 setHidden_];
}

void sub_21BA506EC(char *a1, uint64_t a2, SEL *a3, char a4)
{
  v6 = *&a1[OBJC_IVAR____TtC8RemoteUI28RUITextActivityIndicatorView_activityIndicator];
  v7 = a1;
  [v6 *a3];
  [v7 setHidden_];
}

void sub_21BA50768()
{
  v1 = v0;
  (*((*MEMORY[0x277D85000] & *v0) + 0x70))();
  v2 = *&v0[OBJC_IVAR____TtC8RemoteUI28RUITextActivityIndicatorView_stackView];
  [v2 setAlignment_];
  [v2 setSpacing_];
  [v2 setAxis_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 addSubview_];
  v3 = *&v0[OBJC_IVAR____TtC8RemoteUI28RUITextActivityIndicatorView_label];
  sub_21BA457E4();
  v4 = sub_21BA87C8C();

  [v3 setText_];

  v5 = [objc_opt_self() secondaryLabelColor];
  [v3 setTextColor_];

  v32 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD9D270);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_21BA9D0D0;
  v7 = [v2 leadingAnchor];
  v8 = [v1 leadingAnchor];
  v9 = [v7 constraintEqualToAnchor_];

  *(v6 + 32) = v9;
  v10 = [v2 trailingAnchor];
  v11 = [v1 trailingAnchor];
  v12 = [v10 constraintEqualToAnchor_];

  *(v6 + 40) = v12;
  v13 = [v2 topAnchor];
  v14 = [v1 topAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v6 + 48) = v15;
  v16 = [v2 bottomAnchor];
  v17 = [v1 bottomAnchor];
  v18 = [v16 constraintEqualToAnchor_];

  *(v6 + 56) = v18;
  v19 = *&v1[OBJC_IVAR____TtC8RemoteUI28RUITextActivityIndicatorView_activityIndicator];
  v20 = [v19 leadingAnchor];
  v21 = [v2 leadingAnchor];
  v22 = [v20 constraintGreaterThanOrEqualToAnchor_];

  *(v6 + 64) = v22;
  v23 = [v19 trailingAnchor];
  v24 = [v2 trailingAnchor];
  v25 = [v23 constraintLessThanOrEqualToAnchor_];

  *(v6 + 72) = v25;
  v26 = [v3 leadingAnchor];
  v27 = [v2 leadingAnchor];
  v28 = [v26 constraintGreaterThanOrEqualToAnchor_];

  *(v6 + 80) = v28;
  v29 = [v3 trailingAnchor];
  v30 = [v2 trailingAnchor];
  v31 = [v29 constraintLessThanOrEqualToAnchor_];

  *(v6 + 88) = v31;
  sub_21B9BDFC0(0, &qword_27CD9D028);
  v33 = sub_21BA87EFC();

  [v32 activateConstraints_];
}

id RUITextActivityIndicatorView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RUITextActivityIndicatorView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21BA50D74(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000010;
    v6 = 0xD000000000000013;
    if (a1 != 8)
    {
      v6 = 0xD000000000000018;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x616D496567646162;
    if (a1 != 5)
    {
      v7 = 0xD000000000000010;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x72616C7563726963;
    v2 = 0xD000000000000010;
    v3 = 0x6E69546567646162;
    if (a1 != 3)
    {
      v3 = 0xD00000000000001ALL;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x616D496567646162;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_21BA50EE8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_21BA50D74(*a1);
  v5 = v4;
  if (v3 == sub_21BA50D74(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_21BA8899C();
  }

  return v8 & 1;
}

uint64_t sub_21BA50F70()
{
  v1 = *v0;
  sub_21BA88BAC();
  sub_21BA50D74(v1);
  sub_21BA87D8C();

  return sub_21BA88BCC();
}

uint64_t sub_21BA50FD4()
{
  sub_21BA50D74(*v0);
  sub_21BA87D8C();
}

uint64_t sub_21BA51028()
{
  v1 = *v0;
  sub_21BA88BAC();
  sub_21BA50D74(v1);
  sub_21BA87D8C();

  return sub_21BA88BCC();
}

uint64_t sub_21BA51088@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21BA51578();
  *a1 = result;
  return result;
}

uint64_t sub_21BA510B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21BA50D74(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_21BA51100@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21BA51578();
  *a1 = result;
  return result;
}

uint64_t sub_21BA51134(uint64_t a1)
{
  v2 = sub_21BA515C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21BA51170(uint64_t a1)
{
  v2 = sub_21BA515C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21BA511AC@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F670);
  v22 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = sub_21BA515C4();
  v8 = v49;
  sub_21BA88C0C();
  if (!v8)
  {
    v9 = v22;
    v49 = a2;
    LOBYTE(v42) = 0;
    HIDWORD(v21) = sub_21BA887CC();
    sub_21B9B3220(a1, v41);
    LOBYTE(v25) = 1;
    LOBYTE(v23[0]) = 2;
    LOBYTE(v24[0]) = 7;
    LOBYTE(v31) = 8;
    v38 = 4;
    v37 = 9;
    v36 = 3;
    v35 = 5;
    v34 = 6;
    v33 = 10;
    RUIImage.Keys.init(image:systemImage:symbolColor:enclosureColor:imageBundleIdentifier:imageTypeIdentifier:tintColor:imageWidth:imageHeight:symbolRenderingMode:)(&v25, v23, v24, &v31, &v38, &v37, &v36, &v35, &v39, &v34, &v33);
    v31 = v39;
    v32 = v40;
    RUIImage.init<A>(from:keys:decodeBadge:)(&v42, v41, &v31, 0, &type metadata for ImageBadge.CodingKeys, v7);
    HIDWORD(v21) = BYTE4(v21) & 1;
    v27 = v44;
    v28 = v45;
    v29 = v46;
    v30 = v47;
    v25 = v42;
    v26 = v43;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    Decoder.ruiDecodingContext.getter();
    v11 = v24[0];
    v12 = v24[1];

    v23[2] = v44;
    v23[3] = v45;
    v23[4] = v46;
    v23[5] = v47;
    v23[0] = v42;
    v23[1] = v43;
    v13 = sub_21B9AB470();
    (*(*v11 + 168))(v23, v13, v14);

    swift_unknownObjectRelease();
    (*(v9 + 8))(v6, v4);
    *(v48 + 7) = v25;
    *(&v48[1] + 7) = v26;
    *(&v48[2] + 7) = v27;
    *(&v48[5] + 7) = v30;
    *(&v48[4] + 7) = v29;
    *(&v48[3] + 7) = v28;
    v15 = v49;
    *v49 = BYTE4(v21);
    v16 = v48[0];
    v17 = v48[1];
    *(v15 + 33) = v48[2];
    *(v15 + 17) = v17;
    *(v15 + 1) = v16;
    v18 = v48[3];
    v19 = v48[4];
    v20 = v48[5];
    *(v15 + 12) = *(&v48[5] + 15);
    *(v15 + 81) = v20;
    *(v15 + 65) = v19;
    *(v15 + 49) = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21BA51578()
{
  v0 = sub_21BA8875C();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_21BA515C4()
{
  result = qword_27CD9F678;
  if (!qword_27CD9F678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F678);
  }

  return result;
}

unint64_t sub_21BA5161C()
{
  result = qword_27CD9F680;
  if (!qword_27CD9F680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F680);
  }

  return result;
}

unint64_t sub_21BA51674()
{
  result = qword_27CD9F688;
  if (!qword_27CD9F688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F688);
  }

  return result;
}

unint64_t sub_21BA516CC()
{
  result = qword_27CD9F690;
  if (!qword_27CD9F690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F690);
  }

  return result;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_21BA5174C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21BA51794(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ImageBadge.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ImageBadge.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

id sub_21BA5194C()
{
  v0 = [objc_allocWithZone(sub_21BA8688C()) init];
  sub_21BA50150();
  sub_21BA8687C();
  return v0;
}

uint64_t sub_21BA519BC(uint64_t a1, char a2)
{
  v4 = sub_21BA86E9C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    sub_21BA8820C();
    v8 = sub_21BA8740C();
    sub_21BA8670C();

    sub_21BA86E8C();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    return v10[1];
  }

  return a1;
}

uint64_t sub_21BA51B00()
{
  type metadata accessor for RUIToolbarContentManager();
  sub_21BA52774(&qword_27CD9CF98, type metadata accessor for RUIToolbarContentManager);
  return sub_21BA86A6C();
}

uint64_t sub_21BA51B70()
{
  v1 = sub_21BA519BC(*v0, *(v0 + 8));
  v7[0] = sub_21BA87B2C();
  v7[1] = v2;
  v3 = *(*v1 + 200);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9EB80);
  v5 = sub_21B9B35B8(&qword_27CD9EB78, &qword_27CD9EB80);
  v3(v7, v4, v5);
}

uint64_t sub_21BA51C8C(void **a1, uint64_t a2)
{
  v4 = type metadata accessor for RUIToolbarContentProvider(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BA51DF0(a2, v7, type metadata accessor for RUIToolbarContentProvider);
  v8 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_21B9B528C(0, v8[2] + 1, 1, v8);
  }

  v10 = v8[2];
  v9 = v8[3];
  if (v10 >= v9 >> 1)
  {
    v8 = sub_21B9B528C(v9 > 1, v10 + 1, 1, v8);
  }

  v8[2] = v10 + 1;
  result = sub_21BA51E5C(v7, v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v10, type metadata accessor for RUIToolbarContentProvider);
  *a1 = v8;
  return result;
}

uint64_t sub_21BA51DF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21BA51E5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21BA51EC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  sub_21BA51DF0(v7, &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RUIToolbarModifier);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_21BA51E5C(&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for RUIToolbarModifier);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F6A0);
  (*(*(v10 - 8) + 16))(a3, a1, v10);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F6A8);
  v12 = (a3 + *(result + 36));
  *v12 = sub_21BA52920;
  v12[1] = v9;
  return result;
}

uint64_t sub_21BA5205C@<X0>(void *a1@<X8>)
{
  if (qword_27CDAE700 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27CDB21F0;
}

void *sub_21BA520DC(void *a1, void *(*a2)(uint64_t *__return_ptr, uint64_t))
{

  result = a2(&v6, v4);
  *a1 = v6;
  return result;
}

uint64_t sub_21BA52130@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27CD9F698;
  return result;
}

void *sub_21BA5217C(_BYTE *a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = a2(&v4);
  *a1 = v4;
  return result;
}

uint64_t View.ruiToolbar<A>(content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for RUIToolbarModifier(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 2) = a3;
  *(v15 + 3) = a4;
  *(v15 + 4) = a5;
  *(v15 + 5) = a6;
  *(v15 + 6) = a1;
  *(v15 + 7) = a2;

  sub_21BA8654C();
  v16 = &v14[*(type metadata accessor for RUIToolbarContentProvider(0) + 20)];
  *v16 = sub_21BA522E8;
  v16[1] = v15;
  MEMORY[0x21CEFCB90](v14, a3, v12, a5);
  return sub_21BA52328(v14);
}

uint64_t sub_21BA522E8@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[5];
  v3 = v1[6];
  a1[3] = v1[3];
  a1[4] = v2;
  __swift_allocate_boxed_opaque_existential_1(a1);
  return v3();
}

uint64_t sub_21BA52328(uint64_t a1)
{
  v2 = type metadata accessor for RUIToolbarModifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t View.ruiNavigationBarBackButtonHidden(_:)(char a1)
{
  *(swift_allocObject() + 16) = a1;
  sub_21BA52438();
  sub_21BA8778C();
}

unint64_t sub_21BA52438()
{
  result = qword_27CD9F6B0;
  if (!qword_27CD9F6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F6B0);
  }

  return result;
}

uint64_t sub_21BA52508()
{
  result = type metadata accessor for RUIToolbarContentProvider(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_21BA5259C()
{
  result = sub_21BA8655C();
  if (v1 <= 0x3F)
  {
    result = sub_21BA52620();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_21BA52620()
{
  result = qword_27CD9F6B8;
  if (!qword_27CD9F6B8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27CD9F6B8);
  }

  return result;
}

unint64_t sub_21BA52690()
{
  result = qword_27CD9F6C0;
  if (!qword_27CD9F6C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9F6A8);
    sub_21B9B35B8(&qword_27CD9F6C8, &qword_27CD9F6A0);
    sub_21B9B35B8(&qword_27CD9F6D0, &qword_27CD9F6D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F6C0);
  }

  return result;
}

uint64_t sub_21BA52774(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_9()
{
  v1 = *(type metadata accessor for RUIToolbarModifier(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_21BA8655C();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  type metadata accessor for RUIToolbarContentProvider(0);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21BA528AC(void **a1)
{
  v3 = *(type metadata accessor for RUIToolbarModifier(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21BA51C8C(a1, v4);
}

id sub_21BA52924(void *a1)
{
  result = [a1 identifier];
  if (result)
  {
    v4 = result;
    v5 = sub_21BA87CBC();
    v7 = v6;

    swift_beginAccess();
    v8 = a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v1 + 16);
    *(v1 + 16) = 0x8000000000000000;
    sub_21BA52DE0(v8, v5, v7, isUniquelyReferenced_nonNull_native);

    *(v1 + 16) = v10;
    return swift_endAccess();
  }

  return result;
}

void *sub_21BA529F0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  if (!*(v5 + 16))
  {
    return 0;
  }

  v6 = sub_21B940DCC(a1, a2);
  if (v7)
  {
    v8 = *(*(v5 + 56) + 8 * v6);
    v9 = v8;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_21BA52A84()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_21BA52ABC()
{
  v0 = swift_allocObject();
  *(v0 + 16) = sub_21BA530C4(MEMORY[0x277D84F90]);
  return v0;
}

uint64_t sub_21BA52B00@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ElementDirectory();
  result = sub_21BA8690C();
  *a1 = result;
  return result;
}

uint64_t sub_21BA52B3C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F6F8);
  v35 = a2;
  result = sub_21BA8871C();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_21BA88BAC();
      sub_21BA87D8C();
      result = sub_21BA88BCC();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_21BA52DE0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_21B940DCC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_21BA52B3C(v16, a4 & 1);
      v11 = sub_21B940DCC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        v11 = sub_21BA88B0C();
        __break(1u);
        return MEMORY[0x2821F96F8](v11, v23);
      }
    }

    else
    {
      v19 = v11;
      sub_21BA52F58();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v11);
    *(v22 + 8 * v11) = a1;

    return MEMORY[0x2821F96F8](v11, v23);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v25 = v21[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v26;
}

id sub_21BA52F58()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F6F8);
  v2 = *v0;
  v3 = sub_21BA8870C();
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
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

unint64_t sub_21BA530C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F6F8);
    v3 = sub_21BA8872C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_21B940DCC(v5, v6);
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

uint64_t sub_21BA531E4()
{
  v0 = [objc_opt_self() callStackSymbols];
  v1 = sub_21BA87F0C();

  return v1;
}

id sub_21BA5323C@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v4 = objc_opt_self();
  result = [v4 currentApplicationIdentifier];
  if (result)
  {
    v6 = result;
    v7 = sub_21BA87CBC();
    v9 = v8;

    v10 = sub_21BA532EC(a1);
    v12 = v11;
    result = [v4 isInternalBuild];
    *a2 = v7;
    *(a2 + 8) = v9;
    *(a2 + 16) = v10;
    *(a2 + 24) = v12;
    *(a2 + 32) = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21BA532EC(uint64_t (*a1)(uint64_t))
{
  v2 = sub_21BA3658C(&unk_282D66D98);
  v3 = swift_arrayDestroy();
  result = a1(v3);
  v5 = result;
  v6 = *(result + 16);
  if (!v6)
  {
    v45 = MEMORY[0x277D84F90];
    goto LABEL_15;
  }

  v7 = 0;
  v8 = (result + 40);
  v47 = *(result + 16);
  v44 = v6 - 1;
  v45 = MEMORY[0x277D84F90];
  v46 = (result + 40);
  while (2)
  {
    v9 = &v8[16 * v7];
    v10 = v7;
    while (1)
    {
      if (v10 >= *(v5 + 16))
      {
        __break(1u);
LABEL_41:
        __break(1u);
        return result;
      }

      v7 = v10 + 1;
      v12 = *(v9 - 1);
      v11 = *v9;
      v48[0] = 32;
      v48[1] = 0xE100000000000000;
      MEMORY[0x28223BE20](result);
      v42[2] = v48;
      swift_bridgeObjectRetain_n();
      v14 = sub_21B9E9DB4(0x7FFFFFFFFFFFFFFFLL, 1, sub_21B9EC974, v42, v12, v11, v13);
      if (v14[2] > 1uLL)
      {
        break;
      }

      v9 += 2;
      ++v10;
      if (v47 == v7)
      {
        goto LABEL_15;
      }
    }

    v16 = v14[8];
    v15 = v14[9];
    v17 = v14[11];
    v43 = v14[10];

    v18 = MEMORY[0x21CEFD0C0](v16, v15, v43, v17);
    v20 = v19;

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_21BA48164(0, *(v45 + 2) + 1, 1, v45);
      v45 = result;
    }

    v22 = *(v45 + 2);
    v21 = *(v45 + 3);
    if (v22 >= v21 >> 1)
    {
      result = sub_21BA48164((v21 > 1), v22 + 1, 1, v45);
      v45 = result;
    }

    v23 = v45;
    v8 = v46;
    *(v45 + 2) = v22 + 1;
    v24 = &v23[16 * v22];
    *(v24 + 4) = v18;
    *(v24 + 5) = v20;
    if (v44 != v10)
    {
      continue;
    }

    break;
  }

LABEL_15:

  v25 = v45;
  v47 = *(v45 + 2);
  if (v47)
  {
    v26 = 0;
    v46 = v45 + 32;
    v27 = v2 + 56;
    v28 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v26 >= *(v25 + 2))
      {
        goto LABEL_41;
      }

      v29 = &v46[16 * v26];
      v31 = *v29;
      v30 = *(v29 + 1);
      ++v26;
      if (!*(v2 + 16))
      {
        break;
      }

      sub_21BA88BAC();

      sub_21BA87D8C();
      v32 = sub_21BA88BCC();
      v33 = -1 << *(v2 + 32);
      v34 = v32 & ~v33;
      if ((*(v27 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34))
      {
        v35 = ~v33;
        while (1)
        {
          v36 = (*(v2 + 48) + 16 * v34);
          v37 = *v36 == v31 && v36[1] == v30;
          if (v37 || (sub_21BA8899C() & 1) != 0)
          {
            break;
          }

          v34 = (v34 + 1) & v35;
          if (((*(v27 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        if (v26 == v47)
        {
          goto LABEL_36;
        }
      }

      else
      {
LABEL_28:
        result = swift_isUniquelyReferenced_nonNull_native();
        v49 = v28;
        if ((result & 1) == 0)
        {
          result = sub_21B9BCCB8(0, v28[2] + 1, 1);
          v28 = v49;
        }

        v39 = v28[2];
        v38 = v28[3];
        if (v39 >= v38 >> 1)
        {
          result = sub_21B9BCCB8((v38 > 1), v39 + 1, 1);
          v28 = v49;
        }

        v28[2] = v39 + 1;
        v40 = &v28[2 * v39];
        v40[4] = v31;
        v40[5] = v30;
        v25 = v45;
        if (v26 == v47)
        {
          goto LABEL_36;
        }
      }
    }

    goto LABEL_28;
  }

  v28 = MEMORY[0x277D84F90];
LABEL_36:

  if (v28[2])
  {
    v41 = v28[4];
  }

  else
  {
    v41 = 0;
  }

  return v41;
}

uint64_t sub_21BA53728()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t RUIImage.Keys.image.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21BA883CC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t RUIImage.Keys.systemImage.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_21BA883CC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t RUIImage.Keys.symbolColor.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_21BA883CC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t RUIImage.Keys.enclosureColor.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = sub_21BA883CC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t RUIImage.Keys.imageBundleIdentifier.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = sub_21BA883CC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t RUIImage.Keys.imageTypeIdentifier.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = sub_21BA883CC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t RUIImage.Keys.tintColor.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 56);
  v5 = sub_21BA883CC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t RUIImage.Keys.imageWidth.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 60);
  v5 = sub_21BA883CC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t RUIImage.Keys.imageHeight.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 64);
  v5 = sub_21BA883CC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t RUIImage.Keys.symbolRenderingMode.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 68);
  v5 = sub_21BA883CC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t RUIImage.Keys.init(image:systemImage:symbolColor:enclosureColor:imageBundleIdentifier:imageTypeIdentifier:tintColor:imageWidth:imageHeight:symbolRenderingMode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v17 = sub_21BA883CC();
  v24 = *(*(v17 - 8) + 32);
  (v24)((v17 - 8), a9, a1, v17);
  v18 = type metadata accessor for RUIImage.Keys();
  v24(a9 + v18[9], a2, v17);
  v24(a9 + v18[10], a3, v17);
  v24(a9 + v18[11], a4, v17);
  v24(a9 + v18[14], a7, v17);
  v24(a9 + v18[15], a8, v17);
  v24(a9 + v18[16], a10, v17);
  v24(a9 + v18[12], a5, v17);
  v24(a9 + v18[13], a6, v17);
  v19 = a9 + v18[17];

  return (v24)(v19, a11, v17);
}

unint64_t sub_21BA53E90(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6469576567616D69;
    v6 = 0x6965486567616D69;
    if (a1 != 8)
    {
      v6 = 0xD000000000000013;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000013;
    if (a1 != 5)
    {
      v7 = 0x6E69546567616D69;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x6567616D69;
    v2 = 0x6F436C6F626D7973;
    v3 = 0x7275736F6C636E65;
    if (a1 != 3)
    {
      v3 = 0xD000000000000015;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x6D496D6574737973;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_21BA54010(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_21BA53E90(*a1);
  v5 = v4;
  if (v3 == sub_21BA53E90(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_21BA8899C();
  }

  return v8 & 1;
}

uint64_t sub_21BA54098()
{
  v1 = *v0;
  sub_21BA88BAC();
  sub_21BA53E90(v1);
  sub_21BA87D8C();

  return sub_21BA88BCC();
}

uint64_t sub_21BA540FC()
{
  sub_21BA53E90(*v0);
  sub_21BA87D8C();
}

uint64_t sub_21BA54150()
{
  v1 = *v0;
  sub_21BA88BAC();
  sub_21BA53E90(v1);
  sub_21BA87D8C();

  return sub_21BA88BCC();
}

uint64_t sub_21BA541B0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21BA5A79C();
  *a1 = result;
  return result;
}

unint64_t sub_21BA541E0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_21BA53E90(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_21BA54228@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21BA5A79C();
  *a1 = result;
  return result;
}

uint64_t sub_21BA54250(uint64_t a1)
{
  v2 = sub_21BA11EF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21BA5428C(uint64_t a1)
{
  v2 = sub_21BA11EF8();

  return MEMORY[0x2821FE720](a1, v2);
}

void RUIImage.type.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 32);
  *(a1 + 32) = v6;
  sub_21BA5A7E8(v2, v3, v4, v5, v6);
}

void *RUIImage.tintColor.getter()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

double RUIImage.init(from:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_21B9B3220(a1, v9);
  sub_21BA543B0(v9, 0xA0A0A0A0A0A0A0ALL, 2570, 1, v10);
  __swift_destroy_boxed_opaque_existential_1(a1);
  if (!v2)
  {
    v6 = v10[3];
    a2[2] = v10[2];
    a2[3] = v6;
    v7 = v10[5];
    a2[4] = v10[4];
    a2[5] = v7;
    result = *v10;
    v8 = v10[1];
    *a2 = v10[0];
    a2[1] = v8;
  }

  return result;
}

void sub_21BA543B0(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, _OWORD *a5@<X8>)
{
  *(&v145 + 1) = a2;
  LODWORD(v141) = a4;
  LODWORD(v143) = a3;
  v142 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F700);
  v140 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v124 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F708);
  v10 = *(v9 - 8);
  v144 = v9;
  *&v145 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v124 - v11;
  v13 = a1[3];
  v172 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F710);
  v15 = sub_21BA5A874();
  v16 = v146;
  sub_21BA88C0C();
  if (v16)
  {
    v23 = v172;
    goto LABEL_4;
  }

  v138 = v8;
  v139 = v15;
  v146 = v14;
  LOBYTE(v161) = BYTE12(v145);
  LOBYTE(v156) = 4;
  v17 = sub_21BA11EF8();
  *&v161 = sub_21BA1C1EC(&v161, &v156, &type metadata for RUIImage.DefaultCodingKeys, &type metadata for RUIImage.DefaultCodingKeys, v17, v17);
  *(&v161 + 1) = v18;
  *&v162 = v19;
  BYTE8(v162) = v20 & 1;
  v21 = v144;
  v22 = sub_21BA887BC();
  v25 = v24;
  v136 = v22;
  v137 = v12;

  if (!v25)
  {
LABEL_10:
    LOBYTE(v161) = BYTE13(v145);
    LOBYTE(v156) = 5;
    *&v161 = sub_21BA1C1EC(&v161, &v156, &type metadata for RUIImage.DefaultCodingKeys, &type metadata for RUIImage.DefaultCodingKeys, v17, v17);
    *(&v161 + 1) = v30;
    *&v162 = v31;
    BYTE8(v162) = v32 & 1;
    v33 = sub_21BA887BC();
    v35 = v34;
    v136 = v33;

    if (v35)
    {
      v135 = v35;
      v140 = 0;
      v146 = 0;
      LODWORD(v139) = 3;
      goto LABEL_12;
    }

    v42 = *(&v145 + 1) >> 8;
    LOBYTE(v161) = BYTE9(v145);
    LOBYTE(v156) = 1;
    *&v161 = sub_21BA1C1EC(&v161, &v156, &type metadata for RUIImage.DefaultCodingKeys, &type metadata for RUIImage.DefaultCodingKeys, v17, v17);
    *(&v161 + 1) = v43;
    *&v162 = v44;
    BYTE8(v162) = v45 & 1;
    sub_21BA887BC();
    v54 = v46;

    if (v54)
    {
      v140 = *(&v145 + 1) >> 24;
      v55 = *(&v145 + 1) >> 16;

      sub_21B9B3220(v172, v152);
      LOBYTE(v156) = v42;
      LOBYTE(v150[0]) = 1;
      *&v156 = sub_21BA1C1EC(&v156, v150, &type metadata for RUIImage.DefaultCodingKeys, &type metadata for RUIImage.DefaultCodingKeys, v17, v17);
      *(&v156 + 1) = v56;
      *&v157 = v57;
      BYTE8(v157) = v58 & 1;
      LOBYTE(v150[0]) = v55;
      LOBYTE(v147[0]) = 2;
      v150[0] = sub_21BA1C1EC(v150, v147, &type metadata for RUIImage.DefaultCodingKeys, &type metadata for RUIImage.DefaultCodingKeys, v17, v17);
      v150[1] = v59;
      v150[2] = v60;
      v151 = v61 & 1;
      LOBYTE(v147[0]) = v140;
      v149 = 3;
      v147[0] = sub_21BA1C1EC(v147, &v149, &type metadata for RUIImage.DefaultCodingKeys, &type metadata for RUIImage.DefaultCodingKeys, v17, v17);
      v147[1] = v62;
      v147[2] = v63;
      v148 = v64 & 1;
      v65 = v146;
      v66 = v139;
      SymbolImage.Keys.init(symbolName:symbolColor:enclosureColor:)(&v156, v150, v147, &v161);
      v158 = v163;
      v159 = v164;
      v160[0] = *v165;
      *(v160 + 9) = *&v165[9];
      v156 = v161;
      v157 = v162;
      sub_21BA832C4(v152, &v156, v65, v66, v153);
      v135 = v153[1];
      v136 = v153[0];
      LODWORD(v139) = 1;
      v146 = v153[2];
      v140 = v153[3];
      goto LABEL_12;
    }

    __swift_project_boxed_opaque_existential_1(v172, v172[3]);
    sub_21BA5A8D8();
    sub_21BA88C0C();
    v126 = v6;
    v73 = sub_21BA8881C();
    v74 = *(v73 + 16);
    v130 = 0;
    if (v74)
    {
      v75 = 0;
      v128 = v73 + 64;
      v131 = v74;
      v125 = v74 - 1;
      v76 = MEMORY[0x277D84F90];
      v77 = v17;
      v78 = BYTE8(v145);
      v132 = v73;
      do
      {
        v129 = v76;
        v79 = (v128 + 40 * v75);
        v80 = v75;
        while (1)
        {
          v81 = *(v73 + 16);
          v136 = v80;
          if (v80 >= v81)
          {
            __break(1u);
            goto LABEL_50;
          }

          v82 = *(v79 - 4);
          v83 = *(v79 - 3);
          v84 = *(v79 - 2);
          v134 = *(v79 - 1);
          v135 = v82;
          v133 = *v79;
          LOBYTE(v161) = v78;
          LOBYTE(v152[0]) = 0;

          *&v161 = sub_21BA1C1EC(&v161, v152, &type metadata for RUIImage.DefaultCodingKeys, &type metadata for RUIImage.DefaultCodingKeys, v77, v77);
          *(&v161 + 1) = v85;
          *&v162 = v86;
          BYTE8(v162) = v87 & 1;
          v88 = sub_21BA88C5C();
          v90 = v89;

          if (v83 == v88 && v84 == v90)
          {
            break;
          }

          v91 = sub_21BA8899C();

          if (v91)
          {
            goto LABEL_35;
          }

          v80 = v136 + 1;

          v79 += 40;
          v73 = v132;
          v77 = v17;
          v78 = BYTE8(v145);
          if (v131 == v80)
          {
            v76 = v129;
            goto LABEL_43;
          }
        }

LABEL_35:
        v127 = v83;
        v92 = v129;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v156 = v92;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21BA583C4(0, *(v92 + 16) + 1, 1);
          v92 = v156;
        }

        v95 = *(v92 + 16);
        v94 = *(v92 + 24);
        if (v95 >= v94 >> 1)
        {
          sub_21BA583C4((v94 > 1), v95 + 1, 1);
          v92 = v156;
        }

        v96 = v135;
        v97 = v136;
        v75 = v136 + 1;
        *(v92 + 16) = v95 + 1;
        v98 = v92 + 40 * v95;
        *(v98 + 32) = v96;
        *(v98 + 40) = v127;
        *(v98 + 48) = v84;
        *(v98 + 56) = v134;
        *(v98 + 64) = v133;
        v77 = v17;
        v78 = BYTE8(v145);
        v76 = v92;
        v73 = v132;
      }

      while (v125 != v97);
    }

    else
    {
      v76 = MEMORY[0x277D84F90];
    }

LABEL_43:

    MEMORY[0x28223BE20](v99);
    v100 = v138;
    *(&v124 - 2) = v138;
    v101 = v130;
    v102 = sub_21BA56C88(MEMORY[0x277D84F98], sub_21BA5B6D8, (&v124 - 4), v76);
    if (v101)
    {
      (*(v145 + 8))(v137, v21);

      (*(v140 + 8))(v100, v126);
      v23 = v172;
    }

    else
    {
      v136 = v102;

      if (*(v136 + 16))
      {
        (*(v140 + 8))(v138, v126);
        v140 = 0;
        v146 = 0;
        v135 = 0;
        LODWORD(v139) = 0;
        goto LABEL_12;
      }

      v119 = sub_21BA885FC();
      v130 = swift_allocError();
      v121 = v120;
      v146 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F410) + 48);
      *v121 = sub_21BA864AC();
      v122 = v172;
      v123 = v140;
      __swift_project_boxed_opaque_existential_1(v172, v172[3]);
      sub_21BA88BDC();
      sub_21BA885EC();
      (*(*(v119 - 8) + 104))(v121, *MEMORY[0x277D84170], v119);
      swift_willThrow();
      (*(v145 + 8))(v137, v21);
      (*(v123 + 8))(v138, v126);
      v23 = v122;
    }

LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(v23);
    return;
  }

  v135 = v25;
  v26 = [objc_opt_self() defaultWorkspace];
  if (!v26)
  {
LABEL_50:
    __break(1u);
    return;
  }

  v27 = v26;
  v28 = sub_21BA87C8C();
  v29 = [v27 applicationIsInstalled_];

  if ((v29 & 1) == 0)
  {

    goto LABEL_10;
  }

  v140 = 0;
  v146 = 0;
  LODWORD(v139) = 2;
LABEL_12:
  LOBYTE(v161) = BYTE14(v145);
  LOBYTE(v156) = 6;
  *&v161 = sub_21BA1C1EC(&v161, &v156, &type metadata for RUIImage.DefaultCodingKeys, &type metadata for RUIImage.DefaultCodingKeys, v17, v17);
  *(&v161 + 1) = v36;
  *&v162 = v37;
  BYTE8(v162) = v38 & 1;
  sub_21BA887BC();
  v40 = v39;

  if (v40)
  {

    v41 = sub_21BA87C8C();
    v138 = [objc_opt_self() _remoteUI_colorWithString_];
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v138 = 0;
  }

  LOBYTE(v161) = HIBYTE(v145);
  LOBYTE(v152[0]) = 7;
  *&v161 = sub_21BA1C1EC(&v161, v152, &type metadata for RUIImage.DefaultCodingKeys, &type metadata for RUIImage.DefaultCodingKeys, v17, v17);
  *(&v161 + 1) = v47;
  *&v162 = v48;
  BYTE8(v162) = v49 & 1;
  sub_21BA5A97C();
  sub_21BA887EC();

  *(&v145 + 1) = v156;
  v170 = BYTE8(v156);
  v50 = v143;
  LOBYTE(v161) = v143;
  LOBYTE(v152[0]) = 8;
  *&v161 = sub_21BA1C1EC(&v161, v152, &type metadata for RUIImage.DefaultCodingKeys, &type metadata for RUIImage.DefaultCodingKeys, v17, v17);
  *(&v161 + 1) = v51;
  *&v162 = v52;
  BYTE8(v162) = v53 & 1;
  sub_21BA887EC();
  v67 = v50 >> 8;

  v68 = v156;
  v168 = BYTE8(v156);
  LOBYTE(v161) = v67;
  LOBYTE(v152[0]) = 9;
  *&v161 = sub_21BA1C1EC(&v161, v152, &type metadata for RUIImage.DefaultCodingKeys, &type metadata for RUIImage.DefaultCodingKeys, v17, v17);
  *(&v161 + 1) = v69;
  *&v162 = v70;
  BYTE8(v162) = v71 & 1;
  sub_21BA5A9D0();
  sub_21BA887EC();

  if (v156 == 3)
  {
    v72 = 2;
  }

  else
  {
    v72 = v156;
  }

  v143 = v68;
  LODWORD(v134) = v72;
  if (v141)
  {
    sub_21B9B3220(v172, &v161);
    sub_21BA511AC(&v161, v154);
    v130 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F738);
    v103 = swift_allocObject();
    v104 = v154[5];
    *(v103 + 80) = v154[4];
    *(v103 + 96) = v104;
    *(v103 + 112) = v155;
    v105 = v154[1];
    *(v103 + 16) = v154[0];
    *(v103 + 32) = v105;
    v106 = v154[3];
    *(v103 + 48) = v154[2];
    *(v103 + 64) = v106;
    v141 = v103;
  }

  else
  {
    v130 = 0;
    v141 = 0;
  }

  __swift_project_boxed_opaque_existential_1(v172, v172[3]);
  Decoder.ruiDecodingContext.getter();
  (*(v145 + 8))(v137, v21);
  v107 = v161;
  *&v145 = v161;

  v108 = v136;
  *&v156 = v136;
  *(&v156 + 1) = v135;
  v109 = v140;
  *&v157 = v146;
  *(&v157 + 1) = v140;
  v110 = v139;
  LOBYTE(v158) = v139;
  *(&v158 + 1) = v171[0];
  DWORD1(v158) = *(v171 + 3);
  *(&v158 + 1) = v138;
  *&v159 = v107;
  *(&v159 + 1) = *(&v145 + 1);
  LODWORD(v144) = v170;
  LOBYTE(v160[0]) = v170;
  *(v160 + 1) = *v169;
  DWORD1(v160[0]) = *&v169[3];
  v111 = v143;
  *(&v160[0] + 1) = v143;
  v112 = v168;
  LOBYTE(v160[1]) = v168;
  v113 = v134;
  BYTE1(v160[1]) = v134;
  *(&v160[1] + 2) = v166;
  WORD3(v160[1]) = v167;
  v115 = v141;
  v114 = v142;
  *(&v160[1] + 1) = v141;
  v116 = v159;
  v142[2] = v158;
  v114[3] = v116;
  v117 = v157;
  *v114 = v156;
  v114[1] = v117;
  v118 = v160[1];
  v114[4] = v160[0];
  v114[5] = v118;
  sub_21B9E52FC(&v156, &v161);
  __swift_destroy_boxed_opaque_existential_1(v172);
  *&v161 = v108;
  *(&v161 + 1) = v135;
  *&v162 = v146;
  *(&v162 + 1) = v109;
  LOBYTE(v163) = v110;
  *(&v163 + 1) = v171[0];
  DWORD1(v163) = *(v171 + 3);
  *(&v163 + 1) = v138;
  v164 = v145;
  v165[0] = v144;
  *&v165[1] = *v169;
  *&v165[4] = *&v169[3];
  *&v165[8] = v111;
  v165[16] = v112;
  v165[17] = v113;
  *&v165[18] = v166;
  *&v165[22] = v167;
  *&v165[24] = v115;
  sub_21B9EA8A0(&v161);
}

void RUIImage.init<A>(from:keys:decodeBadge:)(void *a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v153 = a2;
  v154 = a5;
  v144 = a3;
  v145 = a6;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F700);
  v143 = *(v146 - 1);
  MEMORY[0x28223BE20](v146);
  v9 = &v135 - v8;
  v179 = a4;
  v10 = sub_21BA883CC();
  v11 = *(v10 - 8);
  v149 = v10;
  v150 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v135 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F708);
  v147 = *(v14 - 8);
  v148 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v135 - v15;
  v17 = a1[3];
  v152 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F710);
  v19 = sub_21BA5A874();
  v20 = v151;
  sub_21BA88C0C();
  if (v20)
  {
    v21 = type metadata accessor for RUIImage.Keys();
    v22 = 0;
    v23 = 0;
    v24 = v152;
    v25 = v153;
    goto LABEL_29;
  }

  v137 = v19;
  v138 = v18;
  v136 = v9;
  v26 = v179;
  v27 = v154;
  v141 = type metadata accessor for RUIImage.Keys();
  v28 = v141[12];
  v151 = 0;
  v29 = v150 + 16;
  v30 = v153;
  v139 = *(v150 + 16);
  v139(v13, v153 + v28, v149);
  LOBYTE(v168) = 4;
  v31 = sub_21BA11EF8();
  *&v168 = sub_21BA1C1EC(v13, &v168, &type metadata for RUIImage.DefaultCodingKeys, v26, v31, v27);
  *(&v168 + 1) = v32;
  *&v169 = v33;
  BYTE8(v169) = v34 & 1;
  v19 = v148;
  v35 = v151;
  v36 = sub_21BA887BC();
  v38 = v30;
  v151 = v35;
  if (v35)
  {

    (*(v147 + 8))(v16, v19);
    v22 = 0;
    v23 = 0;
    v24 = v152;
    v21 = v141;
    v25 = v38;
    goto LABEL_29;
  }

  v140 = v36;
  v135 = v13;
  v150 = v29;
  v142 = v37;

  v25 = v30;
  if (v142)
  {
    v39 = [objc_opt_self() defaultWorkspace];
    if (!v39)
    {
      __break(1u);
      return;
    }

    v40 = v39;
    v41 = sub_21BA87C8C();
    v42 = [v40 applicationIsInstalled_];

    if (v42)
    {
      v138 = v16;
      v143 = 0;
      v146 = 0;
      LODWORD(v137) = 2;
      v24 = v152;
      v43 = v25;
      v44 = v141;
      v45 = v154;
LABEL_9:
      v46 = v179;
      v47 = v31;
      goto LABEL_17;
    }
  }

  v48 = v135;
  v49 = v139;
  v139(v135, v25 + v141[13], v149);
  LOBYTE(v168) = 5;
  v47 = v31;
  *&v168 = sub_21BA1C1EC(v48, &v168, &type metadata for RUIImage.DefaultCodingKeys, v179, v31, v154);
  *(&v168 + 1) = v50;
  *&v169 = v51;
  BYTE8(v169) = v52 & 1;
  v53 = v151;
  v54 = sub_21BA887BC();
  v151 = v53;
  if (v53)
  {
    goto LABEL_12;
  }

  v140 = v54;
  v142 = v55;

  if (v142)
  {
    v138 = v16;
    v143 = 0;
    v146 = 0;
    LODWORD(v137) = 3;
    v24 = v152;
  }

  else
  {
    v66 = v141[9];
    v67 = v135;
    v49(v135, v25 + v66, v149);
    LOBYTE(v168) = 1;
    *&v168 = sub_21BA1C1EC(v67, &v168, &type metadata for RUIImage.DefaultCodingKeys, v179, v31, v154);
    *(&v168 + 1) = v68;
    *&v169 = v69;
    BYTE8(v169) = v70 & 1;
    v71 = v151;
    sub_21BA887BC();
    v151 = v71;
    if (v71)
    {
LABEL_12:

      (*(v147 + 8))(v16, v19);
      v22 = 0;
      v23 = 0;
      v24 = v152;
      goto LABEL_13;
    }

    v73 = v72;

    if (!v73)
    {
      v138 = v16;
      v24 = v152;
      v16 = v152[4];
      __swift_project_boxed_opaque_existential_1(v152, v152[3]);
      sub_21BA5A8D8();
      v106 = v136;
      v107 = v151;
      sub_21BA88C0C();
      if (!v107)
      {
        v112 = sub_21BA8881C();
        MEMORY[0x28223BE20](v112);
        v113 = v154;
        *(&v135 - 4) = v179;
        *(&v135 - 3) = v113;
        *(&v135 - 2) = v25;
        v115 = sub_21BA56614(sub_21BA5A92C, (&v135 - 6), v114);
        MEMORY[0x28223BE20](v115);
        *(&v135 - 2) = v106;
        v116 = sub_21BA56C88(MEMORY[0x277D84F98], sub_21BA5A960, (&v135 - 4), v115);
        v151 = 0;
        v117 = v146;
        v140 = v116;

        if (!*(v140 + 16))
        {

          v132 = sub_21BA885FC();
          v151 = swift_allocError();
          v134 = v133;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F410);
          *v134 = sub_21BA864AC();
          v16 = v24[3];
          v19 = v24[4];
          __swift_project_boxed_opaque_existential_1(v24, v16);
          sub_21BA88BDC();
          sub_21BA885EC();
          (*(*(v132 - 8) + 104))(v134, *MEMORY[0x277D84170], v132);
          swift_willThrow();
          (*(v147 + 8))(v138, v148);
          (v143)[1](v136, v146);
          v21 = v141;
          v22 = 0;
          v23 = 0;
          goto LABEL_29;
        }

        (v143)[1](v106, v117);
        LODWORD(v137) = 0;
        v142 = 0;
        v143 = 0;
        v146 = 0;
        v44 = v141;
        v43 = v153;
        v45 = v154;
        goto LABEL_9;
      }

      (*(v147 + 8))(v138, v19);
      v22 = 0;
      v23 = 0;
LABEL_13:
      v21 = v141;
      goto LABEL_29;
    }

    v24 = v152;
    sub_21B9B3220(v152, v159);
    v74 = v135;
    v49(v135, v25 + v66, v149);
    LOBYTE(v163) = 1;
    v47 = v31;
    v75 = v31;
    v76 = v154;
    *&v163 = sub_21BA1C1EC(v74, &v163, &type metadata for RUIImage.DefaultCodingKeys, v179, v75, v154);
    *(&v163 + 1) = v77;
    *&v164 = v78;
    BYTE8(v164) = v79 & 1;
    v49(v74, v25 + v141[10], v149);
    LOBYTE(v157[0]) = 2;
    v157[0] = sub_21BA1C1EC(v74, v157, &type metadata for RUIImage.DefaultCodingKeys, v179, v47, v76);
    v157[1] = v80;
    v157[2] = v81;
    v158 = v82 & 1;
    v49(v74, v25 + v141[11], v149);
    LOBYTE(v155[0]) = 3;
    v155[0] = sub_21BA1C1EC(v74, v155, &type metadata for RUIImage.DefaultCodingKeys, v179, v47, v76);
    v155[1] = v83;
    v155[2] = v84;
    v156 = v85 & 1;
    v87 = v137;
    v86 = v138;
    SymbolImage.Keys.init(symbolName:symbolColor:enclosureColor:)(&v163, v157, v155, &v168);
    v165 = v170;
    v166 = v171;
    v167[0] = *v172;
    *(v167 + 9) = *&v172[9];
    v163 = v168;
    v164 = v169;
    v88 = v151;
    sub_21BA832C4(v159, &v163, v86, v87, v160);
    v151 = v88;
    if (v88)
    {
      (*(v147 + 8))(v16, v19);
      v22 = 0;
      v23 = 0;
      goto LABEL_13;
    }

    v138 = v16;
    v140 = v160[0];
    LODWORD(v137) = 1;
    v146 = v160[2];
    v142 = v160[1];
    v143 = v160[3];
  }

  v44 = v141;
  v45 = v154;
  v46 = v179;
  v43 = v25;
LABEL_17:
  v56 = v44;
  v57 = v43 + v44[14];
  v16 = v135;
  v139(v135, v57, v149);
  LOBYTE(v168) = 6;
  *&v168 = sub_21BA1C1EC(v16, &v168, &type metadata for RUIImage.DefaultCodingKeys, v46, v47, v45);
  *(&v168 + 1) = v58;
  *&v169 = v59;
  BYTE8(v169) = v60 & 1;
  v61 = v138;
  v62 = v151;
  sub_21BA887BC();
  v151 = v62;
  if (v62)
  {

    (*(v147 + 8))(v61, v19);
    v23 = 0;
    v22 = 1;
    v21 = v56;
    v25 = v153;
    LOBYTE(v19) = v137;
  }

  else
  {
    v64 = v63;

    if (v64)
    {

      v65 = sub_21BA87C8C();
      v16 = [objc_opt_self() _remoteUI_colorWithString_];
      swift_bridgeObjectRelease_n();
    }

    else
    {
      v16 = 0;
    }

    v89 = v147;
    v19 = v153;
    v90 = v135;
    v139(v135, v153 + v141[15], v149);
    LOBYTE(v168) = 7;
    *&v168 = sub_21BA1C1EC(v90, &v168, &type metadata for RUIImage.DefaultCodingKeys, v179, v47, v154);
    *(&v168 + 1) = v91;
    *&v169 = v92;
    BYTE8(v169) = v93 & 1;
    v152 = sub_21BA5A97C();
    v94 = v138;
    v95 = v151;
    sub_21BA887EC();
    if (!v95)
    {

      v96 = v19;
      v97 = v163;
      v177 = BYTE8(v163);
      v98 = v135;
      v139(v135, v96 + v141[16], v149);
      LOBYTE(v168) = 8;
      *&v168 = sub_21BA1C1EC(v98, &v168, &type metadata for RUIImage.DefaultCodingKeys, v179, v47, v154);
      *(&v168 + 1) = v99;
      *&v169 = v100;
      BYTE8(v169) = v101 & 1;
      sub_21BA887EC();
      v136 = v97;

      v152 = v163;
      v175 = BYTE8(v163);
      v102 = v135;
      v139(v135, v96 + v141[17], v149);
      LOBYTE(v168) = 9;
      *&v168 = sub_21BA1C1EC(v102, &v168, &type metadata for RUIImage.DefaultCodingKeys, v179, v47, v154);
      *(&v168 + 1) = v103;
      *&v169 = v104;
      BYTE8(v169) = v105 & 1;
      sub_21BA5A9D0();
      sub_21BA887EC();
      v108 = v148;
      v151 = 0;

      if (v163 == 3)
      {
        v109 = 2;
      }

      else
      {
        v109 = v163;
      }

      LODWORD(v179) = v109;
      if (v144)
      {
        sub_21B9B3220(v24, &v168);
        v110 = v151;
        sub_21BA511AC(&v168, v161);
        v111 = v146;
        if (v110)
        {

          v154 = 0;
          v151 = 0;
        }

        else
        {
          v151 = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F738);
          v118 = swift_allocObject();
          v119 = v161[5];
          *(v118 + 80) = v161[4];
          *(v118 + 96) = v119;
          *(v118 + 112) = v162;
          v120 = v161[1];
          *(v118 + 16) = v161[0];
          *(v118 + 32) = v120;
          v121 = v161[3];
          *(v118 + 48) = v161[2];
          *(v118 + 64) = v121;
          v154 = v118;
        }
      }

      else
      {
        v154 = 0;
        v111 = v146;
      }

      v146 = v111;
      __swift_project_boxed_opaque_existential_1(v24, v24[3]);
      Decoder.ruiDecodingContext.getter();
      (*(v147 + 8))(v138, v108);
      v122 = v168;
      v150 = v168;

      v123 = v140;
      v124 = v142;
      *&v163 = v140;
      *(&v163 + 1) = v142;
      *&v164 = v111;
      v125 = v143;
      *(&v164 + 1) = v143;
      v126 = v137;
      LOBYTE(v165) = v137;
      *(&v165 + 1) = v178[0];
      DWORD1(v165) = *(v178 + 3);
      *(&v165 + 1) = v16;
      *&v166 = v122;
      v127 = v136;
      *(&v166 + 1) = v136;
      LOBYTE(v167[0]) = v177;
      *(v167 + 1) = *v176;
      DWORD1(v167[0]) = *&v176[3];
      *(&v167[0] + 1) = v152;
      LOBYTE(v167[1]) = v175;
      BYTE1(v167[1]) = v179;
      *(&v167[1] + 2) = v173;
      WORD3(v167[1]) = v174;
      *(&v167[1] + 1) = v154;
      v128 = v166;
      v129 = v145;
      v145[2] = v165;
      v129[3] = v128;
      v130 = v164;
      *v129 = v163;
      v129[1] = v130;
      v131 = v167[1];
      v129[4] = v167[0];
      v129[5] = v131;
      sub_21B9E52FC(&v163, &v168);
      (*(*(v141 - 1) + 8))(v153);
      __swift_destroy_boxed_opaque_existential_1(v24);
      *&v168 = v123;
      *(&v168 + 1) = v124;
      *&v169 = v146;
      *(&v169 + 1) = v125;
      LOBYTE(v170) = v126;
      *(&v170 + 1) = v178[0];
      DWORD1(v170) = *(v178 + 3);
      *(&v170 + 1) = v16;
      *&v171 = v150;
      *(&v171 + 1) = v127;
      v172[0] = v177;
      *&v172[1] = *v176;
      *&v172[4] = *&v176[3];
      *&v172[8] = v152;
      v172[16] = v175;
      v172[17] = v179;
      *&v172[18] = v173;
      *&v172[22] = v174;
      *&v172[24] = v154;
      sub_21B9EA8A0(&v168);
      return;
    }

    (*(v89 + 8))(v94, v148);
    v22 = 1;
    v23 = 1;
    v21 = v141;
    v25 = v19;
    LOBYTE(v19) = v137;
  }

LABEL_29:
  (*(*(v21 - 8) + 8))(v25);
  __swift_destroy_boxed_opaque_existential_1(v24);
  if (v22)
  {
    sub_21B9CA1E8(v140, v142, v146, v143, v19);
  }

  if (v23)
  {
  }
}

uint64_t sub_21BA56484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21BA883CC();
  MEMORY[0x28223BE20](v8);
  v10 = v23 - v9;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  (*(v13 + 16))(v23 - v9, a2);
  LOBYTE(v23[0]) = 0;
  v14 = sub_21BA11EF8();
  v23[0] = sub_21BA1C1EC(v10, v23, &type metadata for RUIImage.DefaultCodingKeys, a3, v14, a4);
  v23[1] = v15;
  v23[2] = v16;
  v24 = v17 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F710);
  sub_21BA5A874();
  v18 = sub_21BA88C5C();
  v20 = v19;

  if (v11 == v18 && v12 == v20)
  {
    v21 = 1;
  }

  else
  {
    v21 = sub_21BA8899C();
  }

  return v21 & 1;
}

uint64_t sub_21BA56614(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = result;
  v18 = *(a3 + 16);
  if (v18)
  {
    v5 = 0;
    v6 = (a3 + 64);
    v7 = MEMORY[0x277D84F90];
    v17 = a3;
    while (v5 < *(a3 + 16))
    {
      v8 = *(v6 - 4);
      v9 = *(v6 - 2);
      v10 = *(v6 - 1);
      v11 = *v6;
      v20 = *(v6 - 3);
      v21[0] = v8;
      v21[1] = v20;
      v21[2] = v9;
      v21[3] = v10;
      v22 = v11;

      v12 = v4;
      v13 = v19(v21);
      if (v4)
      {

        goto LABEL_16;
      }

      if (v13)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v23 = v7;
        if ((result & 1) == 0)
        {
          result = sub_21BA583C4(0, *(v7 + 16) + 1, 1);
          v7 = v23;
        }

        v15 = *(v7 + 16);
        v14 = *(v7 + 24);
        if (v15 >= v14 >> 1)
        {
          result = sub_21BA583C4((v14 > 1), v15 + 1, 1);
          v7 = v23;
        }

        *(v7 + 16) = v15 + 1;
        v16 = v7 + 40 * v15;
        *(v16 + 32) = v8;
        *(v16 + 40) = v20;
        *(v16 + 48) = v9;
        *(v16 + 56) = v10;
        *(v16 + 64) = v11;
        v4 = v12;
      }

      else
      {
      }

      ++v5;
      v6 += 40;
      a3 = v17;
      if (v18 == v5)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
LABEL_16:

    return v7;
  }

  return result;
}

uint64_t sub_21BA567B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DBA0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v20 - v8;
  v10 = sub_21BA864AC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 16);
  v15 = *(a2 + 24);
  v16 = *(a2 + 32);
  v20[0] = *a2;
  v20[1] = v20[0];
  v21 = v14;
  v22 = v15;
  v23 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F700);
  result = sub_21BA887BC();
  if (!v2 && v18)
  {
    sub_21BA8648C();

    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      return sub_21B9ABAAC(v9, &qword_27CD9DBA0);
    }

    else
    {
      (*(v11 + 32))(v13, v9, v10);
      v19 = *&v20[0];
      (*(v11 + 16))(v7, v13, v10);
      (*(v11 + 56))(v7, 0, 1, v10);
      sub_21BA56A30(v7, v19);
      return (*(v11 + 8))(v13, v10);
    }
  }

  return result;
}

uint64_t sub_21BA56A30(uint64_t a1, double a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DBA0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_21BA864AC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_21B9ABAAC(a1, &qword_27CD9DBA0);
    v13 = sub_21BA586F0(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_21BA58EDC();
        v17 = v21;
      }

      (*(v10 + 32))(v8, *(v17 + 56) + *(v10 + 72) * v15, v9);
      sub_21BA58AA0(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_21B9ABAAC(v8, &qword_27CD9DBA0);
  }

  else
  {
    (*(v10 + 32))(v12, a1, v9);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_21BA58C64(v12, v18, a2);
    *v3 = v21;
  }

  return result;
}

uint64_t sub_21BA56C88(uint64_t result, void (*a2)(uint64_t *, __int128 *), uint64_t a3, uint64_t a4)
{
  v15 = result;
  v5 = *(a4 + 16);
  if (v5)
  {
    for (i = (a4 + 64); ; i += 40)
    {
      v8 = *i;
      v10 = *(i - 2);
      v9 = *(i - 1);
      v11 = *(i - 2);
      v12 = v10;
      v13 = v9;
      v14 = v8;

      a2(&v15, &v11);
      if (v4)
      {
        break;
      }

      if (!--v5)
      {
        return v15;
      }
    }
  }

  return result;
}

void RUIImage.preloadedImage.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9CE30);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = (&v67 - v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9CE38);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v67 - v6);
  v9 = *v0;
  v8 = *(v0 + 8);
  v11 = *(v0 + 16);
  v10 = *(v0 + 24);
  v12 = *(v0 + 32);
  v13 = *(v0 + 56);
  v14 = *(v0 + 64);
  v15 = *(v0 + 72);
  v16 = *(v0 + 80);
  if (v12 > 1)
  {
    v26 = *(v0 + 56);
    v68 = *(v0 + 72);
    v27 = v10;
    if (v12 == 2)
    {
      v28 = objc_allocWithZone(MEMORY[0x277D1B1B0]);

      v29 = sub_21BA87C8C();
      sub_21B9CA1E8(v9, v8, v11, v27, 2u);
      v30 = [v28 initWithBundleIdentifier_];

      if ((v14 & 1) == 0 && (v16 & 1) == 0)
      {
LABEL_15:
        v45 = *&v68;
        v46 = [objc_opt_self() mainScreen];
        [v46 scale];
        v48 = v47;

        v49 = [objc_allocWithZone(MEMORY[0x277D1B1D0]) initWithSize:v26 scale:{v45, v48}];
LABEL_17:
        v50 = v49;
        sub_21BA3BDA0(v49);

        return;
      }
    }

    else
    {
      v43 = objc_allocWithZone(MEMORY[0x277D1B1B0]);

      v44 = sub_21BA87C8C();
      sub_21B9CA1E8(v9, v8, v11, v27, 3u);
      v30 = [v43 initWithType_];

      if ((v14 & 1) == 0 && (v16 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v49 = [objc_allocWithZone(MEMORY[0x277D1B1D0]) init];
    goto LABEL_17;
  }

  v17 = *(v0 + 40);
  v18 = *(v0 + 81);
  if (*(v0 + 32))
  {
    v31 = *(v0 + 81);
    v68 = *(v0 + 40);
    v69 = v9;
    v32 = v13;
    v33 = v15;
    v70 = v8;
    v71 = v11;
    v72 = v10;
    v34 = v10;
    v35 = v10;

    v36 = v11;
    if (sub_21BA8397C())
    {
      v69 = v9;
      v70 = v8;
      v71 = v11;
      v72 = v34;
      v37 = v34;
      v38 = sub_21BA83AF8();
      if (v14 & 1) != 0 || (v16)
      {
        v42 = [objc_allocWithZone(MEMORY[0x277D1B1D0]) init];
      }

      else
      {
        v39 = [objc_opt_self() mainScreen];
        [v39 scale];
        v41 = v40;

        v42 = [objc_allocWithZone(MEMORY[0x277D1B1D0]) initWithSize:v32 scale:{v33, v41}];
      }

      v58 = v42;
      sub_21BA3BDA0(v42);

      sub_21B9CA1E8(v9, v8, v11, v37, 1u);
      return;
    }

    v69 = v9;
    v70 = v8;
    v71 = v11;
    v72 = v34;
    v53 = v34;
    v54 = sub_21BA83A0C();
    if (v54)
    {
      v55 = v54;
      if (v31)
      {
        if (v31 == 1)
        {
          if (*&v68 == 0.0)
          {
            v56 = [objc_opt_self() ruiTintColor];
            v57 = 0;
          }

          else
          {
            v56 = v68;
            v57 = v68;
          }

LABEL_41:
          v65 = objc_opt_self();
          v66 = v57;
          v64 = [v65 configurationWithHierarchicalColor_];

          goto LABEL_42;
        }

LABEL_37:
        v63 = [objc_opt_self() unspecifiedConfiguration];
        goto LABEL_38;
      }
    }

    else
    {
      v62 = sub_21BA87C8C();
      v55 = [objc_opt_self() _systemImageNamed_];

      if (!v55)
      {
        __break(1u);
        return;
      }

      v57 = v68;
      if (v31)
      {
        if (v31 == 1)
        {
          if (*&v68 == 0.0)
          {
            v56 = [objc_opt_self() ruiTintColor];
          }

          else
          {
            v56 = v68;
          }

          goto LABEL_41;
        }

        goto LABEL_37;
      }
    }

    v63 = [objc_opt_self() configurationPreferringMonochrome];
LABEL_38:
    v64 = v63;
LABEL_42:
    sub_21B9E0650(v64);

    sub_21B9CA1E8(v9, v8, v11, v53, 1u);
    return;
  }

  v19 = *(v0 + 48);
  v69 = *v0;
  v70 = v8;
  v20 = v19;
  v71 = v11;
  v72 = v10;
  v73 = 0;
  *v74 = *(v0 + 33);
  *&v74[3] = *(v0 + 36);
  v75 = v17;
  v76 = v19;
  v77 = v13;
  v78 = v14;
  *v79 = *(v0 + 65);
  *&v79[3] = *(v0 + 68);
  v80 = v15;
  v81 = v16;
  v82 = v18;
  *v83 = *(v0 + 82);
  *&v83[6] = *(v0 + 88);
  v21 = [objc_opt_self() mainScreen];
  [v21 scale];
  v23 = v22;

  RUIImage.resource(forScale:)(v3, v23);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    v24 = &qword_27CD9CE30;
    v25 = v3;
LABEL_20:
    sub_21B9ABAAC(v25, v24);
    return;
  }

  sub_21B9AB6D4(v3, v7, &qword_27CD9CE38);
  v51 = *v7;
  (*(*v20 + 128))(&v69, MEMORY[0x277CC9318], v7 + *(v4 + 48), MEMORY[0x277CC9318]);
  v52 = v70;
  if (v70 >> 60 == 15)
  {
    v24 = &qword_27CD9CE38;
    v25 = v7;
    goto LABEL_20;
  }

  v59 = v69;
  v60 = objc_allocWithZone(MEMORY[0x277D755B8]);
  v61 = sub_21BA864CC();
  [v60 initWithData:v61 scale:v51];

  sub_21B9B91AC(v59, v52);
  sub_21B9ABAAC(v7, &qword_27CD9CE38);
}

uint64_t RUIImage.resourceForMaxScreenScale()@<X0>(void *a1@<X8>)
{
  v2 = [objc_opt_self() mainScreen];
  [v2 scale];
  v4 = v3;

  return RUIImage.resource(forScale:)(a1, v4);
}

uint64_t RUIImage.resource(forScale:)@<X0>(void *a1@<X8>, double a2@<D0>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F740);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v50 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v50 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = (&v50 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F748);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  MEMORY[0x28223BE20](v20);
  if (v2[32])
  {
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9CE38);
    v25 = *(*(v24 - 8) + 56);

    return v25(a1, 1, 1, v24);
  }

  v57 = v15;
  v58 = &v50 - v21;
  v55 = v12;
  v56 = v22;
  v27 = *v2;
  v28 = *(*v2 + 16);
  v59 = v23;
  if (v28)
  {
    v51 = v5;
    v52 = v9;
    v53 = a1;
    v29 = sub_21BA582BC(v28, 0);
    v54 = sub_21BA5A4E0(&v60, v29 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v28, v27);

    sub_21B9AFF68();
    if (v54 != v28)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v9 = v52;
    a1 = v53;
    v5 = v51;
  }

  else
  {
    v29 = MEMORY[0x277D84F90];
  }

  v60 = v29;
  sub_21BA59144(&v60);
  v28 = v60;
  v30 = v60[2];
  if (v30)
  {
    v31 = 0;
    while (v31 < v28[2])
    {
      sub_21BA5AA24(v28 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v31, v17);
      if (*v17 >= a2)
      {

        v35 = v59;
        sub_21B9AB6D4(v17, v59, &qword_27CD9F740);
        v36 = *(v6 + 56);
        v36(v35, 0, 1, v5);
        v34 = v58;
        sub_21B9AB6D4(v35, v58, &qword_27CD9F740);
        v36(v34, 0, 1, v5);
        v37 = v56;
        goto LABEL_21;
      }

      ++v31;
      sub_21B9ABAAC(v17, &qword_27CD9F740);
      if (v30 == v31)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_14:
  v32 = *(v6 + 56);
  v33 = 1;
  v32(v59, 1, 1, v5);
  if (v30)
  {
    v34 = v58;
    if (v30 > v28[2])
    {
LABEL_26:
      __break(1u);

      __break(1u);
      return result;
    }

    sub_21BA5AA24(v28 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * (v30 - 1), v58);
    v33 = 0;
  }

  else
  {
    v34 = v58;
  }

  v32(v34, v33, 1, v5);
  v38 = v59;
  v39 = (*(v6 + 48))(v59, 1, v5);
  v37 = v56;
  if (v39 != 1)
  {
    sub_21B9ABAAC(v38, &qword_27CD9F748);
  }

LABEL_21:
  sub_21B9AB6D4(v34, v37, &qword_27CD9F748);
  v40 = (*(v6 + 48))(v37, 1, v5);
  v41 = v57;
  if (v40 == 1)
  {
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9CE38);
    return (*(*(v42 - 8) + 56))(a1, 1, 1, v42);
  }

  else
  {
    sub_21B9AB6D4(v37, v57, &qword_27CD9F740);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9CE38);
    v44 = *(v43 + 48);
    v45 = v55;
    sub_21BA5AA24(v41, v55);
    v46 = *(v5 + 48);
    *a1 = *v45;
    sub_21B9AB6D4(v41, v9, &qword_27CD9F740);
    v47 = *(v5 + 48);
    v48 = sub_21BA864AC();
    v49 = *(v48 - 8);
    (*(v49 + 32))(a1 + v44, &v9[v47], v48);
    (*(v49 + 8))(&v45[v46], v48);
    return (*(*(v43 - 8) + 56))(a1, 0, 1, v43);
  }
}

uint64_t sub_21BA57C4C()
{
  v1 = *v0;
  if (*v0 == 1)
  {
    v2 = v0[1];
  }

  else
  {
    v6 = *(v0 + 1);
    v5[5] = v1;
    sub_21BA5AA94(v0, v5);
    v3 = sub_21BA8889C();
    MEMORY[0x21CEFD130](v3);

    MEMORY[0x21CEFD130](120, 0xE100000000000000);
    return v6;
  }

  return v2;
}

double sub_21BA57D24@<D0>(uint64_t a1@<X8>)
{
  sub_21BA5AACC(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

double sub_21BA57D74@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_21BA57D84(uint64_t a1)
{
  v2 = sub_21BA5A8D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21BA57DC0(uint64_t a1)
{
  v2 = sub_21BA5A8D8();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_21BA57DFC@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  if (v2)
  {
    v3 = *(v2 + 16);
    v4 = *(v2 + 32);
    v5 = *(v2 + 48);
    v6 = *(v2 + 64);
    v7 = *(v2 + 96);
    v16[4] = *(v2 + 80);
    v16[5] = v7;
    v17 = *(v2 + 112);
    v8 = v17;
    v16[2] = v5;
    v16[3] = v6;
    v16[0] = v3;
    v16[1] = v4;
    v9 = *(v2 + 32);
    *a1 = *(v2 + 16);
    *(a1 + 16) = v9;
    v10 = *(v2 + 48);
    v11 = *(v2 + 64);
    v12 = *(v2 + 80);
    v13 = *(v2 + 96);
    *(a1 + 96) = v8;
    *(a1 + 64) = v12;
    *(a1 + 80) = v13;
    *(a1 + 32) = v10;
    *(a1 + 48) = v11;
    sub_21BA5AD6C(v16, v15);
  }

  else
  {
    *(a1 + 96) = 0;
    result = 0.0;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_21BA57E84(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6863726172656968;
  v4 = 0xEC0000006C616369;
  if (v2 != 1)
  {
    v3 = 0x6669636570736E75;
    v4 = 0xEB00000000646569;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6F7268636F6E6F6DLL;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEA0000000000656DLL;
  }

  v7 = 0x6863726172656968;
  v8 = 0xEC0000006C616369;
  if (*a2 != 1)
  {
    v7 = 0x6669636570736E75;
    v8 = 0xEB00000000646569;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6F7268636F6E6F6DLL;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEA0000000000656DLL;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21BA8899C();
  }

  return v11 & 1;
}

uint64_t sub_21BA57FA8()
{
  sub_21BA88BAC();
  sub_21BA87D8C();

  return sub_21BA88BCC();
}

uint64_t sub_21BA58060()
{
  sub_21BA87D8C();
}

uint64_t sub_21BA58104()
{
  sub_21BA88BAC();
  sub_21BA87D8C();

  return sub_21BA88BCC();
}

uint64_t sub_21BA581B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21BA5ADC8();
  *a1 = result;
  return result;
}

void sub_21BA581E8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA0000000000656DLL;
  v4 = 0xEC0000006C616369;
  v5 = 0x6863726172656968;
  if (v2 != 1)
  {
    v5 = 0x6669636570736E75;
    v4 = 0xEB00000000646569;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6F7268636F6E6F6DLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

size_t sub_21BA582BC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F788);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F740) - 8);
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

char *sub_21BA583C4(char *a1, int64_t a2, char a3)
{
  result = sub_21BA583E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21BA583E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F798);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_21BA58500(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F788);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F740) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F740) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_21BA586F0(double a1)
{
  v2 = sub_21BA88B9C();

  return sub_21BA58E74(v2, a1);
}

uint64_t sub_21BA5873C(uint64_t a1, int a2)
{
  v3 = v2;
  v40 = sub_21BA864AC();
  v5 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v39 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F790);
  v38 = a2;
  result = sub_21BA8871C();
  v9 = result;
  if (*(v7 + 16))
  {
    v36 = v3;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v37 = (v5 + 16);
    v16 = (v5 + 32);
    v17 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = v5;
      v25 = *(v5 + 72);
      v26 = *(v7 + 56) + v25 * v22;
      if (v38)
      {
        (*v16)(v39, v26, v40);
      }

      else
      {
        (*v37)(v39, v26, v40);
      }

      result = sub_21BA88B9C();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v9 + 48) + 8 * v18) = v23;
      result = (*v16)(*(v9 + 56) + v25 * v18, v39, v40);
      ++*(v9 + 16);
      v5 = v24;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v7 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero((v7 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

unint64_t sub_21BA58AA0(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21BA884AC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_21BA88B9C();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 8 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      v16 = *(*(sub_21BA864AC() - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_21BA58C64(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_21BA586F0(a3);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a2 & 1) == 0)
  {
    if (v15 >= v13 && (a2 & 1) == 0)
    {
      sub_21BA58EDC();
      goto LABEL_7;
    }

    sub_21BA5873C(v13, a2 & 1);
    v24 = sub_21BA586F0(a3);
    if ((v14 & 1) == (v25 & 1))
    {
      v10 = v24;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_21BA88B0C();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_21BA864AC();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_21BA58DC8(v10, a1, v16, a3);
}

uint64_t sub_21BA58DC8(unint64_t a1, uint64_t a2, void *a3, double a4)
{
  a3[(a1 >> 6) + 8] |= 1 << a1;
  *(a3[6] + 8 * a1) = a4;
  v7 = a3[7];
  v8 = sub_21BA864AC();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a2, v8);
  v10 = a3[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v12;
  }

  return result;
}

unint64_t sub_21BA58E74(uint64_t a1, double a2)
{
  v3 = -1 << *(v2 + 32);
  result = a1 & ~v3;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v5 = ~v3;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a2)
      {
        break;
      }

      result = (result + 1) & v5;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void *sub_21BA58EDC()
{
  v1 = v0;
  v30 = sub_21BA864AC();
  v32 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v29 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F790);
  v3 = *v0;
  v4 = sub_21BA8870C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v26 = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v31 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v27 = v32 + 32;
    for (i = v32 + 16; v13; result = (*(v20 + 32))(*(v24 + 56) + v21, v22, v23))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = *(*(v3 + 48) + 8 * v18);
      v20 = v32;
      v21 = *(v32 + 72) * v18;
      v22 = v29;
      v23 = v30;
      (*(v32 + 16))(v29, *(v3 + 56) + v21, v30);
      v24 = v31;
      *(*(v31 + 48) + 8 * v18) = v19;
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

        v1 = v26;
        v5 = v31;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

uint64_t sub_21BA59144(void **a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F740) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_21BA5A788(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_21BA591F8(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_21BA591F8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_21BA8888C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F740);
        v6 = sub_21BA87F4C();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F740) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_21BA5957C(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_21BA5933C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_21BA5933C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F740);
  v8 = (MEMORY[0x28223BE20])();
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = (&v28 - v12);
  result = MEMORY[0x28223BE20](v11);
  v17 = (&v28 - v16);
  v30 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v35 = v18;
    v29 = v19;
    v23 = v18 + v19 * a3;
LABEL_5:
    v33 = v20;
    v34 = a3;
    v31 = v23;
    v32 = v22;
    v24 = v22;
    while (1)
    {
      sub_21BA5AA24(v23, v17);
      sub_21BA5AA24(v20, v13);
      v25 = *v17;
      v26 = *v13;
      sub_21B9ABAAC(v13, &qword_27CD9F740);
      result = sub_21B9ABAAC(v17, &qword_27CD9F740);
      if (v25 >= v26)
      {
LABEL_4:
        a3 = v34 + 1;
        v20 = v33 + v29;
        v22 = v32 - 1;
        v23 = v31 + v29;
        if (v34 + 1 == v30)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v35)
      {
        break;
      }

      sub_21B9AB6D4(v23, v10, &qword_27CD9F740);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_21B9AB6D4(v10, v20, &qword_27CD9F740);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v24++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21BA5957C(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v5 = v4;
  v107 = a1;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9F740);
  v115 = *(v120 - 8);
  v8 = MEMORY[0x28223BE20](v120);
  v110 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v119 = &v104 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (&v104 - v13);
  result = MEMORY[0x28223BE20](v12);
  v17 = (&v104 - v16);
  v117 = a3;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x277D84F90];
LABEL_97:
    a4 = *v107;
    if (!*v107)
    {
      goto LABEL_136;
    }

    v21 = v20;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v21;
    }

    else
    {
LABEL_130:
      result = sub_21B9C06A8(v21);
    }

    v121 = result;
    v21 = *(result + 16);
    if (v21 >= 2)
    {
      while (*v117)
      {
        v100 = *(result + 16 * v21);
        v101 = result;
        v102 = *(result + 16 * (v21 - 1) + 40);
        sub_21BA59E94(*v117 + *(v115 + 72) * v100, *v117 + *(v115 + 72) * *(result + 16 * (v21 - 1) + 32), *v117 + *(v115 + 72) * v102, a4);
        if (v5)
        {
        }

        if (v102 < v100)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v101 = sub_21B9C06A8(v101);
        }

        if (v21 - 2 >= *(v101 + 2))
        {
          goto LABEL_124;
        }

        v103 = &v101[16 * v21];
        *v103 = v100;
        *(v103 + 1) = v102;
        v121 = v101;
        sub_21BA5A364(v21 - 1);
        result = v121;
        v21 = *(v121 + 16);
        if (v21 <= 1)
        {
        }
      }

      goto LABEL_134;
    }
  }

  v19 = 0;
  v20 = MEMORY[0x277D84F90];
  v21 = &qword_27CD9F740;
  v106 = a4;
  while (1)
  {
    v22 = v19;
    v23 = v19 + 1;
    v111 = v20;
    v108 = v22;
    if (v23 >= v18)
    {
      v32 = v23;
    }

    else
    {
      v118 = v18;
      v24 = v22;
      v25 = *v117;
      v26 = *(v115 + 72);
      v27 = *v117 + v26 * v23;
      sub_21BA5AA24(v27, v17);
      sub_21BA5AA24(v25 + v26 * v24, v14);
      v28 = *v17;
      v29 = *v14;
      sub_21B9ABAAC(v14, &qword_27CD9F740);
      result = sub_21B9ABAAC(v17, &qword_27CD9F740);
      v30 = v24 + 2;
      v116 = v26;
      v31 = v25 + v26 * (v24 + 2);
      while (1)
      {
        v32 = v118;
        if (v118 == v30)
        {
          break;
        }

        sub_21BA5AA24(v31, v17);
        sub_21BA5AA24(v27, v14);
        v33 = *v17;
        v34 = *v14;
        sub_21B9ABAAC(v14, &qword_27CD9F740);
        result = sub_21B9ABAAC(v17, &qword_27CD9F740);
        ++v30;
        v31 += v116;
        v27 += v116;
        if (v28 < v29 == v33 >= v34)
        {
          v32 = v30 - 1;
          break;
        }
      }

      a4 = v106;
      v21 = &qword_27CD9F740;
      v22 = v108;
      if (v28 < v29)
      {
        if (v32 < v108)
        {
          goto LABEL_127;
        }

        if (v108 < v32)
        {
          v105 = v5;
          v35 = v116 * (v32 - 1);
          v36 = v32 * v116;
          v118 = v32;
          v37 = v108;
          v38 = v108 * v116;
          do
          {
            if (v37 != --v32)
            {
              v39 = *v117;
              if (!*v117)
              {
                goto LABEL_133;
              }

              sub_21B9AB6D4(v39 + v38, v110, &qword_27CD9F740);
              if (v38 < v35 || v39 + v38 >= (v39 + v36))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v38 != v35)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_21B9AB6D4(v110, v39 + v35, &qword_27CD9F740);
            }

            ++v37;
            v35 -= v116;
            v36 -= v116;
            v38 += v116;
          }

          while (v37 < v32);
          v5 = v105;
          a4 = v106;
          v21 = &qword_27CD9F740;
          v22 = v108;
          v32 = v118;
        }
      }
    }

    v40 = v117[1];
    if (v32 < v40)
    {
      if (__OFSUB__(v32, v22))
      {
        goto LABEL_126;
      }

      if (v32 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_128;
        }

        if ((v22 + a4) >= v40)
        {
          v41 = v117[1];
        }

        else
        {
          v41 = v22 + a4;
        }

        if (v41 < v22)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v32 != v41)
        {
          break;
        }
      }
    }

    v42 = v32;
LABEL_34:
    if (v42 < v108)
    {
      goto LABEL_125;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v20 = v111;
    }

    else
    {
      result = sub_21B9BFC50(0, *(v111 + 2) + 1, 1, v111);
      v20 = result;
    }

    v44 = *(v20 + 2);
    v43 = *(v20 + 3);
    a4 = v44 + 1;
    if (v44 >= v43 >> 1)
    {
      result = sub_21B9BFC50((v43 > 1), v44 + 1, 1, v20);
      v20 = result;
    }

    *(v20 + 2) = a4;
    v45 = &v20[16 * v44];
    *(v45 + 4) = v108;
    *(v45 + 5) = v42;
    v46 = *v107;
    if (!*v107)
    {
      goto LABEL_135;
    }

    v112 = v42;
    if (v44)
    {
      v47 = v46;
      v21 = &qword_27CD9F740;
      while (1)
      {
        v48 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v49 = *(v20 + 4);
          v50 = *(v20 + 5);
          v59 = __OFSUB__(v50, v49);
          v51 = v50 - v49;
          v52 = v59;
LABEL_55:
          if (v52)
          {
            goto LABEL_114;
          }

          v65 = &v20[16 * a4];
          v67 = *v65;
          v66 = *(v65 + 1);
          v68 = __OFSUB__(v66, v67);
          v69 = v66 - v67;
          v70 = v68;
          if (v68)
          {
            goto LABEL_117;
          }

          v71 = &v20[16 * v48 + 32];
          v73 = *v71;
          v72 = *(v71 + 1);
          v59 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v59)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v69, v74))
          {
            goto LABEL_121;
          }

          if (v69 + v74 >= v51)
          {
            if (v51 < v74)
            {
              v48 = a4 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v75 = &v20[16 * a4];
        v77 = *v75;
        v76 = *(v75 + 1);
        v59 = __OFSUB__(v76, v77);
        v69 = v76 - v77;
        v70 = v59;
LABEL_69:
        if (v70)
        {
          goto LABEL_116;
        }

        v78 = &v20[16 * v48];
        v80 = *(v78 + 4);
        v79 = *(v78 + 5);
        v59 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v59)
        {
          goto LABEL_119;
        }

        if (v81 < v69)
        {
          goto LABEL_4;
        }

LABEL_76:
        v21 = v48 - 1;
        if (v48 - 1 >= a4)
        {
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (!*v117)
        {
          goto LABEL_132;
        }

        v86 = v20;
        a4 = *&v20[16 * v21 + 32];
        v87 = *&v20[16 * v48 + 40];
        sub_21BA59E94(*v117 + *(v115 + 72) * a4, *v117 + *(v115 + 72) * *&v20[16 * v48 + 32], *v117 + *(v115 + 72) * v87, v47);
        if (v5)
        {
        }

        if (v87 < a4)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v86 = sub_21B9C06A8(v86);
        }

        if (v21 >= *(v86 + 2))
        {
          goto LABEL_111;
        }

        v88 = &v86[16 * v21];
        *(v88 + 4) = a4;
        *(v88 + 5) = v87;
        v121 = v86;
        result = sub_21BA5A364(v48);
        v20 = v121;
        a4 = *(v121 + 16);
        v21 = &qword_27CD9F740;
        if (a4 <= 1)
        {
          goto LABEL_4;
        }
      }

      v53 = &v20[16 * a4 + 32];
      v54 = *(v53 - 64);
      v55 = *(v53 - 56);
      v59 = __OFSUB__(v55, v54);
      v56 = v55 - v54;
      if (v59)
      {
        goto LABEL_112;
      }

      v58 = *(v53 - 48);
      v57 = *(v53 - 40);
      v59 = __OFSUB__(v57, v58);
      v51 = v57 - v58;
      v52 = v59;
      if (v59)
      {
        goto LABEL_113;
      }

      v60 = &v20[16 * a4];
      v62 = *v60;
      v61 = *(v60 + 1);
      v59 = __OFSUB__(v61, v62);
      v63 = v61 - v62;
      if (v59)
      {
        goto LABEL_115;
      }

      v59 = __OFADD__(v51, v63);
      v64 = v51 + v63;
      if (v59)
      {
        goto LABEL_118;
      }

      if (v64 >= v56)
      {
        v82 = &v20[16 * v48 + 32];
        v84 = *v82;
        v83 = *(v82 + 1);
        v59 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v59)
        {
          goto LABEL_122;
        }

        if (v51 < v85)
        {
          v48 = a4 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

    v21 = &qword_27CD9F740;
LABEL_4:
    v18 = v117[1];
    v19 = v112;
    a4 = v106;
    if (v112 >= v18)
    {
      goto LABEL_97;
    }
  }

  v105 = v5;
  v89 = *v117;
  v90 = *(v115 + 72);
  v91 = *v117 + v90 * (v32 - 1);
  v92 = -v90;
  v93 = v108 - v32;
  v109 = v90;
  a4 = v89 + v32 * v90;
  v112 = v41;
LABEL_88:
  v118 = v32;
  v113 = a4;
  v114 = v93;
  v116 = v91;
  v94 = v91;
  while (1)
  {
    sub_21BA5AA24(a4, v17);
    sub_21BA5AA24(v94, v14);
    v95 = *v17;
    v96 = *v14;
    sub_21B9ABAAC(v14, &qword_27CD9F740);
    result = sub_21B9ABAAC(v17, &qword_27CD9F740);
    if (v95 >= v96)
    {
LABEL_87:
      v32 = v118 + 1;
      v91 = v116 + v109;
      v93 = v114 - 1;
      a4 = v113 + v109;
      v42 = v112;
      if (v118 + 1 != v112)
      {
        goto LABEL_88;
      }

      v5 = v105;
      goto LABEL_34;
    }

    if (!v89)
    {
      break;
    }

    v97 = v119;
    sub_21B9AB6D4(a4, v119, &qword_27CD9F740);
    swift_arrayInitWithTakeFrontToBack();
    v98 = v97;
    v21 = &qword_27CD9F740;
    sub_21B9AB6D4(v98, v94, &qword_27CD9F740);
    v94 += v92;
    a4 += v92;
    if (__CFADD__(v93++, 1))
    {
      goto LABEL_87;
    }
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
  return result;
}