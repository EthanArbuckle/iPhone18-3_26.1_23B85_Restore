uint64_t sub_1B79AC12C()
{
  v0 = sub_1B7A976B0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46D90);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - v6;
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46DB0);
  sub_1B79AEB1C();
  sub_1B7A98020();
  sub_1B7A976A0();
  sub_1B797EC34(&qword_1EBA46D98, &qword_1EBA46D90);
  sub_1B7A98510();
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
}

uint64_t sub_1B79AC39C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46DC8);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v7 - v1;
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1B7A97960();
  sub_1B7A98760();
  KeyPath = swift_getKeyPath();
  v4 = swift_allocObject();
  *(v4 + 16) = 1;
  v5 = &v2[*(v0 + 36)];
  *v5 = KeyPath;
  v5[1] = sub_1B79AED04;
  v5[2] = v4;
  sub_1B79AEBD8();
  sub_1B7A982C0();
  sub_1B7957888(v2, &qword_1EBA46DC8);
}

uint64_t sub_1B79AC538()
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

uint64_t sub_1B79AC5C8(void (**a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  (*a1)(isCurrentExecutor);
  sub_1B7957EE0(v8, a2, a3);
  v13 = *(v6 + 8);
  v13(v8, a2);
  sub_1B7957EE0(v11, a2, a3);
  v13(v11, a2);
}

uint64_t sub_1B79AC76C@<X0>(void (**a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a4;
  v33 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v9;
  v36 = v10;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v35 = a2;
  v36 = a3;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = a2;
  v36 = MEMORY[0x1E6981CD8];
  v37 = OpaqueTypeMetadata2;
  v38 = a3;
  v39 = MEMORY[0x1E6981CD0];
  v40 = OpaqueTypeConformance2;
  v32 = OpaqueTypeConformance2;
  v13 = swift_getOpaqueTypeMetadata2();
  v31 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v30 = &v29 - v17;
  sub_1B7A9A760();
  v29 = sub_1B7A9A750();
  sub_1B7A9A710();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  (*a1)(isCurrentExecutor);
  v19 = sub_1B7A989E0();
  MEMORY[0x1EEE9AC00](v19);
  v20 = swift_checkMetadataState();
  v21 = v8;
  v22 = v32;
  v23 = MEMORY[0x1E6981CD8];
  v24 = MEMORY[0x1E6981CD0];
  sub_1B7A984E0();
  (*(v33 + 8))(v21, a2);
  v35 = a2;
  v36 = v23;
  v37 = v20;
  v38 = a3;
  v39 = v24;
  v40 = v22;
  v25 = swift_getOpaqueTypeConformance2();
  v26 = v30;
  sub_1B7957EE0(v15, v13, v25);
  v27 = *(v31 + 8);
  v27(v15, v13);
  sub_1B7957EE0(v26, v13, v25);
  v27(v26, v13);
}

uint64_t sub_1B79ACAFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v17[0] = a1;
  v17[1] = a4;
  v18 = a2;
  v19 = a3;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v7 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v17 - v11;
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46DE8);
  sub_1B7A976E0();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1B7A9C180;
  sub_1B7A976D0();
  MEMORY[0x1B8CA96B0](2, v13, a2, a3);

  v18 = a2;
  v19 = a3;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1B7957EE0(v9, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v15 = *(v7 + 8);
  v15(v9, OpaqueTypeMetadata2);
  sub_1B7957EE0(v12, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v15(v12, OpaqueTypeMetadata2);
}

uint64_t _JetViewDefaultWorking.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1B7A978F0();
  v19 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46BF8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - v10;
  KeyPath = swift_getKeyPath();
  v17 = swift_getKeyPath();
  sub_1B7A978E0();
  sub_1B7A98A40();
  sub_1B7A97180();
  if (sub_1B7A97170())
  {
    sub_1B7A98A50();
  }

  v12 = sub_1B79AECBC(&qword_1EBA46C00, MEMORY[0x1E697F260]);
  sub_1B7A970B0();

  (*(v19 + 8))(v4, v2);
  (*(v6 + 16))(v8, v11, v5);
  v20 = v2;
  v21 = v12;
  swift_getOpaqueTypeConformance2();
  v13 = sub_1B7A972B0();
  result = (*(v6 + 8))(v11, v5);
  *a1 = sub_1B79AD09C;
  *(a1 + 8) = 0;
  v15 = v17;
  *(a1 + 16) = KeyPath;
  *(a1 + 24) = 0;
  *(a1 + 32) = v15;
  *(a1 + 40) = 0;
  *(a1 + 48) = v13;
  return result;
}

uint64_t sub_1B79AD09C@<X0>(uint64_t a1@<X8>)
{
  sub_1B7A986C0();
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  v4 = swift_getKeyPath();
  result = swift_getKeyPath();
  *a1 = sub_1B795AAEC;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = KeyPath;
  *(a1 + 48) = 0;
  *(a1 + 56) = v3;
  *(a1 + 64) = 0;
  *(a1 + 72) = v4;
  *(a1 + 80) = 0;
  *(a1 + 88) = result;
  *(a1 + 96) = 0;
  return result;
}

uint64_t _JetViewDefaultFailed.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 2);
  v4 = swift_allocObject();
  v9 = *v1;
  *(v4 + 16) = *v1;
  *(v4 + 32) = v3;
  KeyPath = swift_getKeyPath();
  v6 = swift_getKeyPath();
  *a1 = sub_1B79AD68C;
  *(a1 + 8) = v4;
  *(a1 + 16) = KeyPath;
  *(a1 + 24) = 0;
  *(a1 + 32) = v6;
  *(a1 + 40) = 0;
  v7 = v9;
}

uint64_t sub_1B79AD26C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = a1;

  ContentUnavailableView.init<>(error:retry:)(a1, a2, a3, a4);
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46DF8);
  v11 = a4 + *(result + 36);
  *v11 = KeyPath;
  *(v11 + 8) = 2;
  return result;
}

uint64_t sub_1B79AD2F8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 2);
  v4 = swift_allocObject();
  v9 = *v1;
  *(v4 + 16) = *v1;
  *(v4 + 32) = v3;
  KeyPath = swift_getKeyPath();
  v6 = swift_getKeyPath();
  *a1 = sub_1B79AF2DC;
  *(a1 + 8) = v4;
  *(a1 + 16) = KeyPath;
  *(a1 + 24) = 0;
  *(a1 + 32) = v6;
  *(a1 + 40) = 0;
  v7 = v9;
}

uint64_t sub_1B79AD3E4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B798D338;

  return sub_1B79A8558(0);
}

uint64_t sub_1B79AD478()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B798D54C;

  return sub_1B79AD3E4();
}

uint64_t sub_1B79AD52C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B798D54C;

  return sub_1B79AD3D0();
}

uint64_t sub_1B79AD5D8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B798D338;

  return sub_1B79AD3E4();
}

uint64_t View.startUpDecoration(_:)()
{
  swift_getKeyPath();
  sub_1B7A98150();
}

uint64_t sub_1B79AD718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B79AE23C();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1B79AD77C()
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_1B7A96F30();
}

uint64_t sub_1B79AD868()
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_1B7A96F30();
}

uint64_t sub_1B79AD964(uint64_t a1, void *a2)
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  swift_getKeyPath();

  v3 = a2;
  sub_1B7A96F30();
}

uint64_t sub_1B79ADA80()
{
  sub_1B79ADE24(*(v0 + 16));

  v1 = OBJC_IVAR____TtC18_JetEngine_SwiftUI11_JetTakeOff__objectGraph;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46DF0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + 48);
  *(v0 + 48) = 0;

  if (v3)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      v4 = *(v3 + 48);
      swift_retain_n();

      v3 = v4;
    }

    while (v4);
  }

  return v0;
}

uint64_t sub_1B79ADB5C()
{
  sub_1B79ADA80();

  return swift_deallocClassInstance();
}

void *Jet.init(startUpProcedure:makeObjects:working:failed:content:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v16 = *a1;
  sub_1B7A98A40();
  v17 = sub_1B7A97180();
  KeyPath = swift_getKeyPath();
  result = swift_allocObject();
  result[2] = v16;
  result[3] = v17;
  result[4] = a2;
  result[5] = a3;
  *a9 = sub_1B79A6F40;
  *(a9 + 8) = result;
  *(a9 + 16) = 0;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = KeyPath;
  *(a9 + 80) = 0;
  return result;
}

unint64_t Jet.init<>(startUpProcedure:makeObjects:content:)@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a1;
  sub_1B79ADE14(*a1);
  sub_1B7A98A40();
  v12 = sub_1B7A97180();
  sub_1B797EC34(&qword_1EBA46C18, &qword_1EBA46C08);
  sub_1B797EC34(&qword_1EBA46C20, &qword_1EBA46C10);
  *(a6 + 72) = swift_getKeyPath();
  *(a6 + 80) = 0;
  v13 = swift_allocObject();
  v13[2] = v11;
  v13[3] = v12;
  v13[4] = a2;
  v13[5] = a3;
  *a6 = sub_1B79A6F40;
  *(a6 + 8) = v13;
  *(a6 + 16) = 0;
  *(a6 + 24) = j_j___s18_JetEngine_SwiftUI11LoadingViewVACy0cD04TextVGycAFRszrlufC;
  *(a6 + 32) = 0;
  *(a6 + 40) = sub_1B79AF2C8;
  *(a6 + 48) = 0;
  *(a6 + 56) = a4;
  *(a6 + 64) = a5;

  return sub_1B79ADE24(v11);
}

unint64_t sub_1B79ADE14(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

unint64_t sub_1B79ADE24(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

unint64_t Jet.init<>(startUpProcedure:transaction:makeObjects:content:)@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v11 = *a1;
  sub_1B79ADE14(*a1);
  sub_1B7A98A40();
  v12 = sub_1B7A97180();
  sub_1B797EC34(&qword_1EBA46C18, &qword_1EBA46C08);
  sub_1B797EC34(&qword_1EBA46C20, &qword_1EBA46C10);
  *(a6 + 72) = swift_getKeyPath();
  *(a6 + 80) = 0;
  v13 = swift_allocObject();
  v13[2] = v11;
  v13[3] = v12;
  v13[4] = a2;
  v13[5] = a3;
  *a6 = sub_1B79A6F40;
  *(a6 + 8) = v13;
  *(a6 + 16) = 0;
  *(a6 + 24) = j_j___s18_JetEngine_SwiftUI11LoadingViewVACy0cD04TextVGycAFRszrlufC;
  *(a6 + 32) = 0;
  *(a6 + 40) = sub_1B79AF2C8;
  *(a6 + 48) = 0;
  *(a6 + 56) = a4;
  *(a6 + 64) = a5;

  return sub_1B79ADE24(v11);
}

uint64_t Jet.init<>(startUpWith:content:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{

  sub_1B797EC34(&qword_1EBA46C18, &qword_1EBA46C08);
  sub_1B797EC34(&qword_1EBA46C20, &qword_1EBA46C10);
  Jet.init(startUpWith:working:failed:content:)(j_j___s18_JetEngine_SwiftUI11LoadingViewVACy0cD04TextVGycAFRszrlufC, 0, sub_1B79AF2C8, 0, a1, a2, a3);
}

uint64_t sub_1B79AE0A8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = a1;

  return ContentUnavailableView.init<>(error:retry:)(a1, a2, a3, a4);
}

uint64_t JetStartUpCoordinator.init(startUpProcedure:makeObjects:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *a1;
  sub_1B7A98A40();
  v8 = sub_1B7A97180();
  type metadata accessor for _JetTakeOff();
  v9 = swift_allocObject();
  v9[6] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46BE8);
  sub_1B7A96EE0();
  v9[2] = v7;
  v9[3] = v8;
  v9[4] = a2;
  v9[5] = a3;
  v9[6] = 0;

  *a4 = v9;
  return result;
}

unint64_t sub_1B79AE23C()
{
  result = qword_1EBA46C28[0];
  if (!qword_1EBA46C28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBA46C28);
  }

  return result;
}

uint64_t sub_1B79AE2C8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B79AE31C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_1B79AE364(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18_JetEngine_SwiftUI0A16StartUpProcedureO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B79AE3EC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B79AE440(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_1B79AE49C(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithTake_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for JetStartUpDecoration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for JetStartUpDecoration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1B79AE6F4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1B79AE750(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_1B79AE7B8()
{
  sub_1B79AE86C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1B79AE86C()
{
  if (!qword_1EBA46CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46BE8);
    v0 = sub_1B7A96F50();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBA46CB0);
    }
  }
}

unint64_t sub_1B79AE8D0()
{
  result = qword_1EBA46CB8;
  if (!qword_1EBA46CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46CC0);
    sub_1B797EC34(&qword_1EBA46CC8, &qword_1EBA46CD0);
    sub_1B797EC34(&qword_1EBA46CD8, &qword_1EBA46CE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA46CB8);
  }

  return result;
}

uint64_t sub_1B79AE9B4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B79AEA04(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_1B79AEA4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B79AEB1C()
{
  result = qword_1EBA46DB8;
  if (!qword_1EBA46DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46DB0);
    sub_1B79AEBD8();
    sub_1B79AECBC(&qword_1EDC10A40, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA46DB8);
  }

  return result;
}

unint64_t sub_1B79AEBD8()
{
  result = qword_1EBA46DC0;
  if (!qword_1EBA46DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46DC8);
    sub_1B797EC34(&qword_1EDC10120, &qword_1EBA46DD0);
    sub_1B797EC34(&qword_1EBA46DD8, &qword_1EBA46DE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA46DC0);
  }

  return result;
}

uint64_t sub_1B79AECBC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_19Tm(void (*a1)(void))
{
  a1(*(v1 + 16));

  return swift_deallocObject();
}

unint64_t sub_1B79AED6C()
{
  result = qword_1EBA46E00;
  if (!qword_1EBA46E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA46E00);
  }

  return result;
}

unint64_t sub_1B79AEDC0(unint64_t result)
{
  if (result != 2)
  {
    return sub_1B79ADE14(result);
  }

  return result;
}

uint64_t sub_1B79AEDD0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B798D54C;

  return sub_1B79DC72C(a1, v4);
}

uint64_t sub_1B79AEE88(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B798D338;

  return sub_1B79DC72C(a1, v4);
}

id sub_1B79AF040(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t objectdestroy_6Tm()
{
  sub_1B79A7E10(*(v0 + 64), *(v0 + 72), *(v0 + 80));

  j__swift_release();

  return swift_deallocObject();
}

uint64_t objectdestroy_15Tm()
{
  swift_unknownObjectRelease();
  sub_1B79A7E10(*(v0 + 80), *(v0 + 88), *(v0 + 96));

  j__swift_release();

  return swift_deallocObject();
}

uint64_t sub_1B79AF15C(uint64_t a1)
{
  v4 = v1[5];
  v11 = v1[4];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[2];
  v8 = v1[3];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1B798D54C;

  return sub_1B79A8224(a1, v7, v8, (v1 + 10), v11, v4, v5, v6);
}

id sub_1B79AF24C(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_1B79AF040(result, a2 & 1);
  }

  return result;
}

unint64_t sub_1B79AF264()
{
  result = qword_1EBA46E18;
  if (!qword_1EBA46E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA46E18);
  }

  return result;
}

uint64_t _IntentViewDefaultContinuousFailed.init(error:retry:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t IntentView.init<A>(what:transaction:working:failed:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v48 = a7;
  v49 = a8;
  v46 = a4;
  v47 = a6;
  v50 = a3;
  v51 = a5;
  v45 = a2;
  v54 = a1;
  v55 = a9;
  v43 = a17;
  v44 = a18;
  v42 = a16;
  v39 = a15;
  v52 = *(a10 - 8);
  v38 = a13;
  v20 = MEMORY[0x1EEE9AC00](a1);
  v53 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v20);
  v23 = swift_allocObject();
  v23[2] = a10;
  v23[3] = a11;
  v40 = a11;
  v23[4] = a12;
  v23[5] = a13;
  v41 = a14;
  v23[6] = a14;
  v23[7] = a15;
  v24 = v42;
  v25 = v43;
  v26 = v44;
  v23[8] = v42;
  v23[9] = v25;
  v27 = v45;
  v23[10] = v26;
  v23[11] = v27;
  v23[12] = a3;
  v28 = v46;
  v23[13] = v46;
  v23[14] = a5;
  v30 = v47;
  v29 = v48;
  v23[15] = v47;
  v23[16] = v29;
  v23[17] = v49;
  v56[0] = swift_getAssociatedTypeWitness();
  v56[1] = v38;
  v56[2] = a11;
  v56[3] = a12;
  v56[4] = v26;
  v56[5] = v25;
  v31 = v39;
  v56[6] = v39;
  v56[7] = v24;
  v32 = v24;
  v33 = type metadata accessor for _IntentViewContinuousContent();
  WitnessTable = swift_getWitnessTable();
  LOBYTE(v56[0]) = 0;

  *(&v36 + 1) = v33;
  *&v36 = a10;
  IntentView.init(what:transaction:configuration:working:failed:content:)(v53, v27, v56, v50, v28, v51, v30, sub_1B79AF84C, v55, v23, v36, v40, a12, v41, WitnessTable, v31, v32);
  return (*(v52 + 8))(v54, a10);
}

uint64_t sub_1B79AF58C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v45 = a5;
  v46 = a7;
  v35 = a6;
  v36 = a4;
  v44 = a3;
  v38 = a2;
  v47 = a9;
  v43 = a13;
  v42 = a12;
  v41 = a18;
  v37 = a16;
  v39 = a15;
  v40 = a11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v23 = &v34 - v22;
  (*(v24 + 16))(&v34 - v22, a1, AssociatedTypeWitness, v21);

  v25 = v39;
  v26 = v41;
  v27 = v42;
  v28 = v40;
  v29 = v43;
  _IntentViewContinuousContent.init(_:transaction:working:failed:content:)(v23, v38, v44, v36, v45, v35, v46, a8, &v63, AssociatedTypeWitness, v43, v40, v42, v41, a17, v39, a16);
  *&v58 = AssociatedTypeWitness;
  *(&v58 + 1) = v29;
  *&v59 = v28;
  *(&v59 + 1) = v27;
  *&v60 = v26;
  *(&v60 + 1) = a17;
  *&v61 = v25;
  *(&v61 + 1) = v37;
  v30 = type metadata accessor for _IntentViewContinuousContent();
  WitnessTable = swift_getWitnessTable();
  sub_1B7957EE0(&v63, v30, WitnessTable);
  v60 = v65;
  v61 = v66;
  v62 = v67;
  v58 = v63;
  v59 = v64;
  v32 = *(*(v30 - 8) + 8);
  v32(&v58, v30);
  v50 = v55;
  v51 = v56;
  v52 = v57;
  v48 = v53;
  v49 = v54;
  sub_1B7957EE0(&v48, v30, WitnessTable);
  v65 = v50;
  v66 = v51;
  v67 = v52;
  v63 = v48;
  v64 = v49;
  return (v32)(&v63, v30);
}

uint64_t _IntentViewContinuousContent.init(_:transaction:working:failed:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v43 = a7;
  v44 = a8;
  v41 = a5;
  v42 = a6;
  v39 = a3;
  v40 = a4;
  v37 = a2;
  v38 = a1;
  v36 = a17;
  v46 = a15;
  v47 = a16;
  v45 = a14;
  v18 = *(a10 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](a1);
  v21 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v21, v20);
  v22 = (*(v18 + 80) + 80) & ~*(v18 + 80);
  v23 = (v19 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 2) = a10;
  *(v24 + 3) = a11;
  *(v24 + 4) = a12;
  *(v24 + 5) = a13;
  v25 = v46;
  *(v24 + 6) = v45;
  *(v24 + 7) = v25;
  v26 = v36;
  *(v24 + 8) = v47;
  *(v24 + 9) = v26;
  (*(v18 + 32))(&v24[v22], v21);
  *&v24[v23] = v37;
  v48 = a10;
  v49 = a11;
  v50 = a12;
  v51 = a13;
  v52 = v45;
  v53 = v46;
  v54 = v47;
  v55 = v26;
  type metadata accessor for _IntentViewContinuousContent.Dispatcher();
  swift_getWitnessTable();
  v27 = sub_1B7A97110();
  v29 = v28;
  LOBYTE(v23) = v30;
  result = (*(v18 + 8))(v38, a10);
  *a9 = v27;
  *(a9 + 8) = v29;
  *(a9 + 16) = v23 & 1;
  v32 = v40;
  *(a9 + 24) = v39;
  *(a9 + 32) = v32;
  v33 = v42;
  *(a9 + 40) = v41;
  *(a9 + 48) = v33;
  v34 = v44;
  *(a9 + 56) = v43;
  *(a9 + 64) = v34;
  return result;
}

uint64_t IntentView.init<A>(what:transaction:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  v26 = a3;
  v27 = a4;
  v25 = a2;
  v16 = *(a5 - 8);
  v17 = MEMORY[0x1EEE9AC00](a1);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, a1, v20, v17);
  v21 = sub_1B7988414();
  v22 = sub_1B7988468();
  IntentView.init<A>(what:transaction:working:failed:content:)(v19, v25, nullsub_1, 0, sub_1B79AFC58, 0, v26, v27, a9, a5, &type metadata for _IntentViewDefaultContinuousWorking, &type metadata for _IntentViewDefaultContinuousFailed, a6, a7, v21, v22, a8, a10);
  return (*(v16 + 8))(a1, a5);
}

uint64_t sub_1B79AFC58@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  v4 = a1;
}

uint64_t *sub_1B79AFCE4(uint64_t a1, uint64_t a2)
{
  v48 = a1;
  v49 = a2;
  v3 = *v2;
  v47 = *(*v2 + 112);
  v46 = *(v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1B7A9AB60();
  v42 = *(v5 - 8);
  v43 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v37 - v6;
  v45 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v8);
  v44 = v37 - v9;
  v10 = sub_1B7A9A100();
  v11 = sub_1B7A9AB60();
  v12 = sub_1B7A96F50();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v37 - v14;
  v41 = v11;
  v39 = *(v11 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = v37 - v18;
  *(v2 + *(v3 + 160)) = 0;
  v20 = *(*v2 + 168);
  v21 = *(v10 - 8);
  v22 = *(v21 + 56);
  v40 = v10;
  v37[1] = v21 + 56;
  v38 = v22;
  (v22)(v19, 1, 1, v10, v17);
  v23 = v46;
  sub_1B79B0268(v19);
  v24 = v2 + v20;
  v25 = v48;
  v26 = v15;
  v27 = v45;
  v28 = v12;
  v29 = v23;
  (*(v13 + 32))(v24, v26, v28);
  v30 = v49;
  v31 = *(v23 - 8);
  (*(v31 + 16))(v2 + *(*v2 + 144), v25, v29);
  *(v2 + *(*v2 + 152)) = v30;

  sub_1B7A98BA0();
  v32 = v7;
  if ((*(v27 + 48))(v7, 1, AssociatedTypeWitness) == 1)
  {
    (*(v42 + 8))(v7, v43);
    sub_1B79B038C();

    (*(v31 + 8))(v25, v29);
  }

  else
  {
    v33 = v44;
    (*(v27 + 32))(v44, v32, AssociatedTypeWitness);
    (*(v27 + 16))(v19, v33, AssociatedTypeWitness);
    v34 = v40;
    swift_storeEnumTagMultiPayload();
    *v35.i64 = v38(v19, 0, 1, v34);
    sub_1B79B35E8(v19, v35);
    (*(v39 + 8))(v19, v41);

    (*(v31 + 8))(v25, v29);
    (*(v27 + 8))(v33, AssociatedTypeWitness);
  }

  return v2;
}

uint64_t sub_1B79B0268(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  sub_1B7A9A100();
  v2 = sub_1B7A9AB60();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  (*(v3 + 16))(&v8 - v5, a1, v2, v4);
  sub_1B7A28F54(v6, v2);
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_1B79B038C()
{
  v1 = v0;
  v28 = *v0;
  v2 = v28;
  v24 = *(v28 + 80);
  v3 = sub_1B7A99D80();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v26 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B40);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v23 - v10;
  v27 = &v23 - v10;
  v12 = sub_1B7A9A7E0();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  swift_weakInit();
  sub_1B7A98E70();
  v25 = *(v1 + *(*v1 + 152));
  v14 = v3;
  (*(v4 + 16))(&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8, v3);
  sub_1B7A9A760();

  v15 = sub_1B7A9A750();
  (*(v4 + 8))(v8, v14);
  v16 = (*(v4 + 80) + 96) & ~*(v4 + 80);
  v17 = (v5 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E85E0];
  *(v18 + 16) = v15;
  *(v18 + 24) = v19;
  *(v18 + 32) = v24;
  *(v18 + 40) = v2[11];
  v20 = v28;
  *(v18 + 48) = *(v28 + 96);
  *(v18 + 64) = v2[14];
  *(v18 + 72) = *(v20 + 120);
  *(v18 + 88) = v2[17];
  (*(v4 + 32))(v18 + v16, v26, v14);
  *(v18 + v17) = v25;
  *(v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8)) = v13;

  v21 = sub_1B79A9B34(0, 0, v27, &unk_1B7A9ED18, v18);
  sub_1B79B3568();
  *(v1 + *(*v1 + 160)) = v21;
}

uint64_t *sub_1B79B073C()
{
  v1 = *v0;
  v2 = *v0;
  if (*(v0 + *(*v0 + 160)))
  {

    sub_1B7A9A7F0();

    v1 = *v0;
  }

  (*(*(*(v2 + 80) - 8) + 8))(v0 + *(v1 + 144), *(v2 + 80));

  v3 = *(*v0 + 168);
  swift_getAssociatedTypeWitness();
  sub_1B7A9A100();
  sub_1B7A9AB60();
  v4 = sub_1B7A96F50();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_1B79B08D4()
{
  sub_1B79B073C();

  return swift_deallocClassInstance();
}

uint64_t sub_1B79B0928()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1B7A96F20();
}

uint64_t sub_1B79B0A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 96) = v23;
  *(v8 + 80) = v22;
  *(v8 + 64) = v20;
  *(v8 + 72) = v21;
  *(v8 + 48) = a8;
  *(v8 + 56) = v19;
  *(v8 + 32) = a6;
  *(v8 + 40) = a7;
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v8 + 104) = AssociatedTypeWitness;
  v11 = sub_1B7A98BC0();
  *(v8 + 112) = v11;
  v12 = sub_1B7A9AB60();
  *(v8 + 120) = v12;
  *(v8 + 128) = *(v12 - 8);
  *(v8 + 136) = swift_task_alloc();
  *(v8 + 144) = *(v11 - 8);
  *(v8 + 152) = swift_task_alloc();
  *(v8 + 160) = *(AssociatedTypeWitness - 8);
  *(v8 + 168) = swift_task_alloc();
  v13 = swift_getAssociatedTypeWitness();
  *(v8 + 176) = v13;
  *(v8 + 184) = *(v13 - 8);
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();
  sub_1B7A9AB60();
  *(v8 + 208) = swift_task_alloc();
  v14 = swift_getAssociatedTypeWitness();
  *(v8 + 216) = v14;
  *(v8 + 224) = *(v14 - 8);
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = *(a7 - 8);
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = swift_task_alloc();
  *(v8 + 264) = swift_task_alloc();
  *(v8 + 272) = sub_1B7A9A760();
  *(v8 + 280) = sub_1B7A9A750();
  v16 = sub_1B7A9A710();
  *(v8 + 288) = v16;
  *(v8 + 296) = v15;

  return MEMORY[0x1EEE6DFA0](sub_1B79B0E30, v16, v15);
}

uint64_t sub_1B79B0E30()
{
  v1 = v0[32];
  v2 = v0[33];
  v3 = v0[30];
  v4 = v0[5];
  sub_1B7A99200();
  v5 = *(v3 + 16);
  v0[38] = v5;
  v0[39] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v2, v4);
  sub_1B7A9A830();
  v6 = sub_1B7A9A750();
  v0[40] = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[41] = AssociatedConformanceWitness;
  v8 = swift_task_alloc();
  v0[42] = v8;
  *v8 = v0;
  v8[1] = sub_1B79B0F90;
  v9 = v0[26];
  v10 = v0[27];
  v11 = v0[25];
  v12 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v9, v6, v12, v11, v10, AssociatedConformanceWitness);
}

uint64_t sub_1B79B0F90()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  v3 = *(v2 + 296);
  v4 = *(v2 + 288);
  if (v0)
  {
    v5 = sub_1B79B157C;
  }

  else
  {
    v5 = sub_1B79B10E4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1B79B10E4()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 160);
  v3 = *(v0 + 104);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));

LABEL_5:
    (*(v0 + 304))(*(v0 + 248), *(v0 + 264), *(v0 + 40));
    if (swift_dynamicCast())
    {
      v8 = *(v0 + 144);
      v7 = *(v0 + 152);
      v9 = *(v0 + 136);
      v10 = *(v0 + 112);
      (*(v8 + 56))(v9, 0, 1, v10);
      (*(v8 + 32))(v7, v9, v10);
      if (sub_1B7A98BB0() & 1) != 0 || (sub_1B7A9A810())
      {
        v11 = *(v0 + 264);
        v12 = *(v0 + 240);
        v13 = *(v0 + 40);
        (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 112));
        (*(v12 + 8))(v11, v13);
      }

      else
      {
        v36 = *(v0 + 264);
        v37 = *(v0 + 240);
        v39 = *(v0 + 144);
        v38 = *(v0 + 152);
        v40 = *(v0 + 112);
        v41 = *(v0 + 40);
        IntentViewLogFinishedSequenceError()();
        (*(v39 + 8))(v38, v40);
        (*(v37 + 8))(v36, v41);
      }
    }

    else
    {
      v14 = *(v0 + 136);
      v15 = *(v0 + 144);
      v16 = *(v0 + 120);
      v17 = *(v0 + 128);
      v18 = *(v0 + 112);
      (*(*(v0 + 240) + 8))(*(v0 + 264), *(v0 + 40));
      (*(v15 + 56))(v14, 1, 1, v18);
      (*(v17 + 8))(v14, v16);
    }

    v19 = *(v0 + 8);

    return v19();
  }

  (*(v2 + 32))(*(v0 + 168), v1, v3);
  if (sub_1B7A9A810())
  {
    v5 = *(v0 + 160);
    v4 = *(v0 + 168);
    v6 = *(v0 + 104);
    (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));

    (*(v5 + 8))(v4, v6);
    goto LABEL_5;
  }

  v22 = *(v0 + 160);
  v21 = *(v0 + 168);
  v23 = *(v0 + 104);
  v24 = *(v0 + 32);
  v25 = swift_task_alloc();
  v26 = *(v0 + 56);
  v27 = *(v0 + 72);
  v28 = *(v0 + 88);
  *(v25 + 16) = *(v0 + 40);
  *(v25 + 32) = v26;
  *(v25 + 48) = v27;
  *(v25 + 64) = v28;
  *(v25 + 80) = v24;
  *(v25 + 88) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46F60);
  sub_1B7A97600();

  (*(v22 + 8))(v21, v23);
  v29 = sub_1B7A9A750();
  *(v0 + 320) = v29;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(v0 + 328) = AssociatedConformanceWitness;
  v31 = swift_task_alloc();
  *(v0 + 336) = v31;
  *v31 = v0;
  v31[1] = sub_1B79B0F90;
  v32 = *(v0 + 208);
  v33 = *(v0 + 216);
  v34 = *(v0 + 200);
  v35 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v32, v29, v35, v34, v33, AssociatedConformanceWitness);
}

uint64_t sub_1B79B157C()
{
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v3 = *(v0 + 176);
  v4 = *(v0 + 184);

  v5 = *(v4 + 32);
  v5(v2, v1, v3);
  swift_getAssociatedConformanceWitness();
  v6 = sub_1B7A9AE50();
  v7 = *(v0 + 192);
  if (v6)
  {
    v8 = v6;
    (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
  }

  else
  {
    v9 = *(v0 + 176);
    v8 = swift_allocError();
    v5(v10, v7, v9);
  }

  v11 = *(v0 + 264);
  v12 = *(v0 + 240);
  v13 = *(v0 + 32);
  v19 = *(v0 + 56);
  v20 = *(v0 + 40);
  v17 = *(v0 + 88);
  v18 = *(v0 + 72);
  (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));
  v14 = swift_task_alloc();
  *(v14 + 16) = v20;
  *(v14 + 32) = v19;
  *(v14 + 48) = v18;
  *(v14 + 64) = v17;
  *(v14 + 80) = v13;
  *(v14 + 88) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46F60);
  sub_1B7A97600();

  (*(v12 + 8))(v11, v20);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1B79B17E8@<X0>(uint64_t a1@<X1>, BOOL *a2@<X8>)
{
  v12 = a1;
  v13 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = sub_1B7A9A100();
  v4 = sub_1B7A9AB60();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*(AssociatedTypeWitness - 8) + 16))(v7, v12, AssociatedTypeWitness);
    swift_storeEnumTagMultiPayload();
    *v9.i64 = (*(*(v3 - 8) + 56))(v7, 0, 1, v3);
    sub_1B79B35E8(v7, v9);
    (*(v5 + 8))(v7, v4);
  }

  *v13 = Strong == 0;
  return result;
}

Swift::Void __swiftcall IntentViewLogFinishedSequenceError()()
{
  v0 = sub_1B7A9A280();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EBA45B38 != -1)
  {
    swift_once();
  }

  v4 = off_1EBA46E20;
  os_unfair_lock_lock(off_1EBA46E20 + 5);
  v5 = *(v4 + 16);
  os_unfair_lock_unlock(v4 + 5);
  if ((v5 & 1) == 0)
  {
    os_unfair_lock_lock(v4 + 5);
    *(v4 + 16) = 1;
    os_unfair_lock_unlock(v4 + 5);
    sub_1B7A9A220();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464D8);
    sub_1B7A98D10();
    *(swift_allocObject() + 16) = xmmword_1B7A9D280;
    sub_1B7A98C40();
    sub_1B7A98C40();
    sub_1B7A98C40();
    sub_1B7A99E60();

    (*(v1 + 8))(v3, v0);
  }
}

uint64_t sub_1B79B1C74@<X0>(void *a1@<X1>, BOOL *a2@<X8>)
{
  v12 = a2;
  swift_getAssociatedTypeWitness();
  v3 = sub_1B7A9A100();
  v4 = sub_1B7A9AB60();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v12 - v6);
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *v7 = a1;
    swift_storeEnumTagMultiPayload();
    (*(*(v3 - 8) + 56))(v7, 0, 1, v3);
    v9 = a1;
    sub_1B79B35E8(v7, v10);
    (*(v5 + 8))(v7, v4);
  }

  *v12 = Strong == 0;
  return result;
}

uint64_t *sub_1B79B1E8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[0] = v9;
  v18[1] = v10;
  v18[2] = v11;
  v18[3] = v12;
  v18[4] = v13;
  v18[5] = v14;
  v18[6] = v16;
  v18[7] = v15;
  type metadata accessor for _IntentViewContinuousContent.Dispatcher();
  (*(v6 + 16))(v8, a1, a3);
  swift_allocObject();

  return sub_1B79AFCE4(v8, a2);
}

uint64_t sub_1B79B204C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *v2;
  v5 = v2[1];
  v6 = *(v2 + 16);
  v7 = type metadata accessor for _IntentViewContinuousContent.Dispatcher();
  WitnessTable = swift_getWitnessTable();
  return a2(v4, v5, v6, v7, WitnessTable);
}

uint64_t _IntentViewContinuousContent.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, int64x2_t a3@<Q0>)
{
  v50 = a2;
  v5 = *(a1 + 16);
  a3.i64[0] = v5;
  v51 = a3;
  v6 = *(a1 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1B7A9A100();
  sub_1B7A9AB60();
  v7 = sub_1B7A98870();
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v42.i8[-v9];
  v11 = *(a1 + 40);
  v12 = *(a1 + 72);
  *v65 = AssociatedTypeWitness;
  *&v65[24] = v11;
  *&v67 = v12;
  v8.i64[0] = v6;
  v52 = *(a1 + 24);
  *&v65[8] = v52;
  v13 = vzip1q_s64(v51, v52);
  *&v14 = vdupq_laneq_s64(v52, 1).u64[0];
  *(&v14 + 1) = v11;
  v43 = v14;
  v51 = *(a1 + 56);
  v66 = v51;
  v44 = vzip1q_s64(v8, v51);
  v45 = v13;
  v8.i64[0] = vdupq_laneq_s64(v51, 1).u64[0];
  v8.i64[1] = v12;
  v42 = v8;
  v15 = type metadata accessor for _ResultView();
  v49 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v46 = v42.i64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v47 = &v42.i8[-v18];
  v19 = *(v3 + 16);
  v20 = *(v3 + 48);
  v66 = *(v3 + 32);
  v67 = v20;
  v21 = *(v3 + 16);
  *v65 = *v3;
  *&v65[16] = v21;
  v22 = *(v3 + 48);
  v63[2] = v66;
  v63[3] = v22;
  v68 = *(v3 + 64);
  v64 = *(v3 + 64);
  v63[0] = *v65;
  v63[1] = v19;
  sub_1B79B204C(a1, MEMORY[0x1E697DD38]);
  v53 = v45;
  v54 = v43;
  v55 = v44;
  v56 = v42;
  swift_getKeyPath();
  v57 = v5;
  v58 = v52;
  v59 = v11;
  v60 = v6;
  v61 = v51;
  v62 = v12;
  type metadata accessor for _IntentViewContinuousContent.Dispatcher();
  swift_getWitnessTable();
  sub_1B7A974B0();

  v23 = swift_allocObject();
  *(v23 + 16) = v5;
  v24 = v51;
  *(v23 + 24) = v52;
  *(v23 + 40) = v11;
  *(v23 + 48) = v6;
  *(v23 + 56) = v24;
  *(v23 + 72) = v12;
  v25 = v67;
  *(v23 + 112) = v66;
  *(v23 + 128) = v25;
  *(v23 + 144) = v68;
  v26 = *&v65[16];
  *(v23 + 80) = *v65;
  *(v23 + 96) = v26;
  v27 = swift_allocObject();
  *(v27 + 16) = v5;
  v28 = v51;
  *(v27 + 24) = v52;
  *(v27 + 40) = v11;
  *(v27 + 48) = v6;
  *(v27 + 56) = v28;
  *(v27 + 72) = v12;
  v29 = v67;
  *(v27 + 112) = v66;
  *(v27 + 128) = v29;
  *(v27 + 144) = v68;
  v30 = *&v65[16];
  *(v27 + 80) = *v65;
  *(v27 + 96) = v30;
  v31 = swift_allocObject();
  *(v31 + 16) = v5;
  v32 = v51;
  *(v31 + 24) = v52;
  *(v31 + 40) = v11;
  *(v31 + 48) = v6;
  *(v31 + 56) = v32;
  *(v31 + 72) = v12;
  v33 = v67;
  *(v31 + 112) = v66;
  *(v31 + 128) = v33;
  *(v31 + 144) = v68;
  v34 = *&v65[16];
  *(v31 + 80) = *v65;
  *(v31 + 96) = v34;
  v35 = v46;
  sub_1B7A55184(v10, sub_1B79B3030, v23, sub_1B79B3068, v27, sub_1B79B30A0, v31, v46);
  WitnessTable = swift_getWitnessTable();
  v37 = v47;
  v38 = v35;
  sub_1B7957EE0(v35, v15, WitnessTable);
  v39 = *(*(a1 - 8) + 16);
  v39(v63, v65, a1);
  v39(v63, v65, a1);
  v39(v63, v65, a1);
  v40 = *(v49 + 8);
  v40(v38, v15);
  sub_1B7957EE0(v37, v15, WitnessTable);
  return (v40)(v37, v15);
}

uint64_t sub_1B79B25D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a4 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v19 - v15;
  (*(v14 + 24))();
  sub_1B7957EE0(v13, a4, a8);
  v17 = *(v10 + 8);
  v17(v13, a4);
  sub_1B7957EE0(v16, a4, a8);
  return (v17)(v16, a4);
}

uint64_t sub_1B79B270C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v33 = a7;
  v34 = a8;
  v32 = a5;
  v37 = a1;
  v38 = a9;
  v15 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v32 - v19;
  v22 = *(v21 + 40);
  v35 = *(v21 + 48);
  v36 = v22;
  v23 = swift_allocObject();
  *(v23 + 16) = a3;
  *(v23 + 24) = a4;
  v25 = v32;
  v24 = v33;
  *(v23 + 32) = v32;
  *(v23 + 40) = a6;
  v26 = v34;
  *(v23 + 48) = v24;
  *(v23 + 56) = v26;
  *(v23 + 64) = a10;
  *(v23 + 72) = a11;
  v27 = *(a2 + 48);
  *(v23 + 112) = *(a2 + 32);
  *(v23 + 128) = v27;
  *(v23 + 144) = *(a2 + 64);
  v28 = *(a2 + 16);
  *(v23 + 80) = *a2;
  *(v23 + 96) = v28;
  v39[0] = a3;
  v39[1] = a4;
  v39[2] = v25;
  v39[3] = a6;
  v39[4] = v24;
  v39[5] = v26;
  v39[6] = a10;
  v39[7] = a11;
  v29 = type metadata accessor for _IntentViewContinuousContent();
  (*(*(v29 - 8) + 16))(v39, a2, v29);
  v36(v37, sub_1B79B3A38, v23);

  sub_1B7957EE0(v17, a6, a11);
  v30 = *(v15 + 8);
  v30(v17, a6);
  sub_1B7957EE0(v20, a6, a11);
  return (v30)(v20, a6);
}

uint64_t sub_1B79B2924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B40);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v29[-1] - v18;
  v28 = &v29[-1] - v18;
  v20 = sub_1B7A9A7E0();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  sub_1B7A9A760();
  v29[0] = a2;
  v29[1] = a3;
  v29[2] = a4;
  v29[3] = a5;
  v29[4] = a6;
  v29[5] = a7;
  v29[6] = a8;
  v29[7] = a9;
  v21 = type metadata accessor for _IntentViewContinuousContent();
  (*(*(v21 - 8) + 16))(v29, a1, v21);
  v22 = sub_1B7A9A750();
  v23 = swift_allocObject();
  v24 = MEMORY[0x1E69E85E0];
  *(v23 + 16) = v22;
  *(v23 + 24) = v24;
  *(v23 + 32) = a2;
  *(v23 + 40) = a3;
  *(v23 + 48) = a4;
  *(v23 + 56) = a5;
  *(v23 + 64) = a6;
  *(v23 + 72) = a7;
  *(v23 + 80) = a8;
  *(v23 + 88) = a9;
  v25 = *(a1 + 48);
  *(v23 + 128) = *(a1 + 32);
  *(v23 + 144) = v25;
  *(v23 + 160) = *(a1 + 64);
  v26 = *(a1 + 16);
  *(v23 + 96) = *a1;
  *(v23 + 112) = v26;
  sub_1B79A9B34(0, 0, v28, &unk_1B7A9ED30, v23);
}

uint64_t sub_1B79B2AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 136) = v14;
  *(v8 + 144) = v15;
  *(v8 + 120) = v13;
  *(v8 + 104) = a7;
  *(v8 + 112) = a8;
  *(v8 + 88) = a5;
  *(v8 + 96) = a6;
  *(v8 + 80) = a4;
  sub_1B7A9A760();
  *(v8 + 152) = sub_1B7A9A750();
  v10 = sub_1B7A9A710();

  return MEMORY[0x1EEE6DFA0](sub_1B79B2BA8, v10, v9);
}

uint64_t sub_1B79B2BA8()
{
  v6 = *(v0 + 104);
  v7 = *(v0 + 88);
  v4 = *(v0 + 136);
  v5 = *(v0 + 120);

  *(v0 + 16) = v7;
  *(v0 + 32) = v6;
  *(v0 + 48) = v5;
  *(v0 + 64) = v4;
  v1 = type metadata accessor for _IntentViewContinuousContent();
  sub_1B79B204C(v1, MEMORY[0x1E697DD30]);
  sub_1B79B038C();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B79B2C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a4 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v20 - v15;
  (*(v17 + 56))(v14);
  sub_1B7957EE0(v13, a4, a8);
  v18 = *(v10 + 8);
  v18(v13, a4);
  sub_1B7957EE0(v16, a4, a8);
  return (v18)(v16, a4);
}

uint64_t _IntentViewDefaultContinuousWorking.body.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1B7A986C0();
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  v4 = swift_getKeyPath();
  result = swift_getKeyPath();
  *a1 = sub_1B795AAEC;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = KeyPath;
  *(a1 + 48) = 0;
  *(a1 + 56) = v3;
  *(a1 + 64) = 0;
  *(a1 + 72) = v4;
  *(a1 + 80) = 0;
  *(a1 + 88) = result;
  *(a1 + 96) = 1;
  return result;
}

uint64_t _IntentViewDefaultContinuousFailed.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = v3;

  ContentUnavailableView.init<>(error:retry:)(v3, v4, v5, a1);
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46DF8);
  v9 = a1 + *(result + 36);
  *v9 = KeyPath;
  *(v9 + 8) = 1;
  return result;
}

uint64_t sub_1B79B2F60@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = v3;

  ContentUnavailableView.init<>(error:retry:)(v3, v4, v5, a1);
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46DF8);
  v9 = a1 + *(result + 36);
  *v9 = KeyPath;
  *(v9 + 8) = 1;
  return result;
}

uint64_t sub_1B79B2FEC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBA46F68);
  result = swift_allocObject();
  *(result + 20) = 0;
  *(result + 16) = 0;
  off_1EBA46E20 = result;
  return result;
}

uint64_t sub_1B79B315C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B79B31C8(uint64_t a1, int a2)
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

uint64_t sub_1B79B3210(uint64_t result, int a2, int a3)
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

uint64_t sub_1B79B3260()
{
  v0 = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    sub_1B7A9A100();
    sub_1B7A9AB60();
    v0 = sub_1B7A96F50();
    if (v2 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return v0;
}

unint64_t sub_1B79B33A0()
{
  result = qword_1EBA46F28;
  if (!qword_1EBA46F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46F30);
    sub_1B797EC34(&qword_1EBA46C18, &qword_1EBA46C08);
    sub_1B797EC34(&qword_1EDC10A48, &qword_1EBA46F38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA46F28);
  }

  return result;
}

unint64_t sub_1B79B3484()
{
  result = qword_1EBA46F40;
  if (!qword_1EBA46F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46DF8);
    sub_1B797EC34(&qword_1EBA46F48, &qword_1EBA46F50);
    sub_1B797EC34(&qword_1EDC0FCD8, &qword_1EBA46F58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA46F40);
  }

  return result;
}

uint64_t sub_1B79B3568()
{
  if (*(v0 + *(*v0 + 160)))
  {

    sub_1B7A9A7F0();
  }

  return result;
}

uint64_t sub_1B79B35E8(uint64_t a1, int64x2_t a2)
{
  v4 = *v2;
  v5 = *v2;
  v6 = *(*v2 + 80);
  a2.i64[0] = v6;
  v19 = a2;
  v7 = v4[14];
  swift_getAssociatedTypeWitness();
  sub_1B7A9A100();
  v8 = sub_1B7A9AB60();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v18.i8[-v11];
  v13 = v4[13];
  v14 = v4[17];
  v10.i64[0] = v7;
  v18 = *(v5 + 11);
  v15 = *(v5 + 6);
  v26 = vzip1q_s64(v19, v18);
  v27 = v15;
  v19 = *(v5 + 15);
  v16 = *(v5 + 8);
  v28 = vzip1q_s64(v10, v19);
  v29 = v16;
  swift_getKeyPath();
  v20 = v6;
  v21 = v18;
  v22 = v13;
  v23 = v7;
  v24 = v19;
  v25 = v14;
  swift_getKeyPath();
  (*(v9 + 16))(v12, a1, v8);

  return sub_1B7A96F30();
}

uint64_t sub_1B79B3800(uint64_t a1)
{
  v3 = v2;
  v4 = v1[4];
  v15 = v1[5];
  v5 = *(sub_1B7A99D80() - 8);
  v6 = (*(v5 + 80) + 96) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = *(v1 + v7);
  v11 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1B798D338;

  return sub_1B79B0A90(a1, v8, v9, v1 + v6, v10, v11, v4, v15);
}

uint64_t objectdestroy_5Tm_0()
{
  sub_1B79599CC();

  return swift_deallocObject();
}

uint64_t sub_1B79B3A70(uint64_t a1)
{
  v4 = v1[5];
  v11 = v1[4];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[2];
  v8 = v1[3];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1B798D54C;

  return sub_1B79B2AF4(a1, v7, v8, (v1 + 12), v11, v4, v5, v6);
}

__n128 FlowBackActionImplementation.init<A>(following:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (**a6)(uint64_t a1, uint64_t a2)@<X8>)
{
  v12 = *a1;
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  *(v13 + 32) = a4;
  *(v13 + 40) = a5;
  *(v13 + 48) = v12;
  result = *(a1 + 1);
  *(v13 + 56) = result;
  *a6 = sub_1B79B3FDC;
  a6[1] = v13;
  return result;
}

uint64_t sub_1B79B3BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (sub_1B7A99FE0() == a1 && v10 == a2)
  {

LABEL_5:
    v33 = a3;
    v34 = a4;
    v35 = a5;
    v12 = type metadata accessor for FlowAuthority();
    v13 = sub_1B7A98870();
    MEMORY[0x1B8CA9A40](&v32, v13);
    sub_1B7A2A358(v12);
LABEL_6:

    sub_1B7A887C0();
LABEL_7:

    return 1;
  }

  v11 = sub_1B7A9AE80();

  if (v11)
  {
    goto LABEL_5;
  }

  if (sub_1B7A99FC0() == a1 && v15 == a2)
  {

LABEL_13:
    v33 = a3;
    v34 = a4;
    v35 = a5;
    v17 = type metadata accessor for FlowAuthority();
    v18 = sub_1B7A98870();
    MEMORY[0x1B8CA9A40](&v32, v18);
    sub_1B7A2A358(v17);

    sub_1B7A88ABC();
    goto LABEL_7;
  }

  v16 = sub_1B7A9AE80();

  if (v16)
  {
    goto LABEL_13;
  }

  if (sub_1B7A99FB0() == a1 && v19 == a2)
  {

    goto LABEL_18;
  }

  v20 = sub_1B7A9AE80();

  if (v20)
  {
LABEL_18:
    v33 = a3;
    v34 = a4;
    v35 = a5;
    v21 = type metadata accessor for FlowAuthority();
    v22 = sub_1B7A98870();
    MEMORY[0x1B8CA9A40](&v32, v22);
    v23 = sub_1B7A2A370(v21);

    if (!v23)
    {
      return 1;
    }

    goto LABEL_19;
  }

  if (sub_1B7A99FD0() == a1 && v24 == a2)
  {
  }

  else
  {
    v25 = sub_1B7A9AE80();

    if ((v25 & 1) == 0)
    {
      return 0;
    }
  }

  v33 = a3;
  v34 = a4;
  v35 = a5;
  v26 = type metadata accessor for FlowAuthority();
  v27 = sub_1B7A98870();
  MEMORY[0x1B8CA9A40](&v32);
  sub_1B7A2A358(v26);

  v28 = sub_1B7A88DD8();

  if ((v28 & 1) == 0)
  {
    v33 = a3;
    v34 = a4;
    v35 = a5;
    MEMORY[0x1B8CA9A40](&v32, v27);
    sub_1B7A2A358(v26);
    goto LABEL_6;
  }

  v33 = a3;
  v34 = a4;
  v35 = a5;
  MEMORY[0x1B8CA9A40](&v32, v27);
  v29 = sub_1B7A2A370(v26);

  if (v29)
  {
    v30 = sub_1B7A29318();

    if (v30)
    {
      v33 = a3;
      v34 = a4;
      v35 = a5;
      MEMORY[0x1B8CA9A40](&v32, v27);
      v31 = sub_1B7A2A370(v26);

      if (!v31)
      {
        return 1;
      }

LABEL_19:
      sub_1B7A29044();
      goto LABEL_7;
    }
  }

  return 0;
}

uint64_t sub_1B79B401C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  sub_1B7A9A760();
  v4[6] = sub_1B7A9A750();
  v6 = sub_1B7A9A710();

  return MEMORY[0x1EEE6DFA0](sub_1B79B40B8, v6, v5);
}

uint64_t sub_1B79B40B8()
{
  v1 = v0[3];
  v2 = v0[2];

  v3 = sub_1B7A99FF0();
  v4 = v1(v3);

  v5 = sub_1B7A98FA0();
  v6 = MEMORY[0x1E69AB010];
  if ((v4 & 1) == 0)
  {
    v6 = MEMORY[0x1E69AB008];
  }

  (*(*(v5 - 8) + 104))(v2, *v6, v5);
  v7 = v0[1];

  return v7();
}

uint64_t sub_1B79B41AC(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B40);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v21 - v6;
  v8 = sub_1B7A9A000();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = *v2;
  v12 = v2[1];
  (*(v9 + 16))(&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8, v11);
  v14 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = *(a2 + 16);
  *(v15 + 3) = v13;
  *(v15 + 4) = v12;
  (*(v9 + 32))(&v15[v14], &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  v16 = swift_allocObject();
  *(v16 + 16) = &unk_1B7A9EDE8;
  *(v16 + 24) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46FF0);

  v17 = sub_1B7A9A150();
  v18 = sub_1B7A9A7E0();
  (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_1B7A9EDF0;
  v19[5] = v16;
  v19[6] = v17;

  sub_1B7A64074(0, 0, v7, &unk_1B7A9EE00, v19);

  return v17;
}

uint64_t sub_1B79B444C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B79B4488(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1B79B44D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B79B4524(uint64_t a1)
{
  v4 = *(sub_1B7A9A000() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B798D338;

  return sub_1B79B401C(a1, v6, v7, v1 + v5);
}

uint64_t sub_1B79B461C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B798D338;

  return sub_1B79DC72C(a1, v4);
}

uint64_t sub_1B79B46D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1B798D54C;

  return sub_1B7A63CF8(a1, v4, v5, v6, v7, v8);
}

uint64_t View.impressionableClickLocation(impressionMetrics:position:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C90);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465D0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v15 - v12;
  sub_1B7957820(a1, v10, &qword_1EBA45C90);
  sub_1B7A995C0();
  View.impressionableClickLocation(data:)(v13, a4, a5);
  return sub_1B7957888(v13, &qword_1EBA465D0);
}

uint64_t sub_1B79B4908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a1;
  v30 = a2;
  v3 = type metadata accessor for ClickLocationViewModifier();
  v28 = *(v3 - 8);
  v4 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &KeyPath - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D18);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &KeyPath - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46FF8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &KeyPath - v12;
  KeyPath = swift_getKeyPath();
  sub_1B7957820(v2 + *(v3 + 24), v7, &qword_1EBA465D0);
  v14 = sub_1B7A995F0();
  v15 = (*(*(v14 - 8) + 48))(v7, 1, v14);
  sub_1B7957888(v7, &qword_1EBA465D0);
  if (v15 == 1)
  {
    v16 = v2;
    sub_1B797BEA8(v10);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CF8);
    v16 = v2;
    sub_1B7A986D0();
    v17 = sub_1B7A96C20();
    (*(*(v17 - 8) + 56))(v10, 0, 1, v17);
  }

  v18 = &v13[*(v11 + 36)];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45EB0);
  sub_1B797E788(v10, v18 + *(v19 + 28), &qword_1EBA45D18);
  *v18 = KeyPath;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47000);
  (*(*(v20 - 8) + 16))(v13, v29, v20);
  sub_1B79B556C(v16, &KeyPath - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v22 = swift_allocObject();
  sub_1B79B55D0(&KeyPath - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
  v23 = swift_getKeyPath();
  v24 = v30;
  sub_1B797E788(v13, v30, &qword_1EBA46FF8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47008);
  v26 = v24 + *(result + 36);
  *v26 = sub_1B79B5634;
  *(v26 + 8) = v22;
  *(v26 + 16) = v23;
  *(v26 + 24) = 0;
  *(v26 + 32) = 0;
  return result;
}

uint64_t sub_1B79B4CF4()
{
  sub_1B79B56A4();

  return sub_1B7A97890();
}

uint64_t sub_1B79B4D7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D18);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  sub_1B7957820(a1, &v9 - v6, &qword_1EBA45D18);
  sub_1B7957820(v7, v4, &qword_1EBA45D18);
  sub_1B79B56A4();
  sub_1B7A978A0();
  return sub_1B7957888(v7, &qword_1EBA45D18);
}

uint64_t sub_1B79B4EC4(int a1, uint64_t a2)
{
  v48 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D18);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v42 = &v38 - v4;
  v5 = sub_1B7A96C20();
  v46 = *(v5 - 8);
  v47 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v45 = &v38 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46650);
  v51 = *(v9 - 8);
  v52 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v38 - v10;
  v12 = sub_1B7A99900();
  v49 = *(v12 - 8);
  v50 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465D0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v38 - v16;
  v18 = sub_1B7A995F0();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v40 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v43 = &v38 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v38 - v24;
  v41 = type metadata accessor for ClickLocationViewModifier();
  sub_1B7957820(a2 + *(v41 + 24), v17, &qword_1EBA465D0);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    return sub_1B7957888(v17, &qword_1EBA465D0);
  }

  (*(v19 + 32))(v25, v17, v18);
  sub_1B797BE80(v14);
  sub_1B7A998A0();
  sub_1B7A99850();
  sub_1B7A99910();
  (*(v51 + 8))(v11, v52);
  (*(v49 + 8))(v14, v50);
  if (!v53)
  {
    return (*(v19 + 8))(v25, v18);
  }

  if ((v48 & 1) == 0)
  {
    sub_1B7A99830();

    return (*(v19 + 8))(v25, v18);
  }

  v27 = v42;
  sub_1B797BEA8(v42);
  v28 = v46;
  v29 = v47;
  if ((*(v46 + 48))(v27, 1, v47) == 1)
  {
    sub_1B7957888(v27, &qword_1EBA45D18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CF8);
    v30 = v44;
    sub_1B7A986D0();
    sub_1B7A96C00();
    (*(v28 + 8))(v30, v29);
    v31 = v43;
    sub_1B7A995B0();

    sub_1B7A99820();

    v32 = *(v19 + 8);
    v32(v31, v18);
    return (v32)(v25, v18);
  }

  else
  {
    (*(v28 + 32))(v45, v27, v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CF8);
    v33 = v44;
    sub_1B7A986D0();
    sub_1B7A96C00();
    v52 = *(v28 + 8);
    v52(v33, v29);
    v34 = v40;
    v39 = v25;
    sub_1B7A995B0();

    v35 = v45;
    sub_1B7A96C00();
    v36 = v43;
    sub_1B7A995D0();

    v37 = *(v19 + 8);
    v37(v34, v18);
    sub_1B7A99820();

    v37(v36, v18);
    v52(v35, v29);
    return (v37)(v39, v18);
  }
}

uint64_t sub_1B79B556C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClickLocationViewModifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B79B55D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClickLocationViewModifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B79B5634(int a1)
{
  v3 = *(type metadata accessor for ClickLocationViewModifier() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1B79B4EC4(a1, v4);
}

unint64_t sub_1B79B56A4()
{
  result = qword_1EDC0FDA0;
  if (!qword_1EDC0FDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC0FDA0);
  }

  return result;
}

unint64_t sub_1B79B5708()
{
  result = qword_1EDC0FD30;
  if (!qword_1EDC0FD30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47008);
    sub_1B79B5794();
    sub_1B797D3EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC0FD30);
  }

  return result;
}

unint64_t sub_1B79B5794()
{
  result = qword_1EDC0FD50;
  if (!qword_1EDC0FD50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46FF8);
    sub_1B797EC34(&qword_1EDC0FD00, &qword_1EBA47000);
    sub_1B797EC34(&qword_1EDC0FCD0, &qword_1EBA45EB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC0FD50);
  }

  return result;
}

uint64_t sub_1B79B5878(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B7A97B10();
  MEMORY[0x1EEE9AC00](v4);
  (*(*(a2 - 8) + 16))(&v7 - v5, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_1B7A97B30();
}

uint64_t Component.model(_:)(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  return View.dataObject<A>(_:)(a1, a2, AssociatedTypeWitness);
}

uint64_t Component.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v2, a1, v5);
  return _ComponentBody.init(_:)(v7, a1, a2);
}

uint64_t _ComponentBody.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = (a3 + *(type metadata accessor for _ComponentBody() + 36));
  swift_getAssociatedTypeWitness();
  *v6 = sub_1B7A64A18();
  v6[1] = v7;
  v8 = *(*(a2 - 8) + 32);

  return v8(a3, a1, a2);
}

uint64_t sub_1B79B5B94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + *(a1 + 36));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  return sub_1B7A64D4C(v4, AssociatedTypeWitness, a2);
}

uint64_t _ComponentBody.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v119 = a2;
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v110 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v92 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v90 = &v88 - v6;
  v7 = type metadata accessor for ComponentMenuContent();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = sub_1B79B77FC(&qword_1EBA47010, type metadata accessor for ComponentMenuContent);
  v131 = AssociatedTypeWitness;
  v132 = v7;
  v133 = AssociatedConformanceWitness;
  v134 = v9;
  v121 = MEMORY[0x1E697CDD8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v91 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v89 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v88 = &v88 - v12;
  v13 = swift_getAssociatedTypeWitness();
  v108 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v107 = &v88 - v14;
  v102 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v97 = v16;
  v100 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47018);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v96 = &v88 - v18;
  v123 = AssociatedConformanceWitness;
  v124 = AssociatedTypeWitness;
  v19 = type metadata accessor for ActionButton();
  v105 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v103 = &v88 - v20;
  WitnessTable = swift_getWitnessTable();
  v22 = swift_getAssociatedConformanceWitness();
  v131 = v19;
  v132 = v13;
  v133 = WitnessTable;
  v134 = v22;
  v23 = swift_getOpaqueTypeMetadata2();
  v98 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v94 = &v88 - v24;
  v106 = v19;
  v131 = v19;
  v132 = v13;
  v109 = v13;
  v95 = WitnessTable;
  v133 = WitnessTable;
  v134 = v22;
  v93 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v116 = v23;
  v117 = v9;
  v131 = v23;
  v132 = v7;
  v118 = v7;
  v120 = OpaqueTypeConformance2;
  v133 = OpaqueTypeConformance2;
  v134 = v9;
  v26 = swift_getOpaqueTypeMetadata2();
  v104 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v99 = &v88 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v101 = &v88 - v29;
  v30 = swift_getAssociatedTypeWitness();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v88 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v88 - v35;
  v112 = v26;
  v114 = sub_1B7A97B40();
  v113 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v121 = &v88 - v37;
  v38 = v110;
  v39 = v111;
  sub_1B79B5B94(v110, v36);
  v115 = v2;
  v40 = swift_getAssociatedConformanceWitness();
  sub_1B7A99140();
  v43 = *(v31 + 8);
  v41 = v31 + 8;
  v42 = v43;
  v43(v36, v30);
  if (v129)
  {
    sub_1B795C1E4(&v127, &v131);
    v44 = sub_1B7A96FC0();
    v45 = *(*(v44 - 8) + 56);
    v92 = v41;
    v46 = v96;
    v45(v96, 1, 1, v44);
    sub_1B7999E90(&v131, &v127);
    v91 = v42;
    v47 = v102;
    v48 = *(v102 + 16);
    v90 = v30;
    v49 = v33;
    v50 = v100;
    v48(v100, v39, v38);
    v51 = (*(v47 + 80) + 32) & ~*(v47 + 80);
    v52 = swift_allocObject();
    v97 = v40;
    v53 = v115;
    *(v52 + 16) = v115;
    *(v52 + 24) = v3;
    (*(v47 + 32))(v52 + v51, v50, v38);
    v54 = v103;
    ActionButton.init(role:action:label:)(v46, &v127, sub_1B79B6D54, v52, v103);
    sub_1B79B5B94(v38, v49);
    v55 = v107;
    (*(v3 + 72))(v49, v53, v3);
    v56 = v49;
    v57 = v90;
    v91(v56, v90);
    v58 = v94;
    v59 = v106;
    v60 = v109;
    sub_1B7A98110();
    (*(v108 + 8))(v55, v60);
    (*(v105 + 8))(v54, v59);
    v129 = v57;
    v130 = v97;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v127);
    sub_1B79B5B94(v38, boxed_opaque_existential_1Tm);
    v62 = v99;
    v63 = v116;
    v64 = v120;
    sub_1B79B6B48(&v127, v116, v120, v99);
    (*(v98 + 8))(v58, v63);
    __swift_destroy_boxed_opaque_existential_1(&v127);
    v66 = v117;
    v65 = v118;
    *&v127 = v63;
    *(&v127 + 1) = v118;
    v128 = v64;
    v129 = v117;
    v67 = swift_getOpaqueTypeConformance2();
    v68 = v101;
    v69 = v112;
    sub_1B7957EE0(v62, v112, v67);
    v70 = *(v104 + 8);
    v70(v62, v69);
    sub_1B7957EE0(v68, v69, v67);
    *&v127 = v124;
    *(&v127 + 1) = v65;
    v128 = v123;
    v129 = v66;
    swift_getOpaqueTypeConformance2();
    sub_1B79B5878(v62, v69);
    v71 = v62;
    v72 = v120;
    v70(v71, v69);
    v70(v68, v69);
    __swift_destroy_boxed_opaque_existential_1(&v131);
  }

  else
  {
    sub_1B79B69B8(&v127);
    sub_1B79B5B94(v38, v33);
    v73 = v90;
    (*(v3 + 64))(v33, v115, v3);
    v42(v33, v30);
    v134 = v30;
    v135 = v40;
    v74 = __swift_allocate_boxed_opaque_existential_1Tm(&v131);
    sub_1B79B5B94(v38, v74);
    v75 = v89;
    v77 = v123;
    v76 = v124;
    sub_1B79B6B48(&v131, v124, v123, v89);
    (*(v92 + 8))(v73, v76);
    __swift_destroy_boxed_opaque_existential_1(&v131);
    v66 = v117;
    v65 = v118;
    v131 = v76;
    v132 = v118;
    v133 = v77;
    v134 = v117;
    v115 = MEMORY[0x1E697CDD8];
    v78 = swift_getOpaqueTypeConformance2();
    v79 = v88;
    v80 = OpaqueTypeMetadata2;
    sub_1B7957EE0(v75, OpaqueTypeMetadata2, v78);
    v81 = *(v91 + 1);
    v81(v75, v80);
    sub_1B7957EE0(v79, v80, v78);
    v63 = v116;
    v131 = v116;
    v132 = v65;
    v72 = v120;
    v133 = v120;
    v134 = v66;
    swift_getOpaqueTypeConformance2();
    sub_1B7959A28(v75, v112, v80);
    v81(v75, v80);
    v81(v79, v80);
  }

  v131 = v63;
  v132 = v65;
  v133 = v72;
  v134 = v66;
  v82 = swift_getOpaqueTypeConformance2();
  v131 = v124;
  v132 = v65;
  v133 = v123;
  v134 = v66;
  v83 = swift_getOpaqueTypeConformance2();
  v125 = v82;
  v126 = v83;
  v84 = v114;
  v85 = swift_getWitnessTable();
  v86 = v121;
  sub_1B7957EE0(v121, v84, v85);
  return (*(v113 + 8))(v86, v84);
}

uint64_t sub_1B79B69B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47020);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B79B6A20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v11 - v7;
  v9 = type metadata accessor for _ComponentBody();
  sub_1B79B5B94(v9, v8);
  (*(a3 + 64))(v8, a2, a3);
  return (*(v6 + 8))(v8, AssociatedTypeWitness);
}

uint64_t sub_1B79B6B48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20[1] = a4;
  v7 = type metadata accessor for ComponentMenuContent();
  v8 = sub_1B79B77FC(&qword_1EBA47010, type metadata accessor for ComponentMenuContent);
  v21 = a2;
  v22 = v7;
  v23 = a3;
  v24 = v8;
  v20[0] = MEMORY[0x1E697CDD8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v10 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v20 - v14;
  v20[4] = a1;
  v16 = swift_checkMetadataState();
  sub_1B7A98130();
  v21 = a2;
  v22 = v16;
  v23 = a3;
  v24 = v8;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1B7957EE0(v12, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v18 = *(v10 + 8);
  v18(v12, OpaqueTypeMetadata2);
  sub_1B7957EE0(v15, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v18)(v15, OpaqueTypeMetadata2);
}

uint64_t sub_1B79B6D54()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for _ComponentBody() - 8);
  v4 = v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1B79B6A20(v4, v1, v2);
}

uint64_t sub_1B79B6DE4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7A99120();
  v4 = type metadata accessor for ComponentMenuContent();
  sub_1B7999E90(a1, a2 + v4[5]);
  v5 = a2 + v4[6];
  *v5 = swift_getKeyPath();
  *(v5 + 40) = 0;
  v6 = a2 + v4[7];
  KeyPath = swift_getKeyPath();

  *v6 = KeyPath;
  *(v6 + 8) = 0;
  return result;
}

uint64_t _ComponentBodyButtonStyle.makeBody(configuration:)(uint64_t a1)
{
  v2 = sub_1B7A97E60();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47028);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - v9;
  (*(v3 + 16))(v5, a1, v2, v8);
  sub_1B7A98750();
  sub_1B79B70C0();
  sub_1B79B7124();
  sub_1B7A98120();
  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1B79B70C0()
{
  result = qword_1EBA47030;
  if (!qword_1EBA47030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47028);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA47030);
  }

  return result;
}

unint64_t sub_1B79B7124()
{
  result = qword_1EBA47038;
  if (!qword_1EBA47038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA47038);
  }

  return result;
}

uint64_t sub_1B79B71D8(uint64_t a1)
{
  v2 = sub_1B7A97E60();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47028);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - v9;
  (*(v3 + 16))(v5, a1, v2, v8);
  sub_1B7A98750();
  sub_1B79B70C0();
  sub_1B79B7124();
  sub_1B7A98120();
  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1B79B7380()
{
  result = qword_1EBA47040[0];
  if (!qword_1EBA47040[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBA47040);
  }

  return result;
}

uint64_t sub_1B79B73FC()
{
  v0 = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    v0 = type metadata accessor for DataObject();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v0;
}

uint64_t sub_1B79B74B0(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFE)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    v18 = v17 - 1;
    if (v18 < 0)
    {
      v18 = -1;
    }

    return (v18 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

unsigned int *sub_1B79B75F8(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFE)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (a2 > 0x7FFFFFFE)
    {
      *v18 = a2 - 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      *v18 = a2;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t sub_1B79B77FC(unint64_t *a1, void (*a2)(uint64_t))
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

void Models.AlertAction.init(contentUnavailableError:retry:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v84 = a3;
  v76 = a2;
  v83 = a4;
  v5 = sub_1B7A98F40();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v82 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA470D0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v81 = &v62 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA470D8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v63 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v65 = &v62 - v12;
  v13 = sub_1B7A98F80();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v80 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_1B7A99F00();
  v71 = *(v86 - 8);
  v72 = v86 - 8;
  v73 = v71;
  MEMORY[0x1EEE9AC00](v86 - 8);
  v62 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v64 = &v62 - v17;
  v18 = sub_1B7A98CC0();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v68 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_1B7A9A280();
  v70 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v67 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1B7A97880();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ContentUnavailableTextLogBuilder();
  inited = swift_initStackObject();
  inited[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA470E0);
  v26 = swift_allocObject();
  *(v26 + 20) = 0;
  *(v26 + 16) = 2;
  inited[3] = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBA470E8);
  v27 = swift_allocObject();
  *(v27 + 20) = 0;
  *(v27 + 16) = 2;
  inited[4] = v27;
  v28 = a1;
  v29 = a1;
  v30 = sub_1B7A4309C();
  v32 = v31;
  v34 = v33;

  sub_1B7A97870();
  v78 = sub_1B7A98050();
  v77 = v35;
  sub_1B795A450(v30, v32, v34 & 1);

  v36 = *(v22 + 8);
  v36(v24, v21);
  v37 = a1;

  v85 = a1;
  v38 = sub_1B7A38084(a1, inited);
  v40 = v39;
  LOBYTE(v32) = v41;
  sub_1B7A97870();
  v75 = sub_1B7A98050();
  v74 = v42;
  sub_1B795A450(v38, v40, v32 & 1);

  v36(v24, v21);
  v43 = v67;
  sub_1B7A9A200();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464D8);
  sub_1B7A98D10();
  v44 = swift_allocObject();
  v66 = xmmword_1B7A9C180;
  *(v44 + 16) = xmmword_1B7A9C180;
  sub_1B7A98CB0();
  sub_1B7A98CA0();
  v79 = inited;
  v45 = sub_1B7A3852C();
  *(&v88 + 1) = MEMORY[0x1E69E6158];
  *&v87 = v45;
  *(&v87 + 1) = v46;
  sub_1B7A98C70();
  sub_1B7957888(&v87, &qword_1EBA46B50);
  sub_1B7A98CA0();
  sub_1B7A98CD0();
  v47 = v69;
  sub_1B7A99E30();

  (*(v70 + 8))(v43, v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46410);
  v48 = v73;
  v49 = swift_allocObject();
  *(v49 + 16) = v66;
  if (qword_1EDC10A28 != -1)
  {
    swift_once();
  }

  sub_1B7A96AC0();
  v89 = 0;
  v87 = 0u;
  v88 = 0u;
  sub_1B7A99ED0();
  v50 = MEMORY[0x1E69AB020];
  v51 = v76;
  if (!v76)
  {
    v55 = v85;
    if ((sub_1B7A99DD0() & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  sub_1B7A96AC0();
  sub_1B7A98F70();
  *(&v88 + 1) = sub_1B7A98FC0();
  v89 = v50;
  __swift_allocate_boxed_opaque_existential_1Tm(&v87);

  sub_1B7A98FB0();
  v52 = v64;
  sub_1B7A99ED0();
  v53 = v65;
  (*(v48 + 32))(v65, v52, v86);
  v90 = v49;
  v54 = *(v49 + 16);
  v55 = v85;
  if (v54 >= *(v49 + 24) >> 1)
  {
    v49 = sub_1B7987A70(1uLL, v54 + 1, 1, v49);
    v90 = v49;
  }

  sub_1B79B8434(0, 0, 1, v53);
  sub_1B7974C44(v51);
  v50 = MEMORY[0x1E69AB020];
  if (sub_1B7A99DD0())
  {
LABEL_9:
    sub_1B7A96AC0();
    sub_1B7A98F70();
    *(swift_allocObject() + 16) = v55;
    *(&v88 + 1) = sub_1B7A98FC0();
    v89 = v50;
    __swift_allocate_boxed_opaque_existential_1Tm(&v87);
    v56 = v55;
    sub_1B7A98FB0();
    v57 = v62;
    sub_1B7A99ED0();
    v58 = v63;
    (*(v48 + 32))(v63, v57, v86);
    v90 = v49;
    v59 = *(v49 + 16);
    if (v59 >= *(v49 + 24) >> 1)
    {
      v90 = sub_1B7987A70(1uLL, v59 + 1, 1, v49);
    }

    sub_1B79B8434(0, 0, 1, v58);
  }

LABEL_12:
  sub_1B7A98F70();
  v60 = sub_1B7A99F30();
  (*(*(v60 - 8) + 56))(v81, 1, 1, v60);
  sub_1B7A98F30();
  sub_1B7A99E90();
  v61 = v79;
  swift_setDeallocating();

  sub_1B7974C44(v51);
}

void sub_1B79B8370()
{
  v0 = [objc_opt_self() generalPasteboard];
  v1 = sub_1B7A96B00();
  v2 = AMSLogableError();

  sub_1B7A9A4B0();
  v3 = sub_1B7A9A480();
  [v0 setString_];
}

unint64_t sub_1B79B8434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = sub_1B7A99F00();
  v11 = *(result - 8);
  v12 = *(v11 + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v14 = result;
  v25 = a4;
  v15 = v9 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v16 = v15 + v12 * a1;
  result = swift_arrayDestroy();
  v17 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v18 = v12 * a3;
  if (v17)
  {
    v19 = *(v9 + 16);
    if (!__OFSUB__(v19, a2))
    {
      result = v16 + v18;
      v20 = v15 + v12 * a2;
      if (v16 + v18 < v20 || result >= v20 + (v19 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v20)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v22 = *(v9 + 16);
      v23 = __OFADD__(v22, v17);
      v24 = v22 + v17;
      if (!v23)
      {
        *(v9 + 16) = v24;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_1B7957888(v25, &qword_1EBA470D8);
  }

  if (v18 < 1)
  {
    return sub_1B7957888(v25, &qword_1EBA470D8);
  }

  result = (*(v11 + 16))(v16, v25, v14);
  if (v12 >= v18)
  {
    return sub_1B7957888(v25, &qword_1EBA470D8);
  }

LABEL_23:
  __break(1u);
  return result;
}

unint64_t sub_1B79B85EC(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *v3;
  v8 = v7 + 32 + 40 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46408);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_14;
  }

  result = v8 + 40 * a3;
  v13 = (v7 + 32 + 40 * a2);
  if (result != v13 || result >= v13 + 40 * v12)
  {
    result = memmove(result, v13, 40 * v12);
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v7 + 16) = v15;
LABEL_10:
  if (a3 > 0)
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

unint64_t sub_1B79B86D8(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1B79B8798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = _s13PopupHUDModelC8RowModelVMa(0);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t View.dispatch<A>(_:into:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v41 = a8;
  v38 = a5;
  v39 = a1;
  v40 = a2;
  v33 = a6;
  swift_getAssociatedTypeWitness();
  v32 = a7;
  swift_getAssociatedTypeWitness();
  type metadata accessor for IntentResult();
  v11 = sub_1B7A98870();
  v36 = *(v11 - 8);
  v37 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v35 = &v31 - v12;
  v13 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for _ContinuousIntentDispatchWorker();
  WitnessTable = swift_getWitnessTable();
  v18 = type metadata accessor for _IntentDispatchViewModifier();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v31 - v20;
  v22 = swift_allocObject();
  v22[2] = a3;
  v22[3] = a4;
  v23 = a3;
  v25 = v38;
  v24 = v39;
  v26 = v32;
  v27 = v33;
  v22[4] = v38;
  v22[5] = v27;
  v22[6] = v26;
  (*(v13 + 16))(v16, v24, a4);
  v28 = v35;
  (*(v36 + 16))(v35, v40, v37);
  v29 = sub_1B79B8F04(sub_1B79C9444, v22, v16, v28, v17, WitnessTable, v21);
  MEMORY[0x1B8CA96D0](v21, v23, v18, v25, v29);
  return (*(v19 + 8))(v21, v18);
}

uint64_t View.dispatch<A>(_:into:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v35 = a7;
  v32 = a5;
  v33 = a1;
  v34 = a2;
  v27 = a6;
  swift_getAssociatedTypeWitness();
  type metadata accessor for IntentResult();
  v9 = sub_1B7A98870();
  v30 = *(v9 - 8);
  v31 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v29 = &v27 - v10;
  v11 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for _OneShotIntentDispatchWorker();
  WitnessTable = swift_getWitnessTable();
  v16 = type metadata accessor for _IntentDispatchViewModifier();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v27 - v18;
  v20 = swift_allocObject();
  v20[2] = a3;
  v20[3] = a4;
  v22 = v32;
  v21 = v33;
  v23 = v27;
  v20[4] = v32;
  v20[5] = v23;
  (*(v11 + 16))(v14, v21, a4);
  v24 = v29;
  (*(v30 + 16))(v29, v34, v31);
  v25 = sub_1B79B8F04(sub_1B79C9440, v20, v14, v24, v15, WitnessTable, v19);
  MEMORY[0x1B8CA96D0](v19, a3, v16, v22, v25);
  return (*(v17 + 8))(v19, v16);
}

double sub_1B79B8F04@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v12 = type metadata accessor for _IntentDispatchViewModifier();
  v13 = a7 + v12[12];
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  v14 = a7 + v12[13];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v16 = type metadata accessor for _IntentObserverKey();
  type metadata accessor for _IntentProgress();
  swift_getFunctionTypeMetadata1();
  v17 = sub_1B7A9AB60();
  WitnessTable = swift_getWitnessTable();
  sub_1B7A505FC(v16, v17, v16, WitnessTable);
  *v14 = v27;
  *(v14 + 16) = v28;
  v19 = swift_allocObject();
  v19[2] = a5;
  v19[3] = a6;
  v19[4] = a1;
  v19[5] = a2;
  *(a7 + 32) = sub_1B7A97110();
  *(a7 + 40) = v20;
  *(a7 + 48) = v21 & 1;
  (*(*(AssociatedTypeWitness - 8) + 32))(a7 + v12[10], a3, AssociatedTypeWitness);
  v22 = v12[11];
  swift_getAssociatedTypeWitness();
  type metadata accessor for IntentResult();
  v23 = sub_1B7A98870();
  (*(*(v23 - 8) + 32))(a7 + v22, a4, v23);
  result = 0.0;
  *a7 = 0u;
  *(a7 + 16) = 0u;
  return result;
}

uint64_t View.dispatch<A>(_:into:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v41 = a8;
  v35 = a6;
  v29 = a4;
  v39 = a2;
  v40 = a3;
  v37 = a1;
  v38 = sub_1B7A999B0();
  v36 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v34 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a7;
  swift_getAssociatedTypeWitness();
  type metadata accessor for IntentResult();
  v33 = sub_1B7A98870();
  v12 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v29 - v13;
  v14 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for _OneShotIntentDispatchWorker();
  WitnessTable = swift_getWitnessTable();
  v19 = type metadata accessor for _IntentDispatchViewModifier();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v29 - v21;
  v23 = swift_allocObject();
  v23[2] = a4;
  v23[3] = a5;
  v24 = v35;
  v25 = v30;
  v23[4] = v35;
  v23[5] = v25;
  (*(v14 + 16))(v17, v37, a5);
  v26 = v32;
  (*(v12 + 16))(v32, v39, v33);
  v27 = v34;
  (*(v36 + 16))(v34, v40, v38);
  sub_1B79B9500(sub_1B79B9844, v23, v17, v26, v27, v18, WitnessTable, v22);
  MEMORY[0x1B8CA96D0](v22, v29, v19, v24);
  return (*(v20 + 8))(v22, v19);
}

uint64_t sub_1B79B9500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v13 = type metadata accessor for _IntentDispatchViewModifier();
  v14 = a8 + v13[12];
  *v14 = swift_getKeyPath();
  *(v14 + 8) = 0;
  v15 = a8 + v13[13];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v17 = type metadata accessor for _IntentObserverKey();
  type metadata accessor for _IntentProgress();
  swift_getFunctionTypeMetadata1();
  v18 = sub_1B7A9AB60();
  WitnessTable = swift_getWitnessTable();
  sub_1B7A505FC(v17, v18, v17, WitnessTable);
  *v15 = v33;
  *(v15 + 16) = v34;
  v20 = swift_allocObject();
  v20[2] = a6;
  v20[3] = a7;
  v20[4] = a1;
  v20[5] = a2;

  *(a8 + 32) = sub_1B7A97110();
  *(a8 + 40) = v21;
  *(a8 + 48) = v22 & 1;
  v23 = *(AssociatedTypeWitness - 8);
  (*(v23 + 16))(a8 + v13[10], a3, AssociatedTypeWitness);
  v24 = v13[11];
  swift_getAssociatedTypeWitness();
  type metadata accessor for IntentResult();
  v25 = sub_1B7A98870();
  v26 = *(v25 - 8);
  (*(v26 + 16))(a8 + v24, a4, v25);
  v27 = sub_1B7A999B0();
  *(a8 + 24) = v27;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a8);
  (*(*(v27 - 8) + 32))(boxed_opaque_existential_1Tm, a5, v27);

  (*(v26 + 8))(a4, v25);
  return (*(v23 + 8))(a3, AssociatedTypeWitness);
}

uint64_t sub_1B79B9848()
{
  type metadata accessor for _OneShotIntentDispatchWorker();
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t View.dispatch<A>(_:into:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v46 = a9;
  v40 = a6;
  v33 = a4;
  v44 = a2;
  v45 = a3;
  v42 = a1;
  v43 = sub_1B7A999B0();
  v41 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v39 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a7;
  swift_getAssociatedTypeWitness();
  v34 = a8;
  swift_getAssociatedTypeWitness();
  type metadata accessor for IntentResult();
  v38 = sub_1B7A98870();
  v14 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v32 - v15;
  v16 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for _ContinuousIntentDispatchWorker();
  WitnessTable = swift_getWitnessTable();
  v21 = type metadata accessor for _IntentDispatchViewModifier();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v32 - v23;
  v25 = swift_allocObject();
  v25[2] = a4;
  v25[3] = a5;
  v26 = v40;
  v27 = v34;
  v28 = v35;
  v25[4] = v40;
  v25[5] = v28;
  v25[6] = v27;
  (*(v16 + 16))(v19, v42, a5);
  v29 = v37;
  (*(v14 + 16))(v37, v44, v38);
  v30 = v39;
  (*(v41 + 16))(v39, v45, v43);
  sub_1B79B9500(sub_1B79B9C3C, v25, v19, v29, v30, v20, WitnessTable, v24);
  MEMORY[0x1B8CA96D0](v24, v33, v21, v26);
  return (*(v22 + 8))(v24, v21);
}

uint64_t sub_1B79B9C40()
{
  type metadata accessor for _ContinuousIntentDispatchWorker();
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t View.dispatch<A, B>(_:into:following:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v47 = a9;
  v43 = a7;
  v44 = a1;
  v34 = a4;
  v45 = a2;
  v46 = a3;
  type metadata accessor for IntentResult();
  v13 = sub_1B7A98870();
  v41 = *(v13 - 8);
  v42 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v40 = &v33 - v14;
  v35 = a8;
  swift_getAssociatedTypeWitness();
  type metadata accessor for IntentResult();
  v15 = sub_1B7A98870();
  v38 = *(v15 - 8);
  v39 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v37 = &v33 - v16;
  v17 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for _OneShotIntentDispatchWorker();
  WitnessTable = swift_getWitnessTable();
  v22 = type metadata accessor for _IntentDispatchViewModifierFollowing();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v33 - v24;
  v26 = swift_allocObject();
  v26[2] = a4;
  v26[3] = a5;
  v28 = v43;
  v27 = v44;
  v26[4] = a6;
  v26[5] = v28;
  v26[6] = v35;
  (*(v17 + 16))(v20, v27, a5);
  v29 = v37;
  (*(v38 + 16))(v37, v45, v39);
  v30 = v40;
  (*(v41 + 16))(v40, v46, v42);
  v31 = sub_1B79BA028(sub_1B79C9448, v26, v20, v29, v30, v21, a6, WitnessTable, v25);
  MEMORY[0x1B8CA96D0](v25, v34, v22, v28, v31);
  return (*(v23 + 8))(v25, v22);
}

double sub_1B79BA028@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v14 = type metadata accessor for _IntentDispatchViewModifierFollowing();
  v15 = a9 + v14[15];
  *v15 = swift_getKeyPath();
  *(v15 + 8) = 0;
  v16 = a9 + v14[16];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v18 = type metadata accessor for _IntentObserverKey();
  type metadata accessor for _IntentProgress();
  swift_getFunctionTypeMetadata1();
  v19 = sub_1B7A9AB60();
  WitnessTable = swift_getWitnessTable();
  sub_1B7A505FC(v18, v19, v18, WitnessTable);
  *v16 = v33;
  *(v16 + 16) = v34;
  v21 = swift_allocObject();
  v21[2] = a6;
  v21[3] = a7;
  v21[4] = a8;
  v21[5] = a1;
  v21[6] = a2;
  *(a9 + 32) = sub_1B7A97110();
  *(a9 + 40) = v22;
  *(a9 + 48) = v23 & 1;
  (*(*(AssociatedTypeWitness - 8) + 32))(a9 + v14[12], a3, AssociatedTypeWitness);
  v24 = v14[13];
  swift_getAssociatedTypeWitness();
  type metadata accessor for IntentResult();
  v25 = sub_1B7A98870();
  (*(*(v25 - 8) + 32))(a9 + v24, a4, v25);
  v26 = v14[14];
  type metadata accessor for IntentResult();
  v27 = sub_1B7A98870();
  (*(*(v27 - 8) + 32))(a9 + v26, a5, v27);
  result = 0.0;
  *a9 = 0u;
  *(a9 + 16) = 0u;
  return result;
}

uint64_t View.dispatch<A, B>(_:into:following:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v51 = a5;
  v43 = a1;
  v44 = a8;
  v48 = a3;
  v49 = a4;
  v46 = a2;
  v50 = a9;
  v47 = sub_1B7A999B0();
  v45 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v42 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IntentResult();
  v13 = sub_1B7A98870();
  v40 = *(v13 - 8);
  v41 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v39 = &v34 - v14;
  v35 = a10;
  swift_getAssociatedTypeWitness();
  type metadata accessor for IntentResult();
  v38 = sub_1B7A98870();
  v15 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v34 - v16;
  v17 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for _OneShotIntentDispatchWorker();
  WitnessTable = swift_getWitnessTable();
  v34 = a7;
  v22 = type metadata accessor for _IntentDispatchViewModifierFollowing();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v34 - v24;
  v26 = swift_allocObject();
  v26[2] = v51;
  v26[3] = a6;
  v27 = a6;
  v28 = v43;
  v29 = v44;
  v26[4] = a7;
  v26[5] = v29;
  v26[6] = v35;
  (*(v17 + 16))(v20, v28, v27);
  v30 = v37;
  (*(v15 + 16))(v37, v46, v38);
  v31 = v39;
  (*(v40 + 16))(v39, v48, v41);
  v32 = v42;
  (*(v45 + 16))(v42, v49, v47);
  sub_1B79BA77C(sub_1B79BA744, v26, v20, v30, v31, v32, v21, v34, v25, WitnessTable);
  MEMORY[0x1B8CA96D0](v25, v51, v22, v29);
  return (*(v23 + 8))(v25, v22);
}

uint64_t sub_1B79BA748()
{
  type metadata accessor for _OneShotIntentDispatchWorker();
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t sub_1B79BA77C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v14 = type metadata accessor for _IntentDispatchViewModifierFollowing();
  v15 = a9 + v14[15];
  *v15 = swift_getKeyPath();
  *(v15 + 8) = 0;
  v16 = a9 + v14[16];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v18 = type metadata accessor for _IntentObserverKey();
  type metadata accessor for _IntentProgress();
  swift_getFunctionTypeMetadata1();
  v19 = sub_1B7A9AB60();
  WitnessTable = swift_getWitnessTable();
  sub_1B7A505FC(v18, v19, v18, WitnessTable);
  *v16 = v39;
  *(v16 + 16) = v40;
  v21 = swift_allocObject();
  v21[2] = a7;
  v21[3] = a8;
  v21[4] = a10;
  v21[5] = a1;
  v21[6] = a2;

  *(a9 + 32) = sub_1B7A97110();
  *(a9 + 40) = v22;
  *(a9 + 48) = v23 & 1;
  v24 = *(AssociatedTypeWitness - 8);
  (*(v24 + 16))(a9 + v14[12], a3, AssociatedTypeWitness);
  v25 = v14[13];
  swift_getAssociatedTypeWitness();
  type metadata accessor for IntentResult();
  v26 = sub_1B7A98870();
  v27 = *(v26 - 8);
  (*(v27 + 16))(a9 + v25, a4, v26);
  v28 = v14[14];
  type metadata accessor for IntentResult();
  v29 = sub_1B7A98870();
  v30 = *(v29 - 8);
  (*(v30 + 16))(a9 + v28, a5, v29);
  v31 = sub_1B7A999B0();
  *(a9 + 24) = v31;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a9);
  (*(*(v31 - 8) + 32))(boxed_opaque_existential_1Tm, a6, v31);

  (*(v30 + 8))(a5, v29);
  (*(v27 + 8))(a4, v26);
  return (*(v24 + 8))(a3, AssociatedTypeWitness);
}

uint64_t View.dispatch<A, B>(_:into:following:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v51 = a4;
  v46 = a7;
  v47 = a1;
  v48 = a2;
  v49 = a3;
  v50 = a9;
  type metadata accessor for IntentResult();
  v13 = sub_1B7A98870();
  v44 = *(v13 - 8);
  v45 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v43 = &v37 - v14;
  v39 = a8;
  swift_getAssociatedTypeWitness();
  v38 = a10;
  swift_getAssociatedTypeWitness();
  type metadata accessor for IntentResult();
  v42 = sub_1B7A98870();
  v15 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v41 = &v37 - v16;
  v17 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for _ContinuousIntentDispatchWorker();
  WitnessTable = swift_getWitnessTable();
  v22 = type metadata accessor for _IntentDispatchViewModifierFollowing();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v37 - v24;
  v26 = swift_allocObject();
  v26[2] = v51;
  v26[3] = a5;
  v27 = a5;
  v26[4] = a6;
  v28 = a6;
  v30 = v46;
  v29 = v47;
  v31 = v38;
  v32 = v39;
  v26[5] = v46;
  v26[6] = v32;
  v26[7] = v31;
  (*(v17 + 16))(v20, v29, v27);
  v33 = v41;
  (*(v15 + 16))(v41, v48, v42);
  v34 = v43;
  (*(v44 + 16))(v43, v49, v45);
  v35 = sub_1B79BA028(sub_1B79C944C, v26, v20, v33, v34, v21, v28, WitnessTable, v25);
  MEMORY[0x1B8CA96D0](v25, v51, v22, v30, v35);
  return (*(v23 + 8))(v25, v22);
}

uint64_t View.dispatch<A, B>(_:into:following:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v55 = a5;
  v47 = a8;
  v48 = a1;
  v52 = a3;
  v53 = a4;
  v50 = a2;
  v54 = a9;
  v51 = sub_1B7A999B0();
  v49 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v46 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IntentResult();
  v14 = sub_1B7A98870();
  v44 = *(v14 - 8);
  v45 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v43 = &v36 - v15;
  v38 = a10;
  swift_getAssociatedTypeWitness();
  v39 = a11;
  swift_getAssociatedTypeWitness();
  type metadata accessor for IntentResult();
  v42 = sub_1B7A98870();
  v16 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v41 = &v36 - v17;
  v18 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for _ContinuousIntentDispatchWorker();
  WitnessTable = swift_getWitnessTable();
  v37 = a7;
  v23 = type metadata accessor for _IntentDispatchViewModifierFollowing();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v36 - v25;
  v27 = swift_allocObject();
  v27[2] = v55;
  v27[3] = a6;
  v28 = a6;
  v30 = v47;
  v29 = v48;
  v27[4] = a7;
  v27[5] = v30;
  v31 = v39;
  v27[6] = v38;
  v27[7] = v31;
  (*(v18 + 16))(v21, v29, v28);
  v32 = v41;
  (*(v16 + 16))(v41, v50, v42);
  v33 = v43;
  (*(v44 + 16))(v43, v52, v45);
  v34 = v46;
  (*(v49 + 16))(v46, v53, v51);
  sub_1B79BA77C(sub_1B79BB37C, v27, v21, v32, v33, v34, v22, v37, v26, WitnessTable);
  MEMORY[0x1B8CA96D0](v26, v55, v23, v30);
  return (*(v24 + 8))(v26, v23);
}

uint64_t sub_1B79BB380()
{
  type metadata accessor for _ContinuousIntentDispatchWorker();
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t sub_1B79BB40C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  v6 = type metadata accessor for IntentResult();
  v7 = *(a2 + *(v6 + 28));
  (*(*(v6 - 8) + 8))(a2, v6);
  result = type metadata accessor for _DispatchID();
  *(a4 + *(result + 36)) = v7;
  v9 = a4 + *(result + 40);
  *v9 = 0;
  *(v9 + 8) = 0;
  *(v9 + 16) = 1;
  return result;
}

uint64_t sub_1B79BB4EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  v8 = type metadata accessor for IntentResult();
  v9 = *(a2 + *(v8 + 28));
  (*(*(v8 - 8) + 8))(a2, v8);
  v10 = type metadata accessor for _DispatchID();
  *(a5 + *(v10 + 36)) = v9;
  v11 = type metadata accessor for IntentResult();
  v12 = *(a3 + *(v11 + 28));
  v13 = *(a3 + *(v11 + 32));
  result = (*(*(v11 - 8) + 8))(a3, v11);
  v15 = a5 + *(v10 + 40);
  *v15 = v12;
  *(v15 + 8) = v13;
  *(v15 + 16) = 0;
  return result;
}

uint64_t sub_1B79BB628(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _DispatchID();
  if (*(a1 + *(v4 + 36)) != *(a2 + *(v4 + 36)))
  {
    goto LABEL_18;
  }

  v5 = *(v4 + 40);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 16);
  v8 = (a2 + v5);
  if (v7)
  {
    if (!*(v8 + 16))
    {
      goto LABEL_18;
    }
  }

  else
  {
    v9 = 0;
    v10 = *v8;
    if (*(v8 + 16))
    {
      v10 = 0;
    }

    if (v8[2])
    {
      return v9 & 1;
    }

    v11 = v8[1];
    if (*v6 != v10 || v6[1] != v11)
    {
      return v9 & 1;
    }
  }

  v13 = sub_1B7A98D90();
  v15 = v14;
  if (v13 == sub_1B7A98D90() && v15 == v16)
  {
  }

  else
  {
    v17 = sub_1B7A9AE80();

    if ((v17 & 1) == 0)
    {
LABEL_18:
      v9 = 0;
      return v9 & 1;
    }
  }

  sub_1B7A98D70();
  v18 = v30;
  v19 = __swift_project_boxed_opaque_existential_1(v29, v30);
  v28[3] = v18;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v28);
  (*(*(v18 - 8) + 16))(boxed_opaque_existential_1Tm, v19, v18);
  sub_1B7A98D70();
  v21 = v27;
  v22 = __swift_project_boxed_opaque_existential_1(v26, v27);
  v25[3] = v21;
  v23 = __swift_allocate_boxed_opaque_existential_1Tm(v25);
  (*(*(v21 - 8) + 16))(v23, v22, v21);
  v9 = sub_1B7A999A0();
  __swift_destroy_boxed_opaque_existential_1(v25);
  __swift_destroy_boxed_opaque_existential_1(v26);
  __swift_destroy_boxed_opaque_existential_1(v28);
  __swift_destroy_boxed_opaque_existential_1(v29);
  return v9 & 1;
}

uint64_t sub_1B79BB878()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_1B7A98D90();
}

uint64_t sub_1B79BB900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v84 = a1;
  v85 = a3;
  v83 = *(a2 - 8);
  v88 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v89 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v5 + 16);
  v6 = *(v5 + 24);
  v8 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for IntentResult();
  MEMORY[0x1EEE9AC00](v9);
  v77 = &v59 - v10;
  v86 = v6;
  v87 = v7;
  v11 = swift_getAssociatedTypeWitness();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v59 - v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = type metadata accessor for _DispatchID();
  v80 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v65 = &v59 - v17;
  swift_getWitnessTable();
  v18 = sub_1B7A97C30();
  v66 = v18;
  WitnessTable = swift_getWitnessTable();
  v70 = WitnessTable;
  v71 = v16;
  v69 = swift_getWitnessTable();
  v94 = v18;
  v95 = v16;
  v96 = WitnessTable;
  v97 = v69;
  v76 = MEMORY[0x1E6981448];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v79 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v61 = &v59 - v20;
  v67 = sub_1B7A97590();
  v81 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v68 = &v59 - v21;
  v63 = AssociatedConformanceWitness;
  type metadata accessor for _IntentProgress();
  swift_getFunctionTypeMetadata1();
  sub_1B7A9AB60();
  v74 = sub_1B7A97DF0();
  v75 = sub_1B7A97590();
  v78 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v64 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v72 = &v59 - v25;
  v26 = v8;
  v27 = *(v8 + 40);
  v28 = *(v12 + 16);
  v62 = v11;
  v28(v14, v3 + v27, v11, v24);
  v29 = sub_1B7A98870();
  v30 = v3;
  v60 = v3;
  v31 = v77;
  MEMORY[0x1B8CA9A40](v29);
  v32 = v65;
  sub_1B79BB40C(v14, v31, v11, v65);
  v33 = v83;
  AssociatedTypeWitness = *(v83 + 16);
  v34 = v89;
  v59 = v26;
  AssociatedTypeWitness(v89, v30, v26);
  v35 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v36 = swift_allocObject();
  v37 = v86;
  *(v36 + 16) = v87;
  *(v36 + 24) = v37;
  v83 = *(v33 + 32);
  (v83)(v36 + v35, v34, v26);
  v77 = swift_checkMetadataState();
  v38 = v32;
  v39 = v71;
  v40 = v70;
  v41 = v69;
  sub_1B7A984C0();

  (*(v80 + 8))(v38, v39);
  v42 = v89;
  v43 = v59;
  AssociatedTypeWitness(v89, v60, v59);
  v44 = swift_allocObject();
  v45 = v86;
  *(v44 + 16) = v87;
  *(v44 + 24) = v45;
  (v83)(v44 + v35, v42, v43);
  v94 = v77;
  v95 = v39;
  v96 = v40;
  v97 = v41;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v47 = v68;
  v48 = OpaqueTypeMetadata2;
  v49 = v61;
  sub_1B7A984A0();

  (*(v79 + 8))(v49, v48);
  v92 = OpaqueTypeConformance2;
  v93 = MEMORY[0x1E69805D0];
  v50 = v67;
  v51 = swift_getWitnessTable();
  v52 = v64;
  sub_1B79E3830(v62, 0, 0, v50, v62, v51, v63);
  (*(v81 + 8))(v47, v50);
  v53 = swift_getWitnessTable();
  v90 = v51;
  v91 = v53;
  v54 = v75;
  v55 = swift_getWitnessTable();
  v56 = v72;
  sub_1B7957EE0(v52, v54, v55);
  v57 = *(v78 + 8);
  v57(v52, v54);
  sub_1B7957EE0(v56, v54, v55);
  return (v57)(v56, v54);
}

uint64_t sub_1B79BC1F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B7A98C30();
  v66 = *(v6 - 8);
  v67 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v65 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B7A97880();
  v70 = *(v8 - 8);
  v71 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v69 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  type metadata accessor for IntentResult();
  v78 = sub_1B7A98870();
  v75 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v11 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v68 = &v64 - v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  v76 = AssociatedTypeWitness;
  v77 = v15;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v17 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v73 = &v64 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47318);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v64 - v21;
  v23 = sub_1B7A999B0();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v72 = &v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7A9A760();
  v74 = sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1B79C8388(a1, &v82);
  if (v84)
  {
    v26 = swift_dynamicCast();
    (*(v24 + 56))(v22, v26 ^ 1u, 1, v23);
    v27 = (*(v24 + 48))(v22, 1, v23);
    v28 = v76;
    if (v27 != 1)
    {
      (*(v24 + 32))(v72, v22, v23);
      v64 = sub_1B7A97120();
      v29 = type metadata accessor for _IntentDispatchViewModifier();
      (*(v77 + 16))(v73, a1 + v29[10], v28);
      v30 = v68;
      sub_1B7A98830();
      v31 = a1 + v29[12];
      v32 = *v31;
      if (*(v31 + 8) == 1)
      {
        *&v82 = *v31;

        if (!v32)
        {
          goto LABEL_19;
        }
      }

      else
      {

        sub_1B7A9AA10();
        v47 = sub_1B7A97E70();
        sub_1B7A96D30();

        v28 = v76;
        v48 = v69;
        sub_1B7A97870();
        swift_getAtKeyPath();
        j__swift_release();
        (*(v70 + 8))(v48, v71);
        v32 = v82;
        if (!v82)
        {
LABEL_19:
          sub_1B7A99300();
          sub_1B7A992B0();
          v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47320);
          v50 = swift_allocObject();
          v50[3] = 0;
          v50[4] = 0;
          v50[2] = &unk_1B7AA7E08;
          v51 = v65;
          MEMORY[0x1B8CA9E30](v49, &unk_1B7A9F4F8, v50, v49);
          v32 = sub_1B7A992C0();

          v52 = v51;
          v30 = v68;
          (*(v66 + 8))(v52, v67);
        }
      }

      v81 = v32;
      v53 = a1 + v29[13];
      v54 = *(v53 + 16);
      v82 = *v53;
      v83 = v54;
      swift_getAssociatedConformanceWitness();
      type metadata accessor for _IntentProgress();
      swift_getFunctionTypeMetadata1();
      sub_1B7A9AB60();
      sub_1B7A970E0();
      sub_1B7A970D0();
      v55 = v79;
      if (v79)
      {
        v56 = v80;
        v57 = swift_allocObject();
        v57[2] = a2;
        v57[3] = a3;
        v57[4] = v55;
        v57[5] = v56;
        v28 = v76;
        v58 = &unk_1B7A9F500;
      }

      else
      {
        v58 = 0;
        v57 = 0;
      }

      v59 = *(a3 + 48);
      v63 = a3;
      v61 = v72;
      v60 = v73;
      v59(1, v73, v30, &v81, v58, v57, v72, a2, v63);
      sub_1B7974C44(v58);
      swift_unknownObjectRelease();

      (*(v75 + 8))(v30, v78);
      (*(v77 + 8))(v60, v28);
      (*(v24 + 8))(v61, v23);
    }
  }

  else
  {
    sub_1B7957888(&v82, &qword_1EBA46B50);
    (*(v24 + 56))(v22, 1, 1, v23);
    v28 = v76;
  }

  sub_1B7957888(v22, &qword_1EBA47318);
  v73 = sub_1B7A97120();
  v33 = type metadata accessor for _IntentDispatchViewModifier();
  (*(v77 + 16))(v17, a1 + v33[10], v28);
  sub_1B7A98830();
  v34 = a1 + v33[12];
  v35 = *v34;
  if (*(v34 + 8) == 1)
  {
    *&v82 = *v34;

    if (!v35)
    {
      goto LABEL_13;
    }
  }

  else
  {

    sub_1B7A9AA10();
    v36 = sub_1B7A97E70();
    v28 = v76;
    sub_1B7A96D30();

    v37 = v69;
    sub_1B7A97870();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v70 + 8))(v37, v71);
    v35 = v82;
    if (!v82)
    {
LABEL_13:
      sub_1B7A99300();
      sub_1B7A992B0();
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47320);
      v39 = swift_allocObject();
      v39[3] = 0;
      v39[4] = 0;
      v39[2] = &unk_1B7AA7E08;
      v40 = v65;
      MEMORY[0x1B8CA9E30](v38, &unk_1B7A9F4E8, v39, v38);
      v35 = sub_1B7A992C0();

      (*(v66 + 8))(v40, v67);
    }
  }

  v81 = v35;
  v41 = a1 + v33[13];
  v42 = *(v41 + 16);
  v82 = *v41;
  v83 = v42;
  swift_getAssociatedConformanceWitness();
  type metadata accessor for _IntentProgress();
  swift_getFunctionTypeMetadata1();
  sub_1B7A9AB60();
  sub_1B7A970E0();
  sub_1B7A970D0();
  v43 = v79;
  if (v79)
  {
    v44 = v80;
    v45 = swift_allocObject();
    v45[2] = a2;
    v45[3] = a3;
    v45[4] = v43;
    v45[5] = v44;
    v46 = &unk_1B7A9F4F0;
  }

  else
  {
    v46 = 0;
    v45 = 0;
  }

  (*(a3 + 40))(1, v17, v11, &v81, v46, v45, a2, a3);
  sub_1B7974C44(v46);
  swift_unknownObjectRelease();

  (*(v75 + 8))(v11, v78);
  (*(v77 + 8))(v17, v28);
}

uint64_t sub_1B79BCDD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B7A98C30();
  v66 = *(v6 - 8);
  v67 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v65 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B7A97880();
  v70 = *(v8 - 8);
  v71 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v69 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  type metadata accessor for IntentResult();
  v78 = sub_1B7A98870();
  v75 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v11 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v68 = &v64 - v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  v76 = AssociatedTypeWitness;
  v77 = v15;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v17 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v73 = &v64 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47318);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v64 - v21;
  v23 = sub_1B7A999B0();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v72 = &v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7A9A760();
  v74 = sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1B79C8388(a1, &v82);
  if (v84)
  {
    v26 = swift_dynamicCast();
    (*(v24 + 56))(v22, v26 ^ 1u, 1, v23);
    v27 = (*(v24 + 48))(v22, 1, v23);
    v28 = v76;
    if (v27 != 1)
    {
      (*(v24 + 32))(v72, v22, v23);
      v64 = sub_1B7A97120();
      v29 = type metadata accessor for _IntentDispatchViewModifier();
      (*(v77 + 16))(v73, a1 + v29[10], v28);
      v30 = v68;
      sub_1B7A98830();
      v31 = a1 + v29[12];
      v32 = *v31;
      if (*(v31 + 8) == 1)
      {
        *&v82 = *v31;

        if (!v32)
        {
          goto LABEL_19;
        }
      }

      else
      {

        sub_1B7A9AA10();
        v47 = sub_1B7A97E70();
        sub_1B7A96D30();

        v28 = v76;
        v48 = v69;
        sub_1B7A97870();
        swift_getAtKeyPath();
        j__swift_release();
        (*(v70 + 8))(v48, v71);
        v32 = v82;
        if (!v82)
        {
LABEL_19:
          sub_1B7A99300();
          sub_1B7A992B0();
          v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47320);
          v50 = swift_allocObject();
          v50[3] = 0;
          v50[4] = 0;
          v50[2] = &unk_1B7AA7E08;
          v51 = v65;
          MEMORY[0x1B8CA9E30](v49, &unk_1B7A9F4D8, v50, v49);
          v32 = sub_1B7A992C0();

          v52 = v51;
          v30 = v68;
          (*(v66 + 8))(v52, v67);
        }
      }

      v81 = v32;
      v53 = a1 + v29[13];
      v54 = *(v53 + 16);
      v82 = *v53;
      v83 = v54;
      swift_getAssociatedConformanceWitness();
      type metadata accessor for _IntentProgress();
      swift_getFunctionTypeMetadata1();
      sub_1B7A9AB60();
      sub_1B7A970E0();
      sub_1B7A970D0();
      v55 = v79;
      if (v79)
      {
        v56 = v80;
        v57 = swift_allocObject();
        v57[2] = a2;
        v57[3] = a3;
        v57[4] = v55;
        v57[5] = v56;
        v28 = v76;
        v58 = &unk_1B7A9F4E0;
      }

      else
      {
        v58 = 0;
        v57 = 0;
      }

      v59 = *(a3 + 48);
      v63 = a3;
      v61 = v72;
      v60 = v73;
      v59(0, v73, v30, &v81, v58, v57, v72, a2, v63);
      sub_1B7974C44(v58);
      swift_unknownObjectRelease();

      (*(v75 + 8))(v30, v78);
      (*(v77 + 8))(v60, v28);
      (*(v24 + 8))(v61, v23);
    }
  }

  else
  {
    sub_1B7957888(&v82, &qword_1EBA46B50);
    (*(v24 + 56))(v22, 1, 1, v23);
    v28 = v76;
  }

  sub_1B7957888(v22, &qword_1EBA47318);
  v73 = sub_1B7A97120();
  v33 = type metadata accessor for _IntentDispatchViewModifier();
  (*(v77 + 16))(v17, a1 + v33[10], v28);
  sub_1B7A98830();
  v34 = a1 + v33[12];
  v35 = *v34;
  if (*(v34 + 8) == 1)
  {
    *&v82 = *v34;

    if (!v35)
    {
      goto LABEL_13;
    }
  }

  else
  {

    sub_1B7A9AA10();
    v36 = sub_1B7A97E70();
    v28 = v76;
    sub_1B7A96D30();

    v37 = v69;
    sub_1B7A97870();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v70 + 8))(v37, v71);
    v35 = v82;
    if (!v82)
    {
LABEL_13:
      sub_1B7A99300();
      sub_1B7A992B0();
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47320);
      v39 = swift_allocObject();
      v39[3] = 0;
      v39[4] = 0;
      v39[2] = &unk_1B7AA7E08;
      v40 = v65;
      MEMORY[0x1B8CA9E30](v38, &unk_1B7A9F4C0, v39, v38);
      v35 = sub_1B7A992C0();

      (*(v66 + 8))(v40, v67);
    }
  }

  v81 = v35;
  v41 = a1 + v33[13];
  v42 = *(v41 + 16);
  v82 = *v41;
  v83 = v42;
  swift_getAssociatedConformanceWitness();
  type metadata accessor for _IntentProgress();
  swift_getFunctionTypeMetadata1();
  sub_1B7A9AB60();
  sub_1B7A970E0();
  sub_1B7A970D0();
  v43 = v79;
  if (v79)
  {
    v44 = v80;
    v45 = swift_allocObject();
    v45[2] = a2;
    v45[3] = a3;
    v45[4] = v43;
    v45[5] = v44;
    v46 = &unk_1B7A9F4D0;
  }

  else
  {
    v46 = 0;
    v45 = 0;
  }

  (*(a3 + 40))(0, v17, v11, &v81, v46, v45, a2, a3);
  sub_1B7974C44(v46);
  swift_unknownObjectRelease();

  (*(v75 + 8))(v11, v78);
  (*(v77 + 8))(v17, v28);
}

uint64_t sub_1B79BD9C0()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_1B7A98D90();
}

uint64_t sub_1B79BDA4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v90 = a1;
  v91 = a3;
  v89 = *(a2 - 8);
  v94 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v97 = *(v6 + 24);
  v98 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for IntentResult();
  MEMORY[0x1EEE9AC00](v88);
  v81 = &v64 - v7;
  v8 = *(a2 + 32);
  v9 = *(a2 + 16);
  v10 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for IntentResult();
  MEMORY[0x1EEE9AC00](v11);
  v77 = &v64 - v12;
  v95 = v8;
  v96 = v9;
  v13 = swift_getAssociatedTypeWitness();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v64 - v15;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = type metadata accessor for _DispatchID();
  v85 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v92 = &v64 - v19;
  swift_getWitnessTable();
  v20 = v10;
  v21 = sub_1B7A97C30();
  v70 = v21;
  WitnessTable = swift_getWitnessTable();
  v73 = WitnessTable;
  v74 = v18;
  v72 = swift_getWitnessTable();
  v103 = v21;
  v104 = v18;
  v105 = WitnessTable;
  v106 = v72;
  v82 = MEMORY[0x1E6981448];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v84 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v93 = &v64 - v23;
  v71 = sub_1B7A97590();
  v87 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v75 = &v64 - v24;
  v68 = AssociatedConformanceWitness;
  type metadata accessor for _IntentProgress();
  swift_getFunctionTypeMetadata1();
  sub_1B7A9AB60();
  v79 = sub_1B7A97DF0();
  v80 = sub_1B7A97590();
  v83 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v69 = &v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v76 = &v64 - v28;
  v29 = *(v14 + 16);
  v30 = v3 + *(v20 + 48);
  v67 = v13;
  v29(v16, v30, v13, v27);
  v31 = v20;
  v32 = sub_1B7A98870();
  v33 = v77;
  MEMORY[0x1B8CA9A40](v32);
  v34 = sub_1B7A98870();
  v66 = v3;
  v35 = v81;
  MEMORY[0x1B8CA9A40](v34);
  v36 = v35;
  v37 = v97;
  sub_1B79BB4EC(v16, v33, v36, v13, v92);
  v38 = v89;
  v88 = *(v89 + 16);
  v39 = v98;
  v65 = v31;
  v88(v98, v3, v31);
  v40 = (*(v38 + 80) + 40) & ~*(v38 + 80);
  v41 = swift_allocObject();
  v42 = v95;
  v41[2] = v96;
  v41[3] = v37;
  v41[4] = v42;
  v89 = *(v38 + 32);
  (v89)(v41 + v40, v39, v31);
  AssociatedTypeWitness = swift_checkMetadataState();
  v43 = v92;
  v44 = v74;
  v45 = v73;
  v46 = v72;
  sub_1B7A984C0();

  (*(v85 + 8))(v43, v44);
  v47 = v98;
  v48 = v65;
  v88(v98, v66, v65);
  v49 = swift_allocObject();
  v50 = v97;
  v49[2] = v96;
  v49[3] = v50;
  v49[4] = v95;
  (v89)(v49 + v40, v47, v48);
  v103 = AssociatedTypeWitness;
  v104 = v44;
  v105 = v45;
  v106 = v46;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v52 = v75;
  v53 = OpaqueTypeMetadata2;
  v54 = v93;
  sub_1B7A984A0();

  (*(v84 + 8))(v54, v53);
  v101 = OpaqueTypeConformance2;
  v102 = MEMORY[0x1E69805D0];
  v55 = v71;
  v56 = swift_getWitnessTable();
  v57 = v69;
  sub_1B79E3830(v67, 0, 0, v55, v67, v56, v68);
  (*(v87 + 8))(v52, v55);
  v58 = swift_getWitnessTable();
  v99 = v56;
  v100 = v58;
  v59 = v80;
  v60 = swift_getWitnessTable();
  v61 = v76;
  sub_1B7957EE0(v57, v59, v60);
  v62 = *(v83 + 8);
  v62(v57, v59);
  sub_1B7957EE0(v61, v59, v60);
  return (v62)(v61, v59);
}

uint64_t sub_1B79BE3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v84 = a3;
  v75 = sub_1B7A98C30();
  v74 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v73 = v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B7A97880();
  v78 = *(v8 - 8);
  v79 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v77 = v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  type metadata accessor for IntentResult();
  v87 = sub_1B7A98870();
  v83 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v11 = v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v76 = v72 - v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  v85 = AssociatedTypeWitness;
  v86 = v15;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v17 = v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v81 = v72 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47318);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = v72 - v21;
  v23 = sub_1B7A999B0();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v80 = v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7A9A760();
  v82 = sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1B79C8388(a1, &v91);
  if (v93)
  {
    v26 = swift_dynamicCast();
    (*(v24 + 56))(v22, v26 ^ 1u, 1, v23);
    v27 = (*(v24 + 48))(v22, 1, v23);
    v28 = v85;
    if (v27 != 1)
    {
      (*(v24 + 32))(v80, v22, v23);
      v72[1] = sub_1B7A97120();
      v29 = type metadata accessor for _IntentDispatchViewModifierFollowing();
      (*(v86 + 16))(v81, a1 + v29[12], v28);
      v30 = v76;
      sub_1B7A98830();
      v31 = a1 + v29[15];
      v32 = *v31;
      if (*(v31 + 8) == 1)
      {
        *&v91 = *v31;

        if (!v32)
        {
          goto LABEL_19;
        }
      }

      else
      {

        sub_1B7A9AA10();
        v54 = sub_1B7A97E70();
        sub_1B7A96D30();

        v28 = v85;
        v55 = v77;
        sub_1B7A97870();
        swift_getAtKeyPath();
        j__swift_release();
        (*(v78 + 8))(v55, v79);
        v32 = v91;
        if (!v91)
        {
LABEL_19:
          sub_1B7A99300();
          sub_1B7A992B0();
          v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47320);
          v57 = swift_allocObject();
          v57[3] = 0;
          v57[4] = 0;
          v57[2] = &unk_1B7AA7E08;
          v58 = v73;
          MEMORY[0x1B8CA9E30](v56, &unk_1B7A9F568, v57, v56);
          v32 = sub_1B7A992C0();

          v59 = v58;
          v30 = v76;
          (*(v74 + 8))(v59, v75);
        }
      }

      v90 = v32;
      v60 = a1 + v29[16];
      v61 = *(v60 + 16);
      v91 = *v60;
      v92 = v61;
      swift_getAssociatedConformanceWitness();
      type metadata accessor for _IntentProgress();
      swift_getFunctionTypeMetadata1();
      sub_1B7A9AB60();
      sub_1B7A970E0();
      sub_1B7A970D0();
      v62 = v88;
      if (v88)
      {
        v63 = v89;
        v64 = swift_allocObject();
        v65 = v84;
        v64[2] = a2;
        v64[3] = v65;
        v64[4] = a4;
        v64[5] = v62;
        v64[6] = v63;
        v28 = v85;
        v66 = &unk_1B7A9F570;
      }

      else
      {
        v66 = 0;
        v64 = 0;
      }

      v67 = *(a4 + 48);
      v71 = a4;
      v69 = v80;
      v68 = v81;
      v67(1, v81, v30, &v90, v66, v64, v80, a2, v71);
      sub_1B7974C44(v66);
      swift_unknownObjectRelease();

      (*(v83 + 8))(v30, v87);
      (*(v86 + 8))(v68, v28);
      (*(v24 + 8))(v69, v23);
    }
  }

  else
  {
    sub_1B7957888(&v91, &qword_1EBA46B50);
    (*(v24 + 56))(v22, 1, 1, v23);
    v28 = v85;
  }

  sub_1B7957888(v22, &qword_1EBA47318);
  v81 = sub_1B7A97120();
  v33 = v84;
  v34 = type metadata accessor for _IntentDispatchViewModifierFollowing();
  (*(v86 + 16))(v17, a1 + v34[12], v28);
  sub_1B7A98830();
  v35 = a1 + v34[15];
  v36 = *v35;
  if (*(v35 + 8) == 1)
  {
    *&v91 = *v35;

    if (!v36)
    {
      goto LABEL_13;
    }
  }

  else
  {

    sub_1B7A9AA10();
    v37 = sub_1B7A97E70();
    v28 = v85;
    sub_1B7A96D30();

    v38 = v77;
    sub_1B7A97870();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v78 + 8))(v38, v79);
    v36 = v91;
    if (!v91)
    {
LABEL_13:
      sub_1B7A99300();
      sub_1B7A992B0();
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47320);
      v40 = swift_allocObject();
      v40[3] = 0;
      v40[4] = 0;
      v40[2] = &unk_1B7AA7E08;
      v85 = a4;
      v41 = v28;
      v42 = a2;
      v43 = v17;
      v44 = v11;
      v45 = v33;
      v46 = v73;
      MEMORY[0x1B8CA9E30](v39, &unk_1B7A9F558, v40, v39);
      v36 = sub_1B7A992C0();

      v47 = v46;
      v33 = v45;
      v11 = v44;
      v17 = v43;
      a2 = v42;
      v28 = v41;
      a4 = v85;
      (*(v74 + 8))(v47, v75);
    }
  }

  v90 = v36;
  v48 = a1 + v34[16];
  v49 = *(v48 + 16);
  v91 = *v48;
  v92 = v49;
  swift_getAssociatedConformanceWitness();
  type metadata accessor for _IntentProgress();
  swift_getFunctionTypeMetadata1();
  sub_1B7A9AB60();
  sub_1B7A970E0();
  sub_1B7A970D0();
  v50 = v88;
  if (v88)
  {
    v51 = v89;
    v52 = swift_allocObject();
    v52[2] = a2;
    v52[3] = v33;
    v52[4] = a4;
    v52[5] = v50;
    v52[6] = v51;
    v53 = &unk_1B7A9F560;
  }

  else
  {
    v53 = 0;
    v52 = 0;
  }

  (*(a4 + 40))(1, v17, v11, &v90, v53, v52, a2, a4);
  sub_1B7974C44(v53);
  swift_unknownObjectRelease();

  (*(v83 + 8))(v11, v87);
  (*(v86 + 8))(v17, v28);
}

uint64_t sub_1B79BF028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v84 = a3;
  v75 = sub_1B7A98C30();
  v74 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v73 = v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B7A97880();
  v78 = *(v8 - 8);
  v79 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v77 = v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  type metadata accessor for IntentResult();
  v87 = sub_1B7A98870();
  v83 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v11 = v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v76 = v72 - v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  v85 = AssociatedTypeWitness;
  v86 = v15;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v17 = v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v81 = v72 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47318);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = v72 - v21;
  v23 = sub_1B7A999B0();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v80 = v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7A9A760();
  v82 = sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1B79C8388(a1, &v91);
  if (v93)
  {
    v26 = swift_dynamicCast();
    (*(v24 + 56))(v22, v26 ^ 1u, 1, v23);
    v27 = (*(v24 + 48))(v22, 1, v23);
    v28 = v85;
    if (v27 != 1)
    {
      (*(v24 + 32))(v80, v22, v23);
      v72[1] = sub_1B7A97120();
      v29 = type metadata accessor for _IntentDispatchViewModifierFollowing();
      (*(v86 + 16))(v81, a1 + v29[12], v28);
      v30 = v76;
      sub_1B7A98830();
      v31 = a1 + v29[15];
      v32 = *v31;
      if (*(v31 + 8) == 1)
      {
        *&v91 = *v31;

        if (!v32)
        {
          goto LABEL_19;
        }
      }

      else
      {

        sub_1B7A9AA10();
        v54 = sub_1B7A97E70();
        sub_1B7A96D30();

        v28 = v85;
        v55 = v77;
        sub_1B7A97870();
        swift_getAtKeyPath();
        j__swift_release();
        (*(v78 + 8))(v55, v79);
        v32 = v91;
        if (!v91)
        {
LABEL_19:
          sub_1B7A99300();
          sub_1B7A992B0();
          v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47320);
          v57 = swift_allocObject();
          v57[3] = 0;
          v57[4] = 0;
          v57[2] = &unk_1B7AA7E08;
          v58 = v73;
          MEMORY[0x1B8CA9E30](v56, &unk_1B7A9F548, v57, v56);
          v32 = sub_1B7A992C0();

          v59 = v58;
          v30 = v76;
          (*(v74 + 8))(v59, v75);
        }
      }

      v90 = v32;
      v60 = a1 + v29[16];
      v61 = *(v60 + 16);
      v91 = *v60;
      v92 = v61;
      swift_getAssociatedConformanceWitness();
      type metadata accessor for _IntentProgress();
      swift_getFunctionTypeMetadata1();
      sub_1B7A9AB60();
      sub_1B7A970E0();
      sub_1B7A970D0();
      v62 = v88;
      if (v88)
      {
        v63 = v89;
        v64 = swift_allocObject();
        v65 = v84;
        v64[2] = a2;
        v64[3] = v65;
        v64[4] = a4;
        v64[5] = v62;
        v64[6] = v63;
        v28 = v85;
        v66 = &unk_1B7A9F550;
      }

      else
      {
        v66 = 0;
        v64 = 0;
      }

      v67 = *(a4 + 48);
      v71 = a4;
      v69 = v80;
      v68 = v81;
      v67(0, v81, v30, &v90, v66, v64, v80, a2, v71);
      sub_1B7974C44(v66);
      swift_unknownObjectRelease();

      (*(v83 + 8))(v30, v87);
      (*(v86 + 8))(v68, v28);
      (*(v24 + 8))(v69, v23);
    }
  }

  else
  {
    sub_1B7957888(&v91, &qword_1EBA46B50);
    (*(v24 + 56))(v22, 1, 1, v23);
    v28 = v85;
  }

  sub_1B7957888(v22, &qword_1EBA47318);
  v81 = sub_1B7A97120();
  v33 = v84;
  v34 = type metadata accessor for _IntentDispatchViewModifierFollowing();
  (*(v86 + 16))(v17, a1 + v34[12], v28);
  sub_1B7A98830();
  v35 = a1 + v34[15];
  v36 = *v35;
  if (*(v35 + 8) == 1)
  {
    *&v91 = *v35;

    if (!v36)
    {
      goto LABEL_13;
    }
  }

  else
  {

    sub_1B7A9AA10();
    v37 = sub_1B7A97E70();
    v28 = v85;
    sub_1B7A96D30();

    v38 = v77;
    sub_1B7A97870();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v78 + 8))(v38, v79);
    v36 = v91;
    if (!v91)
    {
LABEL_13:
      sub_1B7A99300();
      sub_1B7A992B0();
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47320);
      v40 = swift_allocObject();
      v40[3] = 0;
      v40[4] = 0;
      v40[2] = &unk_1B7AA7E08;
      v85 = a4;
      v41 = v28;
      v42 = a2;
      v43 = v17;
      v44 = v11;
      v45 = v33;
      v46 = v73;
      MEMORY[0x1B8CA9E30](v39, &unk_1B7A9F530, v40, v39);
      v36 = sub_1B7A992C0();

      v47 = v46;
      v33 = v45;
      v11 = v44;
      v17 = v43;
      a2 = v42;
      v28 = v41;
      a4 = v85;
      (*(v74 + 8))(v47, v75);
    }
  }

  v90 = v36;
  v48 = a1 + v34[16];
  v49 = *(v48 + 16);
  v91 = *v48;
  v92 = v49;
  swift_getAssociatedConformanceWitness();
  type metadata accessor for _IntentProgress();
  swift_getFunctionTypeMetadata1();
  sub_1B7A9AB60();
  sub_1B7A970E0();
  sub_1B7A970D0();
  v50 = v88;
  if (v88)
  {
    v51 = v89;
    v52 = swift_allocObject();
    v52[2] = a2;
    v52[3] = v33;
    v52[4] = a4;
    v52[5] = v50;
    v52[6] = v51;
    v53 = &unk_1B7A9F540;
  }

  else
  {
    v53 = 0;
    v52 = 0;
  }

  (*(a4 + 40))(0, v17, v11, &v90, v53, v52, a2, a4);
  sub_1B7974C44(v53);
  swift_unknownObjectRelease();

  (*(v83 + 8))(v11, v87);
  (*(v86 + 8))(v17, v28);
}

uint64_t sub_1B79BFCB4(int a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v55 = a7;
  v70 = a6;
  v58 = a5;
  v60 = a4;
  v62 = a3;
  v53 = a2;
  v59 = a1;
  v8 = *(*v7 + 80);
  v63 = *(*v7 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for IntentResult();
  v69 = sub_1B7A98870();
  v57 = *(v69 - 8);
  v56 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v68 = &v50 - v11;
  v67 = sub_1B7A999B0();
  v54 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v52 = v12;
  v66 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v8;
  v14 = *(v8 - 8);
  v51 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v65 = &v50 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B40);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v64 = &v50 - v18;
  v19 = sub_1B7A9AB60();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v50 - v21;
  v23 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v50 - v28;
  v60 = *v60;
  if ((v59 & 1) != 0 || !*(v61 + 16) && (sub_1B79C20D8(), IntentResult.data.getter(v10, v22), (*(v23 + 8))(v29, v10), v30 = (*(*(AssociatedTypeWitness - 8) + 48))(v22, 1, AssociatedTypeWitness), (*(v20 + 8))(v22, v19), v30 == 1) || (sub_1B79C20D8(), v31 = sub_1B7996ACC(), result = (*(v23 + 8))(v26, v10), v31))
  {
    v33 = sub_1B7A9A7E0();
    (*(*(v33 - 8) + 56))(v64, 1, 1, v33);
    v34 = *(v14 + 16);
    v50 = v13;
    v34(v65, v53, v13);
    v35 = v14;
    v36 = v54;
    (*(v54 + 16))(v66, v55, v67);
    v37 = v57;
    (*(v57 + 16))(v68, v62, v69);
    sub_1B7A9A760();
    v38 = v58;
    sub_1B7974B84(v58);
    v39 = v60;

    v40 = sub_1B7A9A750();
    v41 = (*(v35 + 80) + 72) & ~*(v35 + 80);
    v42 = (v51 + *(v36 + 80) + v41) & ~*(v36 + 80);
    v43 = (v52 + *(v37 + 80) + v42) & ~*(v37 + 80);
    v44 = swift_allocObject();
    v45 = MEMORY[0x1E69E85E0];
    *(v44 + 2) = v40;
    *(v44 + 3) = v45;
    v46 = v63;
    *(v44 + 4) = v50;
    *(v44 + 5) = v46;
    v47 = v70;
    *(v44 + 6) = v38;
    *(v44 + 7) = v47;
    *(v44 + 8) = v39;
    (*(v35 + 32))(&v44[v41], v65);
    (*(v36 + 32))(&v44[v42], v66, v67);
    (*(v37 + 32))(&v44[v43], v68, v69);
    v48 = sub_1B79A9B34(0, 0, v64, &unk_1B7A9F510, v44);
    v49 = v61;
    sub_1B79C6DFC();
    *(v49 + 16) = v48;
  }

  return result;
}

uint64_t sub_1B79C0300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = v18;
  v8[11] = v19;
  v8[8] = a8;
  v8[9] = v17;
  v8[6] = a6;
  v8[7] = a7;
  v8[4] = a4;
  v8[5] = a5;
  v9 = sub_1B7A9A720();
  v8[12] = v9;
  v8[13] = *(v9 - 8);
  v8[14] = swift_task_alloc();
  v8[15] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[16] = AssociatedTypeWitness;
  v11 = type metadata accessor for IntentResult();
  v8[17] = v11;
  v8[18] = *(v11 - 8);
  v8[19] = swift_task_alloc();
  v8[20] = type metadata accessor for IntentResult._State();
  v8[21] = swift_task_alloc();
  v8[22] = *(AssociatedTypeWitness - 8);
  v8[23] = swift_task_alloc();
  v12 = type metadata accessor for _IntentProgress();
  v8[24] = v12;
  v8[25] = *(v12 - 8);
  v8[26] = swift_task_alloc();
  sub_1B7A9A760();
  v8[27] = sub_1B7A9A750();
  v14 = sub_1B7A9A710();
  v8[28] = v14;
  v8[29] = v13;

  return MEMORY[0x1EEE6DFA0](sub_1B79C0590, v14, v13);
}

uint64_t sub_1B79C0590()
{
  v1 = v0[4];
  if (v1)
  {
    swift_storeEnumTagMultiPayload();
    v11 = (v1 + *v1);
    v2 = swift_task_alloc();
    v0[30] = v2;
    *v2 = v0;
    v2[1] = sub_1B79C0724;
    v3 = v0[26];

    return v11(v3);
  }

  else
  {
    v0[2] = v0[6];
    v5 = swift_task_alloc();
    v0[31] = v5;
    *v5 = v0;
    v5[1] = sub_1B79C08D4;
    v6 = v0[23];
    v7 = v0[10];
    v8 = v0[11];
    v9 = v0[7];
    v10 = v0[8];

    return IntentDispatchAction.callAsFunction<A>(_:_:)(v6, v9, v10, v7, v8);
  }
}

uint64_t sub_1B79C0724()
{
  v1 = *v0;
  v2 = *(*v0 + 208);
  v3 = *(*v0 + 200);
  v4 = *(*v0 + 192);
  v5 = *v0;

  (*(v3 + 8))(v2, v4);
  v1[2] = v1[6];
  v6 = swift_task_alloc();
  v1[31] = v6;
  *v6 = v5;
  v6[1] = sub_1B79C08D4;
  v7 = v1[23];
  v8 = v1[10];
  v9 = v1[11];
  v10 = v1[7];
  v11 = v1[8];

  return IntentDispatchAction.callAsFunction<A>(_:_:)(v7, v10, v11, v8, v9);
}

uint64_t sub_1B79C08D4()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  v3 = *(v2 + 224);
  v4 = *(v2 + 232);
  if (v0)
  {
    v5 = sub_1B79C1784;
  }

  else
  {
    v5 = sub_1B79C09E8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1B79C09E8()
{
  v1 = *(v0 + 256);
  sub_1B7A9A820();
  if (v1)
  {
    (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 128));
    *(v0 + 280) = v1;
    *(v0 + 24) = v1;
    v2 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B60);
    if (swift_dynamicCast())
    {
      v3 = *(v0 + 112);
      v4 = *(v0 + 120);
      v5 = *(v0 + 96);
      v6 = *(v0 + 104);
      v7 = *(v0 + 32);

      (*(v6 + 32))(v3, v4, v5);
      if (v7)
      {
        v8 = *(v0 + 208);
        v10 = *(v0 + 104);
        v9 = *(v0 + 112);
        v11 = *(v0 + 96);
        v12 = *(v0 + 32);
        sub_1B79C8854();
        v13 = swift_allocError();
        (*(v10 + 16))(v14, v9, v11);
        *v8 = v13;
        swift_storeEnumTagMultiPayload();
        v43 = (v12 + *v12);
        v15 = swift_task_alloc();
        *(v0 + 288) = v15;
        *v15 = v0;
        v16 = sub_1B79C1264;
LABEL_9:
        v15[1] = v16;
        v26 = *(v0 + 208);

        return v43(v26);
      }

      (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));

      v34 = *(v0 + 24);
    }

    else
    {
      v23 = *(v0 + 32);

      if (v23)
      {
        v24 = *(v0 + 32);
        **(v0 + 208) = v1;
        swift_storeEnumTagMultiPayload();
        v25 = v1;
        v43 = (v24 + *v24);
        v15 = swift_task_alloc();
        *(v0 + 296) = v15;
        *v15 = v0;
        v16 = sub_1B79C14C0;
        goto LABEL_9;
      }

      v35 = *(v0 + 280);
      v36 = *(v0 + 168);
      v38 = *(v0 + 144);
      v37 = *(v0 + 152);
      v39 = *(v0 + 136);
      *v36 = v35;
      swift_storeEnumTagMultiPayload();
      v40 = v35;
      sub_1B79C20D8();
      sub_1B7996A3C(v36, v39);
      sub_1B79C7C94(v37);
      (*(v38 + 8))(v37, v39);
      v34 = v35;
    }
  }

  else
  {
    v17 = *(v0 + 32);
    v18 = (*(v0 + 176) + 16);
    if (v17)
    {
      v19 = *(v0 + 208);
      v20 = *(v0 + 184);
      v21 = *(v0 + 128);
      v22 = *v18;
      *(v0 + 264) = *v18;
      (v22)(v19, v20, v21);
      swift_storeEnumTagMultiPayload();
      v43 = (v17 + *v17);
      v15 = swift_task_alloc();
      *(v0 + 272) = v15;
      *v15 = v0;
      v16 = sub_1B79C0F78;
      goto LABEL_9;
    }

    v28 = *v18;
    v29 = *(v0 + 176);
    v30 = *(v0 + 168);
    v32 = *(v0 + 144);
    v31 = *(v0 + 152);
    v33 = *(v0 + 136);
    v42 = *(v0 + 128);
    v44 = *(v0 + 184);
    v28(v30);
    swift_storeEnumTagMultiPayload();
    sub_1B79C20D8();
    sub_1B7996A3C(v30, v33);
    sub_1B79C7C94(v31);
    (*(v32 + 8))(v31, v33);
    (*(v29 + 8))(v44, v42);
  }

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_1B79C0F78()
{
  v1 = *v0;
  v2 = *(*v0 + 208);
  v3 = *(*v0 + 200);
  v4 = *(*v0 + 192);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 232);
  v6 = *(v1 + 224);

  return MEMORY[0x1EEE6DFA0](sub_1B79C10FC, v6, v5);
}

uint64_t sub_1B79C10FC()
{

  v1 = *(v0 + 176);
  v2 = *(v0 + 168);
  v4 = *(v0 + 144);
  v3 = *(v0 + 152);
  v5 = *(v0 + 136);
  v8 = *(v0 + 128);
  v9 = *(v0 + 184);
  (*(v0 + 264))(v2);
  swift_storeEnumTagMultiPayload();
  sub_1B79C20D8();
  sub_1B7996A3C(v2, v5);
  sub_1B79C7C94(v3);
  (*(v4 + 8))(v3, v5);
  (*(v1 + 8))(v9, v8);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1B79C1264()
{
  v1 = *v0;
  v2 = *(*v0 + 208);
  v3 = *(*v0 + 200);
  v4 = *(*v0 + 192);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 232);
  v6 = *(v1 + 224);

  return MEMORY[0x1EEE6DFA0](sub_1B79C13E8, v6, v5);
}

uint64_t sub_1B79C13E8()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1B79C14C0()
{
  v1 = *v0;
  v2 = *(*v0 + 208);
  v3 = *(*v0 + 200);
  v4 = *(*v0 + 192);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 232);
  v6 = *(v1 + 224);

  return MEMORY[0x1EEE6DFA0](sub_1B79C1644, v6, v5);
}

uint64_t sub_1B79C1644()
{

  v1 = v0[35];
  v2 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[17];
  *v2 = v1;
  swift_storeEnumTagMultiPayload();
  v6 = v1;
  sub_1B79C20D8();
  sub_1B7996A3C(v2, v5);
  sub_1B79C7C94(v3);
  (*(v4 + 8))(v3, v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1B79C1784()
{
  v1 = *(v0 + 256);
  *(v0 + 24) = v1;
  *(v0 + 280) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B60);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 112);
    v3 = *(v0 + 120);
    v6 = *(v0 + 96);
    v5 = *(v0 + 104);
    v7 = *(v0 + 32);

    (*(v5 + 32))(v4, v3, v6);
    if (v7)
    {
      v8 = *(v0 + 208);
      v10 = *(v0 + 104);
      v9 = *(v0 + 112);
      v11 = *(v0 + 96);
      v12 = *(v0 + 32);
      sub_1B79C8854();
      v13 = swift_allocError();
      (*(v10 + 16))(v14, v9, v11);
      *v8 = v13;
      swift_storeEnumTagMultiPayload();
      v30 = (v12 + *v12);
      v15 = swift_task_alloc();
      *(v0 + 288) = v15;
      *v15 = v0;
      v16 = sub_1B79C1264;
LABEL_6:
      v15[1] = v16;
      v20 = *(v0 + 208);

      return v30(v20);
    }

    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));

    v22 = *(v0 + 24);
  }

  else
  {
    v17 = *(v0 + 32);

    if (v17)
    {
      v18 = *(v0 + 32);
      **(v0 + 208) = v1;
      swift_storeEnumTagMultiPayload();
      v19 = v1;
      v30 = (v18 + *v18);
      v15 = swift_task_alloc();
      *(v0 + 296) = v15;
      *v15 = v0;
      v16 = sub_1B79C14C0;
      goto LABEL_6;
    }

    v23 = *(v0 + 280);
    v24 = *(v0 + 168);
    v26 = *(v0 + 144);
    v25 = *(v0 + 152);
    v27 = *(v0 + 136);
    *v24 = v23;
    swift_storeEnumTagMultiPayload();
    v28 = v23;
    sub_1B79C20D8();
    sub_1B7996A3C(v24, v27);
    sub_1B79C7C94(v25);
    (*(v26 + 8))(v25, v27);
    v22 = v23;
  }

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_1B79C1B68(int a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v49 = a5;
  v50 = a6;
  v52 = a4;
  v54 = a3;
  v47 = a2;
  v51 = a1;
  v7 = *(*v6 + 80);
  v55 = *(*v6 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for IntentResult();
  v59 = sub_1B7A98870();
  v46 = *(v59 - 8);
  v48 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v58 = &v44 - v10;
  v11 = v7;
  v12 = *(v7 - 8);
  v45 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v57 = &v44 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B40);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v56 = &v44 - v16;
  v17 = sub_1B7A9AB60();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v44 - v19;
  v21 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v44 - v26;
  v52 = *v52;
  if ((v51 & 1) != 0 || !*(v53 + 16) && (sub_1B79C20D8(), IntentResult.data.getter(v9, v20), (*(v21 + 8))(v27, v9), v28 = (*(*(AssociatedTypeWitness - 8) + 48))(v20, 1, AssociatedTypeWitness), (*(v18 + 8))(v20, v17), v28 == 1) || (sub_1B79C20D8(), v29 = sub_1B7996ACC(), result = (*(v21 + 8))(v24, v9), v29))
  {
    v31 = sub_1B7A9A7E0();
    (*(*(v31 - 8) + 56))(v56, 1, 1, v31);
    (*(v12 + 16))(v57, v47, v11);
    v32 = v46;
    (*(v46 + 16))(v58, v54, v59);
    sub_1B7A9A760();
    v34 = v49;
    v33 = v50;
    sub_1B7974B84(v49);
    v35 = v52;

    v36 = sub_1B7A9A750();
    v37 = (*(v12 + 80) + 72) & ~*(v12 + 80);
    v38 = (v45 + v37 + *(v32 + 80)) & ~*(v32 + 80);
    v39 = swift_allocObject();
    v40 = MEMORY[0x1E69E85E0];
    *(v39 + 2) = v36;
    *(v39 + 3) = v40;
    v41 = v55;
    *(v39 + 4) = v11;
    *(v39 + 5) = v41;
    *(v39 + 6) = v34;
    *(v39 + 7) = v33;
    *(v39 + 8) = v35;
    (*(v12 + 32))(&v39[v37], v57, v11);
    (*(v32 + 32))(&v39[v38], v58, v59);
    v42 = sub_1B79A9B34(0, 0, v56, &unk_1B7A9F528, v39);
    v43 = v53;
    sub_1B79C6DFC();
    *(v43 + 16) = v42;
  }

  return result;
}

uint64_t sub_1B79C20D8()
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for IntentResult();
  v0 = sub_1B7A98870();
  return MEMORY[0x1B8CA9A40](v0);
}

uint64_t sub_1B79C2140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = v17;
  v8[10] = v18;
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[4] = a4;
  v9 = sub_1B7A9A720();
  v8[11] = v9;
  v8[12] = *(v9 - 8);
  v8[13] = swift_task_alloc();
  v8[14] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[15] = AssociatedTypeWitness;
  v11 = type metadata accessor for IntentResult();
  v8[16] = v11;
  v8[17] = *(v11 - 8);
  v8[18] = swift_task_alloc();
  v8[19] = type metadata accessor for IntentResult._State();
  v8[20] = swift_task_alloc();
  v8[21] = *(AssociatedTypeWitness - 8);
  v8[22] = swift_task_alloc();
  v12 = type metadata accessor for _IntentProgress();
  v8[23] = v12;
  v8[24] = *(v12 - 8);
  v8[25] = swift_task_alloc();
  sub_1B7A9A760();
  v8[26] = sub_1B7A9A750();
  v14 = sub_1B7A9A710();
  v8[27] = v14;
  v8[28] = v13;

  return MEMORY[0x1EEE6DFA0](sub_1B79C23CC, v14, v13);
}

uint64_t sub_1B79C23CC()
{
  v1 = v0[4];
  if (v1)
  {
    swift_storeEnumTagMultiPayload();
    v10 = (v1 + *v1);
    v2 = swift_task_alloc();
    v0[29] = v2;
    *v2 = v0;
    v2[1] = sub_1B79C2560;
    v3 = v0[25];

    return v10(v3);
  }

  else
  {
    v0[2] = v0[6];
    v5 = swift_task_alloc();
    v0[30] = v5;
    *v5 = v0;
    v5[1] = sub_1B79C2710;
    v6 = v0[22];
    v7 = v0[9];
    v8 = v0[10];
    v9 = v0[7];

    return IntentDispatchAction.callAsFunction<A>(_:)(v6, v9, v7, v8);
  }
}

uint64_t sub_1B79C2560()
{
  v1 = *v0;
  v2 = *(*v0 + 200);
  v3 = *(*v0 + 192);
  v4 = *(*v0 + 184);
  v5 = *v0;

  (*(v3 + 8))(v2, v4);
  v1[2] = v1[6];
  v6 = swift_task_alloc();
  v1[30] = v6;
  *v6 = v5;
  v6[1] = sub_1B79C2710;
  v7 = v1[22];
  v8 = v1[9];
  v9 = v1[10];
  v10 = v1[7];

  return IntentDispatchAction.callAsFunction<A>(_:)(v7, v10, v8, v9);
}

uint64_t sub_1B79C2710()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  v3 = *(v2 + 216);
  v4 = *(v2 + 224);
  if (v0)
  {
    v5 = sub_1B79C35C0;
  }

  else
  {
    v5 = sub_1B79C2824;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1B79C2824()
{
  v1 = *(v0 + 248);
  sub_1B7A9A820();
  if (v1)
  {
    (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 120));
    *(v0 + 272) = v1;
    *(v0 + 24) = v1;
    v2 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B60);
    if (swift_dynamicCast())
    {
      v3 = *(v0 + 104);
      v4 = *(v0 + 112);
      v5 = *(v0 + 88);
      v6 = *(v0 + 96);
      v7 = *(v0 + 32);

      (*(v6 + 32))(v3, v4, v5);
      if (v7)
      {
        v8 = *(v0 + 200);
        v10 = *(v0 + 96);
        v9 = *(v0 + 104);
        v11 = *(v0 + 88);
        v12 = *(v0 + 32);
        sub_1B79C8854();
        v13 = swift_allocError();
        (*(v10 + 16))(v14, v9, v11);
        *v8 = v13;
        swift_storeEnumTagMultiPayload();
        v43 = (v12 + *v12);
        v15 = swift_task_alloc();
        *(v0 + 280) = v15;
        *v15 = v0;
        v16 = sub_1B79C30A0;
LABEL_9:
        v15[1] = v16;
        v26 = *(v0 + 200);

        return v43(v26);
      }

      (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

      v34 = *(v0 + 24);
    }

    else
    {
      v23 = *(v0 + 32);

      if (v23)
      {
        v24 = *(v0 + 32);
        **(v0 + 200) = v1;
        swift_storeEnumTagMultiPayload();
        v25 = v1;
        v43 = (v24 + *v24);
        v15 = swift_task_alloc();
        *(v0 + 288) = v15;
        *v15 = v0;
        v16 = sub_1B79C32FC;
        goto LABEL_9;
      }

      v35 = *(v0 + 272);
      v36 = *(v0 + 160);
      v38 = *(v0 + 136);
      v37 = *(v0 + 144);
      v39 = *(v0 + 128);
      *v36 = v35;
      swift_storeEnumTagMultiPayload();
      v40 = v35;
      sub_1B79C20D8();
      sub_1B7996A3C(v36, v39);
      sub_1B79C7C94(v37);
      (*(v38 + 8))(v37, v39);
      v34 = v35;
    }
  }

  else
  {
    v17 = *(v0 + 32);
    v18 = (*(v0 + 168) + 16);
    if (v17)
    {
      v19 = *(v0 + 200);
      v20 = *(v0 + 176);
      v21 = *(v0 + 120);
      v22 = *v18;
      *(v0 + 256) = *v18;
      (v22)(v19, v20, v21);
      swift_storeEnumTagMultiPayload();
      v43 = (v17 + *v17);
      v15 = swift_task_alloc();
      *(v0 + 264) = v15;
      *v15 = v0;
      v16 = sub_1B79C2DB4;
      goto LABEL_9;
    }

    v28 = *v18;
    v29 = *(v0 + 168);
    v30 = *(v0 + 160);
    v32 = *(v0 + 136);
    v31 = *(v0 + 144);
    v33 = *(v0 + 128);
    v42 = *(v0 + 120);
    v44 = *(v0 + 176);
    v28(v30);
    swift_storeEnumTagMultiPayload();
    sub_1B79C20D8();
    sub_1B7996A3C(v30, v33);
    sub_1B79C7C94(v31);
    (*(v32 + 8))(v31, v33);
    (*(v29 + 8))(v44, v42);
  }

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_1B79C2DB4()
{
  v1 = *v0;
  v2 = *(*v0 + 200);
  v3 = *(*v0 + 192);
  v4 = *(*v0 + 184);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 224);
  v6 = *(v1 + 216);

  return MEMORY[0x1EEE6DFA0](sub_1B79C2F38, v6, v5);
}

uint64_t sub_1B79C2F38()
{

  v1 = *(v0 + 168);
  v2 = *(v0 + 160);
  v4 = *(v0 + 136);
  v3 = *(v0 + 144);
  v5 = *(v0 + 128);
  v8 = *(v0 + 120);
  v9 = *(v0 + 176);
  (*(v0 + 256))(v2);
  swift_storeEnumTagMultiPayload();
  sub_1B79C20D8();
  sub_1B7996A3C(v2, v5);
  sub_1B79C7C94(v3);
  (*(v4 + 8))(v3, v5);
  (*(v1 + 8))(v9, v8);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1B79C30A0()
{
  v1 = *v0;
  v2 = *(*v0 + 200);
  v3 = *(*v0 + 192);
  v4 = *(*v0 + 184);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 224);
  v6 = *(v1 + 216);

  return MEMORY[0x1EEE6DFA0](sub_1B79C3224, v6, v5);
}

uint64_t sub_1B79C3224()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1B79C32FC()
{
  v1 = *v0;
  v2 = *(*v0 + 200);
  v3 = *(*v0 + 192);
  v4 = *(*v0 + 184);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 224);
  v6 = *(v1 + 216);

  return MEMORY[0x1EEE6DFA0](sub_1B79C3480, v6, v5);
}

uint64_t sub_1B79C3480()
{

  v1 = v0[34];
  v2 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[16];
  *v2 = v1;
  swift_storeEnumTagMultiPayload();
  v6 = v1;
  sub_1B79C20D8();
  sub_1B7996A3C(v2, v5);
  sub_1B79C7C94(v3);
  (*(v4 + 8))(v3, v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1B79C35C0()
{
  v1 = *(v0 + 248);
  *(v0 + 24) = v1;
  *(v0 + 272) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B60);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 104);
    v3 = *(v0 + 112);
    v6 = *(v0 + 88);
    v5 = *(v0 + 96);
    v7 = *(v0 + 32);

    (*(v5 + 32))(v4, v3, v6);
    if (v7)
    {
      v8 = *(v0 + 200);
      v10 = *(v0 + 96);
      v9 = *(v0 + 104);
      v11 = *(v0 + 88);
      v12 = *(v0 + 32);
      sub_1B79C8854();
      v13 = swift_allocError();
      (*(v10 + 16))(v14, v9, v11);
      *v8 = v13;
      swift_storeEnumTagMultiPayload();
      v30 = (v12 + *v12);
      v15 = swift_task_alloc();
      *(v0 + 280) = v15;
      *v15 = v0;
      v16 = sub_1B79C30A0;
LABEL_6:
      v15[1] = v16;
      v20 = *(v0 + 200);

      return v30(v20);
    }

    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

    v22 = *(v0 + 24);
  }

  else
  {
    v17 = *(v0 + 32);

    if (v17)
    {
      v18 = *(v0 + 32);
      **(v0 + 200) = v1;
      swift_storeEnumTagMultiPayload();
      v19 = v1;
      v30 = (v18 + *v18);
      v15 = swift_task_alloc();
      *(v0 + 288) = v15;
      *v15 = v0;
      v16 = sub_1B79C32FC;
      goto LABEL_6;
    }

    v23 = *(v0 + 272);
    v24 = *(v0 + 160);
    v26 = *(v0 + 136);
    v25 = *(v0 + 144);
    v27 = *(v0 + 128);
    *v24 = v23;
    swift_storeEnumTagMultiPayload();
    v28 = v23;
    sub_1B79C20D8();
    sub_1B7996A3C(v24, v27);
    sub_1B79C7C94(v25);
    (*(v26 + 8))(v25, v27);
    v22 = v23;
  }

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_1B79C39AC()
{
  if (*(v0 + 16))
  {

    sub_1B7A9A7F0();
  }

  return v0;
}

void sub_1B79C3A14()
{
  sub_1B79C4310();
  if (v0 <= 0x3F)
  {
    sub_1B7A97140();
    if (v1 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      if (v2 <= 0x3F)
      {
        swift_getAssociatedTypeWitness();
        type metadata accessor for IntentResult();
        sub_1B7A98870();
        if (v3 <= 0x3F)
        {
          type metadata accessor for IntentResult();
          sub_1B7A98870();
          if (v4 <= 0x3F)
          {
            sub_1B79C93D4(319, &qword_1EBA47278, qword_1EBA47280, &unk_1B7A9FE40, MEMORY[0x1E697DCC0]);
            if (v5 <= 0x3F)
            {
              swift_getAssociatedConformanceWitness();
              type metadata accessor for _IntentProgress();
              swift_getFunctionTypeMetadata1();
              sub_1B7A9AB60();
              sub_1B7A970E0();
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

uint64_t sub_1B79C3C0C(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = 8;
  if (*(v9 + 64) <= 8uLL)
  {
    v11 = 8;
  }

  else
  {
    v11 = *(v9 + 64);
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v8;
  }

  v13 = *(v7 + 80);
  v14 = *(v7 + 64);
  if (*(*(*(a3 + 24) - 8) + 64) > 8uLL)
  {
    v10 = *(*(*(a3 + 24) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  v15 = *(v9 + 80) & 0xF8 | 7;
  if (v12 >= a2)
  {
    goto LABEL_33;
  }

  v16 = *(*(*(a3 + 24) - 8) + 80) & 0xF8 | 7;
  v17 = 39 - (((-17 - v16) | v16) - (((v10 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) - ((((-17 - v15) | v15) - ((((v11 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v16) + ((((-50 - v13) | v13) - (v14 + v15)) | v15) - 7) | v16);
  if (v17 <= 3)
  {
    v18 = ((a2 - v12 + 255) >> 8) + 1;
  }

  else
  {
    v18 = 2;
  }

  if (v18 >= 0x10000)
  {
    v19 = 4;
  }

  else
  {
    v19 = 2;
  }

  if (v18 < 0x100)
  {
    v19 = 1;
  }

  if (v18 >= 2)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      v21 = *&a1[v17];
      if (!*&a1[v17])
      {
        goto LABEL_33;
      }
    }

    else
    {
      v21 = *&a1[v17];
      if (!v21)
      {
        goto LABEL_33;
      }
    }

LABEL_29:
    v23 = (v21 - 1) << (8 * v17);
    if (v17 <= 3)
    {
      v24 = *a1;
    }

    else
    {
      v23 = 0;
      v24 = *a1;
    }

    return v12 + (v24 | v23) + 1;
  }

  if (v20)
  {
    v21 = a1[v17];
    if (a1[v17])
    {
      goto LABEL_29;
    }
  }

LABEL_33:
  v25 = (((a1 + 39) & 0xFFFFFFFFFFFFFFF8) + v13 + 17) & ~v13;
  if (v8 < 0x7FFFFFFF)
  {
    v27 = *((((v25 + v14 + v15) & ~v15) + 15) & 0xFFFFFFFFFFFFFFF8);
    if (v27 >= 0xFFFFFFFF)
    {
      LODWORD(v27) = -1;
    }

    return (v27 + 1);
  }

  else
  {
    v26 = *(v7 + 48);

    return v26(v25, v8, AssociatedTypeWitness);
  }
}

void sub_1B79C3F5C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v33 = AssociatedTypeWitness;
  v10 = *(v9 + 84);
  v11 = *(swift_getAssociatedTypeWitness() - 8);
  if (*(v11 + 64) <= 8uLL)
  {
    v12 = 8;
  }

  else
  {
    v12 = *(v11 + 64);
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v10;
  }

  v14 = *(*(a4 + 24) - 8);
  if (*(v14 + 64) <= 8uLL)
  {
    v15 = 8;
  }

  else
  {
    v15 = *(v14 + 64);
  }

  v16 = *(v9 + 80);
  v17 = *(v9 + 64);
  v18 = *(v11 + 80) & 0xF8;
  v19 = v18 | 7;
  v20 = v17 + (v18 | 7);
  v21 = (v18 + 23) & ~(v18 | 7);
  v22 = *(v14 + 80) & 0xF8 | 7;
  v23 = 39 - (((-17 - v22) | v22) - (((v15 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) - ((((((-50 - v16) | v16) - v20) | v19) - (v21 + v22 + (((v12 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) - 8) | v22);
  if (v13 >= a3)
  {
    v26 = 0;
    if (v13 >= a2)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (v23 <= 3)
    {
      v24 = ((a3 - v13 + 255) >> 8) + 1;
    }

    else
    {
      v24 = 2;
    }

    if (v24 >= 0x10000)
    {
      v25 = 4;
    }

    else
    {
      v25 = 2;
    }

    if (v24 < 0x100)
    {
      v25 = 1;
    }

    if (v24 >= 2)
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    if (v13 >= a2)
    {
LABEL_23:
      if (v26 > 1)
      {
        if (v26 != 2)
        {
          *&a1[v23] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_38;
        }

        *&a1[v23] = 0;
      }

      else if (v26)
      {
        a1[v23] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_38;
      }

      if (!a2)
      {
        return;
      }

LABEL_38:
      v29 = (((a1 + 39) & 0xFFFFFFFFFFFFFFF8) + v16 + 17) & ~v16;
      if (v10 < 0x7FFFFFFF)
      {
        v31 = ((v29 + v17 + v19) & ~v19);
        if ((a2 & 0x80000000) != 0)
        {
          v32 = (((v12 & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + v21;
          if (v32 != -8)
          {
            bzero(v31, (v32 + 8));
            *v31 = a2 & 0x7FFFFFFF;
          }
        }

        else
        {
          *((v31 + 15) & 0xFFFFFFFFFFFFFFF8) = (a2 - 1);
        }
      }

      else
      {
        v30 = *(v9 + 56);

        v30(v29, a2, v10, v33);
      }

      return;
    }
  }

  v27 = ~v13 + a2;
  bzero(a1, v23);
  if (v23 <= 3)
  {
    v28 = (v27 >> 8) + 1;
  }

  else
  {
    v28 = 1;
  }

  if (v23 <= 3)
  {
    *a1 = v27;
    if (v26 > 1)
    {
LABEL_33:
      if (v26 == 2)
      {
        *&a1[v23] = v28;
      }

      else
      {
        *&a1[v23] = v28;
      }

      return;
    }
  }

  else
  {
    *a1 = v27;
    if (v26 > 1)
    {
      goto LABEL_33;
    }
  }

  if (v26)
  {
    a1[v23] = v28;
  }
}

void sub_1B79C4310()
{
  if (!qword_1EBA47270)
  {
    v0 = sub_1B7A9AB60();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBA47270);
    }
  }
}

void sub_1B79C4364()
{
  sub_1B79C4310();
  if (v0 <= 0x3F)
  {
    sub_1B7A97140();
    if (v1 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      if (v2 <= 0x3F)
      {
        swift_getAssociatedTypeWitness();
        type metadata accessor for IntentResult();
        sub_1B7A98870();
        if (v3 <= 0x3F)
        {
          sub_1B79C93D4(319, &qword_1EBA47278, qword_1EBA47280, &unk_1B7A9FE40, MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            swift_getAssociatedConformanceWitness();
            type metadata accessor for _IntentProgress();
            swift_getFunctionTypeMetadata1();
            sub_1B7A9AB60();
            sub_1B7A970E0();
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

uint64_t sub_1B79C4530(unsigned __int8 *a1, unsigned int a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  if (*(v7 + 64) <= 8uLL)
  {
    v8 = 8;
  }

  else
  {
    v8 = *(v7 + 64);
  }

  v9 = *(v5 + 80);
  v10 = *(v5 + 64);
  if (v6 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v6;
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(v7 + 80) & 0xF8 | 7;
  if (v11 >= a2)
  {
    goto LABEL_31;
  }

  v13 = 39 - (((-17 - v12) | v12) - (((v8 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + ((((-50 - v9) | v9) - (v10 + v12)) | v12));
  if (v13 <= 3)
  {
    v14 = ((a2 - v11 + 255) >> 8) + 1;
  }

  else
  {
    v14 = 2;
  }

  if (v14 >= 0x10000)
  {
    v15 = 4;
  }

  else
  {
    v15 = 2;
  }

  if (v14 < 0x100)
  {
    v15 = 1;
  }

  if (v14 >= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 = *&a1[v13];
      if (!*&a1[v13])
      {
        goto LABEL_31;
      }
    }

    else
    {
      v17 = *&a1[v13];
      if (!v17)
      {
        goto LABEL_31;
      }
    }

LABEL_27:
    v19 = (v17 - 1) << (8 * v13);
    if (v13 <= 3)
    {
      v20 = *a1;
    }

    else
    {
      v19 = 0;
      v20 = *a1;
    }

    return v11 + (v20 | v19) + 1;
  }

  if (v16)
  {
    v17 = a1[v13];
    if (a1[v13])
    {
      goto LABEL_27;
    }
  }

LABEL_31:
  v21 = (((a1 + 39) & 0xFFFFFFFFFFFFFFF8) + v9 + 17) & ~v9;
  if (v6 < 0x7FFFFFFF)
  {
    v23 = *((((v21 + v10 + v12) & ~v12) + 15) & 0xFFFFFFFFFFFFFFF8);
    if (v23 >= 0xFFFFFFFF)
    {
      LODWORD(v23) = -1;
    }

    return (v23 + 1);
  }

  else
  {
    v22 = *(v5 + 48);

    return v22(v21, v6, AssociatedTypeWitness);
  }
}

void sub_1B79C47F8(_BYTE *a1, uint64_t a2, unsigned int a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 64);
  if (v10 <= 8)
  {
    v10 = 8;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v8;
  }

  v12 = *(v7 + 80);
  v13 = *(v7 + 64);
  v14 = *(v9 + 80) & 0xF8;
  v15 = v14 | 7;
  v16 = (v13 + (v14 | 7) + ((v12 + 49) & ~v12)) & ~(v14 | 7);
  v17 = (v14 + 23) & ~(v14 | 7);
  v18 = v17 + (((v10 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v16 + 41;
  if (v11 >= a3)
  {
    v21 = 0;
    if (v11 >= a2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (v18 <= 3)
    {
      v19 = ((a3 - v11 + 255) >> 8) + 1;
    }

    else
    {
      v19 = 2;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    if (v11 >= a2)
    {
LABEL_19:
      if (v21 > 1)
      {
        if (v21 != 2)
        {
          *&a1[v18] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_34;
        }

        *&a1[v18] = 0;
      }

      else if (v21)
      {
        a1[v18] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      if (!a2)
      {
        return;
      }

LABEL_34:
      v24 = (((a1 + 39) & 0xFFFFFFFFFFFFFFF8) + v12 + 17) & ~v12;
      if (v8 < 0x7FFFFFFF)
      {
        v26 = v24 + v13 + v15;
        v27 = (v26 & ~v15);
        if ((a2 & 0x80000000) != 0)
        {
          v28 = (((v10 & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + v17;
          if (v28 != -8)
          {
            bzero((v26 & ~v15), (v28 + 8));
            *v27 = a2 & 0x7FFFFFFF;
          }
        }

        else
        {
          *((v27 + 15) & 0xFFFFFFFFFFFFFFF8) = (a2 - 1);
        }
      }

      else
      {
        v25 = *(v7 + 56);

        v25(v24, a2, v8, AssociatedTypeWitness);
      }

      return;
    }
  }

  v22 = ~v11 + a2;
  bzero(a1, v18);
  if (v18 <= 3)
  {
    v23 = (v22 >> 8) + 1;
  }

  else
  {
    v23 = 1;
  }

  if (v18 <= 3)
  {
    *a1 = v22;
    if (v21 > 1)
    {
LABEL_29:
      if (v21 == 2)
      {
        *&a1[v18] = v23;
      }

      else
      {
        *&a1[v18] = v23;
      }

      return;
    }
  }

  else
  {
    *a1 = v22;
    if (v21 > 1)
    {
      goto LABEL_29;
    }
  }

  if (v21)
  {
    a1[v18] = v23;
  }
}

uint64_t sub_1B79C4B88(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B79C4BE0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B79C4C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = v23;
  v8[6] = v24;
  v8[3] = a7;
  v8[4] = a8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47308);
  v8[7] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47310);
  v8[8] = v12;
  v8[9] = *(v12 - 8);
  v8[10] = swift_task_alloc();
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[11] = AssociatedTypeWitness;
  v14 = type metadata accessor for IntentResult();
  v8[12] = v14;
  v8[13] = *(v14 - 8);
  v8[14] = swift_task_alloc();
  v8[15] = type metadata accessor for IntentResult._State();
  v8[16] = swift_task_alloc();
  v8[17] = *(AssociatedTypeWitness - 8);
  v8[18] = swift_task_alloc();
  v15 = swift_getAssociatedTypeWitness();
  v8[19] = v15;
  v8[20] = *(v15 - 8);
  v8[21] = swift_task_alloc();
  v8[22] = swift_task_alloc();
  sub_1B7A9AB60();
  v8[23] = swift_task_alloc();
  v16 = swift_getAssociatedTypeWitness();
  v8[24] = v16;
  v8[25] = *(v16 - 8);
  v8[26] = swift_task_alloc();
  v17 = swift_checkMetadataState();
  v8[27] = v17;
  v8[28] = *(v17 - 8);
  v8[29] = swift_task_alloc();
  v8[30] = swift_task_alloc();
  v18 = swift_task_alloc();
  v8[31] = v18;
  v8[32] = sub_1B7A9A760();
  v8[33] = sub_1B7A9A750();
  v8[2] = a4;
  v19 = swift_task_alloc();
  v8[34] = v19;
  *v19 = v8;
  v19[1] = sub_1B79C5094;

  return IntentDispatchAction.callAsFunction<A>(_:_:)(v18, a5, a6, a8, v23);
}

uint64_t sub_1B79C5094()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = sub_1B7A9A710();
    v5 = v4;
    v6 = sub_1B79C595C;
    v7 = v3;
    v8 = v5;
  }

  else
  {
    v9 = sub_1B7A9A710();
    v8 = v10;
    *(v2 + 288) = v9;
    *(v2 + 296) = v10;
    v6 = sub_1B79C51F4;
    v7 = v9;
  }

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1B79C51F4()
{
  v2 = v0[30];
  v1 = v0[31];
  v4 = v0[27];
  v3 = v0[28];
  v5 = *(v3 + 16);
  v0[38] = v5;
  v0[39] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v2, v1, v4);
  sub_1B7A9A830();
  v6 = sub_1B7A9A750();
  v0[40] = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[41] = AssociatedConformanceWitness;
  v8 = swift_task_alloc();
  v0[42] = v8;
  *v8 = v0;
  v8[1] = sub_1B79C533C;
  v9 = v0[23];
  v10 = v0[24];
  v11 = v0[22];
  v12 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v9, v6, v12, v11, v10, AssociatedConformanceWitness);
}

uint64_t sub_1B79C533C()
{
  v2 = *v1;

  v3 = *(v2 + 296);
  v4 = *(v2 + 288);
  if (v0)
  {
    v5 = sub_1B79C5AF4;
  }

  else
  {
    v5 = sub_1B79C5490;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1B79C5490()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 136);
  v3 = *(v0 + 88);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));

LABEL_5:
    v10 = *(v0 + 72);
    (*(v0 + 304))(*(v0 + 232), *(v0 + 248), *(v0 + 216));
    v11 = swift_dynamicCast();
    v12 = *(v10 + 56);
    if (v11)
    {
      v14 = *(v0 + 72);
      v13 = *(v0 + 80);
      v16 = *(v0 + 56);
      v15 = *(v0 + 64);
      v12(v16, 0, 1, v15);
      (*(v14 + 32))(v13, v16, v15);
      if (sub_1B7A98BB0() & 1) != 0 || (sub_1B7A9A810())
      {
        v17 = *(v0 + 248);
        v18 = *(v0 + 216);
        v19 = *(v0 + 224);
        (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
        (*(v19 + 8))(v17, v18);
      }

      else
      {
        v37 = *(v0 + 248);
        v38 = *(v0 + 216);
        v39 = *(v0 + 224);
        v41 = *(v0 + 72);
        v40 = *(v0 + 80);
        v42 = *(v0 + 64);
        IntentViewLogFinishedSequenceError()();
        (*(v41 + 8))(v40, v42);
        (*(v39 + 8))(v37, v38);
      }
    }

    else
    {
      v20 = *(v0 + 248);
      v21 = *(v0 + 216);
      v22 = *(v0 + 224);
      v23 = *(v0 + 56);
      v12(v23, 1, 1, *(v0 + 64));
      (*(v22 + 8))(v20, v21);
      sub_1B7957888(v23, &qword_1EBA47308);
    }

    v24 = *(v0 + 8);

    return v24();
  }

  (*(v2 + 32))(*(v0 + 144), v1, v3);
  if (sub_1B7A9A810())
  {
    v5 = *(v0 + 200);
    v4 = *(v0 + 208);
    v6 = *(v0 + 192);
    v8 = *(v0 + 136);
    v7 = *(v0 + 144);
    v9 = *(v0 + 88);

    (*(v8 + 8))(v7, v9);
    (*(v5 + 8))(v4, v6);
    goto LABEL_5;
  }

  v26 = *(v0 + 136);
  v27 = *(v0 + 128);
  v29 = *(v0 + 104);
  v28 = *(v0 + 112);
  v43 = *(v0 + 96);
  v44 = *(v0 + 88);
  v45 = *(v0 + 144);
  (*(v26 + 16))(v27);
  swift_storeEnumTagMultiPayload();
  sub_1B79C5D7C();
  sub_1B7996A3C(v27, v43);
  sub_1B79C7F58(v28);
  (*(v29 + 8))(v28, v43);
  (*(v26 + 8))(v45, v44);
  v30 = sub_1B7A9A750();
  *(v0 + 320) = v30;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(v0 + 328) = AssociatedConformanceWitness;
  v32 = swift_task_alloc();
  *(v0 + 336) = v32;
  *v32 = v0;
  v32[1] = sub_1B79C533C;
  v33 = *(v0 + 184);
  v34 = *(v0 + 192);
  v35 = *(v0 + 176);
  v36 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v33, v30, v36, v35, v34, AssociatedConformanceWitness);
}

uint64_t sub_1B79C595C()
{

  v1 = v0[35];
  v2 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[12];
  *v2 = v1;
  swift_storeEnumTagMultiPayload();
  v6 = v1;
  sub_1B79C5D7C();
  sub_1B7996A3C(v2, v5);
  sub_1B79C7F58(v3);
  (*(v4 + 8))(v3, v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1B79C5AF4()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[19];
  v4 = v0[20];

  v5 = *(v4 + 32);
  v5(v2, v1, v3);
  swift_getAssociatedConformanceWitness();
  v6 = sub_1B7A9AE50();
  v7 = v0[21];
  if (v6)
  {
    v8 = v6;
    (*(v0[20] + 8))(v0[21], v0[19]);
  }

  else
  {
    v9 = v0[19];
    v8 = swift_allocError();
    v5(v10, v7, v9);
  }

  v11 = v0[31];
  v12 = v0[27];
  v13 = v0[28];
  (*(v0[25] + 8))(v0[26], v0[24]);
  (*(v13 + 8))(v11, v12);
  v14 = v0[16];
  v16 = v0[13];
  v15 = v0[14];
  v17 = v0[12];
  *v14 = v8;
  swift_storeEnumTagMultiPayload();
  v18 = v8;
  sub_1B79C5D7C();
  sub_1B7996A3C(v14, v17);
  sub_1B79C7F58(v15);
  (*(v16 + 8))(v15, v17);

  v19 = v0[1];

  return v19();
}

uint64_t sub_1B79C5D7C()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  type metadata accessor for IntentResult();
  v0 = sub_1B7A98870();
  return MEMORY[0x1B8CA9A40](v0);
}

uint64_t sub_1B79C5E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a8;
  v8[6] = v23;
  v8[3] = a6;
  v8[4] = a7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47308);
  v8[7] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47310);
  v8[8] = v13;
  v8[9] = *(v13 - 8);
  v8[10] = swift_task_alloc();
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[11] = AssociatedTypeWitness;
  v15 = type metadata accessor for IntentResult();
  v8[12] = v15;
  v8[13] = *(v15 - 8);
  v8[14] = swift_task_alloc();
  v8[15] = type metadata accessor for IntentResult._State();
  v8[16] = swift_task_alloc();
  v8[17] = *(AssociatedTypeWitness - 8);
  v8[18] = swift_task_alloc();
  v16 = swift_getAssociatedTypeWitness();
  v8[19] = v16;
  v8[20] = *(v16 - 8);
  v8[21] = swift_task_alloc();
  v8[22] = swift_task_alloc();
  sub_1B7A9AB60();
  v8[23] = swift_task_alloc();
  v17 = swift_getAssociatedTypeWitness();
  v8[24] = v17;
  v8[25] = *(v17 - 8);
  v8[26] = swift_task_alloc();
  v18 = swift_checkMetadataState();
  v8[27] = v18;
  v8[28] = *(v18 - 8);
  v8[29] = swift_task_alloc();
  v8[30] = swift_task_alloc();
  v19 = swift_task_alloc();
  v8[31] = v19;
  v8[32] = sub_1B7A9A760();
  v8[33] = sub_1B7A9A750();
  v8[2] = a4;
  v20 = swift_task_alloc();
  v8[34] = v20;
  *v20 = v8;
  v20[1] = sub_1B79C6284;

  return IntentDispatchAction.callAsFunction<A>(_:)(v19, a5, a7, a8);
}

uint64_t sub_1B79C6284()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = sub_1B7A9A710();
    v5 = v4;
    v6 = sub_1B79C943C;
    v7 = v3;
    v8 = v5;
  }

  else
  {
    v9 = sub_1B7A9A710();
    v8 = v10;
    *(v2 + 288) = v9;
    *(v2 + 296) = v10;
    v6 = sub_1B79C63E4;
    v7 = v9;
  }

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1B79C63E4()
{
  v2 = v0[30];
  v1 = v0[31];
  v4 = v0[27];
  v3 = v0[28];
  v5 = *(v3 + 16);
  v0[38] = v5;
  v0[39] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v2, v1, v4);
  sub_1B7A9A830();
  v6 = sub_1B7A9A750();
  v0[40] = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[41] = AssociatedConformanceWitness;
  v8 = swift_task_alloc();
  v0[42] = v8;
  *v8 = v0;
  v8[1] = sub_1B79C652C;
  v9 = v0[23];
  v10 = v0[24];
  v11 = v0[22];
  v12 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v9, v6, v12, v11, v10, AssociatedConformanceWitness);
}

uint64_t sub_1B79C652C()
{
  v2 = *v1;

  v3 = *(v2 + 296);
  v4 = *(v2 + 288);
  if (v0)
  {
    v5 = sub_1B79C945C;
  }

  else
  {
    v5 = sub_1B79C6680;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1B79C6680()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 136);
  v3 = *(v0 + 88);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));

LABEL_5:
    v10 = *(v0 + 72);
    (*(v0 + 304))(*(v0 + 232), *(v0 + 248), *(v0 + 216));
    v11 = swift_dynamicCast();
    v12 = *(v10 + 56);
    if (v11)
    {
      v14 = *(v0 + 72);
      v13 = *(v0 + 80);
      v16 = *(v0 + 56);
      v15 = *(v0 + 64);
      v12(v16, 0, 1, v15);
      (*(v14 + 32))(v13, v16, v15);
      if (sub_1B7A98BB0() & 1) != 0 || (sub_1B7A9A810())
      {
        v17 = *(v0 + 248);
        v18 = *(v0 + 216);
        v19 = *(v0 + 224);
        (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
        (*(v19 + 8))(v17, v18);
      }

      else
      {
        v37 = *(v0 + 248);
        v38 = *(v0 + 216);
        v39 = *(v0 + 224);
        v41 = *(v0 + 72);
        v40 = *(v0 + 80);
        v42 = *(v0 + 64);
        IntentViewLogFinishedSequenceError()();
        (*(v41 + 8))(v40, v42);
        (*(v39 + 8))(v37, v38);
      }
    }

    else
    {
      v20 = *(v0 + 248);
      v21 = *(v0 + 216);
      v22 = *(v0 + 224);
      v23 = *(v0 + 56);
      v12(v23, 1, 1, *(v0 + 64));
      (*(v22 + 8))(v20, v21);
      sub_1B7957888(v23, &qword_1EBA47308);
    }

    v24 = *(v0 + 8);

    return v24();
  }

  (*(v2 + 32))(*(v0 + 144), v1, v3);
  if (sub_1B7A9A810())
  {
    v5 = *(v0 + 200);
    v4 = *(v0 + 208);
    v6 = *(v0 + 192);
    v8 = *(v0 + 136);
    v7 = *(v0 + 144);
    v9 = *(v0 + 88);

    (*(v8 + 8))(v7, v9);
    (*(v5 + 8))(v4, v6);
    goto LABEL_5;
  }

  v26 = *(v0 + 136);
  v27 = *(v0 + 128);
  v29 = *(v0 + 104);
  v28 = *(v0 + 112);
  v43 = *(v0 + 96);
  v44 = *(v0 + 88);
  v45 = *(v0 + 144);
  (*(v26 + 16))(v27);
  swift_storeEnumTagMultiPayload();
  sub_1B79C5D7C();
  sub_1B7996A3C(v27, v43);
  sub_1B79C7F58(v28);
  (*(v29 + 8))(v28, v43);
  (*(v26 + 8))(v45, v44);
  v30 = sub_1B7A9A750();
  *(v0 + 320) = v30;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(v0 + 328) = AssociatedConformanceWitness;
  v32 = swift_task_alloc();
  *(v0 + 336) = v32;
  *v32 = v0;
  v32[1] = sub_1B79C652C;
  v33 = *(v0 + 184);
  v34 = *(v0 + 192);
  v35 = *(v0 + 176);
  v36 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v33, v30, v36, v35, v34, AssociatedConformanceWitness);
}

uint64_t sub_1B79C6B58(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B79C6BD8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B79C6C14(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_1B798D338;

  return v5();
}

uint64_t sub_1B79C6D08(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_1B798D54C;

  return v5();
}

uint64_t sub_1B79C6DFC()
{
  if (*(v0 + 16))
  {

    sub_1B7A9A7F0();
  }

  return result;
}

uint64_t sub_1B79C6E68(int a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v55 = a2;
  v56 = a5;
  v59 = a4;
  v61 = a3;
  v58 = a1;
  v6 = *(*v5 + 96);
  v7 = *(*v5 + 80);
  v62 = *(*v5 + 88);
  swift_getAssociatedTypeWitness();
  v63 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for IntentResult();
  v68 = sub_1B7A98870();
  v57 = *(v68 - 8);
  v54 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v67 = &v48 - v10;
  v66 = sub_1B7A999B0();
  v53 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v52 = v11;
  v65 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v7;
  v50 = *(v7 - 8);
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v64 = &v48 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B40);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v48 - v16;
  v18 = sub_1B7A9AB60();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v48 - v20;
  v22 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v48 - v27;
  v59 = *v59;
  if ((v58 & 1) != 0 || !*(v60 + 16) && (sub_1B79C5D7C(), IntentResult.data.getter(v9, v21), (*(v22 + 8))(v28, v9), v29 = (*(*(AssociatedTypeWitness - 8) + 48))(v21, 1, AssociatedTypeWitness), (*(v19 + 8))(v21, v18), v29 == 1) || (sub_1B79C5D7C(), v30 = sub_1B7996ACC(), result = (*(v22 + 8))(v25, v9), v30))
  {
    v32 = sub_1B7A9A7E0();
    v33 = *(*(v32 - 8) + 56);
    v49 = v17;
    v33(v17, 1, 1, v32);
    v34 = v50;
    (*(v50 + 16))(v64, v55, v12);
    v35 = v53;
    (*(v53 + 16))(v65, v56, v66);
    v36 = v57;
    (*(v57 + 16))(v67, v61, v68);
    sub_1B7A9A760();
    v37 = v59;

    v38 = sub_1B7A9A750();
    v39 = (*(v34 + 80) + 64) & ~*(v34 + 80);
    v40 = (v51 + *(v35 + 80) + v39) & ~*(v35 + 80);
    v41 = (v52 + *(v36 + 80) + v40) & ~*(v36 + 80);
    v42 = swift_allocObject();
    v43 = MEMORY[0x1E69E85E0];
    *(v42 + 2) = v38;
    *(v42 + 3) = v43;
    v45 = v62;
    v44 = v63;
    *(v42 + 4) = v12;
    *(v42 + 5) = v45;
    *(v42 + 6) = v44;
    *(v42 + 7) = v37;
    (*(v34 + 32))(&v42[v39], v64, v12);
    (*(v35 + 32))(&v42[v40], v65, v66);
    (*(v36 + 32))(&v42[v41], v67, v68);
    v46 = sub_1B79A9B34(0, 0, v49, &unk_1B7A9F490, v42);
    v47 = v60;
    sub_1B79C6DFC();
    *(v47 + 16) = v46;
  }

  return result;
}

uint64_t sub_1B79C74D0(uint64_t a1)
{
  v3 = v2;
  v4 = v1[4];
  v5 = *(*(v4 - 8) + 64);
  v6 = (*(*(v4 - 8) + 80) + 64) & ~*(*(v4 - 8) + 80);
  v7 = *(sub_1B7A999B0() - 8);
  v8 = (v6 + v5 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = v8 + *(v7 + 64);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  type metadata accessor for IntentResult();
  v10 = *(sub_1B7A98870() - 8);
  v11 = (v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = v1[2];
  v13 = v1[3];
  v14 = v1[7];
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1B798D54C;

  return sub_1B79C4C1C(a1, v12, v13, v14, v1 + v6, v1 + v8, v1 + v11, v4);
}

uint64_t sub_1B79C76F8(int a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v52 = a4;
  v54 = a3;
  v48 = a2;
  v51 = a1;
  v6 = *v4;
  v7 = *(*v4 + 96);
  v8 = *(v6 + 80);
  v55 = *(v6 + 88);
  swift_getAssociatedTypeWitness();
  v56 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for IntentResult();
  v11 = sub_1B7A98870();
  v49 = *(v11 - 8);
  v50 = v11;
  v47[1] = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v59 = v47 - v12;
  v53 = v8;
  v13 = *(v8 - 8);
  v47[0] = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v58 = v47 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B40);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v57 = v47 - v17;
  v18 = sub_1B7A9AB60();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v47 - v20;
  v22 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = v47 - v27;
  v52 = *v52;
  if ((v51 & 1) != 0 || !v5[2] && (sub_1B79C5D7C(), IntentResult.data.getter(v10, v21), (*(v22 + 8))(v28, v10), v29 = (*(*(AssociatedTypeWitness - 8) + 48))(v21, 1, AssociatedTypeWitness), (*(v19 + 8))(v21, v18), v29 == 1) || (sub_1B79C5D7C(), v30 = sub_1B7996ACC(), result = (*(v22 + 8))(v25, v10), v30))
  {
    v32 = sub_1B7A9A7E0();
    (*(*(v32 - 8) + 56))(v57, 1, 1, v32);
    v33 = v13;
    v34 = v5;
    v35 = v53;
    (*(v13 + 16))(v58, v48, v53);
    v37 = v49;
    v36 = v50;
    (*(v49 + 16))(v59, v54, v50);
    sub_1B7A9A760();
    v38 = v52;

    v39 = sub_1B7A9A750();
    v40 = (*(v33 + 80) + 64) & ~*(v33 + 80);
    v41 = (v47[0] + v40 + *(v37 + 80)) & ~*(v37 + 80);
    v42 = swift_allocObject();
    v43 = MEMORY[0x1E69E85E0];
    *(v42 + 2) = v39;
    *(v42 + 3) = v43;
    v45 = v55;
    v44 = v56;
    *(v42 + 4) = v35;
    *(v42 + 5) = v45;
    *(v42 + 6) = v44;
    *(v42 + 7) = v38;
    (*(v33 + 32))(&v42[v40], v58, v35);
    (*(v37 + 32))(&v42[v41], v59, v36);
    v46 = sub_1B79A9B34(0, 0, v57, &unk_1B7A9F4B0, v42);
    sub_1B79C6DFC();
    v34[2] = v46;
  }

  return result;
}

uint64_t sub_1B79C7C94(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  v2 = type metadata accessor for IntentResult();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - v4, a1, v2, v3);
  sub_1B7A98870();
  return sub_1B7A98810();
}

uint64_t sub_1B79C7D90(uint64_t a1)
{
  v3 = v2;
  v5 = v1[4];
  v4 = v1[5];
  v6 = (*(*(v5 - 8) + 80) + 64) & ~*(*(v5 - 8) + 80);
  v7 = v6 + *(*(v5 - 8) + 64);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  type metadata accessor for IntentResult();
  v8 = *(sub_1B7A98870() - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[7];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1B798D54C;

  return sub_1B79C5E10(a1, v10, v11, v12, v1 + v6, v1 + v9, v5, v4);
}

uint64_t sub_1B79C7F58(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v2 = type metadata accessor for IntentResult();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - v4, a1, v2, v3);
  sub_1B7A98870();
  return sub_1B7A98810();
}

uint64_t objectdestroy_55Tm()
{
  v1 = type metadata accessor for _IntentDispatchViewModifier();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  if (*(v0 + v2 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + v2);
  }

  sub_1B79C8A54(*(v3 + 32), *(v3 + 40), *(v3 + 48));
  v4 = v1[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v3 + v4, AssociatedTypeWitness);
  v6 = v3 + v1[11];

  v7 = swift_getAssociatedTypeWitness();
  type metadata accessor for IntentResult();
  v8 = *(sub_1B7A98870() + 32);
  type metadata accessor for IntentResult._State();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    (*(*(v7 - 8) + 8))(v6 + v8, v7);
  }

  j__swift_release();
  sub_1B79C8A64(*(v3 + v1[13]), *(v3 + v1[13] + 8), *(v3 + v1[13] + 16), sub_1B79C9450);

  return swift_deallocObject();
}

uint64_t sub_1B79C82F0(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(type metadata accessor for _IntentDispatchViewModifier() - 8);
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a1(v5, v2, v3);
}

uint64_t sub_1B79C8388(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B79C83F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B798D54C;

  return sub_1B7A661F0(a1, v4, v5, v6);
}

uint64_t sub_1B79C84AC(uint64_t a1)
{
  v4 = *(v1 + 32);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B798D54C;

  return sub_1B79C6C14(a1, v4);
}

uint64_t sub_1B79C8574(uint64_t a1)
{
  v4 = *(v1 + 32);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B798D338;

  return sub_1B79C6C14(a1, v4);
}

uint64_t sub_1B79C863C(uint64_t a1)
{
  v3 = v1[4];
  v4 = *(*(v3 - 8) + 64);
  v14 = (*(*(v3 - 8) + 80) + 72) & ~*(*(v3 - 8) + 80);
  v5 = *(sub_1B7A999B0() - 8);
  v6 = (v14 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  swift_getAssociatedTypeWitness();
  type metadata accessor for IntentResult();
  sub_1B7A98870();
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[6];
  v10 = v1[7];
  v11 = v1[8];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1B798D54C;

  return sub_1B79C0300(a1, v7, v8, v9, v10, v11, v1 + v14, v1 + v6);
}

unint64_t sub_1B79C8854()
{
  result = qword_1EBA47328[0];
  if (!qword_1EBA47328[0])
  {
    sub_1B7A9A720();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBA47328);
  }

  return result;
}

uint64_t sub_1B79C88AC(uint64_t a1)
{
  v3 = v2;
  v4 = v1[4];
  v5 = (*(*(v4 - 8) + 80) + 72) & ~*(*(v4 - 8) + 80);
  v6 = v5 + *(*(v4 - 8) + 64);
  swift_getAssociatedTypeWitness();
  type metadata accessor for IntentResult();
  v7 = *(sub_1B7A98870() - 8);
  v8 = (v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[6];
  v12 = v1[7];
  v13 = v1[8];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1B798D54C;

  return sub_1B79C2140(a1, v9, v10, v11, v12, v13, v1 + v5, v1 + v8);
}

uint64_t sub_1B79C8A54(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_1B79C8A64(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void))
{
  if (a3)
  {
    return a4();
  }

  else
  {
  }
}

uint64_t objectdestroy_118Tm()
{
  v1 = *(v0 + 24);
  v2 = type metadata accessor for _IntentDispatchViewModifierFollowing();
  v3 = (*(*(v2 - 1) + 80) + 40) & ~*(*(v2 - 1) + 80);
  v4 = v0 + v3;
  if (*(v0 + v3 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + v3);
  }

  sub_1B79C8A54(*(v4 + 32), *(v4 + 40), *(v4 + 48));
  v5 = v2[12];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v4 + v5, AssociatedTypeWitness);
  v7 = v4 + v2[13];

  v8 = swift_getAssociatedTypeWitness();
  type metadata accessor for IntentResult();
  v9 = *(sub_1B7A98870() + 32);
  type metadata accessor for IntentResult._State();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    (*(*(v8 - 8) + 8))(v7 + v9, v8);
  }

  v11 = v4 + v2[14];

  type metadata accessor for IntentResult();
  v12 = *(sub_1B7A98870() + 32);
  type metadata accessor for IntentResult._State();
  v13 = swift_getEnumCaseMultiPayload();
  if (v13 == 2)
  {
  }

  else if (v13 <= 1)
  {
    (*(*(v1 - 8) + 8))(v11 + v12, v1);
  }

  j__swift_release();
  sub_1B79C8A64(*(v4 + v2[16]), *(v4 + v2[16] + 8), *(v4 + v2[16] + 16), sub_1B79C9450);

  return swift_deallocObject();
}

uint64_t sub_1B79C8D88(uint64_t (*a1)(char *, uint64_t, uint64_t, uint64_t))
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = *(type metadata accessor for _IntentDispatchViewModifierFollowing() - 8);
  v6 = v1 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  return a1(v6, v2, v3, v4);
}

uint64_t sub_1B79C8E2C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B798D338;

  return sub_1B7A661F0(a1, v4, v5, v6);
}

uint64_t sub_1B79C8EE0(uint64_t a1)
{
  v4 = *(v1 + 40);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B798D54C;

  return sub_1B79C6D08(a1, v4);
}

uint64_t objectdestroy_61Tm()
{

  return swift_deallocObject();
}

void sub_1B79C9048()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1B79C93D4(319, &qword_1EBA473B0, &qword_1EBA473B8, &unk_1B7A9F5B0, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B79C9104(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))();
  }

  v6 = ((((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 17;
  v7 = (a2 - v5 + 255) >> 8;
  if (v6 <= 3)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 2;
  }

  if (v8 >= 0x10000)
  {
    v9 = 4;
  }

  else
  {
    v9 = 2;
  }

  if (v8 < 0x100)
  {
    v9 = 1;
  }

  if (v8 >= 2)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (v10 > 1)
  {
    if (v10 == 2)
    {
      v11 = *&a1[v6];
      if (!*&a1[v6])
      {
        goto LABEL_24;
      }
    }

    else
    {
      v11 = *&a1[v6];
      if (!v11)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v10 || (v11 = a1[v6]) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))();
    }

    return 0;
  }

  v12 = (v11 - 1) << (8 * v6);
  if (v6 <= 3)
  {
    v13 = *a1;
  }

  else
  {
    v12 = 0;
    v13 = *a1;
  }

  return v5 + (v13 | v12) + 1;
}

void sub_1B79C9228(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = ((((*(v6 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v7 >= a3)
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v9 = (a3 - v7 + 255) >> 8;
    if (v8 <= 3)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    if (v7 >= a2)
    {
LABEL_14:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *&a1[v8] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_29;
        }

        *&a1[v8] = 0;
      }

      else if (v12)
      {
        a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_29;
      }

      if (!a2)
      {
        return;
      }

LABEL_29:
      v15 = *(v6 + 56);

      v15();
      return;
    }
  }

  v13 = ~v7 + a2;
  bzero(a1, v8);
  if (v8 <= 3)
  {
    v14 = (v13 >> 8) + 1;
  }

  else
  {
    v14 = 1;
  }

  if (v8 <= 3)
  {
    *a1 = v13;
    if (v12 > 1)
    {
LABEL_24:
      if (v12 == 2)
      {
        *&a1[v8] = v14;
      }

      else
      {
        *&a1[v8] = v14;
      }

      return;
    }
  }

  else
  {
    *a1 = v13;
    if (v12 > 1)
    {
      goto LABEL_24;
    }
  }

  if (v12)
  {
    a1[v8] = v14;
  }
}

void sub_1B79C93D4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t MediaArtworkStyle.transaction.getter()
{
  sub_1B7A98A40();

  return sub_1B7A97180();
}

uint64_t MediaArtworkStyleConfiguration.subscript.getter()
{
  result = sub_1B7A98EE0();
  if (result)
  {
    return sub_1B7A98530();
  }

  return result;
}

uint64_t MediaArtworkStyleConfiguration.subscript.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = *(v3 + *(type metadata accessor for MediaArtworkStyleConfiguration(0) + 24));

  return sub_1B79EE958(v7, a1, a2, a3);
}

uint64_t StandardMediaArtworkStyle.init(cornerRadius:cornerStyle:)@<X0>(uint64_t a1@<X0>, double *a2@<X8>, double a3@<D0>)
{
  *a2 = a3;
  v5 = *(type metadata accessor for StandardMediaArtworkStyle(0) + 20);
  v6 = sub_1B7A97970();
  v7 = *(*(v6 - 8) + 32);

  return v7(a2 + v5, a1, v6);
}

uint64_t StandardMediaArtworkStyle.transaction.getter()
{
  sub_1B7A98A40();

  return sub_1B7A97180();
}

uint64_t StandardMediaArtworkStyle.body(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a1;
  v48 = a2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA473C0);
  MEMORY[0x1EEE9AC00](v46);
  v39 = &v37 - v3;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA473C8);
  MEMORY[0x1EEE9AC00](v44);
  v38 = &v37 - v4;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA473D0);
  MEMORY[0x1EEE9AC00](v45);
  v43 = &v37 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA473D8);
  MEMORY[0x1EEE9AC00](v40);
  v7 = &v37 - v6;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA473E0);
  MEMORY[0x1EEE9AC00](v47);
  v41 = &v37 - v8;
  v9 = sub_1B7A98600();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA473E8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v37 - v14;
  v16 = sub_1B7A97670();
  v17 = v16 - 8;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *v2;
  v21 = *(type metadata accessor for StandardMediaArtworkStyle(0) + 20);
  v22 = *(v17 + 28);
  v23 = sub_1B7A97970();
  (*(*(v23 - 8) + 16))(&v19[v22], &v2[v21], v23);
  *v19 = v20;
  *(v19 + 1) = v20;
  type metadata accessor for MediaArtworkStyleConfiguration(0);
  if (sub_1B7A97520())
  {
    (*(v10 + 104))(v12, *MEMORY[0x1E6981630], v9);
    v24 = sub_1B7A98670();
    (*(v10 + 8))(v12, v9);
    sub_1B79C9D98(v19, &v15[*(v13 + 36)]);
    *v15 = v24;
    *(v15 + 1) = 0;
    *(v15 + 8) = 1;
    sub_1B7957820(v15, v7, &qword_1EBA473E8);
    swift_storeEnumTagMultiPayload();
    sub_1B79C9E88();
    sub_1B79C9FC4();
    v25 = v41;
    sub_1B7A97B30();
    sub_1B7957820(v25, v43, &qword_1EBA473E0);
    swift_storeEnumTagMultiPayload();
    sub_1B79C9DFC();
    sub_1B79CA0AC();
    sub_1B7A97B30();

    sub_1B7957888(v25, &qword_1EBA473E0);
    v26 = v15;
    v27 = &qword_1EBA473E8;
  }

  else
  {
    v37 = v13;
    v28 = v39;
    v29 = v38;
    v30 = v44;
    v31 = v41;
    if (sub_1B7A98EE0())
    {
      v32 = sub_1B7A98530();
      KeyPath = swift_getKeyPath();
      sub_1B79C9D98(v19, v29);
      v34 = (v29 + *(v30 + 36));
      *v34 = KeyPath;
      v34[1] = v32;
      sub_1B7957820(v29, v7, &qword_1EBA473C8);
      swift_storeEnumTagMultiPayload();
      sub_1B79C9E88();
      sub_1B79C9FC4();

      sub_1B7A97B30();
      sub_1B7957820(v31, v43, &qword_1EBA473E0);
      swift_storeEnumTagMultiPayload();
      sub_1B79C9DFC();
      sub_1B79CA0AC();
      sub_1B7A97B30();

      sub_1B7957888(v31, &qword_1EBA473E0);
      v26 = v29;
      v27 = &qword_1EBA473C8;
    }

    else
    {
      v35 = sub_1B7A97C50();
      sub_1B79C9D98(v19, v28);
      *(v28 + *(v46 + 36)) = v35;
      sub_1B7957820(v28, v43, &qword_1EBA473C0);
      swift_storeEnumTagMultiPayload();
      sub_1B79C9DFC();
      sub_1B79CA0AC();
      sub_1B7A97B30();
      v26 = v28;
      v27 = &qword_1EBA473C0;
    }
  }

  sub_1B7957888(v26, v27);
  return sub_1B79CA194(v19);
}

uint64_t sub_1B79C9D98(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B7A97670();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B79C9DFC()
{
  result = qword_1EBA473F0;
  if (!qword_1EBA473F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA473E0);
    sub_1B79C9E88();
    sub_1B79C9FC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA473F0);
  }

  return result;
}

unint64_t sub_1B79C9E88()
{
  result = qword_1EBA473F8;
  if (!qword_1EBA473F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA473E8);
    sub_1B79C9F40();
    sub_1B797EC34(&qword_1EBA47410, &qword_1EBA47418);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA473F8);
  }

  return result;
}

unint64_t sub_1B79C9F40()
{
  result = qword_1EBA47400;
  if (!qword_1EBA47400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47408);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA47400);
  }

  return result;
}

unint64_t sub_1B79C9FC4()
{
  result = qword_1EBA47420;
  if (!qword_1EBA47420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA473C8);
    sub_1B79CA93C(&qword_1EBA47428, MEMORY[0x1E697EAF0]);
    sub_1B797EC34(&qword_1EBA47430, &qword_1EBA47438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA47420);
  }

  return result;
}

unint64_t sub_1B79CA0AC()
{
  result = qword_1EBA47440;
  if (!qword_1EBA47440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA473C0);
    sub_1B79CA93C(&qword_1EBA47428, MEMORY[0x1E697EAF0]);
    sub_1B797EC34(&qword_1EBA47448, &qword_1EBA47450);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA47440);
  }

  return result;
}

uint64_t sub_1B79CA194(uint64_t a1)
{
  v2 = sub_1B7A97670();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static MediaArtworkStyle<>.standard.getter@<X0>(char *a1@<X8>)
{
  v2 = *(type metadata accessor for StandardMediaArtworkStyle(0) + 20);
  v3 = *MEMORY[0x1E697F480];
  v4 = sub_1B7A97970();
  result = (*(*(v4 - 8) + 104))(&a1[v2], v3, v4);
  *a1 = 0;
  return result;
}

uint64_t static MediaArtworkStyle<>.standard(cornerRadius:cornerStyle:)@<X0>(uint64_t a1@<X0>, double *a2@<X8>, double a3@<D0>)
{
  v6 = *(type metadata accessor for StandardMediaArtworkStyle(0) + 20);
  v7 = sub_1B7A97970();
  result = (*(*(v7 - 8) + 16))(a2 + v6, a1, v7);
  *a2 = a3;
  return result;
}