uint64_t (*sub_1D7E30BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return sub_1D8125360;
}

uint64_t (*sub_1D7E30D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return sub_1D8125308;
}

void sub_1D7E30E40()
{
  OUTLINED_FUNCTION_16_10();
  OUTLINED_FUNCTION_9_5();
  sub_1D7E11428(v2, v3);
  if (v4)
  {
    OUTLINED_FUNCTION_12_8();
    OUTLINED_FUNCTION_0_11();
    sub_1D7F04690();
    OUTLINED_FUNCTION_1_16();
    OUTLINED_FUNCTION_3_24();
    sub_1D7F04560(0, &unk_1EDBB3450, type metadata accessor for TipPlacement, MEMORY[0x1E69E5E28]);
    sub_1D7E30F60();
    OUTLINED_FUNCTION_11_0();
    sub_1D8192384();
    *v0 = v1;
  }

  OUTLINED_FUNCTION_17_6();
}

unint64_t sub_1D7E30F60()
{
  result = qword_1EDBB34E0;
  if (!qword_1EDBB34E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBB34E0);
  }

  return result;
}

id OUTLINED_FUNCTION_31_7(uint64_t a1, const char *a2)
{
  v6 = *(v4 - 232);

  return [v6 a2];
}

void *OUTLINED_FUNCTION_31_8(void *result)
{
  result[2] = v2;
  result[3] = v5;
  result[4] = v4;
  result[5] = v3;
  result[6] = v1;
  return result;
}

void OUTLINED_FUNCTION_31_11()
{
}

uint64_t OUTLINED_FUNCTION_31_13()
{

  return type metadata accessor for BlueprintPipelineUpdate();
}

uint64_t OUTLINED_FUNCTION_31_14()
{

  return type metadata accessor for StateCommandValue();
}

void OUTLINED_FUNCTION_31_19(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, CGFloat a14, CGFloat a15)
{

  sub_1D7EAED38(a1, a2, a3, a4, a5, v19, v18, v17, a14, a15, a11, a12);
}

uint64_t OUTLINED_FUNCTION_31_20()
{

  return swift_slowAlloc();
}

void sub_1D7E31188()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1D7E31228();
    if (v1 <= 0x3F)
    {
      sub_1D7E2CEC0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1D7E31228()
{
  result = qword_1EDBB2B80;
  if (!qword_1EDBB2B80)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EDBB2B80);
  }

  return result;
}

unint64_t sub_1D7E31294()
{
  result = qword_1EDBB0F18;
  if (!qword_1EDBB0F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBB0F18);
  }

  return result;
}

void sub_1D7E312E8()
{
  if (!qword_1EDBAE310)
  {
    v0 = sub_1D81925C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBAE310);
    }
  }
}

unint64_t sub_1D7E31368()
{
  result = qword_1EDBBBA38;
  if (!qword_1EDBBBA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBBBA38);
  }

  return result;
}

void sub_1D7E313D0()
{
  if (!qword_1EDBBC708)
  {
    sub_1D818E754();
    v0 = sub_1D8191E84();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBBC708);
    }
  }
}

Swift::Void __swiftcall LazyViewController.viewDidLoad()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_viewDidLoad);
  sub_1D818EF14();
}

uint64_t sub_1D7E31480()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

void BlueprintCollectionViewLayout.init(blueprintLayoutCollectionProvider:)()
{
  OUTLINED_FUNCTION_120();
  v1 = v0;
  v3 = v2;
  v4 = *v0;
  v5 = *MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x68);
  sub_1D818E994();
  OUTLINED_FUNCTION_22_1(&v1[v6]);
  OUTLINED_FUNCTION_2_95();
  v8 = *(v7 + 112);
  type metadata accessor for BlueprintCollectionViewLayoutCache();
  v9 = swift_allocObject();
  sub_1D7E2D73C();
  *&v1[v8] = v9;
  OUTLINED_FUNCTION_2_95();
  v11 = &v1[*(v10 + 120)];
  *v11 = 0;
  v11[8] = 1;
  OUTLINED_FUNCTION_2_95();
  OUTLINED_FUNCTION_22_1(&v1[*(v12 + 136)]);
  OUTLINED_FUNCTION_2_95();
  v14 = *(v13 + 144);
  sub_1D7E2DB90(__src);
  memcpy(&v1[v14], __src, 0x4E8uLL);
  OUTLINED_FUNCTION_2_95();
  v16 = *(v15 + 160);
  *&v1[v16] = 0;
  OUTLINED_FUNCTION_2_95();
  v18 = *((v5 & v4) + 0x50);
  v19 = *(v18 - 8);
  (*(v19 + 16))(&v1[*(v17 + 128)], v3, v18);
  type metadata accessor for BlueprintCollectionViewLayoutTransition(0);
  v20 = swift_allocObject();
  v21 = OBJC_IVAR____TtC5TeaUI39BlueprintCollectionViewLayoutTransition_state;
  v22 = type metadata accessor for BlueprintCollectionViewLayoutTransition.State(0);
  __swift_storeEnumTagSinglePayload(v20 + v21, 1, 1, v22);
  *(v20 + OBJC_IVAR____TtC5TeaUI39BlueprintCollectionViewLayoutTransition_completionBlocks) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_2_95();
  *&v1[*(v23 + 96)] = v20;
  v24 = *((v5 & v4) + 0x58);
  (*(v24 + 32))(v36, v18, v24);
  OUTLINED_FUNCTION_2_95();
  memcpy(&v1[*(v25 + 152)], v36, 0x4E8uLL);
  v26 = [objc_allocWithZone(MEMORY[0x1E69E58C0]) init];
  v27 = *&v1[v16];
  *&v1[v16] = v26;
  v28 = v26;

  v34.receiver = v1;
  v34.super_class = type metadata accessor for BlueprintCollectionViewLayout();
  v29 = objc_msgSendSuper2(&v34, sel_init);
  [v29 setTs:0 sortItemsLogicallyForAccessibility:?];
  (*(v24 + 40))(v18, v24);
  OUTLINED_FUNCTION_0_8();
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v31 = swift_allocObject();
  v31[2] = v18;
  v31[3] = v24;
  v31[4] = v30;
  sub_1D818F174();

  __swift_project_boxed_opaque_existential_1(v33, v33[3]);
  v32 = v28;
  sub_1D818ED84();

  (*(v19 + 8))(v3, v18);
  __swift_destroy_boxed_opaque_existential_1Tm(v33);
  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D7E318B0()
{
  MEMORY[0x1DA715E30](v0 + 16);
  OUTLINED_FUNCTION_19();

  return swift_deallocObject();
}

uint64_t sub_1D7E318E0()
{

  OUTLINED_FUNCTION_0_127();

  return swift_deallocObject();
}

void sub_1D7E31954(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D8191E84();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D7E319A8()
{
  if (!qword_1EDBBC700)
  {
    sub_1D818E794();
    sub_1D7E31954(255, &qword_1EDBB2FA0, type metadata accessor for CGPoint);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDBBC700);
    }
  }
}

uint64_t sub_1D7E31A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D7E319A8();

  return __swift_storeEnumTagSinglePayload(a1, a2, a3, v6);
}

uint64_t sub_1D7E31AD4()
{
  result = sub_1D818E994();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D7E31B6C()
{
  if (!qword_1EDBAE458)
  {
    sub_1D7E0A1A8(255, &qword_1EDBB2FC0);
    v0 = sub_1D8191E84();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBAE458);
    }
  }
}

uint64_t sub_1D7E31BE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = OUTLINED_FUNCTION_1_151();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = OUTLINED_FUNCTION_145();

    return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }

  else
  {
    *(v5 + *(a4 + 20)) = (v4 - 1);
  }

  return result;
}

void sub_1D7E31C78(void *a1)
{
  sub_1D7E2E6A0();
  swift_unknownObjectWeakAssign();
  sub_1D7E2E74C();
}

void *BlueprintLayoutCollectionInvalidator.init(layoutCollectionProvider:impressionTracking:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D8191AA4();
  OUTLINED_FUNCTION_9();
  v16 = v5;
  v17 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  v8 = v7 - v6;
  v9 = sub_1D8191A84();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15();
  v10 = sub_1D8190C34();
  MEMORY[0x1EEE9AC00](v10 - 8);
  OUTLINED_FUNCTION_15();
  v11 = sub_1D818EDE4();
  MEMORY[0x1EEE9AC00](v11 - 8);
  OUTLINED_FUNCTION_15();
  sub_1D818EDD4();
  sub_1D818EE04();
  swift_allocObject();
  v12 = sub_1D818EDF4();
  v13 = MEMORY[0x1E69E7CC8];
  v3[2] = v12;
  v3[3] = v13;
  v3[4] = v13;
  sub_1D7E11E0C();
  sub_1D8190C14();
  sub_1D7E10290(&unk_1EDBB3180, MEMORY[0x1E69E8030]);
  v14 = MEMORY[0x1E69E8030];
  sub_1D7E10384(0, &qword_1EDBB3308, MEMORY[0x1E69E8030]);
  sub_1D7E104A0(&qword_1EDBB3300, &qword_1EDBB3308, v14);
  sub_1D8192004();
  (*(v16 + 104))(v8, *MEMORY[0x1E69E8090], v17);
  v3[8] = sub_1D8191AE4();
  v3[9] = dispatch_group_create();
  v3[5] = a1;
  v3[6] = a2;
  v3[7] = a3;
  return v3;
}

uint64_t sub_1D7E31FA0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7E2E7F0();
  result = sub_1D818EFB4();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for RendererEnvironment();
    v6 = objc_allocWithZone(v5);
    result = RendererEnvironment.init(scrollView:testing:)(v4, 1);
    a2[3] = v5;
    a2[4] = &protocol witness table for RendererEnvironment;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7E32050@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for SectionFooterViewStyler();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_1F52EE178;
  *a1 = result;
  return result;
}

void sub_1D7E32104(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

char *BarCompressionManager.init(sceneStateManager:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC5TeaUI21BarCompressionManager_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC5TeaUI21BarCompressionManager_isEnabled] = 1;
  v1[OBJC_IVAR____TtC5TeaUI21BarCompressionManager_shouldExpandAtBottom] = 1;
  v5 = &v1[OBJC_IVAR____TtC5TeaUI21BarCompressionManager____lazy_storage___state];
  v5[2] = 0;
  *v5 = 512;
  *&v1[OBJC_IVAR____TtC5TeaUI21BarCompressionManager_scrollView] = 0;
  v6 = &v1[OBJC_IVAR____TtC5TeaUI21BarCompressionManager_proxyMultiDelegate];
  *v6 = 0u;
  v6[1] = 0u;
  v7 = OBJC_IVAR____TtC5TeaUI21BarCompressionManager_barAnimator;
  *&v2[v7] = [objc_allocWithZone(TUDynamicBarAnimator) init];
  *&v2[OBJC_IVAR____TtC5TeaUI21BarCompressionManager_navigationBarAnimation] = 0;
  *&v2[OBJC_IVAR____TtC5TeaUI21BarCompressionManager_tabBarAnimation] = 0;
  *&v2[OBJC_IVAR____TtC5TeaUI21BarCompressionManager_toolbarAnimation] = 0;
  v2[OBJC_IVAR____TtC5TeaUI21BarCompressionManager_barState] = 2;
  *&v2[OBJC_IVAR____TtC5TeaUI21BarCompressionManager_observingToken] = 0;
  v8 = &v2[OBJC_IVAR____TtC5TeaUI21BarCompressionManager_lastContentOffset];
  *v8 = 0;
  v8[1] = 0;
  v9 = &v2[OBJC_IVAR____TtC5TeaUI21BarCompressionManager_initialContentOffset];
  *v9 = 0;
  v9[1] = 0;
  *&v2[OBJC_IVAR____TtC5TeaUI21BarCompressionManager_scrollDebounce] = 0;
  v10 = OBJC_IVAR____TtC5TeaUI21BarCompressionManager__lastBarCompressEvent;
  v17[0] = 2;
  sub_1D7E2F8BC();
  swift_allocObject();
  *&v2[v10] = sub_1D818FA24();
  sub_1D7E0E768(a1, &v2[OBJC_IVAR____TtC5TeaUI21BarCompressionManager_sceneStateManager]);
  v18.receiver = v2;
  v18.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v18, sel_init);
  v12 = *&v11[OBJC_IVAR____TtC5TeaUI21BarCompressionManager_barAnimator];
  v13 = v11;
  [v12 setDelegate_];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7E2F938();
  v14 = v13;
  sub_1D818F624();

  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  v15 = [objc_opt_self() defaultCenter];
  [v15 addObserver:v14 selector:sel_voiceOverStatusDidChange name:*MEMORY[0x1E69DDA58] object:0];

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v14;
}

void sub_1D7E32438(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_95();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    type metadata accessor for BlueprintItem();
    OUTLINED_FUNCTION_95();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[13];
    }

    else
    {
      sub_1D818E754();
      OUTLINED_FUNCTION_95();
      if (*(v16 + 84) != a3)
      {
        *(a1 + a4[18] + 8) = (a2 - 1);
        return;
      }

      v10 = v15;
      v14 = a4[14];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_1D7E3259C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_42_16();
    OUTLINED_FUNCTION_4_2();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_3_11();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_7_7();
    v8 = sub_1D818F394();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 56);
    }

    else
    {
      OUTLINED_FUNCTION_42_16();
      OUTLINED_FUNCTION_40_14();
      OUTLINED_FUNCTION_7_5();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_4_2();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_3_11();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_0_44();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_1_1();
      swift_getWitnessTable();
      v9 = OUTLINED_FUNCTION_27_30();
      v10 = *(a4 + 60);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1D7E32708(uint64_t a1, uint64_t a2, uint64_t a3)
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
    OUTLINED_FUNCTION_39_18();
    OUTLINED_FUNCTION_4_2();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_3_11();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_7_7();
    v8 = sub_1D818F394();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 56);
    }

    else
    {
      OUTLINED_FUNCTION_39_18();
      OUTLINED_FUNCTION_40_14();
      OUTLINED_FUNCTION_7_5();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_4_2();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_3_11();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_0_44();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_1_1();
      swift_getWitnessTable();
      v9 = OUTLINED_FUNCTION_27_30();
      v10 = *(a3 + 60);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t BarCompressionManager.shouldExpandAtBottom.setter(char a1)
{
  v3 = OBJC_IVAR____TtC5TeaUI21BarCompressionManager_shouldExpandAtBottom;
  result = OUTLINED_FUNCTION_0_25();
  *(v1 + v3) = a1;
  return result;
}

void sub_1D7E328A8(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1D7E0631C(255, a3);
    v4 = sub_1D8191E84();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D7E32900(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D7E0631C(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D7E32968()
{
  v1 = *MEMORY[0x1E69E7D40] & *v0;
  v2 = (v0 + *(v1 + 0xA0));
  result = swift_beginAccess();
  if (*v2)
  {
    v4 = v2[1];
    ObjectType = swift_getObjectType();
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = swift_allocObject();
    *(v7 + 16) = *(v1 + 80);
    *(v7 + 32) = *(v1 + 96);
    *(v7 + 40) = *(v1 + 104);
    *(v7 + 56) = *(v1 + 120);
    *(v7 + 64) = v6;
    v8 = *(v4 + 8);
    swift_unknownObjectRetain();

    v8(sub_1D80EF9D4, v7, ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D7E32ADC()
{
  MEMORY[0x1DA715E30](v0 + 16);
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7E32B10()
{

  OUTLINED_FUNCTION_15_17();

  return swift_deallocObject();
}

uint64_t BlueprintLayoutCollectionPipelineProcessor.init(layoutConfig:layoutBuilder:layoutCollectionFactory:layoutTransitionManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + *(*v4 + 152)) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_12();
  *(v4 + *(v7 + 160)) = v8;
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_8_43();
  (*(v9 + 32))(v4 + v10);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_8_43();
  (*(v11 + 32))(v4 + v12, a3);
  OUTLINED_FUNCTION_12();
  *(v4 + *(v13 + 144)) = a4;
  return v4;
}

__n128 *sub_1D7E32C80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1D7E11428(a2, a3);
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  sub_1D7E17BB8(0, qword_1EDBB2E40);
  if ((sub_1D8192374() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = sub_1D7E11428(a2, a3);
  if ((v12 & 1) != (v14 & 1))
  {
LABEL_13:
    result = sub_1D8192714();
    __break(1u);
    return result;
  }

  v11 = v13;
LABEL_5:
  v15 = *v4;
  if (v12)
  {
    v16 = (*(v15 + 56) + 40 * v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);

    return sub_1D7E176EC(a1, v16);
  }

  else
  {
    sub_1D7E301A0(v11, a2, a3, a1, v15);

    return sub_1D8190DB4();
  }
}

uint64_t RestoreViewportBlueprintBookmarkApplicator.init(blueprintLayoutProvider:blueprintViewProvider:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_0();
  (*(v4 + 32))(v2 + v5);
  *(v2 + *(*v2 + 120)) = a2;
  return v2;
}

uint64_t sub_1D7E32E9C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t SectionBlueprintBookmarkApplicator.init(blueprintProvider:blueprintLayoutProvider:blueprintViewProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_48_0();
  (*(v6 + 32))(v3 + v7);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_48_0();
  (*(v8 + 32))(v3 + v9, a2);
  OUTLINED_FUNCTION_12();
  *(v3 + *(v10 + 144)) = a3;
  return v3;
}

uint64_t SectionBlueprintBookmarkApplicator.supportedBookmark.getter@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  type metadata accessor for BlueprintBookmark();
  a1[2] = 0;
  a1[3] = 0;

  return swift_storeEnumTagMultiPayload();
}

void BlueprintCollectionViewDelegate.viewportMonitor.setter()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_3_7();
  v3 = *(v2 + 224);
  OUTLINED_FUNCTION_5_0();
  v4 = *(v1 + v3);
  *(v1 + v3) = v0;
  v5 = v0;

  sub_1D7E30350();
}

uint64_t sub_1D7E33140(void *a1, void *a2, uint64_t *a3)
{
  v5 = v3;
  [*(v5 + *a2) addObject_];
  v7 = *a3;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  v8 = *(v5 + v7);
  v9 = 1 << *(v8 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v8 + 64);
  v12 = (v9 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v13 = 0;
  v39 = MEMORY[0x1E69E7CC0];
  while (v11)
  {
LABEL_9:
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v16 = v15 | (v13 << 6);
    if ((*(*(v8 + 56) + v16) & 1) == 0)
    {
      v17 = *(*(v8 + 48) + 8 * v16);
      if ([a1 respondsToSelector_])
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D7EE4950(0, *(v39 + 16) + 1, 1, v39);
          v39 = v21;
        }

        v19 = *(v39 + 16);
        v18 = *(v39 + 24);
        v20 = v19 + 1;
        if (v19 >= v18 >> 1)
        {
          v36 = *(v39 + 16);
          v37 = v19 + 1;
          sub_1D7EE4950(v18 > 1, v19 + 1, 1, v39);
          v19 = v36;
          v20 = v37;
          v39 = v22;
        }

        *(v39 + 16) = v20;
        *(v39 + 8 * v19 + 32) = v17;
      }
    }
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v14 >= v12)
    {
      break;
    }

    v11 = *(v8 + 64 + 8 * v14);
    ++v13;
    if (v11)
    {
      v13 = v14;
      goto LABEL_9;
    }
  }

  v38 = *(v39 + 16);
  if (!v38)
  {
  }

  v23 = 0;
  while (v23 < *(v39 + 16))
  {
    v24 = *(v39 + 32 + 8 * v23);
    OUTLINED_FUNCTION_15_2();
    swift_isUniquelyReferenced_nonNull_native();
    v25 = *(v5 + v7);
    *(v5 + v7) = 0x8000000000000000;
    v26 = sub_1D7E3FE88();
    if (__OFADD__(v25[2], (v27 & 1) == 0))
    {
      goto LABEL_31;
    }

    v28 = v26;
    v29 = v27;
    sub_1D7F55514();
    if (sub_1D8192374())
    {
      v30 = sub_1D7E3FE88();
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_33;
      }

      v28 = v30;
    }

    if (v29)
    {
      *(v25[7] + v28) = 1;
    }

    else
    {
      v25[(v28 >> 6) + 8] |= 1 << v28;
      *(v25[6] + 8 * v28) = v24;
      *(v25[7] + v28) = 1;
      v32 = v25[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_32;
      }

      v25[2] = v34;
    }

    ++v23;
    *(v5 + v7) = v25;
    swift_endAccess();
    if (v38 == v23)
    {
    }
  }

LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_1D8192714();
  __break(1u);
  return result;
}

void sub_1D7E3345C()
{
  sub_1D818E8B4();
  if (v0 <= 0x3F)
  {
    sub_1D7E1B618(319, &qword_1EDBB3378, &type metadata for BlueprintInfiniteScroll.Marker, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1D7E33568();
      if (v2 <= 0x3F)
      {
        sub_1D7E1B618(319, qword_1EDBB50B0, &type metadata for BlueprintInfiniteScrollIdleTrigger, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D7E33568()
{
  if (!qword_1EDBB32B0)
  {
    v0 = sub_1D81916C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBB32B0);
    }
  }
}

uint64_t _s6TraitsVwst(uint64_t result, int a2, int a3)
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

uint64_t BlueprintInfiniteScroll.init(layoutDirection:idleTrigger:)@<X0>(char *a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = type metadata accessor for BlueprintInfiniteScroll();
  result = sub_1D818E8A4();
  *&a3[v7[6]] = MEMORY[0x1E69E7CC0];
  *&a3[v7[7]] = MEMORY[0x1E69E7CD0];
  *a3 = v4;
  v9 = &a3[v7[8]];
  *v9 = v5;
  v9[8] = v6;
  return result;
}

void sub_1D7E33688(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E7CA8] + 8);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D7E336E0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t (*sub_1D7E33730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return sub_1D81253B8;
}

uint64_t OUTLINED_FUNCTION_42_6()
{

  return sub_1D8190EE4();
}

void OUTLINED_FUNCTION_42_7()
{

  JUMPOUT(0x1DA713260);
}

uint64_t OUTLINED_FUNCTION_42_10()
{
}

uint64_t OUTLINED_FUNCTION_42_16()
{

  return type metadata accessor for BlueprintSection();
}

uint64_t BlueprintAnimatorManager.init()()
{
  result = v0;
  *(v0 + 16) = MEMORY[0x1E69E7CC8];
  return result;
}

uint64_t type metadata accessor for BlueprintInfiniteScroll()
{
  result = qword_1EDBB8558;
  if (!qword_1EDBB8558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D7E33AB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BlueprintInfiniteScroll();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D7E33B18()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for CardSplitViewController();
  objc_msgSendSuper2(&v4, sel_loadView);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() separatorColor];
    [v2 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

id CardSplitViewController.init(cardContainerController:commandContainer:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *&v3[OBJC_IVAR____TtC5TeaUI23CardSplitViewController_preservedItems] = MEMORY[0x1E69E7CC0];
  v8 = OBJC_IVAR____TtC5TeaUI23CardSplitViewController_eventManager;
  sub_1D7E362A4();
  swift_allocObject();
  *&v3[v8] = sub_1D818EF74();
  v9 = &v3[OBJC_IVAR____TtC5TeaUI23CardSplitViewController_primaryCardContainerController];
  *v9 = a1;
  *(v9 + 1) = a2;
  *&v3[OBJC_IVAR____TtC5TeaUI23CardSplitViewController_commands] = a3;
  v3[OBJC_IVAR____TtC5TeaUI23CardSplitViewController_splitViewFocus] = 0;
  v13.receiver = v3;
  v13.super_class = type metadata accessor for CardSplitViewController();
  v10 = a1;
  OUTLINED_FUNCTION_6_35();

  v11 = objc_msgSendSuper2(&v13, sel_initWithNibName_bundle_, 0, 0);
  [v11 setDelegate_];

  return v11;
}

uint64_t sub_1D7E33D3C(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for CardSplitViewController();
  objc_msgSendSuper2(&v4, sel_viewWillAppear_, a1 & 1);
  return sub_1D7E36C8C();
}

id ForwardingTouchToolbar.init(frame:)()
{
  OUTLINED_FUNCTION_155();
  swift_getObjectType();
  OUTLINED_FUNCTION_2_24(OBJC_IVAR___TUForwardingTouchToolbar_maxHeight);
  v0 = OUTLINED_FUNCTION_80();
  return objc_msgSendSuper2(v1, v2, v0);
}

uint64_t sub_1D7E33E5C()
{
  sub_1D81927E4();
  MEMORY[0x1DA714A00](0);
  return sub_1D8192824();
}

Swift::Void __swiftcall CardNavigationController.navigationController(_:willShow:animated:)(UINavigationController *_, UIViewController *willShow, Swift::Bool animated)
{
  v5 = [(UINavigationController *)_ viewControllers];
  sub_1D7E194D0();
  v6 = sub_1D8191314();

  if (!sub_1D7E36AB8(v6))
  {

LABEL_7:
    v8 = [(UINavigationController *)_ navigationBar];
    [(UINavigationBar *)v8 setNeedsLayout];

    return;
  }

  sub_1D7E33DD8(0, (v6 & 0xC000000000000001) == 0, v6);
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x1DA714420](0, v6);
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = *(v6 + 32);
  }

  if (v7 != willShow)
  {
    goto LABEL_7;
  }
}

unint64_t sub_1D7E33FAC()
{
  result = qword_1EDBB0628;
  if (!qword_1EDBB0628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBB0628);
  }

  return result;
}

uint64_t sub_1D7E34000()
{
  OUTLINED_FUNCTION_3_139();
  result = sub_1D8190EE4();
  qword_1EDBB55C8 = result;
  return result;
}

uint64_t sub_1D7E34034()
{
  OUTLINED_FUNCTION_3_139();
  result = sub_1D8190EE4();
  qword_1EDBB55E0 = result;
  return result;
}

uint64_t sub_1D7E34184()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for CardSplitViewController();
  v1 = objc_msgSendSuper2(&v4, sel_viewControllers);
  sub_1D7E0A1A8(0, &qword_1EDBB31B0);
  OUTLINED_FUNCTION_25();
  v2 = sub_1D8191314();

  return v2;
}

uint64_t sub_1D7E341F8(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_1D81920A4();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

id sub_1D7E3421C(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for CardSplitViewController();
  return objc_msgSendSuper2(&v4, *a1);
}

void sub_1D7E342C8()
{
  OUTLINED_FUNCTION_79();
  v6 = v5;
  if (*(v5 + 16) && (sub_1D7E25D58(0, v2, v3, v4, MEMORY[0x1E69E6A10]), OUTLINED_FUNCTION_14(), v7 = sub_1D8192164(), (v8 = *(v6 + 16)) != 0))
  {
    OUTLINED_FUNCTION_51_2();
    while (v1 < *(v6 + 16))
    {
      OUTLINED_FUNCTION_85_1();
      MEMORY[0x1DA714A00](v0);
      sub_1D8192824();
      while (1)
      {
        OUTLINED_FUNCTION_49_1();
        if (v10)
        {
          break;
        }

        if (v0 == *(*(v7 + 48) + v9))
        {
          goto LABEL_11;
        }
      }

      OUTLINED_FUNCTION_39_2();
      if (v12)
      {
        goto LABEL_14;
      }

      *(v7 + 16) = v11;
LABEL_11:
      if (v1 == v8)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  else
  {
LABEL_12:

    OUTLINED_FUNCTION_80_0();
  }
}

unint64_t sub_1D7E343E4()
{
  result = qword_1EDBBC470;
  if (!qword_1EDBBC470)
  {
    sub_1D818F5F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBBC470);
  }

  return result;
}

uint64_t BlueprintViewController.viewProvider.getter()
{
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  return swift_unknownObjectRetain();
}

void BlueprintCollectionViewDragDelegate2.init(blueprintProvider:blueprintLayoutProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_30_3();
  a20 = v23;
  a21 = v24;
  v25 = OUTLINED_FUNCTION_72_4();
  v26 = *v22;
  v27 = *MEMORY[0x1E69E7D40];
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_3_75();
  v29 = v22 + *(v28 + 152);
  *v29 = 0u;
  *(v29 + 1) = 0u;
  *(v29 + 4) = 0;
  OUTLINED_FUNCTION_3_75();
  v30 = *((v27 & v26) + 0x50);
  OUTLINED_FUNCTION_48_0();
  v32 = v31;
  v34 = OUTLINED_FUNCTION_34_10(v33);
  v35(v34);
  OUTLINED_FUNCTION_3_75();
  OUTLINED_FUNCTION_48_0();
  v37 = OUTLINED_FUNCTION_64_5(v36);
  v38(v37);
  a9.receiver = v22;
  a9.super_class = v25;
  objc_msgSendSuper2(&a9, sel_init);
  v39 = OUTLINED_FUNCTION_35_11();
  v40(v39);
  (*(v32 + 8))(v21, v30);
  OUTLINED_FUNCTION_29();
}

uint64_t OUTLINED_FUNCTION_72_1()
{

  return sub_1D7E2BA7C();
}

uint64_t OUTLINED_FUNCTION_72_4()
{

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_64_2()
{

  return sub_1D81918F4();
}

uint64_t OUTLINED_FUNCTION_64_7()
{
}

uint64_t BlueprintViewProvider.init(view:viewDataSource:viewDelegate:viewDragDelegate:dragBehavior:)()
{
  OUTLINED_FUNCTION_2_7();
  v2 = *v1;
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_15_47();
  *(v0 + 64) = v2;
  return v0;
}

uint64_t sub_1D7E34834(uint64_t a1)
{
  sub_1D7E34890();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D7E34890()
{
  if (!qword_1EDBB4430)
  {
    sub_1D7E27270();
    v0 = sub_1D8191E84();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBB4430);
    }
  }
}

void BlueprintPipeline.init(blueprintProvider:integrator:name:useDiffableDataSource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_79();
  a29 = v31;
  a30 = v32;
  v69 = v33;
  v35 = v34;
  v66 = v37;
  v67 = v36;
  v68 = v38;
  v39 = *v30;
  v30[3] = 0;
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_12();
  v41 = *(v40 + 160);
  v42 = v39[12];
  v43 = v39[10];
  v44 = OUTLINED_FUNCTION_131_1();
  v45 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_102_1();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_102_1();
  OUTLINED_FUNCTION_64();
  v47 = swift_getAssociatedConformanceWitness();
  a15 = v44;
  a16 = v45;
  a17 = AssociatedConformanceWitness;
  a18 = v47;
  type metadata accessor for BlueprintPipelineProcessor();
  *(v30 + v41) = sub_1D8190D34();
  type metadata accessor for BlueprintPipelineQueues();
  swift_allocObject();
  sub_1D8190DB4();
  sub_1D7E27514(v66, v35);
  OUTLINED_FUNCTION_39_5();
  *(v30 + *(v48 + 136)) = v49;
  OUTLINED_FUNCTION_39_5();
  OUTLINED_FUNCTION_48_0();
  v51 = v50;
  v53 = OUTLINED_FUNCTION_124_2(v52);
  v54(v53, v67, v43);
  OUTLINED_FUNCTION_39_5();
  v55 = v39[11];
  OUTLINED_FUNCTION_48_0();
  v57 = v56;
  v59 = OUTLINED_FUNCTION_124_2(v58);
  v60(v59, v68, v55);
  OUTLINED_FUNCTION_39_5();
  v62 = (v30 + *(v61 + 144));
  *v62 = v66;
  v62[1] = v35;
  (*(v42 + 56))(&a15, v43, v42);
  (*(v57 + 8))(v68, v55);
  (*(v51 + 8))(v67, v43);
  OUTLINED_FUNCTION_39_5();
  *(v30 + *(v63 + 152)) = v64;
  OUTLINED_FUNCTION_39_5();
  *(v30 + *(v65 + 168)) = v69;
  OUTLINED_FUNCTION_80_0();
}

uint64_t OUTLINED_FUNCTION_132_2()
{

  return swift_getAssociatedTypeWitness();
}

void sub_1D7E34C50()
{
  if (!qword_1EDBB36F0)
  {
    v0 = type metadata accessor for Debounce();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBB36F0);
    }
  }
}

uint64_t DebouncedSet.init(_:)(uint64_t a1)
{
  sub_1D7E34C50();
  OUTLINED_FUNCTION_56_0();
  swift_getTupleTypeMetadata2();
  sub_1D81913C4();
  v5[0] = a1;
  v5[1] = sub_1D8190D94();
  OUTLINED_FUNCTION_56_0();
  v3 = type metadata accessor for DebouncedSet.State();
  *(v1 + 16) = sub_1D7E34DBC(v5, v3);
  return v1;
}

uint64_t sub_1D7E34D80()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D7E34DBC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2();
  v5 = v4;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, a2, v7);
  v10 = sub_1D7E34EC4(v9, a2);
  (*(v5 + 8))(a1, a2);
  return v10;
}

uint64_t sub_1D7E34EC4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for os_unfair_lock_s();
  sub_1D8192244();
  v4 = sub_1D8192234();
  (*(*(a2 - 8) + 8))(a1, a2);
  return v4;
}

uint64_t sub_1D7E34F74@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a1 + ((*(v2 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v2 + *MEMORY[0x1E69E6B68]) - 8) + 16))(a2);
}

id ApplicationContentSizeCategoryProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t BlueprintLayoutOptionsProvider.__allocating_init(view:contentSizeCategoryProvider:compositionalLayoutOptionsProvider:appTraitEnvironmentProvider:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1D7E26B14(a3, v11);
  OUTLINED_FUNCTION_8_33();
  v9 = swift_allocObject();
  BlueprintLayoutOptionsProvider.init(view:compositionalLayoutOptionsProvider:appTraitEnvironmentProvider:)(a1, v11, a4, a5);
  swift_unknownObjectRelease();
  sub_1D7E27310(a3);
  return v9;
}

id ScrollTracker.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC5TeaUI13ScrollTracker_callbacks] = MEMORY[0x1E69E7CC0];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t BlueprintLayoutCollectionPipelineProcessor.init(layoutProvider:layoutOptionsProvider:layoutBuilder:layoutCollectionFactory:layoutCollectionProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + *(*v5 + 152)) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_39_5();
  OUTLINED_FUNCTION_8_43();
  (*(v7 + 32))(v5 + v8, v9);
  OUTLINED_FUNCTION_39_5();
  OUTLINED_FUNCTION_8_43();
  (*(v10 + 32))(v5 + v11, a5);
  OUTLINED_FUNCTION_39_5();
  *(v5 + *(v12 + 160)) = 1;
  type metadata accessor for BlueprintLayoutTransitionManager();
  BlueprintLayoutTransitionManager.__allocating_init(layoutProvider:layoutCollectionProvider:layoutOptionsProvider:prepareLayout:)();
  OUTLINED_FUNCTION_39_5();
  *(v5 + *(v13 + 144)) = v14;
  return v5;
}

uint64_t BlueprintLayoutTransitionManager.__allocating_init(layoutProvider:layoutCollectionProvider:layoutOptionsProvider:prepareLayout:)()
{
  OUTLINED_FUNCTION_5_29();
  v0 = swift_allocObject();
  BlueprintLayoutTransitionManager.init(layoutProvider:layoutCollectionProvider:layoutOptionsProvider:prepareLayout:)();
  return v0;
}

uint64_t sub_1D7E35410()
{
  result = swift_checkMetadataState();
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

uint64_t IndexPathBlueprintBookmarkApplicator.init(blueprintLayoutProvider:blueprintViewProvider:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_0();
  (*(v4 + 32))(v2 + v5);
  *(v2 + *(*v2 + 120)) = a2;
  return v2;
}

uint64_t IndexPathBlueprintBookmarkApplicator.supportedBookmark.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1D7E2A12C();
  v3 = (a1 + *(v2 + 48));
  MEMORY[0x1DA710B40](0, 0);
  type metadata accessor for BlueprintBookmark();
  *v3 = 0;
  v3[1] = 0;

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D7E355D8()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t ItemBlueprintBookmarkApplicator.init(blueprintProvider:blueprintLayoutProvider:blueprintViewProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_48_0();
  (*(v6 + 32))(v3 + v7);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_48_0();
  (*(v8 + 32))(v3 + v9, a2);
  OUTLINED_FUNCTION_12();
  *(v3 + *(v10 + 144)) = a3;
  return v3;
}

uint64_t ItemBlueprintBookmarkApplicator.supportedBookmark.getter@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  type metadata accessor for BlueprintBookmark();
  a1[2] = 0;
  a1[3] = 0;

  return swift_storeEnumTagMultiPayload();
}

void _s5TeaUI36BlueprintCollectionViewDragDelegate2C8delegateq0_Sgvs_0(void *a1)
{
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_5_0();
  swift_unknownObjectWeakAssign();
}

uint64_t sub_1D7E358B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 40) = a3;
  result = swift_unknownObjectWeakAssign();
  if (*(v3 + qword_1EDBB4098))
  {
    return sub_1D7E35914(a1, a2, a3);
  }

  return result;
}

uint64_t sub_1D7E35914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_12();
  swift_unknownObjectWeakAssign();
  *(v3 + 40) = a3;

  return swift_unknownObjectWeakAssign();
}

uint64_t BlueprintCompositionalListLayoutConfigProvider.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + qword_1EDBC6068;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  sub_1D7E359E8();
  return swift_unknownObjectRelease();
}

uint64_t sub_1D7E359E8()
{
  v1 = *v0;
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  v4 = v1[10];
  v3[2] = v4;
  v5 = v1[11];
  v3[3] = v5;
  v6 = v1[12];
  v3[4] = v6;
  v7 = v1[13];
  v3[5] = v7;
  v3[6] = v2;
  swift_beginAccess();

  sub_1D8190284();
  swift_endAccess();

  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  *&v10 = v4;
  *(&v10 + 1) = v5;
  *&v11 = v6;
  *(&v11 + 1) = v7;
  *(v9 + 16) = v10;
  *(v9 + 32) = v11;
  *(v9 + 48) = v8;
  swift_beginAccess();

  sub_1D8190274();
  swift_endAccess();
}

uint64_t sub_1D7E35BC4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D7E35BFC()
{

  return swift_deallocObject();
}

uint64_t BlueprintCompositionalListLayoutSwipeActionsProvider.delegate.setter()
{
  OUTLINED_FUNCTION_12();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t type metadata accessor for UIKitCardContainerController()
{
  result = qword_1EDBAFA78;
  if (!qword_1EDBAFA78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D7E35CEC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D818F9E4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D7E35D40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D7E35DA4()
{
  sub_1D7E35D40(319, &unk_1EDBB1FE0, type metadata accessor for UIKitCardItem, MEMORY[0x1E69D6AD8]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id StatusBarView.init(frame:)()
{
  v9.receiver = v0;
  v9.super_class = swift_getObjectType();
  v7 = OUTLINED_FUNCTION_1_12(v9.super_class, sel_initWithFrame_, v1, v2, v3, v4, v5, v6, v9);
  [v7 setPreservesSuperviewLayoutMargins_];
  [v7 setAutoresizingMask_];

  return v7;
}

void sub_1D7E35F5C()
{
  qword_1EDBB0B48 = 0;
  byte_1EDBB0B50 = 1;
  qword_1EDBB0B58 = 0x4050000000000000;
  byte_1EDBB0B60 = 1;
  qword_1EDBB0B68 = 0x4056000000000000;
  byte_1EDBB0B70 = 65;
  qword_1EDBB0B78 = 0x3FD999999999999ALL;
  byte_1EDBB0B80 = 0x80;
  qword_1EDBB0B88 = 0;
  byte_1EDBB0B90 = 64;
}

void sub_1D7E35FB4()
{
  if (!qword_1EDBB2060)
  {
    sub_1D7E36010();
    v0 = sub_1D818EF84();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBB2060);
    }
  }
}

unint64_t sub_1D7E36010()
{
  result = qword_1EDBAFA90;
  if (!qword_1EDBAFA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBAFA90);
  }

  return result;
}

unint64_t sub_1D7E36068()
{
  result = qword_1EDBAFA88;
  if (!qword_1EDBAFA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBAFA88);
  }

  return result;
}

uint64_t sub_1D7E360BC()
{
  OUTLINED_FUNCTION_66_0();
  v2 = v1 + OBJC_IVAR____TtC5TeaUI28UIKitCardContainerController_delegate;
  swift_beginAccess();
  *(v2 + 8) = v0;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

id CardNavigationController.init(rootViewController:commandCenter:)()
{
  OUTLINED_FUNCTION_0_69();
  ObjectType = swift_getObjectType();
  v5 = &v1[OBJC_IVAR____TtC5TeaUI24CardNavigationController_commandCenter];
  *v5 = v2;
  *(v5 + 1) = v0;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  swift_unknownObjectRetain();
  v6 = objc_msgSendSuper2(&v8, sel_initWithRootViewController_, v3);
  [v6 _setAllowsInteractivePopWhenNavigationBarHidden_];

  swift_unknownObjectRelease();
  return v6;
}

Swift::Void __swiftcall CardNavigationController.viewDidLoad()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_viewDidLoad);
  [v0 setDelegate_];
  [v0 setNavigationBarHidden:1 animated:0];
}

void sub_1D7E362A4()
{
  if (!qword_1EDBB2070)
  {
    sub_1D7E33FAC();
    v0 = sub_1D818EF84();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBB2070);
    }
  }
}

unint64_t sub_1D7E36300()
{
  result = qword_1EDBB0620;
  if (!qword_1EDBB0620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBB0620);
  }

  return result;
}

uint64_t FullscreenTransitionCoverManager.init(_:)(uint64_t a1, uint64_t a2)
{
  v5 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  *(v2 + 24) = a2;
  *(v2 + 32) = v5;
  *(v2 + 40) = 0;
  *(v2 + 16) = a1;

  [v5 setAutoresizingMask_];
  v6 = [objc_opt_self() defaultCenter];

  v7 = sub_1D8190EE4();
  [v6 addObserver:v2 selector:sel_willStartTransition name:v7 object:0];

  v8 = OUTLINED_FUNCTION_1_179();

  sub_1D8190EE4();
  v9 = OUTLINED_FUNCTION_4_100();
  [v9 v10];

  v11 = OUTLINED_FUNCTION_1_179();

  sub_1D8190EE4();
  v12 = OUTLINED_FUNCTION_4_100();
  [v12 v13];

  v14 = OUTLINED_FUNCTION_1_179();

  v15 = sub_1D8190EE4();
  v16 = OUTLINED_FUNCTION_0_248();
  [v16 v17];

  v18 = OUTLINED_FUNCTION_1_179();
  v19 = qword_1EDBB55C0;

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = OUTLINED_FUNCTION_0_248();
  [v20 v21];

  v22 = OUTLINED_FUNCTION_1_179();
  v23 = qword_1EDBB5590;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = OUTLINED_FUNCTION_0_248();
  [v24 v25];

  v26 = OUTLINED_FUNCTION_1_179();
  v27 = qword_1EDBB55D8;

  if (v27 != -1)
  {
    swift_once();
  }

  v28 = OUTLINED_FUNCTION_0_248();
  [v28 v29];

  v30 = OUTLINED_FUNCTION_1_179();
  v31 = qword_1EDBB55A8;

  if (v31 != -1)
  {
    swift_once();
  }

  [v30 addObserver:v2 selector:sel_didEndDimming name:qword_1EDBB55B0 object:0];

  return v2;
}

uint64_t sub_1D7E36754()
{
  OUTLINED_FUNCTION_3_139();
  result = sub_1D8190EE4();
  qword_1EDBB5598 = result;
  return result;
}

uint64_t sub_1D7E36788()
{
  OUTLINED_FUNCTION_3_139();
  result = sub_1D8190EE4();
  qword_1EDBB55B0 = result;
  return result;
}

uint64_t sub_1D7E36978()
{
  sub_1D7E0A1A8(0, &qword_1EDBB31B0);
  OUTLINED_FUNCTION_25();
  sub_1D8191304();
  OUTLINED_FUNCTION_6_35();

  v3.receiver = v0;
  v3.super_class = type metadata accessor for CardSplitViewController();
  objc_msgSendSuper2(&v3, sel_setViewControllers_, v1);

  return sub_1D7E369F4();
}

uint64_t sub_1D7E369F4()
{
  v1 = [v0 viewControllers];
  sub_1D7E0A1A8(0, &qword_1EDBB31B0);
  v2 = sub_1D8191314();

  result = sub_1D7E36AB8(v2);
  if (result)
  {
    v4 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    for (i = 0; i != v4; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1DA714420](i, v2);
        swift_unknownObjectRelease();
      }
    }
  }
}

id sub_1D7E36B50()
{
  v1 = [v0 viewControllers];
  sub_1D7E0A1A8(0, &qword_1EDBB31B0);
  OUTLINED_FUNCTION_6_35();
  v2 = sub_1D8191314();

  v3 = sub_1D7E36AB8(v2);

  v4 = [v0 viewControllers];
  v5 = sub_1D8191314();

  if (v3 < 2)
  {
    if (!sub_1D7E36AB8(v5))
    {

      return 0;
    }

    sub_1D7E33DD8(0, (v5 & 0xC000000000000001) == 0, v5);
    if ((v5 & 0xC000000000000001) == 0)
    {
      v6 = *(v5 + 32);
      goto LABEL_7;
    }

    v10 = 0;
LABEL_13:
    v7 = MEMORY[0x1DA714420](v10, v5);
    goto LABEL_8;
  }

  sub_1D7E33DD8(1, (v5 & 0xC000000000000001) == 0, v5);
  if ((v5 & 0xC000000000000001) != 0)
  {
    v10 = 1;
    goto LABEL_13;
  }

  v6 = *(v5 + 40);
LABEL_7:
  v7 = v6;
LABEL_8:
  v8 = v7;

  return v8;
}

uint64_t sub_1D7E36C8C()
{
  v1 = *(v0 + OBJC_IVAR____TtC5TeaUI23CardSplitViewController_commands);
  v2 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v4 = qword_1EDBBC918;
  swift_unknownObjectRetain();
  if (v4 != -1)
  {
    OUTLINED_FUNCTION_3_56();
  }

  v5 = qword_1EDBB36F8;
  OUTLINED_FUNCTION_0_8();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_7_30();
  OUTLINED_FUNCTION_0_8();
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_7_30();
  OUTLINED_FUNCTION_0_8();
  v8 = swift_allocObject();
  OUTLINED_FUNCTION_7_30();
  v9 = *(v2 + 64);
  v18 = v2;
  v10 = MEMORY[0x1E69E7CA8];
  v9(v19, v5, sub_1D7FC14DC, v6, sub_1D7FC14E4, v7, sub_1D7FC14EC, v8, MEMORY[0x1E69E7CA8] + 8, &type metadata for SidebarCommandState, &protocol witness table for SidebarCommandState, ObjectType, v18);

  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1(v19, v20);
  OUTLINED_FUNCTION_10_27();
  __swift_destroy_boxed_opaque_existential_1Tm(v19);
  v11 = *(v1 + 24);
  v12 = swift_getObjectType();
  v13 = qword_1EDBB3708;
  swift_unknownObjectRetain();
  if (v13 != -1)
  {
    OUTLINED_FUNCTION_8_7();
  }

  v14 = qword_1EDBB3710;
  OUTLINED_FUNCTION_0_8();
  v15 = swift_allocObject();
  OUTLINED_FUNCTION_7_30();
  OUTLINED_FUNCTION_0_8();
  v16 = swift_allocObject();
  OUTLINED_FUNCTION_7_30();
  (*(v11 + 56))(v19, v14, sub_1D7FC14F4, v15, sub_1D7FC14FC, v16, v10 + 8, v12, v11);

  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1(v19, v20);
  OUTLINED_FUNCTION_10_27();
  return __swift_destroy_boxed_opaque_existential_1Tm(v19);
}

uint64_t sub_1D7E36F24()
{
  MEMORY[0x1DA715E30](v0 + 16);
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7E36F58(void *a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for CardSplitViewController();
  objc_msgSendSuper2(&v8, sel_traitCollectionDidChange_, a1);
  v3 = [v1 childViewControllers];
  sub_1D7E0A1A8(0, &qword_1EDBB31B0);
  v4 = sub_1D8191314();

  v5 = a1;
  v6 = v1;
  sub_1D7E37010(v4, v6, a1, v6);
}

void sub_1D7E37010(unint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (!(a1 >> 62))
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_16:
    v29 = a3;
    v31 = a4;
LABEL_17:

    return;
  }

  v8 = sub_1D81920A4();
  if (!v8)
  {
    goto LABEL_16;
  }

LABEL_3:
  if (v8 >= 1)
  {
    v9 = a3;
    v32 = a4;
    v10 = a4;
    v35 = v9;
    v11 = v10;
    v12 = 0;
    v33 = v8;
    v34 = a2;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x1DA714420](v12, a1);
      }

      else
      {
        v13 = *(a1 + 8 * v12 + 32);
      }

      v14 = v13;
      v38 = v13;
      sub_1D7E0A1A8(0, &qword_1EDBB31B0);
      sub_1D7E0631C(0, qword_1EDBB0228);
      v15 = v14;
      if (swift_dynamicCast())
      {
        sub_1D7E05450(v36, v39);
        v17 = v40;
        v16 = v41;
        __swift_project_boxed_opaque_existential_1(v39, v40);
        v18 = [v11 traitCollection];
        (*(v16 + 8))(a3, v18, v17, v16);

        __swift_destroy_boxed_opaque_existential_1Tm(v39);
      }

      else
      {
        v37 = 0;
        memset(v36, 0, sizeof(v36));
        sub_1D7E70D8C(v36, &unk_1EDBB0220, qword_1EDBB0228, &protocol descriptor for CardSplitViewAutoObserver, sub_1D7E328A8);
      }

      v19 = v35;
      v20 = [v15 presentedViewController];
      if (v20)
      {
        v21 = v20;
        sub_1D7E72050(0, &qword_1EDBB2BF0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1D81A50A0;
        *(inited + 32) = v21;
        v23 = v35;
        v24 = v11;
        v25 = v21;
        v26 = v24;
        v19 = v35;
        sub_1D7E37010(inited, v34, a3, v26);

        swift_setDeallocating();
        sub_1D7E72768();
      }

      ++v12;
      v27 = [v15 childViewControllers];
      v28 = sub_1D8191314();

      v29 = v19;
      v30 = v11;
      sub_1D7E37010(v28, v34, a3, v30);
    }

    while (v33 != v12);

    a4 = v32;
    goto LABEL_17;
  }

  __break(1u);
}

uint64_t AppMonitor.trigger(event:)(uint64_t a1)
{
  v3 = OBJC_IVAR___TSAppMonitor_isActive;
  OUTLINED_FUNCTION_7();
  result = swift_beginAccess();
  if (*(v1 + v3) == 1)
  {
    if (a1 == 1)
    {
      v5 = OBJC_IVAR___TSAppMonitor_isTracking;
      result = OUTLINED_FUNCTION_3_86();
      if (*(v1 + v5))
      {
        return result;
      }

      *(v1 + v5) = 1;
      v6 = OBJC_IVAR___TSAppMonitor_onWindowWillBecomeForegroundBlock;
      goto LABEL_8;
    }

    if (a1)
    {
      result = sub_1D81926E4();
      __break(1u);
      return result;
    }

    v7 = OBJC_IVAR___TSAppMonitor_isTracking;
    result = OUTLINED_FUNCTION_3_86();
    if (*(v1 + v7) == 1)
    {
      *(v1 + v7) = 0;
      v6 = OBJC_IVAR___TSAppMonitor_onWindowDidBecomeBackgroundBlock;
LABEL_8:
      v8 = *(v1 + v6);
      if (v8)
      {
        v9 = *(v1 + v6 + 8);

        v8(v10);
        return sub_1D7E418F4(v8, v9);
      }
    }
  }

  return result;
}

Swift::Void __swiftcall CardSplitViewController.splitViewController(_:willChangeTo:)(UISplitViewController *_, UISplitViewControllerDisplayMode willChangeTo)
{
  v4 = [v2 childViewControllers];
  sub_1D7E0A1A8(0, &qword_1EDBB31B0);
  v5 = sub_1D8191314();

  sub_1D7E37550(v5, v2, willChangeTo);
}

unint64_t sub_1D7E37550(unint64_t result, uint64_t a2, uint64_t a3)
{
  v23 = result;
  if (result >> 62)
  {
    result = sub_1D81920A4();
    v5 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v5 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return result;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
  }

  else
  {
    v6 = 0;
    v7 = &qword_1EDBB31B0;
    v22 = xmmword_1D81A50A0;
    do
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1DA714420](v6, v23);
      }

      else
      {
        v8 = *(v23 + 8 * v6 + 32);
      }

      v9 = v8;
      v26 = v8;
      sub_1D7E0A1A8(0, v7);
      sub_1D7E0631C(0, qword_1EDBB0228);
      v10 = v9;
      if (swift_dynamicCast())
      {
        sub_1D7E05450(v24, v27);
        v11 = v7;
        v12 = v28;
        v13 = v29;
        __swift_project_boxed_opaque_existential_1(v27, v28);
        v14 = *(v13 + 16);
        v15 = v13;
        v7 = v11;
        v14(a3, v12, v15);
        __swift_destroy_boxed_opaque_existential_1Tm(v27);
      }

      else
      {
        v25 = 0;
        memset(v24, 0, sizeof(v24));
        sub_1D7E70D8C(v24, &unk_1EDBB0220, qword_1EDBB0228, &protocol descriptor for CardSplitViewAutoObserver, sub_1D7E328A8);
      }

      v16 = [v10 presentedViewController];
      if (v16)
      {
        v17 = v16;
        sub_1D7E72050(0, &qword_1EDBB2BF0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
        inited = swift_initStackObject();
        *(inited + 16) = v22;
        *(inited + 32) = v17;
        v19 = v17;
        sub_1D7E37550(inited, a2, a3);

        swift_setDeallocating();
        sub_1D7E72768();
      }

      ++v6;
      v20 = [v10 childViewControllers];
      v21 = sub_1D8191314();

      sub_1D7E37550(v21, a2, a3);
    }

    while (v5 != v6);
  }

  return result;
}

Swift::Bool __swiftcall CardSplitViewController.splitViewController(_:collapseSecondary:onto:)(UISplitViewController *_, UIViewController *collapseSecondary, UIViewController *onto)
{
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v8 = v6;
      v59 = v7;
      v9 = OBJC_IVAR____TtC5TeaUI23CardSplitViewController_preservedItems;
      swift_beginAccess();
      v10 = *(v3 + v9);
      v11 = *(v10 + 16);
      v57 = onto;
      v58 = collapseSecondary;
      if (v11)
      {
        v55 = v9;
        v56 = v8;
        v12 = v3 + OBJC_IVAR____TtC5TeaUI23CardSplitViewController_primaryCardContainerController;
        v13 = onto;
        v14 = collapseSecondary;
        sub_1D8190DB4();
        v15 = 32;
        do
        {
          v17 = *(v10 + v15);
          v16 = *(v10 + v15 + 16);
          v69 = *(v10 + v15 + 32);
          v67 = v17;
          v68 = v16;
          v18 = v17;
          sub_1D7FC1230(&v67, v64);
          if ((sub_1D8190B24() & 1) != 0 && (v19 = v68, v68 != 8))
          {
            v27 = *(v12 + 8);
            ObjectType = swift_getObjectType();
            LOBYTE(v64[0]) = v19;
            (*(v27 + 120))(v18, v64, 0, 0, 0, ObjectType, v27);
LABEL_10:
            sub_1D7FC128C(&v67);
          }

          else
          {
            v20 = swift_getObjectType();
            v64[0] = v18;
            LOBYTE(v63) = 0;
            (*(*(&v18 + 1) + 16))(v61, &v63, v20, *(&v18 + 1));
            v21 = v61[0];
            switch(LOBYTE(v61[0]) >> 5)
            {
              case 1:
              case 2:
              case 3:
              case 4:
                goto LABEL_10;
              default:
                v22 = *(v12 + 8);
                v60 = swift_getObjectType();
                LOBYTE(v63) = v21;
                OUTLINED_FUNCTION_8_8();
                v23 = swift_allocObject();
                v24 = v68;
                *(v23 + 16) = v67;
                *(v23 + 32) = v24;
                *(v23 + 48) = v69;
                v25 = v12;
                v26 = *(v22 + 120);
                sub_1D7FC1230(&v67, v64);
                v26(v18, &v63, 0, sub_1D7FC12E0, v23, v60, v22);
                v12 = v25;
                sub_1D7FC128C(&v67);

                break;
            }
          }

          v15 += 40;
          --v11;
        }

        while (v11);

        v8 = v56;
        v9 = v55;
      }

      else
      {
        v29 = onto;
        v30 = collapseSecondary;
      }

      *(v3 + v9) = MEMORY[0x1E69E7CC0];

      v31 = [v8 childViewControllers];
      sub_1D7E0A1A8(0, &qword_1EDBB31B0);
      OUTLINED_FUNCTION_25();
      v32 = sub_1D8191314();

      v33 = sub_1D7E36AB8(v32);
      v34 = 0;
      v35 = v3 + OBJC_IVAR____TtC5TeaUI23CardSplitViewController_primaryCardContainerController;
      while (v33 != v34)
      {
        if ((v32 & 0xC000000000000001) != 0)
        {
          v36 = MEMORY[0x1DA714420](v34, v32);
        }

        else
        {
          if (v34 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_35;
          }

          v36 = *(v32 + 8 * v34 + 32);
        }

        v37 = v36;
        if (__OFADD__(v34, 1))
        {
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        v63 = v36;
        sub_1D7E0631C(0, &qword_1EDBB0C88);
        v38 = v37;
        if (!swift_dynamicCast())
        {

          v62 = 0;
          memset(v61, 0, sizeof(v61));
          OUTLINED_FUNCTION_1_67();
          sub_1D7E70D8C(v61, v46, v47, v48, v49);
          LOBYTE(v6) = 0;
          return v6;
        }

        sub_1D7E05450(v61, v64);
        v40 = v65;
        v39 = v66;
        __swift_project_boxed_opaque_existential_1(v64, v65);
        LOBYTE(v63) = 0;
        (*(v39 + 16))(v61, &v63, v40, v39);
        v41 = v61[0];
        if (LOBYTE(v61[0]) > 0x1Fu)
        {
          [v59 showViewController:v38 sender:0];
        }

        else
        {
          v42 = *(v35 + 8);
          v43 = swift_getObjectType();
          LOBYTE(v61[0]) = v41;
          CardContainerControllerType.pushCard(_:to:animated:completion:)(v38, v61, 0, 0, 0, v43, v42);
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v64);
        ++v34;
      }

      v44 = [objc_opt_self() currentDevice];
      v45 = [v44 userInterfaceIdiom];

      if (v45)
      {
      }

      else
      {
        v50 = v57;
        v51 = [v59 view];
        if (!v51)
        {
          goto LABEL_36;
        }

        v52 = v51;
        [v51 setNeedsLayout];

        v53 = [v59 view];
        if (!v53)
        {
LABEL_37:
          __break(1u);
          JUMPOUT(0x1D7E37E34);
        }

        [v53 layoutIfNeeded];
      }

      LOBYTE(v6) = 1;
    }
  }

  return v6;
}

uint64_t sub_1D7E37E48()
{
  if (*(v0 + 40))
  {
  }

  OUTLINED_FUNCTION_8_8();

  return swift_deallocObject();
}

_BYTE *sub_1D7E37EA0(_BYTE *result, unsigned int a2)
{
  if (a2 < 4)
  {
    v2 = *result & 7 | (32 * a2);
  }

  else
  {
    v2 = a2 & 7 ^ 0x84;
  }

  *result = v2;
  return result;
}

void sub_1D7E37F08(void *a1, unsigned __int8 *a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_1D818F5F4();
  OUTLINED_FUNCTION_9();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_15();
  v18 = (v17 - v16);
  v19 = *a2;
  sub_1D7EB0EF8();
  if (v20)
  {
    v75 = v19;
    v21 = [v5 view];
    if (!v21)
    {
      __break(1u);
      JUMPOUT(0x1D7E38754);
    }

    v22 = v21;
    v23 = [v21 window];

    v71 = a3;
    if (v23)
    {
    }

    else
    {
      if (qword_1EDBB1F78 != -1)
      {
        OUTLINED_FUNCTION_0_157();
      }

      v30 = sub_1D818FE34();
      OUTLINED_FUNCTION_26_17(v30, qword_1EDBC6048);
      v31 = sub_1D818FE14();
      v32 = sub_1D81919E4();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_1D7DFF000, v31, v32, "Resetting event manager because window is nil", v33, 2u);
        OUTLINED_FUNCTION_10_45();
      }

      sub_1D818EF24();
    }

    v73 = a5;
    v74 = v14;
    v34 = objc_allocWithZone(type metadata accessor for CardWrappedViewController());
    v35 = a1;
    v68 = sub_1D7FF34AC(a1);
    sub_1D807D34C(v35, __dst);
    v70 = __dst[0];
    v67 = LOBYTE(__dst[1]);
    v66 = BYTE1(__dst[1]);
    v65 = BYTE2(__dst[1]);
    v36 = *&__dst[2];
    if (qword_1EDBB1F78 != -1)
    {
      OUTLINED_FUNCTION_0_157();
    }

    v72 = a4;
    v37 = sub_1D818FE34();
    OUTLINED_FUNCTION_26_17(v37, qword_1EDBC6048);
    v38 = v35;
    v39 = sub_1D818FE14();
    v40 = sub_1D81919E4();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      OUTLINED_FUNCTION_10_43();
      v42 = OUTLINED_FUNCTION_24_19();
      __dst[0] = v42;
      *v41 = 138412546;
      *(v41 + 4) = v38;
      *v18 = a1;
      *(v41 + 12) = 2080;
      v43 = 0xEA00000000006E65;
      v44 = 0x657263736C6C7566;
      v45 = v42;
      switch(v75)
      {
        case 1:
          v43 = 0xE800000000000000;
          v44 = 0x6465646E61707865;
          break;
        case 2:
          v46 = 0x70616C6C6F63;
          goto LABEL_24;
        case 3:
          v43 = 0xE700000000000000;
          v47 = 1953653104;
          goto LABEL_28;
        case 4:
          v46 = 0x73696D736964;
LABEL_24:
          v44 = v46 & 0xFFFFFFFFFFFFLL | 0x6573000000000000;
          OUTLINED_FUNCTION_39_13();
          break;
        case 5:
          v43 = 0xE700000000000000;
          v47 = 1953066601;
LABEL_28:
          v44 = v47 | 0x6C616900000000;
          break;
        case 6:
          v43 = 0xE700000000000000;
          v44 = 0x64657261656C63;
          break;
        case 7:
          v43 = 0xE600000000000000;
          v44 = 0x6E6564646968;
          break;
        default:
          break;
      }

      v48 = v38;
      v49 = sub_1D7E1C3D8(v44, v43, __dst);

      *(v41 + 14) = v49;
      _os_log_impl(&dword_1D7DFF000, v39, v40, "Pushing card with view controller %@ onto stack to state: %s", v41, 0x16u);
      sub_1D7E39F80(v18);
      OUTLINED_FUNCTION_3_89();
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_10_45();
    }

    v50 = *&v6[OBJC_IVAR____TtC5TeaUI28UIKitCardContainerController_detents];
    v51 = OBJC_IVAR____TtC5TeaUI28UIKitCardContainerController_cardViewLayoutOptions;
    OUTLINED_FUNCTION_7();
    swift_beginAccess();
    memcpy(__dst, &v6[v51], 0x49uLL);
    v52 = objc_allocWithZone(type metadata accessor for UIKitCardItem());
    if (v65)
    {
      v53 = 0x10000;
    }

    else
    {
      v53 = 0;
    }

    v54 = v38;
    v69 = v68;
    sub_1D8190DB4();
    v77 = sub_1D8080488(v69, v54, v70, v67 | (v66 << 8) | v53, v50, v6, __dst, v52, v36);
    OUTLINED_FUNCTION_15_2();
    OUTLINED_FUNCTION_0_161();
    sub_1D7E35D40(0, v55, v56, MEMORY[0x1E69D6AD8]);
    sub_1D818F984();
    swift_endAccess();
    sub_1D7E343BC();
    v57 = MEMORY[0x1E69D6810];
    sub_1D7E35D40(0, &qword_1EDBB2CC0, MEMORY[0x1E69D6810], MEMORY[0x1E69E6F90]);
    *(swift_allocObject() + 16) = xmmword_1D81A1B70;
    sub_1D818F5E4();
    sub_1D818F5D4();
    sub_1D818F5C4();
    sub_1D7E343E4();
    v58 = OUTLINED_FUNCTION_5_53();
    sub_1D7E35D40(v58, v59, v57, v60);
    sub_1D7E26188();
    sub_1D8192004();
    v61 = OUTLINED_FUNCTION_38_12();
    swift_unknownObjectUnownedInit();
    v62 = swift_allocObject();
    *(v62 + 16) = v54;
    *(v62 + 24) = v61;
    *(v62 + 32) = v77;
    *(v62 + 40) = v75;
    *(v62 + 41) = v71 & 1;
    *(v62 + 48) = v72;
    *(v62 + 56) = v73;
    v63 = v54;

    v64 = v77;
    sub_1D7E38808(v72);
    sub_1D818EF34();

    (*(v74 + 8))(v18, v12);
  }

  else
  {
    if (qword_1EDBB1F78 != -1)
    {
      OUTLINED_FUNCTION_0_157();
    }

    v24 = sub_1D818FE34();
    OUTLINED_FUNCTION_26_17(v24, qword_1EDBC6048);
    v25 = a1;
    v76 = sub_1D818FE14();
    v26 = sub_1D81919E4();

    if (os_log_type_enabled(v76, v26))
    {
      v27 = OUTLINED_FUNCTION_55_1();
      v28 = OUTLINED_FUNCTION_10_43();
      *v27 = 138412290;
      *(v27 + 4) = v25;
      *v28 = v25;
      v29 = v25;
      _os_log_impl(&dword_1D7DFF000, v76, v26, "Attempting to push card %@ when it's already in the stack", v27, 0xCu);
      sub_1D7E39F80(v28);
      OUTLINED_FUNCTION_10_45();
      OUTLINED_FUNCTION_38();
    }
  }
}

uint64_t sub_1D7E38774()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D7E387AC()
{

  if (*(v0 + 48))
  {
  }

  return swift_deallocObject();
}

_BYTE *storeEnumTagSinglePayload for UIKitCardContainerController.Event(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1D7E388D8);
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

unint64_t sub_1D7E38900(unint64_t result, char a2, uint64_t a3)
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

uint64_t sub_1D7E38924()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CardSplitViewController();
  objc_msgSendSuper2(&v2, sel_viewDidLayoutSubviews);
  return sub_1D818EF14();
}

Swift::Void __swiftcall UIKitCardContainerController.viewDidLoad()()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for UIKitCardContainerController();
  objc_msgSendSuper2(&v14, sel_viewDidLoad);
  v1 = *&v0[OBJC_IVAR____TtC5TeaUI28UIKitCardContainerController_rootViewController];
  [v0 addChildViewController_];
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_13;
  }

  v3 = v2;
  v4 = [v1 view];
  if (!v4)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = v4;
  [v3 addSubview_];

  [v1 didMoveToParentViewController_];
  v6 = [v1 view];
  if (!v6)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = v6;
  v8 = [v0 view];
  if (!v8)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v9 = v8;
  [v8 bounds];
  OUTLINED_FUNCTION_9_0();

  OUTLINED_FUNCTION_3_2(v7, sel_setFrame_);
  v10 = [v0 navigationItem];
  if (sub_1D7E38C7C([v1 navigationItem]))
  {
    sub_1D7E0A1A8(0, &qword_1EDBB31D0);
    v11 = sub_1D8191304();
  }

  else
  {
    v11 = 0;
  }

  [v10 setLeftBarButtonItems_];

  v12 = [v0 navigationItem];
  if (sub_1D7E3443C([v1 navigationItem]))
  {
    sub_1D7E0A1A8(0, &qword_1EDBB31D0);
    v13 = sub_1D8191304();
  }

  else
  {
    v13 = 0;
  }

  [v12 setRightBarButtonItems_];
}

uint64_t sub_1D7E38C88(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  sub_1D7E0A1A8(0, &qword_1EDBB31D0);
  v4 = sub_1D8191314();

  return v4;
}

void sub_1D7E38D64()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_0_161();
  sub_1D7E35D40(0, v2, v3, MEMORY[0x1E69D6AD8]);
  v5 = v4;
  OUTLINED_FUNCTION_9();
  v7 = v6;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_26();
  v9 = OBJC_IVAR____TtC5TeaUI28UIKitCardContainerController_cardItemStack;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  (*(v7 + 16))(v1, v0 + v9, v5);
  OUTLINED_FUNCTION_3_93(&qword_1EDBB1FF0);
  v10 = sub_1D8191774();
  if (!v10)
  {
    v17 = OUTLINED_FUNCTION_14_0();
    v18(v17);
LABEL_6:
    OUTLINED_FUNCTION_100();
    return;
  }

  v11 = v10;
  v19[5] = MEMORY[0x1E69E7CC0];
  sub_1D81922A4();
  sub_1D8191724();
  if ((v11 & 0x8000000000000000) == 0)
  {
    do
    {
      v12 = sub_1D81918F4();
      v14 = *v13;
      v12(v19, 0);
      *&v14[OBJC_IVAR____TtC5TeaUI13UIKitCardItem_viewController];

      sub_1D8192274();
      sub_1D81922B4();
      sub_1D81922C4();
      sub_1D8192284();
      sub_1D81917C4();
      --v11;
    }

    while (v11);
    v15 = OUTLINED_FUNCTION_14_0();
    v16(v15);
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_1D7E38F7C()
{
  v1 = v0;
  sub_1D7E35D40(0, &unk_1EDBB1FE0, type metadata accessor for UIKitCardItem, MEMORY[0x1E69D6AD8]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v19 - v5;
  sub_1D808123C(0, &qword_1EDBAE3D8, MEMORY[0x1E69E6CF0]);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = v19 - v9;
  v11 = OBJC_IVAR____TtC5TeaUI28UIKitCardContainerController_cardItemStack;
  swift_beginAccess();
  v12 = *(v4 + 16);
  v12(v6, v1 + v11, v3);
  v12(v10, v6, v3);
  v13 = *(v8 + 44);
  sub_1D80812D0(&qword_1EDBB1FF0);
  sub_1D8191724();
  (*(v4 + 8))(v6, v3);
  v14 = OBJC_IVAR____TtC5TeaUI28UIKitCardContainerController_cardViewLayoutOptions;
  swift_beginAccess();
  while (1)
  {
    sub_1D81917B4();
    if (*&v10[v13] == v19[0])
    {
      break;
    }

    v15 = sub_1D81918F4();
    v17 = *v16;
    v15(v19, 0);
    sub_1D81917C4();
    memmove(&v17[OBJC_IVAR____TtC5TeaUI13UIKitCardItem_layoutOptions], (v1 + v14), 0x49uLL);
  }

  return sub_1D8081334(v10, &qword_1EDBAE3D8, MEMORY[0x1E69E6CF0]);
}

unint64_t sub_1D7E39248()
{
  result = qword_1EDBB1FF0;
  if (!qword_1EDBB1FF0)
  {
    sub_1D7F76D38(255, &unk_1EDBB1FE0, type metadata accessor for UIKitCardItem, MEMORY[0x1E69D6AD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBB1FF0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_14_19()
{
  sub_1D7E05450((v0 - 160), v0 - 120);
  v1 = *(v0 - 96);
  __swift_project_boxed_opaque_existential_1((v0 - 120), v1);
  return v1;
}

void OUTLINED_FUNCTION_14_21()
{
  *(v4 - 136) = v3;
  *(v4 - 128) = v0;
  *(v4 - 120) = v2;
  *(v4 - 112) = v1;
}

uint64_t OUTLINED_FUNCTION_14_22()
{

  return swift_getTupleTypeMetadata();
}

id OUTLINED_FUNCTION_14_24()
{

  return [v1 (v0 + 1016)];
}

uint64_t OUTLINED_FUNCTION_14_31(uint64_t a1)
{
  *(v7 - 144) = v3;
  *(v7 - 136) = v1;
  *(v7 - 128) = v2;
  *(v7 - 120) = v4;
  *(v7 - 112) = v5;
  *(v7 - 104) = v6;
  *(v7 - 96) = a1;

  return sub_1D818F784();
}

uint64_t OUTLINED_FUNCTION_14_32()
{

  return swift_getWitnessTable();
}

void *OUTLINED_FUNCTION_14_34()
{

  return memcpy(v0, v1, 0x5AuLL);
}

uint64_t *OUTLINED_FUNCTION_14_37(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, v2);
  *(v1 + 72) = v2;

  return __swift_allocate_boxed_opaque_existential_0Tm((v1 + 48));
}

id OUTLINED_FUNCTION_14_38(uint64_t a1, void **a2)
{
  v3 = *a2;

  return v3;
}

uint64_t OUTLINED_FUNCTION_14_41()
{

  return sub_1D818FD44();
}

uint64_t OUTLINED_FUNCTION_14_43()
{

  return swift_allocObject();
}

__n128 OUTLINED_FUNCTION_14_44()
{
  v1 = *(v0 - 144);
  *(v0 - 112) = *(v0 - 160);
  *(v0 - 96) = v1;
  result = *(v0 - 176);
  *(v0 - 128) = result;
  return result;
}

void OUTLINED_FUNCTION_14_46()
{
  v2 = *(v0 + 16) + 1;

  sub_1D7EE569C(0, v2, 1, v0);
}

void *OUTLINED_FUNCTION_14_48(void *a1)
{

  return memcpy(a1, (v1 + 608), 0x260uLL);
}

uint64_t OUTLINED_FUNCTION_14_50(uint64_t a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = v3;
  return a1 + v2;
}

uint64_t OUTLINED_FUNCTION_14_51()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t sub_1D7E39744()
{
  v1 = *v0;
  sub_1D81927E4();
  sub_1D7E39788(v3, v1);
  return sub_1D8192824();
}

Swift::Void __swiftcall CardNavigationController.navigationController(_:didShow:animated:)(UINavigationController *_, UIViewController *didShow, Swift::Bool animated)
{
  v4 = *(v3 + OBJC_IVAR____TtC5TeaUI24CardNavigationController_commandCenter + 8);
  ObjectType = swift_getObjectType();
  if (qword_1EDBB3708 != -1)
  {
    swift_once();
  }

  (*(v4 + 144))(qword_1EDBB3710, MEMORY[0x1E69E7CA8] + 8, ObjectType, v4);
}

uint64_t CommandCenter.invalidate<A>(command:)(uint64_t a1)
{
  type metadata accessor for Command.LoggingBehavior();
  if (sub_1D7E13510())
  {
    if (qword_1EDBBCFC0 != -1)
    {
      OUTLINED_FUNCTION_1_162();
      swift_once();
    }

    v2 = OUTLINED_FUNCTION_0_193();
    sub_1D7E13630(v2, v3, v4, v5, v6);
    OUTLINED_FUNCTION_15_17();
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1D819FAB0;
    v9 = *(a1 + 16);
    v8 = *(a1 + 24);
    *(v7 + 56) = MEMORY[0x1E69E6158];
    *(v7 + 64) = sub_1D7E13BF4();
    *(v7 + 32) = v9;
    *(v7 + 40) = v8;
    sub_1D8190DB4();
    sub_1D81919E4();
    OUTLINED_FUNCTION_21_34();
    sub_1D818FD44();
  }

  return sub_1D7E15144(a1);
}

Swift::Void __swiftcall UIKitCardContainerController.viewWillLayoutSubviews()()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for UIKitCardContainerController();
  objc_msgSendSuper2(&v5, sel_viewWillLayoutSubviews);
  v1 = [*&v0[OBJC_IVAR____TtC5TeaUI28UIKitCardContainerController_rootViewController] view];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 view];
    if (v3)
    {
      v4 = v3;
      [v3 bounds];
      OUTLINED_FUNCTION_9_0();

      OUTLINED_FUNCTION_3_2(v2, sel_setFrame_);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

Swift::Void __swiftcall UIKitCardContainerController.viewDidLayoutSubviews()()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for UIKitCardContainerController();
  objc_msgSendSuper2(&v8, sel_viewDidLayoutSubviews);
  v1 = [objc_opt_self() currentDevice];
  v2 = [v1 userInterfaceIdiom];

  if (v2)
  {
    if (qword_1EDBB1F78 != -1)
    {
      OUTLINED_FUNCTION_0_157();
    }

    v3 = sub_1D818FE34();
    OUTLINED_FUNCTION_26_17(v3, qword_1EDBC6048);
    v4 = sub_1D818FE14();
    v5 = sub_1D81919E4();
    if (os_log_type_enabled(v4, v5))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_3_57(&dword_1D7DFF000, v6, v7, "viewDidLayoutSubviews");
      OUTLINED_FUNCTION_10_45();
    }

    sub_1D818EF14();
  }
}

uint64_t sub_1D7E39CB0(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_1D8191084())
  {
    result = sub_1D7E39E14(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1D8192184();
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
          result = sub_1D8192254();
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

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D7E39DC8(uint64_t a1, unint64_t a2)
{
  v3 = sub_1D7E39CB0(a1, a2);
  sub_1D7E39E9C(&unk_1F52E41A8);
  return v3;
}

void *sub_1D7E39E14(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1D7E09C74(0, &qword_1EDBB2C10, MEMORY[0x1E69E7508], MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

uint64_t sub_1D7E39E9C(uint64_t result)
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

    result = sub_1D7F50844(result, v7, 1, v3);
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

uint64_t sub_1D7E39F80(uint64_t a1)
{
  sub_1D7E10114(0, &unk_1EDBB2F30, &qword_1EDBB2F40, 0x1E69E58C0, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1D7E3A050()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UIKitCardTransitioningDelegate();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_1D7E3A084(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (result == a2)
    {
      return 1;
    }

    else
    {
      v2 = [result parentViewController];
      v3 = sub_1D7E3A084();

      return v3 & 1;
    }
  }

  return result;
}

unint64_t sub_1D7E3A0E4()
{
  result = qword_1EDBB0218;
  if (!qword_1EDBB0218)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDBB0218);
  }

  return result;
}

unint64_t sub_1D7E3A168()
{
  result = qword_1EDBB14D0;
  if (!qword_1EDBB14D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBB14D0);
  }

  return result;
}

uint64_t sub_1D7E3A1BC()
{
  OUTLINED_FUNCTION_6_57();
  sub_1D81927E4();
  OUTLINED_FUNCTION_7_43();
  return sub_1D8192824();
}

_BYTE *sub_1D7E3A1F4(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

id sub_1D7E3A290(void *a1, void *a2)
{
  type metadata accessor for UIKitCardPresentationController();
  v4 = a2;
  v5 = a1;
  return sub_1D7E3A2FC();
}

id sub_1D7E3A2FC()
{
  OUTLINED_FUNCTION_66_0();
  v3 = [objc_allocWithZone(v1) initWithPresentedViewController:v2 presentingViewController:v0];

  return v3;
}

id sub_1D7E3A394()
{
  OUTLINED_FUNCTION_66_0();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for UIKitCardPresentationController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPresentedViewController_presentingViewController_, v2, v0);

  return v3;
}

uint64_t sub_1D7E3A3FC(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v4 = a1;
    sub_1D81927E4();
    MEMORY[0x1DA714A00](v4);
    v5 = sub_1D8192824();
    v6 = ~(-1 << *(a2 + 32));
    do
    {
      v7 = v5 & v6;
      v8 = (1 << (v5 & v6)) & *(a2 + 56 + (((v5 & v6) >> 3) & 0xFFFFFFFFFFFFFF8));
      v2 = v8 != 0;
      if (!v8)
      {
        break;
      }

      v5 = v7 + 1;
    }

    while (*(*(a2 + 48) + v7) != v4);
  }

  return v2;
}

char *sub_1D7E3A4AC(unint64_t a1, void (*a2)(char *, BOOL, unint64_t))
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    v5 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      a2(result - 1, (a1 & 0xC000000000000001) == 0, a1);
      if ((a1 & 0xC000000000000001) == 0)
      {
        return *(a1 + 8 * v5 + 32);
      }
    }

    return MEMORY[0x1DA714420](v5, a1);
  }

  result = sub_1D81920A4();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

unsigned __int8 *sub_1D7E3A560(_BYTE *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC5TeaUI13UIKitCardItem_presentationState);
  *(v1 + OBJC_IVAR____TtC5TeaUI13UIKitCardItem_presentationState) = *a1;
  v4 = v2;
  return sub_1D7E3B408(&v4);
}

void sub_1D7E3A5D8()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_66_0();
  v3 = *v2;
  if (qword_1EDBB1F78 != -1)
  {
    OUTLINED_FUNCTION_0_157();
  }

  v4 = sub_1D818FE34();
  OUTLINED_FUNCTION_26_17(v4, qword_1EDBC6048);
  v5 = sub_1D818FE14();
  v6 = sub_1D81919E4();
  if (OUTLINED_FUNCTION_28_17(v6))
  {
    OUTLINED_FUNCTION_55_1();
    OUTLINED_FUNCTION_24_19();
    OUTLINED_FUNCTION_46_12();
    v7 = OUTLINED_FUNCTION_4_67(4.8149e-34);
    switch(v3)
    {
      case 1:
        v7 = OUTLINED_FUNCTION_6_67();
        break;
      case 2:
        OUTLINED_FUNCTION_16_0();
        goto LABEL_8;
      case 3:
        v9 = 1953653104;
        goto LABEL_12;
      case 4:
        OUTLINED_FUNCTION_45_2();
LABEL_8:
        OUTLINED_FUNCTION_39_13();
        break;
      case 5:
        v9 = 1953066601;
LABEL_12:
        v7 = v9 | 0x6C616900000000;
        break;
      case 6:
        v7 = OUTLINED_FUNCTION_17_25();
        break;
      case 7:
        v7 = OUTLINED_FUNCTION_30_18();
        break;
      default:
        break;
    }

    OUTLINED_FUNCTION_53_6(v7, v8);
    OUTLINED_FUNCTION_52_3();
    *(v0 + 4) = v1;
    OUTLINED_FUNCTION_81_0(&dword_1D7DFF000, v10, v11, "CardContainer willTransitionTo presentationState: %s");
    OUTLINED_FUNCTION_21_26();
    OUTLINED_FUNCTION_3_89();
  }

  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    OUTLINED_FUNCTION_32_14();
    v12 = OUTLINED_FUNCTION_19_25();
    v13(v12);
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_36();
}

uint64_t OUTLINED_FUNCTION_69()
{

  return sub_1D81924C4();
}

void OUTLINED_FUNCTION_69_3(char a1@<W8>)
{
  if (*(v2 + v1))
  {
    a1 |= 0x80u;
  }

  *(v3 - 1) = a1;
}

uint64_t OUTLINED_FUNCTION_69_4()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0);
}

uint64_t OUTLINED_FUNCTION_23_3()
{

  return sub_1D81928B4();
}

uint64_t OUTLINED_FUNCTION_23_7()
{

  return swift_allocObject();
}

id OUTLINED_FUNCTION_23_9(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{

  return [a10 (v10 + 504)];
}

uint64_t OUTLINED_FUNCTION_129()
{

  return swift_getAssociatedTypeWitness();
}

__n128 OUTLINED_FUNCTION_23_13()
{
  v1 = *(v0 + 80);
  *(v0 + 128) = *(v0 + 64);
  *(v0 + 144) = v1;
  result = *(v0 + 96);
  v3 = *(v0 + 112);
  *(v0 + 160) = result;
  *(v0 + 176) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_23_15()
{

  return swift_getObjectType();
}

void OUTLINED_FUNCTION_23_16()
{
  *(v6 - 144) = v2;
  *(v6 - 136) = v5;
  *(v6 - 128) = v0;
  *(v6 - 120) = v3;
  *(v6 - 112) = v4;
  *(v6 - 104) = v1;
}

uint64_t OUTLINED_FUNCTION_23_20()
{

  return sub_1D8190984();
}

void *OUTLINED_FUNCTION_23_23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return memcpy(&a9, (v9 + 608), 0x260uLL);
}

uint64_t OUTLINED_FUNCTION_23_24()
{

  return sub_1D818F784();
}

uint64_t OUTLINED_FUNCTION_24_3()
{

  return sub_1D8192434();
}

uint64_t OUTLINED_FUNCTION_24_6()
{

  return swift_allocObject();
}

id OUTLINED_FUNCTION_24_9()
{

  return [v1 (v2 + 3192)];
}

void OUTLINED_FUNCTION_24_13(uint64_t a1, unint64_t *a2)
{

  sub_1D8022D3C(255, a2, type metadata accessor for BlueprintViewActionResponse);
}

uint64_t OUTLINED_FUNCTION_24_15()
{
}

void *OUTLINED_FUNCTION_24_16(void *a1)
{

  return memcpy(a1, &STACK[0xA70], 0x122uLL);
}

uint64_t OUTLINED_FUNCTION_24_18(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_24_19()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_24_21()
{

  return swift_weakInit();
}

void OUTLINED_FUNCTION_24_22()
{
  v3 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  *(v2 - 152) = v3 + v0;
  *(v2 - 112) = v3;
}

void *OUTLINED_FUNCTION_24_23()
{
  v2 = *(v0 + 992);

  return __swift_project_boxed_opaque_existential_1((v0 + 968), v2);
}

uint64_t OUTLINED_FUNCTION_24_26()
{

  return type metadata accessor for SwipeActionState(0);
}

void OUTLINED_FUNCTION_24_27()
{

  BlueprintLayoutCollectionPinAdjuster.shouldInvalidateLayoutAttributes(for:offset:insets:contentSize:hasViewOnScreen:)();
}

uint64_t OUTLINED_FUNCTION_24_30(uint64_t a1)
{
  *(v1 - 88) = a1;

  return sub_1D818F784();
}

uint64_t OUTLINED_FUNCTION_46_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 + 56);
  result = *(v7 + 8 * v6);
  *(v7 + 8 * v6) = v5;
  return result;
}

uint64_t OUTLINED_FUNCTION_46_2()
{

  return __swift_destroy_boxed_opaque_existential_1Tm(v0 - 288);
}

uint64_t OUTLINED_FUNCTION_46_6()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_46_8()
{

  return sub_1D8190EE4();
}

uint64_t OUTLINED_FUNCTION_46_13@<X0>(uint64_t a1@<X8>)
{
  result = *(v1 + 480) + 40 * a1;
  *(v1 + 2336) = a1;
  return result;
}

unint64_t OUTLINED_FUNCTION_46_16(uint64_t a1, unint64_t a2)
{

  return sub_1D7E1C3D8(a1, a2, (v2 - 128));
}

uint64_t OUTLINED_FUNCTION_40()
{

  return sub_1D8192374();
}

uint64_t OUTLINED_FUNCTION_40_0()
{

  return sub_1D81925B4();
}

uint64_t OUTLINED_FUNCTION_40_2()
{

  return sub_1D81923A4();
}

id OUTLINED_FUNCTION_40_4()
{

  return [v0 (v1 + 3448)];
}

uint64_t OUTLINED_FUNCTION_40_6()
{

  return sub_1D8190EE4();
}

uint64_t OUTLINED_FUNCTION_40_9()
{

  return sub_1D818E644();
}

uint64_t OUTLINED_FUNCTION_40_14()
{

  return type metadata accessor for BlueprintItem();
}

uint64_t OUTLINED_FUNCTION_18_3()
{

  return sub_1D8192634();
}

id OUTLINED_FUNCTION_18_7(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_18_8()
{

  return swift_getAssociatedTypeWitness();
}

id OUTLINED_FUNCTION_18_13()
{

  return [v0 (v1 + 2808)];
}

uint64_t OUTLINED_FUNCTION_18_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15)
{

  return sub_1D813CF60(a1, a2, a3, a4, a5, a6, a7, v15, a9, a10, a11, a12, a13, a14, a15);
}

uint64_t OUTLINED_FUNCTION_18_17@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v2 + 16);
  *v4 = a1;
  v4[1] = v1;
}

uint64_t OUTLINED_FUNCTION_18_19()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_18_20()
{

  return sub_1D818F394();
}

uint64_t OUTLINED_FUNCTION_18_26(uint64_t a1)
{
  *(v3 - 112) = v1;
  *(v3 - 104) = v2;
  *(v3 - 96) = a1;

  return sub_1D818F784();
}

uint64_t OUTLINED_FUNCTION_18_29()
{

  return sub_1D8191314();
}

void OUTLINED_FUNCTION_18_30()
{

  sub_1D7E40788();
}

void *OUTLINED_FUNCTION_18_31@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  result[2] = v5;
  result[3] = v2;
  result[4] = v8;
  result[5] = v4;
  result[6] = a2;
  result[7] = v3;
  result[8] = v6;
  result[9] = v7;
  return result;
}

__n128 OUTLINED_FUNCTION_18_32@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_18_39()
{

  return swift_getObjectType();
}

unsigned __int8 *sub_1D7E3B408(unsigned __int8 *result)
{
  v2 = OBJC_IVAR____TtC5TeaUI13UIKitCardItem_presentationState;
  if (*(v1 + OBJC_IVAR____TtC5TeaUI13UIKitCardItem_presentationState) != *result)
  {
    v3 = v1 + OBJC_IVAR____TtC5TeaUI13UIKitCardItem_animationDelegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v3 + 8);
      ObjectType = swift_getObjectType();
      v10 = *(v1 + v2);
      (*(v4 + 40))(v1, &off_1F52FBB00, &v10, ObjectType, v4);
      swift_unknownObjectRelease();
    }

    v6 = v1 + OBJC_IVAR____TtC5TeaUI13UIKitCardItem_parentAnimationDelegate;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v7 = *(v6 + 8);
      v8 = swift_getObjectType();
      v9 = *(v1 + v2);
      (*(v7 + 40))(v1, &off_1F52FBB00, &v9, v8, v7);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_1D7E3B510()
{
  OUTLINED_FUNCTION_37();
  v3 = *v2;
  if (qword_1EDBB1F78 != -1)
  {
    OUTLINED_FUNCTION_0_157();
  }

  v4 = sub_1D818FE34();
  OUTLINED_FUNCTION_26_17(v4, qword_1EDBC6048);
  v5 = sub_1D818FE14();
  v6 = sub_1D81919E4();
  if (OUTLINED_FUNCTION_28_17(v6))
  {
    OUTLINED_FUNCTION_55_1();
    OUTLINED_FUNCTION_24_19();
    OUTLINED_FUNCTION_46_12();
    v7 = OUTLINED_FUNCTION_4_67(4.8149e-34);
    switch(v3)
    {
      case 1:
        v7 = OUTLINED_FUNCTION_6_67();
        break;
      case 2:
        OUTLINED_FUNCTION_16_0();
        goto LABEL_8;
      case 3:
        v9 = 1953653104;
        goto LABEL_12;
      case 4:
        OUTLINED_FUNCTION_45_2();
LABEL_8:
        OUTLINED_FUNCTION_39_13();
        break;
      case 5:
        v9 = 1953066601;
LABEL_12:
        v7 = v9 | 0x6C616900000000;
        break;
      case 6:
        v7 = OUTLINED_FUNCTION_17_25();
        break;
      case 7:
        v7 = OUTLINED_FUNCTION_30_18();
        break;
      default:
        break;
    }

    OUTLINED_FUNCTION_53_6(v7, v8);
    OUTLINED_FUNCTION_52_3();
    *(v0 + 4) = v1;
    OUTLINED_FUNCTION_81_0(&dword_1D7DFF000, v10, v11, "CardContainer didTransitionTo presentationState: %s");
    OUTLINED_FUNCTION_21_26();
    OUTLINED_FUNCTION_3_89();
  }

  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    v12 = OUTLINED_FUNCTION_85();
    v13(v12);
    swift_unknownObjectRelease();
  }

  sub_1D807D27C();
  OUTLINED_FUNCTION_36();
}

Swift::Void __swiftcall StatusBarView.layoutSubviews()()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_layoutSubviews);
  v1 = [v0 superview];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
    Width = CGRectGetWidth(v6);
    [v0 safeAreaInsets];
    [v0 setFrame_];
  }
}

void sub_1D7E3B824()
{
  OUTLINED_FUNCTION_120();
  v9 = v1;
  OUTLINED_FUNCTION_5_11();
  __swift_mutable_project_boxed_opaque_existential_1(v2, *(v2 + 24));
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15();
  (*(v6 + 16))(v5 - v4);
  OUTLINED_FUNCTION_7_71();
  v9(v7, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(v0);
  OUTLINED_FUNCTION_100();
}

void sub_1D7E3B938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_120();
  v23 = v22;
  v52 = v24;
  v54 = v25;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v53 = sub_1D818E794();
  OUTLINED_FUNCTION_2();
  v37 = v36;
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_15();
  v41 = v40 - v39;
  v55[3] = a21;
  v55[4] = a22;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v55);
  (*(*(a21 - 8) + 32))(boxed_opaque_existential_0, v33, a21);
  v43 = *v35;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v23 + 88) = v43;
  sub_1D7E0E768(v55, v23 + 96);
  OUTLINED_FUNCTION_56();
  swift_unknownObjectWeakAssign();
  v44 = *(v29 + 16);
  *(v23 + 40) = *v29;
  *(v23 + 56) = v44;
  *(v23 + 72) = *(v29 + 32);
  if (!v27)
  {
    v45 = v31;
  }

  OUTLINED_FUNCTION_56();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  sub_1D818E784();
  v46 = sub_1D818E764();
  v48 = v47;
  swift_unknownObjectRelease();

  (*(v37 + 8))(v41, v53);
  __swift_destroy_boxed_opaque_existential_1Tm(v55);
  *(v23 + 16) = v46;
  *(v23 + 24) = v48;
  if (v54)
  {
    OUTLINED_FUNCTION_0_32();
    v49 = swift_allocObject();
    *(v49 + 16) = v54;
    *(v49 + 24) = v52;
    v50 = sub_1D810E9AC;
  }

  else
  {
    v50 = nullsub_1;
    v49 = 0;
  }

  OUTLINED_FUNCTION_0_32();
  v51 = swift_allocObject();
  *(v51 + 16) = v50;
  *(v51 + 24) = v49;
  *(v23 + 136) = sub_1D810E9B0;
  *(v23 + 144) = v51;
  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D7E3BB88()
{

  OUTLINED_FUNCTION_0_32();

  return swift_deallocObject();
}

id Action.debounce(delay:block:)(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  type metadata accessor for Debounce();
  v10 = Debounce.__allocating_init(delay:block:)(a1, a2, a3);
  OUTLINED_FUNCTION_0_85(v10, &qword_1EDBBC448);
  OUTLINED_FUNCTION_8_5();

  sub_1D818F8A4();

  sub_1D818F224();

  v8 = v4;

  return v8;
}

uint64_t Debounce.__allocating_init(delay:block:)(uint64_t a1, uint64_t a2, double a3)
{
  OUTLINED_FUNCTION_7_2();
  result = swift_allocObject();
  *(result + 32) = a2;
  *(result + 40) = 0;
  *(result + 16) = a3;
  *(result + 24) = a1;
  return result;
}

uint64_t BlueprintLayoutCollectionFactory.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

void sub_1D7E3BD48(void *a1)
{
  v1 = a1;
  BlueprintViewController.loadView()();
}

Swift::Void __swiftcall BlueprintViewController.loadView()()
{
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, sel_loadView);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 frame];
    OUTLINED_FUNCTION_9_0();

    v3 = objc_allocWithZone(type metadata accessor for BlueprintLiveResizingView());
    v4 = OUTLINED_FUNCTION_8_0();
    v7 = [v5 v6];
    v8 = [v0 view];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 autoresizingMask];

      [v7 setAutoresizingMask_];
      *&v7[OBJC_IVAR____TtC5TeaUI25BlueprintLiveResizingView_delegate + 8] = &off_1F5303A98;
      swift_unknownObjectWeakAssign();
      [v0 setView_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_1D7E3BF18(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC5TeaUI25BlueprintLiveResizingView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR____TtC5TeaUI25BlueprintLiveResizingView_isLiveResizing] = 0;
  v11.receiver = v4;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_initWithFrame_, a1, a2, a3, a4);
}

void sub_1D7E3BFB0(void *a1)
{
  v1 = a1;
  BlueprintViewController.viewDidLoad()();
}

Swift::Void __swiftcall BlueprintViewController.viewDidLoad()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = (*MEMORY[0x1E69E7D40] & *v0);
  v148.receiver = v0;
  v148.super_class = ObjectType;
  objc_msgSendSuper2(&v148, sel_viewDidLoad);
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_7();
  swift_beginAccess();

  v4 = OUTLINED_FUNCTION_31();
  KeyCommandManager.register(in:selector:)(v4, v5);

  OUTLINED_FUNCTION_6_60();
  v7 = *&v0[*(v6 + 288)];
  [v7 setHidden_];
  v8 = [v1 view];
  if (!v8)
  {
    __break(1u);
    goto LABEL_8;
  }

  v9 = v8;
  [v8 addSubview_];

  OUTLINED_FUNCTION_6_60();
  v11 = *(v10 + 168);
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  v12 = v3[14];
  v13 = *(v12 + 56);
  v14 = v3[11];
  swift_unknownObjectRetain();
  v15 = OUTLINED_FUNCTION_85();
  v16 = v13(v15);
  swift_unknownObjectRelease();
  [v16 setPreservesSuperviewLayoutMargins_];

  v17 = *&v1[v11];
  swift_unknownObjectRetain();
  v18 = v17;
  v136 = v14;
  v141 = v13;
  (v13)(v14, v12);
  OUTLINED_FUNCTION_14_6();
  swift_unknownObjectRelease();
  v19 = [v1 view];
  if (!v19)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v20 = v19;
  [v19 bounds];
  OUTLINED_FUNCTION_9_0();

  v21 = OUTLINED_FUNCTION_8_0();
  [v22 v23];

  v24 = [v1 view];
  if (!v24)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v25 = v24;
  swift_unknownObjectRetain();
  v26 = v141(v14, v12);
  swift_unknownObjectRelease();
  [v25 addSubview_];

  v138 = v11;
  aBlock = *&v1[v11];
  (*(*(v12 + 8) + 8))(v14);
  sub_1D7E411A4();
  OUTLINED_FUNCTION_2_5();
  swift_unknownObjectWeakAssign();
  OUTLINED_FUNCTION_2_5();
  v28 = *(v27 + 144);
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  if (*&v1[v28])
  {

    sub_1D7F81C10(v1);
  }

  OUTLINED_FUNCTION_2_5();
  v30 = &v1[*(v29 + 232)];
  __swift_project_boxed_opaque_existential_1(v30, *(v30 + 3));
  OUTLINED_FUNCTION_68_4();
  v31 = OUTLINED_FUNCTION_111();
  v33 = v32(v31);
  OUTLINED_FUNCTION_0_8();
  v34 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_15_17();
  v35 = swift_allocObject();
  v139 = v3[10];
  v35[2] = v139;
  v35[3] = v14;
  v36 = v3[12];
  v35[4] = v36;
  v140 = v3[13];
  v35[5] = v140;
  v35[6] = v12;
  v37 = v3[15];
  v35[7] = v37;
  v35[8] = v34;
  v146 = sub_1D80EB07C;
  v147 = v35;
  aBlock = MEMORY[0x1E69E9820];
  v143 = 1107296256;
  v144 = sub_1D7E64940;
  v145 = &block_descriptor_73;
  v38 = _Block_copy(&aBlock);

  v39 = [v33 onWindowDidBecomeBackgroundWithBlock_];
  swift_unknownObjectRelease();
  _Block_release(v38);
  OUTLINED_FUNCTION_0_8();
  v40 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_15_17();
  v41 = swift_allocObject();
  v41[2] = v139;
  v41[3] = v136;
  v41[4] = v36;
  v41[5] = v140;
  v41[6] = v12;
  v41[7] = v37;
  v137 = v37;
  v41[8] = v40;
  v146 = sub_1D80EB2B0;
  v147 = v41;
  aBlock = MEMORY[0x1E69E9820];
  v143 = 1107296256;
  v144 = sub_1D7E64940;
  v145 = &block_descriptor_10_0;
  v42 = _Block_copy(&aBlock);

  v43 = [v39 onWindowWillBecomeForegroundWithBlock_];
  _Block_release(v42);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v44 = *(v30 + 3);
  v45 = *(v30 + 4);
  v46 = OUTLINED_FUNCTION_46();
  __swift_project_boxed_opaque_existential_1(v46, v47);
  OUTLINED_FUNCTION_68_4();
  [v48(v44 v45)];
  swift_unknownObjectRelease();
  (*(v140 + 48))(v139);
  OUTLINED_FUNCTION_0_8();
  v49 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_15_17();
  v50 = swift_allocObject();
  v50[2] = v139;
  v50[3] = v136;
  v50[4] = v36;
  v50[5] = v140;
  v50[6] = v12;
  v50[7] = v37;
  v50[8] = v49;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_16();
  v52 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v54 = swift_getAssociatedConformanceWitness();
  aBlock = AssociatedTypeWitness;
  v143 = v52;
  v144 = AssociatedConformanceWitness;
  v145 = v54;
  type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_0_2();
  sub_1D818F164();

  __swift_project_boxed_opaque_existential_1(&aBlock, v145);
  sub_1D818ED84();
  __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
  v55 = objc_opt_self();
  v56 = [v55 defaultCenter];
  OUTLINED_FUNCTION_76_7(v56, v57, v58, sel_accessibilityReduceTransparencyDidChange_, *MEMORY[0x1E69DD920]);

  v59 = [v55 defaultCenter];
  OUTLINED_FUNCTION_76_7(v59, v60, v61, sel_accessibilityButtonShapesEnabledStatusDidChange_, *MEMORY[0x1E69DD8A8]);

  v62 = [v55 defaultCenter];
  OUTLINED_FUNCTION_76_7(v62, v63, v64, sel_invertColorsStatusDidChangeNotification_, *MEMORY[0x1E69DD8D8]);

  swift_unknownObjectRetain();
  v65 = [v1 traitCollection];
  v66 = OUTLINED_FUNCTION_12_13();
  v67(v66);
  swift_unknownObjectRelease();

  v68 = *&v1[v138];
  swift_unknownObjectRetain();
  OUTLINED_FUNCTION_85_5();
  v69();
  OUTLINED_FUNCTION_14_6();
  swift_unknownObjectRelease();
  sub_1D7E1AEBC(0, &qword_1EDBB2C70, sub_1D7E295E0, MEMORY[0x1E69E6F90]);
  v128 = v70;
  v71 = OUTLINED_FUNCTION_24_6();
  *(v71 + 16) = xmmword_1D819FAB0;
  v72 = sub_1D818FF34();
  v73 = MEMORY[0x1E69DC0F8];
  *(v71 + 32) = v72;
  *(v71 + 40) = v73;
  OUTLINED_FUNCTION_0_8();
  swift_allocObject();
  OUTLINED_FUNCTION_53_7();
  OUTLINED_FUNCTION_15_17();
  v74 = swift_allocObject();
  v74[2] = v139;
  v74[3] = v136;
  v74[4] = v36;
  v74[5] = v140;
  v74[6] = v12;
  v74[7] = v137;
  v74[8] = v68;
  v125 = sub_1D7E0A1A8(0, &qword_1EDBB2FC0);
  OUTLINED_FUNCTION_42_14();
  sub_1D8191C74();
  swift_unknownObjectRelease();

  v75 = *&v1[v138];
  swift_unknownObjectRetain();
  OUTLINED_FUNCTION_85_5();
  v76();
  OUTLINED_FUNCTION_14_6();
  swift_unknownObjectRelease();
  v77 = OUTLINED_FUNCTION_24_6();
  OUTLINED_FUNCTION_61_7(v77, v78, v79, v80, v81, v82, v83, v84, v122, v125, v128, v36, xmmword_1D819FAB0);
  v85 = sub_1D81902A4();
  v86 = MEMORY[0x1E69DC2B0];
  *(v77 + 32) = v85;
  *(v77 + 40) = v86;
  OUTLINED_FUNCTION_0_8();
  swift_allocObject();
  OUTLINED_FUNCTION_53_7();
  OUTLINED_FUNCTION_15_17();
  v87 = swift_allocObject();
  v87[2] = v139;
  v87[3] = v136;
  v87[4] = v36;
  v87[5] = v140;
  v87[6] = v12;
  v87[7] = v137;
  v87[8] = v75;
  OUTLINED_FUNCTION_42_14();
  sub_1D8191C74();
  swift_unknownObjectRelease();

  v88 = *&v1[v138];
  swift_unknownObjectRetain();
  OUTLINED_FUNCTION_85_5();
  v89();
  OUTLINED_FUNCTION_14_6();
  swift_unknownObjectRelease();
  v90 = swift_allocObject();
  *(v90 + 16) = xmmword_1D819FAC0;
  v91 = sub_1D818FEE4();
  v92 = MEMORY[0x1E69DC0C8];
  *(v90 + 32) = v91;
  *(v90 + 40) = v92;
  v93 = sub_1D818FF64();
  v94 = MEMORY[0x1E69DC130];
  *(v90 + 48) = v93;
  *(v90 + 56) = v94;
  OUTLINED_FUNCTION_0_8();
  swift_allocObject();
  OUTLINED_FUNCTION_53_7();
  OUTLINED_FUNCTION_15_17();
  v95 = swift_allocObject();
  v95[2] = v139;
  v95[3] = v136;
  v96 = v131;
  v95[4] = v131;
  v95[5] = v140;
  v95[6] = v12;
  v95[7] = v137;
  v95[8] = v88;
  OUTLINED_FUNCTION_42_14();
  sub_1D8191C74();
  swift_unknownObjectRelease();

  v97 = *&v1[v138];
  swift_unknownObjectRetain();
  OUTLINED_FUNCTION_85_5();
  v98();
  OUTLINED_FUNCTION_14_6();
  swift_unknownObjectRelease();
  v99 = OUTLINED_FUNCTION_24_6();
  OUTLINED_FUNCTION_61_7(v99, v100, v101, v102, v103, v104, v105, v106, v123, v126, v129, v131, v134);
  v107 = sub_1D818FE64();
  v108 = MEMORY[0x1E69DC0A0];
  *(v99 + 32) = v107;
  *(v99 + 40) = v108;
  OUTLINED_FUNCTION_0_8();
  swift_allocObject();
  OUTLINED_FUNCTION_53_7();
  OUTLINED_FUNCTION_15_17();
  v109 = swift_allocObject();
  v109[2] = v139;
  v109[3] = v136;
  v109[4] = v96;
  v109[5] = v140;
  v109[6] = v12;
  v109[7] = v137;
  v109[8] = v97;
  OUTLINED_FUNCTION_42_14();
  sub_1D8191C74();
  swift_unknownObjectRelease();

  v110 = *&v1[v138];
  swift_unknownObjectRetain();
  v141(v136, v12);
  OUTLINED_FUNCTION_14_6();
  swift_unknownObjectRelease();
  v111 = OUTLINED_FUNCTION_24_6();
  OUTLINED_FUNCTION_61_7(v111, v112, v113, v114, v115, v116, v117, v118, v124, v127, v130, v132, v135);
  v119 = sub_1D8190074();
  v120 = MEMORY[0x1E69DC198];
  *(v111 + 32) = v119;
  *(v111 + 40) = v120;
  OUTLINED_FUNCTION_0_8();
  swift_allocObject();
  OUTLINED_FUNCTION_53_7();
  OUTLINED_FUNCTION_15_17();
  v121 = swift_allocObject();
  v121[2] = v139;
  v121[3] = v136;
  v121[4] = v133;
  v121[5] = v140;
  v121[6] = v12;
  v121[7] = v137;
  v121[8] = v110;
  sub_1D8191C74();
  swift_unknownObjectRelease();
}

uint64_t KeyCommandManager.register(in:selector:)(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakAssign();
  *(v2 + 80) = a2;
  OUTLINED_FUNCTION_0_177();
  v5 = *(v2 + 64);
  result = sub_1D7E36AB8(v5);
  if (result)
  {
    v7 = result;
    if (result < 1)
    {
      __break(1u);
    }

    else
    {
      sub_1D8190DB4();
      for (i = 0; i != v7; ++i)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1DA714420](i, v5);
        }

        else
        {
        }

        sub_1D7E3CE10(a1, a2);
      }
    }
  }

  return result;
}

uint64_t sub_1D7E3CE10(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakAssign();
  *(v2 + 48) = a2;
  swift_getObjectType();
  OUTLINED_FUNCTION_18_5();
  return v4(v2);
}

void KeyCommandFocusSelectionProvider.register(in:)()
{
  v1 = v0;
  v2 = *v0;
  v3 = *v0;
  sub_1D7E3D564();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D818E994();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v54 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + 96);
  v11 = *(v10 + 56);
  v12 = *(v2 + 80);
  v53 = v0[6];
  v52 = v11;
  v13 = v11(v12, v10);
  v55 = [v13 window];

  v14 = OUTLINED_FUNCTION_5_75();
  if (v14)
  {
    if ([v14 isKeyWindow])
    {
      v51 = v8;
      sub_1D8190F14();
      OUTLINED_FUNCTION_0_212();
      sub_1D7E3DAB0();

      sub_1D8190F14();
      OUTLINED_FUNCTION_0_212();
      sub_1D7E3DAB0();

      sub_1D8190F14();
      OUTLINED_FUNCTION_0_212();
      sub_1D7E3DAB0();

      sub_1D8190F14();
      OUTLINED_FUNCTION_0_212();
      sub_1D7E3DAB0();

      _s5TeaUI32KeyCommandFocusSelectionProviderC17selectedIndexPath10Foundation0iJ0VSgvg_0(v6);
      if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
      {

        sub_1D7E73334(v6);
      }

      else
      {
        v16 = *(v51 + 32);
        v50 = v7;
        v16(v54, v6, v7);
        (*(*(v3 + 104) + 8))(v56, *(v3 + 88));
        v17 = v58;
        __swift_project_boxed_opaque_existential_1(v56, v57);
        v18 = OUTLINED_FUNCTION_4_89();
        v20 = v19(v18);
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v22 = *(v17 + 56);
        v48 = AssociatedConformanceWitness;
        v22(&v59, v54, v20);

        if (v60)
        {
          sub_1D7E05450(&v59, &v61);
          __swift_destroy_boxed_opaque_existential_1Tm(v56);
          v23 = *(&v62 + 1);
          v24 = v63;
          __swift_project_boxed_opaque_existential_1(&v61, *(&v62 + 1));
          v25 = (*(v24 + 32))(v23, v24);
          v26 = 0;
          v27 = *(v25 + 16);
          for (i = v25 + 32; ; i += 136)
          {
            if (v27 == v26)
            {

              v29 = &v61;
              goto LABEL_15;
            }

            if (v26 >= *(v25 + 16))
            {
              break;
            }

            sub_1D801991C(i, v56);
            sub_1D810D608(v56, v1);
            ++v26;
            sub_1D8019978(v56);
          }

          __break(1u);

          sub_1D8019978(v56);
          __break(1u);
        }

        else
        {
          sub_1D7E9DD24(&v59, &qword_1ECA0DA98, qword_1EDBB7610);
          v29 = v56;
LABEL_15:
          __swift_destroy_boxed_opaque_existential_1Tm(v29);
          v30 = OUTLINED_FUNCTION_4_89();
          v32 = v31(v30);
          v33 = v48;
          v34 = *(v48 + 80);
          v35 = swift_checkMetadataState();
          v36 = v34(v54, v35, v33);

          if (v36)
          {
            *&v59 = v36;
            sub_1D7E0A1A8(0, &qword_1EDBB2FC0);
            sub_1D7E0631C(0, &qword_1EDBB6760);
            v37 = v36;
            if (swift_dynamicCast())
            {
              sub_1D7E05450(&v61, v56);
              v38 = v57;
              v39 = v58;
              __swift_project_boxed_opaque_existential_1(v56, v57);
              v40 = (*(v39 + 8))(v38, v39);
              sub_1D7F04980(v40);

              v41 = OUTLINED_FUNCTION_1_148();
              v42(v41);
              __swift_destroy_boxed_opaque_existential_1Tm(v56);
            }

            else
            {
              v45 = OUTLINED_FUNCTION_1_148();
              v46(v45);

              v63 = 0;
              v61 = 0u;
              v62 = 0u;
              sub_1D7E9DD24(&v61, &qword_1EDBB6758, &qword_1EDBB6760);
            }
          }

          else
          {
            v43 = OUTLINED_FUNCTION_1_148();
            v44(v43);
          }
        }
      }
    }

    else
    {
      v15 = OUTLINED_FUNCTION_5_75();
    }
  }
}

void sub_1D7E3D564()
{
  if (!qword_1EDBBC690)
  {
    sub_1D818E994();
    v0 = sub_1D8191E84();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBBC690);
    }
  }
}

uint64_t KeyCommandScrollProvider.register(in:)()
{
  sub_1D8190F14();
  OUTLINED_FUNCTION_6_22();
  swift_unownedRetain();
  swift_unownedRetain();

  OUTLINED_FUNCTION_0_8();
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_4_28(v1);
  OUTLINED_FUNCTION_1_2();
  sub_1D7E3DAB0();

  swift_unownedRelease();
  sub_1D8190F14();
  OUTLINED_FUNCTION_6_22();
  swift_unownedRetain();
  swift_unownedRetain();

  OUTLINED_FUNCTION_0_8();
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_4_28(v2);
  OUTLINED_FUNCTION_5_22();
  OUTLINED_FUNCTION_1_2();
  sub_1D7E3DAB0();

  swift_unownedRelease();
  v3 = TUKeyInputPageUp();
  sub_1D8190F14();

  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  OUTLINED_FUNCTION_0_8();
  *(swift_allocObject() + 16) = v0;
  OUTLINED_FUNCTION_2_43();
  sub_1D7E3DAB0();

  swift_unownedRelease();
  sub_1D8190F14();
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  OUTLINED_FUNCTION_0_8();
  *(swift_allocObject() + 16) = v0;
  OUTLINED_FUNCTION_5_22();
  OUTLINED_FUNCTION_2_43();
  sub_1D7E3DAB0();

  swift_unownedRelease();
  sub_1D8190F14();
  OUTLINED_FUNCTION_6_22();
  swift_unownedRetain();
  swift_unownedRetain();

  OUTLINED_FUNCTION_0_8();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_4_28(v4);
  OUTLINED_FUNCTION_1_2();
  sub_1D7E3DAB0();

  swift_unownedRelease();
  sub_1D8190F14();
  OUTLINED_FUNCTION_6_22();
  swift_unownedRetain();
  swift_unownedRetain();

  OUTLINED_FUNCTION_0_8();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_4_28(v5);
  OUTLINED_FUNCTION_5_22();
  OUTLINED_FUNCTION_1_2();
  sub_1D7E3DAB0();

  swift_unownedRelease();
  v6 = TUKeyInputPageDown();
  sub_1D8190F14();

  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  OUTLINED_FUNCTION_0_8();
  *(swift_allocObject() + 16) = v0;
  OUTLINED_FUNCTION_2_43();
  sub_1D7E3DAB0();

  swift_unownedRelease();
  sub_1D8190F14();
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  OUTLINED_FUNCTION_0_8();
  *(swift_allocObject() + 16) = v0;
  OUTLINED_FUNCTION_5_22();
  OUTLINED_FUNCTION_2_43();
  sub_1D7E3DAB0();

  return swift_unownedRelease();
}

uint64_t sub_1D7E3DA60()
{
  swift_unownedRelease();
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

void sub_1D7E3DAB0()
{
  OUTLINED_FUNCTION_12_9();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v17 = Strong;
  v18 = *(v1 + 48);
  if (!v18)
  {

LABEL_7:

    goto LABEL_8;
  }

  sub_1D7E3DCA8();
  sub_1D8190DB4();
  v19 = sub_1D7E3DCEC(v15, v13, v11, v18);
  if (v7)
  {
    sub_1D7F05DFC(v9, v7, v19);
  }

  v20 = swift_allocObject();
  *(v20 + 16) = v5;
  *(v20 + 24) = v3;
  swift_beginAccess();
  v21 = v19;

  swift_isUniquelyReferenced_nonNull_native();
  v22 = *(v1 + 16);
  sub_1D7E3DE70(sub_1D7E74D44, v20, v21);
  *(v1 + 16) = v22;

  swift_endAccess();
  [v17 addKeyCommand_];

LABEL_8:
  OUTLINED_FUNCTION_11_8();
}

uint64_t sub_1D7E3DC24()
{

  return swift_deallocObject();
}

uint64_t static TipSource.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D8192634();
  }
}

unint64_t sub_1D7E3DCA8()
{
  result = qword_1EDBB3260;
  if (!qword_1EDBB3260)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDBB3260);
  }

  return result;
}

id sub_1D7E3DCEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1D8190EE4();

  v7 = [swift_getObjCClassFromMetadata() keyCommandWithInput:v6 modifierFlags:a3 action:a4];

  return v7;
}

void UICollectionViewLayout.register<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 8))(a2, a3);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  static BlueprintLayoutSectionDecorationItemType.viewIdentifier.getter();
  v5 = sub_1D8190EE4();

  [v3 registerClass:ObjCClassFromMetadata forDecorationViewOfKind:v5];
}

uint64_t static ColorSectionDecorationItem.viewClass.getter()
{
  if (qword_1EDBB6DB0 != -1)
  {
    swift_once();
  }

  return qword_1EDBB6DA8;
}

id sub_1D7E3DE70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D7E3DF84();
  OUTLINED_FUNCTION_4_10();
  if (v8)
  {
    __break(1u);
LABEL_14:
    sub_1D7E0A1A8(0, &qword_1EDBB3260);
    result = sub_1D8192714();
    __break(1u);
    return result;
  }

  v9 = v6;
  v10 = v7;
  sub_1D7E3E104();
  if (OUTLINED_FUNCTION_29_2())
  {
    sub_1D7E3DF84();
    OUTLINED_FUNCTION_26_1();
    if (!v12)
    {
      goto LABEL_14;
    }

    v9 = v11;
  }

  v13 = *v3;
  if (v10)
  {
    v14 = (*(v13 + 56) + 16 * v9);
    *v14 = a1;
    v14[1] = a2;
    OUTLINED_FUNCTION_169();
  }

  else
  {
    sub_1D7E3E278(v9, a3, a1, a2, v13);
    OUTLINED_FUNCTION_169();

    return v17;
  }
}

unint64_t sub_1D7E3DF84()
{
  OUTLINED_FUNCTION_20_3();
  sub_1D8191CB4();
  v0 = OUTLINED_FUNCTION_14();

  return sub_1D7E3E004(v0, v1);
}

uint64_t sub_1D7E3DFC0()
{
  result = type metadata accessor for ColorSectionDecorationView();
  qword_1EDBB6DA8 = result;
  return result;
}

unint64_t sub_1D7E3E004(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_1D7E3DCA8();
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = sub_1D8191CC4();

    if (v8)
    {
      break;
    }
  }

  return i;
}

void sub_1D7E3E104()
{
  if (!qword_1EDBB2D78)
  {
    sub_1D7E0A1A8(255, &qword_1EDBB3260);
    sub_1D7E31228();
    sub_1D7E3E1A0();
    v0 = sub_1D8192394();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBB2D78);
    }
  }
}

unint64_t sub_1D7E3E1A0()
{
  result = qword_1EDBB3258;
  if (!qword_1EDBB3258)
  {
    sub_1D7E0A1A8(255, &qword_1EDBB3260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBB3258);
  }

  return result;
}

uint64_t static GradientSectionDecorationItem.viewClass.getter()
{
  if (qword_1EDBB6248 != -1)
  {
    swift_once();
  }

  return qword_1EDBB6238;
}

uint64_t sub_1D7E3E258()
{
  result = type metadata accessor for GradientSectionDecorationView();
  qword_1EDBB6238 = result;
  return result;
}

void sub_1D7E3E278(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = OUTLINED_FUNCTION_1_42(a1, a2, a3, a4, a5);
  *(v8 + 8 * v5) = v7;
  v9 = (*(v6 + 56) + 16 * v5);
  *v9 = v10;
  v9[1] = v11;
  v12 = *(v6 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_6_20(v6, v14);
  }
}

uint64_t *OUTLINED_FUNCTION_173()
{
  *(v0 - 96) = *(v0 - 328);

  return __swift_allocate_boxed_opaque_existential_0((v0 - 120));
}

uint64_t sub_1D7E3E304()
{
  result = type metadata accessor for RadialGradientSectionDecorationView();
  qword_1EDBB4B30 = result;
  return result;
}

Swift::Void __swiftcall BlueprintViewProvider.viewDidLoad()()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = *v0;
  v4 = *(*v0 + 128);
  v5 = *(*v0 + 88);
  (*(v1[16] + 56))(v2, v1[11], v1[16]);
  v6 = v1[17];
  v7 = v1[12];
  (*(v6 + 160))(v2, v7, v6);
  if (*(v0 + 64) <= 1u)
  {
    v8 = v0[7];
    v9 = v3[18];
    v10 = v3[13];
    (*(v9 + 16))(v2, v10, v9);
    (*(v9 + 24))(v2, v10, v9);
    (*(v4 + 48))(&v23, v5, v4);
    if (*(&v24 + 1))
    {
      sub_1D8130BEC(&v23, &v26);
      v11 = v27;
      v12 = v28;
      __swift_project_boxed_opaque_existential_1(&v26, v27);
      (*(v12 + 8))(v11, v12);
      __swift_destroy_boxed_opaque_existential_1Tm(&v26);
    }

    else
    {
      sub_1D7E4091C(&v23, &qword_1EDBB48D8, sub_1D7E40BB4);
      swift_getObjectType();
      v13 = dynamic_cast_existential_1_conditional(v8);
      if (v13)
      {
        v15 = v13;
        v16 = v14;
        v22 = *(v4 + 32);
        swift_unknownObjectRetain_n();
        v22(v15, v16, v5, v4);
        (*(v6 + 144))(v15, v16, v7, v6);
        swift_unknownObjectRelease();
      }
    }
  }

  v29 = v2;
  sub_1D7E41148();
  v17 = v2;
  if (swift_dynamicCast())
  {
    sub_1D7E05450(&v23, &v26);
    OUTLINED_FUNCTION_27_0(&v26);
    v18 = OUTLINED_FUNCTION_3_1();
    v19(v18);
    __swift_destroy_boxed_opaque_existential_1Tm(&v26);
  }

  else
  {
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    OUTLINED_FUNCTION_0_225();
    sub_1D7E4091C(&v23, v20, v21);
  }
}

uint64_t static RadialGradientSectionDecorationItem.viewClass.getter()
{
  if (qword_1EDBB4B38 != -1)
  {
    swift_once();
  }

  return qword_1EDBB4B30;
}

uint64_t BlueprintCompositionalListDataSourceProxy.register(in:)()
{
  OUTLINED_FUNCTION_39();
  v2 = 104;
  if (*(v0 + 24))
  {
    v2 = 112;
  }

  v3 = *(*(v1 + v2) + 56);
  swift_unknownObjectRetain();
  v4 = OUTLINED_FUNCTION_1_135();
  v3(v4);

  return swift_unknownObjectRelease();
}

uint64_t static PatternSectionDecorationItem.viewClass.getter()
{
  if (qword_1EDBB64C8 != -1)
  {
    swift_once();
  }

  return qword_1EDBB64C0;
}

Swift::Void __swiftcall BlueprintCollectionViewDataSource.register(in:)(UICollectionView *in)
{
  v2 = v1;
  v4 = *v1;
  v5 = *MEMORY[0x1E69E7D40];
  v6 = (*MEMORY[0x1E69E7D40] & *v1);
  [(UICollectionView *)in setDataSource:v1];
  OUTLINED_FUNCTION_3_7();
  v23[0] = in;
  v7 = *((v5 & v4) + 0x80);
  v8 = *((v5 & v4) + 0x60);
  (*(v7 + 56))(v23, v8, v7);
  OUTLINED_FUNCTION_38_9();
  v23[0] = in;
  v9 = *((v5 & v4) + 0x88);
  v10 = *((v5 & v4) + 0x68);
  (*(v9 + 80))(v23, v10, v9);
  OUTLINED_FUNCTION_62();
  sub_1D7E3F168(v11, v12, v13);
  OUTLINED_FUNCTION_62();
  sub_1D7E3F168(v14, v15, v16);
  OUTLINED_FUNCTION_38_9();
  v18 = *(v17 + 200);
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  v19 = *(v2 + v18);
  if (v19)
  {

    sub_1D802B150();
    OUTLINED_FUNCTION_0_8();
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = swift_allocObject();
    v21[2] = v6[11];
    v21[3] = v8;
    v21[4] = v10;
    v21[5] = v6[15];
    v21[6] = v7;
    v21[7] = v9;
    v21[8] = v6[18];
    v21[9] = v20;
    v21[10] = v19;
    v21[11] = in;

    v22 = in;
    BlueprintSectionCollapsibleStateManager.onStateChange(_:)(sub_1D802B688, v21);
  }
}

uint64_t sub_1D7E3EA90()
{
  MEMORY[0x1DA715E30](v0 + 16);
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7E3EAC4()
{

  return swift_deallocObject();
}

uint64_t sub_1D7E3EB0C()
{
  result = type metadata accessor for PatternSectionDecorationView();
  qword_1EDBB64C0 = result;
  return result;
}

void sub_1D7E3EC04(void *a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
}

void UICollectionView.register<A>(cell:name:)()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  OUTLINED_FUNCTION_1_133();
  v2 = sub_1D8190EE4();

  [v0 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v2];
}

uint64_t sub_1D7E3ECF0()
{
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1D7E3ED28(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3)
  {
    v3 = a2;
  }

  else
  {
    v3 = 0;
  }

  if (a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = 0xE000000000000000;
  }

  sub_1D8190DB4();
  MEMORY[0x1DA713260](v3, v4);

  MEMORY[0x1DA713260](58, 0xE100000000000000);
  v5 = sub_1D81925B4();
  MEMORY[0x1DA713260](v5);

  return 0;
}

uint64_t BlueprintInfiniteScrollBuilder.init(infiniteScrollProvider:trigger:idleTrigger:)(__int128 *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(a2 + 16);
  v5 = *a3;
  v6 = *(a3 + 8);
  *(v3 + 56) = *a2;
  *(v3 + 72) = v4;
  sub_1D7E05450(a1, v3 + 16);
  *(v3 + 80) = v5;
  *(v3 + 88) = v6;
  return v3;
}

uint64_t sub_1D7E3EE38(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t BlueprintLayoutCollectionPipelineProcessor.add(layoutSubProcessor:)(uint64_t a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_12();
  v5 = *(v4 + 152);
  swift_beginAccess();
  sub_1D7E3F278();
  v6 = *(*(v1 + v5) + 16);
  sub_1D7E3F414(v6);
  v7 = *(v1 + v5);
  *(v7 + 16) = v6 + 1;
  sub_1D7E0E768(a1, v7 + 40 * v6 + 32);
  *(v2 + v5) = v7;
  return swift_endAccess();
}

void UICollectionView.register<A>(supplementaryView:kind:name:)()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = sub_1D8190EE4();

  OUTLINED_FUNCTION_1_133();
  v3 = sub_1D8190EE4();

  [v0 registerClass:ObjCClassFromMetadata forSupplementaryViewOfKind:v2 withReuseIdentifier:v3];
}

BOOL OUTLINED_FUNCTION_62_2(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_62_4()
{
}

void sub_1D7E3F0B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, _UNKNOWN **))
{
  if (!*a2)
  {
    v6 = type metadata accessor for HiddenView();
    v7 = a3(a1, v6, &protocol witness table for HiddenView);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1D7E3F11C()
{
  v3 = OUTLINED_FUNCTION_28_2();
  *v1 = v2;
  if (!v3)
  {
    OUTLINED_FUNCTION_19_2();
    sub_1D7E3F2A8(v4, v5, v6, v7, v8, v9, v10, v0);
    *v1 = v11;
  }
}

void sub_1D7E3F168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D7E3F0B8(0, qword_1EDBB8BF0, type metadata accessor for CollectionReusableView);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = sub_1D8190EE4();

  sub_1D7E3F564(a2, a3, qword_1EDBB8BF0, type metadata accessor for CollectionReusableView);
  v8 = sub_1D8190EE4();

  [v3 registerClass:ObjCClassFromMetadata forSupplementaryViewOfKind:v7 withReuseIdentifier:v8];
}

void sub_1D7E3F2A8(char a1, uint64_t a2, char a3, uint64_t a4, void *a5, unint64_t *a6, uint64_t a7, void (*a8)(uint64_t, uint64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v13 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_2_16();
  if (v14 == v15)
  {
LABEL_7:
    v16 = *(a4 + 16);
    if (v13 <= v16)
    {
      v17 = *(a4 + 16);
    }

    else
    {
      v17 = v13;
    }

    if (v17)
    {
      sub_1D7E1CBD8(0, a5, a6, a7, MEMORY[0x1E69E6F90]);
      v18 = swift_allocObject();
      v19 = _swift_stdlib_malloc_size(v18);
      v18[2] = v16;
      v18[3] = 2 * ((v19 - 32) / 40);
      if (a1)
      {
LABEL_12:
        a8(a4 + 32, v16, v18 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v18 = MEMORY[0x1E69E7CC0];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    sub_1D7E069F0(0, a6);
    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_12_4();
  if (!v14)
  {
    OUTLINED_FUNCTION_1_10();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1D7E3F444(uint64_t a1, void *a2, unint64_t *a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, void *))
{
  v6 = *(*v5 + 24);
  if (a1 + 1 > (v6 >> 1))
  {
    sub_1D7E3F2A8(v6 > 1, a1 + 1, 1, *v5, a2, a3, a4, a5);
    *v5 = v7;
  }
}

uint64_t sub_1D7E3F4F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 132) = 0;
    *(result + 128) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 133) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 133) = 0;
    }

    if (a2)
    {
      *(result + 128) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1D7E3F564(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, _UNKNOWN **))
{
  sub_1D7E3F0B8(0, a3, a4);
  sub_1D8190DB4();
  v4 = OUTLINED_FUNCTION_15_5();
  MEMORY[0x1DA713260](v4);

  MEMORY[0x1DA713260](58, 0xE100000000000000);
  v5 = sub_1D81925B4();
  MEMORY[0x1DA713260](v5);

  return 0;
}

Swift::Void __swiftcall BlueprintCollectionViewDelegate.register(in:)(UICollectionView *in)
{
  OUTLINED_FUNCTION_3_7();
  v4 = v3;
  swift_unknownObjectWeakAssign();
  OUTLINED_FUNCTION_3_7();
  [(UICollectionView *)in setDelegate:*&v1[*(v5 + 176)]];
  type metadata accessor for SwipeActionCollectionView();
  OUTLINED_FUNCTION_117_1();
  if (swift_dynamicCastClass())
  {
    v6 = in;
    v7 = v1;
    sub_1D7E51950(v1, &off_1F52F51D0);
    swift_unknownObjectRetain();
    sub_1D7E51944(v1, &off_1F52F51B8);
  }

  OUTLINED_FUNCTION_13_25();
  v8 = *(v4 + 104);
  v9 = *(v4 + 80);
  v10 = OUTLINED_FUNCTION_110();
  v11(v10);
  OUTLINED_FUNCTION_0_8();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_0_8();
  v13 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  OUTLINED_FUNCTION_115_1();
  v14 = swift_allocObject();
  *(v14 + 16) = v9;
  *(v14 + 24) = *(v4 + 88);
  *(v14 + 32) = *(v4 + 96);
  *(v14 + 40) = v8;
  *(v14 + 48) = *(v4 + 112);
  *(v14 + 64) = *(v4 + 128);
  *(v14 + 72) = v12;
  *(v14 + 80) = v13;
  OUTLINED_FUNCTION_16();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_16();
  v16 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_111();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_111();
  v18[0] = AssociatedTypeWitness;
  v18[1] = v16;
  v18[2] = AssociatedConformanceWitness;
  v19 = swift_getAssociatedConformanceWitness();
  type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_0_2();
  sub_1D818F164();

  __swift_project_boxed_opaque_existential_1(v18, v19);
  OUTLINED_FUNCTION_3_1();
  sub_1D818ED84();
  __swift_destroy_boxed_opaque_existential_1Tm(v18);
}

uint64_t sub_1D7E3F8D8()
{
  MEMORY[0x1DA715E30](v0 + 16);
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7E3F90C()
{
  swift_unknownObjectUnownedDestroy();
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7E3F940()
{

  OUTLINED_FUNCTION_115_1();

  return swift_deallocObject();
}

char *sub_1D7E3F980(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_201(a3, result);
  }

  return result;
}

uint64_t MultiCollectionViewDelegate.responds(to:)(uint64_t result)
{
  if (result)
  {
    v2 = v1;
    v3 = result;
    v4 = OBJC_IVAR____TtC5TeaUI27MultiCollectionViewDelegate_respondsToSelectorCache;
    swift_beginAccess();
    v5 = *(v1 + v4);
    if (*(v5 + 16) && (v6 = sub_1D7E3FE88(), (v7 & 1) != 0))
    {
      v8 = *(*(v5 + 56) + v6);
    }

    else
    {
      swift_endAccess();
      v8 = sub_1D7E3FB34(1, 0, v2, v3);
      swift_beginAccess();
      swift_isUniquelyReferenced_nonNull_native();
      v9 = *(v2 + v4);
      sub_1D7E3FCC4();
      *(v2 + v4) = v9;
    }

    swift_endAccess();
    return v8 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7E3FB14(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

id sub_1D7E3FB34(int a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D818E584();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [*(a3 + OBJC_IVAR____TtC5TeaUI27MultiCollectionViewDelegate_delegates) allObjects];
  if (result)
  {
    v13 = result;
    sub_1D8191C94();

    while (1)
    {
      sub_1D818E574();
      if (!v19)
      {
        break;
      }

      sub_1D7E1C664(&v18, &v16);
      __swift_project_boxed_opaque_existential_1(&v16, v17);
      v14 = sub_1D8192614();
      __swift_destroy_boxed_opaque_existential_1Tm(&v16);
      v15 = [v14 respondsToSelector_];
      swift_unknownObjectRelease();
      if (((v15 ^ a1) & 1) == 0)
      {
        a2 = v15;
        break;
      }
    }

    (*(v9 + 8))(v11, v8);
    return (a2 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D7E3FCC4()
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_71_0();
  v2 = v1;
  sub_1D7E3FE88();
  OUTLINED_FUNCTION_4_10();
  if (v5)
  {
    __break(1u);
LABEL_12:
    sub_1D8192714();
    __break(1u);
    return;
  }

  v6 = v3;
  v7 = v4;
  v8 = OUTLINED_FUNCTION_96();
  sub_1D7E400C8(v8, v9, v10);
  if (OUTLINED_FUNCTION_29_2())
  {
    sub_1D7E3FE88();
    OUTLINED_FUNCTION_26_1();
    if (!v12)
    {
      goto LABEL_12;
    }

    v6 = v11;
  }

  if (v7)
  {
    *(*(*v0 + 56) + v6) = v2 & 1;
    OUTLINED_FUNCTION_139();
  }

  else
  {
    OUTLINED_FUNCTION_158();
    OUTLINED_FUNCTION_139();

    sub_1D7E402D0(v13, v14, v15, v16);
  }
}

uint64_t sub_1D7E3FDBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 280) = 0;
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
    *(result + 264) = 0u;
    *(result + 288) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 290) = 1;
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
      *(result + 128) = (a2 - 1);
      return result;
    }

    *(result + 290) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D7E3FE88()
{
  OUTLINED_FUNCTION_8_13();
  sub_1D818E9B4();
  sub_1D8192824();
  v0 = OUTLINED_FUNCTION_17_7();

  return sub_1D7E3FFD4(v0, v1);
}

uint64_t OUTLINED_FUNCTION_70_0()
{

  return sub_1D8192374();
}

uint64_t OUTLINED_FUNCTION_70_1()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_70_5()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

void OUTLINED_FUNCTION_70_6()
{
  *(v4 - 144) = v2;
  *(v4 - 136) = v0;
  *(v4 - 128) = v1;
  *(v4 - 120) = v3;
}

__n128 OUTLINED_FUNCTION_70_7@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  result = *&STACK[0x810];
  v4 = *&STACK[0x820];
  *v2 = *&STACK[0x810];
  *(v2 + 16) = v4;
  *(v2 + 32) = 0;
  return result;
}

id PillButton.init(frame:)()
{
  OUTLINED_FUNCTION_155();
  v5 = type metadata accessor for PillButton();
  v1 = OUTLINED_FUNCTION_80();
  return objc_msgSendSuper2(v2, v3, v1, v0, v5);
}

unint64_t sub_1D7E3FFD4(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

void sub_1D7E400C8(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    OUTLINED_FUNCTION_85();
    v4 = sub_1D8192394();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

char *PaddedShapeButton.init(frame:)()
{
  OUTLINED_FUNCTION_155();
  v1 = (v0 + OBJC_IVAR____TtC5TeaUI17PaddedShapeButton_contentOffset);
  *v1 = 0;
  v1[1] = 0;
  v2 = OBJC_IVAR____TtC5TeaUI17PaddedShapeButton_onTap;
  sub_1D7E40308();
  v4 = v3;
  *(v0 + v2) = [objc_allocWithZone(v3) init];
  v5 = OBJC_IVAR____TtC5TeaUI17PaddedShapeButton_onMenuPresentation;
  *(v0 + v5) = [objc_allocWithZone(v4) init];
  *(v0 + OBJC_IVAR____TtC5TeaUI17PaddedShapeButton__backgroundColor) = 0;
  v13 = type metadata accessor for PaddedShapeButton();
  v6 = OUTLINED_FUNCTION_80();
  v9 = objc_msgSendSuper2(v7, v8, v6, v0, v13);
  v10 = *&v9[OBJC_IVAR____TtC5TeaUI17PaddedShapeButton_onTap];
  v11 = v9;
  [v11 addTarget:v10 action:sel_handleAction forControlEvents:64];
  [v11 addTarget:*&v11[OBJC_IVAR____TtC5TeaUI17PaddedShapeButton_onMenuPresentation] action:sel_handleAction forControlEvents:0x4000];

  return v11;
}

unint64_t sub_1D7E40268()
{
  result = qword_1EDBBC658;
  if (!qword_1EDBBC658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBBC658);
  }

  return result;
}

void sub_1D7E402D0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = OUTLINED_FUNCTION_2_40(a1, a2, a3, a4);
  *(v5[6] + 8 * v4) = v6;
  *(v5[7] + v4) = v7;
  v8 = v5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_5_19(v5, v10);
  }
}

void sub_1D7E40308()
{
  if (!qword_1EDBB38C0[0])
  {
    v0 = type metadata accessor for Action();
    if (!v1)
    {
      atomic_store(v0, qword_1EDBB38C0);
    }
  }
}

uint64_t type metadata accessor for SwipeActionCollectionView()
{
  result = qword_1EDBB7370;
  if (!qword_1EDBB7370)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D7E403FC()
{
  result = qword_1EDBB3268;
  if (!qword_1EDBB3268)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDBB3268);
  }

  return result;
}

id sub_1D7E40440(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for PaddedShapeButton();
  return objc_msgSendSuper2(&v4, *a1);
}

void OUTLINED_FUNCTION_107_0()
{
  v1 = *(v0 - 120);
  *(v0 - 128) = *(v0 - 128);
  *(v0 - 120) = v1;
}

void OUTLINED_FUNCTION_107_3()
{
}

char *ImageView.init(frame:)()
{
  v1 = v0;
  OUTLINED_FUNCTION_155();
  v2 = OBJC_IVAR____TtC5TeaUI9ImageView_imageView;
  *(v1 + v2) = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DCAE0]), sel_initWithFrame_);
  v3 = OBJC_IVAR____TtC5TeaUI9ImageView__loadingIdentifier;
  OUTLINED_FUNCTION_1_84();
  sub_1D7E40724(0, v4, v5, MEMORY[0x1E69D6748]);
  swift_allocObject();
  *(v1 + v3) = sub_1D818F514();
  *(v1 + OBJC_IVAR____TtC5TeaUI9ImageView__backgroundColor) = 0;
  v20 = type metadata accessor for ImageView();
  v6 = OUTLINED_FUNCTION_80();
  v9 = objc_msgSendSuper2(v7, v8, v6, v1, v20, 0, 0);
  v10 = OBJC_IVAR____TtC5TeaUI9ImageView_imageView;
  v11 = *&v9[OBJC_IVAR____TtC5TeaUI9ImageView_imageView];
  v12 = v9;
  [v12 addSubview_];
  v13 = [v12 layer];
  type metadata accessor for ImageViewLayer();
  v14 = swift_dynamicCastClass();
  if (v14)
  {
    v15 = v14;
    v16 = *&v9[v10];
    v17 = [v16 layer];

    v18 = *(v15 + OBJC_IVAR____TtC5TeaUIP33_01AB305DE961FE9633E4B4930A1B15A714ImageViewLayer_coordinateWithLayer);
    *(v15 + OBJC_IVAR____TtC5TeaUIP33_01AB305DE961FE9633E4B4930A1B15A714ImageViewLayer_coordinateWithLayer) = v17;

    v13 = v18;
  }

  else
  {
  }

  return v12;
}

void sub_1D7E40724(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D7E40788()
{
  if (!qword_1EDBB3400)
  {
    v0 = sub_1D8191E84();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBB3400);
    }
  }
}

uint64_t OUTLINED_FUNCTION_136_1()
{
  v3 = *(v0 + 216);

  return BlueprintProviderType.blueprint.getter(v3, v1);
}

uint64_t OUTLINED_FUNCTION_136_2(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_111_0(uint64_t a1)
{
  *(v4 - 120) = v1;
  *(v4 - 112) = v2;
  *(v4 - 104) = v3;
  *(v4 - 96) = a1;

  return type metadata accessor for Blueprint();
}

void OUTLINED_FUNCTION_111_2()
{

  JUMPOUT(0x1DA713260);
}

uint64_t sub_1D7E4091C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D7E40B18(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id sub_1D7E4099C()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC5TeaUIP33_01AB305DE961FE9633E4B4930A1B15A714ImageViewLayer_coordinateWithLayer] = 0;
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

double BlueprintCompositionalListDataSourceProxy.diffableReorderDataSource.getter@<D0>(_OWORD *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 24) == 1)
  {
    v3 = *(v2 + 112);
    v4 = *(v3 + 48);
    v5 = *(v2 + 88);
    swift_unknownObjectRetain();
    v4(v5, v3);

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    a1[1] = 0u;
    a1[2] = 0u;
    *a1 = 0u;
  }

  return result;
}

id PassthroughView.init(frame:)()
{
  OUTLINED_FUNCTION_155();
  v5 = type metadata accessor for PassthroughView();
  v1 = OUTLINED_FUNCTION_80();
  return objc_msgSendSuper2(v2, v3, v1, v0, v5);
}

void sub_1D7E40B18(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D8191E84();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id ImageView.contentMode.setter(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for ImageView();
  objc_msgSendSuper2(&v4, sel_setContentMode_, a1);
  return sub_1D7E40C70();
}

unint64_t sub_1D7E40BB4()
{
  result = qword_1EDBB48E0[0];
  if (!qword_1EDBB48E0[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EDBB48E0);
  }

  return result;
}

id sub_1D7E40C70()
{
  v1 = *&v0[OBJC_IVAR____TtC5TeaUI9ImageView_imageView];
  v2 = [v0 contentMode];

  return [v1 setContentMode_];
}

uint64_t BlueprintCompositionalListDataSourceProxy.dragReorderDelegate.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v3;
  if ((v3[3] & 1) == 0)
  {
    v7 = v3[2];
    v8 = *(v5 + 104);
    v9 = *(v8 + 32);
    v10 = *(v5 + 80);
    swift_unknownObjectRetain();
    v9(a1, a2, v10, v8);
    v3[2] = v7;
    *(v3 + 24) = 0;
  }

  return swift_unknownObjectRelease();
}

id ImageView.contentMode.getter()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ImageView();
  return objc_msgSendSuper2(&v2, sel_contentMode);
}

uint64_t BlueprintCollectionViewDataSource.dragReorderDelegate.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_7();
  v6 = (v2 + *(v5 + 152));
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
  return swift_unknownObjectRelease();
}

id sub_1D7E40E74(void *a1, uint64_t a2)
{
  v4 = a1[3];
  if (v4)
  {
    v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v7 = *(v4 - 8);
    MEMORY[0x1EEE9AC00](v6);
    v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v9);
    v10 = sub_1D8192614();
    (*(v7 + 8))(v9, v4);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v10 = 0;
  }

  v11 = [v2 initWithTarget:v10 action:a2];
  swift_unknownObjectRelease();
  return v11;
}

uint64_t BlueprintCollectionViewDelegate.dragReorderDelegate.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_7();
  v6 = (v2 + *(v5 + 232));
  OUTLINED_FUNCTION_56();
  *v6 = a1;
  v6[1] = a2;
  return swift_unknownObjectRelease();
}

id Action.register(in:for:)(void *a1, uint64_t *a2)
{
  ObjectType = swift_getObjectType();
  if (a2[1])
  {
    v12 = ObjectType;
    v11[0] = v2;
    objc_allocWithZone(MEMORY[0x1E69DCC48]);
    v6 = v2;
    v7 = sub_1D7FB6EA8(v11, sel_handleLongPressWithRecognizer_);
    [v7 setDelegate_];
    [a1 addGestureRecognizer_];
  }

  else
  {
    v8 = *a2;
    v12 = ObjectType;
    v11[0] = v2;
    objc_allocWithZone(MEMORY[0x1E69DD060]);
    v9 = v2;
    v7 = sub_1D7E40E74(v11, sel_handleAction);
    [v7 setNumberOfTapsRequired_];
    [a1 addGestureRecognizer_];
  }

  return v7;
}

unint64_t sub_1D7E41148()
{
  result = qword_1EDBB5018[0];
  if (!qword_1EDBB5018[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EDBB5018);
  }

  return result;
}

uint64_t sub_1D7E411A4()
{
  v1 = v0;
  v2 = (*MEMORY[0x1E69E7D40] & *v0);
  v3 = v2[10];
  OUTLINED_FUNCTION_2();
  result = MEMORY[0x1EEE9AC00](v4);
  v10 = *((v9 & v8) + 0xA8);
  if (!*(v0 + v10))
  {
    (*(v7 + 16))(&v15[-v6 - 8], v0 + v2[17], v3);
    sub_1D7E4138C();
    result = swift_dynamicCast();
    if (result)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      v11 = [objc_allocWithZone(MEMORY[0x1E69DC8E0]) initWithDelegate_];
      OUTLINED_FUNCTION_6_12();
      v12 = (*(v2[14] + 56))(v2[11]);
      [v12 addInteraction_];

      v13 = *(v1 + v10);
      *(v1 + v10) = v11;

      OUTLINED_FUNCTION_6_12();
      return swift_unknownObjectWeakAssign();
    }
  }

  return result;
}

unint64_t sub_1D7E4138C()
{
  result = qword_1EDBB9540;
  if (!qword_1EDBB9540)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDBB9540);
  }

  return result;
}

id MastheadViewController.init(rootViewController:viewProvider:miniMastheadViewProvider:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_getObjectType();
  *(v3 + qword_1EDBB8838) = 1;
  *(v3 + qword_1EDBB88D0) = 0;
  v8 = qword_1EDBB88A0;
  v9 = type metadata accessor for PassthroughView();
  *(v4 + v8) = OUTLINED_FUNCTION_4(objc_allocWithZone(v9), sel_initWithFrame_);
  v10 = qword_1EDBB88F0;
  *(v4 + v10) = OUTLINED_FUNCTION_4(objc_allocWithZone(v9), sel_initWithFrame_);
  v11 = (v4 + qword_1EDBB8848);
  *v11 = 0u;
  v11[1] = 0u;
  v12 = qword_1EDBB8800;
  type metadata accessor for MastheadViewScrollAnimator();
  *(v4 + v12) = swift_allocObject();
  v13 = qword_1EDBB8830;
  sub_1D7E41734(v54);
  OUTLINED_FUNCTION_36_10((v4 + v13), v14, v15, v16, v17, v18, v19, v20, v48, v50, v52, v54[0]);
  OUTLINED_FUNCTION_36_10((v4 + qword_1EDBB8820), v21, v22, v23, v24, v25, v26, v27, v49, v51, v53, v54[0]);
  v28 = (v4 + qword_1EDBB8858);
  v29 = *(MEMORY[0x1E69DDCE0] + 16);
  *v28 = *MEMORY[0x1E69DDCE0];
  v28[1] = v29;
  *(v4 + qword_1EDBB88E0) = 0;
  *(v4 + qword_1EDBB8818) = 0;
  *(v4 + qword_1EDBB8810) = 0;
  *(v4 + qword_1EDBB8890) = 0;
  v30 = (v4 + qword_1EDBB8868);
  *v30 = 0;
  v30[1] = 0;
  v31 = qword_1EDBB88A8;
  *(v4 + v31) = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DD250]), sel_initWithFrame_);
  v32 = qword_1EDBB8878;
  v33 = objc_allocWithZone(type metadata accessor for MastheadDisplayOptions());
  *(v4 + v32) = OUTLINED_FUNCTION_30_15();
  v34 = v4 + qword_1EDBB8900;
  *v34 = 0;
  *(v34 + 8) = 0;
  *(v34 + 16) = 1;
  *(v4 + qword_1EDBB87F8 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + qword_1EDBB88B8) = a1;
  sub_1D7E0E768(a2, v4 + qword_1EDBB8880);
  sub_1D7E41C50(a3, v4 + qword_1EDBB88C8);
  v35 = a1;
  OUTLINED_FUNCTION_7();
  v38 = objc_msgSendSuper2(v36, v37);
  v39 = objc_opt_self();
  v40 = v38;
  v41 = [v39 defaultCenter];
  [v41 addObserver:v40 selector:sel_boldTextEnabledDidChangeNotification name:*MEMORY[0x1E69DD898] object:0];

  v42 = [v39 defaultCenter];
  [v42 addObserver:v40 selector:sel_smartInvertStatusDidChange name:*MEMORY[0x1E69DD8D8] object:0];

  [v40 addChildViewController_];
  OUTLINED_FUNCTION_0_152();
  sub_1D805F144(a3, v43, v44, v45, v46);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v40;
}

double sub_1D7E4173C()
{
  qword_1EDBB9850 = 0;
  result = 0.0;
  xmmword_1EDBB9830 = 0u;
  unk_1EDBB9840 = 0u;
  byte_1EDBB9858 = 5;
  xmmword_1EDBB9860 = 0u;
  unk_1EDBB9870 = 0u;
  qword_1EDBB9880 = 0;
  word_1EDBB9888 = 5;
  return result;
}

uint64_t sub_1D7E417A4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

id sub_1D7E4183C(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);

  return v11;
}

uint64_t get_enum_tag_for_layout_string_5TeaUI19NavigationItemStyleV03BarE0O(uint64_t a1)
{
  if ((*(a1 + 40) & 7u) <= 4)
  {
    return *(a1 + 40) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

id sub_1D7E41904(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = (v3 + *a3);
  v7 = *v5;
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  sub_1D7E418F4(v7, v6);

  return v9;
}

void OUTLINED_FUNCTION_47_2()
{

  sub_1D8090B4C(v1, (v3 - 152), v0, v2, 0.0, 0.0);
}

id OUTLINED_FUNCTION_47_5(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_47_8()
{

  return swift_getAssociatedTypeWitness();
}

void OUTLINED_FUNCTION_47_9()
{

  sub_1D7E6E234(&STACK[0x4C8]);
}

uint64_t OUTLINED_FUNCTION_47_13()
{

  return swift_storeEnumTagMultiPayload();
}

id OUTLINED_FUNCTION_47_14(id a1, SEL a2)
{

  return [a1 a2];
}

id MastheadDisplayOptions.init(displayMode:styleOptions:statusBarVisiblityOffset:)(uint64_t a1, void *a2, double a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR___TSMastheadDisplayOptions_styleOptions] = a2;
  if (a1 == 1)
  {
    v8 = OBJC_IVAR___TSMastheadDisplayOptions_statusBarMode;
    *&v3[OBJC_IVAR___TSMastheadDisplayOptions_statusBarMode] = 0;
    v9 = 1;
LABEL_5:
    v3[v8 + 8] = v9;
    *&v3[OBJC_IVAR___TSMastheadDisplayOptions_displayMode] = a1;
    v10 = &v3[OBJC_IVAR___TSMastheadDisplayOptions_statusBarVisiblityOffset];
    *v10 = a3;
    *(v10 + 8) = 0;
    v13.receiver = v3;
    v13.super_class = ObjectType;
    return objc_msgSendSuper2(&v13, sel_init);
  }

  if (!a1)
  {
    v9 = 0;
    v8 = OBJC_IVAR___TSMastheadDisplayOptions_statusBarMode;
    *&v3[OBJC_IVAR___TSMastheadDisplayOptions_statusBarMode] = a3;
    goto LABEL_5;
  }

  v12 = a2;
  result = sub_1D81926E4();
  __break(1u);
  return result;
}

uint64_t sub_1D7E41C50(uint64_t a1, uint64_t a2)
{
  sub_1D7E41D48(0, &qword_1EDBB64D0, &unk_1EDBB64D8, &protocol descriptor for MiniMastheadViewProviderType, sub_1D7E0631C);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_67_0()
{

  return sub_1D7EE5EF8((v1 - 120), v0);
}

uint64_t OUTLINED_FUNCTION_67_3()
{

  return swift_getEnumCaseMultiPayload();
}

void sub_1D7E41D48(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1D8191E84();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t AppMonitor.isActive.setter(char a1)
{
  v3 = OBJC_IVAR___TSAppMonitor_isActive;
  result = OUTLINED_FUNCTION_0_25();
  *(v1 + v3) = a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_76_1()
{

  return static JSONSchema.== infix(_:_:)();
}

uint64_t OUTLINED_FUNCTION_76_3()
{

  return sub_1D8192634();
}

uint64_t OUTLINED_FUNCTION_76_4()
{

  return type metadata accessor for BlueprintLayoutItem();
}

uint64_t OUTLINED_FUNCTION_76_6()
{
}

id OUTLINED_FUNCTION_76_7(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return [a1 (v6 + 2040)];
}

char *BlurStatusBarView.init(frame:)()
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for BarView();
  v10 = OUTLINED_FUNCTION_3_21(v2, v3, v4, v5, v6, v7, v8, v9, v19, v21, *v22, *&v22[4], v22[6], 0, 2);
  *&v0[OBJC_IVAR____TtC5TeaUI17BlurStatusBarView_barView] = v10;
  v20.receiver = v0;
  v20.super_class = ObjectType;
  v17 = OUTLINED_FUNCTION_1_12(v10, sel_initWithFrame_, v11, v12, v13, v14, v15, v16, v20);
  [v17 setPreservesSuperviewLayoutMargins_];
  [v17 setAutoresizingMask_];
  [v17 addSubview_];

  return v17;
}

Swift::Void __swiftcall BlueprintCompositionalListDataSourceProxy.traitCollectionDidChange(_:traitCollection:)(UITraitCollection_optional _, UITraitCollection traitCollection)
{
  v3 = *&_.is_nil;
  isa = _.value.super.isa;
  OUTLINED_FUNCTION_39();
  v6 = 104;
  if (*(v2 + 24))
  {
    v6 = 112;
  }

  v7 = 80;
  if (*(v2 + 24))
  {
    v7 = 88;
  }

  v8 = *(*(v5 + v6) + 8);
  v9 = *(v8 + 8);
  v10 = *(v5 + v7);
  swift_unknownObjectRetain();
  v9(isa, v3, v10, v8);

  swift_unknownObjectRelease();
}

Swift::Void __swiftcall BlueprintViewProvider.traitCollectionDidChange(_:traitCollection:)(UITraitCollection_optional _, UITraitCollection traitCollection)
{
  v2 = *&_.is_nil;
  isa = _.value.super.isa;
  OUTLINED_FUNCTION_14_49();
  v4();
  OUTLINED_FUNCTION_14_49();
  v6(isa, v2, *(v5 + 96));
}

id static BarView.barView(style:separator:groupName:)(void **a1, char *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = [objc_opt_self() effectWithStyle_];
  v6 = objc_allocWithZone(v2);
  if (v3 == 3)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  v8 = [v6 initWithEffect_];
  v12 = v3;
  sub_1D7E428CC(v3);
  BarView.style.setter(&v12);
  v11 = v4;
  BarView.separator.setter(&v11);
  v9 = sub_1D8190EE4();
  [v8 ts:v9 setGroupName:?];

  return v8;
}

char *BarView.init(effect:)(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC5TeaUI7BarView_style] = 2;
  v1[OBJC_IVAR____TtC5TeaUI7BarView_separator] = 0;
  v4 = OBJC_IVAR____TtC5TeaUI7BarView_tintView;
  *&v1[v4] = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DD250]), sel_initWithFrame_);
  v5 = OBJC_IVAR____TtC5TeaUI7BarView_separatorView;
  *&v1[v5] = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DD250]), sel_initWithFrame_);
  v25.receiver = v1;
  v25.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v25, sel_initWithEffect_, a1);
  v7 = OBJC_IVAR____TtC5TeaUI7BarView_tintView;
  v8 = *&v6[OBJC_IVAR____TtC5TeaUI7BarView_tintView];
  v9 = v6;
  [v8 setAutoresizingMask_];
  v10 = *&v6[v7];
  v11 = OBJC_IVAR____TtC5TeaUI7BarView_style;
  OUTLINED_FUNCTION_10();
  v24 = *&v9[v11];
  v12 = v10;
  v13 = sub_1D7E42730();
  [v12 setBackgroundColor_];

  v14 = v9;
  v15 = [v14 contentView];
  [v15 addSubview_];

  v16 = OBJC_IVAR____TtC5TeaUI7BarView_separatorView;
  v17 = *&v14[OBJC_IVAR____TtC5TeaUI7BarView_separatorView];
  v18 = objc_opt_self();
  v19 = v17;
  v20 = [v18 blackColor];
  v21 = [v20 colorWithAlphaComponent_];

  [v19 setBackgroundColor_];
  v22 = [v14 contentView];

  [v22 addSubview_];
  return v14;
}

Swift::Void __swiftcall BlueprintCollectionViewDataSource.traitCollectionDidChange(_:traitCollection:)(UITraitCollection_optional _, UITraitCollection traitCollection)
{
  OUTLINED_FUNCTION_120();
  v3 = v2;
  v4 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x68);
  OUTLINED_FUNCTION_2();
  v6 = v5;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24[-v8];
  v12 = *((v11 & v10) + 0x60);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_44();
  v14 = MEMORY[0x1EEE9AC00](v13);
  (*(v17 + 16))(&v24[-v18], &v3[*((v16 & v15) + 0xB0)], v12, v14);
  sub_1D7E069F0(0, qword_1EDBB62F8);
  if (swift_dynamicCast())
  {
    swift_getObjectType();
    v19 = OUTLINED_FUNCTION_14_0();
    v20(v19);
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_43_9();
  (*(v6 + 16))(v9, &v3[*(v21 + 184)], v4);
  if (swift_dynamicCast())
  {
    swift_getObjectType();
    v22 = OUTLINED_FUNCTION_14_0();
    v23(v22);
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_100();
}

id sub_1D7E42730()
{
  v1 = *v0;
  switch(*v0)
  {
    case 0uLL:
      IsReduceTransparencyEnabled = UIAccessibilityIsReduceTransparencyEnabled();
      v3 = [objc_opt_self() whiteColor];
      v4 = v3;
      if (!IsReduceTransparencyEnabled)
      {
        goto LABEL_8;
      }

      break;
    case 1uLL:
      v6 = UIAccessibilityIsReduceTransparencyEnabled();
      v3 = [objc_opt_self() blackColor];
      v4 = v3;
      if (!v6)
      {
        goto LABEL_8;
      }

      break;
    case 2uLL:
      v5 = UIAccessibilityIsReduceTransparencyEnabled();
      v3 = [objc_opt_self() systemBackgroundColor];
      v4 = v3;
      if (!v5)
      {
LABEL_8:
        v7 = [v3 colorWithAlphaComponent_];

        v4 = v7;
      }

      break;
    case 3uLL:
      v4 = [objc_opt_self() clearColor];
      break;
    default:
      v4 = *v0;
      break;
  }

  sub_1D7E428CC(v1);
  return v4;
}

id sub_1D7E428CC(id result)
{
  if (result >= 4)
  {
    return result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_43_7()
{

  return sub_1D8190EE4();
}

uint64_t OUTLINED_FUNCTION_43_11()
{

  return type metadata accessor for BlueprintItem();
}

uint64_t OUTLINED_FUNCTION_43_14()
{

  return sub_1D818F394();
}

void BarView.style.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC5TeaUI7BarView_style;
  OUTLINED_FUNCTION_5_0();
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;
  sub_1D7E42AD0(v4);
  sub_1D7E42A4C();
}

void sub_1D7E42A4C()
{
  v1 = *(v0 + OBJC_IVAR____TtC5TeaUI7BarView_tintView);
  v2 = OBJC_IVAR____TtC5TeaUI7BarView_style;
  swift_beginAccess();
  v4 = *(v0 + v2);
  v3 = sub_1D7E42730();
  [v1 setBackgroundColor_];
}

void sub_1D7E42AD0(id a1)
{
  if (a1 >= 4)
  {
  }
}

id BarView.separator.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC5TeaUI7BarView_separator;
  OUTLINED_FUNCTION_5_0();
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;
  v6[0] = v4;
  return sub_1D7E42C6C(v6);
}

uint64_t UIViewController.cardContainerController.getter()
{
  v1 = sub_1D8190B24();
  v2 = [v0 ts_parentVC];
  v3 = v2;
  if ((v1 & 1) == 0)
  {
    if (!v2)
    {
      goto LABEL_11;
    }

    swift_getObjectType();
    v4 = dynamic_cast_existential_1_conditional(v3);
    if (!v4)
    {

      goto LABEL_11;
    }

    return v4;
  }

  if (!v2)
  {
    goto LABEL_5;
  }

  swift_getObjectType();
  v4 = dynamic_cast_existential_1_conditional(v3);
  if (v4)
  {
    return v4;
  }

LABEL_5:
  v5 = [v0 presentingViewController];
  if (v5)
  {
    v6 = v5;
    v7 = UIViewController.cardContainerController.getter();

    return v7;
  }

LABEL_11:
  v8 = [v0 ts_parentVC];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v7 = UIViewController.cardContainerController.getter();

  return v7;
}

id sub_1D7E42C6C(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC5TeaUI7BarView_separator;
  result = swift_beginAccess();
  if (v2 != v1[v3])
  {
    return [v1 setNeedsLayout];
  }

  return result;
}

uint64_t BlueprintViewController.layoutOptionsProvider.getter()
{
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  return swift_unknownObjectRetain();
}

void BlueprintLayoutOptionsProvider.layoutOptions.getter()
{
  [*(v0 + 32) bounds];
  OUTLINED_FUNCTION_9_0();
  sub_1D802FE04();
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_8_0();
  BlueprintLayoutOptionsProvider.createLayoutOptions(bounds:safeAreaInsets:kind:)();
}

uint64_t MastheadViewController.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + qword_1EDBB87F8;
  OUTLINED_FUNCTION_56();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void BlueprintLayoutOptionsProvider.createLayoutOptions(bounds:safeAreaInsets:kind:)()
{
  OUTLINED_FUNCTION_70();
  v1 = v0;
  v133 = v2;
  v4 = v3;
  v140 = v5;
  v141 = v6;
  v8 = v7;
  v138 = *v9;
  v139 = (*(v0 + 104))();
  v10 = *(v0 + 32);
  v11 = [v10 window];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 rootViewController];

    if (v13)
    {
      v14 = [v13 view];

      if (v14)
      {
        goto LABEL_13;
      }
    }
  }

  sub_1D7E0A1A8(0, &qword_1EDBB3200);
  static UIWindowScene.activeScene.getter();
  if (!v15)
  {
    goto LABEL_12;
  }

  v16 = v15;
  v17 = [v15 windows];

  sub_1D7E0A1A8(0, &qword_1EDBBC788);
  v18 = sub_1D8191314();

  if (!sub_1D7E36AB8(v18))
  {

LABEL_12:
    v14 = UIView.mostParentView.getter();
    goto LABEL_13;
  }

  sub_1D7E33DD8(0, (v18 & 0xC000000000000001) == 0, v18);
  if ((v18 & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x1DA714420](0, v18);
  }

  else
  {
    v19 = *(v18 + 32);
  }

  v20 = v19;

  v21 = [v20 rootViewController];

  if (!v21)
  {
    goto LABEL_12;
  }

  v14 = [v21 view];

  if (!v14)
  {
    goto LABEL_12;
  }

LABEL_13:
  v22 = OUTLINED_FUNCTION_14_24();
  v135 = v14;
  [v14 layoutMargins];
  v24 = v23;
  v26 = v25;
  v27 = [v22 horizontalSizeClass];

  if (v27 == 2)
  {
    v28 = 40.0;
  }

  else
  {
    v28 = 16.0;
  }

  swift_beginAccess();
  v29 = *(v1 + 96);
  v136 = v24;
  v137 = v26;
  if (v29 == 255)
  {
    v41 = *(MEMORY[0x1E69DDCE0] + 8);
  }

  else
  {
    v31 = *(v1 + 64);
    v30 = *(v1 + 72);
    v32 = OUTLINED_FUNCTION_10_38();
    sub_1D80300FC(v32, v33, v34, v35, v36);
    v37 = OUTLINED_FUNCTION_14_24();
    v38 = v37;
    if (v29)
    {
      LOBYTE(v145) = v138;
      v39 = OUTLINED_FUNCTION_7_41();
      v31(v39);
      v41 = v40;
      v42 = OUTLINED_FUNCTION_10_38();
      sub_1D803010C(v42, v43, v44, v45, v29);
    }

    else
    {

      v41 = v30;
    }
  }

  v46 = v41 + v4;
  v47 = v41 + v133;
  v48 = OUTLINED_FUNCTION_7_41();
  v132 = v50;
  v134 = v49;
  static BlueprintLayoutOptions.constrainedSafeAreaInsets(bounds:safeAreaInsets:)(v48, v51, v52, v53, v49);
  v55 = v54;
  v57 = v56;
  v58 = v54 - v46;
  v59 = v56 - v47;
  if (v58 >= 0.0)
  {
    if (v59 >= 0.0)
    {
      if (v58 > v59)
      {
        v59 = v58;
      }
    }

    else
    {
      v59 = v58;
      if (v58 <= 0.0)
      {
        goto LABEL_30;
      }
    }
  }

  else if (v59 < 0.0)
  {
    goto LABEL_30;
  }

  if (v59 < 100.0)
  {
LABEL_30:
    v116 = 1;
    goto LABEL_32;
  }

  v116 = 0;
LABEL_32:
  v60 = OUTLINED_FUNCTION_7_41();
  v130 = v62;
  v131 = v61;
  v67 = sub_1D7E45584(v63, v60, v64, v65, v66, v61, v55);
  v128 = v68;
  v129 = v67;
  v126 = v70;
  v127 = v69;
  swift_beginAccess();
  v125 = *(v1 + 40);
  v71 = [v10 window];
  if (!v71)
  {
    v71 = UIView.mostParentView.getter();
  }

  v72 = v71;
  [v71 bounds];
  v123 = v74;
  v124 = v73;

  v75 = [v10 readableContentGuide];
  [v75 layoutFrame];
  v121 = v77;
  v122 = v76;
  v119 = v79;
  v120 = v78;

  v80 = objc_opt_self();
  v81 = [v80 mainScreen];
  [v81 scale];
  v118 = v82;

  v83 = [v80 mainScreen];
  [v83 nativeBounds];
  v85 = v84;
  v87 = v86;

  v115 = OUTLINED_FUNCTION_14_24();
  v88 = [objc_opt_self() sharedApplication];
  v114 = [v88 applicationState];

  v89 = OUTLINED_FUNCTION_14_24();
  v113 = [v89 preferredContentSizeCategory];

  v90 = [objc_opt_self() userInterfaceLayoutDirectionForSemanticContentAttribute_];
  RendererEnvironment.rendererOptions.getter(__src);
  sub_1D7E26B14(v1 + 120, v160);
  v91 = v161;
  if (v161)
  {
    v92 = v162;
    __swift_project_boxed_opaque_existential_1(v160, v161);
    (*(v92 + 8))(&v145, v139, v91, v92);
    nullsub_1(&v145);
    __swift_destroy_boxed_opaque_existential_1Tm(v160);
  }

  else
  {
    sub_1D7E27310(v160);
    sub_1D7E6C774(&v145);
  }

  v93 = v146;
  v165[0] = *v147;
  *(v165 + 3) = *&v147[3];
  v94 = v149;
  v164[0] = *v150;
  *(v164 + 3) = *&v150[3];
  v95 = v152;
  *(v163 + 3) = *&v153[3];
  v163[0] = *v153;
  v96 = v156;
  v97 = v157;
  v98 = v158;
  v99 = v159;
  v144 = v116;
  v110 = v148;
  v111 = v145;
  *v147 = v165[0];
  *&v147[3] = *(v165 + 3);
  *v150 = v164[0];
  *&v150[3] = *(v164 + 3);
  v109 = v151;
  *&v153[3] = *(v163 + 3);
  *v153 = v163[0];
  v112 = v154;
  v117 = v155;
  if (sub_1D7E4710C(&v145) == 1)
  {
    if (qword_1EDBB4DB0 != -1)
    {
      OUTLINED_FUNCTION_0_133();
    }

    memcpy(__dst, &qword_1EDBB4DB8, 0x7AuLL);
    sub_1D7E22264(__dst, v142);

    v99 = BYTE1(__dst[15]);
    v97 = __dst[14];
    v98 = __dst[15];
    v96 = __dst[13];
    v100 = *&__dst[11];
    v101 = *&__dst[9];
    v102 = __dst[6];
    v103 = __dst[7];
    v95 = __dst[8];
    v104 = __dst[3];
    v105 = __dst[4];
    v94 = __dst[5];
    v106 = __dst[0];
    v107 = __dst[1];
    v93 = __dst[2];
  }

  else
  {

    v103 = *(&v109 + 1);
    v102 = v109;
    v105 = *(&v110 + 1);
    v104 = v110;
    v101 = v112;
    v107 = *(&v111 + 1);
    v106 = v111;
    v100 = v117;
  }

  LOBYTE(__dst[0]) = v98 & 1;
  v108 = v144;
  *v8 = v138;
  *(v8 + 1) = v125;
  *(v8 + 8) = v140;
  *(v8 + 16) = v141;
  *(v8 + 24) = v124;
  *(v8 + 32) = v123;
  *(v8 + 40) = v122;
  *(v8 + 48) = v121;
  *(v8 + 56) = v120;
  *(v8 + 64) = v119;
  *(v8 + 72) = v129;
  *(v8 + 80) = v128;
  *(v8 + 88) = v127;
  *(v8 + 96) = v126;
  *(v8 + 104) = v118;
  *(v8 + 112) = v85;
  *(v8 + 120) = v87;
  *(v8 + 128) = v115;
  *(v8 + 136) = v139;
  *(v8 + 144) = v114;
  *(v8 + 152) = v113;
  *(v8 + 160) = v136;
  *(v8 + 168) = v28;
  *(v8 + 176) = v137;
  *(v8 + 184) = v28;
  *(v8 + 192) = v136;
  *(v8 + 200) = v28;
  *(v8 + 208) = v137;
  *(v8 + 216) = v28;
  *(v8 + 224) = v108;
  *(v8 + 232) = v90;
  *(v8 + 240) = v106;
  *(v8 + 248) = v107;
  *(v8 + 256) = v93;
  *(v8 + 264) = v104;
  *(v8 + 272) = v105;
  *(v8 + 280) = v94;
  *(v8 + 288) = v102;
  *(v8 + 296) = v103;
  *(v8 + 304) = v95;
  *(v8 + 312) = v101;
  *(v8 + 328) = v100;
  *(v8 + 344) = v96;
  *(v8 + 352) = v97;
  *(v8 + 360) = v98 & 1;
  *(v8 + 361) = v99 & 1;
  *(v8 + 368) = v131;
  *(v8 + 376) = v55;
  *(v8 + 384) = v130;
  *(v8 + 392) = v57;
  *(v8 + 400) = v134;
  *(v8 + 408) = v46;
  *(v8 + 416) = v132;
  *(v8 + 424) = v47;
  memcpy((v8 + 432), __src, 0x85uLL);
  OUTLINED_FUNCTION_72();
}

id sub_1D7E43698(void *a1)
{
  v1 = a1;
  v2 = MastheadViewController.navigationItem.getter();

  return v2;
}

id MastheadViewController.navigationItem.getter()
{
  v1 = [*(v0 + qword_1EDBB88B8) navigationItem];

  return v1;
}

id sub_1D7E43728(uint64_t (*a1)(void), int a2, id a3)
{
  if (a1)
  {
    v3 = [a1() traitCollection];
    swift_unknownObjectRelease();
    return v3;
  }

  v4 = [a3 window];
  if (v4)
  {
    v5 = v4;
    v3 = [v4 traitCollection];

    return v3;
  }

  sub_1D7E0A1A8(0, &qword_1EDBB3200);
  static UIWindowScene.activeScene.getter();
  if (v7)
  {
    v8 = v7;
    v3 = [v7 traitCollection];

    if (v3)
    {
      return v3;
    }
  }

  v9 = [objc_opt_self() currentTraitCollection];

  return v9;
}

id SceneProvider.keyWindow.getter()
{
  OUTLINED_FUNCTION_0_103();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = [Strong windows];

  sub_1D7E43D64();
  v3 = sub_1D8191314();

  if (!sub_1D7E36AB8(v3))
  {

    return 0;
  }

  sub_1D7E33DD8(0, (v3 & 0xC000000000000001) == 0, v3);
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1DA714420](0, v3);
  }

  else
  {
    v4 = *(v3 + 32);
  }

  v5 = v4;

  return v5;
}

uint64_t sub_1D7E43928(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v34 = *(a1 + 56);
  v35 = *(a1 + 48);
  v32 = *(a1 + 72);
  v33 = *(a1 + 64);
  v31 = *(a1 + 80);
  v30 = *(a1 + 88);
  v8 = *(a1 + 89);
  result = sub_1D8190B24();
  if ((result & 1) == 0)
  {
    sub_1D7F35180(0, &qword_1EDBBE100, &qword_1EDBBE130, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v27 = v8;
    v29 = v1;
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1D819FAB0;
    sub_1D7E442D8(v2, v3, v5, v4, v6, v7);
    v11 = NavigationItemStyle.BarStyle.description.getter();
    v13 = v12;
    *(v10 + 56) = MEMORY[0x1E69E6158];
    v28 = v5;
    v14 = sub_1D7E13BF4();
    *(v10 + 64) = v14;
    *(v10 + 32) = v11;
    *(v10 + 40) = v13;
    sub_1D7E0A1A8(0, &qword_1EDBBE110);
    v15 = sub_1D8191E44();
    sub_1D81919E4();
    sub_1D818FD44();

    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1D819FAB0;
    v37 = v33;
    v38 = v32;
    v39 = v31;
    v40 = v30;
    sub_1D7E442D8(v35, v34, v33, v32, v31, v30);
    v17 = NavigationItemStyle.BarStyle.description.getter();
    *(v16 + 56) = MEMORY[0x1E69E6158];
    *(v16 + 64) = v14;
    *(v16 + 32) = v17;
    *(v16 + 40) = v18;
    v19 = sub_1D8191E44();
    sub_1D81919E4();
    sub_1D818FD44();

    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1D819FAB0;
    sub_1D81921A4();

    *&v36 = 0xD00000000000001BLL;
    *(&v36 + 1) = 0x80000001D81C8ED0;
    if (v27)
    {
      v21 = 1702195828;
    }

    else
    {
      v21 = 0x65736C6166;
    }

    if (v27)
    {
      v22 = 0xE400000000000000;
    }

    else
    {
      v22 = 0xE500000000000000;
    }

    MEMORY[0x1DA713260](v21, v22);

    v23 = v36;
    *(v20 + 56) = MEMORY[0x1E69E6158];
    *(v20 + 64) = v14;
    *(v20 + 32) = v23;
    v24 = sub_1D8191E44();
    sub_1D81919E4();
    sub_1D818FD44();

    v25 = [v29 navigationBar];
    *&v36 = v2;
    *(&v36 + 1) = v3;
    v37 = v28;
    v38 = v4;
    v39 = v6;
    v40 = v7;
    sub_1D7E4478C(v25, &v36);

    sub_1D7E45E84(v36, *(&v36 + 1), v37, v38, v39, v40);
    result = [v29 toolbar];
    if (result)
    {
      v26 = result;
      *&v36 = v35;
      *(&v36 + 1) = v34;
      v37 = v33;
      v38 = v32;
      v39 = v31;
      v40 = v30;
      sub_1D7E45FA4(result, &v36);

      sub_1D7E45E84(v36, *(&v36 + 1), v37, v38, v39, v40);

      return [v29 setNeedsStatusBarAppearanceUpdate];
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

unint64_t sub_1D7E43D64()
{
  result = qword_1EDBBC788;
  if (!qword_1EDBBC788)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDBBC788);
  }

  return result;
}

uint64_t NavigationItemStyle.BarStyle.description.getter()
{
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = 0x746C7561666544;
  switch(*(v0 + 40))
  {
    case 1:
    case 3:
      OUTLINED_FUNCTION_15_33();
      OUTLINED_FUNCTION_10_7();
      sub_1D81921A4();
      OUTLINED_FUNCTION_35_0();
      OUTLINED_FUNCTION_42();
      MEMORY[0x1DA713260]();
      UIColor.identifier.getter();
      OUTLINED_FUNCTION_19_26();

      OUTLINED_FUNCTION_1_120();
      if (!v1)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    case 2:
      OUTLINED_FUNCTION_10_7();
      sub_1D81921A4();
      OUTLINED_FUNCTION_35_0();
      OUTLINED_FUNCTION_42();
      MEMORY[0x1DA713260]();
      v12 = sub_1D81925B4();
      MEMORY[0x1DA713260](v12);

      OUTLINED_FUNCTION_42();
      MEMORY[0x1DA713260](v13);
      v14 = sub_1D81925B4();
      MEMORY[0x1DA713260](v14);

      OUTLINED_FUNCTION_1_120();
      if (v3)
      {
        UIColor.identifier.getter();
      }

      else
      {
        OUTLINED_FUNCTION_4_6();
      }

      OUTLINED_FUNCTION_18_30();
      v15 = sub_1D8190F84();
      MEMORY[0x1DA713260](v15);

      OUTLINED_FUNCTION_42();
      MEMORY[0x1DA713260](0xD000000000000019);
      if (v2)
      {
        goto LABEL_19;
      }

      goto LABEL_31;
    case 4:
      OUTLINED_FUNCTION_15_33();
      OUTLINED_FUNCTION_10_7();
      sub_1D81921A4();
      OUTLINED_FUNCTION_35_0();
      OUTLINED_FUNCTION_42();
      MEMORY[0x1DA713260]();
      sub_1D81925B4();
      OUTLINED_FUNCTION_19_26();

      OUTLINED_FUNCTION_1_120();
      if (v1)
      {
LABEL_15:
        UIColor.identifier.getter();
      }

      else
      {
LABEL_23:
        OUTLINED_FUNCTION_4_6();
      }

      OUTLINED_FUNCTION_18_30();
      sub_1D8190F84();
      OUTLINED_FUNCTION_19_26();

      OUTLINED_FUNCTION_42();
      MEMORY[0x1DA713260](v22);
      if (v3)
      {
        v23 = 1702195828;
      }

      else
      {
        v23 = 0x65736C6166;
      }

      if (v3)
      {
        v24 = 0xE400000000000000;
      }

      else
      {
        v24 = 0xE500000000000000;
      }

      MEMORY[0x1DA713260](v23, v24);

      OUTLINED_FUNCTION_42();
      MEMORY[0x1DA713260](0xD000000000000019);
      if (v2)
      {
LABEL_19:
        UIColor.identifier.getter();
      }

      else
      {
LABEL_31:
        OUTLINED_FUNCTION_4_6();
      }

      v25 = sub_1D8190F84();
      MEMORY[0x1DA713260](v25);
      goto LABEL_33;
    case 5:
      return result;
    default:
      OUTLINED_FUNCTION_15_33();
      v5 = *(v0 + 32);
      OUTLINED_FUNCTION_10_7();
      sub_1D81921A4();
      OUTLINED_FUNCTION_35_0();
      OUTLINED_FUNCTION_42();
      MEMORY[0x1DA713260]();
      v6 = UIColor.identifier.getter();
      MEMORY[0x1DA713260](v6);

      OUTLINED_FUNCTION_1_120();
      sub_1D8088668();
      v7 = v1;
      v8 = sub_1D8190F84();
      MEMORY[0x1DA713260](v8);

      OUTLINED_FUNCTION_42();
      MEMORY[0x1DA713260](v9);
      if (v3)
      {
        v10 = 1702195828;
      }

      else
      {
        v10 = 0x65736C6166;
      }

      if (v3)
      {
        v11 = 0xE400000000000000;
      }

      else
      {
        v11 = 0xE500000000000000;
      }

      MEMORY[0x1DA713260](v10, v11);

      OUTLINED_FUNCTION_42();
      MEMORY[0x1DA713260](0xD000000000000019);
      if (v2)
      {
        UIColor.identifier.getter();
      }

      else
      {
        OUTLINED_FUNCTION_4_6();
      }

      OUTLINED_FUNCTION_18_30();
      v16 = sub_1D8190F84();
      MEMORY[0x1DA713260](v16);

      OUTLINED_FUNCTION_42();
      MEMORY[0x1DA713260](v17);
      v18 = [v5 description];
      v19 = sub_1D8190F14();
      v21 = v20;

      MEMORY[0x1DA713260](v19, v21);
LABEL_33:

      return v26;
  }
}

id sub_1D7E442D8(id result, void *a2, void *a3, void *a4, void *a5, char a6)
{
  v8 = result;
  switch(a6)
  {
    case 0:
      v11 = a4;
      v12 = a5;
      goto LABEL_4;
    case 1:
    case 3:
      v9 = a4;
LABEL_4:
      a4 = v8;
      goto LABEL_5;
    case 2:
      goto LABEL_6;
    case 4:
LABEL_5:
      a3 = a2;
LABEL_6:
      v14 = a3;
      v13 = a4;

      result = v14;
      break;
    default:
      return result;
  }

  return result;
}

void static UIWindowScene.activeScene.getter()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedApplication];
  v2 = [v1 connectedScenes];

  sub_1D7E446F0();
  sub_1D7E44734();
  v3 = sub_1D8191614();

  v21 = v0;
  if ((v3 & 0xC000000000000001) != 0)
  {
    sub_1D8192064();
    sub_1D81916A4();
    v3 = v23;
    v4 = v24;
    v5 = v25;
    v6 = v26;
    v7 = v27;
  }

  else
  {
    v6 = 0;
    v8 = -1 << *(v3 + 32);
    v4 = v3 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v3 + 56);
  }

  v11 = (v5 + 64) >> 6;
  if (v3 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v12 = v6;
  v13 = v7;
  v14 = v6;
  if (v7)
  {
LABEL_12:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v3 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (v16)
    {
      while (1)
      {
        if (![v16 activationState])
        {
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            break;
          }
        }

        v6 = v14;
        v7 = v15;
        if ((v3 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (sub_1D81920D4())
        {
          swift_dynamicCast();
          v16 = v22;
          v14 = v6;
          v15 = v7;
          if (v22)
          {
            continue;
          }
        }

        goto LABEL_20;
      }

      OUTLINED_FUNCTION_0_245();
    }

    else
    {
LABEL_20:
      OUTLINED_FUNCTION_0_245();
      v17 = [v21 sharedApplication];
      v18 = [v17 connectedScenes];

      sub_1D8191614();
      sub_1D7E45098();
      v20 = v19;

      if (v20)
      {
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
        }
      }
    }
  }

  else
  {
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v14 >= v11)
      {
        goto LABEL_20;
      }

      v13 = *(v4 + 8 * v14);
      ++v12;
      if (v13)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

unint64_t NavigationItemStyle.description.getter()
{
  v1 = *(v0 + 89);
  sub_1D81921A4();

  if (v1)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (v1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x1DA713260](v2, v3);

  return 0xD00000000000001BLL;
}

unint64_t sub_1D7E446F0()
{
  result = qword_1EDBB2F50;
  if (!qword_1EDBB2F50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDBB2F50);
  }

  return result;
}

unint64_t sub_1D7E44734()
{
  result = qword_1EDBB2F48;
  if (!qword_1EDBB2F48)
  {
    sub_1D7E446F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBB2F48);
  }

  return result;
}

void sub_1D7E4478C(void *a1, __int128 *a2)
{
  v72 = a2[1];
  v74 = *a2;
  v3 = *(a2 + 4);
  v4 = *(a2 + 40);
  v5 = *(a2 + 1);
  if ([objc_opt_self() ts_chromelessBarsEnabled])
  {
    v6 = [a1 standardAppearance];
    v7 = v6;
    if (v4 == 4)
    {
      [v6 configureWithTransparentBackground];
      v8 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
      v9 = v7;
      v10 = [v8 init];
      [v9 setBackgroundImage_];

      v11 = 0;
    }

    else
    {
      [v6 configureWithDefaultBackground];
      if (v4)
      {
        [v7 setBackgroundImage_];
        v11 = 0;
        switch(v4)
        {
          case 2:
            break;
          case 4:
            __break(1u);
            JUMPOUT(0x1D7E45008);
          case 5:
            v11 = [objc_opt_self() systemBackgroundColor];
            break;
          default:
            v11 = v74;
            v18 = v74;
            break;
        }
      }

      else
      {
        v19 = v7;
        v20 = v3;
        [v19 setBackgroundImage_];

        v11 = v74;
        v21 = v74;
      }
    }

    [v7 setBackgroundColor_];

    [v7 setShadowColor_];
    v22 = 0;
    if (v4 == 2)
    {
      v22 = [objc_opt_self() effectWithStyle_];
    }

    [v7 setBackgroundEffect_];

    v23 = OUTLINED_FUNCTION_0_41();
    [v23 v24];
    v25 = OUTLINED_FUNCTION_0_41();
    [v25 v26];
    v27 = 0;
    v28 = v73;
    v29 = 0;
    switch(v4)
    {
      case 2:
        goto LABEL_14;
      case 4:
        v28 = *(&v74 + 1);
LABEL_14:
        v27 = v74;
        v5 = v28;
        goto LABEL_15;
      case 5:
        goto LABEL_16;
      default:
LABEL_15:
        v29 = v27;
        v27 = v5;
LABEL_16:
        [a1 setTintColor_];

        [a1 setBarStyle_];
        v30 = sub_1D7E4516C(a1);
        if (v30)
        {
          v31 = v30;
          if (sub_1D7E36AB8(v30))
          {
            sub_1D7E33DD8(0, (v31 & 0xC000000000000001) == 0, v31);
            if ((v31 & 0xC000000000000001) != 0)
            {
              v32 = MEMORY[0x1DA714420](0, v31);
            }

            else
            {
              v32 = *(v31 + 32);
            }

            v33 = v32;

            v34 = [v33 _bottomPalette];

            if (v34)
            {
              v35 = [v34 contentView];

              if (v35)
              {
                v36 = swift_dynamicCastObjCProtocolConditional();
                if (v36)
                {
                  v37 = v36;
                  v38 = 0;
                  switch(v4)
                  {
                    case 2:
                      break;
                    case 4:
                      v66 = [objc_opt_self() clearColor];
                      goto LABEL_61;
                    case 5:
                      v66 = [objc_opt_self() systemBackgroundColor];
LABEL_61:
                      v38 = v66;
                      break;
                    default:
                      v38 = v74;
                      v39 = v74;
                      break;
                  }

                  [v37 setBarColor_];
                }

                else
                {
                }
              }
            }
          }

          else
          {
          }
        }

        v56 = UINavigationBar.topBarButtonItems.getter();
        v67 = sub_1D7E36AB8(v56);
        if (!v67)
        {
          goto LABEL_70;
        }

        v68 = v67;
        if (v67 < 1)
        {
          __break(1u);
          goto LABEL_73;
        }

        v69 = 0;
        do
        {
          if ((v56 & 0xC000000000000001) != 0)
          {
            v70 = MEMORY[0x1DA714420](v69, v56);
          }

          else
          {
            v70 = *(v56 + 8 * v69 + 32);
          }

          v71 = v70;
          ++v69;
          v75[0] = v74;
          v75[1] = v73;
          v76 = v3;
          v77 = v4;
          sub_1D7F3526C(v70, v75);
        }

        while (v68 != v69);
LABEL_70:

        break;
    }

    return;
  }

  v12 = v72;
  v13 = v72;
  switch(v4)
  {
    case 2:
      goto LABEL_27;
    case 4:
      v13 = *(&v74 + 1);
LABEL_27:
      v40 = v13;
      v41 = OUTLINED_FUNCTION_0_41();
      [v41 v42];

      [a1 setBarTintColor_];
      v43 = v74;
      goto LABEL_30;
    case 5:
      [a1 setTintColor_];
      v17 = [objc_opt_self() systemBackgroundColor];
      goto LABEL_29;
    default:
      v14 = *(&v74 + 1);
      v15 = OUTLINED_FUNCTION_0_41();
      [v15 v16];

      v17 = v74;
LABEL_29:
      v44 = v17;
      v45 = OUTLINED_FUNCTION_0_41();
      [v45 v46];

      v43 = 0;
LABEL_30:
      [a1 setBarStyle_];
      if (((1 << v4) & 0x34) != 0)
      {
        [a1 setTranslucent_];
        if (v4 == 4)
        {
          v47 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
          goto LABEL_37;
        }

LABEL_35:
        v48 = 0;
        goto LABEL_38;
      }

      if (((1 << v4) & 0xA) != 0)
      {
        [a1 setTranslucent_];
        goto LABEL_35;
      }

      [a1 setTranslucent_];
      v47 = v3;
LABEL_37:
      v48 = v47;
LABEL_38:
      v49 = OUTLINED_FUNCTION_0_41();
      [v49 v50];

      v51 = 0;
      if (v4 == 1)
      {
        v52 = [objc_opt_self() ts:v74 visualEffectsForBarWithBackgroundColor:?];
        sub_1D7E0A1A8(0, &qword_1EDBB31E8);
        sub_1D8191314();

        v51 = sub_1D8191304();
      }

      v53 = OUTLINED_FUNCTION_0_41();
      [v53 v54];

      v55 = sub_1D7E4516C(a1);
      if (v55)
      {
        v56 = v55;
        if (sub_1D7E36AB8(v55))
        {
          sub_1D7E33DD8(0, (v56 & 0xC000000000000001) == 0, v56);
          if ((v56 & 0xC000000000000001) != 0)
          {
LABEL_73:
            v57 = MEMORY[0x1DA714420](0, v56);
          }

          else
          {
            v57 = *(v56 + 32);
          }

          v58 = v57;

          v59 = [v58 _bottomPalette];

          if (v59)
          {
            v60 = [v59 contentView];

            if (v60)
            {
              v78 = &unk_1F539EE30;
              v61 = swift_dynamicCastObjCProtocolConditional();
              if (v61)
              {
                v62 = v61;
                v63 = 0;
                switch(v4)
                {
                  case 2:
                    break;
                  case 4:
                    v65 = [objc_opt_self() clearColor];
                    goto LABEL_58;
                  case 5:
                    v65 = [objc_opt_self() systemBackgroundColor];
LABEL_58:
                    v63 = v65;
                    break;
                  default:
                    v63 = v74;
                    v64 = v74;
                    break;
                }

                [v62 setBarColor_];
              }

              else
              {
              }
            }
          }
        }

        else
        {
        }
      }

      return;
  }
}

void sub_1D7E450B0()
{
  OUTLINED_FUNCTION_120();
  v1 = v0;
  v3 = v2;
  v4 = sub_1D7E451DC(v2);
  v6 = v5;
  v8 = v7;
  v9 = sub_1D7E4523C(v3);
  v11 = v10;
  v13 = v12;
  v14 = sub_1D7E45290(v4, v6, v8 & 1, v9, v10, v12 & 1);
  sub_1D7E452C4(v9, v11, v13 & 1);
  v15 = OUTLINED_FUNCTION_25_4();
  if (!v14)
  {
    v1(v15);
    v15 = OUTLINED_FUNCTION_25_4();
  }

  sub_1D7E452C4(v15, v16, v17);
  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D7E4516C(void *a1)
{
  v1 = [a1 items];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1D7E0A1A8(0, &qword_1EDBB31B8);
  v3 = sub_1D8191314();

  return v3;
}

uint64_t sub_1D7E451DC(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_1D8192054();
  }

  else
  {
    return sub_1D8192014();
  }
}

uint64_t sub_1D7E4523C(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_1D81920F4();
  }

  else
  {
    return 1 << *(a1 + 32);
  }
}

BOOL sub_1D7E45290(uint64_t a1, int a2, char a3, uint64_t a4, int a5, char a6)
{
  if (a3)
  {
    if (a6)
    {
LABEL_9:
      JUMPOUT(0x1DA714280);
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a6)
  {
    goto LABEL_8;
  }

  if (a2 != a5)
  {
    __break(1u);
    goto LABEL_8;
  }

  return a1 == a4;
}

uint64_t sub_1D7E452C4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t UINavigationBar.topBarButtonItems.getter()
{
  v1 = [v0 topItem];
  if (v1 && (v2 = sub_1D7E38C7C(v1)) != 0)
  {
    v3 = v2;
  }

  else
  {

    v3 = MEMORY[0x1E69E7CC0];
  }

  v4 = [v0 topItem];
  if (!v4 || (v5 = sub_1D7E3443C(v4)) == 0)
  {

    v5 = MEMORY[0x1E69E7CC0];
  }

  sub_1D7E45B68(v5);
  return v3;
}

void sub_1D7E45378(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1DA7142D0](a1, a2, v7);
      sub_1D7E0A1A8(0, &qword_1EDBB2F50);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_1D7E0A1A8(0, &qword_1EDBB2F50);
    if (sub_1D8192084() == *(a4 + 36))
    {
      sub_1D8192094();
      swift_dynamicCast();
      v4 = v14;
      v8 = sub_1D8191CB4();
      v9 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v6 = v8 & v9;
        if (((*(a4 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v8 & v9)) & 1) == 0)
        {
          goto LABEL_25;
        }

        v10 = *(*(a4 + 48) + 8 * v6);
        v11 = sub_1D8191CC4();

        if (v11)
        {
          goto LABEL_18;
        }

        v8 = v6 + 1;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

  if (a1 < 0 || 1 << *(a4 + 32) <= a1)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:

    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_18:
  }

  v12 = *(*(a4 + 48) + 8 * v6);

  v13 = v12;
}

double sub_1D7E45584(void *a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (v13)
  {
    v14 = v13;
    v15 = a1;
    [v14 adjustedContentInset];
    v17 = v16;
    [v14 adjustedContentInset];
    v19 = v18;
    [v14 adjustedContentInset];
    v21 = v20;
    [v14 contentOffset];
    v23 = v21 + v22;
    if (v21 + v22 >= v19)
    {
      v23 = v19;
    }

    v24 = v17 - v23;
    if (v24 < 0.0)
    {
      v25 = 0.0;
    }

    else
    {
      v25 = v24;
    }

    [v14 contentOffset];
    v27 = v26 + a7;
    if (v27 >= a7)
    {
      v27 = a7;
    }

    v28 = a7 - v27;
    if (v28 < 0.0)
    {
      v29 = 0.0;
    }

    else
    {
      v29 = v28;
    }

    [v14 adjustedContentInset];
    [v14 contentInset];

    return UIEdgeInsetsInsetRect(a2, a3, a4, a5, v25, v29);
  }

  return a2;
}

id UIView.mostParentView.getter()
{
  for (i = v0; ; i = v3)
  {
    v2 = [i superview];
    if (!v2)
    {
      break;
    }

    v3 = v2;
  }

  return i;
}

uint64_t sub_1D7E457BC(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t, uint64_t), void (*a4)(uint64_t, void, uint64_t))
{
  v9 = a2();
  v10 = (a2)(*v4);
  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    __break(1u);
    goto LABEL_8;
  }

  a3(result, 1);
  v13 = *v4;
  v14 = *v4 & 0xFFFFFFFFFFFFFF8;
  a4(v14 + 8 * *(v14 + 0x10) + 32, (*(v14 + 0x18) >> 1) - *(v14 + 0x10), a1);
  v16 = v15;

  if (v16 < v9)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v16 < 1)
  {
LABEL_6:
    *v4 = v13;
    return result;
  }

  v17 = *(v14 + 16);
  v11 = __OFADD__(v17, v16);
  v18 = v17 + v16;
  if (!v11)
  {
    *(v14 + 16) = v18;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

double RendererEnvironment.rendererOptions.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong ts_isScrolling];
    v7 = v5;
    v8 = [v7 window];
    v9 = v8;
    if (v8)
    {
    }

    v10 = OBJC_IVAR____TtC5TeaUI19RendererEnvironment_transition;
    OUTLINED_FUNCTION_8_4();
    if (*(v2 + v10))
    {

      v12 = BlueprintCollectionViewLayoutTransition.isTransitioning.getter(v11);
    }

    else
    {
      v12 = 0;
    }

    [v7 bounds];
    v61 = v19;
    v62 = v18;
    v59 = v21;
    v60 = v20;
    [v7 bounds];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;

    v30 = sub_1D7E45D98();
    v32 = UIEdgeInsetsInsetRect(v23, v25, v27, v29, v30, v31);
    v57 = v33;
    v58 = v32;
    v55 = v35;
    v56 = v34;
    [v7 contentOffset];
    v37 = v36;
    v39 = v38;
    [v7 adjustedContentInset];
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v47 = v46;
    [v7 contentSize];
    v49 = v48;
    v51 = v50;

    v52 = OBJC_IVAR____TtC5TeaUI19RendererEnvironment_isLiveResizing;
    OUTLINED_FUNCTION_8_4();
    v53 = *(v2 + v52);
    v54 = *(v2 + OBJC_IVAR____TtC5TeaUI19RendererEnvironment_isTesting);
    *a1 = v62;
    *(a1 + 8) = v61;
    *(a1 + 16) = v60;
    *(a1 + 24) = v59;
    *(a1 + 32) = v58;
    *(a1 + 40) = v57;
    *(a1 + 48) = v56;
    *(a1 + 56) = v55;
    *(a1 + 64) = v37;
    *(a1 + 72) = v39;
    *(a1 + 80) = v41;
    *(a1 + 88) = v43;
    *(a1 + 96) = v45;
    *(a1 + 104) = v47;
    *(a1 + 112) = v49;
    *(a1 + 120) = v51;
    *(a1 + 128) = v6;
    *(a1 + 129) = v9 != 0;
    *(a1 + 130) = v12;
    *(a1 + 131) = v53;
    *(a1 + 132) = v54;
    OUTLINED_FUNCTION_3_104();
  }

  else
  {
    if (qword_1EDBBAEF8 != -1)
    {
      OUTLINED_FUNCTION_1_127();
    }

    OUTLINED_FUNCTION_3_104();

    memcpy(v13, v14, v15);
  }

  return result;
}

void sub_1D7E45BA8(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
  }
}

uint64_t sub_1D7E45BF4(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1D81920A4();
LABEL_9:
  result = sub_1D8192224();
  *v1 = result;
  return result;
}

double sub_1D7E45D98()
{
  OUTLINED_FUNCTION_0_172();
  v2 = v1;
  OUTLINED_FUNCTION_0_172();
  v4 = v3;
  OUTLINED_FUNCTION_0_172();
  v6 = v5;
  [v0 contentOffset];
  v8 = v6 + v7;
  if (v6 + v7 >= v4)
  {
    v8 = v4;
  }

  v9 = v2 - v8;
  if (v9 < 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v9;
  }

  OUTLINED_FUNCTION_0_172();
  OUTLINED_FUNCTION_0_172();
  OUTLINED_FUNCTION_0_172();
  [v0 contentOffset];
  OUTLINED_FUNCTION_0_172();
  [v0 contentInset];
  OUTLINED_FUNCTION_0_172();
  return v10;
}

void sub_1D7E45E84(void *a1, void *a2, void *a3, void *a4, void *a5, char a6)
{
  switch(a6)
  {
    case 0:

      goto LABEL_4;
    case 1:
    case 3:

      goto LABEL_4;
    case 2:
      goto LABEL_5;
    case 4:
LABEL_4:
      a3 = a2;
LABEL_5:

      break;
    default:
      return;
  }
}

uint64_t BlueprintProviderType.blueprint.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 48))();
  sub_1D818F154();
}

void sub_1D7E45FA4(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  if ([objc_opt_self() ts_chromelessBarsEnabled])
  {
    v8 = [a1 standardAppearance];
    v32 = v8;
    if (v7 == 4)
    {
      [v8 configureWithTransparentBackground];
      v9 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
      v10 = v32;
      v11 = [v9 init];
      [v10 setBackgroundImage_];

      v12 = v32;
      v13 = 0;
    }

    else
    {
      [v8 configureWithDefaultBackground];
      if (v7)
      {
        [v32 setBackgroundImage_];
        v13 = 0;
        v12 = v32;
        switch(v7)
        {
          case 2:
            goto LABEL_22;
          case 4:
            __break(1u);
            JUMPOUT(0x1D7E46488);
          case 5:
            v13 = [objc_opt_self() systemBackgroundColor];
            goto LABEL_21;
          default:
            v17 = v3;
            v12 = v32;
            v13 = v3;
            goto LABEL_22;
        }
      }

      v18 = v32;
      v19 = v6;
      [v18 setBackgroundImage_];

      v20 = v3;
      v13 = v3;
LABEL_21:
      v12 = v32;
    }

LABEL_22:
    [v12 setBackgroundColor_];

    if (v7 == 2)
    {
      v27 = [objc_opt_self() effectWithStyle_];
    }

    else
    {
      v27 = 0;
    }

    [v32 setBackgroundEffect_];

    [a1 setStandardAppearance_];
    [a1 setScrollEdgeAppearance_];
    v28 = 0;
    v29 = v5;
    v30 = 0;
    switch(v7)
    {
      case 2:
        goto LABEL_27;
      case 4:
        v29 = v4;
LABEL_27:
        v4 = v29;
        v28 = v3;
        goto LABEL_28;
      case 5:
        goto LABEL_29;
      default:
LABEL_28:
        v30 = v28;
        v28 = v4;
LABEL_29:
        [a1 setTintColor_];

        [a1 setBarStyle_];
        v31 = 1;
        switch(v7)
        {
          case 0:
          case 1:
          case 3:
            v31 = v5;
            goto LABEL_31;
          case 2:
          case 4:
          case 5:
LABEL_31:
            [a1 setTranslucent_];
            goto LABEL_32;
          default:
            goto LABEL_36;
        }
    }
  }

  v14 = v5;
  switch(v7)
  {
    case 2:
      goto LABEL_11;
    case 4:
      v14 = v4;
LABEL_11:
      v21 = v14;
      [a1 setTintColor_];

      [a1 setBarTintColor_];
      v22 = v3;
      goto LABEL_14;
    case 5:
      [a1 setTintColor_];
      v16 = [objc_opt_self() systemBackgroundColor];
      goto LABEL_13;
    default:
      v15 = v4;
      [a1 setTintColor_];

      v16 = v3;
LABEL_13:
      v23 = v16;
      [a1 setBarTintColor_];

      v22 = 0;
LABEL_14:
      [a1 setBarStyle_];
      v24 = 1;
      switch(v7)
      {
        case 0:
        case 1:
        case 3:
          v24 = v5;
          break;
        case 2:
        case 4:
        case 5:
          break;
        default:
LABEL_36:
          JUMPOUT(0);
      }

      [a1 setTranslucent_];
      if (v7 == 1)
      {
        v25 = [objc_opt_self() ts:v3 visualEffectsForBarWithBackgroundColor:?];
        sub_1D7E0A1A8(0, &qword_1EDBB31E8);
        sub_1D8191314();

        v33 = sub_1D8191304();

        v26 = v33;
      }

      else
      {
        v26 = 0;
      }

      v32 = v26;
      [a1 ts_setBackgroundEffects_];
LABEL_32:

      return;
  }
}

void sub_1D7E46590()
{
  OUTLINED_FUNCTION_45_15();
  v1 = v0;
  OUTLINED_FUNCTION_16_50();
  OUTLINED_FUNCTION_4_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_11();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_7();
  v2 = OUTLINED_FUNCTION_43_14();
  v1(v2);
  OUTLINED_FUNCTION_46_15();
}

id StatusBannerContainerController.init(rootViewController:statusBannerViewController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = &v4[OBJC_IVAR____TtC5TeaUI31StatusBannerContainerController_rootViewController];
  *v5 = a1;
  *(v5 + 1) = a2;
  v6 = &v4[OBJC_IVAR____TtC5TeaUI31StatusBannerContainerController_statusBannerViewController];
  *v6 = a3;
  *(v6 + 1) = a4;
  v8.receiver = v4;
  v8.super_class = type metadata accessor for StatusBannerContainerController();
  return objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, 0, 0);
}

void (*sub_1D7E4669C(void *a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = sub_1D7E46734(v6, *a2, a3);
  return sub_1D7E46A38;
}

void (*sub_1D7E46734(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v5 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v5;
  v6 = *(a3 + 32);
  *v5 = *(a3 + 16);
  v5[1] = v6;
  v7 = type metadata accessor for BlueprintSection();
  *(v5 + 4) = v7;
  v8 = *(v7 - 8);
  *(v5 + 5) = v8;
  *(v5 + 6) = __swift_coroFrameAllocStub(*(v8 + 64));
  OUTLINED_FUNCTION_14_0();
  Blueprint.subscript.getter();
  return sub_1D7E46A80;
}

uint64_t TransitionContainerViewController.__allocating_init(rootViewController:identifier:)()
{
  OUTLINED_FUNCTION_10_18();
  v1 = objc_allocWithZone(v0);
  OUTLINED_FUNCTION_24_4();
  return TransitionContainerViewController.init(rootViewController:identifier:)();
}

void Blueprint.subscript.getter()
{
  OUTLINED_FUNCTION_45_15();
  v1 = v0;
  Blueprint.startIndex.getter();
  v3 = v2;
  Blueprint.endIndex.getter();
  if (v4 < v3)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v3 > v1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v4 > v1)
  {
    OUTLINED_FUNCTION_16_50();
    OUTLINED_FUNCTION_4_2();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_3_11();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_11_56();
    sub_1D818F394();
    sub_1D818F3B4();
    OUTLINED_FUNCTION_46_15();
    return;
  }

LABEL_7:
  __break(1u);
}

{
  OUTLINED_FUNCTION_120();
  v2 = OUTLINED_FUNCTION_41_15(v0, v1);
  OUTLINED_FUNCTION_9();
  v4 = v3;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  sub_1D818E974();
  OUTLINED_FUNCTION_4_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_11();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_7();
  sub_1D818F394();
  sub_1D818F3B4();
  v8 = sub_1D818E964();
  BlueprintSection.subscript.getter(v8, v2);
  (*(v4 + 8))(v7, v2);
  OUTLINED_FUNCTION_100();
}