uint64_t SiriSystemCommandsUIPlugin.snippet(for:mode:idiom:)(uint64_t a1)
{
  restarted = type metadata accessor for RestartConfirmView();
  v3 = OUTLINED_FUNCTION_0(restarted);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = (v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for SiriSystemCommandsModels.RestartConfirmationModel(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v21 - v13;
  v15 = type metadata accessor for SiriSystemCommandsModels(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2691EF820(a1, v18, type metadata accessor for SiriSystemCommandsModels);
  sub_2691EF7BC(v18, v14);
  sub_2691EF820(v14, v12, type metadata accessor for SiriSystemCommandsModels.RestartConfirmationModel);
  RestartConfirmView.init(model:)(v12, v7);
  sub_2691EF938(&qword_2802FBA60, type metadata accessor for RestartConfirmView);
  v19 = sub_2691F3120();
  sub_2691EF880(v7, type metadata accessor for RestartConfirmView);
  sub_2691EF880(v14, type metadata accessor for SiriSystemCommandsModels.RestartConfirmationModel);
  return v19;
}

uint64_t sub_2691EF7BC(uint64_t a1, uint64_t a2)
{
  restarted = type metadata accessor for SiriSystemCommandsModels.RestartConfirmationModel(0);
  (*(*(restarted - 8) + 32))(a2, a1, restarted);
  return a2;
}

uint64_t sub_2691EF820(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2691EF880(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2691EF938(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2691EF980@<X0>(uint64_t *a1@<X8>)
{
  result = SiriSystemCommandsUIPlugin.__allocating_init()();
  *a1 = result;
  return result;
}

uint64_t sub_2691EFA20()
{
  sub_2691F31D0();
  OUTLINED_FUNCTION_0_0();
  sub_2691F02B8(v0, v1);

  return sub_2691F30F0();
}

uint64_t sub_2691EFA84@<X0>(uint64_t a1@<X8>)
{
  restarted = type metadata accessor for RestartConfirmView();
  OUTLINED_FUNCTION_1(restarted);
  return sub_2691F0088(v1 + v4, a1, v5);
}

uint64_t type metadata accessor for RestartConfirmView()
{
  result = qword_2802FBC30;
  if (!qword_2802FBC30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RestartConfirmView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_2691F31D0();
  OUTLINED_FUNCTION_0_0();
  sub_2691F02B8(v4, v5);
  *a2 = sub_2691F30F0();
  a2[1] = v6;
  restarted = type metadata accessor for RestartConfirmView();
  OUTLINED_FUNCTION_1(restarted);
  return sub_2691F0134(a1, a2 + v8, v9);
}

uint64_t sub_2691EFB8C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v42 = a3;
  v43 = a4;
  v40 = a2;
  v36 = a1;
  v41 = sub_2691F3180();
  v5 = OUTLINED_FUNCTION_2(v41);
  v39 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  restarted = type metadata accessor for RestartConfirmView();
  v12 = *(restarted - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](restarted - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802FBAA0, &qword_2691F3870);
  v15 = OUTLINED_FUNCTION_2(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  v21 = &v36 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802FBAA8, &unk_2691F3878);
  v37 = OUTLINED_FUNCTION_2(v22);
  v38 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v37);
  v27 = &v36 - v26;
  sub_2691F0088(v4, &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RestartConfirmView);
  v28 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v29 = swift_allocObject();
  sub_2691F0134(&v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28, type metadata accessor for RestartConfirmView);
  v44 = v4;
  sub_2691F3170();
  v30 = v39;
  v31 = v41;
  (*(v39 + 104))(v10, *v43, v41);
  v32 = sub_2691F06A4(&qword_2802FBAB0, &qword_2802FBAA0, &qword_2691F3870);
  sub_2691F3130();
  (*(v30 + 8))(v10, v31);
  (*(v17 + 8))(v21, v14);
  v45 = v14;
  v46 = v32;
  swift_getOpaqueTypeConformance2();
  v33 = v37;
  v34 = sub_2691F3120();
  (*(v38 + 8))(v27, v33);
  return v34;
}

uint64_t RestartConfirmView.body.getter()
{
  restarted = type metadata accessor for RestartConfirmView();
  v2 = *(restarted - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](restarted - 8);
  sub_2691F0088(v0, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RestartConfirmView);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_2691F0134(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4, type metadata accessor for RestartConfirmView);
  sub_2691F31B0();
  sub_2691F02B8(&qword_2802FBA80, MEMORY[0x277D63C38]);
  return sub_2691F3190();
}

uint64_t sub_2691F0088(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
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

uint64_t sub_2691F0134(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_0(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_2691F0194()
{
  v0 = *(type metadata accessor for RestartConfirmView() - 8);
  v1 = (*(v0 + 80) + 16) & ~*(v0 + 80);
  sub_2691EFB8C(&unk_2879D7C60, sub_2691F085C, sub_2691F09DC, MEMORY[0x277D63A78]);
  sub_2691EFB8C(&unk_2879D7C38, sub_2691F0674, sub_2691F068C, MEMORY[0x277D63A88]);
  return sub_2691F31A0();
}

uint64_t sub_2691F02B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2691F0358(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    restarted = type metadata accessor for SiriSystemCommandsModels.RestartConfirmationModel(0);
    v10 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v10, a2, restarted);
  }
}

void *sub_2691F0428(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    restarted = type metadata accessor for SiriSystemCommandsModels.RestartConfirmationModel(0);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, restarted);
  }

  return result;
}

void sub_2691F04D0()
{
  sub_2691F0554();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SiriSystemCommandsModels.RestartConfirmationModel(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2691F0554()
{
  if (!qword_2802FBA88)
  {
    sub_2691F31D0();
    sub_2691F02B8(&qword_2802FBA70, MEMORY[0x277D63F60]);
    v0 = sub_2691F3100();
    if (!v1)
    {
      atomic_store(v0, &qword_2802FBA88);
    }
  }
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

uint64_t sub_2691F06A4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_2691F06EC()
{
  result = qword_2802FBAB8;
  if (!qword_2802FBAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802FBAB8);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = (type metadata accessor for RestartConfirmView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[7];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802FBA78, &qword_2691F37D0);
  OUTLINED_FUNCTION_0(v6);
  v8 = *(v7 + 8);
  v8(v5, v6);
  restarted = type metadata accessor for SiriSystemCommandsModels.RestartConfirmationModel(0);
  v8(v5 + *(restarted + 20), v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void sub_2691F0874(uint64_t (*a1)(void))
{
  v3 = *(type metadata accessor for RestartConfirmView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  if (*v4)
  {
    v10 = *v4;
    v5 = a1();
    v6 = [v5 identifier];

    sub_2691F31F0();
    sub_2691F31E0();
    sub_2691F31C0();
  }

  else
  {
    v7 = *(v4 + 8);
    sub_2691F31D0();
    OUTLINED_FUNCTION_0_0();
    sub_2691F02B8(v8, v9);
    sub_2691F30E0();
    __break(1u);
  }
}

uint64_t sub_2691F09F4@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(type metadata accessor for RestartConfirmView() + 20);
  a1();
  sub_2691F06EC();
  result = sub_2691F3110();
  *a2 = result;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9 & 1;
  *(a2 + 24) = v10;
  return result;
}

uint64_t SiriSystemCommandsModels.RestartConfirmationModel.confirmText.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802FBA78, &qword_2691F37D0);
  sub_2691F30B0();
  return v1;
}

uint64_t sub_2691F0B24@<X0>(uint64_t *a1@<X8>)
{
  result = SiriSystemCommandsModels.RestartConfirmationModel.confirmText.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2691F0B50(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return SiriSystemCommandsModels.RestartConfirmationModel.confirmText.setter();
}

uint64_t (*SiriSystemCommandsModels.RestartConfirmationModel.confirmText.modify(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802FBA78, &qword_2691F37D0);
  v2[4] = sub_2691F30A0();
  return sub_2691F2FAC;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t SiriSystemCommandsModels.RestartConfirmationModel.rejectText.getter()
{
  v0 = *(type metadata accessor for SiriSystemCommandsModels.RestartConfirmationModel(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802FBA78, &qword_2691F37D0);
  sub_2691F30B0();
  return v2;
}

uint64_t sub_2691F0D20@<X0>(uint64_t *a1@<X8>)
{
  result = SiriSystemCommandsModels.RestartConfirmationModel.rejectText.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2691F0D4C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return SiriSystemCommandsModels.RestartConfirmationModel.rejectText.setter();
}

uint64_t SiriSystemCommandsModels.RestartConfirmationModel.rejectText.setter()
{
  v0 = *(type metadata accessor for SiriSystemCommandsModels.RestartConfirmationModel(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802FBA78, &qword_2691F37D0);
  return sub_2691F30C0();
}

uint64_t (*SiriSystemCommandsModels.RestartConfirmationModel.rejectText.modify(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v3 = *(type metadata accessor for SiriSystemCommandsModels.RestartConfirmationModel(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802FBA78, &qword_2691F37D0);
  v2[4] = sub_2691F30A0();
  return sub_2691F0E6C;
}

void sub_2691F0E70(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_2691F0EBC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x546D7269666E6F63 && a2 == 0xEB00000000747865;
  if (v4 || (OUTLINED_FUNCTION_11(0x546D7269666E6F63, 0xEB00000000747865, a1) & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65547463656A6572 && a2 == 0xEA00000000007478)
  {

    return 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_11(0x65547463656A6572, 0xEA00000000007478, a1);

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2691F0FB8(char a1)
{
  sub_2691F3290();
  MEMORY[0x26D633870](a1 & 1);
  return sub_2691F32B0();
}

uint64_t sub_2691F1000(char a1)
{
  if (a1)
  {
    return 0x65547463656A6572;
  }

  else
  {
    return 0x546D7269666E6F63;
  }
}

uint64_t sub_2691F1060()
{
  v1 = *v0;
  sub_2691F3290();
  MEMORY[0x26D633870](v1);
  return sub_2691F32B0();
}

uint64_t sub_2691F10AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2691F0EBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2691F10E4()
{
  sub_2691F131C();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2691F111C()
{
  sub_2691F131C();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t SiriSystemCommandsModels.RestartConfirmationModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802FBAC0, &qword_2691F3888);
  OUTLINED_FUNCTION_2(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  v10 = &v14[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2691F131C();
  sub_2691F32D0();
  v14[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802FBA78, &qword_2691F37D0);
  sub_2691F177C(&qword_2802FBAC8);
  OUTLINED_FUNCTION_9();
  if (!v1)
  {
    v12 = *(type metadata accessor for SiriSystemCommandsModels.RestartConfirmationModel(0) + 20);
    v14[14] = 1;
    OUTLINED_FUNCTION_9();
  }

  return (*(v5 + 8))(v10, v3);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_2691F131C()
{
  result = qword_2802FBC40;
  if (!qword_2802FBC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802FBC40);
  }

  return result;
}

uint64_t sub_2691F1370()
{
  sub_2691F3090();
  v0 = *(type metadata accessor for SiriSystemCommandsModels.RestartConfirmationModel(0) + 20);
  return sub_2691F3090();
}

uint64_t SiriSystemCommandsModels.RestartConfirmationModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802FBA78, &qword_2691F37D0);
  v4 = OUTLINED_FUNCTION_2(v41);
  v38 = v5;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v4);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v40 = v33 - v11;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802FBAD0, &qword_2691F3890);
  OUTLINED_FUNCTION_2(v39);
  v37 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  v17 = v33 - v16;
  restarted = type metadata accessor for SiriSystemCommandsModels.RestartConfirmationModel(0);
  v19 = OUTLINED_FUNCTION_0(restarted);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7();
  v24 = v23 - v22;
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2691F131C();
  sub_2691F32C0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v34 = restarted;
  v35 = v24;
  v27 = v37;
  v26 = v38;
  v43 = 0;
  v28 = sub_2691F177C(&qword_2802FBAD8);
  v29 = v39;
  sub_2691F3240();
  v33[1] = v28;
  v30 = v40;
  v40 = *(v26 + 32);
  (v40)(v35, v30, v41);
  v42 = 1;
  sub_2691F3240();
  (*(v27 + 8))(v17, v29);
  v31 = v35;
  (v40)(v35 + *(v34 + 20), v10, v41);
  sub_2691F1ED8(v31, v36, type metadata accessor for SiriSystemCommandsModels.RestartConfirmationModel);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2691F17EC(v31);
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return MEMORY[0x2821FEB70](*a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_2691F177C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802FBA78, &qword_2691F37D0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2691F17EC(uint64_t a1)
{
  restarted = type metadata accessor for SiriSystemCommandsModels.RestartConfirmationModel(0);
  (*(*(restarted - 8) + 8))(a1, restarted);
  return a1;
}

uint64_t sub_2691F1848(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x80000002691F3E00 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_11(0xD000000000000013, 0x80000002691F3E00, a1);

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2691F18FC(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_11(12383, 0xE200000000000000, a1);

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2691F1964()
{
  sub_2691F3290();
  MEMORY[0x26D633870](0);
  return sub_2691F32B0();
}

uint64_t sub_2691F1A24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2691F1848(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2691F1A5C()
{
  sub_2691F1E84();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2691F1A94()
{
  sub_2691F1E84();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_2691F1ACC()
{
  sub_2691F3290();
  MEMORY[0x26D633870](0);
  return sub_2691F32B0();
}

uint64_t sub_2691F1B18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2691F18FC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2691F1B44()
{
  sub_2691F1F38();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_2691F1B7C()
{
  sub_2691F1F38();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE720](v0);
}

uint64_t SiriSystemCommandsModels.encode(to:)(void *a1)
{
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802FBAE0, &qword_2691F3898);
  OUTLINED_FUNCTION_2(v28);
  v3 = v2;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - v7;
  v9 = type metadata accessor for SiriSystemCommandsModels(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  OUTLINED_FUNCTION_7();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802FBAE8, &qword_2691F38A0);
  OUTLINED_FUNCTION_2(v14);
  v16 = v15;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v19);
  v21 = &v27 - v20;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2691F1E84();
  sub_2691F32D0();
  sub_2691F1ED8(v27, v13, type metadata accessor for SiriSystemCommandsModels);
  sub_2691F1F38();
  sub_2691F3260();
  type metadata accessor for SiriSystemCommandsModels.RestartConfirmationModel(0);
  OUTLINED_FUNCTION_0_1();
  sub_2691F2504(v23, v24);
  v25 = v28;
  sub_2691F3270();
  sub_2691F17EC(v13);
  (*(v3 + 8))(v8, v25);
  return (*(v16 + 8))(v21, v14);
}

uint64_t sub_2691F1E4C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2691F1E84()
{
  result = qword_2802FBC48;
  if (!qword_2802FBC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802FBC48);
  }

  return result;
}

uint64_t sub_2691F1ED8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

unint64_t sub_2691F1F38()
{
  result = qword_2802FBC50[0];
  if (!qword_2802FBC50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2802FBC50);
  }

  return result;
}

uint64_t SiriSystemCommandsModels.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v49 = type metadata accessor for SiriSystemCommandsModels(0);
  v3 = OUTLINED_FUNCTION_0(v49);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802FBAF8, &qword_2691F38A8);
  OUTLINED_FUNCTION_2(v9);
  v48 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  v15 = &v45 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802FBB00, &qword_2691F38B0);
  OUTLINED_FUNCTION_2(v16);
  v50 = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v20);
  v22 = &v45 - v21;
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2691F1E84();
  v24 = v51;
  sub_2691F32C0();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v51 = v15;
  v46 = v8;
  v25 = sub_2691F3250();
  result = sub_2691F2440(v25, 0);
  if (v28 == v29 >> 1)
  {
    v30 = v16;
    goto LABEL_8;
  }

  if (v28 < (v29 >> 1))
  {
    sub_2691F2488(v28 + 1, v29 >> 1, result, v27, v28, v29);
    v32 = v31;
    v34 = v33;
    swift_unknownObjectRelease();
    if (v32 == v34 >> 1)
    {
      sub_2691F1F38();
      sub_2691F3220();
      type metadata accessor for SiriSystemCommandsModels.RestartConfirmationModel(0);
      OUTLINED_FUNCTION_0_1();
      sub_2691F2504(v39, v40);
      v41 = v46;
      sub_2691F3240();
      v42 = v50;
      swift_unknownObjectRelease();
      v43 = OUTLINED_FUNCTION_10();
      v44(v43);
      (*(v42 + 8))(v22, v16);
      sub_2691F254C(v41, v47);
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    v30 = v16;
LABEL_8:
    v35 = sub_2691F3210();
    swift_allocError();
    v37 = v36;
    v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802FBB08, &qword_2691F38B8) + 48);
    *v37 = v49;
    sub_2691F3230();
    sub_2691F3200();
    (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277D84160], v35);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v50 + 8))(v22, v30);
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __break(1u);
  return result;
}

uint64_t sub_2691F2440(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_2691F2488(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_2691F2504(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2691F254C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriSystemCommandsModels(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2691F2690(uint64_t a1, uint64_t a2)
{
  restarted = type metadata accessor for SiriSystemCommandsModels.RestartConfirmationModel(0);

  return MEMORY[0x2821FE9C0](a1, a2, restarted, j____swift_get_extra_inhabitant_indexTm);
}

uint64_t sub_2691F26EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  restarted = type metadata accessor for SiriSystemCommandsModels.RestartConfirmationModel(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, restarted, j____swift_store_extra_inhabitant_indexTm);
}

uint64_t sub_2691F2760(uint64_t a1)
{
  restarted = type metadata accessor for SiriSystemCommandsModels.RestartConfirmationModel(319);
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(restarted - 8) + 84);
    return 0;
  }

  return restarted;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802FBA78, &qword_2691F37D0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802FBA78, &qword_2691F37D0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

void sub_2691F28DC()
{
  sub_2691F2948();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_2691F2948()
{
  if (!qword_2802FBB28)
  {
    v0 = sub_2691F30D0();
    if (!v1)
    {
      atomic_store(v0, &qword_2802FBB28);
    }
  }
}

uint64_t _s29SiriSystemCommandsUIFramework24SiriSystemCommandsModelsO10CodingKeysOwet_0(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_5();
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

_BYTE *_s29SiriSystemCommandsUIFramework24SiriSystemCommandsModelsO10CodingKeysOwst_0(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x2691F2AA0);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriSystemCommandsModels.RestartConfirmationModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SiriSystemCommandsModels.RestartConfirmationModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x2691F2C38);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2691F2C88()
{
  result = qword_2802FC080[0];
  if (!qword_2802FC080[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2802FC080);
  }

  return result;
}

unint64_t sub_2691F2CE0()
{
  result = qword_2802FC290[0];
  if (!qword_2802FC290[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2802FC290);
  }

  return result;
}

unint64_t sub_2691F2D38()
{
  result = qword_2802FC4A0[0];
  if (!qword_2802FC4A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2802FC4A0);
  }

  return result;
}

unint64_t sub_2691F2D90()
{
  result = qword_2802FC5B0;
  if (!qword_2802FC5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802FC5B0);
  }

  return result;
}

unint64_t sub_2691F2DE8()
{
  result = qword_2802FC5B8[0];
  if (!qword_2802FC5B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2802FC5B8);
  }

  return result;
}

unint64_t sub_2691F2E40()
{
  result = qword_2802FC640;
  if (!qword_2802FC640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802FC640);
  }

  return result;
}

unint64_t sub_2691F2E98()
{
  result = qword_2802FC648[0];
  if (!qword_2802FC648[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2802FC648);
  }

  return result;
}

unint64_t sub_2691F2EF0()
{
  result = qword_2802FC6D0;
  if (!qword_2802FC6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802FC6D0);
  }

  return result;
}

unint64_t sub_2691F2F48()
{
  result = qword_2802FC6D8[0];
  if (!qword_2802FC6D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2802FC6D8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_9()
{

  return sub_2691F3270();
}

uint64_t OUTLINED_FUNCTION_11(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x2821FDEC0](a1, a2, a3, v3, 0);
}