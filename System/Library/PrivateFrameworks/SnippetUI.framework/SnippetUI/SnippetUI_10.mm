Swift::Void __swiftcall VisualResponseView.setAsrText(_:)(Swift::String a1)
{
  object = a1._object;
  if (sub_26A61B6A8() == a1._countAndFlagsBits && v2 == object)
  {
  }

  else
  {
    OUTLINED_FUNCTION_5_21();
    v4 = sub_26A852598();

    if ((v4 & 1) == 0)
    {

      OUTLINED_FUNCTION_5_21();
      sub_26A61B718();
    }
  }
}

Swift::Void __swiftcall VisualResponseView.postSiriSpeechEvent()()
{
  OUTLINED_FUNCTION_6_22();

  v0 = OUTLINED_FUNCTION_5_21();
  sub_26A6208C4(v0, v1);
}

uint64_t VisualResponseView.setIsInAmbient(_:withScaleFactor:)(double a1)
{
  sub_26A61BECC();
  v2.n128_f64[0] = a1;
  return sub_26A61C214(v2);
}

uint64_t VisualResponseView.currentIdiom.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SnippetUI18VisualResponseView_context);
  v2 = OBJC_IVAR____TtC9SnippetUI7Context_currentIdiom;
  OUTLINED_FUNCTION_4_21();
  return *(v1 + v2);
}

uint64_t VisualResponseView.currentIdiom.setter(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SnippetUI18VisualResponseView_context);
  v4 = OBJC_IVAR____TtC9SnippetUI7Context_currentIdiom;
  v5 = OUTLINED_FUNCTION_3_21();
  *(v3 + v4) = a1;
  return sub_26A61D27C(v5);
}

uint64_t VisualResponseView.interactionDelegate.setter()
{
  OUTLINED_FUNCTION_3_21();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

id sub_26A58A684@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 interactionDelegate];
  *a2 = result;
  return result;
}

id sub_26A58A7C8(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = OUTLINED_FUNCTION_5_21();
  __swift_instantiateConcreteTypeFromMangledNameV2(v5);
  v6 = sub_26A851A88();

  return v6;
}

uint64_t VisualResponseView.containsComponentsWithAction.getter()
{
  v0 = sub_26A84B058();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_41();
  v3 = v2 - v1;
  v4 = type metadata accessor for ResponseView();
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_41();
  v8 = v7 - v6;
  type metadata accessor for AnyRootView.ContentType(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_41();
  v12 = v11 - v10;
  sub_26A58B648();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A58B7DC(v12, type metadata accessor for AnyRootView.ContentType);
    v13 = 0;
  }

  else
  {
    sub_26A58B834();
    v14 = *(v8 + *(v4 + 24) + 8);
    v15 = OBJC_IVAR____TtC9SnippetUI7Context_currentIdiom;
    OUTLINED_FUNCTION_6_22();
    VRXIdiom.idiom.getter(*(v14 + v15), v3);
    v13 = Response.hasAction(for:mode:)(v3, *(v8 + *(v4 + 20)), v16, v17, v18, v19, v20, v21);
    v22 = OUTLINED_FUNCTION_5_21();
    v23(v22);
    sub_26A58B7DC(v8, type metadata accessor for ResponseView);
  }

  return v13 & 1;
}

uint64_t VisualResponseView.requestsKeyWindow.getter()
{
  v0 = sub_26A851E98();
  LOBYTE(v2) = 2;
  j__OUTLINED_FUNCTION_208_0(v0, 1, "SnippetUI/VisualResponseView.swift", 34, 2, 209, "requestsKeyWindow", 17, v2);
  return 0;
}

id sub_26A58ABA8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v3 = sub_26A851788();

  return v3;
}

uint64_t sub_26A58AC04(void *a1)
{
  v2 = (*(v1 + OBJC_IVAR____TtC9SnippetUI18VisualResponseView_context) + *a1);
  OUTLINED_FUNCTION_6_22();
  v3 = *v2;

  return v3;
}

void sub_26A58AC74(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = sub_26A8517B8();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);
}

uint64_t sub_26A58ACF8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (*(v3 + OBJC_IVAR____TtC9SnippetUI18VisualResponseView_context) + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

void sub_26A58AD60(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_2_21(a1);
  v4 = [v2 *v3];
  v5 = sub_26A8517B8();
  v7 = v6;

  *v1 = v5;
  v1[1] = v7;
}

void sub_26A58ADB0(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  v7 = sub_26A851788();
  [v6 *a5];
}

uint64_t VisualResponseView.visualResponseLocation.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SnippetUI18VisualResponseView_context);
  v2 = OBJC_IVAR____TtC9SnippetUI7Context_visualResponseLocation;
  OUTLINED_FUNCTION_4_21();
  return *(v1 + v2);
}

uint64_t VisualResponseView.visualResponseLocation.setter(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SnippetUI18VisualResponseView_context);
  v4 = OBJC_IVAR____TtC9SnippetUI7Context_visualResponseLocation;
  result = OUTLINED_FUNCTION_3_21();
  *(v3 + v4) = a1;
  return result;
}

unint64_t VisualResponseView.description.getter()
{
  sub_26A852248();

  v0 = AnyRootView.description.getter();
  MEMORY[0x26D663B00](v0);

  return 0xD00000000000001BLL;
}

char *sub_26A58B158(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_allocWithZone(type metadata accessor for VisualResponseView());
  (*(v9 + 16))(v11, a1, a4);
  v13 = sub_26A58B2C4(v11, a2, v12, a4, a5);
  (*(v9 + 8))(a1, a4);
  return v13;
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

char *sub_26A58B2C4(uint64_t a1, void *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v34 = a3;
  v9 = sub_26A850148();
  MEMORY[0x28223BE20](v9 - 8);
  v35 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AnyRootView(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a4;
  v39 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v37);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  v15 = v38;
  v33 = v39;
  __swift_project_boxed_opaque_existential_1(v37, v38);
  v16 = *(a5 + 8);
  v16(a4, a5);
  v17 = v34;
  sub_26A58B834();
  *&v17[OBJC_IVAR____TtC9SnippetUI18VisualResponseView_context] = a2;
  v18 = a2;
  v16(v15, v33);
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  v20 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B1DB0));
  v21 = v18;
  v22 = sub_26A6F2478(v13, sub_26A58B888, v19);
  v23 = OBJC_IVAR____TtC9SnippetUI18VisualResponseView_hostingViewController;
  *&v17[OBJC_IVAR____TtC9SnippetUI18VisualResponseView_hostingViewController] = v22;
  v24 = v22;
  sub_26A850138();
  sub_26A84FCC8();

  result = [*&v17[v23] view];
  if (result)
  {
    v26 = result;
    v27 = [objc_opt_self() clearColor];
    [v26 setBackgroundColor_];

    v28 = type metadata accessor for VisualResponseView();
    v36.receiver = v17;
    v36.super_class = v28;
    v29 = objc_msgSendSuper2(&v36, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v30 = *&v29[OBJC_IVAR____TtC9SnippetUI18VisualResponseView_hostingViewController];
    v31 = v29;
    result = [v30 view];
    if (result)
    {
      v32 = result;
      [v31 addSubview_];

      __swift_destroy_boxed_opaque_existential_1(v37);
      return v31;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for VisualResponseView()
{
  result = qword_2803AE158;
  if (!qword_2803AE158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A58B648()
{
  v2 = OUTLINED_FUNCTION_13_2();
  v3(v2);
  OUTLINED_FUNCTION_46();
  (*(v4 + 16))(v0, v1);
  return v0;
}

uint64_t sub_26A58B710()
{
  result = type metadata accessor for AnyRootView(319);
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

uint64_t sub_26A58B7DC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_46();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_26A58B834()
{
  v2 = OUTLINED_FUNCTION_13_2();
  v3(v2);
  OUTLINED_FUNCTION_46();
  (*(v4 + 32))(v0, v1);
  return v0;
}

uint64_t OUTLINED_FUNCTION_3_21()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_4_21()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_6_22()
{

  return swift_beginAccess();
}

uint64_t sub_26A58BBA0@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  KeyPath = swift_getKeyPath();
  v15 = swift_getKeyPath();
  v14 = swift_getKeyPath();
  v13 = swift_getKeyPath();
  v12 = swift_getKeyPath();
  v11 = swift_getKeyPath();
  v10 = swift_getKeyPath();
  v9 = swift_getKeyPath();
  v8 = swift_getKeyPath();
  sub_26A5905B4();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE228);
  v7 = a1 + *(result + 36);
  *v7 = sub_26A5906C0;
  *(v7 + 8) = v5;
  *(v7 + 16) = KeyPath;
  *(v7 + 24) = 0;
  *(v7 + 32) = v15;
  *(v7 + 40) = 0;
  *(v7 + 48) = v14;
  *(v7 + 56) = 0;
  *(v7 + 64) = v13;
  *(v7 + 72) = 0;
  *(v7 + 80) = v12;
  *(v7 + 88) = 0;
  *(v7 + 96) = v11;
  *(v7 + 104) = 0;
  *(v7 + 112) = v10;
  *(v7 + 120) = 0;
  *(v7 + 128) = v9;
  *(v7 + 136) = 0;
  *(v7 + 144) = v8;
  *(v7 + 152) = 0;
  return result;
}

void sub_26A58C030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, int a21, char a22, int a23, char a24)
{
  OUTLINED_FUNCTION_11_14();
  OUTLINED_FUNCTION_18_8();
  v32 = v31;
  OUTLINED_FUNCTION_29_7();
  v33 = swift_allocObject();
  *(v33 + 16) = v30;
  *(v33 + 24) = v29;
  swift_getKeyPath();
  OUTLINED_FUNCTION_31_6();
  swift_getKeyPath();
  OUTLINED_FUNCTION_16_8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_25_9();
  swift_getKeyPath();
  OUTLINED_FUNCTION_24_7();
  swift_getKeyPath();
  OUTLINED_FUNCTION_23_7();
  swift_getKeyPath();
  OUTLINED_FUNCTION_22_9();
  swift_getKeyPath();
  OUTLINED_FUNCTION_21_6();
  swift_getKeyPath();
  OUTLINED_FUNCTION_20_7();
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_23();
  sub_26A5905B4();
  *(v32 + 1272) = sub_26A5906C0;
  *(v32 + 1280) = v33;
  *(v32 + 1288) = a17;
  *(v32 + 1296) = v24;
  *(v32 + 1304) = a16;
  *(v32 + 1312) = v25;
  *(v32 + 1320) = a15;
  *(v32 + 1328) = v26;
  *(v32 + 1336) = a14;
  *(v32 + 1344) = v27;
  *(v32 + 1352) = a13;
  *(v32 + 1360) = v28;
  *(v32 + 1368) = a12;
  *(v32 + 1376) = a24;
  *(v32 + 1384) = a11;
  *(v32 + 1392) = a22;
  *(v32 + 1400) = a10;
  *(v32 + 1408) = a20;
  *(v32 + 1416) = a9;
  *(v32 + 1424) = 0;
  OUTLINED_FUNCTION_10_14();
}

uint64_t sub_26A58C61C()
{
  OUTLINED_FUNCTION_18_8();
  v4 = v3;
  OUTLINED_FUNCTION_29_7();
  v15 = swift_allocObject();
  *(v15 + 16) = v2;
  *(v15 + 24) = v1;
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_31_6();
  swift_getKeyPath();
  OUTLINED_FUNCTION_16_8();
  v11 = swift_getKeyPath();
  v10 = swift_getKeyPath();
  v9 = swift_getKeyPath();
  v8 = swift_getKeyPath();
  v7 = swift_getKeyPath();
  v6 = swift_getKeyPath();
  memcpy(v4, v0, 0x80uLL);
  *(v4 + 128) = sub_26A5906C0;
  *(v4 + 136) = v15;
  *(v4 + 144) = KeyPath;
  *(v4 + 152) = 0;
  *(v4 + 160) = v13;
  *(v4 + 168) = v17;
  *(v4 + 176) = v12;
  *(v4 + 184) = v16;
  *(v4 + 192) = v11;
  *(v4 + 200) = 0;
  *(v4 + 208) = v10;
  *(v4 + 216) = 0;
  *(v4 + 224) = v9;
  *(v4 + 232) = 0;
  *(v4 + 240) = v8;
  *(v4 + 248) = 0;
  *(v4 + 256) = v7;
  *(v4 + 264) = 0;
  *(v4 + 272) = v6;
  *(v4 + 280) = 0;
  return sub_26A5905B4();
}

uint64_t TextInputView.init(model:text:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for TextInputView();
  v13 = (a6 + v12[5]);
  type metadata accessor for Context();
  OUTLINED_FUNCTION_6_23();
  sub_26A58F3A4();
  *v13 = sub_26A84F678();
  v13[1] = v14;
  v15 = a6 + v12[6];
  *v15 = swift_getKeyPath();
  *(v15 + 8) = 0;
  v16 = (a6 + v12[8]);
  v17 = a6 + v12[9];
  *v17 = sub_26A84ED88() & 1;
  *(v17 + 8) = v18;
  *(v17 + 16) = v19 & 1;
  v20 = a6 + v12[10];
  *v20 = swift_getKeyPath();
  *(v20 + 8) = 0;
  *(v20 + 16) = 0;
  v21 = sub_26A84E578();
  v22 = *(v21 - 8);
  v23 = OUTLINED_FUNCTION_211();
  v24(v23);
  *v16 = a2;
  v16[1] = a3;
  v16[2] = a4;
  v16[3] = a5;
  v25 = sub_26A84E548();
  v27 = v26;
  result = (*(v22 + 8))(a1, v21);
  v29 = (a6 + v12[7]);
  *v29 = v25;
  v29[1] = v27;
  v29[2] = 0;
  return result;
}

uint64_t View.modifyTextField<A>(modifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v12[6] = a1;
  v12[7] = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE178);
  OUTLINED_FUNCTION_5_22();
  v14 = sub_26A506A30();
  v16 = sub_26A643400(sub_26A58F2D8, v12, v13, a4, v14, a6);

  sub_26A8509A8();

  return sub_26A4C24DC(v16);
}

uint64_t sub_26A58CBD8()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for TextInputView() + 40);
  v6 = *v5;
  v7 = *(v5 + 8);
  if (*(v5 + 16) == 1)
  {
    sub_26A4C2304(*v5);
  }

  else
  {

    sub_26A851EA8();
    v8 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A58FF48(v6, v7, 0);
    (*(v2 + 8))(v4, v1);
    return v10;
  }

  return v6;
}

uint64_t TextInputView.body.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE188);
  OUTLINED_FUNCTION_79(v1);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v2);
  v4 = v33 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA9F8);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  v7 = MEMORY[0x28223BE20](v6);
  v9 = v33 - v8;
  v10 = sub_26A58D018(v7);
  v11 = *(v0 + *(type metadata accessor for TextInputView() + 20));
  if (v11)
  {
    v12 = qword_2803A8CE0;
    v13 = v11;
    if (v12 != -1)
    {
      swift_once();
    }

    v33[0] = xmmword_2803D1FA8;
    v33[1] = *&qword_2803D1FB8;
    v34 = qword_2803D1FC8;
    sub_26A58EAE0(v13);

    *v4 = sub_26A84FBF8();
    *(v4 + 1) = 0;
    v4[16] = 0;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE190);
    sub_26A58D1CC(&v4[*(v14 + 44)]);
    sub_26A58BBA0(v9, v10, v10);
    sub_26A505D1C();
    v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE198) + 36)] = 29;
    v15 = sub_26A850278();
    sub_26A84ED48();
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE1A0);
    OUTLINED_FUNCTION_26_5();
    *v24 = v15;
    *(v24 + 8) = v17;
    *(v24 + 16) = v19;
    *(v24 + 24) = v21;
    *(v24 + 32) = v23;
    *(v24 + 40) = 0;
    v25 = sub_26A850298();
    sub_26A84ED48();
    v26 = &v9[*(v5 + 36)];
    *v26 = v25;
    *(v26 + 1) = v27;
    *(v26 + 2) = v28;
    *(v26 + 3) = v29;
    *(v26 + 4) = v30;
    v26[40] = 0;
    v31 = sub_26A84E558();
    sub_26A4DE584(v31);

    return sub_26A505D1C();
  }

  else
  {
    type metadata accessor for Context();
    OUTLINED_FUNCTION_6_23();
    sub_26A58F3A4();
    result = OUTLINED_FUNCTION_1_11();
    __break(1u);
  }

  return result;
}

uint64_t sub_26A58D1CC@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE2A8);
  MEMORY[0x28223BE20](v54);
  v52 = v42 - v1;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE2B0);
  MEMORY[0x28223BE20](v49);
  v50 = v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v51 = v42 - v4;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE2B8);
  MEMORY[0x28223BE20](v44);
  v47 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v45 = v42 - v7;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE2C0);
  MEMORY[0x28223BE20](v46);
  v48 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v42 - v10;
  v12 = sub_26A84B888();
  v43 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE2C8);
  MEMORY[0x28223BE20](v15);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE2D0);
  MEMORY[0x28223BE20](v53);
  v17 = v42 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA838);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = v42 - v19;
  v21 = type metadata accessor for TextPropertyView();
  MEMORY[0x28223BE20](v21 - 8);
  v23 = v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = v42 - v25;
  sub_26A84E538();
  if (__swift_getEnumTagSinglePayload(v20, 1, v12) == 1)
  {
    sub_26A505D1C();
    sub_26A58DB20(v17);
    sub_26A5905B4();
    swift_storeEnumTagMultiPayload();
    sub_26A506A30();
    sub_26A506A30();
    sub_26A84FDF8();
    return sub_26A505D1C();
  }

  else
  {
    v42[1] = v15;
    v28 = v43;
    (*(v43 + 16))(v14, v20, v12);
    TextPropertyView.init(_:)(v14, v23);
    (*(v28 + 8))(v20, v12);
    sub_26A58FF54();
    *v11 = sub_26A84FA78();
    *(v11 + 1) = 0;
    v11[16] = 1;
    v29 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE2E8) + 44)];
    if (qword_2803A9018 != -1)
    {
      swift_once();
    }

    v30 = &v45[*(v44 + 36)];
    sub_26A5905B4();
    sub_26A6AEE74(__src);
    memcpy(v30, __src, 0xBFuLL);
    *(v30 + 34) = sub_26A80A810;
    *(v30 + 35) = 0;
    sub_26A590444();
    sub_26A5905B4();
    sub_26A5905B4();
    v31 = &v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE2F0) + 48)];
    *v31 = 0;
    v31[8] = 1;
    sub_26A505D1C();
    sub_26A505D1C();
    KeyPath = swift_getKeyPath();
    v47 = v26;
    v33 = KeyPath;
    v34 = swift_getKeyPath();
    v35 = &v11[*(v46 + 36)];
    *v35 = v33;
    v35[8] = 0;
    *(v35 + 2) = v34;
    *(v35 + 12) = 256;
    v36 = v51;
    sub_26A58DB20(v51);
    LOBYTE(v33) = sub_26A850258();
    sub_26A58D018();
    sub_26A84ED48();
    v37 = v36 + *(v49 + 36);
    *v37 = v33;
    *(v37 + 8) = v38;
    *(v37 + 16) = v39;
    *(v37 + 24) = v40;
    *(v37 + 32) = v41;
    *(v37 + 40) = 0;
    sub_26A5905B4();
    sub_26A5905B4();
    sub_26A5905B4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE2F8);
    sub_26A5905B4();
    sub_26A505D1C();
    sub_26A505D1C();
    sub_26A5905B4();
    swift_storeEnumTagMultiPayload();
    sub_26A506A30();
    sub_26A506A30();
    sub_26A84FDF8();
    sub_26A505D1C();
    sub_26A505D1C();
    sub_26A505D1C();
    return sub_26A58FD08(v47);
  }
}

uint64_t sub_26A58DB20@<X0>(uint64_t a1@<X8>)
{
  v67 = a1;
  v69 = type metadata accessor for TextInputView();
  OUTLINED_FUNCTION_15();
  v64 = v2;
  MEMORY[0x28223BE20](v3);
  v65 = v4;
  v66 = v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE300);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_82();
  v54 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE308);
  OUTLINED_FUNCTION_79(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_82();
  v55 = v9;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE178);
  OUTLINED_FUNCTION_15();
  v53 = v10;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v11);
  v13 = v52 - v12;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE310);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_82();
  v57 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE318);
  OUTLINED_FUNCTION_15();
  v59 = v17;
  v60 = v16;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_82();
  v68 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE320);
  OUTLINED_FUNCTION_15();
  v62 = v21;
  v63 = v20;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_82();
  v61 = v23;
  v52[0] = sub_26A58CBD8();
  v52[1] = v24;
  sub_26A84FB68();
  sub_26A58E324();
  v70 = v1;
  v71 = sub_26A84E528();
  v72 = v25;
  sub_26A53ACC8();
  sub_26A850898();
  v26 = v52[0];
  sub_26A851508();
  if (v26)
  {

    v27 = v26(v13);
    *v54 = v27;
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_5_22();
    sub_26A506A30();

    v28 = v56;
    sub_26A84FDF8();
    sub_26A4C24DC(v26);

    v29 = v53;
  }

  else
  {
    v30 = v53;
    v28 = v56;
    (*(v53 + 16))(v54, v13, v56);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_5_22();
    sub_26A506A30();
    sub_26A84FDF8();
    v29 = v30;
  }

  v31 = v57;
  sub_26A58FD64();
  sub_26A4C24DC(v26);
  (*(v29 + 8))(v13, v28);
  KeyPath = swift_getKeyPath();
  v33 = swift_getKeyPath();
  v34 = v58;
  v35 = v31 + *(v58 + 36);
  *v35 = KeyPath;
  *(v35 + 8) = 0;
  *(v35 + 16) = v33;
  *(v35 + 24) = 0;
  v36 = v70 + *(v69 + 36);
  v38 = *(v36 + 8);
  v39 = *(v36 + 16);
  LOBYTE(v71) = *v36;
  v37 = v71;
  v72 = v38;
  v73 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE328);
  sub_26A84ED78();
  v40 = sub_26A58FDB0();
  sub_26A850C18();

  sub_26A505D1C();
  LOBYTE(v71) = v37;
  v72 = v38;
  v73 = v39;
  sub_26A84ED58();
  OUTLINED_FUNCTION_17_7();
  v41 = v70;
  sub_26A590444();
  swift_allocObject();
  OUTLINED_FUNCTION_19_8();
  v71 = v34;
  v72 = v40;
  swift_getOpaqueTypeConformance2();
  v43 = v60;
  v42 = v61;
  v44 = v68;
  sub_26A850C78();

  (*(v59 + 8))(v44, v43);
  v45 = *(v41 + *(v69 + 20));
  if (v45)
  {
    v46 = v45;
    v47 = sub_26A61D544();

    OUTLINED_FUNCTION_17_7();
    sub_26A590444();
    v48 = swift_allocObject();
    OUTLINED_FUNCTION_19_8();
    v49 = v67;
    (*(v62 + 32))(v67, v42, v63);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE2D0);
    *(v49 + *(result + 52)) = v47;
    v51 = (v49 + *(result + 56));
    *v51 = sub_26A590138;
    v51[1] = v48;
  }

  else
  {
    type metadata accessor for Context();
    OUTLINED_FUNCTION_6_23();
    sub_26A58F3A4();
    result = OUTLINED_FUNCTION_1_11();
    __break(1u);
  }

  return result;
}

uint64_t sub_26A58E324()
{
  v0 = type metadata accessor for TextInputView();
  MEMORY[0x28223BE20](v0 - 8);
  sub_26A590444();
  sub_26A851BD8();
  v1 = sub_26A851BC8();
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D85700];
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  sub_26A58FF54();
  sub_26A590444();
  v4 = sub_26A851BC8();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  sub_26A58FF54();
  sub_26A851278();
  return v7;
}

void sub_26A58E4F4(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *(a3 + *(type metadata accessor for TextInputView() + 20));
  if (v3 != 1)
  {
    if (v4)
    {
      v7 = v4;
      sub_26A620644();
      goto LABEL_6;
    }

LABEL_9:
    type metadata accessor for Context();
    sub_26A58F3A4();
    sub_26A84F668();
    __break(1u);
    return;
  }

  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v4;
  sub_26A620570();

  v6 = [objc_allocWithZone(type metadata accessor for UEIKeyboardInvocationEvent()) init];
  v7 = v5;
  sub_26A6209BC(v6);

LABEL_6:
}

uint64_t sub_26A58E610(uint64_t result)
{
  if (*(result + 24) == 1 && *result == 4)
  {
    type metadata accessor for TextInputView();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE328);
    return sub_26A84ED68();
  }

  return result;
}

void *sub_26A58E6A4@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  if (*(a1 + *(type metadata accessor for TextInputView() + 32) + 8))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE1D8);
    result = MEMORY[0x26D6634C0](v6, v3);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE348);
    result = sub_26A851058();
  }

  v5 = v6[1];
  *a2 = v6[0];
  a2[1] = v5;
  return result;
}

uint64_t sub_26A58E75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (a4 + *(type metadata accessor for TextInputView() + 32));
  v5 = v4[1];
  if (v5)
  {
    sub_26A5903A4(*v4, v5);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE1D8);
    sub_26A851268();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE348);
  return sub_26A851068();
}

uint64_t sub_26A58E870@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v15[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACCF0);
  OUTLINED_FUNCTION_15();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = (v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v8 = type metadata accessor for ImageStyleAppearance();
  v9 = OUTLINED_FUNCTION_79(v8);
  MEMORY[0x28223BE20](v9);
  v15[1] = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0;
  v16 = v2;
  v12 = *(v2 + 24);
  v13 = *(v12 + 16);
  while (1)
  {
    if (v13 == v11)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803ABFF0);
      return sub_26A590444();
    }

    if (v11 >= *(v12 + 16))
    {
      break;
    }

    sub_26A5905B4();
    if (sub_26A58FA84(v7, a1))
    {
      sub_26A58FD64();

      sub_26A58FF54();
      return sub_26A58FF54();
    }

    sub_26A505D1C();
    ++v11;
  }

  __break(1u);

  result = sub_26A505D1C();
  __break(1u);
  return result;
}

double sub_26A58EAE0(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = *(v3 + 16);
  v5 = (v3 + 40);
  if (!v4)
  {
    return *(v1 + 32);
  }

  while (1)
  {
    v6 = *v5;

    if (sub_26A58FBC8(v7, a1))
    {
      break;
    }

    v5 += 2;
    if (!--v4)
    {
      return *(v1 + 32);
    }
  }

  return v6;
}

uint64_t sub_26A58EB7C@<X0>(void *a1@<X8>)
{
  v1 = off_281FDBB58;
  v2 = unk_281FDBB60;
  *a1 = off_281FDBB58;
  a1[1] = v2;
  return sub_26A4C2304(v1);
}

uint64_t sub_26A58EB94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE380);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE388);
  *(a2 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_26A58EC24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v33 = a3;
  v34 = a6;
  v35 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB208);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v31 - v10;
  v12 = sub_26A8504B8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_26A84F988();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5)
  {
    v20 = *&a4;
  }

  else
  {
    v31 = v17;

    sub_26A851EA8();
    v21 = sub_26A8501F8();
    v32 = v16;
    v22 = v21;
    sub_26A84EA78();

    v16 = v32;
    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(a4, 0);
    v17 = v31;
    (*(v31 + 8))(v19, v16);
    v20 = v36;
  }

  if (v20 <= 1.0)
  {

    if ((v33 & 1) == 0)
    {
      sub_26A851EA8();
      v25 = sub_26A8501F8();
      sub_26A84EA78();

      sub_26A84F978();
      swift_getAtKeyPath();
      j__swift_release();
      (*(v17 + 8))(v19, v16);
      a2 = *&v36;
    }
  }

  else
  {
    (*(v13 + 104))(v15, *MEMORY[0x277CE0A50], v12);
    v23 = *MEMORY[0x277CE0990];
    v24 = sub_26A850338();
    (*(*(v24 - 8) + 104))(v11, v23, v24);
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v24);
    a2 = sub_26A8503F8();
    sub_26A505D1C();
    (*(v13 + 8))(v15, v12);
  }

  KeyPath = swift_getKeyPath();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE258);
  v28 = v34;
  (*(*(v27 - 8) + 16))(v34, v35, v27);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE260);
  v30 = (v28 + *(result + 36));
  *v30 = KeyPath;
  v30[1] = a2;
  return result;
}

uint64_t sub_26A58F070()
{
  sub_26A5903F0();
  sub_26A84F998();
  return v1;
}

uint64_t sub_26A58F0E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26A58F070();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A58F158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a5 - 8);
  v7 = (MEMORY[0x28223BE20])();
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v16 - v11;
  v13(v10);
  sub_26A80757C(v9);
  v14 = *(v6 + 8);
  v14(v9, a5);
  sub_26A80757C(v12);
  return (v14)(v12, a5);
}

uint64_t type metadata accessor for TextInputView()
{
  result = qword_2803AE1B0;
  if (!qword_2803AE1B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_26A58F34C(uint64_t a1)
{
  result = sub_26A58F3A4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26A58F3A4()
{
  OUTLINED_FUNCTION_196();
  result = *v2;
  if (!result)
  {
    v1(255);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

void sub_26A58F410()
{
  sub_26A84E578();
  if (v0 <= 0x3F)
  {
    sub_26A58F564();
    if (v1 <= 0x3F)
    {
      sub_26A4EEA70();
      if (v2 <= 0x3F)
      {
        sub_26A58F5F8();
        if (v3 <= 0x3F)
        {
          sub_26A58F6A0(319, &qword_2803AE1D0, &qword_2803AE1D8, &unk_26A860D08, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_26A58F648();
            if (v5 <= 0x3F)
            {
              sub_26A58F6A0(319, &qword_2803AE1E8, &unk_2803AE1F0, &unk_26A860D10, MEMORY[0x277CDF468]);
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

void sub_26A58F564()
{
  if (!qword_2803AE1C0)
  {
    type metadata accessor for Context();
    sub_26A58F3A4();
    v0 = sub_26A84F688();
    if (!v1)
    {
      atomic_store(v0, &qword_2803AE1C0);
    }
  }
}

void sub_26A58F5F8()
{
  if (!qword_2803AE1C8)
  {
    v0 = sub_26A851088();
    if (!v1)
    {
      atomic_store(v0, &qword_2803AE1C8);
    }
  }
}

void sub_26A58F648()
{
  if (!qword_2803AE1E0)
  {
    v0 = sub_26A84EDA8();
    if (!v1)
    {
      atomic_store(v0, &qword_2803AE1E0);
    }
  }
}

void sub_26A58F6A0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = OUTLINED_FUNCTION_40_3(0, a2, a3);
    v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v8);
    v10 = a5(a1, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_26A58F700()
{
  result = qword_2803AE1F8;
  if (!qword_2803AE1F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAA00);
    sub_26A58F7B8();
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AE1F8);
  }

  return result;
}

unint64_t sub_26A58F7B8()
{
  result = qword_2803AE200;
  if (!qword_2803AE200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AA9F0);
    sub_26A58F8A0(&qword_2803AE208, &qword_2803AA9F8, &unk_26A860C60, sub_26A58F870);
    sub_26A4D31BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AE200);
  }

  return result;
}

uint64_t sub_26A58F8A0(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_50_0(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7);
    a4();
    OUTLINED_FUNCTION_15_10();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26A58F90C()
{
  result = qword_2803AE218;
  if (!qword_2803AE218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AE198);
    sub_26A58F998();
    sub_26A4DBA00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AE218);
  }

  return result;
}

unint64_t sub_26A58F998()
{
  result = qword_2803AE220;
  if (!qword_2803AE220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AE228);
    sub_26A506A30();
    sub_26A4D6BF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AE220);
  }

  return result;
}

uint64_t sub_26A58FA84(uint64_t *a1, uint64_t a2)
{
  v17 = a2;
  v2 = *a1;
  v3 = *a1 + 56;
  v4 = 1 << *(*a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(*a1 + 56);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (v6)
  {
    while (1)
    {
      v10 = v9;
LABEL_8:
      v11 = *(v2 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v6))));
      v12 = *v11;
      v13 = *(v11 + 8);
      v15 = v12;
      v16 = v13;
      sub_26A4E324C(v12, v13);
      v14 = sub_26A6AF834(&v15, v17);
      result = sub_26A587EE4(v12, v13);
      if ((v14 & 1) == 0)
      {
        break;
      }

      v6 &= v6 - 1;
      v9 = v10;
      if (!v6)
      {
        goto LABEL_5;
      }
    }

    return 0;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v7)
      {

        return 1;
      }

      v6 = *(v3 + 8 * v10);
      ++v9;
      if (v6)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26A58FBC8(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (v6)
  {
    while (1)
    {
      v10 = v9;
LABEL_8:
      v11 = *(a1 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v6))));
      v12 = *v11;
      v13 = *(v11 + 8);
      v15 = v12;
      v16 = v13;
      sub_26A4E324C(v12, v13);
      v14 = sub_26A6AF834(&v15, v17);
      result = sub_26A587EE4(v12, v13);
      if ((v14 & 1) == 0)
      {
        break;
      }

      v6 &= v6 - 1;
      v9 = v10;
      if (!v6)
      {
        goto LABEL_5;
      }
    }

    return 0;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v7)
      {

        return 1;
      }

      v6 = *(v3 + 8 * v10);
      ++v9;
      if (v6)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26A58FD08(uint64_t a1)
{
  v2 = type metadata accessor for TextPropertyView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26A58FD64()
{
  OUTLINED_FUNCTION_145();
  v4 = OUTLINED_FUNCTION_40_3(v1, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(v4);
  OUTLINED_FUNCTION_5_0();
  v5 = OUTLINED_FUNCTION_211();
  v6(v5);
  return v0;
}

unint64_t sub_26A58FDB0()
{
  result = qword_2803AE330;
  if (!qword_2803AE330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AE310);
    sub_26A58FE3C();
    sub_26A58FEF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AE330);
  }

  return result;
}

unint64_t sub_26A58FE3C()
{
  result = qword_2803AE338;
  if (!qword_2803AE338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AE308);
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AE338);
  }

  return result;
}

unint64_t sub_26A58FEF4()
{
  result = qword_2803AE340;
  if (!qword_2803AE340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AE340);
  }

  return result;
}

uint64_t sub_26A58FF48(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
    return sub_26A4C24DC(result);
  }

  else
  {
  }
}

uint64_t sub_26A58FF54()
{
  OUTLINED_FUNCTION_145();
  v1(0);
  OUTLINED_FUNCTION_5_0();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

void sub_26A58FFA4(uint64_t a1, unsigned __int8 *a2)
{
  v5 = type metadata accessor for TextInputView();
  OUTLINED_FUNCTION_79(v5);
  v7 = v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  sub_26A58E4F4(a1, a2, v7);
}

uint64_t objectdestroy_89Tm()
{
  type metadata accessor for TextInputView();
  OUTLINED_FUNCTION_37_0();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  sub_26A84E578();
  OUTLINED_FUNCTION_46();
  (*(v4 + 8))(v3);

  OUTLINED_FUNCTION_37_7();

  if (*(v3 + *(v0 + 32) + 8))
  {
  }

  OUTLINED_FUNCTION_41_6();

  return swift_deallocObject();
}

uint64_t sub_26A590138(uint64_t a1)
{
  v2 = type metadata accessor for TextInputView();
  OUTLINED_FUNCTION_79(v2);

  return sub_26A58E610(a1);
}

void *sub_26A5901A4@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for TextInputView();
  OUTLINED_FUNCTION_79(v3);
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return sub_26A58E6A4(v5, a1);
}

uint64_t objectdestroy_96Tm()
{
  type metadata accessor for TextInputView();
  OUTLINED_FUNCTION_37_0();
  v3 = *(v2 + 80);
  swift_unknownObjectRelease();
  v4 = v1 + ((v3 + 32) & ~v3);
  sub_26A84E578();
  OUTLINED_FUNCTION_46();
  (*(v5 + 8))(v4);

  OUTLINED_FUNCTION_37_7();

  if (*(v4 + *(v0 + 32) + 8))
  {
  }

  OUTLINED_FUNCTION_41_6();

  return swift_deallocObject();
}

uint64_t sub_26A590334(uint64_t a1)
{
  v3 = type metadata accessor for TextInputView();
  OUTLINED_FUNCTION_79(v3);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return sub_26A58E75C(a1, v5, v6, v7);
}

uint64_t sub_26A5903A4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_26A5903F0()
{
  result = qword_2803AE350;
  if (!qword_2803AE350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AE350);
  }

  return result;
}

uint64_t sub_26A590444()
{
  OUTLINED_FUNCTION_145();
  v1(0);
  OUTLINED_FUNCTION_5_0();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

unint64_t sub_26A5904B4()
{
  result = qword_2803AE358;
  if (!qword_2803AE358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AE260);
    sub_26A506A30();
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AE358);
  }

  return result;
}

uint64_t sub_26A5905B4()
{
  OUTLINED_FUNCTION_145();
  v4 = OUTLINED_FUNCTION_40_3(v1, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(v4);
  OUTLINED_FUNCTION_5_0();
  v5 = OUTLINED_FUNCTION_211();
  v6(v5);
  return v0;
}

unint64_t sub_26A590600()
{
  result = qword_2803AE390;
  if (!qword_2803AE390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AE388);
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AE390);
  }

  return result;
}

void OUTLINED_FUNCTION_0_21(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *a1 = v11;
  *(a1 + 8) = v13;
  *(a1 + 16) = a11;
  *(a1 + 24) = v15;
  *(a1 + 32) = a9;
  *(a1 + 40) = v16;
  *(a1 + 48) = a8;
  *(a1 + 56) = v17;
  *(a1 + 64) = a7;
  *(a1 + 72) = v18;
  *(a1 + 80) = a6;
  *(a1 + 88) = v19;
  *(a1 + 96) = a5;
  *(a1 + 104) = v12;
  *(a1 + 112) = a4;
  *(a1 + 120) = v20;
  *(a1 + 128) = a3;
  *(a1 + 136) = v14;
  *(a1 + 144) = a2;
  *(a1 + 152) = 0;
}

void OUTLINED_FUNCTION_2_22(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *a1 = v10;
  *(a1 + 8) = v11;
  *(a1 + 16) = a10;
  *(a1 + 24) = v12;
  *(a1 + 32) = a9;
  *(a1 + 40) = v13;
  *(a1 + 48) = a8;
  *(a1 + 56) = v14;
  *(a1 + 64) = a7;
  *(a1 + 72) = v15;
  *(a1 + 80) = a6;
  *(a1 + 88) = v16;
  *(a1 + 96) = a5;
}

void OUTLINED_FUNCTION_7_18(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 104) = v6;
  *(a1 + 112) = a4;
  *(a1 + 120) = v4;
  *(a1 + 128) = a3;
  *(a1 + 136) = v5;
  *(a1 + 144) = a2;
  *(a1 + 152) = 0;
}

uint64_t OUTLINED_FUNCTION_19_8()
{

  return sub_26A58FF54();
}

uint64_t OUTLINED_FUNCTION_27_6(uint64_t result)
{
  *(result + 16) = v2;
  *(result + 24) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_37_7()
{
  sub_26A49035C(*(v1 + *(v0 + 24)), *(v1 + *(v0 + 24) + 8));
}

uint64_t TextProperty.asView()@<X0>(uint64_t a1@<X8>)
{
  sub_26A84B888();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_41();
  v6 = v5 - v4;
  (*(v7 + 16))(v5 - v4, v1);
  return TextPropertyView.init(_:)(v6, a1);
}

uint64_t sub_26A590A90()
{
  v1 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  v7 = v6 - v5;
  v8 = v0 + *(type metadata accessor for TextPropertyView() + 20);
  v9 = *v8;
  if ((*(v8 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v10 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v9, 0);
    (*(v3 + 8))(v7, v1);
    return v12;
  }

  return v9;
}

uint64_t sub_26A590BD0()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for TextPropertyView() + 28);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t TextPropertyView.init(_:bold:italic:configureText:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TextPropertyView();
  v5 = a2 + v4[5];
  *v5 = swift_getKeyPath();
  *(v5 + 8) = 0;
  v6 = v4[6];
  *(a2 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0);
  swift_storeEnumTagMultiPayload();
  v7 = a2 + v4[7];
  *v7 = swift_getKeyPath();
  *(v7 + 8) = 0;
  ActionHandler.init()(a2 + v4[8]);

  sub_26A84B888();
  OUTLINED_FUNCTION_46();
  v10 = *(v9 + 32);

  return v10(a2, a1, v8);
}

uint64_t TextPropertyView.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TextPropertyView();
  v5 = a2 + v4[5];
  *v5 = swift_getKeyPath();
  *(v5 + 8) = 0;
  v6 = v4[6];
  *(a2 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0);
  swift_storeEnumTagMultiPayload();
  v7 = a2 + v4[7];
  *v7 = swift_getKeyPath();
  *(v7 + 8) = 0;
  ActionHandler.init()(a2 + v4[8]);
  sub_26A84B888();
  OUTLINED_FUNCTION_46();
  v10 = *(v9 + 32);

  return v10(a2, a1, v8);
}

uint64_t type metadata accessor for TextPropertyView()
{
  result = qword_2803AE408;
  if (!qword_2803AE408)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TextPropertyView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v73 = a1;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE3B0);
  OUTLINED_FUNCTION_15();
  v67 = v2;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v3);
  v5 = &v58 - v4;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE3B8);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_82();
  v72 = v7;
  OUTLINED_FUNCTION_25_2();
  v70 = sub_26A84F588();
  OUTLINED_FUNCTION_15();
  v65 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_41();
  v63 = v11 - v10;
  OUTLINED_FUNCTION_25_2();
  v12 = type metadata accessor for TextPropertyView();
  v59 = *(v12 - 8);
  v13 = *(v59 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v60 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE3C0);
  OUTLINED_FUNCTION_15();
  v62 = v14;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_82();
  v61 = v16;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE3C8);
  OUTLINED_FUNCTION_15();
  v66 = v17;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_82();
  v64 = v19;
  OUTLINED_FUNCTION_25_2();
  v20 = sub_26A84B058();
  OUTLINED_FUNCTION_15();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_41();
  v26 = v25 - v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v27);
  v29 = &v58 - v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B38C0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v30);
  v32 = &v58 - v31;
  sub_26A84B868();
  v33 = sub_26A84BAB8();
  if (__swift_getEnumTagSinglePayload(v29, 1, v33) == 1)
  {
    sub_26A4D6FD8();
    v34 = sub_26A84E278();
    __swift_storeEnumTagSinglePayload(v32, 1, 1, v34);
LABEL_4:
    sub_26A4D6FD8();
    sub_26A591900(v5);
    v38 = v67;
    v39 = v74;
    (*(v67 + 16))(v72, v5, v74);
    swift_storeEnumTagMultiPayload();
    v40 = OUTLINED_FUNCTION_9_18();
    OUTLINED_FUNCTION_6_24();
    v41 = sub_26A59257C();
    v75 = v68;
    v76 = v70;
    v77 = v40;
    v78 = v41;
    OUTLINED_FUNCTION_7_19();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AE3D8);
    v42 = sub_26A591F10();
    OUTLINED_FUNCTION_5_23(v42);
    sub_26A84FDF8();
    return (*(v38 + 8))(v5, v39);
  }

  v35 = sub_26A590A90();
  VRXIdiom.idiom.getter(v35, v26);
  sub_26A84BAA8();
  (*(v22 + 8))(v26, v20);
  OUTLINED_FUNCTION_4_11();
  (*(v36 + 8))(v29, v33);
  v37 = sub_26A84E278();
  if (__swift_getEnumTagSinglePayload(v32, 1, v37) == 1)
  {
    goto LABEL_4;
  }

  sub_26A4D6FD8();
  v44 = v60;
  sub_26A59200C(v1, v60);
  v45 = (*(v59 + 80) + 16) & ~*(v59 + 80);
  v46 = swift_allocObject();
  v47 = sub_26A592070(v44, v46 + v45);
  MEMORY[0x28223BE20](v47);
  *(&v58 - 2) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE3E8);
  sub_26A59213C();
  v48 = v61;
  sub_26A8510D8();
  v49 = v63;
  sub_26A84F578();
  v50 = OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_6_24();
  v51 = sub_26A59257C();
  v52 = v64;
  v53 = v68;
  v54 = v70;
  sub_26A850978();
  (*(v65 + 8))(v49, v54);
  (*(v62 + 8))(v48, v53);
  v55 = v66;
  v56 = v71;
  (*(v66 + 16))(v72, v52, v71);
  swift_storeEnumTagMultiPayload();
  v75 = v53;
  v76 = v54;
  v77 = v50;
  v78 = v51;
  OUTLINED_FUNCTION_7_19();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AE3D8);
  v57 = sub_26A591F10();
  OUTLINED_FUNCTION_5_23(v57);
  sub_26A84FDF8();
  return (*(v55 + 8))(v52, v56);
}

uint64_t sub_26A591750(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800);
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3910);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10[-v4];
  v6 = a1 + *(type metadata accessor for TextPropertyView() + 32);
  v7 = type metadata accessor for ActionHandler(0);
  sub_26A5925C0(v6 + *(v7 + 44), v5);
  v8 = type metadata accessor for StandardActionHandler(0);
  if (__swift_getEnumTagSinglePayload(v5, 1, v8) == 1)
  {
    return sub_26A4D6FD8();
  }

  sub_26A84B868();
  v10[15] = 2;
  StandardActionHandler.perform(_:interactionType:)();
  sub_26A4D6FD8();
  return sub_26A592630(v5);
}

uint64_t sub_26A5918BC@<X0>(uint64_t a1@<X8>)
{
  sub_26A591900(a1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE3E8);
  *(a1 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_26A591900@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE428);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_82();
  v55 = v2;
  OUTLINED_FUNCTION_25_2();
  v47 = sub_26A84F5E8();
  OUTLINED_FUNCTION_15();
  v45 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  v44 = v6 - v5;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE430);
  OUTLINED_FUNCTION_15();
  v48 = v7;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_82();
  v46 = v9;
  OUTLINED_FUNCTION_25_2();
  v10 = sub_26A84B058();
  OUTLINED_FUNCTION_15();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_41();
  v16 = v15 - v14;
  v17 = sub_26A84AFA8();
  OUTLINED_FUNCTION_15();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_41();
  v23 = v22 - v21;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA128);
  OUTLINED_FUNCTION_15();
  v52 = v25;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v26);
  v28 = &v43 - v27;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE3D8);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v29);
  v49 = &v43 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v50 = &v43 - v32;
  v33 = sub_26A590A90();
  VRXIdiom.idiom.getter(v33, v16);
  sub_26A84B858();
  v35 = *(v12 + 8);
  v34 = v12 + 8;
  v35(v16, v10);
  sub_26A550984(&v57);
  (*(v19 + 8))(v23, v17);
  sub_26A84B878();
  sub_26A850AF8();

  if (sub_26A590BD0() & 1) != 0 && (sub_26A84B878())
  {
    v34 = v44;
    sub_26A84F5D8();
    v36 = OUTLINED_FUNCTION_4_22();
    v37 = v46;
    sub_26A850C98();
    (*(v45 + 8))(v34, v47);
    v38 = v48;
    v39 = v54;
    (*(v48 + 16))(v55, v37, v54);
    swift_storeEnumTagMultiPayload();
    v57 = v24;
    v58 = v36;
    OUTLINED_FUNCTION_8_18();
    OUTLINED_FUNCTION_13_12();
    sub_26A84FDF8();
    (*(v38 + 8))(v37, v39);
    v40 = v52;
  }

  else
  {
    v40 = v52;
    (*(v52 + 16))(v55, v28, v24);
    swift_storeEnumTagMultiPayload();
    v41 = OUTLINED_FUNCTION_4_22();
    v57 = v24;
    v58 = v41;
    OUTLINED_FUNCTION_8_18();
    OUTLINED_FUNCTION_13_12();
    sub_26A84FDF8();
  }

  (*(v40 + 8))(v28, v24);
  sub_26A49A218(v34, v50);
  sub_26A591F10();
  sub_26A850B18();
  return sub_26A49A280();
}

uint64_t TextProperty.view(bold:italic:configureText:)@<X0>(uint64_t a1@<X8>)
{
  sub_26A84B888();
  OUTLINED_FUNCTION_46();
  (*(v3 + 16))(a1, v1);
  v4 = type metadata accessor for TextPropertyView();
  v5 = a1 + v4[5];
  *v5 = swift_getKeyPath();
  *(v5 + 8) = 0;
  v6 = v4[6];
  *(a1 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0);
  swift_storeEnumTagMultiPayload();
  v7 = a1 + v4[7];
  *v7 = swift_getKeyPath();
  *(v7 + 8) = 0;
  return ActionHandler.init()(a1 + v4[8]);
}

unint64_t sub_26A591F10()
{
  result = qword_2803AE3E0;
  if (!qword_2803AE3E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AE3D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AA128);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AE3E0);
  }

  return result;
}

uint64_t sub_26A59200C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextPropertyView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A592070(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextPropertyView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A5920D4()
{
  v1 = *(type metadata accessor for TextPropertyView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_26A591750(v2);
}

unint64_t sub_26A59213C()
{
  result = qword_2803AE3F0;
  if (!qword_2803AE3F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AE3E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AE3D8);
    sub_26A591F10();
    swift_getOpaqueTypeConformance2();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AE3F0);
  }

  return result;
}

void sub_26A592274()
{
  sub_26A84B888();
  if (v0 <= 0x3F)
  {
    sub_26A4EEA70();
    if (v1 <= 0x3F)
    {
      sub_26A592340();
      if (v2 <= 0x3F)
      {
        sub_26A5923A4();
        if (v3 <= 0x3F)
        {
          type metadata accessor for ActionHandler(319);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_26A592340()
{
  if (!qword_2803ADBE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ADBC8);
    v0 = sub_26A84EEA8();
    if (!v1)
    {
      atomic_store(v0, &qword_2803ADBE0);
    }
  }
}

void sub_26A5923A4()
{
  if (!qword_2803AB788)
  {
    v0 = sub_26A84EEA8();
    if (!v1)
    {
      atomic_store(v0, &qword_2803AB788);
    }
  }
}

unint64_t sub_26A5923F4()
{
  result = qword_2803AE418;
  if (!qword_2803AE418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AE420);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AE3C0);
    sub_26A84F588();
    sub_26A4D7DCC();
    sub_26A59257C();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AE3D8);
    sub_26A591F10();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AE418);
  }

  return result;
}

unint64_t sub_26A59257C()
{
  OUTLINED_FUNCTION_196();
  result = *v2;
  if (!result)
  {
    v1(255);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

uint64_t sub_26A5925C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3910);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A592630(uint64_t a1)
{
  v2 = type metadata accessor for StandardActionHandler(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_4_22()
{
  *(v2 - 96) = v1;
  *(v2 - 88) = v0;

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_5_23(uint64_t a1)
{
  *(v2 - 120) = v1;
  *(v2 - 112) = a1;

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_7_19()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_8_18()
{

  return swift_getOpaqueTypeConformance2();
}

unint64_t OUTLINED_FUNCTION_9_18()
{

  return sub_26A4D7DCC();
}

uint64_t View.rfTextInput(text1:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_26A4EF6D0();
  v10[40] = sub_26A84ED88() & 1;
  v11 = v5;
  v12 = v6 & 1;
  type metadata accessor for Context();
  sub_26A5928CC();
  v13 = sub_26A84F678();
  v14 = v7;
  if (qword_2803A8CE0 != -1)
  {
    OUTLINED_FUNCTION_2_15();
  }

  v8 = qword_2803D1FC8;
  v17 = xmmword_2803D1FA8;
  v18 = qword_2803D1FB8;
  v19 = unk_2803D1FC0;
  v20 = qword_2803D1FC8;

  sub_26A6AEE74(__src);
  memcpy(v15, __src, sizeof(v15));
  v16 = v8;
  MEMORY[0x26D662ED0](v10, a2, &type metadata for TextInputStyle, a3);
  return sub_26A593868(v10);
}

unint64_t sub_26A5928CC()
{
  result = qword_28157D9E0;
  if (!qword_28157D9E0)
  {
    type metadata accessor for Context();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157D9E0);
  }

  return result;
}

uint64_t sub_26A592924@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v45 = a1;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE440);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v5);
  v7 = &v43 - v6;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE448);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v8);
  v10 = &v43 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE248);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v43 - v13;
  v15 = *(v2 + 64);
  if (v15)
  {
    v16 = OBJC_IVAR____TtC9SnippetUI7Context_currentIdiom;
    swift_beginAccess();
    v17 = *&v15[v16];
    v46 = v11;
    v47 = a2;
    if ((v17 - 1) >= 8)
    {
      v19 = sub_26A851E98();
      LOBYTE(v42) = 2;
      sub_26A7AEFE4(v19, 0, "SnippetUI/IdiomDependentStaticValue.swift", 41, 2, 89, "value(for:)", 11, v42, v17, v43, v44, v45, v46, v47, v48[0], v48[1], v48[2], v48[3], v48[4], v48[5], v48[6], v48[7], v48[8], v48[9], v48[10]);
      v18 = 10.0;
    }

    else
    {
      v18 = dbl_26A861870[v17 - 1];
    }

    v20 = qword_2803A8CE0;
    v21 = v15;
    if (v20 != -1)
    {
      OUTLINED_FUNCTION_2_15();
    }

    v49 = xmmword_2803D1FA8;
    v50 = *&qword_2803D1FB8;
    v51 = qword_2803D1FC8;
    sub_26A58EAE0(v21);

    v22 = sub_26A84FBF8();
    sub_26A4EF6D0();
    v23 = v48[3];
    if (v48[3])
    {
      v24 = v48[4];
      __swift_project_boxed_opaque_existential_1(v48, v48[3]);
      v25 = (*(v24 + 8))(v23, v24);
      __swift_destroy_boxed_opaque_existential_1(v48);
      sub_26A592E9C(v25, v3, v45, v10);
      sub_26A593A34();
      v26 = sub_26A851248();
    }

    else
    {
      sub_26A4DBD10(v48, &qword_2803A91B8);
      sub_26A5932B0(v45, v7);
      sub_26A4DBCC8(&qword_2803AE450, &qword_2803AE440);
      v26 = sub_26A851248();
    }

    v48[0] = v22;
    v48[1] = 0;
    LOBYTE(v48[2]) = 0;
    v48[3] = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB8C0);
    sub_26A4DBCC8(&qword_28157FB00, &qword_2803AB8C0);
    sub_26A850AF8();

    v28 = v47;
    sub_26A58BD98(v27, v18, v18);
    (*(v12 + 8))(v14, v46);
    v29 = sub_26A850238();
    sub_26A84ED48();
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v38 = v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE458) + 36);
    *v38 = v29;
    *(v38 + 8) = v31;
    *(v38 + 16) = v33;
    *(v38 + 24) = v35;
    *(v38 + 32) = v37;
    *(v38 + 40) = 0;
    sub_26A5939F4(v3, v48);
    v39 = swift_allocObject();
    memcpy((v39 + 16), v48, 0x140uLL);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE460);
    v41 = (v28 + *(result + 36));
    *v41 = sub_26A593A2C;
    v41[1] = v39;
    v41[2] = 0;
    v41[3] = 0;
  }

  else
  {
    type metadata accessor for Context();
    sub_26A5928CC();
    result = sub_26A84F668();
    __break(1u);
  }

  return result;
}

uint64_t sub_26A592E14(uint64_t a1)
{
  if (*(a1 + 64))
  {

    sub_26A84EB98();
  }

  else
  {
    type metadata accessor for Context();
    sub_26A5928CC();
    result = sub_26A84F668();
    __break(1u);
  }

  return result;
}

uint64_t sub_26A592E9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a3;
  v37 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE440);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v34 - v7;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE480);
  MEMORY[0x28223BE20](v36);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v34 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v34 - v15;
  v44[0] = sub_26A84FA78();
  v44[1] = 0;
  v45 = 1;
  if (qword_2803A9018 != -1)
  {
    swift_once();
  }

  sub_26A4EF6D0();
  sub_26A6AEE74(v48);
  memcpy(v41, v48, sizeof(v41));
  v43 = 0;
  v42 = sub_26A80A810;
  v40 = a1;
  sub_26A4EF6D0();
  sub_26A4EF6D0();
  v46 = 0;
  v47 = 1;

  sub_26A4DBD10(&v40, &qword_2803A99A0);
  sub_26A4DBD10(&v39, &qword_2803A99A0);
  sub_26A5932B0(v35, v8);
  v17 = sub_26A850258();
  v18 = *(a2 + 64);
  if (v18)
  {
    v19 = v17;
    v20 = OBJC_IVAR____TtC9SnippetUI7Context_currentIdiom;
    swift_beginAccess();
    v21 = *(v18 + v20);
    if ((v21 - 1) >= 8)
    {
      v22 = sub_26A851E98();
      LOBYTE(v33) = 2;
      sub_26A7AEFE4(v22, 0, "SnippetUI/IdiomDependentStaticValue.swift", 41, 2, 89, "value(for:)", 11, v33, v21, v34, v35, v36, v37, v38[0], v38[1], v38[2], v38[3], v38[4], v38[5], v38[6], v38[7], v38[8], v38[9], v38[10], v38[11]);
    }

    sub_26A84ED48();
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    sub_26A4EF020();
    v31 = &v13[*(v36 + 36)];
    *v31 = v19;
    *(v31 + 1) = v24;
    *(v31 + 2) = v26;
    *(v31 + 3) = v28;
    *(v31 + 4) = v30;
    v31[40] = 0;
    sub_26A4EF020();
    sub_26A4EF6D0();
    sub_26A49A344();
    sub_26A4EF6D0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE488);
    sub_26A49A344();
    sub_26A49A3A4(v16);
    sub_26A4DBD10(v44, &qword_2803A9B68);
    sub_26A49A3A4(v10);
    return sub_26A4DBD10(v38, &qword_2803A9B68);
  }

  else
  {
    type metadata accessor for Context();
    sub_26A5928CC();
    result = sub_26A84F668();
    __break(1u);
  }

  return result;
}

uint64_t sub_26A5932B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE490);
  MEMORY[0x28223BE20](v4);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE498);
  v8 = *(v7 - 8);
  v32 = v7;
  v33 = v8;
  MEMORY[0x28223BE20](v7);
  v37 = &v28 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE4A0);
  v34 = *(v10 - 8);
  v35 = v10;
  MEMORY[0x28223BE20](v10);
  v31 = &v28 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE4A8);
  (*(*(v12 - 8) + 16))(v6, a1, v12);
  v30 = v4;
  *&v6[*(v4 + 36)] = 256;
  v28 = v2;
  v14 = *(v2 + 48);
  v15 = *(v2 + 56);
  LOBYTE(v38[0]) = *(v2 + 40);
  v13 = v38[0];
  v38[1] = v14;
  LOBYTE(v38[2]) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE328);
  sub_26A84ED78();
  v29 = sub_26A593AE4();
  sub_26A850C18();

  sub_26A4DBD10(v6, &qword_2803AE490);
  LOBYTE(v38[0]) = v13;
  v38[1] = v14;
  v16 = v28;
  LOBYTE(v38[2]) = v15;
  sub_26A84ED58();
  sub_26A5939F4(v16, v38);
  v17 = swift_allocObject();
  memcpy((v17 + 16), v38, 0x140uLL);
  v38[0] = v30;
  v38[1] = v29;
  v18 = v31;
  swift_getOpaqueTypeConformance2();
  v19 = v32;
  v20 = v37;
  sub_26A850C78();

  (*(v33 + 8))(v20, v19);
  v21 = *(v16 + 64);
  if (v21)
  {
    v22 = v21;
    v23 = sub_26A61D544();

    sub_26A5939F4(v16, v38);
    v24 = swift_allocObject();
    memcpy((v24 + 16), v38, 0x140uLL);
    v25 = v36;
    (*(v34 + 32))(v36, v18, v35);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE440);
    *(v25 + *(result + 52)) = v23;
    v27 = (v25 + *(result + 56));
    *v27 = sub_26A593C84;
    v27[1] = v24;
  }

  else
  {
    type metadata accessor for Context();
    sub_26A5928CC();
    result = sub_26A84F668();
    __break(1u);
  }

  return result;
}

void sub_26A59370C(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v3 = *(a3 + 64);
  if (*a2 != 1)
  {
    if (v3)
    {
      v6 = v3;
      sub_26A620644();
      goto LABEL_6;
    }

LABEL_9:
    type metadata accessor for Context();
    sub_26A5928CC();
    sub_26A84F668();
    __break(1u);
    return;
  }

  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = v3;
  sub_26A620570();

  v5 = [objc_allocWithZone(type metadata accessor for UEIKeyboardInvocationEvent()) init];
  v6 = v4;
  sub_26A6209BC(v5);

LABEL_6:
}

uint64_t sub_26A5937E4(uint64_t result)
{
  if (*(result + 24) == 1 && *result == 4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE328);
    return sub_26A84ED68();
  }

  return result;
}

unint64_t sub_26A593898()
{
  result = qword_2803AE438;
  if (!qword_2803AE438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AE438);
  }

  return result;
}

uint64_t sub_26A5938F4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 320))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 280);
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

uint64_t sub_26A593934(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 312) = 0;
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
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 320) = 1;
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
      *(result + 280) = (a2 - 1);
      return result;
    }

    *(result + 320) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_26A593A34()
{
  result = qword_2803AE468;
  if (!qword_2803AE468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AE448);
    sub_26A4DBCC8(&qword_2803AE470, &qword_2803AE478);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AE468);
  }

  return result;
}

unint64_t sub_26A593AE4()
{
  result = qword_2803AE4B0;
  if (!qword_2803AE4B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AE490);
    sub_26A4DBCC8(&qword_2803AE4B8, &qword_2803AE4A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AE4B0);
  }

  return result;
}

uint64_t objectdestroyTm_6()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  }

  sub_26A49035C(*(v0 + 96), *(v0 + 104));
  sub_26A49035C(*(v0 + 112), *(v0 + 120));
  sub_26A49035C(*(v0 + 128), *(v0 + 136));
  sub_26A49035C(*(v0 + 144), *(v0 + 152));
  sub_26A49035C(*(v0 + 160), *(v0 + 168));
  sub_26A49035C(*(v0 + 176), *(v0 + 184));
  sub_26A49035C(*(v0 + 192), *(v0 + 200));
  sub_26A49035C(*(v0 + 208), *(v0 + 216));
  sub_26A49035C(*(v0 + 224), *(v0 + 232));
  sub_26A49035C(*(v0 + 240), *(v0 + 248));

  return swift_deallocObject();
}

unint64_t sub_26A593C8C()
{
  result = qword_2803AE4C0;
  if (!qword_2803AE4C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AE460);
    sub_26A593D18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AE4C0);
  }

  return result;
}

unint64_t sub_26A593D18()
{
  result = qword_2803AE4C8;
  if (!qword_2803AE4C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AE458);
    sub_26A593DA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AE4C8);
  }

  return result;
}

unint64_t sub_26A593DA4()
{
  result = qword_2803AE4D0;
  if (!qword_2803AE4D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AE250);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB8C0);
    sub_26A4DBCC8(&qword_28157FB00, &qword_2803AB8C0);
    swift_getOpaqueTypeConformance2();
    sub_26A4D6BF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AE4D0);
  }

  return result;
}

uint64_t sub_26A593EA0(uint64_t a1)
{
  OUTLINED_FUNCTION_5_24(a1);
  sub_26A4D7E54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE690);
  OUTLINED_FUNCTION_20_8();
  sub_26A4D7E54();
  OUTLINED_FUNCTION_8_19();
  sub_26A4D7E54();
  OUTLINED_FUNCTION_8_19();
  return sub_26A4D7E54();
}

uint64_t sub_26A593F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v4 = **a1;
  v3 = *(*a1 + 8);
  v5 = *(*a1 + 16);
  v6 = *(*a1 + 24);
  v7 = *v2;
  v8 = v2[1];
  v10 = v2[3];
  v9 = *(v2 + 16);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v13 = *v11;
  v14 = *(v11 + 8);
  v16 = *(v11 + 24);
  v17 = *(*a1 + 32);
  v15 = *(v11 + 16);
  v19 = *(v12 + 8);
  v23 = *v12;
  v18 = *v12;
  v24 = *(v12 + 24);
  v25 = *(v12 + 16);
  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v17;
  *(a2 + 40) = v7;
  *(a2 + 48) = v8;
  *(a2 + 56) = v9;
  *(a2 + 64) = v10;
  *(a2 + 72) = v13;
  *(a2 + 80) = v14;
  *(a2 + 88) = v15;
  *(a2 + 96) = v16;
  *(a2 + 104) = v18;
  *(a2 + 112) = v19;
  *(a2 + 120) = v25;
  *(a2 + 128) = v24;
  sub_26A51A308(v4);
  v20 = OUTLINED_FUNCTION_211();
  sub_26A4EF6C0(v20, v21, v9);

  sub_26A4EF6C0(v13, v14, v15);

  sub_26A4EF6C0(v23, v19, v25);
}

uint64_t sub_26A594094(uint64_t a1)
{
  OUTLINED_FUNCTION_5_24(a1);
  sub_26A4D7E54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE668);
  OUTLINED_FUNCTION_20_8();
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_15_11(v1 + *(v2 + 64));
  sub_26A4D7E54();
  OUTLINED_FUNCTION_15_11(v1 + *(v2 + 96));
  OUTLINED_FUNCTION_8_19();
  return sub_26A4D7E54();
}

void sub_26A59416C(void **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*a1 + 8);
  *a2 = **a1;
  *(a2 + 8) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE660);
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A4D7E54();
  OUTLINED_FUNCTION_15_11(a2 + *(v4 + 128));
}

uint64_t sub_26A59427C()
{
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A4D7E54();
  return sub_26A4D7E54();
}

uint64_t sub_26A594338@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = *(*a1 + 8);
  v37 = **a1;
  v4 = *(*a1 + 16);
  v35 = v4;
  v38 = *(*a1 + 24);
  *a2 = v37;
  *(a2 + 8) = v36;
  *(a2 + 16) = v4;
  *(a2 + 24) = v38;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE658);
  v6 = v5[12];
  v7 = *(a1 + 8);
  v8 = sub_26A8512C8();
  OUTLINED_FUNCTION_46();
  v10 = *(v9 + 16);
  v10(a2 + v6, v7, v8);
  v11 = a2 + v5[16];
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  v14 = *v12;
  v33 = *(v12 + 8);
  v15 = *(v12 + 16);
  v32 = v15;
  v34 = *(v12 + 24);
  *v11 = *v12;
  *(v11 + 8) = v33;
  *(v11 + 16) = v15;
  *(v11 + 24) = v34;
  v16 = a2 + v5[20];
  v30 = *(v13 + 8);
  v31 = *v13;
  v17 = *(v13 + 16);
  v18 = *(v13 + 24);
  *v16 = *v13;
  *(v16 + 8) = v30;
  *(v16 + 16) = v17;
  *(v16 + 24) = v18;
  v10(a2 + v5[24], *(a1 + 32), v8);
  v19 = a2 + v5[28];
  v20 = *(a1 + 40);
  v21 = *(a1 + 48);
  v22 = *v20;
  v23 = *(v20 + 8);
  LOBYTE(v7) = *(v20 + 16);
  v24 = *(v20 + 24);
  *v19 = *v20;
  *(v19 + 8) = v23;
  *(v19 + 16) = v7;
  *(v19 + 24) = v24;
  v25 = a2 + v5[32];
  v26 = *v21;
  v27 = *(v21 + 8);
  LOBYTE(v10) = *(v21 + 16);
  v28 = *(v21 + 24);
  *v25 = *v21;
  *(v25 + 8) = v27;
  *(v25 + 16) = v10;
  *(v25 + 24) = v28;
  sub_26A4EF6C0(v37, v36, v35);

  sub_26A4EF6C0(v14, v33, v32);

  sub_26A4EF6C0(v31, v30, v17);

  sub_26A4EF6C0(v22, v23, v7);

  sub_26A4EF6C0(v26, v27, v10);
}

uint64_t sub_26A594538@<X0>(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  v3 = **a1;
  v4 = *(*a1 + 8);
  v5 = *(*a1 + 9);
  v6 = *v2;
  v7 = v2[1];
  v8 = v2[2];
  v9 = a1[2];
  v10 = a1[3];
  v11 = *v9;
  v12 = v9[1];
  v13 = v9[2];
  v14 = *v10;
  v15 = v10[1];
  v16 = v10[2];
  v17 = a1[4];
  v18 = *v17;
  v19 = *(v17 + 8);
  v21 = *(v17 + 9);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  *(a2 + 40) = v11;
  *(a2 + 48) = v12;
  *(a2 + 56) = v13;
  *(a2 + 64) = v14;
  *(a2 + 72) = v15;
  *(a2 + 80) = v16;
  *(a2 + 88) = v18;
  *(a2 + 96) = v19;
  *(a2 + 97) = v21;
}

uint64_t sub_26A594614(uint64_t a1)
{
  OUTLINED_FUNCTION_2_21(a1);
  OUTLINED_FUNCTION_21_7();
  OUTLINED_FUNCTION_30_5();
  sub_26A4D7E54();
  OUTLINED_FUNCTION_30_5();
  OUTLINED_FUNCTION_21_7();
  OUTLINED_FUNCTION_30_5();
  return OUTLINED_FUNCTION_21_7();
}

uint64_t sub_26A5946C8(uint64_t a1)
{
  OUTLINED_FUNCTION_5_24(a1);
  OUTLINED_FUNCTION_24_8();
  OUTLINED_FUNCTION_30_5();
  OUTLINED_FUNCTION_24_8();
  OUTLINED_FUNCTION_30_5();
  OUTLINED_FUNCTION_24_8();
  OUTLINED_FUNCTION_30_5();
  OUTLINED_FUNCTION_24_8();
  return OUTLINED_FUNCTION_30_5();
}

uint64_t sub_26A594774(uint64_t a1)
{
  OUTLINED_FUNCTION_2_21(a1);
  OUTLINED_FUNCTION_21_7();
  OUTLINED_FUNCTION_21_7();
  OUTLINED_FUNCTION_21_7();
  OUTLINED_FUNCTION_21_7();
  OUTLINED_FUNCTION_21_7();
  OUTLINED_FUNCTION_21_7();
  OUTLINED_FUNCTION_21_7();
  OUTLINED_FUNCTION_21_7();
  return OUTLINED_FUNCTION_21_7();
}

uint64_t sub_26A594818(uint64_t a1)
{
  OUTLINED_FUNCTION_2_21(a1);
  OUTLINED_FUNCTION_21_7();
  OUTLINED_FUNCTION_21_7();
  OUTLINED_FUNCTION_21_7();
  OUTLINED_FUNCTION_21_7();
  OUTLINED_FUNCTION_21_7();
  OUTLINED_FUNCTION_21_7();
  OUTLINED_FUNCTION_21_7();
  return OUTLINED_FUNCTION_21_7();
}

uint64_t sub_26A5948B0(uint64_t a1)
{
  OUTLINED_FUNCTION_5_24(a1);
  OUTLINED_FUNCTION_24_8();
  OUTLINED_FUNCTION_24_8();
  OUTLINED_FUNCTION_24_8();
  OUTLINED_FUNCTION_24_8();
  OUTLINED_FUNCTION_24_8();
  OUTLINED_FUNCTION_24_8();
  return OUTLINED_FUNCTION_24_8();
}

uint64_t sub_26A594938(uint64_t a1)
{
  OUTLINED_FUNCTION_2_21(a1);
  OUTLINED_FUNCTION_21_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE610);
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A4D7E54();
  OUTLINED_FUNCTION_21_7();
  return OUTLINED_FUNCTION_21_7();
}

uint64_t sub_26A594A3C(uint64_t a1)
{
  OUTLINED_FUNCTION_5_24(a1);
  sub_26A4D7E54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE640);
  OUTLINED_FUNCTION_20_8();
  sub_26A4D7E54();
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_8_19();
  return OUTLINED_FUNCTION_8_19();
}

uint64_t sub_26A594B00(uint64_t a1)
{
  OUTLINED_FUNCTION_5_24(a1);
  sub_26A4D7E54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE628);
  OUTLINED_FUNCTION_20_8();
  OUTLINED_FUNCTION_8_19();
  sub_26A4D7E54();
  sub_26A4D7E54();
  OUTLINED_FUNCTION_8_19();
  return OUTLINED_FUNCTION_8_19();
}

uint64_t sub_26A594BCC()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for SimpleItemStandardView(0) + 20);
  v6 = *v5;
  if ((*(v5 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v6;
}

uint64_t sub_26A594D20@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26A84F988();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  type metadata accessor for SimpleItemStandardView(0);
  sub_26A4D7E54();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_26A84F3A8();
    return (*(*(v9 - 8) + 32))(a1, v8, v9);
  }

  else
  {
    sub_26A851EA8();
    v11 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_26A594F28()
{
  v0 = sub_26A84F988();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  MEMORY[0x28223BE20](v4);
  type metadata accessor for SimpleItemStandardView(0);
  sub_26A4D7E54();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26A4D7EA8();
  }

  sub_26A851EA8();
  v6 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();

  return (*(v1 + 8))(v3, v0);
}

uint64_t SimpleItemStandardView.init(text1:text2:text3:text4:text5:text6:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = type metadata accessor for SimpleItemStandardView(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_41();
  v12 = (v11 - v10);
  if (qword_2803A89D0 != -1)
  {
    OUTLINED_FUNCTION_14_11();
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADC8);
  __swift_project_value_buffer(v13, qword_2803D1900);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC908);
  OUTLINED_FUNCTION_21_7();
  sub_26A6AEE74(__src);
  memcpy(v12, __src, 0xBFuLL);
  OUTLINED_FUNCTION_10_15();
  sub_26A599210();
  v14 = &v12[v8[5]];
  *v14 = swift_getKeyPath();
  v14[8] = 0;
  v15 = v8[6];
  *&v12[v15] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  v16 = v8[7];
  *&v12[v16] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v17 = a1[3];
  v18 = a1[4];
  v19 = __swift_project_boxed_opaque_existential_1(a1, v17);
  *&v12[v8[8]] = (*(v18 + 8))(v17, v18);
  sub_26A4D7E54();
  OUTLINED_FUNCTION_29_8();
  if (v17)
  {
    v20 = OUTLINED_FUNCTION_1_24();
    v21(v20);
    OUTLINED_FUNCTION_23_0();
  }

  else
  {
    sub_26A4DBD10(v36, &qword_2803A91B8);
    v19 = 0;
  }

  *&v12[v8[9]] = v19;
  sub_26A4D7E54();
  OUTLINED_FUNCTION_29_8();
  if (v17)
  {
    v22 = OUTLINED_FUNCTION_1_24();
    v23(v22);
    OUTLINED_FUNCTION_23_0();
  }

  else
  {
    sub_26A4DBD10(v36, &qword_2803A91B8);
    v19 = 0;
  }

  *&v12[v8[10]] = v19;
  sub_26A4D7E54();
  OUTLINED_FUNCTION_29_8();
  if (v17)
  {
    v24 = OUTLINED_FUNCTION_1_24();
    v25(v24);
    OUTLINED_FUNCTION_23_0();
  }

  else
  {
    sub_26A4DBD10(v36, &qword_2803A91B8);
    v19 = 0;
  }

  *&v12[v8[11]] = v19;
  sub_26A4D7E54();
  OUTLINED_FUNCTION_29_8();
  if (v17)
  {
    v26 = OUTLINED_FUNCTION_1_24();
    v27(v26);
    OUTLINED_FUNCTION_23_0();
  }

  else
  {
    sub_26A4DBD10(v36, &qword_2803A91B8);
    v19 = 0;
  }

  *&v12[v8[12]] = v19;
  sub_26A4D7E54();
  OUTLINED_FUNCTION_29_8();
  if (v17)
  {
    v28 = OUTLINED_FUNCTION_1_24();
    v30 = v29(v28);
    OUTLINED_FUNCTION_36_3(a6);
    OUTLINED_FUNCTION_36_3(a5);
    OUTLINED_FUNCTION_36_3(a4);
    OUTLINED_FUNCTION_36_3(a3);
    OUTLINED_FUNCTION_36_3(a2);
    __swift_destroy_boxed_opaque_existential_1(v36);
  }

  else
  {
    OUTLINED_FUNCTION_9_0(a6);
    OUTLINED_FUNCTION_9_0(a5);
    OUTLINED_FUNCTION_9_0(a4);
    OUTLINED_FUNCTION_9_0(a3);
    OUTLINED_FUNCTION_9_0(a2);
    OUTLINED_FUNCTION_9_0(v36);
    v30 = 0;
  }

  *&v12[v8[13]] = v30;
  OUTLINED_FUNCTION_11_15();
  sub_26A599264();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t SimpleItemStandardView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0);
  v4 = OUTLINED_FUNCTION_79(v3);
  MEMORY[0x28223BE20](v4);
  v6 = &v16[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  v8 = OUTLINED_FUNCTION_79(v7);
  MEMORY[0x28223BE20](v8);
  sub_26A594F28();
  v18 = 0u;
  v19 = 0u;
  v20 = 1;
  sub_26A594BCC();
  sub_26A594D20(v6);
  v9 = sub_26A84F3A8();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v9);
  v17 = v1;
  sub_26A4C7884();
  v10 = swift_allocObject();
  *(v10 + 16) = sub_26A68CD04;
  *(v10 + 24) = 0;
  v11 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE4D8) + 36);
  *(v11 + 16) = swift_getKeyPath();
  *(v11 + 24) = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91D8);
  v13 = *(v12 + 40);
  *(v11 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v14 = v11 + *(v12 + 44);
  *v14 = swift_getKeyPath();
  *(v14 + 8) = 0;
  *v11 = sub_26A4D1F7C;
  *(v11 + 8) = v10;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE4E0);
  *(a1 + *(result + 36)) = 14;
  return result;
}

double sub_26A595840@<D0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - v5;
  v7 = type metadata accessor for SimpleItemStandardView(0);
  v8 = *(a1 + v7[8]);
  v9 = *(a1 + v7[9]);
  v10 = *(a1 + v7[10]);
  v11 = *(a1 + v7[11]);
  v12 = *(a1 + v7[12]);
  v13 = *(a1 + v7[13]);

  v25 = v8;

  v26 = v9;

  v24 = v11;

  sub_26A594F28();
  v14 = type metadata accessor for ActionType();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v14);
  sub_26A4DBD10(v6, &qword_2803A91C8);
  if (qword_2803A89D0 != -1)
  {
    swift_once();
  }

  HIDWORD(v23) = EnumTagSinglePayload != 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADC8);
  __swift_project_value_buffer(v16, qword_2803D1900);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC908);
  sub_26A4D7E54();
  sub_26A6AEE74(__src);
  memcpy(a2, __src, 0xBFuLL);
  sub_26A599210();
  v17 = type metadata accessor for SimpleItemStandardLayout(0);
  v18 = &a2[v17[5]];
  *v18 = swift_getKeyPath();
  v18[8] = 0;
  v19 = v17[6];
  *&a2[v19] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  v20 = &a2[v17[7]];
  v27 = 0x403E000000000000;
  sub_26A851048();
  result = v28;
  v22 = v29;
  *v20 = v28;
  *(v20 + 1) = v22;
  *&a2[v17[8]] = v25;
  *&a2[v17[9]] = v26;
  *&a2[v17[10]] = v10;
  *&a2[v17[11]] = v24;
  *&a2[v17[12]] = v12;
  *&a2[v17[13]] = v13;
  a2[v17[14]] = BYTE4(v23);
  return result;
}

uint64_t sub_26A595B68()
{
  sub_26A595BF0(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE530);
  sub_26A598C84();
  sub_26A850AF8();
  return OUTLINED_FUNCTION_11_5(v2);
}

uint64_t sub_26A595BF0(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v3 = sub_26A84F3A8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26A84F988();
  v24 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v2 + *(type metadata accessor for SimpleItemStandardLayout(0) + 20);
  v11 = *v10;
  if ((*(v10 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v22 = v7;
    v12 = sub_26A8501F8();
    v23 = v3;
    v13 = v12;
    sub_26A84EA78();

    v3 = v23;
    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v11, 0);
    (*(v24 + 8))(v9, v22);
    v11 = v26[0];
  }

  if (sub_26A61B05C(v11, &unk_287B13068))
  {
    sub_26A59613C();
    v14 = &qword_2803AE568;
    sub_26A4D7E54();
    v27 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE568);
  }

  else
  {
    sub_26A72003C(v6);
    v15 = sub_26A84F388();
    (*(v4 + 8))(v6, v3);
    if ((v15 & 1) == 0)
    {
      v29[0] = sub_26A84FA38();
      v29[1] = 0;
      v30 = 1;
      sub_26A5963C8(v2, v31);
      KeyPath = swift_getKeyPath();
      v19 = swift_getKeyPath();
      v31[242] = KeyPath;
      v32 = 0;
      v33 = v19;
      v34 = 0;
      v35 = 1;
      sub_26A4D7E54();
      v28 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE558);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE5D8);
      sub_26A598D94();
      sub_26A599158();
      sub_26A84FDF8();
      v16 = v29;
      v17 = &qword_2803AE5D8;
      return sub_26A4DBD10(v16, v17);
    }

    v26[0] = sub_26A84FC08();
    v26[1] = 0;
    LOBYTE(v26[2]) = 1;
    sub_26A596AB8(v2);
    sub_26A851458();
    sub_26A84F628();
    memcpy(v25, v26, 0x738uLL);
    v14 = &qword_2803AE5B8;
    sub_26A4D7E54();
    v27 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE568);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE5B8);
  sub_26A598E20();
  sub_26A5990A0();
  sub_26A84FDF8();
  sub_26A4D7E54();
  v28 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE558);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE5D8);
  sub_26A598D94();
  sub_26A599158();
  sub_26A84FDF8();
  sub_26A4DBD10(v29, &qword_2803AE558);
  v16 = v25;
  v17 = v14;
  return sub_26A4DBD10(v16, v17);
}

uint64_t sub_26A59613C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB208);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v17 - v2;
  v4 = type metadata accessor for SimpleItemStandardLayout(0);
  if (*(v0 + *(v4 + 56)) == 1)
  {
    v17[0] = sub_26A84FA78();
    v17[1] = 0;
    v18 = 1;
    sub_26A597230(v0, v19);
    v5 = sub_26A8502A8();
    sub_26A84ED48();
    v19[800] = v5;
    v20 = v6;
    v21 = v7;
    v22 = v8;
    v23 = v9;
    v24 = 0;
    sub_26A4D7E54();
    v30 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE578);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE598);
    sub_26A598EAC();
    sub_26A598F64();
    sub_26A84FDF8();
    return sub_26A4DBD10(v17, &qword_2803AE578);
  }

  else
  {
    v11 = *(v0 + *(v4 + 32));
    if (v11)
    {

      sub_26A8503A8();
      v12 = sub_26A850338();
      __swift_storeEnumTagSinglePayload(v3, 1, 1, v12);
      v13 = sub_26A8503E8();
      sub_26A4DBD10(v3, &qword_2803AB208);
      KeyPath = swift_getKeyPath();
      v15 = swift_getKeyPath();
      v16 = 2;
    }

    else
    {
      KeyPath = 0;
      v13 = 0;
      v15 = 0;
      v16 = 0;
    }

    v25 = v11;
    v26 = KeyPath;
    v27 = v13;
    v28 = v15;
    v29 = v16;
    v30 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE578);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE598);
    sub_26A598EAC();
    sub_26A598F64();
    return sub_26A84FDF8();
  }
}

uint64_t sub_26A5963C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26A84FC08();
  v5 = *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC908) + 28));
  v11[0] = v4;
  v11[1] = v5;
  v12 = 0;
  sub_26A5967AC(a1, sub_26A596588, sub_26A596640, sub_26A5966F4);
  v9[0] = sub_26A84FC18();
  v9[1] = v5;
  v10 = 0;
  sub_26A5967AC(a1, sub_26A59689C, sub_26A596950, sub_26A596A04);
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A4D7E54();
  *(a2 + 960) = 0;
  *(a2 + 968) = 1;
  sub_26A4D7E54();
  sub_26A4DBD10(v9, &qword_2803AE608);
  sub_26A4DBD10(v11, &qword_2803AE608);
  sub_26A4DBD10(&v7, &qword_2803AE608);
  return sub_26A4DBD10(v8, &qword_2803AE608);
}

uint64_t sub_26A596588()
{
  if (*(v1 + *(OUTLINED_FUNCTION_35_5() + 48)))
  {
    if (qword_28157E6A8 != -1)
    {
      OUTLINED_FUNCTION_3_22();
    }

    sub_26A4D7E54();
    sub_26A6AEE74(v13);
    OUTLINED_FUNCTION_19_9();
    OUTLINED_FUNCTION_0_22();
    KeyPath = swift_getKeyPath();
    OUTLINED_FUNCTION_7_20(KeyPath, v3, v4, v5, v6, v7, v8, v9, v11, v12);
    *(v0 + 296) = &v12;
    *(v0 + 304) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_34_6();
  }
}

uint64_t sub_26A596640()
{
  if (*(v0 + *(OUTLINED_FUNCTION_35_5() + 32)))
  {
    if (qword_2803A9018 != -1)
    {
      OUTLINED_FUNCTION_14_9();
    }

    sub_26A4D7E54();
    sub_26A6AEE74(v12);
    OUTLINED_FUNCTION_19_9();
    OUTLINED_FUNCTION_0_22();
    KeyPath = swift_getKeyPath();
    OUTLINED_FUNCTION_7_20(KeyPath, v2, v3, v4, v5, v6, v7, v8, v10, v11);
    OUTLINED_FUNCTION_17_8();
  }

  else
  {
    OUTLINED_FUNCTION_34_6();
  }
}

uint64_t sub_26A5966F4()
{
  if (*(v1 + *(OUTLINED_FUNCTION_35_5() + 40)))
  {
    if (qword_28157E6A8 != -1)
    {
      OUTLINED_FUNCTION_3_22();
    }

    sub_26A4D7E54();
    sub_26A6AEE74(v13);
    OUTLINED_FUNCTION_19_9();
    OUTLINED_FUNCTION_0_22();
    KeyPath = swift_getKeyPath();
    OUTLINED_FUNCTION_7_20(KeyPath, v3, v4, v5, v6, v7, v8, v9, v11, v12);
    *(v0 + 296) = &v12;
    *(v0 + 304) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_34_6();
  }
}

uint64_t sub_26A5967AC(uint64_t a1, void *(*a2)(void *__return_ptr), void *(*a3)(void *__return_ptr, void *), void (*a4)(void *__return_ptr, void *))
{
  v6 = a2(v14);
  v7 = a3(v13, v6);
  a4(v12, v7);
  OUTLINED_FUNCTION_31_7();
  OUTLINED_FUNCTION_31_7();
  OUTLINED_FUNCTION_31_7();
  OUTLINED_FUNCTION_31_7();
  OUTLINED_FUNCTION_31_7();
  OUTLINED_FUNCTION_31_7();
  OUTLINED_FUNCTION_32_5(v12);
  OUTLINED_FUNCTION_32_5(v13);
  OUTLINED_FUNCTION_32_5(v14);
  OUTLINED_FUNCTION_32_5(&v9);
  OUTLINED_FUNCTION_32_5(v10);
  return OUTLINED_FUNCTION_32_5(v11);
}

uint64_t sub_26A59689C()
{
  if (*(v0 + *(OUTLINED_FUNCTION_35_5() + 52)))
  {
    if (qword_28157E6A8 != -1)
    {
      OUTLINED_FUNCTION_3_22();
    }

    sub_26A4D7E54();
    sub_26A6AEE74(v12);
    OUTLINED_FUNCTION_19_9();
    OUTLINED_FUNCTION_0_22();
    KeyPath = swift_getKeyPath();
    OUTLINED_FUNCTION_7_20(KeyPath, v2, v3, v4, v5, v6, v7, v8, v10, v11);
    OUTLINED_FUNCTION_17_8();
  }

  else
  {
    OUTLINED_FUNCTION_34_6();
  }
}

uint64_t sub_26A596950()
{
  if (*(v0 + *(OUTLINED_FUNCTION_35_5() + 36)))
  {
    if (qword_2803A9018 != -1)
    {
      OUTLINED_FUNCTION_14_9();
    }

    sub_26A4D7E54();
    sub_26A6AEE74(v12);
    OUTLINED_FUNCTION_19_9();
    OUTLINED_FUNCTION_0_22();
    KeyPath = swift_getKeyPath();
    OUTLINED_FUNCTION_7_20(KeyPath, v2, v3, v4, v5, v6, v7, v8, v10, v11);
    OUTLINED_FUNCTION_17_8();
  }

  else
  {
    OUTLINED_FUNCTION_34_6();
  }
}

uint64_t sub_26A596A04()
{
  if (*(v0 + *(OUTLINED_FUNCTION_35_5() + 44)))
  {
    if (qword_28157E6A8 != -1)
    {
      OUTLINED_FUNCTION_3_22();
    }

    sub_26A4D7E54();
    sub_26A6AEE74(v12);
    OUTLINED_FUNCTION_19_9();
    OUTLINED_FUNCTION_0_22();
    KeyPath = swift_getKeyPath();
    OUTLINED_FUNCTION_7_20(KeyPath, v2, v3, v4, v5, v6, v7, v8, v10, v11);
    OUTLINED_FUNCTION_17_8();
  }

  else
  {
    OUTLINED_FUNCTION_34_6();
  }
}

uint64_t sub_26A596AB8(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v3 = type metadata accessor for SimpleItemStandardLayout(0);
  v4 = *(v2 + v3[12]);
  if (v4)
  {
    if (qword_28157E6A0 != -1)
    {
      swift_once();
    }

    sub_26A4D7E54();
    sub_26A6AEE74(__src);
    memcpy(&v55[8], __src, 0xBFuLL);
    *&v55[288] = 0;
    *&v55[280] = sub_26A80A810;
    *v55 = v4;
  }

  else
  {
    bzero(v55, 0x128uLL);
  }

  memcpy(__dst, v55, sizeof(__dst));
  v5 = *(v2 + v3[8]);
  if (v5)
  {
    v6 = qword_2803A9018;

    if (v6 != -1)
    {
      swift_once();
    }

    sub_26A4D7E54();
    sub_26A6AEE74(v63);
    memcpy(&v55[8], v63, 0xBFuLL);
    *&v55[288] = 0;
    *&v55[280] = sub_26A80A810;
    *v55 = v5;
  }

  else
  {
    bzero(v55, 0x128uLL);
  }

  memcpy(v60, v55, sizeof(v60));
  v7 = *(v2 + v3[10]);
  if (v7)
  {
    v8 = qword_28157E6A0;

    if (v8 != -1)
    {
      swift_once();
    }

    sub_26A4D7E54();
    sub_26A6AEE74(v64);
    memcpy(&v55[8], v64, 0xBFuLL);
    *&v55[288] = 0;
    *&v55[280] = sub_26A80A810;
    *v55 = v7;

    v9 = sub_26A850268();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC908);
    sub_26A84ED48();
    *(&v11 + 1) = v10;
    *(&v13 + 1) = v12;
    v14 = *v55;
    v15 = *&v55[16];
    v16 = *&v55[32];
    v17 = *&v55[48];
    v18 = *&v55[64];
    v19 = *&v55[80];
    v20 = *&v55[96];
    v21 = *&v55[112];
    v22 = *&v55[128];
    v23 = *&v55[144];
    v24 = *&v55[160];
    v25 = *&v55[176];
    v26 = *&v55[192];
    v27 = *&v55[208];
    v28 = *&v55[224];
    v29 = *&v55[240];
    v30 = *&v55[256];
    v31 = *&v55[272];
    v32 = *&v55[288];
    v33 = v9;
    LOBYTE(v43[0]) = 0;
  }

  else
  {
    LOBYTE(v43[0]) = 0;

    v33 = 0;
    v32 = 0;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
    v20 = 0uLL;
    v21 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    v24 = 0uLL;
    v25 = 0uLL;
    v26 = 0uLL;
    v27 = 0uLL;
    v28 = 0uLL;
    v29 = 0uLL;
    v30 = 0uLL;
    v31 = 0uLL;
    v11 = 0uLL;
    v13 = 0uLL;
  }

  *v55 = v14;
  *&v55[16] = v15;
  *&v55[32] = v16;
  *&v55[48] = v17;
  *&v55[64] = v18;
  *&v55[80] = v19;
  *&v55[96] = v20;
  *&v55[112] = v21;
  *&v55[128] = v22;
  *&v55[144] = v23;
  *&v55[160] = v24;
  *&v55[176] = v25;
  *&v55[192] = v26;
  *&v55[208] = v27;
  *&v55[224] = v28;
  *&v55[240] = v29;
  *&v55[256] = v30;
  *&v55[272] = v31;
  *&v55[288] = v32;
  v56 = v33;
  v57 = v11;
  v58 = v13;
  v59 = v43[0];
  v34 = *(v2 + v3[13]);
  if (v34)
  {
    if (qword_28157E6A0 != -1)
    {
      swift_once();
    }

    sub_26A4D7E54();
    sub_26A6AEE74(v65);
    memcpy(&v43[1], v65, 0xBFuLL);
    v43[36] = 0;
    v43[35] = sub_26A80A810;
    v43[0] = v34;
  }

  else
  {
    bzero(v43, 0x128uLL);
  }

  memcpy(v54, v43, sizeof(v54));
  v35 = *(v2 + v3[9]);
  if (v35)
  {
    v36 = qword_2803A9018;

    if (v36 != -1)
    {
      swift_once();
    }

    sub_26A4D7E54();
    sub_26A6AEE74(v66);
    memcpy(&v43[1], v66, 0xBFuLL);
    v43[36] = 0;
    v43[35] = sub_26A80A810;
    v43[0] = v35;
  }

  else
  {
    bzero(v43, 0x128uLL);
  }

  memcpy(v53, v43, sizeof(v53));
  v37 = *(v2 + v3[11]);
  if (v37)
  {
    v38 = qword_28157E6A0;

    if (v38 != -1)
    {
      swift_once();
    }

    sub_26A4D7E54();
    sub_26A6AEE74(v67);
    memcpy(&v43[1], v67, 0xBFuLL);
    v43[36] = 0;
    v43[35] = sub_26A80A810;
    v43[0] = v37;
  }

  else
  {
    bzero(v43, 0x128uLL);
  }

  memcpy(v52, v43, sizeof(v52));
  sub_26A4D7E54();
  v46 = v45;
  sub_26A4D7E54();
  v47 = v44;
  sub_26A4D7E54();
  v48 = v43;
  sub_26A4D7E54();
  v49 = v42;
  sub_26A4D7E54();
  v50 = v41;
  sub_26A4D7E54();
  v51 = v40;
  sub_26A59427C();

  sub_26A4DBD10(v52, &qword_2803AA888);
  sub_26A4DBD10(v53, &qword_2803AA888);
  sub_26A4DBD10(v54, &qword_2803AA888);
  sub_26A4DBD10(v55, &qword_2803AA890);
  sub_26A4DBD10(v60, &qword_2803AA888);
  sub_26A4DBD10(__dst, &qword_2803AA888);
  sub_26A4DBD10(v40, &qword_2803AA888);
  sub_26A4DBD10(v41, &qword_2803AA888);
  sub_26A4DBD10(v42, &qword_2803AA888);
  sub_26A4DBD10(v43, &qword_2803AA890);
  sub_26A4DBD10(v44, &qword_2803AA888);
  return sub_26A4DBD10(v45, &qword_2803AA888);
}

uint64_t sub_26A597230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SimpleItemStandardLayout(0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v43[0] = sub_26A84FC08();
  v43[1] = 0;
  v44 = 1;
  sub_26A597654(a1, v45);
  sub_26A599210();
  v6 = swift_allocObject();
  sub_26A599264();
  v7 = sub_26A851448();
  v45[44] = sub_26A8027E0;
  v45[45] = 0;
  v45[46] = v7;
  v45[47] = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_26A5992B8;
  *(v9 + 24) = v6;
  v45[48] = sub_26A52E998;
  v45[49] = v9;
  v10 = (a1 + *(v5 + 36));
  v11 = *v10;
  v12 = v10[1];
  *&v36[0] = v11;
  *(&v36[0] + 1) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB9F8);
  sub_26A851058();
  sub_26A851458();
  sub_26A84F028();
  v13 = *(a1 + *(v5 + 44));
  if (v13)
  {
    if (qword_28157E6A8 != -1)
    {
      swift_once();
    }

    sub_26A4D7E54();
    sub_26A6AEE74(v46);
    memcpy(v36 + 8, v46, 0xBFuLL);
    v38 = 0;
    *(&v37 + 1) = sub_26A80A810;
    *&v36[0] = v13;
    KeyPath = swift_getKeyPath();
    v15 = v36[0];
    v16 = v36[1];
    v17 = v36[2];
    v18 = v36[3];
    v19 = v36[4];
    v20 = v36[5];
    v21 = v36[6];
    v22 = v36[7];
    v23 = v36[8];
    v24 = v36[9];
    v25 = v36[10];
    v26 = v36[11];
    v27 = v36[12];
    v28 = v36[13];
    v29 = v36[14];
    v30 = v36[15];
    v31 = v36[16];
    v32 = v37;
    v33 = v38;
  }

  else
  {
    v33 = 0;
    KeyPath = 0;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
    v20 = 0uLL;
    v21 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    v24 = 0uLL;
    v25 = 0uLL;
    v26 = 0uLL;
    v27 = 0uLL;
    v28 = 0uLL;
    v29 = 0uLL;
    v30 = 0uLL;
    v31 = 0uLL;
    v32 = 0uLL;
  }

  v39[0] = v15;
  v39[1] = v16;
  v39[2] = v17;
  v39[3] = v18;
  v39[4] = v19;
  v39[5] = v20;
  v39[6] = v21;
  v39[7] = v22;
  v39[8] = v23;
  v39[9] = v24;
  v39[10] = v25;
  v39[11] = v26;
  v39[12] = v27;
  v39[13] = v28;
  v39[14] = v29;
  v39[15] = v30;
  v39[16] = v31;
  v39[17] = v32;
  v40 = v33;
  v41 = KeyPath;
  v42 = 0;
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A4D7E54();
  *(a2 + 472) = 0;
  *(a2 + 480) = 1;
  sub_26A4D7E54();

  sub_26A4DBD10(v39, &qword_2803AE5F8);
  sub_26A4DBD10(v43, &qword_2803AE5F0);
  sub_26A4DBD10(&v35, &qword_2803AE5F8);
  return sub_26A4DBD10(v36, &qword_2803AE5F0);
}

uint64_t sub_26A597654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB208);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v37 - v5;
  v7 = type metadata accessor for SimpleItemStandardLayout(0);
  v8 = *(a1 + *(v7 + 32));
  if (v8)
  {

    sub_26A8503A8();
    v9 = sub_26A850338();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v9);
    v10 = sub_26A8503E8();
    sub_26A4DBD10(v6, &qword_2803AB208);
    KeyPath = swift_getKeyPath();
    v12 = swift_getKeyPath();
    v13 = 0x10000;
  }

  else
  {
    KeyPath = 0;
    v10 = 0;
    v12 = 0;
    v13 = 0;
  }

  v14 = *(a1 + *(v7 + 40));
  if (v14)
  {
    if (qword_28157E6A8 != -1)
    {
      swift_once();
    }

    sub_26A4D7E54();
    sub_26A6AEE74(v49);
    memcpy(v39 + 8, v49, 0xBFuLL);
    v45 = 0;
    *(&v44 + 1) = sub_26A80A810;
    *&v39[0] = v14;
    v15 = swift_getKeyPath();
    v16 = v39[0];
    v17 = v39[1];
    v18 = v39[2];
    v19 = v39[3];
    v20 = v39[4];
    v21 = v39[5];
    v22 = v39[6];
    v23 = v39[7];
    v24 = v39[8];
    v25 = v39[9];
    v26 = v39[10];
    v27 = v39[11];
    v28 = v39[12];
    v29 = v40;
    v30 = v41;
    v31 = v42;
    v32 = v43;
    v33 = v44;
    v34 = 0x10000;
    v35 = v45;
  }

  else
  {
    v35 = 0;
    v15 = 0;
    v34 = 0;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
    v20 = 0uLL;
    v21 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    v24 = 0uLL;
    v25 = 0uLL;
    v26 = 0uLL;
    v27 = 0uLL;
    v28 = 0uLL;
    v29 = 0uLL;
    v30 = 0uLL;
    v31 = 0uLL;
    v32 = 0uLL;
    v33 = 0uLL;
  }

  v39[0] = v16;
  v39[1] = v17;
  v39[2] = v18;
  v39[3] = v19;
  v39[4] = v20;
  v39[5] = v21;
  v39[6] = v22;
  v39[7] = v23;
  v39[8] = v24;
  v39[9] = v25;
  v39[10] = v26;
  v39[11] = v27;
  v39[12] = v28;
  v40 = v29;
  v41 = v30;
  v42 = v31;
  v43 = v32;
  v44 = v33;
  v45 = v35;
  v46 = v15;
  v47 = v34;
  v48 = BYTE2(v34);
  sub_26A4D7E54();
  *a2 = v8;
  *(a2 + 8) = KeyPath;
  *(a2 + 16) = v10;
  *(a2 + 24) = v12;
  *(a2 + 34) = BYTE2(v13);
  *(a2 + 32) = v13;
  sub_26A4D7E54();

  sub_26A59932C(v8);
  sub_26A4DBD10(v39, &qword_2803AE600);
  sub_26A4DBD10(&v38, &qword_2803AE600);
  return sub_26A599390(v8);
}

uint64_t sub_26A5979A0()
{
  type metadata accessor for SimpleItemStandardLayout(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB9F8);
  return sub_26A851068();
}

uint64_t sub_26A597A1C()
{
  v1 = v0;
  v116 = sub_26A84BAB8();
  OUTLINED_FUNCTION_15();
  v103 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_41();
  v102 = v5 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800);
  v7 = OUTLINED_FUNCTION_79(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_19();
  v115 = v8;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v9);
  v110 = &v101 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA830);
  v12 = OUTLINED_FUNCTION_79(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_19();
  v104 = v13;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v14);
  v16 = &v101 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA838);
  v18 = OUTLINED_FUNCTION_79(v17);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_19();
  v106 = v19;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v20);
  v105 = &v101 - v21;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v22);
  v24 = &v101 - v23;
  v25 = sub_26A84B888();
  OUTLINED_FUNCTION_15();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_41();
  v31 = v30 - v29;
  v108 = type metadata accessor for SimpleItemStandardView(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v32);
  v34 = &v101 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v117 = &v101 - v36;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAB40);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v37);
  v111 = &v101 - v38;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAB48);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_19();
  v113 = v40;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v41);
  v112 = &v101 - v42;
  sub_26A84C9D8();
  v107 = TextProperty.asAnyView()();
  v43 = *(v27 + 8);
  v43(v31, v25);
  v44 = v0;
  sub_26A84C9E8();
  OUTLINED_FUNCTION_40_4(v24);
  if (v45)
  {
    sub_26A4DBD10(v24, &qword_2803AA838);
    OUTLINED_FUNCTION_2_0();
    v124[1] = 0;
    v124[2] = 0;
  }

  else
  {
    v0 = TextProperty.asAnyView()();
    v43(v24, v25);
    v46 = &protocol witness table for AnyView;
    v47 = MEMORY[0x277CE11C8];
  }

  v124[0] = v0;
  v124[3] = v47;
  v124[4] = v46;
  v48 = v1;
  sub_26A84C9F8();
  v49 = sub_26A84D098();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v49);
  v51 = v104;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A4DBD10(v16, &qword_2803AA830);
    OUTLINED_FUNCTION_2_0();
    v123[1] = 0;
    v123[2] = 0;
  }

  else
  {
    v48 = v16;
    MultilineTextProperty.asAnyView()();
    OUTLINED_FUNCTION_29();
    (*(v54 + 8))(v16, v49);
    v52 = &protocol witness table for AnyView;
    v53 = MEMORY[0x277CE11C8];
  }

  v123[0] = v48;
  v123[3] = v53;
  v123[4] = v52;
  v55 = v44;
  v56 = v44;
  sub_26A84CA08();
  if (__swift_getEnumTagSinglePayload(v51, 1, v49) == 1)
  {
    sub_26A4DBD10(v51, &qword_2803AA830);
    OUTLINED_FUNCTION_2_0();
    v122[1] = 0;
    v122[2] = 0;
  }

  else
  {
    v56 = v51;
    MultilineTextProperty.asAnyView()();
    OUTLINED_FUNCTION_29();
    (*(v59 + 8))(v51, v49);
    v57 = &protocol witness table for AnyView;
    v58 = MEMORY[0x277CE11C8];
  }

  v61 = v105;
  v60 = v106;
  v122[0] = v56;
  v122[3] = v58;
  v122[4] = v57;
  v62 = v55;
  sub_26A84CA18();
  OUTLINED_FUNCTION_40_4(v61);
  v63 = v111;
  if (v45)
  {
    sub_26A4DBD10(v61, &qword_2803AA838);
    OUTLINED_FUNCTION_2_0();
    v121[1] = 0;
    v121[2] = 0;
  }

  else
  {
    v62 = TextProperty.asAnyView()();
    v43(v61, v25);
    v64 = &protocol witness table for AnyView;
    v65 = MEMORY[0x277CE11C8];
  }

  v121[0] = v62;
  v121[3] = v65;
  v121[4] = v64;
  v66 = v55;
  sub_26A84CA28();
  OUTLINED_FUNCTION_40_4(v60);
  if (v45)
  {
    sub_26A4DBD10(v60, &qword_2803AA838);
    OUTLINED_FUNCTION_2_0();
    v120[1] = 0;
    v120[2] = 0;
  }

  else
  {
    v66 = TextProperty.asAnyView()();
    v43(v60, v25);
    v67 = &protocol witness table for AnyView;
    v68 = MEMORY[0x277CE11C8];
  }

  v120[0] = v66;
  v120[3] = v68;
  v120[4] = v67;
  if (qword_2803A89D0 != -1)
  {
    OUTLINED_FUNCTION_14_11();
  }

  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADC8);
  __swift_project_value_buffer(v69, qword_2803D1900);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC908);
  OUTLINED_FUNCTION_21_7();
  sub_26A6AEE74(v125);
  memcpy(v34, v125, 0xBFuLL);
  OUTLINED_FUNCTION_10_15();
  sub_26A599210();
  v70 = v108;
  v71 = &v34[*(v108 + 20)];
  *v71 = swift_getKeyPath();
  v71[8] = 0;
  v72 = v70[6];
  *&v34[v72] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  v73 = v70[7];
  *&v34[v73] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  *&v34[v70[8]] = v107;
  sub_26A4D7E54();
  if (v119)
  {
    v74 = OUTLINED_FUNCTION_2_23();
    v75(v74);
    OUTLINED_FUNCTION_42_4();
  }

  else
  {
    sub_26A4DBD10(v118, &qword_2803A91B8);
    v73 = 0;
  }

  v76 = v116;
  *&v34[v70[9]] = v73;
  sub_26A4D7E54();
  if (v119)
  {
    v77 = OUTLINED_FUNCTION_2_23();
    v78(v77);
    OUTLINED_FUNCTION_42_4();
  }

  else
  {
    sub_26A4DBD10(v118, &qword_2803A91B8);
    v73 = 0;
  }

  *&v34[v70[10]] = v73;
  sub_26A4D7E54();
  if (v119)
  {
    v79 = OUTLINED_FUNCTION_2_23();
    v80(v79);
    OUTLINED_FUNCTION_42_4();
  }

  else
  {
    sub_26A4DBD10(v118, &qword_2803A91B8);
    v73 = 0;
  }

  *&v34[v70[11]] = v73;
  sub_26A4D7E54();
  if (v119)
  {
    v81 = OUTLINED_FUNCTION_2_23();
    v82(v81);
    OUTLINED_FUNCTION_42_4();
  }

  else
  {
    sub_26A4DBD10(v118, &qword_2803A91B8);
    v73 = 0;
  }

  *&v34[v70[12]] = v73;
  sub_26A4D7E54();
  if (v119)
  {
    v83 = OUTLINED_FUNCTION_2_23();
    v85 = v84(v83);
    OUTLINED_FUNCTION_11_5(v120);
    OUTLINED_FUNCTION_11_5(v121);
    OUTLINED_FUNCTION_11_5(v122);
    OUTLINED_FUNCTION_11_5(v123);
    OUTLINED_FUNCTION_11_5(v124);
    __swift_destroy_boxed_opaque_existential_1(v118);
  }

  else
  {
    OUTLINED_FUNCTION_9_0(v120);
    OUTLINED_FUNCTION_9_0(v121);
    OUTLINED_FUNCTION_9_0(v122);
    OUTLINED_FUNCTION_9_0(v123);
    OUTLINED_FUNCTION_9_0(v124);
    OUTLINED_FUNCTION_9_0(v118);
    v85 = 0;
  }

  *&v34[v70[13]] = v85;
  OUTLINED_FUNCTION_11_15();
  sub_26A599264();
  sub_26A84CA38();
  v86 = v115;
  sub_26A4D7EA8();
  if (__swift_getEnumTagSinglePayload(v86, 1, v76) == 1)
  {
    sub_26A4DBD10(v86, &qword_2803B3800);
    KeyPath = swift_getKeyPath();
    v88 = (v63 + *(v109 + 36));
    v89 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0) + 28);
    v90 = type metadata accessor for ActionType();
    __swift_storeEnumTagSinglePayload(v88 + v89, 1, 1, v90);
    *v88 = KeyPath;
  }

  else
  {
    v91 = v102;
    v92 = *(v103 + 32);
    v92(v102, v86, v76);
    v93 = swift_getKeyPath();
    v94 = (v63 + *(v109 + 36));
    v95 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0) + 28);
    v92(v94 + v95, v91, v76);
    v96 = type metadata accessor for ActionType();
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v94 + v95, 0, 1, v96);
    *v94 = v93;
  }

  sub_26A599264();
  v97 = sub_26A84C998();
  v98 = v112;
  sub_26A4DD5FC(v97);

  sub_26A4DBD10(v63, &qword_2803AAB40);
  sub_26A84C9A8();

  OUTLINED_FUNCTION_21_7();
  sub_26A5993F0();
  v99 = sub_26A851248();
  OUTLINED_FUNCTION_9_0(v98);
  return v99;
}

uint64_t sub_26A598630(uint64_t a1)
{
  result = sub_26A59961C(&qword_2803AE4E8, MEMORY[0x277D633D8]);
  *(a1 + 8) = result;
  return result;
}

void sub_26A5986B0()
{
  sub_26A59883C(319, &qword_2803AE500, type metadata accessor for SimpleItemConstants, type metadata accessor for EnvironmentConstant);
  if (v0 <= 0x3F)
  {
    sub_26A59883C(319, &qword_2803A9218, type metadata accessor for VRXIdiom, MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_26A59883C(319, &qword_2803A9230, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_26A4D27F4();
        if (v3 <= 0x3F)
        {
          sub_26A598C18(319, &qword_2803A9240, MEMORY[0x277CE11C8], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_26A59883C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_26A5988A0()
{
  result = qword_2803AE508;
  if (!qword_2803AE508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AE4E0);
    sub_26A59892C();
    sub_26A4DBA00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AE508);
  }

  return result;
}

unint64_t sub_26A59892C()
{
  result = qword_2803AE510;
  if (!qword_2803AE510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AE4D8);
    sub_26A4DBCC8(&qword_2803AE518, &qword_2803AA0F8);
    sub_26A4DBCC8(qword_28157DD90, &qword_2803A91D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AE510);
  }

  return result;
}

void sub_26A598A58()
{
  sub_26A59883C(319, &qword_2803AE500, type metadata accessor for SimpleItemConstants, type metadata accessor for EnvironmentConstant);
  if (v0 <= 0x3F)
  {
    sub_26A59883C(319, &qword_2803A9218, type metadata accessor for VRXIdiom, MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_26A59883C(319, &qword_2803A9230, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_26A598C18(319, &qword_2803AB798, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_26A598C18(319, &qword_2803A9240, MEMORY[0x277CE11C8], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_26A598C18(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_26A598C84()
{
  result = qword_2803AE538;
  if (!qword_2803AE538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AE530);
    sub_26A598D08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AE538);
  }

  return result;
}

unint64_t sub_26A598D08()
{
  result = qword_2803AE540;
  if (!qword_2803AE540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AE548);
    sub_26A598D94();
    sub_26A599158();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AE540);
  }

  return result;
}

unint64_t sub_26A598D94()
{
  result = qword_2803AE550;
  if (!qword_2803AE550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AE558);
    sub_26A598E20();
    sub_26A5990A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AE550);
  }

  return result;
}

unint64_t sub_26A598E20()
{
  result = qword_2803AE560;
  if (!qword_2803AE560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AE568);
    sub_26A598EAC();
    sub_26A598F64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AE560);
  }

  return result;
}

unint64_t sub_26A598EAC()
{
  result = qword_2803AE570;
  if (!qword_2803AE570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AE578);
    sub_26A4DBCC8(&qword_2803AE580, &qword_2803AE588);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AE570);
  }

  return result;
}

unint64_t sub_26A598F64()
{
  result = qword_2803AE590;
  if (!qword_2803AE590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AE598);
    sub_26A598FE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AE590);
  }

  return result;
}

unint64_t sub_26A598FE8()
{
  result = qword_2803AE5A0;
  if (!qword_2803AE5A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AE5A8);
    sub_26A52E598();
    sub_26A4DBCC8(&qword_2803A9C78, &qword_2803A9C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AE5A0);
  }

  return result;
}

unint64_t sub_26A5990A0()
{
  result = qword_2803AE5B0;
  if (!qword_2803AE5B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AE5B8);
    sub_26A4DBCC8(&qword_2803AE5C0, &qword_2803AE5C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AE5B0);
  }

  return result;
}

unint64_t sub_26A599158()
{
  result = qword_2803AE5D0;
  if (!qword_2803AE5D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AE5D8);
    sub_26A4DBCC8(&qword_2803AE5E0, &qword_2803AE5E8);
    sub_26A4D38BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AE5D0);
  }

  return result;
}

uint64_t sub_26A599210()
{
  OUTLINED_FUNCTION_145();
  v1(0);
  OUTLINED_FUNCTION_46();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

uint64_t sub_26A599264()
{
  OUTLINED_FUNCTION_145();
  v1(0);
  OUTLINED_FUNCTION_46();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

uint64_t sub_26A5992B8()
{
  v0 = type metadata accessor for SimpleItemStandardLayout(0);
  OUTLINED_FUNCTION_79(v0);

  return sub_26A5979A0();
}

uint64_t sub_26A59932C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26A599390(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_26A5993F0()
{
  result = qword_2803AE670;
  if (!qword_2803AE670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAB48);
    sub_26A5994A8();
    sub_26A4DBCC8(&qword_28157FB60, &qword_2803A9438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AE670);
  }

  return result;
}

unint64_t sub_26A5994A8()
{
  result = qword_2803AE678;
  if (!qword_2803AE678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAB38);
    sub_26A599534();
    sub_26A4D31BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AE678);
  }

  return result;
}

unint64_t sub_26A599534()
{
  result = qword_2803AE680;
  if (!qword_2803AE680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAB40);
    sub_26A59961C(&qword_2803AE688, type metadata accessor for SimpleItemStandardView);
    sub_26A4DBCC8(&qword_2803AA878, &unk_2803B36A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AE680);
  }

  return result;
}

uint64_t sub_26A59961C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_3_22()
{

  return swift_once();
}

void *OUTLINED_FUNCTION_7_20(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char __src)
{

  return memcpy(v10, &__src, 0x128uLL);
}

uint64_t OUTLINED_FUNCTION_8_19()
{

  return sub_26A4D7E54();
}

uint64_t OUTLINED_FUNCTION_14_11()
{

  return swift_once();
}

void OUTLINED_FUNCTION_15_11(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = v2;
  *(a1 + 8) = v3;
}

void *OUTLINED_FUNCTION_19_9()
{

  return memcpy((v0 + 8), (v1 - 224), 0xBFuLL);
}

uint64_t OUTLINED_FUNCTION_21_7()
{

  return sub_26A4D7E54();
}

uint64_t OUTLINED_FUNCTION_24_8()
{

  return sub_26A4D7E54();
}

uint64_t OUTLINED_FUNCTION_30_5()
{

  return sub_26A4D7E54();
}

uint64_t OUTLINED_FUNCTION_31_7()
{

  return sub_26A4D7E54();
}

uint64_t OUTLINED_FUNCTION_32_5(uint64_t a1)
{

  return sub_26A4DBD10(a1, v1);
}

void OUTLINED_FUNCTION_34_6()
{

  bzero(v0, 0x131uLL);
}

uint64_t OUTLINED_FUNCTION_35_5()
{

  return type metadata accessor for SimpleItemStandardLayout(0);
}

uint64_t OUTLINED_FUNCTION_36_3(uint64_t a1)
{

  return sub_26A4DBD10(a1, v1);
}

uint64_t OUTLINED_FUNCTION_42_4()
{

  return __swift_destroy_boxed_opaque_existential_1(v0 + 136);
}

_BYTE *storeEnumTagSinglePayload for DeviceScreenSize(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_26A5999F0()
{
  result = qword_2803AE698;
  if (!qword_2803AE698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AE698);
  }

  return result;
}

uint64_t static ButtonStyle<>.standardSiriButton.getter@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 8) = swift_getKeyPath();
  *(a1 + 16) = 0;
  *(a1 + 24) = swift_getKeyPath();
  *(a1 + 32) = 0;
  *(a1 + 40) = swift_getKeyPath();
  *(a1 + 48) = 0;
  v2 = type metadata accessor for StandardSiriButtonStyle();
  v3 = v2[9];
  *(a1 + v3) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430);
  swift_storeEnumTagMultiPayload();
  v4 = a1 + v2[10];
  *v4 = swift_getKeyPath();
  *(v4 + 8) = 0;
  v5 = a1 + v2[11];
  result = sub_26A851048();
  *v5 = v8;
  *(v5 + 8) = v9;
  v7 = (a1 + v2[12]);
  *a1 = 256;
  *v7 = 0;
  v7[1] = 0;
  return result;
}

uint64_t static ButtonStyle<>.standardSiriButton(bold:hideIcon:isPressed:)@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 8) = swift_getKeyPath();
  *(a5 + 16) = 0;
  *(a5 + 24) = swift_getKeyPath();
  *(a5 + 32) = 0;
  *(a5 + 40) = swift_getKeyPath();
  *(a5 + 48) = 0;
  v10 = type metadata accessor for StandardSiriButtonStyle();
  v11 = v10[9];
  *(a5 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430);
  swift_storeEnumTagMultiPayload();
  v12 = a5 + v10[10];
  *v12 = swift_getKeyPath();
  *(v12 + 8) = 0;
  v13 = a5 + v10[11];
  sub_26A851048();
  *v13 = v16;
  *(v13 + 8) = v17;
  v14 = (a5 + v10[12]);
  *(a5 + 1) = a2;
  *a5 = a1;
  *v14 = a3;
  v14[1] = a4;
  return sub_26A4C2304(a3);
}

uint64_t static ButtonStyle<>.standardSiriButton(bold:hideIcon:)@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 8) = swift_getKeyPath();
  *(a3 + 16) = 0;
  *(a3 + 24) = swift_getKeyPath();
  *(a3 + 32) = 0;
  *(a3 + 40) = swift_getKeyPath();
  *(a3 + 48) = 0;
  v6 = type metadata accessor for StandardSiriButtonStyle();
  v7 = v6[9];
  *(a3 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430);
  swift_storeEnumTagMultiPayload();
  v8 = a3 + v6[10];
  *v8 = swift_getKeyPath();
  *(v8 + 8) = 0;
  v9 = a3 + v6[11];
  result = sub_26A851048();
  *v9 = v12;
  *(v9 + 8) = v13;
  v11 = (a3 + v6[12]);
  *(a3 + 1) = a2;
  *a3 = a1;
  *v11 = 0;
  v11[1] = 0;
  return result;
}

uint64_t sub_26A599DB0()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 8);
  if ((*(v0 + 16) & 1) == 0)
  {

    sub_26A851EA8();
    v6 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v5, 0);
    (*(v2 + 8))(v4, v1);
    return v8[1];
  }

  return v5;
}

uint64_t sub_26A599EF4()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 24);
  if (*(v0 + 32) != 1)
  {

    sub_26A851EA8();
    v6 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t StandardSiriButtonStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v43 = a1;
  v49 = a2;
  v4 = type metadata accessor for StandardSiriButtonStyle();
  v5 = v4 - 8;
  v48 = *(v4 - 8);
  v47 = *(v48 + 64);
  MEMORY[0x28223BE20](v4);
  v46 = &v41[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for StandardSiriButtonLabelStyle();
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v8);
  v10 = &v41[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE6A0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v11);
  v13 = &v41[-v12];
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE6A8);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v14);
  v16 = &v41[-v15];
  *v13 = sub_26A84FBF8();
  *(v13 + 1) = 0;
  v13[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE6B0);
  sub_26A59A4D0();
  v42 = *v3;
  v17 = v3[1];
  v18 = &v3[*(v5 + 52)];
  v19 = *v18;
  v20 = *(v18 + 1);
  v53 = v19;
  v54 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC190);
  sub_26A851078();
  v21 = v50;
  v22 = v51;
  v23 = v52;
  *(v10 + 4) = swift_getKeyPath();
  v10[40] = 0;
  v24 = v7[8];
  *&v10[v24] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430);
  swift_storeEnumTagMultiPayload();
  v25 = &v10[v7[9]];
  *v25 = swift_getKeyPath();
  v25[8] = 0;
  v26 = &v10[v7[10]];
  *v26 = swift_getKeyPath();
  v26[8] = 0;
  v27 = &v10[v7[11]];
  *v27 = swift_getKeyPath();
  v27[8] = 0;
  *v10 = v42;
  v10[1] = v17;
  *(v10 + 1) = v21;
  *(v10 + 2) = v22;
  v10[24] = v23;
  sub_26A4D7DCC();
  sub_26A59B334();
  sub_26A850948();
  sub_26A59AC80(v10);
  sub_26A4D6FD8();
  v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE6C8) + 36)] = 0;
  *&v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE6D0) + 36)] = 0x3FF0000000000000;
  sub_26A8515A8();
  v28 = &v16[*(v45 + 36)];
  __asm { FMOV            V2.2D, #1.0 }

  *v28 = _Q2;
  *(v28 + 2) = v34;
  *(v28 + 3) = v35;
  LOBYTE(v50) = sub_26A84FFC8() & 1;
  v36 = v3;
  v37 = v46;
  sub_26A59ACDC(v36, v46);
  v38 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v39 = swift_allocObject();
  sub_26A59AD40(v37, v39 + v38);
  sub_26A59AE24();
  sub_26A850C78();

  return sub_26A49AE5C();
}

uint64_t sub_26A59A4D0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE708);
  MEMORY[0x28223BE20](v0);
  v2 = &v12 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE710);
  MEMORY[0x28223BE20](v3);
  v5 = &v12 - v4;
  v6 = sub_26A84FFA8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26A599DB0();
  if (sub_26A61B05C(v10, &unk_287B13068))
  {
    sub_26A84FFB8();
    (*(v7 + 16))(v5, v9, v6);
    swift_storeEnumTagMultiPayload();
    sub_26A59B334();
    sub_26A59B378();
    sub_26A84FDF8();
    return (*(v7 + 8))(v9, v6);
  }

  else
  {
    sub_26A59A7A8(v2);
    sub_26A51D0F8(v2, v5, &qword_2803AE708);
    swift_storeEnumTagMultiPayload();
    sub_26A59B334();
    sub_26A59B378();
    sub_26A84FDF8();
    return sub_26A4D6FD8();
  }
}

uint64_t sub_26A59A7A8@<X0>(uint64_t a1@<X8>)
{
  v27[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE768);
  MEMORY[0x28223BE20](v1);
  v3 = v27 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE730);
  MEMORY[0x28223BE20](v4);
  v6 = v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE760);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE750);
  MEMORY[0x28223BE20](v11);
  v13 = v27 - v12;
  sub_26A84FFB8();
  v14 = sub_26A8502A8();
  sub_26A84ED48();
  v15 = &v10[*(v8 + 44)];
  *v15 = v14;
  *(v15 + 1) = v16;
  *(v15 + 2) = v17;
  *(v15 + 3) = v18;
  *(v15 + 4) = v19;
  v15[40] = 0;
  sub_26A851448();
  sub_26A84F628();
  sub_26A59B6BC(v10, v13);
  memcpy(&v13[*(v11 + 36)], __src, 0x70uLL);
  if (sub_26A599EF4())
  {
    sub_26A51D0F8(v13, v3, &qword_2803AE750);
    swift_storeEnumTagMultiPayload();
    sub_26A59B404();
    sub_26A59B574();
    sub_26A84FDF8();
  }

  else
  {
    v20 = sub_26A850DF8();
    v21 = sub_26A850248();
    sub_26A51D0F8(v13, v6, &qword_2803AE750);
    v22 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE740) + 36)];
    *v22 = v20;
    v22[8] = v21;
    v23 = sub_26A850E88();
    KeyPath = swift_getKeyPath();
    v25 = &v6[*(v4 + 36)];
    *v25 = KeyPath;
    v25[1] = v23;
    sub_26A51D0F8(v6, v3, &qword_2803AE730);
    swift_storeEnumTagMultiPayload();
    sub_26A59B404();
    sub_26A59B574();
    sub_26A84FDF8();
    sub_26A4D6FD8();
  }

  return sub_26A4D6FD8();
}

uint64_t sub_26A59AB38(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = (a3 + *(type metadata accessor for StandardSiriButtonStyle() + 48));
  if (*v4)
  {
    (*v4)(v3);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC190);
  return sub_26A851068();
}

uint64_t sub_26A59ABDC@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.disableCarPlayScalingEffect.getter();
  *a1 = result & 1;
  return result;
}

uint64_t type metadata accessor for StandardSiriButtonStyle()
{
  result = qword_2803AE6F0;
  if (!qword_2803AE6F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A59AC80(uint64_t a1)
{
  v2 = type metadata accessor for StandardSiriButtonLabelStyle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26A59ACDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StandardSiriButtonStyle();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A59AD40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StandardSiriButtonStyle();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A59ADA4(uint64_t a1, unsigned __int8 *a2)
{
  v5 = *(type metadata accessor for StandardSiriButtonStyle() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_26A59AB38(a1, a2, v6);
}

unint64_t sub_26A59AE24()
{
  result = qword_2803AE6D8;
  if (!qword_2803AE6D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AE6A8);
    sub_26A59AEB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AE6D8);
  }

  return result;
}

unint64_t sub_26A59AEB0()
{
  result = qword_2803AE6E0;
  if (!qword_2803AE6E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AE6D0);
    sub_26A59AF3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AE6E0);
  }

  return result;
}

unint64_t sub_26A59AF3C()
{
  result = qword_2803AE6E8;
  if (!qword_2803AE6E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AE6C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AE6A0);
    type metadata accessor for StandardSiriButtonLabelStyle();
    sub_26A4D7DCC();
    sub_26A59B334();
    swift_getOpaqueTypeConformance2();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AE6E8);
  }

  return result;
}

void sub_26A59B0F8()
{
  sub_26A59B290(319, &qword_2803A9218, type metadata accessor for VRXIdiom);
  if (v0 <= 0x3F)
  {
    sub_26A59B2E4(319, &qword_2803AB788, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_26A59B290(319, &qword_2803AC3D8, MEMORY[0x277CDF3E0]);
      if (v2 <= 0x3F)
      {
        sub_26A59B2E4(319, &qword_2803AB0C8, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_26A59B2E4(319, &qword_2803B3840, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            sub_26A586908();
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

void sub_26A59B290(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26A84EEA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_26A59B2E4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_26A59B334()
{
  OUTLINED_FUNCTION_196();
  result = *v2;
  if (!result)
  {
    v1(255);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

unint64_t sub_26A59B378()
{
  result = qword_2803AE720;
  if (!qword_2803AE720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AE708);
    sub_26A59B404();
    sub_26A59B574();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AE720);
  }

  return result;
}

unint64_t sub_26A59B404()
{
  result = qword_2803AE728;
  if (!qword_2803AE728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AE730);
    sub_26A59B4BC();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AE728);
  }

  return result;
}

unint64_t sub_26A59B4BC()
{
  result = qword_2803AE738;
  if (!qword_2803AE738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AE740);
    sub_26A59B574();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AE738);
  }

  return result;
}

unint64_t sub_26A59B574()
{
  result = qword_2803AE748;
  if (!qword_2803AE748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AE750);
    sub_26A59B600();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AE748);
  }

  return result;
}

unint64_t sub_26A59B600()
{
  result = qword_2803AE758;
  if (!qword_2803AE758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AE760);
    sub_26A59B334();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AE758);
  }

  return result;
}

uint64_t sub_26A59B6BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE760);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_26A59B72C@<D0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_3_1(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_26A59B770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26A59E2D4();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

double sub_26A59B7D4@<D0>(uint64_t a1@<X8>)
{
  sub_26A59E1B8();
  sub_26A84F998();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

void sub_26A59B870(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v1 + 352);
  v9 = *(v1 + 336);
  *v19 = *(v1 + 320);
  *&v19[16] = v9;
  v10 = *v19;
  if (HIBYTE(v20) == 1)
  {
    v11 = *&v19[24];
    v12 = *&v19[8];
    v13 = v20;
  }

  else
  {

    sub_26A851EA8();
    v14 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A505D1C();
    (*(v5 + 8))(v8, v3);
    v10 = v15[1];
    v12 = v16;
    v11 = v17;
    v13 = v18;
  }

  *a1 = v10;
  *(a1 + 8) = v12;
  *(a1 + 24) = v11;
  *(a1 + 32) = v13 & 1;
}

void sub_26A59BA00()
{
  v1 = v0;
  v2 = sub_26A84F988();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v1 + 368);
  v6 = *(v1 + 360);
  v27 = v6;
  if (v28 == 1)
  {
    if (v6)
    {
      return;
    }
  }

  else
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A505D1C();
    (*(v3 + 8))(v5, v2);
    if (v21)
    {
      return;
    }
  }

  v26 = *(v1 + 352);
  v8 = *(v1 + 336);
  v24 = *(v1 + 320);
  v25 = v8;
  if (HIBYTE(v26) == 1)
  {
    if (v26)
    {
      return;
    }

    v9 = *(&v25 + 1);
    v10 = *&v25;
    v12 = *(&v24 + 1);
    v11 = *&v24;
  }

  else
  {

    sub_26A851EA8();
    v13 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A505D1C();
    (*(v3 + 8))(v5, v2);
    if (v23)
    {
      return;
    }

    v12 = *(&v21 + 1);
    v11 = *&v21;
    v9 = *(&v22 + 1);
    v10 = *&v22;
  }

  v14 = *(v1 + 408);
  v21 = *(v1 + 392);
  v22 = v14;
  v23 = *(v1 + 424);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE860);
  sub_26A851058();
  if ((v20 & 1) == 0)
  {
    v15 = *&v19[1];
    v16 = *&v19[2];
    v17 = *&v19[3];
    v18 = *&v19[4];
    v29.origin.x = v11;
    v29.origin.y = v12;
    v29.size.width = v10;
    v29.size.height = v9;
    CGRectGetMaxY(v29);
    v30.origin.x = v15;
    v30.origin.y = v16;
    v30.size.width = v17;
    v30.size.height = v18;
    CGRectGetMaxY(v30);
  }
}

double sub_26A59BD20@<D0>(uint64_t a1@<X8>)
{
  sub_26A851448();
  sub_26A84F028();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE8A8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_26A857110;
  sub_26A850DD8();
  v3 = sub_26A850E68();

  *(v2 + 32) = v3;
  sub_26A850DD8();
  v4 = sub_26A850E68();

  *(v2 + 40) = v4;
  sub_26A850DD8();
  v5 = sub_26A850E68();

  *(v2 + 48) = v5;
  MEMORY[0x26D6635D0](v2);
  sub_26A851588();
  sub_26A851598();
  sub_26A84F238();
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE870) + 36);
  v7 = *MEMORY[0x277CE13C0];
  v8 = sub_26A8514D8();
  (*(*(v8 - 8) + 104))(a1 + v6, v7, v8);
  *a1 = v10;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12;
  *(a1 + 24) = v13;
  *(a1 + 32) = v14;
  *(a1 + 40) = v15;
  *(a1 + 48) = 256;
  *(a1 + 56) = v16;
  result = *&v17;
  *(a1 + 64) = v17;
  *(a1 + 80) = v18;
  return result;
}

uint64_t sub_26A59BF0C@<X0>(uint64_t a1@<X8>, double a2@<D2>, double a3@<D3>)
{
  v32 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE868);
  MEMORY[0x28223BE20](v6 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE870);
  MEMORY[0x28223BE20](v10 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = v30 - v12;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE838) - 8;
  MEMORY[0x28223BE20](v31);
  v15 = (v30 - v14);
  v16 = v3[28];
  v17 = v3[29] + v3[29] + a2;
  v18 = v3[24] + v16 + a3;
  *v15 = sub_26A851438();
  v15[1] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE878);
  v30[1] = v13;
  sub_26A59BD20(v13);
  *v9 = sub_26A84FBF8();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE880);
  sub_26A59C2AC(v3, &v9[*(v20 + 44)], v18 + v18, v18, v17);
  sub_26A4EF6D0();
  sub_26A4EF6D0();
  sub_26A4EF6D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE888);
  sub_26A4EF6D0();
  sub_26A505D1C();
  sub_26A505D1C();
  sub_26A505D1C();
  sub_26A505D1C();
  sub_26A851448();
  sub_26A84F028();
  v21 = (v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE848) + 36));
  v22 = v34;
  *v21 = v33;
  v21[1] = v22;
  v21[2] = v35;
  sub_26A59BA00();
  v23 = (v15 + *(v31 + 44));
  *v23 = 0;
  v23[1] = v24;
  sub_26A59BA00();
  v26 = (-v25 - v16) / a3;
  if (v26 > 1.0)
  {
    v27 = v26;
  }

  else
  {
    v27 = 1.0;
  }

  v28 = v32;
  sub_26A49B268();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE820);
  *(v28 + *(result + 36)) = v27;
  return result;
}

uint64_t sub_26A59C2AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE890);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v45 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v37 - v14;
  v16 = sub_26A84FA98();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE898);
  MEMORY[0x28223BE20](v20 - 8);
  v44 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v37 = &v37 - v23;
  v24 = a3 - a4 - *(a1 + 216);
  sub_26A851448();
  sub_26A84F028();
  v43 = v46;
  v38 = v47;
  v42 = v48;
  v39 = v49;
  v41 = v50;
  v40 = v51;
  v60 = 1;
  v59 = v47;
  v58 = v49;
  v25 = a3 - v24;
  v26 = swift_allocObject();
  v26[2] = a5;
  v26[3] = v25;
  v26[4] = v25;
  (*(v17 + 104))(v19, *MEMORY[0x277CE00F0], v16);
  sub_26A850F78();
  sub_26A850A48();

  sub_26A851448();
  sub_26A84F028();
  v27 = v52;
  LOBYTE(v17) = v53;
  v28 = v54;
  v29 = v55;
  v30 = v56;
  v31 = v57;
  v32 = *(v11 + 44);
  v33 = *MEMORY[0x277CE13C0];
  v34 = sub_26A8514D8();
  (*(*(v34 - 8) + 104))(&v15[v32], v33, v34);
  *v15 = v27;
  v15[8] = v17;
  *(v15 + 2) = v28;
  v15[24] = v29;
  *(v15 + 4) = v30;
  *(v15 + 5) = v31;
  sub_26A4EF6D0();
  sub_26A4EF6D0();
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = v43;
  *(a2 + 24) = v38;
  *(a2 + 32) = v42;
  *(a2 + 40) = v39;
  v35 = v40;
  *(a2 + 48) = v41;
  *(a2 + 56) = v35;
  *(a2 + 64) = 256;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE8A0);
  sub_26A4EF6D0();
  sub_26A4EF6D0();
  sub_26A505D1C();
  sub_26A505D1C();
  sub_26A505D1C();
  return sub_26A505D1C();
}

uint64_t sub_26A59C794(CGFloat a1, CGFloat a2)
{
  v4 = sub_26A84F4A8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE8A8);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_26A8570F0;
  *(v8 + 32) = sub_26A850DF8();
  *(v8 + 40) = sub_26A850DD8();
  MEMORY[0x26D6635D0](v8);
  v12.origin.x = 0.0;
  v12.origin.y = 0.0;
  v12.size.width = a1;
  v12.size.height = a2;
  CGRectGetMaxX(v12);
  v13.origin.x = 0.0;
  v13.origin.y = 0.0;
  v13.size.width = a1;
  v13.size.height = a2;
  CGRectGetMinY(v13);
  v14.origin.x = 0.0;
  v14.origin.y = 0.0;
  v14.size.width = a1;
  v14.size.height = a2;
  CGRectGetMaxX(v14);
  v15.origin.x = 0.0;
  v15.origin.y = 0.0;
  v15.size.width = a1;
  v15.size.height = a2;
  CGRectGetMaxY(v15);
  sub_26A84F478();

  sub_26A850548();
  sub_26A84F428();
  sub_26A59DFE8(v11);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_26A59C98C@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a1;
  v29 = a3;
  v28 = sub_26A84FE48();
  v5 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26A84F088();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26A850DF8();
  (*(v9 + 16))(v11, a1, v8);
  v13 = (*(v9 + 80) + 456) & ~*(v9 + 80);
  v14 = swift_allocObject();
  memcpy((v14 + 16), a2, 0x1B8uLL);
  (*(v9 + 32))(v14 + v13, v11, v8);
  v34[55] = v12;
  v34[56] = sub_26A59E03C;
  v34[57] = v14;
  v34[58] = 0;
  v34[59] = 0;
  v15 = a2;
  sub_26A59DDC8(a2, v34);
  sub_26A84FF58();
  v16 = v28;
  sub_26A84F078();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  (*(v5 + 8))(v7, v16);
  v30 = v18;
  v31 = v20;
  v32 = v22;
  v33 = v24;
  v25 = swift_allocObject();
  memcpy((v25 + 16), v15, 0x1B8uLL);
  sub_26A59DDC8(v15, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE8B0);
  type metadata accessor for CGRect();
  sub_26A59E0F0();
  sub_26A59E174();
  sub_26A850C78();
}

uint64_t sub_26A59CCC4(uint64_t a1)
{
  v2 = sub_26A84FE48();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A84FF58();
  sub_26A84F078();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  (*(v3 + 8))(v5, v2);
  v14 = *(a1 + 408);
  v18 = *(a1 + 392);
  v19 = v14;
  v20 = *(a1 + 424);
  v16[1] = v7;
  v16[2] = v9;
  v16[3] = v11;
  v16[4] = v13;
  v17 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE860);
  return sub_26A851068();
}

uint64_t sub_26A59CE78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE818);
  MEMORY[0x28223BE20](v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE820);
  MEMORY[0x28223BE20](v3);
  v5 = v9 - v4;
  sub_26A59BA00();
  if (v6 >= 0.0 || (v7 = *(a1 + 408), v11 = *(a1 + 392), v12 = v7, v13 = *(a1 + 424), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE860), sub_26A851058(), (v10 & 1) != 0))
  {
    swift_storeEnumTagMultiPayload();
    sub_26A59DE00();
    return sub_26A84FDF8();
  }

  else
  {
    sub_26A59BF0C(v5, v9[3], v9[4]);
    sub_26A4EF6D0();
    swift_storeEnumTagMultiPayload();
    sub_26A59DE00();
    sub_26A84FDF8();
    return sub_26A505D1C();
  }
}

uint64_t sub_26A59D06C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a1;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE788);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v4);
  v6 = &v40 - v5;
  v7 = sub_26A84ACC8();
  OUTLINED_FUNCTION_15();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v40 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE790);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v17);
  v19 = &v40 - v18;
  sub_26A59B870(v44);
  if (v44[32])
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE798);
    OUTLINED_FUNCTION_46();
    (*(v21 + 16))(v6, v41, v20);
    swift_storeEnumTagMultiPayload();
    sub_26A59DA78();
    OUTLINED_FUNCTION_3_23();
    sub_26A506A30();
    return sub_26A84FDF8();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE7E0);
    v40 = a2;
    sub_26A84ACB8();
    (*(v9 + 16))(v12, v15, v7);
    sub_26A851048();
    (*(v9 + 8))(v15, v7);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE798);
    OUTLINED_FUNCTION_46();
    (*(v24 + 16))(v19, v41, v23);
    KeyPath = swift_getKeyPath();
    v26 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE7D0) + 36)];
    *v26 = KeyPath;
    v26[8] = 1;
    sub_26A59BA00();
    v28 = v27;
    v29 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE7C0) + 36)];
    *v29 = 0;
    *(v29 + 1) = v28;
    v30 = sub_26A851448();
    v32 = v31;
    v33 = swift_allocObject();
    memcpy((v33 + 16), v2, 0x1B8uLL);
    v34 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE7B0) + 36)];
    *v34 = sub_26A59DDC0;
    v34[1] = v33;
    v34[2] = v30;
    v34[3] = v32;
    sub_26A59DDC8(v2, &v43);
    v35 = sub_26A851448();
    v37 = v36;
    v38 = &v19[*(v16 + 36)];
    sub_26A59CE78(v2);
    v39 = &v38[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE810) + 36)];
    *v39 = v35;
    v39[1] = v37;
    sub_26A4EF6D0();
    swift_storeEnumTagMultiPayload();
    sub_26A59DA78();
    OUTLINED_FUNCTION_3_23();
    sub_26A506A30();
    sub_26A84FDF8();
    return sub_26A505D1C();
  }
}

__n128 sub_26A59D4E4@<Q0>(uint64_t a1@<X8>)
{
  v2 = (a1 + 392);
  if (qword_2803A8D90 != -1)
  {
    swift_once();
  }

  memcpy(__dst, qword_2803D21E8, sizeof(__dst));
  v3 = __dst[4];
  memcpy(v15, qword_2803D21E8, sizeof(v15));
  v8 = __dst[3];
  v9 = __dst[2];
  sub_26A4EF6D0();
  sub_26A6AEE74(__src);
  KeyPath = swift_getKeyPath();
  v5 = swift_getKeyPath();
  v6 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE8E0);
  sub_26A851048();
  memcpy(a1, __src, 0xC0uLL);
  *(a1 + 192) = v9;
  *(a1 + 208) = v8;
  *(a1 + 224) = v3;
  memcpy((a1 + 240), v15, 0x50uLL);
  *(a1 + 320) = KeyPath;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 353) = 0;
  *(a1 + 360) = v5;
  *(a1 + 368) = 0;
  *(a1 + 376) = v6;
  *(a1 + 384) = 0;
  result = v11;
  *v2 = v10;
  v2[1] = v11;
  *(a1 + 424) = v12;
  *(a1 + 432) = v13;
  return result;
}

uint64_t View.snippetAttribution(for:)(uint64_t a1)
{
  OUTLINED_FUNCTION_10_16(a1);
  OUTLINED_FUNCTION_9_19();
  memcpy(__dst, __src, 0x1B8uLL);
  return sub_26A59D758(__dst);
}

uint64_t View.snippetAttribution()(uint64_t a1)
{
  OUTLINED_FUNCTION_10_16(a1);
  OUTLINED_FUNCTION_9_19();
  memcpy(__dst, __src, 0x1B8uLL);
  return sub_26A59D758(__dst);
}

uint64_t View.attributionContainerFrame(frame:)()
{
  swift_getKeyPath();
  sub_26A8509A8();
}

{
  swift_getKeyPath();
  sub_26A8509A8();
}

unint64_t sub_26A59D8F4()
{
  result = qword_2803AE770;
  if (!qword_2803AE770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AE770);
  }

  return result;
}

uint64_t sub_26A59D95C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 440))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 240);
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

uint64_t sub_26A59D99C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
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
      *(result + 440) = 1;
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
      *(result + 240) = (a2 - 1);
      return result;
    }

    *(result + 440) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_26A59DA78()
{
  result = qword_2803AE7A0;
  if (!qword_2803AE7A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AE790);
    sub_26A59DB30();
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AE7A0);
  }

  return result;
}

unint64_t sub_26A59DB30()
{
  result = qword_2803AE7A8;
  if (!qword_2803AE7A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AE7B0);
    sub_26A59DEB8(&qword_2803AE7B8, &unk_2803AE7C0, &unk_26A862468, sub_26A59DC14);
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AE7A8);
  }

  return result;
}

unint64_t sub_26A59DC14()
{
  result = qword_2803AE7C8;
  if (!qword_2803AE7C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AE7D0);
    sub_26A59DCCC();
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AE7C8);
  }

  return result;
}

unint64_t sub_26A59DCCC()
{
  result = qword_2803AE7D8;
  if (!qword_2803AE7D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AE7E0);
    sub_26A506A30();
    sub_26A59E174();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AE7D8);
  }

  return result;
}

uint64_t sub_26A59DDB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_26A59DE00()
{
  result = qword_2803AE828;
  if (!qword_2803AE828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AE820);
    sub_26A59DEB8(&qword_2803AE830, &qword_2803AE838, &unk_26A8624D0, sub_26A59DF24);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AE828);
  }

  return result;
}

uint64_t sub_26A59DEB8(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_50_0(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7);
    a4();
    OUTLINED_FUNCTION_15_10();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26A59DF24()
{
  result = qword_2803AE840;
  if (!qword_2803AE840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AE848);
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AE840);
  }

  return result;
}

uint64_t sub_26A59E03C()
{
  sub_26A84F088();

  return sub_26A59CCC4(v0 + 16);
}

uint64_t objectdestroyTm_7()
{
  OUTLINED_FUNCTION_2_24();

  OUTLINED_FUNCTION_5_25();

  return swift_deallocObject();
}

unint64_t sub_26A59E0F0()
{
  result = qword_2803AE8B8;
  if (!qword_2803AE8B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AE8B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AE8B8);
  }

  return result;
}

unint64_t sub_26A59E174()
{
  OUTLINED_FUNCTION_196();
  result = *v2;
  if (!result)
  {
    v1(255);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

unint64_t sub_26A59E1B8()
{
  result = qword_2803AE8D0;
  if (!qword_2803AE8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AE8D0);
  }

  return result;
}

unint64_t sub_26A59E21C()
{
  result = qword_2803AE8E8;
  if (!qword_2803AE8E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AE8F0);
    sub_26A59DA78();
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AE8E8);
  }

  return result;
}

unint64_t sub_26A59E2D4()
{
  result = qword_2803AE8F8;
  if (!qword_2803AE8F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AE8E0);
    sub_26A59E174();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AE8F8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_24()
{
  sub_26A49035C(*(v0 + 16), *(v0 + 24));
  sub_26A49035C(*(v0 + 32), *(v0 + 40));
  sub_26A49035C(*(v0 + 48), *(v0 + 56));
  sub_26A49035C(*(v0 + 64), *(v0 + 72));
  sub_26A49035C(*(v0 + 80), *(v0 + 88));
  sub_26A49035C(*(v0 + 96), *(v0 + 104));
  sub_26A49035C(*(v0 + 112), *(v0 + 120));
  sub_26A49035C(*(v0 + 128), *(v0 + 136));
  sub_26A49035C(*(v0 + 144), *(v0 + 152));
  sub_26A49035C(*(v0 + 160), *(v0 + 168));
}

uint64_t OUTLINED_FUNCTION_5_25()
{
  sub_26A59DDB4(*(v0 + 336), *(v0 + 344), *(v0 + 352), *(v0 + 360), *(v0 + 368), *(v0 + 369));
  sub_26A49035C(*(v0 + 376), *(v0 + 384));
  sub_26A49035C(*(v0 + 392), *(v0 + 400));
}

void OUTLINED_FUNCTION_9_19()
{

  JUMPOUT(0x26D662ED0);
}

double OUTLINED_FUNCTION_10_16(uint64_t a1, ...)
{
  va_start(va, a1);

  *&result = sub_26A59D4E4(va).n128_u64[0];
  return result;
}

id sub_26A59E4CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE150);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26A8571A0;
  sub_26A4EC5B0(0, &qword_2803AE920);
  result = sub_26A59E57C();
  *(v0 + 32) = result;
  qword_2803AE900 = v0;
  return result;
}

id sub_26A59E57C()
{
  v0 = sub_26A851788();

  v1 = sub_26A851788();

  v2 = [swift_getObjCClassFromMetadata() attributeWithDomain:v0 name:v1];

  return v2;
}

uint64_t sub_26A59E610()
{
  if (*(v0 + 16))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC088);
    sub_26A851C78();
  }

  return result;
}

uint64_t sub_26A59E690(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  *(v4 + 16) = 0;
  v7 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  v8 = sub_26A59F558(a1, a2, 0);
  if (v3)
  {
    goto LABEL_10;
  }

  v9 = v8;
  v10 = [v8 identities];
  sub_26A4EC5B0(0, &qword_2803AE928);
  v11 = sub_26A851A98();

  if (!sub_26A73670C(v11))
  {

LABEL_9:
    sub_26A59F724();
    swift_allocError();
    *v17 = 1;
    swift_willThrow();

LABEL_10:

    type metadata accessor for ArchiveRendererAssertion();
    swift_deallocPartialClassInstance();
    return v4;
  }

  sub_26A736710(0, (v11 & 0xC000000000000001) == 0, v11);
  if ((v11 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x26D6644E0](0, v11);
  }

  else
  {
    v12 = *(v11 + 32);
  }

  v13 = v12;

  v14 = [objc_opt_self() identityForLSApplicationIdentity:v13 LSApplicationRecord:v9];
  if (!v14)
  {

    goto LABEL_9;
  }

  v15 = v14;
  v16 = [objc_opt_self() targetWithProcessIdentity_];

  *(v4 + 24) = v16;
  return v4;
}

uint64_t sub_26A59E868()
{
  sub_26A59F464();

  return v0;
}

uint64_t sub_26A59E894()
{
  sub_26A59E868();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_26A59E8EC()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC090);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  v5 = sub_26A851C18();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;
  v6[5] = v1;

  v7 = sub_26A7FEEA0(0, 0, v4, &unk_26A862660, v6);
  sub_26A59E610();
  v0[2] = v7;
}

uint64_t sub_26A59EA08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = sub_26A8523A8();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v6 = sub_26A852398();
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26A59EB68, 0, 0);
}

uint64_t sub_26A59EB68()
{
  v43 = *MEMORY[0x277D85DE8];
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  sub_26A852358();
  sub_26A852738();
  sub_26A852378();
  v5 = *(v4 + 8);
  v0[17] = v5;
  v0[18] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v2, v3);
  sub_26A851C98();
  v6 = v0[8];
  sub_26A851E78();
  LOBYTE(v39) = 2;
  OUTLINED_FUNCTION_8_20();
  sub_26A7B72D4(v7, v8, v9, v10, v11, 54, v12, 9, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v0);
  v13 = qword_2803A8AF8;
  v14 = *(v6 + 24);
  if (v13 != -1)
  {
    OUTLINED_FUNCTION_5_26();
  }

  v15 = objc_allocWithZone(MEMORY[0x277D46DB8]);

  v16 = OUTLINED_FUNCTION_10_17();
  v0[19] = v16;
  v0[7] = 0;
  v17 = [v16 acquireWithError_];
  v18 = v0[7];
  if (!v17)
  {
    v33 = v18;
    sub_26A84AAE8();

    swift_willThrow();
    v34 = OUTLINED_FUNCTION_1_25();
    v35(v34);

    OUTLINED_FUNCTION_9_20();
    OUTLINED_FUNCTION_11_16();

    __asm { BRAA            X1, X16 }
  }

  v20 = v0[17];
  v19 = v0[18];
  v21 = v0[12];
  v22 = v18;
  sub_26A852358();
  sub_26A852388();
  v23 = OUTLINED_FUNCTION_14_12();
  v20(v23);
  if (__OFADD__(sub_26A852728(), 1))
  {
    __break(1u);
  }

  OUTLINED_FUNCTION_7_21();
  OUTLINED_FUNCTION_4_23();
  OUTLINED_FUNCTION_6_25();
  OUTLINED_FUNCTION_3_24();
  v26 = sub_26A59F6DC(v24, v25);
  OUTLINED_FUNCTION_15_12(v26);
  OUTLINED_FUNCTION_2_25();
  v29 = sub_26A59F6DC(v27, v28);
  OUTLINED_FUNCTION_12_12(v29);
  v1(v21, v19);
  v30 = swift_task_alloc();
  v0[20] = v30;
  *v30 = v0;
  OUTLINED_FUNCTION_0_23(v30);
  OUTLINED_FUNCTION_13_13(v31);
  OUTLINED_FUNCTION_11_16();

  return MEMORY[0x2822008C8]();
}

uint64_t sub_26A59EE6C()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    (*(v2 + 136))(*(v2 + 112), *(v2 + 96));
    v3 = sub_26A59F384;
  }

  else
  {
    v4 = *(v2 + 136);
    v5 = *(v2 + 112);
    v7 = *(v2 + 88);
    v6 = *(v2 + 96);
    v10 = v2 + 72;
    v8 = *(v2 + 72);
    v9 = *(v10 + 8);
    v4(v5, v6);
    (*(v9 + 8))(v7, v8);
    v3 = sub_26A59EFF0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26A59EFF0()
{
  v53 = *MEMORY[0x277D85DE8];
  v2 = v0[19];
  v3 = v0[17];
  v4 = v0[15];
  v5 = v0[12];
  [v2 invalidate];

  sub_26A852358();
  LOBYTE(v2) = sub_26A852368();
  v3(v4, v5);
  if ((v2 & 1) == 0)
  {
    v34 = v0[17];
    v35 = v0[16];
    v36 = v0[12];
    sub_26A851E78();
    LOBYTE(v49) = 2;
    OUTLINED_FUNCTION_8_20();
    sub_26A7B74B0(v37, v38, v39, v40, v41, 67, v42, 9, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v0);
    sub_26A59F464();
    v34(v35, v36);

    OUTLINED_FUNCTION_9_20();
    goto LABEL_13;
  }

  v6 = v0[21];
  sub_26A851C98();
  if (v6)
  {
LABEL_12:
    v44 = OUTLINED_FUNCTION_1_25();
    v45(v44);

    OUTLINED_FUNCTION_9_20();
LABEL_13:
    OUTLINED_FUNCTION_11_16();

    __asm { BRAA            X1, X16 }
  }

  v7 = v0[8];
  sub_26A851E78();
  LOBYTE(v49) = 2;
  OUTLINED_FUNCTION_8_20();
  sub_26A7B72D4(v8, v9, v10, v11, v12, 54, v13, 9, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v0);
  v14 = qword_2803A8AF8;
  v15 = *(v7 + 24);
  if (v14 != -1)
  {
    OUTLINED_FUNCTION_5_26();
  }

  v16 = objc_allocWithZone(MEMORY[0x277D46DB8]);

  v17 = OUTLINED_FUNCTION_10_17();
  v0[19] = v17;
  v0[7] = 0;
  v18 = [v17 acquireWithError_];
  v19 = v0[7];
  if (!v18)
  {
    v43 = v19;
    sub_26A84AAE8();

    swift_willThrow();
    goto LABEL_12;
  }

  v21 = v0[17];
  v20 = v0[18];
  v22 = v0[12];
  v23 = v19;
  sub_26A852358();
  sub_26A852388();
  v24 = OUTLINED_FUNCTION_14_12();
  v21(v24);
  if (__OFADD__(sub_26A852728(), 1))
  {
    __break(1u);
  }

  OUTLINED_FUNCTION_7_21();
  OUTLINED_FUNCTION_4_23();
  OUTLINED_FUNCTION_6_25();
  OUTLINED_FUNCTION_3_24();
  v27 = sub_26A59F6DC(v25, v26);
  OUTLINED_FUNCTION_15_12(v27);
  OUTLINED_FUNCTION_2_25();
  v30 = sub_26A59F6DC(v28, v29);
  OUTLINED_FUNCTION_12_12(v30);
  v1(v22, v20);
  v31 = swift_task_alloc();
  v0[20] = v31;
  *v31 = v0;
  OUTLINED_FUNCTION_0_23();
  OUTLINED_FUNCTION_13_13(v32);
  OUTLINED_FUNCTION_11_16();

  return MEMORY[0x2822008C8]();
}

uint64_t sub_26A59F384()
{
  v1 = v0[19];
  (*(v0[10] + 8))(v0[11], v0[9]);

  v2 = OUTLINED_FUNCTION_1_25();
  v3(v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_26A59F464()
{
  sub_26A59E610();
  *(v0 + 16) = 0;
}

uint64_t sub_26A59F498(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26A557454;

  return sub_26A59EA08(a1, v4, v5, v6);
}

id sub_26A59F558(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_26A851788();

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_26A84AAE8();

    swift_willThrow();
  }

  return v6;
}

id sub_26A59F634(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_26A851788();

  sub_26A4EC5B0(0, &qword_2803AE918);
  v6 = sub_26A851A88();

  v7 = [v3 initWithExplanation:v5 target:a3 attributes:v6];

  return v7;
}

uint64_t sub_26A59F6DC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26A59F724()
{
  result = qword_2803AE930;
  if (!qword_2803AE930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AE930);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_23()
{

  return MEMORY[0x2822008D8]();
}

uint64_t OUTLINED_FUNCTION_5_26()
{

  return swift_once();
}

void OUTLINED_FUNCTION_6_25()
{
  *(v2 + 40) = v0;
  *(v2 + 48) = v1;
  *(v2 + 24) = 0;
  *(v2 + 16) = 0;
  *(v2 + 32) = 1;
}

id OUTLINED_FUNCTION_10_17()
{

  return sub_26A59F634(0xD000000000000021, v1 | 0x8000000000000000, v0);
}

uint64_t OUTLINED_FUNCTION_12_12(uint64_t a1)
{

  return MEMORY[0x2821FD3C0](v2, v1, a1);
}

uint64_t OUTLINED_FUNCTION_15_12(uint64_t a1)
{

  return MEMORY[0x2822008C0](v1, a1);
}

uint64_t ControlPlayerButtonView.init(label1:label2:play:pause:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v30 = a3;
  v31 = a5;
  v33 = type metadata accessor for StandardPlayerButtonView();
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v13);
  v15 = &v29 - v14;
  KeyPath = swift_getKeyPath();
  v38 = 0;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = OUTLINED_FUNCTION_7_22();
  v29 = v18(v17, v16);
  v34 = a2;
  sub_26A4D7E54();
  if (v36)
  {
    v19 = v37;
    __swift_project_boxed_opaque_existential_1(v35, v36);
    v20 = OUTLINED_FUNCTION_7_22();
    v22 = v21(v20, v19);
    __swift_destroy_boxed_opaque_existential_1(v35);
  }

  else
  {
    sub_26A4DBD10(v35, &qword_2803A91B8);
    v22 = 0;
  }

  sub_26A6B5624(v30, a4, v31, a6, v15);
  OUTLINED_FUNCTION_5_27();
  sub_26A5A2448();
  OUTLINED_FUNCTION_4_24();
  sub_26A5A1C9C(v23, v24);
  v25 = sub_26A851248();

  sub_26A4DBD10(v34, &qword_2803A91B8);
  sub_26A5A0AF8(v15);
  v26 = v38;
  *a7 = v29;
  *(a7 + 8) = v22;
  v27 = KeyPath;
  *(a7 + 16) = v25;
  *(a7 + 24) = v27;
  *(a7 + 32) = v26;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26A5A0AF8(uint64_t a1)
{
  v2 = type metadata accessor for StandardPlayerButtonView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ControlPlayerButtonView.init(label1:label2:play:pause:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v35 = a4;
  type metadata accessor for StandardPlayerButtonView();
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v9);
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - v11;
  KeyPath = swift_getKeyPath();
  v40 = 0;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = OUTLINED_FUNCTION_7_22();
  v16 = v15(v14, v13);
  sub_26A4D7E54();
  if (v38)
  {
    v34 = a5;
    v17 = a2;
    v18 = a3;
    v19 = v16;
    v20 = v39;
    __swift_project_boxed_opaque_existential_1(v37, v38);
    v21 = OUTLINED_FUNCTION_7_22();
    v22 = v20;
    v16 = v19;
    a3 = v18;
    a2 = v17;
    a5 = v34;
    v24 = v23(v21, v22);
    __swift_destroy_boxed_opaque_existential_1(v37);
  }

  else
  {
    sub_26A4DBD10(v37, &qword_2803A91B8);
    v24 = 0;
  }

  v25 = a3;
  v26 = v35;
  sub_26A6B5898(v25, v26, v12);
  OUTLINED_FUNCTION_5_27();
  sub_26A5A2448();
  OUTLINED_FUNCTION_4_24();
  sub_26A5A1C9C(v27, v28);
  v29 = sub_26A851248();

  sub_26A4DBD10(a2, &qword_2803A91B8);
  sub_26A5A0AF8(v12);
  v30 = v40;
  *a5 = v16;
  *(a5 + 8) = v24;
  v31 = KeyPath;
  *(a5 + 16) = v29;
  *(a5 + 24) = v31;
  *(a5 + 32) = v30;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26A5A0DB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA838);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - v5;
  v7 = sub_26A84B888();
  OUTLINED_FUNCTION_15();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_41();
  v13 = v12 - v11;
  KeyPath = swift_getKeyPath();
  v26 = 0;
  sub_26A84CC18();
  v15 = TextProperty.asAnyView()();
  v16 = *(v9 + 8);
  v16(v13, v7);
  sub_26A84CC28();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_26A4DBD10(v6, &qword_2803AA838);
    v17 = 0;
  }

  else
  {
    v17 = TextProperty.asAnyView()();
    v16(v6, v7);
  }

  v18 = sub_26A84CBD8();
  v23 = swift_getKeyPath();
  v24 = 0;
  v25 = v18;
  sub_26A5A23F4();
  v19 = sub_26A851248();
  sub_26A84CC38();
  OUTLINED_FUNCTION_46();
  result = (*(v20 + 8))(a1);
  v22 = v26;
  *a2 = v15;
  *(a2 + 8) = v17;
  *(a2 + 16) = v19;
  *(a2 + 24) = KeyPath;
  *(a2 + 32) = v22;
  return result;
}

uint64_t ControlPlayerButtonView.body.getter@<X0>(uint64_t a1@<X8>)
{
  sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v70 = v4;
  v71 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_41();
  v7 = v6 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE298);
  OUTLINED_FUNCTION_15();
  v62 = v9;
  v63 = v8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v10);
  v12 = &v60 - v11;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE9B0);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v13);
  v15 = &v60 - v14;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE9B8);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v16);
  v67 = &v60 - v17;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE9C0);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v18);
  v68 = &v60 - v19;
  v20 = *(v1 + 16);
  v78[0] = *v1;
  v78[1] = v20;
  v79 = *(v1 + 32);
  v21 = sub_26A84FA78();
  v81 = *(v1 + 32);
  v22 = *(v1 + 24);
  v80 = v22;
  v23 = v22;
  v69 = v81;
  if ((v81 & 1) == 0)
  {

    sub_26A851EA8();
    v24 = sub_26A8501F8();
    OUTLINED_FUNCTION_12_13();
    sub_26A84EA78();

    sub_26A84F978();
    OUTLINED_FUNCTION_8_21();
    sub_26A4DBD10(&v80, &qword_2803ABF98);
    (*(v70 + 8))(v7, v71);
    v23 = v72[0];
  }

  sub_26A59FD38(v73, v23);
  v72[0] = v21;
  v72[1] = v73[4];
  LOBYTE(v72[2]) = 0;
  sub_26A5A1788(v78, &v72[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE9C8);
  sub_26A4DBCC8(&qword_2803AE9D0, &qword_2803AE9C8);
  sub_26A850AF8();
  sub_26A4DBD10(v72, &qword_2803AE9C8);
  v25 = v69;
  if (v69)
  {
    sub_26A59FD38(v74, v22);
    v26 = v22;
  }

  else
  {

    sub_26A851EA8();
    v27 = sub_26A8501F8();
    OUTLINED_FUNCTION_12_13();
    sub_26A84EA78();

    sub_26A84F978();
    OUTLINED_FUNCTION_8_21();
    sub_26A4DBD10(&v80, &qword_2803ABF98);
    v28 = *(v70 + 8);
    v61 = v15;
    v29 = v71;
    v28(v7, v71);
    sub_26A59FD38(v74, v72[0]);

    sub_26A851EA8();
    v30 = a1;
    v31 = sub_26A8501F8();
    OUTLINED_FUNCTION_12_13();
    sub_26A84EA78();

    a1 = v30;
    v25 = v69;
    sub_26A84F978();
    OUTLINED_FUNCTION_8_21();
    sub_26A4DBD10(&v80, &qword_2803ABF98);
    v32 = v29;
    v15 = v61;
    v28(v7, v32);
    v26 = v72[0];
  }

  v33 = *v74;
  v34 = sub_26A59FD38(v75, v26);
  sub_26A58BEE4(v34, v33, *&v75[2]);
  (*(v62 + 8))(v12, v63);
  v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE9D8) + 36)] = 67;
  v35 = sub_26A850278();
  v36 = v22;
  if ((v25 & 1) == 0)
  {

    sub_26A851EA8();
    v37 = sub_26A8501F8();
    OUTLINED_FUNCTION_12_13();
    sub_26A84EA78();

    sub_26A84F978();
    OUTLINED_FUNCTION_8_21();
    sub_26A4DBD10(&v80, &qword_2803ABF98);
    (*(v70 + 8))(v7, v71);
    v36 = v72[0];
  }

  sub_26A59FD38(&v76, v36);
  sub_26A84ED48();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v46 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE9E0) + 36)];
  *v46 = v35;
  *(v46 + 1) = v39;
  *(v46 + 2) = v41;
  *(v46 + 3) = v43;
  *(v46 + 4) = v45;
  v46[40] = 0;
  v47 = sub_26A850298();
  if ((v25 & 1) == 0)
  {

    sub_26A851EA8();
    v48 = sub_26A8501F8();
    OUTLINED_FUNCTION_12_13();
    sub_26A84EA78();

    sub_26A84F978();
    OUTLINED_FUNCTION_8_21();
    sub_26A4DBD10(&v80, &qword_2803ABF98);
    (*(v70 + 8))(v7, v71);
    v22 = v72[0];
  }

  sub_26A59FD38(v77, v22);
  sub_26A84ED48();
  v49 = &v15[*(v64 + 36)];
  *v49 = v47;
  *(v49 + 1) = v50;
  *(v49 + 2) = v51;
  *(v49 + 3) = v52;
  *(v49 + 4) = v53;
  v49[40] = 0;
  sub_26A851458();
  sub_26A84F628();
  v54 = v67;
  sub_26A4D7EA8();
  memcpy(&v54[*(v66 + 36)], v72, 0x70uLL);
  v55 = v68;
  sub_26A4D7EA8();
  *&v55[*(v65 + 36)] = 256;
  KeyPath = swift_getKeyPath();
  v57 = swift_getKeyPath();
  sub_26A4D7EA8();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE9E8);
  v59 = a1 + *(result + 36);
  *v59 = KeyPath;
  *(v59 + 8) = 0;
  *(v59 + 16) = v57;
  *(v59 + 24) = 256;
  return result;
}

uint64_t sub_26A5A1788@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v8[0] = sub_26A84FC08();
  v8[1] = 0;
  v9 = 0;
  sub_26A5A1870(a1);
  v4 = a1[2];
  v10 = v4;
  sub_26A4D7E54();
  sub_26A4D7E54();
  *(a2 + 616) = 0;
  *(a2 + 624) = 1;
  *(a2 + 632) = v4;
  sub_26A5A21D0(&v10, &v6);

  sub_26A4DBD10(v8, &qword_2803AEA30);

  return sub_26A4DBD10(v7, &qword_2803AEA30);
}

uint64_t sub_26A5A1870(uint64_t *a1)
{
  v2 = *a1;
  if (qword_28157E6C0 != -1)
  {
    swift_once();
  }

  sub_26A4D7E54();
  sub_26A6AEE74(__src);
  memcpy(v10, __src, sizeof(v10));
  v12 = 0;
  v11 = sub_26A80A810;
  v9 = v2;
  v3 = a1[1];
  v15 = v3;
  if (v3)
  {
    v4 = qword_28157E6A8;

    if (v4 != -1)
    {
      swift_once();
    }

    sub_26A4D7E54();
    sub_26A6AEE74(v14);
    memcpy(&v7[1], v14, 0xBFuLL);
    v7[36] = 0;
    v7[35] = sub_26A80A810;
    v7[0] = v3;
  }

  else
  {
    bzero(v7, 0x128uLL);
  }

  memcpy(__dst, v7, sizeof(__dst));
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A4DBD10(__dst, &qword_2803AA888);
  sub_26A4DBD10(&v9, &qword_2803A99A0);
  sub_26A4DBD10(v6, &qword_2803AA888);
  return sub_26A4DBD10(v7, &qword_2803A99A0);
}

uint64_t sub_26A5A1ACC()
{
  v1 = v0;
  sub_26A84CC38();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_41();
  v5 = v4 - v3;
  (*(v6 + 16))(v4 - v3, v1);
  sub_26A5A0DB8(v5, v10);
  sub_26A84CBE8();
  sub_26A4DD6E4();

  sub_26A5A222C(v10);
  sub_26A84CBF8();

  sub_26A4D7E54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEA38);
  sub_26A5A225C();
  v7 = sub_26A851248();
  sub_26A4DBD10(&v9, &qword_2803AEA38);
  return v7;
}

uint64_t sub_26A5A1C44(uint64_t a1)
{
  result = sub_26A5A1C9C(&qword_2803AE9F0, MEMORY[0x277D63428]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26A5A1C9C(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26A5A1CF8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_26A5A1D38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_26A5A1D8C()
{
  result = qword_2803AE9F8;
  if (!qword_2803AE9F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AE9E8);
    sub_26A5A1E18();
    sub_26A4D38BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AE9F8);
  }

  return result;
}

unint64_t sub_26A5A1E18()
{
  result = qword_2803AEA00;
  if (!qword_2803AEA00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AE9C0);
    sub_26A5A1EA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AEA00);
  }

  return result;
}

unint64_t sub_26A5A1EA4()
{
  result = qword_2803AEA08;
  if (!qword_2803AEA08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AE9B8);
    sub_26A5A1F30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AEA08);
  }

  return result;
}

unint64_t sub_26A5A1F30()
{
  result = qword_2803AEA10;
  if (!qword_2803AEA10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AE9B0);
    sub_26A5A1FBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AEA10);
  }

  return result;
}

unint64_t sub_26A5A1FBC()
{
  result = qword_2803AEA18;
  if (!qword_2803AEA18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AE9E0);
    sub_26A5A2048();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AEA18);
  }

  return result;
}

unint64_t sub_26A5A2048()
{
  result = qword_2803AEA20;
  if (!qword_2803AEA20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AE9D8);
    sub_26A5A20D4();
    sub_26A4DBA00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AEA20);
  }

  return result;
}

unint64_t sub_26A5A20D4()
{
  result = qword_2803AEA28;
  if (!qword_2803AEA28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AE2A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AE9C8);
    sub_26A4DBCC8(&qword_2803AE9D0, &qword_2803AE9C8);
    swift_getOpaqueTypeConformance2();
    sub_26A4D6BF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AEA28);
  }

  return result;
}

unint64_t sub_26A5A225C()
{
  result = qword_2803AEA40;
  if (!qword_2803AEA40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AEA38);
    sub_26A5A2314();
    sub_26A4DBCC8(&qword_28157FB60, &qword_2803A9438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AEA40);
  }

  return result;
}

unint64_t sub_26A5A2314()
{
  result = qword_2803AEA48;
  if (!qword_2803AEA48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AEA50);
    sub_26A5A23A0();
    sub_26A4D31BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AEA48);
  }

  return result;
}

unint64_t sub_26A5A23A0()
{
  result = qword_2803AEA58;
  if (!qword_2803AEA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AEA58);
  }

  return result;
}

unint64_t sub_26A5A23F4()
{
  result = qword_2803AEA60;
  if (!qword_2803AEA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AEA60);
  }

  return result;
}

uint64_t sub_26A5A2448()
{
  OUTLINED_FUNCTION_145();
  v1(0);
  OUTLINED_FUNCTION_46();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

void OUTLINED_FUNCTION_0_24(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{

  sub_26A7AEFE4(a1, 0, a3, 41, 2, 89, a7, 11, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t OUTLINED_FUNCTION_8_21()
{

  return swift_getAtKeyPath();
}

uint64_t OUTLINED_FUNCTION_11_17()
{

  return sub_26A5A2448();
}

uint64_t VisualProperty.view.getter@<X0>(uint64_t a1@<X8>)
{
  sub_26A84BD28();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_41();
  v6 = v5 - v4;
  (*(v7 + 16))(v5 - v4, v1);
  return VisualPropertyView.init(_:)(v6, a1);
}

uint64_t sub_26A5A2610()
{
  v1 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  v7 = v6 - v5;
  v8 = v0 + *(type metadata accessor for VisualPropertyView() + 24);
  v9 = *v8;
  if ((*(v8 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v10 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v9, 0);
    (*(v3 + 8))(v7, v1);
    return v12;
  }

  return v9;
}

uint64_t sub_26A5A2750()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for VisualPropertyView() + 28);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_26A5A28A8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for VisualPropertyView();
  sub_26A5A43AC(v1 + *(v10 + 32), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26A5765D0(v9, a1);
  }

  sub_26A851EA8();
  v12 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t VisualPropertyView.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for VisualPropertyView();
  v5 = a2 + v4[5];
  *v5 = swift_getKeyPath();
  *(v5 + 9) = 0;
  swift_unknownObjectWeakInit();
  v6 = a2 + v4[6];
  *v6 = swift_getKeyPath();
  *(v6 + 8) = 0;
  v7 = a2 + v4[7];
  *v7 = swift_getKeyPath();
  *(v7 + 8) = 0;
  v8 = v4[8];
  *(a2 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0);
  swift_storeEnumTagMultiPayload();
  v9 = a2 + v4[9];
  sub_26A851048();
  *v9 = v12;
  *(v9 + 8) = v13;
  sub_26A84BD28();
  OUTLINED_FUNCTION_46();
  return (*(v10 + 32))(a2, a1);
}

uint64_t type metadata accessor for VisualPropertyView()
{
  result = qword_28157E9D0;
  if (!qword_28157E9D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t VisualPropertyView.body.getter@<X0>(void *a1@<X8>)
{
  result = sub_26A5A2C28(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_26A5A2C28@<X0>(uint64_t *a1@<X8>)
{
  v97 = a1;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEA68);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_82();
  v95 = v3;
  OUTLINED_FUNCTION_25_2();
  sub_26A84F588();
  OUTLINED_FUNCTION_15();
  v91 = v5;
  v92 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  v8 = v7 - v6;
  v9 = type metadata accessor for VisualPropertyView();
  v81 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v82 = v10;
  v83 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEA70);
  OUTLINED_FUNCTION_15();
  v87 = v11;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_82();
  v84 = v13;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEA78);
  OUTLINED_FUNCTION_15();
  v88 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_19();
  v85 = v16;
  MEMORY[0x28223BE20](v17);
  v86 = &v75 - v18;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEA80);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_19();
  v77 = v20;
  MEMORY[0x28223BE20](v21);
  v78 = &v75 - v22;
  OUTLINED_FUNCTION_25_2();
  v23 = sub_26A84B058();
  OUTLINED_FUNCTION_15();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_41();
  v29 = v28 - v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v30);
  v32 = &v75 - v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B38C0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v33);
  v35 = &v75 - v34;
  v36 = sub_26A84E278();
  OUTLINED_FUNCTION_15();
  v93 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v40);
  v80 = &v75 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v94 = &v75 - v42;
  sub_26A84BD08();
  v43 = sub_26A84BAB8();
  if (__swift_getEnumTagSinglePayload(v32, 1, v43) == 1)
  {
    sub_26A4D6FD8();
    __swift_storeEnumTagSinglePayload(v35, 1, 1, v36);
LABEL_4:
    sub_26A4D6FD8();
    sub_26A5A352C(v95);
    sub_26A5A3F30();
    result = sub_26A851248();
    v46 = result;
    goto LABEL_5;
  }

  v76 = v8;
  v44 = sub_26A5A2610();
  VRXIdiom.idiom.getter(v44, v29);
  sub_26A84BAA8();
  (*(v25 + 8))(v29, v23);
  (*(*(v43 - 8) + 8))(v32, v43);
  if (__swift_getEnumTagSinglePayload(v35, 1, v36) == 1)
  {
    goto LABEL_4;
  }

  v47 = v36;
  v48 = v93;
  v49 = v94;
  v50 = *(v93 + 32);
  v50(v94, v35, v47);
  v51 = v1;
  if ((sub_26A84E268() & 1) != 0 && (v52 = sub_26A84E238()) != 0)
  {
    v53 = v52;
    v54 = v78;
    sub_26A5A352C(v78);
    v55 = sub_26A851448();
    v56 = (v54 + *(v79 + 36));
    *v56 = v53;
    v56[1] = v55;
    v56[2] = v57;
    sub_26A49BA34(v54, v77);
    sub_26A5A42F4();
    v46 = sub_26A851248();
    sub_26A49BA9C();
    result = (*(v48 + 8))(v49, v47);
  }

  else
  {
    v58 = v49;
    v59 = v80;
    (*(v48 + 16))(v80, v58, v47);
    v60 = v83;
    sub_26A5A405C(v1, v83);
    v61 = (*(v48 + 80) + 16) & ~*(v48 + 80);
    v62 = (v39 + *(v81 + 80) + v61) & ~*(v81 + 80);
    v63 = swift_allocObject();
    v50((v63 + v61), v59, v47);
    v64 = sub_26A5A40C0(v60, v63 + v62);
    MEMORY[0x28223BE20](v64);
    v65 = v48;
    *(&v75 - 2) = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEA90);
    sub_26A5A41F8();
    v66 = v84;
    sub_26A8510D8();
    v67 = v76;
    sub_26A84F578();
    v68 = sub_26A4D7DCC();
    v69 = sub_26A5A42B0();
    v70 = v86;
    v71 = v89;
    v72 = v92;
    sub_26A850978();
    (*(v91 + 8))(v67, v72);
    (*(v87 + 8))(v66, v71);
    v73 = v88;
    v74 = v90;
    (*(v88 + 16))(v85, v70, v90);
    v98 = v71;
    v99 = v72;
    v100 = v68;
    v101 = v69;
    swift_getOpaqueTypeConformance2();
    v46 = sub_26A851248();
    (*(v73 + 8))(v70, v74);
    result = (*(v65 + 8))(v94, v47);
  }

LABEL_5:
  *v97 = v46;
  return result;
}

uint64_t sub_26A5A352C@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEAC0);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_82();
  v43 = v2;
  OUTLINED_FUNCTION_25_2();
  v39 = sub_26A84F5E8();
  OUTLINED_FUNCTION_15();
  v37 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  v36 = v6 - v5;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEAC8);
  OUTLINED_FUNCTION_15();
  v40 = v7;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_82();
  v38 = v9;
  OUTLINED_FUNCTION_25_2();
  v10 = sub_26A84B058();
  OUTLINED_FUNCTION_15();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_41();
  v16 = v15 - v14;
  type metadata accessor for VisualElementView();
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_41();
  v20 = v19 - v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEA88);
  OUTLINED_FUNCTION_15();
  v23 = v22;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v24);
  v26 = &v35 - v25;
  v27 = sub_26A5A2610();
  VRXIdiom.idiom.getter(v27, v16);
  sub_26A84BCF8();
  (*(v12 + 8))(v16, v10);
  sub_26A84BD18();
  sub_26A5A42B0();
  sub_26A850AF8();
  sub_26A5A441C(v20);
  if (sub_26A5A2750() & 1) != 0 && (sub_26A84BD18())
  {
    v28 = v36;
    sub_26A84F5D8();
    v29 = OUTLINED_FUNCTION_3_25();
    v30 = v38;
    sub_26A850C98();
    (*(v37 + 8))(v28, v39);
    v31 = v40;
    v32 = v42;
    (*(v40 + 16))(v43, v30, v42);
    swift_storeEnumTagMultiPayload();
    v45 = v21;
    v46 = v29;
    OUTLINED_FUNCTION_8_18();
    sub_26A84FDF8();
    (*(v31 + 8))(v30, v32);
  }

  else
  {
    (*(v23 + 16))(v43, v26, v21);
    swift_storeEnumTagMultiPayload();
    v33 = OUTLINED_FUNCTION_3_25();
    v45 = v21;
    v46 = v33;
    OUTLINED_FUNCTION_8_18();
    sub_26A84FDF8();
  }

  return (*(v23 + 8))(v26, v21);
}

uint64_t sub_26A5A3984(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADBC8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - v4;
  v6 = a2 + *(type metadata accessor for VisualPropertyView() + 20);
  sub_26A5A28A8(v5);
  sub_26A5DDD40(v6 + 16, v5);
  return sub_26A4D6FD8();
}

uint64_t sub_26A5A3A48@<X0>(uint64_t a1@<X8>)
{
  sub_26A5A352C(a1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEA90);
  *(a1 + *(result + 36)) = 0;
  return result;
}

void *sub_26A5A3A90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_26A5A3C24(a1);
  LOBYTE(__src[0]) = 0;
  sub_26A851288();
  v4 = KeyPath;
  v5 = v8;
  KeyPath = swift_getKeyPath();
  BYTE1(v8) = 0;
  swift_unknownObjectWeakInit();
  v10 = swift_getKeyPath();
  v11 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFE10);
  sub_26A851048();
  v12 = __src[0];
  sub_26A851048();
  v13 = __src[0];
  sub_26A851048();
  v14 = __src[0];
  v18 = v3;
  v19 = 0;
  v20 = 0;
  v15 = v4;
  v16 = v5;
  v17 = v9;
  sub_26A851448();
  sub_26A84F628();
  sub_26A5A44A4(&KeyPath, a2);
  return memcpy((a2 + 128), __src, 0x70uLL);
}

id sub_26A5A3C24(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D4C2B0]) init];
  sub_26A5A4500(0, 0xE000000000000000, v2);
  [v2 setCommand_];
  v3 = v2;
  v4 = sub_26A5A3CB8();
  [v3 setButtonAppearance_];

  return v3;
}

id sub_26A5A3CB8()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D4C298]) init];
  [v0 setRedComponent_];
  [v0 setBlueComponent_];
  [v0 setGreenComponent_];
  [v0 setAlphaComponent_];
  v1 = [objc_allocWithZone(MEMORY[0x277D4C208]) init];
  [v1 setStyle_];
  [v1 setTintColor_];

  return v1;
}

void sub_26A5A3DD0()
{
  sub_26A84BD28();
  if (v0 <= 0x3F)
  {
    sub_26A4EEA70();
    if (v1 <= 0x3F)
    {
      sub_26A5A3EDC(319, &qword_2803AB788, MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_26A592340();
        if (v3 <= 0x3F)
        {
          sub_26A5A3EDC(319, &qword_2803B3840, MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_26A5A3EDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D839B0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_26A5A3F30()
{
  result = qword_28157FC48;
  if (!qword_28157FC48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AEA68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AEA88);
    type metadata accessor for VisualElementView();
    sub_26A5A42B0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157FC48);
  }

  return result;
}

uint64_t sub_26A5A405C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VisualPropertyView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A5A40C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VisualPropertyView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A5A4124()
{
  v1 = *(sub_26A84E278() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for VisualPropertyView() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_26A5A3984(v0 + v2, v5);
}

unint64_t sub_26A5A41F8()
{
  result = qword_2803AEA98;
  if (!qword_2803AEA98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AEA90);
    sub_26A5A3F30();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AEA98);
  }

  return result;
}

unint64_t sub_26A5A42B0()
{
  OUTLINED_FUNCTION_196();
  result = *v2;
  if (!result)
  {
    v1(255);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

unint64_t sub_26A5A42F4()
{
  result = qword_2803AEAA8;
  if (!qword_2803AEAA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AEA80);
    sub_26A5A3F30();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AEAA8);
  }

  return result;
}

uint64_t sub_26A5A43AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A5A441C(uint64_t a1)
{
  v2 = type metadata accessor for VisualElementView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_26A5A4500(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_26A851788();

  [a3 setTitle_];
}

unint64_t sub_26A5A4564()
{
  result = qword_2803AEAD0;
  if (!qword_2803AEAD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AEAD8);
    sub_26A53770C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AEAD0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_25()
{
  *(v2 - 96) = v1;
  *(v2 - 88) = v0;

  return swift_getOpaqueTypeConformance2();
}

uint64_t CompositionView.init(header:parameters:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (qword_2803A9140 != -1)
  {
    swift_once();
  }

  memcpy(__dst, qword_2803D3088, sizeof(__dst));
  v8 = *&__dst[64];
  memcpy(v15, qword_2803D3088, sizeof(v15));
  v12 = *&__dst[48];
  v13 = *&__dst[32];
  sub_26A5A4E0C(__dst, __src);
  sub_26A6AEE74(__src);
  memcpy(a4, __src, 0xC0uLL);
  *(a4 + 192) = v13;
  *(a4 + 208) = v12;
  *(a4 + 224) = v8;
  memcpy((a4 + 232), v15, 0x48uLL);
  v9 = type metadata accessor for CompositionView();
  result = sub_26A5A4E94(a1, a4 + *(v9 + 36));
  v11 = (a4 + *(v9 + 40));
  *v11 = a2;
  v11[1] = a3;
  return result;
}

uint64_t CompositionView.body.getter(uint64_t a1)
{
  type metadata accessor for NavigationHeader(255);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  sub_26A851238();
  sub_26A84F4F8();
  swift_getTupleTypeMetadata2();
  sub_26A851528();
  OUTLINED_FUNCTION_1_27();
  swift_getWitnessTable();
  v5 = sub_26A851238();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v14[-v10];
  sub_26A84FBF8();
  v15 = v3;
  v16 = v4;
  v17 = v1;
  sub_26A851228();
  OUTLINED_FUNCTION_5_13();
  swift_getWitnessTable();
  sub_26A80757C(v8);
  v12 = *(v6 + 8);
  v12(v8, v5);
  sub_26A80757C(v11);
  return (v12)(v11, v5);
}

uint64_t sub_26A5A4948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a4;
  v27 = type metadata accessor for NavigationHeader(0);
  MEMORY[0x28223BE20](v27);
  v26 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26A851238();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - v10;
  v12 = sub_26A84F4F8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v25 - v17;
  v25 = *(type metadata accessor for CompositionView() + 36);
  sub_26A84FC08();
  v29 = a2;
  v30 = a3;
  v31 = a1;
  sub_26A851228();
  WitnessTable = swift_getWitnessTable();
  sub_26A850C48();
  (*(v9 + 8))(v11, v8);
  v35[2] = WitnessTable;
  v35[3] = MEMORY[0x277CDF918];
  v20 = swift_getWitnessTable();
  sub_26A80757C(v15);
  v21 = *(v13 + 8);
  v21(v15, v12);
  v22 = a1 + v25;
  v23 = v26;
  sub_26A5A5070(v22, v26);
  v35[0] = v23;
  (*(v13 + 16))(v15, v18, v12);
  v35[1] = v15;
  v34[0] = v27;
  v34[1] = v12;
  v32 = sub_26A5A50D4();
  v33 = v20;
  sub_26A74E564(v35, 2, v34);
  v21(v18, v12);
  v21(v15, v12);
  return sub_26A5A512C(v23);
}

uint64_t sub_26A5A4CC0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for CompositionView();
  (*(a1 + *(v10 + 40)))();
  sub_26A80757C(v6);
  v11 = *(v4 + 8);
  v11(v6, a2);
  sub_26A80757C(v9);
  return (v11)(v9, a2);
}

uint64_t sub_26A5A4E0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_2803AEAE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A5A4E94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NavigationHeader(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_26A5A4F50()
{
  sub_26A5A5014();
  if (v0 <= 0x3F)
  {
    type metadata accessor for NavigationHeader(319);
    if (v1 <= 0x3F)
    {
      sub_26A5046B4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26A5A5014()
{
  if (!qword_2803AEB68)
  {
    v0 = type metadata accessor for EnvironmentConstant();
    if (!v1)
    {
      atomic_store(v0, &qword_2803AEB68);
    }
  }
}

uint64_t sub_26A5A5070(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NavigationHeader(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26A5A50D4()
{
  result = qword_2803AEB70;
  if (!qword_2803AEB70)
  {
    type metadata accessor for NavigationHeader(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AEB70);
  }

  return result;
}

uint64_t sub_26A5A512C(uint64_t a1)
{
  v2 = type metadata accessor for NavigationHeader(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26A5A51A0()
{
  v0 = sub_26A84F988();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  MEMORY[0x28223BE20](v4);
  type metadata accessor for SummaryItemPlayerView();
  sub_26A4D7E54();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26A4D7EA8();
  }

  sub_26A851EA8();
  v6 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_26A5A5388()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for SummaryItemPlayerView() + 32);
  v6 = *v5;
  if ((*(v5 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D82E8(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v6;
}

uint64_t sub_26A5A54DC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26A84F988();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  type metadata accessor for SummaryItemPlayerView();
  sub_26A4D7E54();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_26A84F3A8();
    return (*(*(v9 - 8) + 32))(a1, v8, v9);
  }

  else
  {
    sub_26A851EA8();
    v11 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    return (*(v3 + 8))(v5, v2);
  }
}

void SummaryItemPlayerView.init(text1:text2:text3:text4:thumbnail:play:pause:)()
{
  OUTLINED_FUNCTION_28_0();
  v52 = v0;
  v53 = v1;
  v57 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v62 = v11;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEB78);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_19();
  v54 = v13;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v14);
  v56 = &v50 - v15;
  v16 = type metadata accessor for SummaryItemPlayerView();
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_41();
  v20 = (v19 - v18);
  v61 = v10;
  sub_26A50429C(v10, v69);
  v60 = v8;
  OUTLINED_FUNCTION_43_2();
  v59 = v6;
  OUTLINED_FUNCTION_43_2();
  v58 = v4;
  OUTLINED_FUNCTION_43_2();
  v68 = 0;
  v66 = 0u;
  v67 = 0u;
  if (qword_28157E670 != -1)
  {
    OUTLINED_FUNCTION_146();
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3890);
  __swift_project_value_buffer(v21, qword_281588798);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0);
  OUTLINED_FUNCTION_43_2();
  sub_26A6AEE74(v72);
  memcpy(v20, v72, 0xBFuLL);
  OUTLINED_FUNCTION_0_25();
  sub_26A5AA244();
  v22 = v16[5];
  if (qword_2803A8AE8 != -1)
  {
    OUTLINED_FUNCTION_0_20();
  }

  OUTLINED_FUNCTION_24_9(&v73);
  OUTLINED_FUNCTION_24_9(&v65[368]);
  sub_26A4D7E54();
  sub_26A6AEE74(v65);
  memcpy(v74, &v65[400], sizeof(v74));
  memcpy(&v65[192], &v65[400], 0xB0uLL);
  memcpy(&v20[v22], v65, 0x240uLL);
  v23 = &v20[v16[6]];
  sub_26A54DFFC(v74, v64);
  if (qword_28157E660 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  v75 = xmmword_281588758[0];
  v76 = unk_281588768;
  v77 = xmmword_281588778;
  v78 = unk_281588788;
  v79 = xmmword_281588758[0];
  v80 = unk_281588768;
  v81 = xmmword_281588778;
  v82 = unk_281588788;
  v50 = unk_281588788;
  v51 = xmmword_281588778;
  sub_26A4D7E54();
  v24 = sub_26A6AEE74(v64);
  OUTLINED_FUNCTION_84_0(v24, v64);
  v25 = v50;
  *(v23 + 12) = v51;
  *(v23 + 13) = v25;
  v26 = v80;
  *(v23 + 14) = v79;
  *(v23 + 15) = v26;
  v27 = v82;
  *(v23 + 16) = v81;
  *(v23 + 17) = v27;
  v28 = v16[7];
  *&v20[v28] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  OUTLINED_FUNCTION_22_10();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_162(KeyPath);
  v30 = v16[9];
  *&v20[v30] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  OUTLINED_FUNCTION_22_10();
  v31 = v70;
  v32 = v71;
  v33 = __swift_project_boxed_opaque_existential_1(v69, v70);
  *&v20[v16[10]] = (*(v32 + 8))(v31, v32);
  sub_26A4D7E54();
  if (v63)
  {
    v34 = OUTLINED_FUNCTION_10_18();
    v35(v34);
    OUTLINED_FUNCTION_41_3();
  }

  else
  {
    sub_26A4D6FD8();
    v33 = 0;
  }

  *&v20[v16[11]] = v33;
  sub_26A4D7E54();
  if (v63)
  {
    v36 = OUTLINED_FUNCTION_10_18();
    v37(v36);
    OUTLINED_FUNCTION_41_3();
  }

  else
  {
    sub_26A4D6FD8();
    v33 = 0;
  }

  *&v20[v16[12]] = v33;
  sub_26A4D7E54();
  if (v63)
  {
    v38 = OUTLINED_FUNCTION_10_18();
    v39(v38);
    OUTLINED_FUNCTION_41_3();
  }

  else
  {
    sub_26A4D6FD8();
    v33 = 0;
  }

  *&v20[v16[13]] = v33;
  sub_26A4D7E54();
  if (v63)
  {
    v40 = OUTLINED_FUNCTION_10_18();
    v41(v40);
    OUTLINED_FUNCTION_41_3();
  }

  else
  {
    sub_26A4D6FD8();
    v33 = 0;
  }

  *&v20[v16[14]] = v33;
  v42 = v52;
  v43 = v53;
  v44 = v56;
  sub_26A6B5898(v42, v43, v56);
  v45 = swift_getKeyPath();
  v46 = (v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEB80) + 36));
  *v46 = v45;
  v46[1] = 0;
  v47 = swift_getKeyPath();
  v48 = (v44 + *(v55 + 36));
  *v48 = v47;
  v48[1] = 0;
  sub_26A4D7E54();
  sub_26A5A9B2C();
  v49 = sub_26A851248();

  OUTLINED_FUNCTION_19_10();
  OUTLINED_FUNCTION_19_10();
  OUTLINED_FUNCTION_19_10();
  OUTLINED_FUNCTION_19_10();
  __swift_destroy_boxed_opaque_existential_1(v61);
  sub_26A4D6FD8();
  OUTLINED_FUNCTION_19_10();
  OUTLINED_FUNCTION_19_10();
  OUTLINED_FUNCTION_19_10();
  OUTLINED_FUNCTION_19_10();
  *&v20[v16[15]] = v49;
  OUTLINED_FUNCTION_2_26();
  sub_26A5AA1F0();
  __swift_destroy_boxed_opaque_existential_1(v69);
  OUTLINED_FUNCTION_27_0();
}

uint64_t type metadata accessor for SummaryItemPlayerView()
{
  result = qword_2803AEBC8;
  if (!qword_2803AEBC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void SummaryItemPlayerView.init(text1:text2:text3:text4:thumbnail:buttonForeground:buttonBackground:play:pause:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
{
  OUTLINED_FUNCTION_28_0();
  v30 = OUTLINED_FUNCTION_25_10(v21, v22, v23, v24, v25, v26, v27, v28, v29);
  v31 = OUTLINED_FUNCTION_79(v30);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_41();
  v80 = v33 - v32;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEB80);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_82();
  v36 = v35;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEB78);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v38);
  v47 = OUTLINED_FUNCTION_30_6(v39, v40, v41, v42, v43, v44, v45, v46, v77);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_41();
  v51 = (v50 - v49);
  if (qword_28157E670 != -1)
  {
    OUTLINED_FUNCTION_146();
  }

  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3890);
  __swift_project_value_buffer(v52, qword_281588798);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0);
  sub_26A4D7E54();
  sub_26A6AEE74(v89);
  memcpy(v51, v89, 0xBFuLL);
  OUTLINED_FUNCTION_0_25();
  sub_26A5AA244();
  v53 = v47[5];
  if (qword_2803A8AE8 != -1)
  {
    OUTLINED_FUNCTION_0_20();
  }

  OUTLINED_FUNCTION_24_9(&v90);
  OUTLINED_FUNCTION_24_9(&v88[368]);
  sub_26A4D7E54();
  sub_26A6AEE74(v88);
  memcpy(v91, &v88[400], sizeof(v91));
  OUTLINED_FUNCTION_31_8();
  memcpy(&v51[v53], v88, 0x240uLL);
  OUTLINED_FUNCTION_38_4();
  if (qword_28157E660 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  OUTLINED_FUNCTION_16_9(xmmword_281588758);
  sub_26A4D7E54();
  v54 = sub_26A6AEE74(v87);
  OUTLINED_FUNCTION_84_0(v54, v87);
  OUTLINED_FUNCTION_17_9();
  *(qword_2803D1B00 + v51) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  OUTLINED_FUNCTION_21_8();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_162(KeyPath);
  v56 = v47[9];
  *&v51[v56] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  OUTLINED_FUNCTION_21_8();
  v57 = v85[4];
  __swift_project_boxed_opaque_existential_1(v85, v85[3]);
  v58 = OUTLINED_FUNCTION_11_18();
  *&v51[v47[10]] = v59(v58, v57);
  sub_26A4D7E54();
  if (v86)
  {
    v60 = OUTLINED_FUNCTION_1_28();
    v61(v60);
    OUTLINED_FUNCTION_24_0();
  }

  else
  {
    sub_26A4D6FD8();
    v56 = 0;
  }

  *&v51[v47[11]] = v56;
  sub_26A4D7E54();
  if (v86)
  {
    v62 = OUTLINED_FUNCTION_1_28();
    v63(v62);
    OUTLINED_FUNCTION_24_0();
  }

  else
  {
    sub_26A4D6FD8();
    v56 = 0;
  }

  *&v51[v47[12]] = v56;
  sub_26A4D7E54();
  if (v86)
  {
    v64 = OUTLINED_FUNCTION_1_28();
    v65(v64);
    OUTLINED_FUNCTION_24_0();
  }

  else
  {
    sub_26A4D6FD8();
    v56 = 0;
  }

  *&v51[v47[13]] = v56;
  sub_26A4D7E54();
  if (v86)
  {
    v66 = OUTLINED_FUNCTION_1_28();
    v67(v66);
    OUTLINED_FUNCTION_24_0();
  }

  else
  {
    sub_26A4D6FD8();
    v56 = 0;
  }

  *&v51[v47[14]] = v56;
  v68 = v78;
  v69 = a21;
  sub_26A6B5898(v68, v69, v80);
  v70 = swift_getKeyPath();
  if (v84)
  {

    v71 = sub_26A84F038();
  }

  else
  {
    v71 = 0;
  }

  sub_26A5AA1F0();
  v72 = (v36 + *(v79 + 36));
  *v72 = v70;
  v72[1] = v71;
  v73 = swift_getKeyPath();
  if (v83)
  {

    v74 = sub_26A84F038();
  }

  else
  {
    v74 = 0;
  }

  sub_26A4D7EA8();
  v75 = (v82 + *(v81 + 36));
  *v75 = v73;
  v75[1] = v74;
  sub_26A4D7E54();
  sub_26A5A9B2C();
  v76 = sub_26A851248();

  OUTLINED_FUNCTION_29_2();
  OUTLINED_FUNCTION_29_2();
  OUTLINED_FUNCTION_29_2();
  OUTLINED_FUNCTION_29_2();
  sub_26A4D6FD8();
  *&v51[v47[15]] = v76;
  OUTLINED_FUNCTION_2_26();
  sub_26A5AA1F0();
  __swift_destroy_boxed_opaque_existential_1(v85);
  OUTLINED_FUNCTION_27_0();
}

void SummaryItemPlayerView.init(text1:text2:text3:text4:thumbnail:play:pause:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_28_0();
  v72 = v21;
  v73 = v22;
  v77 = v24;
  v78 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v83 = v33;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEB78);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_19();
  v74 = v35;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v36);
  v76 = &v70 - v37;
  v38 = type metadata accessor for SummaryItemPlayerView();
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_41();
  v42 = (v41 - v40);
  v82 = v32;
  sub_26A50429C(v32, v91);
  v81 = v30;
  OUTLINED_FUNCTION_21_7();
  v80 = v28;
  OUTLINED_FUNCTION_21_7();
  v79 = v26;
  OUTLINED_FUNCTION_21_7();
  v90 = 0;
  v88 = 0u;
  v89 = 0u;
  if (qword_28157E670 != -1)
  {
    OUTLINED_FUNCTION_146();
  }

  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3890);
  __swift_project_value_buffer(v43, qword_281588798);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0);
  OUTLINED_FUNCTION_21_7();
  sub_26A6AEE74(v92);
  memcpy(v42, v92, 0xBFuLL);
  OUTLINED_FUNCTION_0_25();
  sub_26A5AA244();
  v44 = v38[5];
  if (qword_2803A8AE8 != -1)
  {
    OUTLINED_FUNCTION_0_20();
  }

  OUTLINED_FUNCTION_24_9(&v93);
  OUTLINED_FUNCTION_24_9(&v87[368]);
  sub_26A4D7E54();
  sub_26A6AEE74(v87);
  memcpy(v94, &v87[400], sizeof(v94));
  memcpy(&v87[192], &v87[400], 0xB0uLL);
  memcpy(&v42[v44], v87, 0x240uLL);
  v45 = &v42[v38[6]];
  sub_26A54DFFC(v94, v86);
  if (qword_28157E660 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  v95 = xmmword_281588758[0];
  v96 = unk_281588768;
  v97 = xmmword_281588778;
  v98 = unk_281588788;
  v99 = xmmword_281588758[0];
  v100 = unk_281588768;
  v101 = xmmword_281588778;
  v102 = unk_281588788;
  v70 = unk_281588788;
  v71 = xmmword_281588778;
  sub_26A4D7E54();
  v46 = sub_26A6AEE74(v86);
  OUTLINED_FUNCTION_84_0(v46, v86);
  v47 = v70;
  *(v45 + 12) = v71;
  *(v45 + 13) = v47;
  v48 = v100;
  *(v45 + 14) = v99;
  *(v45 + 15) = v48;
  v49 = v102;
  *(v45 + 16) = v101;
  *(v45 + 17) = v49;
  v50 = v38[7];
  *&v42[v50] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  OUTLINED_FUNCTION_22_10();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_162(KeyPath);
  v52 = v38[9];
  *&v42[v52] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  OUTLINED_FUNCTION_22_10();
  __swift_project_boxed_opaque_existential_1(v91, v91[3]);
  v53 = OUTLINED_FUNCTION_7_23();
  *&v42[v38[10]] = v54(v53);
  sub_26A4D7E54();
  if (v85)
  {
    __swift_project_boxed_opaque_existential_1(v84, v85);
    v55 = OUTLINED_FUNCTION_7_23();
    v56(v55);
    OUTLINED_FUNCTION_42_4();
  }

  else
  {
    sub_26A4D6FD8();
    v52 = 0;
  }

  *&v42[v38[11]] = v52;
  sub_26A4D7E54();
  if (v85)
  {
    __swift_project_boxed_opaque_existential_1(v84, v85);
    v57 = OUTLINED_FUNCTION_7_23();
    v58(v57);
    OUTLINED_FUNCTION_42_4();
  }

  else
  {
    sub_26A4D6FD8();
    v52 = 0;
  }

  *&v42[v38[12]] = v52;
  sub_26A4D7E54();
  if (v85)
  {
    __swift_project_boxed_opaque_existential_1(v84, v85);
    v59 = OUTLINED_FUNCTION_7_23();
    v60(v59);
    OUTLINED_FUNCTION_42_4();
  }

  else
  {
    sub_26A4D6FD8();
    v52 = 0;
  }

  *&v42[v38[13]] = v52;
  sub_26A4D7E54();
  if (v85)
  {
    __swift_project_boxed_opaque_existential_1(v84, v85);
    v61 = OUTLINED_FUNCTION_7_23();
    v62(v61);
    OUTLINED_FUNCTION_42_4();
  }

  else
  {
    sub_26A4D6FD8();
    v52 = 0;
  }

  *&v42[v38[14]] = v52;
  v63 = v77;

  v64 = v76;
  sub_26A6B5624(v72, v63, v73, a21, v76);
  v65 = swift_getKeyPath();
  v66 = (v64 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEB80) + 36));
  *v66 = v65;
  v66[1] = 0;
  v67 = swift_getKeyPath();
  v68 = (v64 + *(v75 + 36));
  *v68 = v67;
  v68[1] = 0;
  sub_26A4D7E54();
  sub_26A5A9B2C();
  v69 = sub_26A851248();

  OUTLINED_FUNCTION_19_10();
  OUTLINED_FUNCTION_19_10();
  OUTLINED_FUNCTION_19_10();
  OUTLINED_FUNCTION_19_10();
  __swift_destroy_boxed_opaque_existential_1(v82);
  sub_26A4D6FD8();
  OUTLINED_FUNCTION_19_10();
  OUTLINED_FUNCTION_19_10();
  OUTLINED_FUNCTION_19_10();
  OUTLINED_FUNCTION_19_10();
  *&v42[v38[15]] = v69;
  OUTLINED_FUNCTION_2_26();
  sub_26A5AA1F0();
  __swift_destroy_boxed_opaque_existential_1(v91);
  OUTLINED_FUNCTION_27_0();
}

void SummaryItemPlayerView.init(text1:text2:text3:text4:thumbnail:buttonForeground:buttonBackground:play:pause:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_28_0();
  v32 = OUTLINED_FUNCTION_25_10(v23, v24, v25, v26, v27, v28, v29, v30, v31);
  v33 = OUTLINED_FUNCTION_79(v32);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_41();
  v82 = v35 - v34;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEB80);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_82();
  v38 = v37;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEB78);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v40);
  v49 = OUTLINED_FUNCTION_30_6(v41, v42, v43, v44, v45, v46, v47, v48, v79);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_41();
  v53 = (v52 - v51);
  if (qword_28157E670 != -1)
  {
    OUTLINED_FUNCTION_146();
  }

  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3890);
  __swift_project_value_buffer(v54, qword_281588798);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0);
  OUTLINED_FUNCTION_21_7();
  sub_26A6AEE74(v93);
  memcpy(v53, v93, 0xBFuLL);
  OUTLINED_FUNCTION_0_25();
  sub_26A5AA244();
  v55 = v49[5];
  if (qword_2803A8AE8 != -1)
  {
    OUTLINED_FUNCTION_0_20();
  }

  OUTLINED_FUNCTION_24_9(&v94);
  OUTLINED_FUNCTION_24_9(&v92[368]);
  sub_26A4D7E54();
  sub_26A6AEE74(v92);
  memcpy(v95, &v92[400], sizeof(v95));
  OUTLINED_FUNCTION_31_8();
  memcpy(&v53[v55], v92, 0x240uLL);
  OUTLINED_FUNCTION_38_4();
  if (qword_28157E660 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  OUTLINED_FUNCTION_16_9(xmmword_281588758);
  sub_26A4D7E54();
  v56 = sub_26A6AEE74(v91);
  OUTLINED_FUNCTION_84_0(v56, v91);
  OUTLINED_FUNCTION_17_9();
  *(qword_2803D1B00 + v53) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  OUTLINED_FUNCTION_21_8();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_162(KeyPath);
  v58 = v49[9];
  *&v53[v58] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  OUTLINED_FUNCTION_21_8();
  v59 = v87[4];
  __swift_project_boxed_opaque_existential_1(v87, v87[3]);
  v60 = OUTLINED_FUNCTION_11_18();
  *&v53[v49[10]] = v61(v60, v59);
  sub_26A4D7E54();
  if (v89)
  {
    v62 = OUTLINED_FUNCTION_1_28();
    v63(v62);
    OUTLINED_FUNCTION_24_0();
  }

  else
  {
    sub_26A4D6FD8();
    v58 = 0;
  }

  *&v53[v49[11]] = v58;
  sub_26A4D7E54();
  if (v89)
  {
    v64 = OUTLINED_FUNCTION_1_28();
    v65(v64);
    OUTLINED_FUNCTION_24_0();
  }

  else
  {
    sub_26A4D6FD8();
    v58 = 0;
  }

  *&v53[v49[12]] = v58;
  sub_26A4D7E54();
  if (v89)
  {
    v66 = v90;
    __swift_project_boxed_opaque_existential_1(v88, v89);
    v67 = OUTLINED_FUNCTION_11_18();
    v68(v67, v66);
    OUTLINED_FUNCTION_24_0();
  }

  else
  {
    sub_26A4D6FD8();
    v58 = 0;
  }

  *&v53[v49[13]] = v58;
  sub_26A4D7E54();
  if (v89)
  {
    v69 = v90;
    __swift_project_boxed_opaque_existential_1(v88, v89);
    v70 = OUTLINED_FUNCTION_11_18();
    v71(v70, v69);
    OUTLINED_FUNCTION_24_0();
  }

  else
  {
    sub_26A4D6FD8();
    v58 = 0;
  }

  *&v53[v49[14]] = v58;

  sub_26A6B5624(v80, a21, a22, a23, v82);
  v72 = swift_getKeyPath();
  if (v86)
  {
    v88[0] = v86;

    v73 = sub_26A84F038();
  }

  else
  {
    v73 = 0;
  }

  sub_26A5AA1F0();
  v74 = (v38 + *(v81 + 36));
  *v74 = v72;
  v74[1] = v73;
  v75 = swift_getKeyPath();
  if (v85)
  {
    v88[0] = v85;

    v76 = sub_26A84F038();
  }

  else
  {
    v76 = 0;
  }

  sub_26A4D7EA8();
  v77 = (v84 + *(v83 + 36));
  *v77 = v75;
  v77[1] = v76;
  sub_26A4D7E54();
  sub_26A5A9B2C();
  v78 = sub_26A851248();

  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_31_1();
  sub_26A4D6FD8();
  *&v53[v49[15]] = v78;
  OUTLINED_FUNCTION_2_26();
  sub_26A5AA1F0();
  __swift_destroy_boxed_opaque_existential_1(v87);
  OUTLINED_FUNCTION_27_0();
}