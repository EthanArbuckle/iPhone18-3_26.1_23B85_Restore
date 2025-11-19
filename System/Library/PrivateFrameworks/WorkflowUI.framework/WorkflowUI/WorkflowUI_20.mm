void sub_27490E560()
{
  OUTLINED_FUNCTION_8_28();
  v0 = type metadata accessor for ColorIconPopoverView();
  OUTLINED_FUNCTION_34(v0);
  v1 = OUTLINED_FUNCTION_6_31();

  sub_274908674(v1, v2, v3, v4, v5, v6);
}

uint64_t sub_27490E5C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_27490E610(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_1_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t objectdestroy_94Tm()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_23_2();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

id sub_27490E6A0@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = v2;
  return v2;
}

uint64_t objectdestroy_122Tm()
{
  v1 = type metadata accessor for ColorIconPopoverView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3 + *(v1 + 36);
  v6 = sub_2749F9D74();
  if (!__swift_getEnumTagSinglePayload(v5, 1, v6))
  {
    OUTLINED_FUNCTION_9_3();
    (*(v7 + 8))(v5, v6);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B858);

  v8 = v0 + v3 + *(v1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BF50);
  OUTLINED_FUNCTION_107();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B2A0) + 32);
    sub_2749FAF84();
    OUTLINED_FUNCTION_1_2();
    (*(v11 + 8))(v8 + v10);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_27490E880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = OUTLINED_FUNCTION_50_7(a1, a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(v4);
  OUTLINED_FUNCTION_9();
  v5 = OUTLINED_FUNCTION_44();
  v6(v5);
  return a2;
}

uint64_t sub_27490E8D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = OUTLINED_FUNCTION_50_7(a1, a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(v4);
  OUTLINED_FUNCTION_9();
  v5 = OUTLINED_FUNCTION_44();
  v6(v5);
  return a2;
}

void ShortcutChiclet.RunButton.Model.Metrics.init(dimension:insets:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>)
{
  *a1 = a2;
  a1[1] = a2;
  a1[2] = a3;
  a1[3] = a4;
  a1[4] = a5;
  a1[5] = a6;
}

uint64_t ShortcutChiclet.RunButton.Model.__allocating_init(workflowReference:color:changeColorOnHover:isHidden:symbolName:metrics:action:)(void *a1, uint64_t (*a2)(), char a3, int a4, uint64_t (*a5)(), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = swift_allocObject();
  ShortcutChiclet.RunButton.Model.init(workflowReference:color:changeColorOnHover:isHidden:symbolName:metrics:action:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  return v17;
}

void sub_27490EA94(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ShortcutChiclet(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v1 + 80);
  v9 = v8;
  v10 = sub_2749FC474();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2749FA904();

  v20 = v24;
  v21 = v24;
  v22 = 0u;
  v23 = 0u;
  sub_27473D654(v2, v7);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_27473D980(v7, v12 + v11);
  type metadata accessor for ShortcutChiclet.RunButton.Model();
  swift_allocObject();
  ShortcutChiclet.RunButton.Model.init(workflowReference:color:changeColorOnHover:isHidden:symbolName:metrics:action:)(v8, v10, 1, 0, 0xD000000000000010, 0x8000000274A2C7A0, &v20, sub_274912098, v12);
  v19[15] = 0;
  sub_2749FC5B4();
  v13 = v21;
  OUTLINED_FUNCTION_4_35();
  sub_2749121E0(v14, v15);
  v16 = sub_2749FAD84();
  v17 = v20;
  *a1 = v16;
  *(a1 + 8) = v18;
  *(a1 + 16) = v17;
  *(a1 + 24) = v13;
  OUTLINED_FUNCTION_46();
}

uint64_t ShortcutChiclet.RunButton.init(model:)@<X0>(uint64_t a1@<X8>)
{
  sub_2749FC5B4();
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  type metadata accessor for ShortcutChiclet.RunButton.Model();
  OUTLINED_FUNCTION_4_35();
  sub_2749121E0(v2, v3);
  result = sub_2749FAD84();
  *a1 = result;
  *(a1 + 8) = v5;
  return result;
}

uint64_t sub_27490ED60(uint64_t a1)
{
  result = type metadata accessor for ShortcutChiclet(0);
  v3 = (a1 + *(result + 76));
  if (*v3)
  {
    return (*v3)(0);
  }

  return result;
}

uint64_t sub_27490EDB0@<X0>(uint64_t *a1@<X8>)
{
  result = ShortcutChiclet.RunButton.model.getter();
  *a1 = result;
  return result;
}

uint64_t ShortcutChiclet.RunButton.model.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t ShortcutChiclet.RunButton.$model.getter()
{
  type metadata accessor for ShortcutChiclet.RunButton.Model();
  OUTLINED_FUNCTION_4_35();
  sub_2749121E0(v0, v1);
  OUTLINED_FUNCTION_66_0();

  return sub_2749FAD94();
}

void ShortcutChiclet.RunButton.body.getter(uint64_t a1@<X8>)
{
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F670);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  v5 = &v50 - v4;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F678);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  v54 = &v50 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F680);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  v61 = &v50 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F688);
  OUTLINED_FUNCTION_43();
  *&v56 = v12;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  v15 = &v50 - v14;
  *&v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F690);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v16);
  v18 = &v50 - v17;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F698);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v19);
  v58 = &v50 - v20;
  v21 = v1[1];
  v55 = *v1;
  v22 = *(v1 + 16);
  v23 = v1[3];

  v24 = sub_27490F9FC();

  if (v24 && (v24, , v25 = sub_274910F58(), , (v25 & 1) == 0))
  {
    v51 = v5;
    v52 = v8;
    v53 = a1;
    swift_getKeyPath();
    swift_getKeyPath();

    OUTLINED_FUNCTION_66_0();
    sub_2749FA904();

    OUTLINED_FUNCTION_32_2();
    v31 = swift_allocObject();
    v50 = &v50;
    *(v31 + 16) = v65;
    MEMORY[0x28223BE20](v31);
    v32 = v55;
    *(&v50 - 4) = v55;
    *(&v50 - 3) = v21;
    *(&v50 - 16) = v22;
    *(&v50 - 1) = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F6A0);
    sub_274911298();
    sub_2749FC624();
    sub_27472AB6C(&qword_28096F6B0, &qword_28096F688);
    sub_2749FC1F4();
    v33 = v11;
    v34 = v22;
    (*(v56 + 8))(v15, v33);
    *&v65 = v32;
    *(&v65 + 1) = v21;
    v66 = v22;
    v67 = v23;
    v35 = sub_27490F744();

    v36 = sub_27490FDA0();

    *&v65 = v35;
    *(&v65 + 1) = v36;
    sub_274911324();
    sub_27491140C();
    v37 = v58;
    sub_2749FBFD4();

    sub_274911460(v18);
    v38 = *(v21 + OBJC_IVAR____TtCVV10WorkflowUI15ShortcutChiclet9RunButton5Model_metrics + 16);
    v56 = *(v21 + OBJC_IVAR____TtCVV10WorkflowUI15ShortcutChiclet9RunButton5Model_metrics + 32);
    v57 = v38;
    v39 = sub_2749FBC64();
    v40 = v37 + *(v59 + 36);
    *v40 = v39;
    v41 = v57;
    *(v40 + 24) = v56;
    *(v40 + 8) = v41;
    *(v40 + 40) = 0;

    v42 = sub_2749102D0();

    if (v42)
    {
      v63 = v34;
      v64 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B400);
      sub_2749FC5E4();
      v43 = v65;
      v44 = v66;
      v45 = v54;
      sub_2747B97A0(v37, v54, &qword_28096F698);
      v46 = v45 + *(v62 + 36);
      *v46 = v43;
      *(v46 + 16) = v44;
      sub_2747B97A0(v45, v51, &qword_28096F678);
      swift_storeEnumTagMultiPayload();
      sub_2749114C8();
      sub_274911554();
      v47 = v61;
      sub_2749FB7B4();
      sub_27472ECBC(v45, &qword_28096F678);
    }

    else
    {
      sub_2747B97A0(v37, v51, &qword_28096F698);
      swift_storeEnumTagMultiPayload();
      sub_2749114C8();
      sub_274911554();
      v47 = v61;
      sub_2749FB7B4();
    }

    v48 = v52;
    sub_27472ECBC(v37, &qword_28096F698);
    v49 = v53;
    sub_2747519D0(v47, v53);
    __swift_storeEnumTagSinglePayload(v49, 0, 1, v48);
    OUTLINED_FUNCTION_46();
  }

  else
  {
    OUTLINED_FUNCTION_46();

    __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  }
}

double sub_27490F584@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_2749FC524();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2749105D4();
  sub_2749FC514();
  (*(v11 + 104))(v13, *MEMORY[0x277CE0FE0], v10);
  v14 = sub_2749FC564();

  (*(v11 + 8))(v13, v10);
  *&v19 = a1;
  *(&v19 + 1) = a2;
  LOBYTE(v20) = a3;
  *(&v20 + 1) = a4;
  v15 = sub_27490F744();
  KeyPath = swift_getKeyPath();
  sub_2749FC914();
  sub_2749FABB4();
  *a5 = v14;
  *(a5 + 8) = KeyPath;
  *(a5 + 16) = v15;
  v17 = v20;
  *(a5 + 24) = v19;
  *(a5 + 40) = v17;
  result = *&v21;
  *(a5 + 56) = v21;
  return result;
}

uint64_t sub_27490F744()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B400);
  sub_2749FC5C4();
  if (v2 == 1)
  {

    sub_2749102D0();
  }

  sub_27490FDA0();

  v0 = sub_2749FC484();

  return v0;
}

void sub_27490F81C(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_2749FB964();
  OUTLINED_FUNCTION_1_29();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F720) - 8;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  v15 = &v19 - v14;
  sub_2749FB974();
  if (sub_2749FB984())
  {
    v16 = a2;
  }

  else
  {
    v16 = a1;
  }

  KeyPath = swift_getKeyPath();
  (*(v8 + 32))(v15, v11, v3);
  v18 = &v15[*(v12 + 44)];
  *v18 = KeyPath;
  v18[1] = v16;
  sub_274912028(v15, a3);

  OUTLINED_FUNCTION_46();
}

void ShortcutChiclet.RunButton.Model.Metrics.init(size:insets:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>, double a7@<D5>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
  a1[4] = a6;
  a1[5] = a7;
}

double static ShortcutChiclet.RunButton.Model.Metrics.zero.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_27490F9A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_27490F9FC();
  *a1 = result;
  return result;
}

uint64_t sub_27490F9FC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_68();
  sub_2749FA904();

  return v1;
}

uint64_t sub_27490FA6C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  OUTLINED_FUNCTION_66_0();
  return sub_2749FA914();
}

uint64_t (*sub_27490FAD8())()
{
  v1 = OUTLINED_FUNCTION_116();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_54(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_125_1(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_33(v4);
  return sub_2747B2788;
}

uint64_t sub_27490FB64()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F6E0);
  OUTLINED_FUNCTION_1_29();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_10_6(v1, v7);
  v3(v2);
  OUTLINED_FUNCTION_35();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F6D8);
  OUTLINED_FUNCTION_65_0();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_30();
  return v5(v4);
}

uint64_t sub_27490FC48()
{
  v1 = OUTLINED_FUNCTION_98();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F6E0);
  OUTLINED_FUNCTION_25_0(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_104(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_105(v8);
  OUTLINED_FUNCTION_42_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F6D8);
  OUTLINED_FUNCTION_50();
  swift_endAccess();
  return OUTLINED_FUNCTION_102_0();
}

uint64_t sub_27490FD48@<X0>(uint64_t *a1@<X8>)
{
  result = sub_27490FDA0();
  *a1 = result;
  return result;
}

uint64_t sub_27490FDA0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_68();
  sub_2749FA904();

  return v1;
}

uint64_t sub_27490FE10()
{
  swift_getKeyPath();
  swift_getKeyPath();

  OUTLINED_FUNCTION_66_0();
  return sub_2749FA914();
}

uint64_t (*sub_27490FE7C())()
{
  v1 = OUTLINED_FUNCTION_116();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_54(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_125_1(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_33(v4);
  return sub_2747B2788;
}

uint64_t sub_27490FEEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(char *))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1);
  return a7(v11);
}

uint64_t sub_27490FFCC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F6E8);
  OUTLINED_FUNCTION_1_29();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_10_6(v1, v7);
  v3(v2);
  OUTLINED_FUNCTION_35();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F0F8);
  OUTLINED_FUNCTION_65_0();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_30();
  return v5(v4);
}

uint64_t sub_2749100B0()
{
  v1 = OUTLINED_FUNCTION_98();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F6E8);
  OUTLINED_FUNCTION_25_0(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_104(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_105(v8);
  OUTLINED_FUNCTION_42_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F0F8);
  OUTLINED_FUNCTION_50();
  swift_endAccess();
  return OUTLINED_FUNCTION_102_0();
}

void sub_2749101B0(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 48);
  v6 = *(*a1 + 56);
  if (a2)
  {
    v7 = v4[4];
    v8 = v4[5];
    (*(v8 + 16))(*(*a1 + 48), v6, v7);
    a3(v5);
    (*(v8 + 8))(v6, v7);
  }

  else
  {
    a3(*(*a1 + 56));
  }

  free(v6);
  free(v5);

  free(v4);
}

uint64_t sub_274910278@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2749102D0();
  *a1 = result & 1;
  return result;
}

uint64_t (*sub_2749102F8())()
{
  v1 = OUTLINED_FUNCTION_116();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_54(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_125_1(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_33(v4);
  return sub_2747B2788;
}

uint64_t sub_274910384()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DB80);
  OUTLINED_FUNCTION_1_29();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_10_6(v1, v7);
  v3(v2);
  OUTLINED_FUNCTION_35();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C270);
  OUTLINED_FUNCTION_65_0();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_30();
  return v5(v4);
}

uint64_t sub_274910468()
{
  v1 = OUTLINED_FUNCTION_98();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DB80);
  OUTLINED_FUNCTION_25_0(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_104(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_105(v8);
  OUTLINED_FUNCTION_42_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C270);
  OUTLINED_FUNCTION_50();
  swift_endAccess();
  return OUTLINED_FUNCTION_102_0();
}

uint64_t sub_274910568@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2749105D4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2749105D4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_68();
  sub_2749FA904();

  return v1;
}

uint64_t sub_274910644()
{
  swift_getKeyPath();
  swift_getKeyPath();

  OUTLINED_FUNCTION_18_1();
  return sub_2749FA914();
}

uint64_t (*sub_2749106BC())()
{
  v1 = OUTLINED_FUNCTION_116();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_54(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_125_1(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_33(v4);
  return sub_2747A7A20;
}

uint64_t sub_274910748()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809683B8);
  OUTLINED_FUNCTION_1_29();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_10_6(v1, v7);
  v3(v2);
  OUTLINED_FUNCTION_35();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809683D8);
  OUTLINED_FUNCTION_65_0();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_30();
  return v5(v4);
}

uint64_t sub_27491082C()
{
  v1 = OUTLINED_FUNCTION_98();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809683B8);
  OUTLINED_FUNCTION_25_0(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_104(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_105(v8);
  OUTLINED_FUNCTION_42_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809683D8);
  OUTLINED_FUNCTION_50();
  swift_endAccess();
  return OUTLINED_FUNCTION_102_0();
}

uint64_t sub_27491092C@<X0>(uint64_t (**a1)()@<X8>)
{
  sub_274910A04();
  v3 = v2;
  result = swift_allocObject();
  *(result + 16) = sub_274912228;
  *(result + 24) = v3;
  *a1 = sub_27491222C;
  a1[1] = result;
  return result;
}

uint64_t sub_274910994(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  return sub_274910AA0(sub_274912228, v3);
}

uint64_t (*sub_274910A04())()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_68();
  sub_2749FA904();

  OUTLINED_FUNCTION_32_2();
  *(swift_allocObject() + 16) = v1;
  return sub_274912228;
}

uint64_t sub_274910AA0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_32_2();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  OUTLINED_FUNCTION_18_1();
  return sub_2749FA914();
}

void (*sub_274910B3C())(uint64_t a1, char a2)
{
  v1 = __swift_coroFrameAllocStub(0x50uLL);
  OUTLINED_FUNCTION_54(v1);
  v0[6] = swift_getKeyPath();
  v0[7] = swift_getKeyPath();
  OUTLINED_FUNCTION_18_1();
  v0[8] = sub_2749FA8F4();
  v0[9] = v2;
  v4 = *v2;
  v3 = v2[1];
  OUTLINED_FUNCTION_32_2();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v0[4] = sub_274912228;
  v0[5] = v5;

  return sub_274910C00;
}

void sub_274910C00(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 64);
  v5 = *(*a1 + 72);
  v6 = *(*a1 + 40);
  if (a2)
  {
    OUTLINED_FUNCTION_32_2();
    v7 = swift_allocObject();
    *(v7 + 16) = v3;
    *(v7 + 24) = v6;
    *v5 = sub_27491222C;
    v5[1] = v7;
  }

  else
  {
    OUTLINED_FUNCTION_32_2();
    v8 = swift_allocObject();
    *(v8 + 16) = v3;
    *(v8 + 24) = v6;
    *v5 = sub_27491222C;
    v5[1] = v8;
  }

  v4(v2, 0);

  free(v2);
}

uint64_t sub_274910D1C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F6F8);
  OUTLINED_FUNCTION_1_29();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_10_6(v1, v7);
  v3(v2);
  OUTLINED_FUNCTION_35();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F6F0);
  OUTLINED_FUNCTION_65_0();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_30();
  return v5(v4);
}

uint64_t sub_274910E00()
{
  v1 = OUTLINED_FUNCTION_98();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F6F8);
  OUTLINED_FUNCTION_25_0(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_104(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_105(v8);
  OUTLINED_FUNCTION_42_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F6F0);
  OUTLINED_FUNCTION_50();
  swift_endAccess();
  return OUTLINED_FUNCTION_102_0();
}

uint64_t sub_274910F00@<X0>(_BYTE *a1@<X8>)
{
  result = sub_274910F58();
  *a1 = result & 1;
  return result;
}

uint64_t (*sub_274910F80())()
{
  v1 = OUTLINED_FUNCTION_116();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_54(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_125_1(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_33(v4);
  return sub_2747B2788;
}

uint64_t sub_27491100C(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  OUTLINED_FUNCTION_50();
  return swift_endAccess();
}

uint64_t sub_27491107C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DB80);
  OUTLINED_FUNCTION_1_29();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_10_6(v1, v7);
  v3(v2);
  OUTLINED_FUNCTION_35();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C270);
  OUTLINED_FUNCTION_65_0();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_30();
  return v5(v4);
}

uint64_t sub_274911160()
{
  v1 = OUTLINED_FUNCTION_98();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DB80);
  OUTLINED_FUNCTION_25_0(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_104(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_105(v8);
  OUTLINED_FUNCTION_42_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C270);
  OUTLINED_FUNCTION_50();
  swift_endAccess();
  return OUTLINED_FUNCTION_102_0();
}

unint64_t sub_274911298()
{
  result = qword_28096F6A8;
  if (!qword_28096F6A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F6A0);
    sub_27473F76C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F6A8);
  }

  return result;
}

unint64_t sub_274911324()
{
  result = qword_28096F6B8;
  if (!qword_28096F6B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F690);
    sub_27472AB6C(&qword_28096F6B0, &qword_28096F688);
    sub_2749121E0(&qword_28159E5A0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F6B8);
  }

  return result;
}

unint64_t sub_27491140C()
{
  result = qword_28096F6C0;
  if (!qword_28096F6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F6C0);
  }

  return result;
}

uint64_t sub_274911460(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F690);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2749114C8()
{
  result = qword_28096F6C8;
  if (!qword_28096F6C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F678);
    sub_274911554();
    sub_27473F5EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F6C8);
  }

  return result;
}

unint64_t sub_274911554()
{
  result = qword_28096F6D0;
  if (!qword_28096F6D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F698);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F690);
    sub_274911324();
    sub_27491140C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F6D0);
  }

  return result;
}

uint64_t ShortcutChiclet.RunButton.Model.deinit()
{
  v1 = OBJC_IVAR____TtCVV10WorkflowUI15ShortcutChiclet9RunButton5Model__workflowReference;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F6D8);
  OUTLINED_FUNCTION_9();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtCVV10WorkflowUI15ShortcutChiclet9RunButton5Model__color;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F0F8);
  OUTLINED_FUNCTION_9();
  (*(v4 + 8))(v0 + v3);
  v5 = OBJC_IVAR____TtCVV10WorkflowUI15ShortcutChiclet9RunButton5Model__changeColorOnHover;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C270);
  OUTLINED_FUNCTION_9();
  v8 = *(v7 + 8);
  v8(v0 + v5, v6);
  v9 = OBJC_IVAR____TtCVV10WorkflowUI15ShortcutChiclet9RunButton5Model__symbolName;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809683D8);
  OUTLINED_FUNCTION_9();
  (*(v10 + 8))(v0 + v9);
  v11 = OBJC_IVAR____TtCVV10WorkflowUI15ShortcutChiclet9RunButton5Model__action;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F6F0);
  OUTLINED_FUNCTION_9();
  (*(v12 + 8))(v0 + v11);
  v8(v0 + OBJC_IVAR____TtCVV10WorkflowUI15ShortcutChiclet9RunButton5Model__isHidden, v6);
  return v0;
}

uint64_t ShortcutChiclet.RunButton.Model.__deallocating_deinit()
{
  ShortcutChiclet.RunButton.Model.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_274911850@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ShortcutChiclet.RunButton.Model();
  result = sub_2749FA874();
  *a1 = result;
  return result;
}

unint64_t sub_274911E94()
{
  result = qword_28096F708;
  if (!qword_28096F708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F710);
    sub_274911F18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F708);
  }

  return result;
}

unint64_t sub_274911F18()
{
  result = qword_28096F718;
  if (!qword_28096F718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F680);
    sub_2749114C8();
    sub_274911554();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F718);
  }

  return result;
}

uint64_t sub_274911FD0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2749FB184();
  *a1 = result;
  return result;
}

uint64_t sub_274912028(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F720);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_274912098()
{
  v1 = *(type metadata accessor for ShortcutChiclet(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_27490ED60(v2);
}

unint64_t sub_2749120F8()
{
  result = qword_28096F728;
  if (!qword_28096F728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F720);
    sub_2749121E0(&qword_28096E8D0, MEMORY[0x277CDE278]);
    sub_27472AB6C(&unk_28159E5B0, &unk_28096CFD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F728);
  }

  return result;
}

uint64_t sub_2749121E0(unint64_t *a1, void (*a2)(uint64_t))
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

void WFConcreteRunnableEntry.id.getter(uint64_t *a1@<X8>)
{
  v3 = [v1 uniqueIdentifier];
  v4 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

id sub_2749122C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a3;
  v47 = a4;
  v48 = a2;
  v5 = type metadata accessor for EntityPickerRuntimeView();
  v6 = (v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v49 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = (&v42 - v9);
  v11 = sub_2749FA104();
  OUTLINED_FUNCTION_43();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2749FA0B4();
  OUTLINED_FUNCTION_43();
  v44 = v18;
  v45 = v17;
  MEMORY[0x28223BE20](v17);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [a1 attribution];
  v22 = [v21 appBundleIdentifier];

  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  (*(v13 + 104))(v16, *MEMORY[0x277D7D648], v11);
  OUTLINED_FUNCTION_44();
  sub_2749FA054();
  v23 = [a1 items];
  sub_274912870();
  v43 = sub_2749FCF84();

  v24 = [a1 actionIdentifier];
  v42 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v26 = v25;

  v27 = [a1 attribution];
  v28 = [v27 appBundleIdentifier];

  v29 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v31 = v30;

  v32 = v44;
  v33 = v45;
  (*(v44 + 16))(v10 + v6[12], v20, v45);
  v34 = swift_allocObject();
  v35 = v47;
  *(v34 + 16) = v46;
  *(v34 + 24) = v35;
  *v10 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850);
  OUTLINED_FUNCTION_6_32();
  swift_storeEnumTagMultiPayload();
  *(v10 + v6[7]) = v43;
  *(v10 + v6[8]) = v48;
  *(v10 + v6[9]) = 4;
  v36 = (v10 + v6[10]);
  *v36 = v42;
  v36[1] = v26;
  v37 = (v10 + v6[11]);
  *v37 = v29;
  v37[1] = v31;
  v38 = (v10 + v6[13]);
  *v38 = sub_2749128B4;
  v38[1] = v34;
  sub_2749128DC(v10, v49);
  v39 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F730));

  v40 = sub_2749F9F34();
  sub_2749FB6B4();

  sub_274912940(v10);
  (*(v32 + 8))(v20, v33);
  return v40;
}

id sub_274912774()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EntityPickerHostingControllerFactory();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_2749127CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EntityPickerHostingControllerFactory();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for EntityPickerRuntimeView()
{
  result = qword_28096F738;
  if (!qword_28096F738)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_274912870()
{
  result = qword_280968930;
  if (!qword_280968930)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280968930);
  }

  return result;
}

uint64_t sub_2749128DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EntityPickerRuntimeView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_274912940(uint64_t a1)
{
  v2 = type metadata accessor for EntityPickerRuntimeView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2749129C4()
{
  sub_27472C68C(319, &qword_280968A60, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_27472C68C(319, &qword_28096F748, sub_274912870, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_2749FA0B4();
      if (v2 <= 0x3F)
      {
        sub_27478CEF4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_274912B10@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2749FB4C4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_27473ADB8(v2, &v14 - v9, &qword_28096D850);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2749FAA94();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_2749FD2D4();
    v13 = sub_2749FBC14();
    sub_2749FA424();

    sub_2749FB4B4();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_274912D10@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_2749FC914();
  a1[1] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F750);
  return sub_274912D5C(v1);
}

uint64_t sub_274912D5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F758);
  MEMORY[0x28223BE20](v2);
  v4 = &v13 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F760);
  MEMORY[0x28223BE20](v5);
  v7 = &v13 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F768);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  v11 = type metadata accessor for EntityPickerRuntimeView();
  if (sub_27472D918(*(a1 + *(v11 + 20))) < 1)
  {
    sub_2749136DC(v4);
    sub_27473ADB8(v4, v7, &qword_28096F758);
    swift_storeEnumTagMultiPayload();
    sub_274915588();
    sub_2749156CC();
    sub_2749FB7B4();
    return sub_2747359D0(v4, &qword_28096F758);
  }

  else
  {
    sub_274912FA0(v10);
    sub_27473ADB8(v10, v7, &qword_28096F768);
    swift_storeEnumTagMultiPayload();
    sub_274915588();
    sub_2749156CC();
    sub_2749FB7B4();
    return sub_2747359D0(v10, &qword_28096F768);
  }
}

uint64_t sub_274912FA0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v57 = a1;
  v47 = type metadata accessor for EntityPickerRuntimeView();
  v48 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v49 = v3;
  v51 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F7F0);
  v45 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v50 = (&v42 - v4);
  v44 = sub_2749FA104();
  v5 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F790);
  v55 = *(v8 - 8);
  v56 = v8;
  MEMORY[0x28223BE20](v8);
  v53 = &v42 - v9;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F780);
  MEMORY[0x28223BE20](v52);
  v54 = &v42 - v10;
  v58 = sub_2749F9E04();
  v11 = *(v58 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v58);
  v14 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v42 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v42 - v18;
  v20 = sub_274913CF8();
  v21 = sub_274781538(v20);

  if (v21)
  {
    v22 = v21;
    v23 = [v22 entryIcon];
    sub_2749F9DF4();

    (*(v11 + 32))(v19, v17, v58);
  }

  else
  {
    (*(v11 + 104))(v19, *MEMORY[0x277D7D310], v58);
  }

  v24 = *MEMORY[0x277D7D648];
  v25 = *(v5 + 104);
  v42 = v7;
  v25(v7, v24, v44);
  v44 = sub_274913F14();
  v26 = v50;
  *v50 = *(v2 + *(v47 + 24));
  v26[1] = 0;
  *(v26 + 16) = 1;
  (*(v45 + 104))(v26, *MEMORY[0x277D7D3A8], v46);
  sub_2749FA094();
  v27 = *(v11 + 16);
  v43 = v19;
  v28 = v19;
  v29 = v58;
  v27(v14, v28, v58);
  v30 = v51;
  sub_2749128DC(v2, v51);
  v31 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v32 = (v12 + *(v48 + 80) + v31) & ~*(v48 + 80);
  v33 = swift_allocObject();
  (*(v11 + 32))(v33 + v31, v14, v29);
  sub_274915954(v30, v33 + v32);
  sub_274912870();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F7F8);
  sub_274915BF8(&qword_28096F800, sub_274912870);
  sub_27472AB6C(&qword_28096F808, &qword_28096F7F8);
  v34 = v53;
  sub_2749F9EC4();
  sub_2749FC8F4();
  sub_2749FB004();
  v35 = v54;
  (*(v55 + 32))(v54, v34, v56);
  memcpy(&v35[*(v52 + 36)], __src, 0x70uLL);
  v36 = sub_2749FAED4();
  v37 = sub_2749FBC64();
  (*(v11 + 8))(v43, v29);
  v38 = v35;
  v39 = v57;
  sub_274915A9C(v38, v57);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F768);
  v41 = v39 + *(result + 36);
  *v41 = v36;
  *(v41 + 8) = v37;
  return result;
}

uint64_t sub_2749136DC@<X0>(uint64_t a1@<X8>)
{
  v60 = a1;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F7B8) - 8;
  MEMORY[0x28223BE20](v55);
  v52 = (&v46 - v2);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F7A8) - 8;
  MEMORY[0x28223BE20](v58);
  v56 = &v46 - v3;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F758) - 8;
  MEMORY[0x28223BE20](v59);
  v57 = &v46 - v4;
  v51 = sub_2749FA214();
  v50 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_2749FAA94();
  v7 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_2749F9FF4();
  v10 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_2749F9FE4();
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v47 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for EntityPickerRuntimeView();
  sub_2749FA084();
  sub_274912B10(v9);
  sub_2749F9FB4();
  v14 = *(v7 + 8);
  v15 = v49;
  v14(v9, v49);
  (*(v10 + 8))(v12, v48);
  sub_2749FA0A4();
  sub_274912B10(v9);
  v16 = sub_2749FA204();
  v14(v9, v15);
  (*(v50 + 8))(v6, v51);
  v17 = sub_2749FB634();
  v18 = v52;
  *v52 = v17;
  v18[1] = 0x402E000000000000;
  *(v18 + 16) = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F820);
  v20 = v47;
  sub_274914828(v1, v16, v18 + *(v19 + 44));
  v21 = sub_2749FBC74();
  sub_2749FA9E4();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F7C8) + 36);
  *v30 = v21;
  *(v30 + 1) = v23;
  *(v30 + 2) = v25;
  *(v30 + 3) = v27;
  *(v30 + 4) = v29;
  v30[40] = 0;
  v31 = sub_2749FBC84();
  sub_2749FA9E4();
  v32 = v18 + *(v55 + 44);
  *v32 = v31;
  *(v32 + 1) = v33;
  *(v32 + 2) = v34;
  *(v32 + 3) = v35;
  *(v32 + 4) = v36;
  v32[40] = 0;
  sub_2749FC914();
  sub_2749FB004();
  v37 = v18;
  v38 = v56;
  sub_2747D31F8(v37, v56, &qword_28096F7B8);
  memcpy((v38 + *(v58 + 44)), __src, 0x70uLL);
  sub_2749FA094();
  v39 = sub_2749FC834();
  v40 = sub_2749FBC64();

  v41 = v38;
  v42 = v57;
  sub_2747D31F8(v41, v57, &qword_28096F7A8);
  v43 = v60;
  v44 = v42 + *(v59 + 44);
  *v44 = v39;
  *(v44 + 8) = v40;
  sub_2747D31F8(v42, v43, &qword_28096F758);
  return (*(v53 + 8))(v20, v54);
}

uint64_t sub_274913CF8()
{
  v2 = type metadata accessor for EntityPickerRuntimeView();
  v3 = (v0 + v2[8]);
  v4 = *v3 == 0xD00000000000001FLL && 0x8000000274A2D4F0 == v3[1];
  if (v4 || (result = sub_2749FDCC4(), (result & 1) != 0))
  {
    v6 = *(v0 + v2[6]);
    v7 = *(v0 + v2[7]);
    v8 = v6 * v7;
    if ((v6 * v7) >> 64 != (v6 * v7) >> 63)
    {
      __break(1u);
LABEL_26:
      swift_unknownObjectRelease();
      goto LABEL_16;
    }

    v9 = *(v0 + v2[5]);

    v2 = sub_2747ACF20(v8, v9);
    v0 = v10;
    v8 = v11;
    v1 = v12;
    if ((v12 & 1) == 0)
    {
LABEL_16:
      sub_2747B057C(v2, v0, v8, v1);
      v25 = v24;
      goto LABEL_23;
    }

    sub_2749FDD04();
    swift_unknownObjectRetain_n();
    v13 = swift_dynamicCastClass();
    if (!v13)
    {
      swift_unknownObjectRelease();
      v13 = MEMORY[0x277D84F90];
    }

    v14 = *(v13 + 16);

    v15 = (v1 >> 1) - v8;
    if (!__OFSUB__(v1 >> 1, v8))
    {
LABEL_20:
      if (v14 == v15)
      {
        v25 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v25)
        {
          return v25;
        }

        v25 = MEMORY[0x277D84F90];
LABEL_23:
        swift_unknownObjectRelease();
        return v25;
      }

      goto LABEL_26;
    }

    __break(1u);
  }

  v16 = *(v0 + v2[6]);
  v17 = *(v0 + v2[7]);
  v18 = v16 * v17;
  if ((v16 * v17) >> 64 != (v16 * v17) >> 63)
  {
    __break(1u);
    goto LABEL_28;
  }

  v19 = v18 - 1;
  if (__OFSUB__(v18, 1))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v20 = *(v0 + v2[5]);

  v2 = sub_2747ACF20(v19, v20);
  v0 = v21;
  v8 = v22;
  v1 = v23;
  if ((v23 & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_2749FDD04();
  swift_unknownObjectRetain_n();
  v26 = swift_dynamicCastClass();
  if (!v26)
  {
    swift_unknownObjectRelease();
    v26 = MEMORY[0x277D84F90];
  }

  v14 = *(v26 + 16);

  v15 = (v1 >> 1) - v8;
  if (!__OFSUB__(v1 >> 1, v8))
  {
    goto LABEL_20;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_274913F14()
{
  v1 = (v0 + *(type metadata accessor for EntityPickerRuntimeView() + 32));
  v2 = *v1 == 0xD00000000000001FLL && 0x8000000274A2D4F0 == v1[1];
  if (v2 || (sub_2749FDCC4() & 1) != 0)
  {

    return sub_274913CF8();
  }

  else
  {
    v4 = sub_274913CF8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C990);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_274A11F70;
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    sub_2749FCE14();
    if (qword_28159E3A8 != -1)
    {
      swift_once();
    }

    v6 = qword_28159E448;
    v7 = sub_2749FCD64();
    v8 = sub_2749FCD64();

    v9 = [v6 localizedStringForKey:v7 value:v8 table:0];

    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v10 = [objc_opt_self() clearColor];
    v11 = [objc_allocWithZone(MEMORY[0x277D79FB8]) initWithColor_];

    v12 = objc_allocWithZone(MEMORY[0x277D7A158]);
    v13 = sub_27491A250(0xD000000000000010, 0x8000000274A33020, v11);
    v14 = [objc_allocWithZone(MEMORY[0x277CBEAC0]) init];
    v15 = objc_allocWithZone(MEMORY[0x277D79E28]);
    v16 = sub_2749FCD64();

    v17 = sub_2749FCD64();

    v18 = [v15 initWithIdentifier:v16 name:v17 entryIcon:v13 accessoryIcon:0 serializedParameterState:v14];

    *(inited + 32) = v18;
    sub_274782CFC(inited);
    return v4;
  }
}

uint64_t sub_274914200@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v47 = a4;
  v7 = type metadata accessor for EntityPickerRuntimeView();
  v8 = *(v7 - 8);
  v43 = v7;
  v44 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v46 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_2749FA0B4();
  v10 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v45 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F810);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v41 - v13;
  v15 = *a1;
  v16 = [*a1 identifier];
  v17 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v19 = v18;

  if (v17 == _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0() && v19 == v20)
  {
    goto LABEL_12;
  }

  v22 = sub_2749FDCC4();

  if (v22)
  {
    v23 = 1;
    goto LABEL_14;
  }

  v24 = [v15 identifier];
  v25 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v27 = v26;

  if (v25 == _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0() && v27 == v28)
  {
LABEL_12:
    v23 = 1;
  }

  else
  {
    v23 = sub_2749FDCC4();
  }

LABEL_14:
  v41[1] = [v15 entryIcon];
  v30 = sub_2749F9E04();
  v31 = v30;
  if (v23)
  {
    (*(*(v30 - 8) + 16))(v14, a2, v30);
    v32 = 0;
  }

  else
  {
    v32 = 1;
  }

  __swift_storeEnumTagSinglePayload(v14, v32, 1, v31);
  sub_274914604(v15);
  v33 = [v15 name];
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();

  (*(v10 + 16))(v45, a3 + *(v43 + 40), v42);
  v34 = a3;
  v35 = v46;
  sub_2749128DC(v34, v46);
  v36 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v37 = (v9 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  sub_274915954(v35, v38 + v36);
  *(v38 + v37) = v15;
  v39 = v15;
  return sub_2749F9DE4();
}

uint64_t sub_274914604(void *a1)
{
  v2 = sub_2749F9394();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 accessoryIcon];
  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F818);
  sub_2749F93A4();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_274A0EF10;
  v11[1] = 0x6567646162;
  v11[2] = 0xE500000000000000;
  sub_2749FD8D4();
  (*(v3 + 104))(v5, *MEMORY[0x277D7BE38], v2);
  v9 = v7;
  sub_2749F9384();

  return v8;
}

uint64_t sub_274914828@<X0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v111 = a2;
  v112 = a3;
  v97 = a1;
  v3 = sub_2749FBAE4();
  v105 = *(v3 - 8);
  v106 = v3;
  MEMORY[0x28223BE20](v3);
  v104 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for EntityPickerRuntimeView();
  v98 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v99 = v5;
  v100 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096CFC0);
  v102 = *(v6 - 8);
  v103 = v6;
  MEMORY[0x28223BE20](v6);
  v101 = &v92 - v7;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F828);
  v8 = MEMORY[0x28223BE20](v107);
  v110 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v109 = &v92 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C0A0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v92 - v12;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096AC48);
  v14 = MEMORY[0x28223BE20](v93);
  v108 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v95 = &v92 - v16;
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v17 = qword_28159E448;
  v92 = qword_28159E448;
  v18 = sub_2749FCD64();
  v19 = sub_2749FCD64();

  v20 = [v17 localizedStringForKey:v18 value:v19 table:0];

  v21 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v23 = v22;

  v113 = v21;
  v114 = v23;
  v94 = sub_27475D0D0();
  v24 = sub_2749FBEE4();
  v26 = v25;
  LOBYTE(v20) = v27;
  v28 = sub_2749FBD24();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v28);
  sub_2749FBD64();
  sub_2747359D0(v13, &unk_28096C0A0);
  v29 = sub_2749FBEC4();
  v31 = v30;
  v33 = v32;

  sub_27477656C(v24, v26, v20 & 1);

  MEMORY[0x277C5BD20](v34);
  v35 = sub_2749FBE84();
  v37 = v36;
  LOBYTE(v24) = v38;
  v40 = v39;

  sub_27477656C(v29, v31, v33 & 1);

  v41 = v95;
  sub_2749F9FD4();
  *v41 = v35;
  *(v41 + 1) = v37;
  v41[16] = v24 & 1;
  *(v41 + 3) = v40;
  sub_2749FCE14();
  v42 = sub_2749FCD64();
  v43 = sub_2749FCD64();

  v44 = v92;
  v45 = [v92 localizedStringForKey:v42 value:v43 table:0];

  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  sub_2749FCE14();
  sub_2749FCE14();
  v46 = sub_2749FCD64();

  v47 = sub_2749FCD64();

  v48 = [v44 localizedStringForKey:v46 value:v47 table:0];

  v49 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v51 = v50;

  sub_2749F93D4();
  sub_2749F93C4();
  v52 = v97;
  v53 = sub_2749F93B4();
  v55 = v54;

  v56 = v41;
  if (v55)
  {

    v49 = v53;
    v51 = v55;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967628);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_274A0EF10;
  *(v57 + 56) = MEMORY[0x277D837D0];
  *(v57 + 64) = sub_27475C4F4();
  *(v57 + 32) = v49;
  *(v57 + 40) = v51;
  v58 = sub_2749FCDB4();
  v60 = v59;

  v113 = v58;
  v114 = v60;
  v61 = v100;
  sub_2749128DC(v52, v100);
  v62 = (*(v98 + 80) + 16) & ~*(v98 + 80);
  v63 = swift_allocObject();
  sub_274915954(v61, v63 + v62);
  v64 = v101;
  sub_2749FC644();
  v65 = v104;
  sub_2749FBAD4();
  sub_27472AB6C(&unk_28096B360, &unk_28096CFC0);
  sub_274915BF8(&qword_28096D440, MEMORY[0x277CDE400]);
  v66 = v109;
  v67 = v103;
  v68 = v106;
  sub_2749FBFC4();
  (*(v105 + 8))(v65, v68);
  (*(v102 + 8))(v64, v67);
  v69 = (v66 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F830) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967F78);
  sub_2749FB014();
  *v69 = swift_getKeyPath();
  v70 = sub_2749FC474();
  *(v66 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F838) + 36)) = v70;
  v71 = sub_2749FC464();
  KeyPath = swift_getKeyPath();
  v113 = v71;
  v73 = sub_2749FABC4();
  v74 = (v66 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F840) + 36));
  *v74 = KeyPath;
  v74[1] = v73;
  v75 = v66 + *(v107 + 36);
  v76 = *MEMORY[0x277CE0118];
  v77 = sub_2749FB584();
  (*(*(v77 - 8) + 104))(v75, v76, v77);
  v78 = v111;
  v79 = [v111 color];
  v80 = sub_2749FC414();
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F848);
  *(v75 + *(v81 + 52)) = v80;
  *(v75 + *(v81 + 56)) = 256;
  [v78 blendMode];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F850);
  sub_2749FD554();
  v82 = sub_2749FC914();
  v84 = v83;
  v85 = (v75 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F858) + 36));
  *v85 = v82;
  v85[1] = v84;
  v86 = v108;
  sub_27473ADB8(v56, v108, &qword_28096AC48);
  v87 = v110;
  sub_27473ADB8(v66, v110, &qword_28096F828);
  v88 = v56;
  v89 = v112;
  sub_27473ADB8(v86, v112, &qword_28096AC48);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F860);
  sub_27473ADB8(v87, v89 + *(v90 + 48), &qword_28096F828);
  sub_2747359D0(v66, &qword_28096F828);
  sub_2747359D0(v88, &qword_28096AC48);
  sub_2747359D0(v87, &qword_28096F828);
  return sub_2747359D0(v86, &qword_28096AC48);
}

void sub_274915320(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for EntityPickerRuntimeView() + 44));
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v2 = qword_28159E448;
  v3 = sub_2749FCD64();
  v4 = sub_2749FCD64();

  v5 = [v2 localizedStringForKey:v3 value:v4 table:0];

  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v6 = [objc_opt_self() clearColor];
  v7 = [objc_allocWithZone(MEMORY[0x277D79FB8]) initWithColor_];

  v8 = objc_allocWithZone(MEMORY[0x277D7A158]);
  v9 = sub_27491A250(0xD000000000000010, 0x8000000274A33020, v7);
  v10 = [objc_allocWithZone(MEMORY[0x277CBEAC0]) init];
  v11 = objc_allocWithZone(MEMORY[0x277D79E28]);
  v12 = sub_2749FCD64();

  v13 = sub_2749FCD64();

  v14 = [v11 initWithIdentifier:v12 name:v13 entryIcon:v9 accessoryIcon:0 serializedParameterState:v10];

  v1(v14);
}

unint64_t sub_274915588()
{
  result = qword_28096F770;
  if (!qword_28096F770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F768);
    sub_274915614();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F770);
  }

  return result;
}

unint64_t sub_274915614()
{
  result = qword_28096F778;
  if (!qword_28096F778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F780);
    sub_27472AB6C(&qword_28096F788, &qword_28096F790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F778);
  }

  return result;
}

unint64_t sub_2749156CC()
{
  result = qword_28096F798;
  if (!qword_28096F798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F758);
    sub_274915784();
    sub_27472AB6C(&qword_28096F7E0, &qword_28096F7E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F798);
  }

  return result;
}

unint64_t sub_274915784()
{
  result = qword_28096F7A0;
  if (!qword_28096F7A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F7A8);
    sub_274915810();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F7A0);
  }

  return result;
}

unint64_t sub_274915810()
{
  result = qword_28096F7B0;
  if (!qword_28096F7B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F7B8);
    sub_27491589C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F7B0);
  }

  return result;
}

unint64_t sub_27491589C()
{
  result = qword_28096F7C0;
  if (!qword_28096F7C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F7C8);
    sub_27472AB6C(&qword_28096F7D0, &qword_28096F7D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F7C0);
  }

  return result;
}

uint64_t sub_274915954(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EntityPickerRuntimeView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2749159B8@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_2749F9E04() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for EntityPickerRuntimeView() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_274914200(a1, v2 + v6, v9, a2);
}

uint64_t sub_274915A9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F780);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_274915B0C()
{
  v1 = *(type metadata accessor for EntityPickerRuntimeView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2749147E4(v0 + v2, v3);
}

void sub_274915B98()
{
  v1 = *(type metadata accessor for EntityPickerRuntimeView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_274915320(v2);
}

uint64_t sub_274915BF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_274915C40()
{
  sub_27471F8A4(*(v0 + 24));
  sub_274917548(v0 + OBJC_IVAR____TtC10WorkflowUI31LinkSnippetDialogRenderingModel__state);
  v1 = OBJC_IVAR____TtC10WorkflowUI31LinkSnippetDialogRenderingModel___observationRegistrar;
  sub_2749F9314();
  OUTLINED_FUNCTION_9();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_274915CB8()
{
  sub_274915C40();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_274915D38()
{
  result = type metadata accessor for LinkSnippetDialogRenderingModel.State(319);
  if (v1 <= 0x3F)
  {
    result = sub_2749F9314();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_274915E3C(uint64_t a1, void *a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F938);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F968);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v24 - v17;
  v19 = v3 + OBJC_IVAR____TtC10WorkflowUI25LinkSnippetActionExecutor_continuation;
  if (a2)
  {
    sub_2747B97A0(v19, &v24 - v17, &qword_28096F968);
    if (__swift_getEnumTagSinglePayload(v18, 1, v6))
    {
      v20 = v18;
      return sub_27472ECBC(v20, &qword_28096F968);
    }

    (*(v7 + 16))(v12, v18, v6);
    v22 = a2;
    sub_27472ECBC(v18, &qword_28096F968);
    v25 = v22;
    sub_2749FD064();
    return (*(v7 + 8))(v12, v6);
  }

  else
  {
    sub_2747B97A0(v19, v16, &qword_28096F968);
    if (__swift_getEnumTagSinglePayload(v16, 1, v6))
    {
      v20 = v16;
      return sub_27472ECBC(v20, &qword_28096F968);
    }

    (*(v7 + 16))(v10, v16, v6);
    result = sub_27472ECBC(v16, &qword_28096F968);
    if (a3)
    {
      v25 = a3;
      v23 = a3;
      sub_2749FD054();
      return (*(v7 + 8))(v10, v6);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_27491618C()
{
  OUTLINED_FUNCTION_79();
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F960);
  v1[3] = swift_task_alloc();
  sub_2749FD0A4();
  v1[4] = sub_2749FD094();
  v3 = sub_2749FD044();

  return MEMORY[0x2822009F8](sub_274916258, v3, v2);
}

uint64_t sub_274916258()
{
  OUTLINED_FUNCTION_72();
  v1 = v0[2];

  v2 = *(v1 + OBJC_IVAR____TtC10WorkflowUI25LinkSnippetActionExecutor_snippetEnvironmentsProvider);
  if (v2)
  {

    v4 = v2(v3);
    sub_27471F8A4(v2);
  }

  else
  {
    v5 = v0[3];
    v6 = sub_2749F91B4();
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
    v7 = objc_allocWithZone(MEMORY[0x277D23C88]);
    v4 = sub_27483C520(v5, -1, -1, -1, -1, -1, -1, 0, 360.0, 480.0, 3.0, 0, 0, 0);
  }

  v8 = v0[1];

  return v8(v4);
}

uint64_t sub_27491640C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_2749FD0A4();
  v3[5] = sub_2749FD094();
  v5 = sub_2749FD044();

  return MEMORY[0x2822009F8](sub_2749164A8, v5, v4);
}

uint64_t sub_2749164A8()
{
  OUTLINED_FUNCTION_72();
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];

  v0[6] = _Block_copy(v2);
  v4 = v3;
  v5 = v1;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_274916560;

  return sub_27491618C();
}

uint64_t sub_274916560()
{
  OUTLINED_FUNCTION_72();
  v2 = v1;
  OUTLINED_FUNCTION_21_1();
  v4 = v3[6];
  v5 = v3[4];
  v6 = v3[2];
  v7 = *v0;
  OUTLINED_FUNCTION_8_1();
  *v8 = v7;

  (v4)[2](v4, v2);
  _Block_release(v4);

  OUTLINED_FUNCTION_48_0();

  return v9();
}

uint64_t sub_2749166B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C960);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_2749FD0E4();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_274A23E38;
  v9[5] = v8;
  sub_27491704C(0, 0, v6, &unk_274A23E48, v9);
}

id sub_27491680C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LinkSnippetActionExecutor(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2749168DC()
{
  sub_274916984();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_274916984()
{
  if (!qword_28096F930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F938);
    v0 = sub_2749FD6C4();
    if (!v1)
    {
      atomic_store(v0, &qword_28096F930);
    }
  }
}

unint64_t sub_2749169E8()
{
  result = sub_2749FACD4();
  if (v1 <= 0x3F)
  {
    result = sub_27478CB34();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_274916A5C(id a1)
{
  v3 = [v1 metadata];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 effectiveBundleIdentifiers];

    v6 = [v5 array];
    v7 = sub_2749FCF84();

    v8 = sub_27493562C(v7);

    if (v8)
    {
      v9 = sub_27472D918(v8);
      for (i = 0; ; ++i)
      {
        if (v9 == i)
        {

          return;
        }

        if ((v8 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x277C5F6D0](i, v8);
        }

        else
        {
          if (i >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v11 = *(v8 + 8 * i + 32);
        }

        v12 = v11;
        if (__OFADD__(i, 1))
        {
          break;
        }

        if ([v11 type] == a1)
        {

          v13 = [v12 bundleIdentifier];
          _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();

          return;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
    }
  }
}

uint64_t sub_274916C08()
{
  OUTLINED_FUNCTION_72();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2747ED3A8;

  return sub_27491640C(v2, v3, v4);
}

uint64_t sub_274916CB8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_2747F2F14;

  return v6();
}

uint64_t sub_274916DA0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2747F2F14;

  return sub_274916CB8(v2, v3, v4);
}

uint64_t sub_274916E60(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_2747ED3A8;

  return v7();
}

uint64_t objectdestroy_27Tm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_274916F88(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_18(v6);
  *v7 = v8;
  v7[1] = sub_2747F2F14;

  return sub_274916E60(a1, v3, v4, v5);
}

uint64_t sub_27491704C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C960);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v22 - v10;
  sub_2747B97A0(a3, v22 - v10, &unk_28096C960);
  v12 = sub_2749FD0E4();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_27472ECBC(v11, &unk_28096C960);
  }

  else
  {
    sub_2749FD0D4();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = sub_2749FD044();
    v15 = v14;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v16 = sub_2749FCE04() + 32;
      v17 = swift_allocObject();
      *(v17 + 16) = a4;
      *(v17 + 24) = a5;

      if (v15 | v13)
      {
        v23[0] = 0;
        v23[1] = 0;
        v18 = v23;
        v23[2] = v13;
        v23[3] = v15;
      }

      else
      {
        v18 = 0;
      }

      v22[1] = 7;
      v22[2] = v18;
      v22[3] = v16;
      v20 = swift_task_create();

      sub_27472ECBC(a3, &unk_28096C960);

      return v20;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_27472ECBC(a3, &unk_28096C960);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_274917328(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_274885C04;

  return v6(a1);
}

uint64_t sub_274917420()
{
  OUTLINED_FUNCTION_72();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_5(v1);

  return v4(v3);
}

uint64_t sub_2749174B4()
{
  OUTLINED_FUNCTION_72();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_5(v1);

  return v4(v3);
}

uint64_t sub_274917548(uint64_t a1)
{
  v2 = type metadata accessor for LinkSnippetDialogRenderingModel.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2749175A4(uint64_t a1)
{
  if (!*v1)
  {
    v4 = *(a1 + 32);
    v5 = (v4 + OBJC_IVAR____TtC10WorkflowUI29SmartShortcutPickerDataSource_searchText);
    swift_beginAccess();
    v6 = v5[1];
    v7 = *v5 & 0xFFFFFFFFFFFFLL;
    if ((v6 & 0x2000000000000000) != 0)
    {
      v7 = HIBYTE(v6) & 0xF;
    }

    if (v7)
    {
      goto LABEL_6;
    }

    if (!*(a1 + 128))
    {
      v26 = OUTLINED_FUNCTION_8_29();
      OUTLINED_FUNCTION_7_26(v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, *(&v46 + 1), v47, __src[0]);
      type metadata accessor for AutomationSmartShortcutPickerViewLayout(0);
      swift_allocObject();
      sub_2747D2AC8(v49, &v34);

      v16 = sub_274812A28(__src, v4);
      goto LABEL_7;
    }

    if (*(a1 + 128) != 1)
    {
LABEL_6:
      v8 = OUTLINED_FUNCTION_8_29();
      OUTLINED_FUNCTION_7_26(v8, v9, v10, v11, v12, v13, v14, v15, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, *(&v46 + 1), v47, __src[0]);
      v46 = 0uLL;
      LOBYTE(v47) = -1;
      type metadata accessor for ExpandedSmartShortcutPickerViewLayout(0);
      swift_allocObject();

      sub_2747D2AC8(v49, &v34);
      v16 = sub_274812BC4(__src, v4, &v46);
    }

    else
    {
      v18 = OUTLINED_FUNCTION_8_29();
      OUTLINED_FUNCTION_7_26(v18, v19, v20, v21, v22, v23, v24, v25, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, *(&v46 + 1), v47, __src[0]);
      type metadata accessor for StaccatoSmartShortcutPickerViewLayout(0);
      swift_allocObject();

      sub_2747D2AC8(v49, &v34);
      v16 = sub_2748127E8(__src, v4);
    }

LABEL_7:
    v2 = v16;
    goto LABEL_8;
  }

  v2 = *v1;
LABEL_8:

  return v2;
}

uint64_t SmartShortcutPickerGridLayout.hashValue.getter()
{
  v1 = *v0;
  sub_2749FDDF4();
  MEMORY[0x277C5FB60](v1);
  return sub_2749FDE44();
}

unint64_t sub_2749177C8()
{
  result = qword_28096F970;
  if (!qword_28096F970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F970);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SmartShortcutPickerGridLayout(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unsigned __int8 *getEnumTagSinglePayload for SmartShortcutPickerSectionLayout(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
LABEL_18:
    v6 = *result;
    if (v6 >= 2)
    {
      v7 = ((v6 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v7 = -2;
    }

    if (v7 < 0)
    {
      v7 = -1;
    }

    v8 = v7 + 1;
    v9 = v7 - 1;
    if (v8 >= 3)
    {
      return v9;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 65284;
    if (a2 + 65284 <= 0xFFFEFFFF)
    {
      v3 = 2;
    }

    else
    {
      v3 = 4;
    }

    if (v2 < 0xFF0000)
    {
      v3 = 1;
    }

    if (v2 >= 0x10000)
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
        v5 = result[2];
        if (!result[2])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 2);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 16)) - 65284);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for SmartShortcutPickerSectionLayout(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 65284;
  if (a3 + 65284 <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFC)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFB)
  {
    v7 = ((a2 - 252) >> 16) + 1;
    *result = a2 - 252;
    switch(v6)
    {
      case 1:
        *(result + 2) = v7;
        break;
      case 2:
        *(result + 2) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v7;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 2) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 2) = 0;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_274917AA8(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    v2 = ((v1 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v2 = -2;
  }

  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

_WORD *sub_274917AD8(_WORD *result, unsigned int a2)
{
  if (a2 > 0xFD)
  {
    *result = a2 - 254;
  }

  else if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

unsigned __int8 *getEnumTagSinglePayload for SmartShortcutPickerSectionLayout.HeaderStyle(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
LABEL_18:
    v6 = *result;
    v7 = v6 >= 2;
    v8 = (v6 + 2147483646) & 0x7FFFFFFF;
    if (!v7)
    {
      v8 = -1;
    }

    if (v8 + 1 >= 2)
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 2;
    if (a2 + 2 >= 0xFFFF00)
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
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 2);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SmartShortcutPickerSectionLayout.HeaderStyle(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
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

  if (a3 >= 0xFE)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFD)
  {
    v7 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        break;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_274917C9C(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_274917CB8(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_274917CF0(unint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_11_25();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    type metadata accessor for GridLayoutSection();
    if (qword_280966C40 != -1)
    {
      OUTLINED_FUNCTION_0_35();
    }

    OUTLINED_FUNCTION_20_2(v195);
    v21 = OUTLINED_FUNCTION_20_2(&__src);
    OUTLINED_FUNCTION_13_22(v21, v22, v23, v24, v25, v26, v27, v28, v123, v129, v135, v139, v143, v147, v151, v155, v159, v163, v167, v171, v175, v179, __src, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195[0]);
    swift_unknownObjectRetain();
    sub_274918120(&__src, a2, 0);
    return v29;
  }

  v8 = Strong;
  sub_27471CF08(0, &qword_280968D20);
  v9 = objc_opt_self();
  v10 = [v9 fractionalWidthDimension_];
  v11 = [v9 estimatedDimension_];
  v12 = [objc_opt_self() sizeWithWidthDimension:v10 heightDimension:v11];

  v13 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v15 = sub_2747F5B24(v12, v13, v14, 1);
  sub_2747CF414(a1, v195);
  v17 = v195[0];
  v16 = v195[1];
  v18 = v196;
  v19 = v197;
  if (v198 == 3)
  {
    type metadata accessor for ListLayoutSection();
    v20 = sub_274918AD0(a2, *(v19 + 16));
    sub_2747CB3B0(v17, v16, v18);

LABEL_19:

    return v20;
  }

  if (v198 != 4)
  {
    HIDWORD(v129) = v196;
    if ((v198 & 0xFF00) == 0x200)
    {
      v30 = v198;
      if (*(v8 + 128))
      {
        v31 = type metadata accessor for GridLayoutSection();
        OUTLINED_FUNCTION_2_37(v31, v32, v33, v34, v35, v36, v37, v38, v123, v129, v135, v139, v143, v147, v151, v155, v159, v163, v167, v171, v175, v179, __src, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195[0]);
        OUTLINED_FUNCTION_6_33(&__src);
        v39 = swift_unknownObjectRetain();
        OUTLINED_FUNCTION_13_22(v39, v40, v41, v42, v43, v44, v45, v46, v124, v130, v136, v140, v144, v148, v152, v156, v160, v164, v168, v172, v176, v180, __src, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195[0]);
        sub_274918120(&__src, a2, a4);
      }

      else
      {
        v86 = type metadata accessor for CarouselLayoutSection();
        OUTLINED_FUNCTION_2_37(v86, v87, v88, v89, v90, v91, v92, v93, v123, v129, v135, v139, v143, v147, v151, v155, v159, v163, v167, v171, v175, v179, __src, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195[0]);
        v94 = OUTLINED_FUNCTION_6_33(&__src);
        OUTLINED_FUNCTION_13_22(v94, v95, v96, v97, v98, v99, v100, v101, v128, v134, v138, v142, v146, v150, v154, v158, v162, v166, v170, v174, v178, v182, __src, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195[0]);
        v47 = sub_27491876C(&__src);
      }

      v20 = v47;
      if (v30 == 2)
      {

        OUTLINED_FUNCTION_3_45(v102, v103, v104, v105, v106, v107, v108, v109, v125, *v131, v131[4]);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C990);
        v110 = OUTLINED_FUNCTION_9_23();
        *(v110 + 16) = xmmword_274A11F70;
        *(v110 + 32) = v15;
        v111 = v15;
        v112 = v20;
        v113 = sub_2749FCF74();

        [v112 setBoundarySupplementaryItems_];

        OUTLINED_FUNCTION_3_45(v114, v115, v116, v117, v118, v119, v120, v121, v125, *v131, v131[4]);
      }
    }

    else
    {
      v48 = v198;
      v49 = type metadata accessor for GridLayoutSection();
      OUTLINED_FUNCTION_2_37(v49, v50, v51, v52, v53, v54, v55, v56, v123, v129, v135, v139, v143, v147, v151, v155, v159, v163, v167, v171, v175, v179, __src, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195[0]);
      OUTLINED_FUNCTION_6_33(&__src);
      v57 = swift_unknownObjectRetain();
      OUTLINED_FUNCTION_13_22(v57, v58, v59, v60, v61, v62, v63, v64, v126, v132, v137, v141, v145, v149, v153, v157, v161, v165, v169, v173, v177, v181, __src, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195[0]);
      sub_274918120(&__src, a2, a4);
      v20 = v65;
      if (v48 == 2)
      {

        OUTLINED_FUNCTION_3_45(v66, v67, v68, v69, v70, v71, v72, v73, v127, *v133, v133[4]);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C990);
        v74 = OUTLINED_FUNCTION_9_23();
        *(v74 + 16) = xmmword_274A11F70;
        *(v74 + 32) = v15;
        v75 = v20;
        v76 = v15;
        v77 = sub_2749FCF74();

        [v75 setBoundarySupplementaryItems_];

        OUTLINED_FUNCTION_3_45(v78, v79, v80, v81, v82, v83, v84, v85, v127, *v133, v133[4]);
      }
    }

    goto LABEL_19;
  }

  OUTLINED_FUNCTION_4_37();
  result = sub_2749FDAE4();
  __break(1u);
  return result;
}

void sub_274918120(const void *a1, void *a2, uint64_t a3)
{
  v7 = sub_2749FA1F4();
  OUTLINED_FUNCTION_43();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_0();
  v13 = v12 - v11;
  memcpy(v61, a1, 0x59uLL);
  v55 = v3;
  if (LOBYTE(v61[11]) == 2)
  {
    sub_2749FA164();
    goto LABEL_5;
  }

  if (LOBYTE(v61[11]) == 1)
  {
    sub_2749FA114();
LABEL_5:
    v14 = objc_opt_self();
    sub_2749FA124();
    v15 = [v14 absoluteDimension_];
    (*(v9 + 8))(v13, v7);
    v16 = LOBYTE(v61[11]);
    goto LABEL_7;
  }

  v15 = [objc_opt_self() absoluteDimension_];
  v16 = 0;
LABEL_7:
  v17 = v15;
  v18 = [a2 traitCollection];
  v19 = [v18 preferredContentSizeCategory];

  v20 = sub_2749FD4E4();
  if (!v16)
  {
    v23 = [objc_opt_self() fractionalWidthDimension_];
    v24 = 24.0;
    v25 = 16.0;
    v26 = 2.0;
    v53 = 2;
LABEL_13:
    v27 = 16.0;
    goto LABEL_17;
  }

  if (v16 == 1)
  {
    v21 = v20 & 1;
    v22 = 1;
    if (!v21)
    {
      v22 = 2;
    }

    v53 = v22;
    v23 = [objc_opt_self() fractionalWidthDimension_];
    v24 = 24.0;
    v25 = 16.0;
    v26 = 2.0;
    goto LABEL_13;
  }

  v28 = [objc_opt_self() sharedProvider];
  [v28 metricsWithInterfaceOrientation_];
  v29 = v57;
  v27 = v60;

  if (v20)
  {
    v29 = v57 - 1;
    if (__OFSUB__(v57, 1))
    {
      __break(1u);
      return;
    }
  }

  v53 = v29;
  v23 = [objc_opt_self() absoluteDimension_];
  v25 = v56 + v59;
  v26 = 10.0;
  v24 = 44.0;
LABEL_17:
  v54 = a2;
  v30 = v23;
  if (_UISolariumEnabled() && v16 == 1)
  {
    sub_27471CF08(0, &qword_28096F978);
    v31 = objc_opt_self();
    v32 = [v31 fractionalWidthDimension_];
    v33 = [v31 fractionalHeightDimension_];
    v34 = [objc_opt_self() sizeWithWidthDimension:v32 heightDimension:v33];

    sub_2749FA024();
    v35 = sub_2749FA004();
    v37 = v36;
    v38 = [objc_opt_self() layoutAnchorWithEdges_];
    v39 = sub_274919004(v34, v35, v37, v38);
    [v39 setZIndex_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C990);
    v40 = OUTLINED_FUNCTION_9_23();
    *(v40 + 16) = xmmword_274A11F70;
    *(v40 + 32) = v39;
  }

  sub_27471CF08(0, &qword_280968D28);
  v41 = objc_opt_self();
  v42 = [v41 sizeWithWidthDimension:v30 heightDimension:v17];

  v43 = sub_274919090(v42);
  v44 = objc_opt_self();
  v45 = [objc_opt_self() fractionalWidthDimension_];
  v46 = [v41 sizeWithWidthDimension:v45 heightDimension:v17];

  v47 = [v44 horizontalGroupWithLayoutSize:v46 subitem:v43 count:v53];
  v48 = LOBYTE(v61[11]);
  if (LOBYTE(v61[11]))
  {
    if (LOBYTE(v61[11]) == 1)
    {
      v49 = 9.0;
    }

    else
    {
      v49 = 30.0;
    }
  }

  else
  {
    v49 = v61[2];
  }

  v50 = [objc_opt_self() fixedSpacing_];
  [v47 setInterItemSpacing_];

  v51 = [swift_getObjCClassFromMetadata() sectionWithGroup_];
  v52 = 10.0;
  if (v48)
  {
    if (v48 == 1)
    {
      sub_2747D2B24(v61);
    }

    else
    {
      v52 = 30.0;
    }
  }

  [v51 setInterGroupSpacing_];
  [v51 setContentInsets_];
  swift_unknownObjectRelease();
}

void *sub_27491876C(void *__src)
{
  memcpy(v32, __src, 0x59uLL);
  v1 = LOBYTE(v32[11]);
  if (LOBYTE(v32[11]))
  {
    if (LOBYTE(v32[11]) == 1)
    {
      v2 = 68.0;
    }

    else
    {
      v2 = 195.0;
    }
  }

  else
  {
    v2 = v32[1];
  }

  v3 = objc_opt_self();
  v4 = [v3 absoluteDimension_];
  v5 = OUTLINED_FUNCTION_10_29();
  v7 = [v5 v6];
  v8 = objc_opt_self();
  v9 = [v8 sizeWithWidthDimension:v4 heightDimension:v7];

  v10 = [objc_opt_self() itemWithLayoutSize_];
  if (v1)
  {
    if (v1 == 1)
    {
      v11 = [v3 absoluteDimension_];
      v12 = 83.0;
    }

    else
    {
      v15 = OUTLINED_FUNCTION_10_29();
      v11 = [v15 v16];
      v12 = 103.0;
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_10_29();
    v11 = [v13 v14];
    v12 = v32[0] + 16.0;
  }

  v17 = objc_opt_self();
  v18 = OUTLINED_FUNCTION_10_29();
  v20 = [v18 v19];
  v21 = [v8 sizeWithWidthDimension:v11 heightDimension:v20];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C990);
  v22 = OUTLINED_FUNCTION_9_23();
  *(v22 + 16) = xmmword_274A11F70;
  *(v22 + 32) = v10;
  sub_27471CF08(0, &qword_280968D28);
  v23 = v10;
  v24 = sub_2749FCF74();

  v25 = [v17 horizontalGroupWithLayoutSize:v21 subitems:v24];

  v26 = [swift_getObjCClassFromMetadata() sectionWithGroup_];
  v27 = v26;
  if (v1)
  {
    v28 = v26;
    if (v1 == 1)
    {
      sub_2747D2B24(v32);
      v29 = 9.0;
    }

    else
    {
      v29 = 30.0;
    }
  }

  else
  {
    v29 = v32[2];
    v30 = v26;
  }

  [v27 setInterGroupSpacing_];
  [v27 setContentInsets_];
  [v27 setOrthogonalScrollingBehavior_];

  return v27;
}

uint64_t sub_274918AD0(uint64_t a1, uint64_t a2)
{
  v3 = sub_2749FA794();
  OUTLINED_FUNCTION_43();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v9 = v8 - v7;
  v10 = sub_2749FA7E4();
  OUTLINED_FUNCTION_43();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_0();
  v16 = v15 - v14;
  (*(v5 + 104))(v9, *MEMORY[0x277D74D60], v3);
  sub_2749FA7A4();
  v17 = [objc_opt_self() clearColor];
  sub_2749FA7B4();
  *(swift_allocObject() + 16) = a2;
  sub_2749FA7D4();
  sub_27471CF08(0, &unk_280969880);
  v18 = sub_2749FD524();
  (*(v12 + 8))(v16, v10);
  return v18;
}

uint64_t sub_274918CAC(unint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_11_25();
  if (!swift_weakLoadStrong())
  {
    type metadata accessor for GridLayoutSection();
    if (qword_280966C40 != -1)
    {
      OUTLINED_FUNCTION_0_35();
    }

    OUTLINED_FUNCTION_20_2(v28);
    OUTLINED_FUNCTION_20_2(v27);
    sub_2747D2AC8(v28, v26);
    swift_unknownObjectRetain();
    sub_274918120(v27, a2, 0);
    return v20;
  }

  sub_27471CF08(0, &qword_280968D20);
  v7 = objc_opt_self();
  v8 = [v7 fractionalWidthDimension_];
  v9 = [v7 estimatedDimension_];
  v10 = [objc_opt_self() sizeWithWidthDimension:v8 heightDimension:v9];

  v11 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v13 = sub_2747F5B24(v10, v11, v12, 1);
  sub_2747CF414(a1, v28);
  v14 = v30;
  if (v30 != 3 && v30 != 4)
  {
    v15 = v28[0];
    v16 = v28[1];
    v17 = v29;
    type metadata accessor for GridLayoutSection();
    OUTLINED_FUNCTION_6_33(v28);
    OUTLINED_FUNCTION_6_33(v27);
    swift_unknownObjectRetain();
    sub_2747D2AC8(v28, v26);
    sub_274918120(v27, a2, a4);
    v19 = v18;
    if (v14 == 2)
    {

      sub_2747CB3B0(v15, v16, v17);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C990);
      v21 = OUTLINED_FUNCTION_9_23();
      *(v21 + 16) = xmmword_274A11F70;
      *(v21 + 32) = v13;
      v22 = v19;
      v23 = v13;
      v24 = sub_2749FCF74();

      [v22 setBoundarySupplementaryItems_];

      sub_2747CB3B0(v15, v16, v17);
    }

    return v19;
  }

  OUTLINED_FUNCTION_4_37();
  result = sub_2749FDAE4();
  __break(1u);
  return result;
}

id sub_274919004(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_2749FCD64();

  v7 = [swift_getObjCClassFromMetadata() supplementaryItemWithLayoutSize:a1 elementKind:v6 containerAnchor:a4];

  return v7;
}

id sub_274919090(void *a1)
{
  sub_27471CF08(0, &qword_28096F978);
  v2 = sub_2749FCF74();

  v3 = [swift_getObjCClassFromMetadata() itemWithLayoutSize:a1 supplementaryItems:v2];

  return v3;
}

id sub_274919174(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2749191D0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_2749FA6B4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2749FA6C4();
  (*(*(v10 - 8) + 16))(a3, a1, v10);
  v11 = *(v7 + 104);
  v11(v9, *MEMORY[0x277D74CA8], v6);
  sub_2749FA694();
  result = sub_2749F9264();
  if (__OFSUB__(a2, 1))
  {
    __break(1u);
  }

  else if (result == a2 - 1)
  {
    v11(v9, *MEMORY[0x277D74C98], v6);
    return sub_2749FA694();
  }

  else
  {
    return sub_2749FA6A4();
  }

  return result;
}

unint64_t WFWorkflowTypeName.symbolName.getter()
{
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_4_18();
  v5 = v5 && v0 == v4;
  if (v5)
  {

    return 0xD000000000000013;
  }

  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_5();

  if (v1)
  {
    return 0xD000000000000013;
  }

  v6 = 0x746177656C707061;
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  OUTLINED_FUNCTION_11_26();
  OUTLINED_FUNCTION_13_23();
  if (v5 && v2 == v7)
  {

    return v6;
  }

  OUTLINED_FUNCTION_4_38();
  OUTLINED_FUNCTION_33_1();

  if ((v3 & 1) == 0)
  {
    v6 = 0x62756F642E646562;
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    OUTLINED_FUNCTION_11_26();
    OUTLINED_FUNCTION_13_23();
    if (v5 && v2 == v9)
    {
      goto LABEL_47;
    }

    OUTLINED_FUNCTION_4_38();
    OUTLINED_FUNCTION_33_1();

    if (v3)
    {
      return v6;
    }

    v6 = 0x7061687372616567;
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    OUTLINED_FUNCTION_11_26();
    OUTLINED_FUNCTION_13_23();
    if (v5 && v2 == v11)
    {
      goto LABEL_47;
    }

    OUTLINED_FUNCTION_4_38();
    OUTLINED_FUNCTION_33_1();

    if (v3)
    {
      return v6;
    }

    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_4_18();
    if (v5 && v13 == 0x7061687372616567)
    {
    }

    else
    {
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_5();

      if ((v1 & 1) == 0)
      {
        _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
        OUTLINED_FUNCTION_3_1();
        OUTLINED_FUNCTION_4_18();
        if (v5 && v15 == 0x7061687372616567)
        {
        }

        else
        {
          OUTLINED_FUNCTION_0_1();
          OUTLINED_FUNCTION_5();

          if ((v1 & 1) == 0)
          {
            v6 = 0x697966696E67616DLL;
            _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
            OUTLINED_FUNCTION_11_26();
            OUTLINED_FUNCTION_13_23();
            if (!v5 || v2 != v17)
            {
              OUTLINED_FUNCTION_4_38();
              OUTLINED_FUNCTION_33_1();

              if (v3)
              {
                return v6;
              }

              v19 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
              v21 = v20;
              if (v19 != _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0() || v21 != v22)
              {
                v24 = sub_2749FDCC4();

                if ((v24 & 1) == 0)
                {
                  return 0;
                }

                return v6;
              }
            }

LABEL_47:

            return v6;
          }
        }

        return 0xD000000000000011;
      }
    }

    return 0xD000000000000011;
  }

  return v6;
}

id WFWorkflowTypeName.icon.getter()
{
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_4_18();
  v4 = v4 && v1 == v3;
  if (v4)
  {

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_5();

  if (v2)
  {
LABEL_10:
    sub_27483AF08();
    return sub_274903E28();
  }

  WFWorkflowTypeName.symbolName.getter();
  if (v5)
  {
    OUTLINED_FUNCTION_7_27();
    v6 = WFWorkflowTypeName.symbolBackground.getter();
    if (v6)
    {
      v7 = v6;
      v8 = objc_allocWithZone(MEMORY[0x277D7A158]);
      return sub_27491A250(v1, v0, v7);
    }
  }

  return 0;
}

uint64_t WFWorkflowTypeName.appearsInName.getter()
{
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_4_18();
  v4 = v4 && v1 == v3;
  if (v4)
  {
  }

  else
  {
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_5();

    if ((v2 & 1) == 0)
    {
      _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      OUTLINED_FUNCTION_3_1();
      OUTLINED_FUNCTION_4_18();
      if (v4 && v1 == v5)
      {
      }

      else
      {
        OUTLINED_FUNCTION_0_1();
        OUTLINED_FUNCTION_5();

        if ((v2 & 1) == 0)
        {
          v7 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
          OUTLINED_FUNCTION_8_30();
          _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
          OUTLINED_FUNCTION_12_25();
          if (v4 && v0 == v8)
          {
            goto LABEL_44;
          }

          OUTLINED_FUNCTION_2_38();
          OUTLINED_FUNCTION_10_30();
          OUTLINED_FUNCTION_15_20();

          if (v7)
          {
            goto LABEL_38;
          }

          v10 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
          OUTLINED_FUNCTION_8_30();
          _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
          OUTLINED_FUNCTION_12_25();
          if (v4 && v0 == v11)
          {
LABEL_44:

            goto LABEL_38;
          }

          OUTLINED_FUNCTION_2_38();
          OUTLINED_FUNCTION_10_30();
          OUTLINED_FUNCTION_15_20();

          if ((v10 & 1) == 0)
          {
            _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
            OUTLINED_FUNCTION_3_1();
            OUTLINED_FUNCTION_4_18();
            if (v4 && v1 == v13)
            {
            }

            else
            {
              OUTLINED_FUNCTION_0_1();
              OUTLINED_FUNCTION_5();

              if ((v10 & 1) == 0)
              {
                _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
                OUTLINED_FUNCTION_3_1();
                OUTLINED_FUNCTION_4_18();
                if (v4 && v1 == v15)
                {
                }

                else
                {
                  OUTLINED_FUNCTION_0_1();
                  OUTLINED_FUNCTION_5();

                  if ((v10 & 1) == 0)
                  {
                    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
                    OUTLINED_FUNCTION_7_27();
                    if (v1 == _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0() && v0 == v17)
                    {
                    }

                    else
                    {
                      v19 = OUTLINED_FUNCTION_5_0();

                      if ((v19 & 1) == 0)
                      {
                        return 0;
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
  }

LABEL_38:
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v21 = OUTLINED_FUNCTION_17_21();
  v22 = OUTLINED_FUNCTION_17_21();

  v24 = OUTLINED_FUNCTION_13_1(v23, sel_localizedStringForKey_value_table_);

  v20 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  return v20;
}

uint64_t WFWorkflowTypeName.showInName.getter()
{
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_4_18();
  v4 = v4 && v1 == v3;
  if (v4)
  {
  }

  else
  {
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_5();

    if ((v2 & 1) == 0)
    {
      _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      OUTLINED_FUNCTION_3_1();
      OUTLINED_FUNCTION_4_18();
      if (v4 && v1 == v5)
      {
      }

      else
      {
        OUTLINED_FUNCTION_0_1();
        OUTLINED_FUNCTION_5();

        if ((v2 & 1) == 0)
        {
          v7 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
          OUTLINED_FUNCTION_8_30();
          _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
          OUTLINED_FUNCTION_12_25();
          if (v4 && v0 == v8)
          {
            goto LABEL_54;
          }

          OUTLINED_FUNCTION_2_38();
          OUTLINED_FUNCTION_10_30();
          OUTLINED_FUNCTION_15_20();

          if (v7)
          {
            goto LABEL_48;
          }

          v10 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
          OUTLINED_FUNCTION_8_30();
          _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
          OUTLINED_FUNCTION_12_25();
          if (v4 && v0 == v11)
          {
LABEL_54:

            goto LABEL_48;
          }

          OUTLINED_FUNCTION_2_38();
          OUTLINED_FUNCTION_10_30();
          OUTLINED_FUNCTION_15_20();

          if ((v10 & 1) == 0)
          {
            _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
            OUTLINED_FUNCTION_3_1();
            OUTLINED_FUNCTION_4_18();
            if (v4 && v1 == v13)
            {
            }

            else
            {
              OUTLINED_FUNCTION_0_1();
              OUTLINED_FUNCTION_5();

              if ((v10 & 1) == 0)
              {
                _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
                OUTLINED_FUNCTION_3_1();
                OUTLINED_FUNCTION_4_18();
                if (v4 && v1 == v15)
                {
                }

                else
                {
                  OUTLINED_FUNCTION_0_1();
                  OUTLINED_FUNCTION_5();

                  if ((v10 & 1) == 0)
                  {
                    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
                    OUTLINED_FUNCTION_3_1();
                    OUTLINED_FUNCTION_4_18();
                    if (v4 && v1 == v17)
                    {
                    }

                    else
                    {
                      OUTLINED_FUNCTION_0_1();
                      OUTLINED_FUNCTION_5();

                      if ((v10 & 1) == 0)
                      {
                        _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
                        OUTLINED_FUNCTION_3_1();
                        OUTLINED_FUNCTION_4_18();
                        if (v4 && v1 == v19)
                        {
                        }

                        else
                        {
                          OUTLINED_FUNCTION_0_1();
                          OUTLINED_FUNCTION_5();

                          if ((v10 & 1) == 0)
                          {
                            _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
                            OUTLINED_FUNCTION_7_27();
                            if (v1 == _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0() && v0 == v21)
                            {
                            }

                            else
                            {
                              v23 = OUTLINED_FUNCTION_5_0();

                              if ((v23 & 1) == 0)
                              {
                                return 0;
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
          }
        }
      }
    }
  }

LABEL_48:
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v25 = OUTLINED_FUNCTION_17_21();
  v26 = OUTLINED_FUNCTION_17_21();

  v28 = OUTLINED_FUNCTION_13_1(v27, sel_localizedStringForKey_value_table_);

  v24 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  return v24;
}

id WFWorkflowTypeName.symbolBackground.getter()
{
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_4_18();
  v4 = v4 && v1 == v3;
  if (v4)
  {

    goto LABEL_43;
  }

  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_5();

  if (v2)
  {
LABEL_43:
    v20 = [objc_allocWithZone(MEMORY[0x277D79E20]) initWithSystemColor_];
    goto LABEL_44;
  }

  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_4_18();
  if (v4 && v1 == v5)
  {

    return 0;
  }

  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_5();

  if (v2)
  {
    return 0;
  }

  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_4_18();
  if (v4 && v1 == v7)
  {
  }

  else
  {
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_5();

    if ((v2 & 1) == 0)
    {
      _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      OUTLINED_FUNCTION_3_1();
      OUTLINED_FUNCTION_4_18();
      if (!v4 || v1 != v9)
      {
        OUTLINED_FUNCTION_0_1();
        OUTLINED_FUNCTION_5();

        if (v2)
        {
          goto LABEL_51;
        }

        _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
        OUTLINED_FUNCTION_3_1();
        OUTLINED_FUNCTION_4_18();
        if (!v4 || v1 != v11)
        {
          OUTLINED_FUNCTION_0_1();
          OUTLINED_FUNCTION_5();

          if (v2)
          {
            goto LABEL_51;
          }

          _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
          OUTLINED_FUNCTION_3_1();
          OUTLINED_FUNCTION_4_18();
          if (v4 && v1 == v13)
          {
          }

          else
          {
            OUTLINED_FUNCTION_0_1();
            OUTLINED_FUNCTION_5();

            if ((v2 & 1) == 0)
            {
              _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
              OUTLINED_FUNCTION_3_1();
              OUTLINED_FUNCTION_4_18();
              if (!v4 || v1 != v15)
              {
                OUTLINED_FUNCTION_0_1();
                OUTLINED_FUNCTION_5();

                if ((v2 & 1) == 0)
                {
                  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
                  OUTLINED_FUNCTION_7_27();
                  if (v1 != _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0() || v0 != v17)
                  {
                    v19 = OUTLINED_FUNCTION_5_0();

                    if (v19)
                    {
                      goto LABEL_51;
                    }

                    return 0;
                  }

                  goto LABEL_50;
                }

LABEL_51:
                v20 = [objc_allocWithZone(MEMORY[0x277D79E20]) initWithSystemColor_];
                goto LABEL_44;
              }

              goto LABEL_50;
            }
          }

          v20 = [objc_allocWithZone(MEMORY[0x277D79E20]) initWithSystemColor_];
          goto LABEL_44;
        }
      }

LABEL_50:

      goto LABEL_51;
    }
  }

  v20 = [objc_allocWithZone(MEMORY[0x277D79E20]) initWithSystemColor_];
LABEL_44:
  v21 = v20;
  v22 = [objc_allocWithZone(MEMORY[0x277D79FB8]) initWithColor_];

  return v22;
}

void static WFWorkflowTypeName.typesForDisplay(types:)(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 16);
  v3 = a1 + 32;
  v4 = MEMORY[0x277D84F90];
  while (v2 != v1)
  {
    if (v1 >= v2)
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    if (__OFADD__(v1, 1))
    {
      goto LABEL_15;
    }

    v5 = *(v3 + 8 * v1);
    WFWorkflowTypeName.appearsInName.getter();
    if (v6 && (, (v7 = WFWorkflowTypeName.icon.getter()) != 0))
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_274724D8C();
        v4 = v9;
      }

      v8 = *(v4 + 16);
      if (v8 >= *(v4 + 24) >> 1)
      {
        sub_274724D8C();
        v4 = v10;
      }

      *(v4 + 16) = v8 + 1;
      *(v4 + 8 * v8 + 32) = v5;
      ++v1;
    }

    else
    {

      ++v1;
    }
  }
}

id sub_27491A250(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_2749FCD64();

  v6 = [v3 initWithSymbolName:v5 background:a3];

  return v6;
}

uint64_t sub_27491A3C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = sub_2749F8E94();
  v6 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v3 + OBJC_IVAR____TtCVV10WorkflowUI14GlyphSearchBarP33_7B2EDB8C9E03C94CB46248885C8C32B517RepresentableView11Coordinator_owner + 16);
  v19 = *(v3 + OBJC_IVAR____TtCVV10WorkflowUI14GlyphSearchBarP33_7B2EDB8C9E03C94CB46248885C8C32B517RepresentableView11Coordinator_owner + 8);
  v10 = *(v3 + OBJC_IVAR____TtCVV10WorkflowUI14GlyphSearchBarP33_7B2EDB8C9E03C94CB46248885C8C32B517RepresentableView11Coordinator_owner + 24);
  v17 = *(v3 + OBJC_IVAR____TtCVV10WorkflowUI14GlyphSearchBarP33_7B2EDB8C9E03C94CB46248885C8C32B517RepresentableView11Coordinator_owner + 32);
  v11 = *(v3 + OBJC_IVAR____TtCVV10WorkflowUI14GlyphSearchBarP33_7B2EDB8C9E03C94CB46248885C8C32B517RepresentableView11Coordinator_owner + 40);
  v22 = a2;
  v23 = a3;

  sub_2749F8E54();
  sub_27475D0D0();
  v12 = sub_2749FD714();
  v14 = v13;
  (*(v6 + 8))(v8, v18);
  v22 = v9;
  v23 = v10;
  v24 = v17;
  v25 = v11;
  v20 = v12;
  v21 = v14;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096F9C0);
  sub_2749FC6C4();

  swift_bridgeObjectRelease_n();
}

uint64_t sub_27491A63C()
{
  sub_27491A2EC();
  v1 = *(v0 + OBJC_IVAR____TtCVV10WorkflowUI14GlyphSearchBarP33_7B2EDB8C9E03C94CB46248885C8C32B517RepresentableView11Coordinator_owner + 72);

  v1(v2);
}

id sub_27491A724()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GlyphSearchBar.RepresentableView.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_27491A80C()
{
  memcpy(__dst, v0, sizeof(__dst));
  v1 = type metadata accessor for GlyphSearchBar.RepresentableView.Coordinator();
  v2 = objc_allocWithZone(v1);
  memcpy(&v2[OBJC_IVAR____TtCVV10WorkflowUI14GlyphSearchBarP33_7B2EDB8C9E03C94CB46248885C8C32B517RepresentableView11Coordinator_owner], __dst, 0x58uLL);
  sub_27491BABC(v0, v5);
  v4.receiver = v2;
  v4.super_class = v1;
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_27491A894()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D759E8]) init];
  [v1 setSearchBarStyle_];
  [v1 setLookToDictateEnabled_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F9D8);
  sub_2749FBAA4();
  [v1 setDelegate_];

  [v1 setAutocorrectionType_];
  [v1 setAutocapitalizationType_];
  [v1 _setAutoDisableCancelButton_];
  v5 = *(v0 + 48);
  v6 = *(v0 + 64);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096FDE0);
  MEMORY[0x277C5E410](&v4, v2);
  if (v4 == 1)
  {
    [v1 becomeFirstResponder];
  }

  return v1;
}

void *sub_27491A9CC(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F9D8);
  sub_2749FBAA4();
  memcpy(__dst, v1, sizeof(__dst));
  memcpy(v13, (v8 + OBJC_IVAR____TtCVV10WorkflowUI14GlyphSearchBarP33_7B2EDB8C9E03C94CB46248885C8C32B517RepresentableView11Coordinator_owner), sizeof(v13));
  memcpy((v8 + OBJC_IVAR____TtCVV10WorkflowUI14GlyphSearchBarP33_7B2EDB8C9E03C94CB46248885C8C32B517RepresentableView11Coordinator_owner), v1, 0x58uLL);
  sub_27491B988(__dst, &v10);
  sub_27491BAF4(v13);

  if (*&__dst[8])
  {
    v3 = sub_2749FCD64();
  }

  else
  {
    v3 = 0;
  }

  [a1 setPlaceholder_];

  v10 = *&__dst[16];
  v11 = *&__dst[32];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096F9C0);
  MEMORY[0x277C5E410](&v8, v4);
  sub_27484E534(v8, *(&v8 + 1), a1);
  v10 = *&__dst[48];
  LOBYTE(v11) = __dst[64];
  v8 = *&__dst[48];
  v9 = __dst[64];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096FDE0);
  MEMORY[0x277C5E410](&v7);
  [a1 setShowsCancelButton:v7 animated:1];
  result = [a1 isFirstResponder];
  if (result)
  {
    v8 = v10;
    v9 = v11;
    result = MEMORY[0x277C5E410](&v7, v5);
    if ((v7 & 1) == 0)
    {
      return [a1 resignFirstResponder];
    }
  }

  return result;
}

id sub_27491AC24@<X0>(void *a1@<X8>)
{
  memcpy(__dst, v1, sizeof(__dst));
  result = sub_27491A80C();
  *a1 = result;
  return result;
}

uint64_t sub_27491AC74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_27491BB24();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_27491ACD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_27491BB24();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_27491AD3C()
{
  sub_27491BB24();
  sub_2749FB774();
  __break(1u);
}

uint64_t sub_27491ADA8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC10WorkflowUI24GlyphSearchConfiguration11ContentView_configuration;
  swift_beginAccess();
  return sub_2747B960C(v1 + v3, a1);
}

uint64_t sub_27491AE00(__int128 *a1)
{
  v3 = OBJC_IVAR____TtCC10WorkflowUI24GlyphSearchConfiguration11ContentView_configuration;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0(v1 + v3);
  sub_2747A45FC(a1, v1 + v3);
  return swift_endAccess();
}

id sub_27491AED4(void *a1, char a2)
{
  result = [a1 setShowsCancelButton:a2 & 1 animated:1];
  if (*(v2 + OBJC_IVAR____TtCC10WorkflowUI24GlyphSearchConfiguration11ContentView_searchState))
  {

    sub_274795B24(a2 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_27491AFAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2749F8E94();
  v7 = *(v6 - 8);
  result = MEMORY[0x28223BE20](v6);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v3 + OBJC_IVAR____TtCC10WorkflowUI24GlyphSearchConfiguration11ContentView_searchState))
  {
    v14[0] = a2;
    v14[1] = a3;

    sub_2749F8E54();
    sub_27475D0D0();
    v11 = sub_2749FD714();
    v13 = v12;
    (*(v7 + 8))(v10, v6);
    sub_274795CC8(v11, v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_27491B158(void *a1)
{
  [a1 setShowsCancelButton:0 animated:1];

  return [a1 resignFirstResponder];
}

void sub_27491B258()
{
  *(v0 + OBJC_IVAR____TtCC10WorkflowUI24GlyphSearchConfiguration11ContentView_searchState) = 0;
  sub_2749FDAE4();
  __break(1u);
}

char *sub_27491B39C()
{
  v0 = objc_allocWithZone(type metadata accessor for GlyphSearchConfiguration.ContentView());

  v2 = sub_27491B510(v1, v0);
  sub_27491B944(&unk_28096F9A0, type metadata accessor for GlyphSearchConfiguration.ContentView);
  return v2;
}

uint64_t sub_27491B414()
{

  return v0;
}

uint64_t sub_27491B43C()
{
  sub_27491B414();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

char *sub_27491B510(uint64_t a1, char *a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_2749FA4E4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[3] = type metadata accessor for GlyphSearchConfiguration();
  v23[4] = sub_27491B944(&qword_280968C90, type metadata accessor for GlyphSearchConfiguration);
  v23[0] = a1;
  *&a2[OBJC_IVAR____TtCC10WorkflowUI24GlyphSearchConfiguration11ContentView_searchState] = 0;
  sub_2747B960C(v23, &a2[OBJC_IVAR____TtCC10WorkflowUI24GlyphSearchConfiguration11ContentView_configuration]);
  v22.receiver = a2;
  v22.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v22, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_2747B960C(v23, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096F9B0);
  if (swift_dynamicCast())
  {
    *&v9[OBJC_IVAR____TtCC10WorkflowUI24GlyphSearchConfiguration11ContentView_searchState] = *(v20[1] + 16);

    v10 = [objc_allocWithZone(MEMORY[0x277D759E8]) initWithFrame_];
    [v10 setSearchBarStyle_];

    v11 = sub_2749FCD64();

    [v10 setPlaceholder_];

    [v10 setLookToDictateEnabled_];
    [v10 setAutocorrectionType_];
    [v10 setAutocapitalizationType_];
    [v10 _setAutoDisableCancelButton_];
    v12 = v9;
    [v12 addSubview_];
    [v10 setDelegate_];

    v13 = [objc_opt_self() systemBackgroundColor];
    [v12 setBackgroundColor_];

    v14 = [v12 layer];
    [v14 setCornerCurve_];

    v15 = [v12 layer];
    [v15 setCornerRadius_];
  }

  else
  {
    sub_2749FA3D4();
    v16 = sub_2749FA4D4();
    v17 = sub_2749FD2D4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_274719000, v16, v17, "Incorrect config passed in", v18, 2u);
      MEMORY[0x277C61040](v18, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
  }

  __swift_destroy_boxed_opaque_existential_0(v23);
  return v9;
}

uint64_t sub_27491B944(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_27491B9C0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_27491BA00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_27491BA64()
{
  result = qword_28096F9D0;
  if (!qword_28096F9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F9D0);
  }

  return result;
}

unint64_t sub_27491BB24()
{
  result = qword_28096F9E0;
  if (!qword_28096F9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096F9E0);
  }

  return result;
}

void *sub_27491BCA0()
{
  v1 = *(v0 + OBJC_IVAR____TtC10WorkflowUI35AddToSiriSwiftHostingViewController_workflow);
  v2 = v1;
  return v1;
}

void *sub_27491BD6C()
{
  v1 = *(v0 + OBJC_IVAR____TtC10WorkflowUI35AddToSiriSwiftHostingViewController_database);
  v2 = v1;
  return v1;
}

void sub_27491BE04()
{
  OUTLINED_FUNCTION_48();
  v1 = v0;
  v2 = type metadata accessor for AddToSiriView();
  v3 = OUTLINED_FUNCTION_34(v2);
  v4 = MEMORY[0x28223BE20](v3);
  MEMORY[0x28223BE20](v4);
  v6 = (&v60 - v5);
  v7 = type metadata accessor for AddToSiriSwiftHostingViewController();
  v62.receiver = v0;
  v62.super_class = v7;
  objc_msgSendSuper2(&v62, sel_viewDidLoad);
  v8 = *&v0[OBJC_IVAR____TtC10WorkflowUI35AddToSiriSwiftHostingViewController_workflow];
  if (!v8 || (v9 = *&v0[OBJC_IVAR____TtC10WorkflowUI35AddToSiriSwiftHostingViewController_database]) == 0)
  {
    v59 = *&v0[OBJC_IVAR____TtC10WorkflowUI35AddToSiriSwiftHostingViewController_delegate];
    if (v59)
    {
      [v59 addToSiriDidCancelWithViewController_];
    }

    goto LABEL_17;
  }

  OUTLINED_FUNCTION_86();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_86();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = v9;
  v13 = v8;
  v14 = v12;
  v15 = v13;
  sub_27491C458(v15, v14, sub_274926D0C, v10, sub_274926D14, v11, v6);
  v16 = OUTLINED_FUNCTION_44();
  sub_274926368(v16, v17);
  v18 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FDF0));
  OUTLINED_FUNCTION_3();
  v19 = sub_2749FB6C4();
  v20 = *&v0[OBJC_IVAR____TtC10WorkflowUI35AddToSiriSwiftHostingViewController_hostingController];
  *&v0[OBJC_IVAR____TtC10WorkflowUI35AddToSiriSwiftHostingViewController_hostingController] = v19;
  v21 = v19;

  v22 = v21;
  v23 = [v22 view];
  if (!v23)
  {
    __break(1u);
    goto LABEL_19;
  }

  v24 = v23;
  [v23 setTranslatesAutoresizingMaskIntoConstraints_];

  [v1 addChildViewController_];
  v25 = OUTLINED_FUNCTION_17_22();
  if (!v25)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v26 = v25;
  v27 = OUTLINED_FUNCTION_18_21();
  if (!v27)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v28 = v27;
  [v26 addSubview_];

  [v22 didMoveToParentViewController_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C990);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_274A108E0;
  v30 = OUTLINED_FUNCTION_18_21();
  if (!v30)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v31 = v30;
  v61 = v14;
  v32 = [v30 topAnchor];

  v33 = OUTLINED_FUNCTION_17_22();
  if (!v33)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v34 = v33;
  v60 = v15;
  v35 = [v33 topAnchor];

  v36 = OUTLINED_FUNCTION_16_16();
  *(v29 + 32) = v36;
  v37 = OUTLINED_FUNCTION_18_21();
  if (!v37)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v38 = v37;
  v39 = [v37 bottomAnchor];

  v40 = OUTLINED_FUNCTION_17_22();
  if (!v40)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v41 = v40;
  v42 = [v40 bottomAnchor];

  v43 = OUTLINED_FUNCTION_16_16();
  *(v29 + 40) = v43;
  v44 = OUTLINED_FUNCTION_18_21();
  if (!v44)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v45 = v44;
  v46 = [v44 leadingAnchor];

  v47 = OUTLINED_FUNCTION_17_22();
  if (!v47)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v48 = v47;
  v49 = [v47 leadingAnchor];

  v50 = OUTLINED_FUNCTION_16_16();
  *(v29 + 48) = v50;
  v51 = OUTLINED_FUNCTION_18_21();

  if (!v51)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v52 = [v51 trailingAnchor];

  v53 = OUTLINED_FUNCTION_17_22();
  if (v53)
  {
    v54 = v53;
    v55 = objc_opt_self();
    v56 = [v54 trailingAnchor];

    v57 = [v52 constraintEqualToAnchor_];
    *(v29 + 56) = v57;
    sub_27471CF08(0, &qword_280968040);
    v58 = sub_2749FCF74();

    [v55 activateConstraints_];

    sub_274926D1C(v6);
LABEL_17:
    OUTLINED_FUNCTION_46();
    return;
  }

LABEL_28:
  __break(1u);
}

void sub_27491C354(void *a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = Strong + OBJC_IVAR____TtC10WorkflowUI35AddToSiriSwiftHostingViewController_currentStatus;
    v7 = *(Strong + OBJC_IVAR____TtC10WorkflowUI35AddToSiriSwiftHostingViewController_currentStatus);
    *v6 = a1;
    v8 = *(v6 + 8);
    *(v6 + 8) = a2;
    v9 = a1;
    sub_274926CF8(v7, v8);
  }
}

void sub_27491C3E8(void *a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_27491C848(a1, a2);
  }
}

void sub_27491C458(void *a1@<X0>, uint64_t a2@<X1>, void (*a3)(void, void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  *a7 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850);
  swift_storeEnumTagMultiPayload();
  v11 = type metadata accessor for AddToSiriView();
  v12 = v11[5];
  *(a7 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096FBF0);
  swift_storeEnumTagMultiPayload();
  v13 = (a7 + v11[9]);
  sub_2749FC5B4();
  *v13 = v61;
  v13[1] = v63;
  v13[2] = v65;
  v14 = sub_2749FC5B4();
  OUTLINED_FUNCTION_21_18(v14, v15, v16, v17, v18, v19, v20, v21, v43, v45, a2, a5, a4, 0, 0xE000000000000000, v61, v63);
  LOBYTE(v57) = 0;
  v22 = sub_2749FC5B4();
  OUTLINED_FUNCTION_21_18(v22, v23, v24, v25, v26, v27, v28, v29, v44, v46, v49, v52, v55, v57, v59, v62, v64);
  v30 = [a1 reference];
  v47 = a1;
  if (v30)
  {

    v31 = a7 + v11[8];
    *v31 = a1;
    v31[8] = 2;
    *(v31 + 2) = 0;
    v32 = sub_2748BF950(a1);
    v33 = a3;
    v34 = a6;
    v36 = v35;

    if (!v36)
    {
      v32 = 0;
      v36 = 0xE000000000000000;
    }

    *v13 = v32;
    v13[1] = v36;
    a6 = v34;
    a3 = v33;
    v13[2] = 0;
  }

  else
  {
    v37 = a7 + v11[8];
    *v37 = a1;
    v37[8] = 0;
    *(v37 + 2) = 0;
    v38 = a1;
  }

  v39 = (a7 + v11[6]);
  *(a7 + v11[12]) = v50;
  *v39 = a3;
  v39[1] = v56;
  v40 = (a7 + v11[7]);
  *v40 = v53;
  v40[1] = a6;
  if (a3)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FBD8);
    sub_2749FC5C4();
    v41 = v58;
    if (v60)
    {
      if (v60 == 1)
      {
        v42 = 0;
      }

      else
      {
        v42 = 2;
      }
    }

    else
    {

      v41 = 0;
      v42 = 3;
    }

    a3(v41, v42);
    sub_27471F8A4(a3);
  }

  else
  {
    v41 = v47;
  }
}

id sub_27491C754(char a1)
{
  v3 = &v1[OBJC_IVAR____TtC10WorkflowUI35AddToSiriSwiftHostingViewController_currentStatus];
  v4 = v1[OBJC_IVAR____TtC10WorkflowUI35AddToSiriSwiftHostingViewController_currentStatus + 8];
  if (v4 == 255)
  {
    v7 = type metadata accessor for AddToSiriSwiftHostingViewController();
    v11.receiver = v1;
    v8 = &v11;
  }

  else
  {
    v5 = *v3;
    v6 = *v3;
    sub_27491C848(v5, v4);
    sub_274926CF8(v5, v4);
    v7 = type metadata accessor for AddToSiriSwiftHostingViewController();
    v10 = v1;
    v8 = &v10;
  }

  v8->super_class = v7;
  return [(objc_super *)v8 viewWillDisappear:a1 & 1, v10];
}

id sub_27491C848(id result, char a2)
{
  v3 = OBJC_IVAR____TtC10WorkflowUI35AddToSiriSwiftHostingViewController_didFireCompletion;
  if ((*(v2 + OBJC_IVAR____TtC10WorkflowUI35AddToSiriSwiftHostingViewController_didFireCompletion) & 1) == 0)
  {
    v4 = result;
    result = *(v2 + OBJC_IVAR____TtC10WorkflowUI35AddToSiriSwiftHostingViewController_delegate);
    switch(a2)
    {
      case 1:
        if (result)
        {
          result = [result addToSiriWithViewController:v2 deletedShortcut:v4];
        }

        break;
      case 2:
        if (result)
        {
          result = [result addToSiriWithViewController:v2 savedShortcut:v4];
        }

        break;
      case 3:
        if (result)
        {
          result = [result addToSiriDidCancelWithViewController_];
        }

        break;
      default:
        if (result)
        {
          result = [result addToSiriWithViewController:v2 createdShortcut:v4];
        }

        break;
    }

    *(v2 + v3) = 1;
  }

  return result;
}

id sub_27491C8FC(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC10WorkflowUI35AddToSiriSwiftHostingViewController_hostingController] = 0;
  *&v3[OBJC_IVAR____TtC10WorkflowUI35AddToSiriSwiftHostingViewController_delegate] = 0;
  *&v3[OBJC_IVAR____TtC10WorkflowUI35AddToSiriSwiftHostingViewController_workflow] = 0;
  *&v3[OBJC_IVAR____TtC10WorkflowUI35AddToSiriSwiftHostingViewController_database] = 0;
  v3[OBJC_IVAR____TtC10WorkflowUI35AddToSiriSwiftHostingViewController_didFireCompletion] = 0;
  OUTLINED_FUNCTION_25_13(OBJC_IVAR____TtC10WorkflowUI35AddToSiriSwiftHostingViewController_currentStatus);
  if (v5)
  {
    v6 = sub_2749FCD64();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for AddToSiriSwiftHostingViewController();
  v7 = objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, v6, a3);

  return v7;
}

id sub_27491CA24(void *a1)
{
  *&v1[OBJC_IVAR____TtC10WorkflowUI35AddToSiriSwiftHostingViewController_hostingController] = 0;
  *&v1[OBJC_IVAR____TtC10WorkflowUI35AddToSiriSwiftHostingViewController_delegate] = 0;
  *&v1[OBJC_IVAR____TtC10WorkflowUI35AddToSiriSwiftHostingViewController_workflow] = 0;
  *&v1[OBJC_IVAR____TtC10WorkflowUI35AddToSiriSwiftHostingViewController_database] = 0;
  v1[OBJC_IVAR____TtC10WorkflowUI35AddToSiriSwiftHostingViewController_didFireCompletion] = 0;
  OUTLINED_FUNCTION_25_13(OBJC_IVAR____TtC10WorkflowUI35AddToSiriSwiftHostingViewController_currentStatus);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for AddToSiriSwiftHostingViewController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

void sub_27491CBBC()
{
  OUTLINED_FUNCTION_48();
  v3 = v2;
  sub_2749FB4C4();
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v5 = OUTLINED_FUNCTION_3_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(v5);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_22();
  sub_27473ADB8(v0, v1, &qword_28096D850);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2749FAA94();
    OUTLINED_FUNCTION_9();
    (*(v7 + 32))(v3, v1);
  }

  else
  {
    sub_2749FD2D4();
    v8 = sub_2749FBC14();
    sub_2749FA424();

    sub_2749FB4B4();
    swift_getAtKeyPath();

    v9 = OUTLINED_FUNCTION_93();
    v10(v9);
  }

  OUTLINED_FUNCTION_46();
}

void sub_27491CD74()
{
  OUTLINED_FUNCTION_48();
  v3 = v2;
  v4 = sub_2749FB4C4();
  OUTLINED_FUNCTION_43();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  v11 = OUTLINED_FUNCTION_3_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(v11);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_22();
  v13 = type metadata accessor for AddToSiriView();
  sub_27473ADB8(v0 + *(v13 + 20), v1, &unk_28096FBF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2749FACC4();
    OUTLINED_FUNCTION_9();
    (*(v14 + 32))(v3, v1);
  }

  else
  {
    sub_2749FD2D4();
    v15 = sub_2749FBC14();
    sub_2749FA424();

    sub_2749FB4B4();
    OUTLINED_FUNCTION_93();
    swift_getAtKeyPath();

    (*(v6 + 8))(v10, v4);
  }

  OUTLINED_FUNCTION_46();
}

void sub_27491CF34()
{
  OUTLINED_FUNCTION_48();
  v34 = v0;
  v40 = v2;
  v3 = sub_2749FB9A4();
  OUTLINED_FUNCTION_43();
  v35 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FB20);
  OUTLINED_FUNCTION_43();
  v11 = v10;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_22();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FB28);
  OUTLINED_FUNCTION_43();
  v36 = v13;
  v37 = v14;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  v17 = &v33 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FB30);
  OUTLINED_FUNCTION_43();
  v38 = v18;
  v39 = v19;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v20);
  v22 = &v33 - v21;
  v42 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FB38);
  sub_274925E74();
  sub_2749FAD74();
  sub_2749FB994();
  v23 = sub_27472ABB4(&qword_28096FBB0, &qword_28096FB20);
  v24 = sub_2749260C8(&qword_28096CA60, MEMORY[0x277CDE2A0]);
  sub_2749FBF54();
  (*(v35 + 8))(v8, v3);
  (*(v11 + 8))(v1, v9);
  v25 = type metadata accessor for AddToSiriView();
  v26 = v34;
  v27 = (v34 + *(v25 + 44));
  v28 = *v27;
  v29 = *(v27 + 1);
  v47 = v28;
  v48 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B400);
  sub_2749FC5E4();
  v41 = v26;
  v43 = v9;
  v44 = v3;
  v45 = v23;
  v46 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = v36;
  sub_2749FC244();

  (*(v37 + 8))(v17, v31);
  v43 = v31;
  v44 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v32 = v38;
  sub_2749FC1F4();
  (*(v39 + 8))(v22, v32);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_27491D378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FB90);
  MEMORY[0x28223BE20](v3);
  v5 = &v29 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FB80);
  MEMORY[0x28223BE20](v33);
  v7 = &v29 - v6;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FBC8);
  MEMORY[0x28223BE20](v32);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FBD0);
  v30 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - v11;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FB50);
  MEMORY[0x28223BE20](v31);
  v14 = &v29 - v13;
  v15 = a1 + *(type metadata accessor for AddToSiriView() + 32);
  v16 = *v15;
  v17 = *(v15 + 8);
  v18 = *(v15 + 16);
  v35 = v16;
  LOBYTE(v36) = v17;
  v37 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FBD8);
  sub_2749FC5C4();
  v19 = v40;

  if (v19)
  {
    sub_27491DE04(v12);
    v29 = "addtosiri.view.unnamed";
    v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096FB58);
    v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096FB60);
    v22 = sub_27472ABB4(&unk_28096FB68, &qword_28096FB58);
    v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28096CFC0);
    v24 = sub_27472ABB4(&unk_28096B360, &unk_28096CFC0);
    v35 = v23;
    v36 = v24;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v35 = v20;
    v36 = v21;
    v37 = v22;
    v38 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_2749FC1F4();
    (*(v30 + 8))(v12, v10);
    v26 = &qword_28096FB50;
    sub_27473ADB8(v14, v9, &qword_28096FB50);
    swift_storeEnumTagMultiPayload();
    sub_274925F00();
    sub_27492610C();
    sub_2749FB7B4();
    v27 = v14;
  }

  else
  {
    sub_27491D860(v5);
    sub_2749261C8();
    sub_2749FC1F4();
    sub_27472ECBC(v5, &qword_28096FB90);
    v26 = &qword_28096FB80;
    sub_27473ADB8(v7, v9, &qword_28096FB80);
    swift_storeEnumTagMultiPayload();
    sub_274925F00();
    sub_27492610C();
    sub_2749FB7B4();
    v27 = v7;
  }

  return sub_27472ECBC(v27, v26);
}

uint64_t sub_27491D860@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v50 = sub_2749FB4F4();
  v46 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v47 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for AddToSiriView();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v44 = v5;
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096CFC0);
  v7 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v9 = &v38 - v8;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FBA0);
  MEMORY[0x28223BE20](v52);
  v11 = &v38 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FB98);
  v13 = *(v12 - 8);
  v48 = v12;
  v49 = v13;
  MEMORY[0x28223BE20](v12);
  v39 = &v38 - v14;
  *v11 = sub_2749FB634();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v15 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FD20) + 44)];
  v45 = v1;
  sub_2749217B8(v1, v15);
  v41 = v6;
  sub_274926368(v1, v6);
  v16 = *(v4 + 80);
  v17 = (v16 + 16) & ~v16;
  v42 = v17;
  v43 = v16;
  v18 = swift_allocObject();
  sub_2749263CC(v6, v18 + v17);
  sub_2749FC624();
  v19 = sub_27472ABB4(&qword_28096FBA8, &qword_28096FBA0);
  v20 = sub_27472ABB4(&unk_28096B360, &unk_28096CFC0);
  v21 = v40;
  sub_2749FC114();
  (*(v7 + 8))(v9, v21);
  sub_27472ECBC(v11, &qword_28096FBA0);
  sub_2749FB574();
  v22 = sub_2749FBED4();
  v24 = v23;
  LOBYTE(v6) = v25;
  v27 = v46;
  v26 = v47;
  v28 = v50;
  (*(v46 + 104))(v47, *MEMORY[0x277CDDDC0], v50);
  v53 = v52;
  v54 = v21;
  v55 = v19;
  v56 = v20;
  swift_getOpaqueTypeConformance2();
  v29 = v51;
  v30 = v26;
  v31 = v48;
  v32 = v39;
  sub_2749FC124();
  sub_27477656C(v22, v24, v6 & 1);

  (*(v27 + 8))(v30, v28);
  (*(v49 + 8))(v32, v31);
  v33 = v41;
  sub_274926368(v45, v41);
  v34 = v42;
  v35 = swift_allocObject();
  sub_2749263CC(v33, v35 + v34);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FB90);
  v37 = (v29 + *(result + 36));
  *v37 = sub_2749266B4;
  v37[1] = v35;
  v37[2] = 0;
  v37[3] = 0;
  return result;
}

uint64_t sub_27491DE04@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v38 = a1;
  v3 = sub_2749FB4F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AddToSiriView();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096CFC0);
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FB60);
  v13 = *(v12 - 8);
  v36 = v12;
  v37 = v13;
  MEMORY[0x28223BE20](v12);
  v31 = &v30 - v14;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FB58);
  MEMORY[0x28223BE20](v34);
  v16 = &v30 - v15;
  *v16 = sub_2749FB634();
  *(v16 + 1) = 0;
  v16[16] = 0;
  v32 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096FBE0);
  sub_27491F634(v2, &v16[*(v17 + 44)]);
  sub_274926368(v2, &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v19 = swift_allocObject();
  sub_2749263CC(&v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  sub_2749FC624();
  sub_2749FB574();
  v20 = sub_2749FBED4();
  v22 = v21;
  LOBYTE(v2) = v23;
  (*(v4 + 104))(v6, *MEMORY[0x277CDDDC0], v3);
  v24 = sub_27472ABB4(&unk_28096B360, &unk_28096CFC0);
  v25 = v33;
  sub_2749FC124();
  sub_27477656C(v20, v22, v2 & 1);

  (*(v4 + 8))(v6, v3);
  (*(v35 + 8))(v11, v25);
  sub_27472ABB4(&unk_28096FB68, &qword_28096FB58);
  v39 = v25;
  v40 = v24;
  swift_getOpaqueTypeConformance2();
  v27 = v31;
  v26 = v32;
  v28 = v36;
  sub_2749FC114();
  (*(v37 + 8))(v27, v28);
  return sub_27472ECBC(v26, &qword_28096FB58);
}

uint64_t sub_27491E30C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096B430);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v20 - v4;
  *&v21 = sub_27491E598();
  *(&v21 + 1) = v6;
  sub_27475D0D0();
  sub_2749FBEE4();
  sub_27471CF08(0, &qword_28096FBB8);
  v7 = (a1 + *(type metadata accessor for AddToSiriView() + 36));
  v8 = *v7;
  v9 = *(v7 + 2);
  v21 = v8;
  v22 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FBC0);
  sub_2749FC5C4();
  v10 = sub_274922780();
  [v10 wf_isEmpty];

  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v11 = qword_28159E448;
  v12 = sub_2749FCD64();
  v13 = sub_2749FCD64();

  v14 = [v11 localizedStringForKey:v12 value:v13 table:0];

  v15 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v17 = v16;

  *&v21 = v15;
  *(&v21 + 1) = v17;
  sub_2749FBEE4();
  v18 = sub_2749FC3C4();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v18);
  return sub_2749FC374();
}

uint64_t sub_27491E598()
{
  v1 = *(v0 + *(type metadata accessor for AddToSiriView() + 48));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FBC0);
  sub_2749FC5C4();
  v2 = sub_2749FCD64();

  v3 = [v1 hasConflictWithName_];

  if (v3)
  {
    sub_2749FCE14();
    if (qword_28159E3A8 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    OUTLINED_FUNCTION_93();
    v4 = sub_2749FCD64();
    OUTLINED_FUNCTION_93();
    v5 = sub_2749FCD64();

    v7 = OUTLINED_FUNCTION_11_2(v6, sel_localizedStringForKey_value_table_);

    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967628);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_274A0EF10;
    sub_2749FC5C4();
    *(v8 + 56) = MEMORY[0x277D837D0];
    *(v8 + 64) = sub_27475C4F4();
    *(v8 + 32) = v14;
    *(v8 + 40) = v15;
    sub_2749FCD74();
    OUTLINED_FUNCTION_84();
  }

  else
  {
    sub_2749FCE14();
    if (qword_28159E3A8 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v9 = qword_28159E448;
    v10 = sub_2749FCD64();
    v11 = sub_2749FCD64();

    v12 = [v9 localizedStringForKey:v10 value:v11 table:0];

    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    OUTLINED_FUNCTION_84();
  }

  return OUTLINED_FUNCTION_44();
}

uint64_t sub_27491E824@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2749FC524();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v35[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_2749FAA94();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v35[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v35[-v11];
  sub_27491CBBC();
  (*(v7 + 104))(v10, *MEMORY[0x277CDF3C0], v6);
  sub_2749FAA84();
  v13 = *(v7 + 8);
  v13(v10, v6);
  v13(v12, v6);
  v14 = objc_opt_self();
  v15 = sub_2749FCD64();

  v16 = [v14 wf:v15 workflowUIImageNamed:?];

  sub_2749FC504();
  (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
  v17 = sub_2749FC564();

  (*(v3 + 8))(v5, v2);
  sub_2749FC914();
  sub_2749FABB4();
  v18 = v36;
  LOBYTE(v14) = v37;
  v19 = v38;
  LOBYTE(v3) = v39;
  v20 = v40;
  v21 = v41;
  LOBYTE(v2) = sub_2749FBC84();
  sub_2749FA9E4();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v35[24] = v14;
  v35[16] = v3;
  v35[8] = 0;
  LOBYTE(v5) = sub_2749FBC74();
  result = sub_2749FA9E4();
  *a1 = v17;
  *(a1 + 8) = v18;
  *(a1 + 16) = v14;
  *(a1 + 24) = v19;
  *(a1 + 32) = v3;
  *(a1 + 40) = v20;
  *(a1 + 48) = v21;
  *(a1 + 56) = v2;
  *(a1 + 64) = v23;
  *(a1 + 72) = v25;
  *(a1 + 80) = v27;
  *(a1 + 88) = v29;
  *(a1 + 96) = 0;
  *(a1 + 104) = v5;
  *(a1 + 112) = v31;
  *(a1 + 120) = v32;
  *(a1 + 128) = v33;
  *(a1 + 136) = v34;
  *(a1 + 144) = 0;
  return result;
}

uint64_t sub_27491EBA8@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = v2;
  v39 = a1;
  v5 = type metadata accessor for AddToSiriView();
  OUTLINED_FUNCTION_43();
  v38 = v6;
  v8 = *(v7 + 64);
  v10 = v2 + *(MEMORY[0x28223BE20](v9) + 36);
  v11 = *v10;
  v12 = *(v10 + 16);
  __src[0] = v11;
  *&__src[1] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FBC0);
  sub_2749FC5E4();
  v13 = __dst[0];
  v37 = __dst[1];
  v36 = __dst[2];
  v35 = __dst[3];
  v14 = v2 + *(v5 + 32);
  v15 = *v14;
  v16 = *(v14 + 8);
  v17 = *(v14 + 16);
  __dst[0] = v15;
  LOBYTE(__dst[1]) = v16;
  __dst[2] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FBD8);
  sub_2749FC5C4();
  v18 = [*&__src[0] actions];

  sub_27471CF08(0, &qword_28096D540);
  v19 = sub_2749FCF84();

  if (sub_27472D918(v19))
  {
    sub_2747B2790(0, (v19 & 0xC000000000000001) == 0, v19);
    if ((v19 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x277C5F6D0](0, v19);
    }

    else
    {
      v20 = *(v19 + 32);
    }

    v21 = v20;

    v22 = [v21 localizedName];

    v23 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v25 = v24;
  }

  else
  {

    v23 = 0;
    v25 = 0;
  }

  v26 = v3 + *(v5 + 40);
  v27 = *v26;
  v28 = *(v26 + 8);
  LOBYTE(__src[0]) = v27;
  *(&__src[0] + 1) = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B400);
  sub_2749FC5E4();
  v30 = __dst[0];
  v29 = __dst[1];
  v31 = __dst[2];
  sub_274926368(v3, &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v33 = swift_allocObject();
  sub_2749263CC(&v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v33 + v32);
  *&__src[0] = v13;
  *(&__src[0] + 1) = v37;
  *&__src[1] = v36;
  *(&__src[1] + 1) = v35;
  *&__src[2] = v23;
  *(&__src[2] + 1) = v25;
  *&__src[3] = a2;
  *(&__src[3] + 1) = v30;
  *&__src[4] = v29;
  BYTE8(__src[4]) = v31;
  *&__src[5] = sub_274926510;
  *(&__src[5] + 1) = v33;
  sub_274925D7C();
  sub_2749FC1F4();
  memcpy(__dst, __src, 0x60uLL);
  return sub_274926528(__dst);
}

void sub_27491EF38(uint64_t a1)
{
  v2 = type metadata accessor for AddToSiriView();
  LOBYTE(v11) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B400);
  sub_2749FC5D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FBC0);
  sub_2749FC5C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FBD8);
  sub_2749FC5C4();
  v3 = sub_2747D5A24(v11);
  if (!v4)
  {

LABEL_9:
    sub_2749FC5C4();

    v7 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v7 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v7 && (v8 = *(a1 + *(v2 + 48)), sub_2749FC5C4(), v9 = sub_2749FCD64(), , v10 = [v8 hasVisibleWorkflowsWithName_], v9, !v10))
    {
      sub_27491F188();
    }

    else
    {
      sub_2749FC5D4();
    }

    return;
  }

  if (v11 == v3 && v4 == v12)
  {

    return;
  }

  v6 = sub_2749FDCC4();

  if ((v6 & 1) == 0)
  {
    goto LABEL_9;
  }
}

void sub_27491F188()
{
  type metadata accessor for AddToSiriView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FBD8);
  sub_2749FC5C4();
  v0 = [v1 reference];

  if (v0)
  {

    sub_274923178();
  }

  else
  {
    sub_2749235A8();
    sub_274923ACC();
  }
}

uint64_t sub_27491F244@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>)
{
  v46 = a1;
  v48 = a2;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FCF8);
  v4 = MEMORY[0x28223BE20](v47);
  v49 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v46 - v6;
  v8 = [objc_opt_self() localizedTriggerPhrase];
  v9 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v11 = v10;

  sub_2749FCE14();
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v12 = qword_28159E448;
  v13 = sub_2749FCD64();

  v14 = sub_2749FCD64();

  v15 = [v12 localizedStringForKey:v13 value:v14 table:0];

  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967628);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_274A0EF10;
  *(v16 + 56) = MEMORY[0x277D837D0];
  *(v16 + 64) = sub_27475C4F4();
  *(v16 + 32) = v9;
  *(v16 + 40) = v11;
  v17 = sub_2749FCDB4();
  v19 = v18;

  v50 = v17;
  v51 = v19;
  sub_27475D0D0();
  v20 = sub_2749FBEE4();
  v22 = v21;
  v24 = v23;
  sub_2749FBD14();
  v25 = sub_2749FBEC4();
  v27 = v26;
  v29 = v28;

  sub_27477656C(v20, v22, v24 & 1);

  v30 = sub_2749FBEB4();
  v32 = v31;
  LOBYTE(v22) = v33;
  v35 = v34;
  sub_27477656C(v25, v27, v29 & 1);

  sub_27491EBA8(v7, a3);
  v36 = sub_2749FBC54();
  sub_2749FA9E4();
  v37 = &v7[*(v47 + 36)];
  *v37 = v36;
  *(v37 + 1) = v38;
  *(v37 + 2) = v39;
  *(v37 + 3) = v40;
  *(v37 + 4) = v41;
  v37[40] = 0;
  v42 = v49;
  sub_27473ADB8(v7, v49, &qword_28096FCF8);
  v43 = v48;
  *v48 = v30;
  v43[1] = v32;
  *(v43 + 16) = v22 & 1;
  v43[3] = v35;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096FD00);
  sub_27473ADB8(v42, v43 + *(v44 + 48), &qword_28096FCF8);
  sub_274754DBC(v30, v32, v22 & 1);

  sub_27472ECBC(v7, &qword_28096FCF8);
  sub_27472ECBC(v42, &qword_28096FCF8);
  sub_27477656C(v30, v32, v22 & 1);
}

uint64_t sub_27491F634@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FC00);
  MEMORY[0x28223BE20](v3);
  v5 = &v32 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FC08);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - v10;
  v12 = type metadata accessor for AddToSiriView();
  v13 = v12 - 8;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  sub_274926368(a1, &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v17 = swift_allocObject();
  sub_2749263CC(&v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  v18 = a1 + *(v13 + 48);
  v19 = *v18;
  v20 = *(v18 + 8);
  v34 = v19;
  v35 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B400);
  sub_2749FC5C4();
  v21 = 1;
  if ((v33 & 1) == 0)
  {
    *v5 = sub_2749FB634();
    *(v5 + 1) = 0;
    v5[16] = 1;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FC10);
    sub_2749206E4(a1, &v5[*(v22 + 44)]);
    v23 = sub_2749FBC54();
    sub_2749FA9E4();
    v24 = &v5[*(v3 + 36)];
    *v24 = v23;
    *(v24 + 1) = v25;
    *(v24 + 2) = v26;
    *(v24 + 3) = v27;
    *(v24 + 4) = v28;
    v24[40] = 0;
    sub_2747D31F8(v5, v11, &qword_28096FC00);
    v21 = 0;
  }

  __swift_storeEnumTagSinglePayload(v11, v21, 1, v3);
  sub_27473ADB8(v11, v9, &qword_28096FC08);
  v29 = v32;
  *v32 = sub_274926448;
  v29[1] = v17;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FC18);
  sub_27473ADB8(v9, v29 + *(v30 + 48), &qword_28096FC08);

  sub_27472ECBC(v11, &qword_28096FC08);
  sub_27472ECBC(v9, &qword_28096FC08);
}

double sub_27491F95C@<D0>(uint64_t a1@<X8>)
{
  sub_2749FBC44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FC80);
  sub_27472ABB4(&qword_28096FC88, &qword_28096FC80);
  sub_2749FAA54();
  sub_2749FAC54();
  sub_2749FC914();
  sub_2749FABB4();
  v2 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FC90) + 36));
  *v2 = v4;
  v2[1] = v5;
  result = *&v6;
  v2[2] = v6;
  return result;
}

uint64_t sub_27491FA74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FC98);
  v5 = v4 - 8;
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - v9;
  *v10 = sub_2749FB634();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FCA0);
  sub_27491FC00(a1, &v10[*(v11 + 44)]);
  v12 = sub_2749FBC54();
  sub_2749FA9E4();
  v13 = &v10[*(v5 + 44)];
  *v13 = v12;
  *(v13 + 1) = v14;
  *(v13 + 2) = v15;
  *(v13 + 3) = v16;
  *(v13 + 4) = v17;
  v13[40] = 0;
  sub_27473ADB8(v10, v8, &qword_28096FC98);
  sub_27473ADB8(v8, a2, &qword_28096FC98);
  v18 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FCA8) + 48);
  *v18 = 0;
  *(v18 + 8) = 1;
  sub_27472ECBC(v10, &qword_28096FC98);
  return sub_27472ECBC(v8, &qword_28096FC98);
}

uint64_t sub_27491FC00@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v49 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FCB0);
  MEMORY[0x28223BE20](v48);
  v46 = &v45 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FCB8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v47 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v45 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FCC0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v45 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FCC8);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v45 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v45 - v19;
  sub_27491E824(v53);
  sub_2749FAC54();
  v22 = v21;
  *v11 = sub_2749FB634();
  *(v11 + 1) = 0;
  v11[16] = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FCD0);
  sub_27491F244(a1, &v11[*(v23 + 44)], v22);
  v24 = sub_2749FBC84();
  v25 = sub_2749FBCA4();
  sub_2749FBCA4();
  if (sub_2749FBCA4() != v24)
  {
    v25 = sub_2749FBCA4();
  }

  [objc_opt_self() bottomPadding];
  sub_2749FA9E4();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_2747D31F8(v11, v18, &qword_28096FCC0);
  v34 = &v18[*(v12 + 36)];
  *v34 = v25;
  *(v34 + 1) = v27;
  *(v34 + 2) = v29;
  *(v34 + 3) = v31;
  *(v34 + 4) = v33;
  v34[40] = 0;
  sub_2747D31F8(v18, v20, &qword_28096FCC8);
  v35 = a1 + *(type metadata accessor for AddToSiriView() + 40);
  v36 = *v35;
  v37 = *(v35 + 8);
  LOBYTE(v52[0]) = v36;
  v52[1] = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B400);
  sub_2749FC5C4();
  if (v51[0])
  {
    v38 = 1;
  }

  else
  {
    v39 = v46;
    sub_27492010C(a1, v46);
    sub_2747D31F8(v39, v8, &qword_28096FCB0);
    v38 = 0;
  }

  __swift_storeEnumTagSinglePayload(v8, v38, 1, v48);
  memcpy(v50, v53, sizeof(v50));
  v40 = v20;
  sub_27473ADB8(v20, v15, &qword_28096FCC8);
  v41 = v47;
  sub_27473ADB8(v8, v47, &qword_28096FCB8);
  memcpy(v51, v50, 0x91uLL);
  v42 = v49;
  memcpy(v49, v50, 0x91uLL);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FCD8);
  sub_27473ADB8(v15, v42 + *(v43 + 48), &qword_28096FCC8);
  sub_27473ADB8(v41, v42 + *(v43 + 64), &qword_28096FCB8);
  sub_27473ADB8(v51, v52, &qword_28096FCE0);
  sub_27472ECBC(v8, &qword_28096FCB8);
  sub_27472ECBC(v40, &qword_28096FCC8);
  sub_27472ECBC(v41, &qword_28096FCB8);
  sub_27472ECBC(v15, &qword_28096FCC8);
  memcpy(v52, v50, 0x91uLL);
  return sub_27472ECBC(v52, &qword_28096FCE0);
}

uint64_t sub_27492010C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v51 = a1;
  v52 = a2;
  v2 = type metadata accessor for AddToSiriView();
  v50 = *(v2 - 8);
  v3 = *(v50 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096CFC0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v43 - v9;
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v11 = qword_28159E448;
  v12 = sub_2749FCD64();
  v13 = sub_2749FCD64();

  v14 = [v11 localizedStringForKey:v12 value:v13 table:0];

  v15 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v17 = v16;

  v54 = v15;
  v55 = v17;
  sub_27475D0D0();
  v49 = sub_2749FBEE4();
  v48 = v18;
  v20 = v19;
  v47 = v21;
  KeyPath = swift_getKeyPath();
  LOBYTE(v12) = sub_2749FBC84();
  v22 = sub_2749FBCA4();
  sub_2749FBCA4();
  if (sub_2749FBCA4() != v12)
  {
    v22 = sub_2749FBCA4();
  }

  sub_2749FA9E4();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v67 = v20 & 1;
  v45 = v20 & 1;
  v66 = 0;
  sub_274926368(v51, &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = (*(v50 + 80) + 16) & ~*(v50 + 80);
  v32 = swift_allocObject();
  sub_2749263CC(&v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v32 + v31);
  sub_2749FC624();
  v33 = *(v5 + 16);
  v33(v8, v10, v4);
  v51 = v10;
  v34 = v49;
  __src[0] = v49;
  v35 = v48;
  __src[1] = v48;
  LOBYTE(__src[2]) = v20 & 1;
  v36 = v47;
  __src[3] = v47;
  v37 = v22;
  v44 = v22;
  v38 = KeyPath;
  __src[4] = KeyPath;
  LOBYTE(__src[5]) = 1;
  LOBYTE(__src[6]) = v37;
  __src[7] = v24;
  __src[8] = v26;
  __src[9] = v28;
  __src[10] = v30;
  LOBYTE(__src[11]) = 0;
  v39 = v52;
  memcpy(v52, __src, 0x59uLL);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096FCE8);
  v33(&v39[*(v40 + 48)], v8, v4);
  sub_27473ADB8(__src, &v54, &qword_28096C180);
  v41 = *(v5 + 8);
  v41(v51, v4);
  v41(v8, v4);
  v54 = v34;
  v55 = v35;
  v56 = v45;
  v57 = v36;
  v58 = v38;
  v59 = 1;
  v60 = v44;
  v61 = v24;
  v62 = v26;
  v63 = v28;
  v64 = v30;
  v65 = 0;
  return sub_27472ECBC(&v54, &qword_28096C180);
}

uint64_t sub_274920610()
{
  type metadata accessor for AddToSiriView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FBC0);
  sub_2749FC5D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B400);
  return sub_2749FC5D4();
}

uint64_t sub_2749206E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a1;
  v68 = a2;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FC20) - 8;
  v3 = MEMORY[0x28223BE20](v66);
  v67 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v65 = &v56 - v5;
  v6 = sub_2749FBAE4();
  v7 = *(v6 - 8);
  v57 = v6;
  v58 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AddToSiriView();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v61 = v12;
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FC28);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v56 - v16;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FC30) - 8;
  v18 = MEMORY[0x28223BE20](v63);
  v64 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v56 - v20;
  sub_274926368(a1, v13);
  v60 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v22 = v60;
  v23 = swift_allocObject();
  sub_2749263CC(v13, v23 + v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FC38);
  sub_27472ABB4(&qword_28096FC40, &qword_28096FC38);
  sub_2749FC624();
  sub_2749FBAD4();
  sub_27472ABB4(&unk_28096FC48, &qword_28096FC28);
  sub_2749260C8(&qword_28096D440, MEMORY[0x277CDE400]);
  v24 = v57;
  sub_2749FBFC4();
  (*(v58 + 8))(v9, v24);
  (*(v15 + 8))(v17, v14);
  v25 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096FC58) + 36)];
  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D900) + 28);
  v27 = *MEMORY[0x277CDF420];
  v28 = sub_2749FAAA4();
  (*(*(v28 - 8) + 104))(v25 + v26, v27, v28);
  *v25 = swift_getKeyPath();
  LOBYTE(v27) = sub_2749FBC84();
  sub_2749FA9E4();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FC68) + 36)];
  *v37 = v27;
  *(v37 + 1) = v30;
  *(v37 + 2) = v32;
  *(v37 + 3) = v34;
  *(v37 + 4) = v36;
  v37[40] = 0;
  v38 = sub_2749FC434();
  KeyPath = swift_getKeyPath();
  v69 = v38;
  v40 = sub_2749FABC4();
  v41 = &v21[*(v63 + 44)];
  *v41 = KeyPath;
  v41[1] = v40;
  v42 = v59;
  sub_274926368(v62, v59);
  v43 = v60;
  v44 = swift_allocObject();
  sub_2749263CC(v42, v44 + v43);
  v45 = v65;
  sub_2749FC624();
  LOBYTE(v38) = sub_2749FBC84();
  sub_2749FA9E4();
  v46 = v45 + *(v66 + 44);
  *v46 = v38;
  *(v46 + 8) = v47;
  *(v46 + 16) = v48;
  *(v46 + 24) = v49;
  *(v46 + 32) = v50;
  *(v46 + 40) = 0;
  v51 = v64;
  sub_27473ADB8(v21, v64, &qword_28096FC30);
  v52 = v67;
  sub_27473ADB8(v45, v67, &qword_28096FC20);
  v53 = v68;
  sub_27473ADB8(v51, v68, &qword_28096FC30);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096FC70);
  sub_27473ADB8(v52, v53 + *(v54 + 48), &qword_28096FC20);
  sub_27472ECBC(v45, &qword_28096FC20);
  sub_27472ECBC(v21, &qword_28096FC30);
  sub_27472ECBC(v52, &qword_28096FC20);
  return sub_27472ECBC(v51, &qword_28096FC30);
}

void sub_274920DD4()
{
  v1 = type metadata accessor for AddToSiriView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FBD8);
  sub_2749FC5C4();
  if (v6)
  {
    v2 = *(v0 + *(v1 + 28));
    v3 = v5;
    if (v6 == 1)
    {
      v4 = 0;
    }

    else
    {
      v4 = 2;
    }

    v2(v5, v4);
  }

  else
  {

    (*(v0 + *(v1 + 28)))(0, 3);
  }
}

uint64_t sub_274920ED4@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C0A0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v29[-v3];
  v5 = sub_2749FBE14();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v9 = qword_28159E448;
  v10 = sub_2749FCD64();
  v11 = sub_2749FCD64();

  v12 = [v9 localizedStringForKey:v10 value:v11 table:0];

  v13 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v15 = v14;

  v30 = v13;
  v31 = v15;
  sub_27475D0D0();
  v16 = sub_2749FBEE4();
  v18 = v17;
  LOBYTE(v10) = v19;
  (*(v6 + 104))(v8, *MEMORY[0x277CE0AC0], v5);
  v20 = sub_2749FBD24();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v20);
  sub_2749FBD74();
  sub_27472ECBC(v4, &unk_28096C0A0);
  (*(v6 + 8))(v8, v5);
  sub_2749FBD54();
  sub_2749FBDA4();

  v21 = sub_2749FBEC4();
  v23 = v22;
  v25 = v24;
  v27 = v26;

  sub_27477656C(v16, v18, v10 & 1);

  LOBYTE(v30) = 1;
  v33 = v25 & 1;
  v32 = 1;
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = v21;
  *(a1 + 24) = v23;
  *(a1 + 32) = v25 & 1;
  *(a1 + 40) = v27;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  sub_274754DBC(v21, v23, v25 & 1);

  sub_27477656C(v21, v23, v25 & 1);
}

void sub_274921210()
{
  v1 = v0;
  v19 = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for AddToSiriView();
  v3 = v0 + v2[8];
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v16 = *v3;
  v17 = v5;
  v18 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FBD8);
  sub_2749FC5C4();
  v7 = [v14 reference];

  if (v7)
  {
    v8 = *(v1 + v2[12]);
    v16 = 0;
    if ([v8 deleteReference:v7 error:&v16])
    {
      v9 = v16;
    }

    else
    {
      v10 = v16;
      v11 = sub_2749F8FE4();

      swift_willThrow();
    }
  }

  v16 = v4;
  v17 = v5;
  v18 = v6;
  sub_2749FC5C4();
  if (v15)
  {
    if (v15 == 1)
    {

      (*(v1 + v2[7]))(0, 3);
    }

    else
    {
      v12 = *(v1 + v2[7]);
      v13 = v14;
      v12(v14, 1);
    }
  }

  else
  {
  }
}

uint64_t sub_2749213F4()
{
  v1 = sub_2749FACC4();
  v31 = *(v1 - 8);
  v32 = v1;
  MEMORY[0x28223BE20](v1);
  v30 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2749F9064();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967618);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v29 - v11;
  v33 = type metadata accessor for AddToSiriView();
  v13 = *(v33 + 32);
  v35 = v0;
  v14 = (v0 + v13);
  v15 = *v14;
  v16 = *(v14 + 8);
  v17 = v14[2];
  v38 = *v14;
  v34 = v16;
  v39 = v16;
  v40 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FBD8);
  sub_2749FC5C4();
  v18 = v36;
  v19 = [v36 reference];

  if (v19)
  {
    v20 = [v19 externalURLForViewing];

    sub_2749F9034();
    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  __swift_storeEnumTagSinglePayload(v12, v21, 1, v3);
  sub_27473ADB8(v12, v10, &qword_280967618);
  if (__swift_getEnumTagSinglePayload(v10, 1, v3) == 1)
  {
    sub_27472ECBC(v10, &qword_280967618);
    v22 = v35;
  }

  else
  {
    (*(v4 + 32))(v6, v10, v3);
    v23 = v30;
    v22 = v35;
    sub_27491CD74();
    sub_2749FAC94();
    (*(v31 + 8))(v23, v32);
    (*(v4 + 8))(v6, v3);
  }

  v38 = v15;
  v39 = v34;
  v40 = v17;
  sub_2749FC5C4();
  v24 = v36;
  v25 = v37;
  if (v37)
  {
    if (v37 == 1)
    {
      v25 = 0;
    }

    v26 = *(v22 + *(v33 + 28));
    v27 = v36;
    v26(v24, v25);
  }

  return sub_27472ECBC(v12, &qword_280967618);
}

uint64_t sub_2749217B8@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v61 = a2;
  v3 = sub_2749FBAE4();
  v57 = *(v3 - 8);
  v58 = v3;
  MEMORY[0x28223BE20](v3);
  v56 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FD28);
  v54 = *(v5 - 8);
  v55 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v53 - v6;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FD30);
  MEMORY[0x28223BE20](v59);
  v9 = &v53 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FD38);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v60 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v53 - v13;
  v15 = type metadata accessor for AddToSiriView();
  v16 = v15 - 8;
  v17 = *(v15 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  sub_274926368(a1, &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v20 = swift_allocObject();
  sub_2749263CC(&v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  v21 = a1 + *(v16 + 48);
  v22 = *v21;
  v23 = *(v21 + 8);
  v63 = v22;
  v64 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B400);
  sub_2749FC5C4();
  if (v62)
  {
    v24 = 1;
    v25 = v59;
  }

  else
  {
    sub_274926368(a1, &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    v26 = swift_allocObject();
    sub_2749263CC(&v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FD40);
    sub_2749269D4();
    sub_2749FC624();
    v27 = v56;
    sub_2749FBAD4();
    sub_27472ABB4(&qword_28096FD60, &qword_28096FD28);
    sub_2749260C8(&qword_28096D440, MEMORY[0x277CDE400]);
    v28 = v55;
    v29 = v58;
    sub_2749FBFC4();
    (*(v57 + 8))(v27, v29);
    (*(v54 + 8))(v7, v28);
    v30 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FD68) + 36)];
    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D900) + 28);
    v32 = *MEMORY[0x277CDF420];
    v33 = sub_2749FAAA4();
    (*(*(v33 - 8) + 104))(v30 + v31, v32, v33);
    *v30 = swift_getKeyPath();
    LOBYTE(v32) = sub_2749FBC84();
    sub_2749FA9E4();
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v42 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FD70) + 36)];
    *v42 = v32;
    *(v42 + 1) = v35;
    *(v42 + 2) = v37;
    *(v42 + 3) = v39;
    *(v42 + 4) = v41;
    v42[40] = 0;
    LOBYTE(v32) = sub_2749FBC54();
    sub_2749FA9E4();
    v43 = v59;
    v44 = &v9[*(v59 + 36)];
    *v44 = v32;
    *(v44 + 1) = v45;
    *(v44 + 2) = v46;
    *(v44 + 3) = v47;
    *(v44 + 4) = v48;
    v44[40] = 0;
    sub_2747D31F8(v9, v14, &qword_28096FD30);
    v24 = 0;
    v25 = v43;
  }

  __swift_storeEnumTagSinglePayload(v14, v24, 1, v25);
  v49 = v60;
  sub_27473ADB8(v14, v60, &qword_28096FD38);
  v50 = v61;
  *v61 = sub_2749266CC;
  v50[1] = v20;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FD78);
  sub_27473ADB8(v49, v50 + *(v51 + 48), &qword_28096FD38);

  sub_27472ECBC(v14, &qword_28096FD38);
  sub_27472ECBC(v49, &qword_28096FD38);
}

double sub_274921DFC@<D0>(uint64_t a1@<X8>)
{
  sub_2749FBC44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FD80);
  sub_274926B4C();
  sub_2749FAA54();
  sub_2749FAC54();
  sub_2749FC914();
  sub_2749FABB4();
  v2 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FDB0) + 36));
  *v2 = v4;
  v2[1] = v5;
  result = *&v6;
  v2[2] = v6;
  return result;
}

uint64_t sub_274921EE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FDA8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v36 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FD98);
  MEMORY[0x28223BE20](v7);
  v9 = &v36 - v8;
  *v6 = sub_2749FB634();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FDB8);
  sub_27492219C(a1, &v6[*(v10 + 44)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FDC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_274A0F620;
  v12 = sub_2749FBC94();
  *(inited + 32) = v12;
  v13 = sub_2749FBCB4();
  *(inited + 33) = v13;
  v14 = sub_2749FBCA4();
  sub_2749FBCA4();
  if (sub_2749FBCA4() != v12)
  {
    v14 = sub_2749FBCA4();
  }

  sub_2749FBCA4();
  if (sub_2749FBCA4() != v13)
  {
    v14 = sub_2749FBCA4();
  }

  sub_2749FA9E4();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_2747D31F8(v6, v9, &qword_28096FDA8);
  v23 = &v9[*(v7 + 36)];
  *v23 = v14;
  *(v23 + 1) = v16;
  *(v23 + 2) = v18;
  *(v23 + 3) = v20;
  *(v23 + 4) = v22;
  v23[40] = 0;
  v24 = sub_2749FBC74();
  v25 = sub_2749FBCA4();
  sub_2749FBCA4();
  if (sub_2749FBCA4() != v24)
  {
    v25 = sub_2749FBCA4();
  }

  sub_2749FA9E4();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_2747D31F8(v9, a2, &qword_28096FD98);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FD80);
  v35 = a2 + *(result + 36);
  *v35 = v25;
  *(v35 + 8) = v27;
  *(v35 + 16) = v29;
  *(v35 + 24) = v31;
  *(v35 + 32) = v33;
  *(v35 + 40) = 0;
  return result;
}

uint64_t sub_27492219C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FCC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v61 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FCC8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v61 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v61 - v14;
  sub_2749FAC54();
  v17 = v16;
  *v6 = sub_2749FB634();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FCD0);
  sub_27491F244(a1, &v6[*(v18 + 44)], v17);
  v19 = sub_2749FBC84();
  v20 = sub_2749FBCA4();
  sub_2749FBCA4();
  if (sub_2749FBCA4() != v19)
  {
    v20 = sub_2749FBCA4();
  }

  [objc_opt_self() bottomPadding];
  sub_2749FA9E4();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_2747D31F8(v6, v13, &qword_28096FCC0);
  v29 = &v13[*(v7 + 36)];
  *v29 = v20;
  *(v29 + 1) = v22;
  *(v29 + 2) = v24;
  *(v29 + 3) = v26;
  *(v29 + 4) = v28;
  v29[40] = 0;
  sub_2747D31F8(v13, v15, &qword_28096FCC8);
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v30 = qword_28159E448;
  v31 = sub_2749FCD64();
  v32 = sub_2749FCD64();

  v33 = [v30 localizedStringForKey:v31 value:v32 table:0];

  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967628);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_274A0F620;
  v35 = a1 + *(type metadata accessor for AddToSiriView() + 32);
  v36 = *v35;
  v37 = *(v35 + 8);
  v38 = *(v35 + 16);
  v63 = v36;
  LOBYTE(v64) = v37;
  v65 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FBD8);
  sub_2749FC5C4();
  v39 = v62;
  v40 = [v62 actions];

  sub_27471CF08(0, &qword_28096D540);
  v41 = sub_2749FCF84();

  if (sub_27472D918(v41))
  {
    sub_2747B2790(0, (v41 & 0xC000000000000001) == 0, v41);
    if ((v41 & 0xC000000000000001) != 0)
    {
      v42 = MEMORY[0x277C5F6D0](0, v41);
    }

    else
    {
      v42 = *(v41 + 32);
    }

    v43 = v42;

    v44 = [v43 localizedName];

    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  }

  else
  {
  }

  v45 = sub_27471CF08(0, &qword_28096FBB8);
  v46 = sub_274922780();
  *(v34 + 56) = v45;
  v47 = sub_274926C90();
  *(v34 + 64) = v47;
  *(v34 + 32) = v46;
  sub_2749227F4();
  v48 = sub_274922780();
  *(v34 + 96) = v45;
  *(v34 + 104) = v47;
  *(v34 + 72) = v48;
  v49 = sub_2749FCD74();
  v51 = v50;

  v63 = v49;
  v64 = v51;
  sub_27475D0D0();
  v52 = sub_2749FBEE4();
  v54 = v53;
  LOBYTE(v45) = v55;
  v57 = v56;
  KeyPath = swift_getKeyPath();
  sub_27473ADB8(v15, v10, &qword_28096FCC8);
  sub_27473ADB8(v10, a2, &qword_28096FCC8);
  v59 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FDD0) + 48);
  *v59 = v52;
  *(v59 + 8) = v54;
  *(v59 + 16) = v45 & 1;
  *(v59 + 24) = v57;
  *(v59 + 32) = KeyPath;
  *(v59 + 40) = 1;
  sub_274754DBC(v52, v54, v45 & 1);

  sub_27472ECBC(v15, &qword_28096FCC8);
  sub_27477656C(v52, v54, v45 & 1);

  return sub_27472ECBC(v10, &qword_28096FCC8);
}

id sub_274922780()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_2749FCD64();

  v2 = [v0 initWithString_];

  return v2;
}

uint64_t sub_2749227F4()
{
  sub_27471CF08(0, &qword_28096FDD8);
  v0 = sub_274922F78();
  v2 = sub_274923108(v0, v1);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [v2 localizedName];
  if (!v4)
  {

    return 0;
  }

  v5 = v4;
  v6 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();

  return v6;
}

uint64_t sub_274922890()
{
  type metadata accessor for AddToSiriView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B400);
  return sub_2749FC5D4();
}

void *sub_274922904@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C0A0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v24 - v2;
  v4 = sub_2749FBE14();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FD58);
  MEMORY[0x28223BE20](v24);
  v9 = &v24 - v8;
  sub_2749FCE14();
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v10 = qword_28159E448;
  v11 = sub_2749FCD64();

  v12 = sub_2749FCD64();

  v13 = [v10 localizedStringForKey:v11 value:v12 table:0];

  v14 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v16 = v15;

  __src[0] = v14;
  __src[1] = v16;
  sub_27475D0D0();
  sub_2749FC594();
  (*(v5 + 104))(v7, *MEMORY[0x277CE0AC0], v4);
  v17 = sub_2749FBD24();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v17);
  sub_2749FBD74();
  sub_27472ECBC(v3, &unk_28096C0A0);
  (*(v5 + 8))(v7, v4);
  sub_2749FBD54();
  v18 = sub_2749FBDA4();

  KeyPath = swift_getKeyPath();
  v20 = &v9[*(v24 + 36)];
  *v20 = KeyPath;
  v20[1] = v18;
  sub_2749FC914();
  sub_2749FB004();
  v21 = v25;
  sub_2747D31F8(v9, v25, &qword_28096FD58);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FD40);
  return memcpy((v21 + *(v22 + 36)), __src, 0x70uLL);
}

uint64_t sub_274922D1C@<X0>(uint64_t a1@<X8>)
{
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  OUTLINED_FUNCTION_93();
  v2 = sub_2749FCD64();
  OUTLINED_FUNCTION_93();
  v3 = sub_2749FCD64();

  v5 = OUTLINED_FUNCTION_11_2(v4, sel_localizedStringForKey_value_table_);

  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  sub_27475D0D0();
  result = sub_2749FBEE4();
  *a1 = result;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v9;
  return result;
}

void sub_274922E08()
{
  type metadata accessor for AddToSiriView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FBD8);
  sub_2749FC5C4();
  sub_2747D5A24(v2);
  sub_27471CF08(0, &qword_28096FBB8);
  v0 = sub_274922780();
  v1 = [v0 wf_isEmpty];

  if ((v1 & 1) == 0)
  {
    sub_2749FC5C4();
    sub_2747D5A24(v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FBC0);
    sub_2749FC5D4();
    sub_27491F188();
  }
}

uint64_t sub_274922F78()
{
  type metadata accessor for AddToSiriView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FBD8);
  sub_2749FC5C4();
  v0 = [v8 actions];

  sub_27471CF08(0, &qword_28096D540);
  v1 = sub_2749FCF84();

  if (!sub_27472D918(v1))
  {

    return _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  }

  sub_2747B2790(0, (v1 & 0xC000000000000001) == 0, v1);
  if ((v1 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x277C5F6D0](0, v1);
  }

  else
  {
    v2 = *(v1 + 32);
  }

  v3 = v2;

  v4 = [v3 app];

  if (!v4)
  {
    return _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  }

  v5 = [v4 bundleIdentifier];

  v6 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  return v6;
}

id sub_274923108(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_2749FCD64();
  }

  else
  {
    v2 = 0;
  }

  v3 = [swift_getObjCClassFromMetadata() applicationProxyForIdentifier_];

  return v3;
}

void sub_274923178()
{
  v35 = *MEMORY[0x277D85DE8];
  v1 = type metadata accessor for AddToSiriView();
  v2 = v0 + *(v1 + 32);
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  v32 = *v2;
  LOBYTE(v33) = v4;
  v34 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FBD8);
  sub_2749FC5C4();
  v6 = [v29 reference];

  if (!v6)
  {
    return;
  }

  v28 = v6;
  sub_2749FC5C4();
  [v29 save];

  v32 = v3;
  LOBYTE(v33) = v4;
  v34 = v5;
  sub_2749FC5C4();
  v7 = sub_2747D5A24(v29);
  v9 = v8;
  v26 = v1;
  v27 = v0;
  v10 = v0 + *(v1 + 36);
  v11 = *(v10 + 8);
  v12 = *(v10 + 16);
  v25 = *v10;
  v32 = *v10;
  v33 = v11;
  v34 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FBC0);
  sub_2749FC5C4();
  if (v9)
  {
    if (v7 == v29 && v9 == v30)
    {

      goto LABEL_14;
    }

    v14 = sub_2749FDCC4();

    if (v14)
    {
      goto LABEL_14;
    }
  }

  else
  {
  }

  v15 = *(v0 + *(v26 + 48));
  v33 = v11;
  v34 = v12;
  sub_2749FC5C4();
  v16 = sub_2749FCD64();

  v32 = 0;
  v17 = [v15 renameReference:v28 to:v16 error:&v32];

  if (v17)
  {
    v18 = v32;
  }

  else
  {
    v19 = v32;
    v20 = sub_2749F8FE4();

    swift_willThrow();
  }

LABEL_14:
  v32 = v3;
  LOBYTE(v33) = v4;
  v34 = v5;
  sub_2749FC5C4();
  v32 = v25;
  v33 = v11;
  v34 = v12;
  sub_2749FC5C4();
  sub_27484DB24(v29, v30, v29, &selRef_setName_);

  v32 = v3;
  LOBYTE(v33) = v4;
  v34 = v5;
  sub_2749FC5C4();

  v32 = v3;
  LOBYTE(v33) = v4;
  v34 = v5;
  sub_2749FC5C4();
  v32 = v3;
  LOBYTE(v33) = v4;
  v34 = v5;
  if (v30 == 1)
  {
    v21 = 1;
  }

  else
  {
    v21 = 2;
  }

  v31 = v21;
  sub_2749FC5D4();
  v22 = *(v27 + *(v26 + 24));
  if (v22)
  {
    v32 = v3;
    LOBYTE(v33) = v4;
    v34 = v5;
    sub_2749FC5C4();
    v23 = v29;
    if (v31 == 1)
    {
      v24 = 0;
    }

    else
    {
      v24 = 2;
    }

    v22(v29, v24);
  }

  else
  {
    v23 = v28;
  }
}

void sub_2749235A8()
{
  v1 = v0;
  v56 = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for AddToSiriView();
  v47 = *(v2 - 1);
  MEMORY[0x28223BE20](v2);
  v48 = v3;
  v4 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C960);
  MEMORY[0x28223BE20](v5 - 8);
  v49 = &v43 - v6;
  v7 = v0 + v2[8];
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);
  *&v54 = *v7;
  v8 = v54;
  BYTE8(v54) = v9;
  v55 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FBD8);
  sub_2749FC5C4();
  v11 = v52;
  v12 = [v52 record];

  v13 = v1 + v2[9];
  v14 = *v13;
  v15 = *(v13 + 16);
  v54 = v14;
  v55 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FBC0);
  sub_2749FC5C4();
  sub_2747D57FC(v52, v53, v12);

  *&v54 = v8;
  BYTE8(v54) = v9;
  v51 = v10;
  v55 = v10;
  sub_2749FC5C4();
  v16 = v52;
  v17 = [v52 record];

  v18 = [objc_allocWithZone(MEMORY[0x277D7CA68]) initWithRecord_];
  v19 = *(v1 + v2[12]);
  *&v54 = 0;
  v20 = [v19 createWorkflowWithOptions:v18 nameCollisionBehavior:2 error:&v54];
  v21 = v54;
  if (v20)
  {
    v22 = v20;
    v46 = v4;
    v50 = v18;
    sub_27471CF08(0, &qword_28096BF80);
    v23 = v21;
    v24 = v22;
    v25 = sub_2747A7EA8(v24, v19);
    v43 = v8;
    *&v54 = v8;
    v44 = v9;
    BYTE8(v54) = v9;
    v55 = v51;
    v52 = v25;
    LOBYTE(v53) = 1;
    v45 = v25;
    sub_2749FC5D4();
    v30 = sub_2749FD0E4();
    __swift_storeEnumTagSinglePayload(v49, 1, 1, v30);
    v31 = v46;
    sub_274926368(v1, v46);
    sub_2749FD0A4();
    v32 = v24;
    v33 = sub_2749FD094();
    v34 = (*(v47 + 80) + 32) & ~*(v47 + 80);
    v35 = (v48 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
    v36 = swift_allocObject();
    v37 = MEMORY[0x277D85700];
    *(v36 + 16) = v33;
    *(v36 + 24) = v37;
    sub_2749263CC(v31, v36 + v34);
    *(v36 + v35) = v32;
    sub_27479930C();

    v38 = *(v1 + v2[6]);
    if (v38)
    {
      v39 = v45;
      *&v54 = v43;
      BYTE8(v54) = v44;
      v55 = v51;
      sub_2749FC5C4();
      v40 = v52;
      v41 = v50;
      if (v53)
      {
        if (v53 == 1)
        {
          v42 = 0;
        }

        else
        {
          v42 = 2;
        }
      }

      else
      {

        v40 = 0;
        v42 = 3;
      }

      v38(v40, v42);
    }

    else
    {
    }
  }

  else
  {
    v26 = v54;
    v27 = sub_2749F8FE4();

    swift_willThrow();
    v28 = v1 + v2[11];
    v29 = *(v28 + 8);
    LOBYTE(v54) = *v28;
    *(&v54 + 1) = v29;
    LOBYTE(v52) = 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B400);
    sub_2749FC5D4();
  }
}

void sub_274923ACC()
{
  v0 = [objc_opt_self() sharedAnalytics];
  if (v0)
  {
    v1 = v0;
    [v0 logEventWithType:5302 context:0];

    v2 = [objc_allocWithZone(MEMORY[0x277D7C0E8]) init];
    type metadata accessor for AddToSiriView();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FBD8);
    sub_2749FC5C4();
    v3 = [v10 record];

    v4 = [v3 actions];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096FD10);
    v5 = sub_2749FCF84();

    v6 = *(v5 + 16);

    if (!HIDWORD(v6))
    {
      [v2 setActionCount_];
      v7 = sub_274922F78();
      sub_27484DB24(v7, v8, v2, &selRef_setAddToSiriBundleIdentifier_);
      v9 = @"ShortcutSourceAddToSiri";
      [v2 setShortcutSource_];

      [v2 track];
      return;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_274923C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[20] = a4;
  v5[21] = a5;
  sub_2749FD0A4();
  v5[22] = sub_2749FD094();
  v7 = sub_2749FD044();
  v5[23] = v7;
  v5[24] = v6;

  return MEMORY[0x2822009F8](sub_274923D30, v7, v6);
}

uint64_t sub_274923D30()
{
  v1 = *(v0 + 160);
  v2 = type metadata accessor for AddToSiriView();
  v3 = *(v1 + *(v2 + 48));
  v4 = (v1 + *(v2 + 32));
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = v4[2];
  *(v0 + 80) = v5;
  *(v0 + 88) = v6;
  *(v0 + 96) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FBD8);
  sub_2749FC5C4();
  v8 = *(v0 + 144);
  v9 = [v8 actions];

  if (!v9)
  {
    sub_27471CF08(0, &qword_28096D540);
    sub_2749FCF84();
    v9 = sub_2749FCF74();
  }

  *(v0 + 200) = v9;
  v10 = *(v0 + 168);
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_274923F14;
  v11 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968758);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_2747A0228;
  *(v0 + 104) = &block_descriptor_85;
  *(v0 + 112) = v11;
  [v3 createSmartPromptStatesForInsertedActions:v9 forReference:v10 completionHandler:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_274923F14()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);

  return MEMORY[0x2822009F8](sub_27492401C, v2, v1);
}

uint64_t sub_27492401C()
{
  v1 = *(v0 + 200);

  v2 = *(v0 + 8);

  return v2();
}

void sub_274924088()
{
  v1 = v0;
  v2 = [objc_allocWithZone(VCUIDictationTextField) init];
  [v2 frame];
  [v2 setFrame_];
  v3 = objc_opt_self();
  v4 = [v3 preferredFontForTextStyle_];
  v5 = [v4 fontDescriptor];

  v6 = [v5 fontDescriptorWithSymbolicTraits_];
  if (v6)
  {
    v7 = v6;
    [v7 pointSize];
    v8 = [v3 fontWithDescriptor:v7 size:?];
    v35 = v7;

    v9 = v2;
    v36 = v8;
    [v9 setFont_];
    [v9 setTextAlignment_];
    [v9 setReturnKeyType_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FB10);
    sub_2749FBAA4();
    [v9 setDelegate_];

    [v9 setScrollEnabled_];
    v10 = [objc_opt_self() clearColor];
    [v9 setBackgroundColor_];

    [v9 setTranslatesAutoresizingMaskIntoConstraints_];
    LODWORD(v11) = 1132068864;
    [v9 setContentCompressionResistancePriority:0 forAxis:v11];
    LODWORD(v12) = 1148846080;
    [v9 setContentCompressionResistancePriority:1 forAxis:v12];
    LODWORD(v13) = 1144750080;
    [v9 setContentHuggingPriority:1 forAxis:v13];
    LODWORD(v14) = 1132068864;
    [v9 setContentHuggingPriority:0 forAxis:v14];
    if (!*(v1 + 40))
    {
      sub_2749FCE14();
      OUTLINED_FUNCTION_84();
      if (qword_28159E3A8 != -1)
      {
        OUTLINED_FUNCTION_1_1();
      }

      v15 = qword_28159E448;
      OUTLINED_FUNCTION_44();
      v16 = sub_2749FCD64();
      OUTLINED_FUNCTION_44();
      v17 = sub_2749FCD64();

      v18 = [v15 localizedStringForKey:v16 value:v17 table:{0, v7}];

      _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    }

    sub_2749FCE14();
    sub_2749FCE14();
    if (qword_28159E3A8 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v19 = qword_28159E448;
    v20 = sub_2749FCD64();

    v21 = sub_2749FCD64();

    v22 = [v19 &selRef:v20 presentedViewFrameInContainerViewOfSize:v21 withSizeCalculation:0 + 4];

    v23 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v25 = v24;

    MEMORY[0x277C5EBC0](v23, v25);

    sub_27471CF08(0, &qword_28159E458);
    OUTLINED_FUNCTION_44();
    v26 = sub_274922780();
    v27 = [v26 mutableString];
    v28 = v26;
    v29 = [v28 length];
    OUTLINED_FUNCTION_86();
    v30 = swift_allocObject();
    v30[2] = v28;
    aBlock[4] = sub_274925E08;
    aBlock[5] = v30;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_274924948;
    aBlock[3] = &block_descriptor_40;
    v31 = _Block_copy(aBlock);
    v32 = v28;

    [v27 enumerateSubstringsInRange:0 options:v29 usingBlock:{2, v31}];
    _Block_release(v31);

    [v9 setAttributedPlaceholder_];
    sub_2749FBAA4();

    v33 = aBlock[0];
    v34 = *(aBlock[0] + OBJC_IVAR____TtCV10WorkflowUI17DictationTextView11Coordinator_textView);
    *(aBlock[0] + OBJC_IVAR____TtCV10WorkflowUI17DictationTextView11Coordinator_textView) = v9;
    v9;
  }

  else
  {
    __break(1u);
  }
}

void sub_274924670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  sub_2749FCE14();
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v13 = qword_28159E448;
  v14 = sub_2749FCD64();

  v15 = sub_2749FCD64();

  v16 = [v13 localizedStringForKey:v14 value:v15 table:0];

  v17 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v19 = v18;

  if (a2)
  {
    if (v17 == a1 && v19 == a2)
    {
    }

    else
    {
      v21 = sub_2749FDCC4();

      if ((v21 & 1) == 0)
      {
        return;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096B100);
    inited = swift_initStackObject();
    v23 = MEMORY[0x277D740C0];
    *(inited + 16) = xmmword_274A0EF10;
    v24 = *v23;
    *(inited + 32) = *v23;
    v25 = objc_opt_self();
    v26 = v24;
    v27 = [v25 labelColor];
    *(inited + 64) = sub_27471CF08(0, &unk_28096B110);
    *(inited + 40) = v27;
    _s3__C3KeyVMa_0(0);
    sub_2749260C8(&qword_28159E480, _s3__C3KeyVMa_0);
    sub_2749FCCB4();
    v28 = sub_2749FCC94();

    [a8 addAttributes:v28 range:{a3, a4}];

    return;
  }
}

uint64_t sub_274924948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *(a1 + 32);
  if (a2)
  {
    v13 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v12(v13, v15, a3, a4, a5, a6, a7);
}

void sub_274924A08()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FB10);
  sub_2749FBAA4();
  v1 = v4;
  memcpy(&v4[OBJC_IVAR____TtCV10WorkflowUI17DictationTextView11Coordinator_configuration], v0, 0x60uLL);
  sub_274925DD0(v0, &v3);

  sub_2749FBAA4();
  v2 = v3;
  sub_274924D88();
}

id sub_274924B08()
{
  objc_allocWithZone(type metadata accessor for DictationTextView.Coordinator());
  sub_274925DD0(v0, &v2);
  return sub_274924B50(v0);
}

id sub_274924B50(void *__src)
{
  v1[OBJC_IVAR____TtCV10WorkflowUI17DictationTextView11Coordinator_isEditing] = 0;
  v1[OBJC_IVAR____TtCV10WorkflowUI17DictationTextView11Coordinator_isDictating] = 0;
  *&v1[OBJC_IVAR____TtCV10WorkflowUI17DictationTextView11Coordinator_textView] = 0;
  memcpy(&v1[OBJC_IVAR____TtCV10WorkflowUI17DictationTextView11Coordinator_configuration], __src, 0x60uLL);
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DictationTextView.Coordinator();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_274924BC0(void *a1)
{

  sub_27484DAC0(a1);
  sub_2749254A8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096F9C0);
  sub_2749FC6C4();

  swift_bridgeObjectRelease_n();
}

void sub_274924D88()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtCV10WorkflowUI17DictationTextView11Coordinator_configuration);
  v3 = *(v0 + OBJC_IVAR____TtCV10WorkflowUI17DictationTextView11Coordinator_configuration + 64);
  v4 = *(v0 + OBJC_IVAR____TtCV10WorkflowUI17DictationTextView11Coordinator_configuration + 72);
  *&v19 = *(v0 + OBJC_IVAR____TtCV10WorkflowUI17DictationTextView11Coordinator_configuration + 56);
  *(&v19 + 1) = v3;
  LOBYTE(v20) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096FDE0);
  MEMORY[0x277C5E410](&v18, v5);
  if (v18 == 1 && (v6 = OBJC_IVAR____TtCV10WorkflowUI17DictationTextView11Coordinator_isDictating, (*(v1 + OBJC_IVAR____TtCV10WorkflowUI17DictationTextView11Coordinator_isDictating) & 1) == 0))
  {
    v15 = OBJC_IVAR____TtCV10WorkflowUI17DictationTextView11Coordinator_textView;
    v16 = *(v1 + OBJC_IVAR____TtCV10WorkflowUI17DictationTextView11Coordinator_textView);
    if (v16)
    {
      sub_27484DB24(0, 0xE000000000000000, v16, &selRef_setText_);
      v17 = *(v1 + v15);
    }

    else
    {
      v17 = 0;
    }

    [v17 startDictation];
    *(v1 + v6) = 1;
  }

  else if ((*(v1 + OBJC_IVAR____TtCV10WorkflowUI17DictationTextView11Coordinator_isEditing) & 1) == 0)
  {
    v7 = *(v1 + OBJC_IVAR____TtCV10WorkflowUI17DictationTextView11Coordinator_textView);
    if (v7)
    {
      v8 = *(v2 + 2);
      v9 = *(v2 + 3);
      v19 = *v2;
      v20 = v8;
      v21 = v9;
      v10 = v7;
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096F9C0);
      MEMORY[0x277C5E410](&v18, v11);
      sub_2749251BC();
      v13 = v12;

      if (v13)
      {
        v14 = sub_2749FCD64();
      }

      else
      {
        v14 = 0;
      }

      [v10 setText_];
    }
  }
}

void sub_274924F0C(void *a1)
{
  *(v1 + OBJC_IVAR____TtCV10WorkflowUI17DictationTextView11Coordinator_isEditing) = 1;
  sub_27484DAC0(a1);
  sub_2749254A8();
  v4 = v3;

  if (v4)
  {
    OUTLINED_FUNCTION_93();
    v5 = sub_2749FCD64();
  }

  else
  {
    v5 = 0;
  }

  [a1 setText_];
}

uint64_t sub_274925018()
{
  *(v0 + OBJC_IVAR____TtCV10WorkflowUI17DictationTextView11Coordinator_isEditing) = 0;
  *(v0 + OBJC_IVAR____TtCV10WorkflowUI17DictationTextView11Coordinator_isDictating) = 0;
  v1 = *(v0 + OBJC_IVAR____TtCV10WorkflowUI17DictationTextView11Coordinator_configuration + 80);

  v1(v2);
}

uint64_t sub_2749250E0(id a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a4 == 10 && a5 == 0xE100000000000000;
  if (!v6 && (sub_2749FDCC4() & 1) == 0)
  {
    return 1;
  }

  [a1 resignFirstResponder];
  return 0;
}

void sub_2749251BC()
{
  OUTLINED_FUNCTION_48();
  v1 = v0;
  v3 = v2;
  sub_2749F8E94();
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  sub_2749FCE14();
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v5 = qword_28159E448;
  v6 = sub_2749FCD64();

  v7 = sub_2749FCD64();

  v8 = [v5 localizedStringForKey:v6 value:v7 table:0];

  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  sub_2749F8E64();

  if (v1)
  {
    sub_27475D0D0();
    sub_2749FD714();
    v9 = sub_2749FCD64();
    v10 = [v9 wf_isEmpty];

    if (v10)
    {
      v11 = OUTLINED_FUNCTION_8_31();
      v12(v11);
    }

    else
    {
      sub_2749FCE14();
      sub_2749FCE14();
      OUTLINED_FUNCTION_3_5();
      v15 = sub_2749FCD64();

      v16 = sub_2749FCD64();

      v17 = [v5 localizedStringForKey:v15 value:v16 table:0];

      _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();

      v18 = OUTLINED_FUNCTION_3_5();
      MEMORY[0x277C5EBC0](v18);

      v19 = OUTLINED_FUNCTION_8_31();
      v20(v19);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_8_31();
    v14(v13);
  }

  OUTLINED_FUNCTION_46();
}

void sub_2749254A8()
{
  OUTLINED_FUNCTION_48();
  v1 = v0;
  v3 = v2;
  v4 = sub_2749F8E94();
  OUTLINED_FUNCTION_43();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  sub_2749FCE14();
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v11 = qword_28159E448;
  v12 = sub_2749FCD64();

  v13 = sub_2749FCD64();

  v14 = [v11 localizedStringForKey:v12 value:v13 table:0];

  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  sub_2749F8E64();

  if (v1)
  {
    sub_27475D0D0();
    sub_2749FD714();
    OUTLINED_FUNCTION_84();

    OUTLINED_FUNCTION_44();
    v15 = sub_2749FCD64();

    v16 = [v15 wf_isEmpty];

    (*(v6 + 8))(v10, v4);
    if (v16)
    {
    }
  }

  else
  {
    (*(v6 + 8))(v10, v4);
  }

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_46();
}

id sub_2749256FC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_274925808(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_274925848(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10WorkflowUI13AddToSiriViewV16CompletionStatusO(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_2749258CC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 9))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 3)
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

uint64_t sub_27492590C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_274925950(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t type metadata accessor for AddToSiriView()
{
  result = qword_28096FAB8;
  if (!qword_28096FAB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2749259EC()
{
  sub_27472C6EC(319, &qword_280968A60, MEMORY[0x277CDF3E0]);
  if (v0 <= 0x3F)
  {
    sub_27472C6EC(319, &unk_28096FAD0, MEMORY[0x277CDF708]);
    if (v1 <= 0x3F)
    {
      sub_274776B60();
      if (v2 <= 0x3F)
      {
        sub_27478CEF4();
        if (v3 <= 0x3F)
        {
          sub_274925B78(319, &qword_28096FAF0);
          if (v4 <= 0x3F)
          {
            sub_274925B78(319, &qword_28096B290);
            if (v5 <= 0x3F)
            {
              sub_274925B78(319, &qword_28096D840);
              if (v6 <= 0x3F)
              {
                sub_27471CF08(319, &unk_28096FAF8);
                if (v7 <= 0x3F)
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

void sub_274925B78(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_2749FC5F4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

id sub_274925C44@<X0>(void *a1@<X8>)
{
  memcpy(v4, v1, sizeof(v4));
  result = sub_274924B08();
  *a1 = result;
  return result;
}

uint64_t sub_274925C88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_274925E18();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_274925CEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_274925E18();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_274925D50()
{
  sub_274925E18();
  sub_2749FB774();
  __break(1u);
}

unint64_t sub_274925D7C()
{
  result = qword_28096FB08;
  if (!qword_28096FB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096FB08);
  }

  return result;
}

unint64_t sub_274925E18()
{
  result = qword_28096FB18;
  if (!qword_28096FB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096FB18);
  }

  return result;
}

unint64_t sub_274925E74()
{
  result = qword_28096FB40;
  if (!qword_28096FB40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096FB38);
    sub_274925F00();
    sub_27492610C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096FB40);
  }

  return result;
}

unint64_t sub_274925F00()
{
  result = qword_28096FB48;
  if (!qword_28096FB48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096FB50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096FB58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096FB60);
    sub_27472ABB4(&unk_28096FB68, &qword_28096FB58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28096CFC0);
    sub_27472ABB4(&unk_28096B360, &unk_28096CFC0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_2749260C8(&qword_28159E5A0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096FB48);
  }

  return result;
}

uint64_t sub_2749260C8(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_27492610C()
{
  result = qword_28096FB78;
  if (!qword_28096FB78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096FB80);
    sub_2749261C8();
    sub_2749260C8(&qword_28159E5A0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096FB78);
  }

  return result;
}

unint64_t sub_2749261C8()
{
  result = qword_28096FB88;
  if (!qword_28096FB88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096FB90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096FB98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096FBA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28096CFC0);
    sub_27472ABB4(&qword_28096FBA8, &qword_28096FBA0);
    sub_27472ABB4(&unk_28096B360, &unk_28096CFC0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096FB88);
  }

  return result;
}

uint64_t sub_274926368(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AddToSiriView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2749263CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AddToSiriView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_274926490(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for AddToSiriView();
  v3 = OUTLINED_FUNCTION_34(v2);
  return a1(v3);
}

uint64_t sub_274926564(uint64_t a1)
{
  v4 = *(type metadata accessor for AddToSiriView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_27475F680;

  return sub_274923C98(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_2749266E4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = type metadata accessor for AddToSiriView();
  OUTLINED_FUNCTION_34(v4);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a2(a1, v6);
}

uint64_t objectdestroy_54Tm()
{
  type metadata accessor for AddToSiriView();
  OUTLINED_FUNCTION_23();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  v7 = v1 + v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2749FAA94();
    OUTLINED_FUNCTION_9();
    (*(v8 + 8))(v1 + v4);
  }

  else
  {
  }

  v9 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096FBF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2749FACC4();
    OUTLINED_FUNCTION_9();
    (*(v10 + 8))(v7 + v9);
  }

  else
  {
  }

  if (*(v7 + v0[6]))
  {
  }

  OUTLINED_FUNCTION_15_21();

  OUTLINED_FUNCTION_15_21();
  OUTLINED_FUNCTION_15_21();

  return MEMORY[0x2821FE8E8](v1, v4 + v6, v3 | 7);
}

uint64_t sub_274926964(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for AddToSiriView();
  OUTLINED_FUNCTION_34(v2);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a1(v4);
}

unint64_t sub_2749269D4()
{
  result = qword_28096FD48;
  if (!qword_28096FD48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096FD40);
    sub_274926A60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096FD48);
  }

  return result;
}

unint64_t sub_274926A60()
{
  result = qword_28096FD50;
  if (!qword_28096FD50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096FD58);
    sub_27472ABB4(&unk_28096DEF0, &unk_28096D8E0);
    sub_27472ABB4(&qword_28159E5C0, &unk_28096D8F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096FD50);
  }

  return result;
}

unint64_t sub_274926B4C()
{
  result = qword_28096FD88;
  if (!qword_28096FD88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096FD80);
    sub_274926BD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096FD88);
  }

  return result;
}

unint64_t sub_274926BD8()
{
  result = qword_28096FD90;
  if (!qword_28096FD90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096FD98);
    sub_27472ABB4(&qword_28096FDA0, &qword_28096FDA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096FD90);
  }

  return result;
}

unint64_t sub_274926C90()
{
  result = qword_28096FDC8;
  if (!qword_28096FDC8)
  {
    sub_27471CF08(255, &qword_28096FBB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096FDC8);
  }

  return result;
}

void sub_274926CF8(id a1, char a2)
{
  if (a2 != -1)
  {
  }
}

uint64_t sub_274926D1C(uint64_t a1)
{
  v2 = type metadata accessor for AddToSiriView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_274926D78()
{
  result = qword_28096FDF8;
  if (!qword_28096FDF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28096FE00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096FB28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096FB20);
    sub_2749FB9A4();
    sub_27472ABB4(&qword_28096FBB0, &qword_28096FB20);
    sub_2749260C8(&qword_28096CA60, MEMORY[0x277CDE2A0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_2749260C8(&qword_28159E5A0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096FDF8);
  }

  return result;
}

id OUTLINED_FUNCTION_18_21()
{

  return [v0 (v1 + 2808)];
}

uint64_t getEnumTagSinglePayload for ImagePickerView(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 65281 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65281 < 0xFF0000)
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
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65282;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ImagePickerView(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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
          *(result + 1) = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2749270DC@<X0>(__int16 a1@<W0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v25 = sub_2749FBA94();
  OUTLINED_FUNCTION_43();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2749FB5D4();
  OUTLINED_FUNCTION_43();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FE10);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v15);
  v17 = &v24 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FE18);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v18);
  v20 = &v24 - v19;
  *v17 = sub_2749FB634();
  *(v17 + 1) = 0;
  v17[16] = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FE20);
  sub_274927398(a1 & 0x1FF, &v17[*(v21 + 44)]);
  v22 = &v17[*(v14 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FE28);
  sub_2749FB034();
  *v22 = 0;
  sub_2749FB5B4();
  sub_274927EA4();
  sub_2749FC1D4();
  (*(v10 + 8))(v13, v8);
  sub_27472ECBC(v17, &qword_28096FE10);
  sub_2749FBA74();
  sub_274927F88();
  sub_2749FC1A4();
  (*(v4 + 8))(v7, v25);
  return sub_27472ECBC(v20, &qword_28096FE18);
}

uint64_t sub_274927398@<X0>(__int16 a1@<W0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v59 = sub_2749FC744();
  v55 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v54 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B6D0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v60 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v56 = &v53 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FE58);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v53 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FE60);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v53 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FE68);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = &v53 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FE70);
  v21 = v20 - 8;
  v22 = MEMORY[0x28223BE20](v20);
  v58 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v53 - v25;
  MEMORY[0x28223BE20](v24);
  v57 = &v53 - v27;
  *v11 = sub_2749FB524();
  *(v11 + 1) = 0;
  v28 = 1;
  v11[16] = 1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FE78);
  sub_274927950(a1 & 0x1FF, &v11[*(v29 + 44)]);
  v30 = sub_2749FBC54();
  v31 = *(v9 + 44);
  v32 = v56;
  v33 = &v11[v31];
  *v33 = v30;
  *(v33 + 8) = 0u;
  *(v33 + 24) = 0u;
  v33[40] = 1;
  sub_2749FC914();
  sub_2749FB004();
  sub_27475CF54(v11, v15, &qword_28096FE58);
  memcpy(&v15[*(v13 + 44)], __src, 0x70uLL);
  v34 = sub_2749FC494();
  KeyPath = swift_getKeyPath();
  sub_27475CF54(v15, v19, &qword_28096FE60);
  v36 = &v19[*(v17 + 44)];
  *v36 = KeyPath;
  v36[1] = v34;
  v37 = objc_opt_self();
  v38 = &selRef_systemBackgroundColor;
  if ((a1 & 0x100) != 0)
  {
    v38 = &selRef_systemGray4Color;
  }

  v39 = [v37 *v38];
  v40 = sub_2749FC3E4();
  v41 = sub_274927CA8(a1);
  v42 = v19;
  v43 = v57;
  sub_27475CF54(v42, v26, &qword_28096FE68);
  v44 = &v26[*(v21 + 44)];
  *v44 = v40;
  *(v44 + 1) = v41;
  v45 = v59;
  *(v44 + 8) = 256;
  sub_27475CF54(v26, v43, &qword_28096FE70);
  v46 = sub_2747815EC(byte_28838FC30);
  if (v46 == 3 || v46 != a1)
  {
    v47 = v54;
    sub_2749FC734();
    (*(v55 + 32))(v32, v47, v45);
    v28 = 0;
  }

  __swift_storeEnumTagSinglePayload(v32, v28, 1, v45);
  v48 = v58;
  sub_27473F28C(v43, v58, &qword_28096FE70);
  v49 = v60;
  sub_27473F28C(v32, v60, &qword_28096B6D0);
  v50 = v61;
  sub_27473F28C(v48, v61, &qword_28096FE70);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FE80);
  sub_27473F28C(v49, v50 + *(v51 + 48), &qword_28096B6D0);
  sub_27472ECBC(v32, &qword_28096B6D0);
  sub_27472ECBC(v43, &qword_28096FE70);
  sub_27472ECBC(v49, &qword_28096B6D0);
  return sub_27472ECBC(v48, &qword_28096FE70);
}

uint64_t sub_274927950@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FE90);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v32 - v8;
  v33 = v7;
  v32[3] = a1;
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v10 = qword_28159E448;
  v11 = sub_2749FCD64();
  v12 = sub_2749FCD64();

  v13 = [v10 localizedStringForKey:v11 value:v12 table:0];

  v14 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v16 = v15;

  v34 = v14;
  v35 = v16;
  sub_27475D0D0();
  v17 = sub_2749FBEE4();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = sub_2749FC514();
  v25 = sub_2749FC914();
  v27 = v26;
  v28 = sub_2749FC514();
  v34 = v24;
  v35 = 0;
  v36 = v28;
  v37 = v25;
  v38 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FE98);
  sub_274928044();
  sub_2749FC184();

  v29 = v33;
  sub_27473F28C(v9, v33, &qword_28096FE90);
  *a2 = v17;
  *(a2 + 8) = v19;
  v21 &= 1u;
  *(a2 + 16) = v21;
  *(a2 + 24) = v23;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FEC8);
  sub_27473F28C(v29, a2 + *(v30 + 64), &qword_28096FE90);
  sub_274754DBC(v17, v19, v21);

  sub_27472ECBC(v9, &qword_28096FE90);
  sub_27472ECBC(v29, &qword_28096FE90);
  sub_27477656C(v17, v19, v21);
}

uint64_t sub_274927CA8(unsigned __int8 a1)
{
  v2 = sub_2749FB904();
  MEMORY[0x28223BE20](v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && ((v5 = sub_2747815EC(byte_28838FC30), v5 == 3) || v5 != a1))
  {
    sub_27473C710();

    return sub_2749FC7B4();
  }

  else
  {
    v6 = *(v2 + 20);
    v7 = *MEMORY[0x277CE0118];
    v8 = sub_2749FB584();
    (*(*(v8 - 8) + 104))(&v4[v6], v7, v8);
    sub_2749FB7E4();
    *v4 = v9;
    *(v4 + 1) = v10;
    *(v4 + 2) = v11;
    *(v4 + 3) = v12;
    sub_274724F18(&qword_28096FE88, MEMORY[0x277CE0550]);
    return sub_2749FC7B4();
  }
}

uint64_t sub_274927E88@<X0>(uint64_t a1@<X8>)
{
  if (v1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_2749270DC(v2 | *v1, a1);
}

unint64_t sub_274927EA4()
{
  result = qword_28096FE30;
  if (!qword_28096FE30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096FE10);
    sub_27472AB6C(&qword_28096FE38, &qword_28096FE40);
    sub_27472AB6C(&qword_28096FE48, &qword_28096FE28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096FE30);
  }

  return result;
}

unint64_t sub_274927F88()
{
  result = qword_28096FE50;
  if (!qword_28096FE50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096FE18);
    sub_274927EA4();
    sub_274724F18(&qword_28159E5A0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096FE50);
  }

  return result;
}

unint64_t sub_274928044()
{
  result = qword_28096FEA0;
  if (!qword_28096FEA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096FE98);
    sub_2749280FC();
    sub_27472AB6C(&qword_28096FEB8, &qword_28096FEC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096FEA0);
  }

  return result;
}

unint64_t sub_2749280FC()
{
  result = qword_28096FEA8;
  if (!qword_28096FEA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096FEB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096FEA8);
  }

  return result;
}

uint64_t SmartShortcutPickerUserLibraryDataSource.__allocating_init(database:)(void *a1)
{
  v2 = swift_allocObject();
  SmartShortcutPickerUserLibraryDataSource.init(database:)(a1);
  return v2;
}

uint64_t SmartShortcutPickerUserLibraryDataSource.sections.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2749FA904();

  return v1;
}

uint64_t sub_274928234@<X0>(uint64_t *a1@<X8>)
{
  result = SmartShortcutPickerUserLibraryDataSource.sections.getter();
  *a1 = result;
  return result;
}

uint64_t SmartShortcutPickerUserLibraryDataSource.sections.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2749FA914();
}

void (*SmartShortcutPickerUserLibraryDataSource.sections.modify(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v2;
  v2[4] = swift_getKeyPath();
  v2[5] = swift_getKeyPath();
  v2[6] = sub_2749FA8F4();
  return sub_2747AA744;
}

uint64_t SmartShortcutPickerUserLibraryDataSource.$sections.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B708);
  sub_2749FA8D4();
  return swift_endAccess();
}

uint64_t sub_274928400(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FF20);
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - v3;
  (*(v5 + 16))(&v7 - v3, a1);
  return SmartShortcutPickerUserLibraryDataSource.$sections.setter(v4);
}

uint64_t SmartShortcutPickerUserLibraryDataSource.$sections.setter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FF20);
  OUTLINED_FUNCTION_1_29();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  (*(v4 + 16))(&v8 - v6, a1, v1);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B708);
  sub_2749FA8E4();
  swift_endAccess();
  return (*(v4 + 8))(a1, v1);
}

void (*SmartShortcutPickerUserLibraryDataSource.$sections.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FF20);
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = *(v5 + 64);
  v3[6] = __swift_coroFrameAllocStub(v6);
  v3[7] = __swift_coroFrameAllocStub(v6);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B708);
  sub_2749FA8D4();
  swift_endAccess();
  return sub_274928720;
}

void sub_274928720(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    v5 = v2[4];
    v6 = v2[5];
    (*(v6 + 16))(*(*a1 + 48), v4, v5);
    SmartShortcutPickerUserLibraryDataSource.$sections.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    SmartShortcutPickerUserLibraryDataSource.$sections.setter(*(*a1 + 56));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t SmartShortcutPickerUserLibraryDataSource.init(database:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B708);
  OUTLINED_FUNCTION_1_29();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = v11 - v7;
  v9 = OBJC_IVAR____TtC10WorkflowUI40SmartShortcutPickerUserLibraryDataSource__sections;
  v11[1] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B710);
  sub_2749FA8C4();
  (*(v5 + 32))(v1 + v9, v8, v2);
  *(v1 + OBJC_IVAR____TtC10WorkflowUI40SmartShortcutPickerUserLibraryDataSource_database) = a1;
  [a1 addObjectObserver_];
  return v1;
}

uint64_t SmartShortcutPickerUserLibraryDataSource.deinit()
{
  v1 = OBJC_IVAR____TtC10WorkflowUI40SmartShortcutPickerUserLibraryDataSource_database;
  [*(v0 + OBJC_IVAR____TtC10WorkflowUI40SmartShortcutPickerUserLibraryDataSource_database) removeObjectObserver_];
  v2 = OBJC_IVAR____TtC10WorkflowUI40SmartShortcutPickerUserLibraryDataSource__sections;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B708);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return v0;
}

uint64_t SmartShortcutPickerUserLibraryDataSource.__deallocating_deinit()
{
  SmartShortcutPickerUserLibraryDataSource.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t SmartShortcutPickerUserLibraryDataSource.load()()
{
  OUTLINED_FUNCTION_79();
  *(v1 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C960);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_274928A98, 0, 0);
}

uint64_t sub_274928A98()
{
  v19 = v0;
  v1 = *(v0[2] + OBJC_IVAR____TtC10WorkflowUI40SmartShortcutPickerUserLibraryDataSource_database);
  v2 = [objc_allocWithZone(MEMORY[0x277D7A1F8]) initWithLocation_];
  v3 = [v1 sortedWorkflowsWithQuery_];
  v0[4] = v3;

  v4 = [v3 descriptors];
  sub_27471CF08(0, &qword_28159E4A8);
  v5 = sub_2749FCF84();

  v6 = sub_274928EB0(v5);

  if (*(v6 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967A58);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_274A0EF10;
    sub_27492A3D4(v7 + 32);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = sub_274948330(v6);

  v18 = v7;
  sub_2747828F8(v8);

  sub_27492B358(&v18);
  v9 = v0[2];

  v10 = v18;
  v11 = sub_2749FD0E4();
  OUTLINED_FUNCTION_7_28(v11);
  sub_2749FD0A4();

  v12 = sub_2749FD094();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v9;
  v13[5] = v10;
  OUTLINED_FUNCTION_6_35();
  sub_27479930C();
  v0[5] = v15;
  v16 = swift_task_alloc();
  v0[6] = v16;
  *v16 = v0;
  v16[1] = sub_274928D44;

  return MEMORY[0x282200460]();
}

uint64_t sub_274928D44()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_21_1();
  v1 = *v0;
  OUTLINED_FUNCTION_8_1();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_274928E4C, 0, 0);
}

uint64_t sub_274928E4C()
{
  OUTLINED_FUNCTION_79();

  OUTLINED_FUNCTION_48_0();

  return v1();
}

uint64_t sub_274928EB0(uint64_t a1)
{
  v189 = 0;
  v222 = *MEMORY[0x277D85DE8];
  v3 = type metadata accessor for SmartShortcutPickerEntry();
  v194 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v201 = &v182 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v198 = &v182 - v6;
  v204 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096FF00);
  v203 = sub_2749FCCB4();
  v202 = sub_2749FCCB4();
  v7 = &qword_28096F000;
  v191 = sub_27472D918(a1);
  if (!v191)
  {
LABEL_111:
    v1 = &v208;
    sub_2749FCE14();
    if (qword_28159E3A8 != -1)
    {
      goto LABEL_155;
    }

    goto LABEL_112;
  }

  v8 = 0;
  v190 = a1 & 0xC000000000000001;
  v186 = OBJC_IVAR____TtC10WorkflowUI40SmartShortcutPickerUserLibraryDataSource_database;
  v184 = a1 & 0xFFFFFFFFFFFFFF8;
  v183 = a1 + 32;
  v185 = a1;
  while (1)
  {
    if (v190)
    {
      v9 = MEMORY[0x277C5F6D0](v8, a1);
    }

    else
    {
      if (v8 >= *(v184 + 16))
      {
        goto LABEL_154;
      }

      v9 = *(v183 + 8 * v8);
    }

    v10 = v9;
    v11 = __OFADD__(v8++, 1);
    if (v11)
    {
      goto LABEL_152;
    }

    v12 = sub_2748665C4(v9);
    v14 = v13;
    v15 = @"ShortcutSourceDefaultShortcut";
    if (!v15)
    {
      v1 = -1;
      if (!v14)
      {
        goto LABEL_100;
      }

      goto LABEL_20;
    }

    v16 = v15;
    v17 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v19 = v18;

    v1 = -1;
    if (!v14)
    {
      if (!v19)
      {
        goto LABEL_100;
      }

LABEL_20:

      goto LABEL_21;
    }

    if (!v19)
    {
      goto LABEL_20;
    }

    if (v12 == v17 && v14 == v19)
    {

      goto LABEL_105;
    }

    v21 = sub_2749FDCC4();

    if (v21)
    {
      goto LABEL_100;
    }

LABEL_21:
    v22 = v10;
    sub_27494DC14(v22, v198);
    v23 = [*(v188 + v186) collectionsForWorkflowReference_];
    v24 = sub_27471CF08(0, &qword_28159E490);
    sub_2747DE510(&qword_280967B30, &qword_28159E490);
    v197 = v24;
    v25 = sub_2749FD154();

    v193 = v8;
    v192 = v22;
    if ((v25 & 0xC000000000000001) != 0)
    {
      break;
    }

    v41 = *(v25 + 32);
    v42 = ((1 << v41) + 63) >> 6;
    if ((v41 & 0x3Fu) > 0xD)
    {

      if (!swift_stdlib_isStackAllocationSafe())
      {
        v78 = swift_slowAlloc();

        v99 = v189;
        v100 = sub_27492CB2C(v78, v42, v25, sub_2748E7728);
        v101 = &v210;
        v189 = v99;
        if (v99)
        {
          goto LABEL_159;
        }

        v27 = v100;
        swift_bridgeObjectRelease_n();
        MEMORY[0x277C61040](v78, -1, -1);
        goto LABEL_56;
      }
    }

    v200 = &v182;
    MEMORY[0x28223BE20](v26);
    v43 = &v182 - ((8 * v42 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_27476A4B0(0, v42, v43);
    v1 = 0;
    v7 = 0;
    v44 = 1 << *(v25 + 32);
    if (v44 < 64)
    {
      v45 = ~(-1 << v44);
    }

    else
    {
      v45 = -1;
    }

    v46 = v45 & *(v25 + 56);
    v47 = (v44 + 63) >> 6;
    while (v46)
    {
      v48 = __clz(__rbit64(v46));
      v46 &= v46 - 1;
LABEL_51:
      v51 = v48 | (v7 << 6);
      if ([*(*(v25 + 48) + 8 * v51) isFolder])
      {
        *&v43[(v51 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v51;
        v11 = __OFADD__(v1++, 1);
        if (v11)
        {
          goto LABEL_157;
        }
      }
    }

    v49 = v7;
    while (1)
    {
      v7 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        goto LABEL_149;
      }

      if (v7 >= v47)
      {
        break;
      }

      v50 = *(v25 + 56 + 8 * v7);
      ++v49;
      if (v50)
      {
        v48 = __clz(__rbit64(v50));
        v46 = (v50 - 1) & v50;
        goto LABEL_51;
      }
    }

    sub_274975F44();
    v27 = v52;
    v1 = -1;
LABEL_56:
    v7 = MEMORY[0x277D84F68];
LABEL_57:
    if ((v27 & 0xC000000000000001) != 0)
    {
      if (!sub_2749FD844())
      {
        goto LABEL_94;
      }

      sub_2749FD804();
      sub_2749FD174();
      v27 = v217;
      v53 = v218;
      v54 = v219;
      v55 = v220;
      v1 = v221;
    }

    else
    {
      if (!*(v27 + 16))
      {
LABEL_94:

        swift_beginAccess();
        sub_2748E3DF4();
        v88 = *(v204 + 16);
        sub_2748E3EB0(v88);
        v89 = v204;
        *(v204 + 16) = v88 + 1;
        sub_27483585C(v198, v89 + ((*(v194 + 80) + 32) & ~*(v194 + 80)) + *(v194 + 72) * v88);
        v204 = v89;
        swift_endAccess();
        goto LABEL_95;
      }

      v55 = 0;
      v56 = -1 << *(v27 + 32);
      v53 = v27 + 56;
      v57 = ~v56;
      v58 = -v56;
      if (v58 < 64)
      {
        v59 = ~(-1 << v58);
      }

      else
      {
        v59 = -1;
      }

      v1 = v59 & *(v27 + 56);
      v54 = v57;
    }

    v187 = v54;
    v60 = (v54 + 64) >> 6;
    v196 = v53;
    v195 = v60;
    if (v27 < 0)
    {
      goto LABEL_72;
    }

    while (1)
    {
      v61 = v55;
      v62 = v1;
      v63 = v55;
      if (!v1)
      {
        while (1)
        {
          v63 = v61 + 1;
          if (__OFADD__(v61, 1))
          {
            goto LABEL_148;
          }

          if (v63 >= v60)
          {
            break;
          }

          v62 = *(v53 + 8 * v63);
          ++v61;
          if (v62)
          {
            goto LABEL_70;
          }
        }

        v1 = 0;
        break;
      }

LABEL_70:
      v64 = (v62 - 1) & v62;
      v65 = *(*(v27 + 48) + ((v63 << 9) | (8 * __clz(__rbit64(v62)))));
      if (!v65)
      {
        break;
      }

      while (1)
      {
        v67 = [v65 identifier];
        v7 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
        v69 = v68;

        swift_beginAccess();
        v70 = v202;
        if (v202[2] && (v71 = sub_274797CC0(v7, v69), (v72 & 1) != 0))
        {
          v1 = *(v70[7] + 8 * v71);
        }

        else
        {
          v1 = MEMORY[0x277D84F90];
        }

        swift_endAccess();
        sub_27483585C(v198, v201);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_274763E3C(0, *(v1 + 16) + 1, 1, v1);
          v1 = v86;
        }

        v74 = *(v1 + 16);
        v73 = *(v1 + 24);
        v200 = v64;
        v199 = v65;
        if (v74 >= v73 >> 1)
        {
          sub_274763E3C(v73 > 1, v74 + 1, 1, v1);
          v1 = v87;
        }

        *(v1 + 16) = v74 + 1;
        sub_2748605C4(v201, v1 + ((*(v194 + 80) + 32) & ~*(v194 + 80)) + *(v194 + 72) * v74);
        swift_beginAccess();
        swift_isUniquelyReferenced_nonNull_native();
        v75 = v202;
        v207[0] = v202;
        v76 = sub_274797CC0(v7, v69);
        if (__OFADD__(v75[2], (v77 & 1) == 0))
        {
          goto LABEL_151;
        }

        v78 = v76;
        v79 = v77;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096F078);
        if (sub_2749FDA84())
        {
          v80 = sub_274797CC0(v7, v69);
          if ((v79 & 1) != (v81 & 1))
          {
            sub_2749FDD54();
            __break(1u);
LABEL_159:

            swift_bridgeObjectRelease_n();
            result = MEMORY[0x277C61040](v78, -1, -1);
            __break(1u);
            return result;
          }

          v78 = v80;
        }

        v82 = v207[0];
        if (v79)
        {
          *(*(v207[0] + 7) + 8 * v78) = v1;
        }

        else
        {
          *(v207[0] + (v78 >> 6) + 8) |= 1 << v78;
          v83 = (v82[6] + 16 * v78);
          *v83 = v7;
          v83[1] = v69;
          *(v82[7] + 8 * v78) = v1;
          v84 = v82[2];
          v11 = __OFADD__(v84, 1);
          v85 = v84 + 1;
          if (v11)
          {
            goto LABEL_153;
          }

          v82[2] = v85;
        }

        v202 = v82;
        swift_endAccess();

        v55 = v63;
        v1 = v200;
        v7 = MEMORY[0x277D84F68];
        v53 = v196;
        v60 = v195;
        if ((v27 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_72:
        v66 = sub_2749FD874();
        if (v66)
        {
          v207[0] = v66;
          swift_dynamicCast();
          v65 = v208;
          v63 = v55;
          v64 = v1;
          if (v208)
          {
            continue;
          }
        }

        goto LABEL_93;
      }
    }

LABEL_93:
    sub_274730F8C();
LABEL_95:
    v10 = v192;
    v90 = sub_274829F6C(v10);
    v7 = 0x28096F000;
    a1 = v185;
    v8 = v193;
    if (v91)
    {
      v92 = v90;
      v93 = v91;
      v94 = objc_allocWithZone(MEMORY[0x277CC1E70]);

      v95 = v189;
      v96 = sub_2749340F8(v92, v93, 0);
      if (v95)
      {

        v189 = 0;
        goto LABEL_98;
      }

      v189 = 0;
      if (v96)
      {

        v208 = v92;
        v209 = v93;
        v210 = 1;
        v98 = v198;
        sub_27492AA64(v198, &v208, &v204, &v203, &v202);

        sub_27478C4DC(v208, v209, v210);
        v97 = v98;
      }

      else
      {
LABEL_98:

        v97 = v198;
      }

      sub_274835920(v97);
      goto LABEL_105;
    }

    sub_274835920(v198);
LABEL_100:

LABEL_105:
    if (v8 == v191)
    {
      goto LABEL_111;
    }
  }

  v27 = MEMORY[0x277D84FA0];
  v208 = MEMORY[0x277D84FA0];
  sub_2749FD804();
  v7 = MEMORY[0x277D84F68];
  while (1)
  {
LABEL_23:
    v28 = sub_2749FD874();
    if (!v28)
    {

      goto LABEL_57;
    }

    v207[8] = v28;
    swift_dynamicCast();
    v29 = [v207[0] isFolder];
    v30 = v207[0];
    if (v29)
    {
      break;
    }
  }

  if (*(v27 + 24) <= *(v27 + 16))
  {
    sub_2747677FC();
  }

  v27 = v208;
  v31 = sub_2749FD5F4();
  v32 = v27 + 56;
  v33 = -1 << *(v27 + 32);
  v34 = v31 & ~v33;
  v35 = v34 >> 6;
  if (((-1 << v34) & ~*(v27 + 56 + 8 * (v34 >> 6))) != 0)
  {
    v36 = __clz(__rbit64((-1 << v34) & ~*(v27 + 56 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
    goto LABEL_37;
  }

  v37 = 0;
  v38 = (63 - v33) >> 6;
  while (++v35 != v38 || (v37 & 1) == 0)
  {
    v39 = v35 == v38;
    if (v35 == v38)
    {
      v35 = 0;
    }

    v37 |= v39;
    v40 = *(v32 + 8 * v35);
    if (v40 != -1)
    {
      v36 = __clz(__rbit64(~v40)) + (v35 << 6);
LABEL_37:
      *(v32 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
      *(*(v27 + 48) + 8 * v36) = v30;
      ++*(v27 + 16);
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  swift_once();
LABEL_112:
  v102 = qword_28159E448;
  v103 = sub_2749FCD64();
  v104 = sub_2749FCD64();

  v105 = [v102 localizedStringForKey:v103 value:v104 table:0];

  v106 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v108 = v107;

  v109 = sub_27471CF08(0, &qword_28096BB10);
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v195 = v109;
  v110 = sub_274903E28();
  swift_beginAccess();
  v208 = MEMORY[0x277D84FA0];

  v111 = v189;
  v112 = sub_274947AD8(v194, &v208);

  v208 = 0;
  v209 = 0;
  v210 = 3;
  *(v1 + 17) = v207[0];
  v211 = *(v207 + 3);
  v212 = v106;
  v213 = v108;
  v214 = v110;
  v215 = v112;
  v216 = 1;
  sub_2747B24E0(&v208, v207);
  sub_274763F6C();
  v201 = v113;
  v114 = *(v113 + 16);
  if (v114 >= *(v113 + 24) >> 1)
  {
    sub_274763F6C();
    v201 = v181;
  }

  v115 = v201;
  *(v201 + 16) = v114 + 1;
  v116 = (v115 + (v114 << 6));
  v117 = *v1;
  v118 = *(v1 + 16);
  v119 = *(v1 + 32);
  *(v116 + 73) = *(v1 + 41);
  v116[3] = v118;
  v116[4] = v119;
  v116[2] = v117;
  v193 = [*(v188 + *(v7 + 3800)) sortedVisibleFolders];
  v120 = [v193 descriptors];
  sub_27471CF08(0, &qword_28159E490);
  v121 = sub_2749FCF84();

  v122 = sub_27472D918(v121);
  if (v122)
  {
    v123 = v122;
    if (v122 < 1)
    {
      __break(1u);
LABEL_157:
      __break(1u);
    }

    v124 = 0;
    v125 = v121 & 0xC000000000000001;
    v198 = v122;
    v197 = v121 & 0xC000000000000001;
    v199 = v121;
    while (2)
    {
      if (v125)
      {
        v126 = MEMORY[0x277C5F6D0](v124, v121);
      }

      else
      {
        v126 = *(v121 + 8 * v124 + 32);
      }

      v127 = v126;
      v128 = [v127 identifier];
      v129 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v131 = v130;

      swift_beginAccess();
      v132 = v202;
      if (v202[2])
      {
        v133 = sub_274797CC0(v129, v131);
        v135 = v134;

        if (v135)
        {
          v136 = *(v132[7] + 8 * v133);
          swift_endAccess();

          [v127 glyphCharacter];
          v137 = WFSystemImageNameForOutlineGlyphCharacter();
          if (v137)
          {
            v138 = v137;
            v139 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
            v141 = v140;
          }

          else
          {
            v139 = 0x662E7265646C6F66;
            v141 = 0xEB000000006C6C69;
          }

          v142 = [v127 identifier];

          v143 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
          v200 = v144;

          v145 = [v127 name];
          v146 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
          v148 = v147;

          v149 = [objc_opt_self() clearBackground];
          v150 = objc_allocWithZone(MEMORY[0x277D7A158]);
          v151 = sub_27491A250(v139, v141, v149);
          v207[0] = MEMORY[0x277D84FA0];
          v152 = sub_274947AD8(v136, v207);

          LODWORD(v207[0]) = v205;
          *(v207 + 3) = *(&v205 + 3);
          v153 = *(v201 + 16);
          if (v153 >= *(v201 + 24) >> 1)
          {
            sub_274763F6C();
            v201 = v157;
          }

          v154 = v201;
          *(v201 + 16) = v153 + 1;
          v155 = v154 + (v153 << 6);
          v156 = v200;
          *(v155 + 32) = v143;
          *(v155 + 40) = v156;
          *(v155 + 48) = 2;
          LODWORD(v156) = *(v207 + 3);
          *(v155 + 49) = v207[0];
          *(v155 + 52) = v156;
          *(v155 + 56) = v146;
          *(v155 + 64) = v148;
          *(v155 + 72) = v151;
          *(v155 + 80) = v152;
          *(v155 + 88) = 1;
          v121 = v199;
          v123 = v198;
          v125 = v197;
LABEL_130:
          if (v123 == ++v124)
          {
            goto LABEL_131;
          }

          continue;
        }
      }

      else
      {
      }

      break;
    }

    swift_endAccess();
    goto LABEL_130;
  }

LABEL_131:

  swift_beginAccess();
  v158 = v203 + 64;
  v159 = 1 << *(v203 + 32);
  v160 = -1;
  if (v159 < 64)
  {
    v160 = ~(-1 << v159);
  }

  v1 = v160 & *(v203 + 64);
  v7 = (v159 + 63) >> 6;
  v196 = v203;

  v161 = 0;
  if (v1)
  {
    while (1)
    {
      v198 = v111;
LABEL_139:
      v163 = __clz(__rbit64(v1)) | (v161 << 6);
      v164 = *(v196 + 48) + 16 * v163;
      v166 = *v164;
      v165 = *(v164 + 8);
      v167 = *(*(v196 + 56) + 8 * v163);
      sub_2749F93D4();
      swift_bridgeObjectRetain_n();

      sub_2749F93C4();
      v168 = sub_2749F93B4();
      v170 = v169;

      v200 = v170;
      if (v170)
      {
        v199 = v168;
      }

      else
      {

        v199 = v166;
        v200 = v165;
      }

      v171 = v166;
      v197 = sub_274903E28();
      v205 = MEMORY[0x277D84FA0];
      v172 = v167;
      v111 = v198;
      v173 = sub_274947AD8(v172, &v205);

      v206[0] = v205;
      *(v206 + 3) = *(&v205 + 3);
      v174 = *(v201 + 16);
      if (v174 >= *(v201 + 24) >> 1)
      {
        sub_274763F6C();
        v201 = v179;
      }

      v1 &= v1 - 1;
      v175 = v201;
      *(v201 + 16) = v174 + 1;
      v176 = v175 + (v174 << 6);
      *(v176 + 32) = v171;
      *(v176 + 40) = v165;
      *(v176 + 48) = 1;
      v177 = *(v206 + 3);
      *(v176 + 49) = v206[0];
      *(v176 + 52) = v177;
      v178 = v200;
      *(v176 + 56) = v199;
      *(v176 + 64) = v178;
      *(v176 + 72) = v197;
      *(v176 + 80) = v173;
      *(v176 + 88) = 1;
      if (!v1)
      {
        goto LABEL_135;
      }
    }
  }

  while (1)
  {
LABEL_135:
    v162 = v161 + 1;
    if (__OFADD__(v161, 1))
    {
      goto LABEL_150;
    }

    if (v162 >= v7)
    {
      break;
    }

    v1 = *(v158 + 8 * v162);
    ++v161;
    if (v1)
    {
      v198 = v111;
      v161 = v162;
      goto LABEL_139;
    }
  }

  sub_2747D21CC(&v208);

  return v201;
}