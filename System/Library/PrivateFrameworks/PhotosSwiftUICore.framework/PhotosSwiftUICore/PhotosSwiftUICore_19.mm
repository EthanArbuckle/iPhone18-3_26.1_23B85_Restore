uint64_t sub_1C116E434@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_1C116B590(a1, a2, *a3, a4);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

__n128 sub_1C116E4C0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC17PhotosSwiftUICore31PhotosInlinePlaybackCoordinator___configuration;
  v4 = v1[1];
  result = v1[2];
  v5 = *v1;
  *(v2 + 48) = *(v1 + 6);
  *(v2 + 16) = v4;
  *(v2 + 32) = result;
  *v2 = v5;
  return result;
}

__n128 sub_1C116E540()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  result = *(v0 + 24);
  v1[4] = result;
  v1[5].n128_u8[0] = v2;
  return result;
}

__n128 sub_1C116E58C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = *v2;
  v4 = *(v2 + 16);
  *(v1 + 56) = *(v2 + 32);
  *(v1 + 40) = v4;
  *(v1 + 24) = result;
  return result;
}

void sub_1C116E5FC()
{
  OUTLINED_FUNCTION_23();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_30();
  v11 = v9 - v10;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v23[-v14];
  v16 = *(v7 + 16);
  (v16)(&v23[-v14], v13);
  type metadata accessor for PhotosInlinePlayerModel();
  v17 = swift_allocObject();
  v18 = OUTLINED_FUNCTION_34_0();
  v16(v18);
  v19 = sub_1C0FE7B64(v11, v5, v17, v3, v1);
  OUTLINED_FUNCTION_24_11();
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = *(v19 + 80);
  *(v19 + 80) = sub_1C116E834;
  *(v19 + 88) = v20;

  sub_1C0FCF004(v21);

  OUTLINED_FUNCTION_24_11();
  v22 = swift_allocObject();
  swift_weakInit();

  sub_1C0FE6BD8(sub_1C116E850, v22);

  OUTLINED_FUNCTION_16_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95418);
  sub_1C1262360();
  swift_endAccess();
  sub_1C11697C8();
  sub_1C1165CE0();
  (*(v7 + 8))(v15, v3);
  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C116E858(unint64_t *a1, uint64_t *a2)
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

unint64_t sub_1C116E8B4()
{
  result = qword_1EDE7B648;
  if (!qword_1EDE7B648)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE7B648);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_32_9()
{
  v2 = *(v0 + 480);
  *(v0 + 304) = *(v0 + 464);
  *(v0 + 320) = v2;
  *(v0 + 336) = *(v0 + 496);

  return sub_1C0FF4B88(v0 + 304, v0 + 424);
}

uint64_t OUTLINED_FUNCTION_41_6(uint64_t a1)
{

  return sub_1C0FD1A5C(a1, v1);
}

uint64_t OUTLINED_FUNCTION_42_5()
{
  *(v0 + 304) = v1;

  return swift_getKeyPath();
}

char *OUTLINED_FUNCTION_54_3()
{

  return sub_1C11023F0(0, v0, 0);
}

void OUTLINED_FUNCTION_56_0()
{

  sub_1C0FA329C();
}

void OUTLINED_FUNCTION_57()
{

  sub_1C0FA329C();
}

uint64_t OUTLINED_FUNCTION_59_1()
{
}

uint64_t OUTLINED_FUNCTION_60_0()
{
  *(v0 + 304) = v1;

  return swift_getKeyPath();
}

uint64_t PhotosSummary.__allocating_init()()
{
  v0 = swift_allocObject();
  PhotosSummary.init()();
  return v0;
}

uint64_t PhotosSummary.init()()
{
  *(v0 + 64) = 0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  swift_unknownObjectWeakInit();
  sub_1C1261F60();
  return v0;
}

uint64_t sub_1C116EAD8(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (*(v1 + 48) == v2)
  {
    *(v1 + 48) = v2;
    return sub_1C116F7C0();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C116F8E4();
  }
}

uint64_t (*sub_1C116EB98(uint64_t a1))()
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_8_6();
  return sub_1C116EBE0;
}

uint64_t sub_1C116EBE4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C116EC28();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C116EC28()
{
  swift_getKeyPath();
  sub_1C116F840();
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_7_4();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1C116ECA0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (sub_1C0FDFDE0(*(v2 + 16), *(v2 + 24), a1, a2))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_2_6();
    sub_1C116F8E4();
  }

  else
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;

    return sub_1C116F7C0();
  }
}

uint64_t sub_1C116ED78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;

  return sub_1C116F7C0();
}

void (*sub_1C116EDEC())(void *a1)
{
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  v3 = OUTLINED_FUNCTION_11_27();
  OUTLINED_FUNCTION_1_6(v3);

  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3();

  v4 = OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C116EB98(v4);
  return sub_1C116EE90;
}

uint64_t (*sub_1C116EE9C(uint64_t a1))()
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_8_6();
  return sub_1C1170014;
}

uint64_t sub_1C116EEE4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C116EF70();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C116EF28(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_1C116EF70()
{
  swift_getKeyPath();
  sub_1C116F840();
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_7_4();
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_1C116EFE8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (sub_1C0FDFDE0(*(v2 + 32), *(v2 + 40), a1, a2))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_2_6();
    sub_1C116F8E4();
  }

  else
  {
    *(v2 + 32) = a1;
    *(v2 + 40) = a2;

    return sub_1C116F7C0();
  }
}

uint64_t sub_1C116F0C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 32) = a2;
  *(a1 + 40) = a3;

  return sub_1C116F7C0();
}

void (*sub_1C116F134())(void *a1)
{
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  v3 = OUTLINED_FUNCTION_11_27();
  OUTLINED_FUNCTION_1_6(v3);

  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3();

  v4 = OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C116EE9C(v4);
  return sub_1C116F1D8;
}

uint64_t (*sub_1C116F1E4(uint64_t a1))()
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_8_6();
  return sub_1C1170014;
}

uint64_t sub_1C116F22C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1C116F7C0();
  }

  return result;
}

uint64_t sub_1C116F260@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C116F2B8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C116F2B8()
{
  swift_getKeyPath();
  sub_1C116F840();
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_7_4();
  return *(v0 + 48);
}

uint64_t sub_1C116F320(uint64_t a1, char a2)
{
  swift_beginAccess();
  *(a1 + 48) = a2;
  return sub_1C116F7C0();
}

void (*sub_1C116F39C())(void *a1)
{
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  v3 = OUTLINED_FUNCTION_11_27();
  OUTLINED_FUNCTION_1_6(v3);

  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3();

  v4 = OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C116F1E4(v4);
  return sub_1C116F440;
}

void (*sub_1C116F44C(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 64);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_1C116F4CC;
}

void sub_1C116F4CC(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 64) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_1C116F550@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C116F5B8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C116F5B8()
{
  swift_getKeyPath();
  sub_1C116F840();
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_7_4();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1C116F628()
{
  swift_getKeyPath();
  sub_1C116F8E4();

  return swift_unknownObjectRelease();
}

uint64_t sub_1C116F6AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 64) = a3;
  return swift_unknownObjectWeakAssign();
}

void (*sub_1C116F710())(void *a1)
{
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  v3 = OUTLINED_FUNCTION_11_27();
  OUTLINED_FUNCTION_1_6(v3);

  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3();

  v4 = OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C116F44C(v4);
  return sub_1C116F7B4;
}

uint64_t sub_1C116F7C0()
{
  result = sub_1C116F5B8();
  if (result)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(v0, ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_1C116F840()
{
  result = qword_1EDE7EE90;
  if (!qword_1EDE7EE90)
  {
    type metadata accessor for PhotosSummary();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7EE90);
  }

  return result;
}

uint64_t type metadata accessor for PhotosSummary()
{
  result = qword_1EDE7EE80;
  if (!qword_1EDE7EE80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PhotosSummary.deinit()
{

  sub_1C0FF4BE4(v0 + 56);
  v1 = OBJC_IVAR____TtC17PhotosSwiftUICore13PhotosSummary___observationRegistrar;
  v2 = sub_1C1261F70();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t PhotosSummary.__deallocating_deinit()
{
  PhotosSummary.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1C116FA9C()
{
  type metadata accessor for PhotosSummary();
  v0 = swift_allocObject();
  result = PhotosSummary.init()();
  qword_1EDE82B40 = v0;
  return result;
}

uint64_t sub_1C116FADC@<X0>(void *a1@<X8>)
{
  if (qword_1EDE82B38 != -1)
  {
    swift_once();
  }

  *a1 = qword_1EDE82B40;
}

uint64_t EnvironmentValues.photosSummary.getter()
{
  sub_1C116FB84();
  sub_1C12637F0();
  return v1;
}

unint64_t sub_1C116FB84()
{
  result = qword_1EDE82B30;
  if (!qword_1EDE82B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE82B30);
  }

  return result;
}

uint64_t (*EnvironmentValues.photosSummary.modify(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_1C116FB84();
  sub_1C12637F0();
  return sub_1C116FCA0;
}

uint64_t sub_1C116FCA0(void *a1, char a2)
{
  a1[1] = *a1;
  if ((a2 & 1) == 0)
  {
    return sub_1C1263800();
  }

  sub_1C1263800();
}

uint64_t sub_1C116FD3C()
{
  result = sub_1C1261F70();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t OUTLINED_FUNCTION_11_27()
{
  v1[5] = v2;
  *v1 = v0;

  return sub_1C116F840();
}

uint64_t sub_1C1170030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C1266790();
  OUTLINED_FUNCTION_3();
  v6 = *(v5 + 16);

  return v6(a2, a1, v4);
}

uint64_t sub_1C1170098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  v15[0] = sub_1C1263FE0();
  v15[1] = v10;
  v15[2] = v11;
  v15[3] = v12;
  v13 = sub_1C1263FF0();
  MEMORY[0x1C68EE920](v15, a6, v13, a8);
}

uint64_t sub_1C1170174(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[0] = *a1;
  v9 = a2;
  v10 = a3;
  KeyPath = swift_getKeyPath();
  v12 = 0;
  v13 = swift_getKeyPath();
  v14 = 0;
  sub_1C0FCF1B4(v9);
  MEMORY[0x1C68EE920](v8, a4, &type metadata for ElementVisibilityModifier, a5);
  sub_1C0FCF004(v9);
  j__swift_release_1();
}

uint64_t sub_1C117024C()
{
  sub_1C1178AF4();
  sub_1C12637F0();
  if (!v2)
  {
    return 0;
  }

  Strong = swift_weakLoadStrong();

  return Strong;
}

uint64_t sub_1C11702B4()
{
  type metadata accessor for WeakOneUpChromeViewModelReference();
  swift_allocObject();

  sub_1C1178378(v0);
  sub_1C1178AF4();
  sub_1C1263800();
}

uint64_t OneUpChromeView<>.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = swift_getKeyPath();
  *(a2 + 16) = 0;
  *(a2 + 24) = swift_getKeyPath();
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 64) = swift_getKeyPath();
  *(a2 + 72) = 0;
  *(a2 + 80) = swift_getKeyPath();
  *(a2 + 88) = 0;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBE95450) + 56);
  *(a2 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
  result = swift_storeEnumTagMultiPayload();
  *a2 = a1;
  *(a2 + 48) = nullsub_1;
  *(a2 + 56) = 0;
  return result;
}

uint64_t OneUpChromeView.init(model:libraryScrubber:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 8) = swift_getKeyPath();
  *(a4 + 16) = 0;
  *(a4 + 24) = swift_getKeyPath();
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 64) = swift_getKeyPath();
  *(a4 + 72) = 0;
  *(a4 + 80) = swift_getKeyPath();
  *(a4 + 88) = 0;
  OUTLINED_FUNCTION_32_10();
  v8 = *(type metadata accessor for OneUpChromeView() + 56);
  *(a4 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
  result = swift_storeEnumTagMultiPayload();
  *a4 = a1;
  *(a4 + 48) = a2;
  *(a4 + 56) = a3;
  return result;
}

uint64_t OneUpChromeView.model.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

void OneUpChromeView.body.getter()
{
  OUTLINED_FUNCTION_23();
  v1 = v0;
  v3 = v2;
  v104 = v4;
  v99 = sub_1C12629F0();
  OUTLINED_FUNCTION_0();
  v97 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13();
  v95 = v8 - v7;
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  OUTLINED_FUNCTION_42_6();
  v11 = type metadata accessor for OneUpChromeView.ChromeWithBottomToolbar();
  OUTLINED_FUNCTION_42_6();
  type metadata accessor for OneUpChromeView.ChromeWithLeftToolbar();
  OUTLINED_FUNCTION_11_0();
  v105 = v11;
  v109 = v12;
  v13 = sub_1C1263C30();
  OUTLINED_FUNCTION_42_6();
  type metadata accessor for OneUpChromeView.ChromeWithRightToolbar();
  OUTLINED_FUNCTION_11_0();
  v110 = v13;
  v106 = v14;
  sub_1C1263C30();
  OUTLINED_FUNCTION_22();
  v111 = v15;
  v16 = sub_1C12652C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93D70);
  OUTLINED_FUNCTION_19_1();
  v17 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v96 = v18;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v19);
  v92 = &v87 - v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93D78);
  OUTLINED_FUNCTION_19_1();
  v108 = v17;
  v21 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v100 = v22;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_30();
  v98 = v24 - v25;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v26);
  v93 = &v87 - v27;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v28);
  v94 = &v87 - v29;
  v102 = sub_1C1266790();
  OUTLINED_FUNCTION_0();
  v31 = v30;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_30();
  v35 = v33 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v103 = &v87 - v37;
  v101 = v1;
  v38 = *v1;
  v39 = sub_1C1213358();
  v107 = v16;
  if (v150 == 3)
  {
    __swift_storeEnumTagSinglePayload(v35, 1, 1, v21);
    OUTLINED_FUNCTION_6_31();
    WitnessTable = swift_getWitnessTable();
    OUTLINED_FUNCTION_5_30();
    v41 = swift_getWitnessTable();
    v148 = WitnessTable;
    v149 = v41;
    OUTLINED_FUNCTION_7_16();
    v42 = swift_getWitnessTable();
    OUTLINED_FUNCTION_4_45();
    v43 = swift_getWitnessTable();
    v146 = v42;
    v147 = v43;
    v145 = swift_getWitnessTable();
    OUTLINED_FUNCTION_2_11();
    v44 = swift_getWitnessTable();
    OUTLINED_FUNCTION_25_8();
    v47 = sub_1C1179D7C(v45, v46);
    v143 = v44;
    v144 = v47;
    OUTLINED_FUNCTION_9_4();
    v48 = swift_getWitnessTable();
    v49 = sub_1C1179D7C(&qword_1EDE7B970, &qword_1EBE93D78);
    v141 = v48;
    v142 = v49;
    swift_getWitnessTable();
    sub_1C1170030(v35, v103);
    v50 = *(v31 + 8);
    v50(v35, v102);
  }

  else
  {
    v88 = v38;
    v89 = v35;
    v90 = v31;
    v91 = v21;
    v51 = v108;
    MEMORY[0x1EEE9AC00](v39);
    *(&v87 - 4) = v9;
    *(&v87 - 3) = v10;
    *(&v87 - 16) = v52;
    *(&v87 - 1) = v101;
    OUTLINED_FUNCTION_6_31();
    v53 = swift_getWitnessTable();
    OUTLINED_FUNCTION_5_30();
    v54 = swift_getWitnessTable();
    v123 = v53;
    v124 = v54;
    v55 = swift_getWitnessTable();
    OUTLINED_FUNCTION_4_45();
    v56 = swift_getWitnessTable();
    v121 = v55;
    v122 = v56;
    v57 = swift_getWitnessTable();
    sub_1C12652B0();
    v129[0] = v125;
    v129[1] = v126;
    v129[2] = v127;
    v130 = v128;
    v117 = v125;
    v118 = v126;
    v119 = v127;
    v120 = v128;
    sub_1C1171908();
    LOBYTE(v55) = sub_1C1222F4C();

    if (v55)
    {
      v58 = v97;
      v59 = v95;
      v60 = v99;
      (*(v97 + 104))(v95, *MEMORY[0x1E697DBA8], v99);
      v61 = v107;
    }

    else
    {
      v59 = v95;
      sub_1C1171A48(v95);
      v61 = v107;
      v60 = v99;
      v58 = v97;
    }

    v116 = v57;
    OUTLINED_FUNCTION_2_11();
    v62 = swift_getWitnessTable();
    v63 = v92;
    OUTLINED_FUNCTION_34_8();
    sub_1C1264A10();
    (*(v58 + 8))(v59, v60);
    (*(*(v61 - 8) + 8))(v129, v61);
    swift_getKeyPath();
    *&v125 = v88;
    v64 = sub_1C1179D7C(&qword_1EDE7B960, &qword_1EBE93D70);
    v114 = v62;
    v115 = v64;

    v65 = swift_getWitnessTable();
    v66 = v93;
    sub_1C1264A30();

    (*(v96 + 8))(v63, v51);
    v67 = sub_1C1179D7C(&qword_1EDE7B970, &qword_1EBE93D78);
    v112 = v65;
    v113 = v67;
    v68 = v91;
    v69 = swift_getWitnessTable();
    v70 = v94;
    sub_1C0FDBA4C(v66, v68, v69);
    v71 = v100;
    v72 = *(v100 + 8);
    v72(v66, v68);
    v73 = v98;
    sub_1C0FDBA4C(v70, v68, v69);
    v72(v70, v68);
    v74 = v89;
    (*(v71 + 32))(v89, v73, v68);
    __swift_storeEnumTagSinglePayload(v74, 0, 1, v68);
    sub_1C1170030(v74, v103);
    v50 = *(v90 + 8);
    v50(v74, v102);
  }

  OUTLINED_FUNCTION_6_31();
  v75 = swift_getWitnessTable();
  OUTLINED_FUNCTION_5_30();
  v76 = swift_getWitnessTable();
  v139 = v75;
  v140 = v76;
  OUTLINED_FUNCTION_7_16();
  v77 = swift_getWitnessTable();
  OUTLINED_FUNCTION_4_45();
  v78 = swift_getWitnessTable();
  v137 = v77;
  v138 = v78;
  v136 = swift_getWitnessTable();
  OUTLINED_FUNCTION_2_11();
  v79 = swift_getWitnessTable();
  v80 = sub_1C1179D7C(&qword_1EDE7B960, &qword_1EBE93D70);
  v134 = v79;
  v135 = v80;
  OUTLINED_FUNCTION_9_4();
  v81 = swift_getWitnessTable();
  v82 = sub_1C1179D7C(&qword_1EDE7B970, &qword_1EBE93D78);
  v132 = v81;
  v133 = v82;
  v131 = swift_getWitnessTable();
  OUTLINED_FUNCTION_17();
  swift_getWitnessTable();
  v83 = OUTLINED_FUNCTION_34_8();
  sub_1C0FDBA4C(v83, v84, v85);
  v86 = OUTLINED_FUNCTION_34_8();
  (v50)(v86);
  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C1170F04(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      sub_1C11718AC();
      v58 = *&v55[16];
      v59 = v55[24];
      v56 = *v55;
      v57 = v55[8];
      v60 = v54;
      *v61 = *v55;
      *&v61[9] = *&v55[9];
      v1 = type metadata accessor for OneUpChromeView.ChromeWithLeftToolbar();
      WitnessTable = swift_getWitnessTable();
      sub_1C0FDBA4C(&v60, v1, WitnessTable);

      sub_1C0FD1A5C(&v56, &qword_1EBE92928);
      sub_1C0FD1A5C(&v58, &qword_1EBE955E8);
      v60 = v34;
      *v61 = v35;
      v61[8] = v36;
      *&v61[16] = v37;
      v61[24] = v38;
      sub_1C0FDBA4C(&v60, v1, WitnessTable);
      v50 = v30;
      *&v51 = v31;
      BYTE8(v51) = v32;
      *&v52 = v33;
      BYTE8(v52) = BYTE8(v33);
      type metadata accessor for OneUpChromeView.ChromeWithBottomToolbar();
      v3 = swift_getWitnessTable();
      sub_1C1112E18();
      v4 = *(&v60 + 1);
      v5 = *&v61[8];
      v26 = *v61;
      v27 = v60;
      v6 = *&v61[16];
      v24 = *&v61[24];
      v7 = v62;
      v41 = v60;
      *v42 = *v61;
      *&v42[16] = *&v61[16];
      *&v42[24] = *&v61[24];
      v43 = v62;
      sub_1C1263C30();
      type metadata accessor for OneUpChromeView.ChromeWithRightToolbar();
      v39 = v3;
      v40 = WitnessTable;
      swift_getWitnessTable();
      swift_getWitnessTable();
      sub_1C1112D68();
      sub_1C1178A60(v27, v4, v26, v5, v6, v24, v7);
    }

    else
    {
      sub_1C11718AC();
      *&v30 = *&v42[16];
      BYTE8(v30) = v42[24];
      v58 = *v42;
      v59 = v42[8];
      v60 = v41;
      *v61 = *v42;
      *&v61[9] = *&v42[9];
      v14 = type metadata accessor for OneUpChromeView.ChromeWithRightToolbar();
      v29 = swift_getWitnessTable();
      sub_1C0FDBA4C(&v60, v14, v29);

      sub_1C0FD1A5C(&v58, &qword_1EBE92928);
      sub_1C0FD1A5C(&v30, &qword_1EBE955E8);
      v60 = v54;
      *v61 = *v55;
      v61[8] = v55[8];
      *&v61[16] = *&v55[16];
      v61[24] = v55[24];
      sub_1C0FDBA4C(&v60, v14, v29);
      v60 = v34;
      *v61 = v35;
      v61[8] = v36;
      *&v61[16] = v37;
      v61[24] = v38;
      type metadata accessor for OneUpChromeView.ChromeWithBottomToolbar();
      type metadata accessor for OneUpChromeView.ChromeWithLeftToolbar();
      sub_1C1263C30();
      v15 = swift_getWitnessTable();
      v16 = swift_getWitnessTable();
      v48 = v15;
      v49 = v16;
      swift_getWitnessTable();
      sub_1C1112E18();
    }

    j__swift_release_1();

    j__swift_release_1();
  }

  else
  {
    sub_1C1171850();
    v58 = *v55;
    v59 = v55[8];
    v56 = v54;
    v57 = BYTE8(v54);
    v60 = v54;
    *v61 = *v55;
    *&v61[16] = *&v55[16];
    v8 = type metadata accessor for OneUpChromeView.ChromeWithBottomToolbar();
    v9 = swift_getWitnessTable();
    sub_1C0FDBA4C(&v60, v8, v9);

    sub_1C0FD1A5C(&v56, &qword_1EBE92928);
    sub_1C0FD1A5C(&v58, &qword_1EBE955E8);

    *&v60 = v34;
    BYTE8(v60) = BYTE8(v34);
    *v61 = v35;
    v61[8] = v36;
    *&v61[16] = v37;
    *&v61[24] = v38;
    sub_1C0FDBA4C(&v60, v8, v9);
    *&v50 = v30;
    BYTE8(v50) = BYTE8(v30);
    *&v51 = v31;
    BYTE8(v51) = v32;
    v52 = v33;
    type metadata accessor for OneUpChromeView.ChromeWithLeftToolbar();
    swift_getWitnessTable();
    sub_1C1112D68();
    v10 = v60;
    v11 = *v61;
    v28 = *(&v60 + 1);
    v12 = *&v61[16];
    v13 = *&v61[24];
    v25 = v62;
    v41 = v60;
    *v42 = *v61;
    *&v42[16] = *&v61[16];
    *&v42[24] = *&v61[24];
    v43 = v62;
    sub_1C1263C30();
    type metadata accessor for OneUpChromeView.ChromeWithRightToolbar();
    swift_getWitnessTable();
    swift_getWitnessTable();
    sub_1C1112D68();
    sub_1C1178A60(v10, v28, v11, *(&v11 + 1), v12, v13, v25);

    j__swift_release_1();

    j__swift_release_1();
  }

  v60 = v50;
  *v61 = v51;
  *&v61[16] = v52;
  v62 = v53;
  type metadata accessor for OneUpChromeView.ChromeWithBottomToolbar();
  type metadata accessor for OneUpChromeView.ChromeWithLeftToolbar();
  sub_1C1263C30();
  type metadata accessor for OneUpChromeView.ChromeWithRightToolbar();
  v17 = sub_1C1263C30();
  v18 = swift_getWitnessTable();
  v19 = swift_getWitnessTable();
  v46 = v18;
  v47 = v19;
  v20 = swift_getWitnessTable();
  v21 = swift_getWitnessTable();
  v44 = v20;
  v45 = v21;
  v22 = swift_getWitnessTable();
  sub_1C0FDBA4C(&v50, v17, v22);
  return (*(*(v17 - 8) + 8))(&v60, v17);
}

uint64_t sub_1C1171850()
{
  OUTLINED_FUNCTION_17_4();
  v3 = v2;
  KeyPath = swift_getKeyPath();
  result = swift_getKeyPath();
  *v3 = KeyPath;
  *(v3 + 8) = 0;
  *(v3 + 16) = result;
  *(v3 + 24) = 0;
  *(v3 + 32) = v1;
  *(v3 + 40) = v0;
  return result;
}

uint64_t sub_1C11718AC()
{
  OUTLINED_FUNCTION_17_4();
  v3 = v2;
  KeyPath = swift_getKeyPath();
  result = swift_getKeyPath();
  *v3 = v1;
  *(v3 + 8) = v0;
  *(v3 + 16) = KeyPath;
  *(v3 + 24) = 0;
  *(v3 + 32) = result;
  *(v3 + 40) = 0;
  return result;
}

uint64_t sub_1C1171908()
{
  v1 = sub_1C12637E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);

  if ((v6 & 1) == 0)
  {
    sub_1C1266420();
    v7 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_1C1171A48@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C12637E0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;
  sub_1C0FD0AC4();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1C12629F0();
    return (*(*(v9 - 8) + 32))(a1, v8, v9);
  }

  else
  {
    sub_1C1266420();
    v11 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    return (*(v3 + 8))(v5, v2);
  }
}

void sub_1C1171C4C()
{
  OUTLINED_FUNCTION_23();
  v26 = v0;
  v27 = v1;
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  OUTLINED_FUNCTION_20_0();
  type metadata accessor for OneUpChromeView.TopBar();
  OUTLINED_FUNCTION_7_33();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_12_2();
  sub_1C12655A0();
  sub_1C1263190();
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE955D8);
  OUTLINED_FUNCTION_20_0();
  v25 = v4;
  type metadata accessor for OneUpChromeMaskedLibraryScrubber();
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  OUTLINED_FUNCTION_20_0();
  type metadata accessor for OneUpChromeView.Toolbar();
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EC0);
  OUTLINED_FUNCTION_12_2();
  sub_1C1263190();
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_12_2();
  sub_1C12655A0();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  v5 = sub_1C12655A0();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - v9;
  OUTLINED_FUNCTION_32_10();
  v11 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_30();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v24 - v16;
  v28 = v3;
  v29 = v25;
  v30 = v26;
  sub_1C10A7F5C();
  sub_1C1265590();
  OUTLINED_FUNCTION_1_1();
  WitnessTable = swift_getWitnessTable();
  sub_1C10F4FC0();
  sub_1C1264470();
  sub_1C1264BF0();
  (*(v7 + 8))(v10, v5);
  v31 = WitnessTable;
  v32 = MEMORY[0x1E6980A30];
  OUTLINED_FUNCTION_4_0();
  v19 = swift_getWitnessTable();
  v20 = OUTLINED_FUNCTION_57_0();
  sub_1C0FDBA4C(v20, v21, v19);
  v22 = *(v13 + 8);
  v23 = OUTLINED_FUNCTION_57_0();
  v22(v23);
  sub_1C0FDBA4C(v17, v11, v19);
  (v22)(v17, v11);
  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C1171FF0(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v57 = v7;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE955D8);
  MEMORY[0x1EEE9AC00](v55);
  v58 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v56 = (&v42 - v10);
  v11 = sub_1C12637E0();
  v51 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v4;
  v60 = v2;
  v53 = v4;
  v54 = v2;
  type metadata accessor for OneUpChromeView.TopBar();
  swift_getWitnessTable();
  sub_1C10A7F5C();
  sub_1C1265590();
  v85 = v94;
  v109 = v97;
  *v89 = *v98;
  *&v89[3] = *&v98[3];
  v14 = v102;
  v108 = v102;
  v86 = v95;
  v48 = v96;
  v49 = v101;
  v87 = v96;
  v88 = v97;
  v46 = v99;
  v90 = v99;
  v50 = v100;
  v91 = v100;
  v92 = v101;
  v93 = v102;
  v45 = sub_1C12644A0();
  v107 = *(v6 + 8);
  v52 = v6;
  v15 = *v6;
  v106 = v15;
  LODWORD(v47) = v107;
  v43 = v13;
  v44 = v11;
  if (v107 == 1)
  {
    v84 = v15;
  }

  else
  {

    sub_1C1266420();
    v16 = v11;
    v17 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(&v106, &qword_1EBE92928);
    v51[1](v13, v16);
    v14 = v108;
  }

  sub_1C122336C();

  sub_1C12655A0();
  WitnessTable = swift_getWitnessTable();
  sub_1C1264FB0();
  j__swift_release_1();

  sub_1C0FF9034(v50, v49, v14 & 1);
  memcpy(v83, v103, sizeof(v83));
  sub_1C12644C0();
  if (v47)
  {
    v82 = v15;
  }

  else
  {

    sub_1C1266420();
    v19 = sub_1C1264410();
    sub_1C1262620();

    v20 = v43;
    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(&v106, &qword_1EBE92928);
    v51[1](v20, v44);
  }

  sub_1C122336C();

  v21 = sub_1C1263190();
  v22 = MEMORY[0x1E697E5D8];
  v71 = WitnessTable;
  v72 = MEMORY[0x1E697E5D8];
  v23 = swift_getWitnessTable();
  sub_1C1264FB0();
  memcpy(v73, v83, 0x79uLL);
  (*(*(v21 - 8) + 8))(v73, v21);
  memcpy(v80, v104, 0xA9uLL);
  v24 = sub_1C1263190();
  v69 = v23;
  v70 = v22;
  v49 = swift_getWitnessTable();
  sub_1C0FDBA4C(v80, v24, v49);
  memcpy(v74, v80, 0xA9uLL);
  v47 = *(v24 - 8);
  v48 = v24;
  v25 = *(v47 + 8);
  v50 = v47 + 8;
  v51 = v25;
  (v25)(v74, v24);
  v26 = sub_1C1263AA0();
  v27 = v56;
  *v56 = v26;
  *(v27 + 8) = 0;
  *(v27 + 16) = 1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE955E0);
  v29 = v52;
  v30 = v53;
  v31 = v54;
  v32 = sub_1C1172C30(v27 + *(v28 + 44));
  MEMORY[0x1EEE9AC00](v32);
  *(&v42 - 4) = v30;
  *(&v42 - 3) = v31;
  *(&v42 - 2) = v29;
  type metadata accessor for OneUpChromeMaskedLibraryScrubber();
  sub_1C1263190();
  sub_1C1263190();
  sub_1C1263190();
  type metadata accessor for OneUpChromeView.Toolbar();
  sub_1C1263190();
  sub_1C1263190();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EC0);
  sub_1C1263190();
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C10A7F5C();
  sub_1C1265590();
  memcpy(v78, v80, 0x199uLL);
  v33 = sub_1C12655A0();
  v54 = MEMORY[0x1E6981870];
  v34 = swift_getWitnessTable();
  sub_1C0FDBA4C(v78, v33, v34);
  memcpy(v75, v78, 0x199uLL);
  v35 = *(v33 - 8);
  v36 = *(v35 + 8);
  v36(v75, v33);
  memcpy(v76, v105, 0xA9uLL);
  memcpy(v66, v105, 0xA9uLL);
  v67[0] = v66;
  v37 = v58;
  sub_1C0FD0AC4();
  v67[1] = v37;
  memcpy(v77, v68, 0x199uLL);
  memcpy(v65, v68, 0x199uLL);
  v67[2] = v65;
  v38 = v48;
  (*(v47 + 16))(v80, v76, v48);
  (*(v35 + 16))(v80, v77, v33);
  v39 = v38;
  v64[0] = v38;
  v64[1] = v55;
  v64[2] = v33;
  v61 = v49;
  v62 = sub_1C1179D7C(&qword_1EDE76BD8, &qword_1EBE955D8);
  v63 = v34;
  sub_1C119EE80(v67, 3, v64);
  memcpy(v78, v68, 0x199uLL);
  v36(v78, v33);
  sub_1C0FD1A5C(v27, &qword_1EBE955D8);
  memcpy(v79, v105, 0xA9uLL);
  v40 = v51;
  (v51)(v79, v39);
  memcpy(v80, v65, 0x199uLL);
  v36(v80, v33);
  sub_1C0FD1A5C(v37, &qword_1EBE955D8);
  memcpy(v81, v66, 0xA9uLL);
  return (v40)(v81, v39);
}

uint64_t sub_1C1172A30()
{
  sub_1C1172BC4(&v15);
  v23 = v17;
  v24 = v18;
  v21 = v16;
  v22 = BYTE8(v16);
  v19 = v15;
  v20 = BYTE8(v15);
  v8 = v18;
  v6 = v16;
  v7 = v17;
  v5 = v15;
  v0 = type metadata accessor for OneUpChromeView.TopBar();
  WitnessTable = swift_getWitnessTable();
  sub_1C0FDBA4C(&v5, v0, WitnessTable);
  sub_1C0FD1A5C(&v19, &qword_1EBE955E8);
  sub_1C0FD1A5C(&v21, &qword_1EBE92928);
  sub_1C0FD1A5C(&v23, &qword_1EBE92930);
  v2 = v13;
  v3 = v14;
  *&v5 = v9;
  BYTE8(v5) = v10;
  *&v6 = v11;
  BYTE8(v6) = v12;
  v7 = v13;
  v8 = v14;
  sub_1C0FDBA4C(&v5, v0, WitnessTable);
  j__swift_release_1();

  return sub_1C0FF9034(v2, *(&v2 + 1), v3);
}

uint64_t sub_1C1172BC4@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  result = swift_getKeyPath();
  *a1 = KeyPath;
  *(a1 + 8) = 0;
  *(a1 + 16) = v3;
  *(a1 + 24) = 0;
  *(a1 + 32) = result;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  return result;
}

uint64_t sub_1C1172C30@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93DB8);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  *v8 = swift_getKeyPath();
  v8[8] = 0;
  *(v8 + 2) = swift_getKeyPath();
  v8[24] = 0;
  *(v8 + 4) = swift_getKeyPath();
  *(v8 + 5) = 0;
  v8[48] = 0;
  v9 = type metadata accessor for OneUpChromeVideoControls();
  v10 = *(v9 + 28);
  *&v8[v10] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90428);
  swift_storeEnumTagMultiPayload();
  v11 = *(v9 + 32);
  *&v8[v11] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for OneUpChromeView.ChromeWithBottomToolbar();
  v12 = sub_1C1172E80();
  v13 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93DE8) + 36)];
  *v13 = 0.0;
  v13[1] = v12;
  v14 = sub_1C1265A30();
  v15 = sub_1C1172E80();
  v16 = &v8[*(v3 + 44)];
  *v16 = v14;
  *(v16 + 1) = v15;
  sub_1C0FD0AC4();
  *a1 = 0;
  *(a1 + 8) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE955F0);
  sub_1C0FD0AC4();
  sub_1C0FD1A5C(v8, &qword_1EBE93DB8);
  return sub_1C0FD1A5C(v5, &qword_1EBE93DB8);
}

double sub_1C1172E80()
{
  v1 = sub_1C12637E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v0 + 24);
  v5 = v0[2];
  v15 = v5;
  v6 = v16;

  if ((v6 & 1) == 0)
  {
    sub_1C1266420();
    v7 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(&v15, &qword_1EBE955E8);
    (*(v2 + 8))(v4, v1);
    v5 = v13;
  }

  v14 = *(v0 + 8);
  v13 = *v0;
  v8 = v14;

  if ((v8 & 1) == 0)
  {
    sub_1C1266420();
    v9 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(&v13, &qword_1EBE92928);
    (*(v2 + 8))(v4, v1);
  }

  if (!v5)
  {

    return 0.0;
  }

  if (sub_1C1214C90())
  {

    return 0.0;
  }

  v11 = sub_1C1222D88();

  result = 32.0;
  if ((v11 & 1) == 0)
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1C1173104(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v63 = v7;
  v8 = sub_1C12637E0();
  v64 = *(v8 - 8);
  v65 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v6[5];
  v93[0] = sub_1C10CA974(v6[4]);
  v93[1] = v12;
  v93[2] = v13;
  LOBYTE(v93[3]) = v14 & 1;
  v61 = v11;

  sub_1C1264490();
  v66 = v4;
  v67 = v2;
  type metadata accessor for OneUpChromeMaskedLibraryScrubber();
  WitnessTable = swift_getWitnessTable();
  sub_1C1264FB0();

  j__swift_release_1();
  memcpy(v103, v104, sizeof(v103));
  sub_1C12644A0();
  v111 = *(v6 + 8);
  v62 = v6;
  v16 = *v6;
  v110 = *v6;
  v17 = v111;
  v60 = v10;
  if (v111 == 1)
  {
    v102 = v16;

    v18 = v64;
    v19 = v65;
  }

  else
  {

    sub_1C1266420();
    v20 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(&v110, &qword_1EBE92928);
    v18 = v64;
    v21 = v10;
    v19 = v65;
    (*(v64 + 8))(v21, v65);
  }

  sub_1C122336C();

  v22 = sub_1C1263190();
  v99 = WitnessTable;
  v100 = MEMORY[0x1E697E5D8];
  v23 = swift_getWitnessTable();
  sub_1C1264FB0();
  memcpy(v101, v103, 0x49uLL);
  (*(*(v22 - 8) + 8))(v101, v22);
  memcpy(v98, v105, sizeof(v98));
  LODWORD(v59) = sub_1C12644C0();
  v55 = v17;
  if (v17)
  {
    v97 = v16;
  }

  else
  {

    sub_1C1266420();
    v24 = sub_1C1264410();
    sub_1C1262620();

    v25 = v60;
    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(&v110, &qword_1EBE92928);
    (*(v18 + 8))(v25, v19);
  }

  sub_1C122336C();

  v26 = sub_1C1263190();
  v93[27] = v23;
  v93[28] = MEMORY[0x1E697E5D8];
  v27 = MEMORY[0x1E697E5D8];
  v28 = swift_getWitnessTable();
  sub_1C1264FB0();
  memcpy(v94, v98, 0x79uLL);
  (*(*(v26 - 8) + 8))(v94, v26);
  memcpy(v93, v106, 0xA9uLL);
  v29 = sub_1C1263190();
  v93[25] = v28;
  v93[26] = v27;
  v57 = swift_getWitnessTable();
  sub_1C0FDBA4C(v93, v29, v57);
  memcpy(v95, v93, 0xA9uLL);
  v56 = *(v29 - 8);
  v58 = *(v56 + 8);
  v59 = v56 + 8;
  v58(v95, v29);
  LOBYTE(v92[0]) = sub_1C1173D6C(0) & 1;
  v92[1] = v30;
  LOBYTE(v92[2]) = v31 & 1;
  sub_1C1264460();
  type metadata accessor for OneUpChromeView.Toolbar();
  v32 = swift_getWitnessTable();
  sub_1C1264FB0();
  j__swift_release_1();
  memcpy(v92, v93, 0x41uLL);
  sub_1C1264480();
  v33 = sub_1C1263190();
  v88 = v32;
  v89 = MEMORY[0x1E697E5D8];
  v34 = swift_getWitnessTable();
  sub_1C1264FB0();
  memcpy(v96, v92, 0x41uLL);
  (*(*(v33 - 8) + 8))(v96, v33);
  memcpy(v87, v90, sizeof(v87));
  sub_1C1264490();
  if (v55)
  {
    v86 = v16;
  }

  else
  {

    sub_1C1266420();
    v35 = sub_1C1264410();
    sub_1C1262620();

    v36 = v60;
    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(&v110, &qword_1EBE92928);
    (*(v64 + 8))(v36, v65);
  }

  sub_1C122336C();

  v37 = sub_1C1263190();
  v76[7] = v34;
  v38 = MEMORY[0x1E697E5D8];
  v76[8] = MEMORY[0x1E697E5D8];
  v39 = swift_getWitnessTable();
  sub_1C1264FB0();
  memcpy(v77, v87, 0x71uLL);
  (*(*(v37 - 8) + 8))(v77, v37);
  memcpy(v93, v91, 0xA1uLL);
  v40 = v62;
  v108 = v62[2];
  v109 = *(v62 + 24);
  v41 = swift_allocObject();
  v42 = v67;
  *(v41 + 16) = v66;
  *(v41 + 24) = v42;
  v43 = v40[1];
  *(v41 + 32) = *v40;
  *(v41 + 48) = v43;
  *(v41 + 64) = v40[2];

  sub_1C0FD0AC4();
  sub_1C0FD0AC4();
  v44 = sub_1C1263190();
  v76[5] = v39;
  v76[6] = v38;
  v45 = swift_getWitnessTable();
  sub_1C0FF9EE4();
  sub_1C1170098(MEMORY[0x1E69E7DE0], sub_1C116302C, 0, sub_1C11787F0, v41, v44, MEMORY[0x1E69E7DE0], v45);

  memcpy(v78, v93, 0xA1uLL);
  (*(*(v44 - 8) + 8))(v78, v44);
  memcpy(v84, v92, sizeof(v84));
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EC0);
  v46 = sub_1C1263190();
  v47 = sub_1C1179D7C(&qword_1EDE7BAA0, &qword_1EBE94EC0);
  v76[3] = v45;
  v76[4] = v47;
  v48 = swift_getWitnessTable();
  sub_1C0FDBA4C(v84, v46, v48);
  memcpy(v79, v84, sizeof(v79));
  v49 = *(v46 - 8);
  v50 = *(v49 + 8);
  v50(v79, v46);
  KeyPath = swift_getKeyPath();
  memcpy(v80, v107, 0xA9uLL);
  memcpy(v75, v107, 0xA9uLL);
  v76[0] = v75;
  memcpy(v81, v93, sizeof(v81));
  memcpy(v74, v93, sizeof(v74));
  v72 = KeyPath;
  v73 = 0;
  v76[1] = v74;
  v76[2] = &v72;
  (*(v56 + 16))(v84, v80, v29);
  (*(v49 + 16))(v84, v81, v46);

  v71[0] = v29;
  v71[1] = v46;
  v71[2] = &type metadata for OneUpChromeDebugBar;
  v68 = v57;
  v69 = v48;
  v70 = sub_1C10F8A98();
  sub_1C119EE80(v76, 3, v71);

  memcpy(v82, v93, sizeof(v82));
  v50(v82, v46);
  memcpy(v83, v107, 0xA9uLL);
  v52 = v58;
  v58(v83, v29);
  j__swift_release_1();
  memcpy(v84, v74, sizeof(v84));
  v50(v84, v46);
  memcpy(v85, v75, 0xA9uLL);
  return v52(v85, v29);
}

uint64_t sub_1C1173DAC(double *a1, uint64_t a2)
{
  v4 = sub_1C12637E0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = *(a2 + 16);
  v13 = v9;
  v14 = *(a2 + 24);
  LOBYTE(a2) = v14;

  if ((a2 & 1) == 0)
  {
    sub_1C1266420();
    v11 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(&v13, &qword_1EBE955E8);
    result = (*(v5 + 8))(v7, v4);
    v9 = v12[1];
  }

  if (v9)
  {
    if (v8 != sub_1C1212B30())
    {
      sub_1C1211524(v8);
    }
  }

  return result;
}

void sub_1C1173F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_23();
  a19 = v21;
  a20 = v22;
  v78 = v20;
  v24 = v23;
  v80 = v25;
  v77 = sub_1C1263150();
  OUTLINED_FUNCTION_0();
  v79 = v26;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_13();
  v76 = v29 - v28;
  v30 = *(v24 + 16);
  v31 = *(v24 + 24);
  OUTLINED_FUNCTION_26();
  type metadata accessor for OneUpChromeView.Toolbar();
  sub_1C1263190();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EC0);
  OUTLINED_FUNCTION_12_2();
  sub_1C1263190();
  OUTLINED_FUNCTION_22();
  v32 = sub_1C1263190();
  OUTLINED_FUNCTION_26();
  v86 = type metadata accessor for OneUpChromeView.TopBar();
  v87 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE955F8);
  OUTLINED_FUNCTION_26();
  type metadata accessor for OneUpChromeMaskedLibraryScrubber();
  OUTLINED_FUNCTION_22();
  v88 = sub_1C1263190();
  v89 = &type metadata for OneUpChromeDebugBar;
  OUTLINED_FUNCTION_28_12();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12655A0();
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95600);
  OUTLINED_FUNCTION_19_18();
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_32_10();
  v34 = sub_1C12654C0();
  OUTLINED_FUNCTION_0();
  v75[4] = v35;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v36);
  v38 = v75 - v37;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE940C0);
  OUTLINED_FUNCTION_19_1();
  v39 = sub_1C1263190();
  OUTLINED_FUNCTION_55_3(v39, &a13);
  v75[6] = v40;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v41);
  v42 = OUTLINED_FUNCTION_50_3();
  OUTLINED_FUNCTION_0();
  v75[7] = v43;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_51_6(v75 - v45);
  OUTLINED_FUNCTION_0();
  v75[8] = v46;
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_30();
  v75[3] = v48 - v49;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_47_4(v51, v52, v53, v54, v55, v56, v57, v58, v75[0]);
  v81 = v30;
  v82 = v31;
  v83 = v78;
  sub_1C1012734();
  OUTLINED_FUNCTION_35_8();
  swift_getKeyPath();
  (*(v79 + 104))(v76, *MEMORY[0x1E697E7D0], v77);
  OUTLINED_FUNCTION_1_11();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_44_6();

  v59 = OUTLINED_FUNCTION_34_8();
  v60(v59);
  OUTLINED_FUNCTION_8_11();
  v61(v38, v34);
  v62 = sub_1C12644C0();
  OUTLINED_FUNCTION_0_0();
  v64 = sub_1C1179D7C(v63, &qword_1EBE940C0);
  OUTLINED_FUNCTION_20_20(v64);
  v65 = v75[2];
  swift_getWitnessTable();
  OUTLINED_FUNCTION_31_11();
  OUTLINED_FUNCTION_8_11();
  v66(v32, v65);
  v67 = sub_1C1264460();
  v68 = OUTLINED_FUNCTION_58_2(MEMORY[0x1E697E5D8]);
  OUTLINED_FUNCTION_57_0();
  sub_1C10F4FC0();
  OUTLINED_FUNCTION_45_7();
  OUTLINED_FUNCTION_8_11();
  v69(WitnessTable, v42);
  v84 = v68;
  v85 = MEMORY[0x1E6980A30];
  OUTLINED_FUNCTION_32_5();
  v70 = swift_getWitnessTable();
  OUTLINED_FUNCTION_33_10(v70);
  v71 = OUTLINED_FUNCTION_53_4();
  v62(v71);
  v72 = OUTLINED_FUNCTION_32_5();
  sub_1C0FDBA4C(v72, v73, v67);
  v74 = OUTLINED_FUNCTION_32_5();
  v62(v74);
  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C11744DC@<X0>(unint64_t a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v69 = a4;
  v115[0] = type metadata accessor for OneUpChromeView.TopBar();
  v115[1] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE955F8);
  type metadata accessor for OneUpChromeMaskedLibraryScrubber();
  v115[2] = sub_1C1263190();
  v115[3] = &type metadata for OneUpChromeDebugBar;
  swift_getTupleTypeMetadata();
  v7 = sub_1C1265B00();
  WitnessTable = swift_getWitnessTable();
  v61 = v7;
  v8 = sub_1C12655A0();
  v63 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v62 = &v54 - v9;
  v64 = v10;
  v68 = sub_1C1263190();
  v66 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v67 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v71 = &v54 - v13;
  LOBYTE(v115[0]) = sub_1C1173D6C(1) & 1;
  v115[1] = v14;
  LOBYTE(v115[2]) = v15 & 1;
  sub_1C12644D0();
  v70 = a2;
  v65 = a3;
  type metadata accessor for OneUpChromeView.Toolbar();
  v16 = swift_getWitnessTable();
  sub_1C10F4FC0();
  sub_1C1264BF0();
  j__swift_release_1();
  v102[168] = v107;
  v103 = v108;
  v104 = v109;
  v105 = v110;
  v106 = v111;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE917F8);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1C12A3440;
  LOBYTE(v7) = sub_1C12644D0();
  *(v17 + 32) = v7;
  v18 = sub_1C12644A0();
  *(v17 + 33) = v18;
  sub_1C12644B0();
  sub_1C12644B0();
  if (sub_1C12644B0() != v7)
  {
    sub_1C12644B0();
  }

  sub_1C12644B0();
  if (sub_1C12644B0() != v18)
  {
    sub_1C12644B0();
  }

  sub_1C1263190();
  v92[11] = v16;
  v92[12] = MEMORY[0x1E6980A30];
  v19 = swift_getWitnessTable();
  sub_1C1264FB0();
  j__swift_release_1();
  memcpy(v115, v112, 0x51uLL);
  v123 = *(a1 + 16);
  v124 = *(a1 + 24);
  v121 = *(a1 + 32);
  v122 = *(a1 + 40);
  v20 = swift_allocObject();
  v21 = v65;
  *(v20 + 16) = v70;
  *(v20 + 24) = v21;
  v22 = *(a1 + 16);
  *(v20 + 32) = *a1;
  *(v20 + 48) = v22;
  *(v20 + 57) = *(a1 + 25);

  sub_1C0FD0AC4();
  sub_1C0FD0AC4();
  v23 = sub_1C1263190();
  v92[9] = v19;
  v92[10] = MEMORY[0x1E697E5D8];
  v24 = swift_getWitnessTable();
  v53 = sub_1C0FF9EE4();
  sub_1C1170098(MEMORY[0x1E69E7DE0], sub_1C1179DC8, 0, sub_1C1178808, v20, v23, MEMORY[0x1E69E7DE0], v24);

  memcpy(v93, v115, 0x51uLL);
  (*(*(v23 - 8) + 8))(v93, v23);
  memcpy(v115, v113, 0x78uLL);
  sub_1C12644C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EC0);
  v25 = sub_1C1263190();
  v26 = sub_1C1179D7C(&qword_1EDE7BAA0, &qword_1EBE94EC0);
  v92[7] = v24;
  v92[8] = v26;
  v27 = swift_getWitnessTable();
  sub_1C1264FB0();
  memcpy(v94, v115, sizeof(v94));
  (*(*(v25 - 8) + 8))(v94, v25);
  memcpy(v102, v114, 0xA1uLL);
  v28 = sub_1C1263190();
  v92[5] = v27;
  v92[6] = MEMORY[0x1E697E5D8];
  v57 = swift_getWitnessTable();
  sub_1C0FDBA4C(v102, v28, v57);
  memcpy(v95, v102, 0xA1uLL);
  v55 = *(v28 - 8);
  v56 = v28;
  v29 = *(v55 + 8);
  v58 = v55 + 8;
  v59 = v29;
  v30 = v29(v95, v28);
  MEMORY[0x1EEE9AC00](v30);
  *(&v54 - 4) = v70;
  *(&v54 - 3) = v21;
  v53 = a1;
  sub_1C10A7F5C();
  v31 = v62;
  sub_1C1265590();
  v32 = v64;
  v33 = swift_getWitnessTable();
  sub_1C10F4FC0();
  sub_1C1264470();
  v34 = v67;
  sub_1C1264BF0();
  (*(v63 + 8))(v31, v32);
  v92[3] = v33;
  v92[4] = MEMORY[0x1E6980A30];
  v35 = v68;
  v65 = swift_getWitnessTable();
  sub_1C0FDBA4C(v34, v35, v65);
  v36 = v66;
  v70 = *(v66 + 8);
  v70(v34, v35);
  sub_1C12659A0();
  sub_1C1262C80();
  v63 = v117;
  v64 = v115[21];
  v61 = v120;
  v62 = v119;
  v98 = 1;
  v97 = v116;
  v96 = v118;
  v37 = sub_1C12644A0();
  sub_1C12628A0();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v46 = v98;
  LOBYTE(v20) = v97;
  LOBYTE(v28) = v96;
  v102[0] = 0;
  memcpy(v100, v115, 0xA1uLL);
  memcpy(v91, v115, 0xA1uLL);
  v92[0] = v91;
  v47 = v71;
  (*(v36 + 16))(v34, v71, v35);
  v76 = 0;
  v77 = v46;
  v78 = v64;
  v79 = v20;
  v80 = v63;
  v81 = v28;
  v82 = v62;
  v83 = v61;
  v84 = v37;
  *v85 = *v99;
  *&v85[3] = *&v99[3];
  v86 = v39;
  v87 = v41;
  v88 = v43;
  v89 = v45;
  v90 = 0;
  v92[1] = v34;
  v92[2] = &v76;
  v48 = v56;
  (*(v55 + 16))(v102, v100, v56);
  v75[0] = v48;
  v75[1] = v35;
  v75[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95600);
  v72 = v57;
  v73 = v65;
  v74 = sub_1C1178870();
  sub_1C119EE80(v92, 3, v75);
  v49 = v47;
  v50 = v70;
  v70(v49, v35);
  memcpy(v101, v115, 0xA1uLL);
  v51 = v59;
  v59(v101, v48);
  v50(v34, v35);
  memcpy(v102, v91, 0xA1uLL);
  return v51(v102, v48);
}

void sub_1C1174FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_23();
  a19 = v21;
  a20 = v22;
  v81 = v20;
  v24 = v23;
  v84 = v25;
  sub_1C1263150();
  OUTLINED_FUNCTION_0();
  v82 = v27;
  v83 = v26;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_13();
  v80 = v29 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95600);
  v32 = *(v24 + 16);
  v31 = *(v24 + 24);
  OUTLINED_FUNCTION_43_8();
  v90 = type metadata accessor for OneUpChromeView.TopBar();
  v91 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE955F8);
  OUTLINED_FUNCTION_43_8();
  v76 = v31;
  type metadata accessor for OneUpChromeMaskedLibraryScrubber();
  v92 = sub_1C1263190();
  v93 = &type metadata for OneUpChromeDebugBar;
  OUTLINED_FUNCTION_28_12();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  OUTLINED_FUNCTION_26_12();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12655A0();
  sub_1C1263190();
  OUTLINED_FUNCTION_43_8();
  type metadata accessor for OneUpChromeView.Toolbar();
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EC0);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_32_10();
  v34 = sub_1C12654C0();
  OUTLINED_FUNCTION_0();
  v75[3] = v35;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v36);
  v38 = v75 - v37;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE940C0);
  OUTLINED_FUNCTION_19_1();
  v39 = sub_1C1263190();
  OUTLINED_FUNCTION_55_3(v39, &a12);
  v77 = v40;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v41);
  v42 = OUTLINED_FUNCTION_50_3();
  OUTLINED_FUNCTION_0();
  v78 = v43;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_51_6(v75 - v45);
  OUTLINED_FUNCTION_0();
  v79 = v46;
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_30();
  v75[2] = v48 - v49;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_47_4(v51, v52, v53, v54, v55, v56, v57, v58, v75[0]);
  v85 = v32;
  v86 = v76;
  v87 = v81;
  sub_1C1012734();
  OUTLINED_FUNCTION_35_8();
  swift_getKeyPath();
  (*(v82 + 104))(v80, *MEMORY[0x1E697E7D0], v83);
  OUTLINED_FUNCTION_1_11();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_44_6();

  v59 = OUTLINED_FUNCTION_34_8();
  v60(v59);
  OUTLINED_FUNCTION_8_11();
  v61(v38, v34);
  v62 = sub_1C12644A0();
  OUTLINED_FUNCTION_0_0();
  v64 = sub_1C1179D7C(v63, &qword_1EBE940C0);
  OUTLINED_FUNCTION_20_20(v64);
  v65 = v75[1];
  swift_getWitnessTable();
  OUTLINED_FUNCTION_31_11();
  OUTLINED_FUNCTION_8_11();
  v66(v30, v65);
  v67 = sub_1C1264460();
  v68 = OUTLINED_FUNCTION_58_2(MEMORY[0x1E697E5D8]);
  OUTLINED_FUNCTION_57_0();
  sub_1C10F4FC0();
  OUTLINED_FUNCTION_45_7();
  OUTLINED_FUNCTION_8_11();
  v69(WitnessTable, v42);
  v88 = v68;
  v89 = MEMORY[0x1E6980A30];
  OUTLINED_FUNCTION_32_5();
  v70 = swift_getWitnessTable();
  OUTLINED_FUNCTION_33_10(v70);
  v71 = OUTLINED_FUNCTION_53_4();
  v62(v71);
  v72 = OUTLINED_FUNCTION_32_5();
  sub_1C0FDBA4C(v72, v73, v67);
  v74 = OUTLINED_FUNCTION_32_5();
  v62(v74);
  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C1175510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v70 = a1;
  v67 = a4;
  v68 = a3;
  v119[0] = type metadata accessor for OneUpChromeView.TopBar();
  v119[1] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE955F8);
  v69 = a2;
  type metadata accessor for OneUpChromeMaskedLibraryScrubber();
  v119[2] = sub_1C1263190();
  v119[3] = &type metadata for OneUpChromeDebugBar;
  swift_getTupleTypeMetadata();
  sub_1C1265B00();
  swift_getWitnessTable();
  v5 = sub_1C12655A0();
  v66 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v53 - v6;
  v8 = sub_1C1263190();
  v71 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v53 - v12;
  sub_1C12659A0();
  sub_1C1262C80();
  v57 = v119[29];
  v61 = v123;
  v59 = v121;
  v60 = v124;
  v131 = 1;
  v130 = v120;
  v129 = v122;
  v58 = sub_1C12644C0();
  sub_1C12628A0();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v54 = v131;
  v55 = v130;
  v56 = v129;
  LOBYTE(v119[0]) = 0;
  v72 = a2;
  v73 = v68;
  v74 = v70;
  sub_1C10A7F5C();
  sub_1C1265590();
  WitnessTable = swift_getWitnessTable();
  sub_1C10F4FC0();
  sub_1C1264470();
  sub_1C1264BF0();
  (*(v66 + 8))(v7, v5);
  v119[27] = WitnessTable;
  v119[28] = MEMORY[0x1E6980A30];
  v23 = swift_getWitnessTable();
  v64 = v13;
  v53 = v23;
  sub_1C0FDBA4C(v10, v8, v23);
  v24 = *(v71 + 8);
  v65 = v10;
  v66 = v8;
  v25 = v10;
  v26 = v68;
  v62 = v24;
  v63 = v71 + 8;
  v24(v25, v8);
  LOBYTE(v119[0]) = sub_1C1173D6C(1) & 1;
  v119[1] = v27;
  LOBYTE(v119[2]) = v28 & 1;
  sub_1C12644D0();
  type metadata accessor for OneUpChromeView.Toolbar();
  v29 = swift_getWitnessTable();
  sub_1C10F4FC0();
  sub_1C1264BF0();
  j__swift_release_1();
  v105[216] = v110;
  v106 = v111;
  v107 = v112;
  v108 = v113;
  v109 = v114;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE917F8);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1C12A3440;
  LOBYTE(a2) = sub_1C12644D0();
  *(v30 + 32) = a2;
  v31 = sub_1C12644C0();
  *(v30 + 33) = v31;
  sub_1C12644B0();
  sub_1C12644B0();
  if (sub_1C12644B0() != a2)
  {
    sub_1C12644B0();
  }

  sub_1C12644B0();
  if (sub_1C12644B0() != v31)
  {
    sub_1C12644B0();
  }

  sub_1C1263190();
  v98[11] = v29;
  v98[12] = MEMORY[0x1E6980A30];
  v32 = swift_getWitnessTable();
  sub_1C1264FB0();
  j__swift_release_1();
  memcpy(v119, v115, 0x51uLL);
  sub_1C12644A0();
  v33 = sub_1C1263190();
  v98[9] = v32;
  v98[10] = MEMORY[0x1E697E5D8];
  v34 = MEMORY[0x1E697E5D8];
  v35 = swift_getWitnessTable();
  sub_1C1264FB0();
  memcpy(v99, v119, 0x51uLL);
  (*(*(v33 - 8) + 8))(v99, v33);
  memcpy(v119, v116, 0x81uLL);
  v36 = v70;
  v127 = *(v70 + 16);
  v128 = *(v70 + 24);
  v125 = *(v70 + 32);
  v126 = *(v70 + 40);
  v37 = swift_allocObject();
  *(v37 + 16) = v69;
  *(v37 + 24) = v26;
  v38 = v36[1];
  *(v37 + 32) = *v36;
  *(v37 + 48) = v38;
  *(v37 + 57) = *(v36 + 25);

  sub_1C0FD0AC4();
  sub_1C0FD0AC4();
  v39 = sub_1C1263190();
  v98[7] = v35;
  v98[8] = v34;
  v40 = swift_getWitnessTable();
  sub_1C0FF9EE4();
  sub_1C1170098(MEMORY[0x1E69E7DE0], sub_1C1179DC8, 0, sub_1C1178A18, v37, v39, MEMORY[0x1E69E7DE0], v40);

  memcpy(v100, v119, 0x81uLL);
  (*(*(v39 - 8) + 8))(v100, v39);
  memcpy(v119, v117, 0xA8uLL);
  sub_1C12644A0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EC0);
  v41 = sub_1C1263190();
  v42 = sub_1C1179D7C(&qword_1EDE7BAA0, &qword_1EBE94EC0);
  v98[5] = v40;
  v98[6] = v42;
  v43 = swift_getWitnessTable();
  sub_1C1264FB0();
  memcpy(v101, v119, sizeof(v101));
  (*(*(v41 - 8) + 8))(v101, v41);
  memcpy(v105, v118, 0xD1uLL);
  v44 = sub_1C1263190();
  v98[3] = v43;
  v98[4] = v34;
  v45 = swift_getWitnessTable();
  sub_1C0FDBA4C(v105, v44, v45);
  memcpy(v102, v105, 0xD1uLL);
  v46 = *(v44 - 8);
  v47 = *(v46 + 8);
  v47(v102, v44);
  v80 = 0;
  v81 = v54;
  *v82 = v135[0];
  *&v82[3] = *(v135 + 3);
  v83 = v57;
  v84 = v55;
  *v85 = *v134;
  *&v85[3] = *&v134[3];
  v86 = v59;
  v87 = v56;
  *&v88[3] = *&v133[3];
  *v88 = *v133;
  v89 = v61;
  v90 = v60;
  v91 = v58;
  *&v92[3] = *&v132[3];
  *v92 = *v132;
  v93 = v15;
  v94 = v17;
  v95 = v19;
  v96 = v21;
  v97 = 0;
  v98[0] = &v80;
  v49 = v64;
  v48 = v65;
  v50 = v66;
  (*(v71 + 16))(v65, v64, v66);
  v98[1] = v48;
  memcpy(v103, v119, 0xD1uLL);
  memcpy(v79, v119, 0xD1uLL);
  v98[2] = v79;
  (*(v46 + 16))(v105, v103, v44);
  v78[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95600);
  v78[1] = v50;
  v78[2] = v44;
  v75 = sub_1C1178870();
  v76 = v53;
  v77 = v45;
  sub_1C119EE80(v98, 3, v78);
  memcpy(v104, v119, 0xD1uLL);
  v47(v104, v44);
  v51 = v62;
  v62(v49, v50);
  memcpy(v105, v79, 0xD1uLL);
  v47(v105, v44);
  return v51(v48, v50);
}

void sub_1C1176064()
{
  OUTLINED_FUNCTION_23();
  v1 = v0;
  v38 = v2;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE955F8);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_30();
  v39 = v4 - v5;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v28 - v7;
  sub_1C1172BC4(&v65);
  v73 = v67;
  v74 = v68;
  v71 = v66;
  v72 = BYTE8(v66);
  v69 = v65;
  v70 = BYTE8(v65);
  LOBYTE(v78[3]) = v68;
  v78[1] = v66;
  v78[2] = v67;
  v78[0] = v65;
  OUTLINED_FUNCTION_32_10();
  v9 = type metadata accessor for OneUpChromeView.TopBar();
  v35 = v9;
  OUTLINED_FUNCTION_7_33();
  WitnessTable = swift_getWitnessTable();
  sub_1C0FDBA4C(v78, v9, WitnessTable);
  sub_1C0FD1A5C(&v69, &qword_1EBE955E8);
  sub_1C0FD1A5C(&v71, &qword_1EBE92928);
  sub_1C0FD1A5C(&v73, &qword_1EBE92930);
  *v8 = sub_1C1263AA0();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v40 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95610);
  sub_1C11765C4(&v8[*(v10 + 44)]);
  v77[0] = sub_1C10CA974(*v1);
  v77[1] = v11;
  v77[2] = v12;
  LOBYTE(v77[3]) = v13 & 1;

  sub_1C1264490();
  OUTLINED_FUNCTION_32_10();
  type metadata accessor for OneUpChromeMaskedLibraryScrubber();
  v14 = swift_getWitnessTable();
  sub_1C1264FB0();

  j__swift_release_1();
  memcpy(v77, v78, 0x49uLL);
  OUTLINED_FUNCTION_32_10();
  v15 = sub_1C1263190();
  v56[4] = v14;
  v56[5] = MEMORY[0x1E697E5D8];
  OUTLINED_FUNCTION_4_0();
  v32 = swift_getWitnessTable();
  sub_1C0FDBA4C(v77, v15, v32);
  memcpy(v75, v77, 0x49uLL);
  v16 = *(v15 - 8);
  v17 = *(v16 + 8);
  v33 = v16 + 8;
  v34 = v17;
  v17(v75, v15);
  KeyPath = swift_getKeyPath();
  v19 = v62;
  v20 = v63;
  HIDWORD(v28) = v64;
  v49 = v58;
  v29 = v58;
  v50 = v59;
  v30 = v59;
  v51 = v60;
  v31 = v60;
  v52 = v61;
  v53 = v62;
  v54 = v63;
  v55 = v64;
  v56[0] = &v49;
  v21 = v39;
  sub_1C0FD0AC4();
  v56[1] = v21;
  memcpy(v76, v57, 0x49uLL);
  memcpy(v48, v57, 0x49uLL);
  v46 = KeyPath;
  v47 = 0;
  v56[2] = v48;
  v56[3] = &v46;
  j__swift_retain();

  v22 = v20;
  LOBYTE(v20) = BYTE4(v28);
  sub_1C1058CE4(v19, v22, SBYTE4(v28));
  (*(v16 + 16))(v78, v76, v15);

  v45[0] = v35;
  v45[1] = v37;
  v45[2] = v15;
  v45[3] = &type metadata for OneUpChromeDebugBar;
  v41 = WitnessTable;
  v42 = sub_1C1179D7C(&qword_1EBE95618, &qword_1EBE955F8);
  v43 = v32;
  v44 = sub_1C10F8A98();
  sub_1C119EE80(v56, 4, v45);

  memcpy(v77, v57, 0x49uLL);
  v23 = v34;
  v34(v77, v15);
  sub_1C0FD1A5C(v40, &qword_1EBE955F8);
  j__swift_release_1();

  v24 = OUTLINED_FUNCTION_34_8();
  sub_1C0FF9034(v24, v25, v20);
  j__swift_release_1();
  memcpy(v78, v48, 0x49uLL);
  v23(v78, v15);
  sub_1C0FD1A5C(v39, &qword_1EBE955F8);
  v26 = v53;
  v27 = v54;
  LOBYTE(v19) = v55;
  j__swift_release_1();

  sub_1C0FF9034(v26, v27, v19);
  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C11765C4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for OneUpChromeVideoControls();
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_30();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  *v9 = swift_getKeyPath();
  v9[8] = 0;
  *(v9 + 2) = swift_getKeyPath();
  v9[24] = 0;
  *(v9 + 4) = swift_getKeyPath();
  *(v9 + 5) = 0;
  v9[48] = 0;
  v10 = *(v3 + 36);
  *&v9[v10] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90428);
  swift_storeEnumTagMultiPayload();
  v11 = *(v3 + 40);
  *&v9[v11] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  sub_1C1178900(v9, v6);
  *a1 = 0;
  *(a1 + 8) = 1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBE95620);
  sub_1C1178900(v6, a1 + *(v12 + 48));
  sub_1C1178964(v9);
  return sub_1C1178964(v6);
}

uint64_t sub_1C1176740(double *a1, uint64_t a2, uint64_t a3, uint64_t a4, double (*a5)(uint64_t), void (*a6)(double))
{
  v10 = sub_1C12637E0();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13();
  v16 = v15 - v14;
  v17 = *a1;
  v18 = *(a2 + 32);
  v22 = v18;
  v23 = *(a2 + 40);

  if ((v23 & 1) == 0)
  {
    sub_1C1266420();
    v20 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(&v22, &qword_1EBE955E8);
    result = (*(v12 + 8))(v16, v10);
    v18 = v21;
  }

  if (v18)
  {
    if (v17 != a5(result))
    {
      a6(v17);
    }
  }

  return result;
}

void sub_1C1176914()
{
  OUTLINED_FUNCTION_23();
  v27 = v0;
  v28 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_1C12637E0();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13();
  v16 = v15 - v14;
  if ((v5 & 1) == 0)
  {

    sub_1C1266420();
    v25 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    j__swift_release_1();
    (*(v12 + 8))(v16, v10);
    if (v31)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1C1112950(v30);
    goto LABEL_6;
  }

  v31 = v7;

  if (!v7)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1C12135E0();

  v17 = v9 & 1;
  sub_1C1210800(v9 & 1, &v32);
  v26 = v32;
  v18 = v33;
  v19 = v34;
  v20 = v35;
  KeyPath = swift_getKeyPath();
  v37 = v20;
  v36 = 0;
  v22 = swift_allocObject();
  *(v22 + 16) = v3;
  *(v22 + 24) = v27;
  *(v22 + 32) = v17;
  *(v22 + 40) = v7;
  *(v22 + 48) = v5 & 1;
  v23 = swift_getKeyPath();
  v24 = swift_getKeyPath();
  v39 = 0;
  v38 = 0;
  v29[0] = v26;
  *&v29[1] = v18;
  DWORD2(v29[1]) = v19;
  BYTE12(v29[1]) = v20;
  v29[2] = KeyPath;
  LOBYTE(v29[3]) = 0;
  *(&v29[3] + 1) = sub_1C0FA84D0;
  *&v29[4] = 0;
  *(&v29[4] + 1) = sub_1C1178FEC;
  *&v29[5] = v22;
  BYTE8(v29[5]) = 2;
  v29[6] = 0uLL;
  *&v29[7] = v23;
  BYTE8(v29[7]) = 0;
  *&v29[8] = v24;
  BYTE8(v29[8]) = 0;
  nullsub_1(v29);
  j__swift_retain();
  memcpy(v30, v29, 0x89uLL);
LABEL_6:
  memcpy(v28, v30, 0x89uLL);
  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C1176BAC(double *a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = sub_1C12637E0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = a1[1];

  if ((a4 & 1) == 0)
  {
    sub_1C1266420();
    v14 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    j__swift_release_1();
    result = (*(v8 + 8))(v10, v7);
    a3 = v15[1];
  }

  if (a3)
  {
    sub_1C1214148(v11, v12);
  }

  return result;
}

void sub_1C1176D34()
{
  OUTLINED_FUNCTION_23();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95740);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v28 - v7;
  v9 = sub_1C12637E0();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13();
  v15 = v14 - v13;
  v30 = *(v0 + 8);
  v16 = *v0;
  v29 = *v0;
  v17 = v30;

  if ((v17 & 1) == 0)
  {
    sub_1C1266420();
    v18 = sub_1C1264410();
    v28[0] = v0;
    v19 = v5;
    v20 = v2;
    v21 = v4;
    v22 = v18;
    sub_1C1262620();

    v4 = v21;
    v2 = v20;
    v5 = v19;
    v0 = v28[0];
    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(&v29, &qword_1EBE955E8);
    (*(v11 + 8))(v15, v9);
    v16 = v28[1];
  }

  v23 = 1;
  if (v16)
  {
    *v8 = sub_1C1263AA0();
    *(v8 + 1) = 0;
    v8[16] = 0;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95748);
    sub_1C1176F90(v0, v16, *(v2 + 24), &v8[*(v24 + 44)]);

    KeyPath = swift_getKeyPath();
    v26 = swift_getKeyPath();
    v27 = &v8[*(v5 + 36)];
    *v27 = 1;
    *(v27 + 1) = 0;
    *(v27 + 2) = 0;
    *(v27 + 3) = KeyPath;
    v27[32] = 0;
    *(v27 + 5) = v26;
    v27[48] = 0;
    sub_1C0FC0614();
    v23 = 0;
  }

  __swift_storeEnumTagSinglePayload(v4, v23, 1, v5);
  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C1176F90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v80 = a3;
  v85 = a4;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95750);
  v73 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v72 = &v68 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95758);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v84 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v82 = &v68 - v10;
  v71 = sub_1C12637E0();
  v70 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v69 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OneUpTopBar();
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95760);
  v17 = v16 - 8;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v68 - v18;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95768);
  MEMORY[0x1EEE9AC00](v75);
  v21 = &v68 - v20;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95770);
  MEMORY[0x1EEE9AC00](v77);
  v23 = &v68 - v22;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95778);
  MEMORY[0x1EEE9AC00](v76);
  v81 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v68 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v78 = &v68 - v29;
  v74 = type metadata accessor for OneUpChromeView.TopBar();
  sub_1C1177954(__src);
  v30 = __src[0];
  *(v15 + 3) = type metadata accessor for OneUpChromeViewModel();
  *(v15 + 4) = sub_1C1178FA8(&qword_1EDE7D3D0, type metadata accessor for OneUpChromeViewModel);
  *v15 = a2;
  *(v15 + 6) = swift_getKeyPath();
  *(v15 + 7) = 0;
  v15[64] = 0;
  *(v15 + 9) = swift_getKeyPath();
  v15[80] = 0;
  v31 = *(v13 + 40);
  *&v15[v31] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
  swift_storeEnumTagMultiPayload();
  v15[40] = v30;
  v79 = a2;

  sub_1C12659A0();
  sub_1C1263390();
  sub_1C1178EE4(v15, v19);
  memcpy(&v19[*(v17 + 44)], __src, 0x70uLL);
  v32 = sub_1C1264480();
  v94 = *(a1 + 16);
  v80 = a1;
  v95 = *(a1 + 24);
  LOBYTE(v17) = v95;

  if ((v17 & 1) == 0)
  {
    sub_1C1266420();
    v33 = sub_1C1264410();
    sub_1C1262620();

    v34 = v69;
    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(&v94, &qword_1EBE92928);
    (*(v70 + 8))(v34, v71);
  }

  sub_1C122336C();

  sub_1C12628A0();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  sub_1C1178F50();
  v43 = &v21[*(v75 + 36)];
  *v43 = v32;
  *(v43 + 1) = v36;
  *(v43 + 2) = v38;
  *(v43 + 3) = v40;
  *(v43 + 4) = v42;
  v43[40] = 0;
  v44 = sub_1C1264490();
  sub_1C12628A0();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  sub_1C1178F50();
  v53 = &v23[*(v77 + 36)];
  *v53 = v44;
  *(v53 + 1) = v46;
  *(v53 + 2) = v48;
  *(v53 + 3) = v50;
  *(v53 + 4) = v52;
  v53[40] = 0;
  sub_1C1178F50();
  v54 = &v27[*(v76 + 36)];
  *v54 = sub_1C116302C;
  *(v54 + 1) = 0;
  v55 = v79;
  *(v54 + 2) = sub_1C1178F48;
  *(v54 + 3) = v55;
  v56 = v78;
  sub_1C1178F50();

  if (sub_1C1177CD4())
  {
    KeyPath = swift_getKeyPath();
    v58 = swift_getKeyPath();
    type metadata accessor for OneUpSpatialPhotoBadgeStateModel();
    sub_1C1178FA8(&qword_1EDE7C6C8, type metadata accessor for OneUpSpatialPhotoBadgeStateModel);
    v59 = sub_1C1262A80();
    v86 = KeyPath;
    v87 = 0;
    v88 = 0;
    v89 = v58;
    v90 = 0;
    v91 = v59;
    v92 = v60 & 1;
    if (qword_1EDE82FD8 != -1)
    {
      swift_once();
    }

    sub_1C10F90E0();
    v61 = v72;
    sub_1C1264A20();

    v62 = v82;
    v63 = v83;
    (*(v73 + 32))(v82, v61, v83);
    v64 = 0;
  }

  else
  {
    v64 = 1;
    v63 = v83;
    v62 = v82;
  }

  __swift_storeEnumTagSinglePayload(v62, v64, 1, v63);
  v65 = v81;
  sub_1C0FD0AC4();
  v66 = v84;
  sub_1C0FC0674();
  sub_1C0FD0AC4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95780);
  sub_1C0FC0674();
  sub_1C0FC06D4(v62);
  sub_1C0FD1A5C(v56, &qword_1EBE95778);
  sub_1C0FC06D4(v66);
  return sub_1C0FD1A5C(v65, &qword_1EBE95778);
}

void sub_1C1177954(char *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1C12637E0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v1 + 8);
  v22 = *v1;
  v8 = v22;
  v9 = v23;

  v10 = v8;
  if ((v9 & 1) == 0)
  {
    sub_1C1266420();
    v11 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(&v22, &qword_1EBE955E8);
    (*(v5 + 8))(v7, v4);
    v10 = v20;
  }

  if (v10 && (sub_1C121380C(), , (v20 & 1) != 0))
  {
    v12 = 0x80;
  }

  else
  {

    if ((v9 & 1) == 0)
    {
      sub_1C1266420();
      v13 = sub_1C1264410();
      sub_1C1262620();

      sub_1C12637D0();
      swift_getAtKeyPath();
      sub_1C0FD1A5C(&v22, &qword_1EBE955E8);
      (*(v5 + 8))(v7, v4);
      v8 = v20;
    }

    if (!v8 || (sub_1C1213358(), , v14 = v20, v20 == 3))
    {
      v14 = 0;
    }

    v19 = v14;
    v21 = *(v2 + 24);
    v20 = v2[2];
    v15 = v21;

    if ((v15 & 1) == 0)
    {
      sub_1C1266420();
      v16 = sub_1C1264410();
      sub_1C1262620();

      sub_1C12637D0();
      swift_getAtKeyPath();
      sub_1C0FD1A5C(&v20, &qword_1EBE92928);
      (*(v5 + 8))(v7, v4);
    }

    v17 = sub_1C1224CE4();

    sub_1C119135C(&v19, 1, (v17 & 1) == 0, &v18);
    v12 = v18;
  }

  *a1 = v12;
}

void sub_1C1177C94(double *a1)
{
  v1 = *a1;
  if (v1 != sub_1C1212A0C())
  {
    sub_1C1211490(v1);
  }
}

uint64_t sub_1C1177D4C()
{
  v1 = sub_1C12637E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  v11[0] = *v0;
  v11[1] = v5;
  v11[2] = *(v0 + 32);
  v12 = *(v0 + 48);
  v13 = *(v0 + 40);
  v14 = v12;
  v6 = v12;

  if ((v6 & 1) == 0)
  {
    sub_1C1266420();
    v7 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(&v13, &qword_1EBE92928);
    (*(v2 + 8))(v4, v1);
  }

  sub_1C1222454();

  v8 = sub_1C1265A60();
  MEMORY[0x1EEE9AC00](v8);
  *(&v10 - 2) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95728);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95730);
  sub_1C1179D7C(&unk_1EDE7BB58, &qword_1EBE95728);
  sub_1C1178E2C();
  sub_1C1265030();
}

uint64_t sub_1C1177FD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1C12637E0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 8);
  if (!v11 || (v12 = 0.0, (v11(v8) & 1) != 0))
  {
    v13 = *(a2 + 16);
    v19[0] = *a2;
    v19[1] = v13;
    v19[2] = *(a2 + 32);
    v20 = *(a2 + 48);
    v12 = 0.0;
    if (sub_1C11781FC())
    {
      BYTE8(v19[0]) = *(a2 + 48);
      *&v19[0] = *(a2 + 40);
      v14 = BYTE8(v19[0]);

      if ((v14 & 1) == 0)
      {
        sub_1C1266420();
        v15 = sub_1C1264410();
        sub_1C1262620();

        sub_1C12637D0();
        swift_getAtKeyPath();
        sub_1C0FD1A5C(v19, &qword_1EBE92928);
        (*(v7 + 8))(v10, v6);
      }

      v12 = sub_1C122607C();
    }
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95738);
  (*(*(v16 - 8) + 16))(a3, a1, v16);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95730);
  *(a3 + *(result + 36)) = v12;
  return result;
}

uint64_t sub_1C11781FC()
{
  v1 = sub_1C12637E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 3);
  v7 = v0[32];

  if ((v7 & 1) == 0)
  {
    sub_1C1266420();
    v8 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    j__swift_release_1();
    (*(v2 + 8))(v4, v1);
    v6 = v12;
  }

  if (v6)
  {
    HIBYTE(v11) = v5;
    v9 = sub_1C121486C(&v11 + 7);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_1C1178378(uint64_t a1)
{
  swift_weakInit();
  if (a1)
  {
    swift_weakAssign();
  }

  else
  {

    return 0;
  }

  return v1;
}

uint64_t sub_1C11783D0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

void sub_1C117845C()
{
  type metadata accessor for OneUpChromeViewModel();
  if (v0 <= 0x3F)
  {
    sub_1C10F89D0(319, &qword_1EDE775D0, &qword_1EBE93D88);
    if (v1 <= 0x3F)
    {
      sub_1C10F89D0(319, &qword_1EDE77668, &qword_1EBE91478);
      if (v2 <= 0x3F)
      {
        sub_1C1007F88();
        if (v3 <= 0x3F)
        {
          sub_1C10F8858(319, &qword_1EDE775E0, type metadata accessor for OneUpChromeSpec);
          if (v4 <= 0x3F)
          {
            sub_1C0FDAA88();
            if (v5 <= 0x3F)
            {
              sub_1C10F8858(319, &qword_1EDE77590, MEMORY[0x1E697DBD0]);
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

uint64_t sub_1C117860C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C1178648(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_1C1178688(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C1178870()
{
  result = qword_1EBE95608;
  if (!qword_1EBE95608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95600);
    sub_1C10F9200();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE95608);
  }

  return result;
}

uint64_t sub_1C1178900(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OneUpChromeVideoControls();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1178964(uint64_t a1)
{
  v2 = type metadata accessor for OneUpChromeVideoControls();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_51Tm()
{

  j__swift_release_1();

  return swift_deallocObject();
}

uint64_t sub_1C1178A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {

    return j__swift_release_1();
  }

  else
  {

    j__swift_release_1();
  }
}

unint64_t sub_1C1178AF4()
{
  result = qword_1EDE7CAA8;
  if (!qword_1EDE7CAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7CAA8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_SbIegd_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C1178B70(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 49))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C1178BC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1C1178C38()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C1178C74(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[17])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = v3 - 2;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C1178CB0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C1178CEC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 49))
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

uint64_t sub_1C1178D2C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_1C1178E2C()
{
  result = qword_1EDE7BF30;
  if (!qword_1EDE7BF30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95730);
    sub_1C1179D7C(&qword_1EDE7BAC0, &qword_1EBE95738);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BF30);
  }

  return result;
}

uint64_t sub_1C1178EE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OneUpTopBar();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1178F50()
{
  OUTLINED_FUNCTION_17_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_3();
  v2 = OUTLINED_FUNCTION_18();
  v3(v2);
  return v0;
}

uint64_t sub_1C1178FA8(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_15_22();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C1179008()
{
  result = qword_1EBE95798;
  if (!qword_1EBE95798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95740);
    sub_1C1179D7C(&qword_1EBE957A0, &qword_1EBE957A8);
    sub_1C10CAB10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE95798);
  }

  return result;
}

uint64_t sub_1C11790C0(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    OUTLINED_FUNCTION_17();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C117912C()
{
  result = qword_1EBE957C0;
  if (!qword_1EBE957C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE957C8);
    sub_1C11791B8();
    sub_1C10CAB10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE957C0);
  }

  return result;
}

unint64_t sub_1C11791B8()
{
  result = qword_1EBE957D0;
  if (!qword_1EBE957D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE957D8);
    sub_1C1179270();
    sub_1C1179D7C(&qword_1EDE7BA88, &qword_1EBE93AE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE957D0);
  }

  return result;
}

unint64_t sub_1C1179270()
{
  result = qword_1EBE957E0;
  if (!qword_1EBE957E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE957E8);
    sub_1C11792FC();
    sub_1C109739C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE957E0);
  }

  return result;
}

unint64_t sub_1C11792FC()
{
  result = qword_1EDE76E10;
  if (!qword_1EDE76E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE957F0);
    sub_1C1179388();
    sub_1C11799FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76E10);
  }

  return result;
}

unint64_t sub_1C1179388()
{
  result = qword_1EDE7BBC0;
  if (!qword_1EDE7BBC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE957F8);
    sub_1C1179414();
    sub_1C1179708();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BBC0);
  }

  return result;
}

unint64_t sub_1C1179414()
{
  result = qword_1EDE7BBE0;
  if (!qword_1EDE7BBE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95800);
    sub_1C11794A0();
    sub_1C11795D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BBE0);
  }

  return result;
}

unint64_t sub_1C11794A0()
{
  result = qword_1EDE7BC30;
  if (!qword_1EDE7BC30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95808);
    sub_1C117952C();
    sub_1C1179580();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BC30);
  }

  return result;
}

unint64_t sub_1C117952C()
{
  result = qword_1EDE7CA90;
  if (!qword_1EDE7CA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7CA90);
  }

  return result;
}

unint64_t sub_1C1179580()
{
  result = qword_1EDE7CAA0;
  if (!qword_1EDE7CAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7CAA0);
  }

  return result;
}

unint64_t sub_1C11795D4()
{
  result = qword_1EDE7BC18;
  if (!qword_1EDE7BC18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95810);
    sub_1C1179660();
    sub_1C11796B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BC18);
  }

  return result;
}

unint64_t sub_1C1179660()
{
  result = qword_1EDE7C7D0;
  if (!qword_1EDE7C7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7C7D0);
  }

  return result;
}

unint64_t sub_1C11796B4()
{
  result = qword_1EDE7C6E8;
  if (!qword_1EDE7C6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7C6E8);
  }

  return result;
}

unint64_t sub_1C1179708()
{
  result = qword_1EDE7BBD8;
  if (!qword_1EDE7BBD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95818);
    sub_1C1179794();
    sub_1C11798C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BBD8);
  }

  return result;
}

unint64_t sub_1C1179794()
{
  result = qword_1EDE7BC20;
  if (!qword_1EDE7BC20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95820);
    sub_1C1179820();
    sub_1C1179874();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BC20);
  }

  return result;
}

unint64_t sub_1C1179820()
{
  result = qword_1EDE7C8A0;
  if (!qword_1EDE7C8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7C8A0);
  }

  return result;
}

unint64_t sub_1C1179874()
{
  result = qword_1EDE7C898;
  if (!qword_1EDE7C898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7C898);
  }

  return result;
}

unint64_t sub_1C11798C8()
{
  result = qword_1EDE7BC28;
  if (!qword_1EDE7BC28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95828);
    sub_1C1179954();
    sub_1C11799A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BC28);
  }

  return result;
}

unint64_t sub_1C1179954()
{
  result = qword_1EDE7C948[0];
  if (!qword_1EDE7C948[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE7C948);
  }

  return result;
}

unint64_t sub_1C11799A8()
{
  result = qword_1EDE7CB50;
  if (!qword_1EDE7CB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7CB50);
  }

  return result;
}

unint64_t sub_1C11799FC()
{
  result = qword_1EDE76E18;
  if (!qword_1EDE76E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95830);
    sub_1C1179A88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76E18);
  }

  return result;
}

unint64_t sub_1C1179A88()
{
  result = qword_1EDE76E38;
  if (!qword_1EDE76E38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95838);
    sub_1C1179B14();
    sub_1C1179C48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76E38);
  }

  return result;
}

unint64_t sub_1C1179B14()
{
  result = qword_1EDE7BC48;
  if (!qword_1EDE7BC48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95840);
    sub_1C1179BA0();
    sub_1C1179BF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BC48);
  }

  return result;
}

unint64_t sub_1C1179BA0()
{
  result = qword_1EDE7D6B0;
  if (!qword_1EDE7D6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7D6B0);
  }

  return result;
}

unint64_t sub_1C1179BF4()
{
  result = qword_1EDE7CB40;
  if (!qword_1EDE7CB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7CB40);
  }

  return result;
}

unint64_t sub_1C1179C48()
{
  result = qword_1EDE76EE0;
  if (!qword_1EDE76EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95848);
    sub_1C1179CD4();
    sub_1C1179D28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76EE0);
  }

  return result;
}

unint64_t sub_1C1179CD4()
{
  result = qword_1EDE77918;
  if (!qword_1EDE77918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77918);
  }

  return result;
}

unint64_t sub_1C1179D28()
{
  result = qword_1EDE77718;
  if (!qword_1EDE77718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77718);
  }

  return result;
}

uint64_t sub_1C1179D7C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    OUTLINED_FUNCTION_15_22();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_31_11()
{

  return sub_1C1264FB0();
}

uint64_t OUTLINED_FUNCTION_50_3()
{

  return sub_1C1263190();
}

uint64_t OUTLINED_FUNCTION_51_6@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 256) = a1;

  return sub_1C1263190();
}

uint64_t OUTLINED_FUNCTION_58_2@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 152) = v1;
  *(v2 - 144) = a1;

  return swift_getWitnessTable();
}

uint64_t PhotosSearchBarTokenSizer.tokenMatchingLeadingOffset(from:)@<X0>(__C::_NSRange_optional a1@<0:X0, 8:X1, 16:W2.1>)
{
  a1.is_nil &= 1u;
  PhotosSearchBarTokenSizer.tokenMatchingRect(from:)(&v7, a1);
  if (v7.is_nil)
  {
    return 0;
  }

  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_8;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2 || (v3 = v2, [v2 effectiveUserInterfaceLayoutDirection] != 1))
  {
    swift_unknownObjectRelease();
LABEL_8:
    v10.origin.x = OUTLINED_FUNCTION_19_2();
    MinX = CGRectGetMinX(v10);
    return *&MinX;
  }

  [v3 frame];
  Width = CGRectGetWidth(v8);
  v9.origin.x = OUTLINED_FUNCTION_19_2();
  MaxX = CGRectGetMaxX(v9);
  swift_unknownObjectRelease();
  MinX = Width - MaxX;
  return *&MinX;
}

void __swiftcall PhotosSearchBarTokenSizer.tokenMatchingRect(from:)(__C::CGRect_optional *__return_ptr retstr, __C::_NSRange_optional from)
{
  if (from.is_nil)
  {
    v3 = sub_1C117A1D8();
  }

  else
  {
    v3 = sub_1C117A090(from.value.location, from.value.length);
  }

  v4 = v3;
  v5 = 0;
  if (v3)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong firstRectForRange_];
      v14 = v7;
      v15 = v8;
      v13 = v9;
      v16 = v10;

      swift_unknownObjectRelease();
      v12.width = v13;
      v5.x = v14;
      v11 = 0;
      v5.y = v15;
      v12.height = v16;
    }

    else
    {

      v11 = 1;
      v12 = 0;
      v5 = 0;
    }
  }

  else
  {
    v11 = 1;
    v12 = 0;
  }

  retstr->value.origin = v5;
  retstr->value.size = v12;
  retstr->is_nil = v11;
}

UITextRange_optional __swiftcall PhotosSearchBarTokenSizer.tokenMatchingTextRange(from:)(__C::_NSRange_optional from)
{
  if (from.is_nil)
  {
    v1 = sub_1C117A1D8();
  }

  else
  {
    v1 = sub_1C117A090(from.value.location, from.value.length);
  }

  result.value.super.isa = v1;
  result.is_nil = v2;
  return result;
}

id sub_1C117A090(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v5 = [Strong beginningOfDocument];
  swift_unknownObjectRelease();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (!v6 || (v7 = [v6 positionFromPosition:v5 offset:a1], swift_unknownObjectRelease(), !v7))
  {

    return 0;
  }

  v8 = swift_unknownObjectWeakLoadStrong();
  if (!v8 || (v9 = [v8 positionFromPosition:v7 offset:a2], swift_unknownObjectRelease(), !v9))
  {

    return 0;
  }

  v10 = swift_unknownObjectWeakLoadStrong();
  if (!v10)
  {

    return 0;
  }

  v11 = [v10 textRangeFromPosition:v7 toPosition:v9];
  swift_unknownObjectRelease();

  return v11;
}

id sub_1C117A1D8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = [Strong endOfDocument];
  swift_unknownObjectRelease();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (!v2 || (v3 = [v2 positionFromPosition:v1 offset:-1], swift_unknownObjectRelease(), !v3))
  {

    return 0;
  }

  v4 = swift_unknownObjectWeakLoadStrong();
  if (!v4)
  {

    return 0;
  }

  v5 = [v4 textRangeFromPosition:v3 toPosition:v1];
  swift_unknownObjectRelease();

  return v5;
}

BOOL static PhotosSearchBarTokenSizer.== infix(_:_:)()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = swift_unknownObjectWeakLoadStrong();
  v2 = v1;
  if (Strong)
  {
    if (v1)
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return Strong == v2;
    }

    goto LABEL_5;
  }

  if (v1)
  {
LABEL_5:
    swift_unknownObjectRelease();
    return 0;
  }

  return 1;
}

uint64_t PhotosSearchBarTokenSizer.__deallocating_deinit()
{
  sub_1C0FF4BE4(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

double PhotosPlaceholderSearchBar.init(placeholder:tapAction:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  [objc_allocWithZone(MEMORY[0x1E696AAB0]) init];
  sub_1C0FDE8F8(0, &qword_1EDE76A08);
  sub_1C1265410();
  *a5 = v11;
  sub_1C1265410();
  *(a5 + 16) = v11;
  *(a5 + 24) = *(&v11 + 1);
  if (qword_1EDE7B208 != -1)
  {
    swift_once();
  }

  sub_1C0F99A64(xmmword_1EDE7B210, *(&xmmword_1EDE7B210 + 1), byte_1EDE7B220);

  sub_1C1265410();
  result = *&v11;
  *(a5 + 32) = v11;
  *(a5 + 48) = v12;
  *(a5 + 56) = v13;
  *(a5 + 64) = v14;
  *(a5 + 72) = a1;
  *(a5 + 80) = a2;
  *(a5 + 88) = a3;
  *(a5 + 96) = a4;
  return result;
}

uint64_t PhotosPlaceholderSearchBar.body.getter@<X0>(uint64_t a1@<X8>)
{
  v18[1] = a1;
  v2 = sub_1C12632E0();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95860);
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v18 - v12;
  memcpy(__dst, v1, 0x68uLL);
  v14 = swift_allocObject();
  memcpy((v14 + 16), v1, 0x68uLL);
  v18[4] = __dst;
  sub_1C1183618(__dst, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95868);
  sub_1C1183650();
  sub_1C1265480();
  sub_1C12632D0();
  OUTLINED_FUNCTION_15_2();
  sub_1C1184EC0(v15);
  OUTLINED_FUNCTION_5_31();
  sub_1C118468C(v16);
  sub_1C12649F0();
  (*(v4 + 8))(v7, v2);
  return (*(v10 + 8))(v13, v8);
}

uint64_t sub_1C117A788@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PhotosOffsetReaderContainer(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v39 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95D08);
  sub_1C1265440();
  v36 = *v42;
  v31 = 0x80000001C126CA90;
  v35 = *&v42[8];
  v39 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10);
  sub_1C1265440();
  v33 = *&v42[8];
  v34 = *v42;
  v32 = v42[16];
  v10 = a1[3];
  v39 = a1[2];
  v40 = v10;
  v41 = *(a1 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95D10);
  sub_1C1265440();
  v30 = *v42;
  v11 = *&v42[16];
  v12 = v43;
  v13 = v44;
  v29 = v45;
  v14 = *(a1 + 10);
  v28 = *(a1 + 9);
  v15 = type metadata accessor for PhotosSearchBar();
  v16 = v15[12];
  *(a2 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
  swift_storeEnumTagMultiPayload();
  v17 = a2 + v15[13];
  *v17 = swift_getKeyPath();
  *(v17 + 8) = 0u;
  *(v17 + 24) = 0u;
  *(v17 + 39) = 0;
  v18 = a2 + v15[14];
  v37 = 0;
  v38 = 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE93690);
  sub_1C1265410();
  v19 = BYTE8(v39);
  v20 = v40;
  *v18 = v39;
  *(v18 + 8) = v19;
  *(v18 + 16) = v20;
  v21 = v15[15];
  v37 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95890);
  sub_1C1265410();
  *(a2 + v21) = v39;
  *&v39 = 0xD00000000000001ELL;
  *(&v39 + 1) = v31;
  sub_1C1263F30();
  *&v9[*(v4 + 20)] = 0;
  sub_1C11846D0(v9, v6, type metadata accessor for PhotosOffsetReaderContainer);
  sub_1C1265410();
  sub_1C118446C(v9, type metadata accessor for PhotosOffsetReaderContainer);
  *a2 = v36;
  *(a2 + 8) = v35;
  v22 = v33;
  *(a2 + 24) = v34;
  *(a2 + 32) = v22;
  *(a2 + 40) = v32;
  *(a2 + 48) = v30;
  *(a2 + 64) = v11;
  *(a2 + 72) = v12;
  *(a2 + 80) = v13;
  v23 = v28;
  *(a2 + 88) = v29;
  *(a2 + 96) = v23;
  *(a2 + 104) = v14;
  *(a2 + 112) = nullsub_1;
  *(a2 + 120) = 0;
  *(a2 + 128) = nullsub_1;
  *(a2 + 136) = 0;
  *(a2 + 144) = nullsub_1;
  *(a2 + 152) = 0;
  *(a2 + 160) = nullsub_1;
  *(a2 + 168) = 0;
  KeyPath = swift_getKeyPath();
  v25 = swift_allocObject();
  *(v25 + 16) = 1;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95868);
  v27 = (a2 + *(result + 36));
  *v27 = KeyPath;
  v27[1] = sub_1C1023064;
  v27[2] = v25;
  return result;
}

double PhotosSearchBar.init(attributedText:isEditing:selectedRange:placeholder:tapAction:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X7>, uint64_t a8@<X8>, __int128 a9, uint64_t a10)
{
  v37 = a6;
  v34 = a4;
  v35 = a5;
  v32 = a2;
  v33 = a3;
  v31 = a1;
  v38 = a10;
  v39 = a7;
  *v36 = a9;
  type metadata accessor for PhotosOffsetReaderContainer(0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v30 = OUTLINED_FUNCTION_21_10();
  v19 = *(OUTLINED_FUNCTION_22_17() + 48);
  *(a8 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_10_28(KeyPath);
  v22 = a8 + v21;
  v40 = 0;
  v41 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE93690);
  OUTLINED_FUNCTION_12_19();
  OUTLINED_FUNCTION_8_37();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95890);
  OUTLINED_FUNCTION_12_19();
  *(a8 + v22) = v42;
  OUTLINED_FUNCTION_13_23("PhotosSearchBarCoordinateSpace");
  sub_1C1263F30();
  v23 = OUTLINED_FUNCTION_3_40();
  sub_1C11846D0(v23, v17, v24);
  sub_1C1265410();
  OUTLINED_FUNCTION_7_34();
  v25 = v32;
  *a8 = v31;
  *(a8 + 8) = v25;
  v26 = v34;
  *(a8 + 16) = v33;
  *(a8 + 24) = v26;
  *(a8 + 32) = v35;
  *(a8 + 40) = v37;
  *(a8 + 48) = v30;
  *(a8 + 64) = v10;
  *(a8 + 72) = v11;
  *(a8 + 80) = v12;
  v27 = v38;
  v28 = v39;
  *(a8 + 88) = v13;
  *(a8 + 96) = v28;
  result = v36[0];
  *(a8 + 104) = *v36;
  *(a8 + 120) = v27;
  *(a8 + 128) = nullsub_1;
  *(a8 + 136) = 0;
  *(a8 + 144) = nullsub_1;
  *(a8 + 152) = 0;
  *(a8 + 160) = nullsub_1;
  *(a8 + 168) = 0;
  return result;
}

double PhotosSearchBar.init(attributedText:isEditing:selectedRange:placeholder:tapAction:onScrollViewLeadingOffsetChange:onScrollOffsetChange:onTokenSizerChange:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X7>, uint64_t a8@<X8>, __int128 a9, __int128 a10, __int128 a11, __int128 a12, uint64_t a13)
{
  v45 = a7;
  v42 = a6;
  v40 = a5;
  v38 = a4;
  v36 = a3;
  v35 = a2;
  v34 = a1;
  v44 = a13;
  v43 = a12;
  v41 = a11;
  v39 = a10;
  v37 = a9;
  type metadata accessor for PhotosOffsetReaderContainer(0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v33 = OUTLINED_FUNCTION_21_10();
  v22 = *(OUTLINED_FUNCTION_22_17() + 48);
  *(a8 + v22) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_10_28(KeyPath);
  v25 = a8 + v24;
  v46 = 0;
  v47 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE93690);
  OUTLINED_FUNCTION_12_19();
  OUTLINED_FUNCTION_8_37();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95890);
  OUTLINED_FUNCTION_12_19();
  *(a8 + v25) = v48;
  OUTLINED_FUNCTION_13_23("PhotosSearchBarCoordinateSpace");
  sub_1C1263F30();
  v26 = OUTLINED_FUNCTION_3_40();
  sub_1C11846D0(v26, v20, v27);
  sub_1C1265410();
  OUTLINED_FUNCTION_7_34();
  v28 = v35;
  *a8 = v34;
  *(a8 + 8) = v28;
  v29 = v38;
  *(a8 + 16) = v36;
  *(a8 + 24) = v29;
  *(a8 + 32) = v40;
  *(a8 + 40) = v42;
  *(a8 + 48) = v33;
  *(a8 + 64) = v13;
  *(a8 + 72) = v14;
  *(a8 + 80) = v15;
  v30 = v44;
  v31 = v45;
  *(a8 + 88) = v16;
  *(a8 + 96) = v31;
  *(a8 + 104) = v37;
  *(a8 + 120) = v39;
  *(a8 + 136) = v41;
  result = *&v43;
  *(a8 + 152) = v43;
  *(a8 + 168) = v30;
  return result;
}

uint64_t PhotosSearchBar.body.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1C12638E0();
  *(a1 + 8) = 0x4010000000000000;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95898);
  sub_1C117B128(v1, a1 + *(v3 + 44));
  v4 = sub_1C1264460();
  sub_1C12628A0();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE958A0) + 36);
  *v13 = v4;
  *(v13 + 8) = v6;
  *(v13 + 16) = v8;
  *(v13 + 24) = v10;
  *(v13 + 32) = v12;
  *(v13 + 40) = 0;
  type metadata accessor for PhotosSearchBar();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE958A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE958B0);
  return sub_1C1265440();
}

uint64_t sub_1C117B128@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v109 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95B60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v110 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v108 = &v78 - v6;
  v7 = type metadata accessor for PhotosOffsetReaderContainer(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v106 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for PhotosSearchBar();
  v95 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v100 = v9;
  v101 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1C1264160();
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v90 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_1C1263D50();
  v79 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v12 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95B68);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v78 - v15;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95B70);
  v78 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v18 = &v78 - v17;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95B78);
  v83 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v20 = &v78 - v19;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95B80);
  v86 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v82 = &v78 - v21;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95B88);
  MEMORY[0x1EEE9AC00](v89);
  v84 = &v78 - v22;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95B90);
  v97 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v111 = &v78 - v23;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95B98);
  MEMORY[0x1EEE9AC00](v88);
  v96 = &v78 - v24;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95BA0);
  MEMORY[0x1EEE9AC00](v93);
  v104 = &v78 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v94 = &v78 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v102 = &v78 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95BA8);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v103 = &v78 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v99 = &v78 - v33;
  sub_1C117C08C(&v78 - v33);
  sub_1C1264420();
  v107 = a1;
  v112 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95BB0);
  sub_1C1184568(&unk_1EBE95BB8);
  sub_1C1262950();
  sub_1C1265BB0();
  v34 = sub_1C1184EC0(&unk_1EBE95BD8);
  sub_1C1264CF0();
  (*(v14 + 8))(v16, v13);
  sub_1C1263D40();
  LOBYTE(v16) = sub_1C1264440();
  sub_1C1264430();
  sub_1C1264430();
  if (sub_1C1264430() != v16)
  {
    sub_1C1264430();
  }

  v114 = v13;
  v115 = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = v20;
  v37 = v81;
  sub_1C1264D80();
  (*(v79 + 8))(v12, v80);
  (*(v78 + 8))(v18, v37);
  v38 = v90;
  sub_1C1263D40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95BE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C12A3440;
  v40 = sub_1C1264440();
  *(inited + 32) = v40;
  v41 = sub_1C1264420();
  *(inited + 33) = v41;
  sub_1C1264430();
  sub_1C1264430();
  if (sub_1C1264430() != v40)
  {
    sub_1C1264430();
  }

  sub_1C1264430();
  if (sub_1C1264430() != v41)
  {
    sub_1C1264430();
  }

  v114 = v37;
  v115 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v42 = v82;
  v43 = v85;
  sub_1C1264C50();
  (*(v91 + 8))(v38, v92);
  (*(v83 + 8))(v36, v43);
  v44 = v107;
  v45 = v101;
  sub_1C11846D0(v107, v101, type metadata accessor for PhotosSearchBar);
  v46 = (*(v95 + 80) + 16) & ~*(v95 + 80);
  v47 = swift_allocObject();
  sub_1C118472C(v45, v47 + v46, type metadata accessor for PhotosSearchBar);
  v48 = v84;
  (*(v86 + 32))(v84, v42, v87);
  v49 = (v48 + *(v89 + 36));
  *v49 = sub_1C0FBFBE4;
  v49[1] = 0;
  v49[2] = sub_1C1184788;
  v49[3] = v47;
  sub_1C11846D0(v44, v45, type metadata accessor for PhotosSearchBar);
  v50 = swift_allocObject();
  sub_1C118472C(v45, v50 + v46, type metadata accessor for PhotosSearchBar);
  sub_1C1184854();
  sub_1C0FF9EE4();
  sub_1C1264DE0();

  sub_1C0F9E27C(v48, &qword_1EBE95B88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE958B0);
  v51 = v106;
  sub_1C1265420();
  v53 = *(v44 + 128);
  v52 = *(v44 + 136);
  v54 = v96;
  v55 = &v96[*(v88 + 36)];
  sub_1C11846D0(v51, v55, type metadata accessor for PhotosOffsetReaderContainer);
  v56 = type metadata accessor for PhotosLeadingOffsetReaderModifier(0);
  v57 = (v55 + v56[5]);
  *v57 = v53;
  v57[1] = v52;
  v58 = (v55 + v56[6]);
  v113 = 0;

  sub_1C1265410();
  v59 = v115;
  *v58 = v114;
  v58[1] = v59;
  v60 = (v55 + v56[7]);
  v113 = 0;
  sub_1C1265410();
  sub_1C118446C(v51, type metadata accessor for PhotosOffsetReaderContainer);
  v61 = v115;
  *v60 = v114;
  v60[1] = v61;
  v62 = v56[8];
  *(v55 + v62) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D0);
  swift_storeEnumTagMultiPayload();
  (*(v97 + 32))(v54, v111, v98);
  v63 = sub_1C12659B0();
  v65 = v64;
  v66 = v94;
  v67 = &v94[*(v93 + 36)];
  sub_1C117CC28(v44);
  v68 = &v67[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95BF0) + 36)];
  *v68 = v63;
  v68[1] = v65;
  sub_1C0FE4040(v54, v66, &qword_1EBE95B98);
  v69 = v102;
  sub_1C0FE4040(v66, v102, &qword_1EBE95BA0);
  v70 = v108;
  sub_1C117CEF8(v108);
  v71 = v99;
  v72 = v103;
  sub_1C0FE5654(v99, v103, &qword_1EBE95BA8);
  v73 = v104;
  sub_1C0FE5654(v69, v104, &qword_1EBE95BA0);
  v74 = v110;
  sub_1C0FE5654(v70, v110, &qword_1EBE95B60);
  v75 = v109;
  sub_1C0FE5654(v72, v109, &qword_1EBE95BA8);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95BF8);
  sub_1C0FE5654(v73, v75 + *(v76 + 48), &qword_1EBE95BA0);
  sub_1C0FE5654(v74, v75 + *(v76 + 64), &qword_1EBE95B60);
  sub_1C0F9E27C(v70, &qword_1EBE95B60);
  sub_1C0F9E27C(v69, &qword_1EBE95BA0);
  sub_1C0F9E27C(v71, &qword_1EBE95BA8);
  sub_1C0F9E27C(v74, &qword_1EBE95B60);
  sub_1C0F9E27C(v73, &qword_1EBE95BA0);
  return sub_1C0F9E27C(v72, &qword_1EBE95BA8);
}

uint64_t sub_1C117C08C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95CE0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v29 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95CE8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95C00);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v29 - v10;
  if (sub_1C117D4B0() == 2 || (v12 = sub_1C1262F30(), v12 != sub_1C1262F30()))
  {
    v18 = sub_1C12652F0();
    v19 = sub_1C12651F0();
    v29[4] = v2;
    v20 = v19;
    KeyPath = swift_getKeyPath();
    v29[3] = v8;
    v22 = KeyPath;
    v23 = sub_1C1264530();
    v24 = swift_getKeyPath();
    v30 = v18;
    v31 = v22;
    v32 = v20;
    v33 = v24;
    v34 = v23;
    v29[2] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95CF0);
    v29[1] = v5;
    sub_1C1184B04(&unk_1EBE95CF8);
    sub_1C1264CE0();

    sub_1C0FE5654(v4, v7, &qword_1EBE95CE0);
    swift_storeEnumTagMultiPayload();
    v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95C38);
    v26 = sub_1C12632E0();
    v27 = sub_1C11849FC();
    v28 = sub_1C118468C(&qword_1EDE7BCF0);
    v30 = v25;
    v31 = v26;
    v32 = v27;
    v33 = v28;
    swift_getOpaqueTypeConformance2();
    sub_1C118519C();
    sub_1C1263C20();
    return sub_1C0F9E27C(v4, &qword_1EBE95CE0);
  }

  else
  {
    sub_1C117D518();
    (*(v9 + 16))(v7, v11, v8);
    swift_storeEnumTagMultiPayload();
    v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95C38);
    v14 = sub_1C12632E0();
    v15 = sub_1C11849FC();
    v16 = sub_1C118468C(&qword_1EDE7BCF0);
    v30 = v13;
    v31 = v14;
    v32 = v15;
    v33 = v16;
    swift_getOpaqueTypeConformance2();
    sub_1C118519C();
    sub_1C1263C20();
    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_1C117C510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v65 = sub_1C1263A50();
  v63 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v62 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C12637E0();
  v45 = *(v4 - 8);
  v46 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v44 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PhotosSearchBar();
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v69[0] = *a1;
  *&v69[1] = *(a1 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE952E0);
  sub_1C1265610();
  v60 = *&v68[0];
  v61 = *(v68 + 8);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v69[0] = *(a1 + 24);
  v69[1] = v10;
  LOBYTE(v69[2]) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92B68);
  sub_1C1265610();
  v58 = *(&v68[0] + 1);
  v59 = *&v68[0];
  v57 = LOBYTE(v68[1]);
  v12 = *(a1 + 56);
  v13 = *(a1 + 80);
  v14 = *(a1 + 88);
  *&v68[0] = *(a1 + 48);
  *(&v68[0] + 1) = v12;
  v68[1] = *(a1 + 64);
  LOBYTE(v68[2]) = v13;
  *(&v68[2] + 1) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95AF0);
  sub_1C1265610();
  v55 = v69[1];
  v56 = v69[0];
  v53 = v69[3];
  v54 = v69[2];
  v52 = LOBYTE(v69[4]);
  v51 = v69[5];
  v15 = a1 + *(v7 + 64);
  v16 = *v15;
  v17 = *(v15 + 8);
  v18 = *(v15 + 16);
  *&v68[0] = v16;
  BYTE8(v68[0]) = v17;
  *&v68[1] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95CD0);
  sub_1C1265420();
  v50 = v70;
  v19 = v71;
  v20 = *(a1 + 112);
  v66 = *(a1 + 160);
  v67 = v20;
  sub_1C11846D0(a1, &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotosSearchBar);
  v22 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v21 = swift_allocObject();
  sub_1C118472C(&v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v22, type metadata accessor for PhotosSearchBar);
  v76 = v19;
  LOBYTE(v70) = 1;

  sub_1C1265410();
  LODWORD(v22) = LOBYTE(v68[0]);
  v23 = *(&v68[0] + 1);
  v70 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95CD8);
  sub_1C1265410();
  v49 = *(&v68[0] + 1);
  v24 = *&v68[0];
  v47 = v76;
  v48 = sub_1C12644D0();
  v25 = a1 + *(v7 + 60);
  v27 = *v25;
  v26 = *(v25 + 8);
  v29 = *(v25 + 16);
  v28 = *(v25 + 24);
  v30 = *(v25 + 32);
  v31 = *(v25 + 40);
  if (*(v25 + 42) == 1)
  {
    v70 = *v25;
    v71 = v26;
    v72 = v29;
    v73 = v28;
    v74 = v30;
    v75 = v31;
  }

  else
  {
    v42 = *(v25 + 40);
    v41 = v28;

    sub_1C1266420();
    v32 = sub_1C1264410();
    v43 = v22;
    v33 = v32;
    sub_1C1262620();

    v22 = v44;
    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C1022584(v27, v26, v29, v41, v30, v42, 0);
    v34 = v22;
    LOBYTE(v22) = v43;
    (*(v45 + 8))(v34, v46);
  }

  sub_1C12628A0();
  v77 = 0;
  *&v68[0] = v60;
  *(v68 + 8) = v61;
  *(&v68[1] + 1) = v59;
  *&v68[2] = v58;
  BYTE8(v68[2]) = v57;
  *&v68[3] = v56;
  *(&v68[3] + 1) = v55;
  *&v68[4] = v54;
  *(&v68[4] + 1) = v53;
  LOBYTE(v68[5]) = v52;
  *(&v68[5] + 1) = v51;
  *&v68[6] = v50;
  BYTE8(v68[6]) = v47;
  v68[8] = v66;
  v68[7] = v67;
  *&v68[9] = sub_1C1185134;
  *(&v68[9] + 1) = v21;
  LOBYTE(v68[10]) = v22;
  *(&v68[10] + 1) = v23;
  *&v68[11] = v24;
  *(&v68[11] + 1) = v49;
  LOBYTE(v68[12]) = v48;
  *(&v68[12] + 1) = v35;
  *&v68[13] = v36;
  *(&v68[13] + 1) = v37;
  *&v68[14] = v38;
  BYTE8(v68[14]) = 0;
  v39 = v62;
  sub_1C1263A30();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95BC8);
  sub_1C1184600();
  sub_1C1264DA0();
  (*(v63 + 8))(v39, v65);
  memcpy(v69, v68, 0xE9uLL);
  return sub_1C0F9E27C(v69, &unk_1EBE95BC8);
}

uint64_t sub_1C117CB0C()
{
  type metadata accessor for PhotosSearchBar();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95C98);
  return sub_1C1265430();
}

uint64_t sub_1C117CB7C()
{
  type metadata accessor for PhotosSearchBar();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95CD0);
  return sub_1C1265430();
}

uint64_t sub_1C117CBFC@<X0>(void *a1@<X8>)
{
  result = sub_1C1262F90();
  *a1 = v3;
  return result;
}

uint64_t sub_1C117CC28(uint64_t a1)
{
  v1 = *(a1 + 104);
  __dst[0] = *(a1 + 96);
  __dst[1] = v1;
  sub_1C0FDB9AC();

  v2 = sub_1C12648F0();
  v4 = v3;
  v6 = v5;
  sub_1C1264530();
  v7 = sub_1C1264870();
  v9 = v8;
  v11 = v10;

  sub_1C0FDB8E8(v2, v4, v6 & 1);

  LODWORD(__dst[0]) = sub_1C1263E50();
  v12 = sub_1C1264850();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_1C0FDB8E8(v7, v9, v11 & 1);

  v19 = sub_1C1264460();
  sub_1C12628A0();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = v16 & 1;
  v34 = v28;
  v33 = 0;
  if (sub_1C117CE44())
  {
    v29 = 1.0;
  }

  else
  {
    v29 = 0.0;
  }

  v35 = 0;
  __src[0] = v12;
  __src[1] = v14;
  LOBYTE(__src[2]) = v28;
  __src[3] = v18;
  LOBYTE(__src[4]) = v19;
  __src[5] = v21;
  __src[6] = v23;
  __src[7] = v25;
  __src[8] = v27;
  LOBYTE(__src[9]) = 0;
  *&__src[10] = v29;
  __src[11] = swift_getKeyPath();
  __src[12] = 1;
  LOBYTE(__src[13]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95CB0);
  sub_1C1184D7C();
  sub_1C1264CE0();
  memcpy(__dst, __src, 0x69uLL);
  return sub_1C0F9E27C(__dst, &qword_1EBE95CB0);
}

BOOL sub_1C117CE44()
{
  v9[1] = *v0;
  v10 = *(v0 + 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE952E0);
  MEMORY[0x1C68EEF20](v9, v1);
  v2 = v9[0];
  v3 = [v9[0] string];

  v4 = sub_1C1265EA0();
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  return v7 == 0;
}

uint64_t sub_1C117CEF8@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95C00);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v37 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95C08);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95C10);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v37 - v11;
  if (!sub_1C117CE44())
  {
    sub_1C117D854(v12);
    (*(v10 + 16))(v8, v12, v9);
    swift_storeEnumTagMultiPayload();
    v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95C18);
    v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95C20);
    v38 = v2;
    v27 = a1;
    v28 = v26;
    v29 = sub_1C12632E0();
    v30 = sub_1C1184568(&unk_1EBE95C28);
    v31 = sub_1C118468C(&qword_1EDE7BCF0);
    v39 = v28;
    v40 = v29;
    v41 = v30;
    v42 = v31;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v39 = v25;
    v40 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v33 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95C38);
    v34 = sub_1C11849FC();
    v39 = v33;
    v40 = v29;
    v41 = v34;
    v42 = v31;
    swift_getOpaqueTypeConformance2();
    sub_1C1263C20();
    (*(v10 + 8))(v12, v9);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95C50);
    v24 = v27;
    return __swift_storeEnumTagSinglePayload(v24, 0, 1, v23);
  }

  if (sub_1C117D4B0() != 2)
  {
    v13 = sub_1C1262F30();
    if (v13 == sub_1C1262F30())
    {
      sub_1C117D518();
      (*(v3 + 16))(v8, v5, v2);
      swift_storeEnumTagMultiPayload();
      v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95C18);
      v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95C20);
      v38 = a1;
      v15 = v14;
      v16 = sub_1C12632E0();
      v17 = sub_1C1184568(&unk_1EBE95C28);
      v18 = sub_1C118468C(&qword_1EDE7BCF0);
      v39 = v15;
      v40 = v16;
      v41 = v17;
      v42 = v18;
      v19 = swift_getOpaqueTypeConformance2();
      v39 = v37;
      v40 = v19;
      swift_getOpaqueTypeConformance2();
      v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95C38);
      v21 = sub_1C11849FC();
      v39 = v20;
      v40 = v16;
      v41 = v21;
      v42 = v18;
      swift_getOpaqueTypeConformance2();
      v22 = v38;
      sub_1C1263C20();
      (*(v3 + 8))(v5, v2);
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95C50);
      v24 = v22;
      return __swift_storeEnumTagSinglePayload(v24, 0, 1, v23);
    }
  }

  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95C50);

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v36);
}

uint64_t sub_1C117D4B0()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v1 = result;
    v2 = [result dictationSearchFieldUIEnabled];

    if (v2)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C117D518()
{
  v1 = sub_1C12632E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for PhotosSearchBar();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95C38);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15[-v9];
  sub_1C11846D0(v0, &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for PhotosSearchBar);
  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = swift_allocObject();
  sub_1C118472C(&v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], v12 + v11, type metadata accessor for PhotosSearchBar);
  v16 = 0x6C6C69662E63696DLL;
  v17 = 0xE800000000000000;
  v18 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95C58);
  sub_1C1184B04(&unk_1EBE95C60);
  sub_1C1265480();
  v13 = &v10[*(v8 + 36)];
  *v13 = 0xC030000000000000;
  v13[8] = 0;
  sub_1C12632D0();
  sub_1C11849FC();
  sub_1C118468C(&qword_1EDE7BCF0);
  sub_1C12649F0();
  (*(v2 + 8))(v4, v1);
  return sub_1C0F9E27C(v10, &qword_1EBE95C38);
}

uint64_t sub_1C117D854@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v55 = a1;
  v3 = sub_1C1263050();
  v53 = *(v3 - 8);
  v54 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v52 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v51 = &v45 - v6;
  v7 = sub_1C12632E0();
  v8 = *(v7 - 8);
  v49 = v7;
  v50 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v48 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C1265E50();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PhotosSearchBar();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95C38);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v45 - v18;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95C20);
  MEMORY[0x1EEE9AC00](v45);
  v21 = &v45 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95C18);
  v23 = *(v22 - 8);
  v46 = v22;
  v47 = v23;
  MEMORY[0x1EEE9AC00](v22);
  v56 = &v45 - v24;
  sub_1C11846D0(v2, &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotosSearchBar);
  v25 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v26 = swift_allocObject();
  sub_1C118472C(&v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25, type metadata accessor for PhotosSearchBar);
  v57 = 0x6B72616D78;
  v58 = 0xE500000000000000;
  v59 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95C58);
  sub_1C1184B04(&unk_1EBE95C60);
  sub_1C1265480();
  v27 = &v19[*(v17 + 36)];
  *v27 = 0xC030000000000000;
  v27[8] = 0;
  sub_1C1265DF0();
  v28 = static String.photosSwiftUICoreLocalized(_:)(v13);
  v30 = v29;
  (*(v11 + 8))(v13, v10);
  v60 = v28;
  v61 = v30;
  sub_1C11849FC();
  sub_1C0FDB9AC();
  v31 = v21;
  sub_1C1264C80();

  sub_1C0F9E27C(v19, &qword_1EBE95C38);
  v32 = v48;
  sub_1C12632D0();
  v33 = sub_1C1184568(&unk_1EBE95C28);
  v34 = sub_1C118468C(&qword_1EDE7BCF0);
  v35 = v45;
  v36 = v49;
  sub_1C12649F0();
  (*(v50 + 8))(v32, v36);
  sub_1C0F9E27C(v31, &qword_1EBE95C20);
  v37 = v51;
  sub_1C1263020();
  v38 = v52;
  sub_1C1262FE0();
  v39 = *(v53 + 8);
  v40 = v37;
  v41 = v54;
  v39(v40, v54);
  v60 = v35;
  v61 = v36;
  v62 = v33;
  v63 = v34;
  swift_getOpaqueTypeConformance2();
  v42 = v56;
  v43 = v46;
  sub_1C1264B20();
  v39(v38, v41);
  return (*(v47 + 8))(v42, v43);
}

uint64_t sub_1C117DF00()
{
  LOBYTE(v1) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92B68);
  sub_1C12655F0();
  type metadata accessor for PhotosSearchBar();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95C98);
  result = sub_1C1265420();
  if (v1)
  {
    sub_1C117DFAC();
  }

  return result;
}

void sub_1C117DFAC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1C0FDE8F8(0, &unk_1EBE95CA0);
    v2 = sub_1C1265EA0();
    v4 = sub_1C1180058(v2, v3);
    v5 = [objc_opt_self() sharedInputModeController];
    if (v5)
    {
      v6 = v5;
      [v5 toggleDictationForResponder:v1 WithOptions:v4];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1C117E07C(uint64_t a1)
{
  LOBYTE(v5) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92B68);
  sub_1C12655F0();
  [objc_allocWithZone(MEMORY[0x1E696AAB0]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE952E0);
  sub_1C12655F0();
  if (qword_1EDE7B208 != -1)
  {
    swift_once();
  }

  v2 = *(a1 + 64);
  v3 = *(a1 + 72);
  v6 = *(a1 + 80);
  sub_1C0F99A64(xmmword_1EDE7B210, *(&xmmword_1EDE7B210 + 1), byte_1EDE7B220);

  sub_1C0F99A64(v2, v3, v6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95AF0);
  sub_1C12655F0();

  sub_1C1184000(v2, v3, v6);
}

uint64_t sub_1C117E244@<X0>(char a1@<W2>, uint64_t *a2@<X8>)
{

  v4 = sub_1C12652F0();
  if (a1)
  {
    sub_1C1263E40();
  }

  else
  {
    sub_1C1263E50();
  }

  KeyPath = swift_getKeyPath();
  v6 = sub_1C1262C90();
  if (a1)
  {
    v7 = sub_1C12651F0();
  }

  else
  {
    v7 = sub_1C1265230();
  }

  v8 = v7;
  v9 = swift_getKeyPath();
  v10 = sub_1C1264530();
  result = swift_getKeyPath();
  *a2 = v4;
  a2[1] = KeyPath;
  a2[2] = v6;
  a2[3] = v9;
  a2[4] = v8;
  a2[5] = result;
  a2[6] = v10;
  return result;
}

uint64_t View.photosSearchBarAllowsFirstResponderResignation(_:)(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  if (a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;
    v5 = sub_1C1183784;
  }

  else
  {
    v5 = 0;
  }

  sub_1C0FCF1B4(a1);
  sub_1C1264A30();

  return sub_1C0FCF004(v5);
}

uint64_t (*sub_1C117E41C())()
{
  sub_1C118450C();
  sub_1C12637F0();
  if (!v2)
  {
    return 0;
  }

  v0 = swift_allocObject();
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  return sub_1C11852E0;
}

uint64_t sub_1C117E4A4@<X0>(void *a1@<X8>)
{
  result = sub_1C117E41C();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_1C11852D0;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_1C117E514(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1C11844D4;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1C0FCF1B4(v1);
  return sub_1C117E5A0(v4, v3);
}

uint64_t sub_1C117E5A0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;
  }

  sub_1C118450C();
  return sub_1C1263800();
}

uint64_t sub_1C117E628@<X0>(void *a1@<X8>)
{
  result = OUTLINED_FUNCTION_23_3();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_1C11852D0;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

id sub_1C117E694()
{
  memcpy(__dst, v0, sizeof(__dst));
  memcpy(__src, v0, sizeof(__src));
  v1 = objc_allocWithZone(type metadata accessor for PhotosSearchBar.WrappedSearchBar.Coordinator());
  sub_1C1183FC8(__dst, &v3);
  return sub_1C117FB20(__src);
}

id sub_1C117E6FC()
{
  v1 = sub_1C1265C10();
  v42 = *(v1 - 8);
  v43 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v39 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1C1265C30();
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v38 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v46, v0, 0xC0uLL);
  type metadata accessor for PhotosSearchBar.TextView();
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame_];
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 clearColor];
  [v7 setBackgroundColor_];

  v9 = v7;
  [v9 setAdjustsFontForContentSizeCategory_];
  [v9 setScrollEnabled_];
  [v9 setEditable_];
  v10 = [v9 textContainer];
  [v10 setMaximumNumberOfLines_];

  v11 = [v9 textContainer];
  [v11 setLineFragmentPadding_];

  v12 = [v9 textContainer];
  [v12 setHeightTracksTextView_];

  v13 = [v9 textContainer];
  [v13 setWidthTracksTextView_];

  [v9 setTextContainerInset_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95AE0);
  sub_1C1264210();
  v14 = v44[0];
  [v9 setDelegate_];

  [v9 setReturnKeyType_];
  [v9 setAutocorrectionType_];
  [v9 setSpellCheckingType_];
  v15 = v9;
  v16 = [v15 inputAssistantItem];
  sub_1C0FDE8F8(0, &qword_1EBE95B20);
  v17 = MEMORY[0x1E69E7CC0];
  v18 = sub_1C12660A0();
  [v16 setLeadingBarButtonGroups_];

  v19 = [v15 inputAssistantItem];
  v20 = sub_1C12660A0();
  [v19 setTrailingBarButtonGroups_];

  v21 = [objc_opt_self() preferredFontForTextStyle_];
  [v15 setFont_];

  sub_1C117EE70();
  v22 = [v15 textLayoutManager];
  if (v22)
  {
    v23 = v22;
    [v22 setDelegate_];
  }

  v24 = [v15 textLayoutManager];

  if (v24)
  {
    v25 = [v24 textContentManager];

    if (v25)
    {
      objc_opt_self();
      v26 = swift_dynamicCastObjCClass();
      if (v26)
      {
        [v26 setDelegate_];
      }
    }
  }

  v44[3] = type metadata accessor for PhotosSearchBar.WrappedSearchBar.Coordinator();
  sub_1C1264210();
  v27 = objc_allocWithZone(MEMORY[0x1E69DD060]);
  v28 = sub_1C1183400(v44, sel_tapAction_);
  sub_1C1264210();
  v29 = v44[0];
  [v28 setDelegate_];

  [v15 addGestureRecognizer_];
  sub_1C0FDE8F8(0, &qword_1EDE83410);
  v30 = sub_1C12664C0();
  v31 = swift_allocObject();
  memcpy((v31 + 16), v46, 0xC0uLL);
  *(v31 + 208) = v15;
  v45[4] = sub_1C11842B0;
  v45[5] = v31;
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 1107296256;
  v45[2] = sub_1C0FD7FC4;
  v45[3] = &block_descriptor_54;
  v32 = _Block_copy(v45);
  v37 = v15;
  sub_1C1183FC8(v46, v44);

  v33 = v38;
  sub_1C1265C20();
  v44[0] = v17;
  sub_1C118468C(&qword_1EDE7B768);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B00);
  sub_1C1184EC0(&qword_1EDE7B708);
  v34 = v39;
  v35 = v43;
  sub_1C1266870();
  MEMORY[0x1C68EFE10](0, v33, v34, v32);
  _Block_release(v32);

  (*(v42 + 8))(v34, v35);
  (*(v40 + 8))(v33, v41);
  return v37;
}

void sub_1C117EE70()
{
  v1 = [v0 font];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93478);
  inited = swift_initStackObject();
  if (v1)
  {
    *(inited + 16) = xmmword_1C12A3440;
    v3 = *MEMORY[0x1E69DB648];
    *(inited + 32) = *MEMORY[0x1E69DB648];
    v4 = sub_1C0FDE8F8(0, &qword_1EDE76980);
    *(inited + 40) = v1;
    v5 = *MEMORY[0x1E69DB650];
    *(inited + 64) = v4;
    *(inited + 72) = v5;
    v6 = objc_opt_self();
    v7 = v3;
    v8 = v1;
    v9 = v5;
    v10 = [v6 labelColor];
    *(inited + 104) = sub_1C0FDE8F8(0, &qword_1EDE76940);
    *(inited + 80) = v10;
    type metadata accessor for Key(0);
    sub_1C118468C(&qword_1EDE769F8);
    sub_1C1265CE0();
  }

  else
  {
    v11 = MEMORY[0x1E69DB650];
    *(inited + 16) = xmmword_1C12A8B40;
    v12 = *v11;
    *(inited + 32) = *v11;
    v13 = objc_opt_self();
    v14 = v12;
    v15 = [v13 labelColor];
    *(inited + 64) = sub_1C0FDE8F8(0, &qword_1EDE76940);
    *(inited + 40) = v15;
    type metadata accessor for Key(0);
    sub_1C118468C(&qword_1EDE769F8);
    sub_1C1265CE0();
  }

  type metadata accessor for Key(0);
  sub_1C118468C(&qword_1EDE769F8);
  v16 = sub_1C1265CC0();

  [v0 setTypingAttributes_];
}

uint64_t sub_1C117F13C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 128);
  type metadata accessor for PhotosSearchBarTokenSizer();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v4(v5);

  v6 = *(a1 + 144);
  type metadata accessor for PhotosSearchBarDictationManager();
  swift_allocObject();
  v7 = a2;
  sub_1C1180018(a2);
  v6();
}

uint64_t sub_1C117F200(_BYTE *a1, uint64_t a2)
{
  v3 = v2;
  v45 = a2;
  v5 = sub_1C1265C10();
  v51 = *(v5 - 8);
  v52 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v50 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C1265C30();
  v48 = *(v7 - 8);
  v49 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v47 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C12637E0();
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1C1262750();
  MEMORY[0x1EEE9AC00](v42);
  memcpy(v62, v2, sizeof(v62));
  v46 = OBJC_IVAR____TtCV17PhotosSwiftUICore15PhotosSearchBarP33_C1804BBFE1C0AEF33B5596BB912C85238TextView_isUpdating;
  a1[OBJC_IVAR____TtCV17PhotosSwiftUICore15PhotosSearchBarP33_C1804BBFE1C0AEF33B5596BB912C85238TextView_isUpdating] = 1;
  v53 = *v2;
  *&v54 = v2[2];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE952E0);
  MEMORY[0x1C68EEF20](&v63);
  v13 = v63;
  v14 = [v63 length];

  if (!v14)
  {
    goto LABEL_4;
  }

  v53 = v62[3];
  v54 = v62[4];
  v55 = v62[5];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95AF0);
  MEMORY[0x1C68EEF20](&v63, v15);
  if (v64 == 1)
  {
    sub_1C1184000(v63, *(&v63 + 1), 1);

LABEL_4:
    [a1 unmarkText];
    goto LABEL_6;
  }

  sub_1C1184000(v63, *(&v63 + 1), v64);

LABEL_6:
  v53 = *v3;
  *&v54 = v3[2];
  MEMORY[0x1C68EEF20](&v63, v12);
  v16 = v63;
  [a1 setAttributedText_];

  v63 = v62[3];
  v64 = v62[4];
  v65 = v62[5];
  v53 = v62[3];
  v54 = v62[4];
  v55 = v62[5];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95AF0);
  MEMORY[0x1C68EEF20](&v56);
  v18 = v56;
  v19 = v57;
  v20 = v58;
  v21 = sub_1C118406C(a1, v56, v57, v58);
  sub_1C1184000(v18, v19, v20);

  [a1 setSelectedTextRange_];

  v53 = v63;
  v54 = v64;
  v55 = v65;
  MEMORY[0x1C68EEF20](&v56, v17);
  v22 = v58 != 1;
  if (v58 == 1)
  {
    v23 = v56;
  }

  else
  {
    v23 = 0;
  }

  if (v58 == 1)
  {
    v24 = v57;
  }

  else
  {
    v24 = 0;
  }

  sub_1C1184000(v56, v57, v58);

  sub_1C1266630();
  *&v53 = v23;
  *(&v53 + 1) = v24;
  LOBYTE(v54) = v22;
  sub_1C118418C();
  sub_1C1262740();
  sub_1C1266640();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95AE0);
  sub_1C1264220();
  v25 = sub_1C117E41C();
  v27 = v26;
  (*(v43 + 8))(v11, v44);
  v28 = &a1[OBJC_IVAR____TtCV17PhotosSwiftUICore15PhotosSearchBarP33_C1804BBFE1C0AEF33B5596BB912C85238TextView_allowsFirstResponderResignation];
  v29 = *&a1[OBJC_IVAR____TtCV17PhotosSwiftUICore15PhotosSearchBarP33_C1804BBFE1C0AEF33B5596BB912C85238TextView_allowsFirstResponderResignation];
  *v28 = v25;
  v28[1] = v27;
  sub_1C0FCF004(v29);
  sub_1C1264210();
  v30 = v53;
  v31 = v53 + OBJC_IVAR____TtCVV17PhotosSwiftUICore15PhotosSearchBarP33_C1804BBFE1C0AEF33B5596BB912C852316WrappedSearchBar11Coordinator_minWidth;
  v32 = *&v62[6];
  *(v31 + 8) = BYTE8(v62[6]);
  *v31 = v32;

  sub_1C0FDE8F8(0, &qword_1EDE83410);
  v33 = sub_1C12664C0();
  v34 = swift_allocObject();
  memcpy((v34 + 16), v62, 0xC0uLL);
  *(v34 + 208) = a1;
  v60 = sub_1C11841E0;
  v61 = v34;
  v56 = MEMORY[0x1E69E9820];
  v57 = 1107296256;
  v58 = sub_1C0FD7FC4;
  v59 = &block_descriptor_13;
  v35 = _Block_copy(&v56);
  sub_1C1183FC8(v62, &v53);
  v36 = a1;

  v37 = v47;
  sub_1C1265C20();
  *&v53 = MEMORY[0x1E69E7CC0];
  sub_1C118468C(&qword_1EDE7B768);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B00);
  sub_1C1184EC0(&qword_1EDE7B708);
  v38 = v50;
  v39 = v52;
  sub_1C1266870();
  MEMORY[0x1C68EFE10](0, v37, v38, v35);
  _Block_release(v35);

  (*(v51 + 8))(v38, v39);
  result = (*(v48 + 8))(v37, v49);
  a1[v46] = 0;
  return result;
}

id sub_1C117F8DC(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10);
  result = sub_1C1265420();
  if (v10 == 1)
  {
    v8 = *(a1 + 24);
    LOBYTE(v9) = *(a1 + 40);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92B68);
    MEMORY[0x1C68EEF20](&v10);
    v6 = v10;
    result = [a2 isFirstResponder];
    if (v6 != result)
    {
      MEMORY[0x1C68EEF20](&v10, v5);
      v7 = &selRef_becomeFirstResponder;
      if (!v10)
      {
        v7 = &selRef_resignFirstResponder;
      }

      LOBYTE(v10) = [a2 *v7];
      return sub_1C1265430();
    }
  }

  return result;
}

uint64_t sub_1C117FA04(int a1, int a2, int a3, int a4, id a5)
{
  [a5 intrinsicContentSize];
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95AE0);
  sub_1C1264210();
  v8 = *&v22[OBJC_IVAR____TtCVV17PhotosSwiftUICore15PhotosSearchBarP33_C1804BBFE1C0AEF33B5596BB912C852316WrappedSearchBar11Coordinator_minWidth];
  v9 = v22[OBJC_IVAR____TtCVV17PhotosSwiftUICore15PhotosSearchBarP33_C1804BBFE1C0AEF33B5596BB912C852316WrappedSearchBar11Coordinator_minWidth + 8];

  if (v9)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v8;
  }

  v11 = [a5 beginningOfDocument];
  [a5 caretRectForPosition_];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v23.origin.x = v13;
  v23.origin.y = v15;
  v23.size.width = v17;
  v23.size.height = v19;
  CGRectGetHeight(v23);
  if (v7 >= v10)
  {
    v20 = v7;
  }

  else
  {
    v20 = v10;
  }

  return *&v20;
}

id sub_1C117FB20(void *__src)
{
  v2 = &v1[OBJC_IVAR____TtCVV17PhotosSwiftUICore15PhotosSearchBarP33_C1804BBFE1C0AEF33B5596BB912C852316WrappedSearchBar11Coordinator_minWidth];
  *v2 = 0;
  v2[8] = 1;
  memcpy(&v1[OBJC_IVAR____TtCVV17PhotosSwiftUICore15PhotosSearchBarP33_C1804BBFE1C0AEF33B5596BB912C852316WrappedSearchBar11Coordinator_parent], __src, 0xC0uLL);
  v4.receiver = v1;
  v4.super_class = type metadata accessor for PhotosSearchBar.WrappedSearchBar.Coordinator();
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_1C117FBAC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosSearchBar.WrappedSearchBar.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1C117FC2C@<X0>(void *a1@<X8>)
{
  result = sub_1C117E694();
  *a1 = result;
  return result;
}

uint64_t sub_1C117FC88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C11842BC();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1C117FCEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C11842BC();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1C117FD50()
{
  sub_1C11842BC();
  sub_1C1263BD0();
  __break(1u);
}

uint64_t sub_1C117FDAC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *&v0[OBJC_IVAR____TtCV17PhotosSwiftUICore15PhotosSearchBarP33_C1804BBFE1C0AEF33B5596BB912C85238TextView_allowsFirstResponderResignation];
  if (!v3 || (v4 = , v5 = v3(v4), sub_1C0FCF004(v3), v5 == 2))
  {
    v7.receiver = v1;
    v7.super_class = ObjectType;
    v5 = objc_msgSendSuper2(&v7, sel_canResignFirstResponder);
  }

  return v5 & 1;
}

id sub_1C117FE54(void *a1, double a2, double a3, double a4, double a5)
{
  ObjectType = swift_getObjectType();
  v5[OBJC_IVAR____TtCV17PhotosSwiftUICore15PhotosSearchBarP33_C1804BBFE1C0AEF33B5596BB912C85238TextView_isUpdating] = 0;
  v12 = &v5[OBJC_IVAR____TtCV17PhotosSwiftUICore15PhotosSearchBarP33_C1804BBFE1C0AEF33B5596BB912C85238TextView_allowsFirstResponderResignation];
  *v12 = 0;
  v12[1] = 0;
  v15.receiver = v5;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, sel_initWithFrame_textContainer_, a1, a2, a3, a4, a5);

  return v13;
}

id sub_1C117FF54(void *a1)
{
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR____TtCV17PhotosSwiftUICore15PhotosSearchBarP33_C1804BBFE1C0AEF33B5596BB912C85238TextView_isUpdating] = 0;
  v4 = &v1[OBJC_IVAR____TtCV17PhotosSwiftUICore15PhotosSearchBarP33_C1804BBFE1C0AEF33B5596BB912C85238TextView_allowsFirstResponderResignation];
  *v4 = 0;
  v4[1] = 0;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

uint64_t sub_1C1180018(void *a1)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  return v1;
}

id sub_1C1180058(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_1C1265E70();
  }

  else
  {
    v2 = 0;
  }

  v3 = [swift_getObjCClassFromMetadata() dictationInputModeOptionsWithInvocationSource_];

  return v3;
}

uint64_t sub_1C11800C8()
{
  MEMORY[0x1C68F1710](v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1C1180100()
{
  result = sub_1C1265E70();
  qword_1EBE95850 = result;
  return result;
}

void sub_1C1180138(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

id sub_1C118015C(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1C118418C();
  sub_1C12664F0();
  v6 = [a1 userInterfaceStyle];
  v7 = objc_opt_self();
  if ((v16 & 1) == 0 && (v14 == a2 ? (v8 = v15 == a3) : (v8 = 0), v8))
  {
    if (v6 == 2)
    {
      v9 = [v7 whiteColor];
    }

    else
    {
      v9 = [v7 systemBlueColor];
    }

    return v9;
  }

  else
  {
    if (v6 == 2)
    {
      v10 = [v7 whiteColor];
      v11 = [v10 colorWithAlphaComponent_];
    }

    else
    {
      v10 = [v7 systemBlueColor];
      v11 = [v10 colorWithAlphaComponent_];
    }

    v12 = v11;

    return v12;
  }
}

id sub_1C11802BC(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1C118418C();
  sub_1C12664F0();
  if ((v14 & 1) == 0 && (v12 == a2 ? (v6 = v13 == a3) : (v6 = 0), v6))
  {
    v7 = objc_opt_self();
    v8 = &selRef_systemBackgroundColor;
  }

  else
  {
    v9 = [a1 userInterfaceStyle];
    v7 = objc_opt_self();
    v8 = &selRef_systemBlueColor;
    if (v9 == 2)
    {
      v8 = &selRef_whiteColor;
    }
  }

  v10 = [v7 *v8];

  return v10;
}

uint64_t sub_1C1180394(void *a1, double a2, double a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = [v3 textLineFragments];
  sub_1C0FDE8F8(0, &qword_1EBE95B50);
  v10 = sub_1C12660B0();

  result = sub_1C0FF7688(v10);
  if (!result)
  {
LABEL_8:

    v16.receiver = v4;
    v16.super_class = ObjectType;
    return objc_msgSendSuper2(&v16, sel_drawAtPoint_inContext_, a1, a2, a3);
  }

  v12 = result;
  if (result >= 1)
  {
    for (i = 0; i != v12; ++i)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1C68F02D0](i, v10);
      }

      else
      {
        v14 = *(v10 + 8 * i + 32);
      }

      v15 = v14;
      sub_1C11804C4(a1);
    }

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C11804C4(void *a1)
{
  v2 = v1;
  v4 = [v2 attributedString];
  if (qword_1EBE8FD10 != -1)
  {
    swift_once();
  }

  v5 = qword_1EBE95850;
  v6 = [v2 characterRange];
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v2;
  *(v9 + 24) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1C11844CC;
  *(v10 + 24) = v9;
  v16[4] = sub_1C11852C8;
  v16[5] = v10;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1C1180BF8;
  v16[3] = &block_descriptor_101;
  v11 = _Block_copy(v16);
  v12 = v2;
  v13 = a1;

  [v4 enumerateAttribute:v5 inRange:v6 options:v8 usingBlock:{0, v11}];

  _Block_release(v11);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

id sub_1C1180730(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithTextElement:a1 range:a2];

  return v5;
}

id sub_1C1180788(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithTextElement_range_, a1, a2);

  return v5;
}

id sub_1C1180834(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1C11808C8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1C1180900(uint64_t a1, NSUInteger a2, NSUInteger a3, uint64_t a4, void *a5, CGContext *a6)
{
  sub_1C0FE5654(a1, v31, &qword_1EBE90620);
  if (v32)
  {
    if (swift_dynamicCast())
    {
      v34.location = [a5 characterRange];
      v34.length = v10;
      v33.location = a2;
      v33.length = a3;
      v11 = NSIntersectionRange(v33, v34);
      if (v11.length)
      {
        v12 = v11.location == a2;
      }

      else
      {
        v12 = 0;
      }

      if (v12 && v11.length == a3)
      {
        sub_1C1180B04(a2, a3);
        sub_1C1266550();
        v15 = v14;
        v17 = v16;
        v19 = v18;
        v21 = v20;
        ClipBoundingBox = CGContextGetClipBoundingBox(a6);
        v35.origin.x = v15;
        v35.origin.y = v17;
        v35.size.width = v19;
        v35.size.height = v21;
        v36 = CGRectIntersection(v35, ClipBoundingBox);
        x = v36.origin.x;
        y = v36.origin.y;
        width = v36.size.width;
        height = v36.size.height;
        CGContextSaveGState(a6);
        v26 = [v29 CGColor];
        CGContextSetFillColorWithColor(a6, v26);

        v27 = [objc_opt_self() bezierPathWithRoundedRect:x cornerRadius:{y, width, height, v30}];
        [v27 fill];
        CGContextRestoreGState(a6);
      }
    }
  }

  else
  {
    sub_1C0F9E27C(v31, &qword_1EBE90620);
  }
}

void sub_1C1180B04(uint64_t a1, uint64_t a2)
{
  v5 = [v2 characterRange];
  v6 = a1 - v5;
  if (__OFSUB__(a1, v5))
  {
    __break(1u);
  }

  else
  {
    v7 = __OFADD__(v6, a2);
    v8 = v6 + a2;
    if (!v7)
    {
      [v2 locationForCharacterAtIndex_];
      [v2 locationForCharacterAtIndex_];
      [v2 typographicBounds];
      x = v13.origin.x;
      y = v13.origin.y;
      width = v13.size.width;
      height = v13.size.height;
      CGRectGetMinY(v13);
      v14.origin.x = x;
      v14.origin.y = y;
      v14.size.width = width;
      v14.size.height = height;
      CGRectGetHeight(v14);
      return;
    }
  }

  __break(1u);
}

uint64_t sub_1C1180BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v11 = a2;
    sub_1C0FD09FC(&v11, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  swift_unknownObjectRetain();
  v9(v13, a3, a4, a5);
  return sub_1C0F9E27C(v13, &qword_1EBE90620);
}

uint64_t sub_1C1180CA4(uint64_t a1)
{
  v3 = [v1 length];
  v4 = [objc_opt_self() labelColor];
  v5 = [objc_opt_self() preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] compatibleWithTraitCollection:a1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93478);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C12A3440;
  v7 = *MEMORY[0x1E69DB650];
  *(inited + 32) = *MEMORY[0x1E69DB650];
  v8 = sub_1C0FDE8F8(0, &qword_1EDE76940);
  *(inited + 40) = v4;
  v9 = *MEMORY[0x1E69DB648];
  *(inited + 64) = v8;
  *(inited + 72) = v9;
  *(inited + 104) = sub_1C0FDE8F8(0, &qword_1EDE76980);
  *(inited + 80) = v5;
  type metadata accessor for Key(0);
  sub_1C118468C(&qword_1EDE769F8);
  v10 = v7;
  v11 = v4;
  v12 = v9;
  v13 = v5;
  sub_1C1265CE0();
  v14 = sub_1C1265CC0();

  [v1 addAttributes:v14 range:{0, v3}];

  [v1 removeAttribute:*MEMORY[0x1E69DB748] range:{0, v3}];
  if (qword_1EBE8FD10 != -1)
  {
    swift_once();
  }

  [v1 removeAttribute:qword_1EBE95850 range:{0, v3}];
  if (qword_1EDE76A00 != -1)
  {
    swift_once();
  }

  v15 = qword_1EDE9B5C0;
  v16 = swift_allocObject();
  v16[2] = v1;
  v16[3] = 0;
  v16[4] = v3;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1C1184310;
  *(v17 + 24) = v16;
  v22[4] = sub_1C118431C;
  v22[5] = v17;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1C1180BF8;
  v22[3] = &block_descriptor_63;
  v18 = _Block_copy(v22);
  v19 = v1;

  [v19 enumerateAttribute:v15 inRange:0 options:v3 usingBlock:{0, v18}];

  _Block_release(v18);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C118107C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B38);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v55 - v16;
  sub_1C0FE5654(a1, v60, &qword_1EBE90620);
  if (v61 == 0.0)
  {
    sub_1C0F9E27C(v60, &qword_1EBE90620);
    v18 = type metadata accessor for PhotosSearchTokenStyleAttributeValue();
    v20 = v17;
    v19 = 1;
  }

  else
  {
    v18 = type metadata accessor for PhotosSearchTokenStyleAttributeValue();
    v19 = swift_dynamicCast() ^ 1;
    v20 = v17;
  }

  __swift_storeEnumTagSinglePayload(v20, v19, 1, v18);
  type metadata accessor for PhotosSearchTokenStyleAttributeValue();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, 1, v18);
  result = sub_1C0F9E27C(v17, &unk_1EBE95B38);
  if (!EnumTagSinglePayload && a3 && a2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v59 = a7;
    v23 = [a5 attributedSubstringFromRange_];
    v24 = CTLineCreateWithAttributedString(v23);
    IsRightToLeft = CTLineIsRightToLeft();

    v26 = sub_1C1181560(a2);
    v27 = sub_1C11815D0(a2, a3);
    v28 = swift_allocObject();
    *(v28 + 16) = a2;
    *(v28 + 24) = a3;
    v29 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v58 = sub_1C1183544(sub_1C1184344, v28);
    v30 = swift_allocObject();
    *(v30 + 16) = a2;
    *(v30 + 24) = a3;
    v31 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v32 = sub_1C1183544(sub_1C118434C, v30);
    v33 = v27;
    if (IsRightToLeft)
    {
      v34 = v27;
    }

    else
    {
      v34 = v26;
    }

    v56 = v34;
    v57 = v32;
    v35 = IsRightToLeft ^ 1;
    if (__OFSUB__(a2, v35))
    {
      __break(1u);
    }

    else
    {
      v36 = sub_1C118165C((a2 - v35), a6, v59);
      if ((v38 & 1) == 0)
      {
        IsRightToLeft = v36;
        v39 = v37;
        v55 = *MEMORY[0x1E69DB748];
        sub_1C0FDE8F8(0, &unk_1EDE7B5D0);
        v40 = sub_1C1266690();
        [a5 addAttribute:v55 value:v40 range:{IsRightToLeft, v39}];
      }

      v41 = a2 + a3;
      if (!__OFADD__(a2, a3))
      {
        if (!__OFSUB__(v41, v35))
        {
          v42 = (v56 - 2) * 4.0;
          v43 = (v33 - 2) * 4.0 * -0.5;
          v44 = sub_1C118165C((v41 - v35), a6, v59);
          IsRightToLeft = &selRef_proposedBeginState;
          if ((v46 & 1) == 0)
          {
            v47 = v44;
            v48 = v45;
            v49 = *MEMORY[0x1E69DB748];
            sub_1C0FDE8F8(0, &unk_1EDE7B5D0);
            v50 = sub_1C1266690();
            [a5 addAttribute:v49 value:v50 range:{v47, v48}];
          }

          v7 = v42 * 0.5;
          v8 = (v26 - 2) * 4.0 * -0.5 + v43;
          v33 = v58;
          [a5 addAttribute:*MEMORY[0x1E69DB650] value:v58 range:{a2, a3}];
          if (qword_1EBE8FD10 == -1)
          {
            goto LABEL_18;
          }

          goto LABEL_23;
        }

LABEL_22:
        __break(1u);
LABEL_23:
        swift_once();
LABEL_18:
        v51 = qword_1EBE95850;
        v52 = v57;
        v60[0] = v33;
        v60[1] = v57;
        v60[2] = 0x4018000000000000;
        v61 = v7;
        v62 = v8;
        v53 = v33;
        v54 = v52;
        [a5 IsRightToLeft[129]];

        return swift_unknownObjectRelease();
      }
    }

    __break(1u);
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1C1181560(uint64_t a1)
{
  v1 = a1 - 1;
  if (a1 < 1)
  {
    return 0;
  }

  if (sub_1C1181718(a1 - 1))
  {
    return 3;
  }

  sub_1C11817E4(v1);
  if (v3 && (v4 = sub_1C1265D50(), , (v4 & 1) != 0))
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1C11815D0(uint64_t result, uint64_t a2)
{
  v3 = result + a2;
  if (__OFADD__(result, a2))
  {
    __break(1u);
  }

  else if (v3 >= [v2 length])
  {
    return 0;
  }

  else if (sub_1C1181718(v3))
  {
    return 3;
  }

  else
  {
    sub_1C11817E4(v3);
    if (v4 && (v5 = sub_1C1265D50(), , (v5 & 1) != 0))
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

id sub_1C118165C(id result, uint64_t a2, uint64_t a3)
{
  if (result < a2)
  {
    return 0;
  }

  if (!__OFADD__(a2, a3))
  {
    v4 = result;
    if (a2 + a3 > result)
    {
      result = [v3 string];
      if (result)
      {
        v5 = result;
        [result rangeOfComposedCharacterSequenceAtIndex_];

        return sub_1C1266720();
      }

      goto LABEL_8;
    }

    return 0;
  }

  __break(1u);
LABEL_8:
  __break(1u);
  return result;
}

BOOL sub_1C1181718(uint64_t a1)
{
  if (qword_1EDE76A00 != -1)
  {
    swift_once();
  }

  v3 = [v1 attribute:qword_1EDE9B5C0 atIndex:a1 effectiveRange:0];
  if (v3)
  {
    sub_1C12667F0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v5, 0, sizeof(v5));
  }

  sub_1C0F9E27C(v5, &qword_1EBE90620);
  return v3 != 0;
}

uint64_t sub_1C11817E4(uint64_t a1)
{
  v2 = [v1 attributedSubstringFromRange_];
  v3 = [v2 string];

  v4 = sub_1C1265EA0();
  v6 = v5;

  v7 = sub_1C10FD70C(v4, v6);

  return v7;
}

uint64_t sub_1C1181880(void *a1)
{
  memcpy(__dst, (v1 + OBJC_IVAR____TtCVV17PhotosSwiftUICore15PhotosSearchBarP33_C1804BBFE1C0AEF33B5596BB912C852316WrappedSearchBar11Coordinator_parent), sizeof(__dst));
  sub_1C1183FC8(__dst, &v5);
  [a1 isFirstResponder];
  LOBYTE(a1) = __dst[20];
  v3 = __dst[21];
  v5 = __dst[3];
  v6 = __dst[4];
  v7 = __dst[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92B68);
  sub_1C12655F0();
  LOBYTE(v5) = a1;
  v6 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10);
  sub_1C1265430();
  return sub_1C1184430(__dst);
}

void sub_1C1181964(void *a1)
{
  memcpy(__dst, (v1 + OBJC_IVAR____TtCVV17PhotosSwiftUICore15PhotosSearchBarP33_C1804BBFE1C0AEF33B5596BB912C852316WrappedSearchBar11Coordinator_parent), sizeof(__dst));
  sub_1C1183FC8(__dst, v8);
  v3 = [a1 attributedText];
  if (v3)
  {
    v4 = v3;
    v5 = __dst[2];
    v8[0] = __dst[0];
    v8[1] = __dst[1];
    v8[2] = __dst[2];

    v6 = v5;
    v7 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE952E0);
    sub_1C12655F0();
    sub_1C1184430(__dst);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C1181AC4(void *a1)
{
  type metadata accessor for PhotosSearchBar.TextView();
  result = swift_dynamicCastClass();
  if (result)
  {
    v4 = result;
    if ((*(result + OBJC_IVAR____TtCV17PhotosSwiftUICore15PhotosSearchBarP33_C1804BBFE1C0AEF33B5596BB912C85238TextView_isUpdating) & 1) == 0)
    {
      memcpy(__dst, (v1 + OBJC_IVAR____TtCVV17PhotosSwiftUICore15PhotosSearchBarP33_C1804BBFE1C0AEF33B5596BB912C852316WrappedSearchBar11Coordinator_parent), sizeof(__dst));
      v5 = a1;
      sub_1C1183FC8(__dst, v11);
      [v4 selectedTextRange];
      type metadata accessor for PhotosSearchRange.TextInputStorage();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakAssign();
      v6 = __dst[8];
      v7 = __dst[9];
      v8 = __dst[10];
      v11[0] = __dst[6];
      v11[1] = __dst[7];
      v12 = __dst[8];
      v13 = __dst[9];
      v14 = __dst[10];
      v15 = __dst[11];

      sub_1C0F99A64(v6, v7, v8);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95AF0);
      sub_1C12655F0();

      sub_1C1184430(__dst);
      v9 = v12;
      v10 = v13;
      LOBYTE(v6) = v14;

      sub_1C1184000(v9, v10, v6);
    }
  }

  return result;
}

id sub_1C1181CD4(void *a1, void *a2, void *a3)
{
  v6 = sub_1C12663C0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C12663D0();
  v10 = (*(v7 + 88))(v9, v6);
  v11 = *MEMORY[0x1E69DC3B0];
  (*(v7 + 8))(v9, v6);
  if (v10 != v11)
  {
    return a3;
  }

  v12 = swift_allocObject();
  *(v12 + 16) = sub_1C12618D0();
  *(v12 + 24) = 0;
  v13 = [a1 textStorage];
  v14 = *MEMORY[0x1E69DE720];
  v15 = [a2 range];
  v16 = [a1 textStorage];
  v17 = [v16 length];

  v18 = [v13 attribute:v14 atIndex:v15 longestEffectiveRange:v12 + 16 inRange:{0, v17}];
  if (v18)
  {
    sub_1C12667F0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v22, 0, sizeof(v22));
  }

  sub_1C0F9E27C(v22, &qword_1EBE90620);
  sub_1C0FDE8F8(0, &qword_1EBE95B48);
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = v12;
  return sub_1C12666D0();
}

uint64_t sub_1C1181FA0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    memcpy(__dst, (Strong + OBJC_IVAR____TtCVV17PhotosSwiftUICore15PhotosSearchBarP33_C1804BBFE1C0AEF33B5596BB912C852316WrappedSearchBar11Coordinator_parent), sizeof(__dst));
    sub_1C1183FC8(__dst, &v11);

    swift_beginAccess();
    type metadata accessor for PhotosSearchRange.TextInputStorage();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v2 = __dst[8];
    v3 = __dst[9];
    v4 = __dst[10];
    v11 = __dst[6];
    v12 = __dst[7];
    v13 = __dst[8];
    v14 = __dst[9];
    v15 = __dst[10];
    v16 = __dst[11];

    sub_1C0F99A64(v2, v3, v4);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95AF0);
    sub_1C12655F0();
    sub_1C1184430(__dst);
    v5 = v13;
    v6 = v14;
    v7 = v15;

    sub_1C1184000(v5, v6, v7);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    memcpy(__dst, (result + OBJC_IVAR____TtCVV17PhotosSwiftUICore15PhotosSearchBarP33_C1804BBFE1C0AEF33B5596BB912C852316WrappedSearchBar11Coordinator_parent), sizeof(__dst));
    sub_1C1183FC8(__dst, &v11);

    LOBYTE(v9) = __dst[20];
    v10 = __dst[21];
    v11 = __dst[3];
    v12 = __dst[4];
    LOBYTE(v13) = __dst[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92B68);
    sub_1C12655F0();
    LOBYTE(v11) = v9;
    v12 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10);
    sub_1C1265430();
    return sub_1C1184430(__dst);
  }

  return result;
}

uint64_t sub_1C1182284(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  v68 = a2;
  ObjectType = swift_getObjectType();
  v11 = sub_1C1262750();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PhotosSearchBar.TextView();
  if (swift_dynamicCastClass())
  {
    sub_1C117EE70();
  }

  v15 = a4 == 10 && a5 == 0xE100000000000000;
  if (v15 || (sub_1C1266D50() & 1) != 0)
  {
    memcpy(v80, (v5 + OBJC_IVAR____TtCVV17PhotosSwiftUICore15PhotosSearchBarP33_C1804BBFE1C0AEF33B5596BB912C852316WrappedSearchBar11Coordinator_parent), 0xC0uLL);
    v16 = v80[20];
    v17 = v80[21];
    v70 = v80[3];
    v71 = v80[4];
    v72 = v80[5];
    v69 = 0;
    sub_1C1183FC8(v80, &v74);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92B68);
    sub_1C12655F0();
    LOBYTE(v74) = v16;
    v75 = v17;
    LOBYTE(v70) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10);
    sub_1C1265430();
    sub_1C1184430(v80);
    return 0;
  }

  sub_1C1266630();
  sub_1C118418C();
  sub_1C1262730();
  (*(v12 + 8))(v14, v11);
  v19 = v80[1];
  v66 = v80[0];
  v20 = LOBYTE(v80[2]);
  v21 = [a1 textStorage];
  v22 = [v21 length];

  result = sub_1C1265F00();
  v65 = v19;
  if (v20)
  {
    v23 = a3;
  }

  else
  {
    v23 = v19;
  }

  v24 = &v22[result];
  if (__OFADD__(v22, result))
  {
    __break(1u);
    goto LABEL_33;
  }

  v25 = __OFSUB__(v24, v23);
  v26 = &v24[-v23];
  if (v25)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v26 >= 1000 && v23 < result)
  {
    return 0;
  }

  if ((v20 & 1) == 0)
  {
    v38 = (v6 + OBJC_IVAR____TtCVV17PhotosSwiftUICore15PhotosSearchBarP33_C1804BBFE1C0AEF33B5596BB912C852316WrappedSearchBar11Coordinator_parent);
    v80[0] = *v38;
    *&v80[1] = *(v38 + 8);
    v68 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE952E0);
    MEMORY[0x1C68EEF20](&v74);
    v39 = v74;
    v40 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];

    v41 = v65;
    v42 = v66;
    [v40 setAttributes:0 range:{v66, v65}];
    v43 = sub_1C1265E70();
    [v40 replaceCharactersInRange:v42 withString:{v41, v43}];

    v80[0] = *v38;
    *&v80[1] = *(v38 + 8);
    v74 = v40;
    v44 = v40;
    sub_1C12655F0();
    result = memcpy(v80, v38, 0xC0uLL);
    if (!__OFADD__(v42, v68))
    {
      v45 = (v42 + v68) & ~((v42 + v68) >> 63);
      v46 = a1;
      sub_1C1183FC8(v80, &v74);
      v47 = sub_1C1184354(v46, v45, 0);
      type metadata accessor for PhotosSearchRange.TextInputStorage();
      v48 = swift_allocObject();
      swift_unknownObjectWeakInit();
      if (v47)
      {
        v49 = 0;
      }

      else
      {
        v49 = -1;
      }

      swift_unknownObjectWeakAssign();

      v50 = v80[8];
      v51 = v80[9];
      v52 = v80[10];
      v74 = v80[6];
      v75 = v80[7];
      v76 = v80[8];
      v77 = v80[9];
      v78 = v80[10];
      v79 = v80[11];
      v70 = v47;
      v71 = 0;
      v72 = v49;
      v73 = v48;

      sub_1C0F99A64(v50, v51, v52);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95AF0);
      sub_1C12655F0();

      sub_1C1184430(v80);
      v53 = v76;
      v54 = v77;
      v55 = v78;
      goto LABEL_31;
    }

LABEL_34:
    __break(1u);
    return result;
  }

  v28 = v68;
  v66 = sub_1C11828C8(a1, v68, a3, a4, a5);
  if ((v30 & 1) == 0)
  {
    v56 = v29;
    v57 = v6 + OBJC_IVAR____TtCVV17PhotosSwiftUICore15PhotosSearchBarP33_C1804BBFE1C0AEF33B5596BB912C852316WrappedSearchBar11Coordinator_parent;
    v58 = *(v6 + OBJC_IVAR____TtCVV17PhotosSwiftUICore15PhotosSearchBarP33_C1804BBFE1C0AEF33B5596BB912C852316WrappedSearchBar11Coordinator_parent + 48);
    v59 = *(v6 + OBJC_IVAR____TtCVV17PhotosSwiftUICore15PhotosSearchBarP33_C1804BBFE1C0AEF33B5596BB912C852316WrappedSearchBar11Coordinator_parent + 56);
    v60 = *(v6 + OBJC_IVAR____TtCVV17PhotosSwiftUICore15PhotosSearchBarP33_C1804BBFE1C0AEF33B5596BB912C852316WrappedSearchBar11Coordinator_parent + 64);
    v61 = *(v57 + 72);
    v62 = *(v57 + 88);
    v63 = *(v57 + 80);
    type metadata accessor for PhotosSearchRange.TextInputStorage();
    v64 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v80[0] = v58;
    v80[1] = v59;
    v80[2] = v60;
    v80[3] = v61;
    LOBYTE(v80[4]) = v63;
    v80[5] = v62;
    v74 = v66;
    v75 = v56;
    LOBYTE(v76) = 1;
    v77 = v64;

    sub_1C0F99A64(v60, v61, v63);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95AF0);
    sub_1C12655F0();
    v53 = v80[2];
    v54 = v80[3];
    v55 = v80[4];
LABEL_31:

    sub_1C1184000(v53, v54, v55);

    return 0;
  }

  v31 = [a1 textStorage];
  v32 = sub_1C1182CD0(v31, v28, a3);
  v34 = v33;
  v36 = v35;

  if ((v36 & 1) == 0)
  {
    v37 = [a1 textStorage];
    [v37 setAttributes:0 range:{v32, v34}];
  }

  return 1;
}

uint64_t sub_1C11828C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v32 = *MEMORY[0x1E69E9840];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B38);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for PhotosSearchTokenStyleAttributeValue();
  *&v14 = MEMORY[0x1EEE9AC00](v13).n128_u64[0];
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = 0;
  v18 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v18 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v18 || a3 != 1)
  {
    return result;
  }

  v19 = [a1 markedTextRange];
  if (v19)
  {

    return 0;
  }

  v20 = [a1 textStorage];
  if (qword_1EDE76A00 != -1)
  {
    swift_once();
  }

  v21 = qword_1EDE9B5C0;
  v22 = [v20 attribute:qword_1EDE9B5C0 atIndex:a2 effectiveRange:0];

  if (v22)
  {
    sub_1C12667F0();
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
  }

  v30 = v28;
  v31 = v29;
  if (!*(&v29 + 1))
  {
    sub_1C0F9E27C(&v30, &qword_1EBE90620);
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
    goto LABEL_18;
  }

  v23 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v12, v23 ^ 1u, 1, v13);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
LABEL_18:
    sub_1C0F9E27C(v12, &unk_1EBE95B38);
    return 0;
  }

  sub_1C118472C(v12, v16, type metadata accessor for PhotosSearchTokenStyleAttributeValue);
  if (v16[*(v13 + 20)] != 1)
  {
    sub_1C118446C(v16, type metadata accessor for PhotosSearchTokenStyleAttributeValue);
    return 0;
  }

  v28 = sub_1C12618D0();
  v24 = [a1 textStorage];
  v25 = [a1 textStorage];
  v26 = [v25 length];

  v27 = [v24 attribute:v21 atIndex:a2 longestEffectiveRange:&v28 inRange:{0, v26}];
  if (v27)
  {
    sub_1C12667F0();
    swift_unknownObjectRelease();
    sub_1C118446C(v16, type metadata accessor for PhotosSearchTokenStyleAttributeValue);
  }

  else
  {
    sub_1C118446C(v16, type metadata accessor for PhotosSearchTokenStyleAttributeValue);
    v30 = 0u;
    v31 = 0u;
  }

  sub_1C0F9E27C(&v30, &qword_1EBE90620);
  return v28;
}

uint64_t sub_1C1182CD0(void *a1, uint64_t a2, uint64_t a3)
{
  if (sub_1C12618D0() == a2)
  {
    return 0;
  }

  v15[0] = 0;
  v15[1] = 0;
  v16 = 1;
  if (qword_1EDE76A00 != -1)
  {
    swift_once();
  }

  v7 = qword_1EDE9B5C0;
  v8 = [a1 length];
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = v15;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1C1184460;
  *(v10 + 24) = v9;
  aBlock[4] = sub_1C11852C8;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C1180BF8;
  aBlock[3] = &block_descriptor_82;
  v11 = _Block_copy(aBlock);

  [a1 enumerateAttribute:v7 inRange:0 options:v8 usingBlock:{0, v11}];
  _Block_release(v11);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v6 = v15[0];

    return v6;
  }

  __break(1u);
  return result;
}

void sub_1C1182F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  if (a6)
  {
    if (__OFADD__(a2, a3))
    {
      __break(1u);
    }

    else if (!__OFADD__(a5, a6))
    {
      if (a2 >= a5 && a5 + a6 > a2)
      {
        goto LABEL_24;
      }

      if (a5 >= a2 && a2 + a3 > a5)
      {
        goto LABEL_24;
      }

      return;
    }

    __break(1u);
    goto LABEL_35;
  }

  if (a5 >= a2)
  {
    if (__OFSUB__(a5, a2))
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (a2 != a5 && a5 - a2 < a3)
    {
      if (__OFADD__(a2, a3))
      {
LABEL_39:
        __break(1u);
        return;
      }

      if (a2 + a3 != a5)
      {
LABEL_24:
        if (a7[2])
        {
LABEL_32:
          *a7 = a2;
          a7[1] = a3;
          *(a7 + 16) = 0;
          return;
        }

        v10 = a7[1];
        v11 = __OFADD__(*a7, v10);
        v12 = *a7 + v10;
        if (!v11)
        {
          if (!__OFADD__(a2, a3))
          {
            if (v12 <= a2 + a3)
            {
              v12 = a2 + a3;
            }

            if (*a7 < a2)
            {
              a2 = *a7;
            }

            a3 = v12 - a2;
            if (!__OFSUB__(v12, a2))
            {
              goto LABEL_32;
            }

            goto LABEL_37;
          }

LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

LABEL_35:
        __break(1u);
        goto LABEL_36;
      }
    }
  }
}

uint64_t sub_1C1183010()
{
  v1 = *(v0 + OBJC_IVAR____TtCVV17PhotosSwiftUICore15PhotosSearchBarP33_C1804BBFE1C0AEF33B5596BB912C852316WrappedSearchBar11Coordinator_parent + 112);

  v1(v2);
}

id sub_1C11831B4(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 attributedString];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = [v6 attributedSubstringFromRange_];

  if (!v8)
  {
    return 0;
  }

  v9 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
  v10 = [v3 traitCollection];
  sub_1C1180CA4(v10);

  v11 = [objc_allocWithZone(MEMORY[0x1E69DB840]) initWithAttributedString_];
  return v11;
}

id sub_1C1183318(uint64_t a1, uint64_t a2, void *a3)
{
  type metadata accessor for PhotosSearchTextLayoutFragment();
  v4 = a3;
  return sub_1C1180730(v4, [v4 elementRange]);
}

id sub_1C1183400(void *a1, uint64_t a2)
{
  v4 = a1[3];
  if (v4)
  {
    v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v7 = *(v4 - 8);
    v8 = MEMORY[0x1EEE9AC00](v6);
    v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_1C1266D40();
    (*(v7 + 8))(v10, v4);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    v11 = 0;
  }

  v12 = [v2 initWithTarget:v11 action:a2];
  swift_unknownObjectRelease();
  return v12;
}

id sub_1C1183544(uint64_t a1, uint64_t a2)
{
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1C108F8C4;
  v6[3] = &block_descriptor_72;
  v3 = _Block_copy(v6);
  v4 = [v2 initWithDynamicProvider_];
  _Block_release(v3);

  return v4;
}

unint64_t sub_1C1183650()
{
  result = qword_1EBE95870;
  if (!qword_1EBE95870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95868);
    sub_1C118468C(&qword_1EBE95878);
    sub_1C1184EC0(&unk_1EDE7B8D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE95870);
  }

  return result;
}

uint64_t type metadata accessor for PhotosSearchBar()
{
  result = qword_1EBE958B8;
  if (!qword_1EBE958B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C1183784@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t sub_1C1183830(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_1C1183870(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_1C1183900()
{
  sub_1C1183B34();
  if (v0 <= 0x3F)
  {
    sub_1C1183C00(319, &qword_1EDE76B80, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
    if (v1 <= 0x3F)
    {
      sub_1C1183C00(319, &qword_1EDE76B88, &type metadata for PhotosSearchRange, MEMORY[0x1E6981948]);
      if (v2 <= 0x3F)
      {
        sub_1C1007F88();
        if (v3 <= 0x3F)
        {
          sub_1C1183B9C(319, &qword_1EDE77590, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            sub_1C1183C00(319, &unk_1EBE958D0, &type metadata for PhotosSearchStyle, MEMORY[0x1E697DCC0]);
            if (v5 <= 0x3F)
            {
              sub_1C1183C50(319, &qword_1EBE94FE0, &unk_1EBE93690);
              if (v6 <= 0x3F)
              {
                sub_1C1183C50(319, &qword_1EBE958E0, &qword_1EBE95890);
                if (v7 <= 0x3F)
                {
                  sub_1C1183B9C(319, &unk_1EBE958E8, type metadata accessor for PhotosOffsetReaderContainer, MEMORY[0x1E6981790]);
                  if (v8 <= 0x3F)
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
  }
}

void sub_1C1183B34()
{
  if (!qword_1EDE76B78)
  {
    sub_1C0FDE8F8(255, &qword_1EDE76A08);
    v0 = sub_1C1265640();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE76B78);
    }
  }
}

void sub_1C1183B9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C1183C00(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1C1183C50(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_1C1265450();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1C1183D34()
{
  result = qword_1EBE95AA0;
  if (!qword_1EBE95AA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE958A8);
    sub_1C1183DF0();
    sub_1C118468C(&qword_1EBE95AC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE95AA0);
  }

  return result;
}

unint64_t sub_1C1183DF0()
{
  result = qword_1EBE95AA8;
  if (!qword_1EBE95AA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE958A0);
    sub_1C1184EC0(&unk_1EBE95AB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE95AA8);
  }

  return result;
}

uint64_t sub_1C1183EB0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 192))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1C1183EF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 192) = 1;
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

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C1183F74()
{
  result = qword_1EBE95AD8;
  if (!qword_1EBE95AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE95AD8);
  }

  return result;
}

void sub_1C1184000(id a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    sub_1C1154CB4(a1, a2, a3);
  }
}

uint64_t sub_1C1184014@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x1C68ED050]();
  *a1 = result;
  return result;
}

id sub_1C118406C(id a1, unint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4)
  {
    v5 = 0;
    if (a4 != 1 && a4 != 255)
    {
      if (a2 | a3)
      {
        v7 = [a1 endOfDocument];
        v8 = [a1 endOfDocument];
      }

      else
      {
        v7 = [a1 beginningOfDocument];
        v8 = [a1 beginningOfDocument];
      }

      v5 = [a1 textRangeFromPosition:v7 toPosition:v8];
    }
  }

  else
  {
    sub_1C0F99AE4(a2, a3, 0);
    return a2;
  }

  return v5;
}

unint64_t sub_1C118418C()
{
  result = qword_1EBE95AF8;
  if (!qword_1EBE95AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE95AF8);
  }

  return result;
}

uint64_t objectdestroy_47Tm()
{

  v1 = *(v0 + 96);
  if (v1 != 255)
  {
    sub_1C1154CB4(*(v0 + 80), *(v0 + 88), v1);
  }

  return swift_deallocObject();
}

unint64_t sub_1C11842BC()
{
  result = qword_1EBE95B28;
  if (!qword_1EBE95B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE95B28);
  }

  return result;
}

id sub_1C1184354(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 beginningOfDocument];
  v7 = [a1 positionFromPosition:v6 offset:a2];

  if (!v7)
  {
    return 0;
  }

  v8 = [a1 positionFromPosition:v7 offset:a3];
  if (!v8)
  {

    return 0;
  }

  v9 = v8;
  v10 = [a1 textRangeFromPosition:v7 toPosition:v8];

  return v10;
}

uint64_t sub_1C118446C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1C118450C()
{
  result = qword_1EBE95B58;
  if (!qword_1EBE95B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE95B58);
  }

  return result;
}

unint64_t sub_1C1184568(uint64_t a1)
{
  result = OUTLINED_FUNCTION_13_2(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_41(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6);
    v5();
    sub_1C118468C(&qword_1EDE7B8E0);
    OUTLINED_FUNCTION_0_54();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C1184600()
{
  result = qword_1EBE95BC0;
  if (!qword_1EBE95BC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE95BC8);
    sub_1C1183F74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE95BC0);
  }

  return result;
}

unint64_t sub_1C118468C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_13_2(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1C11846D0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_3();
  v4 = OUTLINED_FUNCTION_18();
  v5(v4);
  return a2;
}

uint64_t sub_1C118472C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_3();
  v4 = OUTLINED_FUNCTION_18();
  v5(v4);
  return a2;
}

uint64_t sub_1C1184788()
{
  v0 = type metadata accessor for PhotosSearchBar();
  OUTLINED_FUNCTION_15(v0);
  OUTLINED_FUNCTION_17_24();

  return sub_1C117CB7C();
}

uint64_t sub_1C11847F0(uint64_t a1, double *a2)
{
  v4 = type metadata accessor for PhotosSearchBar();
  OUTLINED_FUNCTION_15(v4);
  OUTLINED_FUNCTION_17_24();
  return (*(v2 + v5 + 144))(*a2);
}

unint64_t sub_1C1184854()
{
  result = qword_1EBE95BE8;
  if (!qword_1EBE95BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95B88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95B78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95B70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95B68);
    sub_1C1184EC0(&unk_1EBE95BD8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1C1184EC0(&qword_1EDE7BAA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE95BE8);
  }

  return result;
}

unint64_t sub_1C11849FC()
{
  result = qword_1EBE95C30;
  if (!qword_1EBE95C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95C38);
    sub_1C1184EC0(&unk_1EBE95C40);
    sub_1C1184EC0(&unk_1EDE7BB90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE95C30);
  }

  return result;
}

unint64_t sub_1C1184B04(uint64_t a1)
{
  result = OUTLINED_FUNCTION_13_2(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_41(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6);
    v5();
    OUTLINED_FUNCTION_0_0();
    sub_1C1184EC0(v7);
    OUTLINED_FUNCTION_0_54();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C1184B88()
{
  result = qword_1EBE95C68;
  if (!qword_1EBE95C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95C70);
    sub_1C1184C40();
    sub_1C1184EC0(&qword_1EDE7B910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE95C68);
  }

  return result;
}

unint64_t sub_1C1184C40()
{
  result = qword_1EBE95C78;
  if (!qword_1EBE95C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE95C80);
    sub_1C1184EC0(&qword_1EDE7B958);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE95C78);
  }

  return result;
}

uint64_t sub_1C1184D10(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for PhotosSearchBar();
  OUTLINED_FUNCTION_15(v2);
  OUTLINED_FUNCTION_17_24();

  return a1(v1 + v3);
}

unint64_t sub_1C1184D7C()
{
  result = qword_1EBE95CB8;
  if (!qword_1EBE95CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95CB0);
    sub_1C1184E34();
    sub_1C1184EC0(&unk_1EDE7B8F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE95CB8);
  }

  return result;
}

unint64_t sub_1C1184E34()
{
  result = qword_1EBE95CC0;
  if (!qword_1EBE95CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95CC8);
    sub_1C106BF24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE95CC0);
  }

  return result;
}

unint64_t sub_1C1184EC0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_13_2(a1);
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_41(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t objectdestroy_120Tm()
{
  v1 = type metadata accessor for PhotosSearchBar();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = *(v2 + 80);
  if (v3 != 255)
  {
    sub_1C1154CB4(*(v2 + 64), *(v2 + 72), v3);
  }

  v4 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C12629F0();
    OUTLINED_FUNCTION_3();
    (*(v5 + 8))(v2 + v4);
  }

  else
  {
  }

  v6 = v2 + v1[13];
  sub_1C1022584(*v6, *(v6 + 8), *(v6 + 16), *(v6 + 24), *(v6 + 32), *(v6 + 40), *(v6 + 42));

  v7 = v2 + v1[16];
  sub_1C1263D00();
  OUTLINED_FUNCTION_3();
  (*(v8 + 8))(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE958B0);

  return swift_deallocObject();
}

uint64_t sub_1C1185134()
{
  v0 = type metadata accessor for PhotosSearchBar();
  OUTLINED_FUNCTION_15(v0);
  OUTLINED_FUNCTION_17_24();

  return sub_1C117CB0C();
}

unint64_t sub_1C118519C()
{
  result = qword_1EBE95D00;
  if (!qword_1EBE95D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95CE0);
    sub_1C1184B04(&unk_1EBE95CF8);
    sub_1C118468C(&qword_1EDE7B8E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE95D00);
  }

  return result;
}

unint64_t sub_1C1185318()
{
  result = qword_1EDE76F88;
  if (!qword_1EDE76F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76F88);
  }

  return result;
}

double sub_1C11853AC(void (*a1)(void))
{
  a1();
  sub_1C12637F0();
  return v2;
}

unint64_t sub_1C11853F4()
{
  result = qword_1EDE76F80;
  if (!qword_1EDE76F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76F80);
  }

  return result;
}

uint64_t (*EnvironmentValues.photosVerticalInteritemSpacing.modify(uint64_t a1))(void *a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_1C1185318();
  sub_1C12637F0();
  return sub_1C1185540;
}

uint64_t (*EnvironmentValues.photosHorizontalInteritemSpacing.modify(uint64_t a1))(void *a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_1C11853F4();
  sub_1C12637F0();
  return sub_1C11855AC;
}

uint64_t PhotosMockPlaybackOverlayModel.__allocating_init(totalDuration:fractionCompleted:)()
{
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_2();
  PhotosMockPlaybackOverlayModel.init(totalDuration:fractionCompleted:)();
  return v0;
}

uint64_t PhotosMockPlaybackOverlayModel.init(totalDuration:fractionCompleted:)()
{
  *(v0 + 68) = 600;
  sub_1C1261F60();
  *(v0 + 16) = 1;
  OUTLINED_FUNCTION_2();
  sub_1C1266F80();
  *(v0 + 20) = sub_1C1266610();
  *(v0 + 28) = v1;
  *(v0 + 32) = v2;
  *(v0 + 36) = v3;
  OUTLINED_FUNCTION_2();
  sub_1C1266F80();
  *(v0 + 44) = sub_1C1266610();
  *(v0 + 52) = v4;
  *(v0 + 56) = v5;
  *(v0 + 60) = v6;
  return v0;
}

uint64_t sub_1C1185708(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 16) == v2)
  {
    *(v1 + 16) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_9_1();
    *(v5 - 8) = v2;
    sub_1C1186550();
  }

  return result;
}

uint64_t sub_1C11857B8(char a1)
{
  v2 = a1 & 1;
  if (*(v1 + 17) == (a1 & 1))
  {
    v6 = a1 & 1;

    return sub_1C1185BA0(v6);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_9_1();
    *(v4 - 8) = v2;
    sub_1C1186550();
  }
}

uint64_t sub_1C1185880(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = a2;
  v7 = HIDWORD(a2);
  swift_beginAccess();
  result = sub_1C1266600();
  if (result)
  {
    *(v3 + 20) = a1;
    *(v3 + 28) = v5;
    *(v3 + 32) = v7;
    *(v3 + 36) = a3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1186550();
  }

  return result;
}

uint64_t sub_1C1185978@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C11859D0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C11859D0()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_56();
  sub_1C1186BCC(v1, v2);
  OUTLINED_FUNCTION_6();

  swift_beginAccess();
  return *(v0 + 16);
}

void (*sub_1C1185A64())(void *a1)
{
  v3 = OUTLINED_FUNCTION_4_1();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_3_4(v4);
  swift_getKeyPath();
  v2[5] = OBJC_IVAR____TtC17PhotosSwiftUICore30PhotosMockPlaybackOverlayModel___observationRegistrar;
  *v2 = v0;
  OUTLINED_FUNCTION_0_56();
  v7 = sub_1C1186BCC(v5, v6);
  OUTLINED_FUNCTION_1_6(v7);

  *v2 = v1;
  swift_getKeyPath();
  OUTLINED_FUNCTION_2_3();

  v2[7] = sub_1C109E940();
  return sub_1C1185B3C;
}

uint64_t sub_1C1185B48(char a1)
{
  if ((sub_1C1185C5C() & 1) != 0 && (a1 & 1) == 0 && sub_1C11864F8())
  {
    sub_1C1185880(*MEMORY[0x1E6960CC0], *(MEMORY[0x1E6960CC0] + 8), *(MEMORY[0x1E6960CC0] + 16));
  }

  return sub_1C118607C();
}

uint64_t sub_1C1185BA0(char a1)
{
  v2 = *(v1 + 17);
  *(v1 + 17) = a1;
  return sub_1C1185B48(v2);
}

uint64_t (*sub_1C1185BB0(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 17);
  return sub_1C1185BDC;
}

uint64_t sub_1C1185C04@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C1185C5C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C1185C5C()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_56();
  sub_1C1186BCC(v1, v2);
  OUTLINED_FUNCTION_6();

  return *(v0 + 17);
}

void (*sub_1C1185CDC())(void *a1)
{
  v3 = OUTLINED_FUNCTION_4_1();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_3_4(v4);
  swift_getKeyPath();
  v2[5] = OBJC_IVAR____TtC17PhotosSwiftUICore30PhotosMockPlaybackOverlayModel___observationRegistrar;
  *v2 = v0;
  OUTLINED_FUNCTION_0_56();
  v7 = sub_1C1186BCC(v5, v6);
  OUTLINED_FUNCTION_1_6(v7);

  *v2 = v1;
  swift_getKeyPath();
  OUTLINED_FUNCTION_2_3();

  v2[7] = sub_1C1185BB0(v2);
  return sub_1C1185DB4;
}

uint64_t sub_1C1185E10@<X0>(uint64_t a1@<X8>)
{
  result = sub_1C1185E7C();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 12) = v4;
  *(a1 + 16) = v5;
  return result;
}

uint64_t sub_1C1185E7C()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_56();
  sub_1C1186BCC(v1, v2);
  OUTLINED_FUNCTION_6();

  swift_beginAccess();
  return *(v0 + 20);
}

uint64_t sub_1C1185F18(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = a3;
  v8 = HIDWORD(a3);
  result = swift_beginAccess();
  *(a1 + 20) = a2;
  *(a1 + 28) = v5;
  *(a1 + 32) = v8;
  *(a1 + 36) = a4;
  return result;
}

void (*sub_1C1185F88())(void *a1)
{
  v3 = OUTLINED_FUNCTION_4_1();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_3_4(v4);
  swift_getKeyPath();
  v2[5] = OBJC_IVAR____TtC17PhotosSwiftUICore30PhotosMockPlaybackOverlayModel___observationRegistrar;
  *v2 = v0;
  OUTLINED_FUNCTION_0_56();
  v7 = sub_1C1186BCC(v5, v6);
  OUTLINED_FUNCTION_1_6(v7);

  *v2 = v1;
  swift_getKeyPath();
  OUTLINED_FUNCTION_2_3();

  v2[7] = sub_1C1185DC0();
  return sub_1C1186060;
}

uint64_t sub_1C118607C()
{
  v1 = v0;
  v2 = sub_1C1265C10();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C1265C30();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1265C50();
  OUTLINED_FUNCTION_0();
  v40 = v15;
  v41 = v14;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v37 - v19;
  result = sub_1C1185C5C();
  if (result)
  {
    v37 = v10;
    v38 = v8;
    v39 = v4;
    v22 = sub_1C1185E7C();
    v24 = v23;
    v26 = v25;
    v27 = HIDWORD(v23);
    v28 = sub_1C1266610();
    lhs.value = v22;
    lhs.timescale = v24;
    lhs.flags = v27;
    lhs.epoch = v26;
    rhs.value = v28;
    rhs.timescale = v29;
    rhs.flags = v30;
    rhs.epoch = v31;
    CMTimeAdd(&v46, &lhs, &rhs);
    sub_1C1185880(v46.value, *&v46.timescale, v46.epoch);
    if (sub_1C11864F8())
    {
      sub_1C1185880(*(v1 + 44), *(v1 + 52), *(v1 + 60));
      sub_1C11857B8(0);
    }

    sub_1C0FDAFC4();
    v32 = sub_1C12664C0();
    sub_1C1265C40();
    sub_1C1265C90();
    v40 = *(v40 + 8);
    v33 = v18;
    v34 = v41;
    (v40)(v33, v41);
    v35 = swift_allocObject();
    swift_weakInit();
    v44 = sub_1C1186BBC;
    v45 = v35;
    lhs.value = MEMORY[0x1E69E9820];
    *&lhs.timescale = 1107296256;
    lhs.epoch = sub_1C0FD7FC4;
    v43 = &block_descriptor_14;
    v36 = _Block_copy(&lhs);

    sub_1C1265C20();
    lhs.value = MEMORY[0x1E69E7CC0];
    sub_1C1186BCC(&qword_1EDE7B768, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B00);
    sub_1C1186C14();
    sub_1C1266870();
    MEMORY[0x1C68EFDD0](v20, v13, v7, v36);
    _Block_release(v36);

    (*(v39 + 8))(v7, v2);
    (*(v37 + 8))(v13, v38);
    return (v40)(v20, v34);
  }

  return result;
}

uint64_t sub_1C11864A0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1C118607C();
  }

  return result;
}

BOOL sub_1C11864F8()
{
  v1 = sub_1C1185E7C();
  v2 = *(v0 + 44);
  v7.epoch = *(v0 + 60);
  time1.value = v1;
  time1.timescale = v3;
  time1.flags = v4;
  time1.epoch = v5;
  v7.value = v2;
  *&v7.timescale = *(v0 + 52);
  return CMTimeCompare(&time1, &v7) >= 0;
}

uint64_t sub_1C1186550()
{
  OUTLINED_FUNCTION_0_56();
  sub_1C1186BCC(v0, v1);
  return sub_1C1261F20();
}

uint64_t type metadata accessor for PhotosMockPlaybackOverlayModel()
{
  result = qword_1EBE95DF0;
  if (!qword_1EBE95DF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PhotosMockPlaybackOverlayModel.deinit()
{
  v1 = OBJC_IVAR____TtC17PhotosSwiftUICore30PhotosMockPlaybackOverlayModel___observationRegistrar;
  sub_1C1261F70();
  OUTLINED_FUNCTION_4_2();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t PhotosMockPlaybackOverlayModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC17PhotosSwiftUICore30PhotosMockPlaybackOverlayModel___observationRegistrar;
  sub_1C1261F70();
  OUTLINED_FUNCTION_4_2();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

void (*sub_1C1186784(void *a1))(void *)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1C1185A64();
  return sub_1C10768AC;
}

void (*sub_1C11867E8(void *a1))(void *)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1C1185CDC();
  return sub_1C1077800;
}

void (*sub_1C118684C(void *a1))(void *)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1C1185F88();
  return sub_1C1077800;
}

uint64_t sub_1C118697C()
{
  result = sub_1C1261F70();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C1186BCC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C1186C14()
{
  result = qword_1EDE7B708;
  if (!qword_1EDE7B708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE95B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7B708);
  }

  return result;
}

uint64_t type metadata accessor for OneUpChromeVideoControls()
{
  result = qword_1EBE95E00;
  if (!qword_1EBE95E00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C1186CEC()
{
  sub_1C102DEBC(319, &qword_1EDE775D0, &qword_1EBE93D88);
  if (v0 <= 0x3F)
  {
    sub_1C1186DE8();
    if (v1 <= 0x3F)
    {
      sub_1C102DEBC(319, &qword_1EDE77668, &qword_1EBE91478);
      if (v2 <= 0x3F)
      {
        sub_1C102DEBC(319, &qword_1EDE77560, &qword_1EBE902F0);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C1186DE8()
{
  if (!qword_1EDE775E0)
  {
    type metadata accessor for OneUpChromeSpec();
    v0 = sub_1C1262A70();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE775E0);
    }
  }
}

void *sub_1C1186E5C@<X0>(void *a1@<X8>)
{
  v101 = sub_1C1263840();
  OUTLINED_FUNCTION_0();
  v99 = v3;
  MEMORY[0x1EEE9AC00](v4);
  v96 = &v81[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92E58);
  OUTLINED_FUNCTION_0();
  v100 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v97 = &v81[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v98 = &v81[-v10];
  v11 = type metadata accessor for OneUpChromeVideoControls();
  v94 = *(v11 - 8);
  v12 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v95 = &v81[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_1C12637E0();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v81[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = *v1;
  v104 = v15;
  v105 = v1;
  v20 = *(v1 + 8);
  if (v20 == 1)
  {
    v21 = v13;
    v115 = v19;

    if (!v19)
    {
      goto LABEL_15;
    }
  }

  else
  {

    sub_1C1266420();
    v22 = a1;
    v23 = sub_1C1264410();
    OUTLINED_FUNCTION_4_46();

    a1 = v22;
    sub_1C12637D0();
    swift_getAtKeyPath();
    j__swift_release_1();
    v21 = v13;
    (*(v15 + 8))(v18, v13);
    if (!v115)
    {
LABEL_15:
      sub_1C11881E0(v114);
      return memcpy(a1, v114, 0x1A1uLL);
    }
  }

  v24 = sub_1C1213F08();
  v93 = v25;

  v103 = v24;
  if (!v24)
  {
    goto LABEL_15;
  }

  if (v20)
  {
    v26 = v21;
    if (!v19)
    {
      goto LABEL_14;
    }
  }

  else
  {
    sub_1C1266420();
    v27 = a1;
    v28 = sub_1C1264410();
    OUTLINED_FUNCTION_4_46();

    a1 = v27;
    sub_1C12637D0();
    OUTLINED_FUNCTION_3_41();
    swift_getAtKeyPath();
    j__swift_release_1();
    v26 = v21;
    (*(v104 + 8))(v18, v21);
    if (!v114[0])
    {
LABEL_14:
      swift_unknownObjectRelease();
      goto LABEL_15;
    }
  }

  v29 = sub_1C1214C28();

  if ((v29 & 1) == 0)
  {
    goto LABEL_14;
  }

  KeyPath = swift_getKeyPath();
  v110 = 0;
  v91 = swift_getKeyPath();
  v109 = 0;
  v90 = swift_getKeyPath();
  v108 = 0;
  v89 = swift_getKeyPath();
  v107 = 0;
  v86 = v110;
  v87 = v109;
  v88 = v108;
  v30 = *(v105 + 32);
  v31 = *(v105 + 40);
  if (*(v105 + 48) != 1)
  {
    swift_unknownObjectRetain();
    sub_1C1058CE4(v30, v31, 0);
    sub_1C1266420();
    v36 = v26;
    v37 = sub_1C1264410();
    sub_1C1262620();

    v26 = v36;
    sub_1C12637D0();
    OUTLINED_FUNCTION_3_41();
    swift_getAtKeyPath();
    sub_1C0FF9034(v30, v31, 0);
    v32 = v104;
    v38 = OUTLINED_FUNCTION_2_50();
    v39(v38, v36);
    v31 = v114[1];
    if (v114[0])
    {
      goto LABEL_13;
    }

LABEL_18:
    v34 = 0.0;
    goto LABEL_19;
  }

  swift_unknownObjectRetain();
  sub_1C1058CE4(v30, v31, 1);
  v32 = v104;
  if (!v30)
  {
    goto LABEL_18;
  }

LABEL_13:
  ObjectType = swift_getObjectType();
  v34 = (*(v31 + 120))(ObjectType, v31);
  swift_unknownObjectRelease();
LABEL_19:
  v40 = v105;
  v41 = v95;
  sub_1C1178900(v105, v95);
  v42 = (*(v94 + 80) + 32) & ~*(v94 + 80);
  v43 = swift_allocObject();
  v44 = v93;
  *(v43 + 16) = v103;
  *(v43 + 24) = v44;
  v94 = v43;
  sub_1C11881E8(v41, v43 + v42);
  swift_unknownObjectRetain();
  v85 = sub_1C1264460();
  v45 = *(v40 + 16);
  v46 = *(v40 + 24);

  if ((v46 & 1) == 0)
  {
    sub_1C1266420();
    v47 = sub_1C1264410();
    OUTLINED_FUNCTION_1_42();

    sub_1C12637D0();
    OUTLINED_FUNCTION_3_41();
    swift_getAtKeyPath();

    v48 = OUTLINED_FUNCTION_2_50();
    v49(v48, v26);
  }

  v95 = v26;
  v50 = fabs(v34);
  sub_1C12244A8();

  sub_1C12628A0();
  v83 = v52;
  v84 = v51;
  v54 = v53;
  v56 = v55;
  v111 = 0;
  v82 = sub_1C1264490();
  sub_1C1187AF8();
  sub_1C12628A0();
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v112 = 0;

  LODWORD(v105) = v46;
  if ((v46 & 1) == 0)
  {
    sub_1C1266420();
    v65 = sub_1C1264410();
    OUTLINED_FUNCTION_1_42();

    sub_1C12637D0();
    OUTLINED_FUNCTION_3_41();
    swift_getAtKeyPath();

    v66 = OUTLINED_FUNCTION_2_50();
    v67(v66, v95);
  }

  sub_1C12244A8();

  sub_1C12659A0();
  v68 = v93;
  v69 = v50 * -2.5 + 1.0;
  sub_1C1263390();
  memcpy(&v113[7], v116, 0x70uLL);
  if (v105)
  {
    v106[53] = v45;
  }

  else
  {

    sub_1C1266420();
    v70 = sub_1C1264410();
    OUTLINED_FUNCTION_1_42();

    sub_1C12637D0();
    swift_getAtKeyPath();

    (*(v32 + 8))(v18, v95);
  }

  v71 = sub_1C12245D4();

  v72 = v96;
  sub_1C1263830();
  sub_1C1265A60();
  v73 = sub_1C11882C0(&qword_1EDE7BC98, MEMORY[0x1E697F260]);
  v74 = v98;
  v75 = v101;
  sub_1C1262990();

  (*(v99 + 8))(v72, v75);
  v76 = v100;
  v77 = v102;
  (*(v100 + 16))(v97, v74, v102);
  v114[0] = v75;
  v114[1] = v73;
  swift_getOpaqueTypeConformance2();
  v78 = sub_1C1262CE0();
  v79 = v103;
  swift_unknownObjectRelease();
  (*(v76 + 8))(v74, v77);
  v80 = swift_getKeyPath();
  v113[120] = 0;
  v106[0] = v79;
  v106[1] = v68;
  v106[2] = KeyPath;
  LOBYTE(v106[3]) = v86;
  v106[4] = v91;
  LOBYTE(v106[5]) = v87;
  v106[6] = v90;
  memset(&v106[7], 0, 24);
  LOBYTE(v106[10]) = v88;
  v106[11] = v89;
  memset(&v106[12], 0, 25);
  *&v106[16] = v69;
  v106[17] = sub_1C0FBEA18;
  v106[18] = 0;
  v106[19] = sub_1C118824C;
  v106[20] = v94;
  LOBYTE(v106[21]) = v85;
  v106[22] = v84;
  v106[23] = v83;
  v106[24] = v54;
  v106[25] = v56;
  LOBYTE(v106[26]) = 0;
  LOBYTE(v106[27]) = v82;
  v106[28] = v58;
  v106[29] = v60;
  v106[30] = v62;
  v106[31] = v64;
  LOBYTE(v106[32]) = 0;
  memcpy(&v106[32] + 1, v113, 0x77uLL);
  *&v106[47] = v71;
  v106[48] = 0;
  v106[49] = v78;
  v106[50] = v80;
  v106[51] = 0;
  LOBYTE(v106[52]) = 0;
  nullsub_1(v106);
  memcpy(v114, v106, 0x1A1uLL);
  return memcpy(a1, v114, 0x1A1uLL);
}

uint64_t sub_1C1187950(double *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = sub_1C12637E0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  ObjectType = swift_getObjectType();
  result = (*(a3 + 56))(ObjectType, a3);
  if ((result & 1) == 0)
  {
    v14 = *a4;
    v15 = *(a4 + 8);

    if ((v15 & 1) == 0)
    {
      sub_1C1266420();
      v16 = sub_1C1264410();
      sub_1C1262620();

      sub_1C12637D0();
      swift_getAtKeyPath();
      j__swift_release_1();
      result = (*(v8 + 8))(v10, v7);
      v14 = v17[1];
    }

    if (v14)
    {
      if (v11 != sub_1C12140B4())
      {
        sub_1C1211AF4(v11);
      }
    }
  }

  return result;
}

double sub_1C1187AF8()
{
  v1 = sub_1C1263EB0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v45 = &v40[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902E8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v40[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v40[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v40[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v50 = &v40[-v14];
  MEMORY[0x1EEE9AC00](v15);
  v51 = &v40[-v16];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v40[-v18];
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v40[-v21];
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v40[-v24];
  v47 = type metadata accessor for OneUpChromeVideoControls();
  v49 = v0;
  sub_1C0FD72CC(v25);
  v26 = *MEMORY[0x1E697FF40];
  v52 = v2;
  v46 = *(v2 + 104);
  v46(v22, v26, v1);
  __swift_storeEnumTagSinglePayload(v22, 0, 1, v1);
  v48 = v4;
  v27 = *(v4 + 48);
  sub_1C10B1CE8(v25, v9);
  sub_1C10B1CE8(v22, &v9[v27]);
  if (__swift_getEnumTagSinglePayload(v9, 1, v1) == 1)
  {
    v44 = v26;
    sub_1C0F9E21C(v22, &qword_1EBE902F0);
    sub_1C0F9E21C(v25, &qword_1EBE902F0);
    if (__swift_getEnumTagSinglePayload(&v9[v27], 1, v1) != 1)
    {
LABEL_13:
      sub_1C0F9E21C(v9, &qword_1EBE902E8);
      return 20.0;
    }

    sub_1C0F9E21C(v9, &qword_1EBE902F0);
LABEL_6:
    v32 = v51;
    sub_1C0FD72CC(v51);
    v33 = v50;
    v46(v50, v44, v1);
    __swift_storeEnumTagSinglePayload(v33, 0, 1, v1);
    v34 = *(v48 + 48);
    sub_1C10B1CE8(v32, v6);
    sub_1C10B1CE8(v33, &v6[v34]);
    if (__swift_getEnumTagSinglePayload(v6, 1, v1) == 1)
    {
      sub_1C0F9E21C(v33, &qword_1EBE902F0);
      sub_1C0F9E21C(v32, &qword_1EBE902F0);
      if (__swift_getEnumTagSinglePayload(&v6[v34], 1, v1) == 1)
      {
        sub_1C0F9E21C(v6, &qword_1EBE902F0);
        return 40.0;
      }

      v9 = v6;
      goto LABEL_13;
    }

    sub_1C10B1CE8(v6, v12);
    if (__swift_getEnumTagSinglePayload(&v6[v34], 1, v1) == 1)
    {
      v22 = v33;
      v25 = v32;
      v19 = v12;
      v9 = v6;
      goto LABEL_11;
    }

    v36 = v52;
    v37 = v45;
    (*(v52 + 32))(v45, &v6[v34], v1);
    sub_1C11882C0(&qword_1EDE7BAB0, MEMORY[0x1E697FF50]);
    v38 = sub_1C1265DE0();
    v39 = *(v36 + 8);
    v39(v37, v1);
    sub_1C0F9E21C(v33, &qword_1EBE902F0);
    sub_1C0F9E21C(v32, &qword_1EBE902F0);
    v39(v12, v1);
    sub_1C0F9E21C(v6, &qword_1EBE902F0);
    if (v38)
    {
      return 40.0;
    }

    return 20.0;
  }

  sub_1C10B1CE8(v9, v19);
  if (__swift_getEnumTagSinglePayload(&v9[v27], 1, v1) == 1)
  {
LABEL_11:
    sub_1C0F9E21C(v22, &qword_1EBE902F0);
    sub_1C0F9E21C(v25, &qword_1EBE902F0);
    (*(v52 + 8))(v19, v1);
    goto LABEL_13;
  }

  v44 = v26;
  v42 = v12;
  v43 = v6;
  v28 = v52;
  v29 = v45;
  (*(v52 + 32))(v45, &v9[v27], v1);
  sub_1C11882C0(&qword_1EDE7BAB0, MEMORY[0x1E697FF50]);
  v41 = sub_1C1265DE0();
  v30 = *(v28 + 8);
  v31 = v29;
  v12 = v42;
  v6 = v43;
  v30(v31, v1);
  sub_1C0F9E21C(v22, &qword_1EBE902F0);
  sub_1C0F9E21C(v25, &qword_1EBE902F0);
  v30(v19, v1);
  sub_1C0F9E21C(v9, &qword_1EBE902F0);
  if (v41)
  {
    goto LABEL_6;
  }

  return 20.0;
}

uint64_t sub_1C11881E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OneUpChromeVideoControls();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C118824C(double *a1)
{
  v3 = *(type metadata accessor for OneUpChromeVideoControls() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));

  return sub_1C1187950(a1, v4, v5, v6);
}

uint64_t sub_1C11882C0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C1188308()
{
  result = qword_1EDE76FD8;
  if (!qword_1EDE76FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95E10);
    sub_1C118838C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76FD8);
  }

  return result;
}

unint64_t sub_1C118838C()
{
  result = qword_1EDE76FE0;
  if (!qword_1EDE76FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95E18);
    sub_1C1188418();
    sub_1C109739C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76FE0);
  }

  return result;
}

unint64_t sub_1C1188418()
{
  result = qword_1EDE76FE8;
  if (!qword_1EDE76FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95E20);
    sub_1C11884D0();
    sub_1C0FDB6D4(&unk_1EDE7BB70, &qword_1EBE914F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76FE8);
  }

  return result;
}

unint64_t sub_1C11884D0()
{
  result = qword_1EDE77000;
  if (!qword_1EDE77000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95E28);
    sub_1C118855C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77000);
  }

  return result;
}

unint64_t sub_1C118855C()
{
  result = qword_1EDE77030;
  if (!qword_1EDE77030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95E30);
    sub_1C11885E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77030);
  }

  return result;
}

unint64_t sub_1C11885E8()
{
  result = qword_1EDE77098;
  if (!qword_1EDE77098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95E38);
    sub_1C1188674();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77098);
  }

  return result;
}

unint64_t sub_1C1188674()
{
  result = qword_1EDE77158;
  if (!qword_1EDE77158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95E40);
    sub_1C1188700();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77158);
  }

  return result;
}

unint64_t sub_1C1188700()
{
  result = qword_1EDE77288;
  if (!qword_1EDE77288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95E48);
    sub_1C11887B8();
    sub_1C0FDB6D4(&qword_1EDE7BAA0, &qword_1EBE94EC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77288);
  }

  return result;
}

unint64_t sub_1C11887B8()
{
  result = qword_1EDE7BF50;
  if (!qword_1EDE7BF50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95E50);
    sub_1C1188844();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BF50);
  }

  return result;
}

unint64_t sub_1C1188844()
{
  result = qword_1EDE7D690;
  if (!qword_1EDE7D690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7D690);
  }

  return result;
}

void sub_1C1188898()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for MockViewController();
  objc_msgSendSuper2(&v4, sel_viewDidLoad);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() blueColor];
    [v2 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

id MockViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1C1265E70();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id MockViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_1C1265E70();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for MockViewController();
  v6 = objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, v5, a3);

  return v6;
}

id MockViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id MockViewController.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MockViewController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id MockViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MockViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t PhotosInlinePlayState.description.getter()
{
  result = 0x64656C6261736964;
  switch(*v0)
  {
    case 1:
      result = 0x646564616F6C6E75;
      break;
    case 2:
      result = 0x646573756170;
      break;
    case 3:
      result = 0x676E6979616C70;
      break;
    default:
      return result;
  }

  return result;
}

PhotosSwiftUICore::PhotosInlinePlayState_optional __swiftcall PhotosInlinePlayState.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1C1188E24()
{
  result = qword_1EDE822C0;
  if (!qword_1EDE822C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE822C0);
  }

  return result;
}

uint64_t sub_1C1188E80@<X0>(uint64_t *a1@<X8>)
{
  result = PhotosInlinePlayState.rawValue.getter();
  *a1 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for PhotosInlinePlayState(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C1189040()
{
  type metadata accessor for OneUpSpatialPhotoBadgeStateModel();
  swift_allocObject();
  result = sub_1C1189B44();
  qword_1EDE7C6D0 = result;
  return result;
}

uint64_t static OneUpSpatialPhotoBadgeStateModel.shared.getter()
{
  if (qword_1EDE82FD8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1C11890DC()
{
  result = sub_1C1265E70();
  qword_1EDE77720 = result;
  return result;
}

id static OneUpSpatialPhotoBadgeStateModel.threeDBadgeToggled.getter()
{
  if (qword_1EDE7C6E0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDE77720;

  return v1;
}

void sub_1C1189178(unsigned __int8 *a1)
{
  v2 = *a1;
  sub_1C11893E4(v7);
  if (LOBYTE(v7[0]) != v2)
  {
    v3 = [objc_opt_self() defaultCenter];
    if (qword_1EDE7C6E0 != -1)
    {
      swift_once();
    }

    v4 = qword_1EDE77720;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95E58);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C12A8B40;
    v7[0] = 0x65756C615677656ELL;
    v7[1] = 0xE800000000000000;
    sub_1C12668E0();
    *(inited + 96) = &type metadata for OneUpSpatialPhotoBadgeStateModel.State;
    sub_1C11893E4((inited + 72));
    v6 = sub_1C1265CE0();
    sub_1C118A008(v4, v1, v6, v3);
  }
}