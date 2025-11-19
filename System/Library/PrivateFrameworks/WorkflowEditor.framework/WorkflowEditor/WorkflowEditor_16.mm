void (*sub_27457DC74(id *a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_27457CCA4();
  return sub_27457DCBC;
}

void sub_27457DCBC(void **a1, char a2)
{
  if (a2)
  {
    v2 = swift_unknownObjectRetain();
    sub_27457D208(v2);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_27457D208(*a1);
  }
}

uint64_t sub_27457DD74()
{
  sub_27463C74C();
  sub_27457DA48(v1);
  return sub_27463C7AC();
}

uint64_t sub_27457DDC0(uint64_t a1, uint64_t a2)
{
  result = *(v2 + 16);
  if (result != a1 || *(v2 + 24) != a2)
  {
    result = sub_27463C6BC();
    if ((result & 1) == 0)
    {
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951F10);
      sub_27463B4EC();
      swift_endAccess();
      swift_beginAccess();
      type metadata accessor for RowTemplateEditorViewModel.StateStore();
      sub_27463B51C();
      sub_27463B50C();
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_27457DED0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  sub_27457DDC0(v3, v4);
}

uint64_t sub_27457DF14(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v23 = a3;
  v24 = a1;
  v25 = a2;
  v7 = sub_27463AF4C();
  v8 = *(v7 - 8);
  *&v9 = MEMORY[0x28223BE20](v7).n128_u64[0];
  v11 = &v22 - v10;
  v12 = [a4 key];
  sub_27463B6AC();

  swift_beginAccess();
  v13 = a4;
  swift_isUniquelyReferenced_nonNull_native();
  v26 = *(v5 + 40);
  sub_2745FCA4C();
  *(v5 + 40) = v26;

  swift_endAccess();
  v14 = [v13 key];
  v15 = sub_27463B6AC();
  v17 = v16;

  type metadata accessor for RowTemplateEditorViewModel.StateStore();
  (*(v8 + 16))(v11, v23, v7);
  v19 = v24;
  v18 = v25;
  v20 = sub_27457CBB8(v24, v25, v11);
  v27 = v17;
  v28 = v20;
  v26 = v15;
  swift_beginAccess();
  sub_27457FFC8(v19, v18);
  sub_27463B51C();
  sub_27463B54C();
  return swift_endAccess();
}

uint64_t sub_27457E160()
{

  return v0;
}

uint64_t sub_27457E190()
{
  v0 = sub_27457E160();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

void *sub_27457E1F4()
{
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  type metadata accessor for RowTemplateEditorViewModel.StateStore();
  swift_getTupleTypeMetadata2();
  sub_27463B87C();
  v0[4] = sub_27463B4DC();
  sub_274412734(0, &qword_28094AE40);
  v0[5] = sub_27463B4DC();
  return v0;
}

uint64_t sub_27457E2D8(uint64_t a1)
{
  result = sub_274453594(a1);
  if (result)
  {
    v4 = result;
    if (result < 1)
    {
      __break(1u);
      goto LABEL_20;
    }

    for (i = 0; i != v4; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x277C58B20](i, a1);
      }

      else
      {
        v6 = *(a1 + 8 * i + 32);
      }

      v7 = v6;
      [v6 removeDelegate_];
    }
  }

  v8 = *(v1 + 24);
  result = sub_274453594(v8);
  if (!result)
  {
    return result;
  }

  v9 = result;
  if (result < 1)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  for (j = 0; j != v9; ++j)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x277C58B20](j, v8);
    }

    else
    {
      v11 = *(v8 + 8 * j + 32);
    }

    v12 = v11;
    [v11 addDelegate_];
  }
}

uint64_t sub_27457E414(uint64_t a1)
{
  v2 = *(v1 + 24);
  *(v1 + 24) = a1;
  sub_27457E2D8(v2);
}

uint64_t sub_27457E454(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v72 = sub_27463865C();
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v70 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_2746385FC();
  v6 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v8 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_27463854C();
  v74 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v4 + 80);
  v80 = *(v12 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v69 - v14;
  v16 = sub_27463AF4C();
  v78 = a1;
  MEMORY[0x277C575F0](v16);
  v17 = v4;
  v18 = v15;
  v82 = v2;
  v19 = *(v17 + 88);
  v20 = v12;
  sub_2746384CC();
  sub_2746384BC();
  v73 = v11;
  v21 = sub_27463853C();
  v23 = v22;
  v24 = sub_27463842C();
  v25 = MEMORY[0x277D7BF30];
  v75 = v9;
  if ((v24 & 1) == 0)
  {
    v26 = sub_27463843C();
    if (v27)
    {
      v88[0] = v21;
      v88[1] = v23;
      *&v85 = 31524;
      *(&v85 + 1) = 0xE200000000000000;
      v81 = v27;
      v28 = *(v6 + 104);
      v29 = v26;
      v30 = v8;
      v31 = v8;
      v32 = v19;
      v33 = v6;
      v34 = v79;
      v28(v30, *v25, v79);
      v35 = sub_2746385EC();
      v37 = v36;
      v38 = *(v33 + 8);
      v39 = v34;
      v6 = v33;
      v19 = v32;
      v8 = v31;
      v38(v31, v39);
      MEMORY[0x277C57EA0](v35, v37);

      MEMORY[0x277C57EA0](125, 0xE100000000000000);
      v83 = v29;
      v84 = v81;
      sub_274412BBC();
      v21 = sub_27463C0FC();
      v41 = v40;

      v25 = MEMORY[0x277D7BF30];

      v23 = v41;
    }
  }

  sub_27457DED0(v21, v23);

  v81 = v18;
  v42 = sub_27463847C();
  if (v42)
  {
    v43 = [v42 containedVariables];
    swift_unknownObjectRelease();
    sub_274412734(0, &qword_28094BD90);
    v44 = sub_27463B81C();
  }

  else
  {
    v44 = MEMORY[0x277D84F90];
  }

  sub_27457E414(v44);
  v45 = *v25;
  v77 = *(v6 + 104);
  v46 = v79;
  v77(v8, v45, v79);

  sub_2746385EC();
  v76 = *(v6 + 8);
  v76(v8, v46);
  v47 = sub_27463846C();

  v48 = v78;
  sub_27457DF14(0, 0, v78, v47);

  v77(v8, *MEMORY[0x277D7BF28], v46);
  v49 = v81;

  sub_2746385EC();
  v76(v8, v46);
  v50 = sub_2746384DC();

  sub_27457DF14(0, 1, v48, v50);

  sub_274412C20(v89, &v85, &qword_280951F20);
  if (v86)
  {
    sub_2743F45D0(&v85, v88);
    __swift_project_boxed_opaque_existential_1(v88, v88[3]);
    v86 = v20;
    v87 = v19;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v85);
    v52 = *(v80 + 16);
    v79 = v20;
    v52(boxed_opaque_existential_1, v49, v20);
    v53 = v70;
    sub_27463864C();
    v54 = sub_2746383AC();
    result = (*(v71 + 8))(v53, v72);
    v56 = 0;
    v57 = 1 << *(v54 + 32);
    v58 = -1;
    if (v57 < 64)
    {
      v58 = ~(-1 << v57);
    }

    v59 = v58 & *(v54 + 64);
    for (i = (v57 + 63) >> 6; v59; result = )
    {
      v61 = v56;
LABEL_16:
      v62 = __clz(__rbit64(v59));
      v59 &= v59 - 1;
      v63 = v62 | (v61 << 6);
      v64 = (*(v54 + 48) + 16 * v63);
      v65 = *v64;
      v66 = v64[1];
      v67 = *(*(v54 + 56) + 8 * v63);

      v68 = v67;

      sub_27457DF14(v65, v66, v48, v68);
    }

    while (1)
    {
      v61 = v56 + 1;
      if (__OFADD__(v56, 1))
      {
        break;
      }

      if (v61 >= i)
      {

        sub_27454D6A8(v89, &qword_280951F20);
        (*(v74 + 8))(v73, v75);
        (*(v80 + 8))(v81, v79);
        __swift_destroy_boxed_opaque_existential_1(v88);
      }

      v59 = *(v54 + 64 + 8 * v61);
      ++v56;
      if (v59)
      {
        v56 = v61;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    sub_27454D6A8(v89, &qword_280951F20);
    (*(v74 + 8))(v73, v75);
    (*(v80 + 8))(v49, v20);
    sub_27454D6A8(&v85, &qword_280951F20);
  }

  return result;
}

uint64_t sub_27457ED1C()
{
  type metadata accessor for RowTemplateEditorViewModel();
  swift_getWitnessTable();
  sub_274638EFC();
  sub_274638F3C();
}

uint64_t sub_27457EDB4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;

  sub_27457ED1C();
}

uint64_t sub_27457EE04()
{

  return v0;
}

uint64_t sub_27457EE2C()
{
  v0 = sub_27457EE04();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_27457EE5C()
{
  type metadata accessor for RowTemplateEditorViewModel.State();
  v1 = sub_27457E1C0();
  v2 = MEMORY[0x277D84F90];
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  return v0;
}

uint64_t sub_27457EEE0@<X0>(uint64_t a1@<X0>, void (*a2)(void, void, void)@<X2>, uint64_t *a3@<X8>)
{
  a2(0, *(a1 + 80), *(a1 + 88));
  result = sub_274638EFC();
  *a3 = result;
  return result;
}

uint64_t sub_27457EF60(uint64_t a1, uint64_t *a2)
{
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  OUTLINED_FUNCTION_3_35();
  return sub_27463858C();
}

uint64_t sub_27457F048(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_3_35();
  return sub_27463859C();
}

uint64_t sub_27457F1F4()
{
  result = sub_27463AF4C();
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

uint64_t sub_27457F318()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_14WorkflowEditor011RowTemplateB9ViewModel33_41D4CC52C36A29D0234B4A297BA99C01LLC10StateStoreC4ModeOyx__G(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_27457F36C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_27457F3C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_27457F41C(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_27457F454()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_27457F498(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_27457F4D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_27457F630()
{
  result = qword_280951E70;
  if (!qword_280951E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280951E70);
  }

  return result;
}

uint64_t sub_27457F684(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_27457F6F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  OUTLINED_FUNCTION_28_13();
  OUTLINED_FUNCTION_27_10();
  OUTLINED_FUNCTION_43();
  v7 = sub_27463869C();
  OUTLINED_FUNCTION_53_0(v7);
  v9 = v2 + ((*(v8 + 80) + 168) & ~*(v8 + 80));

  return sub_2745785DC(a1, v2 + 4, v9, v5, v6, a2);
}

unint64_t sub_27457F7BC()
{
  result = qword_280951EA0;
  if (!qword_280951EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951E48);
    sub_27457F840();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280951EA0);
  }

  return result;
}

unint64_t sub_27457F840()
{
  result = qword_280951EA8;
  if (!qword_280951EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951E98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951E90);
    sub_27454E488(&unk_280951EB0, &qword_280951E90);
    sub_274482428();
    swift_getOpaqueTypeConformance2();
    sub_27454E488(&unk_28094D180, &qword_28094C600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280951EA8);
  }

  return result;
}

uint64_t objectdestroyTm_19()
{

  OUTLINED_FUNCTION_20_14();

  return swift_deallocObject();
}

unint64_t sub_27457FA00()
{
  result = qword_280951ED0;
  if (!qword_280951ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951ED8);
    sub_27454E488(&qword_280951EE0, &unk_280951EE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280951ED0);
  }

  return result;
}

uint64_t sub_27457FAB8@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_6_20();
  OUTLINED_FUNCTION_42_4();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_43();
  v3 = type metadata accessor for TableTemplateRow();
  OUTLINED_FUNCTION_53_0(v3);
  v5 = v1 + ((*(v4 + 80) + 48) & ~*(v4 + 80));

  return sub_274579374(v5, a1);
}

uint64_t sub_27457FB78(uint64_t a1)
{
  OUTLINED_FUNCTION_6_20();
  OUTLINED_FUNCTION_42_4();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_43();
  v3 = type metadata accessor for TableTemplateRow();
  OUTLINED_FUNCTION_53_0(v3);
  v5 = v1[2];
  v6 = v1[3];
  v7 = (v1 + ((*(v4 + 80) + 184) & ~*(v4 + 80)));

  return sub_274579448(a1, v5, v6, v1 + 6, v7);
}

unint64_t sub_27457FC54()
{
  result = qword_280951EF0;
  if (!qword_280951EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A498);
    sub_27457FCE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280951EF0);
  }

  return result;
}

unint64_t sub_27457FCE0()
{
  result = qword_280951EF8;
  if (!qword_280951EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280951EF8);
  }

  return result;
}

uint64_t objectdestroy_36Tm_0()
{
  v1 = OUTLINED_FUNCTION_6_20();
  OUTLINED_FUNCTION_42_4();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_43();
  type metadata accessor for TableTemplateRow();
  OUTLINED_FUNCTION_22_9();
  v3 = *(v2 + 80);

  OUTLINED_FUNCTION_20_14();

  OUTLINED_FUNCTION_17_13();
  (*(v4 + 8))(v5 + ((v3 + 168) & ~v3), v1);
  OUTLINED_FUNCTION_15_17();

  return swift_deallocObject();
}

uint64_t sub_27457FE88(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  OUTLINED_FUNCTION_12_16();
  OUTLINED_FUNCTION_13_15();
  OUTLINED_FUNCTION_43();
  v4 = type metadata accessor for TableTemplateRow();
  OUTLINED_FUNCTION_53_0(v4);
  v6 = v1 + ((*(v5 + 80) + 168) & ~*(v5 + 80));

  return a1(v1 + 32, v6, v2, v3);
}

uint64_t sub_27457FF48(unint64_t a1, uint64_t a2)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v5 = a2;
  }

  if (*(v5 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_27457FFC8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_27457FFDC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

unint64_t sub_27457FFF0()
{
  result = qword_280951F28;
  if (!qword_280951F28)
  {
    sub_274412734(255, &qword_280950FD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280951F28);
  }

  return result;
}

uint64_t block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_274580078()
{
  sub_27463AF4C();
  if (v0 <= 0x3F)
  {
    sub_274431930();
    if (v1 <= 0x3F)
    {
      type metadata accessor for RowTemplateEditorViewModel();
      swift_getWitnessTable();
      sub_27463922C();
      if (v2 <= 0x3F)
      {
        sub_274580508();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_274580184(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
LABEL_26:
    v17 = ((result + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v6 & 0x80000000) != 0)
    {
      return __swift_getEnumTagSinglePayload((v17 + v7 + 8) & ~v7, v6, v4);
    }

    else
    {
      v18 = *v17;
      if (v18 >= 0xFFFFFFFF)
      {
        LODWORD(v18) = -1;
      }

      return (v18 + 1);
    }
  }

  else
  {
    v9 = ((((((*(*(v4 - 8) + 64) + ((v7 + 16) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 25;
    v10 = (a2 - v8 + 255) >> 8;
    if (v9 <= 3)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
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

    switch(v13)
    {
      case 1:
        v14 = *(result + v9);
        if (!*(result + v9))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v9);
        if (!*(result + v9))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v9);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = (v14 - 1) << (8 * v9);
        if (v9 <= 3)
        {
          v16 = *result;
        }

        else
        {
          v15 = 0;
          v16 = *result;
        }

        result = v8 + (v16 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_2745802FC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((((((*(*(v6 - 8) + 64) + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 25;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = (a3 - v9 + 255) >> 8;
    if (v11 <= 3)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  if (v9 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          v18 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
          if ((v8 & 0x80000000) != 0)
          {

            __swift_storeEnumTagSinglePayload((v18 + v10 + 8) & ~v10, a2, v8, v6);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v19 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v19 = (a2 - 1);
            }

            *v18 = v19;
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v9 + a2;
    bzero(a1, v11);
    if (v11 <= 3)
    {
      v17 = (v16 >> 8) + 1;
    }

    else
    {
      v17 = 1;
    }

    if (v11 > 3)
    {
      *a1 = v16;
    }

    else
    {
      *a1 = v16;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

void sub_274580508()
{
  if (!qword_280952020[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280950C40);
    v0 = sub_27463AF4C();
    if (!v1)
    {
      atomic_store(v0, qword_280952020);
    }
  }
}

uint64_t sub_27458056C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2745805EC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 <= v6)
  {
    return __swift_getEnumTagSinglePayload((a1 + v7 + 8) & ~v7, v6, v4);
  }

  v9 = ((v7 + 8) & ~v7) + *(*(v4 - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v12))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v12 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v12 < 2)
    {
LABEL_19:
      if (v6)
      {
        return __swift_getEnumTagSinglePayload((a1 + v7 + 8) & ~v7, v6, v4);
      }

      return 0;
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_19;
  }

LABEL_11:
  v13 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v13 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    switch(v9)
    {
      case 2:
        LODWORD(v9) = *a1;
        break;
      case 3:
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v9) = *a1;
        break;
      default:
        LODWORD(v9) = *a1;
        break;
    }
  }

  return v6 + (v9 | v13) + 1;
}

void sub_274580748(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = ((v9 + 8) & ~v9) + *(v7 + 64);
  v11 = 8 * v10;
  v12 = a3 >= v8;
  v13 = a3 - v8;
  if (v13 != 0 && v12)
  {
    if (v10 <= 3)
    {
      v17 = ((v13 + ~(-1 << v11)) >> v11) + 1;
      if (HIWORD(v17))
      {
        v14 = 4;
      }

      else
      {
        if (v17 < 0x100)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        if (v17 >= 2)
        {
          v14 = v18;
        }

        else
        {
          v14 = 0;
        }
      }
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  if (v8 >= a2)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:
          v20 = &a1[v9 + 8] & ~v9;

          __swift_storeEnumTagSinglePayload(v20, a2, v8, v6);
        }

        break;
    }
  }

  else
  {
    v15 = ~v8 + a2;
    if (v10 < 4)
    {
      v16 = (v15 >> v11) + 1;
      if (v10)
      {
        v19 = v15 & ~(-1 << v11);
        bzero(a1, v10);
        if (v10 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v10 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v15;
        }
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v15;
      v16 = 1;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v16;
        break;
      case 2:
        *&a1[v10] = v16;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v10] = v16;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_2745809E8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = type metadata accessor for RowTemplateEditorView();
  OUTLINED_FUNCTION_53_0(v4);
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return a1(v6, v2, v3);
}

uint64_t sub_274580AA0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 32))(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_274580B04()
{
  OUTLINED_FUNCTION_18_7();
  v0 = type metadata accessor for RowTemplateEditorView();
  OUTLINED_FUNCTION_53_0(v0);
  OUTLINED_FUNCTION_18_7();
  return sub_27457C864();
}

uint64_t sub_274580B88(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_60_1(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7);
    a4();
    OUTLINED_FUNCTION_10_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_67Tm()
{
  v1 = *(v0 + 16);
  type metadata accessor for RowTemplateEditorView();
  OUTLINED_FUNCTION_5_16();
  v3 = v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80));

  sub_27463AF4C();
  OUTLINED_FUNCTION_17_13();
  (*(v4 + 8))(v3 + v5, v1);

  sub_2743F459C();

  OUTLINED_FUNCTION_15_17();

  return swift_deallocObject();
}

unint64_t sub_274580D68()
{
  result = qword_2809521E8;
  if (!qword_2809521E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809520C0);
    sub_27454E488(&qword_2809520B8, &unk_2809520B0);
    sub_27454E488(&qword_2809521F0, &unk_2809521F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809521E8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_34(unint64_t *a1)
{

  return sub_27454E488(a1, v1);
}

uint64_t OUTLINED_FUNCTION_3_35()
{

  return sub_27454E488(v0, v1);
}

uint64_t OUTLINED_FUNCTION_6_20()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_12_16()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_13_15()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_19_12()
{

  return sub_27463AE9C();
}

void OUTLINED_FUNCTION_20_14()
{
  sub_274482198(*(v0 + 96), *(v0 + 104));
  v1 = *(v0 + 112);
}

uint64_t OUTLINED_FUNCTION_27_10()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_28_13()
{

  return swift_getAssociatedTypeWitness();
}

void static WFVariableFieldUtilities.copy(_:to:)(uint64_t a1, uint64_t a2)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = sub_27463822C();
  [ObjCClassFromMetadata copyVariableString:v4 toPasteboard:a2];
}

uint64_t ParameterStateStore.__allocating_init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_68_0();
  v8 = swift_allocObject();
  ParameterStateStore.init<A>(_:)(a1, a2, a3, a4);
  return v8;
}

void *ParameterStateStore.__allocating_init(action:parameter:undoManager:)()
{
  OUTLINED_FUNCTION_14_15();
  v3 = objc_allocWithZone(type metadata accessor for ActionParameterStateDataSource());
  v4 = v0;
  v5 = v2;
  v6 = v1;
  v7 = sub_274583414(v5, v6, v0);
  type metadata accessor for ParameterStateStore();
  OUTLINED_FUNCTION_68_0();
  swift_allocObject();
  v8 = sub_274582368(v7);

  return v8;
}

uint64_t StoredParameterState.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{

  *a3 = sub_274581834();
  a3[1] = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a1;
  OUTLINED_FUNCTION_68_0();
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = sub_274583510;
  v8[4] = v7;
  a3[2] = sub_274583518;
  a3[3] = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a1;
  OUTLINED_FUNCTION_68_0();
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = sub_274583548;
  v10[4] = v9;
  a3[4] = sub_274583550;
  a3[5] = v10;
}

uint64_t StoredParameterState<A>.variable.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_21_14();
  OUTLINED_FUNCTION_25_0();
  v3 = *(v2 + 16);
  v12 = OUTLINED_FUNCTION_10_26(v4, v5, v6, v7, v8, v9, v10, v11, v45);
  v3(v12);
  v13 = sub_27463B9BC();
  OUTLINED_FUNCTION_20_15();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  v14[2] = v13;
  v14[3] = v15;
  v16 = *(a1 + 16);
  v14[4] = v16;
  OUTLINED_FUNCTION_4_30(v14, v17, v18, v19, v20, v21, v22, v23, v46, v50, v52, v54, v56, v58, v60, v62, v24);
  v33 = OUTLINED_FUNCTION_10_26(v25, v26, v27, v28, v29, v30, v31, v32, v47);
  v3(v33);
  v34 = sub_27463B9BC();
  OUTLINED_FUNCTION_20_15();
  v35 = swift_allocObject();
  v35[2] = v34;
  v35[3] = v15;
  v35[4] = v16;
  OUTLINED_FUNCTION_4_30(v35, v36, v37, v38, v39, v40, v41, v42, v48, v51, v53, v55, v57, v59, v61, v63, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094BDC0);
  sub_27463AF0C();
  return v49;
}

uint64_t StoredParameterState.wrappedValue.setter(uint64_t a1)
{
  (*(v1 + 32))();
  sub_27463C0AC();
  OUTLINED_FUNCTION_25_0();
  v5 = *(v4 + 8);

  return v5(a1, v3);
}

void ParameterStateStore.__allocating_init(binding:)()
{
  OUTLINED_FUNCTION_14_15();
  type metadata accessor for BindingParameterStateDataSource();
  OUTLINED_FUNCTION_68_0();
  v3 = swift_allocObject();
  v3[2] = v2;
  v3[3] = v1;
  v3[4] = v0;
  type metadata accessor for ParameterStateStore();
  OUTLINED_FUNCTION_68_0();
  swift_allocObject();
  OUTLINED_FUNCTION_12_13();
  sub_27458265C();
}

uint64_t StoredParameterState.binding.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_21_14();
  OUTLINED_FUNCTION_25_0();
  v3 = *(v2 + 16);
  v12 = OUTLINED_FUNCTION_10_26(v4, v5, v6, v7, v8, v9, v10, v11, v45);
  v3(v12);
  v13 = sub_27463B9BC();
  OUTLINED_FUNCTION_20_15();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  v14[2] = v13;
  v14[3] = v15;
  v16 = *(a1 + 16);
  v14[4] = v16;
  OUTLINED_FUNCTION_4_30(v14, v17, v18, v19, v20, v21, v22, v23, v46, v49, v51, v53, v55, v57, v59, v61, v24);
  v33 = OUTLINED_FUNCTION_10_26(v25, v26, v27, v28, v29, v30, v31, v32, v47);
  v3(v33);
  v34 = sub_27463B9BC();
  OUTLINED_FUNCTION_20_15();
  v35 = swift_allocObject();
  v35[2] = v34;
  v35[3] = v15;
  v35[4] = v16;
  OUTLINED_FUNCTION_4_30(v35, v36, v37, v38, v39, v40, v41, v42, v48, v50, v52, v54, v56, v58, v60, v62, v43);
  sub_27463C0AC();
  return sub_27463AF0C();
}

uint64_t sub_274581604(uint64_t a1, uint64_t a2)
{
  sub_27463B9BC();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_274585918();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_27463C38C();
    MEMORY[0x277C57EA0](0xD00000000000003FLL, 0x800000027468D880);
    v8 = sub_27463C7EC();
    MEMORY[0x277C57EA0](v8);

    MEMORY[0x277C57EA0](46, 0xE100000000000000);
    result = sub_27463C56C();
    __break(1u);
  }

  return result;
}

uint64_t StoredParameterState.init<A>(_:)()
{
  OUTLINED_FUNCTION_14_15();
  v4 = v3;

  *v4 = sub_274581834();
  v4[1] = v5;
  OUTLINED_FUNCTION_68_0();
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v0;
  v6[4] = v2;
  v4[2] = sub_274583644;
  v4[3] = v6;
  OUTLINED_FUNCTION_68_0();
  v7 = swift_allocObject();
  v7[2] = v1;
  v7[3] = v0;
  v7[4] = v2;
  v4[4] = sub_274583650;
  v4[5] = v7;
}

uint64_t sub_274581834()
{
  type metadata accessor for ParameterStateStore();
  OUTLINED_FUNCTION_2_30();
  sub_274585990(v0, v1, v2);

  return sub_27463950C();
}

uint64_t sub_27458189C()
{
  swift_getObjectType();
  result = sub_2746385AC();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BD50);
    if (swift_dynamicCast())
    {
      return v1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_274581920()
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  return sub_2746385BC();
}

uint64_t sub_274581A78(uint64_t a1, uint64_t *a2)
{
  v4 = sub_27463C0AC();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  (*(v8 + 16))(&v11 - v6, a1, v5);
  v9 = a2[5];
  v13 = *a2;
  v11 = *(a2 + 1);
  v14 = v11;
  v12 = *(a2 + 3);
  v15 = v12;
  v16 = v9;
  type metadata accessor for StoredParameterState();

  StoredParameterState.wrappedValue.setter(v7);
}

void (*StoredParameterState.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x58uLL);
  *a1 = v5;
  *v5 = a2;
  v6 = sub_27463C0AC();
  v5[1] = v6;
  OUTLINED_FUNCTION_19_0(v6);
  v5[2] = v7;
  v9 = *(v8 + 64);
  v5[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = *v2;
  v12 = v2[1];
  v5[4] = v10;
  v5[5] = v11;
  v13 = v2[2];
  v5[6] = v12;
  v5[7] = v13;
  *(v5 + 4) = *(v2 + 3);
  v5[10] = v2[5];
  v13();
  return sub_274581CCC;
}

void sub_274581CCC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[1];
    (*(v5 + 16))(v3, v4);
    OUTLINED_FUNCTION_25_14();

    StoredParameterState.wrappedValue.setter(v3);

    (*(v5 + 8))(v4, v6);
  }

  else
  {
    OUTLINED_FUNCTION_25_14();

    StoredParameterState.wrappedValue.setter(v4);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t StoredParameterState.projectedValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  *(a1 + 24) = *(v1 + 24);
  *(a1 + 40) = v2;
}

uint64_t StoredParameterState.hash(into:)()
{

  sub_2745831AC();
}

uint64_t static StoredParameterState.== infix(_:_:)()
{

  type metadata accessor for ParameterStateStore();
  OUTLINED_FUNCTION_2_30();
  sub_274585990(v0, v1, v2);
  sub_27463C31C();

  sub_27463C31C();
  v3 = MEMORY[0x277C58A40](v6, v5);
  sub_274430664(v5);
  sub_274430664(v6);
  return v3 & 1;
}

uint64_t sub_274581F88(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v6 = sub_27463C0AC();
  MEMORY[0x28223BE20](v6);
  v8 = &v13[-v7];
  v9 = a4[1];
  v14 = *a4;
  v15 = v9;
  v16 = a4[2];
  (*(v10 + 16))(&v13[-v7], a1);
  v11 = type metadata accessor for StoredParameterState();
  (*(*(v11 - 8) + 16))(v13, a4, v11);
  StoredParameterState.wrappedValue.setter(v8);
}

uint64_t StoredParameterState.hashValue.getter()
{
  sub_27463C74C();
  StoredParameterState.hash(into:)();
  return sub_27463C7AC();
}

uint64_t sub_274582148()
{
  sub_27463C74C();
  StoredParameterState.hash(into:)();
  return sub_27463C7AC();
}

void *sub_274582188@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  result = (*(a1 + 16))(&v5);
  if (v5)
  {
    v4 = [v5 variable];
    result = swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_274582200(void **a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v5 = *a1;
  v6 = a4[1];
  if (*a1)
  {
    v14 = *a4;
    v15 = v6;
    v16 = a4[2];
    v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v8 = type metadata accessor for StoredParameterState();
    (*(*(v8 - 8) + 16))(v12, a4, v8);
    v9 = v5;
    v12[0] = [v7 initWithVariable_];
    StoredParameterState.wrappedValue.setter(v12);
  }

  else
  {
    v14 = *a4;
    v15 = v6;
    v16 = a4[2];
    v13 = 0;
    v10 = type metadata accessor for StoredParameterState();
    (*(*(v10 - 8) + 16))(v12, a4, v10);
    StoredParameterState.wrappedValue.setter(&v13);
  }
}

void *sub_274582368(void *a1)
{
  v2 = v1;
  v2[4] = 0;
  v4 = sub_274585990(&unk_280952440, 255, type metadata accessor for ActionParameterStateDataSource);
  v2[2] = a1;
  v2[3] = v4;
  type metadata accessor for ActionParameterStateDataSource();
  sub_274585990(&unk_280952390, 255, type metadata accessor for ActionParameterStateDataSource);
  v5 = a1;
  sub_274638EDC();
  swift_allocObject();
  swift_weakInit();
  sub_274638F4C();

  v6 = sub_274638FFC();

  v2[4] = v6;

  return v2;
}

void sub_2745824D4()
{
  OUTLINED_FUNCTION_23_12();
  OUTLINED_FUNCTION_3_36();
  v0 = OUTLINED_FUNCTION_1_35(&unk_280952418);
  OUTLINED_FUNCTION_19_13(v0);
  OUTLINED_FUNCTION_18_11();
  OUTLINED_FUNCTION_0_43(&qword_280952428);
  OUTLINED_FUNCTION_7_27();
  OUTLINED_FUNCTION_12_17();
  OUTLINED_FUNCTION_5();
  swift_allocObject();
  OUTLINED_FUNCTION_6_21();
  sub_274638F4C();
  OUTLINED_FUNCTION_16_17();
  OUTLINED_FUNCTION_5_32();
  OUTLINED_FUNCTION_12_13();

  OUTLINED_FUNCTION_17_14();
  OUTLINED_FUNCTION_13_16();
  OUTLINED_FUNCTION_24_9();
}

void sub_274582598()
{
  OUTLINED_FUNCTION_23_12();
  OUTLINED_FUNCTION_3_36();
  v0 = OUTLINED_FUNCTION_1_35(&unk_280952400);
  OUTLINED_FUNCTION_19_13(v0);
  OUTLINED_FUNCTION_18_11();
  OUTLINED_FUNCTION_0_43(&qword_280952410);
  OUTLINED_FUNCTION_7_27();
  OUTLINED_FUNCTION_12_17();
  OUTLINED_FUNCTION_5();
  swift_allocObject();
  OUTLINED_FUNCTION_6_21();
  sub_274638F4C();
  OUTLINED_FUNCTION_16_17();
  OUTLINED_FUNCTION_5_32();
  OUTLINED_FUNCTION_12_13();

  OUTLINED_FUNCTION_17_14();
  OUTLINED_FUNCTION_13_16();
  OUTLINED_FUNCTION_24_9();
}

void sub_27458265C()
{
  OUTLINED_FUNCTION_23_12();
  OUTLINED_FUNCTION_3_36();
  v2 = sub_274585990(&unk_280952430, 255, type metadata accessor for BindingParameterStateDataSource);
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  type metadata accessor for BindingParameterStateDataSource();
  sub_274585990(&qword_280952378, 255, type metadata accessor for BindingParameterStateDataSource);

  sub_274638EDC();
  OUTLINED_FUNCTION_5();
  swift_allocObject();
  swift_weakInit();
  sub_274638F4C();

  sub_274638FFC();

  OUTLINED_FUNCTION_13_16();
  OUTLINED_FUNCTION_24_9();
}

void sub_2745827B0()
{
  OUTLINED_FUNCTION_23_12();
  OUTLINED_FUNCTION_3_36();
  v0 = OUTLINED_FUNCTION_1_35(&qword_2809523E8);
  OUTLINED_FUNCTION_19_13(v0);
  OUTLINED_FUNCTION_18_11();
  OUTLINED_FUNCTION_0_43(&qword_2809523F8);
  OUTLINED_FUNCTION_7_27();
  OUTLINED_FUNCTION_12_17();
  OUTLINED_FUNCTION_5();
  swift_allocObject();
  OUTLINED_FUNCTION_6_21();
  sub_274638F4C();
  OUTLINED_FUNCTION_16_17();
  OUTLINED_FUNCTION_5_32();
  OUTLINED_FUNCTION_12_13();

  OUTLINED_FUNCTION_17_14();
  OUTLINED_FUNCTION_13_16();
  OUTLINED_FUNCTION_24_9();
}

void sub_274582874()
{
  OUTLINED_FUNCTION_23_12();
  OUTLINED_FUNCTION_3_36();
  v0 = OUTLINED_FUNCTION_1_35(&unk_2809523D0);
  OUTLINED_FUNCTION_19_13(v0);
  OUTLINED_FUNCTION_18_11();
  OUTLINED_FUNCTION_0_43(&qword_2809523E0);
  OUTLINED_FUNCTION_7_27();
  OUTLINED_FUNCTION_12_17();
  OUTLINED_FUNCTION_5();
  swift_allocObject();
  OUTLINED_FUNCTION_6_21();
  sub_274638F4C();
  OUTLINED_FUNCTION_16_17();
  OUTLINED_FUNCTION_5_32();
  OUTLINED_FUNCTION_12_13();

  OUTLINED_FUNCTION_17_14();
  OUTLINED_FUNCTION_13_16();
  OUTLINED_FUNCTION_24_9();
}

void sub_274582938()
{
  OUTLINED_FUNCTION_23_12();
  OUTLINED_FUNCTION_3_36();
  v0 = OUTLINED_FUNCTION_1_35(&unk_2809523B8);
  OUTLINED_FUNCTION_19_13(v0);
  OUTLINED_FUNCTION_18_11();
  OUTLINED_FUNCTION_0_43(&qword_2809523C8);
  OUTLINED_FUNCTION_7_27();
  OUTLINED_FUNCTION_12_17();
  OUTLINED_FUNCTION_5();
  swift_allocObject();
  OUTLINED_FUNCTION_6_21();
  sub_274638F4C();
  OUTLINED_FUNCTION_16_17();
  OUTLINED_FUNCTION_5_32();
  OUTLINED_FUNCTION_12_13();

  OUTLINED_FUNCTION_17_14();
  OUTLINED_FUNCTION_13_16();
  OUTLINED_FUNCTION_24_9();
}

void sub_2745829FC()
{
  OUTLINED_FUNCTION_23_12();
  OUTLINED_FUNCTION_3_36();
  v0 = OUTLINED_FUNCTION_1_35(&unk_2809523A0);
  OUTLINED_FUNCTION_19_13(v0);
  OUTLINED_FUNCTION_18_11();
  OUTLINED_FUNCTION_0_43(&qword_2809523B0);
  OUTLINED_FUNCTION_7_27();
  OUTLINED_FUNCTION_12_17();
  OUTLINED_FUNCTION_5();
  swift_allocObject();
  OUTLINED_FUNCTION_6_21();
  sub_274638F4C();
  OUTLINED_FUNCTION_16_17();
  OUTLINED_FUNCTION_5_32();
  OUTLINED_FUNCTION_12_13();

  OUTLINED_FUNCTION_17_14();
  OUTLINED_FUNCTION_13_16();
  OUTLINED_FUNCTION_24_9();
}

void sub_274582AC0()
{
  OUTLINED_FUNCTION_23_12();
  OUTLINED_FUNCTION_3_36();
  v0 = OUTLINED_FUNCTION_1_35(&unk_280952360);
  OUTLINED_FUNCTION_19_13(v0);
  OUTLINED_FUNCTION_18_11();
  OUTLINED_FUNCTION_0_43(&qword_280952370);
  OUTLINED_FUNCTION_7_27();
  OUTLINED_FUNCTION_12_17();
  OUTLINED_FUNCTION_5();
  swift_allocObject();
  OUTLINED_FUNCTION_6_21();
  sub_274638F4C();
  OUTLINED_FUNCTION_16_17();
  OUTLINED_FUNCTION_5_32();
  OUTLINED_FUNCTION_12_13();

  OUTLINED_FUNCTION_17_14();
  OUTLINED_FUNCTION_13_16();
  OUTLINED_FUNCTION_24_9();
}

void sub_274582B84()
{
  OUTLINED_FUNCTION_23_12();
  OUTLINED_FUNCTION_3_36();
  v0 = OUTLINED_FUNCTION_1_35(&unk_280952340);
  OUTLINED_FUNCTION_19_13(v0);
  OUTLINED_FUNCTION_18_11();
  OUTLINED_FUNCTION_0_43(&unk_280952350);
  OUTLINED_FUNCTION_7_27();
  OUTLINED_FUNCTION_12_17();
  OUTLINED_FUNCTION_5();
  swift_allocObject();
  OUTLINED_FUNCTION_6_21();
  sub_274638F4C();
  OUTLINED_FUNCTION_16_17();
  OUTLINED_FUNCTION_5_32();
  OUTLINED_FUNCTION_12_13();

  OUTLINED_FUNCTION_17_14();
  OUTLINED_FUNCTION_13_16();
  OUTLINED_FUNCTION_24_9();
}

void *ParameterStateStore.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v18 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20]();
  v13 = &v17 - v12;
  v5[3] = a4;
  v5[4] = 0;
  v5[2] = a1;
  swift_unknownObjectRetain();
  sub_274638EDC();
  OUTLINED_FUNCTION_5();
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = v18;
  v15[5] = v14;
  swift_getAssociatedConformanceWitness();

  sub_274638FFC();
  swift_unknownObjectRelease();

  (*(v11 + 8))(v13, AssociatedTypeWitness);

  OUTLINED_FUNCTION_13_16();
  return v5;
}

uint64_t sub_274582E4C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    type metadata accessor for ParameterStateStore();
    OUTLINED_FUNCTION_2_30();
    sub_274585990(v1, v2, v3);
    sub_274638EFC();

    sub_274638F3C();
  }

  return result;
}

uint64_t sub_274582EEC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    type metadata accessor for ParameterStateStore();
    sub_274585990(&qword_28094B550, v1, type metadata accessor for ParameterStateStore);
    sub_274638EFC();

    sub_274638F3C();
  }

  return result;
}

void sub_274582F9C(void *a1)
{
  type metadata accessor for ActionParameterStateDataSource();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v4 = *(v2 + OBJC_IVAR____TtC14WorkflowEditorP33_A9926FE49755427AE9EF62E6C77745C430ActionParameterStateDataSource_undoManager);
    *(v2 + OBJC_IVAR____TtC14WorkflowEditorP33_A9926FE49755427AE9EF62E6C77745C430ActionParameterStateDataSource_undoManager) = a1;
    v3 = a1;
  }
}

uint64_t (*sub_2745830CC(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + 24);
  a1[1] = *(v1 + 16);
  a1[2] = v3;
  a1[3] = swift_getObjectType();
  *a1 = sub_2746385AC();
  return sub_274583134;
}

uint64_t sub_274583134(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_2746385BC();
  }

  swift_unknownObjectRetain();
  sub_2746385BC();

  return swift_unknownObjectRelease();
}

uint64_t static ParameterStateStore.== infix(_:_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_getObjectType();
  v4[0] = v1;
  swift_unknownObjectRetain();
  sub_27463C31C();
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_27463C31C();
  v2 = MEMORY[0x277C58A40](v5, v4);
  sub_274430664(v4);
  sub_274430664(v5);
  return v2 & 1;
}

uint64_t ParameterStateStore.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t ParameterStateStore.__deallocating_deinit()
{
  ParameterStateStore.deinit();
  OUTLINED_FUNCTION_68_0();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_274583314()
{
  sub_27463C74C();
  sub_2745831AC();
  return sub_27463C7AC();
}

uint64_t sub_274583354@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ParameterStateStore();
  result = sub_274638EFC();
  *a1 = result;
  return result;
}

id sub_274583414(void *a1, void *a2, void *a3)
{
  v7 = OBJC_IVAR____TtC14WorkflowEditorP33_A9926FE49755427AE9EF62E6C77745C430ActionParameterStateDataSource_undoManager;
  *&v3[OBJC_IVAR____TtC14WorkflowEditorP33_A9926FE49755427AE9EF62E6C77745C430ActionParameterStateDataSource_undoManager] = 0;
  v3[OBJC_IVAR____TtC14WorkflowEditorP33_A9926FE49755427AE9EF62E6C77745C430ActionParameterStateDataSource_isSetting] = 0;
  *&v3[OBJC_IVAR____TtC14WorkflowEditorP33_A9926FE49755427AE9EF62E6C77745C430ActionParameterStateDataSource_action] = a1;
  *&v3[OBJC_IVAR____TtC14WorkflowEditorP33_A9926FE49755427AE9EF62E6C77745C430ActionParameterStateDataSource_parameter] = a2;
  *&v3[v7] = a3;
  v13.receiver = v3;
  v13.super_class = type metadata accessor for ActionParameterStateDataSource();
  v8 = a1;
  v9 = a2;
  v10 = a3;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  [v8 addEventObserver_];

  return v11;
}

uint64_t sub_274583518@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 24))();
  *a1 = result;
  return result;
}

uint64_t objectdestroy_11Tm()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_20_15();

  return swift_deallocObject();
}

uint64_t sub_2745836E4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

id sub_274583800()
{
  [*&v0[OBJC_IVAR____TtC14WorkflowEditorP33_A9926FE49755427AE9EF62E6C77745C430ActionParameterStateDataSource_action] removeEventObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActionParameterStateDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2745838D8()
{
  v1 = *(v0 + OBJC_IVAR____TtC14WorkflowEditorP33_A9926FE49755427AE9EF62E6C77745C430ActionParameterStateDataSource_action);
  v2 = [*(v0 + OBJC_IVAR____TtC14WorkflowEditorP33_A9926FE49755427AE9EF62E6C77745C430ActionParameterStateDataSource_parameter) key];
  if (!v2)
  {
    sub_27463B6AC();
    v2 = sub_27463B66C();
  }

  v3 = [v1 parameterStateForKey_];

  return v3;
}

uint64_t sub_274583970()
{
  swift_getObjectType();
  sub_274584F70();
  sub_27463946C();
  swift_unknownObjectRelease();
}

void sub_2745839F8(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC14WorkflowEditorP33_A9926FE49755427AE9EF62E6C77745C430ActionParameterStateDataSource_isSetting;
  *(a1 + OBJC_IVAR____TtC14WorkflowEditorP33_A9926FE49755427AE9EF62E6C77745C430ActionParameterStateDataSource_isSetting) = 1;
  type metadata accessor for ActionParameterStateDataSource();
  sub_274585990(&unk_280952390, 255, type metadata accessor for ActionParameterStateDataSource);
  sub_274638EFC();
  sub_274638F3C();

  v5 = *(a1 + OBJC_IVAR____TtC14WorkflowEditorP33_A9926FE49755427AE9EF62E6C77745C430ActionParameterStateDataSource_action);
  v6 = *(a1 + OBJC_IVAR____TtC14WorkflowEditorP33_A9926FE49755427AE9EF62E6C77745C430ActionParameterStateDataSource_parameter);
  v7 = *(a1 + OBJC_IVAR____TtC14WorkflowEditorP33_A9926FE49755427AE9EF62E6C77745C430ActionParameterStateDataSource_undoManager);
  v8 = v7;
  sub_274583B08(v5, v6, a2, v7);

  *(a1 + v4) = 0;
}

uint64_t sub_274583B08(void *a1, id a2, uint64_t a3, void *a4)
{
  v9 = [a2 key];
  if (!v9)
  {
    sub_27463B6AC();
    v9 = sub_27463B66C();
  }

  v10 = [a1 parameterStateForKey_];

  v11 = [a2 key];
  if (!v11)
  {
    sub_27463B6AC();
    v11 = sub_27463B66C();
  }

  [a1 setParameterState:a3 forKey:v11];

  if (!a4)
  {
    goto LABEL_9;
  }

  v12 = a4;
  if (v10 && [v10 isEqual_])
  {

LABEL_9:

    return swift_unknownObjectRelease();
  }

  v34 = v12;
  v35 = v4;
  sub_27463B70C();
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v14 = qword_28094BB00;
  v15 = sub_27463B66C();
  v16 = sub_27463B66C();

  v17 = [v14 localizedStringForKey:v15 value:v16 table:0];

  sub_27463B6AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280949E90);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2746486A0;
  v19 = [a2 localizedLabel];
  v20 = sub_27463B6AC();
  v22 = v21;

  v23 = MEMORY[0x277D837D0];
  *(v18 + 56) = MEMORY[0x277D837D0];
  v24 = sub_27440F250();
  *(v18 + 64) = v24;
  *(v18 + 32) = v20;
  *(v18 + 40) = v22;
  v25 = [a1 localizedName];
  v26 = sub_27463B6AC();
  v28 = v27;

  *(v18 + 96) = v23;
  *(v18 + 104) = v24;
  *(v18 + 72) = v26;
  *(v18 + 80) = v28;
  sub_27463B67C();

  v29 = v34;
  v30 = sub_27463B66C();

  [v29 setActionName_];

  v31 = swift_allocObject();
  v31[2] = a2;
  v31[3] = v10;
  v31[4] = v29;
  v31[5] = v35;
  sub_274412734(0, &qword_28094E040);
  v32 = v29;
  v33 = a2;
  swift_unknownObjectRetain();
  sub_27463BBDC();
  swift_unknownObjectRelease();
}

uint64_t sub_274583EE0()
{
  v1 = [*(v0 + OBJC_IVAR____TtC14WorkflowEditorP33_A9926FE49755427AE9EF62E6C77745C430ActionParameterStateDataSource_parameter) key];
  sub_27463B6AC();

  sub_27463C04C();
}

uint64_t sub_274583F94()
{
  swift_getObjectType();
  sub_274584F70();
  sub_27463946C();
}

void sub_274584028(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = OBJC_IVAR____TtC14WorkflowEditorP33_A9926FE49755427AE9EF62E6C77745C430ActionParameterStateDataSource_isSetting;
  *(a1 + OBJC_IVAR____TtC14WorkflowEditorP33_A9926FE49755427AE9EF62E6C77745C430ActionParameterStateDataSource_isSetting) = 1;
  type metadata accessor for ActionParameterStateDataSource();
  sub_274585990(&unk_280952390, 255, type metadata accessor for ActionParameterStateDataSource);
  sub_274638EFC();
  sub_274638F3C();

  v9 = *(a1 + OBJC_IVAR____TtC14WorkflowEditorP33_A9926FE49755427AE9EF62E6C77745C430ActionParameterStateDataSource_action);
  v10 = *(a1 + OBJC_IVAR____TtC14WorkflowEditorP33_A9926FE49755427AE9EF62E6C77745C430ActionParameterStateDataSource_parameter);
  v11 = *(a1 + OBJC_IVAR____TtC14WorkflowEditorP33_A9926FE49755427AE9EF62E6C77745C430ActionParameterStateDataSource_undoManager);
  v12 = v11;
  sub_274584148(v9, v10, a2, v11, a4, a5);

  *(a1 + v8) = 0;
}

uint64_t sub_274584148(void *a1, void *a2, char *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v80 = a3;
  v81 = a4;
  v83 = a1;
  v73 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v70 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_27463C0AC();
  v84 = v10;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v72 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = &v69 - v11;
  v82 = *(v10 - 8);
  MEMORY[0x28223BE20](v13);
  v75 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v71 = &v69 - v16;
  v74 = v17;
  *&v19 = MEMORY[0x28223BE20](v18).n128_u64[0];
  v21 = &v69 - v20;
  v22 = [a2 key];
  sub_27463B6AC();

  sub_27463C04C();

  v23 = v80;
  v78 = a2;
  v24 = [a2 key];
  sub_27463B6AC();

  v77 = a6;
  v25 = v81;
  v26 = v82;
  sub_27463C05C();
  v27 = v21;

  if (!v25)
  {
    return (*(v26 + 8))(v27, v84);
  }

  v28 = *(TupleTypeMetadata2 + 48);
  v29 = *(v26 + 16);
  v30 = v84;
  v29(v12, v21, v84);
  v29(&v12[v28], v23, v30);
  v31 = v12;
  if (__swift_getEnumTagSinglePayload(v12, 1, a5) == 1)
  {
    if (__swift_getEnumTagSinglePayload(&v12[v28], 1, a5) == 1)
    {
      (*(v26 + 8))(v12, v84);
      return (*(v26 + 8))(v27, v84);
    }

    v69 = v29;
    v36 = v25;
  }

  else
  {
    v32 = v71;
    v29(v71, v12, v84);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v12[v28], 1, a5);
    v69 = v29;
    if (EnumTagSinglePayload != 1)
    {
      v64 = v73;
      v65 = &v12[v28];
      v66 = v70;
      (*(v73 + 32))(v70, v65, a5);
      v80 = *(*(v77 + 8) + 8);
      v67 = v25;
      LODWORD(v80) = sub_27463B5BC();
      v68 = *(v64 + 8);
      v68(v66, a5);
      v68(v32, a5);
      (*(v26 + 8))(v31, v84);
      if (v80)
      {

        return (*(v26 + 8))(v27, v84);
      }

      goto LABEL_9;
    }

    v34 = *(v73 + 8);
    v35 = v25;
    v34(v32, a5);
  }

  (*(v72 + 8))(v12, TupleTypeMetadata2);
LABEL_9:
  TupleTypeMetadata2 = v26 + 16;
  v80 = v21;
  sub_27463B70C();
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v37 = qword_28094BB00;
  v38 = sub_27463B66C();
  v39 = sub_27463B66C();

  v40 = [v37 localizedStringForKey:v38 value:v39 table:0];

  sub_27463B6AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280949E90);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_2746486A0;
  v42 = [v78 localizedLabel];
  v43 = sub_27463B6AC();
  v45 = v44;

  v46 = MEMORY[0x277D837D0];
  *(v41 + 56) = MEMORY[0x277D837D0];
  v47 = sub_27440F250();
  *(v41 + 64) = v47;
  *(v41 + 32) = v43;
  *(v41 + 40) = v45;
  v48 = [v83 localizedName];
  v49 = sub_27463B6AC();
  v51 = v50;

  *(v41 + 96) = v46;
  *(v41 + 104) = v47;
  *(v41 + 72) = v49;
  *(v41 + 80) = v51;
  sub_27463B67C();

  v52 = v81;
  v53 = sub_27463B66C();

  [v52 setActionName_];

  v54 = v75;
  v27 = v80;
  v55 = v84;
  v69(v75, v80, v84);
  v26 = v82;
  v56 = (*(v82 + 80) + 40) & ~*(v82 + 80);
  v57 = (v74 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
  v58 = swift_allocObject();
  v59 = v77;
  *(v58 + 2) = a5;
  *(v58 + 3) = v59;
  v60 = v78;
  *(v58 + 4) = v78;
  (*(v26 + 32))(&v58[v56], v54, v55);
  *&v58[v57] = v52;
  *&v58[(v57 + 15) & 0xFFFFFFFFFFFFFFF8] = v76;
  sub_274412734(0, &qword_28094E040);
  v61 = v52;
  v62 = v60;
  sub_27463BBDC();

  return (*(v26 + 8))(v27, v84);
}

uint64_t sub_2745848E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_27463B9CC();
  v11[2] = a2;
  v11[3] = a1;
  v11[4] = a3;
  v11[5] = a4;
  v11[6] = a5;
  return sub_274581604(sub_27458596C, v11);
}

uint64_t sub_274584978(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v41 = a3;
  v40 = sub_274638DAC();
  v10 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274638C2C();
  v13 = a1;
  v14 = a2;
  v15 = sub_274638D9C();
  v16 = sub_27463BC1C();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v39 = v13;
    v18 = v17;
    v35 = swift_slowAlloc();
    v42 = v35;
    *v18 = 136315394;
    v19 = [v39 key];
    v37 = a5;
    v20 = v19;
    v21 = sub_27463B6AC();
    v36 = a4;
    v22 = v21;
    v38 = v5;
    v24 = v23;

    v25 = sub_2745E7980(v22, v24, &v42);

    *(v18 + 4) = v25;
    *(v18 + 12) = 2080;
    v26 = [v14 identifier];
    v27 = sub_27463B6AC();
    v29 = v28;

    v30 = sub_2745E7980(v27, v29, &v42);

    *(v18 + 14) = v30;
    _os_log_impl(&dword_2743F0000, v15, v16, "Undoing parameter state for parameter:%s, action:%s", v18, 0x16u);
    v31 = v35;
    swift_arrayDestroy();
    MEMORY[0x277C5A270](v31, -1, -1);
    v32 = v18;
    v13 = v39;
    MEMORY[0x277C5A270](v32, -1, -1);
  }

  (*(v10 + 8))(v12, v40);
  return sub_274583B08(v14, v13);
}

uint64_t sub_274584C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_27463B9CC();
  v15[2] = a6;
  v15[3] = a7;
  v15[4] = a2;
  v15[5] = a1;
  v15[6] = a3;
  v15[7] = a4;
  v15[8] = a5;
  return sub_274581604(sub_2745858F0, v15);
}

uint64_t sub_274584CCC(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v41 = a4;
  v42 = a5;
  v40 = a3;
  v39 = sub_274638DAC();
  v12 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274638C2C();
  v15 = a1;
  v16 = a2;
  v17 = sub_274638D9C();
  v18 = sub_27463BC1C();

  v43 = v15;
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v38 = v7;
    v20 = v19;
    v35 = swift_slowAlloc();
    v44 = v35;
    *v20 = 136315394;
    v21 = [v43 key];
    v22 = sub_27463B6AC();
    v36 = a6;
    v37 = a7;
    v23 = v22;
    v25 = v24;

    v26 = sub_2745E7980(v23, v25, &v44);

    *(v20 + 4) = v26;
    *(v20 + 12) = 2080;
    v27 = [v16 identifier];
    v28 = sub_27463B6AC();
    v30 = v29;

    v31 = sub_2745E7980(v28, v30, &v44);
    a6 = v36;

    *(v20 + 14) = v31;
    a7 = v37;
    _os_log_impl(&dword_2743F0000, v17, v18, "Undoing parameter state for parameter:%s, action:%s", v20, 0x16u);
    v32 = v35;
    swift_arrayDestroy();
    MEMORY[0x277C5A270](v32, -1, -1);
    MEMORY[0x277C5A270](v20, -1, -1);
  }

  (*(v12 + 8))(v14, v39);
  return sub_274584148(v16, v43, v40, v41, a6, a7);
}

uint64_t sub_274584F70()
{
  v1 = *(v0 + OBJC_IVAR____TtC14WorkflowEditorP33_A9926FE49755427AE9EF62E6C77745C430ActionParameterStateDataSource_parameter);
  swift_getObjectType();
  result = dynamic_cast_existential_1_conditional(v1);
  if (result)
  {
    v4 = v3;
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 8);
    v7 = v1;
    v8 = v6(ObjectType, v4);

    return v8;
  }

  return result;
}

uint64_t sub_274585008()
{
  v1 = v0;
  v2 = sub_27463B27C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_274412734(0, &qword_28094AF90);
  *v5 = sub_27463BCEC();
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v6 = sub_27463B29C();
  result = (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if ((*(v1 + OBJC_IVAR____TtC14WorkflowEditorP33_A9926FE49755427AE9EF62E6C77745C430ActionParameterStateDataSource_isSetting) & 1) == 0)
    {
      type metadata accessor for ActionParameterStateDataSource();
      sub_274585990(&unk_280952390, 255, type metadata accessor for ActionParameterStateDataSource);
      sub_274638EFC();
      sub_274638F3C();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_27458524C()
{
  sub_27463C7BC();
  sub_27463BF8C();
  sub_27463BF8C();
  v1 = *(v0 + OBJC_IVAR____TtC14WorkflowEditorP33_A9926FE49755427AE9EF62E6C77745C430ActionParameterStateDataSource_undoManager);
  if (v1)
  {
    v2 = v1;
    sub_27463C76C();
    v3 = v2;
    sub_27463BF8C();
  }

  else
  {
    sub_27463C76C();
  }

  return sub_27463C79C();
}

uint64_t (*sub_274585354(id *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_2745838D8();
  return sub_27458539C;
}

uint64_t sub_2745853BC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ActionParameterStateDataSource();
  result = sub_274638EFC();
  *a1 = result;
  return result;
}

uint64_t sub_2745853FC()
{
  v1 = *(v0 + 32);
  v5 = *(v0 + 16);
  v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280952380);
  MEMORY[0x277C575F0](&v4, v2);
  return v4;
}

uint64_t sub_274585454()
{
  type metadata accessor for BindingParameterStateDataSource();
  sub_274585990(&qword_280952378, 255, type metadata accessor for BindingParameterStateDataSource);
  sub_274638EFC();
  sub_274638F3C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280952380);
  return sub_27463AEBC();
}

uint64_t sub_274585524()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t (*sub_274585598(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_2745853FC();
  return sub_2745855E0;
}

uint64_t sub_2745855F8(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t))
{
  if ((a2 & 1) == 0)
  {
    return a3(*a1);
  }

  v4 = swift_unknownObjectRetain();
  a3(v4);

  return swift_unknownObjectRelease();
}

uint64_t sub_274585668@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for BindingParameterStateDataSource();
  result = sub_274638EFC();
  *a1 = result;
  return result;
}

uint64_t sub_2745856E4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_27463C74C();
  a4(v6);
  return sub_27463C7AC();
}

uint64_t sub_274585834(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = sub_27463C0AC();
  OUTLINED_FUNCTION_19_0(v5);
  v7 = v6;
  v9 = v8;
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = v1[4];
  v13 = *(v1 + v11);
  v14 = *(v1 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_274584C20(a1, v12, v1 + v10, v13, v14, v3, v4);
}

uint64_t sub_274585990(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_43(unint64_t *a1)
{

  return sub_27440CA78(a1, v1);
}

uint64_t OUTLINED_FUNCTION_1_35(unint64_t *a1)
{

  return sub_27440CA78(a1, v1);
}

__n128 OUTLINED_FUNCTION_4_30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, __int128 a16, __n128 a17)
{
  *(a1 + 40) = a15;
  *(a1 + 56) = a16;
  result = a17;
  *(a1 + 72) = a17;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_32()
{

  return sub_274638FFC();
}

uint64_t OUTLINED_FUNCTION_6_21()
{

  return swift_weakInit();
}

uint64_t OUTLINED_FUNCTION_7_27()
{

  return sub_274638EFC();
}

uint64_t OUTLINED_FUNCTION_13_16()
{
  *(v0 + 32) = v1;
}

uint64_t OUTLINED_FUNCTION_16_17()
{
}

uint64_t OUTLINED_FUNCTION_17_14()
{
}

uint64_t OUTLINED_FUNCTION_18_11()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0);
}

uint64_t OUTLINED_FUNCTION_19_13(uint64_t a1)
{
  *(v1 + 16) = v2;
  *(v1 + 24) = a1;
}

uint64_t OUTLINED_FUNCTION_21_14()
{

  return sub_27463B9CC();
}

uint64_t OUTLINED_FUNCTION_25_14()
{
}

uint64_t sub_274585C30@<X0>(uint64_t a1@<X8>)
{
  sub_274412BBC();

  v2 = sub_27463A53C();
  v4 = v3;
  v6 = v5;
  sub_27463A45C();
  v7 = sub_27463A50C();
  v9 = v8;
  v11 = v10;

  sub_274412C10(v2, v4, v6 & 1);

  sub_27463ABCC();
  v12 = sub_27463A4DC();
  v14 = v13;
  v16 = v15;
  v18 = v17;

  sub_274412C10(v7, v9, v11 & 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F000);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2746486A0;
  v20 = sub_27463A33C();
  *(inited + 32) = v20;
  v21 = sub_27463A34C();
  *(inited + 33) = v21;
  v22 = sub_27463A36C();
  sub_27463A36C();
  if (sub_27463A36C() != v20)
  {
    v22 = sub_27463A36C();
  }

  sub_27463A36C();
  if (sub_27463A36C() != v21)
  {
    v22 = sub_27463A36C();
  }

  sub_2746390AC();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = v16 & 1;
  v32 = swift_initStackObject();
  *(v32 + 16) = xmmword_2746486A0;
  v33 = sub_27463A35C();
  *(v32 + 32) = v33;
  v34 = sub_27463A37C();
  *(v32 + 33) = v34;
  v35 = sub_27463A36C();
  sub_27463A36C();
  if (sub_27463A36C() != v33)
  {
    v35 = sub_27463A36C();
  }

  sub_27463A36C();
  if (sub_27463A36C() != v34)
  {
    v35 = sub_27463A36C();
  }

  sub_2746390AC();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v44 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952450) + 36));
  v45 = *(sub_27463970C() + 20);
  v46 = *MEMORY[0x277CE0118];
  v47 = sub_274639BFC();
  (*(*(v47 - 8) + 104))(&v44[v45], v46, v47);
  __asm { FMOV            V0.2D, #8.0 }

  *v44 = _Q0;
  v53 = [objc_opt_self() wf_tertiarySystemBackgroundColor];
  v54 = sub_27463AB0C();
  KeyPath = swift_getKeyPath();
  v56 = &v44[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C5C8) + 36)];
  *v56 = KeyPath;
  v56[1] = v54;
  sub_27463AB6C();
  v57 = sub_27463ABAC();

  v58 = &v44[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952458) + 36)];
  *v58 = v57;
  v58[1] = 0x4034000000000000;
  v58[2] = 0;
  v58[3] = 0;
  v59 = sub_27463B0CC();
  v61 = v60;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952460);
  v63 = &v44[*(result + 36)];
  *v63 = v59;
  v63[1] = v61;
  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v31;
  *(a1 + 24) = v18;
  *(a1 + 32) = v22;
  *(a1 + 40) = v24;
  *(a1 + 48) = v26;
  *(a1 + 56) = v28;
  *(a1 + 64) = v30;
  *(a1 + 72) = 0;
  *(a1 + 80) = v35;
  *(a1 + 88) = v37;
  *(a1 + 96) = v39;
  *(a1 + 104) = v41;
  *(a1 + 112) = v43;
  *(a1 + 120) = 0;
  return result;
}

unint64_t sub_274586060()
{
  result = qword_280952468;
  if (!qword_280952468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280952450);
    sub_2745860EC();
    sub_274586178();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280952468);
  }

  return result;
}

unint64_t sub_2745860EC()
{
  result = qword_280952470;
  if (!qword_280952470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280952478);
    sub_2744E9360();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280952470);
  }

  return result;
}

unint64_t sub_274586178()
{
  result = qword_280952480;
  if (!qword_280952480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280952460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280952480);
  }

  return result;
}

uint64_t sub_2745861DC()
{
  if (sub_27443B4C4())
  {
    return 1;
  }

  sub_274530580();
  v0 = v1 != 0;

  return v0;
}

uint64_t sub_274586238()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094FE90);
  v2 = *(v1 - 8);
  v84 = v1;
  v85 = v2;
  MEMORY[0x28223BE20](v1);
  v83 = &v59 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280952690);
  v5 = *(v4 - 8);
  v81 = v4;
  v82 = v5;
  MEMORY[0x28223BE20](v4);
  v80 = &v59 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AF58);
  v8 = *(v7 - 8);
  v76 = v7;
  v77 = v8;
  MEMORY[0x28223BE20](v7);
  v74 = &v59 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809526A0);
  v11 = *(v10 - 8);
  v78 = v10;
  v79 = v11;
  MEMORY[0x28223BE20](v10);
  v75 = &v59 - v12;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AF70);
  v71 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v68 = &v59 - v13;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809526B0);
  v73 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v69 = &v59 - v14;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094AF30);
  v65 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v62 = &v59 - v15;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809526C0);
  v67 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v63 = &v59 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952620);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v59 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AF40);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v59 - v22;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809526D0);
  v61 = *(v60 - 8);
  *&v24 = MEMORY[0x28223BE20](v60).n128_u64[0];
  v26 = &v59 - v25;
  v27 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_workflow);
  v86 = v0;
  [v27 addEditingObserver_];
  v91 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_editorOptions);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094FEA0);
  sub_274638F7C();
  swift_endAccess();
  v28 = sub_274412734(0, &qword_28094AF90);
  v29 = sub_27463BCEC();
  v93 = v29;
  v90 = sub_27463BCDC();
  __swift_storeEnumTagSinglePayload(v19, 1, 1, v90);
  v88 = MEMORY[0x277CBCEC8];
  sub_274458A14(&qword_2809526E0, &qword_28094AF40);
  v89 = sub_274594E5C(&qword_280952640, &qword_28094AF90);
  sub_274638FDC();
  v30 = v19;
  sub_274415174(v19, &qword_280952620);

  (*(v21 + 8))(v23, v20);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v92 = MEMORY[0x277CBCD60];
  sub_274458A14(&qword_2809526E8, &unk_2809526D0);
  v31 = v60;
  sub_274638FFC();

  (*(v61 + 8))(v26, v31);
  swift_beginAccess();
  sub_274638EAC();
  swift_endAccess();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809526F0);
  v32 = v62;
  sub_274638F7C();
  swift_endAccess();
  v87 = v28;
  v33 = sub_27463BCEC();
  v93 = v33;
  v34 = v30;
  v59 = v30;
  v35 = v90;
  __swift_storeEnumTagSinglePayload(v30, 1, 1, v90);
  sub_274458A14(&qword_2809526F8, &unk_28094AF30);
  v36 = v63;
  v37 = v64;
  sub_274638FDC();
  sub_274415174(v34, &qword_280952620);

  (*(v65 + 8))(v32, v37);
  swift_allocObject();
  v38 = v86;
  swift_unknownObjectWeakInit();
  sub_274458A14(&unk_280952700, &unk_2809526C0);
  v39 = v66;
  sub_274638FFC();

  (*(v67 + 8))(v36, v39);
  swift_beginAccess();
  sub_274638EAC();
  swift_endAccess();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280954960);
  v40 = v68;
  sub_274638F7C();
  swift_endAccess();
  v41 = sub_27463BCEC();
  v93 = v41;
  v42 = v59;
  __swift_storeEnumTagSinglePayload(v59, 1, 1, v35);
  sub_274458A14(&qword_280952710, &qword_28094AF70);
  v43 = v69;
  v44 = v70;
  sub_274638FDC();
  sub_274415174(v42, &qword_280952620);

  (*(v71 + 8))(v40, v44);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_274458A14(&unk_280952718, &unk_2809526B0);
  v45 = v72;
  sub_274638FFC();

  (*(v73 + 8))(v43, v45);
  swift_beginAccess();
  sub_274638EAC();
  swift_endAccess();

  v93 = *(v91 + OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions_onScrollToAction);
  v46 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v47 = swift_allocObject();
  *(v47 + 16) = sub_2745955B0;
  *(v47 + 24) = v46;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094AF80);
  v73 = MEMORY[0x277CBCE20];
  sub_274458A14(&qword_280951E60, &unk_28094AF80);
  sub_274638FFC();

  swift_beginAccess();
  sub_274638EAC();
  swift_endAccess();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AF50);
  v48 = v74;
  sub_274638F7C();
  swift_endAccess();
  v49 = sub_27463BCEC();
  v93 = v49;
  __swift_storeEnumTagSinglePayload(v42, 1, 1, v90);
  sub_274458A14(&qword_280952728, &qword_28094AF58);
  v50 = v75;
  v51 = v76;
  sub_274638FDC();
  sub_274415174(v42, &qword_280952620);

  (*(v77 + 8))(v48, v51);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_274458A14(&unk_280952730, &unk_2809526A0);
  v52 = v78;
  sub_274638FFC();

  (*(v79 + 8))(v50, v52);
  swift_beginAccess();
  sub_274638EAC();
  swift_endAccess();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094AE70);
  v53 = v80;
  sub_274638F7C();
  swift_endAccess();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_274458A14(&unk_280952740, &unk_280952690);
  v54 = v81;
  sub_274638FFC();

  (*(v82 + 8))(v53, v54);
  swift_beginAccess();
  sub_274638EAC();
  swift_endAccess();

  v55 = *(v38 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_runner);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094FEB0);
  v56 = v83;
  sub_274638F7C();
  swift_endAccess();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_274458A14(&unk_280952590, &unk_28094FE90);
  v57 = v84;
  sub_274638FFC();

  (*(v85 + 8))(v56, v57);
  swift_beginAccess();
  sub_274638EAC();
  swift_endAccess();

  v93 = *(v55 + OBJC_IVAR____TtC14WorkflowEditor20EditorShortcutRunner_onLifecycleEvent);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FEC0);
  sub_274458A14(&unk_280952580, &qword_28094FEC0);
  sub_274638FFC();

  swift_beginAccess();
  sub_274638EAC();
  swift_endAccess();
}

void sub_274587448()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_27458E448();
  }
}

void sub_2745874A4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_editorOptions;
    v3 = *(Strong + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_editorOptions) + OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions_pendingScrollParameters;
    v4 = *v3;
    if (*v3)
    {
      v5 = *(v3 + 32);
      v6 = *(v3 + 8);
      v10 = *v3;
      v11 = v6 & 1;
      v12 = *(v3 + 16);
      v13 = v5 & 1;
      v7 = v4;
      sub_27458E300(&v10);

      v8 = *&v1[v2];
      v9 = &v8[OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions_pendingScrollParameters];
      v1 = *&v8[OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions_pendingScrollParameters];
      v9[32] = 0;
      *v9 = 0u;
      *(v9 + 1) = 0u;
    }
  }
}

void sub_274587584()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_27458F85C();
  }
}

void sub_2745875F4(uint64_t a1, void *a2, void (*a3)(uint64_t))
{
  OUTLINED_FUNCTION_16_12();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = OUTLINED_FUNCTION_29_11();
    a3(v5);
  }
}

void sub_27458765C(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (a2)
    {
      v5 = *(Strong + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_editorOptions);
      v6 = a2;
      v7 = v5;
      sub_27463B1BC();
      sub_27443DA88(v6, 1, v8, v9, 0);
    }
  }
}

void sub_2745876FC(void *a1, unint64_t a2, char a3)
{
  v6 = sub_274638C1C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if (a3)
    {
      if (a3 != 1)
      {
LABEL_14:

        return;
      }

      v12 = sub_274637D5C();
      v13 = [v12 userInfo];

      v14 = sub_27463B4CC();
      v15 = sub_27463B6AC();
      sub_27452F288(v15, v16, v14, &v62);

      if (!v64)
      {
        sub_274415174(&v62, &unk_28094A230);
        goto LABEL_13;
      }

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_13;
      }

      v17 = v61;
      v18 = OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_workflow;
      v19 = [*&v11[OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_workflow] actions];
      sub_274412734(0, &qword_28094E040);
      v20 = sub_27463B81C();

      v21 = sub_274453594(v20);

      if (v17 >= v21)
      {
        goto LABEL_13;
      }

      v22 = [*&v11[v18] actions];
      v23 = sub_27463B81C();

      sub_2744535A4(v17, (v23 & 0xC000000000000001) == 0);
      if ((v23 & 0xC000000000000001) == 0)
      {
        v24 = *(v23 + 8 * v17 + 32);
LABEL_9:
        v25 = v24;

        v26 = *&v11[OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_editorOptions];
        sub_27463B1BC();
        sub_27443DA88(v25, 1, v27, v28, 0);

        v29 = *&v11[OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_editorResults];
        swift_getErrorValue();
        v30 = v29;
        v31 = v25;
        v32 = sub_27463C72C();
        *&v62 = v31;
        *(&v62 + 1) = v32;
        v63 = v33;
        sub_274439E10();

LABEL_13:
        sub_274587D94(a1);
        v38 = v37;
        [WFUserInterfaceFromViewController() presentAlert_];

        swift_unknownObjectRelease();
        goto LABEL_14;
      }

LABEL_46:
      v24 = MEMORY[0x277C58B20](v17, v23);
      goto LABEL_9;
    }

    if (a1)
    {
      v34 = *(Strong + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_editorResults);

      v35 = v34;
      v36 = a1;
      sub_27443A104();
    }

    else
    {
    }

    (*(v7 + 104))(v9, *MEMORY[0x277D79BE8], v6);
    v17 = sub_274638C0C();
    (*(v7 + 8))(v9, v6);
    if ((v17 & 1) == 0)
    {

      return;
    }

    if (!a2)
    {
      goto LABEL_14;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v39 = sub_27463C51C();
      a1 = 0;
      v40 = 0;
      v41 = 0;
      a2 = v39 | 0x8000000000000000;
    }

    else
    {
      v42 = -1 << *(a2 + 32);
      a1 = (a2 + 64);
      v40 = ~v42;
      v43 = -v42;
      if (v43 < 64)
      {
        v44 = ~(-1 << v43);
      }

      else
      {
        v44 = -1;
      }

      v41 = v44 & *(a2 + 64);
    }

    v23 = 0;
    v59 = v40;
    v45 = (v40 + 64) >> 6;
    if ((a2 & 0x8000000000000000) != 0)
    {
      goto LABEL_33;
    }

LABEL_27:
    v46 = v23;
    v47 = v41;
    v48 = v23;
    if (!v41)
    {
      while (1)
      {
        v48 = v46 + 1;
        if (__OFADD__(v46, 1))
        {
          break;
        }

        if (v48 >= v45)
        {
          goto LABEL_42;
        }

        v47 = *(a1 + v48);
        ++v46;
        if (v47)
        {
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

LABEL_31:
    v60 = (v47 - 1) & v47;
    v49 = (v48 << 9) | (8 * __clz(__rbit64(v47)));
    v50 = *(*(a2 + 56) + v49);
    v17 = *(*(a2 + 48) + v49);
    for (i = v50; v17; v60 = v41)
    {
      v55 = [v17 integerValue];
      v23 = [*&v11[OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_workflow] actions];
      sub_274412734(0, &qword_28094E040);
      v56 = sub_27463B81C();

      if ((v56 & 0xC000000000000001) != 0)
      {
        v57 = MEMORY[0x277C58B20](v55, v56);
      }

      else
      {
        if ((v55 & 0x8000000000000000) != 0)
        {
          goto LABEL_44;
        }

        if (v55 >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_45;
        }

        v57 = *(v56 + 8 * v55 + 32);
      }

      v58 = v57;

      [v58 setOutput_];

      v23 = v48;
      v41 = v60;
      if ((a2 & 0x8000000000000000) == 0)
      {
        goto LABEL_27;
      }

LABEL_33:
      v52 = sub_27463C55C();
      if (!v52)
      {
        break;
      }

      v54 = v53;
      v61 = v52;
      sub_274412734(0, &unk_28094C200);
      swift_dynamicCast();
      v17 = v62;
      v61 = v54;
      sub_274412734(0, &unk_280950440);
      swift_dynamicCast();
      i = v62;
      v48 = v23;
    }

LABEL_42:

    sub_274406A24();
  }
}

void sub_274587D94(void *a1)
{
  v1 = sub_274587F68();
  v18 = *(v1 + 16);
  v19 = v1;
  if (!v18)
  {
LABEL_16:

    sub_274412734(0, &qword_280952750);
    v17 = a1;
    sub_27458824C(a1);
    return;
  }

  v2 = 0;
  v3 = v1 + 64;
  while (v2 < *(v19 + 16))
  {
    v5 = *(v3 - 32);
    v4 = *(v3 - 24);
    v6 = *(v3 - 16);
    v20 = *(v3 - 8);

    v7 = sub_274637D5C();
    v8 = [v7 domain];
    v9 = sub_27463B6AC();
    v11 = v10;

    if (v9 == v5 && v11 == v4)
    {
    }

    else
    {
      v13 = sub_27463C6BC();

      if ((v13 & 1) == 0)
      {

LABEL_14:

        goto LABEL_15;
      }
    }

    v14 = [v7 code];

    if (v14 != v6)
    {
      goto LABEL_14;
    }

    v15 = sub_274637D5C();
    v16 = v20();

    if (v16)
    {

      return;
    }

LABEL_15:
    ++v2;
    v3 += 40;
    if (v18 == v2)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_274587F68()
{
  v0 = sub_274637BEC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952758);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2746486A0;
  v5 = sub_274637BAC();
  v7 = v6;
  v8 = *MEMORY[0x277CFC140];
  v9 = sub_274637C3C();
  (*(*(v9 - 8) + 104))(v3, v8, v9);
  v10 = *MEMORY[0x277CFBF38];
  v31 = *(v1 + 104);
  v31(v3, v10, v0);
  v11 = sub_274637BDC();
  v28 = *(v1 + 8);
  v28(v3, v0);
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  *(v4 + 48) = v11;
  *(v4 + 56) = sub_274488774;
  *(v4 + 64) = 0;
  v12 = sub_274637BAC();
  v29 = v13;
  v30 = v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280952760);
  v15 = v14[12];
  v16 = v14[16];
  v17 = v14[20];
  *v3 = 0;
  v18 = *MEMORY[0x277CFC0A0];
  v19 = sub_274637C0C();
  (*(*(v19 - 8) + 104))(v3, v18, v19);
  __swift_storeEnumTagSinglePayload(v3 + v15, 1, 1, v9);
  *(v3 + v16) = 0;
  v20 = sub_274637BFC();
  __swift_storeEnumTagSinglePayload(v3 + v17, 1, 1, v20);
  v31(v3, *MEMORY[0x277CFBF78], v0);
  v21 = sub_274637BDC();
  v28(v3, v0);
  v22 = swift_allocObject();
  v23 = v32;
  *(v22 + 16) = v32;
  v24 = v29;
  *(v4 + 72) = v30;
  *(v4 + 80) = v24;
  *(v4 + 88) = v21;
  *(v4 + 96) = sub_2745955D8;
  *(v4 + 104) = v22;
  v25 = v23;
  return v4;
}

id sub_27458824C(void *a1)
{
  sub_274637D5C();
  OUTLINED_FUNCTION_29_11();
  v3 = [swift_getObjCClassFromMetadata() alertWithError_];

  return v3;
}

uint64_t sub_2745882AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 32;
    do
    {
      v2 += 8;
      sub_27452179C();
      --v1;
    }

    while (v1);
  }
}

void sub_274588310(uint64_t a1)
{
  v2 = sub_274453594(a1);
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = OUTLINED_FUNCTION_13_3();
      v4 = MEMORY[0x277C58B20](v5);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    sub_274522144(&v6, v4);
  }
}

void sub_2745883CC(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_27463C23C();
    sub_274412734(0, &qword_280950FD0);
    sub_274594E5C(&qword_280951F28, &qword_280950FD0);
    sub_27463BA7C();
    v1 = v14[1];
    v2 = v14[2];
    v3 = v14[3];
    v4 = v14[4];
    v5 = v14[5];
  }

  else
  {
    v4 = 0;
    v6 = -1 << *(a1 + 32);
    v2 = (a1 + 56);
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = (v8 & *(a1 + 56));
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v13)
    {
LABEL_18:
      OUTLINED_FUNCTION_27_11();
      sub_274406A24();
      return;
    }

    while (1)
    {
      sub_274522168(v14, v13);

      v4 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_27463C2BC())
      {
        sub_274412734(0, &qword_280950FD0);
        swift_dynamicCast();
        v13 = v14[0];
        v11 = v4;
        v12 = v5;
        if (v14[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v11 = (v9 + 1);
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v10 = v2[v11];
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_2745885D0(void *a1, char a2)
{
  v4 = [a1 layer];
  [v4 setShadowRadius_];

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = objc_allocWithZone(MEMORY[0x277D75D40]);
  v7 = a1;
  v8 = sub_2745FB6C4(sub_274594C9C, v5, 0.6, 1.0);
  [v8 startAnimation];
}

id sub_2745886B8(void *a1, void *a2)
{
  v50 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CEF8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v44 - v4;
  v6 = sub_274637C3C();
  v51 = *(v6 - 8);
  v7 = *(v51 + 64);
  MEMORY[0x28223BE20](v6);
  v8 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = MEMORY[0x28223BE20](v9).n128_u64[0];
  v12 = v44 - v11;
  v13 = [a1 userInfo];
  v14 = sub_27463B4CC();

  v15 = sub_274637BBC();
  sub_27452F288(v15, v16, v14, &v54);

  if (!v55)
  {
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  sub_274637C2C();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    v17 = &qword_28094CEF8;
    v18 = v5;
LABEL_10:
    sub_274415174(v18, v17);
    return 0;
  }

  v19 = v51;
  v48 = *(v51 + 32);
  v49 = v51 + 32;
  v48(v12, v5, v6);
  v20 = [a1 userInfo];
  v21 = sub_27463B4CC();

  v22 = sub_274637BCC();
  sub_27452F288(v22, v23, v21, &v54);

  if (!v55)
  {
    (*(v19 + 8))(v12, v6);
LABEL_9:
    v17 = &unk_28094A230;
    v18 = &v54;
    goto LABEL_10;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v51 + 8))(v12, v6);
    return 0;
  }

  v24 = v52;
  v25 = v53;
  sub_274637CDC();
  swift_allocObject();
  sub_274637CCC();
  sub_274637C1C();
  sub_274594370(&unk_280952770, 255, MEMORY[0x277CFC0B8]);
  sub_274637CBC();
  v26 = v51;
  v46 = v25;
  v47 = v24;

  v45 = v54;
  sub_274412734(0, &qword_280952750);
  v28 = a1;
  v29 = sub_27458824C(a1);
  v44[1] = sub_274412734(0, &unk_28094FE60);
  sub_27463B70C();
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v30 = qword_28094BB00;
  v31 = sub_27463B66C();
  v32 = sub_27463B66C();

  v33 = [v30 localizedStringForKey:v31 value:v32 table:0];

  v34 = sub_27463B6AC();
  v44[0] = v35;

  (*(v26 + 16))(v8, v12, v6);
  v36 = (*(v26 + 80) + 24) & ~*(v26 + 80);
  v37 = (v7 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  v39 = v50;
  *(v38 + 16) = v50;
  v48((v38 + v36), v8, v6);
  v40 = v45;
  *(v38 + v37) = v45;
  v41 = v39;
  v42 = v40;
  v43 = sub_274588E0C(v34, v44[0], 0, sub_2745955E0, v38);
  [v29 addButton_];
  sub_2744F52B4(v47, v46);

  (*(v26 + 8))(v12, v6);
  return v29;
}

void sub_274588C90(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_274637C3C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_27463B2BC();
  v11 = sub_274594370(&unk_280952780, v10, type metadata accessor for UIKitEditorViewController);
  v12 = swift_unknownObjectRetain();
  v13 = MEMORY[0x277C579F0](v12, v11);
  (*(v7 + 16))(v9, a2, v6);
  objc_allocWithZone(sub_27463889C());
  v14 = a1;
  v15 = v13;
  v16 = a3;
  v17 = sub_27463888C();
  sub_27463887C();
}

id sub_274588E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_27463B66C();

  if (a4)
  {
    v13[4] = a4;
    v13[5] = a5;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 1107296256;
    OUTLINED_FUNCTION_7_19();
    v13[2] = v9;
    v13[3] = &block_descriptor_391;
    v10 = _Block_copy(v13);
  }

  else
  {
    v10 = 0;
  }

  v11 = [swift_getObjCClassFromMetadata() buttonWithTitle:v8 style:a3 handler:v10];
  _Block_release(v10);

  return v11;
}

id sub_274588EFC()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_274412734(0, &qword_28094E040);
  OUTLINED_FUNCTION_0_10();
  v1 = sub_27463B7FC();

  v2 = [v0 initWithActions_];

  return v2;
}

id sub_274588FB0()
{
  v1 = OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController____lazy_storage___emptyStateView;
  v2 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController____lazy_storage___emptyStateView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController____lazy_storage___emptyStateView);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for EditorEmptyStateView()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *sub_274589024()
{
  v1 = OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController____lazy_storage___editorView;
  v2 = *&v0[OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController____lazy_storage___editorView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController____lazy_storage___editorView];
  }

  else
  {
    v4 = objc_allocWithZone(type metadata accessor for WFEditorView());
    v5 = sub_274594F20(v0, v4);
    v6 = *&v0[v1];
    *&v0[v1] = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_27458909C()
{
  v1 = OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController____lazy_storage___systemInputProviderAction;
  if (*(v0 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController____lazy_storage___systemInputProviderAction))
  {
    v2 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController____lazy_storage___systemInputProviderAction);
  }

  else
  {
    v3 = v0;
    type metadata accessor for WFEditorSystemInputProviderItem();
    swift_allocObject();
    v2 = WFEditorItem.init(drawsShadow:drawsRim:showsConnector:)(0, 0, 1);
    *(v3 + v1) = v2;
  }

  return v2;
}

void sub_274589124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_editorDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v9 = MEMORY[0x277D84F90];
  if (sub_274453594(MEMORY[0x277D84F90]))
  {
    sub_274573FD0(MEMORY[0x277D84F90]);
  }

  else
  {
    v10 = MEMORY[0x277D84FA0];
  }

  *(v4 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_cancellables) = v10;
  v11 = OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_actionObservationCancellables;
  type metadata accessor for WFEditorItem();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952678);
  OUTLINED_FUNCTION_7_28();
  sub_274594370(v12, 255, v13);
  OUTLINED_FUNCTION_31_10();
  *(v4 + v11) = sub_27463B4DC();
  *(v4 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController____lazy_storage___emptyStateView) = 0;
  *(v4 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController____lazy_storage___editorView) = 0;
  *(v4 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_actions) = v9;
  v14 = OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_actionOutputItems;
  type metadata accessor for WFEditorActionOutputItem();
  OUTLINED_FUNCTION_31_10();
  *(v4 + v14) = sub_27463B4DC();
  *(v4 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController____lazy_storage___systemInputProviderAction) = 0;
  *(v4 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_inputAction) = 0;
  *(v4 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_activeVariablePickingAnchoredAction) = 0;
  *(v4 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_outputItem) = 0;
  *(v4 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_draggingActionTree) = 0;
  *(v4 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_currentVisibleActionIdentifiers) = v9;
  *(v4 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_prefixItemCount) = 0;
  *(v4 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_keyboardIsVisible) = 0;
  *(v4 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_isFocusedOnRevealedAction) = 0;
  *(v4 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_parameterEditingHintView) = 0;
  *(v4 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_items) = v9;
  *(v4 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_runner) = a4;
  *(v4 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_workflow) = a1;
  *(v4 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_editorResults) = a3;
  *(v4 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_editorOptions) = a2;
  v17 = type metadata accessor for UIKitEditorViewController();
  OUTLINED_FUNCTION_16_12();
  objc_msgSendSuper2(v15, v16, v4, v17);
  OUTLINED_FUNCTION_21_10();
}

double sub_274589340()
{
  v1 = [v0 traitCollection];
  v2 = [v1 horizontalSizeClass];

  result = 138.0;
  if (v2 != 1)
  {
    return 0.0;
  }

  return result;
}

void sub_2745893A0()
{
  v1 = sub_274589024();
  [v0 setView_];
}

void sub_274589434()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for UIKitEditorViewController();
  objc_msgSendSuper2(&v9, sel_viewDidLoad);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = sub_274588FB0();
    [v2 addSubview_];

    v4 = OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController____lazy_storage___emptyStateView;
    [*&v0[OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController____lazy_storage___emptyStateView] setAutoresizingMask_];
    *(*&v0[v4] + OBJC_IVAR____TtC14WorkflowEditor20EditorEmptyStateView_delegate + 8) = &off_28836F828;
    swift_unknownObjectWeakAssign();
    v5 = sub_274589024();
    [v5 setClipsToBounds_];

    v6 = objc_opt_self();
    v7 = [v6 defaultCenter];
    [v7 addObserver:v0 selector:sel_keyboardWillShow_ name:*MEMORY[0x277D76C60] object:0];

    v8 = [v6 defaultCenter];
    [v8 addObserver:v0 selector:sel_keyboardWillHide_ name:*MEMORY[0x277D76C50] object:0];
  }

  else
  {
    __break(1u);
  }
}

void sub_274589604(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for UIKitEditorViewController();
  objc_msgSendSuper2(&v4, sel_viewIsAppearing_, a1 & 1);
  v3 = OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_cancellables;
  swift_beginAccess();
  *&v1[v3] = MEMORY[0x277D84FA0];

  sub_274586238();
  sub_27458AFD8();
}

id sub_2745896D4(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for UIKitEditorViewController();
  objc_msgSendSuper2(&v4, sel_viewDidDisappear_, a1 & 1);
  return [*&v1[OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_workflow] removeEditingObserver_];
}

void sub_274589788(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for UIKitEditorViewController();
  objc_msgSendSuper2(&v4, sel_viewDidAppear_, a1 & 1);
  v3 = sub_274589024();
  OUTLINED_FUNCTION_35_6();
  sub_274595CB8();
}

void sub_274589840()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UIKitEditorViewController();
  objc_msgSendSuper2(&v2, sel_viewWillLayoutSubviews);
  if ((*(v0 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_keyboardIsVisible) & 1) == 0)
  {
    v1 = sub_274589024();
    sub_274589340();
    [v1 contentInset];
    [v1 setContentInset_];
  }
}

void sub_274589914()
{
  OUTLINED_FUNCTION_38_6();
  v35 = v1;
  v36 = v2;
  v3 = v0;
  v5 = v4;
  v7 = v6;
  if (v6 != 1)
  {
    goto LABEL_10;
  }

  v8 = [v3 undoManager];
  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = v8;
  if (![v8 canUndo])
  {

LABEL_10:
    v34.receiver = v3;
    v34.super_class = type metadata accessor for UIKitEditorViewController();
    objc_msgSendSuper2(&v34, sel_motionEnded_withEvent_, v7, v5);
    OUTLINED_FUNCTION_28_14();
    return;
  }

  sub_274412734(0, &qword_280952680);
  v10 = [v9 undoActionName];
  sub_27463B6AC();

  OUTLINED_FUNCTION_16_12();
  v33 = sub_274589C3C(v11, v12, v13, v14, 0);
  sub_274412734(0, &qword_280952688);
  sub_27463B70C();
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v15 = qword_28094BB00;
  v16 = sub_27463B66C();
  v17 = sub_27463B66C();

  v18 = [v15 localizedStringForKey:v16 value:v17 table:0];

  sub_27463B6AC();
  v19 = OUTLINED_FUNCTION_31_10();
  v21 = sub_274589CF4(v19, v20, 1, 0, 0);
  [v33 addAction_];

  sub_27463B70C();
  v22 = sub_27463B66C();
  v23 = sub_27463B66C();

  v24 = [v15 localizedStringForKey:v22 value:v23 table:0];

  v25 = sub_27463B6AC();
  v27 = v26;

  OUTLINED_FUNCTION_5();
  v28 = swift_allocObject();
  *(v28 + 16) = v9;
  v29 = v9;
  v30 = sub_274589CF4(v25, v27, 0, sub_274595588, v28);
  [v33 addAction_];

  [v3 presentViewController:v33 animated:1 completion:0];
  OUTLINED_FUNCTION_28_14();
}

id sub_274589C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v7 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v7 = sub_27463B66C();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = sub_27463B66C();

LABEL_6:
  v9 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:v7 message:v8 preferredStyle:a5];

  return v9;
}

id sub_274589CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v8 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v8 = sub_27463B66C();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12[4] = a4;
  v12[5] = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_274589DFC;
  v12[3] = &block_descriptor_368;
  v9 = _Block_copy(v12);

LABEL_6:
  v10 = [swift_getObjCClassFromMetadata() actionWithTitle:v8 style:a3 handler:v9];
  _Block_release(v9);

  return v10;
}

void sub_274589DFC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_274589F3C()
{
  OUTLINED_FUNCTION_38_6();
  v53 = v1;
  v54 = v6;
  v7 = v0;
  sub_27463B1EC();
  OUTLINED_FUNCTION_1();
  v49 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_0();
  v12 = v11 - v10;
  sub_27463B21C();
  OUTLINED_FUNCTION_1();
  v48 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_0();
  v17 = v16 - v15;
  v18 = sub_27463B23C();
  OUTLINED_FUNCTION_1();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v44 - v25;
  v27 = sub_274637CFC();
  if (!v27)
  {
    v51 = 0u;
    v52 = 0u;
    goto LABEL_7;
  }

  v28 = v27;
  v50[6] = sub_27463B6AC();
  v50[7] = v29;
  sub_27463C31C();
  sub_27452F2E4(v28, &v51);

  sub_274430664(v50);
  if (!*(&v52 + 1))
  {
LABEL_7:
    sub_274415174(&v51, &unk_28094A230);
    goto LABEL_8;
  }

  sub_274412734(0, &qword_280952668);
  if (swift_dynamicCast())
  {
    v30 = v50[0];
    [v50[0] CGRectValue];
    OUTLINED_FUNCTION_6_6();

    if ((v7[OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_keyboardIsVisible] & 1) == 0)
    {
      v7[OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_keyboardIsVisible] = 1;
      sub_274412734(0, &qword_28094AF90);
      v46 = sub_27463BCEC();
      sub_27463B22C();
      sub_27463B28C();
      v47 = *(v20 + 8);
      v47(v23, v18);
      v31 = swift_allocObject();
      v31[2] = v7;
      v31[3] = v2;
      v31[4] = v3;
      v31[5] = v4;
      v31[6] = v5;
      v50[4] = sub_274594F10;
      v50[5] = v31;
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 1107296256;
      OUTLINED_FUNCTION_7_19();
      v50[2] = v32;
      v50[3] = &block_descriptor_362;
      v45 = _Block_copy(v50);
      v33 = v7;

      sub_27463B20C();
      v50[0] = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_4_31();
      v44 = sub_274594370(v34, 255, v35);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094AFA0);
      OUTLINED_FUNCTION_19_5();
      sub_274458A14(v36, v37);
      sub_27463C1EC();
      v38 = v45;
      v39 = v46;
      MEMORY[0x277C58400](v26, v17, v12, v45);
      _Block_release(v38);

      v40 = OUTLINED_FUNCTION_13_3();
      v41(v40);
      v42 = OUTLINED_FUNCTION_32_9();
      v43(v42);
      v47(v26, v18);
    }
  }

LABEL_8:
  OUTLINED_FUNCTION_28_14();
}

void sub_27458A3CC(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809525E0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - v12;
  v14 = sub_274589024();
  [v14 convertRect:0 fromView:{a2, a3, a4, a5}];

  v15 = OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController____lazy_storage___editorView;
  [*(a1 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController____lazy_storage___editorView) safeAreaInsets];
  [*(a1 + v15) bounds];
  CGRectGetMaxY(v33);
  v16 = *(a1 + v15);
  sub_274589340();
  [v16 contentInset];
  [v16 setContentInset_];

  v17 = *(a1 + v15);
  [v17 verticalScrollIndicatorInsets];
  [v17 setVerticalScrollIndicatorInsets_];

  v18 = [*(a1 + v15) firstResponder];
  if (v18)
  {
    v31 = v18;
    objc_opt_self();
    v19 = swift_dynamicCastObjCClass();
    if (v19)
    {
      v20 = v19;
      v21 = *(a1 + v15);
      v22 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_visibleCells;
      swift_beginAccess();
      (*(v11 + 16))(v13, v21 + v22, v10);
      v23 = sub_27463831C();
      (*(v11 + 8))(v13, v10);
      v24 = sub_274453594(v23);
      for (i = 0; ; ++i)
      {
        if (v24 == i)
        {

          return;
        }

        if ((v23 & 0xC000000000000001) != 0)
        {
          v26 = MEMORY[0x277C58B20](i, v23);
        }

        else
        {
          if (i >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_19;
          }

          v26 = *(v23 + 8 * i + 32);
        }

        v27 = v26;
        if (__OFADD__(i, 1))
        {
          break;
        }

        if ([v20 isDescendantOfView_])
        {

          v29 = *(a1 + v15);

          sub_2745995F0(v30);

          return;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
    }

    else
    {
      v28 = v31;
    }
  }
}

void sub_27458A858()
{
  OUTLINED_FUNCTION_5();
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = objc_allocWithZone(MEMORY[0x277D75D40]);
  v3 = v0;
  v4 = sub_2745FB6C4(sub_274594F08, v1, 0.4, 1.0);
  [v4 startAnimation];

  v3[OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_keyboardIsVisible] = 0;
}

void sub_27458A8F8(uint64_t a1)
{
  v2 = sub_274589024();
  sub_274589340();
  [v2 contentInset];
  [v2 setContentInset_];

  v3 = *(a1 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController____lazy_storage___editorView);
  [v3 verticalScrollIndicatorInsets];
  [v3 setVerticalScrollIndicatorInsets_];
}

id sub_27458AA8C()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for UIKitEditorViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_27458ACC8()
{
  v1 = [v0 parentViewController];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 undoManager];

  return v3;
}

void sub_27458AD2C()
{
  sub_274591854();
  sub_27458AFD8();
  if (*(v0 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_inputAction))
  {

    sub_274638F0C();
  }
}

void sub_27458ADFC()
{
  sub_274591854();
  sub_27458D458();

  sub_27458AFD8();
}

void sub_27458AE88()
{
  sub_274591854();

  sub_27458AFD8();
}

void sub_27458AF14(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_draggingActionTree);
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_draggingActionTree);
  }

  else
  {
    v4 = [*(v1 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_workflow) actionTree];
    v3 = 0;
  }

  v5 = v3;
  v6 = [v4 indexOfAction_];
  if (v6 == sub_274637CAC())
  {
  }

  else
  {
    v7 = [v4 indentationLevelOfActionAtIndex_];

    if ((v7 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }
  }
}

void sub_27458AFD8()
{
  v2 = v0;
  v190 = *&v0[OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_workflow];
  v3 = [v190 actions];
  v4 = sub_274412734(0, &qword_28094E040);
  v5 = sub_27463B81C();

  v6 = sub_274453594(v5);
  v7 = MEMORY[0x277D84F90];
  v196 = v5;
  v199 = v0;
  v200 = v6;
  if (v6)
  {
    v204 = MEMORY[0x277D84F90];
    sub_2744512AC(0, v6 & ~(v6 >> 63), 0);
    v8 = v200;
    if (v200 < 0)
    {
      goto LABEL_206;
    }

    v9 = 0;
    v7 = v204;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x277C58B20](v9, v5);
      }

      else
      {
        v10 = *(v5 + 8 * v9 + 32);
      }

      v11 = v10;

      v1 = v204[2];
      v12 = v204[3];
      if (v1 >= v12 >> 1)
      {
        v13 = OUTLINED_FUNCTION_11_16(v12);
        sub_2744512AC(v13, v14, v15);
        v8 = v200;
      }

      ++v9;
      v204[2] = v1 + 1;
      v204[v1 + 4] = v11;
    }

    while (v8 != v9);
    v2 = v199;
  }

  v16 = OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_currentVisibleActionIdentifiers;
  if ((sub_2744F57D0(v7, *&v2[OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_currentVisibleActionIdentifiers]) & 1) == 0)
  {
    goto LABEL_23;
  }

  v17 = *&v2[OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_inputAction];
  if (v17)
  {
    v18 = *(*(v17 + 32) + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action);
    v19 = v18;
  }

  else
  {
    v18 = 0;
  }

  v20 = [v190 inputAction];
  v21 = v20;
  if (!v18)
  {
    if (!v20)
    {

      v2 = v199;
      goto LABEL_61;
    }

    goto LABEL_22;
  }

  if (!v20)
  {
    v21 = v18;
LABEL_22:

    v2 = v199;
    goto LABEL_23;
  }

  v22 = sub_27463BF7C();

  v2 = v199;
  if (v22)
  {

    goto LABEL_61;
  }

LABEL_23:
  if (sub_27443AF38())
  {
    v1 = v2;
    v23 = OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_inputAction;
    if (*(v1 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_inputAction))
    {
      goto LABEL_30;
    }

    type metadata accessor for ActionCellViewModel();
    v24 = objc_allocWithZone(sub_2746383DC());
    OUTLINED_FUNCTION_21_2();
    v25 = sub_2746383CC();
    v26 = sub_27444A2FC(v25);

    type metadata accessor for WFEditorActionItem();
    OUTLINED_FUNCTION_40_6();
    v27 = v1;
    *(v1 + v23) = sub_274591F38(v26, v1);
  }

  else
  {
    v28 = [v190 inputAction];
    if (v28)
    {
      v29 = v28;
      v30 = sub_27458CF88(v28, v2);

      *&v2[OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_inputAction] = v30;
    }

    else
    {
      *&v2[OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_inputAction] = 0;
    }
  }

  v1 = v199;
LABEL_30:
  *(v1 + v16) = v7;

  v193 = OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_actions;
  v31 = *(v1 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_actions);
  v32 = sub_274453594(v31);
  v33 = MEMORY[0x277D84F90];
  if (v32)
  {
    v34 = v32;
    v205 = MEMORY[0x277D84F90];
    v35 = v32 & ~(v32 >> 63);

    sub_2744512EC(0, v35, 0);
    if (v34 < 0)
    {
      __break(1u);
      goto LABEL_210;
    }

    v36 = 0;
    v37 = v205;
    do
    {
      if ((v31 & 0xC000000000000001) != 0)
      {
        v38 = MEMORY[0x277C58B20](v36, v31);
      }

      else
      {
        v38 = *(v31 + 8 * v36 + 32);
      }

      v39 = sub_274599D28();
      v1 = *(v205 + 16);
      v40 = *(v205 + 24);
      if (v1 >= v40 >> 1)
      {
        v42 = OUTLINED_FUNCTION_11_16(v40);
        sub_2744512EC(v42, v43, v44);
      }

      ++v36;
      *(v205 + 16) = v1 + 1;
      v41 = v205 + 16 * v1;
      *(v41 + 32) = v39;
      *(v41 + 40) = v38;
    }

    while (v34 != v36);

    v5 = v196;
    v2 = v199;
    v45 = v200;
    v33 = MEMORY[0x277D84F90];
  }

  else
  {
    v2 = v1;
    v37 = MEMORY[0x277D84F90];
    v45 = v200;
  }

  v7 = sub_27458D040(v37);
  if (v45)
  {
    v203 = v33;
    sub_27463C44C();
    if ((v200 & 0x8000000000000000) == 0)
    {
      v46 = 0;
      v47 = v5 & 0xC000000000000001;
      while (1)
      {
        v48 = v47 ? MEMORY[0x277C58B20](v46, v5) : *(v5 + 8 * v46 + 32);
        v49 = v48;
        sub_27463C74C();
        MEMORY[0x277C58EA0](v49);
        v50 = sub_27463C7AC();
        if (!*(v7 + 16))
        {
          break;
        }

        sub_274534DD8(v50);
        if ((v51 & 1) == 0)
        {
          break;
        }

LABEL_57:

        ++v46;
        sub_27463C41C();
        sub_27463C46C();
        sub_27463C47C();
        sub_27463C42C();
        if (v200 == v46)
        {

          v61 = v203;
          v2 = v199;
          goto LABEL_60;
        }
      }

      v52 = sub_274589024();
      v53 = sub_274599AE0();

      if (v53)
      {
        type metadata accessor for WFEditorActionItem();
        v54 = swift_dynamicCastClass();
        if (v54)
        {
          v55 = v54;
          sub_27463C74C();
          MEMORY[0x277C58EA0](v49);
          v56 = sub_27463C7AC();
          if (v56 == sub_274599D28())
          {
            sub_27458C778(v55, v199);
LABEL_56:
            v5 = v196;
            goto LABEL_57;
          }
        }
      }

      type metadata accessor for ActionCellViewModel();
      v57 = sub_27444A2FC(v49);
      v1 = v199;
      sub_27444974C([v199 undoManager]);
      type metadata accessor for WFEditorActionItem();
      OUTLINED_FUNCTION_40_6();
      v58 = v199;
      v59 = v57;
      v60 = sub_274591F38(v59, v199);
      sub_27458C778(v60, v58);

      v49 = v59;
      goto LABEL_56;
    }

LABEL_210:
    __break(1u);
    return;
  }

  v61 = MEMORY[0x277D84F90];
LABEL_60:
  *&v2[v193] = v61;
LABEL_61:

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280952600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_274648570;
  v63 = OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_inputAction;
  *(inited + 32) = *&v2[OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_inputAction];
  v182 = OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_actions;

  sub_2745DBF74(v64);
  OUTLINED_FUNCTION_29_11();

  sub_27445C070(v7);
  v65 = 0;
  v66 = MEMORY[0x277D84F90];
  v204 = MEMORY[0x277D84F90];
  v4 = *(inited + 16);
  while (v4 != v65)
  {
    if (v65 >= *(inited + 16))
    {
      goto LABEL_197;
    }

    v1 = *(inited + 8 * v65++ + 32);
    if (v1)
    {

      MEMORY[0x277C57F30](v67);
      OUTLINED_FUNCTION_10_27();
      if (v69)
      {
        OUTLINED_FUNCTION_6_22(v68);
        sub_27463B85C();
      }

      sub_27463B8AC();
      v66 = v204;
    }
  }

  v70 = sub_274453594(v66);
  v71 = v70;
  v184 = v63;
  if (v70)
  {
    if (v70 < 1)
    {
      goto LABEL_207;
    }

    v72 = 0;
    v201 = v66 & 0xC000000000000001;
    do
    {
      if (v201)
      {
        v73 = MEMORY[0x277C58B20](v72, v66);
      }

      else
      {
        v73 = *(v66 + 8 * v72 + 32);
      }

      ++v72;
      sub_27458C778(v73, v2);
    }

    while (v71 != v72);
  }

  else
  {
    v201 = v66 & 0xC000000000000001;
  }

  sub_27458DC90(0);
  v74 = OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_actionObservationCancellables;
  OUTLINED_FUNCTION_16_12();
  swift_beginAccess();
  v189 = v74;
  v75 = *&v2[v74];
  v76 = v75 + 64;
  v77 = 1 << *(v75 + 32);
  v78 = -1;
  if (v77 < 64)
  {
    v78 = ~(-1 << v77);
  }

  v79 = v78 & *(v75 + 64);
  v4 = ((v77 + 63) >> 6);
  v1 = v66 & 0xFFFFFFFFFFFFFF8;
  v197 = v75;

  v80 = 0;
  v191 = v4;
  v194 = v76;
  if (v79)
  {
    while (2)
    {
      v81 = v80;
LABEL_84:
      v82 = __clz(__rbit64(v79));
      v79 &= v79 - 1;
      v4 = *(*(v197 + 48) + ((v81 << 9) | (8 * v82)));

      v83 = 0;
      while (v71 != v83)
      {
        if (v201)
        {
          MEMORY[0x277C58B20](v83, v66);
        }

        else
        {
          if (v83 >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_196;
          }
        }

        if (__OFADD__(v83, 1))
        {
          __break(1u);
LABEL_196:
          __break(1u);
LABEL_197:
          __break(1u);
LABEL_198:
          __break(1u);
LABEL_199:
          __break(1u);
LABEL_200:
          __break(1u);
LABEL_201:
          __break(1u);
LABEL_202:
          __break(1u);
LABEL_203:
          __break(1u);
LABEL_204:
          __break(1u);
LABEL_205:
          __break(1u);
LABEL_206:
          __break(1u);
LABEL_207:
          __break(1u);
LABEL_208:

          v104 = sub_27463C57C();
          goto LABEL_108;
        }

        v84 = sub_274599D28();
        v85 = sub_274599D28();

        ++v83;
        if (v84 == v85)
        {

          v80 = v81;
          v2 = v199;
          goto LABEL_94;
        }
      }

      v2 = v199;
      swift_beginAccess();
      sub_2745A7D40();
      swift_endAccess();

      v80 = v81;
LABEL_94:
      v4 = v191;
      v76 = v194;
      if (!v79)
      {
        goto LABEL_81;
      }

      continue;
    }
  }

  while (1)
  {
LABEL_81:
    v81 = v80 + 1;
    if (__OFADD__(v80, 1))
    {
      goto LABEL_198;
    }

    if (v81 >= v4)
    {
      break;
    }

    v79 = *(v76 + 8 * v81);
    ++v80;
    if (v79)
    {
      goto LABEL_84;
    }
  }

  OUTLINED_FUNCTION_5();
  v177 = swift_allocObject();
  *(v177 + 16) = MEMORY[0x277D84F90];
  v86 = *&v2[v184];
  if (v86)
  {

    v87 = sub_27458909C();
    sub_274595A48(v87);
    sub_274595A48(v86);
  }

  v189 = (v177 + 16);
  v4 = OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_actionOutputItems;
  swift_beginAccess();
  v88 = *(v4 + v2);
  type metadata accessor for WFEditorItem();
  type metadata accessor for WFEditorActionOutputItem();
  OUTLINED_FUNCTION_7_28();
  sub_274594370(v89, 255, v90);
  v187 = v88;

  v181 = MEMORY[0x277D84F90];
  *(v4 + v2) = sub_27463B4DC();

  v91 = *&v2[OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_editorOptions];
  swift_getKeyPath();
  swift_getKeyPath();
  v188 = v91;
  OUTLINED_FUNCTION_13_3();
  sub_274638FAC();

  v186 = v4;
  if (v212)
  {
    sub_27443C9D4(v204, v207, v208, v209, v210, v211, v212);
LABEL_104:
    v1 = v199;
    goto LABEL_105;
  }

  if ((v207 & 1) == 0)
  {
    swift_unknownObjectRelease();

    goto LABEL_104;
  }

  if (*&v199[v184])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C820);
    v92 = OUTLINED_FUNCTION_44();
    *(v92 + 16) = xmmword_274648560;

    v93 = [v190 actionTree];
    v94 = [v93 shortcutInputActionOutput];

    *(v92 + 32) = v94;
    v95 = OUTLINED_FUNCTION_23_13();
    sub_27458D0F4(v95, v96, v97, v98, v99, v100, v101, v177);
  }

  else
  {
    sub_27458909C();
    sub_274547EA0(0, *(v177 + 16));
    sub_2745C373C(0, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C820);
    v152 = OUTLINED_FUNCTION_44();
    *(v152 + 16) = xmmword_274648560;
    v153 = [v190 actionTree];
    v154 = [v153 shortcutInputActionOutput];

    *(v152 + 32) = v154;

    v155 = OUTLINED_FUNCTION_23_13();
    sub_27458D0F4(v155, v156, v157, v158, v159, v160, v161, v177);
  }

  swift_unknownObjectRelease();

  v1 = v199;
  v4 = v186;
LABEL_105:
  v102 = (v177 + 16);
  OUTLINED_FUNCTION_16_12();
  swift_beginAccess();
  *(v1 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_prefixItemCount) = sub_274453594(*(v177 + 16));
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_18_12();

  if (v212)
  {
    sub_27443C9D4(v204, v207, v208, v209, v210, v211, v212);
    v103 = *(v1 + v182);
    if (v103 >> 62)
    {
      goto LABEL_208;
    }

    swift_bridgeObjectRetain_n();
    sub_27463C6CC();
    v104 = v103;
LABEL_108:

    v102 = v189;
    swift_beginAccess();
    sub_27445BD4C(v104);
    swift_endAccess();
    goto LABEL_154;
  }

  v178 = v208;
  v105 = *(v1 + v182);
  v195 = sub_274453594(v105);
  if (v195)
  {
    v192 = v105 & 0xC000000000000001;
    v179 = v105 + 32;
    v180 = v105 & 0xFFFFFFFFFFFFFF8;
    v106 = v187 & 0xFFFFFFFFFFFFFF8;
    if (v187 < 0)
    {
      v106 = v187;
    }

    v176 = v106;

    v107 = 0;
    v183 = v105;
    v185 = v204;
    while (1)
    {
      if (v192)
      {
        v108 = MEMORY[0x277C58B20](v107, v105);
      }

      else
      {
        if (v107 >= *(v180 + 16))
        {
          goto LABEL_202;
        }

        v108 = *(v179 + 8 * v107);
      }

      if (__OFADD__(v107++, 1))
      {
        goto LABEL_199;
      }

      OUTLINED_FUNCTION_24_10();

      MEMORY[0x277C57F30](v110);
      OUTLINED_FUNCTION_10_27();
      if (v69)
      {
        OUTLINED_FUNCTION_6_22(v111);
        sub_27463B85C();
      }

      sub_27463B8AC();
      swift_endAccess();
      objc_opt_self();
      v112 = swift_dynamicCastObjCClass();
      if (v112)
      {
        break;
      }

LABEL_150:
      if (v107 == v195)
      {
        swift_unknownObjectRelease();

        goto LABEL_154;
      }
    }

    v113 = v112;
    v198 = v107;
    swift_unknownObjectRetain();
    v114 = [v190 actionTree];
    v115 = [v114 outputsForAction:*(*(v108 + 32) + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action) inScopeOfAction:v113];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952610);
    OUTLINED_FUNCTION_21_2();
    v116 = sub_27463B81C();

    if (v116 >> 62)
    {
      v117 = sub_27463C27C();
    }

    else
    {
      v117 = *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v117 < 1)
    {

      swift_unknownObjectRelease();

LABEL_149:
      v107 = v198;
      goto LABEL_150;
    }

    v206 = MEMORY[0x277D84F90];
    sub_27445128C();
    v118 = 0;
    do
    {
      if ((v116 & 0xC000000000000001) != 0)
      {
        v119 = MEMORY[0x277C58B20](v118, v116);
      }

      else
      {
        v119 = *(v116 + 8 * v118 + 32);
        swift_unknownObjectRetain();
      }

      v120 = [v119 identifier];
      v121 = sub_27463B6AC();
      v123 = v122;
      swift_unknownObjectRelease();

      v125 = *(v206 + 16);
      v124 = *(v206 + 24);
      if (v125 >= v124 >> 1)
      {
        OUTLINED_FUNCTION_11_16(v124);
        sub_27445128C();
      }

      ++v118;
      *(v206 + 16) = v125 + 1;
      v126 = v206 + 16 * v125;
      *(v126 + 32) = v121;
      *(v126 + 40) = v123;
    }

    while (v117 != v118);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D110);
    sub_274458A14(&unk_28094D1D0, &qword_28094D110);
    v127 = sub_27463B58C();
    v129 = v128;

    sub_274599D28();
    v130 = sub_27463C66C();
    v132 = v131;
    v204 = v127;
    v207 = v129;

    MEMORY[0x277C57EA0](v130, v132);

    v1 = v199;
    if ((v187 & 0xC000000000000001) != 0)
    {

      v133 = sub_27463C53C();

      v102 = (v177 + 16);
      v4 = v186;
      if (!v133 || (swift_dynamicCast(), !v204))
      {
LABEL_141:
        swift_allocObject();
        sub_27459299C(v116, v185, v208, v209, v204, v129, v188);
        swift_unknownObjectRetain();
        v137 = v188;

        goto LABEL_142;
      }
    }

    else
    {
      v102 = (v177 + 16);
      v4 = v186;
      if (!*(v187 + 16))
      {
        goto LABEL_141;
      }

      v134 = sub_274534D60();
      if ((v135 & 1) == 0)
      {
        goto LABEL_141;
      }

      v136 = *(*(v187 + 56) + 8 * v134);

      if (!v136)
      {
        goto LABEL_141;
      }
    }

LABEL_142:
    swift_beginAccess();
    v105 = v183;
    if ((*(v4 + v199) & 0xC000000000000001) != 0)
    {

      if (__OFADD__(sub_27463C27C(), 1))
      {
        goto LABEL_203;
      }

      sub_2745FBB54();
      *(v4 + v199) = v138;
    }

    else
    {
    }

    swift_isUniquelyReferenced_nonNull_native();
    v202 = *(v4 + v199);
    sub_2745FC2C4();
    *(v4 + v199) = v202;
    swift_endAccess();
    v139 = OUTLINED_FUNCTION_24_10();
    MEMORY[0x277C57F30](v139);
    OUTLINED_FUNCTION_10_27();
    if (v69)
    {
      OUTLINED_FUNCTION_6_22(v140);
      sub_27463B85C();
    }

    sub_27463B8AC();
    swift_endAccess();
    swift_unknownObjectRelease();

    goto LABEL_149;
  }

  swift_unknownObjectRelease();

LABEL_154:
  if (*(v1 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_outputItem))
  {
    OUTLINED_FUNCTION_24_10();
    v141 = swift_retain_n();
    sub_274595A48(v141);
    swift_endAccess();
  }

  v142 = *(v4 + v1);

  v143 = sub_274593C98(v187, v142);

  v4 = &unk_280952000;
  if ((v143 & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    OUTLINED_FUNCTION_18_12();

    if (v212)
    {
      sub_27443C9D4(v204, v207, v208, v209, v210, v211, v212);
    }

    else
    {

      objc_opt_self();
      OUTLINED_FUNCTION_0_10();
      if (swift_dynamicCastObjCClass())
      {
        v1 = *v189;
        v204 = MEMORY[0x277D84F90];
        v144 = sub_274453594(*v189);
        swift_unknownObjectRetain();
        v145 = 0;
        while (v144 != v145)
        {
          if ((v1 & 0xC000000000000001) != 0)
          {
            MEMORY[0x277C58B20](v145, v1);
          }

          else
          {
            if (v145 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_201;
            }
          }

          if (__OFADD__(v145, 1))
          {
            goto LABEL_200;
          }

          type metadata accessor for WFEditorActionItem();
          v146 = swift_dynamicCastClass();
          if (v146)
          {
            v4 = v146;
            MEMORY[0x277C57F30]();
            OUTLINED_FUNCTION_10_27();
            if (v69)
            {
              OUTLINED_FUNCTION_6_22(v147);
              sub_27463B85C();
            }

            sub_27463B8AC();
            v181 = v204;
            ++v145;
          }

          else
          {

            ++v145;
          }
        }

        v1 = sub_274453594(v181);
        v148 = 0;
        v4 = (v181 & 0xC000000000000001);
        while (1)
        {
          if (v1 == v148)
          {
            swift_unknownObjectRelease_n();

            v1 = v199;
            v102 = v189;
            v4 = &unk_280952000;
            goto LABEL_187;
          }

          if (v4)
          {
            v149 = MEMORY[0x277C58B20](v148, v181);
          }

          else
          {
            if (v148 >= *((v181 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_205;
            }

            v149 = *(v181 + 8 * v148 + 32);
          }

          if (__OFADD__(v148, 1))
          {
            goto LABEL_204;
          }

          sub_274412734(0, &qword_28094C5E0);
          v150 = *(*(v149 + 32) + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action);
          v151 = sub_27463BF7C();

          if (v151)
          {
            break;
          }

          ++v148;
        }

        swift_unknownObjectRelease_n();
        v4 = &unk_280952000;
        v1 = v199;
        *&v199[OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_activeVariablePickingAnchoredAction] = v149;
      }

      else
      {
        swift_unknownObjectRelease();
      }

      v102 = v189;
    }
  }

LABEL_187:
  v162 = *v102;
  v163 = OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_items;
  v164 = *(v1 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_items);

  sub_2744F5CC8(v162, v164, v165, v166, v167, v168, v169, v170, v176, v177, v178);
  v172 = v171;

  if ((v172 & 1) == 0)
  {
    *(v1 + v163) = v162;

    v173 = sub_274589024();

    sub_274595CB8();

    v174 = sub_274453594(*(v1 + v163)) < 1;
    sub_27458E110(v174);
  }

  v175 = v4[159];
  if (*(v1 + v175))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    OUTLINED_FUNCTION_18_12();

    if (v212)
    {
      sub_27443C9D4(v204, v207, v208, v209, v210, v211, v212);
      *(v1 + v175) = 0;
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_27458C778(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952618);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v45 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952620);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v45 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952628);
  v55 = *(v11 - 8);
  v56 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v45 - v12;
  v14 = OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_actionObservationCancellables;
  swift_beginAccess();
  if (!*(*(a2 + v14) + 16) || (, sub_274534D60(), v16 = v15, result = , (v16 & 1) == 0))
  {
    v18 = sub_274453594(MEMORY[0x277D84F90]);
    v53 = v5;
    v54 = v4;
    v51 = v7;
    v52 = v14;
    if (v18)
    {
      sub_274573FD0(MEMORY[0x277D84F90]);
    }

    else
    {
      v19 = MEMORY[0x277D84FA0];
    }

    v60 = v19;
    v49 = *(a1 + 32);
    v57 = a1;
    v58[0] = *(v49 + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_onChange);
    sub_274412734(0, &qword_28094AF90);

    v20 = sub_27463BCEC();
    v59 = v20;
    v48 = sub_27463BCDC();
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952630);
    v47 = MEMORY[0x277CBCE20];
    sub_274458A14(&qword_280952638, &qword_280952630);
    v46 = sub_274594E5C(&qword_280952640, &qword_28094AF90);
    sub_274638FDC();
    sub_274415174(v10, &qword_280952620);

    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = swift_allocObject();
    v23 = v57;
    *(v22 + 16) = v21;
    *(v22 + 24) = v23;
    sub_274458A14(&qword_280952648, &qword_280952628);

    v24 = v56;
    v25 = sub_274638FFC();

    (*(v55 + 8))(v13, v24);
    v50 = v25;

    sub_2745219BC(v58, v25, v26, v27, v28, v29, v30, v31, v45, v46, v47);

    v58[0] = *(v49 + OBJC_IVAR____TtC14WorkflowEditor19ActionCellViewModel_onParameterStateChange);

    v32 = sub_27463BCEC();
    v59 = v32;
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094AF80);
    sub_274458A14(&qword_280951E60, &unk_28094AF80);
    v33 = v51;
    sub_274638FDC();
    sub_274415174(v10, &qword_280952620);

    v34 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v35 = swift_allocObject();
    *(v35 + 16) = sub_274594F00;
    *(v35 + 24) = v34;
    sub_274458A14(&unk_280952650, &qword_280952618);
    v36 = v54;
    v37 = sub_274638FFC();

    (*(v53 + 8))(v33, v36);

    sub_2745219BC(v58, v37, v38, v39, v40, v41, v42, v43, v45, v46, v47);

    v44 = v52;
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v59 = *(a2 + v44);
    sub_2745FBE8C();
    *(a2 + v44) = v59;
    swift_endAccess();
  }

  return result;
}

void sub_27458CDD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = sub_274589024();
    v7 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_visibleCellsForItem;
    swift_beginAccess();
    v8 = sub_27452F0D0(a3, *&v6[v7]);
    swift_endAccess();

    if (v8)
    {
      type metadata accessor for WFEditorActionCell();
      if (swift_dynamicCastClass())
      {
        sub_274592234();
        v9 = *&v5[OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController____lazy_storage___editorView];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C820);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_274648560;
        *(inited + 32) = a3;
        v11 = v9;

        sub_274595CB8();

        swift_setDeallocating();
        sub_2744EBB98();
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_27458CF34()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_274591854();
  }
}

uint64_t sub_27458CF88(void *a1, void *a2)
{
  type metadata accessor for ActionCellViewModel();
  v4 = sub_27444A2FC(a1);
  sub_27444974C([a2 undoManager]);
  type metadata accessor for WFEditorActionItem();
  swift_allocObject();
  v5 = v4;
  v6 = a2;
  v7 = sub_274591F38(v5, a2);
  sub_27458C778(v7, v6);

  return v7;
}

uint64_t sub_27458D040(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A508);
    v1 = sub_27463C61C();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v4 = v1;

  sub_274594028(v2, 1, &v4);

  return v4;
}

void sub_27458D0F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = sub_274453594(a1);
  v32 = a4;
  v33 = a2;
  if (v12)
  {
    v13 = v12;
    v38 = MEMORY[0x277D84F90];
    sub_27445128C();
    if (v13 < 0)
    {
      __break(1u);
      return;
    }

    v14 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x277C58B20](v14, a1);
      }

      else
      {
        v15 = *(a1 + 8 * v14 + 32);
        swift_unknownObjectRetain();
      }

      v16 = [v15 identifier];
      v17 = sub_27463B6AC();
      v19 = v18;
      swift_unknownObjectRelease();

      v20 = *(v38 + 16);
      if (v20 >= *(v38 + 24) >> 1)
      {
        sub_27445128C();
      }

      ++v14;
      *(v38 + 16) = v20 + 1;
      v21 = v38 + 16 * v20;
      *(v21 + 32) = v17;
      *(v21 + 40) = v19;
    }

    while (v13 != v14);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D110);
  sub_274458A14(&unk_28094D1D0, &qword_28094D110);
  v22 = sub_27463B58C();
  v24 = v23;

  sub_274599D28();
  v25 = sub_27463C66C();
  v27 = v26;
  v39 = v24;

  MEMORY[0x277C57EA0](v25, v27);

  v28 = v22;
  if (sub_27452F16C(a3, a6))
  {
  }

  else
  {
    v29 = *(a7 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_editorOptions);
    type metadata accessor for WFEditorActionOutputItem();
    swift_allocObject();
    sub_27459299C(a1, v33, v32, a5, v28, v39, v29);

    v30 = v29;
    swift_unknownObjectRetain();
  }

  swift_beginAccess();

  sub_2745FB8A0();
  swift_endAccess();
  v31 = swift_beginAccess();
  MEMORY[0x277C57F30](v31);
  sub_2745C4440(*((*(a8 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_27463B8AC();
  swift_endAccess();
}

uint64_t sub_27458D458()
{
  if (*(v0 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_outputItem))
  {
    return sub_27443A580();
  }

  return result;
}

void sub_27458D494(id a1)
{
  v2 = v1;
  sub_274591854();
  v4 = OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_outputItem;
  v5 = *(v1 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_outputItem);
  if (v5)
  {
    if (!a1)
    {
      goto LABEL_9;
    }

    v6 = *(v5 + 32);
    sub_274412734(0, &unk_280950440);
    v7 = v6;
    a1 = a1;
    v8 = sub_27463BF7C();

    if (v8)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  v9 = a1;
  if ([v9 numberOfItems] >= 1)
  {
    type metadata accessor for WFEditorWorkflowOutputItem();
    *(OUTLINED_FUNCTION_44() + 32) = v9;
    v10 = WFEditorItem.init(drawsShadow:drawsRim:showsConnector:)(1, 1, 0);
    goto LABEL_10;
  }

LABEL_9:
  v10 = 0;
LABEL_10:
  *(v2 + v4) = v10;

  sub_27458AFD8();
  v11 = *(v2 + v4);
  if (v11)
  {

    v12 = sub_274589024();
    sub_2745995F0(v11);
  }
}

void sub_27458D604(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2746381FC();
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_3_0();
  v9 = (v8 - v7);
  type metadata accessor for WFEditorActionItem();
  OUTLINED_FUNCTION_0_10();
  v10 = swift_dynamicCastClass();
  if (v10)
  {
    v11 = v10;
    swift_unknownObjectRetain();
    v12 = [v2 traitCollection];
    v13 = [v12 horizontalSizeClass];

    if (v13 == 2)
    {
      sub_27463851C();
      sub_27463850C();
      v14 = *(*(v11 + 32) + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action);
      sub_2746384FC();

      OUTLINED_FUNCTION_5();
      v15 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v16 = OUTLINED_FUNCTION_44();
      v16[2] = v15;
      v16[3] = a1;
      v16[4] = a2;
      v17 = objc_allocWithZone(type metadata accessor for WFActionDetailsViewController());
      swift_unknownObjectRetain();
      WFActionDetailsViewController.init(action:showCloseButton:appendActionHandler:)(v9, 0, sub_274594E50, v16);
      v19 = v18;
      [v18 setModalPresentationStyle_];
      v20 = [v19 popoverPresentationController];
      if (v20)
      {
        v21 = v20;
        v22 = sub_274589024();
        v23 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_visibleCellsForItem;
        swift_beginAccess();
        v24 = *&v22[v23];
        swift_unknownObjectRetain();
        v25 = sub_27452F0D0(v11, v24);
        swift_endAccess();

        swift_unknownObjectRelease();
        if (v25)
        {
          type metadata accessor for WFEditorActionCell();
          OUTLINED_FUNCTION_21_2();
          v26 = swift_dynamicCastClass();
          if (v26)
          {
            v27 = v26;
            v28 = v25;
            [v21 setSourceView_];
            [v27 bounds];
            OUTLINED_FUNCTION_6_6();

            v29 = OUTLINED_FUNCTION_7_16();
            [v30 v31];
          }

          v21 = v25;
        }
      }

      [v3 presentViewController:v19 animated:1 completion:0];
      swift_unknownObjectRelease();
    }

    else
    {
      v32 = *(*(v11 + 32) + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action);
      sub_27443E144(v32);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_27463C38C();
    MEMORY[0x277C57EA0](0xD000000000000012, 0x800000027468E1B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809525F8);
    sub_27463C4BC();
    MEMORY[0x277C57EA0](0xD00000000000001DLL, 0x800000027468E1D0);
    OUTLINED_FUNCTION_25_15();
    __break(1u);
  }
}

void sub_27458D9FC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_workflow);

    v6 = [v5 actions];
    sub_274412734(0, &qword_28094E040);
    v7 = sub_27463B81C();

    v8 = sub_274453594(v7);

    v9 = *(*(a2 + 32) + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action);
    objc_opt_self();
    if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()))
    {
      v10 = [v9 copyForDuplicating];
    }

    else
    {
      v22 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F500);
      v23 = sub_27463B4DC();
      v10 = sub_2745942EC(v23, v22);
    }

    v11 = v10;
    swift_beginAccess();
    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v13 = v12;
      v14 = *(v12 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_editorOptions);

      v15 = &v14[OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions_editorDelegate];
      swift_beginAccess();
      v16 = swift_unknownObjectWeakLoadStrong();
      v17 = *(v15 + 1);

      if (v16)
      {
        ObjectType = swift_getObjectType();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C820);
        v19 = swift_allocObject();
        *(v19 + 16) = xmmword_274648560;
        *(v19 + 32) = v11;
        v20 = *(v17 + 32);
        v21 = v11;
        v20(v19, v8, ObjectType, v17);

        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_27458DC90(char a1)
{
  v2 = v1;
  v3 = MEMORY[0x277D84FA0];
  v47 = MEMORY[0x277D84FA0];
  v37 = OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_actions;
  v4 = *(v1 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_actions);
  v5 = sub_274453594(v4);
  v39 = v1;
  if (v5)
  {
    v6 = v5;
    v7 = v4 & 0xC000000000000001;
    v43 = v4 & 0xFFFFFFFFFFFFFF8;
    v44 = OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_workflow;
    v42 = v4 + 32;

    v8 = 0;
    v40 = v4 & 0xC000000000000001;
    v41 = v6;
    v38 = v4;
    while (1)
    {
      if (v7)
      {
        v9 = MEMORY[0x277C58B20](v8, v4);
      }

      else
      {
        if (v8 >= *(v43 + 16))
        {
          goto LABEL_52;
        }

        v9 = *(v42 + 8 * v8);
      }

      v10 = __OFADD__(v8++, 1);
      if (v10)
      {
        __break(1u);
        goto LABEL_51;
      }

      v11 = *(v9 + 32);
      v12 = sub_274449E74();

      if (v12)
      {
        v13 = [*(v2 + v44) actionTree];
        v14 = [v13 actionsInControlFlowBranch_];

        if (v14)
        {
          break;
        }
      }

LABEL_28:
      if (v8 == v6)
      {

        v3 = v47;
        goto LABEL_30;
      }
    }

    sub_274412734(0, &qword_28094E040);
    OUTLINED_FUNCTION_0_10();
    v15 = sub_27463B81C();

    if (v15 >> 62)
    {
      v16 = sub_27463C27C();
      if (v16)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16)
      {
LABEL_12:
        v46 = MEMORY[0x277D84F90];
        sub_2744512AC(0, v16 & ~(v16 >> 63), 0);
        if (v16 < 0)
        {
          goto LABEL_54;
        }

        v17 = 0;
        v18 = v46;
        do
        {
          if ((v15 & 0xC000000000000001) != 0)
          {
            v19 = MEMORY[0x277C58B20](v17, v15);
          }

          else
          {
            v19 = *(v15 + 8 * v17 + 32);
          }

          v20 = v19;

          v22 = *(v46 + 16);
          v21 = *(v46 + 24);
          if (v22 >= v21 >> 1)
          {
            sub_2744512AC((v21 > 1), v22 + 1, 1);
          }

          ++v17;
          *(v46 + 16) = v22 + 1;
          *(v46 + 8 * v22 + 32) = v20;
        }

        while (v16 != v17);

        v4 = v38;
        v2 = v39;
        goto LABEL_24;
      }
    }

    v18 = MEMORY[0x277D84F90];
LABEL_24:
    v23 = *(v18 + 16);
    v7 = v40;
    if (v23)
    {
      v24 = 32;
      do
      {
        sub_27452179C();
        v24 += 8;
        --v23;
      }

      while (v23);
    }

    v6 = v41;
    goto LABEL_28;
  }

LABEL_30:
  v25 = *(v2 + v37);
  v26 = sub_274453594(v25);
  if (v26)
  {
    v27 = v26;

    v28 = 0;
    while (1)
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x277C58B20](v28, v25);
      }

      else
      {
        if (v28 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_53;
        }

        v29 = *(v25 + 32 + 8 * v28);
      }

      v10 = __OFADD__(v28++, 1);
      if (v10)
      {
        break;
      }

      if (*(v3 + 16))
      {
        v30 = *(*(v29 + 32) + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action);
        sub_27463C74C();
        MEMORY[0x277C58EA0](v30);
        v31 = sub_27463C7AC();
        v32 = ~(-1 << *(v3 + 32));
        do
        {
          v33 = v31 & v32;
          v34 = (1 << (v31 & v32)) & *(v3 + 56 + (((v31 & v32) >> 3) & 0xFFFFFFFFFFFFFF8));
          v35 = v34 != 0;
          if (!v34)
          {
            break;
          }

          v31 = v33 + 1;
        }

        while (*(*(v3 + 48) + 8 * v33) != v30);
      }

      else
      {
        v35 = 0;
      }

      *(v29 + 25) = v35;

      if (v28 == v27)
      {

        goto LABEL_45;
      }
    }

LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
  }

  else
  {
LABEL_45:

    if (a1)
    {
      v45 = sub_274589024();
      OUTLINED_FUNCTION_35_6();
      sub_274595CB8();
    }
  }
}

void sub_27458E110(char a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;
  objc_allocWithZone(MEMORY[0x277D75D40]);
  v4 = v1;
  v5 = sub_2745FB6C4(sub_274594E44, v3, 0.8, 1.0);
  v7 = v5;
  v6 = 0.2;
  if ((a1 & 1) == 0)
  {
    v6 = 0.0;
  }

  [v5 startAnimationAfterDelay_];
}

void sub_27458E1D8(uint64_t a1, char a2)
{
  v4 = sub_274588FB0();
  [v4 setHidden_];

  v5 = OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController____lazy_storage___emptyStateView;
  v6 = 1.0;
  if ((a2 & 1) == 0)
  {
    v6 = 0.0;
  }

  [*(a1 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController____lazy_storage___emptyStateView) setAlpha_];
  v10 = [*(a1 + v5) layer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280952A40);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_274648570;
  v8 = sub_274412734(0, &qword_2809525F0);
  v9 = sub_274412F10();
  *(v7 + 56) = v8;
  *(v7 + 32) = v9;
  sub_2745A85D0(v7, v10);
}

void sub_27458E300(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_actions);
  v4 = sub_274453594(v3);

  for (i = 0; v4 != i; ++i)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x277C58B20](i, v3);
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v6 = *(v3 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      return;
    }

    if (*(*(v6 + 32) + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action) == *a1)
    {

      sub_274589024();
      sub_2745995F0(v6);

      OUTLINED_FUNCTION_21_10();

      return;
    }
  }

  OUTLINED_FUNCTION_21_10();
}

void sub_27458E448()
{
  OUTLINED_FUNCTION_30_10();
  sub_27463B1EC();
  OUTLINED_FUNCTION_1();
  v83 = v3;
  v84 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_0();
  v82 = v5 - v4;
  sub_27463B21C();
  OUTLINED_FUNCTION_1();
  v86 = v6;
  v87 = v7;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_0();
  v85 = v9 - v8;
  v80 = sub_27463B23C();
  OUTLINED_FUNCTION_1();
  v77 = v10;
  MEMORY[0x28223BE20](v11);
  v75 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v79 = &v73 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809525E0);
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v73 - v19;
  v76 = *v1;
  LODWORD(v78) = *(v1 + 48);
  v81 = v0;
  v21 = sub_274589024();
  v22 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_visibleCells;
  OUTLINED_FUNCTION_16_12();
  swift_beginAccess();
  (*(v17 + 16))(v20, &v21[v22], v15);

  v23 = sub_27463831C();
  (*(v17 + 8))(v20, v15);
  v24 = MEMORY[0x277D84F90];
  aBlock = MEMORY[0x277D84F90];
  v25 = sub_274453594(v23);
  v26 = 0;
  v27 = v24;
  v28 = v24;
  while (v25 != v26)
  {
    if ((v23 & 0xC000000000000001) != 0)
    {
      v29 = MEMORY[0x277C58B20](v26, v23);
    }

    else
    {
      if (v26 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v29 = *(v23 + 8 * v26 + 32);
    }

    v30 = v29;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return;
    }

    type metadata accessor for WFEditorActionCell();
    OUTLINED_FUNCTION_0_10();
    if (swift_dynamicCastClass())
    {
      MEMORY[0x277C57F30]();
      OUTLINED_FUNCTION_10_27();
      if (v32)
      {
        OUTLINED_FUNCTION_6_22(v31);
        sub_27463B85C();
      }

      sub_27463B8AC();
      v27 = aBlock;
      ++v26;
      v24 = v28;
    }

    else
    {

      ++v26;
      v24 = v28;
    }
  }

  v33 = sub_274453594(v27);
  v34 = v87;
  v35 = v85;
  if (v33)
  {
    v36 = v33;
    if (v33 < 1)
    {
      goto LABEL_26;
    }

    for (i = 0; i != v36; ++i)
    {
      if ((v27 & 0xC000000000000001) != 0)
      {
        v38 = MEMORY[0x277C58B20](i, v27);
      }

      else
      {
        v38 = *(v27 + 8 * i + 32);
      }

      v39 = v38;
      sub_274592234();
    }
  }

  v40 = "VariableProviderKey";
  if (v78 == 1)
  {
    v41 = v76;
    v92 = v76;
    v93 = 1;
    v94 = 0;
    v95 = 0;
    v96 = 1;
    v42 = v81;
    sub_27458E300(&v92);
    sub_274412734(0, &qword_28094AF90);
    v74 = sub_27463BCEC();
    v43 = v75;
    sub_27463B22C();
    sub_27463B28C();
    v78 = *(v77 + 8);
    v78(v43, v80);
    OUTLINED_FUNCTION_39();
    v44 = swift_allocObject();
    *(v44 + 16) = v42;
    *(v44 + 24) = v41;
    OUTLINED_FUNCTION_12_18(v44);
    v89 = 1107296256;
    OUTLINED_FUNCTION_7_19();
    v90 = v45;
    v91 = &block_descriptor_335;
    v46 = _Block_copy(&aBlock);
    v47 = v42;
    v48 = v41;

    sub_27463B20C();
    aBlock = v24;
    OUTLINED_FUNCTION_4_31();
    sub_274594370(v49, 255, v50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094AFA0);
    OUTLINED_FUNCTION_19_5();
    v51 = v42;
    sub_274458A14(v52, v53);
    v54 = v82;
    v24 = v28;
    v55 = v35;
    v56 = v84;
    v40 = "VariableProviderKey";
    sub_27463C1EC();
    v57 = v79;
    v58 = v74;
    MEMORY[0x277C58400](v79, v55, v54, v46);
    _Block_release(v46);

    v59 = v83;
    (*(v83 + 8))(v54, v56);
    v60 = v87;
    (*(v87 + 8))(v55, v86);
    v78(v57, v80);
    v61 = v60;
  }

  else
  {
    v51 = v81;
    v54 = v82;
    *(v81 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_isFocusedOnRevealedAction) = 0;
    v55 = v35;
    v59 = v83;
    v56 = v84;
    v61 = v34;
  }

  sub_274412734(0, &qword_28094AF90);
  v85 = sub_27463BCEC();
  OUTLINED_FUNCTION_5();
  v62 = swift_allocObject();
  *(v62 + 16) = v51;
  OUTLINED_FUNCTION_12_18(v62);
  v89 = *(v40 + 69);
  OUTLINED_FUNCTION_7_19();
  v90 = v63;
  v91 = &block_descriptor_329;
  v64 = _Block_copy(&aBlock);
  v65 = v51;
  v66 = v64;
  v67 = v65;

  sub_27463B20C();
  aBlock = v24;
  OUTLINED_FUNCTION_4_31();
  sub_274594370(v68, 255, v69);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094AFA0);
  OUTLINED_FUNCTION_19_5();
  sub_274458A14(v70, v71);
  sub_27463C1EC();
  v72 = v85;
  MEMORY[0x277C58440](0, v55, v54, v66);
  _Block_release(v66);

  (*(v59 + 8))(v54, v56);
  (*(v61 + 8))(v55, v86);
}

uint64_t sub_27458EC14(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_actions);
  v5 = sub_274453594(v4);

  for (i = 0; ; ++i)
  {
    if (v5 == i)
    {

      return sub_27443CA58();
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x277C58B20](i, v4);
      v8 = result;
    }

    else
    {
      if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v8 = *(v4 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    if (*(*(v8 + 32) + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action) == a2)
    {

      v9 = sub_274589024();
      v10 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_visibleCellsForItem;
      swift_beginAccess();
      v11 = *&v9[v10];

      v13 = sub_27452F0D0(v12, v11);

      if (v13)
      {
        swift_endAccess();

        [*(a1 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController____lazy_storage___editorView) bringSubviewToFront_];
        sub_2745885D0(v13, 1);

        *(a1 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_isFocusedOnRevealedAction) = 1;
        return result;
      }

      swift_endAccess();

      return sub_27443CA58();
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

void sub_27458EDF0(void *a1)
{
  v5 = v1;
  if (a1)
  {
    v6 = a1;
    v7 = [v6 anchor];
    v8 = [v7 variableProvider];

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v81 = v6;
      v82 = v5;
      v9 = sub_274589024();
      v5 = sub_274599B58();

      v10 = MEMORY[0x277D84F90];
      aBlock = MEMORY[0x277D84F90];
      v11 = sub_274453594(v5);
      v12 = 0;
      while (v11 != v12)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x277C58B20](v12, v5);
        }

        else
        {
          if (v12 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_45;
          }

          v4 = *(v5 + 8 * v12 + 32);
        }

        v3 = (v12 + 1);
        if (__OFADD__(v12, 1))
        {
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          v42 = v2;
          v25 = &selRef_dropTargetUpdated;
LABEL_47:

LABEL_53:
          [v4 dismissViewControllerAnimated:0 completion:{0, v80}];
          v27 = &selRef_removeObserver_name_object_;
          v24 = 0x1FB6F1000;
          goto LABEL_54;
        }

        type metadata accessor for WFEditorActionItem();
        v13 = swift_dynamicCastClass();
        if (v13)
        {
          v2 = v13;
          MEMORY[0x277C57F30]();
          if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_27463B85C();
          }

          sub_27463B8AC();
          v10 = aBlock;
          ++v12;
        }

        else
        {

          ++v12;
        }
      }

      v80 = v8;

      v11 = sub_274453594(v10);
      v4 = 0;
      v8 = (v10 & 0xC000000000000001);
      v5 = v10 & 0xFFFFFFFFFFFFFF8;
      v3 = &OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action;
      while (1)
      {
        if (v11 == v4)
        {

          swift_unknownObjectRelease();

          v5 = v82;
          goto LABEL_33;
        }

        if (v8)
        {
          v14 = MEMORY[0x277C58B20](v4, v10);
        }

        else
        {
          if (v4 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_49;
          }

          v14 = *(v10 + 8 * v4 + 32);
        }

        if (__OFADD__(v4, 1))
        {
          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        sub_274412734(0, &qword_28094C5E0);
        v15 = *(*(v14 + 32) + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action);
        v12 = sub_27463BF7C();

        if (v12)
        {
          break;
        }

        ++v4;
      }

      v5 = v82;
      v16 = *&v82[OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController____lazy_storage___editorView];
      v17 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_visibleCellsForItem;
      swift_beginAccess();
      v18 = *&v16[v17];

      v19 = v16;
      v3 = sub_27452F0D0(v14, v18);

      if (!v3)
      {
        swift_endAccess();

        swift_unknownObjectRelease();

        goto LABEL_33;
      }

      swift_endAccess();

      v20 = [v82 view];
      if (!v20)
      {
        __break(1u);
        return;
      }

      v21 = v20;
      [v20 endEditing_];

      v22 = *&v82[OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_editorOptions];
      v8 = v81;
      v10 = v22;
      v23 = [v82 presentedViewController];
      v24 = &selRef_tagPickerDidCancel_;
      v25 = &selRef_dropTargetUpdated;
      v26 = &selRef_dropTargetUpdated;
      v27 = &selRef_removeObserver_name_object_;
      if (!v23)
      {
        goto LABEL_55;
      }

      v11 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809525A8);
      v28 = swift_dynamicCastClass();
      if (v28)
      {
        v4 = v28;
        v29 = [v82 traitCollection];
        v30 = [v29 horizontalSizeClass];

        if (v30 == 1)
        {
LABEL_31:

          aBlock = v10;
          v84 = v8;
          v31 = v8;
          v32 = v10;
          sub_274639CEC();

          swift_unknownObjectRelease();
          return;
        }

        v40 = [v4 popoverPresentationController];
        v2 = [v40 sourceView];

        v41 = [v8 anchor];
        v42 = [v41 sourceView];

        if (v2)
        {
          if (!v42)
          {
            goto LABEL_46;
          }

          sub_274412734(0, &qword_28094A4D8);
          OUTLINED_FUNCTION_13_5();
          v43 = sub_27463BF7C();

          v25 = &selRef_dropTargetUpdated;
          if ((v43 & 1) == 0)
          {
            goto LABEL_53;
          }
        }

        else
        {
          v25 = &selRef_dropTargetUpdated;
          if (v42)
          {
            goto LABEL_47;
          }
        }

        v44 = [v4 popoverPresentationController];
        v12 = v44;
        if (v44)
        {
          [v44 sourceRect];
          OUTLINED_FUNCTION_6_6();

          v45 = &selRef_maximumDate;
LABEL_51:
          v46 = [v8 v45[239]];
          [v46 sourceRect];
          v48 = v47;
          v50 = v49;
          v52 = v51;
          v54 = v53;

          v25 = &selRef_dropTargetUpdated;
          if (v12)
          {
            v89.origin.x = OUTLINED_FUNCTION_7_16();
            v90.origin.x = v48;
            v90.origin.y = v50;
            v90.size.width = v52;
            v90.size.height = v54;
            if (CGRectEqualToRect(v89, v90))
            {
              goto LABEL_31;
            }
          }

          goto LABEL_53;
        }

LABEL_50:
        v45 = &selRef_maximumDate;
        goto LABEL_51;
      }

LABEL_54:

      v26 = &selRef_dropTargetUpdated;
LABEL_55:
      aBlock = v10;
      v84 = v8;
      v55 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809525A8));
      v56 = v8;
      v57 = v10;
      v58 = sub_274639CDC();
      v59 = v24;
      v60 = v58;
      v61 = [v5 (v59 + 1016)];
      v62 = [v61 v25[83]];

      v63 = v60;
      v64 = v63;
      if (v62 == 2)
      {
        [v63 setModalPresentationStyle_];
        v65 = [v64 v26[428]];

        if (v65)
        {
          v66 = [v56 anchor];
          v67 = [v66 sourceView];

          if (!v67)
          {
            v67 = v3;
          }

          [v65 setSourceView_];

          v68 = [v56 anchor];
          [v68 v27[420]];
          OUTLINED_FUNCTION_6_6();

          v69 = OUTLINED_FUNCTION_7_16();
          [v70 v71];
          goto LABEL_62;
        }
      }

      else
      {
        [v63 setModalPresentationStyle_];
        v65 = [v64 sheetPresentationController];

        if (v65)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C820);
          v72 = OUTLINED_FUNCTION_40_6();
          *(v72 + 16) = xmmword_27464AEE0;
          v73 = objc_opt_self();
          *(v72 + 32) = [v73 mediumDetent];
          *(v72 + 40) = [v73 largeDetent];
          sub_274412734(0, &unk_2809525D0);
          OUTLINED_FUNCTION_0_10();
          v74 = sub_27463B7FC();

          [v65 setDetents_];

          [v65 setPrefersGrabberVisible_];
          [v65 setLargestUndimmedDetentIdentifier_];
LABEL_62:
        }
      }

      OUTLINED_FUNCTION_5();
      v75 = swift_allocObject();
      swift_unknownObjectWeakInit();
      OUTLINED_FUNCTION_39();
      v76 = swift_allocObject();
      *(v76 + 16) = v64;
      *(v76 + 24) = v75;
      v87 = sub_274594E10;
      v88 = v76;
      aBlock = MEMORY[0x277D85DD0];
      v84 = 1107296256;
      OUTLINED_FUNCTION_7_19();
      v85 = v77;
      v86 = &block_descriptor_323;
      v78 = _Block_copy(&aBlock);
      v79 = v64;
      OUTLINED_FUNCTION_13_5();

      [v5 presentViewController:v64 animated:1 completion:v78];
      _Block_release(v78);
      swift_unknownObjectRelease();

      return;
    }

    swift_unknownObjectRelease();
  }

LABEL_33:
  v33 = [v5 presentedViewController];
  if (v33)
  {
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809525A8);
    OUTLINED_FUNCTION_21_2();
    v35 = swift_dynamicCastClass();

    if (v35)
    {
      v36 = [v5 presentedViewController];
      if (v36)
      {
        v37 = v36;
        OUTLINED_FUNCTION_35_6();
        [v38 v39];
      }
    }
  }
}

void sub_27458F7DC(void *a1)
{
  v1 = [a1 presentationController];
  if (v1)
  {
    v2 = v1;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    [v2 setDelegate_];
  }
}

void sub_27458F85C()
{
  OUTLINED_FUNCTION_38_6();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  if (sub_27463B72C() >= 1)
  {
    v6 = OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_parameterEditingHintView;
    v7 = *&v1[OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_parameterEditingHintView];
    v40 = v5;
    v41 = v3;
    if (v7)
    {

      v8 = v7;
      sub_2746395AC();
    }

    else
    {
      v13 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809525C0));
      OUTLINED_FUNCTION_29_11();

      v14 = sub_27463959C();
      v15 = *&v1[v6];
      *&v1[v6] = v14;
    }

    v16 = *&v1[v6];
    if (!v16)
    {
      goto LABEL_15;
    }

    v17 = v16;
    v18 = [v17 superview];
    if (v18)
    {

      [v17 invalidateIntrinsicContentSize];
LABEL_15:
      OUTLINED_FUNCTION_28_14();
      return;
    }

    [v17 setAlpha_];
    [v17 setTranslatesAutoresizingMaskIntoConstraints_];
    v19 = [v1 view];
    if (v19)
    {
      v20 = v19;
      [v19 addSubview_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C820);
      v21 = OUTLINED_FUNCTION_40_6();
      *(v21 + 16) = xmmword_27464AEE0;
      v22 = [v17 centerXAnchor];
      v23 = [v1 view];
      if (v23)
      {
        v24 = v23;
        v25 = [v23 centerXAnchor];

        v26 = [v22 constraintEqualToAnchor_];
        *(v21 + 32) = v26;
        v27 = [v17 bottomAnchor];

        v28 = [v1 view];
        if (v28)
        {
          v29 = v28;
          v30 = objc_opt_self();
          v31 = [v29 safeAreaLayoutGuide];

          v32 = [v31 bottomAnchor];
          v33 = sub_274589024();
          [v33 contentInset];
          v35 = v34;

          v36 = [v27 constraintEqualToAnchor:v32 constant:-(v35 + 20.0)];
          *(v21 + 40) = v36;
          sub_274412734(0, &qword_28094E990);
          OUTLINED_FUNCTION_19_4();
          v37 = sub_27463B7FC();

          [v30 activateConstraints_];

          OUTLINED_FUNCTION_5();
          v38 = swift_allocObject();
          *(v38 + 16) = v17;
          v39 = v17;
          sub_27458FCAC(sub_2744D07E8, v38, CGSizeMake, 0, 0.1);

          goto LABEL_15;
        }

        goto LABEL_18;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_5();
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  OUTLINED_FUNCTION_5();
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  v11 = v1;
  sub_27458FCAC(sub_274594E00, v9, sub_274594E08, v10, 0.0);

  OUTLINED_FUNCTION_28_14();
}

void sub_27458FCAC(uint64_t (*a1)(), uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v10 = objc_opt_self();
  v18 = a1;
  v19 = a2;
  v14 = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_27443E0E8;
  v17 = &block_descriptor_308;
  v11 = _Block_copy(&v14);

  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  v18 = sub_2744830C4;
  v19 = v12;
  v14 = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_2745AA044;
  v17 = &block_descriptor_314;
  v13 = _Block_copy(&v14);

  [v10 animateWithDuration:0 delay:v11 options:v13 animations:0.2 completion:a5];
  _Block_release(v13);
  _Block_release(v11);
}

id sub_27458FE34(uint64_t a1)
{
  result = *(a1 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_parameterEditingHintView);
  if (result)
  {
    return [result setAlpha_];
  }

  return result;
}

void sub_27458FE58(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_parameterEditingHintView;
  v3 = *(a1 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_parameterEditingHintView);
  if (v3)
  {
    [v3 removeFromSuperview];
    v3 = *(a1 + v2);
  }

  *(a1 + v2) = 0;
}

uint64_t sub_27458FEAC(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_27_11();
  sub_274638FAC();

  if (!v11)
  {
    goto LABEL_5;
  }

  sub_27443C9D4(v5, v6, v7, v8, v9, v10, v11);
  v3 = *(v1 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_prefixItemCount);
  result = a1 - v3;
  if (__OFSUB__(a1, v3))
  {
    __break(1u);
LABEL_5:
    swift_unknownObjectRelease();

    result = OUTLINED_FUNCTION_26_11();
    __break(1u);
  }

  return result;
}

uint64_t sub_27458FFA0(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_27_11();
  sub_274638FAC();

  if (!v11)
  {
    goto LABEL_5;
  }

  sub_27443C9D4(v5, v6, v7, v8, v9, v10, v11);
  v3 = *(v1 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_prefixItemCount);
  result = a1 + v3;
  if (__OFADD__(a1, v3))
  {
    __break(1u);
LABEL_5:
    swift_unknownObjectRelease();

    result = OUTLINED_FUNCTION_26_11();
    __break(1u);
  }

  return result;
}

void *sub_274590094(uint64_t a1)
{
  type metadata accessor for WFEditorActionItem();
  OUTLINED_FUNCTION_0_10();
  if (!swift_dynamicCastClass())
  {
    type metadata accessor for WFEditorWorkflowOutputItem();
    OUTLINED_FUNCTION_0_10();
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = v6;

      if (!sub_274599BF8(0xD000000000000012, 0x800000027468E120))
      {
LABEL_9:
        v9 = objc_allocWithZone(type metadata accessor for WFEditorWorkflowOutputCell());
        v10 = OUTLINED_FUNCTION_13_5();
        return sub_2745926C8(v10);
      }

      OUTLINED_FUNCTION_30_10();
      type metadata accessor for WFEditorWorkflowOutputCell();
      OUTLINED_FUNCTION_19_4();
      v8 = swift_dynamicCastClass();
      if (!v8)
      {

        goto LABEL_9;
      }

LABEL_20:
      v2 = v8;

      v18 = 0xD000000000000011;
      sub_27459A464(v7);

      return v2;
    }

    type metadata accessor for WFEditorActionOutputItem();
    OUTLINED_FUNCTION_0_10();
    v14 = swift_dynamicCastClass();
    if (!v14)
    {
      type metadata accessor for WFEditorSystemInputProviderItem();
      OUTLINED_FUNCTION_0_10();
      v17 = swift_dynamicCastClass();
      if (!v17)
      {
        OUTLINED_FUNCTION_37_6();
        MEMORY[0x277C57EA0](0xD00000000000001FLL, 0x800000027468E0E0);
        type metadata accessor for WFEditorItem();
        sub_27463C4BC();
        result = OUTLINED_FUNCTION_25_15();
        __break(1u);
        return result;
      }

      v7 = v17;

      if (sub_274599BF8(0xD000000000000017, 0x800000027468DFA0))
      {
        OUTLINED_FUNCTION_30_10();
        type metadata accessor for WFEditorSystemInputProviderCell();
        OUTLINED_FUNCTION_19_4();
        v8 = swift_dynamicCastClass();
        if (v8)
        {
          goto LABEL_20;
        }
      }

      type metadata accessor for WFEditorSystemInputProviderCell();
      OUTLINED_FUNCTION_13_5();
      return sub_274590364();
    }

    v7 = v14;

    if (sub_274599BF8(0xD000000000000011, 0x800000027468E100))
    {
      OUTLINED_FUNCTION_30_10();
      type metadata accessor for WFEditorActionOutputsCell();
      OUTLINED_FUNCTION_19_4();
      v8 = swift_dynamicCastClass();
      if (v8)
      {
        goto LABEL_20;
      }
    }

    v15 = objc_allocWithZone(type metadata accessor for WFEditorActionOutputsCell());
    v16 = OUTLINED_FUNCTION_13_5();
    return sub_274592AB8(v16);
  }

  swift_unknownObjectWeakAssign();

  v2 = a1;
  v3 = sub_274599BF8(0x65436E6F69746341, 0xEA00000000006C6CLL);
  if (!v3)
  {
LABEL_11:
    v12 = objc_allocWithZone(type metadata accessor for WFEditorActionCell());
    v13 = OUTLINED_FUNCTION_13_5();
    return sub_274592180(v13);
  }

  v4 = v3;
  type metadata accessor for WFEditorActionCell();
  OUTLINED_FUNCTION_0_10();
  if (!swift_dynamicCastClass())
  {

    goto LABEL_11;
  }

  v5 = OUTLINED_FUNCTION_13_5();
  sub_27459211C(v5);
  return v2;
}

uint64_t sub_2745903B0()
{
  type metadata accessor for WFEditorSystemInputProviderItem();
  OUTLINED_FUNCTION_0_10();
  result = swift_dynamicCastClass();
  if (!result)
  {
    type metadata accessor for WFEditorActionItem();
    OUTLINED_FUNCTION_0_10();
    result = swift_dynamicCastClass();
    if (!result)
    {
      type metadata accessor for WFEditorWorkflowOutputItem();
      OUTLINED_FUNCTION_0_10();
      result = swift_dynamicCastClass();
      if (!result)
      {
        type metadata accessor for WFEditorActionOutputItem();
        OUTLINED_FUNCTION_0_10();
        result = swift_dynamicCastClass();
        if (!result)
        {
          OUTLINED_FUNCTION_37_6();
          MEMORY[0x277C57EA0](0xD00000000000001FLL, 0x800000027468E0E0);
          type metadata accessor for WFEditorItem();
          sub_27463C4BC();
          result = OUTLINED_FUNCTION_25_15();
          __break(1u);
        }
      }
    }
  }

  return result;
}

uint64_t sub_2745904B0()
{
  v3 = v0;
  v4 = MEMORY[0x277D84F90];
  if (sub_274453594(MEMORY[0x277D84F90]))
  {
    sub_2745741B0(MEMORY[0x277D84F90]);
  }

  else
  {
    v5 = MEMORY[0x277D84FA0];
  }

  v57 = v5;
  v6 = *(v3 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_actions);
  v56 = v4;
  v7 = sub_274453594(v6);
  v8 = (v6 & 0xC000000000000001);
  v9 = (v6 & 0xFFFFFFFFFFFFFF8);

  for (i = 0; ; ++i)
  {
    if (v7 == i)
    {

      v6 = v56;
      v7 = sub_274453594(v56);
      v9 = &unk_280952000;
      v8 = &unk_280952000;
      v2 = &OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action;
      if (!v7)
      {
        v1 = 0;
        goto LABEL_23;
      }

      v1 = *(v3 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_draggingActionTree);
      if (v1)
      {
        v4 = *(v3 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_draggingActionTree);
      }

      else
      {
        v4 = [*(v3 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_workflow) actionTree];
      }

      sub_2744535A4(0, (v6 & 0xC000000000000001) == 0);
      if ((v6 & 0xC000000000000001) != 0)
      {
        goto LABEL_83;
      }

      v12 = *(v6 + 32);
      v13 = v1;

      goto LABEL_22;
    }

    if (v8)
    {
      v11 = OUTLINED_FUNCTION_32_9();
      v1 = MEMORY[0x277C58B20](v11);
    }

    else
    {
      if (i >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_81;
      }

      v1 = *(v6 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    if (*(v1 + 25))
    {
    }

    else
    {
      sub_27463C41C();
      v2 = v56[2];
      sub_27463C46C();
      sub_27463C47C();
      v4 = &v56;
      sub_27463C42C();
    }
  }

  __break(1u);
LABEL_81:
  __break(1u);
  do
  {
    __break(1u);
LABEL_83:
    v51 = v1;
    v12 = MEMORY[0x277C58B20](0, v6);
LABEL_22:
    v14 = *(v12 + 32);

    v15 = *&v14[*v2];

    v1 = [v4 actionIsConnectedToPreviousAction_];
LABEL_23:
    v16 = *(v3 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_inputAction);
    v2 = &unk_280952000;
    if (v16)
    {
      v17 = v8;
      v18 = OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_actionOutputItems;
      OUTLINED_FUNCTION_16_12();
      swift_beginAccess();
      v19 = *(v3 + v18);
      swift_retain_n();

      v20 = sub_27452F16C(v16, v19);

      if (v20)
      {
        if (v1 != *(v20 + 24))
        {
          *(v20 + 24) = v1;
          sub_274521BE4();
        }
      }

      v21 = *(v3 + v18);

      v4 = sub_27452F16C(v16, v21);

      if (v4)
      {

        v8 = v17;
        v2 = &unk_280952000;
      }

      else
      {
        v8 = v17;
        v2 = &unk_280952000;
        if ((v1 & 1) == 0)
        {
          v9 = &unk_280952000;
          if (*(v16 + 24) != 1)
          {
LABEL_32:

            continue;
          }

          v22 = 0;
          goto LABEL_34;
        }
      }

      v9 = &unk_280952000;
      if (*(v16 + 24))
      {
        goto LABEL_32;
      }

      v22 = 1;
LABEL_34:
      *(v16 + 24) = v22;
      v4 = &v57;
      sub_274521BE4();
    }
  }

  while (v7 < 0);
  result = sub_274590BB4(1, 0, v7);
  if (result == v24)
  {
LABEL_65:
    if (*(v3 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_outputItem))
    {

      v43 = sub_27455C0BC(v42);

      if (v43)
      {
        *(v43 + 24) = 1;
        sub_274521BE4();
      }
    }

    result = sub_274453594(v6);
    if (result)
    {
      v44 = result;
      if (result < 1)
      {
        __break(1u);
        goto LABEL_85;
      }

      for (j = 0; j != v44; ++j)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v46 = OUTLINED_FUNCTION_32_9();
          v47 = MEMORY[0x277C58B20](v46);
        }

        else
        {
          v47 = *(v6 + 8 * j + 32);
        }

        v48 = *(*(v47 + 32) + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action);
        sub_27458AF14(v48);
        v50 = v49;

        if (*(v47 + 16) != v50)
        {
          *(v47 + 16) = v50;
          sub_274521BE4();
        }
      }
    }

    return v57;
  }

  v25 = result;
  v26 = v24;
  if (v24 < result)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  if (result < v24)
  {
    OUTLINED_FUNCTION_39_7(result);
    OUTLINED_FUNCTION_39_7(v26 - 1);
    OUTLINED_FUNCTION_39_7(v25 + 1);
    OUTLINED_FUNCTION_39_7(v26);
    v52 = v8[147];
    v53 = v9[161];
    v54 = OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_actionOutputItems;
    OUTLINED_FUNCTION_16_12();
    swift_beginAccess();
    v27 = (v6 + 8 * v25 + 40);
    while (1)
    {
      v28 = v25 + 1;
      if ((v6 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x277C58B20](v25, v6);
        v30 = OUTLINED_FUNCTION_32_9();
        v31 = MEMORY[0x277C58B20](v30);
      }

      else
      {
        v29 = *(v27 - 1);
        v31 = *v27;
      }

      v32 = *(v3 + v54);
      if ((v32 & 0xC000000000000001) != 0)
      {

        if (sub_27463C53C())
        {
          type metadata accessor for WFEditorActionOutputItem();
          swift_dynamicCast();
          v33 = v55;
LABEL_49:

          goto LABEL_51;
        }
      }

      else
      {
        v33 = *(v32 + 16);

        if (!v33)
        {
          goto LABEL_51;
        }

        v34 = sub_274534D60();
        if (v35)
        {
          v33 = *(*(v32 + 56) + 8 * v34);

          goto LABEL_49;
        }
      }

      v33 = 0;
LABEL_51:
      v36 = *(v3 + v53);
      if (v36)
      {
        v37 = *(v3 + v53);
      }

      else
      {
        v37 = [*(v3 + v52) actionTree];
        v36 = 0;
      }

      v38 = *(*(v31 + 32) + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action);
      v39 = v36;
      v40 = [v37 actionIsConnectedToPreviousAction_];

      if (v33)
      {
        v41 = 1;
      }

      else
      {
        v41 = v40;
      }

      if (v41 == *(v29 + 24))
      {

        if (v33)
        {
LABEL_61:
          if (v40 != *(v33 + 24))
          {
            *(v33 + 24) = v40;
          }
        }
      }

      else
      {
        *(v29 + 24) = v41;
        sub_274521BE4();

        if (v33)
        {
          goto LABEL_61;
        }
      }

      ++v27;
      v25 = v28;
      if (v26 == v28)
      {
        goto LABEL_65;
      }
    }
  }

LABEL_86:
  __break(1u);
  return result;
}

uint64_t sub_274590BB4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = a3 - a2;
  if (__OFSUB__(a3, a2))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = __OFSUB__(v5, result);
  v7 = v5 - result;
  if (v6)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = sub_2745943B4(a2, v7 & ~(v7 >> 63), a3, a2, a3);
  if (v8)
  {
    v9 = a3;
  }

  else
  {
    v9 = result;
  }

  if (v9 >= a2)
  {
    return a2;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_274590C28(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = sub_27463BDAC();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_0();
  v15 = v14 - v13;
  if (a4)
  {
    v16 = [*(v5 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_workflow) actionTree];
    v17 = [v16 validIndexForInsertingActionAtIndex_];

    return sub_27458FFA0(v17);
  }

  else
  {
    result = sub_27458FEAC(a2);
    if (a3 < a2 && __OFADD__(result, 1))
    {
      __break(1u);
    }

    else
    {
      v19 = sub_27458FEAC(a3);
      v20 = [*(v5 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_workflow) actionTree];
      sub_27463BD7C();

      v21 = sub_27463BD9C();
      v22 = sub_27458FFA0(v21);
      result = (*(v11 + 8))(v15, v9);
      if (v19 >= v21)
      {
        return v22;
      }

      if (!__OFSUB__(v22--, 1))
      {
        return v22;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_274590E08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_27463BDAC();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_0();
  v13 = v12 - v11;
  v14 = [*(v4 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_workflow) actionTree];
  sub_27458FEAC(a2);
  sub_27463BD7C();

  v15 = *(v4 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_editorOptions) + OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions_editorDelegate;
  OUTLINED_FUNCTION_16_12();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v16 = *(v15 + 8);
    ObjectType = swift_getObjectType();
    v18 = sub_27458FEAC(a3);
    (*(v16 + 40))(v13, v18, ObjectType, v16);
    swift_unknownObjectRelease();
  }

  return (*(v9 + 8))(v13, v7);
}

uint64_t sub_274590F98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_editorOptions);
  sub_27443DB34(0);
  type metadata accessor for WFEditorActionItem();
  OUTLINED_FUNCTION_0_10();
  result = swift_dynamicCastClass();
  if (result)
  {
    v7 = result;
    v8 = v5 + OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions_editorDelegate;
    OUTLINED_FUNCTION_16_12();
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v9 = *(v8 + 8);
      ObjectType = swift_getObjectType();
      v11 = *(*(v7 + 32) + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action);

      v12 = v11;
      v13 = sub_27458FEAC(a3);
      (*(v9 + 24))(v12, v13, ObjectType, v9);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

BOOL sub_2745910B4()
{
  if (sub_2745861DC())
  {
    return 0;
  }

  type metadata accessor for WFEditorActionItem();
  OUTLINED_FUNCTION_0_10();
  v0 = swift_dynamicCastClass();
  if (v0)
  {
    sub_2746383DC();
    if (swift_dynamicCastClass())
    {
      return 0;
    }
  }

  type metadata accessor for WFEditorSystemInputProviderItem();
  OUTLINED_FUNCTION_0_10();
  if (swift_dynamicCastClass())
  {
    return 0;
  }

  if (v0)
  {
    objc_opt_self();
    OUTLINED_FUNCTION_21_2();
    if (swift_dynamicCastObjCClass())
    {
      return 0;
    }
  }

  type metadata accessor for WFEditorWorkflowOutputItem();
  OUTLINED_FUNCTION_0_10();
  return swift_dynamicCastClass() == 0;
}

uint64_t sub_274591184()
{
  v1 = sub_27463BDAC();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_0();
  v7 = v6 - v5;
  type metadata accessor for WFEditorActionItem();
  OUTLINED_FUNCTION_0_10();
  v8 = swift_dynamicCastClass();
  if (!v8)
  {
    return MEMORY[0x277D84F90];
  }

  v9 = v8;

  OUTLINED_FUNCTION_31_10();
  sub_2744B2A84();
  v11 = v10;

  if (v11)
  {

    return MEMORY[0x277D84F90];
  }

  v13 = [*(v0 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_workflow) actionTree];
  sub_27463BD7C();

  MEMORY[0x28223BE20](v14);
  *&v18[-16] = v9;
  *&v18[-8] = v7;

  sub_27448E91C();
  v16 = v15;
  if (v15 >> 62)
  {
    type metadata accessor for WFEditorItem();
    OUTLINED_FUNCTION_21_2();
    v12 = sub_27463C57C();
  }

  else
  {

    sub_27463C6CC();
    type metadata accessor for WFEditorItem();
    v12 = v16;
  }

  (*(v3 + 8))(v7, v1);
  return v12;
}

uint64_t sub_2745913A4(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_274599D28();
  if (v2 == sub_274599D28())
  {
    v3 = 0;
  }

  else
  {
    v4 = sub_27463BD8C();
    v9 = *(*(v1 + 32) + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action);
    MEMORY[0x28223BE20](v4);
    v8[2] = &v9;
    v6 = v5;
    v3 = sub_27446ECA4(sub_274594DD8, v8, v4);
  }

  return v3 & 1;
}

void *sub_2745914A8()
{
  sub_27458D458();
  sub_274591854();
  return sub_27443DB34(0);
}

void sub_2745914E0()
{
  OUTLINED_FUNCTION_38_6();
  v2 = v1;
  v19 = MEMORY[0x277D84F90];
  v3 = sub_274453594(v1);
  if (v3)
  {
    v4 = v3;
    if (v3 < 1)
    {
      __break(1u);
      goto LABEL_23;
    }

    for (i = 0; i != v4; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x277C58B20](i, v2);
      }

      else
      {
      }

      type metadata accessor for WFEditorActionItem();
      v6 = swift_dynamicCastClass();
      if (v6)
      {
        *(*(v6 + 32) + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action);
        MEMORY[0x277C57F30]();
        if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_27463B85C();
        }

        sub_27463B8AC();
      }
    }
  }

  sub_27463BDCC();
  OUTLINED_FUNCTION_21_2();
  v7 = sub_274588EFC();
  v8 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_draggingActionTree);
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_draggingActionTree) = v7;
  v18 = v7;

  v9 = [*(v0 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_workflow) actions];
  sub_274412734(0, &qword_28094E040);
  v10 = sub_27463B81C();

  v11 = sub_274453594(v10);
  if (v11)
  {
    v12 = v11;
    if (v11 >= 1)
    {
      for (j = 0; j != v12; ++j)
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x277C58B20](j, v10);
        }

        else
        {
          v14 = *(v10 + 8 * j + 32);
        }

        v15 = v14;
        [v14 setActionTree_];
      }

      goto LABEL_19;
    }

LABEL_23:
    __break(1u);
    return;
  }

LABEL_19:

  OUTLINED_FUNCTION_35_6();
  sub_274595CB8();
  OUTLINED_FUNCTION_28_14();
}

void sub_27459173C()
{
  v1 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_draggingActionTree);
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_draggingActionTree) = 0;

  v2 = [*(v0 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_workflow) actions];
  sub_274412734(0, &qword_28094E040);
  v3 = sub_27463B81C();

  v4 = sub_274453594(v3);
  if (v4)
  {
    v5 = v4;
    if (v4 < 1)
    {
      __break(1u);
      return;
    }

    for (i = 0; i != v5; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = OUTLINED_FUNCTION_13_3();
        v8 = MEMORY[0x277C58B20](v7);
      }

      else
      {
        v8 = *(v3 + 8 * i + 32);
      }

      v9 = v8;
      [v8 setActionTree_];
    }
  }

  sub_27458DC90(1);
}

void sub_274591854()
{
  if (*(v0 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_isFocusedOnRevealedAction) != 1)
  {
    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_274638FAC();

  if (v16 != 1)
  {
    sub_27443C9D4(v10, v11, v12, v13, v14, v15, v16);
    return;
  }

  swift_unknownObjectRelease();

  v1 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_actions);
  v2 = sub_274453594(v1);

  for (i = 0; ; ++i)
  {
    if (v2 == i)
    {

LABEL_17:
      sub_27443CA58();

      return;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x277C58B20](i, v1);
    }

    else
    {
      if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v4 = *(v1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    if (*(*(v4 + 32) + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action) == v10)
    {

      v5 = sub_274589024();
      v6 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_visibleCellsForItem;
      swift_beginAccess();
      v7 = *&v5[v6];

      v9 = sub_27452F0D0(v8, v7);

      swift_endAccess();
      if (v9)
      {

        sub_2745885D0(v9, 0);
      }

      else
      {
      }

      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

void sub_274591AA8()
{
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_editorDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = MEMORY[0x277D84F90];
  if (sub_274453594(MEMORY[0x277D84F90]))
  {
    sub_274573FD0(MEMORY[0x277D84F90]);
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  *(v0 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_cancellables) = v2;
  v3 = OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_actionObservationCancellables;
  type metadata accessor for WFEditorItem();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952678);
  OUTLINED_FUNCTION_7_28();
  sub_274594370(v4, 255, v5);
  *(v0 + v3) = sub_27463B4DC();
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController____lazy_storage___emptyStateView) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController____lazy_storage___editorView) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_actions) = v1;
  v6 = OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_actionOutputItems;
  type metadata accessor for WFEditorActionOutputItem();
  *(v0 + v6) = sub_27463B4DC();
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController____lazy_storage___systemInputProviderAction) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_inputAction) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_activeVariablePickingAnchoredAction) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_outputItem) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_draggingActionTree) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_currentVisibleActionIdentifiers) = v1;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_prefixItemCount) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_keyboardIsVisible) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_isFocusedOnRevealedAction) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_parameterEditingHintView) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_items) = v1;
  sub_27463C56C();
  __break(1u);
}

void sub_274591D38(void *a1)
{
  v1 = [a1 presentedViewController];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809525A8);
  OUTLINED_FUNCTION_0_10();
  v2 = swift_dynamicCastClass();

  if (v2)
  {
    v3 = sub_27443C514();
    if (v3)
    {
      v4 = v3;
      [v3 finishEditingReturningToKeyboard_];
    }
  }
}

void sub_274591E5C(uint64_t a1, uint64_t a2)
{
  sub_27443B240();
  v4 = sub_274589024();
  v5 = objc_allocWithZone(MEMORY[0x277D44360]);
  OUTLINED_FUNCTION_13_5();

  v6 = sub_274593AE4(a1, a2, v4, 0, 0);
  [objc_opt_self() runTestWithParameters_];
}

uint64_t sub_274591F38(uint64_t a1, void *a2)
{
  swift_unknownObjectWeakInit();
  *(v2 + 32) = a1;
  swift_unknownObjectWeakAssign();

  return WFEditorItem.init(drawsShadow:drawsRim:showsConnector:)(1, 0, 0);
}

void sub_27459200C()
{

  JUMPOUT(0x277C5A3A0);
}

uint64_t sub_27459203C()
{
  v1 = *(v0 + 32);

  MEMORY[0x277C5A3A0](v0 + 40);

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

char *sub_274592094()
{
  v1 = OBJC_IVAR____TtC14WorkflowEditorP33_614F1DFEBF3DEBC915070CB296BEEF1918WFEditorActionCell____lazy_storage___actionContentView;
  v2 = *(v0 + OBJC_IVAR____TtC14WorkflowEditorP33_614F1DFEBF3DEBC915070CB296BEEF1918WFEditorActionCell____lazy_storage___actionContentView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14WorkflowEditorP33_614F1DFEBF3DEBC915070CB296BEEF1918WFEditorActionCell____lazy_storage___actionContentView);
  }

  else
  {
    v4 = objc_allocWithZone(type metadata accessor for ActionCellContentView());

    v6 = sub_274594410(v5, v4);
    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

uint64_t sub_27459211C(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC14WorkflowEditorP33_614F1DFEBF3DEBC915070CB296BEEF1918WFEditorActionCell_actionItem) = a1;
  swift_retain_n();

  sub_27459A464(a1);
}

void *sub_274592180(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC14WorkflowEditorP33_614F1DFEBF3DEBC915070CB296BEEF1918WFEditorActionCell____lazy_storage___actionContentView) = 0;
  *(v1 + OBJC_IVAR____TtC14WorkflowEditorP33_614F1DFEBF3DEBC915070CB296BEEF1918WFEditorActionCell_actionItem) = a1;
  swift_retain_n();
  v2 = sub_274599D88();
  v3 = *(v2 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_contentView);
  v4 = v2;
  v5 = v3;
  v6 = sub_274592094();
  [v5 addSubview_];

  sub_274592234();

  return v4;
}

void sub_274592234()
{
  v1 = v0;
  v2 = sub_274592094();
  v3 = *(v1 + OBJC_IVAR____TtC14WorkflowEditorP33_614F1DFEBF3DEBC915070CB296BEEF1918WFEditorActionCell_actionItem);
  v4 = sub_274594370(&unk_280952570, 255, type metadata accessor for WFEditorActionItem);
  v5 = &v2[OBJC_IVAR____TtC14WorkflowEditor21ActionCellContentView_item];
  *v5 = v3;
  *(v5 + 1) = v4;

  swift_unknownObjectRelease();
  sub_2745384A0();

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  v7 = *(v1 + OBJC_IVAR____TtC14WorkflowEditorP33_614F1DFEBF3DEBC915070CB296BEEF1918WFEditorActionCell____lazy_storage___actionContentView);
  v8 = objc_opt_self();
  v9 = v7;
  if (v6)
  {
    v10 = [v8 systemYellowColor];
    v11 = [v10 colorWithAlphaComponent_];
  }

  else
  {
    v11 = [v8 clearColor];
  }

  [v9 setBackgroundColor_];
}

void sub_2745923D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFEditorActionCell();
  objc_msgSendSuper2(&v2, sel_layoutSubviews);
  v1 = sub_274592094();
  [*&v0[OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_contentView] bounds];
  [v1 setFrame_];
}

double sub_274592494(double a1, double a2)
{
  v4 = sub_274592094();
  [v4 sizeThatFits_];
  v6 = v5;

  return v6;
}

void sub_274592508()
{
  *(v0 + OBJC_IVAR____TtC14WorkflowEditorP33_614F1DFEBF3DEBC915070CB296BEEF1918WFEditorActionCell____lazy_storage___actionContentView) = 0;
  sub_27463C56C();
  __break(1u);
}

uint64_t sub_2745925A8()
{
}

uint64_t sub_274592690()
{

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

void *sub_2745926C8(uint64_t a1)
{
  v3 = type metadata accessor for WorkflowOutputPreviewView();
  MEMORY[0x28223BE20](v3 - 8);
  sub_27440FB1C(*(a1 + 32), (&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0)));
  v5 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809525B8));
  *(v1 + OBJC_IVAR____TtC14WorkflowEditorP33_614F1DFEBF3DEBC915070CB296BEEF1926WFEditorWorkflowOutputCell_hostingView) = sub_27463959C();

  v6 = sub_274599D88();
  v7 = *(v6 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_contentView);
  v8 = *(v6 + OBJC_IVAR____TtC14WorkflowEditorP33_614F1DFEBF3DEBC915070CB296BEEF1926WFEditorWorkflowOutputCell_hostingView);
  v9 = v6;
  [v7 addSubview_];

  return v9;
}

id sub_2745927EC()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for WFEditorWorkflowOutputCell();
  objc_msgSendSuper2(&v3, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC14WorkflowEditorP33_614F1DFEBF3DEBC915070CB296BEEF1926WFEditorWorkflowOutputCell_hostingView];
  [*&v0[OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_contentView] bounds];
  return [v1 setFrame_];
}

uint64_t sub_27459299C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a1;
  v7[5] = a2;
  v7[6] = a3;
  v7[7] = a4;
  v7[9] = a5;
  v7[10] = a6;
  v7[8] = a7;
  return WFEditorItem.init(drawsShadow:drawsRim:showsConnector:)(0, 0, 0);
}

uint64_t sub_2745929EC()
{

  swift_unknownObjectRelease();
}

uint64_t sub_274592A34()
{

  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_274592A74()
{
  v0 = sub_274592A34();

  return MEMORY[0x2821FE8D8](v0, 88, 7);
}

uint64_t sub_274592AB8(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC14WorkflowEditorP33_614F1DFEBF3DEBC915070CB296BEEF1925WFEditorActionOutputsCell_outputViews) = MEMORY[0x277D84F90];

  v3 = sub_274599D88();
  v26 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_contentView;
  v4 = *(v3 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_contentView);
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 clearColor];
  [v6 setBackgroundColor_];

  v8 = *(a1 + 32);
  result = sub_274453594(v8);
  if (!result)
  {

    return v3;
  }

  v10 = result;
  if (result >= 1)
  {
    v11 = OBJC_IVAR____TtC14WorkflowEditorP33_614F1DFEBF3DEBC915070CB296BEEF1925WFEditorActionOutputsCell_outputViews;

    v12 = 0;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x277C58B20](v12, v8);
      }

      else
      {
        v13 = *(v8 + 8 * v12 + 32);
        swift_unknownObjectRetain();
      }

      v14 = [v13 displayName];
      v15 = sub_27463B6AC();
      v17 = v16;

      v18 = [v13 icon];
      v19 = objc_allocWithZone(MEMORY[0x277D7D7E0]);
      v20 = sub_274593BF8(24.0, v15, v17, v18, 0, 1, 0);
      v21 = swift_allocObject();
      *(v21 + 16) = a1;
      *(v21 + 24) = v13;
      v22 = objc_allocWithZone(type metadata accessor for WFEditorVariablePillViewTapGestureRecognizer());

      v23 = v20;
      swift_unknownObjectRetain();
      v24 = sub_2745932E4(sub_274594DF8, v21);
      [v23 addGestureRecognizer_];

      [*(v3 + v26) addSubview_];
      v25 = swift_beginAccess();
      MEMORY[0x277C57F30](v25);
      if (*((*(v3 + v11) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + v11) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_27463B85C();
      }

      ++v12;
      sub_27463B8AC();
      swift_endAccess();
      swift_unknownObjectRelease();
    }

    while (v10 != v12);

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_274592DB4(uint64_t a1, id a2)
{
  v2 = *(a1 + 48);
  v3 = [a2 variableWithProvider_];
  v2();

  return sub_27443CA58();
}

uint64_t sub_274592E38()
{
  v21.receiver = v0;
  v21.super_class = type metadata accessor for WFEditorActionOutputsCell();
  objc_msgSendSuper2(&v21, sel_layoutSubviews);
  v1 = OBJC_IVAR____TtC14WorkflowEditorP33_614F1DFEBF3DEBC915070CB296BEEF1925WFEditorActionOutputsCell_outputViews;
  swift_beginAccess();
  v2 = *&v0[v1];
  result = sub_274453594(v2);
  if (result)
  {
    v4 = result;
    if (result < 1)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v5 = 0;
    v6 = 0.0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x277C58B20](v5, v2);
      }

      else
      {
        v7 = *(v2 + 8 * v5 + 32);
      }

      v8 = v7;
      ++v5;
      [v7 intrinsicContentSize];
      v10 = v9;
      [v8 frame];
      [v8 setFrame_];

      v6 = v6 + v10;
    }

    while (v4 != v5);
  }

  result = sub_274453594(*&v0[v1]);
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_20;
  }

  [v0 frame];
  v11 = [v0 traitCollection];
  [v11 displayScale];

  BSFloatRoundForScale();
  v13 = v12;
  v14 = *&v0[v1];
  result = sub_274453594(v14);
  if (!result)
  {
    return result;
  }

  v15 = result;
  if (result < 1)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v16 = 0;
  do
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x277C58B20](v16, v14);
    }

    else
    {
      v17 = *(v14 + 8 * v16 + 32);
    }

    v18 = v17;
    ++v16;
    [v17 frame];
    [v18 setFrame_];
    [v18 frame];
    v20 = v19;

    v13 = v13 + v20 + 10.0;
  }

  while (v15 != v16);
}

void sub_2745930FC()
{
  *(v0 + OBJC_IVAR____TtC14WorkflowEditorP33_614F1DFEBF3DEBC915070CB296BEEF1925WFEditorActionOutputsCell_outputViews) = MEMORY[0x277D84F90];
  sub_27463C56C();
  __break(1u);
}

id sub_2745932E4(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC14WorkflowEditorP33_614F1DFEBF3DEBC915070CB296BEEF1944WFEditorVariablePillViewTapGestureRecognizer_action];
  *v3 = a1;
  *(v3 + 1) = a2;
  v6.receiver = v2;
  v6.super_class = type metadata accessor for WFEditorVariablePillViewTapGestureRecognizer();

  v4 = objc_msgSendSuper2(&v6, sel_initWithTarget_action_, 0, 0);
  [v4 addTarget:v4 action:{sel_handleTap_, v6.receiver, v6.super_class}];

  return v4;
}

id WFEditorDrawerDragInteraction.__allocating_init(itemProvider:previewView:floatingViewOutsets:dragDidBeginHandler:)()
{
  OUTLINED_FUNCTION_16_18();
  v3 = objc_allocWithZone(v0);
  OUTLINED_FUNCTION_39();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = OUTLINED_FUNCTION_19_14();
  return sub_27459A888(v6, v7, v8, v9, v10, v5, v11, v12, v13);
}

id WFEditorDrawerDragInteraction.init(itemProvider:previewView:floatingViewOutsets:dragDidBeginHandler:)()
{
  OUTLINED_FUNCTION_16_18();
  OUTLINED_FUNCTION_39();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;
  v8 = OUTLINED_FUNCTION_19_14();

  return sub_27459A888(v3, v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_2745935F0(void (*a1)(__n128))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B6A8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - v3;
  v5 = sub_27463814C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v17 - v11;
  a1(v10);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_274415174(v4, &qword_28094B6A8);
    return 0;
  }

  (*(v6 + 32))(v12, v4, v5);
  (*(v6 + 16))(v8, v12, v5);
  if ((*(v6 + 88))(v8, v5) == *MEMORY[0x277D7BE50])
  {
    (*(v6 + 96))(v8, v5);
    v14 = *v8;
    type metadata accessor for ActionCellViewModel();
    v15 = sub_27444A2FC(v14);
    type metadata accessor for WFEditorActionItem();
    swift_allocObject();
    v13 = sub_274591F38(v15, 0);

    (*(v6 + 8))(v12, v5);
    return v13;
  }

  result = sub_27463C6AC();
  __break(1u);
  return result;
}

id sub_274593884(uint64_t a1, uint64_t (*a2)(void), SEL *a3)
{
  v6.receiver = v3;
  v6.super_class = a2();
  return objc_msgSendSuper2(&v6, *a3);
}

uint64_t sub_274593A88(uint64_t a1)
{
  result = sub_274594370(&qword_280952568, 255, type metadata accessor for WFEditorActionItem);
  *(a1 + 8) = result;
  return result;
}

id sub_274593AE4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v9 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v9 = sub_27463B66C();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13[4] = a4;
  v13[5] = a5;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_27443E0E8;
  v13[3] = &block_descriptor_32;
  v10 = _Block_copy(v13);

LABEL_6:
  v11 = [v5 initWithTestName:v9 scrollView:a3 completionHandler:v10];
  _Block_release(v10);

  return v11;
}

uint64_t block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_274593BF8(double a1, uint64_t a2, uint64_t a3, void *a4, void *a5, char a6, uint64_t a7)
{
  v13 = sub_27463B66C();

  v14 = [v7 initWithName:v13 icon:a4 font:a5 available:a6 & 1 height:a7 controlState:a1];

  return v14;
}

uint64_t sub_274593C98(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      a2 = a1;
    }

    else
    {
      a2 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v4)
    {
      if (v2 < 0)
      {
        a1 = v2;
      }

      else
      {
        a1 = v2 & 0xFFFFFFFFFFFFFF8;
      }

      return MEMORY[0x2821FCF40](a1, a2);
    }

    v5 = a2;
    v6 = v2;
  }

  else
  {
    if (!v4)
    {
      if (a1 == a2)
      {
        return 1;
      }

      if (*(a1 + 16) != *(a2 + 16))
      {
        return 0;
      }

      v8 = 0;
      v9 = 1 << *(a1 + 32);
      v10 = -1;
      if (v9 < 64)
      {
        v10 = ~(-1 << v9);
      }

      v11 = v10 & *(a1 + 64);
      v12 = (v9 + 63) >> 6;
      while (v11)
      {
        v11 &= v11 - 1;
LABEL_33:

        sub_274534D60();
        v16 = v15;

        if ((v16 & 1) == 0)
        {

          return 0;
        }

        v17 = sub_274599D28();
        v18 = sub_274599D28();

        if (v17 != v18)
        {
          return 0;
        }
      }

      v13 = v8;
      while (1)
      {
        v8 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v8 >= v12)
        {
          return 1;
        }

        v14 = *(v3 + 64 + 8 * v8);
        ++v13;
        if (v14)
        {
          v11 = (v14 - 1) & v14;
          goto LABEL_33;
        }
      }

      __break(1u);
      return MEMORY[0x2821FCF40](a1, a2);
    }

    if (a2 < 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    v6 = v3;
  }

  return sub_274593E98(v5, v6);
}

uint64_t sub_274593E98(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = sub_27463C27C();
  if (v3 != result)
  {
    return 0;
  }

  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v8 &= v8 - 1;
LABEL_12:

    v12 = sub_27463C53C();

    if (!v12)
    {

      return 0;
    }

    type metadata accessor for WFEditorActionOutputItem();
    swift_dynamicCast();
    v13 = sub_274599D28();
    v14 = sub_274599D28();

    if (v13 != v14)
    {
      return 0;
    }
  }

  v10 = v5;
  while (1)
  {
    v5 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return 1;
    }

    v11 = *(a2 + 64 + 8 * v5);
    ++v10;
    if (v11)
    {
      v8 = (v11 - 1) & v11;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void sub_274594028(uint64_t a1, char a2, void *a3)
{
  v5 = 0;
  v26 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v26 == v5)
    {

      return;
    }

    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_27463C71C();
      __break(1u);
      goto LABEL_22;
    }

    v8 = *(i - 1);
    v7 = *i;
    v9 = *a3;
    v10 = sub_274534DD8(v8);
    v12 = v9[2];
    v13 = (v11 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    v16 = v11;
    v17 = v9[3];

    if (v17 < v14)
    {
      break;
    }

    if (a2)
    {
      if (v16)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952660);
      sub_27463C4DC();
      if (v16)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v20 = *a3;
    *(*a3 + 8 * (v15 >> 6) + 64) |= 1 << v15;
    *(v20[6] + 8 * v15) = v8;
    *(v20[7] + 8 * v15) = v7;
    v21 = v20[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_20;
    }

    v20[2] = v23;
    ++v5;
    a2 = 1;
  }

  sub_2744310A0(v14, a2 & 1);
  v18 = sub_274534DD8(v8);
  if ((v16 & 1) != (v19 & 1))
  {
    goto LABEL_21;
  }

  v15 = v18;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v24 = swift_allocError();
  swift_willThrow();
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280954320);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_27463C38C();
  MEMORY[0x277C57EA0](0xD00000000000001BLL, 0x800000027468E230);
  sub_27463C4BC();
  MEMORY[0x277C57EA0](39, 0xE100000000000000);
  sub_27463C56C();
  __break(1u);
}