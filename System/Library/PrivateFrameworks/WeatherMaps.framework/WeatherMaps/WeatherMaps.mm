uint64_t Assembly.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CDB0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_220FC8E10;
  v2 = type metadata accessor for ManagerAssembly();
  v3 = swift_allocObject();
  *(v1 + 56) = v2;
  *(v1 + 64) = sub_220E17BF4(qword_2812C7238, type metadata accessor for ManagerAssembly);
  *(v1 + 32) = v3;
  v4 = type metadata accessor for WeatherMapsAssembly();
  v5 = swift_allocObject();
  *(v1 + 96) = v4;
  *(v1 + 104) = sub_220E17BF4(&qword_2812C75A8, type metadata accessor for WeatherMapsAssembly);
  *(v1 + 72) = v5;
  *(v0 + 16) = v1;
  return v0;
}

uint64_t sub_220E17BF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_220E17CA4()
{
  v0 = sub_220FC13A0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220FC1270();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E2D0);
  OUTLINED_FUNCTION_0_31();

  sub_220FC1270();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D510);
  OUTLINED_FUNCTION_0_31();

  v5 = *MEMORY[0x277D6CF10];
  v6 = *(v1 + 104);
  v6(v4, v5, v0);
  sub_220FC1120();

  v7 = *(v1 + 8);
  v7(v4, v0);
  sub_220FC1270();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D530);
  OUTLINED_FUNCTION_0_31();

  v6(v4, v5, v0);
  sub_220FC1120();

  v7(v4, v0);
  sub_220FC1270();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D550);
  OUTLINED_FUNCTION_0_31();

  sub_220FC1280();
  sub_220FC12F0();
}

id OUTLINED_FUNCTION_0_5()
{

  return [v0 (v1 + 3832)];
}

id OUTLINED_FUNCTION_0_10()
{

  return [v0 (v1 + 2424)];
}

uint64_t OUTLINED_FUNCTION_0_11()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_13()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_16()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_16()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_29@<X0>(uint64_t a1@<X8>)
{
  *(v1 + a1 + 8) = 0;

  return swift_unknownObjectWeakInit();
}

uint64_t OUTLINED_FUNCTION_0_31()
{

  return sub_220FC1310();
}

void *OUTLINED_FUNCTION_0_34(void *a1)
{

  return memcpy(a1, (v1 + 16), 0xB8uLL);
}

void OUTLINED_FUNCTION_0_35(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  *v2 = 0;
  *(v2 + 8) = 1;
}

uint64_t OUTLINED_FUNCTION_1_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_39()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_40()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_0_41()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_45()
{

  return sub_220FC02B0();
}

uint64_t OUTLINED_FUNCTION_0_46()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_0_48()
{

  return sub_220FC38F0();
}

uint64_t OUTLINED_FUNCTION_0_51()
{

  return sub_220FC3400();
}

id OUTLINED_FUNCTION_0_62()
{

  return [v0 (v1 + 3832)];
}

id OUTLINED_FUNCTION_1_1()
{

  return [v0 (v1 + 3832)];
}

uint64_t OUTLINED_FUNCTION_0_64()
{
  v1 = v0[3];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return v1;
}

void *OUTLINED_FUNCTION_0_72(uint64_t a1, const void *a2)
{

  return memcpy(v2, a2, 0xB8uLL);
}

id OUTLINED_FUNCTION_0_76()
{

  return [v0 (v1 + 248)];
}

unint64_t OUTLINED_FUNCTION_0_77()
{

  return sub_220F7528C();
}

uint64_t OUTLINED_FUNCTION_2_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_83(uint64_t a1)
{
  *(v1 + v2) = a1;
  type metadata accessor for WeatherMapAnnotationBackground(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_0_87()
{

  return sub_220FC38F0();
}

uint64_t OUTLINED_FUNCTION_0_91()
{

  return sub_220FC3740();
}

uint64_t OUTLINED_FUNCTION_0_93()
{

  return sub_220FC1CF0();
}

uint64_t OUTLINED_FUNCTION_0_94()
{

  return sub_220FC3430();
}

uint64_t OUTLINED_FUNCTION_0_96()
{

  return sub_220FC3A40();
}

uint64_t sub_220E189C8()
{
  v0 = sub_220FC13A0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220FC1270();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D428);
  OUTLINED_FUNCTION_0_19();
  sub_220FC1310();

  sub_220FC1270();
  type metadata accessor for InteractiveViewController();
  OUTLINED_FUNCTION_0_19();
  sub_220FC1300();

  sub_220FC1270();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D6E0);
  OUTLINED_FUNCTION_0_19();
  sub_220FC1310();

  sub_220FC1270();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D430);
  OUTLINED_FUNCTION_0_19();
  sub_220FC1310();

  sub_220FC1270();
  type metadata accessor for SnapshotViewController(0);
  OUTLINED_FUNCTION_0_19();
  sub_220FC1300();

  sub_220FC1270();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D438);
  OUTLINED_FUNCTION_0_19();
  sub_220FC1310();

  v5 = *MEMORY[0x277D6CF00];
  v6 = *(v1 + 104);
  v6(v4, v5, v0);
  sub_220FC1120();

  v7 = *(v1 + 8);
  v7(v4, v0);
  sub_220FC1270();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D440);
  OUTLINED_FUNCTION_0_19();
  sub_220FC1310();

  v6(v4, v5, v0);
  sub_220FC1120();

  v7(v4, v0);
  sub_220FC1280();

  sub_220FC12F0();
}

uint64_t type metadata accessor for InteractiveViewController()
{
  result = qword_2812C66B0;
  if (!qword_2812C66B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_220E18D74(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_220FC33A0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_220E18DC8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_220FC33A0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_220E18E1C()
{
  sub_220E18DC8(319, &qword_2812CA010, type metadata accessor for WeatherMapOverlay);
  if (v0 <= 0x3F)
  {
    sub_220E18DC8(319, &qword_2812CA068, MEMORY[0x277D7AB60]);
    if (v1 <= 0x3F)
    {
      sub_220E18DC8(319, &qword_2812CA280, MEMORY[0x277CC9578]);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t type metadata accessor for WeatherMapOverlay()
{
  result = qword_2812CA048;
  if (!qword_2812CA048)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_220E190E8()
{
  sub_220E19184();
  if (v0 <= 0x3F)
  {
    type metadata accessor for WeatherMapOverlayTimeConstraints();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_220E19184()
{
  if (!qword_2812CA0B0)
  {
    v0 = sub_220FC33A0();
    if (!v1)
    {
      atomic_store(v0, &qword_2812CA0B0);
    }
  }
}

uint64_t type metadata accessor for WeatherMapOverlayTimeConstraints()
{
  result = qword_2812C8420;
  if (!qword_2812C8420)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220E19220()
{
  result = sub_220FC02B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_220E192B8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_220E192F0()
{
  sub_220E19420(319, &qword_2812C6968, type metadata accessor for SnapshotViewController.SnapshotJob);
  if (v0 <= 0x3F)
  {
    type metadata accessor for SnapshotViewController.SnapshotConfiguration(319);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_220E19420(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_220FC33A0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_220E19494()
{
  type metadata accessor for SnapshotManager.Options(319);
  if (v0 <= 0x3F)
  {
    sub_220E1A298();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_220E19538()
{
  sub_220FC1070();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UIUserInterfaceStyle(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_220E19620(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_220E1966C(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

_BYTE *sub_220E196C8(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_220E19734@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E2F8);
  result = sub_220FC1230();
  if (v15)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E2E8);
    result = sub_220FC1230();
    if (v13)
    {
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v14, v15);
      MEMORY[0x28223BE20](v5, v5);
      v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v8 + 16))(v7);
      v9 = __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
      MEMORY[0x28223BE20](v9, v9);
      (*(v10 + 16))();
      v11 = sub_220E21530(*v7);
      __swift_destroy_boxed_opaque_existential_0(v12);
      __swift_destroy_boxed_opaque_existential_0(v14);
      result = type metadata accessor for WeatherMapOverlayMetadataLoader();
      a2[3] = result;
      a2[4] = &off_28347D820;
      *a2 = v11;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_220E1996C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D518);
  result = sub_220FC1230();
  if (!v28)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E300);
  result = sub_220FC1230();
  if (!v26)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E2D8);
  result = sub_220FC1230();
  if (!v24)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E308);
  result = sub_220FC1230();
  if (!v22)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_220FC1200();
  v5 = v20;
  if (v20 != 2)
  {
    v6 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
    MEMORY[0x28223BE20](v6, v6);
    v8 = (v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 16))(v8);
    v10 = *v8;
    v11 = type metadata accessor for WeatherMapNetworkReachabilityState();
    v19[4] = &off_28347DE68;
    v19[3] = v11;
    v19[0] = v10;
    v12 = type metadata accessor for WeatherMapOverlayService(0);
    v13 = swift_allocObject();
    v14 = __swift_mutable_project_boxed_opaque_existential_1(v19, v11);
    MEMORY[0x28223BE20](v14, v14);
    v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16);
    v18 = sub_220E1ACF0(v27, v25, *v16, v21, v5 & 1, v13);
    __swift_destroy_boxed_opaque_existential_0(v19);
    result = __swift_destroy_boxed_opaque_existential_0(v23);
    a2[3] = v12;
    a2[4] = &off_28347ED08;
    *a2 = v18;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_220E19CF0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF30);
  swift_allocObject();
  *(v0 + 24) = sub_220FC13C0();
  sub_220FC1A70();
  swift_allocObject();
  *(v0 + 16) = sub_220FC1A60();
  swift_allocObject();
  swift_weakInit();

  sub_220E1AADC(sub_220E1B458);
  sub_220FC1A40();

  v1 = qword_2812C82A8;

  if (v1 != -1)
  {
    swift_once();
  }

  sub_220FC1A50();

  return v0;
}

uint64_t sub_220E19E40()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_220E19E78()
{
  v0 = sub_220FC2FB0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220FC2F80();
  MEMORY[0x28223BE20](v5, v6);
  v7 = sub_220FC2390();
  MEMORY[0x28223BE20](v7 - 8, v8);
  sub_220E1AAEC();
  sub_220FC2380();
  v10[1] = MEMORY[0x277D84F90];
  sub_220E1A080();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF28);
  sub_220E1AC1C();
  sub_220FC3430();
  (*(v1 + 104))(v4, *MEMORY[0x277D85260], v0);
  result = sub_220FC2FF0();
  qword_2812C82B0 = result;
  return result;
}

unint64_t sub_220E1A080()
{
  result = qword_2812C5CA8;
  if (!qword_2812C5CA8)
  {
    sub_220FC2F80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C5CA8);
  }

  return result;
}

uint64_t sub_220E1A0D8()
{
  result = sub_220FC0C00();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_220E1A1B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_220E1A1FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_220E1A244(unint64_t *a1, uint64_t *a2)
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

void sub_220E1A298()
{
  if (!qword_2812C5D28)
  {
    v0 = sub_220FC2B20();
    if (!v1)
    {
      atomic_store(v0, &qword_2812C5D28);
    }
  }
}

uint64_t sub_220E1A31C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D510);
  result = sub_220FC1230();
  v4 = v9;
  if (v9)
  {
    v5 = v10;
    v6 = __swift_project_boxed_opaque_existential_1(v8, v9);
    a2[3] = v4;
    a2[4] = *(v5 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
    (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, v6, v4);
    return __swift_destroy_boxed_opaque_existential_0(v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220E1A3F0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D518);
  result = sub_220FC1230();
  if (!v28)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E2F0);
  result = sub_220FC1230();
  if (!v26)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E2E0);
  result = sub_220FC1230();
  if (!v24)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D530);
  result = sub_220FC1230();
  if (!v22)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E2F8);
  result = sub_220FC1230();
  if (v20)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
    v5 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
    MEMORY[0x28223BE20](v5, v5);
    v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    (*(v8 + 16))(v7);
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
    MEMORY[0x28223BE20](v9, v9);
    v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    (*(v12 + 16))(v11);
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
    MEMORY[0x28223BE20](v13, v13);
    v15 = &v19[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    (*(v16 + 16))(v15);
    v17 = sub_220E21CD8(&v27, *v7, *v11, *v15);
    __swift_destroy_boxed_opaque_existential_0(v19);
    __swift_destroy_boxed_opaque_existential_0(v21);
    __swift_destroy_boxed_opaque_existential_0(v23);
    __swift_destroy_boxed_opaque_existential_0(v25);
    result = type metadata accessor for WeatherMapOverlayDataManager();
    a2[3] = result;
    a2[4] = &off_283486A58;
    *a2 = v17;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_220E1A7DC()
{
  v0 = sub_220FC13A0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E2D8);
  sub_220FC1310();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E2E0);
  sub_220FC1310();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E2E8);
  sub_220FC1310();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E2F0);
  sub_220FC1310();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E2F8);
  sub_220FC1310();
  (*(v1 + 104))(v4, *MEMORY[0x277D6CF10], v0);
  sub_220FC1120();

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_220E1AA14@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  v7 = a1(0);
  swift_allocObject();
  result = a2();
  a4[3] = v7;
  a4[4] = a3;
  *a4 = result;
  return result;
}

uint64_t sub_220E1AADC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_220E1AAEC()
{
  result = qword_2812C5CA0;
  if (!qword_2812C5CA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2812C5CA0);
  }

  return result;
}

void sub_220E1AB44()
{
  sub_220FC1070();
  if (v0 <= 0x3F)
  {
    sub_220E1966C(319, &unk_2812C5CB0);
    if (v1 <= 0x3F)
    {
      sub_220E19420(319, &qword_2812CA260, MEMORY[0x277CE3360]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_220E1AC1C()
{
  result = qword_2812C5D38;
  if (!qword_2812C5D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9CF28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C5D38);
  }

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

uint64_t sub_220E1ACF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v41 = a5;
  v45 = a4;
  v42 = a2;
  v43 = a1;
  v8 = sub_220FC0C00();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v40 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D880);
  v14 = MEMORY[0x28223BE20](v12 - 8, v13);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v44 = &v40 - v18;
  v19 = sub_220FC1160();
  MEMORY[0x28223BE20](v19, v20);
  v49[3] = type metadata accessor for WeatherMapNetworkReachabilityState();
  v49[4] = &off_28347DE68;
  v49[0] = a3;
  *(a6 + 104) = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E310);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_220FC8E30;
  sub_220FC1150();
  *&v46 = v21;
  sub_220E1A1B4(&qword_2812C5FB0, MEMORY[0x277D6CA08]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E318);
  sub_220E1A244(&qword_2812C5DA0, &qword_27CF9E318);
  sub_220FC3430();
  sub_220FC1180();
  swift_allocObject();
  *(a6 + 112) = sub_220FC1170();
  v22 = OBJC_IVAR____TtC11WeatherMaps24WeatherMapOverlayService_authenticator;
  v23 = sub_220FC1610();
  swift_allocObject();
  v24 = sub_220FC1600();
  v47 = v23;
  v48 = MEMORY[0x277D7AF18];
  *&v46 = v24;
  sub_220FC1650();
  swift_allocObject();
  *(a6 + v22) = sub_220FC1640();
  *(a6 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapOverlayService____lazy_storage___forceUseSeparateRadarEndpoints) = 2;
  *(a6 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapOverlayService____lazy_storage___forceUseClientHashRendering) = 2;
  sub_220FC0AB0();
  sub_220FC0A90();
  if (qword_2812CA1E8 != -1)
  {
    swift_once();
  }

  sub_220FC0A80();

  if (v46 == 1)
  {
    v25 = v44;
    (*(v9 + 104))(v44, *MEMORY[0x277D7A9E0], v8);
    v26 = 0;
    v28 = v42;
    v27 = v43;
  }

  else
  {
    v26 = 1;
    v28 = v42;
    v27 = v43;
    v25 = v44;
  }

  v29 = v40;
  __swift_storeEnumTagSinglePayload(v25, v26, 1, v8);
  type metadata accessor for WeatherMapURLSessionManager();
  swift_allocObject();
  *(a6 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapOverlayService_urlSessionManager) = sub_220E1D280();
  sub_220E1E2A8(v27, &v46);
  type metadata accessor for WeatherMapOverlayServiceQueue();
  swift_allocObject();
  *(a6 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapOverlayService_taskQueue) = sub_220E1E390(&v46);
  sub_220E1E6BC(v25, v16);
  if (__swift_getEnumTagSinglePayload(v16, 1, v8) == 1)
  {
    sub_220FC0A90();
    if (qword_2812CA180 != -1)
    {
      swift_once();
    }

    sub_220FC0A80();

    if (__swift_getEnumTagSinglePayload(v16, 1, v8) != 1)
    {
      sub_220E214B0(v16);
    }
  }

  else
  {
    (*(v9 + 32))(v29, v16, v8);
  }

  (*(v9 + 32))(a6 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapOverlayService_source, v29, v8);
  sub_220E1E2A8(v27, a6 + 16);
  sub_220E1E2A8(v28, a6 + 56);
  sub_220E1E2A8(v49, a6 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapOverlayService_reachabilityMonitor);
  sub_220E1E2A8(v45, a6 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapOverlayService_networkActivityProvider);
  *(a6 + 96) = v41 & 1;
  sub_220E1F2D8();
  if (qword_2812C5F20 != -1)
  {
    swift_once();
  }

  v30 = sub_220FC17A0();
  __swift_project_value_buffer(v30, qword_2812C5F28);

  v31 = sub_220FC1780();
  v32 = sub_220FC2E30();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *&v46 = v34;
    *v33 = 67240450;
    sub_220E204E8();
    *(v33 + 4) = v35 & 1;

    *(v33 + 8) = 2082;
    sub_220E1A1B4(&qword_2812CA0B8, MEMORY[0x277D7AA00]);
    v36 = sub_220FC38F0();
    v38 = sub_220E20FF8(v36, v37, &v46);

    *(v33 + 10) = v38;
    _os_log_impl(&dword_220E15000, v31, v32, "Maps will use HTTP/2: %{BOOL,public}d, source=%{public}s", v33, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x223D9DDF0](v34, -1, -1);
    MEMORY[0x223D9DDF0](v33, -1, -1);
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_0(v45);
  __swift_destroy_boxed_opaque_existential_0(v28);
  __swift_destroy_boxed_opaque_existential_0(v27);
  sub_220E214B0(v44);
  __swift_destroy_boxed_opaque_existential_0(v49);
  return a6;
}

uint64_t sub_220E1B460()
{
  v0 = sub_220FBFDC0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220FC1A90();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = v23 - v12;
  sub_220FC1AA0();
  (*(v6 + 104))(v10, *MEMORY[0x277CD8F78], v5);
  v14 = sub_220FC1A80();
  v15 = *(v6 + 8);
  v15(v10, v5);
  v15(v13, v5);
  swift_beginAccess();
  if (!swift_weakLoadStrong() || (v16 = sub_220E1B804() & 1, result = , (v14 & 1) != v16))
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_220E1B848();
    }

    if (qword_2812C5C80 != -1)
    {
      swift_once();
    }

    v18 = qword_2812CE4C0;
    v24 = 0u;
    v25 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D088);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_220FC8E30;
    v23[1] = 0xD000000000000026;
    v23[2] = 0x8000000220FDDB10;
    v20 = v18;
    sub_220FC3540();
    *(inited + 96) = MEMORY[0x277D839B0];
    *(inited + 72) = v14 & 1;
    sub_220FC2600();
    sub_220FBFDA0();
    v21 = [objc_opt_self() defaultCenter];
    v22 = sub_220FBFD80();
    [v21 postNotification_];

    return (*(v1 + 8))(v4, v0);
  }

  return result;
}

uint64_t sub_220E1B804()
{

  sub_220FC13E0();

  return v1;
}

uint64_t sub_220E1B848()
{

  sub_220FC13F0();
}

uint64_t sub_220E1B88C()
{
  result = sub_220FC26C0();
  qword_2812CE4C0 = result;
  return result;
}

uint64_t sub_220E1B8C4()
{
  sub_220FC0B30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v0, v1);
  OUTLINED_FUNCTION_0_81();
  sub_220FC0B10();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v2, v3);
  OUTLINED_FUNCTION_3_45();
  v4 = OUTLINED_FUNCTION_13_24();
  v5(v4);
  v6 = OUTLINED_FUNCTION_8_30();
  v7(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F700);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_9_23();
  result = OUTLINED_FUNCTION_12_24();
  qword_2812CA1F0 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_2()
{

  return sub_220E55F60(v0, type metadata accessor for SonifierDataState);
}

uint64_t OUTLINED_FUNCTION_7_4()
{

  return sub_220E5D668(v0, type metadata accessor for MapScrubberOverlayViewModel);
}

id OUTLINED_FUNCTION_7_6()
{

  return [v0 (v1 + 2808)];
}

uint64_t OUTLINED_FUNCTION_7_8()
{

  return sub_220FC37C0();
}

uint64_t OUTLINED_FUNCTION_7_10()
{

  return sub_220FC2AE0();
}

id OUTLINED_FUNCTION_7_15()
{

  return [v0 (v2 + 1152)];
}

void *OUTLINED_FUNCTION_7_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, __int128 a56)
{

  return memcpy(&STACK[0x248], &a56 + 7, 0x60uLL);
}

uint64_t OUTLINED_FUNCTION_7_18()
{
  *(v1 - 80) = *(v0 + 136);
}

uint64_t OUTLINED_FUNCTION_7_22()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_7_25(_WORD *a1)
{
  *a1 = 0;

  return sub_220FC16E0();
}

void OUTLINED_FUNCTION_7_26(uint64_t a1@<X8>)
{
  *(v1 - 64) = 0;
  *(v1 - 56) = a1;
  *(v1 - 72) = 0x4035000000000000;
}

uint64_t OUTLINED_FUNCTION_7_27()
{

  return sub_220E5696C();
}

void OUTLINED_FUNCTION_7_28()
{

  sub_220F37D68();
}

uint64_t OUTLINED_FUNCTION_7_29()
{

  return sub_220FC3430();
}

void OUTLINED_FUNCTION_7_30()
{

  JUMPOUT(0x223D9BD60);
}

uint64_t OUTLINED_FUNCTION_7_31()
{

  return sub_220ED6038(v0, v2, v1);
}

void *OUTLINED_FUNCTION_3_1(void *result)
{
  result[2] = v1;
  result[3] = v2;
  result[4] = v3;
  result[5] = v4;
  result[6] = v5;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_5()
{

  return swift_allocObject();
}

id OUTLINED_FUNCTION_3_6(double a1, double a2)
{

  return [v2 (v3 + 3704)];
}

void OUTLINED_FUNCTION_15()
{

  JUMPOUT(0x223D9DDF0);
}

uint64_t OUTLINED_FUNCTION_3_8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = *(v0 + 64);
  v9 = *(v0 + 72);
  v16 = *(v0 + 160);
  v17 = *(v0 + 176);
  v14 = *(v0 + 128);
  v15 = *(v0 + 144);
  v12 = *(v0 + 96);
  v13 = *(v0 + 112);
  v11 = *(v0 + 80);

  return sub_220E564A4(v2, v3, v4, v5, v6, v7, v8, v9, v11, *(&v11 + 1), v12, *(&v12 + 1), v13, *(&v13 + 1), v14, *(&v14 + 1), v15, *(&v15 + 1), v16, *(&v16 + 1), v17);
}

uint64_t OUTLINED_FUNCTION_3_10()
{

  return sub_220FBFDD0();
}

uint64_t OUTLINED_FUNCTION_53()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_74(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3);
}

uint64_t OUTLINED_FUNCTION_3_14(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x2821FDAA0](a1, a2, v2, a1);
}

uint64_t OUTLINED_FUNCTION_3_15()
{

  return sub_220FC3220();
}

id OUTLINED_FUNCTION_3_16(objc_super *a1, SEL a2)
{

  return objc_msgSendSuper2(a1, a2, v3, v4, v5, v6);
}

uint64_t OUTLINED_FUNCTION_3_17(uint64_t a1, ...)
{
  va_start(va, a1);

  return sub_220EEBB30(va, v1, v2, v3);
}

double OUTLINED_FUNCTION_3_18@<D0>(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  result = 0.0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_20()
{

  return sub_220FC00E0();
}

uint64_t OUTLINED_FUNCTION_3_26(unint64_t *a1)
{

  return sub_220E453D4(a1, v1);
}

uint64_t OUTLINED_FUNCTION_3_29()
{

  return sub_220FC38D0();
}

id OUTLINED_FUNCTION_3_32@<X0>(void *a1@<X8>)
{

  return a1;
}

id OUTLINED_FUNCTION_3_42()
{

  return sub_220F88234();
}

id OUTLINED_FUNCTION_3_43(id a1, SEL a2)
{

  return [a1 a2];
}

uint64_t OUTLINED_FUNCTION_3_44()
{
  result = v1;
  *(v0 + 144) = *(v2 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_48()
{

  return sub_220FC3430();
}

uint64_t OUTLINED_FUNCTION_3_49(unint64_t *a1)
{

  return sub_220F99598(a1);
}

void OUTLINED_FUNCTION_13(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

void OUTLINED_FUNCTION_13_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v14 + 8 * (v13 >> 6) + 64) |= 1 << v13;
  v15 = *(v14 + 48) + 16 * v13;
  *v15 = v12;
  *(v15 + 12) = BYTE4(v10);
  *(v15 + 8) = v10;
  v16 = (*(v14 + 56) + 24 * v13);
  *v16 = v11;
  v16[1] = a9;
  v16[2] = v9;
}

uint64_t OUTLINED_FUNCTION_13_5()
{

  return sub_220FC3940();
}

uint64_t OUTLINED_FUNCTION_13_12()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_13_13()
{

  return sub_220FC27D0();
}

uint64_t OUTLINED_FUNCTION_13_14(uint64_t a1)
{
  *(a1 + 16) = v2;

  return sub_220F1F2C4(v3, a1 + v1);
}

void OUTLINED_FUNCTION_13_18()
{

  sub_220F44E64();
}

void OUTLINED_FUNCTION_13_22()
{

  JUMPOUT(0x223D9DDF0);
}

uint64_t OUTLINED_FUNCTION_5_1()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_8_5()
{
  *(v2 - 104) = v0;

  sub_220F34B88(v1);
}

id OUTLINED_FUNCTION_8_6(void *a1)
{

  return [a1 (v1 + 2680)];
}

uint64_t OUTLINED_FUNCTION_8_7()
{
}

uint64_t OUTLINED_FUNCTION_8_13(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_8_17()
{

  return swift_once();
}

id OUTLINED_FUNCTION_8_18(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_8_20()
{
}

uint64_t OUTLINED_FUNCTION_8_23()
{

  return sub_220F39194(v0, type metadata accessor for WeatherMapAnnotatedLocationData);
}

uint64_t OUTLINED_FUNCTION_8_24()
{

  return sub_220FC3380();
}

uint64_t OUTLINED_FUNCTION_8_26(void *a1, uint64_t a2)
{
  v2 = __swift_project_boxed_opaque_existential_1(a1, a2);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);

  return type metadata accessor for OverlayStaticShader();
}

uint64_t OUTLINED_FUNCTION_8_29()
{
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));

  return sub_220FC0F40();
}

id OUTLINED_FUNCTION_8_32(uint64_t a1, char a2)
{

  return sub_220F935F0(v2, a2, 0);
}

__n128 OUTLINED_FUNCTION_9_0@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  *v2 = 0xC014000000000000;
  __asm { FMOV            V0.2D, #-8.0 }

  *(v2 + 8) = result;
  *(v2 + 24) = 0xC014000000000000;
  return result;
}

id OUTLINED_FUNCTION_9_2()
{

  return [v0 (v1 + 3832)];
}

id OUTLINED_FUNCTION_9_5(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

id OUTLINED_FUNCTION_9_6()
{

  return [v0 (v1 + 3192)];
}

uint64_t OUTLINED_FUNCTION_20()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_9_10()
{

  return sub_220EBE818();
}

void *OUTLINED_FUNCTION_9_13()
{

  return __swift_project_boxed_opaque_existential_1(v1, v0);
}

void *OUTLINED_FUNCTION_9_16(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char __dst)
{

  return memcpy(&__dst, v10, 0xB8uLL);
}

uint64_t OUTLINED_FUNCTION_9_18()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_9_22@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v6 - 88) = *(v3 + a2);
  *(v6 - 144) = v3;
  *(v6 - 136) = v4;
  *(v6 - 128) = v5;
  *(v6 - 120) = v2;
  *(v6 - 112) = v8;
  *(v6 - 104) = a1;

  return sub_220FC1180();
}

id OUTLINED_FUNCTION_9_24()
{

  return [v0 (v1 + 2808)];
}

uint64_t OUTLINED_FUNCTION_9_26()
{

  return sub_220FC01B0();
}

uint64_t OUTLINED_FUNCTION_12_1()
{

  return sub_220E48A20(v4, v0 + 504, v2, v3 & 1, v1, v0 + 552, v0 + 264);
}

BOOL OUTLINED_FUNCTION_21_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_12_3@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 48) = a2;
  *(result + 56) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_12_5()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = *(v0 + 64);
  v9 = *(v0 + 72);
  v16 = *(v0 + 160);
  v17 = *(v0 + 176);
  v14 = *(v0 + 128);
  v15 = *(v0 + 144);
  v12 = *(v0 + 96);
  v13 = *(v0 + 112);
  v11 = *(v0 + 80);

  return sub_220E564A4(v2, v3, v4, v5, v6, v7, v8, v9, v11, *(&v11 + 1), v12, *(&v12 + 1), v13, *(&v13 + 1), v14, *(&v14 + 1), v15, *(&v15 + 1), v16, *(&v16 + 1), v17);
}

uint64_t OUTLINED_FUNCTION_12_8(void *a1)
{
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v5;
  a1[5] = v1;
  a1[6] = v4;

  return sub_220FC1180();
}

uint64_t OUTLINED_FUNCTION_12_9()
{
}

uint64_t OUTLINED_FUNCTION_12_10()
{

  return sub_220FC2D00();
}

uint64_t OUTLINED_FUNCTION_12_14()
{

  return sub_220FC3A40();
}

uint64_t OUTLINED_FUNCTION_12_18()
{

  return sub_220FC1320();
}

uint64_t OUTLINED_FUNCTION_12_21()
{

  return sub_220F602C0();
}

uint64_t OUTLINED_FUNCTION_12_24()
{

  return sub_220FC0BA0();
}

uint64_t OUTLINED_FUNCTION_12_26()
{

  return sub_220FC33E0();
}

uint64_t *sub_220E1D280()
{
  v1 = *v0;
  sub_220FC11C0();
  OUTLINED_FUNCTION_4_47();
  MEMORY[0x28223BE20](v2, v3);
  OUTLINED_FUNCTION_3_45();
  *(OUTLINED_FUNCTION_5_41() + 16) = v1;
  sub_220E1DDB4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E760);
  sub_220E1DE0C();
  OUTLINED_FUNCTION_0_94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFA02A8);
  swift_allocObject();
  OUTLINED_FUNCTION_3_50();
  v0[2] = sub_220FC1360();
  *(OUTLINED_FUNCTION_5_41() + 16) = v1;
  OUTLINED_FUNCTION_0_94();
  swift_allocObject();
  OUTLINED_FUNCTION_3_50();
  v0[3] = sub_220FC1360();
  type metadata accessor for WeatherMapOverlayServiceStatistics();
  swift_allocObject();

  v0[4] = sub_220E1DE94(v4);
  return v0;
}

id OUTLINED_FUNCTION_4_0()
{

  return [v0 (v1 + 2168)];
}

double OUTLINED_FUNCTION_4_5()
{
  result = 0.0;
  *(v0 + 384) = 0u;
  *(v0 + 400) = 0u;
  *(v0 + 416) = 0u;
  *(v0 + 432) = 0u;
  *(v0 + 448) = 0u;
  *(v0 + 464) = 0u;
  *(v0 + 480) = 0u;
  *(v0 + 496) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_9()
{

  return sub_220E65400(v4, v2 & 1, v1, v0, v3, v6);
}

id OUTLINED_FUNCTION_4_10()
{

  return [v0 view];
}

uint64_t OUTLINED_FUNCTION_4_12()
{

  return __swift_getEnumTagSinglePayload(v0 + v2, 2, v1);
}

uint64_t OUTLINED_FUNCTION_4_14()
{

  return sub_220FC2600();
}

id OUTLINED_FUNCTION_4_16()
{

  return [v0 (v1 + 1636)];
}

uint64_t OUTLINED_FUNCTION_4_20@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 328) = v1;
  v5 = *(v3 - 288);

  return sub_220E5ADF8(v2 + a1, v5);
}

uint64_t OUTLINED_FUNCTION_4_22()
{
  *(v0 + 904) = *(v0 + 1168);

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_4_24()
{
}

void OUTLINED_FUNCTION_4_25(uint64_t a1)
{
  v5 = (a1 + *v2);
  *v5 = v1;
  v5[1] = v4;

  sub_220EB4A40();
}

uint64_t OUTLINED_FUNCTION_4_26()
{

  return swift_beginAccess();
}

__n128 OUTLINED_FUNCTION_4_27(uint64_t a1)
{
  result = *(v2 + 88);
  v4 = *(v2 + 104);
  *(a1 + 16) = v1;
  *(a1 + 40) = v4;
  *(a1 + 24) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_30()
{

  return sub_220FC3850();
}

uint64_t OUTLINED_FUNCTION_4_32()
{
  *(v0 + 128) = *(v0 + 560);
  *(v0 + 120) = *(v0 + 552);
  v2 = *(v0 + 544);
  *(v0 + 64) = *(v0 + 528);
  *(v0 + 72) = v2;

  return sub_220E31B58(v0 + 488, v0 + 656);
}

void OUTLINED_FUNCTION_4_41(void *a1, uint64_t a2, uint64_t a3, os_signpost_id_t a4, const char *a5, const char *a6)
{

  _os_signpost_emit_with_name_impl(a1, v7, v6, a4, a5, a6, v8, 2u);
}

double OUTLINED_FUNCTION_4_44@<D0>(unsigned __int8 a1@<W8>, uint64_t a2, int a3, __int16 a4, unsigned __int8 a5, unsigned __int8 a6)
{
  a6 = a1;
  a5 = v6;

  return sub_220F832CC(&a6, &a5);
}

uint64_t OUTLINED_FUNCTION_5_7()
{

  return sub_220E565AC(v1, v0);
}

uint64_t OUTLINED_FUNCTION_5_10()
{

  return sub_220FC2600();
}

uint64_t OUTLINED_FUNCTION_5_14@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  result = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  *(v2 - 224) = *v3;
  *(v2 - 216) = v5;
  *(v2 - 208) = v6;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_15()
{

  return swift_once();
}

id OUTLINED_FUNCTION_5_17()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

uint64_t OUTLINED_FUNCTION_5_24()
{

  return sub_220F280A8(v0, type metadata accessor for WeatherMapAnnotatedLocationData);
}

uint64_t OUTLINED_FUNCTION_5_31(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_220E7867C(&a9, a1 + 16);
}

uint64_t OUTLINED_FUNCTION_5_34()
{

  return sub_220FC1070();
}

double OUTLINED_FUNCTION_5_36(double a1)
{
  v5 = a1 - v2;
  v6 = v4;
  v7 = v3;
  v8 = v2;

  *&result = CGRectIntegral(*&v6);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_37()
{

  return sub_220FC1370();
}

uint64_t OUTLINED_FUNCTION_5_38(unint64_t *a1)
{

  return sub_220F99598(a1);
}

uint64_t OUTLINED_FUNCTION_5_41()
{

  return swift_allocObject();
}

unint64_t sub_220E1DDB4()
{
  result = qword_2812C5FA0;
  if (!qword_2812C5FA0)
  {
    sub_220FC11C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C5FA0);
  }

  return result;
}

unint64_t sub_220E1DE0C()
{
  result = qword_2812C5D98;
  if (!qword_2812C5D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9E760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C5D98);
  }

  return result;
}

void *sub_220E1DE94(uint64_t a1)
{
  v2 = sub_220FC1160();
  MEMORY[0x28223BE20](v2, v3);
  sub_220E1E0EC();
  v1[3] = sub_220FC2600();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E310);
  *(swift_allocObject() + 16) = xmmword_220FC8E30;
  sub_220FC1150();
  sub_220E1A1FC(&qword_2812C5FB0, MEMORY[0x277D6CA08]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E318);
  sub_220E1E198();
  OUTLINED_FUNCTION_3_48();
  sub_220FC1180();
  swift_allocObject();
  v1[4] = sub_220FC1170();
  sub_220E1E1FC();
  v1[5] = sub_220FC2600();
  *(swift_allocObject() + 16) = xmmword_220FC8E30;
  sub_220FC1150();
  OUTLINED_FUNCTION_3_48();
  swift_allocObject();
  v1[6] = sub_220FC1170();
  v1[2] = a1;
  return v1;
}

unint64_t sub_220E1E0EC()
{
  result = qword_2812C7440;
  if (!qword_2812C7440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C7440);
  }

  return result;
}

unint64_t sub_220E1E144()
{
  result = qword_2812C7430;
  if (!qword_2812C7430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C7430);
  }

  return result;
}

unint64_t sub_220E1E198()
{
  result = qword_2812C5DA0;
  if (!qword_2812C5DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9E318);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C5DA0);
  }

  return result;
}

unint64_t sub_220E1E1FC()
{
  result = qword_2812C7388[0];
  if (!qword_2812C7388[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2812C7388);
  }

  return result;
}

unint64_t sub_220E1E254()
{
  result = qword_2812C7378;
  if (!qword_2812C7378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C7378);
  }

  return result;
}

uint64_t sub_220E1E2A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_220E1E30C(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_12();
  (*v3)(a2);
  return a2;
}

uint64_t sub_220E1E390(__int128 *a1)
{
  if (qword_2812C8B48 != -1)
  {
    swift_once();
  }

  v3 = qword_2812C8B50;
  v4 = *algn_2812C8B58;
  v5 = qword_2812C8B60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E808);
  v6 = swift_allocObject();
  *(v6 + 40) = 0;
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  *(v6 + 32) = v5;
  *(v1 + 16) = v6;
  sub_220E1E72C(a1, v1 + 24);

  return v1;
}

uint64_t sub_220E1E458()
{
  type metadata accessor for WeatherMapOverlayServiceTask();
  v0 = MEMORY[0x277D84F90];
  v1 = sub_220FC2600();
  result = sub_220FC2600();
  qword_2812C8B50 = v0;
  *algn_2812C8B58 = v1;
  qword_2812C8B60 = result;
  return result;
}

uint64_t type metadata accessor for WeatherMapOverlayServiceTask()
{
  result = qword_2812C8DB0;
  if (!qword_2812C8DB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_220E1E530()
{
  sub_220FC0C00();
  if (v0 <= 0x3F)
  {
    sub_220E1E640();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_220E1E640()
{
  if (!qword_2812CA270)
  {
    sub_220FC0660();
    v0 = sub_220FC33A0();
    if (!v1)
    {
      atomic_store(v0, &qword_2812CA270);
    }
  }
}

uint64_t sub_220E1E6BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D880);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220E1E72C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_220E1E76C()
{
  sub_220FC0B30();
  OUTLINED_FUNCTION_6();
  v38 = v2;
  v39 = v1;
  MEMORY[0x28223BE20](v1, v3);
  OUTLINED_FUNCTION_3();
  v37 = v5 - v4;
  v6 = sub_220FC0B10();
  OUTLINED_FUNCTION_6();
  v8 = v7;
  MEMORY[0x28223BE20](v9, v10);
  OUTLINED_FUNCTION_3_45();
  v33 = v0;
  v11 = sub_220FC0C00();
  OUTLINED_FUNCTION_6();
  v13 = v12;
  v16 = MEMORY[0x28223BE20](v14, v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v32 - v20;
  v34 = &v32 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F728);
  v35 = "weather.maps.disableBlending";
  v36 = v22;
  v23 = *MEMORY[0x277D7A9D8];
  v24 = *(v13 + 104);
  v24(v21, v23, v11);
  (*(v8 + 104))(v0, *MEMORY[0x277D6D098], v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F730);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F738);
  *(swift_allocObject() + 16) = xmmword_220FCC840;
  v24(v18, v23, v11);
  OUTLINED_FUNCTION_10_28();
  v25 = OUTLINED_FUNCTION_14_24();
  (v24)(v25);
  OUTLINED_FUNCTION_10_28();
  v26 = OUTLINED_FUNCTION_14_24();
  (v24)(v26);
  OUTLINED_FUNCTION_10_28();
  v27 = OUTLINED_FUNCTION_14_24();
  (v24)(v27);
  OUTLINED_FUNCTION_10_28();
  v28 = OUTLINED_FUNCTION_14_24();
  (v24)(v28);
  OUTLINED_FUNCTION_10_28();
  v29 = OUTLINED_FUNCTION_14_24();
  (v24)(v29);
  OUTLINED_FUNCTION_10_28();
  v30 = OUTLINED_FUNCTION_14_24();
  (v24)(v30);
  OUTLINED_FUNCTION_10_28();
  (*(v38 + 104))(v37, *MEMORY[0x277D6D0A8], v39);
  sub_220E1F290(&unk_2812CA0C8, MEMORY[0x277D7AA00]);
  result = sub_220FC0B70();
  qword_2812CA188 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_3()
{

  return sub_220FC12A0();
}

void OUTLINED_FUNCTION_10_4()
{
}

uint64_t OUTLINED_FUNCTION_10_11()
{

  return type metadata accessor for WeatherMapOverlay();
}

void OUTLINED_FUNCTION_10_18(uint64_t a1@<X8>)
{
  *(a1 + 64) = v1;
  *(a1 + 72) = 0;
  *(a1 + 80) = 1;
}

uint64_t OUTLINED_FUNCTION_10_23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{

  return sub_220E1E2A8(&a14, &a9);
}

__n128 OUTLINED_FUNCTION_10_24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, __int128 a50, __int128 a51)
{
  *v51 = a50;
  *(v51 + 16) = a51;
  result = *(v51 + 177);
  *(v51 + 25) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_26()
{

  return sub_220E436E0(v0, type metadata accessor for WeatherMapOverlay);
}

uint64_t OUTLINED_FUNCTION_10_28()
{

  return sub_220FC0B40();
}

void OUTLINED_FUNCTION_14_0()
{

  JUMPOUT(0x223D9DDF0);
}

__n128 OUTLINED_FUNCTION_14_2@<Q0>(uint64_t a1@<X8>)
{
  *&v3 = *(a1 + 56);
  *(v2 + 408) = v3;
  v4 = *(a1 + 64);
  *(v2 + 416) = v4;
  *&v5 = *(a1 + 72);
  *(v2 + 424) = v5;
  v6 = *(a1 + 80);
  *(v2 + 432) = v6;
  *(v2 + 440) = *(a1 + 88);
  v7 = *(a1 + 48);
  *(v2 + 16) = *(a1 + 32);
  *(&v3 + 1) = v4;
  *(v2 + 32) = v7;
  *(&v5 + 1) = v6;
  *(v2 + 56) = v5;
  *(v2 + 40) = v3;
  result = *(v2 + 320);
  *(v2 + 184) = result;
  *(v2 + 200) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_14_3()
{

  return sub_220E3B0C4(v1, v0);
}

id OUTLINED_FUNCTION_14_4()
{

  return [v0 (v1 + 2424)];
}

void OUTLINED_FUNCTION_14_5()
{

  sub_220E978F8(v2, v1, v0);
}

uint64_t OUTLINED_FUNCTION_14_6()
{

  return sub_220FC3AA0();
}

void OUTLINED_FUNCTION_14_7()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x223D9DDF0);
}

uint64_t OUTLINED_FUNCTION_14_10(uint64_t result)
{
  *(v1 + 4) = result;
  *v2 = result;
  *(v1 + 12) = 2048;
  return result;
}

uint64_t OUTLINED_FUNCTION_14_17()
{
}

uint64_t OUTLINED_FUNCTION_14_19@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t OUTLINED_FUNCTION_14_21()
{

  return sub_220FC1370();
}

uint64_t OUTLINED_FUNCTION_14_25()
{

  return sub_220F901C8();
}

id OUTLINED_FUNCTION_14_26@<X0>(uint64_t a1@<X8>)
{
  v5 = *(v1 + a1);

  return [v2 (v3 + 2040)];
}

uint64_t OUTLINED_FUNCTION_14_27()
{

  return sub_220FC27D0();
}

uint64_t sub_220E1F290(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_220E1F2D8()
{
  OUTLINED_FUNCTION_29_2();
  v38 = sub_220FC0E70();
  OUTLINED_FUNCTION_6();
  v2 = v1;
  MEMORY[0x28223BE20](v3, v4);
  OUTLINED_FUNCTION_4();
  v40 = (v5 - v6);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v36 - v9;
  v11 = sub_220FC0CA0();
  OUTLINED_FUNCTION_6();
  v13 = v12;
  MEMORY[0x28223BE20](v14, v15);
  OUTLINED_FUNCTION_4();
  v39 = (v16 - v17);
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v36 - v20;
  if (qword_2812C7508 != -1)
  {
    swift_once();
  }

  v22 = qword_2812CE520;
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v41 = v22;

  sub_220FC0F40();
  sub_220FC0C90();
  v37 = *(v13 + 8);
  v37(v21, v11);
  sub_220FC0E00();
  v23 = v38;
  v36 = *(v2 + 8);
  v36(v10, v38);
  v24 = *(v0 + 96);
  if ((v24 & 1) == 0)
  {
    sub_220E20238(&OBJC_IVAR____TtC11WeatherMaps24WeatherMapOverlayService____lazy_storage___forceUseClientHashRendering, &qword_2812CA1F8);
  }

  sub_220E1FA70();
  v25 = v24 && (sub_220E1B804() & 1) == 0;
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v26 = v39;
  sub_220FC0F40();
  v27 = v40;
  sub_220FC0C90();
  v37(v26, v11);
  sub_220FC0E10();
  v36(v27, v23);
  v28 = sub_220E20238(&OBJC_IVAR____TtC11WeatherMaps24WeatherMapOverlayService____lazy_storage___forceUseSeparateRadarEndpoints, &qword_2812CA1C0);
  if (!v25 && (v28 & 1) == 0)
  {
    sub_220E204E8();
  }

  sub_220E2076C();
  if (qword_2812C5F20 != -1)
  {
    OUTLINED_FUNCTION_2_15();
  }

  v29 = sub_220FC17A0();
  __swift_project_value_buffer(v29, qword_2812C5F28);

  v30 = sub_220FC1780();
  v31 = sub_220FC2E30();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 67109120;
    *(v32 + 4) = sub_220E20F44() & 1;

    _os_log_impl(&dword_220E15000, v30, v31, "Use separate radar/hash endpoints: %{BOOL}d", v32, 8u);
    OUTLINED_FUNCTION_32_1();
  }

  else
  {
  }

  v33 = sub_220FC1780();
  v34 = sub_220FC2E30();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 67109120;
    *(v35 + 4) = sub_220E1B804() & 1;

    _os_log_impl(&dword_220E15000, v33, v34, "Use client hash rendering: %{BOOL}d", v35, 8u);
    OUTLINED_FUNCTION_15();
  }

  else
  {
  }

  OUTLINED_FUNCTION_22();
}

uint64_t OUTLINED_FUNCTION_30(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v2, 1, 1, a1);

  return sub_220E5ADF8(v1, v3);
}

uint64_t OUTLINED_FUNCTION_50()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_30_0()
{

  return swift_unknownObjectRetain();
}

void OUTLINED_FUNCTION_30_4()
{

  JUMPOUT(0x223D9CFA0);
}

uint64_t OUTLINED_FUNCTION_30_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  return sub_220FAD910(a1, va);
}

uint64_t OUTLINED_FUNCTION_30_11()
{

  return sub_220FC38F0();
}

void *sub_220E1F958()
{
  type metadata accessor for Experiments();
  v0 = swift_allocObject();
  result = sub_220E1F9B8();
  qword_2812CE520 = v0;
  return result;
}

void *sub_220E1F9B8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF30);
  swift_allocObject();
  v0[2] = sub_220FC13C0();
  OUTLINED_FUNCTION_0_40();
  v0[3] = sub_220FC13C0();
  OUTLINED_FUNCTION_0_40();
  v0[4] = sub_220FC13C0();
  OUTLINED_FUNCTION_0_40();
  v0[5] = sub_220FC13C0();
  return v0;
}

uint64_t sub_220E1FA70()
{
  OUTLINED_FUNCTION_1_36();
  sub_220FC13F0();
}

void OUTLINED_FUNCTION_1_6()
{

  sub_220F36E74();
}

uint64_t OUTLINED_FUNCTION_1_7()
{

  return sub_220FC3260();
}

id OUTLINED_FUNCTION_1_12()
{

  return [v0 (v1 + 3832)];
}

uint64_t OUTLINED_FUNCTION_1_15()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_1_17()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_23()
{

  return sub_220FC3220();
}

__n128 *OUTLINED_FUNCTION_1_25(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 1701869940;
  result[2].n128_u64[1] = 0xE400000000000000;
  return result;
}

id OUTLINED_FUNCTION_1_26(void *a1, double a2)
{

  return sub_220E417BC(a1, 0x8000u, 0, 1, 0, 0, a2);
}

uint64_t OUTLINED_FUNCTION_1_31()
{

  return sub_220FC1370();
}

uint64_t OUTLINED_FUNCTION_1_34()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_1_35(unint64_t *a1)
{

  return sub_220E453D4(a1, v1);
}

uint64_t OUTLINED_FUNCTION_1_36()
{
}

__n128 *OUTLINED_FUNCTION_1_37(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x65756C6176;
  result[2].n128_u64[1] = 0xE500000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_40()
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
}

void OUTLINED_FUNCTION_1_52(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = v13 + v11;
  *v16 = v14;
  *(v16 + 8) = v9;
  v17 = (v13 + v10);
  *v17 = v15;
  v17[1] = a9;
  *(v12 + 48) = sub_220F1F328;
  *(v12 + 56) = v13;
}

id OUTLINED_FUNCTION_1_54()
{

  return [v0 (v2 + 3192)];
}

void *OUTLINED_FUNCTION_1_61(void *a1)
{

  return memcpy(a1, (v1 + 184), 0x80uLL);
}

__n128 OUTLINED_FUNCTION_1_63(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, __int128 a44, __int128 a45)
{
  *(v45 + 48) = a44;
  *(v45 + 64) = a45;
  result = *(v45 + 129);
  *(v45 + 73) = result;
  return result;
}

id OUTLINED_FUNCTION_1_65(void *a1)
{

  return [a1 (v1 + 3960)];
}

uint64_t OUTLINED_FUNCTION_1_67@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[14] = a1;
  v2[15] = a2;
  v2[11] = v3;
  return 0;
}

uint64_t OUTLINED_FUNCTION_1_73()
{

  return sub_220FC3430();
}

uint64_t sub_220E20238(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4 == 2)
  {
    if (*a2 != -1)
    {
      swift_once();
    }

    sub_220E20470(&qword_2812C9990, type metadata accessor for WeatherMapOverlayService);
    sub_220FC0A00();
    LOBYTE(v4) = v6;
    *(v2 + v3) = v6;
  }

  return v4 & 1;
}

uint64_t sub_220E20314()
{
  sub_220FC0B30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v0, v1);
  OUTLINED_FUNCTION_0_81();
  sub_220FC0B10();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v2, v3);
  OUTLINED_FUNCTION_3_45();
  v4 = OUTLINED_FUNCTION_13_24();
  v5(v4);
  v6 = OUTLINED_FUNCTION_8_30();
  v7(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F700);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_9_23();
  result = OUTLINED_FUNCTION_12_24();
  qword_2812CA1C8 = result;
  return result;
}

uint64_t sub_220E20470(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_220E204E8()
{
  OUTLINED_FUNCTION_29_2();
  v1 = sub_220FC0E70();
  OUTLINED_FUNCTION_6();
  v35 = v2;
  MEMORY[0x28223BE20](v3, v4);
  OUTLINED_FUNCTION_3();
  v7 = v6 - v5;
  v8 = sub_220FC0CA0();
  OUTLINED_FUNCTION_6();
  v10 = v9;
  MEMORY[0x28223BE20](v11, v12);
  OUTLINED_FUNCTION_3();
  v15 = v14 - v13;
  sub_220FC0C00();
  OUTLINED_FUNCTION_6();
  v17 = v16;
  MEMORY[0x28223BE20](v18, v19);
  OUTLINED_FUNCTION_4();
  v22 = MEMORY[0x28223BE20](v20, v21);
  v25 = v31 - v24;
  if ((*(v0 + 96) & 1) == 0)
  {
    v31[1] = OBJC_IVAR____TtC11WeatherMaps24WeatherMapOverlayService_source;
    v32 = v1;
    v26 = *(v0 + 40);
    v33 = v23;
    v34 = v22;
    __swift_project_boxed_opaque_existential_1((v0 + 16), v26);
    v31[0] = v8;
    v27 = v35;
    sub_220FC0F40();
    sub_220FC0C90();
    (*(v10 + 8))(v15, v31[0]);
    sub_220FC0BF0();
    (*(v27 + 8))(v7, v32);
    v28 = v34;
    (*(v17 + 104))(v33, *MEMORY[0x277D7A9D0], v34);
    sub_220E85A74();
    v29 = *(v17 + 8);
    v30 = OUTLINED_FUNCTION_60_1();
    v29(v30);
    (v29)(v25, v28);
  }

  OUTLINED_FUNCTION_22();
}

uint64_t sub_220E2076C()
{
  OUTLINED_FUNCTION_1_36();
  sub_220FC13F0();
}

uint64_t OUTLINED_FUNCTION_25_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 56);
  result = *(v6 + 8 * v5);
  *(v6 + 8 * v5) = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_25_10()
{

  return sub_220F11474(v0);
}

void OUTLINED_FUNCTION_25_12()
{

  JUMPOUT(0x223D9DDF0);
}

uint64_t OUTLINED_FUNCTION_25_13()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_25_14()
{

  return sub_220FC1320();
}

uint64_t OUTLINED_FUNCTION_25_15(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

void OUTLINED_FUNCTION_2_6()
{
  *(v1 + 16) = v2;
  v5 = v1 + 16 * v3;
  *(v5 + 32) = v4;
  *(v5 + 40) = v0;
}

id OUTLINED_FUNCTION_2_8()
{

  return [v0 (v1 + 3832)];
}

double OUTLINED_FUNCTION_2_9(uint64_t a1)
{
  *(a1 + 8) = v1;
  *(v8 + 56) = v6;
  *(v8 + 40) = v3;
  *(v8 + 48) = v5;
  *(v8 + 24) = v2;
  *(v8 + 32) = v4;
  *(v8 + 16) = v7;
  return v9;
}

uint64_t OUTLINED_FUNCTION_2_10(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return sub_220FBFDD0();
}

uint64_t OUTLINED_FUNCTION_2_14()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_2_15()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_17()
{

  return sub_220FBFC70();
}

id OUTLINED_FUNCTION_2_18()
{

  return [v0 (v2 + 3528)];
}

uint64_t OUTLINED_FUNCTION_2_26()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_28()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_34()
{

  return swift_once();
}

void *OUTLINED_FUNCTION_2_35(uint64_t a1)
{
  v4 = (*(v2 + 56) + 96 * a1);

  return memcpy((v1 + 488), v4, 0x60uLL);
}

id OUTLINED_FUNCTION_2_37()
{

  return [v0 (v1 + 2168)];
}

id OUTLINED_FUNCTION_2_45(void *a1)
{

  return [a1 (v1 + 3960)];
}

uint64_t OUTLINED_FUNCTION_2_46()
{

  return sub_220E4E4D8(v1, v0 + 128);
}

uint64_t OUTLINED_FUNCTION_2_50(unint64_t *a1)
{

  return sub_220E453D4(a1, v1);
}

uint64_t sub_220E20E0C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_220FC17A0();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_220FC1790();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_220E20F44()
{

  sub_220FC13E0();

  return v1;
}

void *sub_220E20F88(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E320);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

unint64_t sub_220E20FF8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_220E21108(v11, 0, 0, 1, a1, a2);
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
    sub_220E21408(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

uint64_t sub_220E210BC(uint64_t a1, unint64_t a2)
{
  v3 = sub_220E21208(a1, a2);
  sub_220E21324(&unk_28347AEF0);
  return v3;
}

unint64_t sub_220E21108(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_220E210BC(a5, a6);
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
    result = sub_220FC3620();
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

uint64_t sub_220E21208(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_220FC2830())
  {
    result = sub_220E20F88(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_220FC35A0();
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
          result = sub_220FC3620();
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

uint64_t sub_220E21324(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_220EB5D00(result, v7, 1, v3);
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

uint64_t sub_220E21408(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_220E214B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D880);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_220E21530(uint64_t a1)
{
  v13 = type metadata accessor for WeatherMapOverlayService(0);
  v14 = &off_28347ED08;
  v12[0] = a1;
  v10 = &type metadata for WeatherMapOverlayStorageConverter;
  v11 = &off_283484B58;
  type metadata accessor for WeatherMapOverlayMetadataLoader();
  v2 = swift_allocObject();
  v3 = __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
  MEMORY[0x28223BE20](v3, v3);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v6 + 16))(v5);
  __swift_mutable_project_boxed_opaque_existential_1(v9, v10);
  v7 = sub_220E21690(*v5, v2);
  __swift_destroy_boxed_opaque_existential_0(v9);
  __swift_destroy_boxed_opaque_existential_0(v12);
  return v7;
}

void *sub_220E21690(uint64_t a1, void *a2)
{
  v22 = sub_220FC2FB0();
  v4 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v5);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_220FC2F80();
  MEMORY[0x28223BE20](v8, v9);
  v10 = sub_220FC2390();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v12 = sub_220FC1160();
  MEMORY[0x28223BE20](v12 - 8, v13);
  v30 = type metadata accessor for WeatherMapOverlayService(0);
  v31 = &off_28347ED08;
  *&v29 = a1;
  v27 = &type metadata for WeatherMapOverlayStorageConverter;
  v28 = &off_283484B58;
  sub_220FC1150();
  sub_220FC1180();
  swift_allocObject();
  a2[12] = sub_220FC1170();
  v14 = sub_220E1AAEC();
  v23 = "s15ManagerAssembly";
  v24 = v14;
  sub_220FC2350();
  v25 = MEMORY[0x277D84F90];
  v21[3] = sub_220E1A1B4(&qword_2812C5CA8, MEMORY[0x277D85230]);
  v21[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF28);
  sub_220E1A244(&qword_2812C5D38, &qword_27CF9CF28);
  sub_220FC3430();
  v15 = *MEMORY[0x277D85260];
  v16 = v4 + 104;
  v17 = *(v4 + 104);
  v21[0] = v7;
  v21[1] = v16;
  v18 = v22;
  v17(v7, v15, v22);
  a2[13] = sub_220FC2FF0();
  v23 = "com.apple.weather.map.metadata";
  sub_220FC2350();
  v25 = MEMORY[0x277D84F90];
  sub_220FC3430();
  v17(v21[0], v15, v18);
  a2[14] = sub_220FC2FF0();
  v19 = MEMORY[0x277D84F90];
  a2[15] = MEMORY[0x277D84F90];
  a2[16] = v19;
  a2[17] = 0;
  a2[18] = 0;
  a2[19] = 0;
  a2[20] = 5000257;
  a2[21] = 0xE300000000000000;
  sub_220E1E72C(&v29, (a2 + 2));
  sub_220E1E72C(&v26, (a2 + 7));
  return a2;
}

void *sub_220E21AD4()
{
  v1 = v0;
  v5[208] = 0;
  v0[24] = 0;
  v0[25] = 0;
  v0[23] = 0;
  v2 = v0 + 23;
  *(v1 + 208) = 0;
  v1[27] = 0x6576697463616E69;
  v1[28] = 0xE800000000000000;
  v1[29] = 0;
  v1[30] = 0;
  *(v1 + 124) = 2;
  v1[32] = 0;
  v1[33] = 0;
  v1[34] = MEMORY[0x277D84F90];
  v1[35] = 0;
  *(v1 + 288) = 0;
  v1[37] = 0;
  v1[38] = 0x3FF0000000000000;
  memcpy(__dst, v2, sizeof(__dst));
  v7 = 1;
  v1[2] = 1;
  v1[3] = 0;
  v1[4] = 0;
  memcpy(v1 + 5, v2, 0x80uLL);
  v1[21] = 0;
  *(v1 + 176) = v7;
  memcpy(v8, v1 + 2, 0xA1uLL);
  memcpy(__src, v1 + 2, 0xA1uLL);
  __src[21] = 0;
  __src[22] = 0xE000000000000000;
  sub_220E21C3C(__src);
  swift_beginAccess();
  memcpy(v5, __src, 0xB8uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F2B0);
  swift_allocObject();
  sub_220E21C60(__dst, v4);
  sub_220E21C98(v8, v4);
  v1[39] = sub_220FC13C0();
  swift_endAccess();
  return v1;
}

void *sub_220E21CD8(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v37 = a1;
  v7 = *a4;
  v36 = sub_220FC2FB0();
  v39 = *(v36 - 8);
  (MEMORY[0x28223BE20])();
  v38 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220FC2F80();
  (MEMORY[0x28223BE20])();
  v35 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220FC2390();
  (MEMORY[0x28223BE20])();
  v49 = &type metadata for WeatherMapOverlayRegionIntersectDetector;
  v50 = &off_28347DA10;
  v10 = type metadata accessor for WeatherMapOverlayMetadataLoader();
  v47[3] = v10;
  v47[4] = &off_28347D820;
  v47[0] = a2;
  v11 = type metadata accessor for WeatherMapUnsupportedOverlayMetadataFactory();
  v45 = v11;
  v46 = &off_283485AD8;
  v44[0] = a3;
  v42 = v7;
  v43 = &off_28347ED08;
  v41[0] = a4;
  type metadata accessor for WeatherMapOverlayDataManager();
  v12 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v48, &type metadata for WeatherMapOverlayRegionIntersectDetector);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v47, v10);
  MEMORY[0x28223BE20](v13, v13);
  v15 = (v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v44, v45);
  MEMORY[0x28223BE20](v17, v17);
  v19 = (v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
  MEMORY[0x28223BE20](v21, v21);
  v23 = (v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23);
  v25 = *v15;
  v26 = *v19;
  v27 = *v23;
  v12[10] = &type metadata for WeatherMapOverlayRegionIntersectDetector;
  v12[11] = &off_28347DA10;
  v12[15] = v10;
  v12[16] = &off_28347D820;
  v12[12] = v25;
  v12[20] = v11;
  v12[21] = &off_283485AD8;
  v12[17] = v26;
  v12[25] = v7;
  v12[26] = &off_28347ED08;
  v12[22] = v27;
  v34 = sub_220E1AAEC();
  v33 = "r.map.metadata.io";
  sub_220FC2350();
  v40 = MEMORY[0x277D84F90];
  v32[2] = sub_220E1A1B4(&qword_2812C5CA8, MEMORY[0x277D85230]);
  v32[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF28);
  sub_220E1A244(&qword_2812C5D38, &qword_27CF9CF28);
  sub_220FC3430();
  v28 = *MEMORY[0x277D85260];
  v29 = *(v39 + 104);
  v39 += 104;
  v30 = v36;
  v29(v38, v28, v36);
  v12[27] = sub_220FC2FF0();
  v33 = "r.MapOverlay.Metadata";
  sub_220FC2360();
  v40 = MEMORY[0x277D84F90];
  sub_220FC3430();
  v29(v38, v28, v30);
  v12[28] = sub_220FC2FF0();
  sub_220E1E72C(v37, (v12 + 2));
  __swift_destroy_boxed_opaque_existential_0(v41);
  __swift_destroy_boxed_opaque_existential_0(v44);
  __swift_destroy_boxed_opaque_existential_0(v47);
  __swift_destroy_boxed_opaque_existential_0(v48);
  return v12;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

_BYTE *storeEnumTagSinglePayload for WeatherMapOverlayKind(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 5;
  if (a3 + 5 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFB)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFA)
  {
    v7 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        JUMPOUT(0x220E224BCLL);
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WeatherMapOverlayKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB)
  {
    v2 = a2 + 5;
    if (a2 + 5 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = a1[1];
        if (!a1[1])
        {
          break;
        }

        return (*a1 | (v5 << 8)) - 5;
      case 2:
        v5 = *(a1 + 1);
        if (*(a1 + 1))
        {
          return (*a1 | (v5 << 8)) - 5;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x220E22594);
      case 4:
        v5 = *(a1 + 1);
        if (!v5)
        {
          break;
        }

        return (*a1 | (v5 << 8)) - 5;
      default:
        break;
    }
  }

  v7 = *a1;
  if (v7 >= 3)
  {
    v8 = v7 - 2;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 4)
  {
    return v8 - 3;
  }

  else
  {
    return 0;
  }
}

BOOL static WeatherMapOverlayKind.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(v2)
  {
    case 5:
      return v3 == 5;
    case 4:
      return v3 == 4;
    case 3:
      return v3 == 3;
  }

  if ((v3 - 3) < 3)
  {
    return 0;
  }

  return v2 == v3;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t storeEnumTagSinglePayload for ProgressReport(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_220E2267C(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_220E22694(void *a1)
{
  if (*a1 != -1)
  {
    swift_once();
  }
}

uint64_t sub_220E226E0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return OUTLINED_FUNCTION_2_1(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_220E226F8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return OUTLINED_FUNCTION_2_1(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_220E22710(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t sub_220E2277C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_220E2EE08();
  *a1 = result;
  return result;
}

void *sub_220E227F8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

void sub_220E22814(uint64_t a1@<X8>)
{
  sub_220E22848();
  *a1 = v2;
  *(a1 + 8) = v3 & 1;
}

uint64_t sub_220E22850()
{
  OUTLINED_FUNCTION_1_5();
  result = sub_220E22878();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_220E228CC()
{

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_220E22924()
{
  MEMORY[0x223D9DEF0](v0 + 16);
  OUTLINED_FUNCTION_2_3();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_220E2295C()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_2_3();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_220E229E4()
{
  MEMORY[0x223D9DEF0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

BOOL sub_220E22A24(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_220E22A70()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_220E22B1C()
{

  v1 = OUTLINED_FUNCTION_1_11();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_220E22B54()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_220E22B8C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_220E22BC4()
{

  v0 = OUTLINED_FUNCTION_1_11();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_220E22BFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for WeatherMapAnnotationBackground(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_220E22CA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for WeatherMapAnnotationBackground(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_220E22DA0()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_220E22DD8()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  if (*(v0 + 80))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 56);
  }

  if (*(v0 + 120))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 96);
  }

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_220E22E6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SnapshotManager.SnapshotResult(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_220FC0760();
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_220E22F08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for SnapshotManager.SnapshotResult(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_220FC0760();
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_220E22FAC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_220E22FEC()
{
  type metadata accessor for SnapshotManager.Snapshot(0);
  OUTLINED_FUNCTION_11();
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v6 = *(v5 + 64);
  swift_unknownObjectRelease();

  v7 = v0[7];
  v8 = sub_220FC02B0();
  OUTLINED_FUNCTION_2();
  v10 = *(v9 + 8);
  v10(v1 + v4 + v7, v8);
  v11 = (v1 + v4 + v0[8]);

  OUTLINED_FUNCTION_16_1();
  if (!v12)
  {
  }

  OUTLINED_FUNCTION_3_8();
  v13 = type metadata accessor for WeatherMapOverlay();
  v14 = OUTLINED_FUNCTION_14_1(v13);
  (v10)(v14);
  v15 = type metadata accessor for WeatherMapOverlayTimeConstraints();
  v10(v11 + *(v15 + 20), v8);
  v16 = v0[10];
  v17 = v16 + *(type metadata accessor for SnapshotManager.Options(0) + 20);
  sub_220FC1070();
  OUTLINED_FUNCTION_2();
  (*(v18 + 8))(v1 + v4 + v17);

  OUTLINED_FUNCTION_10_1();
  if (!(!v12 & v21))
  {
    sub_220E565AC(*v20, v19);
  }

  return MEMORY[0x2821FE8E8](v1, v4 + v6, v3 | 7);
}

uint64_t sub_220E231C4()
{
  type metadata accessor for SnapshotManager.Snapshot(0);
  OUTLINED_FUNCTION_11();
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v6 = *(v5 + 64);

  v7 = v0[7];
  v8 = sub_220FC02B0();
  OUTLINED_FUNCTION_2();
  v10 = *(v9 + 8);
  v10(v1 + v4 + v7, v8);
  v11 = (v1 + v4 + v0[8]);

  OUTLINED_FUNCTION_16_1();
  if (!v12)
  {
  }

  OUTLINED_FUNCTION_3_8();
  v13 = type metadata accessor for WeatherMapOverlay();
  v14 = OUTLINED_FUNCTION_14_1(v13);
  (v10)(v14);
  v15 = type metadata accessor for WeatherMapOverlayTimeConstraints();
  v10(v11 + *(v15 + 20), v8);
  v16 = v0[10];
  v17 = v16 + *(type metadata accessor for SnapshotManager.Options(0) + 20);
  sub_220FC1070();
  OUTLINED_FUNCTION_2();
  (*(v18 + 8))(v1 + v4 + v17);

  OUTLINED_FUNCTION_10_1();
  if (!(!v12 & v21))
  {
    sub_220E565AC(*v20, v19);
  }

  v22 = (v6 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v1, v22 + 8, v3 | 7);
}

uint64_t sub_220E233A8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D0E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_220E23480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CD18);
    OUTLINED_FUNCTION_11_0();
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(a3 + 20);
    }

    else
    {
      v11 = type metadata accessor for MapScrubberOverlayViewModel.Labels(0);
      v12 = *(a3 + 24);
    }

    return __swift_getEnumTagSinglePayload(a1 + v12, a2, v11);
  }
}

uint64_t sub_220E23560(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CD18);
    OUTLINED_FUNCTION_11_0();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(a4 + 20);
    }

    else
    {
      v10 = type metadata accessor for MapScrubberOverlayViewModel.Labels(0);
      v11 = *(a4 + 24);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_220E23630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_220FC02B0();
  OUTLINED_FUNCTION_11_0();
  if (*(v7 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v9 = *(a1 + *(a3 + 20));
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    return (v9 + 1);
  }
}

void sub_220E236D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_220FC02B0();
  OUTLINED_FUNCTION_11_0();
  if (*(v9 + 84) == a3)
  {

    __swift_storeEnumTagSinglePayload(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }
}

uint64_t sub_220E237A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_220FC02B0();
  OUTLINED_FUNCTION_11_0();
  if (*(v7 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v9 = *(a1 + *(a3 + 20) + 8);
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    v10 = v9 - 1;
    if (v10 < 0)
    {
      v10 = -1;
    }

    return (v10 + 1);
  }
}

void sub_220E23860()
{
  OUTLINED_FUNCTION_0_15();
  sub_220FC02B0();
  OUTLINED_FUNCTION_11_0();
  if (*(v5 + 84) == v3)
  {

    __swift_storeEnumTagSinglePayload(v1, v0, v0, v4);
  }

  else
  {
    *(v1 + *(v2 + 20) + 8) = v0;
  }
}

uint64_t sub_220E238F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for OverlayTileData.Expiry(0);
  OUTLINED_FUNCTION_11_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  else
  {
    v11 = *(a1 + *(a3 + 24));
    if (v11 >= 7)
    {
      return v11 - 6;
    }

    else
    {
      return 0;
    }
  }
}

void sub_220E239A0()
{
  v4 = OUTLINED_FUNCTION_0_15();
  type metadata accessor for OverlayTileData.Expiry(v4);
  OUTLINED_FUNCTION_11_0();
  if (*(v6 + 84) == v3)
  {
    v7 = v5;
    v8 = v1 + *(v2 + 20);

    __swift_storeEnumTagSinglePayload(v8, v0, v0, v7);
  }

  else
  {
    *(v1 + *(v2 + 24)) = v0 + 6;
  }
}

uint64_t sub_220E23A60()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_220E23A98()
{

  sub_220E5AE5C(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_220E23AE4()
{
  v1 = (type metadata accessor for WeatherMapOverlayServiceMetadataResponse(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_220FC0090();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);

  sub_220FC02B0();
  OUTLINED_FUNCTION_2();
  (*(v9 + 8))(v0 + v3);
  v10 = (v0 + v3 + v1[7]);

  if (v10[6])
  {
  }

  if (v10[16])
  {
  }

  if (v10[28])
  {
  }

  v11 = (v3 + v4 + v7) & ~v7;
  v12 = (v8 + v7 + v11) & ~v7;

  v13 = *(v6 + 8);
  v13(v0 + v11, v5);
  v13(v0 + v12, v5);

  return MEMORY[0x2821FE8E8](v0, v12 + v8, v2 | v7 | 7);
}

uint64_t sub_220E23CD0()
{
  swift_unknownObjectRelease();

  sub_220E5AE5C(*(v0 + 56), *(v0 + 64), *(v0 + 72));

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_220E23D34(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_220E23D4C()
{
  v1 = sub_220FC0090();
  OUTLINED_FUNCTION_2();
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v2 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v8 = (v6 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v3(v0 + v5, v1);
  v3(v0 + v7, v1);

  return MEMORY[0x2821FE8E8](v0, v8 + 16, v4 | 7);
}

uint64_t sub_220E23E18()
{
  sub_220FC0090();
  OUTLINED_FUNCTION_2();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_220E23F00()
{
  MEMORY[0x223D9DEF0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_220E23F38()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_220E23F98()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_220E23FD8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_220E24014()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D3E8);
  OUTLINED_FUNCTION_0_17();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_220E2409C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for WeatherMapOverlay();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 24);
    }

    else
    {
      v9 = type metadata accessor for SnapshotManager.Options(0);
      v10 = *(a3 + 32);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

void *sub_220E24168(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for WeatherMapOverlay();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 24);
    }

    else
    {
      v9 = type metadata accessor for SnapshotManager.Options(0);
      v10 = *(a4 + 32);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_220E24234(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D408);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v4);
  if (EnumTagSinglePayload >= 3)
  {
    return EnumTagSinglePayload - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_220E24288(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D408);

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t sub_220E242F4()
{
  MEMORY[0x223D9DEF0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_220E2433C()
{
  MEMORY[0x223D9DEF0](v0 + 16);
  OUTLINED_FUNCTION_2_3();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_220E24370(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D5B0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v4);
  if (EnumTagSinglePayload >= 3)
  {
    return EnumTagSinglePayload - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_220E243C4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D5B0);

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t sub_220E24430()
{

  v0 = OUTLINED_FUNCTION_23();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_220E24460()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_2_3();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_220E24494()
{

  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_220E244C8()
{
  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_220E244FC()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_220E24544()
{
  OUTLINED_FUNCTION_2_3();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_220E2457C()
{
  type metadata accessor for WeatherMapStore.ViewModel(0);
  OUTLINED_FUNCTION_11();
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);
  swift_unknownObjectRelease();
  v8 = v1 + v5;

  v9 = v1 + v5 + v0[8];
  v10 = type metadata accessor for WeatherMapOverlay();
  if (!OUTLINED_FUNCTION_34_1(v10))
  {
    if (*(v9 + 8) != 1)
    {
    }

    OUTLINED_FUNCTION_12_5();
    v11 = v9 + *(v2 + 28);
    v12 = sub_220FC02B0();
    OUTLINED_FUNCTION_2();
    v14 = *(v13 + 8);
    v15 = OUTLINED_FUNCTION_4_3();
    v14(v15);
    v16 = type metadata accessor for WeatherMapOverlayTimeConstraints();
    (v14)(v11 + *(v16 + 20), v12);
  }

  v17 = v0[11];
  type metadata accessor for InteractiveFocus();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_220FC1070();
    OUTLINED_FUNCTION_2();
    (*(v18 + 8))(v8 + v17);
  }

  v19 = v0[16];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D5B0);
  if (!__swift_getEnumTagSinglePayload(v8 + v19, 2, v20))
  {
    sub_220FC1070();
    OUTLINED_FUNCTION_2();
    (*(v21 + 8))(v8 + v19);
  }

  return MEMORY[0x2821FE8E8](v1, v5 + v7, v4 | 7);
}

uint64_t sub_220E247DC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_220E24844()
{
  v1 = OUTLINED_FUNCTION_23();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_220E2487C()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_220E248BC()
{
  type metadata accessor for WeatherMapStore.ViewModel(0);
  OUTLINED_FUNCTION_11();
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64);
  v8 = v1 + v5;

  v9 = v1 + v5 + v0[8];
  v10 = type metadata accessor for WeatherMapOverlay();
  if (!OUTLINED_FUNCTION_34_1(v10))
  {
    if (*(v9 + 8) != 1)
    {
    }

    OUTLINED_FUNCTION_12_5();
    v11 = v9 + *(v2 + 28);
    v12 = sub_220FC02B0();
    OUTLINED_FUNCTION_2();
    v14 = *(v13 + 8);
    v15 = OUTLINED_FUNCTION_4_3();
    v14(v15);
    v16 = type metadata accessor for WeatherMapOverlayTimeConstraints();
    (v14)(v11 + *(v16 + 20), v12);
  }

  v17 = v0[11];
  type metadata accessor for InteractiveFocus();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_220FC1070();
    OUTLINED_FUNCTION_2();
    (*(v18 + 8))(v8 + v17);
  }

  v19 = v0[16];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D5B0);
  if (!__swift_getEnumTagSinglePayload(v8 + v19, 2, v20))
  {
    sub_220FC1070();
    OUTLINED_FUNCTION_2();
    (*(v21 + 8))(v8 + v19);
  }

  return MEMORY[0x2821FE8E8](v1, v5 + v7, v4 | 7);
}

uint64_t sub_220E24B14()
{

  MEMORY[0x223D9DEF0](v0 + 136);
  MEMORY[0x223D9DEF0](v0 + 152);

  return MEMORY[0x2821FE8E8](v0, 168, 7);
}

uint64_t sub_220E24B78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for WeatherMapAnnotationBackground(0);
    v9 = a1 + *(a3 + 36);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_220E24C00(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for WeatherMapAnnotationBackground(0);
    v8 = v5 + *(a4 + 36);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_220E24D78()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_220E24DB8()
{

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_220E24DF4()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_2_3();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_220E24E28()
{
  v1 = sub_220FC0C00();
  OUTLINED_FUNCTION_6();
  v3 = v2;
  v17 = *(v2 + 80);
  v5 = (v17 + 32) & ~v17;
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (((((v6 + 71) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D818);
  OUTLINED_FUNCTION_29(v8);
  v10 = *(v9 + 80);
  v11 = (v10 + v7 + 17) & ~v10;
  v16 = *(v12 + 64);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v1);

  OUTLINED_FUNCTION_75(v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_220E5AE5C(*(v0 + v7), *(v0 + v7 + 8), *(v0 + v7 + 16));
  v13 = sub_220FC0660();
  if (!OUTLINED_FUNCTION_57_1(v0 + v11))
  {
    OUTLINED_FUNCTION_12();
    (*(v14 + 8))(v0 + v11, v13);
  }

  return MEMORY[0x2821FE8E8](v0, v11 + v16, v17 | v10 | 7);
}

uint64_t sub_220E25010()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D858);
  OUTLINED_FUNCTION_6();
  v2 = v1;
  v23 = v3;
  v24 = *(v1 + 80);
  v4 = (v24 + 128) & ~v24;
  v6 = (v4 + *(v5 + 64) + 23) & 0xFFFFFFFFFFFFFFF8;
  v21 = sub_220FBFC00();
  OUTLINED_FUNCTION_6();
  v8 = v7;
  v9 = *(v7 + 80);
  v11 = (v6 + v9 + 8) & ~v9;
  v12 = (*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D818);
  OUTLINED_FUNCTION_29(v13);
  v15 = *(v14 + 80);
  v16 = (v12 + v15 + 17) & ~v15;
  v22 = *(v17 + 64);

  sub_220E92C8C(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));

  (*(v2 + 8))(v0 + v4, v23);

  (*(v8 + 8))(v0 + v11, v21);
  sub_220E5AE5C(*(v0 + v12), *(v0 + v12 + 8), *(v0 + v12 + 16));
  v18 = sub_220FC0660();
  if (!OUTLINED_FUNCTION_57_1(v0 + v16))
  {
    OUTLINED_FUNCTION_12();
    (*(v19 + 8))(v0 + v16, v18);
  }

  return MEMORY[0x2821FE8E8](v0, v16 + v22, v24 | v9 | v15 | 7);
}

uint64_t sub_220E25288()
{
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D858);
  OUTLINED_FUNCTION_6();
  v2 = v1;
  v25 = *(v1 + 80);
  v3 = (v25 + 88) & ~v25;
  v5 = (*(v4 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = sub_220FBFC00();
  OUTLINED_FUNCTION_6();
  v7 = v6;
  v24 = *(v6 + 80);
  v9 = (v5 + v24 + 8) & ~v24;
  v10 = v9 + *(v8 + 64);
  v20 = (v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (((v10 + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D818);
  OUTLINED_FUNCTION_29(v12);
  v14 = *(v13 + 80);
  v15 = (v14 + v11 + 49) & ~v14;
  v23 = *(v16 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v22);

  (*(v7 + 8))(v0 + v9, v21);
  sub_220E5AE5C(*(v0 + v20), *(v0 + v20 + 8), *(v0 + v20 + 16));

  OUTLINED_FUNCTION_75(v0 + v11);
  v17 = sub_220FC0660();
  if (!OUTLINED_FUNCTION_57_1(v0 + v15))
  {
    OUTLINED_FUNCTION_12();
    (*(v18 + 8))(v0 + v15, v17);
  }

  return MEMORY[0x2821FE8E8](v0, v15 + v23, v25 | v24 | v14 | 7);
}

uint64_t sub_220E2550C()
{
  v1 = sub_220FC1670();
  OUTLINED_FUNCTION_6();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 73) & ~v4;
  v7 = *(v6 + 64);

  sub_220E92C8C(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));
  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_220E255F0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_220E2562C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_220E256AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_220E2568C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_220E256E8(char a1)
{
  if (a1)
  {
    return 0xD000000000000018;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_220E257A8()
{
  v1 = OUTLINED_FUNCTION_23();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_220E257DC()
{
  MEMORY[0x223D9DEF0](v0 + 16);
  v1 = OUTLINED_FUNCTION_23();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_220E2580C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_220E25854()
{
  v1 = sub_220FC1070();
  OUTLINED_FUNCTION_6();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = (((((*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v4 | 7);
}

uint64_t sub_220E2594C()
{

  v0 = OUTLINED_FUNCTION_23();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_220E2597C()
{
  MEMORY[0x223D9DEF0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_220E259B8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_220E25AA4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_220E25ADC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_220E25B14()
{
  MEMORY[0x223D9DEF0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_220E25B7C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_220E25C80@<X0>(uint64_t *a1@<X8>)
{
  result = sub_220EAA078(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_220E25EA0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_220E25ED8()
{
  MEMORY[0x223D9DEF0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_220E25F38()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_220E25F90(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_220FC1070();
    v11 = &a1[*(a3 + 20)];

    return __swift_getEnumTagSinglePayload(v11, a2, v10);
  }
}

_BYTE *sub_220E26018(_BYTE *result, char a2, int a3)
{
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    sub_220FC1070();
    OUTLINED_FUNCTION_63_1();

    return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }

  return result;
}

uint64_t sub_220E260B8(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_41_1();
  v5 = type metadata accessor for SnapshotManager.Options(v4);

  return __swift_getEnumTagSinglePayload(v2, a2, v5);
}

uint64_t sub_220E260FC()
{
  v0 = OUTLINED_FUNCTION_41_1();
  type metadata accessor for SnapshotManager.Options(v0);
  OUTLINED_FUNCTION_63_1();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_220E26140(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_220FC02B0();
    OUTLINED_FUNCTION_11_0();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[7];
    }

    else
    {
      type metadata accessor for WeatherMapOverlay();
      OUTLINED_FUNCTION_11_0();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[9];
      }

      else
      {
        v10 = type metadata accessor for SnapshotManager.Options(0);
        v11 = a3[10];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

uint64_t sub_220E26248(uint64_t result, int a2, int a3)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    sub_220FC02B0();
    OUTLINED_FUNCTION_11_0();
    if (*(v4 + 84) != a3)
    {
      type metadata accessor for WeatherMapOverlay();
      OUTLINED_FUNCTION_11_0();
      if (*(v5 + 84) != a3)
      {
        type metadata accessor for SnapshotManager.Options(0);
      }
    }

    OUTLINED_FUNCTION_63_1();

    return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }

  return result;
}

uint64_t sub_220E26348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_57_2();
  type metadata accessor for SnapshotManager.Snapshot(v6);
  OUTLINED_FUNCTION_11_0();
  if (*(v8 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v7);
  }

  else
  {
    v10 = *(v3 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_220E263FC(uint64_t a1, char a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_41_1();
  type metadata accessor for SnapshotManager.Snapshot(v8);
  OUTLINED_FUNCTION_11_0();
  if (*(v9 + 84) == a3)
  {
    OUTLINED_FUNCTION_63_1();

    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }

  else
  {
    *(v4 + *(a4 + 20)) = a2 + 1;
  }
}

uint64_t sub_220E26498()
{
  type metadata accessor for SnapshotManager.Options(0);
  OUTLINED_FUNCTION_56_2();
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v6 = (((*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v7 = v1 + *(v0 + 28);
  sub_220FC1070();
  OUTLINED_FUNCTION_2();
  (*(v8 + 8))(v7 + v4);

  return MEMORY[0x2821FE8E8](v1, v6 + 8, v3 | 7);
}

uint64_t sub_220E26588()
{
  type metadata accessor for SnapshotManager.Options(0);
  OUTLINED_FUNCTION_56_2();
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v6 = *(v5 + 64);

  v7 = v1 + *(v0 + 28);
  sub_220FC1070();
  OUTLINED_FUNCTION_2();
  (*(v8 + 8))(v7 + v4);

  return MEMORY[0x2821FE8E8](v1, v4 + v6, v3 | 7);
}

uint64_t sub_220E26664()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_220E266E8()
{
  sub_220E564A4(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176));

  return MEMORY[0x2821FE8E8](v0, 200, 7);
}

uint64_t get_enum_tag_for_layout_string_11WeatherMaps33OverlayComposedTweeningShaderType_pSg_0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_220E26774()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_220E2680C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E508);
  OUTLINED_FUNCTION_28();
  v2 = *(v1 + 80);
  v4 = *(v3 + 64);
  swift_unknownObjectRelease();

  v5 = OUTLINED_FUNCTION_65_1();
  v6(v5);

  return MEMORY[0x2821FE8E8](v0, ((v2 + 64) & ~v2) + v4, v2 | 7);
}

uint64_t sub_220E268D0()
{
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_220E26904()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E578);
  OUTLINED_FUNCTION_28();
  v2 = *(v1 + 80);
  v4 = *(v3 + 64);
  swift_unknownObjectRelease();

  v5 = OUTLINED_FUNCTION_65_1();
  v6(v5);

  return MEMORY[0x2821FE8E8](v0, ((v2 + 48) & ~v2) + v4, v2 | 7);
}

uint64_t sub_220E269E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E588);
  OUTLINED_FUNCTION_28();
  v2 = *(v1 + 80);
  v4 = (*(v3 + 64) + ((v2 + 40) & ~v2) + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v5 = OUTLINED_FUNCTION_65_1();
  v6(v5);

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_220E26AC0()
{
  v1 = type metadata accessor for SonifierDataState(0);
  OUTLINED_FUNCTION_29(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v6 = *(v5 + 64);
  swift_unknownObjectRelease();
  v7 = (v0 + v4);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D090);
  if (!__swift_getEnumTagSinglePayload(v0 + v4, 3, v8))
  {
    v9 = type metadata accessor for SonifierDataState.OverlayFrames(0);
    v10 = OUTLINED_FUNCTION_24_6();
    if (!__swift_getEnumTagSinglePayload(v10, v11, v9))
    {
      v12 = type metadata accessor for WeatherMapOverlay();
      v13 = OUTLINED_FUNCTION_24_6();
      if (!__swift_getEnumTagSinglePayload(v13, v14, v12))
      {
        if (v7[1] != 1)
        {
        }

        sub_220E564A4(v7[2], v7[3], v7[4], v7[5], v7[6], v7[7], v7[8], v7[9], v7[10], v7[11], v7[12], v7[13], v7[14], v7[15], v7[16], v7[17], v7[18], v7[19], v7[20], v7[21], v7[22]);
        v15 = v7 + *(v12 + 28);
        v16 = sub_220FC02B0();
        OUTLINED_FUNCTION_2();
        v18 = *(v17 + 8);
        v18(v15, v16);
        v19 = type metadata accessor for WeatherMapOverlayTimeConstraints();
        v18(&v15[*(v19 + 20)], v16);
      }
    }
  }

  return MEMORY[0x2821FE8E8](v0, ((v6 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_220E26CB4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E508);
  OUTLINED_FUNCTION_0_17();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_220E26D3C()
{
  swift_unknownObjectRelease();

  if (*(v0 + 64))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_220E26DF4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_220E26E4C()
{
  sub_220EE0A70(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));

  return MEMORY[0x2821FE8E8](v0, 81, 7);
}

uint64_t sub_220E26EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_220FC1070();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 64);
    if (v8 > 3)
    {
      return (v8 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_220E26F5C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_220FC1070();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 64) = -a2;
  }

  return result;
}

uint64_t sub_220E27034()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E820);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_220E27114(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 1);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB80);
    OUTLINED_FUNCTION_11_0();
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = a3[7];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EBC0);
      OUTLINED_FUNCTION_11_0();
      if (*(v15 + 84) == a2)
      {
        v12 = v14;
        v13 = a3[8];
      }

      else
      {
        v12 = type metadata accessor for MapScrubberOverlayViewModel(0);
        v13 = a3[18];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v13, a2, v12);
  }
}

uint64_t sub_220E27234(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 1) = a2 + 1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB80);
    OUTLINED_FUNCTION_11_0();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[7];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EBC0);
      OUTLINED_FUNCTION_11_0();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[8];
      }

      else
      {
        v10 = type metadata accessor for MapScrubberOverlayViewModel(0);
        v11 = a4[18];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_220E2734C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for WeatherMapOverlayServiceDataResponseMetadata.Storage(0);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_220E273E0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = type metadata accessor for WeatherMapOverlayServiceDataResponseMetadata.Storage(0);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_220E27468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_220FC02B0();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_220E27514(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = OUTLINED_FUNCTION_0_45();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = OUTLINED_FUNCTION_1_2();

    return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }

  else
  {
    *(v5 + *(a4 + 20)) = (v4 - 1);
  }

  return result;
}

uint64_t sub_220E275A4()
{
  v2 = OUTLINED_FUNCTION_0_45();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_220E275E0()
{
  OUTLINED_FUNCTION_0_45();
  v0 = OUTLINED_FUNCTION_1_2();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_220E27614()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_220E27654()
{
  v1 = type metadata accessor for WeatherMapAnnotationViewModel();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(*(v1 - 1) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = v0 + v3;
  sub_220EE79F8();

  v6 = v1[9];
  type metadata accessor for WeatherMapAnnotationBackground(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:

      break;
    case 1:
      sub_220FC2560();
      OUTLINED_FUNCTION_2();
      (*(v8 + 8))(v5 + v6);
      break;
    case 0:

      break;
  }

  if (*(v0 + v4))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_220E27880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_220FC02B0();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_220E2792C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_220FC02B0();
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

uint64_t sub_220E279D4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_220E27A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D048);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_220E27AC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D048);
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

uint64_t sub_220E27B78()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_220E27BB0()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_220E27BF0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_220E27CE4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D6D0);
  OUTLINED_FUNCTION_29(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  v7 = sub_220FC1070();
  if (!__swift_getEnumTagSinglePayload(v0 + v4, 1, v7))
  {
    (*(*(v7 - 8) + 8))(v0 + v4, v7);
  }

  v8 = (v6 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v0, v8 + 8, v3 | 7);
}

uint64_t sub_220E27DE8()
{
  v1 = type metadata accessor for SonifierDataState(0);
  OUTLINED_FUNCTION_29(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v6 = *(v5 + 64);
  swift_unknownObjectRelease();

  v7 = (v0 + v4);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D090);
  if (!__swift_getEnumTagSinglePayload(v0 + v4, 3, v8))
  {
    v9 = type metadata accessor for SonifierDataState.OverlayFrames(0);
    if (!__swift_getEnumTagSinglePayload(v0 + v4, 1, v9))
    {
      v10 = type metadata accessor for WeatherMapOverlay();
      if (!__swift_getEnumTagSinglePayload(v0 + v4, 1, v10))
      {
        if (v7[1] != 1)
        {
        }

        sub_220E564A4(v7[2], v7[3], v7[4], v7[5], v7[6], v7[7], v7[8], v7[9], v7[10], v7[11], v7[12], v7[13], v7[14], v7[15], v7[16], v7[17], v7[18], v7[19], v7[20], v7[21], v7[22]);
        v11 = v7 + *(v10 + 28);
        v12 = sub_220FC02B0();
        OUTLINED_FUNCTION_2();
        v14 = *(v13 + 8);
        v14(v11, v12);
        v15 = type metadata accessor for WeatherMapOverlayTimeConstraints();
        v14(&v11[*(v15 + 20)], v12);
      }
    }
  }

  return MEMORY[0x2821FE8E8](v0, v4 + v6, v3 | 7);
}

uint64_t sub_220E27FC4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_220E28000()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_220E28044()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_2_3();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_220E28078()
{
  OUTLINED_FUNCTION_2_3();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_220E280AC()
{
  MEMORY[0x223D9DEF0](v0 + 16);
  OUTLINED_FUNCTION_2_3();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_220E280E0()
{
  if (*(v0 + 24))
  {
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_220E28124()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_220E2816C()
{
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_220E281A0()
{
  v1 = sub_220FC1070();
  OUTLINED_FUNCTION_6();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64) + v5;

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v7 + 1, v4 | 7);
}

uint64_t sub_220E28284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_220FC1070();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_220FC0760();
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_220E28320(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_220FC1070();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_220FC0760();
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_220E283C4()
{

  OUTLINED_FUNCTION_2_3();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_220E283F8()
{
  v2 = type metadata accessor for WeatherMapAnnotationViewModel();
  OUTLINED_FUNCTION_3_28();
  v4 = *(v3 + 80);
  OUTLINED_FUNCTION_15_6();
  OUTLINED_FUNCTION_2_32();
  OUTLINED_FUNCTION_2_32();
  OUTLINED_FUNCTION_2_32();
  v6 = ((v5 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = type metadata accessor for WeatherMapAnnotationPinView.ViewModel(0);
  OUTLINED_FUNCTION_3_28();
  v27 = *(v8 + 80);
  v9 = (v27 + v6 + 8) & ~v27;
  OUTLINED_FUNCTION_4_29();
  v11 = v4 + v10 + 8;

  v12 = v0 + ((v4 + 24) & ~v4);
  sub_220EE79F8();

  v13 = v2[9];
  type metadata accessor for WeatherMapAnnotationBackground(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:

      break;
    case 1:
      sub_220FC2560();
      OUTLINED_FUNCTION_0_17();
      (*(v15 + 8))(v12 + v13);
      break;
    case 0:

      break;
  }

  v16 = v11 & ~v4;

  v17 = (v0 + v9);
  v18 = swift_getEnumCaseMultiPayload();
  switch(v18)
  {
    case 2:

      break;
    case 1:
      sub_220FC2560();
      OUTLINED_FUNCTION_0_17();
      (*(v19 + 8))(v0 + v9);
      break;
    case 0:

      break;
  }

  sub_220EE79F8();

  v20 = v0 + v16;
  sub_220EE79F8();

  v21 = v2[9];
  v22 = swift_getEnumCaseMultiPayload();
  switch(v22)
  {
    case 2:

      break;
    case 1:
      sub_220FC2560();
      OUTLINED_FUNCTION_0_17();
      (*(v23 + 8))(v20 + v21);
      break;
    case 0:

      break;
  }

  OUTLINED_FUNCTION_2_32();
  v25 = ((v24 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v0, v25 + 8, v4 | v27 | 7);
}

uint64_t sub_220E287D0()
{
  v2 = type metadata accessor for WeatherMapAnnotationViewModel();
  OUTLINED_FUNCTION_3_28();
  v37 = *(v3 + 80);
  v5 = (v37 + 32) & ~v37;
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  OUTLINED_FUNCTION_15_6();
  v29 = v7 & 0xFFFFFFFFFFFFFFF8;
  OUTLINED_FUNCTION_4_29();
  v30 = v8;
  OUTLINED_FUNCTION_4_29();
  v31 = v9;
  OUTLINED_FUNCTION_4_29();
  v32 = v10;
  OUTLINED_FUNCTION_4_29();
  v33 = v11;
  OUTLINED_FUNCTION_4_29();
  v34 = v12;
  OUTLINED_FUNCTION_4_29();
  v35 = v13;
  OUTLINED_FUNCTION_4_29();
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = type metadata accessor for WeatherMapAnnotationPinView.ViewModel(0);
  OUTLINED_FUNCTION_3_28();
  v18 = *(v17 + 80);
  v36 = (v18 + v15 + 8) & ~v18;

  v19 = v0 + v5;
  sub_220EE79F8();

  v20 = v2[9];
  type metadata accessor for WeatherMapAnnotationBackground(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:

      break;
    case 1:
      sub_220FC2560();
      OUTLINED_FUNCTION_0_17();
      (*(v22 + 8))(v19 + v20);
      break;
    case 0:

      break;
  }

  v23 = (v0 + v36);
  v24 = swift_getEnumCaseMultiPayload();
  switch(v24)
  {
    case 2:

      break;
    case 1:
      sub_220FC2560();
      OUTLINED_FUNCTION_0_17();
      (*(v25 + 8))(v23);
      break;
    case 0:

      break;
  }

  OUTLINED_FUNCTION_2_32();
  v27 = ((v26 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_220EE79F8();

  return MEMORY[0x2821FE8E8](v0, v27 + 8, v37 | v18 | 7);
}

uint64_t sub_220E28B88()
{
  v2 = type metadata accessor for WeatherMapAnnotationViewModel();
  OUTLINED_FUNCTION_3_28();
  v4 = *(v3 + 80);
  OUTLINED_FUNCTION_15_6();
  v6 = v5 & 0xFFFFFFFFFFFFFFF8;

  v7 = v0 + ((v4 + 40) & ~v4);
  sub_220EE79F8();

  v8 = v2[9];
  type metadata accessor for WeatherMapAnnotationBackground(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:

      break;
    case 1:
      sub_220FC2560();
      OUTLINED_FUNCTION_0_17();
      (*(v10 + 8))(v7 + v8);
      break;
    case 0:

      break;
  }

  if (*(v0 + v6))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v6 + 16, v4 | 7);
}

uint64_t sub_220E28D44()
{
  OUTLINED_FUNCTION_2_3();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_220E28D78()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_220E28DC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_220FC02B0();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_220E28E10(uint64_t a1, uint64_t a2)
{
  v4 = sub_220FC02B0();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_220E28E94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    if ((*(a1 + 176) >> 1) > 0x80000000)
    {
      return -(*(a1 + 176) >> 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v7 = type metadata accessor for WeatherMapOverlayTimeConstraints();
    v8 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }
}

void sub_220E28F1C(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    bzero(a1 + 2, 0xA0uLL);
    a1[23] = 0;
    a1[24] = 0;
    a1[22] = 2 * -a2;
  }

  else
  {
    v7 = type metadata accessor for WeatherMapOverlayTimeConstraints();
    v8 = a1 + *(a4 + 28);

    __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }
}

char *sub_220E28FB0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_53(a3, result);
  }

  return result;
}

char *sub_220E28FD0(char *result, size_t a2, char *a3)
{
  if (a3 != result || &result[a2] <= a3)
  {
    return OUTLINED_FUNCTION_2_33(a3, result, a2);
  }

  return result;
}

uint64_t sub_220E29058()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_220E29090()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0(v0 + 88);

  sub_220E5AE5C(*(v0 + 136), *(v0 + 144), *(v0 + 152));

  return MEMORY[0x2821FE8E8](v0, 176, 7);
}

uint64_t sub_220E29104()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  sub_220E5AE5C(*(v0 + 104), *(v0 + 112), *(v0 + 120));
  if ((*(v0 + 144) - 1) >= 6)
  {
  }

  __swift_destroy_boxed_opaque_existential_0(v0 + 160);

  return MEMORY[0x2821FE8E8](v0, 200, 7);
}

uint64_t sub_220E29174()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0(v0 + 40);
  if ((*(v0 + 120) - 1) >= 6)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_220E291D0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_220E29208()
{
  sub_220E565AC(*(v0 + 48), *(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_220E29240()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  sub_220E565AC(*(v0 + 56), *(v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_220E29280(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D5B0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_220E292D4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D5B0);

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t sub_220E29358()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_220E29400()
{
  sub_220FC27D0();
}

uint64_t sub_220E29554()
{

  OUTLINED_FUNCTION_0_58();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_220E29588()
{
  if (*(v0 + 16))
  {
  }

  OUTLINED_FUNCTION_0_58();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_220E295D4()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_220E2960C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_220E29644()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_220E2967C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_220E296D4()
{
  v1 = *(type metadata accessor for MapLocationAccessibilityModelManager.WeatherRequestRepsonse() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v5 = sub_220FC07C0();
      goto LABEL_5;
    case 1u:
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E630);
      goto LABEL_5;
    case 2u:
    case 3u:
      v5 = sub_220FC05E0();
LABEL_5:
      v6 = v5;
      if (!__swift_getEnumTagSinglePayload(v0 + v3, 1, v5))
      {
        (*(*(v6 - 8) + 8))(v0 + v3, v6);
      }

      break;
    default:
      break;
  }

  return MEMORY[0x2821FE8E8](v0, ((v3 + v4 + 23) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_220E29864(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D090);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v4);
  if (EnumTagSinglePayload >= 4)
  {
    return EnumTagSinglePayload - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_220E298B8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D090);

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t sub_220E29924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB80);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 36));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_220E299E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB80);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = a2;
  }

  return result;
}

uint64_t sub_220E29B48()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_220E29B80()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_220E29BC0(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    if ((*(a1 + 16) >> 1) > 0x80000000)
    {
      return -(*(a1 + 16) >> 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB80);
    OUTLINED_FUNCTION_11_0();
    if (*(v8 + 84) == a2)
    {
      v9 = v7;
      v10 = a3[8];
    }

    else
    {
      type metadata accessor for InteractiveFocus();
      OUTLINED_FUNCTION_11_0();
      if (*(v12 + 84) == a2)
      {
        v9 = v11;
        v10 = a3[11];
      }

      else
      {
        v9 = type metadata accessor for WeatherMapPresentedPicker(0);
        v10 = a3[16];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

void *sub_220E29CD4(void *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = 0;
    result[1] = 0;
    result[2] = 2 * -a2;
    result[3] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB80);
    OUTLINED_FUNCTION_11_0();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[8];
    }

    else
    {
      type metadata accessor for InteractiveFocus();
      OUTLINED_FUNCTION_11_0();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[11];
      }

      else
      {
        v10 = type metadata accessor for WeatherMapPresentedPicker(0);
        v11 = a4[16];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_220E29ED8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_220F3EC8C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_220E29F30()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9F200);
  sub_220FC1BB0();
  sub_220F3ED5C();
  return swift_getWitnessTable();
}

uint64_t sub_220E29FA8()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_220E29FF4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_220E2A078()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_220E2A178()
{
  sub_220FC02B0();
  OUTLINED_FUNCTION_28();
  swift_unknownObjectRelease();

  v0 = OUTLINED_FUNCTION_65_1();
  v1(v0);
  v2 = OUTLINED_FUNCTION_100();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_220E2A224()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E508);
  OUTLINED_FUNCTION_28();
  swift_unknownObjectRelease();

  v0 = OUTLINED_FUNCTION_65_1();
  v1(v0);
  v2 = OUTLINED_FUNCTION_100();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_220E2A2E0()
{
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_220E2A314()
{

  OUTLINED_FUNCTION_0_58();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_220E2A348()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E578);
  OUTLINED_FUNCTION_28();
  swift_unknownObjectRelease();

  v1 = OUTLINED_FUNCTION_65_1();
  v2(v1);
  v3 = OUTLINED_FUNCTION_100();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_220E2A41C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E588);
  OUTLINED_FUNCTION_28();
  v2 = *(v1 + 80);
  v4 = (*(v3 + 64) + ((v2 + 40) & ~v2) + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v5 = OUTLINED_FUNCTION_65_1();
  v6(v5);

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_220E2A4FC()
{
  v1 = type metadata accessor for SonifierDataState(0);
  OUTLINED_FUNCTION_29(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v6 = *(v5 + 64);
  swift_unknownObjectRelease();
  v7 = (v0 + v4);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D090);
  if (!__swift_getEnumTagSinglePayload(v0 + v4, 3, v8))
  {
    v9 = type metadata accessor for SonifierDataState.OverlayFrames(0);
    v10 = OUTLINED_FUNCTION_24_6();
    if (!__swift_getEnumTagSinglePayload(v10, v11, v9))
    {
      v12 = type metadata accessor for WeatherMapOverlay();
      v13 = OUTLINED_FUNCTION_24_6();
      if (!__swift_getEnumTagSinglePayload(v13, v14, v12))
      {
        if (v7[1] != 1)
        {
        }

        sub_220E564A4(v7[2], v7[3], v7[4], v7[5], v7[6], v7[7], v7[8], v7[9], v7[10], v7[11], v7[12], v7[13], v7[14], v7[15], v7[16], v7[17], v7[18], v7[19], v7[20], v7[21], v7[22]);
        v15 = v7 + *(v12 + 28);
        v16 = sub_220FC02B0();
        OUTLINED_FUNCTION_2();
        v18 = *(v17 + 8);
        v18(v15, v16);
        v19 = type metadata accessor for WeatherMapOverlayTimeConstraints();
        v18(&v15[*(v19 + 20)], v16);
      }
    }
  }

  return MEMORY[0x2821FE8E8](v0, ((v6 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_220E2A710()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_220E2A748()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  if (*(v0 + 64) != 1)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_220E2A7A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_15_0();
  sub_220FC1070();
  OUTLINED_FUNCTION_11_0();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    if (v3 == 0x7FFFFFFF)
    {
      return OUTLINED_FUNCTION_14_19(*(v4 + *(a3 + 24)));
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CEE8);
    v9 = v4 + *(a3 + 28);
  }

  return __swift_getEnumTagSinglePayload(v9, v3, v8);
}

void sub_220E2A868(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_15_0();
  sub_220FC1070();
  OUTLINED_FUNCTION_11_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(v5 + *(a4 + 24)) = (v4 - 1);
      return;
    }

    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CEE8);
    v11 = v5 + *(a4 + 28);
  }

  __swift_storeEnumTagSinglePayload(v11, v4, v4, v10);
}

uint64_t sub_220E2A934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_57_2();
  type metadata accessor for SnapshotManager.Options(v6);
  OUTLINED_FUNCTION_11_0();
  if (*(v8 + 84) != a2)
  {
    return OUTLINED_FUNCTION_14_19(*(v3 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v7);
}

void sub_220E2A9CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_15_0();
  type metadata accessor for SnapshotManager.Options(v8);
  OUTLINED_FUNCTION_11_0();
  if (*(v10 + 84) == a3)
  {

    __swift_storeEnumTagSinglePayload(v5, v4, v4, v9);
  }

  else
  {
    *(v5 + *(a4 + 20)) = (v4 - 1);
  }
}

uint64_t sub_220E2AA68()
{
  MEMORY[0x223D9DEF0](v0 + 16);
  OUTLINED_FUNCTION_2_3();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_220E2AA9C()
{
  v1 = type metadata accessor for SnapshotManager.Options(0);
  OUTLINED_FUNCTION_3_28();
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v6 = v4 + *(v5 + 64);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D080);
  OUTLINED_FUNCTION_29(v7);
  v48 = *(v8 + 80);
  v9 = (v6 + v48) & ~v48;
  v11 = *(v10 + 64);
  v43 = type metadata accessor for SnapshotViewController.SnapshotConfiguration(0);
  OUTLINED_FUNCTION_3_28();
  v46 = (v9 + v11 + *(v12 + 80)) & ~*(v12 + 80);
  v47 = *(v12 + 80);
  v45 = *(v13 + 64);
  v42 = sub_220FC0760();
  OUTLINED_FUNCTION_6();
  v15 = v14;
  v41 = *(v14 + 80);
  v44 = *(v16 + 64);
  swift_unknownObjectRelease();

  v17 = v0 + *(v1 + 20);
  v18 = sub_220FC1070();
  OUTLINED_FUNCTION_2();
  v20 = *(v19 + 8);
  v20(v17 + v4, v18);
  v21 = v0 + v9;
  v22 = type metadata accessor for SnapshotManager.Snapshot(0);
  if (!__swift_getEnumTagSinglePayload(v21, 1, v22))
  {
    v38 = v20;
    v39 = v1;
    v40 = v3;

    v23 = v22[7];
    v24 = sub_220FC02B0();
    OUTLINED_FUNCTION_2();
    v26 = *(v25 + 8);
    v26(v21 + v23, v24);
    v27 = (v21 + v22[8]);

    v28 = (v21 + v22[9]);
    if (v28[1] != 1)
    {
    }

    sub_220E564A4(v28[2], v28[3], v28[4], v28[5], v28[6], v28[7], v28[8], v28[9], v28[10], v28[11], v28[12], v28[13], v28[14], v28[15], v28[16], v28[17], v28[18], v28[19], v28[20], v28[21], v28[22]);
    v29 = v28 + *(type metadata accessor for WeatherMapOverlay() + 28);
    v26(v29, v24);
    v30 = type metadata accessor for WeatherMapOverlayTimeConstraints();
    v26(&v29[*(v30 + 20)], v24);
    v20 = v38;
    v38(v21 + v22[10] + *(v39 + 20), v18);

    v31 = (v21 + v22[12]);
    v32 = v31[1];
    v3 = v40;
    if (v32 >> 60 != 15)
    {
      sub_220E565AC(*v31, v32);
    }
  }

  v20(v0 + v46, v18);

  v33 = *(v43 + 28);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0 + v46 + v33, 1, v42);
  v35 = *(v15 + 8);
  if (!EnumTagSinglePayload)
  {
    v35(v0 + v46 + v33, v42);
  }

  v36 = (v46 + v45 + v41) & ~v41;
  v35(v0 + v36, v42);

  return MEMORY[0x2821FE8E8](v0, v36 + v44, v3 | v48 | v47 | v41 | 7);
}

uint64_t sub_220E2AF18()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_220E2AF50()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 160, 7);
}

uint64_t sub_220E2AFC0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_220E2AFF8()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_15_14();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_220E2B03C()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_15_14();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_220E2B13C()
{
  swift_unknownObjectRelease();
  v0 = OUTLINED_FUNCTION_23();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_220E2B16C()
{
  v1 = type metadata accessor for WeatherMapOverlayTimeConstraints();
  OUTLINED_FUNCTION_6();
  v3 = *(v2 + 80);
  v5 = *(v4 + 64);

  sub_220E564A4(v0[8], v0[9], v0[10], v0[11], v0[12], v0[13], v0[14], v0[15], v0[16], v0[17], v0[18], v0[19], v0[20], v0[21], v0[22], v0[23], v0[24], v0[25], v0[26], v0[27], v0[28]);
  if (v0[32] != 1)
  {
  }

  v6 = (v3 + 264) & ~v3;
  v7 = (v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (((v7 + 39) & 0xFFFFFFFFFFFFFFF8) + 18) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = v0 + v6;
  v11 = sub_220FC02B0();
  OUTLINED_FUNCTION_2();
  v13 = *(v12 + 8);
  v13(v10, v11);
  v13(&v10[*(v1 + 20)], v11);
  sub_220E5AE5C(*(v0 + v9), *(v0 + v9 + 8), *(v0 + v9 + 16));

  return MEMORY[0x2821FE8E8](v0, v8 + 16, v3 | 7);
}

uint64_t sub_220E2B314()
{

  swift_unknownObjectRelease();
  if (*(v0 + 48))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

uint64_t sub_220E2B3AC()
{
  v2 = sub_220FC23B0();
  OUTLINED_FUNCTION_6();
  v4 = v3;
  v5 = (*(v3 + 80) + 72) & ~*(v3 + 80);
  OUTLINED_FUNCTION_34_8();

  swift_unknownObjectRelease();
  if (*(v0 + 56))
  {
  }

  (*(v4 + 8))(v0 + v5, v2);
  swift_unknownObjectRelease();

  if (*(v0 + v1))
  {
  }

  v6 = OUTLINED_FUNCTION_19_14();

  return MEMORY[0x2821FE8E8](v6, v7, v8);
}

uint64_t sub_220E2B4B4()
{

  v1 = OUTLINED_FUNCTION_23();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_220E2B4EC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_220E2B56C()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_220E2B5A4()
{
  OUTLINED_FUNCTION_29_2();
  v2 = sub_220FC23B0();
  OUTLINED_FUNCTION_6();
  v4 = v3;
  v5 = (*(v3 + 80) + 72) & ~*(v3 + 80);
  OUTLINED_FUNCTION_34_8();
  swift_unknownObjectRelease();

  if (*(v0 + 56))
  {
  }

  (*(v4 + 8))(v0 + v5, v2);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  if (*(v0 + v1))
  {
  }

  OUTLINED_FUNCTION_19_14();
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2821FE8E8](v6, v7, v8);
}

uint64_t sub_220E2B6B8()
{
  OUTLINED_FUNCTION_29_2();
  v1 = sub_220FC23B0();
  OUTLINED_FUNCTION_6();
  v3 = v2;
  v5 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v6 = (((((((v5 + *(v4 + 64) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v5, v1);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  if (*(v0 + v6))
  {
  }

  OUTLINED_FUNCTION_19_14();
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2821FE8E8](v7, v8, v9);
}

uint64_t sub_220E2B7C8()
{

  v0 = OUTLINED_FUNCTION_23();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_220E2B7F8()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  if (*(v0 + 64))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_220E2B858()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_220E2B8B8()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_2_3();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_220E2B8EC()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_220E2B92C()
{
  MEMORY[0x223D9DEF0](v0 + 16);
  OUTLINED_FUNCTION_2_3();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_220E2B960()
{

  return MEMORY[0x2821FE8E8](v0, 26, 7);
}

uint64_t sub_220E2B998()
{

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_220E2B9D0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_220E2BA38()
{
  OUTLINED_FUNCTION_8_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D6D0);

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_220E2BA88()
{
  OUTLINED_FUNCTION_8_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D6D0);
  v0 = OUTLINED_FUNCTION_1_2();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_220E2BAD0()
{
  type metadata accessor for WeatherMapPerformanceTestConditionsModifier(255);
  sub_220FC1BB0();
  sub_220F73DA4(&qword_27CF9F448, type metadata accessor for WeatherMapPerformanceTestConditionsModifier);
  return swift_getWitnessTable();
}

uint64_t sub_220E2BB6C()
{
  OUTLINED_FUNCTION_8_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F030);

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_220E2BBBC()
{
  OUTLINED_FUNCTION_8_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F030);
  v0 = OUTLINED_FUNCTION_1_2();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_220E2BC10()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_220E2BCB0()
{
  if (*(v0 + 56) != 1)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_220E2BCF0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_220E2BD28()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_220E2BDC0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_220E2BDF8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_220E2BE30()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_220E2BE68()
{
  MEMORY[0x223D9DEF0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_220E2BF00()
{
  v1 = sub_220FC1070();
  OUTLINED_FUNCTION_6();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_220E2BFB8()
{
  sub_220FC1070();
  OUTLINED_FUNCTION_2();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (((*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_220E2C04C()
{
  sub_220FC1070();
  OUTLINED_FUNCTION_2();
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_220E2C160()
{
  OUTLINED_FUNCTION_34_9();
  result = EnvironmentValues.buttons.getter();
  *v0 = result;
  return result;
}

uint64_t sub_220E2C18C()
{
  OUTLINED_FUNCTION_34_9();
  result = sub_220FC1C70();
  *v0 = v2;
  return result;
}

uint64_t sub_220E2C20C()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_220E2C244()
{
  OUTLINED_FUNCTION_29_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F830);
  OUTLINED_FUNCTION_6();
  v4 = v3;
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = *(v6 + 64);
  type metadata accessor for WeatherMap(0);
  OUTLINED_FUNCTION_11();
  v9 = (v5 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  (*(v4 + 8))(v1 + v5, v2);
  v10 = v1 + v9;

  sub_220F8FFBC(*(v10 + 184), *(v10 + 192));

  sub_220E2C4C4(*(v10 + 216), *(v10 + 224));
  if (*(v1 + v9 + 272))
  {
    if (*(v10 + 256))
    {
      __swift_destroy_boxed_opaque_existential_0(v10 + 232);
    }
  }

  else
  {
  }

  v11 = v0[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F818);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for WeatherMapPerformanceTestConditions(0);
    if (!__swift_getEnumTagSinglePayload(v10 + v11, 1, v12))
    {
      v13 = sub_220FC1070();
      if (!__swift_getEnumTagSinglePayload(v10 + v11, 1, v13))
      {
        OUTLINED_FUNCTION_12();
        (*(v14 + 8))(v10 + v11, v13);
      }
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_42_6(v10 + v0[20]);

  if (*(v10 + v0[22]))
  {
  }

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2821FE8E8](v15, v16, v17);
}

uint64_t sub_220E2C4C4(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_220E2C4D0()
{
  type metadata accessor for WeatherMap(0);
  OUTLINED_FUNCTION_11();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v19 = *(v5 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F830);
  OUTLINED_FUNCTION_6();
  v8 = v7;
  v9 = *(v7 + 80);
  v18 = *(v10 + 64);
  v11 = v1 + v4;

  sub_220F8FFBC(*(v11 + 184), *(v11 + 192));

  sub_220E2C4C4(*(v11 + 216), *(v11 + 224));
  if (*(v1 + v4 + 272))
  {
    if (*(v11 + 256))
    {
      __swift_destroy_boxed_opaque_existential_0(v11 + 232);
    }
  }

  else
  {
  }

  v12 = v0[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F818);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for WeatherMapPerformanceTestConditions(0);
    if (!__swift_getEnumTagSinglePayload(v11 + v12, 1, v13))
    {
      v14 = sub_220FC1070();
      if (!__swift_getEnumTagSinglePayload(v11 + v12, 1, v14))
      {
        OUTLINED_FUNCTION_12();
        (*(v15 + 8))(v11 + v12, v14);
      }
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_42_6(v11 + v0[20]);

  if (*(v11 + v0[22]))
  {
  }

  v16 = (v4 + v19 + v9) & ~v9;
  (*(v8 + 8))(v1 + v16, v6);

  return MEMORY[0x2821FE8E8](v1, v16 + v18, v3 | v9 | 7);
}

uint64_t sub_220E2C778()
{
  OUTLINED_FUNCTION_34_9();
  result = WeatherMap.selectedLocationId.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_220E2C7AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    if ((*(a1 + 16) >> 1) > 0x80000000)
    {
      return -(*(a1 + 16) >> 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F858);
    v8 = a1 + *(a3 + 76);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }
}

void *sub_220E2C840(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = 0;
    result[1] = 0;
    result[2] = 2 * -a2;
    result[3] = 0;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F858);
    v8 = v5 + *(a4 + 76);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_220E2C8E0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_220E2C944()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_220E2C98C()
{
  MEMORY[0x223D9DEF0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_220E2C9C4()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_220E2C9FC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t _s11WeatherMaps27WeatherMapSessionStatisticsV15RequestCountersVwet_0(_DWORD *a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return OUTLINED_FUNCTION_2_1(a1);
  }

  else
  {
    return OUTLINED_FUNCTION_4_1();
  }
}

uint64_t _s11WeatherMaps27WeatherMapSessionStatisticsV16ResponseCountersVwet_0(_DWORD *a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return OUTLINED_FUNCTION_2_1(a1);
  }

  else
  {
    return OUTLINED_FUNCTION_4_1();
  }
}

uint64_t sub_220E2CAB8()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_220E2CB50(unint64_t *a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_14_19(*a1);
  }

  type metadata accessor for WeatherMapAnnotationBackground(0);
  v5 = OUTLINED_FUNCTION_2_52(*(a3 + 36));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_220E2CBC8()
{
  OUTLINED_FUNCTION_0_88();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v2;
    type metadata accessor for WeatherMapAnnotationBackground(0);
    v5 = OUTLINED_FUNCTION_2_52(*(v4 + 36));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_220E2CC40()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_220E2CCC8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_220E2CD00()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_220E2CD38()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_220E2CDDC(uint64_t a1)
{
  if ((*(a1 + 160) >> 1) > 0x80000000)
  {
    return -(*(a1 + 160) >> 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_220E2CDF4()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_220E2CE3C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_220E2CE74()
{

  if (*(v0 + 32))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_220E2CEBC()
{

  sub_220E5AE5C(*(v0 + 56), *(v0 + 64), *(v0 + 72));

  return MEMORY[0x2821FE8E8](v0, 73, 7);
}

uint64_t sub_220E2CF00()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D6D0);
  OUTLINED_FUNCTION_29(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  v7 = sub_220FC1070();
  if (!__swift_getEnumTagSinglePayload(v0 + v4, 1, v7))
  {
    (*(*(v7 - 8) + 8))(v0 + v4, v7);
  }

  return MEMORY[0x2821FE8E8](v0, ((v6 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_220E2D004()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_220E2D03C()
{
  if (*(v0 + 24) != 1)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_220E2D07C()
{
  sub_220E5AE5C(*(v0 + 48), *(v0 + 56), *(v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_220E2D0C0()
{

  if (*(v0 + 56) != 1)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_220E2D110()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_220E2D148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FC30);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 28);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FC38);
      v10 = *(a3 + 36);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_220E2D22C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FC30);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 28);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FC38);
      v10 = *(a4 + 36);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_220E2D31C@<X0>(void *a1@<X8>)
{
  result = sub_220FC1C80();
  *a1 = v3;
  return result;
}

uint64_t sub_220E2D374()
{
  v1 = (type metadata accessor for LocationPicker() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v17 = *(*v1 + 64);
  v18 = type metadata accessor for LocationPickerViewModel.Row();
  OUTLINED_FUNCTION_6();
  v5 = *(v4 + 80);
  v19 = *(v6 + 64);

  v7 = v1[9];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9FC30);
  OUTLINED_FUNCTION_2();
  v10 = *(v9 + 8);
  v10(v0 + v3 + v7, v8);
  v10(v0 + v3 + v1[10], v8);
  v11 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D6F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_220FC1BA0();
    OUTLINED_FUNCTION_2();
    (*(v12 + 8))(v0 + v3 + v11);
  }

  else
  {
  }

  v13 = (v3 + v17 + v5) & ~v5;
  sub_220FC1070();
  OUTLINED_FUNCTION_2();
  (*(v14 + 8))(v0 + v13);
  v15 = v0 + v13 + *(v18 + 20);
  sub_220EE0A70(*v15, *(v15 + 8), *(v15 + 16), *(v15 + 24), *(v15 + 32), *(v15 + 40), *(v15 + 48), *(v15 + 56), *(v15 + 64));

  return MEMORY[0x2821FE8E8](v0, v13 + v19, v2 | v5 | 7);
}

uint64_t sub_220E2D5DC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_220FC1C50();
  *a1 = result;
  return result;
}

uint64_t sub_220E2D60C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_220FC1CA0();
  *a1 = result;
  return result;
}

uint64_t sub_220E2D664(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFA0098);
  OUTLINED_FUNCTION_2();
  v3 = OUTLINED_FUNCTION_9();
  v4(v3);
  return a2;
}

uint64_t sub_220E2D6F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MapScrubberOverlayBar.ViewModel.Active(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_220E2D740(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for MapScrubberOverlayBar.ViewModel.Active(0);

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t sub_220E2D79C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_220FC02B0();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 28);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CD18);
      v10 = *(a3 + 32);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

void *sub_220E2D874(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_220FC02B0();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 28);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CD18);
      v10 = *(a4 + 32);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_220E2D954@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.preferredMapSize.getter();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  return result;
}

uint64_t sub_220E2D9CC()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

id sub_220E2DA20@<X0>(void *a1@<X8>)
{
  result = sub_220FB6C34(0);
  *a1 = result;
  return result;
}

id sub_220E2DA50@<X0>(void *a1@<X8>)
{
  result = sub_220FB6C34(1);
  *a1 = result;
  return result;
}

uint64_t storeEnumTagSinglePayload for TilePath(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

char *sub_220E2DCA8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_53(a3, result);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for WeatherMapCameraFocus(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t storeEnumTagSinglePayload for Point(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t sub_220E2DD2C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

__n128 __swift_memcpy16_16(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy48_16(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_220E2DF68(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_220E2DF88(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 48) = v3;
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for TilePath(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_220E2E198()
{
  v1 = OUTLINED_FUNCTION_1_5();
  result = nullsub_1(v1);
  *v0 = result;
  return result;
}

uint64_t sub_220E2E22C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_220E2E280@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_220E2E2B4(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_220E2E2D0@<X0>(_DWORD *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_220E2E314()
{
  OUTLINED_FUNCTION_1_5();
  result = sub_220F22890();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_220E2E348()
{
  sub_220E2E22C(&qword_27CF9C918, type metadata accessor for TextStyle);
  sub_220E2E22C(&unk_27CF9C920, type metadata accessor for TextStyle);

  return sub_220FC3790();
}

double sub_220E2E404@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_220E2E410()
{
  sub_220E2E22C(&qword_27CF9C8B0, type metadata accessor for Weight);
  sub_220E2E22C(&qword_27CF9C8B8, type metadata accessor for Weight);
  sub_220E2F590();
  return sub_220FC3790();
}

uint64_t sub_220E2E4D8()
{
  sub_220E2E22C(&qword_2812C5BC8, type metadata accessor for AttributeName);
  sub_220E2E22C(&qword_27CF9C8E0, type metadata accessor for AttributeName);

  return sub_220FC3790();
}

uint64_t sub_220E2E594()
{
  sub_220E2E22C(&qword_2812C5C08, type metadata accessor for TraitKey);
  sub_220E2E22C(&unk_27CF9C8D0, type metadata accessor for TraitKey);

  return sub_220FC3790();
}

uint64_t sub_220E2E650()
{
  sub_220E2E22C(&qword_27CF9C7C8, type metadata accessor for CALayerCornerCurve);
  sub_220E2E22C(&qword_27CF9C7D0, type metadata accessor for CALayerCornerCurve);

  return sub_220FC3790();
}

uint64_t sub_220E2E79C()
{
  sub_220E2E22C(&qword_2812C5C40, type metadata accessor for Key);
  sub_220E2E22C(&qword_27CF9C8A8, type metadata accessor for Key);

  return sub_220FC3790();
}

uint64_t sub_220E2E858()
{
  sub_220E2E22C(&qword_27CF9C890, type metadata accessor for MKPointOfInterestCategory);
  sub_220E2E22C(&unk_27CF9C898, type metadata accessor for MKPointOfInterestCategory);

  return sub_220FC3790();
}

uint64_t sub_220E2E914@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_220FC26C0();

  *a1 = v2;
  return result;
}

uint64_t sub_220E2E95C()
{
  sub_220E2E22C(&qword_27CF9C8E8, type metadata accessor for Option);
  sub_220E2E22C(&qword_27CF9C8F0, type metadata accessor for Option);

  return sub_220FC3790();
}

uint64_t sub_220E2EA84()
{
  sub_220FC2700();
  sub_220FC27D0();
}

uint64_t sub_220E2EAD8(double a1)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  return MEMORY[0x223D9CFD0](*&a1);
}

uint64_t sub_220E2EB0C()
{
  sub_220FC2700();
  sub_220FC3A40();
  sub_220FC27D0();
  v0 = sub_220FC3A90();

  return v0;
}

uint64_t sub_220E2EB94()
{
  v0 = sub_220FC2700();
  v2 = v1;
  if (v0 == sub_220FC2700() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_220FC3940();
  }

  return v5 & 1;
}

uint64_t sub_220E2EC24()
{
  v0 = sub_220FC2700();
  v1 = MEMORY[0x223D9BDE0](v0);

  return v1;
}

uint64_t sub_220E2EC64(uint64_t a1, id *a2)
{
  result = sub_220FC26E0();
  *a2 = 0;
  return result;
}

uint64_t sub_220E2ECDC(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x223D9A630](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_220E2ED30(uint64_t a1, id *a2)
{
  v3 = sub_220FC26F0();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_220E2EDB0(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x223D9A640](a1, &v7);
  v4 = v7;
  v5 = v8;
  if (v8)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return v3 & 1;
}

uint64_t sub_220E2EE08()
{
  sub_220FC2700();
  v0 = sub_220FC26C0();

  return v0;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for WeatherMapServiceRequestOptions(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for WeatherMapServiceRequestOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WeatherMapOverlayColorMapPixel(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for WeatherMapOverlayColorMapPixel(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

unint64_t sub_220E2F590()
{
  result = qword_27CF9C8C0;
  if (!qword_27CF9C8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9C8C0);
  }

  return result;
}

uint64_t sub_220E2F70C(unsigned __int8 a1)
{
  sub_220FC3A40();
  MEMORY[0x223D9CFA0](a1);
  return sub_220FC3A90();
}

uint64_t sub_220E2F75C()
{
  v1 = *v0;
  sub_220FC3A40();
  MEMORY[0x223D9CFA0](v1);
  return sub_220FC3A90();
}

void sub_220E2F7A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (__OFSUB__(a4, a1))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  exp2((a4 - a1));
  OUTLINED_FUNCTION_0();
  if (v11 || v6)
  {
    goto LABEL_18;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_0();
  if (!v9)
  {
    goto LABEL_20;
  }

  v10 = v8;
  if (!v8)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  v11 = a2 == 0x8000000000000000 && v10 == -1;
  if (v11)
  {
    goto LABEL_22;
  }

  if (a3 == 0x8000000000000000 && v10 == -1)
  {
    goto LABEL_23;
  }
}

void sub_220E2F868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (__OFSUB__(a3, a6))
  {
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  exp2((a3 - a6));
  OUTLINED_FUNCTION_0();
  if (v13 || v8)
  {
    goto LABEL_28;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_0();
  if (!v11)
  {
    goto LABEL_30;
  }

  v12 = v10;
  if (!v10)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    return;
  }

  v13 = a1 == 0x8000000000000000 && v12 == -1;
  if (v13)
  {
    goto LABEL_34;
  }

  if ((a1 % v12 - 0x40000000000000) >> 55 != 511)
  {
    goto LABEL_32;
  }

  if (v12 == -1 && (a1 % v12) << 9 == 0x8000000000000000)
  {
    goto LABEL_35;
  }

  if (a2 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_36;
  }

  if ((a2 % v12 - 0x40000000000000) >> 55 != 511)
  {
    goto LABEL_33;
  }

  if (v12 == -1 && (a2 % v12) << 9 == 0x8000000000000000)
  {
    goto LABEL_37;
  }
}

uint64_t _s8QuadrantOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s8QuadrantOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        break;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_220E2FB34()
{
  result = qword_27CF9CA50;
  if (!qword_27CF9CA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9CA50);
  }

  return result;
}

void *sub_220E2FB88(uint64_t a1)
{
  v3 = sub_220FC1160();
  MEMORY[0x28223BE20](v3 - 8, v4);
  sub_220FC1150();
  sub_220FC1180();
  swift_allocObject();
  v1[4] = sub_220FC1170();
  type metadata accessor for VectorField();
  sub_220E304BC();
  v5 = sub_220FC2600();
  v1[2] = a1;
  v1[3] = v5;
  return v1;
}

uint64_t sub_220E2FC60()
{
  sub_220FC1130();
  swift_beginAccess();

  swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 24);
  sub_220E9747C();
  *(v0 + 24) = v2;
  swift_endAccess();
  return sub_220FC1140();
}

uint64_t sub_220E2FD2C(uint64_t a1)
{
  sub_220FC1130();
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return sub_220FC1140();
    }

    v5 = *(a1 + 56 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      do
      {
LABEL_8:
        v10 = *(a1 + 48) + ((v8 << 11) | (32 * __clz(__rbit64(v5))));
        v12 = *v10;
        v11 = *(v10 + 8);
        v13 = *(v10 + 16);
        v14 = *(v10 + 24);
        swift_beginAccess();
        sub_220F19244(v12, v11, v13, v14);
        if (v15)
        {
          swift_isUniquelyReferenced_nonNull_native();
          v16 = *(v1 + 24);
          *(v1 + 24) = 0x8000000000000000;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CA70);
          sub_220FC3710();

          type metadata accessor for VectorField();
          sub_220E304BC();
          sub_220FC3730();
          *(v1 + 24) = v16;
        }

        v5 &= v5 - 1;
        result = swift_endAccess();
      }

      while (v5);
    }
  }

  __break(1u);
  return result;
}

BOOL sub_220E2FEF8()
{
  sub_220FC1130();
  swift_beginAccess();
  v1 = *(*(v0 + 24) + 16) == 0;
  sub_220FC1140();
  return v1;
}

void sub_220E2FF54(uint64_t a1)
{
  v2 = v1;
  sub_220FB9C10(a1, __src);
  if (__src[116])
  {
    return;
  }

  memcpy(__dst, __src, 0x74uLL);
  sub_220FC1130();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CA58);
  sub_220E304BC();
  v3 = sub_220FC2600();
  v43.origin.x = OUTLINED_FUNCTION_0_0();
  MinX = CGRectGetMinX(v43);
  v5 = MinX;
  if ((*&MinX & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (MinX <= -9.22337204e18)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (MinX >= 9.22337204e18)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v44.origin.x = OUTLINED_FUNCTION_0_0();
  MaxX = CGRectGetMaxX(v44);
  if ((*&MaxX & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (MaxX <= -9.22337204e18)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (MaxX < 9.22337204e18)
  {
    v7 = v5;
    v8 = MaxX;
    if (MaxX < v5)
    {
      goto LABEL_63;
    }

    if (v7 == v8)
    {
LABEL_43:
      sub_220FC1140();
      type metadata accessor for FullVectorField();
      swift_allocObject();
      sub_220EED084(__dst, v3);
      return;
    }

    v36 = MaxX;
    v38 = v2;
    while (v7 < v8)
    {
      v45.origin.x = OUTLINED_FUNCTION_0_0();
      MinY = CGRectGetMinY(v45);
      v10 = MinY;
      if ((*&MinY & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_50;
      }

      if (MinY <= -9.22337204e18)
      {
        goto LABEL_51;
      }

      if (MinY >= 9.22337204e18)
      {
        goto LABEL_52;
      }

      v46.origin.x = OUTLINED_FUNCTION_0_0();
      MaxY = CGRectGetMaxY(v46);
      if ((*&MaxY & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_53;
      }

      if (MaxY <= -9.22337204e18)
      {
        goto LABEL_54;
      }

      if (MaxY >= 9.22337204e18)
      {
        goto LABEL_55;
      }

      v37 = v7;
      v12 = v10;
      v13 = MaxY;
      if (MaxY < v10)
      {
        goto LABEL_56;
      }

      if (v12 != v13)
      {
        v14 = __dst[12];
        v15 = *(a1 + 64);
        v16 = __OFSUB__(v7, __dst[13]) && v7 >= __dst[13];
        if (v37 < __dst[13])
        {
          v17 = v37;
        }

        else
        {
          v17 = v37 - __dst[13];
        }

        v40 = v16;
        v39 = MaxY;
        while (v12 < v13)
        {
          if (v16)
          {
            goto LABEL_46;
          }

          swift_beginAccess();
          v18 = *(v2 + 24);
          if (*(v18 + 16) && (v19 = sub_220F19244(v17, v12, v14, v15), (v20 & 1) != 0))
          {
            v21 = *(*(v18 + 56) + 8 * v19);
            swift_endAccess();
            v22 = *(v21 + 72);

            swift_isUniquelyReferenced_nonNull_native();
            v23 = v17;
            v24 = v14;
            v25 = sub_220F19244(v17, v12, v14, v15);
            if (__OFADD__(v3[2], (v26 & 1) == 0))
            {
              goto LABEL_47;
            }

            v27 = v25;
            v28 = v26;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CA68);
            if (sub_220FC3710())
            {
              v29 = sub_220F19244(v23, v12, v24, v15);
              if ((v28 & 1) != (v30 & 1))
              {
                goto LABEL_64;
              }

              v27 = v29;
            }

            if (v28)
            {
              *(v3[7] + 8 * v27) = v22;

              v14 = v24;
            }

            else
            {
              v3[(v27 >> 6) + 8] |= 1 << v27;
              v31 = v3[6] + 32 * v27;
              *v31 = v23;
              *(v31 + 8) = v12;
              v14 = v24;
              *(v31 + 16) = v24;
              *(v31 + 24) = v15;
              *(v3[7] + 8 * v27) = v22;

              v32 = v3[2];
              v33 = __OFADD__(v32, 1);
              v34 = v32 + 1;
              if (v33)
              {
                goto LABEL_48;
              }

              v3[2] = v34;
            }

            v2 = v38;
            v13 = v39;
            v16 = v40;
            v17 = v23;
          }

          else
          {
            swift_endAccess();
          }

          if (v13 == ++v12)
          {
            goto LABEL_42;
          }
        }

        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
        break;
      }

LABEL_42:
      v8 = v36;
      v7 = v37 + 1;
      if (v37 + 1 == v36)
      {
        goto LABEL_43;
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
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
    goto LABEL_57;
  }

LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  sub_220FC3990();
  __break(1u);
}

uint64_t sub_220E303C4()
{
}

uint64_t sub_220E303F4()
{

  return v0;
}

uint64_t sub_220E3041C()
{
  sub_220E303F4();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_220E304BC()
{
  result = qword_27CF9CA60;
  if (!qword_27CF9CA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9CA60);
  }

  return result;
}

uint64_t sub_220E30510()
{
  v1 = v0;
  if (sub_220E3070C())
  {
    v2 = sub_220FBB0A8();
    v3 = *(v2 + 16);
    if (v3)
    {
      v16 = MEMORY[0x277D84F90];
      sub_220F0B120(0, v3, 0);
      sub_220E31740();
      v4 = v16;
      v5 = (v2 + 64);
      do
      {
        v6 = *v5;

        swift_bridgeObjectRetain_n();
        v7 = sub_220FC3220();
        v8 = sub_220FC3210();

        v10 = *(v16 + 16);
        v9 = *(v16 + 24);
        if (v10 >= v9 >> 1)
        {
          v12 = OUTLINED_FUNCTION_0_1(v9);
          sub_220F0B120(v12, v10 + 1, 1);
        }

        *(v16 + 16) = v10 + 1;
        v11 = v16 + 16 * v10;
        *(v11 + 32) = v6;
        *(v11 + 40) = v8;
        v5 += 7;
        --v3;
      }

      while (v3);
    }

    else
    {

      v4 = MEMORY[0x277D84F90];
    }

    v13 = sub_220E30C24(v4, *(v1 + 80), *(v1 + 88));
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CA80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_220FC8E10;
    *(v13 + 32) = 0;
    v14 = objc_opt_self();
    *(v13 + 40) = [v14 clearColor];
    *(v13 + 48) = 0x3FF0000000000000;
    *(v13 + 56) = [v14 clearColor];
  }

  return v13;
}

uint64_t sub_220E3070C()
{
  sub_220FBB0E0(v5);
  v1 = sub_220FBB128(v0, v5);
  sub_220E31784(v5);
  if (v1)
  {
    v2 = 0;
  }

  else
  {
    if (qword_2812C78D8 != -1)
    {
      swift_once();
    }

    v6[0] = 0x616C696176616E75;
    v6[1] = 0xEB00000000656C62;
    v6[2] = 0;
    v6[3] = 0;
    v7 = 2;
    v8 = qword_2812CE540;
    v9 = *algn_2812CE548;
    v10 = MEMORY[0x277D84F90];
    v11 = 0;
    v12 = 0;
    v13 = xmmword_220FC8E20;

    v3 = sub_220FBB128(v0, v6);
    sub_220E31784(v6);
    v2 = v3 ^ 1;
  }

  return v2 & 1;
}

uint64_t sub_220E30808(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32 = a8;
  v41 = a1;
  v42 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v43 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v45 = *(AssociatedTypeWitness - 8);
  v13 = MEMORY[0x28223BE20](AssociatedTypeWitness, v12);
  v15 = &v30 - v14;
  MEMORY[0x28223BE20](v13, v16);
  v39 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_getAssociatedTypeWitness();
  v33 = *(v18 - 8);
  v34 = v18;
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v30 - v20;
  v22 = sub_220FC2CD0();
  if (!v22)
  {
    return sub_220FC29D0();
  }

  v44 = v22;
  v48 = sub_220FC36B0();
  v35 = sub_220FC36C0();
  sub_220FC3660();
  result = sub_220FC2CC0();
  if ((v44 & 0x8000000000000000) == 0)
  {
    v30 = v10;
    v31 = a5;
    v24 = 0;
    v36 = (v45 + 16);
    v37 = (v45 + 8);
    v38 = v8;
    while (!__OFADD__(v24, 1))
    {
      v45 = v24 + 1;
      v25 = sub_220FC2D00();
      v26 = v15;
      v27 = v15;
      v28 = AssociatedTypeWitness;
      (*v36)(v26);
      v25(v47, 0);
      v29 = v46;
      v41(v27, v43);
      if (v29)
      {
        (*v37)(v27, v28);
        (*(v33 + 8))(v21, v34);

        return (*(v30 + 32))(v32, v43, v31);
      }

      v46 = 0;
      (*v37)(v27, v28);
      sub_220FC36A0();
      result = sub_220FC2CF0();
      ++v24;
      v15 = v27;
      if (v45 == v44)
      {
        (*(v33 + 8))(v21, v34);
        return v48;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_220E30C24(uint64_t a1, double a2, double a3)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v16 = MEMORY[0x277D84F90];
    sub_220F0B120(0, v3, 0);
    v4 = v16;
    v8 = (a1 + 40);
    do
    {
      v9 = *(v8 - 1);
      if (v9 < a2)
      {
        v9 = a2;
      }

      if (v9 >= a3)
      {
        v10 = a3;
      }

      else
      {
        v10 = v9;
      }

      v11 = *(v16 + 16);
      v12 = *(v16 + 24);
      v13 = *v8;
      if (v11 >= v12 >> 1)
      {
        sub_220F0B120((v12 > 1), v11 + 1, 1);
      }

      *(v16 + 16) = v11 + 1;
      v14 = v16 + 16 * v11;
      *(v14 + 32) = (v10 - a2) / (a3 - a2);
      *(v14 + 40) = v13;
      v8 += 2;
      --v3;
    }

    while (v3);
  }

  return v4;
}

uint64_t Collection<>.normalize(range:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v11 = a3;
  v12 = a4;
  v9[2] = sub_220E316EC;
  v9[3] = &v10;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CA78);
  return sub_220E30808(sub_220E316F4, v9, a1, v6, MEMORY[0x277D84A98], a2, MEMORY[0x277D84AC0], v7);
}

void sub_220E30DD0(double a1, double a2)
{
  if (sub_220E3070C())
  {
    v5 = sub_220FBB0A8();
    v6 = *(v2 + 80);
    v7 = *(v2 + 88);
    if (v6 > a1)
    {
      v8 = *(v2 + 80);
    }

    else
    {
      v8 = a1;
    }

    if (v8 >= v7)
    {
      v9 = *(v2 + 88);
    }

    else
    {
      v9 = v8;
    }

    if (v6 <= a2)
    {
      v6 = a2;
    }

    if (v6 >= v7)
    {
      v10 = *(v2 + 88);
    }

    else
    {
      v10 = v6;
    }

    v11 = sub_220E311F4();
    v48 = sub_220E311F4();
    v12 = 0;
    v13 = *(v5 + 16);
    v14 = MEMORY[0x277D84F90];
    v15 = MEMORY[0x277D84F90];
    v49 = v11;
LABEL_14:
    v16 = 56 * v12;
    while (v13 != v12)
    {
      if (v12 >= *(v5 + 16))
      {
        __break(1u);
        goto LABEL_38;
      }

      ++v12;
      v17 = v16 + 56;
      v18 = *(v5 + v16 + 64);
      v19 = v18 > a1 && v18 < a2;
      v16 += 56;
      if (v19)
      {
        v21 = *(v5 + v17 - 24);
        v20 = *(v5 + v17 - 16);
        v22 = *(v5 + v17);
        v46 = *(v5 + v17 - 8);
        v23 = *(v5 + v17 + 16);
        v24 = *(v5 + v17 + 24);

        v47 = v24;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_220F0B140(0, v15[2] + 1, 1);
        }

        v26 = v15[2];
        v25 = v15[3];
        if (v26 >= v25 >> 1)
        {
          v28 = OUTLINED_FUNCTION_0_1(v25);
          sub_220F0B140(v28, v26 + 1, 1);
        }

        v15[2] = v26 + 1;
        v27 = &v15[7 * v26];
        *(v27 + 4) = v21;
        *(v27 + 5) = v20;
        *(v27 + 6) = v46;
        *(v27 + 7) = v22;
        v27[8] = v18;
        *(v27 + 9) = v23;
        *(v27 + 80) = v47;
        v11 = v49;
        goto LABEL_14;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CA80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_220FC8E30;
    *(inited + 32) = v9;
    *(inited + 40) = v11;
    v32 = v15[2];
    if (v32)
    {
      v33 = v11;
      sub_220F0B120(0, v32, 0);
      sub_220E31740();
      v34 = v14;
      v35 = v15 + 8;
      do
      {
        v36 = *v35;

        swift_bridgeObjectRetain_n();
        v37 = sub_220FC3220();
        v38 = sub_220FC3210();

        v40 = *(v34 + 16);
        v39 = *(v34 + 24);
        if (v40 >= v39 >> 1)
        {
          v42 = OUTLINED_FUNCTION_0_1(v39);
          sub_220F0B120(v42, v40 + 1, 1);
        }

        *(v34 + 16) = v40 + 1;
        v41 = v34 + 16 * v40;
        *(v41 + 32) = v36;
        *(v41 + 40) = v38;
        v35 += 7;
        --v32;
      }

      while (v32);

      v11 = v49;
    }

    else
    {
      v43 = v11;

      v34 = MEMORY[0x277D84F90];
    }

    sub_220F34A14(v34);
    v44 = swift_initStackObject();
    *(v44 + 16) = xmmword_220FC8E30;
    *(v44 + 32) = v10;
    *(v44 + 40) = v48;
    v45 = v48;
    sub_220F34A14(v44);
    if (v9 <= v10)
    {
      sub_220E30C24(inited, v9, v10);

      return;
    }

LABEL_38:
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CA80);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_220FC8E10;
    *(v29 + 32) = 0;
    v30 = objc_opt_self();
    *(v29 + 40) = [v30 clearColor];
    *(v29 + 48) = 0x3FF0000000000000;
    *(v29 + 56) = [v30 clearColor];
  }
}