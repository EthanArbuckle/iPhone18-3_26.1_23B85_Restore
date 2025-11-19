void MultilineTextProperty.lines(for:)()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803728E0, &qword_26A4406E0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v7 = &v33 - v6;
  type metadata accessor for TextElement();
  OUTLINED_FUNCTION_3_46();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_18();
  v34 = *v1;
  v35 = *(v1 + 8);
  MultilineTextProperty.allTextElements.getter();
  v14 = v13;
  v15 = *(v13 + 16);
  if (v15)
  {
    v40 = MEMORY[0x277D84F90];
    sub_26A10CD30();
    v16 = 0;
    v17 = v40;
    while (v16 < *(v14 + 16))
    {
      v18 = *(v14 + 8 * v16 + 32);

      sub_26A322A0C();
      OUTLINED_FUNCTION_14_9(v7);
      if (v19)
      {
        goto LABEL_10;
      }

      OUTLINED_FUNCTION_1_65();
      OUTLINED_FUNCTION_35_25();
      sub_26A3DB4A0();
      v40 = v17;
      v20 = *(v17 + 16);
      if (v20 >= *(v17 + 24) >> 1)
      {
        sub_26A10CD30();
        v17 = v40;
      }

      ++v16;
      *(v17 + 16) = v20 + 1;
      v21 = *(v9 + 80);
      OUTLINED_FUNCTION_166_0();
      v22 = *(v9 + 72);
      OUTLINED_FUNCTION_1_65();
      sub_26A3DB4A0();
      if (v15 == v16)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_10:
    sub_26A0E48F0(v7, &qword_2803728E0, &qword_26A4406E0);
    if (qword_28036C5A0 != -1)
    {
      OUTLINED_FUNCTION_0_34();
      swift_once();
    }

    v23 = sub_26A424AE4();
    __swift_project_value_buffer(v23, qword_2803A8950);
    v38 = 0;
    v39 = 0xE000000000000000;
    sub_26A424EF4();
    MEMORY[0x26D65BA70](0xD00000000000005CLL, 0x800000026A44B200);
    v36 = v34;
    v37 = v35;
    v24 = _ProtoIdiom.description.getter();
    MEMORY[0x26D65BA70](v24);

    v25 = v38;
    v26 = v39;

    v27 = sub_26A424AD4();
    v28 = sub_26A424E14();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v38 = v30;
      *v29 = 136446210;
      *(v29 + 4) = sub_26A0E8788(v25, v26, &v38);
      OUTLINED_FUNCTION_39_15(&dword_26A0B8000, v31, v32, "%{public}s");
      __swift_destroy_boxed_opaque_existential_1(v30);
      OUTLINED_FUNCTION_1_21();
      OUTLINED_FUNCTION_1_21();
    }

    OUTLINED_FUNCTION_51_18();
    __break(1u);
  }

  else
  {
LABEL_8:

    OUTLINED_FUNCTION_75();
  }
}

uint64_t MultilineTextProperty.init(_:safeForLogging:focusAction:selectedAction:)()
{
  type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_0_84();
  sub_26A3E1050(v0, v1);
  sub_26A4249C4();

  OUTLINED_FUNCTION_236();
  sub_26A0E48F0(v2, v3, v4);
  v5 = OUTLINED_FUNCTION_175();
  return sub_26A0E48F0(v5, v6, &unk_26A426D30);
}

{
  OUTLINED_FUNCTION_58_18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803739D0, &qword_26A4439B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBE8, &qword_26A426648);
  v4 = swift_initStackObject();
  OUTLINED_FUNCTION_62_14(v4, v5, v6, v7, v8, v9, v10, v11, xmmword_26A426410);
  *(inited + 32) = v2;
  OUTLINED_FUNCTION_39_23();
  OUTLINED_FUNCTION_44_16();
  type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_0_84();
  sub_26A3E1050(v12, v13);
  sub_26A4249C4();
  swift_setDeallocating();
  sub_26A10C330();
  OUTLINED_FUNCTION_38_18(v1);
  v14 = OUTLINED_FUNCTION_35_25();
  sub_26A0E48F0(v14, v15, &unk_26A426D30);
  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_38_18(v17);
  return OUTLINED_FUNCTION_38_18(v18);
}

uint64_t sub_26A3DF870(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v59 = a5;
  v62 = a1;
  v61 = type metadata accessor for _ProtoActionProperty();
  v8 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61);
  v60 = &v55[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for ActionProperty();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v58 = &v55[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for TextElement();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = type metadata accessor for _ProtoTextElement(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = type metadata accessor for _ProtoMultilineTextProperty.Line(0);
  v67 = *(v18 - 8);
  v68 = v18;
  v19 = *(v67 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v55[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v22);
  v24 = &v55[-v23];
  v25 = a2;
  v26 = *(a2 + 16);
  v27 = MEMORY[0x277D84F90];
  if (v26)
  {
    v56 = a3;
    v57 = a4;
    *&v72 = MEMORY[0x277D84F90];
    v66 = v26;
    sub_26A10CE38();
    v28 = 0;
    v64 = v21;
    v65 = v25 + 32;
    v29 = v27;
    v30 = v72;
    v63 = v24;
    do
    {
      v70 = v28;
      v71 = v30;
      v31 = *(v65 + 8 * v28);
      v32 = *(v68 + 20);

      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v33 = *(v31 + 16);
      if (v33)
      {
        v77 = v29;
        sub_26A10CCD8();
        v34 = v77;
        v69 = v31;
        v35 = v31 + 32;
        do
        {
          sub_26A0E5D68(v35, v74);
          v37 = v75;
          v36 = v76;
          __swift_project_boxed_opaque_existential_1(v74, v75);
          (*(v36 + 8))(v37, v36);
          sub_26A3DB4A0();
          __swift_destroy_boxed_opaque_existential_1(v74);
          v77 = v34;
          v38 = *(v34 + 16);
          if (v38 >= *(v34 + 24) >> 1)
          {
            sub_26A10CCD8();
            v34 = v77;
          }

          *(v34 + 16) = v38 + 1;
          v39 = v34 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
          v40 = *(v16 + 72);
          sub_26A3DB4A0();
          v35 += 40;
          --v33;
        }

        while (v33);

        v21 = v64;
        v29 = MEMORY[0x277D84F90];
      }

      else
      {

        v34 = v29;
      }

      *v21 = v34;
      sub_26A3DB4A0();
      v30 = v71;
      *&v72 = v71;
      v41 = *(v71 + 16);
      if (v41 >= *(v71 + 24) >> 1)
      {
        sub_26A10CE38();
        v30 = v72;
      }

      v42 = v70 + 1;
      *(v30 + 16) = v41 + 1;
      v28 = v42;
      v43 = v30 + ((*(v67 + 80) + 32) & ~*(v67 + 80));
      v44 = *(v67 + 72);
      sub_26A3DB4A0();
    }

    while (v28 != v66);
    LOBYTE(a3) = v56;
  }

  else
  {
    v30 = MEMORY[0x277D84F90];
  }

  v45 = v62;
  v46 = *v62;

  *v45 = v30;
  *(v45 + 9) = a3 & 1;
  sub_26A10FD9C();
  v47 = v61;
  if (v73)
  {
    sub_26A0D671C(&v72, v74);
    v48 = v75;
    v49 = v76;
    __swift_project_boxed_opaque_existential_1(v74, v75);
    (*(v49 + 8))(v48, v49);
    sub_26A3DB4A0();
    v50 = *(type metadata accessor for _ProtoMultilineTextProperty(0) + 32);
    sub_26A0E48F0(v45 + v50, &off_28036C7C0, &off_26A427400);
    sub_26A3DB4A0();
    __swift_storeEnumTagSinglePayload(v45 + v50, 0, 1, v47);
    __swift_destroy_boxed_opaque_existential_1(v74);
  }

  else
  {
    sub_26A0E48F0(&v72, &qword_28036CAF8, &unk_26A426D30);
  }

  sub_26A10FD9C();
  if (!v73)
  {
    return sub_26A0E48F0(&v72, &qword_28036CAF8, &unk_26A426D30);
  }

  sub_26A0D671C(&v72, v74);
  v51 = v75;
  v52 = v76;
  __swift_project_boxed_opaque_existential_1(v74, v75);
  (*(v52 + 8))(v51, v52);
  sub_26A3DB4A0();
  v53 = *(type metadata accessor for _ProtoMultilineTextProperty(0) + 36);
  sub_26A0E48F0(v45 + v53, &off_28036C7C0, &off_26A427400);
  sub_26A3DB4A0();
  __swift_storeEnumTagSinglePayload(v45 + v53, 0, 1, v47);
  return __swift_destroy_boxed_opaque_existential_1(v74);
}

uint64_t MultilineTextProperty.init(_:redacted:focusAction:selectedAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_26A10FD9C();
  sub_26A10FD9C();
  type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_0_84();
  sub_26A3E1050(v6, v7);
  OUTLINED_FUNCTION_65_2();

  OUTLINED_FUNCTION_164_0(a4);
  OUTLINED_FUNCTION_164_0(a3);
  OUTLINED_FUNCTION_164_0(v9);
  return OUTLINED_FUNCTION_164_0(v10);
}

uint64_t MultilineTextProperty.init(_:redacted:focusAction:selectedAction:)()
{
  OUTLINED_FUNCTION_58_18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803739D0, &qword_26A4439B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBE8, &qword_26A426648);
  v4 = swift_initStackObject();
  OUTLINED_FUNCTION_62_14(v4, v5, v6, v7, v8, v9, v10, v11, xmmword_26A426410);
  *(inited + 32) = v2;
  OUTLINED_FUNCTION_39_23();
  OUTLINED_FUNCTION_44_16();
  type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_0_84();
  sub_26A3E1050(v12, v13);
  sub_26A4249C4();
  swift_setDeallocating();
  sub_26A10C330();
  OUTLINED_FUNCTION_38_18(v1);
  v14 = OUTLINED_FUNCTION_35_25();
  sub_26A0E48F0(v14, v15, &unk_26A426D30);
  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_38_18(v17);
  return OUTLINED_FUNCTION_38_18(v18);
}

uint64_t MultilineTextProperty.asMultilineTextProperty()()
{
  OUTLINED_FUNCTION_97_6();
  OUTLINED_FUNCTION_15_41();
  return sub_26A3E0EFC();
}

uint64_t Array<A>.asMultilineTextProperty()()
{
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  type metadata accessor for _ProtoMultilineTextProperty(0);
  memset(v3, 0, sizeof(v3));
  v4 = 0;
  OUTLINED_FUNCTION_0_84();
  sub_26A3E1050(v0, v1);
  OUTLINED_FUNCTION_65_2();
  OUTLINED_FUNCTION_187_0(v3);
  return OUTLINED_FUNCTION_187_0(v5);
}

uint64_t sub_26A3E0450()
{
  v9[3] = type metadata accessor for TextElement();
  v9[4] = &protocol witness table for TextElement;
  __swift_allocate_boxed_opaque_existential_1(v9);
  sub_26A3E0EFC();
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803739D0, &qword_26A4439B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBE8, &qword_26A426648);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_26A426410;
  sub_26A0E5D68(v9, v1 + 32);
  *(inited + 32) = v1;
  sub_26A10FD9C();
  sub_26A10FD9C();
  type metadata accessor for _ProtoMultilineTextProperty(0);
  sub_26A3E1050(&qword_28036D450, type metadata accessor for _ProtoMultilineTextProperty);
  sub_26A4249C4();
  swift_setDeallocating();
  sub_26A10C330();
  sub_26A0E48F0(v5, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v7, &qword_28036CAF8, &unk_26A426D30);
  __swift_destroy_boxed_opaque_existential_1(v9);
  sub_26A0E48F0(v3, &qword_28036CAF8, &unk_26A426D30);
  return sub_26A0E48F0(v4, &qword_28036CAF8, &unk_26A426D30);
}

uint64_t sub_26A3E0658(uint64_t a1, uint64_t a2)
{
  v11[3] = MEMORY[0x277D837D0];
  v11[4] = &protocol witness table for String;
  v11[0] = a1;
  v11[1] = a2;
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803739D0, &qword_26A4439B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBE8, &qword_26A426648);
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_26A426410;
  sub_26A0E5D68(v11, v3 + 32);
  *(inited + 32) = v3;
  sub_26A10FD9C();
  sub_26A10FD9C();
  type metadata accessor for _ProtoMultilineTextProperty(0);
  sub_26A3E1050(&qword_28036D450, type metadata accessor for _ProtoMultilineTextProperty);

  sub_26A4249C4();
  swift_setDeallocating();
  sub_26A10C330();
  sub_26A0E48F0(v7, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v9, &qword_28036CAF8, &unk_26A426D30);
  __swift_destroy_boxed_opaque_existential_1(v11);
  sub_26A0E48F0(v5, &qword_28036CAF8, &unk_26A426D30);
  return sub_26A0E48F0(v6, &qword_28036CAF8, &unk_26A426D30);
}

uint64_t MultilineTextPropertyConvertible<>.asMultilineTextProperty()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17[3] = a1;
  v17[4] = a3;
  __swift_allocate_boxed_opaque_existential_1(v17);
  v4 = *(*(a1 - 8) + 16);
  OUTLINED_FUNCTION_236();
  v5();
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803739D0, &qword_26A4439B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBE8, &qword_26A426648);
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_26A426410;
  sub_26A0E5D68(v17, v7 + 32);
  *(inited + 32) = v7;
  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_32_2();
  type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_0_84();
  sub_26A3E1050(v8, v9);
  sub_26A4249C4();
  swift_setDeallocating();
  sub_26A10C330();
  OUTLINED_FUNCTION_31_2(v13);
  OUTLINED_FUNCTION_31_2(v15);
  __swift_destroy_boxed_opaque_existential_1(v17);
  OUTLINED_FUNCTION_31_2(v11);
  return OUTLINED_FUNCTION_31_2(v12);
}

uint64_t TextProperty.asMultilineTextProperty()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB18, &unk_26A427670);
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_17();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803739D0, &qword_26A4439B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  TextProperty.allTextElements.getter();
  sub_26A31BDC0();
  v13 = v12;

  *(inited + 32) = v13;
  v14 = *(v0 + 9);
  TextProperty.focusAction.getter();
  v15 = type metadata accessor for ActionProperty();
  if (__swift_getEnumTagSinglePayload(v10, 1, v15) == 1)
  {
    sub_26A0E48F0(v10, &qword_28036CB18, &unk_26A427670);
    v25 = 0u;
    v26 = 0u;
    v27 = 0;
  }

  else
  {
    *(&v26 + 1) = v15;
    v27 = &protocol witness table for ActionProperty;
    __swift_allocate_boxed_opaque_existential_1(&v25);
    OUTLINED_FUNCTION_11_39();
    sub_26A3DB4A0();
  }

  TextProperty.selectedAction.getter();
  if (__swift_getEnumTagSinglePayload(v7, 1, v15) == 1)
  {
    sub_26A0E48F0(v7, &qword_28036CB18, &unk_26A427670);
    v22 = 0u;
    v23 = 0u;
    v24 = 0;
  }

  else
  {
    *(&v23 + 1) = v15;
    v24 = &protocol witness table for ActionProperty;
    __swift_allocate_boxed_opaque_existential_1(&v22);
    OUTLINED_FUNCTION_11_39();
    sub_26A3DB4A0();
  }

  v16 = type metadata accessor for _ProtoMultilineTextProperty(0);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_13_27();
  *(v17 - 32) = inited;
  *(v17 - 24) = v14;
  *(v17 - 16) = &v25;
  *(v17 - 8) = &v22;
  OUTLINED_FUNCTION_0_84();
  sub_26A3E1050(v18, v19);
  sub_26A4249C4();
  swift_setDeallocating();
  sub_26A10C330();
  OUTLINED_FUNCTION_187_0(&v22);
  return OUTLINED_FUNCTION_187_0(&v25);
}

uint64_t sub_26A3E0D00(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_60_16();

  return sub_26A424B44();
}

uint64_t sub_26A3E0DB4(void (*a1)(void))
{
  sub_26A425504();
  a1(0);
  OUTLINED_FUNCTION_60_16();
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A3E0E80(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_26A425504();
  a4(0);
  OUTLINED_FUNCTION_60_16();
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A3E0EFC()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t sub_26A3E0F50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_26A3E1050(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A3E1270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_24_41()
{

  return sub_26A3E0F50(v0, type metadata accessor for _ProtoTextProperty);
}

uint64_t OUTLINED_FUNCTION_25_32()
{

  return sub_26A3E0F50(v0, type metadata accessor for _ProtoMultilineTextProperty);
}

uint64_t OUTLINED_FUNCTION_38_18(uint64_t a1)
{

  return sub_26A0E48F0(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_39_23()
{

  return sub_26A10FD9C();
}

uint64_t OUTLINED_FUNCTION_43_14()
{

  return sub_26A0E48F0(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_44_16()
{

  return sub_26A10FD9C();
}

uint64_t OUTLINED_FUNCTION_51_18()
{

  return sub_26A424FC4();
}

uint64_t OUTLINED_FUNCTION_60_16()
{

  return sub_26A3E1050(v1, v0);
}

void OUTLINED_FUNCTION_61_15(uint64_t a1@<X8>)
{
  *(v1 - 160) = a1;

  sub_26A10CD30();
}

uint64_t OUTLINED_FUNCTION_62_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  *(a1 + 16) = a9;

  return sub_26A0E5D68(v9, a1 + 32);
}

uint64_t OUTLINED_FUNCTION_63_13@<X0>(uint64_t a1@<X8>)
{
  *v1 = a1;
  v1[1] = 0;
  v1[2] = 0xE000000000000000;
  v4 = v1 + *(v2 + 24);

  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t OUTLINED_FUNCTION_64_13@<X0>(int a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  *(v3 - 192) = a3;
  *(v3 - 184) = a2;
  *(v3 - 196) = a1;

  return type metadata accessor for TextElement();
}

uint64_t OUTLINED_FUNCTION_65_15()
{
  v2 = *(v0 - 192);

  return sub_26A4249C4();
}

uint64_t OUTLINED_FUNCTION_66_12()
{

  return sub_26A424954();
}

void OUTLINED_FUNCTION_69_8()
{
  *(v1 - 160) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

uint64_t OUTLINED_FUNCTION_79_11()
{

  return sub_26A424954();
}

void *CoreChartElement.idioms.getter()
{
  if (*(*v0 + 16))
  {
  }

  else
  {
    return &unk_287B01440;
  }
}

uint64_t CoreChartElement.init(_:idioms:)(uint64_t a1)
{
  type metadata accessor for _ProtoCoreChartElement();
  OUTLINED_FUNCTION_0_85();
  sub_26A3E2838(v2, v3);
  sub_26A4249C4();

  return sub_26A3E2244(a1, type metadata accessor for CoreChart);
}

uint64_t static CoreChartElement.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CoreChart();
  v5 = OUTLINED_FUNCTION_41(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v12 = (&v20 - v11);
  CoreChartElement.chart.getter(&v20 - v11);
  CoreChartElement.chart.getter(v9);
  if (MEMORY[0x26D65B4F0](*v12, v12[1], *v9, v9[1]) & 1) != 0 && (v13 = *(type metadata accessor for _ProtoCoreChart() + 20), sub_26A424794(), sub_26A3E2838(qword_2815792E0, MEMORY[0x277D216C8]), (sub_26A424B64()))
  {
    sub_26A3E2244(v9, type metadata accessor for CoreChart);
    sub_26A3E2244(v12, type metadata accessor for CoreChart);
    if (*(*a1 + 16))
    {
    }

    else
    {
      v14 = &unk_287B01440;
    }

    v16 = sub_26A10BE7C(v14);
    if (*(*a2 + 16))
    {
    }

    else
    {
      v17 = &unk_287B01440;
    }

    v18 = sub_26A10BE7C(v17);
    v15 = sub_26A290AE0(v16, v18);
  }

  else
  {
    sub_26A3E2244(v9, type metadata accessor for CoreChart);
    sub_26A3E2244(v12, type metadata accessor for CoreChart);
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_26A3E1D28@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCB0, &qword_26A426740);
  OUTLINED_FUNCTION_41(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  v10 = type metadata accessor for _ProtoCoreChart();
  v11 = OUTLINED_FUNCTION_12(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_18();
  v16 = v15 - v14;
  OUTLINED_FUNCTION_3_62();
  sub_26A3E2914(v2, a1);
  v17 = *(type metadata accessor for _ProtoCoreChartElement() + 24);
  sub_26A30A3F0(a1 + v17, v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    *v16 = xmmword_26A426400;
    v18 = v16 + *(v10 + 20);
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    if (__swift_getEnumTagSinglePayload(v9, 1, v10) != 1)
    {
      sub_26A0E48F0(v9, &qword_28036CCB0, &qword_26A426740);
    }
  }

  else
  {
    sub_26A3E274C(v9, v16);
  }

  sub_26A0E4784(*v16, *(v16 + 8));
  *v16 = xmmword_26A426400;
  sub_26A0E48F0(a1 + v17, &qword_28036CCB0, &qword_26A426740);
  OUTLINED_FUNCTION_4_54();
  sub_26A3E274C(v16, a1 + v17);
  return __swift_storeEnumTagSinglePayload(a1 + v17, 0, 1, v10);
}

uint64_t CoreChartElement.chart.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCB0, &qword_26A426740);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  v9 = type metadata accessor for _ProtoCoreChart();
  v10 = OUTLINED_FUNCTION_12(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_18();
  v15 = (v14 - v13);
  v16 = type metadata accessor for _ProtoCoreChartElement();
  sub_26A30A3F0(v1 + *(v16 + 24), v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    *v15 = xmmword_26A426400;
    v17 = v15 + *(v9 + 20);
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
    {
      sub_26A0E48F0(v8, &qword_28036CCB0, &qword_26A426740);
    }
  }

  else
  {
    sub_26A3E274C(v8, v15);
  }

  return sub_26A3E274C(v15, a1);
}

uint64_t sub_26A3E2078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_16_11();
  v7 = type metadata accessor for _ProtoCoreChart();
  v8 = OUTLINED_FUNCTION_12(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18();
  v13 = v12 - v11;
  sub_26A3E2914(a2, v12 - v11);
  v14 = *(type metadata accessor for _ProtoCoreChartElement() + 24);
  sub_26A0E48F0(v3 + v14, &qword_28036CCB0, &qword_26A426740);
  OUTLINED_FUNCTION_4_54();
  sub_26A3E274C(v13, v3 + v14);
  __swift_storeEnumTagSinglePayload(v3 + v14, 0, 1, v7);
  v15 = *(a3 + 16);
  if (!v15)
  {
    v16 = MEMORY[0x277D84F90];
LABEL_5:
    v19 = *v3;

    *v3 = v16;
    return result;
  }

  v20[6] = v4;
  v16 = sub_26A41C230(v15, 0);
  v17 = sub_26A41C748(v20, (v16 + 4), v15, a3);

  result = sub_26A3CDE80();
  if (v17 == v15)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for CoreChartElement()
{
  result = qword_28157AB00;
  if (!qword_28157AB00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A3E2244(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t CoreChartElement.hash(into:)()
{
  type metadata accessor for _ProtoCoreChartElement();
  OUTLINED_FUNCTION_0_85();
  sub_26A3E2838(v0, v1);

  return sub_26A424B44();
}

uint64_t CoreChartElement.hashValue.getter()
{
  sub_26A425504();
  type metadata accessor for _ProtoCoreChartElement();
  OUTLINED_FUNCTION_0_85();
  sub_26A3E2838(v0, v1);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A3E2390()
{
  sub_26A425504();
  type metadata accessor for _ProtoCoreChartElement();
  sub_26A3E2838(&qword_280372558, type metadata accessor for _ProtoCoreChartElement);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t Array<A>.chart(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CoreChartElement();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  MEMORY[0x28223BE20](v8);
  MEMORY[0x28223BE20](v9);
  v11 = v43 - v10;
  MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v43 - v13);
  v19 = v43 - v18;
  v20 = *(a2 + 16);
  if (v20)
  {
    v45 = v16;
    v46 = v14;
    v47 = a3;
    v21 = *a1;
    v22 = *(a1 + 8);
    v23 = a2 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v24 = *(v15 + 72);
    v43[0] = v17;
    v43[1] = v23;
    v44 = v20;
    v25 = v20;
    do
    {
      sub_26A3E2914(v23, v11);
      v26 = *v11;
      if (*(*v11 + 16))
      {
        v27 = *v11;
      }

      else
      {
        v26 = &unk_287B026B0;
      }

      v28 = sub_26A165034(v21, v22, v26);

      if (v28)
      {
        v39 = v46;
        sub_26A3E274C(v11, v46);
        sub_26A3E274C(v39, v19);
        a3 = v47;
LABEL_20:
        CoreChartElement.chart.getter(a3);
        OUTLINED_FUNCTION_1_66();
        sub_26A3E2244(v19, v40);
        v38 = 0;
        goto LABEL_21;
      }

      sub_26A3E2244(v11, type metadata accessor for CoreChartElement);
      v23 += v24;
      --v25;
    }

    while (v25);
    v29 = 0;
    a3 = v47;
    v31 = v44;
    v30 = v45;
    do
    {
      OUTLINED_FUNCTION_5_54();
      sub_26A3E2914(v32, v30);
      if (*(*v30 + 16))
      {
      }

      else
      {
        v33 = &unk_287B026E0;
      }

      ++v29;
      v34 = v33[2] + 1;
      v35 = 4;
      while (--v34)
      {
        v36 = v33[v35];
        v35 += 2;
        if (!v36)
        {

          v19 = v43[0];
          sub_26A3E274C(v30, v43[0]);
          goto LABEL_20;
        }
      }

      OUTLINED_FUNCTION_1_66();
      sub_26A3E2244(v30, v37);
      v38 = 1;
    }

    while (v29 != v31);
  }

  else
  {
    v38 = 1;
  }

LABEL_21:
  v41 = type metadata accessor for CoreChart();
  return __swift_storeEnumTagSinglePayload(a3, v38, 1, v41);
}

uint64_t sub_26A3E274C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_16_11();
  v6 = v5(v4);
  OUTLINED_FUNCTION_12(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t sub_26A3E2838(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A3E28A8()
{
  result = type metadata accessor for _ProtoCoreChartElement();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A3E2914(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_16_11();
  v6 = v5(v4);
  OUTLINED_FUNCTION_12(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

void sub_26A3E29E8()
{
  OUTLINED_FUNCTION_76();
  v4 = v3;
  v72 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280373A30, &unk_26A4440B0);
  OUTLINED_FUNCTION_41(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_42();
  v69 = v10;
  OUTLINED_FUNCTION_45();
  v11 = type metadata accessor for ImageElement.Url();
  v12 = OUTLINED_FUNCTION_12(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_18();
  v15 = OUTLINED_FUNCTION_70_11();
  v67 = type metadata accessor for _ProtoImageElement.Url(v15);
  v16 = OUTLINED_FUNCTION_12(v67);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_8();
  v68 = v19;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_48();
  v70 = v22;
  v23 = OUTLINED_FUNCTION_45();
  v24 = type metadata accessor for _ProtoImageElement.DataMessage(v23);
  v25 = OUTLINED_FUNCTION_41(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_35_19();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D980, &qword_26A432970);
  OUTLINED_FUNCTION_41(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v31);
  v33 = &v66 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C910, &unk_26A425EC0);
  OUTLINED_FUNCTION_41(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v37);
  v38 = OUTLINED_FUNCTION_29_21();
  v71 = type metadata accessor for ImageElement.SourceType(v38);
  v39 = OUTLINED_FUNCTION_12(v71);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_76_12();
  sub_26A10FD9C();
  v42 = type metadata accessor for _ProtoImageElement.Source(0);
  if (__swift_getEnumTagSinglePayload(v33, 1, v42) == 1)
  {
    sub_26A0E48F0(v4, &qword_28036D980, &qword_26A432970);
    sub_26A0E48F0(v33, &qword_28036D980, &qword_26A432970);
    v43 = type metadata accessor for _ProtoImageElement.Source.OneOf_Value(0);
    v44 = 1;
    __swift_storeEnumTagSinglePayload(v0, 1, 1, v43);
LABEL_6:
    v48 = v71;
    v47 = v72;
    goto LABEL_21;
  }

  v66 = v4;
  v45 = *&v33[*(v42 + 20)];
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  sub_26A10FD9C();
  sub_26A3E53B8(v33, type metadata accessor for _ProtoImageElement.Source);
  v46 = type metadata accessor for _ProtoImageElement.Source.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v0, 1, v46) == 1)
  {
    sub_26A0E48F0(v66, &qword_28036D980, &qword_26A432970);
LABEL_5:
    v44 = 1;
    goto LABEL_6;
  }

  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_26A0E48F0(v66, &qword_28036D980, &qword_26A432970);
      OUTLINED_FUNCTION_17_33();
      OUTLINED_FUNCTION_175();
      sub_26A3E5364();
      goto LABEL_20;
    case 2u:
      v49 = v70;
      sub_26A3E5364();
      OUTLINED_FUNCTION_22_31();
      sub_26A3E5310();
      v50 = v69;
      sub_26A385CE0();
      if (__swift_getEnumTagSinglePayload(v50, 1, v11) == 1)
      {
        sub_26A0E48F0(v50, &qword_280373A30, &unk_26A4440B0);
        if (qword_28036C5A0 != -1)
        {
          swift_once();
        }

        v51 = sub_26A424AE4();
        __swift_project_value_buffer(v51, qword_2803A8950);
        OUTLINED_FUNCTION_22_31();
        v52 = v68;
        sub_26A3E5310();
        v53 = v49;
        v54 = sub_26A424AD4();
        v55 = sub_26A424E04();
        v56 = os_log_type_enabled(v54, v55);
        v57 = v66;
        if (v56)
        {
          v58 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          v73 = v59;
          *v58 = 136315138;
          v60 = *(v52 + *(v67 + 20));
          OUTLINED_FUNCTION_86_0();
          swift_beginAccess();
          v61 = *(v60 + 16);
          v62 = *(v60 + 24);

          sub_26A3E53B8(v52, type metadata accessor for _ProtoImageElement.Url);
          v63 = sub_26A0E8788(v61, v62, &v73);

          *(v58 + 4) = v63;
          _os_log_impl(&dword_26A0B8000, v54, v55, "Value supplied is not a valid URL: %s", v58, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v59);
          MEMORY[0x26D65C950](v59, -1, -1);
          MEMORY[0x26D65C950](v58, -1, -1);

          sub_26A0E48F0(v57, &qword_28036D980, &qword_26A432970);
          v64 = v53;
        }

        else
        {

          sub_26A0E48F0(v57, &qword_28036D980, &qword_26A432970);
          sub_26A3E53B8(v53, type metadata accessor for _ProtoImageElement.Url);
          v64 = v52;
        }

        sub_26A3E53B8(v64, type metadata accessor for _ProtoImageElement.Url);
        goto LABEL_5;
      }

      sub_26A0E48F0(v66, &qword_28036D980, &qword_26A432970);
      sub_26A3E53B8(v49, type metadata accessor for _ProtoImageElement.Url);
      sub_26A3E5364();
      OUTLINED_FUNCTION_75_13();
      sub_26A3E5364();
LABEL_20:
      v48 = v71;
      v47 = v72;
      swift_storeEnumTagMultiPayload();
      sub_26A3E5364();
      v44 = 0;
      break;
    case 3u:
      sub_26A0E48F0(v66, &qword_28036D980, &qword_26A432970);
      OUTLINED_FUNCTION_18_34();
      OUTLINED_FUNCTION_175();
      sub_26A3E5364();
      goto LABEL_20;
    case 4u:
      sub_26A0E48F0(v66, &qword_28036D980, &qword_26A432970);
      OUTLINED_FUNCTION_48_22();
      OUTLINED_FUNCTION_175();
      sub_26A3E5364();
      goto LABEL_20;
    case 5u:
      sub_26A0E48F0(v66, &qword_28036D980, &qword_26A432970);
      OUTLINED_FUNCTION_43_15();
      OUTLINED_FUNCTION_175();
      sub_26A3E5364();
      goto LABEL_20;
    case 6u:
      sub_26A0E48F0(v66, &qword_28036D980, &qword_26A432970);
      type metadata accessor for ImageElement.BadgedImage();
      v65 = swift_allocBox();
      OUTLINED_FUNCTION_42_14();
      sub_26A3E5364();
      *v1 = v65;
      goto LABEL_20;
    default:
      sub_26A0E48F0(v66, &qword_28036D980, &qword_26A432970);
      sub_26A3E5364();
      sub_26A13BEE8(*(v2 + 48), *(v2 + 56));
      sub_26A3E5364();
      goto LABEL_20;
  }

LABEL_21:
  __swift_storeEnumTagSinglePayload(v47, v44, 1, v48);
  OUTLINED_FUNCTION_75();
}

void sub_26A3E31B8()
{
  OUTLINED_FUNCTION_76();
  v4 = v3;
  v5 = type metadata accessor for _ProtoImageElement.BadgedImage(0);
  v6 = OUTLINED_FUNCTION_41(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_45();
  v9 = type metadata accessor for ImageElement.BadgedImage();
  v10 = OUTLINED_FUNCTION_41(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_11();
  v162 = v13;
  v14 = OUTLINED_FUNCTION_45();
  v15 = type metadata accessor for _ProtoImageElement.Contact(v14);
  v16 = OUTLINED_FUNCTION_41(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_11();
  v19 = OUTLINED_FUNCTION_45();
  v20 = type metadata accessor for ImageElement.Contact(v19);
  v21 = OUTLINED_FUNCTION_41(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_11();
  v161 = v24;
  v25 = OUTLINED_FUNCTION_45();
  v26 = type metadata accessor for _ProtoImageElement.Url(v25);
  v27 = OUTLINED_FUNCTION_41(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_45();
  v158 = type metadata accessor for ImageElement.Url();
  v30 = OUTLINED_FUNCTION_12(v158);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_11();
  v160 = v33;
  v34 = OUTLINED_FUNCTION_45();
  v35 = type metadata accessor for _ProtoImageElement.AppIcon(v34);
  v36 = OUTLINED_FUNCTION_41(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_45();
  v39 = type metadata accessor for ImageElement.AppIcon();
  v40 = OUTLINED_FUNCTION_41(v39);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_11();
  v159 = v43;
  v44 = OUTLINED_FUNCTION_45();
  v45 = type metadata accessor for _ProtoImageElement.Bundle(v44);
  v46 = OUTLINED_FUNCTION_41(v45);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_45();
  v49 = type metadata accessor for ImageElement.Bundle();
  v50 = OUTLINED_FUNCTION_41(v49);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_11();
  v157 = v53;
  OUTLINED_FUNCTION_45();
  v54 = type metadata accessor for ImageElement.AssetData();
  v55 = OUTLINED_FUNCTION_41(v54);
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_18();
  v58 = OUTLINED_FUNCTION_55_8();
  v59 = type metadata accessor for _ProtoImageElement.DataMessage(v58);
  v60 = OUTLINED_FUNCTION_41(v59);
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_45();
  v64 = type metadata accessor for ImageElement.PNGData();
  v65 = OUTLINED_FUNCTION_41(v64);
  v67 = *(v66 + 64);
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_18();
  v70 = v69 - v68;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C910, &unk_26A425EC0);
  OUTLINED_FUNCTION_41(v71);
  v73 = *(v72 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_42();
  v163 = v75;
  v76 = OUTLINED_FUNCTION_45();
  v77 = type metadata accessor for _ProtoImageElement.Symbol(v76);
  v78 = OUTLINED_FUNCTION_41(v77);
  v80 = *(v79 + 64);
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_18();
  v81 = OUTLINED_FUNCTION_70_11();
  v82 = type metadata accessor for ImageElement.Symbol(v81);
  v83 = OUTLINED_FUNCTION_41(v82);
  v85 = *(v84 + 64);
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_18();
  v86 = OUTLINED_FUNCTION_54_16();
  v87 = type metadata accessor for ImageElement.SourceType(v86);
  v88 = OUTLINED_FUNCTION_12(v87);
  v90 = *(v89 + 64);
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_76_12();
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v91 = *(type metadata accessor for _ProtoImageElement.Source(0) + 20);
  if (qword_28157A098 != -1)
  {
    OUTLINED_FUNCTION_74_6();
  }

  v92 = v4;
  *(v4 + v91) = qword_28157A0A0;
  OUTLINED_FUNCTION_20_33();
  sub_26A3E5310();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_26A3E5364();
      OUTLINED_FUNCTION_47_19();
      sub_26A3E5310();

      if (OUTLINED_FUNCTION_84_9())
      {
        sub_26A3E53B8(v70, type metadata accessor for ImageElement.PNGData);
        v94 = *(v1 + v91);
      }

      else
      {
        v144 = OUTLINED_FUNCTION_64_14();
        OUTLINED_FUNCTION_188_0(v144);
        OUTLINED_FUNCTION_36_17();

        sub_26A244A48();
        v94 = v145;
        OUTLINED_FUNCTION_5_55();
        sub_26A3E53B8(v70, v146);

        *(v1 + v92) = v94;
      }

      v107 = v163;
      OUTLINED_FUNCTION_15_42();
      OUTLINED_FUNCTION_217_0();
      sub_26A3E5364();
      type metadata accessor for _ProtoImageElement.Source.OneOf_Value(0);
      OUTLINED_FUNCTION_31_22();
      goto LABEL_36;
    case 2u:
      sub_26A3E5364();
      OUTLINED_FUNCTION_47_19();
      sub_26A3E5310();

      v95 = *(v4 + v91);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        sub_26A3E53B8(v2, type metadata accessor for ImageElement.AssetData);
        v96 = *(v4 + v91);
      }

      else
      {
        v108 = *(v4 + v91);
        v109 = type metadata accessor for _ProtoImageElement.Source._StorageClass(0);
        OUTLINED_FUNCTION_188_0(v109);

        sub_26A244A48();
        v96 = v110;
        OUTLINED_FUNCTION_45_13();
        sub_26A3E53B8(v2, v111);

        *(v92 + v91) = v96;
      }

      OUTLINED_FUNCTION_15_42();
      sub_26A3E5364();
      v112 = type metadata accessor for _ProtoImageElement.Source.OneOf_Value(0);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_126_0();
      __swift_storeEnumTagSinglePayload(v113, v114, v115, v112);
      v116 = OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement6SourceP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__value;
      OUTLINED_FUNCTION_61_16();
      v117 = v96 + v116;
      v118 = v163;
      goto LABEL_38;
    case 3u:
      sub_26A3E5364();
      sub_26A3E5310();

      v97 = *(v4 + v91);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        sub_26A3E53B8(v157, type metadata accessor for ImageElement.Bundle);
        v98 = *(v4 + v91);
      }

      else
      {
        v119 = v91;
        v120 = *(v4 + v91);
        v121 = type metadata accessor for _ProtoImageElement.Source._StorageClass(0);
        OUTLINED_FUNCTION_188_0(v121);
        OUTLINED_FUNCTION_36_17();

        sub_26A244A48();
        v98 = v122;
        OUTLINED_FUNCTION_7_32();
        sub_26A3E53B8(v157, v123);

        *(v4 + v119) = v98;
      }

      v107 = v163;
      OUTLINED_FUNCTION_17_33();
      OUTLINED_FUNCTION_217_0();
      sub_26A3E5364();
      v124 = type metadata accessor for _ProtoImageElement.Source.OneOf_Value(0);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_126_0();
      __swift_storeEnumTagSinglePayload(v125, v126, v127, v124);
      v128 = OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement6SourceP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__value;
      OUTLINED_FUNCTION_61_16();
      v117 = v98 + v128;
      goto LABEL_37;
    case 4u:
      sub_26A3E5364();
      sub_26A3E5310();

      if (OUTLINED_FUNCTION_84_9())
      {
        sub_26A3E53B8(v159, type metadata accessor for ImageElement.AppIcon);
        v94 = *(v1 + v91);
      }

      else
      {
        v103 = OUTLINED_FUNCTION_64_14();
        OUTLINED_FUNCTION_188_0(v103);
        OUTLINED_FUNCTION_36_17();

        sub_26A244A48();
        v94 = v104;
        v105 = OUTLINED_FUNCTION_35_26();
        sub_26A3E53B8(v105, v106);

        *(v1 + v92) = v94;
      }

      v107 = v163;
      OUTLINED_FUNCTION_48_22();
      OUTLINED_FUNCTION_217_0();
      sub_26A3E5364();
      type metadata accessor for _ProtoImageElement.Source.OneOf_Value(0);
      OUTLINED_FUNCTION_31_22();
      goto LABEL_36;
    case 5u:
      sub_26A3E5364();
      v102 = *(v158 + 24);
      OUTLINED_FUNCTION_22_31();
      sub_26A3E5310();

      if (OUTLINED_FUNCTION_84_9())
      {
        sub_26A3E53B8(v160, type metadata accessor for ImageElement.Url);
        v94 = *(v1 + v91);
      }

      else
      {
        v147 = OUTLINED_FUNCTION_64_14();
        OUTLINED_FUNCTION_188_0(v147);
        OUTLINED_FUNCTION_36_17();

        sub_26A244A48();
        v94 = v148;
        OUTLINED_FUNCTION_39_24();
        sub_26A3E53B8(v160, v149);

        *(v1 + v92) = v94;
      }

      v107 = v163;
      OUTLINED_FUNCTION_217_0();
      sub_26A3E5364();
      type metadata accessor for _ProtoImageElement.Source.OneOf_Value(0);
      OUTLINED_FUNCTION_31_22();
      goto LABEL_36;
    case 6u:
      sub_26A3E5364();
      sub_26A3E5310();

      if (OUTLINED_FUNCTION_84_9())
      {
        sub_26A3E53B8(v161, type metadata accessor for ImageElement.Contact);
        v94 = *(v1 + v91);
      }

      else
      {
        v150 = OUTLINED_FUNCTION_64_14();
        OUTLINED_FUNCTION_188_0(v150);
        OUTLINED_FUNCTION_36_17();

        sub_26A244A48();
        v94 = v151;
        OUTLINED_FUNCTION_38_19();
        sub_26A3E53B8(v161, v152);

        *(v1 + v92) = v94;
      }

      v107 = v163;
      OUTLINED_FUNCTION_43_15();
      OUTLINED_FUNCTION_217_0();
      sub_26A3E5364();
      type metadata accessor for _ProtoImageElement.Source.OneOf_Value(0);
      OUTLINED_FUNCTION_31_22();
      goto LABEL_36;
    case 7u:
      v99 = *v0;
      swift_projectBox();
      OUTLINED_FUNCTION_46_13();
      sub_26A3E5310();
      sub_26A3E5310();

      v100 = *(v4 + v91);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        sub_26A3E53B8(v162, type metadata accessor for ImageElement.BadgedImage);
        v101 = *(v4 + v91);
      }

      else
      {
        v129 = v91;
        v130 = *(v4 + v91);
        v131 = type metadata accessor for _ProtoImageElement.Source._StorageClass(0);
        OUTLINED_FUNCTION_188_0(v131);
        OUTLINED_FUNCTION_36_17();

        sub_26A244A48();
        v101 = v132;
        OUTLINED_FUNCTION_6_39();
        sub_26A3E53B8(v162, v133);

        *(v4 + v129) = v101;
      }

      OUTLINED_FUNCTION_42_14();
      sub_26A3E5364();
      v134 = type metadata accessor for _ProtoImageElement.Source.OneOf_Value(0);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_126_0();
      __swift_storeEnumTagSinglePayload(v135, v136, v137, v134);
      v138 = OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement6SourceP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__value;
      OUTLINED_FUNCTION_61_16();
      sub_26A3E7F4C(v163, v101 + v138);
      swift_endAccess();

      goto LABEL_39;
    default:
      sub_26A3E5364();
      sub_26A3E5310();

      v93 = *(v4 + v91);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        sub_26A3E53B8(v1, type metadata accessor for ImageElement.Symbol);
        v94 = *(v4 + v91);
      }

      else
      {
        v139 = v91;
        v140 = *(v4 + v91);
        v141 = type metadata accessor for _ProtoImageElement.Source._StorageClass(0);
        OUTLINED_FUNCTION_188_0(v141);
        OUTLINED_FUNCTION_36_17();

        sub_26A244A48();
        v94 = v142;
        OUTLINED_FUNCTION_0_86();
        sub_26A3E53B8(v1, v143);

        *(v92 + v139) = v94;
      }

      v107 = v163;
      OUTLINED_FUNCTION_18_34();
      sub_26A3E5364();
      type metadata accessor for _ProtoImageElement.Source.OneOf_Value(0);
      OUTLINED_FUNCTION_31_22();
LABEL_36:
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_126_0();
      __swift_storeEnumTagSinglePayload(v153, v154, v155, v0);
      v156 = OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement6SourceP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__value;
      OUTLINED_FUNCTION_61_16();
      v117 = v94 + v156;
LABEL_37:
      v118 = v107;
LABEL_38:
      sub_26A3E7F4C(v118, v117);
      swift_endAccess();
LABEL_39:
      OUTLINED_FUNCTION_75();
      return;
  }
}

void sub_26A3E3D8C()
{
  OUTLINED_FUNCTION_76();
  v51 = v0;
  v52 = v2;
  v50 = type metadata accessor for _ProtoImageElement.Symbol(0);
  v3 = OUTLINED_FUNCTION_12(v50);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  v6 = OUTLINED_FUNCTION_14_29();
  v7 = type metadata accessor for ImageElement.Symbol(v6);
  v8 = OUTLINED_FUNCTION_41(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18();
  v11 = OUTLINED_FUNCTION_54_16();
  v12 = type metadata accessor for _ProtoImageElement.Bundle(v11);
  v13 = OUTLINED_FUNCTION_12(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_55_8();
  v16 = type metadata accessor for ImageElement.Bundle();
  v17 = OUTLINED_FUNCTION_41(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_18();
  v22 = v21 - v20;
  v23 = type metadata accessor for _ProtoImageElement.DataMessage(0);
  v24 = OUTLINED_FUNCTION_12(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29_21();
  v27 = type metadata accessor for ImageElement.PNGData();
  v28 = OUTLINED_FUNCTION_41(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_18();
  v33 = v32 - v31;
  v34 = type metadata accessor for ImageElement.SourceType.LoadingImage(0);
  v35 = OUTLINED_FUNCTION_12(v34);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_76_12();
  OUTLINED_FUNCTION_16_29();
  sub_26A3E5310();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v39 = sub_26A3E5364();
      MEMORY[0x28223BE20](v39);
      *(&v50 - 2) = v22;
      OUTLINED_FUNCTION_14_33();
      sub_26A3E7CE8(v40, v41);
      sub_26A4249C4();
      OUTLINED_FUNCTION_17_33();
      sub_26A3E5364();
      type metadata accessor for _ProtoImageElement.Url.OneOf_LoadingImage(0);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_7_32();
      v43 = v22;
    }

    else
    {
      v47 = sub_26A3E5364();
      MEMORY[0x28223BE20](v47);
      *(&v50 - 2) = v1;
      OUTLINED_FUNCTION_21_29();
      sub_26A3E7CE8(v48, v49);
      sub_26A4249C4();
      OUTLINED_FUNCTION_18_34();
      sub_26A3E5364();
      type metadata accessor for _ProtoImageElement.Url.OneOf_LoadingImage(0);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_0_86();
      v43 = v1;
    }
  }

  else
  {
    v44 = sub_26A3E5364();
    MEMORY[0x28223BE20](v44);
    *(&v50 - 2) = v33;
    OUTLINED_FUNCTION_9_46();
    sub_26A3E7CE8(v45, v46);
    sub_26A4249C4();
    OUTLINED_FUNCTION_15_42();
    sub_26A3E5364();
    type metadata accessor for _ProtoImageElement.Url.OneOf_LoadingImage(0);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_5_55();
    v43 = v33;
  }

  sub_26A3E53B8(v43, v42);
  OUTLINED_FUNCTION_75();
}

void ImageElement.SourceType.description.getter()
{
  OUTLINED_FUNCTION_76();
  v268 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D980, &qword_26A432970);
  v4 = OUTLINED_FUNCTION_41(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_8();
  v264 = v7;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_47();
  v265 = v9;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_47();
  v266 = v11;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_48();
  v261 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D510, &qword_26A4283C8);
  v15 = OUTLINED_FUNCTION_41(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_8();
  v263 = v18;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_48();
  v260 = v20;
  v259 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBE0, &qword_26A426640);
  OUTLINED_FUNCTION_12(v259);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_42();
  v262 = v24;
  OUTLINED_FUNCTION_45();
  v25 = type metadata accessor for ImageElement.BadgedImage();
  v26 = OUTLINED_FUNCTION_41(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_8();
  v257 = v29;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_48();
  v267 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D9D0, &qword_26A432980);
  OUTLINED_FUNCTION_41(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_42();
  v254 = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D518, &qword_26A4283D0);
  OUTLINED_FUNCTION_41(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_42();
  v256 = v41;
  v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CFC0, &qword_26A426BE8);
  OUTLINED_FUNCTION_12(v252);
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_42();
  v258 = v45;
  v46 = OUTLINED_FUNCTION_45();
  v47 = type metadata accessor for ImageElement.Contact(v46);
  v48 = OUTLINED_FUNCTION_41(v47);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_8();
  v250 = v51;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_48();
  v255 = v53;
  OUTLINED_FUNCTION_45();
  v54 = type metadata accessor for ImageElement.Url();
  v55 = OUTLINED_FUNCTION_41(v54);
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_49(v58);
  v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBD0, &qword_26A426630);
  OUTLINED_FUNCTION_12(v248);
  v60 = *(v59 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_42();
  v251 = v62;
  OUTLINED_FUNCTION_45();
  v63 = type metadata accessor for ImageElement.AppIcon();
  v64 = OUTLINED_FUNCTION_41(v63);
  v66 = *(v65 + 64);
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_8();
  v246 = v67;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v69);
  v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBC8, &qword_26A426628);
  OUTLINED_FUNCTION_12(v245);
  v71 = *(v70 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_42();
  v253 = v73;
  OUTLINED_FUNCTION_45();
  v74 = type metadata accessor for ImageElement.Bundle();
  v75 = OUTLINED_FUNCTION_41(v74);
  v77 = *(v76 + 64);
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_8();
  v244 = v78;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v80);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBC0, &qword_26A426620);
  OUTLINED_FUNCTION_12(v81);
  v83 = *(v82 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v84);
  v86 = &v244 - v85;
  v87 = type metadata accessor for ImageElement.AssetData();
  v88 = OUTLINED_FUNCTION_41(v87);
  v90 = *(v89 + 64);
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_204_0();
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v92);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBA8, &qword_26A4265B8);
  OUTLINED_FUNCTION_12(v93);
  v95 = *(v94 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_29_21();
  v97 = type metadata accessor for ImageElement.PNGData();
  v98 = OUTLINED_FUNCTION_41(v97);
  v100 = *(v99 + 64);
  MEMORY[0x28223BE20](v98);
  OUTLINED_FUNCTION_17();
  v103 = v101 - v102;
  MEMORY[0x28223BE20](v104);
  OUTLINED_FUNCTION_48();
  v106 = v105;
  v107 = OUTLINED_FUNCTION_45();
  v108 = type metadata accessor for ImageElement.Symbol(v107);
  v109 = OUTLINED_FUNCTION_41(v108);
  v111 = *(v110 + 64);
  MEMORY[0x28223BE20](v109);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_76_12();
  v112 = type metadata accessor for ImageElement.SourceType(0);
  v113 = OUTLINED_FUNCTION_12(v112);
  v115 = *(v114 + 64);
  MEMORY[0x28223BE20](v113);
  OUTLINED_FUNCTION_18();
  v118 = (v117 - v116);
  OUTLINED_FUNCTION_20_33();
  sub_26A3E5310();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v198 = v106;
      sub_26A3E5364();
      sub_26A3E5310();
      OUTLINED_FUNCTION_37_0();
      sub_26A3E5310();
      *(v0 + *(v93 + 32)) = 0;
      v124 = type metadata accessor for ImageElement.PNGData;
      sub_26A3E53B8(v103, type metadata accessor for ImageElement.PNGData);
      *(v0 + *(v93 + 28)) = MEMORY[0x277D84F90];
      v199 = *v0;
      v200 = *(v0 + 8);
      v201 = OUTLINED_FUNCTION_12_2();
      sub_26A0E45C0(v201, v202);
      OUTLINED_FUNCTION_12_2();
      OUTLINED_FUNCTION_86_0();
      sub_26A3A7250(v203, v204, v205, v206);
      v207 = OUTLINED_FUNCTION_12_2();
      sub_26A0E4784(v207, v208);
      swift_getKeyPath();
      OUTLINED_FUNCTION_28_24();
      OUTLINED_FUNCTION_79_12();
      sub_26A0F8814(v209, v210, v211, v212, v213, v214, v215, v216, v244, v245);

      v217 = *(v0 + 24);
      OUTLINED_FUNCTION_51_19(*(v0 + 16));
      OUTLINED_FUNCTION_13_37();
      OUTLINED_FUNCTION_30_18();
      sub_26A148554();
      swift_getKeyPath();
      OUTLINED_FUNCTION_3_63();
      sub_26A0F88E8();

      ImageElement.PNGData.fixedWidth.getter();
      OUTLINED_FUNCTION_23_40();
      sub_26A1484B8(v218);
      ImageElement.PNGData.fixedHeight.getter();
      OUTLINED_FUNCTION_2_57();
      sub_26A1484B8(v219);
      sub_26A1030B8();
      OUTLINED_FUNCTION_57_16();
      sub_26A0E48F0(v0, &qword_28036CBA8, &qword_26A4265B8);
      v131 = v198;
      goto LABEL_12;
    case 2u:
      sub_26A3E5364();
      sub_26A3E5310();
      sub_26A3E5310();
      v86[*(v81 + 32)] = 0;
      OUTLINED_FUNCTION_44_17();
      sub_26A3E53B8(v2, v132);
      *&v86[*(v81 + 28)] = MEMORY[0x277D84F90];
      v133 = *(v86 + 6);
      v134 = *(v86 + 7);
      v135 = OUTLINED_FUNCTION_78_1();
      sub_26A0E45C0(v135, v136);
      OUTLINED_FUNCTION_78_1();
      OUTLINED_FUNCTION_86_0();
      sub_26A3A70B4(v137, v138, v139, v140);
      v141 = OUTLINED_FUNCTION_78_1();
      sub_26A0E4784(v141, v142);
      v143 = v86[24];
      OUTLINED_FUNCTION_51_19(*(v86 + 2));
      OUTLINED_FUNCTION_13_37();
      OUTLINED_FUNCTION_30_18();
      sub_26A147A70();
      swift_getKeyPath();
      OUTLINED_FUNCTION_3_63();
      sub_26A0F87C4();

      ImageElement.AssetData.fixedWidth.getter();
      OUTLINED_FUNCTION_23_40();
      sub_26A1479D4(v144);
      ImageElement.AssetData.fixedHeight.getter();
      OUTLINED_FUNCTION_2_57();
      sub_26A1479D4(v145);
      sub_26A102D0C();
      OUTLINED_FUNCTION_57_16();
      v146 = &qword_28036CBC0;
      v147 = &qword_26A426620;
      v148 = v86;
      goto LABEL_17;
    case 3u:
      sub_26A3E5364();
      v149 = v244;
      sub_26A3E5310();
      v150 = v253;
      OUTLINED_FUNCTION_75_13();
      sub_26A3E5310();
      v151 = v245;
      *(v150 + *(v245 + 32)) = 0;
      OUTLINED_FUNCTION_41_19();
      sub_26A3E53B8(v149, v152);
      *(v150 + *(v151 + 28)) = MEMORY[0x277D84F90];
      swift_getKeyPath();
      OUTLINED_FUNCTION_81_10();
      sub_26A0F8170(v153, v154, v155, v156, v157, v158, v159, v160, v244, v245);

      swift_getKeyPath();
      OUTLINED_FUNCTION_28_24();
      OUTLINED_FUNCTION_79_12();
      sub_26A0F8910(v161, v162, v163, v164, v165, v166, v167, v168, v244, v245);

      swift_getKeyPath();
      OUTLINED_FUNCTION_53_15();
      sub_26A0F8170(v170, v169 & 0xFFFFFFFFFFFFLL | 0x6449000000000000, 0xE800000000000000, 0, v171, v172, v173, v174, v244, v245);

      swift_getKeyPath();
      OUTLINED_FUNCTION_53_15();
      sub_26A0F8170(v176, v175 & 0xFFFFFFFFFFFFLL | 0x6150000000000000, 0xEA00000000006874, 0, v177, v178, v179, v180, v244, v245);

      v181 = *(v150 + 40);
      OUTLINED_FUNCTION_51_19(*(v150 + 32));
      OUTLINED_FUNCTION_13_37();
      OUTLINED_FUNCTION_30_18();
      sub_26A148698();
      swift_getKeyPath();
      OUTLINED_FUNCTION_3_63();
      sub_26A0F8938();

      ImageElement.Bundle.fixedWidth.getter();
      OUTLINED_FUNCTION_23_40();
      sub_26A1485FC(v182);
      ImageElement.Bundle.fixedHeight.getter();
      OUTLINED_FUNCTION_2_57();
      sub_26A1485FC(v183);
      sub_26A103280();
      OUTLINED_FUNCTION_57_16();
      v146 = &qword_28036CBC8;
      v147 = &qword_26A426628;
      goto LABEL_16;
    case 4u:
      v120 = v249;
      sub_26A3E5364();
      v121 = v246;
      sub_26A3E5310();
      v122 = v251;
      OUTLINED_FUNCTION_75_13();
      sub_26A3E5310();
      v123 = v248;
      *(v122 + *(v248 + 32)) = 1;
      v124 = type metadata accessor for ImageElement.AppIcon;
      sub_26A3E53B8(v121, type metadata accessor for ImageElement.AppIcon);
      *(v122 + *(v123 + 28)) = MEMORY[0x277D84F90];
      KeyPath = swift_getKeyPath();
      sub_26A0F8120(KeyPath, 0xD00000000000001BLL, 0x800000026A44B260, 0, v126, v127, v128, v129, v244, v245);

      v130 = *(v122 + 24);
      OUTLINED_FUNCTION_51_19(*(v122 + 16));
      OUTLINED_FUNCTION_13_37();
      OUTLINED_FUNCTION_30_18();
      sub_26A14792C();
      sub_26A102B44();
      OUTLINED_FUNCTION_57_16();
      sub_26A0E48F0(v122, &qword_28036CBD0, &qword_26A426630);
      v131 = v120;
LABEL_12:
      v220 = v124;
      goto LABEL_18;
    case 5u:
      v1 = v247;
      sub_26A3E5364();
      sub_26A3860B8();
      OUTLINED_FUNCTION_57_16();
      v119 = type metadata accessor for ImageElement.Url;
      goto LABEL_14;
    case 6u:
      sub_26A3E5364();
      v221 = v250;
      sub_26A3E5310();
      v150 = v258;
      OUTLINED_FUNCTION_75_13();
      sub_26A3E5310();
      v222 = v252;
      *(v150 + *(v252 + 32)) = 0;
      OUTLINED_FUNCTION_37_16();
      sub_26A3E53B8(v221, v223);
      *(v150 + *(v222 + 28)) = MEMORY[0x277D84F90];
      v224 = v254;
      sub_26A10FD9C();
      v225 = v256;
      sub_26A41DBFC(v224, v256);
      type metadata accessor for ImageElement.Contact.Content(0);
      OUTLINED_FUNCTION_126_0();
      __swift_storeEnumTagSinglePayload(v226, v227, v228, v229);
      OUTLINED_FUNCTION_86_0();
      sub_26A1471B0();
      sub_26A0E48F0(v225, &qword_28036D518, &qword_26A4283D0);
      v230 = v150 + *(type metadata accessor for _ProtoImageElement.Contact(0) + 20);
      v231 = *v230;
      LOBYTE(v230) = *(v230 + 8);
      v270 = v231;
      v271 = v230;
      sub_26A217A84(&v270, &v269);
      OUTLINED_FUNCTION_13_37();
      OUTLINED_FUNCTION_30_18();
      sub_26A147108();
      sub_26A1027A4();
      OUTLINED_FUNCTION_57_16();
      v146 = &qword_28036CFC0;
      v147 = &qword_26A426BE8;
LABEL_16:
      v148 = v150;
LABEL_17:
      sub_26A0E48F0(v148, v146, v147);
      v131 = OUTLINED_FUNCTION_37_0();
      goto LABEL_18;
    case 7u:
      v184 = *v118;
      swift_projectBox();
      v185 = v267;
      sub_26A3E5310();
      v186 = v257;
      sub_26A3E5310();
      v187 = v262;
      sub_26A3E5310();
      v188 = v259;
      *(v187 + *(v259 + 32)) = 0;
      OUTLINED_FUNCTION_6_39();
      sub_26A3E53B8(v186, v189);
      *(v187 + *(v188 + 28)) = MEMORY[0x277D84F90];
      v190 = *(v187 + *(type metadata accessor for _ProtoImageElement.BadgedImage(0) + 20));
      OUTLINED_FUNCTION_86_0();
      swift_beginAccess();
      v191 = v266;
      sub_26A10FD9C();
      v192 = type metadata accessor for _ProtoImageElement.Source(0);
      if (OUTLINED_FUNCTION_83_11(v191) == 1)
      {
        v193 = v261;
        _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
        v194 = *(v192 + 20);
        v195 = v264;
        if (qword_28157A098 != -1)
        {
          OUTLINED_FUNCTION_74_6();
        }

        *(v193 + v194) = qword_28157A0A0;
        v196 = v266;
        v197 = OUTLINED_FUNCTION_83_11(v266);

        v185 = v267;
        if (v197 != 1)
        {
          sub_26A0E48F0(v196, &qword_28036D980, &qword_26A432970);
        }
      }

      else
      {
        sub_26A3E5364();
        v195 = v264;
      }

      OUTLINED_FUNCTION_126_0();
      __swift_storeEnumTagSinglePayload(v232, v233, v234, v192);
      v235 = v260;
      sub_26A3E29E8();
      sub_26A146FF8();
      sub_26A0E48F0(v235, &qword_28036D510, &qword_26A4283C8);
      OUTLINED_FUNCTION_86_0();
      swift_beginAccess();
      sub_26A10FD9C();
      if (OUTLINED_FUNCTION_83_11(v195) == 1)
      {
        v236 = v265;
        _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
        v237 = *(v192 + 20);
        if (qword_28157A098 != -1)
        {
          OUTLINED_FUNCTION_74_6();
        }

        *(v236 + v237) = qword_28157A0A0;
        v238 = OUTLINED_FUNCTION_83_11(v195);

        if (v238 != 1)
        {
          sub_26A0E48F0(v195, &qword_28036D980, &qword_26A432970);
        }
      }

      else
      {
        sub_26A3E5364();
      }

      OUTLINED_FUNCTION_126_0();
      __swift_storeEnumTagSinglePayload(v239, v240, v241, v192);
      v242 = v263;
      sub_26A3E29E8();
      sub_26A146FF8();
      sub_26A0E48F0(v242, &qword_28036D510, &qword_26A4283C8);
      sub_26A1025C8();
      OUTLINED_FUNCTION_57_16();
      sub_26A0E48F0(v187, &qword_28036CBE0, &qword_26A426640);
      OUTLINED_FUNCTION_6_39();
      sub_26A3E53B8(v185, v243);

      goto LABEL_19;
    default:
      sub_26A3E5364();
      sub_26A143944();
      OUTLINED_FUNCTION_57_16();
      v119 = type metadata accessor for ImageElement.Symbol;
LABEL_14:
      v220 = v119;
      v131 = v1;
LABEL_18:
      sub_26A3E53B8(v131, v220);
LABEL_19:
      OUTLINED_FUNCTION_12_2();
      OUTLINED_FUNCTION_75();
      return;
  }
}

uint64_t sub_26A3E5310()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t sub_26A3E5364()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t sub_26A3E53B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void static ImageElement.SourceType.== infix(_:_:)()
{
  OUTLINED_FUNCTION_76();
  v146 = v1;
  v147 = v2;
  v3 = type metadata accessor for ImageElement.BadgedImage();
  v4 = OUTLINED_FUNCTION_41(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_8();
  v142 = v7;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_48();
  v143 = v9;
  v10 = OUTLINED_FUNCTION_45();
  v11 = type metadata accessor for ImageElement.Contact(v10);
  v12 = OUTLINED_FUNCTION_41(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_11();
  v139 = v15;
  OUTLINED_FUNCTION_45();
  v135 = type metadata accessor for ImageElement.Url();
  v16 = OUTLINED_FUNCTION_12(v135);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_11();
  v141 = v19;
  OUTLINED_FUNCTION_45();
  v20 = type metadata accessor for ImageElement.AppIcon();
  v21 = OUTLINED_FUNCTION_41(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_11();
  v140 = v24;
  OUTLINED_FUNCTION_45();
  v25 = type metadata accessor for ImageElement.Bundle();
  v26 = OUTLINED_FUNCTION_41(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_11();
  v138 = v29;
  OUTLINED_FUNCTION_45();
  v30 = type metadata accessor for ImageElement.AssetData();
  v31 = OUTLINED_FUNCTION_41(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_11();
  v137 = v34;
  OUTLINED_FUNCTION_45();
  v35 = type metadata accessor for ImageElement.PNGData();
  v36 = OUTLINED_FUNCTION_41(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_11();
  v136 = v39;
  v40 = OUTLINED_FUNCTION_45();
  v41 = type metadata accessor for ImageElement.Symbol(v40);
  v42 = OUTLINED_FUNCTION_41(v41);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_11();
  v134 = v45;
  v46 = OUTLINED_FUNCTION_45();
  v47 = type metadata accessor for ImageElement.SourceType(v46);
  v48 = OUTLINED_FUNCTION_12(v47);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_17();
  v53 = (v51 - v52);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_204_0();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_47();
  v145 = v56;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_47();
  v144 = v58;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v59);
  v61 = &v134 - v60;
  MEMORY[0x28223BE20](v62);
  v64 = &v134 - v63;
  MEMORY[0x28223BE20](v65);
  v67 = &v134 - v66;
  MEMORY[0x28223BE20](v68);
  v70 = (&v134 - v69);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280373A10, &qword_26A443F30);
  OUTLINED_FUNCTION_41(v71);
  v73 = *(v72 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v74);
  v76 = &v134 - v75;
  v78 = *(v77 + 56);
  sub_26A3E5310();
  sub_26A3E5310();
  OUTLINED_FUNCTION_12_2();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_26A3E5310();
      if (OUTLINED_FUNCTION_74_12() == 1)
      {
        v116 = v136;
        sub_26A3E5364();
        static _ProtoImageElement.DataMessage.== infix(_:_:)();
        v96 = v76;
        OUTLINED_FUNCTION_40_21();
        sub_26A3E53B8(v116, v117);
        v98 = v67;
        goto LABEL_33;
      }

      v79 = type metadata accessor for ImageElement.PNGData;
      v80 = v67;
      goto LABEL_42;
    case 2u:
      sub_26A3E5310();
      if (OUTLINED_FUNCTION_74_12() == 2)
      {
        v95 = v137;
        sub_26A3E5364();
        static _ProtoImageElement.DataMessage.== infix(_:_:)();
        v96 = v76;
        OUTLINED_FUNCTION_44_17();
        sub_26A3E53B8(v95, v97);
        v98 = v64;
        goto LABEL_33;
      }

      v79 = type metadata accessor for ImageElement.AssetData;
      v80 = v64;
      goto LABEL_42;
    case 3u:
      sub_26A3E5310();
      if (OUTLINED_FUNCTION_74_12() == 3)
      {
        v99 = v138;
        sub_26A3E5364();
        static _ProtoImageElement.Bundle.== infix(_:_:)();
        v100 = v76;
        OUTLINED_FUNCTION_41_19();
        sub_26A3E53B8(v99, v101);
        v102 = v61;
        v103 = v70;
        goto LABEL_47;
      }

      v79 = type metadata accessor for ImageElement.Bundle;
      v80 = v61;
      goto LABEL_42;
    case 4u:
      v81 = v144;
      sub_26A3E5310();
      if (OUTLINED_FUNCTION_74_12() != 4)
      {
        v79 = type metadata accessor for ImageElement.AppIcon;
        v80 = v81;
        goto LABEL_42;
      }

      v82 = v140;
      sub_26A3E5364();
      v83 = *v81 == *v82 && *(v81 + 8) == *(v82 + 8);
      if (v83 || (sub_26A425354() & 1) != 0)
      {
        v84 = *(v81 + 24);
        v85 = *(v82 + 16);
        v86 = *(v82 + 24);
        v150 = *(v81 + 16);
        v151 = v84;
        v148 = v85;
        v149 = v86;
        v87 = _ProtoImageElement.ImageStyle.rawValue.getter();
        if (v87 == _ProtoImageElement.ImageStyle.rawValue.getter())
        {
          v88 = *(type metadata accessor for _ProtoImageElement.AppIcon(0) + 24);
          sub_26A424794();
          OUTLINED_FUNCTION_19_31();
          sub_26A3E7CE8(v89, v90);
          sub_26A424B64();
        }
      }

      sub_26A3E53B8(v82, type metadata accessor for ImageElement.AppIcon);
      v91 = OUTLINED_FUNCTION_37_0();
      sub_26A3E53B8(v91, v92);
      OUTLINED_FUNCTION_8_42();
      v94 = v76;
      goto LABEL_50;
    case 5u:
      v0 = v145;
      sub_26A3E5310();
      if (OUTLINED_FUNCTION_74_12() != 5)
      {
        v131 = type metadata accessor for ImageElement.Url;
        goto LABEL_41;
      }

      v105 = v76;
      v118 = v141;
      sub_26A3E5364();
      if ((sub_26A4245F4() & 1) != 0 && static RFImage.Url.== infix(_:_:)(v0 + *(v135 + 20), v118 + *(v135 + 20)))
      {
        v119 = *(v135 + 24);
        v120 = v0 + v119;
        v121 = v118 + v119;
        v122 = *(type metadata accessor for _ProtoImageElement.Url(0) + 20);
        if (*(v120 + v122) == *(v121 + v122) || (v123 = *(v120 + v122), , , v124 = OUTLINED_FUNCTION_78_1(), v126 = sub_26A251BDC(v124, v125), , , v126))
        {
          sub_26A424794();
          OUTLINED_FUNCTION_19_31();
          sub_26A3E7CE8(v127, v128);
          OUTLINED_FUNCTION_175();
          if (sub_26A424B64())
          {
            sub_26A3E53B8(v118, type metadata accessor for ImageElement.Url);
            sub_26A3E53B8(v0, type metadata accessor for ImageElement.Url);
            goto LABEL_21;
          }
        }
      }

      sub_26A3E53B8(v118, type metadata accessor for ImageElement.Url);
      sub_26A3E53B8(v0, type metadata accessor for ImageElement.Url);
      goto LABEL_49;
    case 6u:
      sub_26A3E5310();
      if (OUTLINED_FUNCTION_74_12() == 6)
      {
        v129 = v139;
        sub_26A3E5364();
        static _ProtoImageElement.Contact.== infix(_:_:)();
        v96 = v76;
        OUTLINED_FUNCTION_37_16();
        sub_26A3E53B8(v129, v130);
        v98 = v0;
LABEL_33:
        sub_26A3E53B8(v98, v70);
        OUTLINED_FUNCTION_8_42();
        v94 = v96;
        goto LABEL_50;
      }

      v131 = type metadata accessor for ImageElement.Contact;
LABEL_41:
      v79 = v131;
      v80 = v0;
      goto LABEL_42;
    case 7u:
      sub_26A3E5310();
      v104 = *v53;
      if (OUTLINED_FUNCTION_74_12() != 7)
      {

        goto LABEL_43;
      }

      swift_projectBox();
      v105 = v76;
      v106 = *&v76[v78];
      swift_projectBox();
      v107 = v143;
      sub_26A3E5310();
      v108 = v142;
      sub_26A3E5310();
      v109 = *(type metadata accessor for _ProtoImageElement.BadgedImage(0) + 20);
      if (*(v107 + v109) == *(v108 + v109))
      {
        goto LABEL_20;
      }

      v110 = *(v107 + v109);

      OUTLINED_FUNCTION_175();
      sub_26A2498D0();
      v112 = v111;

      if (v112)
      {
LABEL_20:
        sub_26A424794();
        OUTLINED_FUNCTION_19_31();
        sub_26A3E7CE8(v113, v114);
        v115 = sub_26A424B64();
        sub_26A3E53B8(v108, type metadata accessor for ImageElement.BadgedImage);
        sub_26A3E53B8(v107, type metadata accessor for ImageElement.BadgedImage);

        if (v115)
        {
LABEL_21:
          v93 = type metadata accessor for ImageElement.SourceType;
          v94 = v105;
          goto LABEL_50;
        }
      }

      else
      {
        sub_26A3E53B8(v108, type metadata accessor for ImageElement.BadgedImage);
        sub_26A3E53B8(v107, type metadata accessor for ImageElement.BadgedImage);
      }

LABEL_49:
      v93 = type metadata accessor for ImageElement.SourceType;
      v94 = v105;
      goto LABEL_50;
    default:
      sub_26A3E5310();
      if (OUTLINED_FUNCTION_74_12())
      {
        v79 = type metadata accessor for ImageElement.Symbol;
        v80 = v70;
LABEL_42:
        sub_26A3E53B8(v80, v79);
LABEL_43:
        sub_26A0E48F0(v76, &qword_280373A10, &qword_26A443F30);
      }

      else
      {
        v132 = v134;
        sub_26A3E5364();
        static _ProtoImageElement.Symbol.== infix(_:_:)();
        v100 = v76;
        OUTLINED_FUNCTION_34_16();
        sub_26A3E53B8(v132, v133);
        v102 = OUTLINED_FUNCTION_175();
LABEL_47:
        sub_26A3E53B8(v102, v103);
        OUTLINED_FUNCTION_8_42();
        v94 = v100;
LABEL_50:
        sub_26A3E53B8(v94, v93);
      }

      OUTLINED_FUNCTION_75();
      return;
  }
}

void ImageElement.SourceType.hash(into:)()
{
  OUTLINED_FUNCTION_76();
  v5 = type metadata accessor for ImageElement.BadgedImage();
  v6 = OUTLINED_FUNCTION_41(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_11();
  v64 = v9;
  v10 = OUTLINED_FUNCTION_45();
  v11 = type metadata accessor for ImageElement.Contact(v10);
  v12 = OUTLINED_FUNCTION_41(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14_29();
  v15 = type metadata accessor for ImageElement.Url();
  v16 = OUTLINED_FUNCTION_12(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_54_16();
  v19 = type metadata accessor for ImageElement.AppIcon();
  v20 = OUTLINED_FUNCTION_41(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_55_8();
  v23 = type metadata accessor for ImageElement.Bundle();
  v24 = OUTLINED_FUNCTION_41(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_18();
  v29 = v28 - v27;
  v30 = type metadata accessor for ImageElement.AssetData();
  v31 = OUTLINED_FUNCTION_41(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_70_11();
  v34 = type metadata accessor for ImageElement.PNGData();
  v35 = OUTLINED_FUNCTION_41(v34);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_18();
  v40 = v39 - v38;
  v41 = type metadata accessor for ImageElement.Symbol(0);
  v42 = OUTLINED_FUNCTION_41(v41);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_18();
  v45 = OUTLINED_FUNCTION_29_21();
  v46 = type metadata accessor for ImageElement.SourceType(v45);
  v47 = OUTLINED_FUNCTION_12(v46);
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_35_19();
  OUTLINED_FUNCTION_20_33();
  sub_26A3E5310();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_26A3E5364();
      MEMORY[0x26D65C340](1);
      type metadata accessor for _ProtoImageElement.DataMessage(0);
      OUTLINED_FUNCTION_9_46();
      sub_26A3E7CE8(v60, v61);
      OUTLINED_FUNCTION_84_5();
      sub_26A424B44();
      OUTLINED_FUNCTION_5_55();
      v53 = v40;
      goto LABEL_10;
    case 2u:
      sub_26A3E5364();
      MEMORY[0x26D65C340](2);
      type metadata accessor for _ProtoImageElement.DataMessage(0);
      OUTLINED_FUNCTION_9_46();
      sub_26A3E7CE8(v54, v55);
      OUTLINED_FUNCTION_84_5();
      sub_26A424B44();
      OUTLINED_FUNCTION_45_13();
      v53 = v4;
      goto LABEL_10;
    case 3u:
      sub_26A3E5364();
      MEMORY[0x26D65C340](3);
      type metadata accessor for _ProtoImageElement.Bundle(0);
      OUTLINED_FUNCTION_14_33();
      sub_26A3E7CE8(v56, v57);
      OUTLINED_FUNCTION_84_5();
      sub_26A424B44();
      OUTLINED_FUNCTION_7_32();
      v53 = v29;
      goto LABEL_10;
    case 4u:
      sub_26A3E5364();
      MEMORY[0x26D65C340](4);
      type metadata accessor for _ProtoImageElement.AppIcon(0);
      sub_26A3E7CE8(&qword_280370970, type metadata accessor for _ProtoImageElement.AppIcon);
      OUTLINED_FUNCTION_84_5();
      sub_26A424B44();
      v53 = OUTLINED_FUNCTION_35_26();
      goto LABEL_10;
    case 5u:
      OUTLINED_FUNCTION_78_1();
      sub_26A3E5364();
      MEMORY[0x26D65C340](5);
      sub_26A424614();
      sub_26A3E7CE8(&unk_28157B740, MEMORY[0x277CC9260]);
      sub_26A424B44();
      v62 = v2 + *(v15 + 20);
      RFImage.Url.hash(into:)();
      v63 = *(v15 + 24);
      type metadata accessor for _ProtoImageElement.Url(0);
      sub_26A3E7CE8(&qword_28157A2A8, type metadata accessor for _ProtoImageElement.Url);
      sub_26A424B44();
      OUTLINED_FUNCTION_39_24();
      v53 = v2;
      goto LABEL_10;
    case 6u:
      sub_26A3E5364();
      MEMORY[0x26D65C340](6);
      type metadata accessor for _ProtoImageElement.Contact(0);
      sub_26A3E7CE8(&qword_28036D9C0, type metadata accessor for _ProtoImageElement.Contact);
      OUTLINED_FUNCTION_84_5();
      sub_26A424B44();
      OUTLINED_FUNCTION_38_19();
      v53 = v3;
      goto LABEL_10;
    case 7u:
      v58 = *v1;
      swift_projectBox();
      OUTLINED_FUNCTION_46_13();
      sub_26A3E5310();
      MEMORY[0x26D65C340](7);
      type metadata accessor for _ProtoImageElement.BadgedImage(0);
      sub_26A3E7CE8(&qword_28036FD70, type metadata accessor for _ProtoImageElement.BadgedImage);
      OUTLINED_FUNCTION_84_5();
      sub_26A424B44();
      OUTLINED_FUNCTION_6_39();
      sub_26A3E53B8(v64, v59);

      goto LABEL_11;
    default:
      sub_26A3E5364();
      MEMORY[0x26D65C340](0);
      type metadata accessor for _ProtoImageElement.Symbol(0);
      OUTLINED_FUNCTION_21_29();
      sub_26A3E7CE8(v50, v51);
      OUTLINED_FUNCTION_84_5();
      sub_26A424B44();
      OUTLINED_FUNCTION_0_86();
      v53 = v0;
LABEL_10:
      sub_26A3E53B8(v53, v52);
LABEL_11:
      OUTLINED_FUNCTION_75();
      return;
  }
}

uint64_t sub_26A3E66F4(uint64_t a1, uint64_t a2)
{
  v21 = type metadata accessor for _ProtoImageElement.AspectRatio(0);
  v4 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v20[1] = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBB8, &qword_26A4265C8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v20 - v8;
  v10 = type metadata accessor for ImageElement.AspectRatio();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = *a2;
  v12 = *(a2 + 8);
  v14 = *a1;
  v15 = *(a1 + 8);
  sub_26A0E45C0(*a2, v12);
  sub_26A0E4784(v14, v15);
  *a1 = v13;
  *(a1 + 8) = v12;
  v16 = *(a2 + 24);
  v22 = *(a2 + 16);
  v23 = v16;
  sub_26A217A84(&v22, &v24);
  sub_26A217AB0(&v22);
  v17 = v23;
  *(a1 + 16) = v22;
  *(a1 + 24) = v17;
  ImageElement.PNGData.aspectRatio.getter();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    return sub_26A0E48F0(v9, &qword_28036CBB8, &qword_26A4265C8);
  }

  sub_26A3E5364();
  sub_26A3E5364();
  v19 = *(type metadata accessor for _ProtoImageElement.DataMessage(0) + 36);
  sub_26A0E48F0(a1 + v19, &qword_28036D1A0, &qword_26A427150);
  sub_26A3E5364();
  return __swift_storeEnumTagSinglePayload(a1 + v19, 0, 1, v21);
}

uint64_t sub_26A3E695C(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for _ProtoImageElement.AspectRatio(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBB8, &qword_26A4265C8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v22 - v8;
  v10 = type metadata accessor for ImageElement.AspectRatio();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v12 = *a2;
  v13 = a2[1];
  v14 = *(a1 + 8);

  *a1 = v12;
  *(a1 + 8) = v13;
  v15 = a2[2];
  v16 = a2[3];
  v17 = *(a1 + 24);

  *(a1 + 16) = v15;
  *(a1 + 24) = v16;
  v18 = *(a2 + 40);
  v23 = a2[4];
  v24 = v18;
  sub_26A217A84(&v23, &v25);
  sub_26A217AB0(&v23);
  v19 = v24;
  *(a1 + 32) = v23;
  *(a1 + 40) = v19;
  ImageElement.Bundle.aspectRatio.getter();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    return sub_26A0E48F0(v9, &qword_28036CBB8, &qword_26A4265C8);
  }

  sub_26A3E5364();
  sub_26A3E5364();
  v21 = *(type metadata accessor for _ProtoImageElement.Bundle(0) + 40);
  sub_26A0E48F0(a1 + v21, &qword_28036D1A0, &qword_26A427150);
  sub_26A3E5364();
  return __swift_storeEnumTagSinglePayload(a1 + v21, 0, 1, v4);
}

uint64_t sub_26A3E6BD0(uint64_t a1, uint64_t *a2)
{
  v30 = type metadata accessor for _ProtoImageElement.Symbol.Background(0);
  v4 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v29[2] = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D4D0, &qword_26A428230);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v29 - v8;
  v31 = type metadata accessor for ImageElement.Background(0);
  v10 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v29[1] = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29[0] = type metadata accessor for _ProtoColor(0);
  v12 = *(*(v29[0] - 8) + 64);
  MEMORY[0x28223BE20](v29[0]);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBA0, &qword_26A4265B0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = v29 - v15;
  v17 = type metadata accessor for Color();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v19 = *a2;
  v20 = a2[1];
  v21 = *(a1 + 8);

  *a1 = v19;
  *(a1 + 8) = v20;
  ImageElement.Symbol.tintColor.getter();
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_26A0E48F0(v16, &qword_28036CBA0, &qword_26A4265B0);
  }

  else
  {
    sub_26A3E5364();
    sub_26A3E5364();
    v22 = *(type metadata accessor for _ProtoImageElement.Symbol(0) + 48);
    sub_26A0E48F0(a1 + v22, &qword_28036CCD8, &unk_26A432950);
    sub_26A3E5364();
    __swift_storeEnumTagSinglePayload(a1 + v22, 0, 1, v29[0]);
  }

  v23 = *(a2 + 24);
  v32 = a2[2];
  v33 = v23;
  sub_26A217A84(&v32, &v34);
  sub_26A217AB0(&v32);
  v24 = v33;
  *(a1 + 16) = v32;
  *(a1 + 24) = v24;
  v25 = *(a2 + 40) == 1 && a2[4] != 0;
  *(a1 + 32) = v25;
  *(a1 + 40) = 1;
  ImageElement.Symbol.background.getter();
  if (__swift_getEnumTagSinglePayload(v9, 1, v31) == 1)
  {
    result = sub_26A0E48F0(v9, &qword_28036D4D0, &qword_26A428230);
  }

  else
  {
    sub_26A3E5364();
    sub_26A3E5364();
    v27 = *(type metadata accessor for _ProtoImageElement.Symbol(0) + 52);
    sub_26A0E48F0(a1 + v27, &qword_28036D4C8, &qword_26A428228);
    sub_26A3E5364();
    result = __swift_storeEnumTagSinglePayload(a1 + v27, 0, 1, v30);
  }

  if (*(a2 + 80) != 1 || (v28 = a2[9]) == 0)
  {
    v28 = 0;
  }

  *(a1 + 72) = v28;
  *(a1 + 80) = 1;
  return result;
}

void ImageElement.SourceType.LoadingImage.description.getter()
{
  OUTLINED_FUNCTION_76();
  v2 = type metadata accessor for ImageElement.Symbol(0);
  v3 = OUTLINED_FUNCTION_41(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_11();
  v95 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBA8, &qword_26A4265B8);
  OUTLINED_FUNCTION_12(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_76_12();
  v11 = type metadata accessor for ImageElement.PNGData();
  v12 = OUTLINED_FUNCTION_41(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_17();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_48();
  v99 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBC8, &qword_26A426628);
  OUTLINED_FUNCTION_12(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_29_21();
  v24 = type metadata accessor for ImageElement.Bundle();
  v25 = OUTLINED_FUNCTION_41(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_17();
  v30 = v28 - v29;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_48();
  v32 = OUTLINED_FUNCTION_45();
  v33 = type metadata accessor for ImageElement.SourceType.LoadingImage(v32);
  v34 = OUTLINED_FUNCTION_12(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_35_19();
  OUTLINED_FUNCTION_16_29();
  sub_26A3E5310();
  OUTLINED_FUNCTION_78_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_26A3E5364();
      sub_26A3E5310();
      sub_26A3E5310();
      *(v0 + *(v20 + 32)) = 0;
      sub_26A3E53B8(v30, type metadata accessor for ImageElement.Bundle);
      *(v0 + *(v20 + 28)) = MEMORY[0x277D84F90];
      swift_getKeyPath();
      OUTLINED_FUNCTION_81_10();
      sub_26A0F8170(v38, v39, v40, v41, v42, v43, v44, v45, v95, v99);

      swift_getKeyPath();
      OUTLINED_FUNCTION_28_24();
      OUTLINED_FUNCTION_79_12();
      sub_26A0F8910(v46, v47, v48, v49, v50, v51, v52, v53, v96, v100);

      swift_getKeyPath();
      OUTLINED_FUNCTION_53_15();
      sub_26A0F8170(v55, v54 & 0xFFFFFFFFFFFFLL | 0x6449000000000000, 0xE800000000000000, 0, v56, v57, v58, v59, v97, v101);

      swift_getKeyPath();
      OUTLINED_FUNCTION_53_15();
      OUTLINED_FUNCTION_71_8();
      sub_26A0F8170(v60, v61, v62, v63, v64, v65, v66, v67, v98, v102);

      v68 = *(v0 + 40);
      OUTLINED_FUNCTION_82_12(*(v0 + 32));
      OUTLINED_FUNCTION_13_37();
      sub_26A148698();
      swift_getKeyPath();
      OUTLINED_FUNCTION_3_63();
      sub_26A0F8938();

      ImageElement.Bundle.fixedWidth.getter();
      OUTLINED_FUNCTION_23_40();
      OUTLINED_FUNCTION_71_8();
      sub_26A1485FC(v69);
      ImageElement.Bundle.fixedHeight.getter();
      OUTLINED_FUNCTION_2_57();
      sub_26A1485FC(v70);
      sub_26A103280();
      sub_26A0E48F0(v0, &qword_28036CBC8, &qword_26A426628);
      v71 = OUTLINED_FUNCTION_217_0();
    }

    else
    {
      sub_26A3E5364();
      sub_26A143944();
      OUTLINED_FUNCTION_0_86();
      v71 = v95;
    }
  }

  else
  {
    sub_26A3E5364();
    sub_26A3E5310();
    OUTLINED_FUNCTION_75_13();
    sub_26A3E5310();
    *(v1 + *(v7 + 32)) = 0;
    OUTLINED_FUNCTION_40_21();
    sub_26A3E53B8(v17, v73);
    *(v1 + *(v7 + 28)) = MEMORY[0x277D84F90];
    v74 = *v1;
    v75 = *(v1 + 8);
    v76 = OUTLINED_FUNCTION_78_1();
    sub_26A0E45C0(v76, v77);
    OUTLINED_FUNCTION_78_1();
    OUTLINED_FUNCTION_86_0();
    sub_26A3A7250(v78, v79, v80, v81);
    v82 = OUTLINED_FUNCTION_78_1();
    sub_26A0E4784(v82, v83);
    swift_getKeyPath();
    OUTLINED_FUNCTION_28_24();
    OUTLINED_FUNCTION_79_12();
    sub_26A0F8814(v84, v85, v86, v87, v88, v89, v90, v91, v95, v99);

    v92 = *(v1 + 24);
    OUTLINED_FUNCTION_82_12(*(v1 + 16));
    OUTLINED_FUNCTION_13_37();
    sub_26A148554();
    swift_getKeyPath();
    OUTLINED_FUNCTION_3_63();
    sub_26A0F88E8();

    ImageElement.PNGData.fixedWidth.getter();
    OUTLINED_FUNCTION_23_40();
    OUTLINED_FUNCTION_71_8();
    sub_26A1484B8(v93);
    ImageElement.PNGData.fixedHeight.getter();
    OUTLINED_FUNCTION_2_57();
    sub_26A1484B8(v94);
    sub_26A1030B8();
    sub_26A0E48F0(v1, &qword_28036CBA8, &qword_26A4265B8);
    v71 = OUTLINED_FUNCTION_37_0();
  }

  sub_26A3E53B8(v71, v72);
  OUTLINED_FUNCTION_75();
}

void static ImageElement.SourceType.LoadingImage.== infix(_:_:)()
{
  OUTLINED_FUNCTION_76();
  v44[1] = v3;
  v4 = type metadata accessor for ImageElement.Symbol(0);
  v5 = OUTLINED_FUNCTION_41(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_11();
  v44[0] = v8;
  OUTLINED_FUNCTION_45();
  v9 = type metadata accessor for ImageElement.Bundle();
  v10 = OUTLINED_FUNCTION_41(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_35_19();
  v13 = type metadata accessor for ImageElement.PNGData();
  v14 = OUTLINED_FUNCTION_41(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_18();
  v17 = OUTLINED_FUNCTION_14_29();
  v18 = type metadata accessor for ImageElement.SourceType.LoadingImage(v17);
  v19 = OUTLINED_FUNCTION_12(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_17();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_204_0();
  MEMORY[0x28223BE20](v26);
  v28 = v44 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280373A18, &qword_26A443F38);
  OUTLINED_FUNCTION_41(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v32);
  v34 = v44 - v33;
  v36 = *(v35 + 56);
  v37 = type metadata accessor for ImageElement.SourceType.LoadingImage;
  sub_26A3E5310();
  sub_26A3E5310();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_26A3E5310();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_26A3E5364();
        static _ProtoImageElement.Bundle.== infix(_:_:)();
        v37 = type metadata accessor for ImageElement.Bundle;
        sub_26A3E53B8(v0, type metadata accessor for ImageElement.Bundle);
        v39 = v2;
LABEL_13:
        sub_26A3E53B8(v39, v37);
        sub_26A3E53B8(v34, type metadata accessor for ImageElement.SourceType.LoadingImage);
        goto LABEL_14;
      }

      v40 = type metadata accessor for ImageElement.Bundle;
      v41 = v2;
    }

    else
    {
      sub_26A3E5310();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v42 = v44[0];
        sub_26A3E5364();
        OUTLINED_FUNCTION_217_0();
        static _ProtoImageElement.Symbol.== infix(_:_:)();
        OUTLINED_FUNCTION_34_16();
        sub_26A3E53B8(v42, v43);
        v39 = v24;
        goto LABEL_13;
      }

      v40 = type metadata accessor for ImageElement.Symbol;
      v41 = v24;
    }
  }

  else
  {
    sub_26A3E5310();
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_26A3E5364();
      static _ProtoImageElement.DataMessage.== infix(_:_:)();
      v37 = type metadata accessor for ImageElement.PNGData;
      sub_26A3E53B8(v1, type metadata accessor for ImageElement.PNGData);
      v39 = v28;
      goto LABEL_13;
    }

    v40 = type metadata accessor for ImageElement.PNGData;
    v41 = v28;
  }

  sub_26A3E53B8(v41, v40);
  sub_26A0E48F0(v34, &qword_280373A18, &qword_26A443F38);
LABEL_14:
  OUTLINED_FUNCTION_75();
}

uint64_t ImageElement.SourceType.LoadingImage.hash(into:)()
{
  v3 = type metadata accessor for ImageElement.Symbol(0);
  v4 = OUTLINED_FUNCTION_41(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29_21();
  v7 = type metadata accessor for ImageElement.Bundle();
  v8 = OUTLINED_FUNCTION_41(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_35_19();
  v11 = type metadata accessor for ImageElement.PNGData();
  v12 = OUTLINED_FUNCTION_41(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_18();
  v15 = OUTLINED_FUNCTION_54_16();
  v16 = type metadata accessor for ImageElement.SourceType.LoadingImage(v15);
  v17 = OUTLINED_FUNCTION_12(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_16_29();
  sub_26A3E5310();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_217_0();
      sub_26A3E5364();
      MEMORY[0x26D65C340](1);
      type metadata accessor for _ProtoImageElement.Bundle(0);
      OUTLINED_FUNCTION_14_33();
      sub_26A3E7CE8(v21, v22);
      OUTLINED_FUNCTION_84_5();
      sub_26A424B44();
      OUTLINED_FUNCTION_7_32();
      v24 = v1;
    }

    else
    {
      OUTLINED_FUNCTION_37_0();
      sub_26A3E5364();
      MEMORY[0x26D65C340](2);
      type metadata accessor for _ProtoImageElement.Symbol(0);
      OUTLINED_FUNCTION_21_29();
      sub_26A3E7CE8(v27, v28);
      OUTLINED_FUNCTION_84_5();
      sub_26A424B44();
      OUTLINED_FUNCTION_0_86();
      v24 = v0;
    }
  }

  else
  {
    sub_26A3E5364();
    MEMORY[0x26D65C340](0);
    type metadata accessor for _ProtoImageElement.DataMessage(0);
    OUTLINED_FUNCTION_9_46();
    sub_26A3E7CE8(v25, v26);
    OUTLINED_FUNCTION_84_5();
    sub_26A424B44();
    OUTLINED_FUNCTION_5_55();
    v24 = v2;
  }

  return sub_26A3E53B8(v24, v23);
}

uint64_t sub_26A3E7C34(void (*a1)(_BYTE *))
{
  sub_26A425504();
  a1(v3);
  return sub_26A425554();
}

uint64_t sub_26A3E7C9C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_26A425504();
  a4(v6);
  return sub_26A425554();
}

uint64_t sub_26A3E7CE8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A3E7DE0()
{
  result = type metadata accessor for ImageElement.Symbol(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ImageElement.PNGData();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for ImageElement.AssetData();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for ImageElement.Bundle();
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for ImageElement.AppIcon();
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for ImageElement.Url();
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for ImageElement.Contact(319);
              if (v7 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_26A3E7EC4()
{
  result = type metadata accessor for ImageElement.PNGData();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ImageElement.Bundle();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for ImageElement.Symbol(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_26A3E7F4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C910, &unk_26A425EC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_51_19@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 112) = a1;
  *(v2 - 104) = v1;

  return sub_26A217A84(v2 - 112, (v2 - 136));
}

uint64_t OUTLINED_FUNCTION_61_16()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_64_14()
{
  v3 = *(v1 + v0);

  return type metadata accessor for _ProtoImageElement.Source._StorageClass(0);
}

uint64_t OUTLINED_FUNCTION_74_12()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_82_12@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 96) = a1;
  *(v2 - 88) = v1;

  return sub_26A217A84(v2 - 96, (v2 - 81));
}

uint64_t OUTLINED_FUNCTION_83_11(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_84_9()
{
  v3 = *(v1 + v0);

  return swift_isUniquelyReferenced_nonNull_native();
}

Swift::String __swiftcall FactItemShortNumber.description(redacted:)(Swift::Bool redacted)
{
  OUTLINED_FUNCTION_76();
  v117 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB18, &unk_26A427670);
  OUTLINED_FUNCTION_41(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  v123 = &v116 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB20, &unk_26A426470);
  OUTLINED_FUNCTION_41(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v12);
  v122 = &v116 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB28, &qword_26A427980);
  OUTLINED_FUNCTION_41(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v17);
  v118 = &v116 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v20 = OUTLINED_FUNCTION_41(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_8();
  v121 = v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v116 - v25;
  v27 = type metadata accessor for _ProtoTextProperty(0);
  v28 = OUTLINED_FUNCTION_12(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_8();
  v120 = v31;
  MEMORY[0x28223BE20](v32);
  v34 = &v116 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB30, &qword_26A426480);
  v36 = OUTLINED_FUNCTION_41(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  v40 = &v116 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_47();
  v119 = v42;
  MEMORY[0x28223BE20](v43);
  v45 = &v116 - v44;
  v46 = type metadata accessor for FactItemShortNumber();
  v47 = OUTLINED_FUNCTION_41(v46);
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v47);
  MEMORY[0x28223BE20](v50);
  v52 = &v116 - v51;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD50, &unk_26A426830);
  OUTLINED_FUNCTION_12(v53);
  v55 = *(v54 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v56);
  v58 = &v116 - v57;
  OUTLINED_FUNCTION_22_32();
  v59 = sub_26A3EC980();
  if (v3)
  {
    _ProtoFactItem_ShortNumber.redactedProto.getter(v59, v60, v61, v62, v63, v64, v65, v66, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127);
  }

  else
  {
    sub_26A3EC980();
  }

  OUTLINED_FUNCTION_58_19();
  v58[*(v53 + 32)] = v3 & 1;
  sub_26A3EC52C(v52, type metadata accessor for FactItemShortNumber);
  v67 = MEMORY[0x277D84F90];
  *&v58[*(v53 + 28)] = MEMORY[0x277D84F90];
  v68 = *&v58[*(type metadata accessor for _ProtoFactItem_ShortNumber(0) + 20)];
  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_48_0(v26);
  if (v69)
  {
    *v34 = v67;
    *(v34 + 4) = 0;
    v70 = &v34[v27[7]];
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v71 = v27[8];
    v72 = type metadata accessor for _ProtoActionProperty();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v73, v74, v75, v72);
    v76 = v27[9];
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v77, v78, v79, v72);
    OUTLINED_FUNCTION_48_0(v26);
    v80 = v120;
    if (!v69)
    {
      sub_26A0E48F0(v26, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A3EC4D8();
    v80 = v120;
  }

  sub_26A3EC4D8();
  v81 = type metadata accessor for TextProperty(0);
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v82, v83, v84, v81);
  sub_26A107BE8();
  sub_26A0E48F0(v45, &qword_28036CB30, &qword_26A426480);
  OUTLINED_FUNCTION_142();
  v85 = v121;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_48_0(v85);
  if (v69)
  {
    *v80 = v67;
    *(v80 + 8) = 0;
    v86 = v80 + v27[7];
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v87 = v27[8];
    v88 = type metadata accessor for _ProtoActionProperty();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v89, v90, v91, v88);
    v92 = v27[9];
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v93, v94, v95, v88);
    OUTLINED_FUNCTION_48_0(v85);
    if (!v69)
    {
      sub_26A0E48F0(v85, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A3EC4D8();
  }

  v96 = v119;
  sub_26A3EC4D8();
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v97, v98, v99, v81);
  OUTLINED_FUNCTION_222();
  sub_26A107BE8();
  OUTLINED_FUNCTION_162_0(v96);
  v100 = v118;
  FactItemShortNumber.text2.getter();
  OUTLINED_FUNCTION_222();
  sub_26A107C10();
  sub_26A0E48F0(v100, &qword_28036CB28, &qword_26A427980);
  FactItemShortNumber.text3.getter();
  OUTLINED_FUNCTION_222();
  sub_26A107C10();
  sub_26A0E48F0(v100, &qword_28036CB28, &qword_26A427980);
  FactItemShortNumber.text4.getter();
  OUTLINED_FUNCTION_222();
  sub_26A107BE8();
  OUTLINED_FUNCTION_162_0(v40);
  FactItemShortNumber.unit.getter();
  sub_26A107BE8();
  OUTLINED_FUNCTION_162_0(v40);
  v101 = v122;
  FactItemShortNumber.thumbnail.getter();
  sub_26A107BC0();
  sub_26A0E48F0(v101, &qword_28036CB20, &unk_26A426470);
  v102 = v123;
  FactItemShortNumber.action.getter();
  sub_26A107ABC();
  sub_26A0E48F0(v102, &qword_28036CB18, &unk_26A427670);
  KeyPath = swift_getKeyPath();
  sub_26A0F7CF0(KeyPath, 0x6E656E6F706D6F63, 0xED0000656D614E74, 1, v104, v105, v106, v107, v116, v117);

  v108 = swift_getKeyPath();
  sub_26A0F8684(v108, 0x6E6564496B6E696CLL, 0xEE00726569666974, 1, v109, v110, v111, v112, v116, v117);

  sub_26A0FEB80();
  sub_26A0E48F0(v58, &qword_28036CD50, &unk_26A426830);
  OUTLINED_FUNCTION_175();
  OUTLINED_FUNCTION_75();
  result._object = v114;
  result._countAndFlagsBits = v113;
  return result;
}

uint64_t type metadata accessor for FactItemShortNumber()
{
  result = qword_280373A38;
  if (!qword_280373A38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A3E8D68(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - v7;
  v9 = type metadata accessor for _ProtoTextProperty(0);
  v10 = OUTLINED_FUNCTION_12(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v1 + *(type metadata accessor for _ProtoFactItem_ShortNumber(0) + 20));
  v16 = *a1;
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_32_2();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    *v14 = MEMORY[0x277D84F90];
    *(v14 + 4) = 0;
    v17 = &v14[v9[7]];
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v18 = v9[8];
    v19 = type metadata accessor for _ProtoActionProperty();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v19);
    v23 = v9[9];
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v19);
    if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
    {
      sub_26A0E48F0(v8, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A3EC4D8();
  }

  return sub_26A3EC4D8();
}

void sub_26A3E8F54()
{
  OUTLINED_FUNCTION_76();
  v3 = v2;
  v5 = OUTLINED_FUNCTION_239(v4);
  v6 = type metadata accessor for _ProtoMultilineTextProperty(v5);
  v7 = OUTLINED_FUNCTION_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_7();
  v10 = OUTLINED_FUNCTION_41_2();
  v11 = OUTLINED_FUNCTION_41(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_93_0();
  v15 = type metadata accessor for _ProtoFactItem_ShortNumber(0);
  OUTLINED_FUNCTION_241(v15);
  v16 = *v3;
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v17 = OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_62_1(v17, v18);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v19)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v20 = OUTLINED_FUNCTION_61_1();
      OUTLINED_FUNCTION_1_7(v20);
      if (!v19)
      {
        sub_26A0E48F0(v1, &qword_28036CAE0, &unk_26A4273F0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_59_18();
    }

    OUTLINED_FUNCTION_58_19();
    v3 = 0;
  }

  v21 = type metadata accessor for MultilineTextProperty(0);
  __swift_storeEnumTagSinglePayload(&qword_28036CAE0, v3, 1, v21);
  OUTLINED_FUNCTION_75();
}

void FactItemShortNumber.text4.getter()
{
  OUTLINED_FUNCTION_76();
  v4 = OUTLINED_FUNCTION_239(v3);
  v5 = type metadata accessor for _ProtoTextProperty(v4);
  v6 = OUTLINED_FUNCTION_12(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_7();
  v9 = OUTLINED_FUNCTION_41_2();
  v10 = OUTLINED_FUNCTION_41(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_93_0();
  v14 = type metadata accessor for _ProtoFactItem_ShortNumber(0);
  OUTLINED_FUNCTION_241(v14);
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v15 = OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_62_1(v15, v16);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v17)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v18 = OUTLINED_FUNCTION_61_1();
      OUTLINED_FUNCTION_1_7(v18);
      if (!v17)
      {
        sub_26A0E48F0(v1, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_59_18();
    }

    OUTLINED_FUNCTION_58_19();
    v2 = 0;
  }

  v19 = type metadata accessor for TextProperty(0);
  __swift_storeEnumTagSinglePayload(&qword_28036C7B8, v2, 1, v19);
  OUTLINED_FUNCTION_75();
}

void FactItemShortNumber.unit.getter()
{
  OUTLINED_FUNCTION_76();
  v4 = OUTLINED_FUNCTION_239(v3);
  v5 = type metadata accessor for _ProtoTextProperty(v4);
  v6 = OUTLINED_FUNCTION_12(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_7();
  v9 = OUTLINED_FUNCTION_41_2();
  v10 = OUTLINED_FUNCTION_41(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_93_0();
  v14 = type metadata accessor for _ProtoFactItem_ShortNumber(0);
  OUTLINED_FUNCTION_241(v14);
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v15 = OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_62_1(v15, v16);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v17)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v18 = OUTLINED_FUNCTION_61_1();
      OUTLINED_FUNCTION_1_7(v18);
      if (!v17)
      {
        sub_26A0E48F0(v1, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_59_18();
    }

    OUTLINED_FUNCTION_58_19();
    v2 = 0;
  }

  v19 = type metadata accessor for TextProperty(0);
  __swift_storeEnumTagSinglePayload(&qword_28036C7B8, v2, 1, v19);
  OUTLINED_FUNCTION_75();
}

void FactItemShortNumber.thumbnail.getter()
{
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_239(v3);
  v4 = type metadata accessor for _ProtoVisualProperty();
  v5 = OUTLINED_FUNCTION_12(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_7();
  v8 = OUTLINED_FUNCTION_41_2();
  v9 = OUTLINED_FUNCTION_41(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_93_0();
  v13 = type metadata accessor for _ProtoFactItem_ShortNumber(0);
  OUTLINED_FUNCTION_241(v13);
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v14 = OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_62_1(v14, v15);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v16)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v17 = OUTLINED_FUNCTION_61_1();
      OUTLINED_FUNCTION_1_7(v17);
      if (!v16)
      {
        sub_26A0E48F0(v1, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      OUTLINED_FUNCTION_59_18();
    }

    OUTLINED_FUNCTION_58_19();
    v2 = 0;
  }

  v18 = type metadata accessor for VisualProperty();
  __swift_storeEnumTagSinglePayload(&qword_28036CAE8, v2, 1, v18);
  OUTLINED_FUNCTION_75();
}

void FactItemShortNumber.action.getter()
{
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_239(v4);
  v5 = type metadata accessor for _ProtoActionProperty();
  v6 = OUTLINED_FUNCTION_12(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_7();
  v9 = OUTLINED_FUNCTION_41_2();
  v10 = OUTLINED_FUNCTION_41(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_93_0();
  v14 = type metadata accessor for _ProtoFactItem_ShortNumber(0);
  OUTLINED_FUNCTION_241(v14);
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v15 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v15, v16, &off_26A427400);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v17)
    {
      *v3 = MEMORY[0x277D84F90];
      v3[1] = 0;
      v3[2] = 0xE000000000000000;
      v18 = v3 + *(v5 + 24);
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_38_0();
      if (!v17)
      {
        sub_26A0E48F0(v1, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      OUTLINED_FUNCTION_59_18();
    }

    sub_26A3EC4D8();
    v2 = 0;
  }

  v19 = type metadata accessor for ActionProperty();
  __swift_storeEnumTagSinglePayload(v20, v2, 1, v19);
  OUTLINED_FUNCTION_75();
}

uint64_t FactItemShortNumber.componentName.getter()
{
  v1 = (*(v0 + *(type metadata accessor for _ProtoFactItem_ShortNumber(0) + 20)) + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__componentName);
  OUTLINED_FUNCTION_142();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t FactItemShortNumber.linkIdentifier.getter()
{
  v1 = (*(v0 + *(type metadata accessor for _ProtoFactItem_ShortNumber(0) + 20)) + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__linkIdentifier);
  OUTLINED_FUNCTION_142();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

void _ProtoFactItem_ShortNumber.redactedProto.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_76();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v269 = type metadata accessor for _ProtoActionProperty();
  v25 = OUTLINED_FUNCTION_12(v269);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v31 = OUTLINED_FUNCTION_41(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v36);
  v265 = type metadata accessor for _ProtoVisualProperty();
  v37 = OUTLINED_FUNCTION_12(v265);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v43 = OUTLINED_FUNCTION_41(v42);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v48);
  v264 = type metadata accessor for _ProtoMultilineTextProperty(0);
  v49 = OUTLINED_FUNCTION_12(v264);
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v55);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  v57 = OUTLINED_FUNCTION_41(v56);
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v64);
  v65 = type metadata accessor for _ProtoTextProperty(0);
  v66 = OUTLINED_FUNCTION_12(v65);
  v68 = *(v67 + 64);
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v75);
  v77 = &v249[-v76];
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v79 = OUTLINED_FUNCTION_41(v78);
  v81 = *(v80 + 64);
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v86);
  v88 = &v249[-v87];
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v90);
  v92 = &v249[-v91];
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_93_0();
  OUTLINED_FUNCTION_11_40();
  sub_26A3EC980();
  v94 = *(type metadata accessor for _ProtoFactItem_ShortNumber(0) + 20);
  v267 = v24;
  v270 = v94;
  v95 = *(v24 + v94);
  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  LODWORD(v24) = OUTLINED_FUNCTION_63_0(v20);
  sub_26A0E48F0(v20, &qword_28036C7B8, &unk_26A425BF0);
  if (v24 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_14_9(v92);
    if (v96)
    {
      OUTLINED_FUNCTION_35_27(MEMORY[0x277D84F90]);
      v97 = OUTLINED_FUNCTION_12_4(v65[8]);
      v98 = v269;
      __swift_storeEnumTagSinglePayload(v97, v99, v100, v269);
      v101 = OUTLINED_FUNCTION_12_4(v65[9]);
      __swift_storeEnumTagSinglePayload(v101, v102, v103, v98);
      OUTLINED_FUNCTION_14_9(v92);
      v104 = v267;
      if (!v96)
      {
        sub_26A0E48F0(v92, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A3EC4D8();
      v104 = v267;
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_1_67();
    sub_26A3EC52C(v77, v105);
    v106 = v270;
    v107 = *(v104 + v270);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v95 = *(v104 + v106);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v109 = type metadata accessor for _ProtoFactItem_ShortNumber._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v109);
      OUTLINED_FUNCTION_25_33();
      v95 = v110;
      *(v104 + v106) = v110;
    }

    OUTLINED_FUNCTION_129(&a10);
    sub_26A3EC4D8();
    v111 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v111, v112, v113, v65);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_209();
  v114 = OUTLINED_FUNCTION_63_0(v88);
  OUTLINED_FUNCTION_162_0(v88);
  v115 = v65;
  if (v114 == 1)
  {
    v116 = v267;
    v117 = v264;
  }

  else
  {
    OUTLINED_FUNCTION_128(&v267);
    sub_26A10FD9C();
    OUTLINED_FUNCTION_48_0(v114);
    v116 = v267;
    if (v96)
    {
      v95 = v250;
      *v250 = MEMORY[0x277D84F90];
      *(v95 + 8) = 0;
      v118 = v95 + v65[7];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v119 = v65[8];
      OUTLINED_FUNCTION_13_38();
      v121 = *(v120 - 256);
      __swift_storeEnumTagSinglePayload(v122, v123, v124, v121);
      v125 = v65[9];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v126, v127, v128, v121);
      OUTLINED_FUNCTION_48_0(v114);
      v129 = v270;
      if (!v96)
      {
        sub_26A0E48F0(v114, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_66_13(&v268);
      v129 = v270;
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_1_67();
    sub_26A3EC52C(v95, v130);
    v131 = *(v116 + v129);
    v132 = swift_isUniquelyReferenced_nonNull_native();
    v95 = *(v116 + v129);
    v117 = v264;
    if ((v132 & 1) == 0)
    {
      v133 = type metadata accessor for _ProtoFactItem_ShortNumber._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v133);
      OUTLINED_FUNCTION_25_33();
      OUTLINED_FUNCTION_244(v134);
    }

    OUTLINED_FUNCTION_129(&a10);
    sub_26A3EC4D8();
    v135 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v135, v136, v137, v115);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  v138 = v262;
  OUTLINED_FUNCTION_209();
  v139 = OUTLINED_FUNCTION_63_0(v138);
  OUTLINED_FUNCTION_162_0(v138);
  if (v139 != 1)
  {
    v140 = v251;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_14_9(v140);
    v141 = v270;
    if (v96)
    {
      OUTLINED_FUNCTION_35_27(MEMORY[0x277D84F90]);
      v142 = OUTLINED_FUNCTION_12_4(*(v117 + 32));
      OUTLINED_FUNCTION_56_18(v142, v143, v144);
      v145 = OUTLINED_FUNCTION_12_4(*(v117 + 36));
      __swift_storeEnumTagSinglePayload(v145, v146, v147, v95);
      OUTLINED_FUNCTION_14_9(v140);
      if (!v96)
      {
        sub_26A0E48F0(v140, &qword_28036CAE0, &unk_26A4273F0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_128(&v271);
      sub_26A3EC4D8();
    }

    _ProtoMultilineTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_27_30();
    v148 = *(v116 + v141);
    v149 = swift_isUniquelyReferenced_nonNull_native();
    v95 = *(v116 + v141);
    if ((v149 & 1) == 0)
    {
      v150 = type metadata accessor for _ProtoFactItem_ShortNumber._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v150);
      OUTLINED_FUNCTION_25_33();
      OUTLINED_FUNCTION_244(v151);
    }

    OUTLINED_FUNCTION_129(v282);
    sub_26A3EC4D8();
    v152 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v152, v153, v154, v117);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  v155 = v263;
  OUTLINED_FUNCTION_209();
  v156 = OUTLINED_FUNCTION_63_0(v155);
  OUTLINED_FUNCTION_162_0(v155);
  if (v156 != 1)
  {
    v157 = v252;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_14_9(v157);
    v158 = v270;
    if (v96)
    {
      v156 = v253;
      OUTLINED_FUNCTION_35_27(MEMORY[0x277D84F90]);
      v159 = OUTLINED_FUNCTION_12_4(*(v117 + 32));
      OUTLINED_FUNCTION_56_18(v159, v160, v161);
      v162 = OUTLINED_FUNCTION_12_4(*(v117 + 36));
      __swift_storeEnumTagSinglePayload(v162, v163, v164, v95);
      OUTLINED_FUNCTION_14_9(v157);
      if (!v96)
      {
        sub_26A0E48F0(v157, &qword_28036CAE0, &unk_26A4273F0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_128(&v272);
      sub_26A3EC4D8();
    }

    _ProtoMultilineTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_27_30();
    v165 = *(v116 + v158);
    v166 = swift_isUniquelyReferenced_nonNull_native();
    v95 = *(v116 + v158);
    if ((v166 & 1) == 0)
    {
      v167 = type metadata accessor for _ProtoFactItem_ShortNumber._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v167);
      OUTLINED_FUNCTION_25_33();
      OUTLINED_FUNCTION_244(v168);
    }

    OUTLINED_FUNCTION_129(v282);
    sub_26A3EC4D8();
    v169 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v169, v170, v171, v117);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_26_4(&v281);
  __swift_getEnumTagSinglePayload(v117, 1, v115);
  OUTLINED_FUNCTION_39_4();
  if (v156 != 1)
  {
    v117 = v254;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_48_0(v117);
    v172 = v270;
    if (v96)
    {
      v156 = v255;
      *v255 = MEMORY[0x277D84F90];
      *(v156 + 8) = 0;
      v173 = v156 + v115[7];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v174 = OUTLINED_FUNCTION_12_4(v115[8]);
      OUTLINED_FUNCTION_56_18(v174, v175, v176);
      v177 = OUTLINED_FUNCTION_12_4(v115[9]);
      __swift_storeEnumTagSinglePayload(v177, v178, v179, v95);
      OUTLINED_FUNCTION_48_0(v117);
      if (!v96)
      {
        sub_26A0E48F0(v117, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_128(&v273);
      sub_26A3EC4D8();
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_1_67();
    sub_26A3EC52C(v156, v180);
    v181 = *(v116 + v172);
    v182 = swift_isUniquelyReferenced_nonNull_native();
    v95 = *(v116 + v172);
    if ((v182 & 1) == 0)
    {
      v183 = type metadata accessor for _ProtoFactItem_ShortNumber._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v183);
      OUTLINED_FUNCTION_25_33();
      OUTLINED_FUNCTION_244(v184);
    }

    OUTLINED_FUNCTION_129(&a10);
    sub_26A3EC4D8();
    v185 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v185, v186, v187, v115);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_26_4(&v283);
  __swift_getEnumTagSinglePayload(v117, 1, v115);
  OUTLINED_FUNCTION_39_4();
  if (v156 == 1)
  {
    v188 = MEMORY[0x277D84F90];
  }

  else
  {
    OUTLINED_FUNCTION_129(&v274);
    sub_26A10FD9C();
    OUTLINED_FUNCTION_48_0(&unk_26A425BF0);
    v189 = v270;
    if (v96)
    {
      v95 = v256;
      *v256 = MEMORY[0x277D84F90];
      *(v95 + 8) = 0;
      v190 = v95 + v115[7];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v191 = v115[8];
      OUTLINED_FUNCTION_13_38();
      v193 = *(v192 - 256);
      __swift_storeEnumTagSinglePayload(v194, v195, v196, v193);
      v197 = v115[9];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v198, v199, v200, v193);
      OUTLINED_FUNCTION_48_0(&unk_26A425BF0);
      v156 = v257;
      if (!v96)
      {
        sub_26A0E48F0(&unk_26A425BF0, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_66_13(&v275);
      v156 = v257;
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_1_67();
    sub_26A3EC52C(v95, v201);
    v202 = *(v116 + v189);
    v203 = swift_isUniquelyReferenced_nonNull_native();
    v95 = *(v116 + v189);
    v204 = v115;
    if ((v203 & 1) == 0)
    {
      v205 = type metadata accessor for _ProtoFactItem_ShortNumber._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v205);
      OUTLINED_FUNCTION_25_33();
      OUTLINED_FUNCTION_244(v206);
    }

    v188 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_128(&a10);
    sub_26A3EC4D8();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v207, v208, v209, v204);
    OUTLINED_FUNCTION_211();
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_26_4(&v284);
  v210 = v265;
  __swift_getEnumTagSinglePayload(v117, 1, v265);
  OUTLINED_FUNCTION_39_4();
  if (v156 == 1)
  {
    v211 = v188;
    v212 = v269;
  }

  else
  {
    OUTLINED_FUNCTION_128(&v276);
    sub_26A10FD9C();
    v213 = OUTLINED_FUNCTION_63_14(v156);
    v214 = v270;
    v215 = v210;
    if (v213 == 1)
    {
      v95 = v258;
      v211 = v188;
      *v258 = v188;
      *(v95 + 8) = 0;
      v216 = v95 + *(v210 + 28);
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v217 = *(v210 + 32);
      OUTLINED_FUNCTION_13_38();
      v212 = *(v218 - 256);
      __swift_storeEnumTagSinglePayload(v219, v220, v221, v212);
      v222 = *(v215 + 36);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v223, v224, v225, v212);
      if (__swift_getEnumTagSinglePayload(v156, 1, v215) != 1)
      {
        sub_26A0E48F0(v156, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      OUTLINED_FUNCTION_66_13(&v277);
      v211 = v188;
      v212 = v269;
    }

    _ProtoVisualProperty.redactedProto.getter();
    sub_26A3EC52C(v95, type metadata accessor for _ProtoVisualProperty);
    v226 = *(v116 + v214);
    v227 = swift_isUniquelyReferenced_nonNull_native();
    v95 = *(v116 + v214);
    if ((v227 & 1) == 0)
    {
      v228 = type metadata accessor for _ProtoFactItem_ShortNumber._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v228);
      OUTLINED_FUNCTION_25_33();
      v95 = v229;
      *(v116 + v214) = v229;
    }

    OUTLINED_FUNCTION_129(&v278);
    sub_26A3EC4D8();
    v230 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v230, v231, v232, v215);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  v233 = v266;
  OUTLINED_FUNCTION_209();
  v234 = OUTLINED_FUNCTION_63_14(v233);
  OUTLINED_FUNCTION_162_0(v233);
  if (v234 != 1)
  {
    v235 = v259;
    sub_26A10FD9C();
    v236 = OUTLINED_FUNCTION_63_14(v235);
    v237 = v270;
    if (v236 == 1)
    {
      v95 = v260;
      *v260 = v211;
      *(v95 + 8) = 0;
      *(v95 + 16) = 0xE000000000000000;
      v238 = v95 + *(v212 + 24);
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v239 = OUTLINED_FUNCTION_63_14(v235);
      v240 = v261;
      if (v239 != 1)
      {
        sub_26A0E48F0(v235, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      OUTLINED_FUNCTION_66_13(&v279);
      v240 = v261;
    }

    _s10SnippetKit14ActionPropertyV13redactedProtoAA01_fcD0Vvg_0(v240);
    sub_26A3EC52C(v95, type metadata accessor for _ProtoActionProperty);
    v241 = *(v116 + v237);
    v242 = swift_isUniquelyReferenced_nonNull_native();
    v243 = *(v116 + v237);
    if ((v242 & 1) == 0)
    {
      v244 = type metadata accessor for _ProtoFactItem_ShortNumber._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v244);
      sub_26A2C994C();
      *(v116 + v237) = v245;
    }

    OUTLINED_FUNCTION_129(&v280);
    sub_26A3EC4D8();
    v246 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v246, v247, v248, v212);
    OUTLINED_FUNCTION_211();
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t FactItemShortNumber.init(number:text1:text2:text3:text4:unit:thumbnail:action:componentName:linkIdentifier:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  type metadata accessor for _ProtoFactItem_ShortNumber(0);
  OUTLINED_FUNCTION_0_87();
  sub_26A3EC858(v10, v11);
  OUTLINED_FUNCTION_41_18();

  sub_26A0E48F0(a8, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(a7, &qword_28036CB00, &unk_26A426450);
  OUTLINED_FUNCTION_187_0(a6);
  OUTLINED_FUNCTION_187_0(a5);
  OUTLINED_FUNCTION_187_0(a4);
  OUTLINED_FUNCTION_187_0(a3);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26A3EAD1C(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v116 = a8;
  v113 = a7;
  v110 = a4;
  v111 = a6;
  v108 = a3;
  v109 = a5;
  v14 = type metadata accessor for ActionProperty();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v106 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v121 = &v96 - v19;
  v120 = type metadata accessor for _ProtoActionProperty();
  v20 = *(*(v120 - 8) + 64);
  MEMORY[0x28223BE20](v120);
  v102 = &v96 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v103 = &v96 - v23;
  v24 = type metadata accessor for VisualProperty();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v105 = &v96 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v119 = &v96 - v29;
  v118 = type metadata accessor for _ProtoVisualProperty();
  v30 = *(*(v118 - 8) + 64);
  MEMORY[0x28223BE20](v118);
  v100 = &v96 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v101 = &v96 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v117 = &v96 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v114 = &v96 - v38;
  v39 = type metadata accessor for MultilineTextProperty(0);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39 - 8);
  v107 = &v96 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42 - 8);
  v112 = &v96 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v47 = &v96 - v46;
  v48 = type metadata accessor for _ProtoMultilineTextProperty(0);
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48);
  v97 = &v96 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51);
  v104 = &v96 - v52;
  MEMORY[0x28223BE20](v53);
  v96 = &v96 - v54;
  v115 = type metadata accessor for _ProtoTextProperty(0);
  v55 = *(*(v115 - 8) + 64);
  MEMORY[0x28223BE20](v115);
  v99 = &v96 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57);
  v98 = &v96 - v58;
  MEMORY[0x28223BE20](v59);
  v61 = (&v96 - v60);
  v62 = type metadata accessor for TextProperty(0);
  v63 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62 - 8);
  v64 = a2[3];
  v65 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v64);
  (*(v65 + 8))(v64, v65);
  sub_26A3EC4D8();
  _ProtoFactItem_ShortNumber.number.setter();
  v67 = v108[3];
  v66 = v108[4];
  __swift_project_boxed_opaque_existential_1(v108, v67);
  (*(v66 + 8))(v67, v66);
  sub_26A3EC4D8();
  v108 = v61;
  _ProtoFactItem_ShortNumber.text1.setter();

  _ProtoFactItem_ShortNumber.componentName.setter();
  sub_26A10FD9C();
  v68 = v123;
  if (v123)
  {
    v69 = v124;
    __swift_project_boxed_opaque_existential_1(v122, v123);
    (*(v69 + 8))(v68, v69);
    sub_26A3EC4D8();
    __swift_storeEnumTagSinglePayload(v47, 0, 1, v48);
    __swift_destroy_boxed_opaque_existential_1(v122);
    v70 = v48;
    if (__swift_getEnumTagSinglePayload(v47, 1, v48) != 1)
    {
      v71 = v96;
      sub_26A3EC4D8();
      sub_26A3EC980();
      _ProtoFactItem_ShortNumber.text2.setter();
      sub_26A3EC52C(v71, type metadata accessor for _ProtoMultilineTextProperty);
      goto LABEL_6;
    }
  }

  else
  {
    sub_26A0E48F0(v122, &qword_28036CB10, &unk_26A426460);
    __swift_storeEnumTagSinglePayload(v47, 1, 1, v48);
    v70 = v48;
  }

  sub_26A0E48F0(v47, &qword_28036CAE0, &unk_26A4273F0);
LABEL_6:
  v72 = v115;
  sub_26A10FD9C();
  v73 = v123;
  if (v123)
  {
    v74 = v124;
    __swift_project_boxed_opaque_existential_1(v122, v123);
    (*(v74 + 8))(v73, v74);
    v75 = v112;
    sub_26A3EC4D8();
    __swift_storeEnumTagSinglePayload(v75, 0, 1, v70);
    __swift_destroy_boxed_opaque_existential_1(v122);
    if (__swift_getEnumTagSinglePayload(v75, 1, v70) != 1)
    {
      v76 = v97;
      sub_26A3EC4D8();
      sub_26A3EC980();
      _ProtoFactItem_ShortNumber.text3.setter();
      sub_26A3EC52C(v76, type metadata accessor for _ProtoMultilineTextProperty);
      goto LABEL_11;
    }
  }

  else
  {
    sub_26A0E48F0(v122, &qword_28036CB10, &unk_26A426460);
    v75 = v112;
    __swift_storeEnumTagSinglePayload(v112, 1, 1, v70);
  }

  sub_26A0E48F0(v75, &qword_28036CAE0, &unk_26A4273F0);
LABEL_11:
  sub_26A10FD9C();
  v77 = v123;
  if (v123)
  {
    v78 = v124;
    __swift_project_boxed_opaque_existential_1(v122, v123);
    (*(v78 + 8))(v77, v78);
    v79 = v114;
    sub_26A3EC4D8();
    __swift_storeEnumTagSinglePayload(v79, 0, 1, v72);
    __swift_destroy_boxed_opaque_existential_1(v122);
    if (__swift_getEnumTagSinglePayload(v79, 1, v72) != 1)
    {
      v80 = v98;
      sub_26A3EC4D8();
      sub_26A3EC980();
      _ProtoFactItem_ShortNumber.text4.setter();
      sub_26A3EC52C(v80, type metadata accessor for _ProtoTextProperty);
      goto LABEL_16;
    }
  }

  else
  {
    sub_26A0E48F0(v122, &qword_28036CB08, &unk_26A428720);
    v79 = v114;
    __swift_storeEnumTagSinglePayload(v114, 1, 1, v72);
  }

  sub_26A0E48F0(v79, &qword_28036C7B8, &unk_26A425BF0);
LABEL_16:
  sub_26A10FD9C();
  v81 = v123;
  if (v123)
  {
    v82 = v124;
    __swift_project_boxed_opaque_existential_1(v122, v123);
    (*(v82 + 8))(v81, v82);
    v83 = v117;
    sub_26A3EC4D8();
    __swift_storeEnumTagSinglePayload(v83, 0, 1, v72);
    __swift_destroy_boxed_opaque_existential_1(v122);
    if (__swift_getEnumTagSinglePayload(v83, 1, v72) != 1)
    {
      v84 = v99;
      sub_26A3EC4D8();
      sub_26A3EC980();
      _ProtoFactItem_ShortNumber.unit.setter();
      sub_26A3EC52C(v84, type metadata accessor for _ProtoTextProperty);
      goto LABEL_21;
    }
  }

  else
  {
    sub_26A0E48F0(v122, &qword_28036CB08, &unk_26A428720);
    v83 = v117;
    __swift_storeEnumTagSinglePayload(v117, 1, 1, v72);
  }

  sub_26A0E48F0(v83, &qword_28036C7B8, &unk_26A425BF0);
LABEL_21:
  sub_26A10FD9C();
  v85 = v123;
  if (v123)
  {
    v86 = v124;
    __swift_project_boxed_opaque_existential_1(v122, v123);
    (*(v86 + 8))(v85, v86);
    v87 = v119;
    sub_26A3EC4D8();
    v88 = v118;
    __swift_storeEnumTagSinglePayload(v87, 0, 1, v118);
    __swift_destroy_boxed_opaque_existential_1(v122);
    if (__swift_getEnumTagSinglePayload(v87, 1, v88) != 1)
    {
      v89 = v101;
      sub_26A3EC4D8();
      sub_26A3EC980();
      _ProtoFactItem_ShortNumber.thumbnail.setter();
      sub_26A3EC52C(v89, type metadata accessor for _ProtoVisualProperty);
      goto LABEL_26;
    }
  }

  else
  {
    sub_26A0E48F0(v122, &qword_28036CB00, &unk_26A426450);
    v87 = v119;
    __swift_storeEnumTagSinglePayload(v119, 1, 1, v118);
  }

  sub_26A0E48F0(v87, &qword_28036CAE8, &unk_26A426430);
LABEL_26:
  sub_26A10FD9C();
  v90 = v123;
  if (!v123)
  {
    sub_26A0E48F0(v122, &qword_28036CAF8, &unk_26A426D30);
    v92 = v121;
    __swift_storeEnumTagSinglePayload(v121, 1, 1, v120);
LABEL_31:
    result = sub_26A0E48F0(v92, &off_28036C7C0, &off_26A427400);
    if (!a13)
    {
      return result;
    }

    goto LABEL_32;
  }

  v91 = v124;
  __swift_project_boxed_opaque_existential_1(v122, v123);
  (*(v91 + 8))(v90, v91);
  v92 = v121;
  sub_26A3EC4D8();
  v93 = v120;
  __swift_storeEnumTagSinglePayload(v92, 0, 1, v120);
  __swift_destroy_boxed_opaque_existential_1(v122);
  if (__swift_getEnumTagSinglePayload(v92, 1, v93) == 1)
  {
    goto LABEL_31;
  }

  v94 = v103;
  sub_26A3EC4D8();
  sub_26A3EC980();
  _ProtoFactItem_ShortNumber.action.setter();
  result = sub_26A3EC52C(v94, type metadata accessor for _ProtoActionProperty);
  if (a13)
  {
LABEL_32:

    return _ProtoFactItem_ShortNumber.linkIdentifier.setter();
  }

  return result;
}

void FactItemShortNumber.init(number:text1:text2:text3:text4:unit:thumbnail:action:componentName:)()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v14 = v6;
  v15 = v8;
  v16 = v7;
  v10 = v9;
  v17 = v9;
  v18 = v11;
  sub_26A0E5D68(v11, v26);
  sub_26A0E5D68(v10, v25);
  sub_26A10FD9C();
  sub_26A10FD9C();
  sub_26A10FD9C();
  sub_26A10FD9C();
  sub_26A10FD9C();
  sub_26A10FD9C();
  type metadata accessor for _ProtoFactItem_ShortNumber(0);
  OUTLINED_FUNCTION_0_87();
  sub_26A3EC858(v12, v13);
  sub_26A4249C4();

  sub_26A0E48F0(v1, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v3, &qword_28036CB00, &unk_26A426450);
  OUTLINED_FUNCTION_69_9(v5);
  OUTLINED_FUNCTION_69_9(v14);
  sub_26A0E48F0(v15, &qword_28036CB10, &unk_26A426460);
  OUTLINED_FUNCTION_187_0(v16);
  __swift_destroy_boxed_opaque_existential_1(v17);
  __swift_destroy_boxed_opaque_existential_1(v18);
  OUTLINED_FUNCTION_64_15(v19);
  sub_26A0E48F0(v20, &qword_28036CB00, &unk_26A426450);
  OUTLINED_FUNCTION_69_9(v21);
  OUTLINED_FUNCTION_69_9(v22);
  OUTLINED_FUNCTION_187_0(&v23);
  OUTLINED_FUNCTION_187_0(&v24);
  __swift_destroy_boxed_opaque_existential_1(v25);
  __swift_destroy_boxed_opaque_existential_1(v26);
  OUTLINED_FUNCTION_75();
}

void FactItemShortNumber.init(number:text1:text2:text3:unit:thumbnail:action:)()
{
  OUTLINED_FUNCTION_76();
  v10 = v1;
  v11 = v0;
  v12 = v3;
  v13 = v2;
  v14 = v5;
  v15 = v4;
  v6 = v4;
  v16 = v7;
  sub_26A0E5D68(v7, v33);
  sub_26A0E5D68(v6, v32);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  OUTLINED_FUNCTION_32_2();
  sub_26A10FD9C();
  sub_26A10FD9C();
  sub_26A0E5D68(v33, v24);
  sub_26A0E5D68(v32, v23);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_32_2();
  sub_26A10FD9C();
  sub_26A10FD9C();
  type metadata accessor for _ProtoFactItem_ShortNumber(0);
  OUTLINED_FUNCTION_0_87();
  sub_26A3EC858(v8, v9);
  OUTLINED_FUNCTION_41_18();
  OUTLINED_FUNCTION_64_15(v10);
  sub_26A0E48F0(v11, &qword_28036CB00, &unk_26A426450);
  OUTLINED_FUNCTION_31_2(v12);
  OUTLINED_FUNCTION_164_0(v13);
  OUTLINED_FUNCTION_164_0(v14);
  __swift_destroy_boxed_opaque_existential_1(v15);
  __swift_destroy_boxed_opaque_existential_1(v16);
  OUTLINED_FUNCTION_64_15(v25);
  OUTLINED_FUNCTION_40_1(v26);
  OUTLINED_FUNCTION_31_2(v27);
  OUTLINED_FUNCTION_31_2(v28);
  OUTLINED_FUNCTION_164_0(&v30);
  OUTLINED_FUNCTION_164_0(&v31);
  __swift_destroy_boxed_opaque_existential_1(v32);
  __swift_destroy_boxed_opaque_existential_1(v33);
  OUTLINED_FUNCTION_64_15(v17);
  OUTLINED_FUNCTION_40_1(v18);
  OUTLINED_FUNCTION_31_2(v19);
  OUTLINED_FUNCTION_31_2(v20);
  OUTLINED_FUNCTION_164_0(v21);
  OUTLINED_FUNCTION_164_0(v22);
  __swift_destroy_boxed_opaque_existential_1(v23);
  __swift_destroy_boxed_opaque_existential_1(v24);
  OUTLINED_FUNCTION_75();
}

void FactItemShortNumber.init(number:text1:text2:text3:unit:thumbnail:action:componentName:)()
{
  OUTLINED_FUNCTION_76();
  v11 = v0;
  v10 = v1;
  v12 = v3;
  v13 = v2;
  v14 = v5;
  v15 = v4;
  v6 = v4;
  v16 = v7;
  sub_26A0E5D68(v7, v33);
  sub_26A0E5D68(v6, v32);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  OUTLINED_FUNCTION_32_2();
  sub_26A10FD9C();
  sub_26A10FD9C();
  sub_26A0E5D68(v33, v24);
  sub_26A0E5D68(v32, v23);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_32_2();
  sub_26A10FD9C();
  sub_26A10FD9C();
  type metadata accessor for _ProtoFactItem_ShortNumber(0);
  OUTLINED_FUNCTION_0_87();
  sub_26A3EC858(v8, v9);
  sub_26A4249C4();

  sub_26A0E48F0(v10, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v11, &qword_28036CB00, &unk_26A426450);
  OUTLINED_FUNCTION_31_2(v12);
  OUTLINED_FUNCTION_164_0(v13);
  OUTLINED_FUNCTION_164_0(v14);
  __swift_destroy_boxed_opaque_existential_1(v15);
  __swift_destroy_boxed_opaque_existential_1(v16);
  sub_26A0E48F0(v25, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_40_1(v26);
  OUTLINED_FUNCTION_31_2(v27);
  OUTLINED_FUNCTION_31_2(v28);
  OUTLINED_FUNCTION_164_0(&v30);
  OUTLINED_FUNCTION_164_0(&v31);
  __swift_destroy_boxed_opaque_existential_1(v32);
  __swift_destroy_boxed_opaque_existential_1(v33);
  sub_26A0E48F0(v17, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_40_1(v18);
  OUTLINED_FUNCTION_31_2(v19);
  OUTLINED_FUNCTION_31_2(v20);
  OUTLINED_FUNCTION_164_0(v21);
  OUTLINED_FUNCTION_164_0(v22);
  __swift_destroy_boxed_opaque_existential_1(v23);
  __swift_destroy_boxed_opaque_existential_1(v24);
  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A3EC4D8()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t sub_26A3EC52C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t FactItemShortNumber.componentProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoFactItem_ShortNumber(0);
  v3 = OUTLINED_FUNCTION_41(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v6);
  v10 = type metadata accessor for _ProtoResponse.Component(0);
  v11 = a1 + *(v10 + 20);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v12 = *(v10 + 24);
  type metadata accessor for _ProtoSeparators();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  OUTLINED_FUNCTION_11_40();
  sub_26A3EC980();
  sub_26A0E48F0(a1, &qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_24_42();
  sub_26A3EC4D8();
  OUTLINED_FUNCTION_175();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_126_0();
  return __swift_storeEnumTagSinglePayload(v17, v18, v19, v6);
}

uint64_t FactItemShortNumber.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for FactItemShortNumber();
  *(inited + 64) = &protocol witness table for FactItemShortNumber;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_22_32();
  sub_26A3EC980();
  OUTLINED_FUNCTION_142();

  sub_26A10BF5C(v1);
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A3EC858(&qword_28036CB48, type metadata accessor for _ProtoResponse.Section);
  sub_26A4249C4();

  swift_setDeallocating();
  return sub_26A10C358();
}

uint64_t sub_26A3EC858(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A3EC914()
{
  result = type metadata accessor for _ProtoFactItem_ShortNumber(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A3EC980()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

void OUTLINED_FUNCTION_25_33()
{

  sub_26A2C994C();
}

uint64_t OUTLINED_FUNCTION_27_30()
{

  return sub_26A3EC52C(v0, type metadata accessor for _ProtoMultilineTextProperty);
}

uint64_t OUTLINED_FUNCTION_35_27@<X0>(uint64_t a1@<X8>)
{
  *v1 = a1;
  *(v1 + 8) = 0;
  v4 = v1 + *(v2 + 28);

  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t OUTLINED_FUNCTION_56_18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 - 320);

  return __swift_storeEnumTagSinglePayload(a1, a2, a3, v5);
}

uint64_t OUTLINED_FUNCTION_58_19()
{

  return sub_26A3EC4D8();
}

uint64_t OUTLINED_FUNCTION_59_18()
{

  return sub_26A3EC4D8();
}

uint64_t OUTLINED_FUNCTION_62_15()
{

  return type metadata accessor for _ProtoFactItem_ShortNumber(0);
}

uint64_t OUTLINED_FUNCTION_63_14(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_64_15(uint64_t a1)
{

  return sub_26A0E48F0(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_66_13@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return sub_26A3EC4D8();
}

uint64_t OUTLINED_FUNCTION_69_9(uint64_t a1)
{

  return sub_26A0E48F0(a1, v2, v1);
}

Swift::String __swiftcall Table.description(redacted:)(Swift::Bool redacted)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF98, &unk_26A42DA10);
  v3 = OUTLINED_FUNCTION_41(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v26 - v6;
  v8 = type metadata accessor for Table();
  v9 = OUTLINED_FUNCTION_41(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF90, &qword_26A426B40);
  v16 = OUTLINED_FUNCTION_12(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v26 - v19;
  OUTLINED_FUNCTION_4_55();
  sub_26A3EF77C();
  if (redacted)
  {
    _ProtoTable.redactedProto.getter();
  }

  else
  {
    sub_26A3EF77C();
  }

  sub_26A3EF984();
  v20[*(v15 + 32)] = redacted;
  sub_26A3EF7D0(v14, type metadata accessor for Table);
  *&v20[*(v15 + 28)] = MEMORY[0x277D84F90];
  sub_26A145ED0(*v20);
  Table.columns.getter();
  sub_26A3A2878(v21, 0x736E6D756C6F63, 0xE700000000000000, 0);

  Table.header.getter();
  sub_26A104CFC();
  sub_26A0E48F0(v7, &qword_28036CF98, &unk_26A42DA10);
  KeyPath = swift_getKeyPath();
  sub_26A0F710C(KeyPath, 1937207154, 0xE400000000000000);

  sub_26A0FB144();
  sub_26A0E48F0(v20, &qword_28036CF90, &qword_26A426B40);
  v23 = OUTLINED_FUNCTION_175();
  result._object = v24;
  result._countAndFlagsBits = v23;
  return result;
}

uint64_t type metadata accessor for Table()
{
  result = qword_280373A50;
  if (!qword_280373A50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void Table.columns.getter()
{
  OUTLINED_FUNCTION_76();
  v1 = type metadata accessor for _ProtoTable.FixedColumnSize(0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18();
  v74 = (v6 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8C0, &qword_26A425E70);
  v8 = OUTLINED_FUNCTION_41(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  v78 = &v73 - v15;
  v77 = type metadata accessor for _ProtoTable.ContentColumnCell(0);
  v16 = OUTLINED_FUNCTION_12(v77);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_18();
  v80 = v20 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8D8, &qword_26A425E88);
  v22 = OUTLINED_FUNCTION_41(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_17();
  v27 = v25 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v73 - v29;
  v31 = type metadata accessor for _ProtoTable.Column(0);
  v32 = OUTLINED_FUNCTION_79_0(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_16_30();
  MEMORY[0x28223BE20](v37);
  v39 = &v73 - v38;
  v40 = *(v0 + 8);
  v41 = *(v40 + 16);
  if (!v41)
  {
LABEL_21:
    OUTLINED_FUNCTION_75();
    return;
  }

  v81 = v30;
  v84 = MEMORY[0x277D84F90];
  sub_26A10DC4C(0, v41, 0);
  v42 = v84;
  v43 = v40 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
  v44 = *(v34 + 72);
  *&v45 = 134217984;
  v73 = v45;
  v75 = v39;
  v76 = v13;
  v79 = v27;
  while (1)
  {
    sub_26A3EF77C();
    sub_26A3EF77C();
    v46 = v81;
    sub_26A10FD9C();
    v47 = type metadata accessor for _ProtoTable.Column.OneOf_Cell(0);
    if (__swift_getEnumTagSinglePayload(v46, 1, v47) == 1)
    {
      if (qword_28036C5A0 != -1)
      {
        OUTLINED_FUNCTION_0_34();
        swift_once();
      }

      v66 = sub_26A424AE4();
      v67 = __swift_project_value_buffer(v66, qword_2803A8950);
      MEMORY[0x28223BE20](v67);
      sub_26A31B964(sub_26A3EF3AC);
    }

    sub_26A10FD9C();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    sub_26A3EF7D0(v27, type metadata accessor for _ProtoTable.Column.OneOf_Cell);
    v48 = 0x40000000000;
LABEL_18:
    sub_26A0E48F0(v81, &qword_28036C8D8, &qword_26A425E88);
    sub_26A3EF7D0(v82, type metadata accessor for _ProtoTable.Column);
    sub_26A3EF7D0(v39, type metadata accessor for _ProtoTable.Column);
    v84 = v42;
    v64 = *(v42 + 16);
    v63 = *(v42 + 24);
    if (v64 >= v63 >> 1)
    {
      sub_26A10DC4C(v63 > 1, v64 + 1, 1);
      v42 = v84;
    }

    *(v42 + 16) = v64 + 1;
    v65 = v42 + 8 * v64;
    *(v65 + 32) = v48;
    *(v65 + 36) = WORD2(v48);
    v43 += v44;
    --v41;
    v27 = v79;
    if (!v41)
    {
      goto LABEL_21;
    }
  }

  v49 = v44;
  sub_26A3EF984();
  v50 = v78;
  sub_26A10FD9C();
  v51 = v76;
  sub_26A10FD9C();
  v52 = type metadata accessor for _ProtoTable.ContentColumnCell.OneOf_Size(0);
  if (__swift_getEnumTagSinglePayload(v51, 1, v52) != 1)
  {
    sub_26A0E48F0(v50, &qword_28036C8C0, &qword_26A425E70);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v54 = v74;
      sub_26A3EF984();
      v55 = *v54;
      sub_26A3EF7D0(v54, type metadata accessor for _ProtoTable.FixedColumnSize);
    }

    else
    {
      sub_26A3EF7D0(v51, type metadata accessor for _ProtoTable.ContentColumnCell.OneOf_Size);
      v55 = 0;
    }

    v56 = (v80 + *(v77 + 20));
    v57 = *v56;
    if (v56[1])
    {
      v58 = *v56;
    }

    else
    {
      if (qword_28036C5A0 != -1)
      {
        swift_once();
      }

      v59 = sub_26A424AE4();
      __swift_project_value_buffer(v59, qword_2803A8950);
      v60 = sub_26A424AD4();
      v61 = sub_26A424E04();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = v73;
        *(v62 + 4) = v57;
        _os_log_impl(&dword_26A0B8000, v60, v61, "Unhandled column alignment value: %ld", v62, 0xCu);
        MEMORY[0x26D65C950](v62, -1, -1);
      }

      v58 = 0;
    }

    sub_26A3EF7D0(v80, type metadata accessor for _ProtoTable.ContentColumnCell);
    v48 = v55 | ((EnumCaseMultiPayload != 1) << 32) | (v58 << 40);
    v44 = v49;
    v39 = v75;
    goto LABEL_18;
  }

  if (qword_28036C5A0 != -1)
  {
    OUTLINED_FUNCTION_0_34();
    swift_once();
  }

  v68 = sub_26A424AE4();
  __swift_project_value_buffer(v68, qword_2803A8950);
  v69 = sub_26A424AD4();
  v70 = sub_26A424E14();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v83 = v72;
    *v71 = 136446210;
    *(v71 + 4) = sub_26A0E8788(0xD000000000000018, 0x800000026A44B2A0, &v83);
    _os_log_impl(&dword_26A0B8000, v69, v70, "%{public}s", v71, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v72);
    MEMORY[0x26D65C950](v72, -1, -1);
    MEMORY[0x26D65C950](v71, -1, -1);
  }

  sub_26A424FC4();
  __break(1u);
}

void Table.header.getter()
{
  OUTLINED_FUNCTION_76();
  v25 = v0;
  v1 = type metadata accessor for _ProtoTable.Header(0);
  v2 = OUTLINED_FUNCTION_12(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18();
  v7 = (v6 - v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280373400, &qword_26A440D98);
  v9 = OUTLINED_FUNCTION_41(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v24 - v16;
  v18 = *(type metadata accessor for _ProtoTable(0) + 32);
  sub_26A10FD9C();
  v19 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, 1, v1);
  v21 = v25;
  sub_26A0E48F0(v17, &qword_280373400, &qword_26A440D98);
  if (EnumTagSinglePayload != 1)
  {
    sub_26A10FD9C();
    if (__swift_getEnumTagSinglePayload(v14, 1, v1) == 1)
    {
      *v7 = MEMORY[0x277D84F90];
      v7[1] = 0;
      v7[2] = 0xE000000000000000;
      v22 = v7 + *(v1 + 24);
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      if (__swift_getEnumTagSinglePayload(v14, 1, v1) != 1)
      {
        sub_26A0E48F0(v14, &qword_280373400, &qword_26A440D98);
      }
    }

    else
    {
      sub_26A3EF984();
    }

    sub_26A3EF984();
    v19 = 0;
  }

  v23 = type metadata accessor for TableHeader();
  __swift_storeEnumTagSinglePayload(v21, v19, 1, v23);
  OUTLINED_FUNCTION_75();
}

void Table.rows.getter()
{
  OUTLINED_FUNCTION_76();
  v1 = type metadata accessor for _ProtoTable.Row(0);
  v2 = OUTLINED_FUNCTION_79_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18();
  v9 = v8 - v7;
  v10 = type metadata accessor for TableRow();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_18();
  v15 = v14 - v13;
  v16 = *(v0 + 16);
  v17 = *(v16 + 16);
  if (v17)
  {
    v25 = MEMORY[0x277D84F90];
    sub_26A10DC6C();
    v18 = v16 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v19 = *(v4 + 72);
    do
    {
      sub_26A3EF77C();
      sub_26A3EF77C();
      v20 = v15 + *(v10 + 20);
      sub_26A424724();
      OUTLINED_FUNCTION_7_33();
      sub_26A3EF7D0(v9, v21);
      v22 = *(v25 + 16);
      if (v22 >= *(v25 + 24) >> 1)
      {
        sub_26A10DC6C();
      }

      *(v25 + 16) = v22 + 1;
      v23 = v25 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v24 = *(v11 + 72);
      sub_26A3EF984();
      v18 += v19;
      --v17;
    }

    while (v17);
  }

  OUTLINED_FUNCTION_75();
}

void _ProtoTable.redactedProto.getter()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v2 = type metadata accessor for _ProtoTable.Row(0);
  v3 = OUTLINED_FUNCTION_79_0(v2);
  v43 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_17();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v11 = type metadata accessor for _ProtoTable.Header(0);
  v12 = OUTLINED_FUNCTION_12(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_16_30();
  MEMORY[0x28223BE20](v15);
  v41 = (&v41 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280373400, &qword_26A440D98);
  v18 = OUTLINED_FUNCTION_41(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_17();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v41 - v25;
  OUTLINED_FUNCTION_0_88();
  sub_26A3EF77C();
  v27 = *(type metadata accessor for _ProtoTable(0) + 32);
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v26, 1, v11);
  sub_26A0E48F0(v26, &qword_280373400, &qword_26A440D98);
  v29 = MEMORY[0x277D84F90];
  if (EnumTagSinglePayload != 1)
  {
    sub_26A10FD9C();
    if (__swift_getEnumTagSinglePayload(v23, 1, v11) == 1)
    {
      v30 = v41;
      *v41 = v29;
      *(v30 + 8) = 0;
      *(v30 + 16) = 0xE000000000000000;
      v31 = v30 + *(v11 + 24);
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      if (__swift_getEnumTagSinglePayload(v23, 1, v11) != 1)
      {
        sub_26A0E48F0(v23, &qword_280373400, &qword_26A440D98);
      }
    }

    else
    {
      v30 = v41;
      sub_26A3EF984();
    }

    _ProtoTable.Header.redactedProto.getter();
    sub_26A3EF7D0(v30, type metadata accessor for _ProtoTable.Header);
    sub_26A0E48F0(v1 + v27, &qword_280373400, &qword_26A440D98);
    sub_26A3EF984();
    __swift_storeEnumTagSinglePayload(v1 + v27, 0, 1, v11);
  }

  v32 = *(v1 + 16);
  v33 = v32[2];
  if (v33)
  {
    v42 = v1;
    v44 = v29;
    sub_26A10D308();
    v34 = v44;
    v35 = (*(v43 + 80) + 32) & ~*(v43 + 80);
    v41 = v32;
    v36 = v32 + v35;
    v37 = *(v43 + 72);
    do
    {
      sub_26A3EF77C();
      _ProtoTable.Row.redactedProto.getter();
      OUTLINED_FUNCTION_7_33();
      sub_26A3EF7D0(v9, v38);
      v44 = v34;
      v39 = *(v34 + 16);
      if (v39 >= *(v34 + 24) >> 1)
      {
        sub_26A10D308();
        v34 = v44;
      }

      *(v34 + 16) = v39 + 1;
      sub_26A3EF984();
      v36 += v37;
      --v33;
    }

    while (v33);

    v1 = v42;
  }

  else
  {
    v40 = *(v1 + 16);

    v34 = MEMORY[0x277D84F90];
  }

  *(v1 + 16) = v34;
  OUTLINED_FUNCTION_75();
}

uint64_t Table.init(separatorLines:columns:header:rows:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for _ProtoTable(0);
  OUTLINED_FUNCTION_6_40();
  sub_26A3EF8CC(v4, v5);
  sub_26A4249C4();

  return sub_26A0E48F0(a3, &qword_28036CF98, &unk_26A42DA10);
}

uint64_t sub_26A3EDFE4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v62 = a4;
  v11 = type metadata accessor for TableRow();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v63 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for _ProtoTable.Row(0);
  v65 = *(v15 - 8);
  v16 = *(v65 + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v59 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for _ProtoTable.Header(0);
  v18 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58);
  v57 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for _ProtoTable.Column(0);
  v64 = *(v20 - 8);
  v21 = *(v64 + 64);
  MEMORY[0x28223BE20](v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF98, &unk_26A42DA10);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v61 = &v52 - v24;
  v60 = type metadata accessor for TableHeader();
  v25 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60);
  v56 = &v52 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = a2;
  v27 = a3;
  v28 = *(a3 + 16);
  v29 = MEMORY[0x277D84F90];
  if (v28)
  {
    v53 = v12;
    v54 = a5;
    v55 = a1;
    v66 = MEMORY[0x277D84F90];
    sub_26A10DCC4();
    v29 = v66;
    v31 = (v27 + 32);
    do
    {
      if (((*v31 | (*(v31 + 2) << 32)) & 0xFF0000000000) != 0x40000000000)
      {
        MEMORY[0x28223BE20](v30);
        *(&v52 - 4) = v33;
        *(&v52 - 12) = v34 & 1;
        *(&v52 - 11) = v35;
      }

      sub_26A3EF8CC(&qword_280373418, type metadata accessor for _ProtoTable.Column);
      sub_26A4249C4();
      v32 = v6;
      v66 = v29;
      v36 = *(v29 + 16);
      if (v36 >= *(v29 + 24) >> 1)
      {
        sub_26A10DCC4();
        v29 = v66;
      }

      *(v29 + 16) = v36 + 1;
      v37 = v29 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v36;
      v30 = sub_26A3EF984();
      v31 += 2;
      --v28;
      v6 = v32;
    }

    while (v28);
    a5 = v54;
    a1 = v55;
    v38 = v53;
  }

  else
  {
    v38 = v12;
  }

  v39 = *(a1 + 8);

  *(a1 + 8) = v29;
  v40 = v61;
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v40, 1, v60);
  v42 = v63;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A0E48F0(v40, &qword_28036CF98, &unk_26A42DA10);
  }

  else
  {
    sub_26A3EF984();
    sub_26A3EF984();
    v43 = *(type metadata accessor for _ProtoTable(0) + 32);
    sub_26A0E48F0(a1 + v43, &qword_280373400, &qword_26A440D98);
    sub_26A3EF984();
    __swift_storeEnumTagSinglePayload(a1 + v43, 0, 1, v58);
  }

  v44 = *(a5 + 16);
  v45 = MEMORY[0x277D84F90];
  if (v44)
  {
    v64 = v6;
    v66 = MEMORY[0x277D84F90];
    sub_26A10D308();
    v45 = v66;
    v46 = a5 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
    v47 = *(v38 + 72);
    do
    {
      sub_26A3EF77C();
      sub_26A3EF77C();
      sub_26A3EF7D0(v42, type metadata accessor for TableRow);
      v66 = v45;
      v48 = *(v45 + 16);
      if (v48 >= *(v45 + 24) >> 1)
      {
        sub_26A10D308();
        v45 = v66;
      }

      *(v45 + 16) = v48 + 1;
      v49 = v45 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v48;
      sub_26A3EF984();
      v46 += v47;
      --v44;
    }

    while (v44);
  }

  v50 = *(a1 + 16);

  *(a1 + 16) = v45;
  return result;
}

void Table.init(separatorLines:columns:header:rows:)()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF98, &unk_26A42DA10);
  v9 = OUTLINED_FUNCTION_41(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v16[-v12];
  sub_26A10FD9C();
  type metadata accessor for _ProtoTable(0);
  v16[16] = v7;
  v17 = v5;
  v18 = v13;
  v19 = v1;
  OUTLINED_FUNCTION_6_40();
  sub_26A3EF8CC(v14, v15);
  sub_26A4249C4();

  sub_26A0E48F0(v3, &qword_28036CF98, &unk_26A42DA10);
  sub_26A0E48F0(v13, &qword_28036CF98, &unk_26A42DA10);
  OUTLINED_FUNCTION_75();
}

float Table.Column.percentage.getter()
{
  result = *v0;
  if (((*(v0 + 4) << 32) & 0x100000000) != 0 || HIBYTE(*(v0 + 4)) == 4)
  {
    return 0.0;
  }

  return result;
}

uint64_t Table.Column.description.getter()
{
  if (HIBYTE(*(v0 + 2)) == 4)
  {
    return 0x726563617073;
  }

  v2 = (*v0 | (*(v0 + 2) << 32)) >> 40;
  if (((*(v0 + 2) << 32) & 0x100000000) != 0)
  {
    v4 = 0xE400000000000000;
    v3 = 1869903201;
  }

  else
  {
    OUTLINED_FUNCTION_10_55();
    sub_26A424DC4();
    MEMORY[0x26D65BA70](41, 0xE100000000000000);
    v3 = v7;
    v4 = v8;
  }

  MEMORY[0x26D65BA70](v3, v4);

  MEMORY[0x26D65BA70](8236, 0xE200000000000000);
  v5 = 0xE700000000000000;
  v6 = 0x746C7561666564;
  switch(v2)
  {
    case 1:
      v6 = 0x676E696461656CLL;
      break;
    case 2:
      v5 = 0xE600000000000000;
      v6 = 0x7265746E6563;
      break;
    case 3:
      v5 = 0xE800000000000000;
      v6 = 0x676E696C69617274;
      break;
    default:
      break;
  }

  MEMORY[0x26D65BA70](v6, v5);

  MEMORY[0x26D65BA70](41, 0xE100000000000000);
  return 0x286C6C6563;
}

uint64_t Table.ColumnSize.description.getter()
{
  if (v0[1])
  {
    return 1869903201;
  }

  v2 = *v0;
  OUTLINED_FUNCTION_10_55();
  sub_26A424DC4();
  MEMORY[0x26D65BA70](41, 0xE100000000000000);
  return v3;
}

uint64_t Table.ColumnAlignment.description.getter()
{
  result = 0x746C7561666564;
  switch(*v0)
  {
    case 1:
      result = 0x676E696461656CLL;
      break;
    case 2:
      result = 0x7265746E6563;
      break;
    case 3:
      result = 0x676E696C69617274;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26A3EEB0C(uint64_t a1)
{
  v2 = type metadata accessor for _ProtoTable.ContentColumnCell(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_26A3EF8CC(&qword_280373540, type metadata accessor for _ProtoTable.ContentColumnCell);
  sub_26A4249C4();
  sub_26A0E48F0(a1, &qword_28036C8D8, &qword_26A425E88);
  sub_26A3EF984();
  v4 = type metadata accessor for _ProtoTable.Column.OneOf_Cell(0);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v4);
}

uint64_t sub_26A3EEC80(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8C0, &qword_26A425E70);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v14 - v8;
  if ((a2 & 0x100000000) != 0)
  {
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  }

  else
  {
    v10 = type metadata accessor for _ProtoTable.FixedColumnSize(0);
    MEMORY[0x28223BE20](v10);
    *(&v14 - 4) = a2;
    sub_26A3EF8CC(&qword_280373570, type metadata accessor for _ProtoTable.FixedColumnSize);
    sub_26A4249C4();
  }

  v11 = type metadata accessor for _ProtoTable.ContentColumnCell.OneOf_Size(0);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
  sub_26A3EF914(v9, a1);
  result = type metadata accessor for _ProtoTable.ContentColumnCell(0);
  v13 = a1 + *(result + 20);
  *v13 = a3;
  *(v13 + 8) = 1;
  return result;
}

uint64_t sub_26A3EEE2C(uint64_t a1)
{
  v2 = type metadata accessor for _ProtoTable.SpacerColumnCell(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  sub_26A0E48F0(a1, &qword_28036C8D8, &qword_26A425E88);
  sub_26A3EF984();
  v4 = type metadata accessor for _ProtoTable.Column.OneOf_Cell(0);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v4);
}

uint64_t sub_26A3EEF14()
{
  sub_26A424EF4();
  MEMORY[0x26D65BA70](0xD00000000000001FLL, 0x800000026A44B2C0);
  type metadata accessor for _ProtoTable.Column(0);
  sub_26A424FA4();
  return 0;
}

uint64_t Table.Column.init(size:alignment:)@<X0>(uint64_t result@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = 0x100000000;
  if (!*(result + 4))
  {
    v3 = 0;
  }

  v4 = v3 | (*a2 << 40);
  *a3 = *result;
  *(a3 + 4) = WORD2(v4);
  return result;
}

BOOL static Table.Column.== infix(_:_:)(unsigned int *a1, unsigned int *a2)
{
  v2 = *a2 | (*(a2 + 2) << 32);
  if (HIBYTE(*(a1 + 2)) == 4)
  {
    return BYTE5(v2) == 4;
  }

  if (BYTE5(v2) == 4)
  {
    return 0;
  }

  v4 = *a1 | (*(a1 + 2) << 32);
  if (((*(a1 + 2) << 32) & 0x100000000) != 0)
  {
    if ((v2 & 0x100000000) == 0)
    {
      return 0;
    }

    return (((v2 ^ v4) >> 32) >> 8) == 0;
  }

  result = 0;
  if ((v2 & 0x100000000) == 0)
  {
    *(a2 + 2);
    if (*&v4 == *a2)
    {
      return (((v2 ^ v4) >> 32) >> 8) == 0;
    }
  }

  return result;
}

BOOL static Table.ColumnSize.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  if (*(a1 + 4))
  {
    return (*(a2 + 4) & 1) != 0;
  }

  if (*(a2 + 4))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t Table.ColumnAlignment.hashValue.getter()
{
  v1 = *v0;
  sub_26A425504();
  MEMORY[0x26D65C340](v1);
  return sub_26A425554();
}

uint64_t Table.componentProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoTable(0);
  v3 = OUTLINED_FUNCTION_41(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  v6 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v6);
  v7 = type metadata accessor for _ProtoResponse.Component(0);
  v8 = a1 + *(v7 + 20);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v9 = *(v7 + 24);
  v10 = type metadata accessor for _ProtoSeparators();
  __swift_storeEnumTagSinglePayload(a1 + v9, 1, 1, v10);
  OUTLINED_FUNCTION_0_88();
  sub_26A3EF77C();
  sub_26A0E48F0(a1, &qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_8_43();
  sub_26A3EF984();
  OUTLINED_FUNCTION_175();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v6);
}

uint64_t Table.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for Table();
  *(inited + 64) = &protocol witness table for Table;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_4_55();
  sub_26A3EF77C();
  swift_beginAccess();

  sub_26A10BF5C(v1);
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A3EF8CC(&qword_28036CB48, type metadata accessor for _ProtoResponse.Section);
  sub_26A4249C4();

  swift_setDeallocating();
  return sub_26A10C358();
}

unint64_t sub_26A3EF424()
{
  result = qword_280373A48;
  if (!qword_280373A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280373A48);
  }

  return result;
}

uint64_t sub_26A3EF4A0()
{
  result = type metadata accessor for _ProtoTable(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_memcpy6_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Table.Column(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 6))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 5);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  if (v5 + 1 >= 2)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Table.Column(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 4) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 6) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 6) = 0;
    }

    if (a2)
    {
      *(result + 5) = a2 + 4;
    }
  }

  return result;
}

uint64_t sub_26A3EF5A8(uint64_t a1)
{
  v1 = *(a1 + 5);
  if (v1 >= 4)
  {
    return v1 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26A3EF5BC(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFC)
  {
    *(result + 4) = 0;
    *result = a2 - 253;
  }

  else if (a2)
  {
    *(result + 5) = a2 + 3;
  }

  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Table.ColumnSize(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Table.ColumnSize(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_26A3EF654(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26A3EF670(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 4) = v2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for Table.ColumnAlignment(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_26A3EF77C()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t sub_26A3EF7D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(a1);
  return a1;
}

float sub_26A3EF8C0(float *a1)
{
  result = *(v1 + 16);
  *a1 = result;
  return result;
}

uint64_t sub_26A3EF8CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A3EF914(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8C0, &qword_26A425E70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A3EF984()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

void OUTLINED_FUNCTION_10_55()
{

  JUMPOUT(0x26D65BA70);
}

uint64_t OUTLINED_FUNCTION_17_34()
{

  return type metadata accessor for _ProtoTable(0);
}

Swift::String __swiftcall ReferenceLogo.description(redacted:)(Swift::Bool redacted)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB18, &unk_26A427670);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v7 = v42 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB20, &unk_26A426470);
  OUTLINED_FUNCTION_41(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v11);
  v13 = v42 - v12;
  v14 = type metadata accessor for ReferenceLogo();
  v15 = OUTLINED_FUNCTION_41(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_17();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = v42 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD18, &qword_26A4267F8);
  OUTLINED_FUNCTION_12(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v27);
  v29 = v42 - v28;
  OUTLINED_FUNCTION_3_64();
  sub_26A3F0D50();
  if (redacted)
  {
    _ProtoReference_Logo.redactedProto.getter(v20);
  }

  else
  {
    sub_26A3F0D50();
  }

  sub_26A3F0DA4();
  v29[*(v24 + 32)] = redacted;
  sub_26A3F0DF8(v23, type metadata accessor for ReferenceLogo);
  *&v29[*(v24 + 28)] = MEMORY[0x277D84F90];
  ReferenceLogo.thumbnail.getter();
  type metadata accessor for VisualProperty();
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
  sub_26A108B10();
  sub_26A0E48F0(v13, &qword_28036CB20, &unk_26A426470);
  ReferenceLogo.action.getter(v7);
  sub_26A108A0C();
  sub_26A0E48F0(v7, &qword_28036CB18, &unk_26A427670);
  KeyPath = swift_getKeyPath();
  sub_26A0F7E80(KeyPath, 0x6E656E6F706D6F63, 0xED0000656D614E74, 1, v35, v36, v37, v38, v42[0], v42[1]);

  sub_26A10030C();
  sub_26A0E48F0(v29, &qword_28036CD18, &qword_26A4267F8);
  v39 = OUTLINED_FUNCTION_175();
  result._object = v40;
  result._countAndFlagsBits = v39;
  return result;
}

uint64_t type metadata accessor for ReferenceLogo()
{
  result = qword_280373A60;
  if (!qword_280373A60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ReferenceLogo.thumbnail.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v5 = &v26 - v4;
  v6 = type metadata accessor for _ProtoVisualProperty();
  v7 = OUTLINED_FUNCTION_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18();
  v12 = v11 - v10;
  v13 = *(type metadata accessor for _ProtoReference_Logo(0) + 24);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_37(v5, 1, v6);
  if (v14)
  {
    *v12 = MEMORY[0x277D84F90];
    *(v12 + 8) = 0;
    v15 = v12 + v6[7];
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v16 = v6[8];
    v17 = type metadata accessor for _ProtoActionProperty();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v17);
    v21 = v6[9];
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v17);
    OUTLINED_FUNCTION_37(v5, 1, v6);
    if (!v14)
    {
      sub_26A0E48F0(v5, &qword_28036CAE8, &unk_26A426430);
    }
  }

  else
  {
    sub_26A3F0DA4();
  }

  return sub_26A3F0DA4();
}

uint64_t ReferenceLogo.action.getter@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = type metadata accessor for _ProtoActionProperty();
  v2 = OUTLINED_FUNCTION_12(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18();
  v7 = (v6 - v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v9 = OUTLINED_FUNCTION_41(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v30 - v16;
  v18 = *(type metadata accessor for _ProtoReference_Logo(0) + 28);
  sub_26A10FD9C();
  v19 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, 1, v1);
  v21 = v31;
  sub_26A0E48F0(v17, &off_28036C7C0, &off_26A427400);
  if (EnumTagSinglePayload != 1)
  {
    sub_26A10FD9C();
    v22 = OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_37(v22, v23, v1);
    if (v24)
    {
      *v7 = MEMORY[0x277D84F90];
      v7[1] = 0;
      v7[2] = 0xE000000000000000;
      v25 = v7 + *(v1 + 24);
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v26 = OUTLINED_FUNCTION_71();
      OUTLINED_FUNCTION_37(v26, v27, v1);
      if (!v24)
      {
        sub_26A0E48F0(v14, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      sub_26A3F0DA4();
    }

    sub_26A3F0DA4();
    v19 = 0;
  }

  v28 = type metadata accessor for ActionProperty();
  return __swift_storeEnumTagSinglePayload(v21, v19, 1, v28);
}

uint64_t ReferenceLogo.componentName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_175();
}

uint64_t _ProtoReference_Logo.redactedProto.getter@<X0>(uint64_t a1@<X8>)
{
  v71 = type metadata accessor for _ProtoActionProperty();
  v2 = OUTLINED_FUNCTION_12(v71);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_17();
  v70 = (v5 - v6);
  MEMORY[0x28223BE20](v7);
  v69 = (&v67 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v10 = OUTLINED_FUNCTION_41(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17();
  v68 = v13 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v67 - v16;
  v18 = type metadata accessor for _ProtoVisualProperty();
  v19 = OUTLINED_FUNCTION_12(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_17();
  v67 = v22 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v67 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v28 = OUTLINED_FUNCTION_41(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_17();
  v33 = v31 - v32;
  MEMORY[0x28223BE20](v34);
  v36 = &v67 - v35;
  OUTLINED_FUNCTION_0_89();
  sub_26A3F0D50();
  v72 = type metadata accessor for _ProtoReference_Logo(0);
  v37 = *(v72 + 24);
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v36, 1, v18);
  sub_26A0E48F0(v36, &qword_28036CAE8, &unk_26A426430);
  v39 = MEMORY[0x277D84F90];
  v40 = EnumTagSinglePayload == 1;
  v41 = v71;
  if (!v40)
  {
    sub_26A10FD9C();
    v42 = OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_37(v42, v43, v18);
    if (v40)
    {
      *v26 = v39;
      *(v26 + 4) = 0;
      v44 = &v26[v18[7]];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v45 = v18[8];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v46, v47, v48, v41);
      v49 = v18[9];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v50, v51, v52, v41);
      v53 = OUTLINED_FUNCTION_71();
      OUTLINED_FUNCTION_37(v53, v54, v18);
      if (!v40)
      {
        sub_26A0E48F0(v33, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      sub_26A3F0DA4();
    }

    _ProtoVisualProperty.redactedProto.getter();
    sub_26A3F0DF8(v26, type metadata accessor for _ProtoVisualProperty);
    sub_26A0E48F0(a1 + v37, &qword_28036CAE8, &unk_26A426430);
    sub_26A3F0DA4();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v55, v56, v57, v18);
  }

  v58 = *(v72 + 28);
  sub_26A10FD9C();
  v59 = __swift_getEnumTagSinglePayload(v17, 1, v41);
  result = sub_26A0E48F0(v17, &off_28036C7C0, &off_26A427400);
  if (v59 != 1)
  {
    v61 = v68;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v61, 1, v41);
    if (v40)
    {
      v63 = v69;
      *v69 = v39;
      *(v63 + 8) = 0;
      *(v63 + 16) = 0xE000000000000000;
      v62 = v63 + *(v41 + 24);
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_37(v61, 1, v41);
      if (!v40)
      {
        sub_26A0E48F0(v61, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      v63 = v69;
      sub_26A3F0DA4();
    }

    _s10SnippetKit14ActionPropertyV13redactedProtoAA01_fcD0Vvg_0(v70);
    sub_26A3F0DF8(v63, type metadata accessor for _ProtoActionProperty);
    sub_26A0E48F0(a1 + v58, &off_28036C7C0, &off_26A427400);
    sub_26A3F0DA4();
    OUTLINED_FUNCTION_126_0();
    return __swift_storeEnumTagSinglePayload(v64, v65, v66, v41);
  }

  return result;
}

uint64_t ReferenceLogo.init(thumbnail:action:componentName:)(uint64_t *a1, uint64_t a2)
{
  type metadata accessor for _ProtoReference_Logo(0);
  OUTLINED_FUNCTION_4_56();
  sub_26A3F10E4(v4, v5);
  sub_26A4249C4();

  sub_26A0E48F0(a2, &qword_28036CAF8, &unk_26A426D30);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26A3F0810(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a4;
  v35 = a5;
  v32[3] = a3;
  v7 = type metadata accessor for ActionProperty();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v32 - v11;
  v33 = type metadata accessor for _ProtoActionProperty();
  v13 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v32[2] = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v32[1] = v32 - v16;
  v17 = type metadata accessor for _ProtoVisualProperty();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v19 = type metadata accessor for VisualProperty();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = a2[3];
  v22 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v21);
  (*(v22 + 8))(v21, v22);
  sub_26A3F0DA4();
  v23 = type metadata accessor for _ProtoReference_Logo(0);
  v24 = *(v23 + 24);
  sub_26A0E48F0(a1 + v24, &qword_28036CAE8, &unk_26A426430);
  sub_26A3F0DA4();
  __swift_storeEnumTagSinglePayload(a1 + v24, 0, 1, v17);
  sub_26A10FD9C();
  v25 = v37;
  if (!v37)
  {
    sub_26A0E48F0(v36, &qword_28036CAF8, &unk_26A426D30);
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v33);
    goto LABEL_5;
  }

  v26 = v38;
  __swift_project_boxed_opaque_existential_1(v36, v37);
  (*(v26 + 8))(v25, v26);
  sub_26A3F0DA4();
  v27 = v33;
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v33);
  __swift_destroy_boxed_opaque_existential_1(v36);
  if (__swift_getEnumTagSinglePayload(v12, 1, v27) == 1)
  {
LABEL_5:
    sub_26A0E48F0(v12, &off_28036C7C0, &off_26A427400);
    goto LABEL_6;
  }

  sub_26A3F0DA4();
  sub_26A3F0DA4();
  v28 = *(v23 + 28);
  sub_26A0E48F0(a1 + v28, &off_28036C7C0, &off_26A427400);
  sub_26A3F0DA4();
  __swift_storeEnumTagSinglePayload(a1 + v28, 0, 1, v27);
LABEL_6:
  v29 = a1[1];
  v30 = v35;

  *a1 = v34;
  a1[1] = v30;
  return result;
}

uint64_t ReferenceLogo.init(thumbnail:action:)(uint64_t *a1, uint64_t a2)
{
  sub_26A0E5D68(a1, v8);
  sub_26A10FD9C();
  type metadata accessor for _ProtoReference_Logo(0);
  OUTLINED_FUNCTION_4_56();
  sub_26A3F10E4(v4, v5);
  sub_26A4249C4();
  sub_26A0E48F0(a2, &qword_28036CAF8, &unk_26A426D30);
  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_26A0E48F0(v7, &qword_28036CAF8, &unk_26A426D30);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t sub_26A3F0D50()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t sub_26A3F0DA4()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t sub_26A3F0DF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t ReferenceLogo.componentProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoReference_Logo(0);
  v3 = OUTLINED_FUNCTION_41(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  v6 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v6);
  v10 = type metadata accessor for _ProtoResponse.Component(0);
  v11 = a1 + *(v10 + 20);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v12 = *(v10 + 24);
  type metadata accessor for _ProtoSeparators();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  OUTLINED_FUNCTION_0_89();
  sub_26A3F0D50();
  sub_26A0E48F0(a1, &qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_5_56();
  sub_26A3F0DA4();
  OUTLINED_FUNCTION_175();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_126_0();
  return __swift_storeEnumTagSinglePayload(v17, v18, v19, v6);
}

uint64_t ReferenceLogo.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for ReferenceLogo();
  *(inited + 64) = &protocol witness table for ReferenceLogo;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_3_64();
  sub_26A3F0D50();
  swift_beginAccess();

  sub_26A10BF5C(v1);
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A3F10E4(&qword_28036CB48, type metadata accessor for _ProtoResponse.Section);
  sub_26A4249C4();

  swift_setDeallocating();
  return sub_26A10C358();
}

uint64_t sub_26A3F10E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A3F11A0()
{
  result = type metadata accessor for _ProtoReference_Logo(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_15_43()
{

  return type metadata accessor for _ProtoReference_Logo(0);
}

Swift::String __swiftcall SectionHeaderStandard.description(redacted:)(Swift::Bool redacted)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB18, &unk_26A427670);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v7 = v42 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB30, &qword_26A426480);
  OUTLINED_FUNCTION_41(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v11);
  v13 = v42 - v12;
  v14 = type metadata accessor for SectionHeaderStandard();
  v15 = OUTLINED_FUNCTION_41(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_17();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = v42 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD20, &qword_26A426800);
  OUTLINED_FUNCTION_12(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v27);
  v29 = v42 - v28;
  OUTLINED_FUNCTION_3_65();
  sub_26A3F2524();
  if (redacted)
  {
    _ProtoSectionHeader_Standard.redactedProto.getter(v20);
  }

  else
  {
    sub_26A3F2524();
  }

  sub_26A3F2578();
  v29[*(v24 + 32)] = redacted;
  sub_26A3F25CC(v23, type metadata accessor for SectionHeaderStandard);
  *&v29[*(v24 + 28)] = MEMORY[0x277D84F90];
  SectionHeaderStandard.text1.getter();
  type metadata accessor for TextProperty(0);
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
  sub_26A105C80();
  sub_26A0E48F0(v13, &qword_28036CB30, &qword_26A426480);
  SectionHeaderStandard.action.getter(v7);
  sub_26A105B7C();
  sub_26A0E48F0(v7, &qword_28036CB18, &unk_26A427670);
  KeyPath = swift_getKeyPath();
  sub_26A0F79D0(KeyPath, 0x6E656E6F706D6F63, 0xED0000656D614E74, 1, v35, v36, v37, v38, v42[0], v42[1]);

  sub_26A0FC72C();
  sub_26A0E48F0(v29, &qword_28036CD20, &qword_26A426800);
  v39 = OUTLINED_FUNCTION_175();
  result._object = v40;
  result._countAndFlagsBits = v39;
  return result;
}

uint64_t type metadata accessor for SectionHeaderStandard()
{
  result = qword_280373A70;
  if (!qword_280373A70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SectionHeaderStandard.text1.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v5 = &v26 - v4;
  v6 = type metadata accessor for _ProtoTextProperty(0);
  v7 = OUTLINED_FUNCTION_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18();
  v12 = v11 - v10;
  v13 = *(type metadata accessor for _ProtoSectionHeader_Standard(0) + 24);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_37(v5, 1, v6);
  if (v14)
  {
    *v12 = MEMORY[0x277D84F90];
    *(v12 + 8) = 0;
    v15 = v12 + v6[7];
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v16 = v6[8];
    v17 = type metadata accessor for _ProtoActionProperty();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v17);
    v21 = v6[9];
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v17);
    OUTLINED_FUNCTION_37(v5, 1, v6);
    if (!v14)
    {
      sub_26A0E48F0(v5, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A3F2578();
  }

  return sub_26A3F2578();
}

uint64_t SectionHeaderStandard.action.getter@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = type metadata accessor for _ProtoActionProperty();
  v2 = OUTLINED_FUNCTION_12(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18();
  v7 = (v6 - v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v9 = OUTLINED_FUNCTION_41(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v30 - v16;
  v18 = *(type metadata accessor for _ProtoSectionHeader_Standard(0) + 28);
  sub_26A10FD9C();
  v19 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, 1, v1);
  v21 = v31;
  sub_26A0E48F0(v17, &off_28036C7C0, &off_26A427400);
  if (EnumTagSinglePayload != 1)
  {
    sub_26A10FD9C();
    v22 = OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_37(v22, v23, v1);
    if (v24)
    {
      *v7 = MEMORY[0x277D84F90];
      v7[1] = 0;
      v7[2] = 0xE000000000000000;
      v25 = v7 + *(v1 + 24);
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v26 = OUTLINED_FUNCTION_71();
      OUTLINED_FUNCTION_37(v26, v27, v1);
      if (!v24)
      {
        sub_26A0E48F0(v14, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      sub_26A3F2578();
    }

    sub_26A3F2578();
    v19 = 0;
  }

  v28 = type metadata accessor for ActionProperty();
  return __swift_storeEnumTagSinglePayload(v21, v19, 1, v28);
}

uint64_t SectionHeaderStandard.componentName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_175();
}

uint64_t _ProtoSectionHeader_Standard.redactedProto.getter@<X0>(uint64_t a1@<X8>)
{
  v71 = type metadata accessor for _ProtoActionProperty();
  v2 = OUTLINED_FUNCTION_12(v71);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_17();
  v70 = (v5 - v6);
  MEMORY[0x28223BE20](v7);
  v69 = (&v67 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v10 = OUTLINED_FUNCTION_41(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17();
  v68 = v13 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v67 - v16;
  v18 = type metadata accessor for _ProtoTextProperty(0);
  v19 = OUTLINED_FUNCTION_12(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_17();
  v67 = v22 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v67 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v28 = OUTLINED_FUNCTION_41(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_17();
  v33 = v31 - v32;
  MEMORY[0x28223BE20](v34);
  v36 = &v67 - v35;
  OUTLINED_FUNCTION_0_90();
  sub_26A3F2524();
  v72 = type metadata accessor for _ProtoSectionHeader_Standard(0);
  v37 = *(v72 + 24);
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v36, 1, v18);
  sub_26A0E48F0(v36, &qword_28036C7B8, &unk_26A425BF0);
  v39 = MEMORY[0x277D84F90];
  v40 = EnumTagSinglePayload == 1;
  v41 = v71;
  if (!v40)
  {
    sub_26A10FD9C();
    v42 = OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_37(v42, v43, v18);
    if (v40)
    {
      *v26 = v39;
      *(v26 + 4) = 0;
      v44 = &v26[v18[7]];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v45 = v18[8];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v46, v47, v48, v41);
      v49 = v18[9];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v50, v51, v52, v41);
      v53 = OUTLINED_FUNCTION_71();
      OUTLINED_FUNCTION_37(v53, v54, v18);
      if (!v40)
      {
        sub_26A0E48F0(v33, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A3F2578();
    }

    _ProtoTextProperty.redactedProto.getter();
    sub_26A3F25CC(v26, type metadata accessor for _ProtoTextProperty);
    sub_26A0E48F0(a1 + v37, &qword_28036C7B8, &unk_26A425BF0);
    sub_26A3F2578();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v55, v56, v57, v18);
  }

  v58 = *(v72 + 28);
  sub_26A10FD9C();
  v59 = __swift_getEnumTagSinglePayload(v17, 1, v41);
  result = sub_26A0E48F0(v17, &off_28036C7C0, &off_26A427400);
  if (v59 != 1)
  {
    v61 = v68;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v61, 1, v41);
    if (v40)
    {
      v63 = v69;
      *v69 = v39;
      *(v63 + 8) = 0;
      *(v63 + 16) = 0xE000000000000000;
      v62 = v63 + *(v41 + 24);
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_37(v61, 1, v41);
      if (!v40)
      {
        sub_26A0E48F0(v61, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      v63 = v69;
      sub_26A3F2578();
    }

    _s10SnippetKit14ActionPropertyV13redactedProtoAA01_fcD0Vvg_0(v70);
    sub_26A3F25CC(v63, type metadata accessor for _ProtoActionProperty);
    sub_26A0E48F0(a1 + v58, &off_28036C7C0, &off_26A427400);
    sub_26A3F2578();
    OUTLINED_FUNCTION_126_0();
    return __swift_storeEnumTagSinglePayload(v64, v65, v66, v41);
  }

  return result;
}

uint64_t SectionHeaderStandard.init(text1:action:componentName:)(uint64_t *a1, uint64_t a2)
{
  type metadata accessor for _ProtoSectionHeader_Standard(0);
  OUTLINED_FUNCTION_4_57();
  sub_26A3F28B8(v4, v5);
  sub_26A4249C4();

  sub_26A0E48F0(a2, &qword_28036CAF8, &unk_26A426D30);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26A3F1FE4(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a4;
  v35 = a5;
  v32[3] = a3;
  v7 = type metadata accessor for ActionProperty();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v32 - v11;
  v33 = type metadata accessor for _ProtoActionProperty();
  v13 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v32[2] = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v32[1] = v32 - v16;
  v17 = type metadata accessor for _ProtoTextProperty(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v19 = type metadata accessor for TextProperty(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = a2[3];
  v22 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v21);
  (*(v22 + 8))(v21, v22);
  sub_26A3F2578();
  v23 = type metadata accessor for _ProtoSectionHeader_Standard(0);
  v24 = *(v23 + 24);
  sub_26A0E48F0(a1 + v24, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A3F2578();
  __swift_storeEnumTagSinglePayload(a1 + v24, 0, 1, v17);
  sub_26A10FD9C();
  v25 = v37;
  if (!v37)
  {
    sub_26A0E48F0(v36, &qword_28036CAF8, &unk_26A426D30);
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v33);
    goto LABEL_5;
  }

  v26 = v38;
  __swift_project_boxed_opaque_existential_1(v36, v37);
  (*(v26 + 8))(v25, v26);
  sub_26A3F2578();
  v27 = v33;
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v33);
  __swift_destroy_boxed_opaque_existential_1(v36);
  if (__swift_getEnumTagSinglePayload(v12, 1, v27) == 1)
  {
LABEL_5:
    sub_26A0E48F0(v12, &off_28036C7C0, &off_26A427400);
    goto LABEL_6;
  }

  sub_26A3F2578();
  sub_26A3F2578();
  v28 = *(v23 + 28);
  sub_26A0E48F0(a1 + v28, &off_28036C7C0, &off_26A427400);
  sub_26A3F2578();
  __swift_storeEnumTagSinglePayload(a1 + v28, 0, 1, v27);
LABEL_6:
  v29 = a1[1];
  v30 = v35;

  *a1 = v34;
  a1[1] = v30;
  return result;
}

uint64_t SectionHeaderStandard.init(text1:action:)(uint64_t *a1, uint64_t a2)
{
  sub_26A0E5D68(a1, v8);
  sub_26A10FD9C();
  type metadata accessor for _ProtoSectionHeader_Standard(0);
  OUTLINED_FUNCTION_4_57();
  sub_26A3F28B8(v4, v5);
  sub_26A4249C4();
  sub_26A0E48F0(a2, &qword_28036CAF8, &unk_26A426D30);
  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_26A0E48F0(v7, &qword_28036CAF8, &unk_26A426D30);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t sub_26A3F2524()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t sub_26A3F2578()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t sub_26A3F25CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t SectionHeaderStandard.componentProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoSectionHeader_Standard(0);
  v3 = OUTLINED_FUNCTION_41(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  v6 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v6);
  v10 = type metadata accessor for _ProtoResponse.Component(0);
  v11 = a1 + *(v10 + 20);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v12 = *(v10 + 24);
  type metadata accessor for _ProtoSeparators();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  OUTLINED_FUNCTION_0_90();
  sub_26A3F2524();
  sub_26A0E48F0(a1, &qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_5_57();
  sub_26A3F2578();
  OUTLINED_FUNCTION_175();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_126_0();
  return __swift_storeEnumTagSinglePayload(v17, v18, v19, v6);
}

uint64_t SectionHeaderStandard.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for SectionHeaderStandard();
  *(inited + 64) = &protocol witness table for SectionHeaderStandard;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_3_65();
  sub_26A3F2524();
  swift_beginAccess();

  sub_26A10BF5C(v1);
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A3F28B8(&qword_28036CB48, type metadata accessor for _ProtoResponse.Section);
  sub_26A4249C4();

  swift_setDeallocating();
  return sub_26A10C358();
}

uint64_t sub_26A3F28B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A3F2974()
{
  result = type metadata accessor for _ProtoSectionHeader_Standard(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_15_44()
{

  return type metadata accessor for _ProtoSectionHeader_Standard(0);
}

void _ProtoVisualProperty.redactedProto.getter()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for _ProtoActionProperty();
  v5 = OUTLINED_FUNCTION_12(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_17();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v136 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v136 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCB0, &qword_26A426740);
  OUTLINED_FUNCTION_41(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v20);
  v156 = &v136 - v21;
  OUTLINED_FUNCTION_45();
  v162 = type metadata accessor for _ProtoCoreChart();
  v22 = OUTLINED_FUNCTION_12(v162);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_18();
  v155 = (v26 - v25);
  OUTLINED_FUNCTION_45();
  v154 = type metadata accessor for _ProtoCoreChartElement();
  v27 = OUTLINED_FUNCTION_12(v154);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_17();
  v158 = v30 - v31;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_48();
  v157 = v33;
  OUTLINED_FUNCTION_45();
  v34 = type metadata accessor for _ProtoCustomElement();
  v35 = OUTLINED_FUNCTION_41(v34);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_17();
  v153 = v38 - v39;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_48();
  v152 = v41;
  OUTLINED_FUNCTION_45();
  v151 = type metadata accessor for ImageElement();
  v42 = OUTLINED_FUNCTION_12(v151);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_18();
  v150 = (v46 - v45);
  v47 = OUTLINED_FUNCTION_45();
  v48 = type metadata accessor for _ProtoImageElement(v47);
  v49 = OUTLINED_FUNCTION_41(v48);
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_17();
  v161 = (v52 - v53);
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_48();
  v149 = v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C838, &qword_26A439300);
  OUTLINED_FUNCTION_41(v56);
  v58 = *(v57 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v59);
  v163 = &v136 - v60;
  v61 = OUTLINED_FUNCTION_45();
  v62 = type metadata accessor for _ProtoVisualElement(v61);
  v63 = OUTLINED_FUNCTION_79_0(v62);
  v65 = v64;
  v67 = *(v66 + 64);
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_17();
  v70 = v68 - v69;
  MEMORY[0x28223BE20](v71);
  v73 = &v136 - v72;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v75 = OUTLINED_FUNCTION_41(v74);
  v77 = *(v76 + 64);
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_17();
  v144 = v78 - v79;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v80);
  v146 = &v136 - v81;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v82);
  v84 = &v136 - v83;
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_48();
  v145 = v86;
  OUTLINED_FUNCTION_45();
  v147 = type metadata accessor for _ProtoVisualProperty();
  v87 = OUTLINED_FUNCTION_12(v147);
  v89 = *(v88 + 64);
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_18();
  if (v1[9])
  {
    sub_26A3F612C();
  }

  else
  {
    v138 = v16;
    v139 = v10;
    v142 = v13;
    OUTLINED_FUNCTION_5_58();
    v140 = v90;
    sub_26A3F612C();
    v141 = v1;
    v91 = *v1;
    v92 = *(*v1 + 16);
    v93 = MEMORY[0x277D84F90];
    v143 = v3;
    if (v92)
    {
      v136 = v84;
      v137 = v4;
      v164 = MEMORY[0x277D84F90];
      sub_26A10CE90();
      v93 = v164;
      v160 = (*(v65 + 80) + 32) & ~*(v65 + 80);
      v94 = v91 + v160;
      v159 = *(v65 + 72);
      v148 = xmmword_26A426400;
      do
      {
        sub_26A3F612C();
        sub_26A3F612C();
        v95 = v163;
        sub_26A10FD9C();
        v96 = type metadata accessor for _ProtoVisualElement.OneOf_Element(0);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v95, 1, v96);
        v98 = v161;
        v99 = v162;
        if (EnumTagSinglePayload != 1)
        {
          switch(swift_getEnumCaseMultiPayload())
          {
            case 1u:
              sub_26A3F621C(v163, type metadata accessor for _ProtoVisualElement.OneOf_Element);
              break;
            case 2u:
              v104 = v152;
              sub_26A3F61C8();
              _s10SnippetKit13CustomElementV13redactedProtoAA01_fcD0Vvg_0(v153);
              sub_26A3F621C(v104, type metadata accessor for _ProtoCustomElement);
              sub_26A0E48F0(v73, &qword_28036C838, &qword_26A439300);
              sub_26A3F61C8();
              goto LABEL_17;
            case 3u:
              sub_26A3F61C8();
              sub_26A3F612C();
              v105 = v99;
              v106 = *(v154 + 24);
              v107 = v156;
              sub_26A10FD9C();
              OUTLINED_FUNCTION_3_6(v107);
              if (v108)
              {
                v110 = v155;
                *v155 = v148;
                v109 = v110 + *(v105 + 20);
                _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
                if (__swift_getEnumTagSinglePayload(v107, 1, v105) != 1)
                {
                  sub_26A0E48F0(v107, &qword_28036CCB0, &qword_26A426740);
                }
              }

              else
              {
                v110 = v155;
                sub_26A3F61C8();
              }

              sub_26A0E4784(*v110, *(v110 + 1));
              *v110 = v148;
              sub_26A0E48F0(v158 + v106, &qword_28036CCB0, &qword_26A426740);
              sub_26A3F61C8();
              OUTLINED_FUNCTION_126_0();
              __swift_storeEnumTagSinglePayload(v111, v112, v113, v162);
              sub_26A3F621C(v157, type metadata accessor for _ProtoCoreChartElement);
              sub_26A0E48F0(v73, &qword_28036C838, &qword_26A439300);
              sub_26A3F61C8();
              goto LABEL_17;
            default:
              v100 = v149;
              sub_26A3F61C8();
              sub_26A3F612C();
              if (qword_28036C790 != -1)
              {
                swift_once();
              }

              __swift_project_value_buffer(v151, qword_2803A8980);
              v101 = v150;
              sub_26A3F612C();
              sub_26A3F621C(v100, type metadata accessor for _ProtoImageElement);
              v102 = *v101;

              sub_26A3F621C(v101, type metadata accessor for _ProtoImageElement);
              v103 = *v98;

              *v98 = v102;
              sub_26A0E48F0(v73, &qword_28036C838, &qword_26A439300);
              sub_26A3F61C8();
LABEL_17:
              swift_storeEnumTagMultiPayload();
              OUTLINED_FUNCTION_126_0();
              __swift_storeEnumTagSinglePayload(v114, v115, v116, v96);
              break;
          }
        }

        sub_26A3F621C(v70, type metadata accessor for _ProtoVisualElement);
        v164 = v93;
        v117 = *(v93 + 16);
        if (v117 >= *(v93 + 24) >> 1)
        {
          sub_26A10CE90();
          v93 = v164;
        }

        *(v93 + 16) = v117 + 1;
        v118 = v159;
        sub_26A3F61C8();
        v94 += v118;
        --v92;
      }

      while (v92);
      v4 = v137;
      v84 = v136;
    }

    v119 = v140;
    v120 = *v140;

    *v119 = v93;
    v121 = v147;
    v122 = *(v147 + 32);
    v123 = v145;
    sub_26A10FD9C();
    v124 = __swift_getEnumTagSinglePayload(v123, 1, v4);
    sub_26A0E48F0(v123, &off_28036C7C0, &off_26A427400);
    v125 = v142;
    if (v124 != 1)
    {
      sub_26A10FD9C();
      OUTLINED_FUNCTION_3_6(v84);
      if (v108)
      {
        OUTLINED_FUNCTION_63_13(MEMORY[0x277D84F90]);
        OUTLINED_FUNCTION_3_6(v84);
        if (!v108)
        {
          sub_26A0E48F0(v84, &off_28036C7C0, &off_26A427400);
        }
      }

      else
      {
        sub_26A3F61C8();
      }

      _s10SnippetKit14ActionPropertyV13redactedProtoAA01_fcD0Vvg_0(v125);
      OUTLINED_FUNCTION_10_56();
      sub_26A0E48F0(v119 + *(v121 + 32), &off_28036C7C0, &off_26A427400);
      OUTLINED_FUNCTION_6_41();
      OUTLINED_FUNCTION_126_0();
      __swift_storeEnumTagSinglePayload(v126, v127, v128, v4);
    }

    v129 = *(v121 + 36);
    v130 = v146;
    sub_26A10FD9C();
    v131 = __swift_getEnumTagSinglePayload(v130, 1, v4);
    sub_26A0E48F0(v130, &off_28036C7C0, &off_26A427400);
    if (v131 != 1)
    {
      v132 = v144;
      sub_26A10FD9C();
      OUTLINED_FUNCTION_3_6(v132);
      if (v108)
      {
        OUTLINED_FUNCTION_63_13(MEMORY[0x277D84F90]);
        OUTLINED_FUNCTION_3_6(v132);
        if (!v108)
        {
          sub_26A0E48F0(v132, &off_28036C7C0, &off_26A427400);
        }
      }

      else
      {
        sub_26A3F61C8();
      }

      _s10SnippetKit14ActionPropertyV13redactedProtoAA01_fcD0Vvg_0(v125);
      OUTLINED_FUNCTION_10_56();
      sub_26A0E48F0(v119 + *(v121 + 36), &off_28036C7C0, &off_26A427400);
      OUTLINED_FUNCTION_6_41();
      OUTLINED_FUNCTION_126_0();
      __swift_storeEnumTagSinglePayload(v133, v134, v135, v4);
    }

    sub_26A3F61C8();
  }

  OUTLINED_FUNCTION_75();
}

void VisualProperty.allVisualElements.getter()
{
  OUTLINED_FUNCTION_76();
  v1 = type metadata accessor for _ProtoVisualElement(0);
  v2 = OUTLINED_FUNCTION_79_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  v10 = type metadata accessor for VisualElement();
  v11 = OUTLINED_FUNCTION_79_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_163_1();
  v16 = *v0;
  v17 = *(*v0 + 16);
  if (v17)
  {
    v25 = MEMORY[0x277D84F90];
    sub_26A10D6B4();
    v18 = v25;
    v19 = v16 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v20 = *(v4 + 72);
    do
    {
      sub_26A3F612C();
      sub_26A3F612C();
      VisualElement.init(proto:)();
      sub_26A3F621C(v9, type metadata accessor for _ProtoVisualElement);
      v25 = v18;
      v21 = *(v18 + 16);
      if (v21 >= *(v18 + 24) >> 1)
      {
        sub_26A10D6B4();
        v18 = v25;
      }

      *(v18 + 16) = v21 + 1;
      v22 = v18 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v23 = *(v13 + 72);
      sub_26A3F61C8();
      v19 += v20;
      --v17;
    }

    while (v17);
  }

  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A3F3944(uint64_t (*a1)(void), uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280373A80, &unk_26A444488);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = a1(0);
  *(inited + 64) = a2;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  sub_26A3F612C();
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  OUTLINED_FUNCTION_18_35();
  OUTLINED_FUNCTION_18_35();
  OUTLINED_FUNCTION_33_19();
  OUTLINED_FUNCTION_26_35();
  OUTLINED_FUNCTION_0_91();
  sub_26A3F6180(v5, v6);
  sub_26A4249C4();
  OUTLINED_FUNCTION_27_2(v10);
  OUTLINED_FUNCTION_27_2(v12);
  OUTLINED_FUNCTION_27_2(v8);
  OUTLINED_FUNCTION_27_2(v9);
  swift_setDeallocating();
  return sub_26A10C344();
}

uint64_t VisualPropertyConvertible<>.asVisualProperty()(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280373A80, &unk_26A444488);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = a1;
  *(inited + 64) = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_1, v2, a1);
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  OUTLINED_FUNCTION_18_35();
  OUTLINED_FUNCTION_18_35();
  OUTLINED_FUNCTION_33_19();
  OUTLINED_FUNCTION_26_35();
  OUTLINED_FUNCTION_0_91();
  sub_26A3F6180(v7, v8);
  OUTLINED_FUNCTION_65_2();
  OUTLINED_FUNCTION_27_2(v12);
  OUTLINED_FUNCTION_27_2(v14);
  OUTLINED_FUNCTION_27_2(v10);
  OUTLINED_FUNCTION_27_2(v11);
  swift_setDeallocating();
  return sub_26A10C344();
}

Swift::String __swiftcall VisualProperty.description(redacted:)(Swift::Bool redacted)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB18, &unk_26A427670);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - v6;
  v8 = type metadata accessor for VisualProperty();
  v9 = OUTLINED_FUNCTION_41(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCA0, &unk_26A426730);
  OUTLINED_FUNCTION_12(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v18);
  v20 = &v25 - v19;
  OUTLINED_FUNCTION_4_58();
  sub_26A3F612C();
  v21 = *(v1 + 9);
  if (v21)
  {
    sub_26A3F612C();
  }

  else
  {
    _ProtoVisualProperty.redactedProto.getter();
  }

  sub_26A3F61C8();
  v20[*(v15 + 32)] = v21 ^ 1;
  sub_26A3F621C(v14, type metadata accessor for VisualProperty);
  *&v20[*(v15 + 28)] = MEMORY[0x277D84F90];
  swift_getKeyPath();
  sub_26A0F739C();

  sub_26A1467C0(v20[9]);
  VisualProperty.focusAction.getter();
  sub_26A109770();
  OUTLINED_FUNCTION_27_2(v7);
  VisualProperty.selectedAction.getter();
  sub_26A109770();
  OUTLINED_FUNCTION_27_2(v7);
  sub_26A100DE8();
  sub_26A0E48F0(v20, &qword_28036CCA0, &unk_26A426730);
  v22 = OUTLINED_FUNCTION_175();
  result._object = v23;
  result._countAndFlagsBits = v22;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> VisualProperty.jsonString(redacted:)(Swift::Bool redacted)
{
  v3 = v2;
  v4 = type metadata accessor for _ProtoVisualProperty();
  v5 = OUTLINED_FUNCTION_12(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_163_1();
  v8 = sub_26A4247D4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v28 - v15;
  if (*(v1 + 9) == 1)
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_0_91();
    sub_26A3F6180(v17, v18);
    v19 = sub_26A424954();
    if (!v2)
    {
      v3 = v19;
      v4 = v20;
    }

    (*(v9 + 8))(v16, v8);
  }

  else
  {
    _ProtoVisualProperty.redactedProto.getter();
    sub_26A4247C4();
    OUTLINED_FUNCTION_0_91();
    sub_26A3F6180(v21, v22);
    v23 = sub_26A424954();
    if (!v2)
    {
      v3 = v23;
      v4 = v24;
    }

    (*(v9 + 8))(v13, v8);
    OUTLINED_FUNCTION_11_41();
  }

  v25 = v3;
  v26 = v4;
  result._object = v26;
  result._countAndFlagsBits = v25;
  return result;
}

void VisualProperty.focusAction.getter()
{
  OUTLINED_FUNCTION_76();
  v2 = type metadata accessor for _ProtoActionProperty();
  v3 = OUTLINED_FUNCTION_12(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_163_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v7 = OUTLINED_FUNCTION_41(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v14 = *(OUTLINED_FUNCTION_31_23() + 32);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_13_1();
  if (v1 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_38_0();
    if (v15)
    {
      OUTLINED_FUNCTION_15_29(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_38_0();
      if (!v15)
      {
        sub_26A0E48F0(v12, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      sub_26A3F61C8();
    }

    sub_26A3F61C8();
    v0 = 0;
  }

  v16 = type metadata accessor for ActionProperty();
  __swift_storeEnumTagSinglePayload(&off_28036C7C0, v0, 1, v16);
  OUTLINED_FUNCTION_75();
}

void VisualProperty.selectedAction.getter()
{
  OUTLINED_FUNCTION_76();
  v2 = type metadata accessor for _ProtoActionProperty();
  v3 = OUTLINED_FUNCTION_12(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_163_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v7 = OUTLINED_FUNCTION_41(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v14 = *(OUTLINED_FUNCTION_31_23() + 36);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_13_1();
  if (v1 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_38_0();
    if (v15)
    {
      OUTLINED_FUNCTION_15_29(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_38_0();
      if (!v15)
      {
        sub_26A0E48F0(v12, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      sub_26A3F61C8();
    }

    sub_26A3F61C8();
    v0 = 0;
  }

  v16 = type metadata accessor for ActionProperty();
  __swift_storeEnumTagSinglePayload(&off_28036C7C0, v0, 1, v16);
  OUTLINED_FUNCTION_75();
}

uint64_t VisualProperty.visualElement(for:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CC28, &qword_26A43A760);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_163_1();
  v7 = *a1;
  LOBYTE(a1) = *(a1 + 8);
  VisualProperty.allVisualElements.getter();
  sub_26A1D65A0();

  v8 = type metadata accessor for VisualElement();
  if (__swift_getEnumTagSinglePayload(v1, 1, v8) != 1)
  {
    return sub_26A3F61C8();
  }

  sub_26A0E48F0(v1, &qword_28036CC28, &qword_26A43A760);
  if (qword_28036C5A0 != -1)
  {
    swift_once();
  }

  v10 = sub_26A424AE4();
  __swift_project_value_buffer(v10, qword_2803A8950);
  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  sub_26A424EF4();
  MEMORY[0x26D65BA70](0xD000000000000053, 0x800000026A44B300);
  v11 = _ProtoIdiom.description.getter();
  MEMORY[0x26D65BA70](v11);

  v12 = sub_26A424AD4();
  v13 = sub_26A424E14();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16[0] = v15;
    *v14 = 136446210;
    *(v14 + 4) = sub_26A0E8788(0, 0xE000000000000000, v16);
    _os_log_impl(&dword_26A0B8000, v12, v13, "%{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x26D65C950](v15, -1, -1);
    MEMORY[0x26D65C950](v14, -1, -1);
  }

  result = sub_26A424FC4();
  __break(1u);
  return result;
}

{
  v1 = *a1;
  v2 = *(a1 + 8);
  VisualProperty.allVisualElements.getter();
  sub_26A1D65A0();
}

uint64_t VisualProperty.init<A>(_:safeForLogging:focusAction:selectedAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_0_91();
  sub_26A3F6180(v9, v10);
  sub_26A4249C4();
  sub_26A0E48F0(a4, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(a3, &qword_28036CAF8, &unk_26A426D30);
  return (*(*(a5 - 8) + 8))(a1, a5);
}

uint64_t sub_26A3F4980(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v64 = a5;
  v62 = a4;
  v61 = a3;
  v67 = a1;
  v66 = type metadata accessor for _ProtoActionProperty();
  v6 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v65 = &v60[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for ActionProperty();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v63 = &v60[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for CoreChartElement();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v71 = &v60[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for CustomElement();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v70 = &v60[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = type metadata accessor for ColorElement();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v69 = &v60[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = type metadata accessor for ImageElement();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v68 = &v60[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v74 = type metadata accessor for VisualElement();
  v23 = *(*(v74 - 8) + 64);
  MEMORY[0x28223BE20](v74);
  MEMORY[0x28223BE20](v24);
  v26 = &v60[-v25];
  v27 = type metadata accessor for _ProtoVisualElement(0);
  v72 = *(v27 - 8);
  v73 = v27;
  v28 = *(v72 + 64);
  MEMORY[0x28223BE20](v27);
  v30 = &v60[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = *(a2 + 16);
  *&v75 = MEMORY[0x277D84F90];
  sub_26A10CE90();
  v32 = v75;
  if (v31)
  {
    v33 = a2 + 32;
    while (2)
    {
      sub_26A0E5D68(v33, v77);
      v34 = v78;
      v35 = v79;
      __swift_project_boxed_opaque_existential_1(v77, v78);
      (*(v35 + 8))(v34, v35);
      sub_26A3F612C();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          v36 = v69;
          v46 = sub_26A3F61C8();
          MEMORY[0x28223BE20](v46);
          *&v60[-16] = v36;
          sub_26A3F6180(qword_281579800, type metadata accessor for _ProtoVisualElement);
          v47 = v80;
          sub_26A4249C4();
          v80 = v47;
          v39 = type metadata accessor for ColorElement;
          goto LABEL_9;
        case 2u:
          v36 = v70;
          v42 = sub_26A3F61C8();
          MEMORY[0x28223BE20](v42);
          *&v60[-16] = v36;
          sub_26A3F6180(qword_281579800, type metadata accessor for _ProtoVisualElement);
          v43 = v80;
          sub_26A4249C4();
          v80 = v43;
          v39 = type metadata accessor for CustomElement;
          goto LABEL_9;
        case 3u:
          v36 = v71;
          v44 = sub_26A3F61C8();
          MEMORY[0x28223BE20](v44);
          *&v60[-16] = v36;
          sub_26A3F6180(qword_281579800, type metadata accessor for _ProtoVisualElement);
          v45 = v80;
          sub_26A4249C4();
          v80 = v45;
          v39 = type metadata accessor for CoreChartElement;
          goto LABEL_9;
        case 4u:
          v40 = type metadata accessor for _ProtoVisualElement.OneOf_Element(0);
          __swift_storeEnumTagSinglePayload(v30, 1, 1, v40);
          v41 = &v30[*(v73 + 20)];
          _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
          goto LABEL_10;
        default:
          v36 = v68;
          v37 = sub_26A3F61C8();
          MEMORY[0x28223BE20](v37);
          *&v60[-16] = v36;
          sub_26A3F6180(qword_281579800, type metadata accessor for _ProtoVisualElement);
          v38 = v80;
          sub_26A4249C4();
          v80 = v38;
          v39 = type metadata accessor for ImageElement;
LABEL_9:
          sub_26A3F621C(v36, v39);
LABEL_10:
          sub_26A3F621C(v26, type metadata accessor for VisualElement);
          __swift_destroy_boxed_opaque_existential_1(v77);
          *&v75 = v32;
          v48 = *(v32 + 16);
          if (v48 >= *(v32 + 24) >> 1)
          {
            sub_26A10CE90();
            v32 = v75;
          }

          *(v32 + 16) = v48 + 1;
          v49 = v32 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v48;
          sub_26A3F61C8();
          v33 += 40;
          if (!--v31)
          {
            break;
          }

          continue;
      }

      break;
    }
  }

  v50 = v67;
  v51 = *v67;

  *v50 = v32;
  *(v50 + 9) = v61 & 1;
  sub_26A10FD9C();
  if (v76)
  {
    sub_26A0D671C(&v75, v77);
    v52 = v78;
    v53 = v79;
    __swift_project_boxed_opaque_existential_1(v77, v78);
    (*(v53 + 8))(v52, v53);
    sub_26A3F61C8();
    v54 = *(type metadata accessor for _ProtoVisualProperty() + 32);
    sub_26A0E48F0(v50 + v54, &off_28036C7C0, &off_26A427400);
    sub_26A3F61C8();
    v55 = v66;
    __swift_storeEnumTagSinglePayload(v50 + v54, 0, 1, v66);
    __swift_destroy_boxed_opaque_existential_1(v77);
  }

  else
  {
    sub_26A0E48F0(&v75, &qword_28036CAF8, &unk_26A426D30);
    v55 = v66;
  }

  sub_26A10FD9C();
  if (!v76)
  {
    return sub_26A0E48F0(&v75, &qword_28036CAF8, &unk_26A426D30);
  }

  sub_26A0D671C(&v75, v77);
  v56 = v78;
  v57 = v79;
  __swift_project_boxed_opaque_existential_1(v77, v78);
  (*(v57 + 8))(v56, v57);
  sub_26A3F61C8();
  v58 = *(type metadata accessor for _ProtoVisualProperty() + 36);
  sub_26A0E48F0(v50 + v58, &off_28036C7C0, &off_26A427400);
  sub_26A3F61C8();
  __swift_storeEnumTagSinglePayload(v50 + v58, 0, 1, v55);
  return __swift_destroy_boxed_opaque_existential_1(v77);
}

uint64_t sub_26A3F5378(uint64_t *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v31 = a5;
  v11 = type metadata accessor for _ProtoActionProperty();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v13 = type metadata accessor for ActionProperty();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = type metadata accessor for _ProtoVisualElement(0);
  v17 = sub_26A409784(sub_26A3F56B4, 0, a6, v15, MEMORY[0x277D84A98], a7, MEMORY[0x277D84AC0], v16);
  v18 = *a1;

  *a1 = v17;
  *(a1 + 9) = a3;
  sub_26A10FD9C();
  if (v27)
  {
    sub_26A0D671C(&v26, v28);
    v19 = v29;
    v20 = v30;
    __swift_project_boxed_opaque_existential_1(v28, v29);
    (*(v20 + 8))(v19, v20);
    sub_26A3F61C8();
    v21 = *(type metadata accessor for _ProtoVisualProperty() + 32);
    sub_26A0E48F0(a1 + v21, &off_28036C7C0, &off_26A427400);
    sub_26A3F61C8();
    __swift_storeEnumTagSinglePayload(a1 + v21, 0, 1, v11);
    __swift_destroy_boxed_opaque_existential_1(v28);
  }

  else
  {
    sub_26A0E48F0(&v26, &qword_28036CAF8, &unk_26A426D30);
  }

  sub_26A10FD9C();
  if (!v27)
  {
    return sub_26A0E48F0(&v26, &qword_28036CAF8, &unk_26A426D30);
  }

  sub_26A0D671C(&v26, v28);
  v22 = v29;
  v23 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  (*(v23 + 8))(v22, v23);
  sub_26A3F61C8();
  v24 = *(type metadata accessor for _ProtoVisualProperty() + 36);
  sub_26A0E48F0(a1 + v24, &off_28036C7C0, &off_26A427400);
  sub_26A3F61C8();
  __swift_storeEnumTagSinglePayload(a1 + v24, 0, 1, v11);
  return __swift_destroy_boxed_opaque_existential_1(v28);
}

uint64_t sub_26A3F56B4(void *a1)
{
  v2 = type metadata accessor for VisualElement();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  (*(v7 + 8))(v6, v7);
  VisualElement.proto.getter();
  return sub_26A3F621C(v5, type metadata accessor for VisualElement);
}

void VisualProperty.init<A>(_:redacted:focusAction:selectedAction:)()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *(v0 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18();
  v14 = v13 - v12;
  (*(v10 + 16))(v13 - v12, v9, v15);
  sub_26A10FD9C();
  sub_26A10FD9C();
  VisualProperty.init<A>(_:safeForLogging:focusAction:selectedAction:)(v14, (v7 & 1) == 0, &v17, &v16, v1);
  sub_26A0E48F0(v3, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v5, &qword_28036CAF8, &unk_26A426D30);
  (*(v10 + 8))(v9, v1);
  OUTLINED_FUNCTION_75();
}

uint64_t VisualProperty.init(_:safeForLogging:focusAction:selectedAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_18_35();
  OUTLINED_FUNCTION_18_35();
  OUTLINED_FUNCTION_33_19();
  OUTLINED_FUNCTION_26_35();
  OUTLINED_FUNCTION_0_91();
  sub_26A3F6180(v6, v7);
  sub_26A4249C4();
  OUTLINED_FUNCTION_27_2(a4);
  OUTLINED_FUNCTION_27_2(a3);
  OUTLINED_FUNCTION_27_2(v9);
  OUTLINED_FUNCTION_27_2(v10);
}

uint64_t VisualProperty.init(_:redacted:focusAction:selectedAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_18_35();
  OUTLINED_FUNCTION_18_35();
  OUTLINED_FUNCTION_33_19();
  OUTLINED_FUNCTION_26_35();
  OUTLINED_FUNCTION_0_91();
  sub_26A3F6180(v6, v7);
  OUTLINED_FUNCTION_65_2();
  OUTLINED_FUNCTION_27_2(a4);
  OUTLINED_FUNCTION_27_2(a3);
  OUTLINED_FUNCTION_27_2(v9);
  OUTLINED_FUNCTION_27_2(v10);
}

uint64_t VisualProperty.hash(into:)()
{
  type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_0_91();
  sub_26A3F6180(v0, v1);

  return sub_26A424B44();
}

uint64_t VisualProperty.hashValue.getter()
{
  sub_26A425504();
  type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_0_91();
  sub_26A3F6180(v0, v1);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A3F5EB8()
{
  sub_26A425504();
  type metadata accessor for _ProtoVisualProperty();
  sub_26A3F6180(&qword_28036D300, type metadata accessor for _ProtoVisualProperty);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t type metadata accessor for VisualProperty()
{
  result = qword_28157ACA8;
  if (!qword_28157ACA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A3F60AC()
{
  result = type metadata accessor for _ProtoVisualProperty();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A3F612C()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t sub_26A3F6180(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A3F61C8()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t sub_26A3F621C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_6_41()
{

  return sub_26A3F61C8();
}

uint64_t OUTLINED_FUNCTION_10_56()
{

  return sub_26A3F621C(v0, type metadata accessor for _ProtoActionProperty);
}

uint64_t OUTLINED_FUNCTION_11_41()
{

  return sub_26A3F621C(v0, type metadata accessor for _ProtoVisualProperty);
}

uint64_t OUTLINED_FUNCTION_18_35()
{

  return sub_26A10FD9C();
}

uint64_t OUTLINED_FUNCTION_30_19()
{

  return type metadata accessor for _ProtoVisualProperty();
}

uint64_t OUTLINED_FUNCTION_31_23()
{

  return type metadata accessor for _ProtoVisualProperty();
}

uint64_t OUTLINED_FUNCTION_33_19()
{

  return type metadata accessor for _ProtoVisualProperty();
}

Swift::String __swiftcall PlayerButton.description(redacted:)(Swift::Bool redacted)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD38, &qword_26A437B70);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v8 = &v39 - v7;
  v9 = type metadata accessor for PlayerButton();
  v10 = OUTLINED_FUNCTION_41(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v39 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF20, &qword_26A426AA8);
  OUTLINED_FUNCTION_12(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v22);
  v24 = &v39 - v23;
  sub_26A3F74A4(v1, v18);
  if (redacted)
  {
    _ProtoPlayerButton.redactedProto.getter(v15);
  }

  else
  {
    sub_26A3F74A4(v18, v15);
  }

  sub_26A3F6E6C(v15, v24);
  v24[*(v19 + 32)] = redacted;
  sub_26A3F7124(v18, type metadata accessor for PlayerButton);
  *&v24[*(v19 + 28)] = MEMORY[0x277D84F90];
  PlayerButton.playButton.getter(v8);
  v25 = type metadata accessor for Button();
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v25);
  sub_26A103E0C();
  sub_26A0E48F0(v8, &qword_28036CD38, &qword_26A437B70);
  PlayerButton.pauseButton.getter(v8);
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v25);
  sub_26A103E0C();
  sub_26A0E48F0(v8, &qword_28036CD38, &qword_26A437B70);
  sub_26A0F8ED8();
  v33 = v32;
  v35 = v34;
  sub_26A0E48F0(v24, &qword_28036CF20, &qword_26A426AA8);
  v36 = v33;
  v37 = v35;
  result._object = v37;
  result._countAndFlagsBits = v36;
  return result;
}

uint64_t type metadata accessor for PlayerButton()
{
  result = qword_280373A98;
  if (!qword_280373A98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _ProtoPlayerButton.redactedProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for _ProtoButton(0);
  v5 = OUTLINED_FUNCTION_12(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_17();
  v54 = v8 - v9;
  MEMORY[0x28223BE20](v10);
  v55 = &v52 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v52 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036EC48, &unk_26A4385C0);
  v16 = OUTLINED_FUNCTION_41(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_17();
  v53 = v19 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v52 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v52 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v52 - v28;
  OUTLINED_FUNCTION_5_59();
  sub_26A3F74A4(v2, a1);
  v30 = type metadata accessor for _ProtoPlayerButton(0);
  v31 = *(v30 + 20);
  sub_26A2928A4(a1 + v31, v29);
  v32 = OUTLINED_FUNCTION_83_11(v29);
  sub_26A0E48F0(v29, &qword_28036EC48, &unk_26A4385C0);
  if (v32 != 1)
  {
    sub_26A2928A4(a1 + v31, v26);
    if (OUTLINED_FUNCTION_83_11(v26) == 1)
    {
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v33 = *(v4 + 20);
      if (qword_28036C428 != -1)
      {
        OUTLINED_FUNCTION_60_4();
      }

      *&v14[v33] = qword_280371710;
      v34 = OUTLINED_FUNCTION_83_11(v26);

      if (v34 != 1)
      {
        sub_26A0E48F0(v26, &qword_28036EC48, &unk_26A4385C0);
      }
    }

    else
    {
      sub_26A3F6E6C(v26, v14);
    }

    v35 = v55;
    _ProtoButton.redactedProto.getter();
    OUTLINED_FUNCTION_4_59();
    sub_26A3F7124(v14, v36);
    sub_26A0E48F0(a1 + v31, &qword_28036EC48, &unk_26A4385C0);
    OUTLINED_FUNCTION_3_66();
    sub_26A3F6E6C(v35, a1 + v31);
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v37, v38, v39, v4);
  }

  v40 = *(v30 + 24);
  sub_26A2928A4(a1 + v40, v23);
  v41 = OUTLINED_FUNCTION_83_11(v23);
  result = sub_26A0E48F0(v23, &qword_28036EC48, &unk_26A4385C0);
  if (v41 != 1)
  {
    v43 = v53;
    sub_26A2928A4(a1 + v40, v53);
    if (OUTLINED_FUNCTION_83_11(v43) == 1)
    {
      v44 = v54;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v45 = *(v4 + 20);
      if (qword_28036C428 != -1)
      {
        OUTLINED_FUNCTION_60_4();
      }

      *(v44 + v45) = qword_280371710;
      v46 = OUTLINED_FUNCTION_83_11(v43);

      if (v46 != 1)
      {
        sub_26A0E48F0(v43, &qword_28036EC48, &unk_26A4385C0);
      }
    }

    else
    {
      v44 = v54;
      sub_26A3F6E6C(v43, v54);
    }

    v47 = v55;
    _ProtoButton.redactedProto.getter();
    OUTLINED_FUNCTION_4_59();
    sub_26A3F7124(v44, v48);
    sub_26A0E48F0(a1 + v40, &qword_28036EC48, &unk_26A4385C0);
    OUTLINED_FUNCTION_3_66();
    sub_26A3F6E6C(v47, a1 + v40);
    OUTLINED_FUNCTION_126_0();
    return __swift_storeEnumTagSinglePayload(v49, v50, v51, v4);
  }

  return result;
}

uint64_t PlayerButton.playButton.getter@<X0>(uint64_t a1@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036EC48, &unk_26A4385C0);
  OUTLINED_FUNCTION_41(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_19_16();
  v10 = OUTLINED_FUNCTION_12(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = OUTLINED_FUNCTION_8_44();
  sub_26A2928A4(v1 + *(v13 + 20), v3);
  if (OUTLINED_FUNCTION_95_1() == 1)
  {
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v14 = *(v9 + 20);
    if (qword_28036C428 != -1)
    {
      OUTLINED_FUNCTION_60_4();
    }

    *(v2 + v14) = qword_280371710;
    v15 = OUTLINED_FUNCTION_95_1();

    if (v15 != 1)
    {
      sub_26A0E48F0(v3, &qword_28036EC48, &unk_26A4385C0);
    }
  }

  else
  {
    sub_26A3F6E6C(v3, v2);
  }

  return sub_26A3F6E6C(v2, a1);
}

uint64_t PlayerButton.pauseButton.getter@<X0>(uint64_t a1@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036EC48, &unk_26A4385C0);
  OUTLINED_FUNCTION_41(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_19_16();
  v10 = OUTLINED_FUNCTION_12(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = OUTLINED_FUNCTION_8_44();
  sub_26A2928A4(v1 + *(v13 + 24), v3);
  if (OUTLINED_FUNCTION_95_1() == 1)
  {
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v14 = *(v9 + 20);
    if (qword_28036C428 != -1)
    {
      OUTLINED_FUNCTION_60_4();
    }

    *(v2 + v14) = qword_280371710;
    v15 = OUTLINED_FUNCTION_95_1();

    if (v15 != 1)
    {
      sub_26A0E48F0(v3, &qword_28036EC48, &unk_26A4385C0);
    }
  }

  else
  {
    sub_26A3F6E6C(v3, v2);
  }

  return sub_26A3F6E6C(v2, a1);
}

uint64_t sub_26A3F6E6C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_16_11();
  v6 = v5(v4);
  OUTLINED_FUNCTION_12(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t PlayerButton.init(playButton:pauseButton:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for _ProtoPlayerButton(0);
  OUTLINED_FUNCTION_1_68();
  sub_26A3F7338(v4, v5);
  sub_26A4249C4();
  sub_26A3F7124(a2, type metadata accessor for Button);
  return sub_26A3F7124(a1, type metadata accessor for Button);
}

uint64_t sub_26A3F6F90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = a3;
  v5 = type metadata accessor for _ProtoButton(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A3F74A4(a2, v8);
  v9 = type metadata accessor for _ProtoPlayerButton(0);
  v10 = *(v9 + 20);
  sub_26A0E48F0(a1 + v10, &qword_28036EC48, &unk_26A4385C0);
  sub_26A3F6E6C(v8, a1 + v10);
  __swift_storeEnumTagSinglePayload(a1 + v10, 0, 1, v5);
  sub_26A3F74A4(v14, v8);
  v11 = *(v9 + 24);
  sub_26A0E48F0(a1 + v11, &qword_28036EC48, &unk_26A4385C0);
  sub_26A3F6E6C(v8, a1 + v11);
  return __swift_storeEnumTagSinglePayload(a1 + v11, 0, 1, v5);
}

uint64_t sub_26A3F7124(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t PlayerButton.hash(into:)()
{
  type metadata accessor for _ProtoPlayerButton(0);
  OUTLINED_FUNCTION_1_68();
  sub_26A3F7338(v0, v1);

  return sub_26A424B44();
}

uint64_t PlayerButton.hashValue.getter()
{
  sub_26A425504();
  type metadata accessor for _ProtoPlayerButton(0);
  OUTLINED_FUNCTION_1_68();
  sub_26A3F7338(v0, v1);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A3F7338(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A3F7388()
{
  sub_26A425504();
  type metadata accessor for _ProtoPlayerButton(0);
  sub_26A3F7338(&qword_2803715F0, type metadata accessor for _ProtoPlayerButton);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A3F7438()
{
  result = type metadata accessor for _ProtoPlayerButton(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A3F74A4(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_16_11();
  v6 = v5(v4);
  OUTLINED_FUNCTION_12(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t OUTLINED_FUNCTION_8_44()
{

  return type metadata accessor for _ProtoPlayerButton(0);
}

uint64_t SeparatorStyle.hashValue.getter()
{
  v1 = *v0;
  sub_26A425504();
  MEMORY[0x26D65C340](v1);
  return sub_26A425554();
}

unint64_t sub_26A3F7620()
{
  result = qword_280373AA8;
  if (!qword_280373AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280373AA8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SeparatorStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SeparatorStyle(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t _ProtoPrimaryHeader_Standard.text1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  v6 = type metadata accessor for _ProtoPrimaryHeader_Standard(v5);
  OUTLINED_FUNCTION_97_0(v6);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_6_29();
  if (!v7)
  {
    return OUTLINED_FUNCTION_99_8();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoPrimaryHeader_Standard.hasText2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  v7 = type metadata accessor for _ProtoPrimaryHeader_Standard(v6);
  OUTLINED_FUNCTION_97_0(v7);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v8 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v8);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoPrimaryHeader_Standard.text2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  v6 = type metadata accessor for _ProtoPrimaryHeader_Standard(v5);
  OUTLINED_FUNCTION_97_0(v6);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_6_29();
  if (!v7)
  {
    return OUTLINED_FUNCTION_99_8();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoPrimaryHeader_Standard.hasText3.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  v7 = type metadata accessor for _ProtoPrimaryHeader_Standard(v6);
  OUTLINED_FUNCTION_97_0(v7);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v8 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v8);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoPrimaryHeader_Standard.text3.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  v6 = type metadata accessor for _ProtoPrimaryHeader_Standard(v5);
  OUTLINED_FUNCTION_97_0(v6);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_6_29();
  if (!v7)
  {
    return OUTLINED_FUNCTION_99_8();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoPrimaryHeader_Standard.hasAction.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  v7 = type metadata accessor for _ProtoPrimaryHeader_Standard(v6);
  OUTLINED_FUNCTION_97_0(v7);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v8 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_9_11(v8);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoPrimaryHeader_Standard.text1.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoPrimaryHeader_Standard(v6);
  v8 = OUTLINED_FUNCTION_188_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for _ProtoPrimaryHeader_Standard._StorageClass(0);
    OUTLINED_FUNCTION_100_0(v10);
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A3FC404();
    OUTLINED_FUNCTION_42_1(v11);
  }

  OUTLINED_FUNCTION_48_1();
  sub_26A403720();
  v12 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v12);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoPrimaryHeader_Standard.text2.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoPrimaryHeader_Standard(v6);
  v8 = OUTLINED_FUNCTION_188_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for _ProtoPrimaryHeader_Standard._StorageClass(0);
    OUTLINED_FUNCTION_100_0(v10);
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A3FC404();
    OUTLINED_FUNCTION_42_1(v11);
  }

  OUTLINED_FUNCTION_48_1();
  sub_26A403720();
  v12 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v12);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoPrimaryHeader_Standard.text3.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoPrimaryHeader_Standard(v6);
  v8 = OUTLINED_FUNCTION_188_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for _ProtoPrimaryHeader_Standard._StorageClass(0);
    OUTLINED_FUNCTION_100_0(v10);
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A3FC404();
    OUTLINED_FUNCTION_42_1(v11);
  }

  OUTLINED_FUNCTION_48_1();
  sub_26A403720();
  v12 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v12);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoPrimaryHeader_Standard.action.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoPrimaryHeader_Standard(v6);
  v8 = OUTLINED_FUNCTION_188_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for _ProtoPrimaryHeader_Standard._StorageClass(0);
    OUTLINED_FUNCTION_100_0(v10);
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A3FC404();
    OUTLINED_FUNCTION_42_1(v11);
  }

  OUTLINED_FUNCTION_48_1();
  sub_26A403720();
  v12 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_50_4(v12);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoPrimaryHeader_Standard.hasText1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  v7 = type metadata accessor for _ProtoPrimaryHeader_Standard(v6);
  OUTLINED_FUNCTION_97_0(v7);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v8 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v8);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoPrimaryHeader_Marquee.text1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  v6 = type metadata accessor for _ProtoPrimaryHeader_Marquee(v5);
  OUTLINED_FUNCTION_97_0(v6);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_6_29();
  if (!v7)
  {
    return OUTLINED_FUNCTION_99_8();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoPrimaryHeader_Marquee.hasText2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  v7 = type metadata accessor for _ProtoPrimaryHeader_Marquee(v6);
  OUTLINED_FUNCTION_97_0(v7);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v8 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v8);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoPrimaryHeader_Marquee.text2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  v6 = type metadata accessor for _ProtoPrimaryHeader_Marquee(v5);
  OUTLINED_FUNCTION_97_0(v6);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_6_29();
  if (!v7)
  {
    return OUTLINED_FUNCTION_99_8();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoPrimaryHeader_Marquee.hasThumbnail.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  v7 = type metadata accessor for _ProtoPrimaryHeader_Marquee(v6);
  OUTLINED_FUNCTION_97_0(v7);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v8 = type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_9_11(v8);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoPrimaryHeader_Marquee.thumbnail.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  v6 = type metadata accessor for _ProtoPrimaryHeader_Marquee(v5);
  OUTLINED_FUNCTION_97_0(v6);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_6_29();
  if (!v7)
  {
    return OUTLINED_FUNCTION_99_8();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
  }

  return result;
}

uint64_t _ProtoPrimaryHeader_Marquee.hasAction.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  v7 = type metadata accessor for _ProtoPrimaryHeader_Marquee(v6);
  OUTLINED_FUNCTION_97_0(v7);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v8 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_9_11(v8);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t sub_26A3F85F4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v7 = OUTLINED_FUNCTION_124();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_41(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_141_0();
  v13 = a1(0);
  OUTLINED_FUNCTION_97_0(v13);
  v14 = *a2;
  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  v15 = type metadata accessor for _ProtoActionProperty();
  v16 = OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_37(v16, v17, v15);
  if (!v18)
  {
    return sub_26A403720();
  }

  *a3 = MEMORY[0x277D84F90];
  a3[1] = 0;
  a3[2] = 0xE000000000000000;
  v19 = a3 + *(v15 + 24);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v20 = OUTLINED_FUNCTION_72();
  result = OUTLINED_FUNCTION_37(v20, v21, v15);
  if (!v18)
  {
    return sub_26A0E48F0(v3, &off_28036C7C0, &off_26A427400);
  }

  return result;
}

uint64_t sub_26A3F8758(uint64_t (*a1)(void), void *a2)
{
  v3 = (*(v2 + *(a1(0) + 20)) + *a2);
  OUTLINED_FUNCTION_142();
  v5 = *v3;
  v4 = v3[1];

  return v5;
}

uint64_t _ProtoPrimaryHeader_Marquee.text1.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoPrimaryHeader_Marquee(v6);
  v8 = OUTLINED_FUNCTION_188_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for _ProtoPrimaryHeader_Marquee._StorageClass(0);
    OUTLINED_FUNCTION_100_0(v10);
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A3FE72C();
    OUTLINED_FUNCTION_42_1(v11);
  }

  OUTLINED_FUNCTION_48_1();
  sub_26A403720();
  v12 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v12);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t sub_26A3F88F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t), void *a6)
{
  v10 = v6;
  v13 = *(a3(0) + 20);
  v14 = *(v6 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v6 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = a4(0);
    OUTLINED_FUNCTION_100_0(v17);
    swift_allocObject();
    v18 = OUTLINED_FUNCTION_5_3();
    v16 = a5(v18);
    *(v10 + v13) = v16;
  }

  v19 = (v16 + *a6);
  OUTLINED_FUNCTION_26_10();
  v20 = v19[1];
  *v19 = a1;
  v19[1] = a2;
}

uint64_t _ProtoPrimaryHeader_Marquee.text2.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoPrimaryHeader_Marquee(v6);
  v8 = OUTLINED_FUNCTION_188_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for _ProtoPrimaryHeader_Marquee._StorageClass(0);
    OUTLINED_FUNCTION_100_0(v10);
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A3FE72C();
    OUTLINED_FUNCTION_42_1(v11);
  }

  OUTLINED_FUNCTION_48_1();
  sub_26A403720();
  v12 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v12);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoPrimaryHeader_Marquee.thumbnail.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoPrimaryHeader_Marquee(v6);
  v8 = OUTLINED_FUNCTION_188_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for _ProtoPrimaryHeader_Marquee._StorageClass(0);
    OUTLINED_FUNCTION_100_0(v10);
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A3FE72C();
    OUTLINED_FUNCTION_42_1(v11);
  }

  OUTLINED_FUNCTION_48_1();
  sub_26A403720();
  v12 = type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_50_4(v12);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoPrimaryHeader_Marquee.action.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoPrimaryHeader_Marquee(v6);
  v8 = OUTLINED_FUNCTION_188_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for _ProtoPrimaryHeader_Marquee._StorageClass(0);
    OUTLINED_FUNCTION_100_0(v10);
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A3FE72C();
    OUTLINED_FUNCTION_42_1(v11);
  }

  OUTLINED_FUNCTION_48_1();
  sub_26A403720();
  v12 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_50_4(v12);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoPrimaryHeader_Marquee.hasText1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  v7 = type metadata accessor for _ProtoPrimaryHeader_Marquee(v6);
  OUTLINED_FUNCTION_97_0(v7);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v8 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v8);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t sub_26A3F8D78@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v8 = *(a1(0) + 20);
  if (*a2 != -1)
  {
    OUTLINED_FUNCTION_125();
    swift_once();
  }

  *(a4 + v8) = *a3;
}

uint64_t sub_26A3F8EB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t))
{
  v7 = *(a3(0) + 20);
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);
  if (v8 != v9)
  {
    v10 = *(a1 + v7);

    v11 = a4(v8, v9);

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  sub_26A424794();
  OUTLINED_FUNCTION_11_42();
  sub_26A403820(v12, v13);
  return sub_26A424B64() & 1;
}

void _ProtoPrimaryHeader_Standard.text1.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_124();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_31_1(v7);
  v9 = type metadata accessor for _ProtoTextProperty(v8);
  OUTLINED_FUNCTION_14_8(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_51_3(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_35_8(v13);
  v15 = type metadata accessor for _ProtoPrimaryHeader_Standard(v14);
  OUTLINED_FUNCTION_97_0(v15);
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v16)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v17 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v17);
    if (!v16)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A403720();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoPrimaryHeader_Standard.clearText1()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoPrimaryHeader_Standard(v6);
  v8 = OUTLINED_FUNCTION_187_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for _ProtoPrimaryHeader_Standard._StorageClass(0);
    OUTLINED_FUNCTION_100_0(v10);
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A3FC404();
    OUTLINED_FUNCTION_52_3(v11);
  }

  v12 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v12);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t sub_26A3F91C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = a5(0);
  OUTLINED_FUNCTION_41(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_141_0();
  sub_26A403774();
  return a7(v7);
}

void _ProtoPrimaryHeader_Standard.text2.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_124();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_31_1(v7);
  v9 = type metadata accessor for _ProtoTextProperty(v8);
  OUTLINED_FUNCTION_14_8(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_51_3(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_35_8(v13);
  v15 = type metadata accessor for _ProtoPrimaryHeader_Standard(v14);
  OUTLINED_FUNCTION_97_0(v15);
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v16)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v17 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v17);
    if (!v16)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A403720();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoPrimaryHeader_Standard.clearText2()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoPrimaryHeader_Standard(v6);
  v8 = OUTLINED_FUNCTION_187_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for _ProtoPrimaryHeader_Standard._StorageClass(0);
    OUTLINED_FUNCTION_100_0(v10);
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A3FC404();
    OUTLINED_FUNCTION_52_3(v11);
  }

  v12 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v12);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

void _ProtoPrimaryHeader_Standard.text3.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_124();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_31_1(v7);
  v9 = type metadata accessor for _ProtoTextProperty(v8);
  OUTLINED_FUNCTION_14_8(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_51_3(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_35_8(v13);
  v15 = type metadata accessor for _ProtoPrimaryHeader_Standard(v14);
  OUTLINED_FUNCTION_97_0(v15);
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v16)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v17 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v17);
    if (!v16)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A403720();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoPrimaryHeader_Standard.clearText3()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoPrimaryHeader_Standard(v6);
  v8 = OUTLINED_FUNCTION_187_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for _ProtoPrimaryHeader_Standard._StorageClass(0);
    OUTLINED_FUNCTION_100_0(v10);
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A3FC404();
    OUTLINED_FUNCTION_52_3(v11);
  }

  v12 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v12);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

void _ProtoPrimaryHeader_Standard.action.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_124();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  OUTLINED_FUNCTION_31_1(v7);
  v8 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_14_8(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_51_3(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_35_8(v12);
  v14 = type metadata accessor for _ProtoPrimaryHeader_Standard(v13);
  OUTLINED_FUNCTION_97_0(v14);
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v15)
  {
    OUTLINED_FUNCTION_54_5(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_1_4();
    if (!v15)
    {
      sub_26A0E48F0(v0, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A403720();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoPrimaryHeader_Standard.clearAction()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoPrimaryHeader_Standard(v6);
  v8 = OUTLINED_FUNCTION_187_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for _ProtoPrimaryHeader_Standard._StorageClass(0);
    OUTLINED_FUNCTION_100_0(v10);
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A3FC404();
    OUTLINED_FUNCTION_52_3(v11);
  }

  v12 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_51_4(v12);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t sub_26A3F98BC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoPrimaryHeader_Standard.componentName.setter(v1, v2);
}

uint64_t _ProtoPrimaryHeader_Standard.componentName.modify()
{
  v2 = OUTLINED_FUNCTION_41_7();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_20_11(v3);
  v5 = type metadata accessor for _ProtoPrimaryHeader_Standard(v4);
  OUTLINED_FUNCTION_42_6(v5);
  OUTLINED_FUNCTION_38_6();
  v6 = v0[1];
  *(v1 + 48) = *v0;
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_133();
}

void _ProtoPrimaryHeader_Marquee.text1.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_124();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_31_1(v7);
  v9 = type metadata accessor for _ProtoTextProperty(v8);
  OUTLINED_FUNCTION_14_8(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_51_3(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_35_8(v13);
  v15 = type metadata accessor for _ProtoPrimaryHeader_Marquee(v14);
  OUTLINED_FUNCTION_97_0(v15);
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v16)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v17 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v17);
    if (!v16)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A403720();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoPrimaryHeader_Marquee.clearText1()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoPrimaryHeader_Marquee(v6);
  v8 = OUTLINED_FUNCTION_187_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for _ProtoPrimaryHeader_Marquee._StorageClass(0);
    OUTLINED_FUNCTION_100_0(v10);
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A3FE72C();
    OUTLINED_FUNCTION_52_3(v11);
  }

  v12 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v12);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

void _ProtoPrimaryHeader_Marquee.text2.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_124();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_31_1(v7);
  v9 = type metadata accessor for _ProtoTextProperty(v8);
  OUTLINED_FUNCTION_14_8(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_51_3(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_35_8(v13);
  v15 = type metadata accessor for _ProtoPrimaryHeader_Marquee(v14);
  OUTLINED_FUNCTION_97_0(v15);
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v16)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v17 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v17);
    if (!v16)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A403720();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoPrimaryHeader_Marquee.clearText2()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoPrimaryHeader_Marquee(v6);
  v8 = OUTLINED_FUNCTION_187_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for _ProtoPrimaryHeader_Marquee._StorageClass(0);
    OUTLINED_FUNCTION_100_0(v10);
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A3FE72C();
    OUTLINED_FUNCTION_52_3(v11);
  }

  v12 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v12);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

void _ProtoPrimaryHeader_Marquee.action.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_124();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  OUTLINED_FUNCTION_31_1(v7);
  v8 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_14_8(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_51_3(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_35_8(v12);
  v14 = type metadata accessor for _ProtoPrimaryHeader_Marquee(v13);
  OUTLINED_FUNCTION_97_0(v14);
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v15)
  {
    OUTLINED_FUNCTION_54_5(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_1_4();
    if (!v15)
    {
      sub_26A0E48F0(v0, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A403720();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoPrimaryHeader_Marquee.clearAction()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoPrimaryHeader_Marquee(v6);
  v8 = OUTLINED_FUNCTION_187_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for _ProtoPrimaryHeader_Marquee._StorageClass(0);
    OUTLINED_FUNCTION_100_0(v10);
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A3FE72C();
    OUTLINED_FUNCTION_52_3(v11);
  }

  v12 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_51_4(v12);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

void _ProtoPrimaryHeader_Marquee.thumbnail.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_124();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  OUTLINED_FUNCTION_31_1(v7);
  v8 = type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_14_8(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_51_3(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_35_8(v12);
  v14 = type metadata accessor for _ProtoPrimaryHeader_Marquee(v13);
  OUTLINED_FUNCTION_97_0(v14);
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v15)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v16 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v16);
    if (!v15)
    {
      sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A403720();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoPrimaryHeader_Marquee.clearThumbnail()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoPrimaryHeader_Marquee(v6);
  v8 = OUTLINED_FUNCTION_187_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for _ProtoPrimaryHeader_Marquee._StorageClass(0);
    OUTLINED_FUNCTION_100_0(v10);
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A3FE72C();
    OUTLINED_FUNCTION_52_3(v11);
  }

  v12 = type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_51_4(v12);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t sub_26A3FA25C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoPrimaryHeader_Marquee.componentName.setter(v1, v2);
}

uint64_t _ProtoPrimaryHeader_Marquee.componentName.modify()
{
  v2 = OUTLINED_FUNCTION_41_7();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_20_11(v3);
  v5 = type metadata accessor for _ProtoPrimaryHeader_Marquee(v4);
  OUTLINED_FUNCTION_42_6(v5);
  OUTLINED_FUNCTION_38_6();
  v6 = v0[1];
  *(v1 + 48) = *v0;
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_133();
}

uint64_t _ProtoPrimaryHeader_Rich.text1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_23_41(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_6_29();
  if (!v6)
  {
    return OUTLINED_FUNCTION_99_8();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v7 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v7);
  if (!v6)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

void _ProtoPrimaryHeader_Rich.text1.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_124();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_31_1(v8);
  v10 = type metadata accessor for _ProtoTextProperty(v9);
  OUTLINED_FUNCTION_14_8(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_51_3(v12);
  *(v1 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_13_39();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v14)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v15 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v15);
    if (!v14)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A403720();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoPrimaryHeader_Rich.hasText1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_23_41(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoPrimaryHeader_Rich.text2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_23_41(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_6_29();
  if (!v6)
  {
    return OUTLINED_FUNCTION_99_8();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v7 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v7);
  if (!v6)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
  }

  return result;
}

void _ProtoPrimaryHeader_Rich.text2.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_124();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_31_1(v8);
  v10 = type metadata accessor for _ProtoMultilineTextProperty(v9);
  OUTLINED_FUNCTION_14_8(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_51_3(v12);
  *(v1 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_13_39();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v14)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v15 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v15);
    if (!v14)
    {
      sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A403720();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoPrimaryHeader_Rich.hasText2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_23_41(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoPrimaryHeader_Rich.text3.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_23_41(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_6_29();
  if (!v6)
  {
    return OUTLINED_FUNCTION_99_8();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v7 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v7);
  if (!v6)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
  }

  return result;
}

void _ProtoPrimaryHeader_Rich.text3.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_124();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_31_1(v8);
  v10 = type metadata accessor for _ProtoMultilineTextProperty(v9);
  OUTLINED_FUNCTION_14_8(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_51_3(v12);
  *(v1 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_13_39();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v14)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v15 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v15);
    if (!v14)
    {
      sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A403720();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoPrimaryHeader_Rich.hasText3.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_23_41(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoPrimaryHeader_Rich.text4.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_23_41(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_6_29();
  if (!v6)
  {
    return OUTLINED_FUNCTION_99_8();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v7 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v7);
  if (!v6)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

void _ProtoPrimaryHeader_Rich.text4.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_124();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_31_1(v8);
  v10 = type metadata accessor for _ProtoTextProperty(v9);
  OUTLINED_FUNCTION_14_8(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_51_3(v12);
  *(v1 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_13_39();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v14)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v15 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v15);
    if (!v14)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A403720();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoPrimaryHeader_Rich.hasText4.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_23_41(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoPrimaryHeader_Rich.thumbnail.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_23_41(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_6_29();
  if (!v6)
  {
    return OUTLINED_FUNCTION_99_8();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v7 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v7);
  if (!v6)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
  }

  return result;
}

void _ProtoPrimaryHeader_Rich.thumbnail.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_124();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_31_1(v8);
  v9 = type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_14_8(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_51_3(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_13_39();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v13)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v14 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v14);
    if (!v13)
    {
      sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A403720();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoPrimaryHeader_Rich.hasThumbnail.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_23_41(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

void _ProtoPrimaryHeader_Rich.action.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_124();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_31_1(v8);
  v9 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_14_8(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_51_3(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_13_39();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v13)
  {
    OUTLINED_FUNCTION_54_5(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_1_4();
    if (!v13)
    {
      sub_26A0E48F0(v0, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A403720();
  }

  OUTLINED_FUNCTION_75();
}

void sub_26A3FBBE0(uint64_t a1, char a2, void (*a3)(void *), uint64_t (*a4)(void))
{
  v5 = *a1;
  v6 = *(*a1 + 40);
  v7 = *(*a1 + 48);
  v8 = *(*a1 + 24);
  v9 = *(*a1 + 32);
  if (a2)
  {
    OUTLINED_FUNCTION_103();
    sub_26A403774();
    a3(v6);
    sub_26A4037C8(v7, a4);
  }

  else
  {
    a3(*(*a1 + 48));
  }

  free(v7);
  free(v6);
  free(v9);

  free(v5);
}

uint64_t _ProtoPrimaryHeader_Rich.hasAction.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_23_41(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t sub_26A3FBDFC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoPrimaryHeader_Rich.componentName.setter(v1, v2);
}

uint64_t _ProtoPrimaryHeader_Rich.componentName.modify()
{
  v2 = OUTLINED_FUNCTION_41_7();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_20_11(v3);
  v5 = type metadata accessor for _ProtoPrimaryHeader_Rich(v4);
  OUTLINED_FUNCTION_42_6(v5);
  OUTLINED_FUNCTION_38_6();
  v6 = v0[1];
  *(v1 + 48) = *v0;
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_133();
}

void sub_26A3FBF38()
{
  OUTLINED_FUNCTION_76();
  v5 = *v0;
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 56);
  if (v8)
  {
    v9 = v4;
    v10 = *(v5 + 64);
    v11 = *(*v0 + 56);

    v12 = OUTLINED_FUNCTION_125();
    v9(v12);
    v13 = *(v5 + 56);
  }

  else
  {
    v14 = v3;
    v15 = v2;
    v16 = v1;
    v17 = *(v5 + 72);
    v18 = *(v5 + 64);
    v19 = *(v18 + v17);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v18 + v17);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v22 = *(v5 + 72);
      v23 = *(v5 + 64);
      v24 = v16(0);
      OUTLINED_FUNCTION_100_0(v24);
      swift_allocObject();
      v25 = OUTLINED_FUNCTION_5_3();
      v21 = v15(v25);
      *(v23 + v22) = v21;
    }

    v26 = (v21 + *v14);
    OUTLINED_FUNCTION_26_10();
    v27 = v26[1];
    *v26 = v6;
    v26[1] = v7;
  }

  OUTLINED_FUNCTION_75();

  free(v28);
}

uint64_t sub_26A3FC064()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280373AB0);
  __swift_project_value_buffer(v0, qword_280373AB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A4271D0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "text_1";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "text_2";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "text_3";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "action";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v15 = *MEMORY[0x277D21870];
  v9();
  v16 = (v5 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "component_name";
  *(v17 + 1) = 14;
  v17[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t sub_26A3FC344()
{
  v1 = OBJC_IVAR____TtCV10SnippetKit28_ProtoPrimaryHeader_StandardP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text1;
  v2 = type metadata accessor for _ProtoTextProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit28_ProtoPrimaryHeader_StandardP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text2, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit28_ProtoPrimaryHeader_StandardP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text3, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10SnippetKit28_ProtoPrimaryHeader_StandardP33_20A83C8923FECE60991A771F98D088B413_StorageClass__action;
  v4 = type metadata accessor for _ProtoActionProperty();
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = (v0 + OBJC_IVAR____TtCV10SnippetKit28_ProtoPrimaryHeader_StandardP33_20A83C8923FECE60991A771F98D088B413_StorageClass__componentName);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  return v0;
}

void sub_26A3FC404()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_42();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v10);
  v11 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v11);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v11);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v11);
  type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
  v25 = (v0 + OBJC_IVAR____TtCV10SnippetKit28_ProtoPrimaryHeader_StandardP33_20A83C8923FECE60991A771F98D088B413_StorageClass__componentName);
  *v25 = 0;
  v25[1] = 0xE000000000000000;
  OUTLINED_FUNCTION_125_1();
  OUTLINED_FUNCTION_97_8();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_97_8();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_128_1();
  OUTLINED_FUNCTION_97_8();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_97_8();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_124_1();
  OUTLINED_FUNCTION_97_8();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_97_8();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_123_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_104_3();
  swift_endAccess();
  v26 = (v2 + OBJC_IVAR____TtCV10SnippetKit28_ProtoPrimaryHeader_StandardP33_20A83C8923FECE60991A771F98D088B413_StorageClass__componentName);
  OUTLINED_FUNCTION_129_1();
  v28 = *v26;
  v27 = v26[1];

  OUTLINED_FUNCTION_26_10();
  v29 = v25[1];
  *v25 = v28;
  v25[1] = v27;

  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A3FC708()
{
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit28_ProtoPrimaryHeader_StandardP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text1, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit28_ProtoPrimaryHeader_StandardP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text2, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit28_ProtoPrimaryHeader_StandardP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text3, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit28_ProtoPrimaryHeader_StandardP33_20A83C8923FECE60991A771F98D088B413_StorageClass__action, &off_28036C7C0, &off_26A427400);
  v1 = *(v0 + OBJC_IVAR____TtCV10SnippetKit28_ProtoPrimaryHeader_StandardP33_20A83C8923FECE60991A771F98D088B413_StorageClass__componentName + 8);

  return v0;
}

uint64_t sub_26A3FC82C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_26A424834();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_26A3FC93C();
        break;
      case 2:
        sub_26A3FCA18();
        break;
      case 3:
        sub_26A3FCAF4();
        break;
      case 4:
        sub_26A3FCBD0();
        break;
      case 5:
        sub_26A1BF82C(a2, a1, a3, a4, &OBJC_IVAR____TtCV10SnippetKit28_ProtoPrimaryHeader_StandardP33_20A83C8923FECE60991A771F98D088B413_StorageClass__componentName);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A3FC93C()
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A403820(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A3FCA18()
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A403820(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A3FCAF4()
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A403820(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A3FCBD0()
{
  swift_beginAccess();
  type metadata accessor for _ProtoActionProperty();
  sub_26A403820(&qword_28036C928, type metadata accessor for _ProtoActionProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A3FCCDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_26A3FCDF8(a1, a2, a3, a4);
  if (!v4)
  {
    sub_26A3FCFE0(a1, a2, a3, a4);
    sub_26A3FD1C8(a1, a2, a3, a4);
    sub_26A3FD3B0(a1, a2, a3, a4);
    v10 = (a1 + OBJC_IVAR____TtCV10SnippetKit28_ProtoPrimaryHeader_StandardP33_20A83C8923FECE60991A771F98D088B413_StorageClass__componentName);
    result = swift_beginAccess();
    v11 = *v10;
    v12 = v10[1];
    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {

      sub_26A424A64();
    }
  }

  return result;
}

uint64_t sub_26A3FCDF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for _ProtoTextProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A403720();
  sub_26A403820(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A4037C8(v11, type metadata accessor for _ProtoTextProperty);
}

uint64_t sub_26A3FCFE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for _ProtoTextProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A403720();
  sub_26A403820(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A4037C8(v11, type metadata accessor for _ProtoTextProperty);
}

uint64_t sub_26A3FD1C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for _ProtoTextProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A403720();
  sub_26A403820(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A4037C8(v11, type metadata accessor for _ProtoTextProperty);
}

uint64_t sub_26A3FD3B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for _ProtoActionProperty();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &off_28036C7C0, &off_26A427400);
  }

  sub_26A403720();
  sub_26A403820(&qword_28036C928, type metadata accessor for _ProtoActionProperty);
  sub_26A424A84();
  return sub_26A4037C8(v11, type metadata accessor for _ProtoActionProperty);
}

void sub_26A3FD598()
{
  OUTLINED_FUNCTION_76();
  v130 = v0;
  v2 = v1;
  v121 = type metadata accessor for _ProtoActionProperty();
  v3 = OUTLINED_FUNCTION_12(v121);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_49(v6);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7C8, &qword_26A425C00);
  OUTLINED_FUNCTION_12(v120);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_49(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v12 = OUTLINED_FUNCTION_41(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v16);
  v129 = type metadata accessor for _ProtoTextProperty(0);
  v17 = OUTLINED_FUNCTION_12(v129);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_49(v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7D0, &qword_26A426DE0);
  v22 = OUTLINED_FUNCTION_12(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v26);
  v28 = v119 - v27;
  v29 = &unk_26A425BF0;
  v30 = OUTLINED_FUNCTION_41_1();
  v31 = OUTLINED_FUNCTION_41(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v37);
  v39 = v119 - v38;
  MEMORY[0x28223BE20](v40);
  v42 = v119 - v41;
  OUTLINED_FUNCTION_125_1();
  v43 = v2;
  sub_26A10FD9C();
  v44 = v130;
  OUTLINED_FUNCTION_128_1();
  v125 = v21;
  v45 = *(v21 + 48);
  sub_26A10FD9C();
  v46 = v44;
  v47 = v129;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_37(v28, 1, v47);
  if (v48)
  {

    sub_26A0E48F0(v42, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_37(&v28[v45], 1, v47);
    if (v48)
    {
      sub_26A0E48F0(v28, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_11;
    }

LABEL_9:
    v50 = &qword_28036C7D0;
    v51 = &qword_26A426DE0;
    v52 = v28;
    goto LABEL_54;
  }

  sub_26A10FD9C();
  OUTLINED_FUNCTION_37(&v28[v45], 1, v47);
  if (v48)
  {

    sub_26A0E48F0(v42, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_2_58();
    sub_26A4037C8(v39, v49);
    goto LABEL_9;
  }

  sub_26A403720();

  v53 = OUTLINED_FUNCTION_157();
  v29 = static _ProtoTextProperty.== infix(_:_:)(v53, v54);
  v55 = OUTLINED_FUNCTION_21_3();
  sub_26A4037C8(v55, v56);
  sub_26A0E48F0(v42, &qword_28036C7B8, &unk_26A425BF0);
  v57 = OUTLINED_FUNCTION_125();
  sub_26A4037C8(v57, v58);
  sub_26A0E48F0(v28, &qword_28036C7B8, &unk_26A425BF0);
  if ((v29 & 1) == 0)
  {
    goto LABEL_55;
  }

LABEL_11:
  OUTLINED_FUNCTION_124_1();
  v59 = v128;
  OUTLINED_FUNCTION_59_5();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_123_1();
  v60 = v125;
  v61 = *(v125 + 48);
  OUTLINED_FUNCTION_148(&v133);
  OUTLINED_FUNCTION_59_5();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_59_5();
  v62 = v29;
  sub_26A10FD9C();
  v63 = OUTLINED_FUNCTION_72();
  v64 = v47;
  OUTLINED_FUNCTION_37(v63, v65, v47);
  if (v48)
  {
    sub_26A0E48F0(v59, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_37(v62 + v61, 1, v47);
    v66 = v126;
    if (v48)
    {
      sub_26A0E48F0(v62, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_21;
    }

LABEL_19:
    v50 = &qword_28036C7D0;
    v51 = &qword_26A426DE0;
    v52 = v62;
    goto LABEL_54;
  }

  v67 = v124;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_37(v62 + v61, 1, v47);
  v66 = v126;
  if (v68)
  {
    sub_26A0E48F0(v128, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_2_58();
    sub_26A4037C8(v67, v69);
    goto LABEL_19;
  }

  sub_26A403720();
  v70 = OUTLINED_FUNCTION_125();
  v72 = v62;
  v73 = static _ProtoTextProperty.== infix(_:_:)(v70, v71);
  v74 = OUTLINED_FUNCTION_48_1();
  sub_26A4037C8(v74, v75);
  sub_26A0E48F0(v128, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A4037C8(v67, type metadata accessor for _ProtoTextProperty);
  sub_26A0E48F0(v72, &qword_28036C7B8, &unk_26A425BF0);
  if ((v73 & 1) == 0)
  {
    goto LABEL_55;
  }

LABEL_21:
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_59_5();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_142();
  v76 = *(v60 + 48);
  OUTLINED_FUNCTION_148(&v132);
  OUTLINED_FUNCTION_59_5();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_59_5();
  sub_26A10FD9C();
  v77 = OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_37(v77, v78, v64);
  if (v48)
  {
    sub_26A0E48F0(v66, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_12_1(v64 + v76);
    v79 = v123;
    if (v48)
    {
      sub_26A0E48F0(v64, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_31;
    }

LABEL_29:
    v50 = &qword_28036C7D0;
    v51 = &qword_26A426DE0;
    v52 = v64;
    goto LABEL_54;
  }

  v80 = v122;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_12_1(v64 + v76);
  v79 = v123;
  if (v81)
  {
    sub_26A0E48F0(v66, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_2_58();
    sub_26A4037C8(v80, v82);
    goto LABEL_29;
  }

  v83 = v127;
  sub_26A403720();
  v84 = static _ProtoTextProperty.== infix(_:_:)(v80, v83);
  v85 = OUTLINED_FUNCTION_48_1();
  sub_26A4037C8(v85, v86);
  OUTLINED_FUNCTION_40_7();
  sub_26A0E48F0(v87, v88, v89);
  sub_26A4037C8(v80, type metadata accessor for _ProtoTextProperty);
  v90 = OUTLINED_FUNCTION_88();
  sub_26A0E48F0(v90, v91, &unk_26A425BF0);
  if ((v84 & 1) == 0)
  {
    goto LABEL_55;
  }

LABEL_31:
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_59_5();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_142();
  v92 = *(v120 + 48);
  OUTLINED_FUNCTION_148(&v131);
  OUTLINED_FUNCTION_59_5();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_59_5();
  sub_26A10FD9C();
  v93 = OUTLINED_FUNCTION_72();
  v94 = v121;
  OUTLINED_FUNCTION_37(v93, v95, v121);
  if (!v48)
  {
    v101 = v119[2];
    sub_26A10FD9C();
    OUTLINED_FUNCTION_12_1(v64 + v92);
    if (!v102)
    {
      v104 = v119[1];
      sub_26A403720();
      v105 = *v101;
      v106 = *v104;
      sub_26A0E36D8();
      if (v107)
      {
        v108 = v101[1] == v104[1] && v101[2] == v104[2];
        if (v108 || (sub_26A425354() & 1) != 0)
        {
          v109 = *(v94 + 24);
          v110 = sub_26A424794();
          OUTLINED_FUNCTION_11_42();
          sub_26A403820(v111, v112);
          sub_26A424B64();
          OUTLINED_FUNCTION_61_17();
          sub_26A4037C8(v104, v113);
          OUTLINED_FUNCTION_40_7();
          sub_26A0E48F0(v114, v115, v116);
          sub_26A4037C8(v101, v110);
          v117 = OUTLINED_FUNCTION_88();
          sub_26A0E48F0(v117, v118, &off_26A427400);
          if ((v109 & 1) == 0)
          {
            goto LABEL_55;
          }

          goto LABEL_36;
        }
      }

      sub_26A4037C8(v104, type metadata accessor for _ProtoActionProperty);
      sub_26A0E48F0(v79, &off_28036C7C0, &off_26A427400);
      sub_26A4037C8(v101, type metadata accessor for _ProtoActionProperty);
      v52 = OUTLINED_FUNCTION_157();
      v51 = &off_26A427400;
LABEL_54:
      sub_26A0E48F0(v52, v50, v51);
      goto LABEL_55;
    }

    sub_26A0E48F0(v79, &off_28036C7C0, &off_26A427400);
    OUTLINED_FUNCTION_22_33();
    sub_26A4037C8(v101, v103);
LABEL_44:
    v50 = &qword_28036C7C8;
    v51 = &qword_26A425C00;
    v52 = v64;
    goto LABEL_54;
  }

  sub_26A0E48F0(v79, &off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_12_1(v64 + v92);
  if (!v48)
  {
    goto LABEL_44;
  }

  sub_26A0E48F0(v64, &off_28036C7C0, &off_26A427400);
LABEL_36:
  v96 = (v43 + OBJC_IVAR____TtCV10SnippetKit28_ProtoPrimaryHeader_StandardP33_20A83C8923FECE60991A771F98D088B413_StorageClass__componentName);
  OUTLINED_FUNCTION_142();
  v97 = *v96;
  v98 = v96[1];
  v99 = (v46 + OBJC_IVAR____TtCV10SnippetKit28_ProtoPrimaryHeader_StandardP33_20A83C8923FECE60991A771F98D088B413_StorageClass__componentName);
  OUTLINED_FUNCTION_129_1();
  if (v97 != *v99 || v98 != v99[1])
  {
    OUTLINED_FUNCTION_175();
    sub_26A425354();
  }

LABEL_55:

  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A3FE1A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A403820(&qword_280373C50, type metadata accessor for _ProtoPrimaryHeader_Standard);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A3FE228(uint64_t a1)
{
  v2 = sub_26A403820(&qword_28036D338, type metadata accessor for _ProtoPrimaryHeader_Standard);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A3FE298()
{
  sub_26A403820(&qword_28036D338, type metadata accessor for _ProtoPrimaryHeader_Standard);

  return sub_26A4249B4();
}

uint64_t sub_26A3FE330()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280373AD0);
  __swift_project_value_buffer(v0, qword_280373AD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A4271D0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "text_1";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "text_2";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "action";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v13 = *MEMORY[0x277D21870];
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "thumbnail";
  *(v15 + 1) = 9;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 4;
  *v17 = "component_name";
  *(v17 + 1) = 14;
  v17[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t sub_26A3FE614(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  v6 = a2(0);
  OUTLINED_FUNCTION_100_0(v6);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_26A3FE664()
{
  v1 = OBJC_IVAR____TtCV10SnippetKit27_ProtoPrimaryHeader_MarqueeP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text1;
  v2 = type metadata accessor for _ProtoTextProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit27_ProtoPrimaryHeader_MarqueeP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text2, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10SnippetKit27_ProtoPrimaryHeader_MarqueeP33_20A83C8923FECE60991A771F98D088B413_StorageClass__action;
  v4 = type metadata accessor for _ProtoActionProperty();
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV10SnippetKit27_ProtoPrimaryHeader_MarqueeP33_20A83C8923FECE60991A771F98D088B413_StorageClass__thumbnail;
  v6 = type metadata accessor for _ProtoVisualProperty();
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  v7 = (v0 + OBJC_IVAR____TtCV10SnippetKit27_ProtoPrimaryHeader_MarqueeP33_20A83C8923FECE60991A771F98D088B413_StorageClass__componentName);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  return v0;
}

void sub_26A3FE72C()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_42();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_42();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v14);
  v15 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v15);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v15);
  type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  v30 = (v0 + OBJC_IVAR____TtCV10SnippetKit27_ProtoPrimaryHeader_MarqueeP33_20A83C8923FECE60991A771F98D088B413_StorageClass__componentName);
  *v30 = 0;
  v30[1] = 0xE000000000000000;
  OUTLINED_FUNCTION_125_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_128_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_124_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_104_3();
  swift_endAccess();
  OUTLINED_FUNCTION_123_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_104_3();
  swift_endAccess();
  v31 = (v2 + OBJC_IVAR____TtCV10SnippetKit27_ProtoPrimaryHeader_MarqueeP33_20A83C8923FECE60991A771F98D088B413_StorageClass__componentName);
  OUTLINED_FUNCTION_129_1();
  v33 = *v31;
  v32 = v31[1];

  OUTLINED_FUNCTION_26_10();
  v34 = v30[1];
  *v30 = v33;
  v30[1] = v32;

  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A3FEA80()
{
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit27_ProtoPrimaryHeader_MarqueeP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text1, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit27_ProtoPrimaryHeader_MarqueeP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text2, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit27_ProtoPrimaryHeader_MarqueeP33_20A83C8923FECE60991A771F98D088B413_StorageClass__action, &off_28036C7C0, &off_26A427400);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit27_ProtoPrimaryHeader_MarqueeP33_20A83C8923FECE60991A771F98D088B413_StorageClass__thumbnail, &qword_28036CAE8, &unk_26A426430);
  v1 = *(v0 + OBJC_IVAR____TtCV10SnippetKit27_ProtoPrimaryHeader_MarqueeP33_20A83C8923FECE60991A771F98D088B413_StorageClass__componentName + 8);

  return v0;
}

uint64_t sub_26A3FEBAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(uint64_t), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = v7;
  v14 = *(a4(0) + 20);
  v15 = *(v7 + v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v7 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = a5(0);
    OUTLINED_FUNCTION_100_0(v18);
    swift_allocObject();
    v19 = OUTLINED_FUNCTION_5_3();
    v17 = a6(v19);
    *(v10 + v14) = v17;
  }

  return a7(v17, a1, a2, a3);
}

uint64_t sub_26A3FEC70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_26A424834();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_26A3FED80();
        break;
      case 2:
        sub_26A3FEE5C();
        break;
      case 3:
        sub_26A3FEF38();
        break;
      case 4:
        sub_26A1BF82C(a2, a1, a3, a4, &OBJC_IVAR____TtCV10SnippetKit27_ProtoPrimaryHeader_MarqueeP33_20A83C8923FECE60991A771F98D088B413_StorageClass__componentName);
        break;
      case 5:
        sub_26A3FF014();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A3FED80()
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A403820(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A3FEE5C()
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A403820(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A3FEF38()
{
  swift_beginAccess();
  type metadata accessor for _ProtoActionProperty();
  sub_26A403820(&qword_28036C928, type metadata accessor for _ProtoActionProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A3FF014()
{
  swift_beginAccess();
  type metadata accessor for _ProtoVisualProperty();
  sub_26A403820(qword_2815796B8, type metadata accessor for _ProtoVisualProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A3FF120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v11 = a4(0);
  result = a5(*(v5 + *(v11 + 20)), a1, a2, a3);
  if (!v6)
  {
    OUTLINED_FUNCTION_103();
    return sub_26A424774();
  }

  return result;
}

uint64_t sub_26A3FF19C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_26A3FF2B8(a1, a2, a3, a4);
  if (!v4)
  {
    sub_26A3FF4A0(a1, a2, a3, a4);
    sub_26A3FF688(a1, a2, a3, a4);
    v10 = (a1 + OBJC_IVAR____TtCV10SnippetKit27_ProtoPrimaryHeader_MarqueeP33_20A83C8923FECE60991A771F98D088B413_StorageClass__componentName);
    swift_beginAccess();
    v11 = *v10;
    v12 = v10[1];
    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {

      sub_26A424A64();
    }

    return sub_26A3FF870(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_26A3FF2B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for _ProtoTextProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A403720();
  sub_26A403820(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A4037C8(v11, type metadata accessor for _ProtoTextProperty);
}

uint64_t sub_26A3FF4A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for _ProtoTextProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A403720();
  sub_26A403820(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A4037C8(v11, type metadata accessor for _ProtoTextProperty);
}

uint64_t sub_26A3FF688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for _ProtoActionProperty();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &off_28036C7C0, &off_26A427400);
  }

  sub_26A403720();
  sub_26A403820(&qword_28036C928, type metadata accessor for _ProtoActionProperty);
  sub_26A424A84();
  return sub_26A4037C8(v11, type metadata accessor for _ProtoActionProperty);
}

uint64_t sub_26A3FF870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for _ProtoVisualProperty();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &qword_28036CAE8, &unk_26A426430);
  }

  sub_26A403720();
  sub_26A403820(qword_2815796B8, type metadata accessor for _ProtoVisualProperty);
  sub_26A424A84();
  return sub_26A4037C8(v11, type metadata accessor for _ProtoVisualProperty);
}

void sub_26A3FFA58()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v3 = v2;
  v113 = type metadata accessor for _ProtoVisualProperty();
  v4 = OUTLINED_FUNCTION_12(v113);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_49(v7);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D190, &unk_26A427130);
  OUTLINED_FUNCTION_12(v112);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_49(v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v13 = OUTLINED_FUNCTION_41(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v17);
  v115 = type metadata accessor for _ProtoActionProperty();
  v18 = OUTLINED_FUNCTION_12(v115);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_49(v21);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7C8, &qword_26A425C00);
  OUTLINED_FUNCTION_12(v114);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_49(v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v27 = OUTLINED_FUNCTION_41(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v31);
  v32 = type metadata accessor for _ProtoTextProperty(0);
  v33 = OUTLINED_FUNCTION_12(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_49(v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7D0, &qword_26A426DE0);
  v38 = OUTLINED_FUNCTION_12(v37);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v41);
  v43 = v111 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v45 = OUTLINED_FUNCTION_41(v44);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v50);
  v52 = v111 - v51;
  OUTLINED_FUNCTION_125_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_128_1();
  v120 = v37;
  v53 = *(v37 + 48);
  sub_26A10FD9C();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_37(v43, 1, v32);
  if (v56)
  {

    sub_26A0E48F0(v52, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_3_6(&v43[v53]);
    v54 = v3;
    if (v56)
    {
      sub_26A0E48F0(v43, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_12;
    }

LABEL_9:
    sub_26A0E48F0(v43, &qword_28036C7D0, &qword_26A426DE0);
    goto LABEL_51;
  }

  v54 = v3;
  v55 = v121;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_3_6(&v43[v53]);
  if (v56)
  {

    sub_26A0E48F0(v52, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_2_58();
    sub_26A4037C8(v55, v57);
    goto LABEL_9;
  }

  v58 = v119;
  sub_26A403720();

  v59 = static _ProtoTextProperty.== infix(_:_:)(v55, v58);
  v60 = OUTLINED_FUNCTION_21_3();
  sub_26A4037C8(v60, v61);
  v53 = &qword_28036C7B8;
  sub_26A0E48F0(v52, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A4037C8(v55, type metadata accessor for _ProtoTextProperty);
  sub_26A0E48F0(v43, &qword_28036C7B8, &unk_26A425BF0);
  if ((v59 & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_12:
  v62 = v1;
  OUTLINED_FUNCTION_124_1();
  OUTLINED_FUNCTION_148(&v126);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_123_1();
  v63 = *(v120 + 48);
  OUTLINED_FUNCTION_188_2(&v127);
  sub_26A10FD9C();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_3_6(v54);
  if (v56)
  {
    sub_26A0E48F0(v53, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_3_6(v54 + v63);
    if (v56)
    {
      sub_26A0E48F0(v54, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_23;
    }

LABEL_20:
    sub_26A0E48F0(v54, &qword_28036C7D0, &qword_26A426DE0);
    goto LABEL_51;
  }

  v64 = v117;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_3_6(v54 + v63);
  if (v65)
  {
    sub_26A0E48F0(v53, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_2_58();
    sub_26A4037C8(v64, v66);
    goto LABEL_20;
  }

  v67 = v119;
  sub_26A403720();
  v68 = static _ProtoTextProperty.== infix(_:_:)(v64, v67);
  sub_26A4037C8(v67, type metadata accessor for _ProtoTextProperty);
  OUTLINED_FUNCTION_27_2(v53);
  sub_26A4037C8(v64, type metadata accessor for _ProtoTextProperty);
  OUTLINED_FUNCTION_27_2(v54);
  if ((v68 & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_23:
  OUTLINED_FUNCTION_142();
  v69 = v118;
  OUTLINED_FUNCTION_59_5();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_142();
  v70 = *(v114 + 48);
  OUTLINED_FUNCTION_188_2(&v125);
  OUTLINED_FUNCTION_59_5();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_59_5();
  sub_26A10FD9C();
  v71 = v115;
  OUTLINED_FUNCTION_37(v54, 1, v115);
  if (v56)
  {
    sub_26A0E48F0(v69, &off_28036C7C0, &off_26A427400);
    OUTLINED_FUNCTION_12_1(v54 + v70);
    v72 = v116;
    if (v56)
    {
      sub_26A0E48F0(v54, &off_28036C7C0, &off_26A427400);
      goto LABEL_28;
    }

LABEL_36:
    v76 = &qword_28036C7C8;
    v77 = &qword_26A425C00;
    v78 = v54;
LABEL_50:
    sub_26A0E48F0(v78, v76, v77);
    goto LABEL_51;
  }

  OUTLINED_FUNCTION_148(&v124);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_12_1(v54 + v70);
  v72 = v116;
  if (v74)
  {
    sub_26A0E48F0(v118, &off_28036C7C0, &off_26A427400);
    OUTLINED_FUNCTION_22_33();
    sub_26A4037C8(v62, v75);
    goto LABEL_36;
  }

  v79 = v111[3];
  sub_26A403720();
  v80 = *v62;
  v81 = *v79;
  sub_26A0E36D8();
  if ((v82 & 1) == 0 || (v62[1] == v79[1] ? (v83 = v62[2] == v79[2]) : (v83 = 0), !v83 && (sub_26A425354() & 1) == 0))
  {
    sub_26A4037C8(v79, type metadata accessor for _ProtoActionProperty);
    sub_26A0E48F0(v118, &off_28036C7C0, &off_26A427400);
    sub_26A4037C8(v62, type metadata accessor for _ProtoActionProperty);
    sub_26A0E48F0(v54, &off_28036C7C0, &off_26A427400);
    goto LABEL_51;
  }

  v84 = *(v71 + 24);
  v85 = sub_26A424794();
  OUTLINED_FUNCTION_11_42();
  sub_26A403820(v86, v87);
  sub_26A424B64();
  OUTLINED_FUNCTION_61_17();
  sub_26A4037C8(v79, v88);
  OUTLINED_FUNCTION_40_7();
  sub_26A0E48F0(v89, v90, v91);
  sub_26A4037C8(v62, v85);
  OUTLINED_FUNCTION_40_7();
  sub_26A0E48F0(v92, v93, v94);
  if ((v84 & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_28:
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_59_5();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_142();
  v73 = *(v112 + 48);
  OUTLINED_FUNCTION_188_2(&v123);
  OUTLINED_FUNCTION_59_5();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_59_5();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_37(v54, 1, v113);
  if (!v56)
  {
    OUTLINED_FUNCTION_188_2(&v122);
    sub_26A10FD9C();
    OUTLINED_FUNCTION_12_1(v54 + v73);
    if (!v95)
    {
      v97 = v111[1];
      sub_26A403720();
      v98 = static _ProtoVisualProperty.== infix(_:_:)(v54, v97);
      v99 = OUTLINED_FUNCTION_48_1();
      sub_26A4037C8(v99, v100);
      OUTLINED_FUNCTION_40_7();
      sub_26A0E48F0(v101, v102, v103);
      sub_26A4037C8(v54, type metadata accessor for _ProtoVisualProperty);
      v104 = OUTLINED_FUNCTION_88();
      sub_26A0E48F0(v104, v105, &unk_26A426430);
      if ((v98 & 1) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_53;
    }

    sub_26A0E48F0(v72, &qword_28036CAE8, &unk_26A426430);
    OUTLINED_FUNCTION_68_14();
    sub_26A4037C8(v54, v96);
    goto LABEL_49;
  }

  sub_26A0E48F0(v72, &qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_12_1(v54 + v73);
  if (!v56)
  {
LABEL_49:
    v76 = &qword_28036D190;
    v77 = &unk_26A427130;
    v78 = v54;
    goto LABEL_50;
  }

  sub_26A0E48F0(v54, &qword_28036CAE8, &unk_26A426430);
LABEL_53:
  v106 = (v54 + OBJC_IVAR____TtCV10SnippetKit27_ProtoPrimaryHeader_MarqueeP33_20A83C8923FECE60991A771F98D088B413_StorageClass__componentName);
  OUTLINED_FUNCTION_142();
  v107 = *v106;
  v108 = v106[1];
  v109 = (v62 + OBJC_IVAR____TtCV10SnippetKit27_ProtoPrimaryHeader_MarqueeP33_20A83C8923FECE60991A771F98D088B413_StorageClass__componentName);
  OUTLINED_FUNCTION_129_1();
  if (v107 != *v109 || v108 != v109[1])
  {
    OUTLINED_FUNCTION_175();
    sub_26A425354();
  }

LABEL_51:

  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A40070C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A403820(&qword_280373C48, type metadata accessor for _ProtoPrimaryHeader_Marquee);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A40078C(uint64_t a1)
{
  v2 = sub_26A403820(&qword_28036F800, type metadata accessor for _ProtoPrimaryHeader_Marquee);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A4007FC()
{
  sub_26A403820(&qword_28036F800, type metadata accessor for _ProtoPrimaryHeader_Marquee);

  return sub_26A4249B4();
}

uint64_t sub_26A400894()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280373AF0);
  __swift_project_value_buffer(v0, qword_280373AF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_26A42DE50;
  v4 = v21 + v3 + v1[14];
  *(v21 + v3) = 1;
  *v4 = "text_1";
  *(v4 + 8) = 6;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21888];
  v6 = sub_26A424A94();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v21 + v3 + v2 + v1[14];
  *(v21 + v3 + v2) = 2;
  *v8 = "text_2";
  *(v8 + 8) = 6;
  *(v8 + 16) = 2;
  v7();
  v9 = (v21 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "text_3";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v7();
  v11 = (v21 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "text_4";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v7();
  v13 = (v21 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "thumbnail";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v15 = *MEMORY[0x277D21870];
  v7();
  v16 = (v21 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "action";
  *(v17 + 1) = 6;
  v17[16] = 2;
  v7();
  v18 = (v21 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "component_name";
  *(v19 + 1) = 14;
  v19[16] = 2;
  v7();
  return sub_26A424AA4();
}

uint64_t sub_26A400BE0()
{
  v1 = OBJC_IVAR____TtCV10SnippetKit24_ProtoPrimaryHeader_RichP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text1;
  v2 = type metadata accessor for _ProtoTextProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10SnippetKit24_ProtoPrimaryHeader_RichP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text2;
  v4 = type metadata accessor for _ProtoMultilineTextProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoPrimaryHeader_RichP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text3, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoPrimaryHeader_RichP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text4, 1, 1, v2);
  v5 = OBJC_IVAR____TtCV10SnippetKit24_ProtoPrimaryHeader_RichP33_20A83C8923FECE60991A771F98D088B413_StorageClass__thumbnail;
  v6 = type metadata accessor for _ProtoVisualProperty();
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCV10SnippetKit24_ProtoPrimaryHeader_RichP33_20A83C8923FECE60991A771F98D088B413_StorageClass__action;
  v8 = type metadata accessor for _ProtoActionProperty();
  __swift_storeEnumTagSinglePayload(v0 + v7, 1, 1, v8);
  v9 = (v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoPrimaryHeader_RichP33_20A83C8923FECE60991A771F98D088B413_StorageClass__componentName);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  return v0;
}

void sub_26A400CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_76();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_49(v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_49(v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v35);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_141_0();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v42);
  v43 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v43);
  v47 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v47);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v47);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v54, v55, v56, v43);
  type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v57, v58, v59, v60);
  type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v61, v62, v63, v64);
  v65 = (v20 + OBJC_IVAR____TtCV10SnippetKit24_ProtoPrimaryHeader_RichP33_20A83C8923FECE60991A771F98D088B413_StorageClass__componentName);
  *v65 = 0;
  v65[1] = 0xE000000000000000;
  OUTLINED_FUNCTION_125_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_128_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_124_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_123_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_148(&a14);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_104_3();
  swift_endAccess();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_148(&a15);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_104_3();
  swift_endAccess();
  v66 = (v24 + OBJC_IVAR____TtCV10SnippetKit24_ProtoPrimaryHeader_RichP33_20A83C8923FECE60991A771F98D088B413_StorageClass__componentName);
  OUTLINED_FUNCTION_129_1();
  v68 = *v66;
  v67 = v66[1];

  OUTLINED_FUNCTION_26_10();
  v69 = v65[1];
  *v65 = v68;
  v65[1] = v67;

  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A401190()
{
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoPrimaryHeader_RichP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text1, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoPrimaryHeader_RichP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text2, &qword_28036CAE0, &unk_26A4273F0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoPrimaryHeader_RichP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text3, &qword_28036CAE0, &unk_26A4273F0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoPrimaryHeader_RichP33_20A83C8923FECE60991A771F98D088B413_StorageClass__text4, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoPrimaryHeader_RichP33_20A83C8923FECE60991A771F98D088B413_StorageClass__thumbnail, &qword_28036CAE8, &unk_26A426430);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoPrimaryHeader_RichP33_20A83C8923FECE60991A771F98D088B413_StorageClass__action, &off_28036C7C0, &off_26A427400);
  v1 = *(v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoPrimaryHeader_RichP33_20A83C8923FECE60991A771F98D088B413_StorageClass__componentName + 8);

  return v0;
}

uint64_t sub_26A4012AC(uint64_t (*a1)(void))
{
  v1 = *a1();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);

  return MEMORY[0x2821FE8D8]();
}

uint64_t sub_26A40135C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_26A424834();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_26A4014A4();
        break;
      case 2:
        sub_26A401580();
        break;
      case 3:
        sub_26A40165C();
        break;
      case 4:
        sub_26A401738();
        break;
      case 5:
        sub_26A401814();
        break;
      case 6:
        sub_26A4018F0();
        break;
      case 7:
        sub_26A1BF82C(a2, a1, a3, a4, &OBJC_IVAR____TtCV10SnippetKit24_ProtoPrimaryHeader_RichP33_20A83C8923FECE60991A771F98D088B413_StorageClass__componentName);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A4014A4()
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A403820(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A401580()
{
  swift_beginAccess();
  type metadata accessor for _ProtoMultilineTextProperty(0);
  sub_26A403820(&qword_28036D450, type metadata accessor for _ProtoMultilineTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A40165C()
{
  swift_beginAccess();
  type metadata accessor for _ProtoMultilineTextProperty(0);
  sub_26A403820(&qword_28036D450, type metadata accessor for _ProtoMultilineTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A401738()
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A403820(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A401814()
{
  swift_beginAccess();
  type metadata accessor for _ProtoVisualProperty();
  sub_26A403820(qword_2815796B8, type metadata accessor for _ProtoVisualProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A4018F0()
{
  swift_beginAccess();
  type metadata accessor for _ProtoActionProperty();
  sub_26A403820(&qword_28036C928, type metadata accessor for _ProtoActionProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A4019FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_26A401B58(a1, a2, a3, a4);
  if (!v4)
  {
    sub_26A401D40(a1, a2, a3, a4);
    sub_26A401F28(a1, a2, a3, a4);
    sub_26A402110(a1, a2, a3, a4);
    sub_26A4022F8(a1, a2, a3, a4);
    sub_26A4024E0(a1, a2, a3, a4);
    v10 = (a1 + OBJC_IVAR____TtCV10SnippetKit24_ProtoPrimaryHeader_RichP33_20A83C8923FECE60991A771F98D088B413_StorageClass__componentName);
    result = swift_beginAccess();
    v11 = *v10;
    v12 = v10[1];
    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {

      sub_26A424A64();
    }
  }

  return result;
}

uint64_t sub_26A401B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for _ProtoTextProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A403720();
  sub_26A403820(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A4037C8(v11, type metadata accessor for _ProtoTextProperty);
}

uint64_t sub_26A401D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for _ProtoMultilineTextProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &qword_28036CAE0, &unk_26A4273F0);
  }

  sub_26A403720();
  sub_26A403820(&qword_28036D450, type metadata accessor for _ProtoMultilineTextProperty);
  sub_26A424A84();
  return sub_26A4037C8(v11, type metadata accessor for _ProtoMultilineTextProperty);
}

uint64_t sub_26A401F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for _ProtoMultilineTextProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &qword_28036CAE0, &unk_26A4273F0);
  }

  sub_26A403720();
  sub_26A403820(&qword_28036D450, type metadata accessor for _ProtoMultilineTextProperty);
  sub_26A424A84();
  return sub_26A4037C8(v11, type metadata accessor for _ProtoMultilineTextProperty);
}

uint64_t sub_26A402110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for _ProtoTextProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A403720();
  sub_26A403820(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A4037C8(v11, type metadata accessor for _ProtoTextProperty);
}

uint64_t sub_26A4022F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for _ProtoVisualProperty();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &qword_28036CAE8, &unk_26A426430);
  }

  sub_26A403720();
  sub_26A403820(qword_2815796B8, type metadata accessor for _ProtoVisualProperty);
  sub_26A424A84();
  return sub_26A4037C8(v11, type metadata accessor for _ProtoVisualProperty);
}

uint64_t sub_26A4024E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for _ProtoActionProperty();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &off_28036C7C0, &off_26A427400);
  }

  sub_26A403720();
  sub_26A403820(&qword_28036C928, type metadata accessor for _ProtoActionProperty);
  sub_26A424A84();
  return sub_26A4037C8(v11, type metadata accessor for _ProtoActionProperty);
}

void sub_26A4026C8()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v4 = v3;
  v164 = type metadata accessor for _ProtoActionProperty();
  v5 = OUTLINED_FUNCTION_12(v164);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_11();
  v160 = v8;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7C8, &qword_26A425C00);
  OUTLINED_FUNCTION_12(v163);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_42();
  v165 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v14 = OUTLINED_FUNCTION_41(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_8();
  v161 = v17;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_48();
  v167 = v19;
  v170 = type metadata accessor for _ProtoVisualProperty();
  v20 = OUTLINED_FUNCTION_12(v170);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_11();
  v162 = v23;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D190, &unk_26A427130);
  OUTLINED_FUNCTION_12(v168);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_42();
  v171 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v29 = OUTLINED_FUNCTION_41(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_8();
  v166 = v32;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_48();
  v169 = v34;
  v183 = type metadata accessor for _ProtoMultilineTextProperty(0);
  v35 = OUTLINED_FUNCTION_12(v183);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_11();
  v176 = v38;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036F088, &unk_26A42C570);
  v39 = OUTLINED_FUNCTION_12(v186);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_8();
  v178 = v42;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_48();
  v184 = v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  v46 = OUTLINED_FUNCTION_41(v45);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_8();
  v175 = v49;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_47();
  v182 = v51;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_47();
  v179 = v53;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_48();
  v181 = v55;
  v187 = type metadata accessor for _ProtoTextProperty(0);
  v56 = OUTLINED_FUNCTION_12(v187);
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_11();
  v180 = v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7D0, &qword_26A426DE0);
  v61 = OUTLINED_FUNCTION_14_8(v60);
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_8();
  v174 = v64;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v65);
  v67 = &v160 - v66;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v69 = OUTLINED_FUNCTION_41(v68);
  v71 = *(v70 + 64);
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_8();
  v172 = v72;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_47();
  v177 = v74;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_47();
  v185 = v76;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v77);
  v79 = &v160 - v78;
  OUTLINED_FUNCTION_125_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_128_1();
  v173 = v0;
  v80 = *(v0 + 48);
  OUTLINED_FUNCTION_21_3();
  sub_26A10FD9C();
  v81 = v2;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_3_6(v67);
  v188 = v4;
  if (v83)
  {

    sub_26A0E48F0(v79, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_3_6(&v67[v80]);
    if (v83)
    {
      sub_26A0E48F0(v67, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_12;
    }

LABEL_9:
    v85 = &qword_28036C7D0;
    v86 = &qword_26A426DE0;
LABEL_10:
    v87 = v67;
    goto LABEL_21;
  }

  v82 = v185;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_3_6(&v67[v80]);
  if (v83)
  {

    sub_26A0E48F0(v79, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_2_58();
    sub_26A4037C8(v82, v84);
    goto LABEL_9;
  }

  v88 = v180;
  sub_26A403720();

  v89 = static _ProtoTextProperty.== infix(_:_:)(v82, v88);
  sub_26A4037C8(v88, type metadata accessor for _ProtoTextProperty);
  sub_26A0E48F0(v79, &qword_28036C7B8, &unk_26A425BF0);
  v90 = OUTLINED_FUNCTION_124();
  sub_26A4037C8(v90, v91);
  v81 = v2;
  sub_26A0E48F0(v67, &qword_28036C7B8, &unk_26A425BF0);
  if ((v89 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_12:
  OUTLINED_FUNCTION_124_1();
  v92 = v181;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_123_1();
  v93 = *(v186 + 48);
  v94 = v184;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_37(v94, 1, v183);
  if (v83)
  {
    sub_26A0E48F0(v92, &qword_28036CAE0, &unk_26A4273F0);
    OUTLINED_FUNCTION_3_6(v94 + v93);
    v95 = v182;
    if (v83)
    {
      sub_26A0E48F0(v94, &qword_28036CAE0, &unk_26A4273F0);
      goto LABEL_24;
    }

LABEL_20:
    v85 = &qword_28036F088;
    v86 = &unk_26A42C570;
    v87 = v94;
    goto LABEL_21;
  }

  v96 = v179;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_3_6(v94 + v93);
  v95 = v182;
  if (v97)
  {
    sub_26A0E48F0(v92, &qword_28036CAE0, &unk_26A4273F0);
    OUTLINED_FUNCTION_71_9();
    sub_26A4037C8(v96, v98);
    goto LABEL_20;
  }

  v99 = v176;
  sub_26A403720();
  v100 = static _ProtoMultilineTextProperty.== infix(_:_:)(v96, v99);
  v101 = OUTLINED_FUNCTION_157();
  sub_26A4037C8(v101, v102);
  OUTLINED_FUNCTION_111_6(v92);
  sub_26A4037C8(v96, type metadata accessor for _ProtoMultilineTextProperty);
  OUTLINED_FUNCTION_111_6(v184);
  if ((v100 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_24:
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_142();
  v103 = *(v186 + 48);
  v104 = v178;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_112_1();
  v67 = v104;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_3_6(v104);
  if (v83)
  {
    sub_26A0E48F0(v95, &qword_28036CAE0, &unk_26A4273F0);
    OUTLINED_FUNCTION_3_6(v104 + v103);
    v105 = v177;
    if (v83)
    {
      sub_26A0E48F0(v67, &qword_28036CAE0, &unk_26A4273F0);
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  v106 = v175;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_3_6(v104 + v103);
  v105 = v177;
  if (v107)
  {
    sub_26A0E48F0(v95, &qword_28036CAE0, &unk_26A4273F0);
    OUTLINED_FUNCTION_71_9();
    sub_26A4037C8(v106, v108);
LABEL_32:
    v85 = &qword_28036F088;
    v86 = &unk_26A42C570;
    goto LABEL_10;
  }

  sub_26A403720();
  v109 = OUTLINED_FUNCTION_103();
  v111 = v67;
  v112 = static _ProtoMultilineTextProperty.== infix(_:_:)(v109, v110);
  v113 = OUTLINED_FUNCTION_157();
  sub_26A4037C8(v113, v114);
  sub_26A0E48F0(v95, &qword_28036CAE0, &unk_26A4273F0);
  sub_26A4037C8(v106, type metadata accessor for _ProtoMultilineTextProperty);
  sub_26A0E48F0(v111, &qword_28036CAE0, &unk_26A4273F0);
  if ((v112 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_34:
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_142();
  v115 = v174;
  v116 = *(v173 + 48);
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  v117 = v187;
  OUTLINED_FUNCTION_37(v115, 1, v187);
  if (v83)
  {
    sub_26A0E48F0(v105, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_37(v115 + v116, 1, v117);
    if (v83)
    {
      sub_26A0E48F0(v115, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_44;
    }

LABEL_42:
    v85 = &qword_28036C7D0;
    v86 = &qword_26A426DE0;
LABEL_53:
    v87 = v115;
    goto LABEL_21;
  }

  v118 = v172;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_37(v115 + v116, 1, v117);
  if (v119)
  {
    sub_26A0E48F0(v105, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_2_58();
    sub_26A4037C8(v118, v120);
    goto LABEL_42;
  }

  sub_26A403720();
  v121 = OUTLINED_FUNCTION_103();
  v123 = static _ProtoTextProperty.== infix(_:_:)(v121, v122);
  v124 = OUTLINED_FUNCTION_157();
  sub_26A4037C8(v124, v125);
  OUTLINED_FUNCTION_111_6(v105);
  sub_26A4037C8(v118, type metadata accessor for _ProtoTextProperty);
  OUTLINED_FUNCTION_111_6(v115);
  if ((v123 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_44:
  OUTLINED_FUNCTION_142();
  v126 = v169;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_142();
  v127 = *(v168 + 48);
  v115 = v171;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  v128 = v170;
  OUTLINED_FUNCTION_37(v115, 1, v170);
  if (v83)
  {
    sub_26A0E48F0(v126, &qword_28036CAE8, &unk_26A426430);
    OUTLINED_FUNCTION_37(v115 + v127, 1, v128);
    if (v83)
    {
      sub_26A0E48F0(v115, &qword_28036CAE8, &unk_26A426430);
      goto LABEL_55;
    }

    goto LABEL_52;
  }

  v129 = v166;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_37(v115 + v127, 1, v128);
  if (v130)
  {
    sub_26A0E48F0(v126, &qword_28036CAE8, &unk_26A426430);
    OUTLINED_FUNCTION_68_14();
    sub_26A4037C8(v129, v131);
LABEL_52:
    v85 = &qword_28036D190;
    v86 = &unk_26A427130;
    goto LABEL_53;
  }

  v132 = v162;
  sub_26A403720();
  v133 = static _ProtoVisualProperty.== infix(_:_:)(v129, v132);
  v134 = OUTLINED_FUNCTION_157();
  sub_26A4037C8(v134, v135);
  OUTLINED_FUNCTION_27_2(v126);
  sub_26A4037C8(v129, type metadata accessor for _ProtoVisualProperty);
  OUTLINED_FUNCTION_27_2(v115);
  if ((v133 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_55:
  OUTLINED_FUNCTION_142();
  v136 = v167;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_142();
  v137 = *(v163 + 48);
  v138 = v165;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  v139 = v164;
  OUTLINED_FUNCTION_37(v138, 1, v164);
  if (!v83)
  {
    v145 = v161;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v138 + v137, 1, v139);
    if (!v146)
    {
      v148 = v160;
      sub_26A403720();
      v149 = *v145;
      v150 = *v148;
      sub_26A0E36D8();
      if (v151)
      {
        v152 = v145[1] == v148[1] && v145[2] == v148[2];
        if (v152 || (sub_26A425354() & 1) != 0)
        {
          v153 = *(v139 + 24);
          sub_26A424794();
          OUTLINED_FUNCTION_11_42();
          sub_26A403820(v154, v155);
          v156 = sub_26A424B64();
          sub_26A4037C8(v148, type metadata accessor for _ProtoActionProperty);
          OUTLINED_FUNCTION_27_2(v167);
          sub_26A4037C8(v145, type metadata accessor for _ProtoActionProperty);
          OUTLINED_FUNCTION_27_2(v138);
          if ((v156 & 1) == 0)
          {
            goto LABEL_22;
          }

          goto LABEL_60;
        }
      }

      sub_26A4037C8(v148, type metadata accessor for _ProtoActionProperty);
      OUTLINED_FUNCTION_40_7();
      sub_26A0E48F0(v157, v158, v159);
      sub_26A4037C8(v145, type metadata accessor for _ProtoActionProperty);
      v87 = OUTLINED_FUNCTION_88();
      v86 = &off_26A427400;
LABEL_21:
      sub_26A0E48F0(v87, v85, v86);
      goto LABEL_22;
    }

    sub_26A0E48F0(v167, &off_28036C7C0, &off_26A427400);
    OUTLINED_FUNCTION_22_33();
    sub_26A4037C8(v145, v147);
LABEL_68:
    v85 = &qword_28036C7C8;
    v86 = &qword_26A425C00;
    v87 = v138;
    goto LABEL_21;
  }

  sub_26A0E48F0(v136, &off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_37(v138 + v137, 1, v139);
  if (!v83)
  {
    goto LABEL_68;
  }

  sub_26A0E48F0(v138, &off_28036C7C0, &off_26A427400);
LABEL_60:
  v140 = (v188 + OBJC_IVAR____TtCV10SnippetKit24_ProtoPrimaryHeader_RichP33_20A83C8923FECE60991A771F98D088B413_StorageClass__componentName);
  OUTLINED_FUNCTION_129_1();
  v141 = *v140;
  v142 = v140[1];
  v143 = (v81 + OBJC_IVAR____TtCV10SnippetKit24_ProtoPrimaryHeader_RichP33_20A83C8923FECE60991A771F98D088B413_StorageClass__componentName);
  OUTLINED_FUNCTION_142();
  if (v141 != *v143 || v142 != v143[1])
  {
    OUTLINED_FUNCTION_21_3();
    sub_26A425354();
  }

LABEL_22:

  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A403720()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t sub_26A403774()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t sub_26A4037C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_26A403820(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A4038B0(void (*a1)(void))
{
  sub_26A425504();
  a1(0);
  v2 = OUTLINED_FUNCTION_125();
  sub_26A403820(v2, v3);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A403C10(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A403820(&qword_280373C40, type metadata accessor for _ProtoPrimaryHeader_Rich);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A403D20(uint64_t a1)
{
  v2 = sub_26A403820(&qword_28036F768, type metadata accessor for _ProtoPrimaryHeader_Rich);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A403DD8()
{
  sub_26A403820(&qword_28036F768, type metadata accessor for _ProtoPrimaryHeader_Rich);

  return sub_26A4249B4();
}

uint64_t sub_26A403ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_26A424794();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_26A403FAC()
{
  sub_26A4043E4(319, &qword_28036C808, type metadata accessor for _ProtoTextProperty);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_26A4043E4(319, qword_281579718, type metadata accessor for _ProtoActionProperty);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_26A4040C0()
{
  sub_26A4043E4(319, &qword_28036C808, type metadata accessor for _ProtoTextProperty);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_26A4043E4(319, qword_281579718, type metadata accessor for _ProtoActionProperty);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_26A4043E4(319, &qword_28036D178, type metadata accessor for _ProtoVisualProperty);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_26A404228()
{
  sub_26A4043E4(319, &qword_28036C808, type metadata accessor for _ProtoTextProperty);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    sub_26A4043E4(319, &qword_28036EF48, type metadata accessor for _ProtoMultilineTextProperty);
    if (v4 <= 0x3F)
    {
      v9 = *(v3 - 8) + 64;
      sub_26A4043E4(319, &qword_28036D178, type metadata accessor for _ProtoVisualProperty);
      if (v6 <= 0x3F)
      {
        v10 = *(v5 - 8) + 64;
        sub_26A4043E4(319, qword_281579718, type metadata accessor for _ProtoActionProperty);
        if (v8 <= 0x3F)
        {
          v11 = *(v7 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_26A4043E4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26A424E44();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_13_39()
{
  result = type metadata accessor for _ProtoPrimaryHeader_Rich(0);
  v2 = *(v0 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_23_41(uint64_t a1)
{
  result = type metadata accessor for _ProtoPrimaryHeader_Rich(a1);
  v3 = *(v1 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_37_17()
{
  v0 = type metadata accessor for _ProtoPrimaryHeader_Rich._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_99_8()
{

  return sub_26A403720();
}

uint64_t OUTLINED_FUNCTION_111_6(uint64_t a1)
{

  return sub_26A0E48F0(a1, v1, v2);
}

Swift::String __swiftcall SummaryItemShortNumber.description(redacted:)(Swift::Bool redacted)
{
  OUTLINED_FUNCTION_76();
  v86 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB18, &unk_26A427670);
  OUTLINED_FUNCTION_41(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  v89 = &v85 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB20, &unk_26A426470);
  OUTLINED_FUNCTION_41(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v12);
  v88 = &v85 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB28, &qword_26A427980);
  OUTLINED_FUNCTION_41(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v17);
  v19 = &v85 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v23);
  v87 = &v85 - v24;
  v25 = type metadata accessor for _ProtoTextProperty(0);
  v26 = OUTLINED_FUNCTION_12(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_18();
  v31 = v30 - v29;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB30, &qword_26A426480);
  v33 = OUTLINED_FUNCTION_41(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  v37 = &v85 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v40 = &v85 - v39;
  v41 = type metadata accessor for SummaryItemShortNumber();
  v42 = OUTLINED_FUNCTION_41(v41);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  MEMORY[0x28223BE20](v45);
  v47 = &v85 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD48, &qword_26A426828);
  OUTLINED_FUNCTION_12(v48);
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v51);
  v53 = &v85 - v52;
  OUTLINED_FUNCTION_25_34();
  sub_26A408EDC();
  if (v3)
  {
    _ProtoSummaryItem_ShortNumber.redactedProto.getter();
  }

  else
  {
    sub_26A408EDC();
  }

  sub_26A408A38();
  v53[*(v48 + 32)] = v3 & 1;
  sub_26A408A8C(v47, type metadata accessor for SummaryItemShortNumber);
  v54 = *(v48 + 28);
  v55 = MEMORY[0x277D84F90];
  *&v53[v54] = MEMORY[0x277D84F90];
  SummaryItemShortNumber.text1.getter();
  OUTLINED_FUNCTION_222();
  sub_26A1077C4();
  sub_26A0E48F0(v40, &qword_28036CB30, &qword_26A426480);
  v56 = *&v53[*(type metadata accessor for _ProtoSummaryItem_ShortNumber(0) + 20)];
  OUTLINED_FUNCTION_142();
  v57 = v87;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_48_0(v57);
  if (v58)
  {
    *v31 = v55;
    *(v31 + 8) = 0;
    v59 = v31 + v25[7];
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v60 = v25[8];
    v61 = type metadata accessor for _ProtoActionProperty();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v62, v63, v64, v61);
    v65 = v25[9];
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v66, v67, v68, v61);
    OUTLINED_FUNCTION_48_0(v57);
    if (!v58)
    {
      sub_26A0E48F0(v57, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A408A38();
  }

  sub_26A408A38();
  v69 = type metadata accessor for TextProperty(0);
  __swift_storeEnumTagSinglePayload(v37, 0, 1, v69);
  OUTLINED_FUNCTION_222();
  sub_26A1077C4();
  sub_26A0E48F0(v37, &qword_28036CB30, &qword_26A426480);
  SummaryItemShortNumber.text3.getter();
  OUTLINED_FUNCTION_222();
  sub_26A10779C();
  sub_26A0E48F0(v19, &qword_28036CB28, &qword_26A427980);
  SummaryItemShortNumber.text4.getter();
  OUTLINED_FUNCTION_222();
  sub_26A10779C();
  sub_26A0E48F0(v19, &qword_28036CB28, &qword_26A427980);
  SummaryItemShortNumber.text5.getter();
  OUTLINED_FUNCTION_222();
  sub_26A1077C4();
  sub_26A0E48F0(v40, &qword_28036CB30, &qword_26A426480);
  SummaryItemShortNumber.text6.getter();
  OUTLINED_FUNCTION_222();
  sub_26A1077C4();
  sub_26A0E48F0(v40, &qword_28036CB30, &qword_26A426480);
  v70 = v88;
  SummaryItemShortNumber.thumbnail.getter();
  sub_26A107774();
  sub_26A0E48F0(v70, &qword_28036CB20, &unk_26A426470);
  v71 = v89;
  SummaryItemShortNumber.action.getter();
  sub_26A107670();
  sub_26A0E48F0(v71, &qword_28036CB18, &unk_26A427670);
  KeyPath = swift_getKeyPath();
  sub_26A0F7C78(KeyPath, 0x6E656E6F706D6F63, 0xED0000656D614E74, 1, v73, v74, v75, v76, v85, v86);

  v77 = swift_getKeyPath();
  sub_26A0F860C(v77, 0x6E6564496B6E696CLL, 0xEE00726569666974, 1, v78, v79, v80, v81, v85, v86);

  sub_26A0FE610();
  sub_26A0E48F0(v53, &qword_28036CD48, &qword_26A426828);
  OUTLINED_FUNCTION_175();
  OUTLINED_FUNCTION_75();
  result._object = v83;
  result._countAndFlagsBits = v82;
  return result;
}

uint64_t type metadata accessor for SummaryItemShortNumber()
{
  result = qword_280373C58;
  if (!qword_280373C58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A404DD8(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - v7;
  v9 = type metadata accessor for _ProtoTextProperty(0);
  v10 = OUTLINED_FUNCTION_12(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_18();
  v15 = v14 - v13;
  v16 = *(v1 + *(type metadata accessor for _ProtoSummaryItem_ShortNumber(0) + 20));
  v17 = *a1;
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_37(v8, 1, v9);
  if (v18)
  {
    *v15 = MEMORY[0x277D84F90];
    *(v15 + 8) = 0;
    v19 = v15 + v9[7];
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v20 = v9[8];
    v21 = type metadata accessor for _ProtoActionProperty();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v21);
    v25 = v9[9];
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v26, v27, v28, v21);
    OUTLINED_FUNCTION_37(v8, 1, v9);
    if (!v18)
    {
      sub_26A0E48F0(v8, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A408A38();
  }

  return sub_26A408A38();
}

void SummaryItemShortNumber.text3.getter()
{
  OUTLINED_FUNCTION_76();
  v4 = OUTLINED_FUNCTION_239(v3);
  v5 = type metadata accessor for _ProtoMultilineTextProperty(v4);
  v6 = OUTLINED_FUNCTION_12(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_7();
  v9 = OUTLINED_FUNCTION_41_2();
  v10 = OUTLINED_FUNCTION_41(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v13);
  v14 = OUTLINED_FUNCTION_20_34();
  OUTLINED_FUNCTION_241(v14);
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v15 = OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_62_1(v15, v16);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v17)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v18 = OUTLINED_FUNCTION_61_1();
      OUTLINED_FUNCTION_1_7(v18);
      if (!v17)
      {
        sub_26A0E48F0(v1, &qword_28036CAE0, &unk_26A4273F0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_61_18();
    }

    OUTLINED_FUNCTION_66_15();
    v2 = 0;
  }

  v19 = type metadata accessor for MultilineTextProperty(0);
  __swift_storeEnumTagSinglePayload(&qword_28036CAE0, v2, 1, v19);
  OUTLINED_FUNCTION_75();
}

void SummaryItemShortNumber.text4.getter()
{
  OUTLINED_FUNCTION_76();
  v4 = OUTLINED_FUNCTION_239(v3);
  v5 = type metadata accessor for _ProtoMultilineTextProperty(v4);
  v6 = OUTLINED_FUNCTION_12(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_7();
  v9 = OUTLINED_FUNCTION_41_2();
  v10 = OUTLINED_FUNCTION_41(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v13);
  v14 = OUTLINED_FUNCTION_20_34();
  OUTLINED_FUNCTION_241(v14);
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v15 = OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_62_1(v15, v16);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v17)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v18 = OUTLINED_FUNCTION_61_1();
      OUTLINED_FUNCTION_1_7(v18);
      if (!v17)
      {
        sub_26A0E48F0(v1, &qword_28036CAE0, &unk_26A4273F0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_61_18();
    }

    OUTLINED_FUNCTION_66_15();
    v2 = 0;
  }

  v19 = type metadata accessor for MultilineTextProperty(0);
  __swift_storeEnumTagSinglePayload(&qword_28036CAE0, v2, 1, v19);
  OUTLINED_FUNCTION_75();
}

void sub_26A4052AC()
{
  OUTLINED_FUNCTION_76();
  v3 = v2;
  v5 = OUTLINED_FUNCTION_239(v4);
  v6 = type metadata accessor for _ProtoTextProperty(v5);
  v7 = OUTLINED_FUNCTION_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_7();
  v10 = OUTLINED_FUNCTION_41_2();
  v11 = OUTLINED_FUNCTION_41(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v14);
  v15 = OUTLINED_FUNCTION_20_34();
  OUTLINED_FUNCTION_241(v15);
  v16 = *v3;
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v17 = OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_62_1(v17, v18);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v19)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v20 = OUTLINED_FUNCTION_61_1();
      OUTLINED_FUNCTION_1_7(v20);
      if (!v19)
      {
        sub_26A0E48F0(v1, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_61_18();
    }

    OUTLINED_FUNCTION_66_15();
    v3 = 0;
  }

  v21 = type metadata accessor for TextProperty(0);
  __swift_storeEnumTagSinglePayload(&qword_28036C7B8, v3, 1, v21);
  OUTLINED_FUNCTION_75();
}

void SummaryItemShortNumber.thumbnail.getter()
{
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_239(v3);
  v4 = type metadata accessor for _ProtoVisualProperty();
  v5 = OUTLINED_FUNCTION_12(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_7();
  v8 = OUTLINED_FUNCTION_41_2();
  v9 = OUTLINED_FUNCTION_41(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_20_34();
  OUTLINED_FUNCTION_241(v13);
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v14 = OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_62_1(v14, v15);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v16)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v17 = OUTLINED_FUNCTION_61_1();
      OUTLINED_FUNCTION_1_7(v17);
      if (!v16)
      {
        sub_26A0E48F0(v1, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      OUTLINED_FUNCTION_61_18();
    }

    OUTLINED_FUNCTION_66_15();
    v2 = 0;
  }

  v18 = type metadata accessor for VisualProperty();
  __swift_storeEnumTagSinglePayload(&qword_28036CAE8, v2, 1, v18);
  OUTLINED_FUNCTION_75();
}

void SummaryItemShortNumber.action.getter()
{
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_239(v4);
  v5 = type metadata accessor for _ProtoActionProperty();
  v6 = OUTLINED_FUNCTION_12(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_7();
  v9 = OUTLINED_FUNCTION_41_2();
  v10 = OUTLINED_FUNCTION_41(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v13);
  v14 = OUTLINED_FUNCTION_20_34();
  OUTLINED_FUNCTION_241(v14);
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v15 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v15, v16, &off_26A427400);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v17)
    {
      *v3 = MEMORY[0x277D84F90];
      v3[1] = 0;
      v3[2] = 0xE000000000000000;
      v18 = v3 + *(v5 + 24);
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_38_0();
      if (!v17)
      {
        sub_26A0E48F0(v1, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      OUTLINED_FUNCTION_61_18();
    }

    sub_26A408A38();
    v2 = 0;
  }

  v19 = type metadata accessor for ActionProperty();
  __swift_storeEnumTagSinglePayload(v20, v2, 1, v19);
  OUTLINED_FUNCTION_75();
}

uint64_t SummaryItemShortNumber.componentName.getter()
{
  v1 = (*(v0 + *(type metadata accessor for _ProtoSummaryItem_ShortNumber(0) + 20)) + OBJC_IVAR____TtCV10SnippetKit29_ProtoSummaryItem_ShortNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName);
  OUTLINED_FUNCTION_142();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t SummaryItemShortNumber.linkIdentifier.getter()
{
  v1 = (*(v0 + *(type metadata accessor for _ProtoSummaryItem_ShortNumber(0) + 20)) + OBJC_IVAR____TtCV10SnippetKit29_ProtoSummaryItem_ShortNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__linkIdentifier);
  OUTLINED_FUNCTION_142();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

void _ProtoSummaryItem_ShortNumber.redactedProto.getter()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v263 = type metadata accessor for _ProtoActionProperty();
  v2 = OUTLINED_FUNCTION_12(v263);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v8 = OUTLINED_FUNCTION_41(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v13);
  v260 = type metadata accessor for _ProtoVisualProperty();
  v14 = OUTLINED_FUNCTION_12(v260);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v20 = OUTLINED_FUNCTION_41(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v25);
  v257 = type metadata accessor for _ProtoMultilineTextProperty(0);
  v26 = OUTLINED_FUNCTION_12(v257);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  v34 = OUTLINED_FUNCTION_41(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v41);
  v42 = type metadata accessor for _ProtoTextProperty(0);
  v43 = OUTLINED_FUNCTION_12(v42);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v54);
  v56 = v245 - v55;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v58 = OUTLINED_FUNCTION_41(v57);
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v67);
  v69 = v245 - v68;
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v71);
  v73 = v245 - v72;
  MEMORY[0x28223BE20](v74);
  v76 = v245 - v75;
  OUTLINED_FUNCTION_11_43();
  sub_26A408EDC();
  v77 = *(type metadata accessor for _ProtoSummaryItem_ShortNumber(0) + 20);
  v262 = v1;
  v264 = v77;
  v78 = *(v1 + v77);
  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  LODWORD(v1) = OUTLINED_FUNCTION_32_5(v76);
  sub_26A0E48F0(v76, &qword_28036C7B8, &unk_26A425BF0);
  v79 = MEMORY[0x277D84F90];
  if (v1 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_48_0(v73);
    if (v80)
    {
      *v56 = v79;
      *(v56 + 4) = 0;
      v81 = &v56[v42[7]];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v82 = v42[8];
      OUTLINED_FUNCTION_15_45();
      v84 = *(v83 - 256);
      __swift_storeEnumTagSinglePayload(v85, v86, v87, v84);
      v88 = v42[9];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v89, v90, v91, v84);
      OUTLINED_FUNCTION_48_0(v73);
      if (!v80)
      {
        sub_26A0E48F0(v73, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A408A38();
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_1_69();
    sub_26A408A8C(v56, v92);
    v93 = v262;
    v94 = v264;
    v95 = *(v262 + v264);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v78 = *(v93 + v94);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v97 = type metadata accessor for _ProtoSummaryItem_ShortNumber._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v97);
      OUTLINED_FUNCTION_23_42();
      v78 = v98;
      *(v93 + v94) = v98;
    }

    OUTLINED_FUNCTION_129(&v281);
    sub_26A408A38();
    v99 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v99, v100, v101, v42);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_209();
  v102 = OUTLINED_FUNCTION_32_5(v69);
  OUTLINED_FUNCTION_162_0(v69);
  if (v102 == 1)
  {
    v103 = v262;
    v104 = v257;
  }

  else
  {
    OUTLINED_FUNCTION_128(&v258);
    sub_26A10FD9C();
    OUTLINED_FUNCTION_48_0(v102);
    v103 = v262;
    v104 = v257;
    if (v80)
    {
      v78 = v245[2];
      OUTLINED_FUNCTION_29_25();
      v105 = OUTLINED_FUNCTION_44_0(v42[8]);
      v106 = v263;
      __swift_storeEnumTagSinglePayload(v105, v107, v108, v263);
      v109 = OUTLINED_FUNCTION_44_0(v42[9]);
      __swift_storeEnumTagSinglePayload(v109, v110, v111, v106);
      OUTLINED_FUNCTION_48_0(v102);
      v112 = v264;
      if (!v80)
      {
        sub_26A0E48F0(v102, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_59_19(&v259);
      v112 = v264;
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_1_69();
    sub_26A408A8C(v78, v113);
    v114 = *(v103 + v112);
    v115 = swift_isUniquelyReferenced_nonNull_native();
    v78 = *(v103 + v112);
    if ((v115 & 1) == 0)
    {
      v116 = type metadata accessor for _ProtoSummaryItem_ShortNumber._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v116);
      OUTLINED_FUNCTION_23_42();
      OUTLINED_FUNCTION_244(v117);
    }

    OUTLINED_FUNCTION_27_31();
    v118 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v118, v119, v120, v42);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_26_4(&v276);
  OUTLINED_FUNCTION_32_5(&unk_28036E000);
  OUTLINED_FUNCTION_39_4();
  if (v102 != 1)
  {
    v121 = v245[4];
    sub_26A10FD9C();
    OUTLINED_FUNCTION_48_0(v121);
    v122 = v264;
    if (v80)
    {
      v102 = v246;
      *v246 = v79;
      *(v102 + 8) = 0;
      v123 = v102 + v42[7];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v124 = v42[8];
      OUTLINED_FUNCTION_15_45();
      v126 = *(v125 - 256);
      __swift_storeEnumTagSinglePayload(v127, v128, v129, v126);
      v130 = v42[9];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v131, v132, v133, v126);
      OUTLINED_FUNCTION_48_0(v121);
      if (!v80)
      {
        sub_26A0E48F0(v121, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_128(&v262);
      sub_26A408A38();
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_1_69();
    sub_26A408A8C(v102, v134);
    v135 = *(v103 + v122);
    v136 = swift_isUniquelyReferenced_nonNull_native();
    v78 = *(v103 + v122);
    if ((v136 & 1) == 0)
    {
      v137 = type metadata accessor for _ProtoSummaryItem_ShortNumber._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v137);
      OUTLINED_FUNCTION_23_42();
      OUTLINED_FUNCTION_244(v138);
    }

    OUTLINED_FUNCTION_27_31();
    v139 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v139, v140, v141, v42);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_26_4(&v277);
  __swift_getEnumTagSinglePayload(&unk_28036E000, 1, v104);
  OUTLINED_FUNCTION_39_4();
  if (v102 != 1)
  {
    v142 = v247;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v142, 1, v104);
    v143 = v264;
    if (v80)
    {
      v102 = v248;
      *v248 = v79;
      *(v102 + 8) = 0;
      v144 = v102 + v104[7];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v145 = v104[8];
      OUTLINED_FUNCTION_15_45();
      v147 = *(v146 - 256);
      __swift_storeEnumTagSinglePayload(v148, v149, v150, v147);
      v151 = v104[9];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v152, v153, v154, v147);
      OUTLINED_FUNCTION_37(v142, 1, v104);
      if (!v80)
      {
        sub_26A0E48F0(v142, &qword_28036CAE0, &unk_26A4273F0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_128(&v264);
      sub_26A408A38();
    }

    _ProtoMultilineTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_24_43();
    sub_26A408A8C(v102, v155);
    v156 = *(v103 + v143);
    v157 = swift_isUniquelyReferenced_nonNull_native();
    v78 = *(v103 + v143);
    if ((v157 & 1) == 0)
    {
      v158 = type metadata accessor for _ProtoSummaryItem_ShortNumber._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v158);
      OUTLINED_FUNCTION_23_42();
      OUTLINED_FUNCTION_244(v159);
    }

    OUTLINED_FUNCTION_129(v279);
    sub_26A408A38();
    v160 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v160, v161, v162, v104);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_26_4(&v278);
  __swift_getEnumTagSinglePayload(&unk_28036E000, 1, v104);
  OUTLINED_FUNCTION_39_4();
  if (v102 != 1)
  {
    OUTLINED_FUNCTION_128(&v265);
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v102, 1, v104);
    v163 = v264;
    if (v80)
    {
      v78 = v249;
      *v249 = v79;
      *(v78 + 8) = 0;
      v164 = v78 + v104[7];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v165 = OUTLINED_FUNCTION_44_0(v104[8]);
      OUTLINED_FUNCTION_58_20(v165, v166, v167);
      v168 = OUTLINED_FUNCTION_44_0(v104[9]);
      __swift_storeEnumTagSinglePayload(v168, v169, v170, &unk_26A4273F0);
      OUTLINED_FUNCTION_37(v102, 1, v104);
      if (!v80)
      {
        sub_26A0E48F0(v102, &qword_28036CAE0, &unk_26A4273F0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_59_19(&v266);
    }

    _ProtoMultilineTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_24_43();
    sub_26A408A8C(v78, v171);
    v172 = *(v103 + v163);
    v173 = swift_isUniquelyReferenced_nonNull_native();
    v78 = *(v103 + v163);
    if ((v173 & 1) == 0)
    {
      v174 = type metadata accessor for _ProtoSummaryItem_ShortNumber._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v174);
      OUTLINED_FUNCTION_23_42();
      OUTLINED_FUNCTION_244(v175);
    }

    OUTLINED_FUNCTION_129(v279);
    sub_26A408A38();
    v176 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v176, v177, v178, v104);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  v179 = v256;
  OUTLINED_FUNCTION_209();
  v180 = OUTLINED_FUNCTION_32_5(v179);
  OUTLINED_FUNCTION_162_0(v179);
  if (v180 != 1)
  {
    OUTLINED_FUNCTION_128(&v267);
    sub_26A10FD9C();
    OUTLINED_FUNCTION_48_0(v180);
    v181 = v264;
    if (v80)
    {
      v78 = v250;
      OUTLINED_FUNCTION_29_25();
      v182 = OUTLINED_FUNCTION_44_0(v42[8]);
      OUTLINED_FUNCTION_58_20(v182, v183, v184);
      v185 = OUTLINED_FUNCTION_44_0(v42[9]);
      __swift_storeEnumTagSinglePayload(v185, v186, v187, &unk_26A425BF0);
      OUTLINED_FUNCTION_48_0(v180);
      if (!v80)
      {
        sub_26A0E48F0(v180, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_59_19(&v268);
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_1_69();
    sub_26A408A8C(v78, v188);
    v189 = *(v103 + v181);
    v190 = swift_isUniquelyReferenced_nonNull_native();
    v78 = *(v103 + v181);
    if ((v190 & 1) == 0)
    {
      v191 = type metadata accessor for _ProtoSummaryItem_ShortNumber._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v191);
      OUTLINED_FUNCTION_23_42();
      OUTLINED_FUNCTION_244(v192);
    }

    OUTLINED_FUNCTION_27_31();
    v193 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v193, v194, v195, v42);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_26_4(&v280);
  OUTLINED_FUNCTION_32_5(&unk_28036E000);
  OUTLINED_FUNCTION_39_4();
  if (v180 == 1)
  {
    v196 = v263;
  }

  else
  {
    OUTLINED_FUNCTION_128(&v269);
    sub_26A10FD9C();
    OUTLINED_FUNCTION_48_0(v180);
    v197 = v264;
    if (v80)
    {
      v78 = v251;
      OUTLINED_FUNCTION_29_25();
      v198 = OUTLINED_FUNCTION_44_0(v42[8]);
      OUTLINED_FUNCTION_58_20(v198, v199, v200);
      v201 = OUTLINED_FUNCTION_44_0(v42[9]);
      __swift_storeEnumTagSinglePayload(v201, v202, v203, &unk_26A425BF0);
      OUTLINED_FUNCTION_48_0(v180);
      if (!v80)
      {
        sub_26A0E48F0(v180, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_59_19(&v270);
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_1_69();
    sub_26A408A8C(v78, v204);
    v205 = *(v103 + v197);
    v206 = swift_isUniquelyReferenced_nonNull_native();
    v78 = *(v103 + v197);
    v196 = v263;
    if ((v206 & 1) == 0)
    {
      v207 = type metadata accessor for _ProtoSummaryItem_ShortNumber._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v207);
      OUTLINED_FUNCTION_23_42();
      OUTLINED_FUNCTION_244(v208);
    }

    OUTLINED_FUNCTION_27_31();
    v209 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v209, v210, v211, v42);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  v212 = v259;
  OUTLINED_FUNCTION_209();
  v213 = v260;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v212, 1, v260);
  OUTLINED_FUNCTION_162_0(v212);
  if (EnumTagSinglePayload == 1)
  {
    v215 = v79;
    v216 = v196;
  }

  else
  {
    OUTLINED_FUNCTION_129(&v271);
    sub_26A10FD9C();
    OUTLINED_FUNCTION_48_0(&unk_26A426430);
    v217 = v264;
    if (v80)
    {
      v78 = v252;
      v215 = v79;
      OUTLINED_FUNCTION_29_25();
      v218 = OUTLINED_FUNCTION_44_0(*(v213 + 32));
      v216 = v196;
      __swift_storeEnumTagSinglePayload(v218, v219, v220, v196);
      v221 = OUTLINED_FUNCTION_44_0(*(v213 + 36));
      __swift_storeEnumTagSinglePayload(v221, v222, v223, v196);
      OUTLINED_FUNCTION_48_0(&unk_26A426430);
      if (!v80)
      {
        sub_26A0E48F0(&unk_26A426430, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      OUTLINED_FUNCTION_59_19(&v272);
      v215 = v79;
      v216 = v196;
    }

    _ProtoVisualProperty.redactedProto.getter();
    sub_26A408A8C(v78, type metadata accessor for _ProtoVisualProperty);
    v224 = *(v103 + v217);
    v225 = swift_isUniquelyReferenced_nonNull_native();
    v78 = *(v103 + v217);
    if ((v225 & 1) == 0)
    {
      v226 = type metadata accessor for _ProtoSummaryItem_ShortNumber._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v226);
      OUTLINED_FUNCTION_23_42();
      v78 = v227;
      *(v103 + v217) = v227;
    }

    OUTLINED_FUNCTION_129(&v273);
    sub_26A408A38();
    v228 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v228, v229, v230, v213);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  v231 = v261;
  OUTLINED_FUNCTION_209();
  v232 = __swift_getEnumTagSinglePayload(v231, 1, v216);
  OUTLINED_FUNCTION_162_0(v231);
  if (v232 != 1)
  {
    v233 = v253;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v233, 1, v216);
    v234 = v264;
    if (v80)
    {
      v78 = v254;
      *v254 = v215;
      *(v78 + 8) = 0;
      *(v78 + 16) = 0xE000000000000000;
      v235 = v78 + *(v216 + 24);
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_37(v233, 1, v216);
      v236 = v255;
      if (!v80)
      {
        sub_26A0E48F0(v233, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      OUTLINED_FUNCTION_59_19(&v274);
      v236 = v255;
    }

    _s10SnippetKit14ActionPropertyV13redactedProtoAA01_fcD0Vvg_0(v236);
    sub_26A408A8C(v78, type metadata accessor for _ProtoActionProperty);
    v237 = *(v103 + v234);
    v238 = swift_isUniquelyReferenced_nonNull_native();
    v239 = *(v103 + v234);
    if ((v238 & 1) == 0)
    {
      v240 = type metadata accessor for _ProtoSummaryItem_ShortNumber._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v240);
      sub_26A190CC8();
      *(v103 + v234) = v241;
    }

    OUTLINED_FUNCTION_129(&v275);
    sub_26A408A38();
    v242 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v242, v243, v244, v216);
    OUTLINED_FUNCTION_211();
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t SummaryItemShortNumber.init(number:text2:text1:text3:text4:text5:text6:thumbnail:action:componentName:linkIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_48_23();
  v20 = v13;
  v21 = v12;
  v22 = v14;
  type metadata accessor for _ProtoSummaryItem_ShortNumber(0);
  OUTLINED_FUNCTION_0_92();
  sub_26A408DB4(v15, v16);
  OUTLINED_FUNCTION_59_9();

  sub_26A0E48F0(a9, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(a8, &qword_28036CB00, &unk_26A426450);
  OUTLINED_FUNCTION_187_0(a7);
  OUTLINED_FUNCTION_187_0(v10);
  OUTLINED_FUNCTION_38_2(v9);
  OUTLINED_FUNCTION_38_2(v11);
  OUTLINED_FUNCTION_187_0(v20);
  __swift_destroy_boxed_opaque_existential_1(v21);
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_26A406F50(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v127 = a7;
  v128 = a8;
  v125 = a6;
  v120 = a5;
  v117 = a3;
  v118 = a4;
  v15 = type metadata accessor for ActionProperty();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v116 = &v105 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v132 = &v105 - v20;
  v131 = type metadata accessor for _ProtoActionProperty();
  v21 = *(*(v131 - 8) + 64);
  MEMORY[0x28223BE20](v131);
  v112 = &v105 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v113 = &v105 - v24;
  v25 = type metadata accessor for VisualProperty();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v115 = &v105 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v130 = &v105 - v30;
  v129 = type metadata accessor for _ProtoVisualProperty();
  v31 = *(*(v129 - 8) + 64);
  MEMORY[0x28223BE20](v129);
  v110 = &v105 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v111 = &v105 - v34;
  v35 = type metadata accessor for MultilineTextProperty(0);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35 - 8);
  v122 = &v105 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38 - 8);
  v123 = &v105 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v119 = &v105 - v42;
  v121 = type metadata accessor for _ProtoMultilineTextProperty(0);
  v43 = *(*(v121 - 8) + 64);
  MEMORY[0x28223BE20](v121);
  v107 = &v105 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v114 = &v105 - v46;
  MEMORY[0x28223BE20](v47);
  v106 = &v105 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49 - 8);
  v126 = &v105 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v124 = &v105 - v53;
  MEMORY[0x28223BE20](v54);
  v56 = &v105 - v55;
  v57 = type metadata accessor for _ProtoTextProperty(0);
  v58 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57);
  v109 = &v105 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v60);
  v108 = &v105 - v61;
  MEMORY[0x28223BE20](v62);
  v105 = &v105 - v63;
  MEMORY[0x28223BE20](v64);
  v66 = (&v105 - v65);
  v67 = type metadata accessor for TextProperty(0);
  v68 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67 - 8);
  v69 = a2[3];
  v70 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v69);
  (*(v70 + 8))(v69, v70);
  sub_26A408A38();
  _ProtoSummaryItem_ShortNumber.number.setter();
  v72 = v117[3];
  v71 = v117[4];
  __swift_project_boxed_opaque_existential_1(v117, v72);
  (*(v71 + 8))(v72, v71);
  sub_26A408A38();
  v117 = v66;
  _ProtoSummaryItem_ShortNumber.text2.setter();
  sub_26A10FD9C();
  v73 = v134;
  if (v134)
  {
    v74 = v135;
    __swift_project_boxed_opaque_existential_1(v133, v134);
    (*(v74 + 8))(v73, v74);
    sub_26A408A38();
    __swift_storeEnumTagSinglePayload(v56, 0, 1, v57);
    __swift_destroy_boxed_opaque_existential_1(v133);
    v75 = v57;
    if (__swift_getEnumTagSinglePayload(v56, 1, v57) != 1)
    {
      v76 = v105;
      sub_26A408A38();
      sub_26A408EDC();
      _ProtoSummaryItem_ShortNumber.text1.setter();
      sub_26A408A8C(v76, type metadata accessor for _ProtoTextProperty);
      goto LABEL_6;
    }
  }

  else
  {
    sub_26A0E48F0(v133, &qword_28036CB08, &unk_26A428720);
    __swift_storeEnumTagSinglePayload(v56, 1, 1, v57);
    v75 = v57;
  }

  sub_26A0E48F0(v56, &qword_28036C7B8, &unk_26A425BF0);
LABEL_6:
  v77 = v121;
  sub_26A10FD9C();
  v78 = v134;
  if (v134)
  {
    v79 = v135;
    __swift_project_boxed_opaque_existential_1(v133, v134);
    (*(v79 + 8))(v78, v79);
    v80 = v119;
    sub_26A408A38();
    __swift_storeEnumTagSinglePayload(v80, 0, 1, v77);
    __swift_destroy_boxed_opaque_existential_1(v133);
    if (__swift_getEnumTagSinglePayload(v80, 1, v77) != 1)
    {
      v81 = v106;
      sub_26A408A38();
      sub_26A408EDC();
      _ProtoSummaryItem_ShortNumber.text3.setter();
      sub_26A408A8C(v81, type metadata accessor for _ProtoMultilineTextProperty);
      goto LABEL_11;
    }
  }

  else
  {
    sub_26A0E48F0(v133, &qword_28036CB10, &unk_26A426460);
    v80 = v119;
    __swift_storeEnumTagSinglePayload(v119, 1, 1, v77);
  }

  sub_26A0E48F0(v80, &qword_28036CAE0, &unk_26A4273F0);
LABEL_11:
  sub_26A10FD9C();
  v82 = v134;
  if (v134)
  {
    v83 = v135;
    __swift_project_boxed_opaque_existential_1(v133, v134);
    (*(v83 + 8))(v82, v83);
    v84 = v123;
    sub_26A408A38();
    __swift_storeEnumTagSinglePayload(v84, 0, 1, v77);
    __swift_destroy_boxed_opaque_existential_1(v133);
    if (__swift_getEnumTagSinglePayload(v84, 1, v77) != 1)
    {
      v85 = v107;
      sub_26A408A38();
      sub_26A408EDC();
      _ProtoSummaryItem_ShortNumber.text4.setter();
      sub_26A408A8C(v85, type metadata accessor for _ProtoMultilineTextProperty);
      goto LABEL_16;
    }
  }

  else
  {
    sub_26A0E48F0(v133, &qword_28036CB10, &unk_26A426460);
    v84 = v123;
    __swift_storeEnumTagSinglePayload(v123, 1, 1, v77);
  }

  sub_26A0E48F0(v84, &qword_28036CAE0, &unk_26A4273F0);
LABEL_16:
  sub_26A10FD9C();
  v86 = v134;
  if (v134)
  {
    v87 = v135;
    __swift_project_boxed_opaque_existential_1(v133, v134);
    (*(v87 + 8))(v86, v87);
    v88 = v124;
    sub_26A408A38();
    __swift_storeEnumTagSinglePayload(v88, 0, 1, v75);
    __swift_destroy_boxed_opaque_existential_1(v133);
    if (__swift_getEnumTagSinglePayload(v88, 1, v75) != 1)
    {
      v89 = v108;
      sub_26A408A38();
      sub_26A408EDC();
      _ProtoSummaryItem_ShortNumber.text5.setter();
      sub_26A408A8C(v89, type metadata accessor for _ProtoTextProperty);
      goto LABEL_21;
    }
  }

  else
  {
    sub_26A0E48F0(v133, &qword_28036CB08, &unk_26A428720);
    v88 = v124;
    __swift_storeEnumTagSinglePayload(v124, 1, 1, v75);
  }

  sub_26A0E48F0(v88, &qword_28036C7B8, &unk_26A425BF0);
LABEL_21:
  sub_26A10FD9C();
  v90 = v134;
  if (v134)
  {
    v91 = v135;
    __swift_project_boxed_opaque_existential_1(v133, v134);
    (*(v91 + 8))(v90, v91);
    v92 = v126;
    sub_26A408A38();
    __swift_storeEnumTagSinglePayload(v92, 0, 1, v75);
    __swift_destroy_boxed_opaque_existential_1(v133);
    if (__swift_getEnumTagSinglePayload(v92, 1, v75) != 1)
    {
      v93 = v109;
      sub_26A408A38();
      sub_26A408EDC();
      _ProtoSummaryItem_ShortNumber.text6.setter();
      sub_26A408A8C(v93, type metadata accessor for _ProtoTextProperty);
      goto LABEL_26;
    }
  }

  else
  {
    sub_26A0E48F0(v133, &qword_28036CB08, &unk_26A428720);
    v92 = v126;
    __swift_storeEnumTagSinglePayload(v126, 1, 1, v75);
  }

  sub_26A0E48F0(v92, &qword_28036C7B8, &unk_26A425BF0);
LABEL_26:
  sub_26A10FD9C();
  v94 = v134;
  if (v134)
  {
    v95 = v135;
    __swift_project_boxed_opaque_existential_1(v133, v134);
    (*(v95 + 8))(v94, v95);
    v96 = v130;
    sub_26A408A38();
    v97 = v129;
    __swift_storeEnumTagSinglePayload(v96, 0, 1, v129);
    __swift_destroy_boxed_opaque_existential_1(v133);
    if (__swift_getEnumTagSinglePayload(v96, 1, v97) != 1)
    {
      v98 = v111;
      sub_26A408A38();
      sub_26A408EDC();
      _ProtoSummaryItem_ShortNumber.thumbnail.setter();
      sub_26A408A8C(v98, type metadata accessor for _ProtoVisualProperty);
      goto LABEL_31;
    }
  }

  else
  {
    sub_26A0E48F0(v133, &qword_28036CB00, &unk_26A426450);
    v96 = v130;
    __swift_storeEnumTagSinglePayload(v130, 1, 1, v129);
  }

  sub_26A0E48F0(v96, &qword_28036CAE8, &unk_26A426430);
LABEL_31:
  sub_26A10FD9C();
  v99 = v134;
  if (v134)
  {
    v100 = v135;
    __swift_project_boxed_opaque_existential_1(v133, v134);
    (*(v100 + 8))(v99, v100);
    v101 = v132;
    sub_26A408A38();
    v102 = v131;
    __swift_storeEnumTagSinglePayload(v101, 0, 1, v131);
    __swift_destroy_boxed_opaque_existential_1(v133);
    if (__swift_getEnumTagSinglePayload(v101, 1, v102) != 1)
    {
      v103 = v113;
      sub_26A408A38();
      sub_26A408EDC();
      _ProtoSummaryItem_ShortNumber.action.setter();
      sub_26A408A8C(v103, type metadata accessor for _ProtoActionProperty);
      goto LABEL_36;
    }
  }

  else
  {
    sub_26A0E48F0(v133, &qword_28036CAF8, &unk_26A426D30);
    v101 = v132;
    __swift_storeEnumTagSinglePayload(v132, 1, 1, v131);
  }

  sub_26A0E48F0(v101, &off_28036C7C0, &off_26A427400);
LABEL_36:

  result = _ProtoSummaryItem_ShortNumber.componentName.setter();
  if (a14)
  {

    return _ProtoSummaryItem_ShortNumber.linkIdentifier.setter();
  }

  return result;
}

void SummaryItemShortNumber.init(number:text2:text1:text3:text4:text5:thumbnail:action:componentName:linkIdentifier:)()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v3 = v2;
  v13 = v4;
  v14 = v5;
  v15 = v7;
  v16 = v6;
  v9 = v8;
  v17 = v8;
  v18 = v10;
  sub_26A0E5D68(v10, &v28);
  sub_26A0E5D68(v9, &v27);
  OUTLINED_FUNCTION_64_17();
  sub_26A10FD9C();
  sub_26A10FD9C();
  sub_26A10FD9C();
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  sub_26A10FD9C();
  sub_26A10FD9C();
  type metadata accessor for _ProtoSummaryItem_ShortNumber(0);
  OUTLINED_FUNCTION_0_92();
  sub_26A408DB4(v11, v12);
  OUTLINED_FUNCTION_59_9();

  sub_26A0E48F0(v1, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v3, &qword_28036CB00, &unk_26A426450);
  OUTLINED_FUNCTION_164_0(v13);
  sub_26A0E48F0(v14, &qword_28036CB10, &unk_26A426460);
  sub_26A0E48F0(v15, &qword_28036CB10, &unk_26A426460);
  OUTLINED_FUNCTION_164_0(v16);
  __swift_destroy_boxed_opaque_existential_1(v17);
  __swift_destroy_boxed_opaque_existential_1(v18);
  sub_26A0E48F0(v19, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v20, &qword_28036CB00, &unk_26A426450);
  OUTLINED_FUNCTION_164_0(v21);
  OUTLINED_FUNCTION_164_0(v23);
  sub_26A0E48F0(v24, &qword_28036CB10, &unk_26A426460);
  sub_26A0E48F0(&v25, &qword_28036CB10, &unk_26A426460);
  OUTLINED_FUNCTION_164_0(&v26);
  OUTLINED_FUNCTION_63_16();
  OUTLINED_FUNCTION_75();
}

void SummaryItemShortNumber.init(number:text2:text1:text3:text4:text5:thumbnail:action:componentName:)()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v3 = v2;
  v13 = v4;
  v14 = v5;
  v15 = v7;
  v16 = v6;
  v9 = v8;
  v17 = v8;
  v18 = v10;
  sub_26A0E5D68(v10, &v28);
  sub_26A0E5D68(v9, &v27);
  OUTLINED_FUNCTION_64_17();
  sub_26A10FD9C();
  sub_26A10FD9C();
  sub_26A10FD9C();
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  sub_26A10FD9C();
  sub_26A10FD9C();
  type metadata accessor for _ProtoSummaryItem_ShortNumber(0);
  OUTLINED_FUNCTION_0_92();
  sub_26A408DB4(v11, v12);
  OUTLINED_FUNCTION_59_9();

  sub_26A0E48F0(v1, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v3, &qword_28036CB00, &unk_26A426450);
  OUTLINED_FUNCTION_164_0(v13);
  OUTLINED_FUNCTION_52_18(v14);
  OUTLINED_FUNCTION_52_18(v15);
  OUTLINED_FUNCTION_164_0(v16);
  __swift_destroy_boxed_opaque_existential_1(v17);
  __swift_destroy_boxed_opaque_existential_1(v18);
  sub_26A0E48F0(v19, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v20, &qword_28036CB00, &unk_26A426450);
  OUTLINED_FUNCTION_164_0(v21);
  OUTLINED_FUNCTION_164_0(v23);
  OUTLINED_FUNCTION_52_18(v24);
  OUTLINED_FUNCTION_52_18(&v25);
  OUTLINED_FUNCTION_164_0(&v26);
  OUTLINED_FUNCTION_63_16();
  OUTLINED_FUNCTION_75();
}

void SummaryItemShortNumber.init(number:text2:text1:text3:text4:thumbnail:action:componentName:)()
{
  OUTLINED_FUNCTION_76();
  v4 = v3;
  OUTLINED_FUNCTION_48_23();
  v11 = v6;
  v12 = v5;
  v7 = v5;
  v13 = v8;
  sub_26A0E5D68(v8, &v24);
  sub_26A0E5D68(v7, &v23);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_32_2();
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  sub_26A10FD9C();
  sub_26A10FD9C();
  type metadata accessor for _ProtoSummaryItem_ShortNumber(0);
  OUTLINED_FUNCTION_0_92();
  sub_26A408DB4(v9, v10);
  sub_26A4249C4();

  sub_26A0E48F0(v4, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v1, &qword_28036CB00, &unk_26A426450);
  OUTLINED_FUNCTION_31_2(v0);
  OUTLINED_FUNCTION_31_2(v2);
  sub_26A0E48F0(v11, &qword_28036CB08, &unk_26A428720);
  __swift_destroy_boxed_opaque_existential_1(v12);
  __swift_destroy_boxed_opaque_existential_1(v13);
  sub_26A0E48F0(v14, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_38_2(v15);
  OUTLINED_FUNCTION_187_0(v16);
  OUTLINED_FUNCTION_187_0(v18);
  OUTLINED_FUNCTION_31_2(v20);
  OUTLINED_FUNCTION_31_2(&v21);
  OUTLINED_FUNCTION_187_0(&v22);
  OUTLINED_FUNCTION_63_16();
  OUTLINED_FUNCTION_75();
}

void SummaryItemShortNumber.init(number:text2:text1:text3:text4:thumbnail:action:)()
{
  OUTLINED_FUNCTION_76();
  v4 = v3;
  OUTLINED_FUNCTION_48_23();
  v6 = v5;
  v8 = v7;
  v12 = v7;
  v13 = v9;
  sub_26A0E5D68(v9, &v24);
  sub_26A0E5D68(v8, &v23);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_32_2();
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  sub_26A10FD9C();
  sub_26A10FD9C();
  type metadata accessor for _ProtoSummaryItem_ShortNumber(0);
  OUTLINED_FUNCTION_0_92();
  sub_26A408DB4(v10, v11);
  OUTLINED_FUNCTION_59_9();
  sub_26A0E48F0(v4, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v1, &qword_28036CB00, &unk_26A426450);
  OUTLINED_FUNCTION_31_2(v0);
  OUTLINED_FUNCTION_31_2(v2);
  sub_26A0E48F0(v6, &qword_28036CB08, &unk_26A428720);
  __swift_destroy_boxed_opaque_existential_1(v12);
  __swift_destroy_boxed_opaque_existential_1(v13);
  sub_26A0E48F0(v14, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_38_2(v15);
  OUTLINED_FUNCTION_187_0(v16);
  OUTLINED_FUNCTION_187_0(v18);
  OUTLINED_FUNCTION_31_2(v20);
  OUTLINED_FUNCTION_31_2(&v21);
  OUTLINED_FUNCTION_187_0(&v22);
  OUTLINED_FUNCTION_63_16();
  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A408A38()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t sub_26A408A8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t SummaryItemShortNumber.componentProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoSummaryItem_ShortNumber(0);
  v3 = OUTLINED_FUNCTION_41(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  v6 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v6);
  v10 = type metadata accessor for _ProtoResponse.Component(0);
  v11 = a1 + *(v10 + 20);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v12 = *(v10 + 24);
  type metadata accessor for _ProtoSeparators();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  OUTLINED_FUNCTION_11_43();
  sub_26A408EDC();
  sub_26A0E48F0(a1, &qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_26_36();
  sub_26A408A38();
  OUTLINED_FUNCTION_175();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v6);
}

uint64_t SummaryItemShortNumber.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for SummaryItemShortNumber();
  *(inited + 64) = &protocol witness table for SummaryItemShortNumber;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_25_34();
  sub_26A408EDC();
  OUTLINED_FUNCTION_142();

  sub_26A10BF5C(v1);
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A408DB4(&qword_28036CB48, type metadata accessor for _ProtoResponse.Section);
  sub_26A4249C4();

  swift_setDeallocating();
  return sub_26A10C358();
}

uint64_t sub_26A408DB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A408E70()
{
  result = type metadata accessor for _ProtoSummaryItem_ShortNumber(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A408EDC()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t OUTLINED_FUNCTION_20_34()
{

  return type metadata accessor for _ProtoSummaryItem_ShortNumber(0);
}

void OUTLINED_FUNCTION_23_42()
{

  sub_26A190CC8();
}

uint64_t OUTLINED_FUNCTION_27_31()
{
  v2 = *(v0 - 352);

  return sub_26A408A38();
}

uint64_t OUTLINED_FUNCTION_29_25()
{
  *v0 = v1;
  *(v0 + 8) = 0;
  v4 = v0 + *(v2 + 28);

  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t OUTLINED_FUNCTION_58_20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 - 344);

  return __swift_storeEnumTagSinglePayload(a1, a2, a3, v5);
}

uint64_t OUTLINED_FUNCTION_59_19@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return sub_26A408A38();
}

uint64_t OUTLINED_FUNCTION_61_18()
{

  return sub_26A408A38();
}

uint64_t OUTLINED_FUNCTION_63_16()
{
  __swift_destroy_boxed_opaque_existential_1((v0 - 168));

  return __swift_destroy_boxed_opaque_existential_1((v0 - 128));
}

uint64_t OUTLINED_FUNCTION_64_17()
{

  return sub_26A10FD9C();
}

uint64_t OUTLINED_FUNCTION_65_17()
{

  return type metadata accessor for _ProtoSummaryItem_ShortNumber(0);
}

uint64_t OUTLINED_FUNCTION_66_15()
{

  return sub_26A408A38();
}

void static Response.update(_:viewId:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26A424734();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(MEMORY[0x277D47B48]) init];
  sub_26A424724();
  v12 = sub_26A424714();
  v14 = v13;
  (*(v7 + 8))(v10, v6);
  sub_26A409538(v12, v14, v11);

  sub_26A40959C(a2, a3, v11);
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  v17 = (*(v16 + 16))(v15, v16);
  sub_26A4095F4(v17, v18, v11);
  if (qword_28036C5A0 != -1)
  {
    OUTLINED_FUNCTION_0_31();
  }

  v19 = sub_26A424AE4();
  __swift_project_value_buffer(v19, qword_2803A8950);
  v20 = v11;
  v21 = sub_26A424AD4();
  v22 = sub_26A424DE4();
  if (!os_log_type_enabled(v21, v22))
  {

    goto LABEL_7;
  }

  v23 = swift_slowAlloc();
  v24 = swift_slowAlloc();
  v33 = v24;
  *v23 = 136315138;
  v25 = sub_26A409668(v20);
  v27 = v26;

  if (v27 >> 60 != 15)
  {
    v28 = sub_26A424664();
    v30 = v29;
    sub_26A10E794(v25, v27);
    v31 = sub_26A0E8788(v28, v30, &v33);

    *(v23 + 4) = v31;
    _os_log_impl(&dword_26A0B8000, v21, v22, "Response+UpdateResponseCommand updateSnippet.stateData: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    OUTLINED_FUNCTION_1_21();
    OUTLINED_FUNCTION_1_21();
LABEL_7:

    return;
  }

  __break(1u);
}

void sub_26A409538(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_26A424B74();

  [a3 setAceId_];
}

void sub_26A40959C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_26A424B74();
  [a3 setViewId_];
}

void sub_26A4095F4(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = sub_26A4246B4();
  sub_26A0E4784(a1, a2);
  [a3 setStateData_];
}

uint64_t sub_26A409668(void *a1)
{
  v1 = [a1 stateData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_26A4246D4();

  return v3;
}

uint64_t static ImageElement.sources(_:idioms:)()
{
  type metadata accessor for _ProtoImageElement(0);
  OUTLINED_FUNCTION_0_93();
  sub_26A40B3F0(v0, v1);

  sub_26A4249C4();
}

uint64_t sub_26A409784(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v69 = a8;
  v9 = v8;
  v83 = a2;
  v84 = a4;
  v82 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3_46();
  v77 = v15;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v18);
  v70 = a5;
  v71 = &v65 - v19;
  v68 = *(a5 - 8);
  v20 = *(v68 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_17();
  v80 = (v22 - v23);
  MEMORY[0x28223BE20](v24);
  v78 = &v65 - v25;
  sub_26A424E44();
  OUTLINED_FUNCTION_3_46();
  v66 = v27;
  v67 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_17();
  v32 = v30 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = &v65 - v34;
  v36 = *(*(a4 - 1) + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_17();
  v79 = v38 - v39;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_3_46();
  v76 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_18();
  v75 = v46 - v45;
  v74 = a6;
  v85 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3_46();
  v72 = v47;
  v49 = *(v48 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v50);
  v52 = &v65 - v51;
  v53 = sub_26A424CF4();
  v86 = sub_26A424F74();
  v81 = sub_26A424F84();
  sub_26A424F54();
  (*(v76 + 16))(v75, v73, a3);
  v84 = v52;
  v76 = a3;
  result = sub_26A424CE4();
  if (v53 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v53)
  {
    v55 = (v77 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_26A424E54();
      result = __swift_getEnumTagSinglePayload(v35, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v82(v35, v78);
      if (v9)
      {
        v63 = OUTLINED_FUNCTION_10_57();
        v64(v63);

        (*(v68 + 32))(v69, v78, v70);
        return (*v55)(v35, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v55)(v35, AssociatedTypeWitness);
      sub_26A424F64();
      if (!--v53)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v56 = (v77 + 32);
  v57 = (v77 + 8);
  v58 = v71;
  while (1)
  {
    sub_26A424E54();
    if (__swift_getEnumTagSinglePayload(v32, 1, AssociatedTypeWitness) == 1)
    {
      v59 = OUTLINED_FUNCTION_10_57();
      v60(v59);
      (*(v66 + 8))(v32, v67);
      return v86;
    }

    (*v56)(v58, v32, AssociatedTypeWitness);
    v82(v58, v80);
    if (v9)
    {
      break;
    }

    v9 = 0;
    (*v57)(v58, AssociatedTypeWitness);
    sub_26A424F64();
  }

  (*v57)(v58, AssociatedTypeWitness);
  v61 = OUTLINED_FUNCTION_10_57();
  v62(v61);

  return (*(v68 + 32))(v69, v80, v70);
}

void *ImageElement.idioms.getter()
{
  if (*(*(v0 + 8) + 16))
  {
  }

  else
  {
    return &unk_287B013E0;
  }
}

uint64_t static ImageElement.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  ImageElement.sourceTypes.getter();
  ImageElement.sourceTypes.getter();
  sub_26A0DF644();
  v5 = v4;

  if ((v5 & 1) == 0)
  {
    return 0;
  }

  if (*(*(a1 + 8) + 16))
  {
  }

  else
  {
    v6 = &unk_287B013E0;
  }

  v8 = sub_26A10BE7C(v6);
  if (*(*(a2 + 8) + 16))
  {
  }

  else
  {
    v9 = &unk_287B013E0;
  }

  v10 = sub_26A10BE7C(v9);
  v11 = sub_26A290AE0(v8, v10);

  return v11 & 1;
}

Swift::String __swiftcall ImageElement.description(redacted:)(Swift::Bool redacted)
{
  v2 = type metadata accessor for ImageElement();
  v3 = OUTLINED_FUNCTION_12(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_17();
  v8 = (v6 - v7);
  MEMORY[0x28223BE20](v9);
  v11 = (&v34 - v10);
  MEMORY[0x28223BE20](v12);
  v14 = &v34 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CC20, &unk_26A426680);
  OUTLINED_FUNCTION_12(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v18);
  v20 = &v34 - v19;
  OUTLINED_FUNCTION_1_70();
  sub_26A40B438();
  if (redacted)
  {
    sub_26A40B438();
    if (qword_28036C790 != -1)
    {
      OUTLINED_FUNCTION_24_36();
    }

    __swift_project_value_buffer(v2, qword_2803A8980);
    OUTLINED_FUNCTION_1_70();
    sub_26A40B438();
    v21 = *v8;

    OUTLINED_FUNCTION_7_34();
    sub_26A40B48C(v8, v22);
    v23 = *v11;

    *v11 = v21;
  }

  else
  {
    sub_26A40B438();
  }

  sub_26A40B21C();
  v20[*(v15 + 32)] = redacted;
  OUTLINED_FUNCTION_2_59();
  sub_26A40B48C(v14, v24);
  *&v20[*(v15 + 28)] = MEMORY[0x277D84F90];
  ImageElement.sourceTypes.getter();
  sub_26A3A1D60(v25, 0, 0, 0);

  KeyPath = swift_getKeyPath();
  sub_26A28FC84(KeyPath, 0x736D6F696469, 0xE600000000000000);

  sub_26A0F8D00();
  v28 = v27;
  v30 = v29;
  sub_26A0E48F0(v20, &qword_28036CC20, &unk_26A426680);
  v31 = v28;
  v32 = v30;
  result._object = v32;
  result._countAndFlagsBits = v31;
  return result;
}

uint64_t sub_26A40A188@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for ImageElement();
  v3 = OUTLINED_FUNCTION_12(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  v8 = (v7 - v6);
  OUTLINED_FUNCTION_6_42();
  sub_26A40B438();
  if (qword_28036C790 != -1)
  {
    OUTLINED_FUNCTION_24_36();
  }

  __swift_project_value_buffer(v2, qword_2803A8980);
  OUTLINED_FUNCTION_1_70();
  sub_26A40B438();
  v9 = *v8;

  OUTLINED_FUNCTION_7_34();
  sub_26A40B48C(v8, v10);
  v11 = *a1;

  *a1 = v9;
  return result;
}

void ImageElement.sourceTypes.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D980, &qword_26A432970);
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v5);
  v7 = &v41 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D510, &qword_26A4283C8);
  OUTLINED_FUNCTION_41(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v11);
  v13 = &v41 - v12;
  v14 = type metadata accessor for ImageElement.SourceType(0);
  OUTLINED_FUNCTION_3_46();
  v44 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_17();
  v45 = v19 - v20;
  MEMORY[0x28223BE20](v21);
  v43 = &v41 - v22;
  v23 = 0;
  v24 = *v0;
  v25 = *(*v0 + 16);
  v46 = MEMORY[0x277D84F90];
  while (v25 != v23)
  {
    if (v23 >= *(v24 + 16))
    {
      __break(1u);
      return;
    }

    v26 = type metadata accessor for _ProtoImageElement.Source(0);
    OUTLINED_FUNCTION_21_2(v26);
    v28 = v27;
    v30 = v29;
    v31 = v24 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
    v32 = *(v30 + 72);
    sub_26A40B438();
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v26);
    sub_26A10FD9C();
    sub_26A3E29E8();
    sub_26A0E48F0(v7, &qword_28036D980, &qword_26A432970);
    if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
    {
      sub_26A0E48F0(v13, &qword_28036D510, &qword_26A4283C8);
      ++v23;
    }

    else
    {
      v42 = type metadata accessor for ImageElement.SourceType;
      sub_26A40B21C();
      sub_26A40B21C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26A166A28(0, *(v46 + 16) + 1, 1, v46);
        v46 = v39;
      }

      v34 = *(v46 + 16);
      v33 = *(v46 + 24);
      v35 = (v34 + 1);
      if (v34 >= v33 >> 1)
      {
        v42 = (v34 + 1);
        sub_26A166A28(v33 > 1, v34 + 1, 1, v46);
        v35 = v42;
        v46 = v40;
      }

      ++v23;
      v36 = v46;
      *(v46 + 16) = v35;
      v37 = v36 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
      v38 = *(v44 + 72);
      sub_26A40B21C();
    }
  }
}

uint64_t sub_26A40A620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for _ProtoImageElement(0);
  sub_26A40B3F0(qword_281579A98, type metadata accessor for _ProtoImageElement);
  sub_26A4249C4();

  return (*(*(a3 - 8) + 8))(a1, a3);
}

uint64_t sub_26A40A718(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for _ProtoImageElement.Source(0);
  v10 = sub_26A409784(sub_26A40A7D8, 0, a4, v8, MEMORY[0x277D84A98], a5, MEMORY[0x277D84AC0], v9);
  v11 = *a1;

  *a1 = v10;

  v13 = sub_26A419264(v12);
  v14 = a1[1];

  a1[1] = v13;
  return result;
}

uint64_t static ImageElement.sources<A>(_:idioms:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_3_46();
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18();
  v10 = v9 - v8;
  (*(v11 + 16))(v9 - v8);

  return sub_26A40A620(v10, a2, a3);
}

uint64_t ImageElement.hash(into:)()
{
  type metadata accessor for _ProtoImageElement(0);
  OUTLINED_FUNCTION_0_93();
  sub_26A40B3F0(v0, v1);

  return sub_26A424B44();
}

uint64_t ImageElement.hashValue.getter()
{
  sub_26A425504();
  type metadata accessor for _ProtoImageElement(0);
  OUTLINED_FUNCTION_0_93();
  sub_26A40B3F0(v0, v1);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A40A9CC()
{
  sub_26A425504();
  type metadata accessor for _ProtoImageElement(0);
  sub_26A40B3F0(&qword_280370948, type metadata accessor for _ProtoImageElement);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t Array<A>.sourceTypes(for:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageElement();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v40 - v8);
  v10 = v40 - v9;
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v19 = v40 - v18;
  v20 = *(a2 + 16);
  if (!v20)
  {
    return MEMORY[0x277D84F90];
  }

  v42 = v16;
  v43 = v14;
  v40[0] = v13;
  v40[1] = v17;
  v21 = *a1;
  v22 = *(a1 + 8);
  v23 = a2 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v24 = *(v15 + 72);
  v40[2] = v23;
  v41 = v20;
  do
  {
    sub_26A40B438();
    v25 = *(v10 + 1);
    if (v25[2])
    {
      v26 = *(v10 + 1);
    }

    else
    {
      v25 = &unk_287B02710;
    }

    v27 = sub_26A165034(v21, v22, v25);

    if (v27)
    {
      sub_26A40B21C();
LABEL_20:
      sub_26A40B21C();
      ImageElement.sourceTypes.getter();
      v29 = v37;
      OUTLINED_FUNCTION_2_59();
      sub_26A40B48C(v19, v38);
      return v29;
    }

    sub_26A40B48C(v10, type metadata accessor for ImageElement);
    v23 += v24;
    --v20;
  }

  while (v20);
  v28 = 0;
  v29 = MEMORY[0x277D84F90];
  v31 = v41;
  v30 = v42;
  do
  {
    OUTLINED_FUNCTION_1_70();
    sub_26A40B438();
    if (*(*(v30 + 8) + 16))
    {
    }

    else
    {
      v32 = &unk_287B02740;
    }

    ++v28;
    v33 = v32[2] + 1;
    v34 = 4;
    while (--v33)
    {
      v35 = v32[v34];
      v34 += 2;
      if (!v35)
      {

        sub_26A40B21C();
        v19 = v40[0];
        goto LABEL_20;
      }
    }

    OUTLINED_FUNCTION_2_59();
    sub_26A40B48C(v30, v36);
  }

  while (v28 != v31);
  return v29;
}

uint64_t sub_26A40AD94()
{
  v0 = type metadata accessor for ImageElement.Symbol(0);
  v1 = OUTLINED_FUNCTION_41(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_18();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D4D0, &qword_26A428230);
  v8 = OUTLINED_FUNCTION_41(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = v41 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBA0, &qword_26A4265B0);
  v18 = OUTLINED_FUNCTION_41(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_17();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = v41 - v25;
  v27 = type metadata accessor for ImageElement();
  __swift_allocate_value_buffer(v27, qword_2803A8980);
  v28 = OUTLINED_FUNCTION_175();
  v41[1] = __swift_project_value_buffer(v28, v29);
  v30 = type metadata accessor for Color();
  __swift_storeEnumTagSinglePayload(v26, 1, 1, v30);
  v31 = type metadata accessor for ImageElement.Background(0);
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v31);
  v41[0] = sub_26A217578(&unk_287B01508);
  sub_26A10FD9C();
  sub_26A10FD9C();
  type metadata accessor for _ProtoImageElement.Symbol(0);
  strcpy(v42, "slash.circle");
  HIBYTE(v42[6]) = 0;
  v42[7] = -5120;
  v43 = 0;
  v44 = 0;
  v45 = v23;
  v46 = 0;
  v47 = v13;
  sub_26A40B3F0(qword_281579E68, type metadata accessor for _ProtoImageElement.Symbol);
  sub_26A4249C4();
  sub_26A0E48F0(v13, &qword_28036D4D0, &qword_26A428230);
  sub_26A0E48F0(v23, &qword_28036CBA0, &qword_26A4265B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CFB8, &qword_26A426BE0);
  v32 = type metadata accessor for ImageElement.SourceType(0);
  OUTLINED_FUNCTION_21_2(v32);
  v34 = *(v33 + 72);
  v36 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_26A426410;
  sub_26A40B438();
  swift_storeEnumTagMultiPayload();
  v48 = v37;
  type metadata accessor for _ProtoImageElement(0);
  v41[4] = &v48;
  v41[5] = v41[0];
  OUTLINED_FUNCTION_0_93();
  sub_26A40B3F0(v38, v39);
  sub_26A4249C4();

  sub_26A40B48C(v6, type metadata accessor for ImageElement.Symbol);
  sub_26A0E48F0(v16, &qword_28036D4D0, &qword_26A428230);
  sub_26A0E48F0(v26, &qword_28036CBA0, &qword_26A4265B0);
  swift_setDeallocating();
  return sub_26A10C318();
}

uint64_t type metadata accessor for ImageElement()
{
  result = qword_28157AF38;
  if (!qword_28157AF38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A40B21C()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t sub_26A40B328()
{
  result = type metadata accessor for _ProtoImageElement(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A40B3F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A40B438()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t sub_26A40B48C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_10_57()
{
  v1 = *(*(v0 - 200) + 8);
  result = *(v0 - 104);
  v3 = *(v0 - 96);
  return result;
}

uint64_t OUTLINED_FUNCTION_16_31()
{

  return type metadata accessor for _ProtoImageElement(0);
}

uint64_t CodableIntentResponse.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  type metadata accessor for CodableIntentResponse.CodingKeys();
  OUTLINED_FUNCTION_0_94();
  swift_getWitnessTable();
  v5 = sub_26A425084();
  v6 = OUTLINED_FUNCTION_24(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26A425574();
  if (!v2)
  {
    sub_26A0E718C();
    sub_26A425054();
    sub_26A40BFD0();
    v12 = sub_26A424E24();
    v22 = v12;
    if (v12)
    {
      v24 = OUTLINED_FUNCTION_6_0();
      v25(v24);
      sub_26A0E4784(v27, v28);
      goto LABEL_8;
    }

    type metadata accessor for CodableIntentResponse.Error();
    swift_getWitnessTable();
    v3 = swift_allocError();
    swift_willThrow();
    sub_26A0E4784(v27, v28);
    v10 = OUTLINED_FUNCTION_6_0();
    v11(v10);
  }

  if (qword_28036C5A0 != -1)
  {
    swift_once();
  }

  v13 = sub_26A424AE4();
  __swift_project_value_buffer(v13, qword_2803A8950);
  v14 = v3;
  v15 = sub_26A424AD4();
  v16 = sub_26A424E04();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v27 = v18;
    *v17 = 136315138;
    swift_getErrorValue();
    v19 = sub_26A4254B4();
    v21 = sub_26A0E8788(v19, v20, &v27);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_26A0B8000, v15, v16, "Failed to decode Intent; creating an empty Intent instead. Error: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x26D65C950](v18, -1, -1);
    MEMORY[0x26D65C950](v17, -1, -1);
  }

  v22 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
LABEL_8:
  *a2 = v22;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CodableIntentResponse.encode(to:)(void *a1, uint64_t a2)
{
  v28[2] = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 16);
  type metadata accessor for CodableIntentResponse.CodingKeys();
  OUTLINED_FUNCTION_0_94();
  swift_getWitnessTable();
  v6 = sub_26A425184();
  v26 = OUTLINED_FUNCTION_24(v6);
  v27 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v26);
  v11 = &v25 - v10;
  v12 = *v2;
  v13 = objc_opt_self();
  v28[0] = 0;
  v14 = [v13 archivedDataWithRootObject:v12 requiringSecureCoding:1 error:v28];
  v15 = v28[0];
  if (v14)
  {
    v16 = sub_26A4246D4();
    v25 = v3;
    v17 = v16;
    v19 = v18;

    v20 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_26A425594();
    v28[0] = v17;
    v28[1] = v19;
    sub_26A0E70D4();
    v21 = v26;
    sub_26A425154();
    (*(v27 + 8))(v11, v21);
    result = sub_26A0E4784(v17, v19);
  }

  else
  {
    v23 = v15;
    sub_26A4245B4();

    result = swift_willThrow();
  }

  v24 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL sub_26A40BBA8()
{
  v0 = sub_26A424FE4();

  return v0 != 0;
}

uint64_t sub_26A40BBF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_26A40BC68(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_26A40BCD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_26A40BD44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

BOOL sub_26A40BDB4@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26A40BBA8();
  *a2 = result;
  return result;
}

uint64_t sub_26A40BDE8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26A40BBF0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_26A40BE14(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_26A40BE68(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t CodableIntentResponse.Error.hashValue.getter()
{
  sub_26A425504();
  MEMORY[0x26D65C340](0);
  return sub_26A425554();
}

uint64_t sub_26A40BF60()
{
  sub_26A425504();
  CodableIntentResponse.Error.hash(into:)();
  return sub_26A425554();
}

unint64_t sub_26A40BFD0()
{
  result = qword_28036CA00;
  if (!qword_28036CA00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28036CA00);
  }

  return result;
}

uint64_t sub_26A40C048()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

_BYTE *sub_26A40C09C(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

void sub_26A40C1A8(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  if (*(a1 + 8) == 1)
  {
    v3 = *a1 != 0;
  }

  else
  {
    if (qword_28036C5A0 != -1)
    {
      swift_once();
    }

    v4 = sub_26A424AE4();
    __swift_project_value_buffer(v4, qword_2803A8950);
    v5 = sub_26A424AD4();
    v6 = sub_26A424E04();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_26A0B8000, v5, v6, "Unrecognized ContentMode, defaulting to fit", v7, 2u);
      MEMORY[0x26D65C950](v7, -1, -1);
    }

    v3 = 0;
  }

  *a2 = v3;
}

uint64_t ImageElement.ContentMode.description.getter()
{
  if (*v0)
  {
    result = 1819044198;
  }

  else
  {
    result = 7629158;
  }

  *v0;
  return result;
}

uint64_t ImageElement.ContentMode.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_26A40C2FC()
{
  result = qword_280373DF0;
  if (!qword_280373DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280373DF0);
  }

  return result;
}

uint64_t sub_26A40C368@<X0>(uint64_t *a1@<X8>)
{
  result = ImageElement.ContentMode.rawValue.getter();
  *a1 = result;
  return result;
}

_BYTE *_s11ContentModeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

Swift::String __swiftcall ReferenceRich.description(redacted:)(Swift::Bool redacted)
{
  OUTLINED_FUNCTION_76();
  v72 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB18, &unk_26A427670);
  OUTLINED_FUNCTION_41(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  v74 = &v72 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB20, &unk_26A426470);
  OUTLINED_FUNCTION_41(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v13);
  v73 = &v72 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v18);
  v20 = &v72 - v19;
  v21 = type metadata accessor for _ProtoTextProperty(0);
  v22 = OUTLINED_FUNCTION_12(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_4_7();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB30, &qword_26A426480);
  v26 = OUTLINED_FUNCTION_41(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_17();
  v31 = v29 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v72 - v33;
  v35 = type metadata accessor for ReferenceRich();
  v36 = OUTLINED_FUNCTION_41(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v39);
  v41 = &v72 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD08, &qword_26A426798);
  OUTLINED_FUNCTION_12(v42);
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v45);
  v47 = &v72 - v46;
  OUTLINED_FUNCTION_11_44();
  sub_26A40ECC4();
  if (v4)
  {
    _ProtoReference_Rich.redactedProto.getter();
  }

  else
  {
    sub_26A40ECC4();
  }

  sub_26A40E838();
  v47[*(v42 + 32)] = v4 & 1;
  sub_26A40E88C(v41, type metadata accessor for ReferenceRich);
  v48 = MEMORY[0x277D84F90];
  *&v47[*(v42 + 28)] = MEMORY[0x277D84F90];
  v49 = *&v47[*(type metadata accessor for _ProtoReference_Rich(0) + 20)];
  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_37(v20, 1, v21);
  if (v50)
  {
    *v2 = v48;
    *(v2 + 8) = 0;
    v51 = v2 + v21[7];
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v52 = v21[8];
    v53 = type metadata accessor for _ProtoActionProperty();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v54, v55, v56, v53);
    v57 = v21[9];
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v58, v59, v60, v53);
    OUTLINED_FUNCTION_37(v20, 1, v21);
    if (!v50)
    {
      sub_26A0E48F0(v20, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A40E838();
  }

  sub_26A40E838();
  v61 = type metadata accessor for TextProperty(0);
  __swift_storeEnumTagSinglePayload(v34, 0, 1, v61);
  sub_26A1089E4();
  sub_26A0E48F0(v34, &qword_28036CB30, &qword_26A426480);
  ReferenceRich.text2.getter();
  sub_26A1089E4();
  sub_26A0E48F0(v31, &qword_28036CB30, &qword_26A426480);
  v62 = v73;
  ReferenceRich.thumbnail.getter();
  sub_26A1089BC();
  sub_26A0E48F0(v62, &qword_28036CB20, &unk_26A426470);
  v63 = v74;
  ReferenceRich.action.getter();
  sub_26A1088B8();
  sub_26A0E48F0(v63, &qword_28036CB18, &unk_26A427670);
  KeyPath = swift_getKeyPath();
  sub_26A0F7E58(KeyPath, 0x6E656E6F706D6F63, 0xED0000656D614E74, 1, v65, v66, v67, v68, v72, v73);

  sub_26A100140();
  sub_26A0E48F0(v47, &qword_28036CD08, &qword_26A426798);
  OUTLINED_FUNCTION_175();
  OUTLINED_FUNCTION_75();
  result._object = v70;
  result._countAndFlagsBits = v69;
  return result;
}

uint64_t type metadata accessor for ReferenceRich()
{
  result = qword_280373DF8;
  if (!qword_280373DF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ReferenceRich.text1.getter()
{
  v1 = OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_41(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v6 = &v26 - v5;
  v7 = type metadata accessor for _ProtoTextProperty(0);
  v8 = OUTLINED_FUNCTION_12(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v0 + *(type metadata accessor for _ProtoReference_Rich(0) + 20));
  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_37(v6, 1, v7);
  if (v14)
  {
    *v12 = MEMORY[0x277D84F90];
    *(v12 + 4) = 0;
    v15 = &v12[v7[7]];
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v16 = v7[8];
    v17 = type metadata accessor for _ProtoActionProperty();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v17);
    v21 = v7[9];
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v17);
    OUTLINED_FUNCTION_37(v6, 1, v7);
    if (!v14)
    {
      sub_26A0E48F0(v6, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A40E838();
  }

  return sub_26A40E838();
}

void ReferenceRich.text2.getter()
{
  OUTLINED_FUNCTION_76();
  v27 = v3;
  v4 = type metadata accessor for _ProtoTextProperty(0);
  v5 = OUTLINED_FUNCTION_12(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_7();
  v8 = OUTLINED_FUNCTION_41_2();
  v9 = OUTLINED_FUNCTION_41(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_93_0();
  v13 = *(v0 + *(type metadata accessor for _ProtoReference_Rich(0) + 20));
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v14 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v14, v15, &unk_26A425BF0);
  if (v0 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_38_0();
    if (v16)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v17 = *(v4 + 32);
      v18 = type metadata accessor for _ProtoActionProperty();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v19, v20, v21, v18);
      v22 = *(v4 + 36);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v23, v24, v25, v18);
      OUTLINED_FUNCTION_38_0();
      if (!v16)
      {
        sub_26A0E48F0(v1, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A40E838();
    }

    sub_26A40E838();
    v2 = 0;
  }

  v26 = type metadata accessor for TextProperty(0);
  __swift_storeEnumTagSinglePayload(v27, v2, 1, v26);
  OUTLINED_FUNCTION_75();
}

void ReferenceRich.thumbnail.getter()
{
  OUTLINED_FUNCTION_76();
  v27 = v3;
  v4 = type metadata accessor for _ProtoVisualProperty();
  v5 = OUTLINED_FUNCTION_12(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_7();
  v8 = OUTLINED_FUNCTION_41_2();
  v9 = OUTLINED_FUNCTION_41(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_93_0();
  v13 = *(v0 + *(type metadata accessor for _ProtoReference_Rich(0) + 20));
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v14 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v14, v15, &unk_26A426430);
  if (v0 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_38_0();
    if (v16)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v17 = *(v4 + 32);
      v18 = type metadata accessor for _ProtoActionProperty();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v19, v20, v21, v18);
      v22 = *(v4 + 36);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v23, v24, v25, v18);
      OUTLINED_FUNCTION_38_0();
      if (!v16)
      {
        sub_26A0E48F0(v1, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      sub_26A40E838();
    }

    sub_26A40E838();
    v2 = 0;
  }

  v26 = type metadata accessor for VisualProperty();
  __swift_storeEnumTagSinglePayload(v27, v2, 1, v26);
  OUTLINED_FUNCTION_75();
}

void ReferenceRich.action.getter()
{
  OUTLINED_FUNCTION_76();
  v20 = v4;
  v5 = type metadata accessor for _ProtoActionProperty();
  v6 = OUTLINED_FUNCTION_12(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_7();
  v9 = OUTLINED_FUNCTION_41_2();
  v10 = OUTLINED_FUNCTION_41(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_93_0();
  v14 = *(v0 + *(type metadata accessor for _ProtoReference_Rich(0) + 20));
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v15 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v15, v16, &off_26A427400);
  if (v0 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_38_0();
    if (v17)
    {
      *v3 = MEMORY[0x277D84F90];
      v3[1] = 0;
      v3[2] = 0xE000000000000000;
      v18 = v3 + *(v5 + 24);
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_38_0();
      if (!v17)
      {
        sub_26A0E48F0(v1, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      sub_26A40E838();
    }

    sub_26A40E838();
    v2 = 0;
  }

  v19 = type metadata accessor for ActionProperty();
  __swift_storeEnumTagSinglePayload(v20, v2, 1, v19);
  OUTLINED_FUNCTION_75();
}

uint64_t ReferenceRich.componentName.getter()
{
  v1 = (*(v0 + *(type metadata accessor for _ProtoReference_Rich(0) + 20)) + OBJC_IVAR____TtCV10SnippetKit20_ProtoReference_RichP33_6651C9A5DAA023CDF6F3DE60C332CBAD13_StorageClass__componentName);
  OUTLINED_FUNCTION_142();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

void _ProtoReference_Rich.redactedProto.getter()
{
  OUTLINED_FUNCTION_76();
  v49 = v1;
  v149 = type metadata accessor for _ProtoActionProperty();
  v2 = OUTLINED_FUNCTION_12(v149);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_48();
  v144 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v8 = OUTLINED_FUNCTION_41(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_48();
  v148 = v13;
  v147 = type metadata accessor for _ProtoVisualProperty();
  v14 = OUTLINED_FUNCTION_12(v147);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_48();
  v142 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v20 = OUTLINED_FUNCTION_41(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_48();
  v146 = v25;
  v26 = type metadata accessor for _ProtoTextProperty(0);
  v27 = OUTLINED_FUNCTION_12(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_93_0();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v34 = OUTLINED_FUNCTION_41(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v37);
  v39 = v139 - v38;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v41);
  v43 = v139 - v42;
  MEMORY[0x28223BE20](v44);
  v46 = v139 - v45;
  OUTLINED_FUNCTION_3_68();
  sub_26A40ECC4();
  v47 = *(type metadata accessor for _ProtoReference_Rich(0) + 20);
  v150 = v49;
  v151 = v47;
  v48 = *(v49 + v47);
  LODWORD(v49) = OBJC_IVAR____TtCV10SnippetKit20_ProtoReference_RichP33_6651C9A5DAA023CDF6F3DE60C332CBAD13_StorageClass__text1;
  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v46, 1, v26);
  sub_26A0E48F0(v46, &qword_28036C7B8, &unk_26A425BF0);
  if (EnumTagSinglePayload != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v43, 1, v26);
    if (v51)
    {
      *v0 = MEMORY[0x277D84F90];
      *(v0 + 8) = 0;
      v52 = v0 + v26[7];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v53 = v26[8];
      OUTLINED_FUNCTION_92();
      v54 = v149;
      __swift_storeEnumTagSinglePayload(v55, v56, v57, v149);
      v58 = v26[9];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v59, v60, v61, v54);
      OUTLINED_FUNCTION_37(v43, 1, v26);
      v49 = v151;
      if (!v51)
      {
        sub_26A0E48F0(v43, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A40E838();
      v49 = v151;
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_9_47();
    sub_26A40E88C(v0, v62);
    v63 = v150;
    v64 = *(v150 + v49);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v66 = *(v63 + v49);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v67 = type metadata accessor for _ProtoReference_Rich._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v67);
      OUTLINED_FUNCTION_25_35();
      *(v63 + v49) = v68;
    }

    OUTLINED_FUNCTION_31_24();
    v69 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v69, v70, v71, v26);
    OUTLINED_FUNCTION_211();
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  __swift_getEnumTagSinglePayload(v39, 1, v26);
  OUTLINED_FUNCTION_59_1();
  if (v49 == 1)
  {
    v72 = v149;
    v73 = v150;
    v74 = v147;
  }

  else
  {
    v75 = v139[2];
    sub_26A10FD9C();
    v76 = OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_37(v76, v77, v26);
    v73 = v150;
    v74 = v147;
    if (v51)
    {
      v89 = v140;
      *v140 = MEMORY[0x277D84F90];
      *(v89 + 8) = 0;
      v78 = v89 + v26[7];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v79 = v26[8];
      OUTLINED_FUNCTION_92();
      v72 = v149;
      __swift_storeEnumTagSinglePayload(v80, v81, v82, v149);
      v83 = v26[9];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v84, v85, v86, v72);
      v87 = OUTLINED_FUNCTION_71();
      OUTLINED_FUNCTION_37(v87, v88, v26);
      v90 = v151;
      if (!v51)
      {
        sub_26A0E48F0(v75, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      v89 = v140;
      sub_26A40E838();
      v72 = v149;
      v90 = v151;
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_9_47();
    sub_26A40E88C(v89, v91);
    v92 = *(v73 + v90);
    v93 = swift_isUniquelyReferenced_nonNull_native();
    v94 = *(v73 + v90);
    if ((v93 & 1) == 0)
    {
      v95 = type metadata accessor for _ProtoReference_Rich._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v95);
      OUTLINED_FUNCTION_25_35();
      *(v73 + v90) = v96;
    }

    OUTLINED_FUNCTION_31_24();
    v97 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v97, v98, v99, v26);
    OUTLINED_FUNCTION_211();
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  v100 = v146;
  sub_26A10FD9C();
  LODWORD(v101) = __swift_getEnumTagSinglePayload(v100, 1, v74);
  sub_26A0E48F0(v100, &qword_28036CAE8, &unk_26A426430);
  if (v101 != 1)
  {
    v101 = v141;
    sub_26A10FD9C();
    v102 = OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_37(v102, v103, v74);
    v104 = v151;
    if (v51)
    {
      v116 = v142;
      *v142 = MEMORY[0x277D84F90];
      *(v116 + 8) = 0;
      v105 = v116 + v74[7];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v106 = v74[8];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v107, v108, v109, v72);
      v110 = v74[9];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v111, v112, v113, v72);
      v114 = OUTLINED_FUNCTION_71();
      OUTLINED_FUNCTION_37(v114, v115, v74);
      if (!v51)
      {
        sub_26A0E48F0(v101, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      v116 = v142;
      sub_26A40E838();
    }

    _ProtoVisualProperty.redactedProto.getter();
    sub_26A40E88C(v116, type metadata accessor for _ProtoVisualProperty);
    v117 = *(v73 + v104);
    v118 = swift_isUniquelyReferenced_nonNull_native();
    v119 = *(v73 + v104);
    if ((v118 & 1) == 0)
    {
      v120 = type metadata accessor for _ProtoReference_Rich._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v120);
      OUTLINED_FUNCTION_25_35();
      *(v73 + v104) = v121;
    }

    sub_26A40E838();
    v122 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v122, v123, v124, v74);
    OUTLINED_FUNCTION_211();
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  v125 = v148;
  sub_26A10FD9C();
  __swift_getEnumTagSinglePayload(v125, 1, v72);
  OUTLINED_FUNCTION_59_1();
  if (v101 != 1)
  {
    v126 = v143;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v126, 1, v72);
    v127 = v151;
    if (v51)
    {
      v129 = v144;
      *v144 = MEMORY[0x277D84F90];
      *(v129 + 8) = 0;
      *(v129 + 16) = 0xE000000000000000;
      v128 = v129 + *(v72 + 24);
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_37(v126, 1, v72);
      v130 = v145;
      if (!v51)
      {
        sub_26A0E48F0(v126, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      v129 = v144;
      sub_26A40E838();
      v130 = v145;
    }

    _s10SnippetKit14ActionPropertyV13redactedProtoAA01_fcD0Vvg_0(v130);
    sub_26A40E88C(v129, type metadata accessor for _ProtoActionProperty);
    v131 = *(v73 + v127);
    v132 = swift_isUniquelyReferenced_nonNull_native();
    v133 = *(v73 + v127);
    if ((v132 & 1) == 0)
    {
      v134 = type metadata accessor for _ProtoReference_Rich._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v134);
      sub_26A2FD080();
      *(v73 + v127) = v135;
    }

    sub_26A40E838();
    v136 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v136, v137, v138, v72);
    OUTLINED_FUNCTION_211();
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t ReferenceRich.init(text1:text2:thumbnail:action:componentName:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _ProtoReference_Rich(0);
  OUTLINED_FUNCTION_10_58();
  sub_26A40EB9C(v8, v9);
  sub_26A4249C4();

  sub_26A0E48F0(a4, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(a3, &qword_28036CB00, &unk_26A426450);
  sub_26A0E48F0(a2, &qword_28036CB08, &unk_26A428720);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26A40DE40(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v68 = a6;
  v69 = a7;
  v64 = a3;
  v65 = a5;
  v63 = a4;
  v9 = type metadata accessor for ActionProperty();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v62 = v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v71 = v57 - v14;
  v70 = type metadata accessor for _ProtoActionProperty();
  v15 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v59 = v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v60 = v57 - v18;
  v19 = type metadata accessor for VisualProperty();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v61 = v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v67 = v57 - v24;
  v66 = type metadata accessor for _ProtoVisualProperty();
  v25 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v57[1] = v57 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v58 = v57 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v32 = v57 - v31;
  v33 = type metadata accessor for _ProtoTextProperty(0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v36 = v57 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v38 = type metadata accessor for TextProperty(0);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38 - 8);
  v40 = a2[3];
  v41 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v40);
  (*(v41 + 8))(v40, v41);
  sub_26A40E838();
  _ProtoReference_Rich.text1.setter();
  v42 = v63;

  v43 = v64;
  v64 = a1;
  _ProtoReference_Rich.componentName.setter(v43, v42);
  sub_26A10FD9C();
  v44 = v73;
  if (v73)
  {
    v45 = v74;
    __swift_project_boxed_opaque_existential_1(v72, v73);
    (*(v45 + 8))(v44, v45);
    sub_26A40E838();
    __swift_storeEnumTagSinglePayload(v32, 0, 1, v33);
    __swift_destroy_boxed_opaque_existential_1(v72);
    if (__swift_getEnumTagSinglePayload(v32, 1, v33) != 1)
    {
      sub_26A40E838();
      sub_26A40ECC4();
      _ProtoReference_Rich.text2.setter();
      sub_26A40E88C(v36, type metadata accessor for _ProtoTextProperty);
      goto LABEL_6;
    }
  }

  else
  {
    sub_26A0E48F0(v72, &qword_28036CB08, &unk_26A428720);
    __swift_storeEnumTagSinglePayload(v32, 1, 1, v33);
  }

  sub_26A0E48F0(v32, &qword_28036C7B8, &unk_26A425BF0);
LABEL_6:
  sub_26A10FD9C();
  v46 = v73;
  if (v73)
  {
    v47 = v74;
    __swift_project_boxed_opaque_existential_1(v72, v73);
    (*(v47 + 8))(v46, v47);
    v48 = v67;
    sub_26A40E838();
    v49 = v66;
    __swift_storeEnumTagSinglePayload(v48, 0, 1, v66);
    __swift_destroy_boxed_opaque_existential_1(v72);
    if (__swift_getEnumTagSinglePayload(v48, 1, v49) != 1)
    {
      v50 = v58;
      sub_26A40E838();
      sub_26A40ECC4();
      _ProtoReference_Rich.thumbnail.setter();
      sub_26A40E88C(v50, type metadata accessor for _ProtoVisualProperty);
      goto LABEL_11;
    }
  }

  else
  {
    sub_26A0E48F0(v72, &qword_28036CB00, &unk_26A426450);
    v48 = v67;
    __swift_storeEnumTagSinglePayload(v67, 1, 1, v66);
  }

  sub_26A0E48F0(v48, &qword_28036CAE8, &unk_26A426430);
LABEL_11:
  sub_26A10FD9C();
  v51 = v73;
  if (v73)
  {
    v52 = v74;
    __swift_project_boxed_opaque_existential_1(v72, v73);
    (*(v52 + 8))(v51, v52);
    v53 = v71;
    sub_26A40E838();
    v54 = v70;
    __swift_storeEnumTagSinglePayload(v53, 0, 1, v70);
    __swift_destroy_boxed_opaque_existential_1(v72);
    if (__swift_getEnumTagSinglePayload(v53, 1, v54) != 1)
    {
      v55 = v60;
      sub_26A40E838();
      sub_26A40ECC4();
      _ProtoReference_Rich.action.setter();
      return sub_26A40E88C(v55, type metadata accessor for _ProtoActionProperty);
    }
  }

  else
  {
    sub_26A0E48F0(v72, &qword_28036CAF8, &unk_26A426D30);
    v53 = v71;
    __swift_storeEnumTagSinglePayload(v71, 1, 1, v70);
  }

  return sub_26A0E48F0(v53, &off_28036C7C0, &off_26A427400);
}

uint64_t ReferenceRich.init(text1:text2:thumbnail:action:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_26A0E5D68(a1, v14);
  sub_26A10FD9C();
  sub_26A10FD9C();
  sub_26A10FD9C();
  type metadata accessor for _ProtoReference_Rich(0);
  OUTLINED_FUNCTION_10_58();
  sub_26A40EB9C(v8, v9);
  sub_26A4249C4();
  sub_26A0E48F0(a4, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(a3, &qword_28036CB00, &unk_26A426450);
  sub_26A0E48F0(a2, &qword_28036CB08, &unk_26A428720);
  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_26A0E48F0(v11, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v12, &qword_28036CB00, &unk_26A426450);
  sub_26A0E48F0(v13, &qword_28036CB08, &unk_26A428720);
  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t sub_26A40E838()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t sub_26A40E88C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t ReferenceRich.componentProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoReference_Rich(0);
  v3 = OUTLINED_FUNCTION_41(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v6);
  v10 = type metadata accessor for _ProtoResponse.Component(0);
  v11 = a1 + *(v10 + 20);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v12 = *(v10 + 24);
  type metadata accessor for _ProtoSeparators();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  OUTLINED_FUNCTION_3_68();
  sub_26A40ECC4();
  sub_26A0E48F0(a1, &qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_12_36();
  sub_26A40E838();
  OUTLINED_FUNCTION_175();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v6);
}

uint64_t ReferenceRich.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for ReferenceRich();
  *(inited + 64) = &protocol witness table for ReferenceRich;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_11_44();
  sub_26A40ECC4();
  OUTLINED_FUNCTION_142();

  sub_26A10BF5C(v1);
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A40EB9C(&qword_28036CB48, type metadata accessor for _ProtoResponse.Section);
  sub_26A4249C4();

  swift_setDeallocating();
  return sub_26A10C358();
}

uint64_t sub_26A40EB9C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A40EC58()
{
  result = type metadata accessor for _ProtoReference_Rich(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A40ECC4()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

void OUTLINED_FUNCTION_25_35()
{

  sub_26A2FD080();
}

uint64_t OUTLINED_FUNCTION_31_24()
{
  v2 = *(v0 - 264);

  return sub_26A40E838();
}

uint64_t OUTLINED_FUNCTION_32_22()
{

  return type metadata accessor for _ProtoReference_Rich(0);
}

uint64_t CodableIntent.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  type metadata accessor for CodableIntent.CodingKeys();
  OUTLINED_FUNCTION_0_95();
  swift_getWitnessTable();
  v5 = sub_26A425084();
  v6 = OUTLINED_FUNCTION_24(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26A425574();
  if (!v2)
  {
    sub_26A0E718C();
    sub_26A425054();
    sub_26A40BFD0();
    v12 = sub_26A424E24();
    v22 = v12;
    if (v12)
    {
      v24 = OUTLINED_FUNCTION_6_0();
      v25(v24);
      sub_26A0E4784(v27, v28);
      goto LABEL_8;
    }

    type metadata accessor for CodableIntent.Error();
    swift_getWitnessTable();
    v3 = swift_allocError();
    swift_willThrow();
    sub_26A0E4784(v27, v28);
    v10 = OUTLINED_FUNCTION_6_0();
    v11(v10);
  }

  if (qword_28036C5A0 != -1)
  {
    swift_once();
  }

  v13 = sub_26A424AE4();
  __swift_project_value_buffer(v13, qword_2803A8950);
  v14 = v3;
  v15 = sub_26A424AD4();
  v16 = sub_26A424E04();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v27 = v18;
    *v17 = 136315138;
    swift_getErrorValue();
    v19 = sub_26A4254B4();
    v21 = sub_26A0E8788(v19, v20, &v27);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_26A0B8000, v15, v16, "Failed to decode Intent; creating an empty Intent instead. Error: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x26D65C950](v18, -1, -1);
    MEMORY[0x26D65C950](v17, -1, -1);
  }

  v22 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
LABEL_8:
  *a2 = v22;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CodableIntent.encode(to:)(void *a1, uint64_t a2)
{
  v28[2] = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 16);
  type metadata accessor for CodableIntent.CodingKeys();
  OUTLINED_FUNCTION_0_95();
  swift_getWitnessTable();
  v6 = sub_26A425184();
  v26 = OUTLINED_FUNCTION_24(v6);
  v27 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v26);
  v11 = &v25 - v10;
  v12 = *v2;
  v13 = objc_opt_self();
  v28[0] = 0;
  v14 = [v13 archivedDataWithRootObject:v12 requiringSecureCoding:1 error:v28];
  v15 = v28[0];
  if (v14)
  {
    v16 = sub_26A4246D4();
    v25 = v3;
    v17 = v16;
    v19 = v18;

    v20 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_26A425594();
    v28[0] = v17;
    v28[1] = v19;
    sub_26A0E70D4();
    v21 = v26;
    sub_26A425154();
    (*(v27 + 8))(v11, v21);
    result = sub_26A0E4784(v17, v19);
  }

  else
  {
    v23 = v15;
    sub_26A4245B4();

    result = swift_willThrow();
  }

  v24 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL sub_26A40F41C()
{
  v0 = sub_26A424FE4();

  return v0 != 0;
}

uint64_t sub_26A40F468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_26A40F4DC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_26A40F548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_26A40F5B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

BOOL sub_26A40F628@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26A40F41C();
  *a2 = result;
  return result;
}

uint64_t sub_26A40F65C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26A40F464();
  *a1 = result & 1;
  return result;
}

uint64_t sub_26A40F688(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_26A40F6DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t CodableIntent.Error.hashValue.getter()
{
  sub_26A425504();
  MEMORY[0x26D65C340](0);
  return sub_26A425554();
}

uint64_t sub_26A40F7D4()
{
  sub_26A425504();
  CodableIntent.Error.hash(into:)();
  return sub_26A425554();
}

uint64_t sub_26A40F878()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

_BYTE *sub_26A40F8CC(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t RFImage.Source.asSourceType()@<X0>(uint64_t *a1@<X8>)
{
  v244 = a1;
  v245 = type metadata accessor for ImageElement.SourceType(0);
  v2 = OUTLINED_FUNCTION_12(v245);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_8();
  v231 = v5;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_48();
  v230 = v7;
  v8 = OUTLINED_FUNCTION_45();
  v9 = type metadata accessor for RFImage.BadgedImage(v8);
  v10 = OUTLINED_FUNCTION_12(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_18();
  v229 = v14 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D4F8, &qword_26A4283C0);
  v16 = OUTLINED_FUNCTION_41(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_8();
  v241 = v19;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_48();
  v236 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D500, &qword_26A435570);
  v23 = OUTLINED_FUNCTION_41(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_8();
  v232 = v26;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v27);
  v240 = &v228 - v28;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_48();
  v235 = v30;
  OUTLINED_FUNCTION_45();
  v31 = sub_26A424614();
  v32 = OUTLINED_FUNCTION_24(v31);
  v238 = v33;
  v239 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_8();
  v237 = v36;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_48();
  v233 = v38;
  v39 = OUTLINED_FUNCTION_45();
  v234 = type metadata accessor for RFImage.Url(v39);
  v40 = OUTLINED_FUNCTION_12(v234);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_18();
  v45 = v44 - v43;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D4D0, &qword_26A428230);
  v47 = OUTLINED_FUNCTION_41(v46);
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v47);
  v51 = &v228 - v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBA0, &qword_26A4265B0);
  v53 = OUTLINED_FUNCTION_41(v52);
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_8();
  v242 = v56;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v57);
  v59 = &v228 - v58;
  v60 = type metadata accessor for ImageElement.Contact.Content(0);
  v61 = OUTLINED_FUNCTION_12(v60);
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_18();
  v66 = v65 - v64;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBB8, &qword_26A4265C8);
  v68 = OUTLINED_FUNCTION_41(v67);
  v70 = *(v69 + 64);
  MEMORY[0x28223BE20](v68);
  v72 = &v228 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_48();
  v75 = v74;
  v76 = OUTLINED_FUNCTION_45();
  v77 = type metadata accessor for RFImage.Source(v76);
  v78 = OUTLINED_FUNCTION_12(v77);
  v80 = *(v79 + 64);
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_16_32();
  sub_26A41271C(v243, v1, v81);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v144 = *v1;
      v143 = *(v1 + 8);
      v146 = *(v1 + 16);
      v145 = *(v1 + 24);
      v148 = *(v1 + 32);
      v147 = *(v1 + 40);
      if (*(v1 + 48))
      {
        OUTLINED_FUNCTION_35_28();
        sub_26A28A784();
        OUTLINED_FUNCTION_35_28();
        sub_26A0D6740();
        v149 = type metadata accessor for ImageElement.AspectRatio();
        v150 = v75;
        v153 = OUTLINED_FUNCTION_9_48(v75, v151, v152, v149);
        v154 = type metadata accessor for _ProtoImageElement.Bundle(v153);
        MEMORY[0x28223BE20](v154);
        OUTLINED_FUNCTION_11_45();
        *(v155 - 64) = v144;
        *(v155 - 56) = v143;
        *(v155 - 48) = v146;
        *(v155 - 40) = v145;
        *(v155 - 32) = v148;
        *(v155 - 24) = v147;
        OUTLINED_FUNCTION_6_43(v155);
        *(v156 - 8) = v75;
        OUTLINED_FUNCTION_2_60();
        sub_26A41262C(v157, v158);
        OUTLINED_FUNCTION_12_37();

        OUTLINED_FUNCTION_35_28();
      }

      else
      {
        OUTLINED_FUNCTION_44();
        sub_26A28A784();
        OUTLINED_FUNCTION_44();
        sub_26A0D6740();
        v219 = type metadata accessor for ImageElement.AspectRatio();
        v150 = v75;
        v222 = OUTLINED_FUNCTION_9_48(v75, v220, v221, v219);
        v223 = type metadata accessor for _ProtoImageElement.Bundle(v222);
        MEMORY[0x28223BE20](v223);
        OUTLINED_FUNCTION_11_45();
        *(v224 - 64) = v144;
        *(v224 - 56) = v143;
        *(v224 - 48) = v146;
        *(v224 - 40) = v145;
        *(v224 - 32) = v148;
        *(v224 - 24) = v147;
        OUTLINED_FUNCTION_6_43(v224);
        *(v225 - 8) = v75;
        OUTLINED_FUNCTION_2_60();
        sub_26A41262C(v226, v227);
        OUTLINED_FUNCTION_12_37();

        OUTLINED_FUNCTION_44();
      }

      sub_26A0D6740();
      sub_26A0E48F0(v150, &qword_28036CBB8, &qword_26A4265C8);
      return swift_storeEnumTagMultiPayload();
    case 2u:
      v102 = *v1;
      v101 = *(v1 + 8);
      if (*(v1 + 16))
      {
        type metadata accessor for _ProtoImageElement.Contact.Monogram(0);
        OUTLINED_FUNCTION_31_25();
        MEMORY[0x28223BE20](v103);
        OUTLINED_FUNCTION_1_17();
        *(v104 - 16) = v102;
        *(v104 - 8) = v101;
        OUTLINED_FUNCTION_25_36();
        sub_26A41262C(v105, v106);
        OUTLINED_FUNCTION_48_24();
        OUTLINED_FUNCTION_12_37();
        OUTLINED_FUNCTION_35_28();
        sub_26A0D6740();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CC18, &qword_26A426678);
        v213 = swift_allocObject();
        *(v213 + 16) = xmmword_26A426410;
        *(v213 + 32) = v102;
        *(v213 + 40) = v101;
        type metadata accessor for _ProtoImageElement.Contact.Avatar(0);
        OUTLINED_FUNCTION_44_18();
        MEMORY[0x28223BE20](v214);
        OUTLINED_FUNCTION_40_22();
        *(v215 - 16) = v213;
        OUTLINED_FUNCTION_22_34();
        sub_26A41262C(v216, v217);
        OUTLINED_FUNCTION_48_24();
        sub_26A4249C4();
      }

      swift_storeEnumTagMultiPayload();
      type metadata accessor for _ProtoImageElement.Contact(0);
      OUTLINED_FUNCTION_44_18();
      MEMORY[0x28223BE20](v107);
      OUTLINED_FUNCTION_40_22();
      *(v108 - 16) = v66;
      *(v108 - 8) = 0;
      OUTLINED_FUNCTION_3_69();
      sub_26A41262C(v109, v110);
      sub_26A4249C4();
      OUTLINED_FUNCTION_10_59();
      sub_26A41277C(v66, v218);
      return swift_storeEnumTagMultiPayload();
    case 3u:
      v111 = *v1;
      v112 = *(v1 + 8);
      v113 = *(v1 + 16);
      v114 = *(v1 + 24);
      v115 = type metadata accessor for ImageElement.AspectRatio();
      v118 = OUTLINED_FUNCTION_9_48(v75, v116, v117, v115);
      v119 = type metadata accessor for _ProtoImageElement.DataMessage(v118);
      MEMORY[0x28223BE20](v119);
      *(&v228 - 6) = v111;
      *(&v228 - 5) = v112;
      *(&v228 - 4) = v113;
      *(&v228 - 3) = v114;
      OUTLINED_FUNCTION_6_43(&v228);
      *(v120 - 8) = v75;
      sub_26A0E45C0(v111, v112);
      v121 = OUTLINED_FUNCTION_97();
      sub_26A280558(v121, v122);
      OUTLINED_FUNCTION_4_60();
      sub_26A41262C(v123, v124);
      OUTLINED_FUNCTION_12_37();
      sub_26A0E4784(v111, v112);
      v125 = OUTLINED_FUNCTION_97();
      sub_26A10E794(v125, v126);
      sub_26A0E4784(v111, v112);
      v127 = OUTLINED_FUNCTION_97();
      sub_26A10E794(v127, v128);
      sub_26A0E48F0(v75, &qword_28036CBB8, &qword_26A4265C8);
      return swift_storeEnumTagMultiPayload();
    case 4u:
      v88 = *v1;
      v89 = *(v1 + 8);
      v90 = type metadata accessor for ImageElement.AspectRatio();
      v93 = OUTLINED_FUNCTION_9_48(v75, v91, v92, v90);
      v94 = type metadata accessor for _ProtoImageElement.DataMessage(v93);
      MEMORY[0x28223BE20](v94);
      OUTLINED_FUNCTION_13_27();
      *(v95 - 32) = v88;
      *(v95 - 24) = v89;
      OUTLINED_FUNCTION_6_43(v95);
      *(v96 - 8) = v75;
      OUTLINED_FUNCTION_4_60();
      sub_26A41262C(v97, v98);
      OUTLINED_FUNCTION_12_37();
      v99 = OUTLINED_FUNCTION_97();
      sub_26A0E4784(v99, v100);
      sub_26A0E48F0(v75, &qword_28036CBB8, &qword_26A4265C8);
      return swift_storeEnumTagMultiPayload();
    case 5u:
      v160 = *v1;
      v159 = *(v1 + 8);
      v162 = *(v1 + 16);
      v161 = *(v1 + 24);
      type metadata accessor for Color();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v163, v164, v165, v166);
      v167 = v242;
      sub_26A412674(v59, v242, &qword_28036CBA0, &qword_26A4265B0);
      v168 = type metadata accessor for ImageElement.Background(0);
      v171 = OUTLINED_FUNCTION_9_48(v51, v169, v170, v168);
      v172 = type metadata accessor for _ProtoImageElement.Symbol(v171);
      MEMORY[0x28223BE20](v172);
      OUTLINED_FUNCTION_11_45();
      *(v173 - 64) = v160;
      *(v173 - 56) = v159;
      *(v173 - 48) = v162;
      *(v173 - 40) = v161;
      *(v173 - 32) = v167;
      *(v173 - 24) = 0;
      *(v173 - 16) = v51;
      OUTLINED_FUNCTION_28_25();
      sub_26A41262C(v174, v175);
      OUTLINED_FUNCTION_12_37();

      sub_26A0E48F0(v59, &qword_28036CBA0, &qword_26A4265B0);
      sub_26A0E48F0(v51, &qword_28036D4D0, &qword_26A428230);
      v176 = OUTLINED_FUNCTION_44();
      sub_26A0E48F0(v176, v177, &qword_26A4265B0);
      return swift_storeEnumTagMultiPayload();
    case 6u:
      sub_26A410A7C(v1, v45);
      v178 = v239;
      v179 = *(v238 + 16);
      v180 = v233;
      v179(v233, v45, v239);
      v181 = v179;
      v243 = v179;
      v182 = v235;
      sub_26A412674(v45 + *(v234 + 20), v235, &qword_28036D500, &qword_26A435570);
      v183 = type metadata accessor for ImageElement.SourceType.LoadingImage(0);
      v184 = v236;
      OUTLINED_FUNCTION_9_48(v236, v185, v186, v183);
      v187 = type metadata accessor for ImageElement.AspectRatio();
      v228 = v75;
      OUTLINED_FUNCTION_9_48(v75, v188, v189, v187);
      type metadata accessor for Color();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v190, v191, v192, v193);
      v181(v237, v180, v178);
      v194 = v240;
      sub_26A412674(v182, v240, &qword_28036D500, &qword_26A435570);
      v195 = v241;
      sub_26A412674(v184, v241, &qword_28036D4F8, &qword_26A4283C0);
      sub_26A412674(v75, v72, &qword_28036CBB8, &qword_26A4265C8);
      v196 = v242;
      sub_26A412674(v59, v242, &qword_28036CBA0, &qword_26A4265B0);
      v197 = type metadata accessor for _ProtoImageElement.Url(0);
      v230 = &v228;
      MEMORY[0x28223BE20](v197);
      v198 = v237;
      *(&v228 - 8) = v237;
      *(&v228 - 7) = v194;
      *(&v228 - 6) = v195;
      *(&v228 - 20) = 0;
      *(&v228 - 4) = v72;
      *(&v228 - 12) = 514;
      *(&v228 - 22) = 0;
      *(&v228 - 2) = v196;
      *(&v228 - 8) = 0;
      *(&v228 - 1) = 0;
      v231 = type metadata accessor for ImageElement.Url();
      v199 = *(v231 + 24);
      OUTLINED_FUNCTION_20_35();
      sub_26A41262C(v200, v201);
      v202 = v244;
      sub_26A4249C4();
      sub_26A0E48F0(v59, &qword_28036CBA0, &qword_26A4265B0);
      sub_26A0E48F0(v228, &qword_28036CBB8, &qword_26A4265C8);
      sub_26A0E48F0(v236, &qword_28036D4F8, &qword_26A4283C0);
      sub_26A0E48F0(v235, &qword_28036D500, &qword_26A435570);
      v203 = v239;
      v238 = *(v238 + 8);
      (v238)(v233, v239);
      OUTLINED_FUNCTION_30_20();
      sub_26A41277C(v45, v204);
      v205 = v243;
      v243(v202, v198, v203);
      v206 = v202 + *(v231 + 20);
      v205(v206, v198, v203);
      v207 = v240;
      v208 = v232;
      sub_26A412674(v240, v232, &qword_28036D500, &qword_26A435570);
      v209 = *(v234 + 20);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v210, v211, v212, v203);
      sub_26A2807A4(v208, &v206[v209]);
      sub_26A0E48F0(v242, &qword_28036CBA0, &qword_26A4265B0);
      sub_26A0E48F0(v72, &qword_28036CBB8, &qword_26A4265C8);
      sub_26A0E48F0(v241, &qword_28036D4F8, &qword_26A4283C0);
      sub_26A0E48F0(v207, &qword_28036D500, &qword_26A435570);
      (v238)(v198, v203);
      return swift_storeEnumTagMultiPayload();
    case 7u:
      v129 = *v1;
      swift_projectBox();
      OUTLINED_FUNCTION_29_26();
      v130 = v229;
      sub_26A41271C(v131, v229, v132);
      type metadata accessor for ImageElement.BadgedImage();
      v133 = swift_allocBox();
      v134 = v230;
      v135 = (RFImage.Source.asSourceType())();
      v136 = v130 + *(v9 + 20);
      v137 = v231;
      RFImage.Source.asSourceType()(v135);
      v138 = type metadata accessor for _ProtoImageElement.BadgedImage(0);
      MEMORY[0x28223BE20](v138);
      OUTLINED_FUNCTION_1_17();
      *(v139 - 16) = v134;
      *(v139 - 8) = v137;
      sub_26A41262C(qword_28157A7E0, type metadata accessor for _ProtoImageElement.BadgedImage);
      OUTLINED_FUNCTION_48_24();
      OUTLINED_FUNCTION_12_37();
      OUTLINED_FUNCTION_27_32();
      sub_26A41277C(v137, v140);
      sub_26A41277C(v134, v138);
      OUTLINED_FUNCTION_26_37();
      sub_26A41277C(v130, v141);
      *v244 = v133;
      swift_storeEnumTagMultiPayload();

    default:
      v83 = *v1;
      v82 = *(v1 + 8);
      v84 = type metadata accessor for _ProtoImageElement.AppIcon(0);
      MEMORY[0x28223BE20](v84);
      OUTLINED_FUNCTION_13_27();
      *(v85 - 32) = v83;
      *(v85 - 24) = v82;
      *(v85 - 16) = 0;
      OUTLINED_FUNCTION_21_31();
      sub_26A41262C(v86, v87);
      OUTLINED_FUNCTION_12_37();

      return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_26A410A7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RFImage.Url(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t RFImage.asImageElement()@<X0>(uint64_t a1@<X8>)
{
  v346 = a1;
  v2 = type metadata accessor for ImageElement.SourceType(0);
  v3 = OUTLINED_FUNCTION_24(v2);
  v343 = v4;
  v344 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_8();
  v325 = v7;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_48();
  v324 = v9;
  v10 = OUTLINED_FUNCTION_45();
  v322 = type metadata accessor for RFImage.BadgedImage(v10);
  v11 = OUTLINED_FUNCTION_12(v322);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_18();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D500, &qword_26A435570);
  v18 = OUTLINED_FUNCTION_41(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_8();
  v330 = v21;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_48();
  v332 = v23;
  OUTLINED_FUNCTION_45();
  v333 = sub_26A424614();
  v24 = OUTLINED_FUNCTION_24(v333);
  v338 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_18();
  v329 = v29 - v28;
  OUTLINED_FUNCTION_45();
  v327 = type metadata accessor for ImageElement.Url();
  v30 = OUTLINED_FUNCTION_12(v327);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_18();
  v334 = v34 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D4F8, &qword_26A4283C0);
  v36 = OUTLINED_FUNCTION_41(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_8();
  v336 = v39;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_48();
  v340 = v41;
  v42 = OUTLINED_FUNCTION_45();
  v335 = type metadata accessor for RFImage.Url(v42);
  v43 = OUTLINED_FUNCTION_12(v335);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_18();
  v339 = v47 - v46;
  v48 = OUTLINED_FUNCTION_45();
  v49 = type metadata accessor for ImageElement.Symbol(v48);
  v50 = OUTLINED_FUNCTION_41(v49);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_18();
  v326 = (v54 - v53);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D4D0, &qword_26A428230);
  v56 = OUTLINED_FUNCTION_41(v55);
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v56);
  v60 = &v321 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_48();
  v323 = v62;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBA0, &qword_26A4265B0);
  v64 = OUTLINED_FUNCTION_41(v63);
  v66 = *(v65 + 64);
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_8();
  v337 = v67;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_48();
  v341 = v69;
  OUTLINED_FUNCTION_45();
  v70 = type metadata accessor for ImageElement.AssetData();
  v71 = OUTLINED_FUNCTION_41(v70);
  v73 = *(v72 + 64);
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_18();
  v76 = v75 - v74;
  v77 = type metadata accessor for ImageElement.PNGData();
  v78 = OUTLINED_FUNCTION_41(v77);
  v80 = *(v79 + 64);
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_18();
  v83 = v82 - v81;
  v84 = type metadata accessor for ImageElement.Contact.Content(0);
  v85 = OUTLINED_FUNCTION_12(v84);
  v87 = *(v86 + 64);
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_18();
  v90 = v89 - v88;
  v91 = type metadata accessor for ImageElement.Contact(0);
  v92 = OUTLINED_FUNCTION_41(v91);
  v94 = *(v93 + 64);
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_18();
  v331 = v96 - v95;
  OUTLINED_FUNCTION_45();
  v97 = type metadata accessor for ImageElement.Bundle();
  v98 = OUTLINED_FUNCTION_41(v97);
  v100 = *(v99 + 64);
  MEMORY[0x28223BE20](v98);
  OUTLINED_FUNCTION_18();
  v328 = (v102 - v101);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBB8, &qword_26A4265C8);
  v104 = OUTLINED_FUNCTION_41(v103);
  v106 = *(v105 + 64);
  MEMORY[0x28223BE20](v104);
  OUTLINED_FUNCTION_8();
  v342 = v107;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v108);
  OUTLINED_FUNCTION_48();
  v110 = v109;
  OUTLINED_FUNCTION_45();
  v111 = type metadata accessor for ImageElement.AppIcon();
  v112 = OUTLINED_FUNCTION_41(v111);
  v114 = *(v113 + 64);
  MEMORY[0x28223BE20](v112);
  OUTLINED_FUNCTION_18();
  v117 = v116 - v115;
  v118 = type metadata accessor for RFImage.Source(0);
  v119 = OUTLINED_FUNCTION_12(v118);
  v121 = *(v120 + 64);
  MEMORY[0x28223BE20](v119);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_16_32();
  sub_26A41271C(v345.n128_i64[0], v1, v122);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v205 = *v1;
      v204 = *(v1 + 8);
      v207 = *(v1 + 16);
      v206 = *(v1 + 24);
      v209 = *(v1 + 32);
      v208 = *(v1 + 40);
      v210 = *(v1 + 48);
      v321 = v110;
      OUTLINED_FUNCTION_102();
      if (v211)
      {
        sub_26A28A784();
        OUTLINED_FUNCTION_102();
        sub_26A0D6740();
        type metadata accessor for ImageElement.AspectRatio();
        OUTLINED_FUNCTION_49_21();
        OUTLINED_FUNCTION_92();
        __swift_storeEnumTagSinglePayload(v212, v213, v214, v215);
        v345.n128_u64[0] = sub_26A217578(&unk_287B02840);
      }

      else
      {
        sub_26A28A784();
        OUTLINED_FUNCTION_102();
        sub_26A0D6740();
        type metadata accessor for ImageElement.AspectRatio();
        OUTLINED_FUNCTION_49_21();
        OUTLINED_FUNCTION_92();
        __swift_storeEnumTagSinglePayload(v317, v318, v319, v320);
        v345.n128_u64[0] = sub_26A217578(&unk_287B02810);
      }

      v216 = OUTLINED_FUNCTION_41_20();
      sub_26A412674(v216, v217, v218, v219);
      v220 = type metadata accessor for _ProtoImageElement.Bundle(0);
      MEMORY[0x28223BE20](v220);
      OUTLINED_FUNCTION_11_45();
      *(v221 - 64) = v205;
      *(v221 - 56) = v204;
      *(v221 - 48) = v207;
      *(v221 - 40) = v206;
      *(v221 - 32) = v209;
      *(v221 - 24) = v208;
      OUTLINED_FUNCTION_6_43(v221);
      *(v222 - 8) = v110;
      OUTLINED_FUNCTION_2_60();
      sub_26A41262C(v223, v224);
      v225 = v328;
      OUTLINED_FUNCTION_12_37();

      OUTLINED_FUNCTION_102();
      sub_26A0D6740();
      sub_26A0E48F0(v110, &qword_28036CBB8, &qword_26A4265C8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CFB8, &qword_26A426BE0);
      v226 = OUTLINED_FUNCTION_1_71();
      OUTLINED_FUNCTION_19_32(v226, xmmword_26A426410);
      OUTLINED_FUNCTION_43_16();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_86_1();
      OUTLINED_FUNCTION_31_25();
      MEMORY[0x28223BE20](v227);
      OUTLINED_FUNCTION_39_25();
      OUTLINED_FUNCTION_0_96();
      sub_26A41262C(v228, v229);
      sub_26A4249C4();

      sub_26A41277C(v225, type metadata accessor for ImageElement.Bundle);
      v258 = v321;
      v259 = &qword_28036CBB8;
      v260 = &qword_26A4265C8;
      goto LABEL_16;
    case 2u:
      v158 = *v1;
      v157 = *(v1 + 8);
      if (*(v1 + 16))
      {
        v159 = sub_26A217578(&unk_287B028A0);
        v160 = type metadata accessor for _ProtoImageElement.Contact.Monogram(0);
        v161 = &v321;
        MEMORY[0x28223BE20](v160);
        OUTLINED_FUNCTION_1_17();
        *(v162 - 16) = v158;
        *(v162 - 8) = v157;
        OUTLINED_FUNCTION_25_36();
        sub_26A41262C(v163, v164);
        OUTLINED_FUNCTION_12_37();
        sub_26A0D6740();
        swift_storeEnumTagMultiPayload();
        type metadata accessor for _ProtoImageElement.Contact(0);
        OUTLINED_FUNCTION_38_20();
        MEMORY[0x28223BE20](v165);
        OUTLINED_FUNCTION_15_46();
        *(v166 - 16) = v90;
        *(v166 - 8) = 0;
        OUTLINED_FUNCTION_3_69();
        sub_26A41262C(v167, v168);
        OUTLINED_FUNCTION_46_14();
        OUTLINED_FUNCTION_10_59();
        sub_26A41277C(v90, v169);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CFB8, &qword_26A426BE0);
        v170 = OUTLINED_FUNCTION_1_71();
        OUTLINED_FUNCTION_18_36(v170, xmmword_26A426410);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CC18, &qword_26A426678);
        v161 = swift_allocObject();
        v345 = xmmword_26A426410;
        *(v161 + 1) = xmmword_26A426410;
        v161[4] = v158;
        v161[5] = v157;
        v159 = sub_26A217578(&unk_287B02870);
        v307 = type metadata accessor for _ProtoImageElement.Contact.Avatar(0);
        MEMORY[0x28223BE20](v307);
        OUTLINED_FUNCTION_1_17();
        *(v308 - 16) = v161;
        OUTLINED_FUNCTION_22_34();
        sub_26A41262C(v309, v310);
        OUTLINED_FUNCTION_12_37();

        swift_storeEnumTagMultiPayload();
        type metadata accessor for _ProtoImageElement.Contact(0);
        OUTLINED_FUNCTION_38_20();
        MEMORY[0x28223BE20](v311);
        OUTLINED_FUNCTION_15_46();
        *(v312 - 16) = v90;
        *(v312 - 8) = 0;
        OUTLINED_FUNCTION_3_69();
        sub_26A41262C(v313, v314);
        OUTLINED_FUNCTION_46_14();
        OUTLINED_FUNCTION_10_59();
        sub_26A41277C(v90, v315);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CFB8, &qword_26A426BE0);
        v316 = OUTLINED_FUNCTION_1_71();
        OUTLINED_FUNCTION_18_36(v316, v345);
      }

      OUTLINED_FUNCTION_43_16();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_86_1();
      OUTLINED_FUNCTION_38_20();
      MEMORY[0x28223BE20](v171);
      OUTLINED_FUNCTION_15_46();
      *(v172 - 16) = v347;
      *(v172 - 8) = v159;
      OUTLINED_FUNCTION_0_96();
      sub_26A41262C(v173, v174);
      sub_26A4249C4();

      sub_26A41277C(v161, type metadata accessor for ImageElement.Contact);
      goto LABEL_17;
    case 3u:
      v175 = *v1;
      v176 = *(v1 + 8);
      v177 = *(v1 + 24);
      v345.n128_u64[0] = *(v1 + 16);
      v178 = v345.n128_u64[0];
      v340 = v175;
      v341 = v177;
      type metadata accessor for ImageElement.AspectRatio();
      OUTLINED_FUNCTION_49_21();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v179, v180, v181, v182);
      v339 = sub_26A217578(&unk_287B028D0);
      v183 = v342;
      sub_26A412674(v110, v342, &qword_28036CBB8, &qword_26A4265C8);
      v184 = type metadata accessor for _ProtoImageElement.DataMessage(0);
      MEMORY[0x28223BE20](v184);
      *(&v321 - 6) = v175;
      *(&v321 - 5) = v176;
      *(&v321 - 4) = v178;
      *(&v321 - 3) = v177;
      OUTLINED_FUNCTION_6_43(&v321);
      *(v185 - 8) = v183;
      OUTLINED_FUNCTION_4_60();
      sub_26A41262C(v186, v187);
      OUTLINED_FUNCTION_12_37();
      sub_26A0E48F0(v183, &qword_28036CBB8, &qword_26A4265C8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CFB8, &qword_26A426BE0);
      v188 = OUTLINED_FUNCTION_1_71();
      *(v188 + 16) = xmmword_26A426410;
      OUTLINED_FUNCTION_34_17();
      sub_26A41271C(v83, v189, v190);
      swift_storeEnumTagMultiPayload();
      v347[0] = v188;
      v191 = type metadata accessor for _ProtoImageElement(0);
      MEMORY[0x28223BE20](v191);
      v192 = v339;
      *(&v321 - 2) = v347;
      *(&v321 - 1) = v192;
      OUTLINED_FUNCTION_0_96();
      sub_26A41262C(v193, v194);
      OUTLINED_FUNCTION_42_15();
      sub_26A4249C4();

      sub_26A0E4784(v340, v176);
      sub_26A10E794(v345.n128_i64[0], v341);
      sub_26A41277C(v83, type metadata accessor for ImageElement.PNGData);
      sub_26A0E48F0(v110, &qword_28036CBB8, &qword_26A4265C8);
      swift_setDeallocating();
      return sub_26A10C318();
    case 4u:
      v137 = *(v1 + 8);
      v345.n128_u64[0] = *v1;
      v138 = v345.n128_u64[0];
      type metadata accessor for ImageElement.AspectRatio();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v139, v140, v141, v142);
      v341 = sub_26A217578(&unk_287B02900);
      v143 = OUTLINED_FUNCTION_41_20();
      sub_26A412674(v143, v144, &qword_28036CBB8, &qword_26A4265C8);
      v145 = type metadata accessor for _ProtoImageElement.DataMessage(0);
      MEMORY[0x28223BE20](v145);
      OUTLINED_FUNCTION_13_27();
      *(v146 - 32) = v138;
      *(v146 - 24) = v137;
      OUTLINED_FUNCTION_6_43(v146);
      *(v147 - 8) = v110;
      OUTLINED_FUNCTION_4_60();
      sub_26A41262C(v148, v149);
      OUTLINED_FUNCTION_48_24();
      OUTLINED_FUNCTION_12_37();
      sub_26A0E48F0(v110, &qword_28036CBB8, &qword_26A4265C8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CFB8, &qword_26A426BE0);
      v150 = OUTLINED_FUNCTION_1_71();
      *(v150 + 16) = xmmword_26A426410;
      OUTLINED_FUNCTION_34_17();
      sub_26A41271C(v76, v151, v152);
      swift_storeEnumTagMultiPayload();
      v347[0] = v150;
      type metadata accessor for _ProtoImageElement(0);
      OUTLINED_FUNCTION_31_25();
      MEMORY[0x28223BE20](v153);
      v154 = v341;
      *(&v321 - 2) = v347;
      *(&v321 - 1) = v154;
      OUTLINED_FUNCTION_0_96();
      sub_26A41262C(v155, v156);
      OUTLINED_FUNCTION_42_15();
      sub_26A4249C4();

      sub_26A0E4784(v345.n128_i64[0], v137);
      sub_26A41277C(v76, type metadata accessor for ImageElement.AssetData);
      sub_26A0E48F0(v110, &qword_28036CBB8, &qword_26A4265C8);
      swift_setDeallocating();
      return sub_26A10C318();
    case 5u:
      v231 = *v1;
      v230 = *(v1 + 8);
      v232 = *(v1 + 16);
      v233 = *(v1 + 24);
      v234 = type metadata accessor for Color();
      v235 = v341;
      v238 = OUTLINED_FUNCTION_9_48(v341, v236, v237, v234);
      type metadata accessor for ImageElement.Background(v238);
      v239 = v323;
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v240, v241, v242, v243);
      v345.n128_u64[0] = sub_26A217578(&unk_287B02930);
      v244 = v337;
      sub_26A412674(v235, v337, &qword_28036CBA0, &qword_26A4265B0);
      sub_26A412674(v239, v60, &qword_28036D4D0, &qword_26A428230);
      type metadata accessor for _ProtoImageElement.Symbol(0);
      OUTLINED_FUNCTION_38_20();
      MEMORY[0x28223BE20](v245);
      OUTLINED_FUNCTION_11_45();
      *(v246 - 64) = v231;
      *(v246 - 56) = v230;
      *(v246 - 48) = v232;
      *(v246 - 40) = v233;
      *(v246 - 32) = v244;
      *(v246 - 24) = 0;
      *(v246 - 16) = v60;
      OUTLINED_FUNCTION_28_25();
      sub_26A41262C(v247, v248);
      v249 = v326;
      OUTLINED_FUNCTION_12_37();

      sub_26A0E48F0(v60, &qword_28036D4D0, &qword_26A428230);
      sub_26A0E48F0(v244, &qword_28036CBA0, &qword_26A4265B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CFB8, &qword_26A426BE0);
      *(OUTLINED_FUNCTION_1_71() + 16) = xmmword_26A426410;
      OUTLINED_FUNCTION_34_17();
      sub_26A41271C(v249, v250, v251);
      OUTLINED_FUNCTION_43_16();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_86_1();
      OUTLINED_FUNCTION_44_18();
      MEMORY[0x28223BE20](v252);
      OUTLINED_FUNCTION_50_17();
      v253 = v345.n128_u64[0];
      *(v254 - 16) = v255;
      *(v254 - 8) = v253;
      OUTLINED_FUNCTION_0_96();
      sub_26A41262C(v256, v257);
      OUTLINED_FUNCTION_42_15();
      sub_26A4249C4();

      sub_26A41277C(v249, type metadata accessor for ImageElement.Symbol);
      sub_26A0E48F0(v239, &qword_28036D4D0, &qword_26A428230);
      v258 = v341;
      v259 = &qword_28036CBA0;
      v260 = &qword_26A4265B0;
LABEL_16:
      sub_26A0E48F0(v258, v259, v260);
LABEL_17:
      swift_setDeallocating();
      return sub_26A10C318();
    case 6u:
      v261 = v339;
      sub_26A410A7C(v1, v339);
      v262 = *(v335 + 20);
      v263 = type metadata accessor for ImageElement.SourceType.LoadingImage(0);
      v264 = v340;
      OUTLINED_FUNCTION_9_48(v340, v265, v266, v263);
      type metadata accessor for ImageElement.AspectRatio();
      v267 = OUTLINED_FUNCTION_49_21();
      v321 = v110;
      OUTLINED_FUNCTION_9_48(v267, v268, v269, v270);
      type metadata accessor for Color();
      v271 = v341;
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v272, v273, v274, v275);
      v345.n128_u64[0] = sub_26A217578(&unk_287B02960);
      v328 = *(v338 + 16);
      v276 = v329;
      v277 = v333;
      v328(v329, v261, v333);
      v278 = v332;
      sub_26A412674(v261 + v262, v332, &qword_28036D500, &qword_26A435570);
      v279 = v336;
      sub_26A412674(v264, v336, &qword_28036D4F8, &qword_26A4283C0);
      v280 = v110;
      v281 = v342;
      sub_26A412674(v280, v342, &qword_28036CBB8, &qword_26A4265C8);
      v282 = v337;
      sub_26A412674(v271, v337, &qword_28036CBA0, &qword_26A4265B0);
      v283 = type metadata accessor for _ProtoImageElement.Url(0);
      v326 = &v321;
      MEMORY[0x28223BE20](v283);
      OUTLINED_FUNCTION_11_45();
      *(v284 - 64) = v276;
      *(v284 - 56) = v278;
      *(v284 - 48) = v279;
      *(v284 - 40) = 0;
      *(v284 - 32) = v281;
      *(v284 - 24) = 514;
      *(v284 - 22) = 0;
      *(v284 - 16) = v282;
      *(v284 - 8) = 0;
      *(v284 - 4) = 0;
      v285 = v327;
      v286 = *(v327 + 24);
      OUTLINED_FUNCTION_20_35();
      sub_26A41262C(v287, v288);
      v289 = v334;
      OUTLINED_FUNCTION_12_37();
      v331 = v261;
      v290 = v328;
      v328(v289, v276, v277);
      v291 = v289 + *(v285 + 20);
      v290(v291, v276, v277);
      v292 = v330;
      sub_26A412674(v278, v330, &qword_28036D500, &qword_26A435570);
      v293 = *(v335 + 20);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v294, v295, v296, v277);
      sub_26A2807A4(v292, v291 + v293);
      sub_26A0E48F0(v282, &qword_28036CBA0, &qword_26A4265B0);
      sub_26A0E48F0(v342, &qword_28036CBB8, &qword_26A4265C8);
      sub_26A0E48F0(v336, &qword_28036D4F8, &qword_26A4283C0);
      sub_26A0E48F0(v278, &qword_28036D500, &qword_26A435570);
      (*(v338 + 8))(v276, v277);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CFB8, &qword_26A426BE0);
      v297 = OUTLINED_FUNCTION_1_71();
      *(v297 + 16) = xmmword_26A426410;
      OUTLINED_FUNCTION_34_17();
      sub_26A41271C(v289, v298, v299);
      swift_storeEnumTagMultiPayload();
      v347[0] = v297;
      type metadata accessor for _ProtoImageElement(0);
      OUTLINED_FUNCTION_44_18();
      MEMORY[0x28223BE20](v300);
      OUTLINED_FUNCTION_50_17();
      v301 = v345.n128_u64[0];
      *(v302 - 16) = v303;
      *(v302 - 8) = v301;
      OUTLINED_FUNCTION_0_96();
      sub_26A41262C(v304, v305);
      OUTLINED_FUNCTION_42_15();
      sub_26A4249C4();

      sub_26A0E48F0(v341, &qword_28036CBA0, &qword_26A4265B0);
      sub_26A0E48F0(v321, &qword_28036CBB8, &qword_26A4265C8);
      sub_26A0E48F0(v340, &qword_28036D4F8, &qword_26A4283C0);
      OUTLINED_FUNCTION_30_20();
      sub_26A41277C(v339, v306);
      swift_setDeallocating();
      sub_26A10C318();
      return sub_26A41277C(v289, type metadata accessor for ImageElement.Url);
    case 7u:
      v195 = *v1;
      swift_projectBox();
      OUTLINED_FUNCTION_29_26();
      sub_26A41271C(v196, v16, v197);
      v198 = v324;
      RFImage.Source.asSourceType()(v324);
      v199 = (v16 + *(v322 + 20));
      v200 = v325;
      RFImage.Source.asSourceType()(v325);
      static ImageElement.badgedImage(image:badge:)(v198, v200);
      OUTLINED_FUNCTION_27_32();
      sub_26A41277C(v200, v201);
      sub_26A41277C(v198, v199);
      OUTLINED_FUNCTION_26_37();
      sub_26A41277C(v16, v202);

    default:
      v124 = *v1;
      v123 = *(v1 + 8);
      v125 = sub_26A217578(&unk_287B027E0);
      type metadata accessor for _ProtoImageElement.AppIcon(0);
      OUTLINED_FUNCTION_38_20();
      MEMORY[0x28223BE20](v126);
      OUTLINED_FUNCTION_13_27();
      *(v127 - 32) = v124;
      *(v127 - 24) = v123;
      *(v127 - 16) = 0;
      OUTLINED_FUNCTION_21_31();
      sub_26A41262C(v128, v129);
      OUTLINED_FUNCTION_12_37();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CFB8, &qword_26A426BE0);
      v130 = OUTLINED_FUNCTION_1_71();
      *(v130 + 16) = xmmword_26A426410;
      OUTLINED_FUNCTION_34_17();
      sub_26A41271C(v117, v131, v132);
      swift_storeEnumTagMultiPayload();
      v347[0] = v130;
      type metadata accessor for _ProtoImageElement(0);
      OUTLINED_FUNCTION_38_20();
      MEMORY[0x28223BE20](v133);
      OUTLINED_FUNCTION_15_46();
      *(v134 - 16) = v347;
      *(v134 - 8) = v125;
      OUTLINED_FUNCTION_0_96();
      sub_26A41262C(v135, v136);
      OUTLINED_FUNCTION_42_15();
      sub_26A4249C4();

      sub_26A41277C(v117, type metadata accessor for ImageElement.AppIcon);
      swift_setDeallocating();
      return sub_26A10C318();
  }
}

uint64_t sub_26A41262C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A412674(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_12(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_26A41271C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_12(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_26A41277C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_1_71()
{
  v2 = *(v0 - 144);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_12_37()
{

  return sub_26A4249C4();
}

uint64_t OUTLINED_FUNCTION_18_36(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return sub_26A41271C(v3, a1 + v2, type metadata accessor for ImageElement.Contact);
}

uint64_t OUTLINED_FUNCTION_19_32(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return sub_26A41271C(v3, a1 + v2, type metadata accessor for ImageElement.Bundle);
}

uint64_t OUTLINED_FUNCTION_41_20()
{
  result = v0;
  v3 = *(v1 - 152);
  return result;
}

uint64_t OUTLINED_FUNCTION_42_15()
{
  result = v0;
  v3 = *(v1 - 112);
  return result;
}

uint64_t OUTLINED_FUNCTION_43_16()
{
  result = v0 + v1;
  v4 = *(v2 - 136);
  return result;
}

uint64_t OUTLINED_FUNCTION_46_14()
{
  v2 = *(v0 - 240);

  return sub_26A4249C4();
}

uint64_t ImageElement.Bundle.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_175();
}

uint64_t ImageElement.Bundle.bundleId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_175();
}

uint64_t ImageElement.Bundle.imageStyle.getter@<X0>(char *a1@<X8>)
{
  v2 = *(v1 + 40);
  v4 = *(v1 + 32);
  v5 = v2;
  return sub_26A217A84(&v4, a1);
}

void ImageElement.Bundle.aspectRatio.getter()
{
  OUTLINED_FUNCTION_76();
  v26 = v1;
  v2 = type metadata accessor for _ProtoImageElement.AspectRatio(0);
  v3 = OUTLINED_FUNCTION_12(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  v8 = (v7 - v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D1A0, &qword_26A427150);
  v10 = OUTLINED_FUNCTION_41(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v25 - v17;
  v19 = *(type metadata accessor for _ProtoImageElement.Bundle(0) + 40);
  sub_26A0E4894(v0 + v19, v18, &qword_28036D1A0, &qword_26A427150);
  v20 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v18, 1, v2);
  v22 = v26;
  sub_26A0E48F0(v18, &qword_28036D1A0, &qword_26A427150);
  if (EnumTagSinglePayload != 1)
  {
    sub_26A0E4894(v0 + v19, v15, &qword_28036D1A0, &qword_26A427150);
    if (__swift_getEnumTagSinglePayload(v15, 1, v2) == 1)
    {
      *v8 = 0;
      v23 = v8 + *(v2 + 24);
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      if (__swift_getEnumTagSinglePayload(v15, 1, v2) != 1)
      {
        sub_26A0E48F0(v15, &qword_28036D1A0, &qword_26A427150);
      }
    }

    else
    {
      sub_26A41494C(v15, v8, type metadata accessor for _ProtoImageElement.AspectRatio);
    }

    sub_26A41494C(v8, v22, type metadata accessor for _ProtoImageElement.AspectRatio);
    v20 = 0;
  }

  v24 = type metadata accessor for ImageElement.AspectRatio();
  __swift_storeEnumTagSinglePayload(v22, v20, 1, v24);
  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A412F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  v9 = *a7;
  type metadata accessor for _ProtoImageElement.Bundle(0);
  OUTLINED_FUNCTION_0_97();
  sub_26A414870(v10, v11);
  sub_26A4249C4();

  return sub_26A0E48F0(a8, &qword_28036CBB8, &qword_26A4265C8);
}

void sub_26A4130B0()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBB8, &qword_26A4265C8);
  OUTLINED_FUNCTION_41(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15_2();
  v11 = type metadata accessor for ImageElement.Bundle();
  v12 = OUTLINED_FUNCTION_41(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_18();
  v17 = v16 - v15;
  v18 = *v4;
  sub_26A0E4894(v2, v0, &qword_28036CBB8, &qword_26A4265C8);
  type metadata accessor for _ProtoImageElement.Bundle(0);
  OUTLINED_FUNCTION_0_97();
  sub_26A414870(v19, v20);
  sub_26A4249C4();
  sub_26A0E48F0(v0, &qword_28036CBB8, &qword_26A4265C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CFB8, &qword_26A426BE0);
  v21 = OUTLINED_FUNCTION_110();
  v22 = type metadata accessor for ImageElement.SourceType(v21);
  OUTLINED_FUNCTION_25_7(v22);
  v24 = *(v23 + 72);
  v25 = OUTLINED_FUNCTION_14_28();
  *(v25 + 16) = xmmword_26A426410;
  sub_26A413FC8(v17, v25 + v6);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ProtoImageElement(0);
  OUTLINED_FUNCTION_22_35();
  OUTLINED_FUNCTION_9_49();
  sub_26A414870(v26, v27);
  OUTLINED_FUNCTION_29_27();
  OUTLINED_FUNCTION_8_45();
  sub_26A41478C();
  swift_setDeallocating();
  sub_26A10C318();
  OUTLINED_FUNCTION_75();
}

uint64_t ImageElement.Bundle.darkModeName.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
  }

  return OUTLINED_FUNCTION_175();
}

uint64_t ImageElement.Bundle.bundlePath.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_175();
}

void ImageElement.Bundle.fixedWidth.getter()
{
  OUTLINED_FUNCTION_76();
  v2 = type metadata accessor for _ProtoOptionalBool(0);
  v3 = OUTLINED_FUNCTION_12(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  v8 = (v7 - v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D198, &qword_26A432940);
  v10 = OUTLINED_FUNCTION_41(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  v17 = *(OUTLINED_FUNCTION_33_20() + 48);
  OUTLINED_FUNCTION_15_40();
  OUTLINED_FUNCTION_20_2();
  if (v1 != 1)
  {
    sub_26A0E4894(v0 + v17, v15, &qword_28036D198, &qword_26A432940);
    OUTLINED_FUNCTION_10_2();
    if (v18)
    {
      *v8 = 0;
      v19 = &v8[*(v2 + 20)];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_10_2();
      if (!v18)
      {
        sub_26A0E48F0(v15, &qword_28036D198, &qword_26A432940);
      }
    }

    else
    {
      sub_26A41494C(v15, v8, type metadata accessor for _ProtoOptionalBool);
    }

    OUTLINED_FUNCTION_10_60();
  }

  OUTLINED_FUNCTION_75();
}

void ImageElement.Bundle.fixedHeight.getter()
{
  OUTLINED_FUNCTION_76();
  v2 = type metadata accessor for _ProtoOptionalBool(0);
  v3 = OUTLINED_FUNCTION_12(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  v8 = (v7 - v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D198, &qword_26A432940);
  v10 = OUTLINED_FUNCTION_41(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  v17 = *(OUTLINED_FUNCTION_33_20() + 44);
  OUTLINED_FUNCTION_15_40();
  OUTLINED_FUNCTION_20_2();
  if (v1 != 1)
  {
    sub_26A0E4894(v0 + v17, v15, &qword_28036D198, &qword_26A432940);
    OUTLINED_FUNCTION_10_2();
    if (v18)
    {
      *v8 = 0;
      v19 = &v8[*(v2 + 20)];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_10_2();
      if (!v18)
      {
        sub_26A0E48F0(v15, &qword_28036D198, &qword_26A432940);
      }
    }

    else
    {
      sub_26A41494C(v15, v8, type metadata accessor for _ProtoOptionalBool);
    }

    OUTLINED_FUNCTION_10_60();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A41367C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, char a9, char a10, uint64_t a11)
{
  v72 = OUTLINED_FUNCTION_12_38(a1, a2, a3, a4, a5, a6, a7, a8);
  v18 = OUTLINED_FUNCTION_12(v72);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_18();
  v71 = v22 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBB8, &qword_26A4265C8);
  OUTLINED_FUNCTION_41(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v26);
  v75 = OUTLINED_FUNCTION_24_44(v27, v68);
  v28 = OUTLINED_FUNCTION_12(v75);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_18();
  v70 = v32 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D198, &qword_26A432940);
  v34 = OUTLINED_FUNCTION_41(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_17();
  v39 = v37 - v38;
  MEMORY[0x28223BE20](v40);
  v41 = OUTLINED_FUNCTION_34_18();
  v42 = OUTLINED_FUNCTION_12(v41);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_27_33();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_25_37();

  *v13 = v15;
  v13[1] = v12;
  if (v17)
  {
    v46 = v13[9];

    v13[8] = v73;
    v13[9] = v17;
  }

  v47 = v13[3];

  v13[2] = v74;
  v13[3] = v14;
  OUTLINED_FUNCTION_30_21();
  OUTLINED_FUNCTION_14_34();
  if (!v48)
  {
    v49 = *(type metadata accessor for _ProtoImageElement.Bundle(0) + 48);
    sub_26A0E4894(v13 + v49, v11, &qword_28036D198, &qword_26A432940);
    OUTLINED_FUNCTION_48_0(v11);
    if (v48)
    {
      v50 = &v16[*(v41 + 20)];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_48_0(v11);
      if (!v48)
      {
        sub_26A0E48F0(v11, &qword_28036D198, &qword_26A432940);
      }
    }

    else
    {
      v51 = OUTLINED_FUNCTION_28_26();
      sub_26A41494C(v51, v52, v53);
    }

    *v16 = v14 & 1;
    sub_26A0E48F0(v13 + v49, &qword_28036D198, &qword_26A432940);
    OUTLINED_FUNCTION_1_72();
    sub_26A41494C(v16, v13 + v49, v54);
    v55 = OUTLINED_FUNCTION_16_1();
    __swift_storeEnumTagSinglePayload(v55, v56, v57, v41);
  }

  if (a10 != 2)
  {
    v58 = *(type metadata accessor for _ProtoImageElement.Bundle(0) + 44);
    sub_26A0E4894(v13 + v58, v39, &qword_28036D198, &qword_26A432940);
    OUTLINED_FUNCTION_48_0(v39);
    if (v48)
    {
      v60 = v69;
      v59 = v69 + *(v41 + 20);
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_48_0(v39);
      if (!v48)
      {
        sub_26A0E48F0(v39, &qword_28036D198, &qword_26A432940);
      }
    }

    else
    {
      v60 = v69;
      sub_26A41494C(v39, v69, type metadata accessor for _ProtoOptionalBool);
    }

    *v60 = a10 & 1;
    sub_26A0E48F0(v13 + v58, &qword_28036D198, &qword_26A432940);
    OUTLINED_FUNCTION_1_72();
    sub_26A41494C(v60, v13 + v58, v61);
    OUTLINED_FUNCTION_32_23();
  }

  sub_26A0E4894(a11, v76, &qword_28036CBB8, &qword_26A4265C8);
  if (__swift_getEnumTagSinglePayload(v76, 1, v75) == 1)
  {
    return sub_26A0E48F0(v76, &qword_28036CBB8, &qword_26A4265C8);
  }

  sub_26A41494C(v76, v70, type metadata accessor for ImageElement.AspectRatio);
  OUTLINED_FUNCTION_7_35();
  sub_26A41494C(v70, v71, v63);
  v64 = *(type metadata accessor for _ProtoImageElement.Bundle(0) + 40);
  sub_26A0E48F0(v13 + v64, &qword_28036D1A0, &qword_26A427150);
  sub_26A41494C(v71, v13 + v64, v76);
  v65 = OUTLINED_FUNCTION_16_1();
  return __swift_storeEnumTagSinglePayload(v65, v66, v67, v72);
}

uint64_t sub_26A413AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, char a9, char a10, uint64_t a11)
{
  v72 = OUTLINED_FUNCTION_12_38(a1, a2, a3, a4, a5, a6, a7, a8);
  v18 = OUTLINED_FUNCTION_12(v72);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_18();
  v71 = v22 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBB8, &qword_26A4265C8);
  OUTLINED_FUNCTION_41(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v26);
  v75 = OUTLINED_FUNCTION_24_44(v27, v68);
  v28 = OUTLINED_FUNCTION_12(v75);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_18();
  v70 = v32 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D198, &qword_26A432940);
  v34 = OUTLINED_FUNCTION_41(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_17();
  v39 = v37 - v38;
  MEMORY[0x28223BE20](v40);
  v41 = OUTLINED_FUNCTION_34_18();
  v42 = OUTLINED_FUNCTION_12(v41);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_27_33();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_25_37();

  *v13 = v15;
  v13[1] = v12;
  if (v17)
  {
    v46 = v13[9];

    v13[8] = v73;
    v13[9] = v17;
  }

  v47 = v13[7];

  v13[6] = v74;
  v13[7] = v14;
  OUTLINED_FUNCTION_30_21();
  OUTLINED_FUNCTION_14_34();
  if (!v48)
  {
    v49 = *(type metadata accessor for _ProtoImageElement.Bundle(0) + 48);
    sub_26A0E4894(v13 + v49, v11, &qword_28036D198, &qword_26A432940);
    OUTLINED_FUNCTION_48_0(v11);
    if (v48)
    {
      v50 = &v16[*(v41 + 20)];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_48_0(v11);
      if (!v48)
      {
        sub_26A0E48F0(v11, &qword_28036D198, &qword_26A432940);
      }
    }

    else
    {
      v51 = OUTLINED_FUNCTION_28_26();
      sub_26A41494C(v51, v52, v53);
    }

    *v16 = v14 & 1;
    sub_26A0E48F0(v13 + v49, &qword_28036D198, &qword_26A432940);
    OUTLINED_FUNCTION_1_72();
    sub_26A41494C(v16, v13 + v49, v54);
    v55 = OUTLINED_FUNCTION_16_1();
    __swift_storeEnumTagSinglePayload(v55, v56, v57, v41);
  }

  if (a10 != 2)
  {
    v58 = *(type metadata accessor for _ProtoImageElement.Bundle(0) + 44);
    sub_26A0E4894(v13 + v58, v39, &qword_28036D198, &qword_26A432940);
    OUTLINED_FUNCTION_48_0(v39);
    if (v48)
    {
      v60 = v69;
      v59 = v69 + *(v41 + 20);
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_48_0(v39);
      if (!v48)
      {
        sub_26A0E48F0(v39, &qword_28036D198, &qword_26A432940);
      }
    }

    else
    {
      v60 = v69;
      sub_26A41494C(v39, v69, type metadata accessor for _ProtoOptionalBool);
    }

    *v60 = a10 & 1;
    sub_26A0E48F0(v13 + v58, &qword_28036D198, &qword_26A432940);
    OUTLINED_FUNCTION_1_72();
    sub_26A41494C(v60, v13 + v58, v61);
    OUTLINED_FUNCTION_32_23();
  }

  sub_26A0E4894(a11, v76, &qword_28036CBB8, &qword_26A4265C8);
  if (__swift_getEnumTagSinglePayload(v76, 1, v75) == 1)
  {
    return sub_26A0E48F0(v76, &qword_28036CBB8, &qword_26A4265C8);
  }

  sub_26A41494C(v76, v70, type metadata accessor for ImageElement.AspectRatio);
  OUTLINED_FUNCTION_7_35();
  sub_26A41494C(v70, v71, v63);
  v64 = *(type metadata accessor for _ProtoImageElement.Bundle(0) + 40);
  sub_26A0E48F0(v13 + v64, &qword_28036D1A0, &qword_26A427150);
  sub_26A41494C(v71, v13 + v64, v76);
  v65 = OUTLINED_FUNCTION_16_1();
  return __swift_storeEnumTagSinglePayload(v65, v66, v67, v72);
}

uint64_t type metadata accessor for ImageElement.Bundle()
{
  result = qword_28157B140;
  if (!qword_28157B140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A413FC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageElement.Bundle();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_26A414094()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBB8, &qword_26A4265C8);
  OUTLINED_FUNCTION_41(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_15_2();
  v9 = *v4;
  v10 = OUTLINED_FUNCTION_28_26();
  sub_26A0E4894(v10, v11, &qword_28036CBB8, &qword_26A4265C8);
  type metadata accessor for _ProtoImageElement.Bundle(0);
  OUTLINED_FUNCTION_0_97();
  sub_26A414870(v12, v13);
  sub_26A4249C4();

  sub_26A0E48F0(v2, &qword_28036CBB8, &qword_26A4265C8);
  sub_26A0E48F0(v0, &qword_28036CBB8, &qword_26A4265C8);
  OUTLINED_FUNCTION_75();
}

void sub_26A4141F8()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBB8, &qword_26A4265C8);
  OUTLINED_FUNCTION_41(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_15_2();
  v9 = *v4;
  v10 = OUTLINED_FUNCTION_28_26();
  sub_26A0E4894(v10, v11, &qword_28036CBB8, &qword_26A4265C8);
  type metadata accessor for _ProtoImageElement.Bundle(0);
  OUTLINED_FUNCTION_0_97();
  sub_26A414870(v12, v13);
  sub_26A4249C4();

  sub_26A0E48F0(v2, &qword_28036CBB8, &qword_26A4265C8);
  sub_26A0E48F0(v0, &qword_28036CBB8, &qword_26A4265C8);
  OUTLINED_FUNCTION_75();
}

uint64_t ImageElement.Bundle.hash(into:)()
{
  v0 = OUTLINED_FUNCTION_110();
  type metadata accessor for _ProtoImageElement.Bundle(v0);
  OUTLINED_FUNCTION_0_97();
  sub_26A414870(v1, v2);

  return sub_26A424B44();
}

uint64_t ImageElement.Bundle.hashValue.getter()
{
  sub_26A425504();
  type metadata accessor for _ProtoImageElement.Bundle(0);
  OUTLINED_FUNCTION_0_97();
  sub_26A414870(v0, v1);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A414428()
{
  sub_26A425504();
  type metadata accessor for _ProtoImageElement.Bundle(0);
  sub_26A414870(&qword_280370978, type metadata accessor for _ProtoImageElement.Bundle);
  sub_26A424B44();
  return sub_26A425554();
}

void sub_26A414540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_76();
  v59[0] = v22;
  v59[1] = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v59[3] = v35;
  v59[2] = a21;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBB8, &qword_26A4265C8);
  OUTLINED_FUNCTION_41(v36);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v39);
  v41 = v59 - v40;
  v42 = type metadata accessor for ImageElement.Bundle();
  v43 = OUTLINED_FUNCTION_41(v42);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_18();
  v48 = v47 - v46;
  LOBYTE(v26) = *v26;
  sub_26A0E4894(v24, v41, &qword_28036CBB8, &qword_26A4265C8);
  v49 = type metadata accessor for _ProtoImageElement.Bundle(0);
  v59[10] = v34;
  v59[11] = v32;
  v59[12] = 0;
  v59[13] = 0;
  v59[14] = v30;
  v59[15] = v28;
  v60 = v26;
  v61 = 514;
  v62 = v41;
  OUTLINED_FUNCTION_0_97();
  sub_26A414870(v50, v51);
  sub_26A4249C4();
  sub_26A0E48F0(v41, &qword_28036CBB8, &qword_26A4265C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CFB8, &qword_26A426BE0);
  v52 = OUTLINED_FUNCTION_110();
  v53 = type metadata accessor for ImageElement.SourceType(v52);
  OUTLINED_FUNCTION_25_7(v53);
  v55 = *(v54 + 72);
  v56 = OUTLINED_FUNCTION_14_28();
  *(v56 + 16) = xmmword_26A426410;
  sub_26A413FC8(v48, v56 + v49);
  swift_storeEnumTagMultiPayload();
  v63 = v56;
  type metadata accessor for _ProtoImageElement(0);
  OUTLINED_FUNCTION_22_35();
  OUTLINED_FUNCTION_9_49();
  sub_26A414870(v57, v58);
  OUTLINED_FUNCTION_29_27();
  OUTLINED_FUNCTION_8_45();
  sub_26A41478C();
  swift_setDeallocating();
  sub_26A10C318();
  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A41478C()
{
  v1 = OUTLINED_FUNCTION_110();
  v3 = v2(v1);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_26A414870(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A4148E0()
{
  result = type metadata accessor for _ProtoImageElement.Bundle(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A41494C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_12(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_175();
  v8(v7);
  return a2;
}

uint64_t OUTLINED_FUNCTION_10_60()
{
  v2 = *v0;

  return sub_26A41478C();
}

uint64_t OUTLINED_FUNCTION_12_38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  *(v9 - 104) = v8;
  *(v9 - 124) = a8;
  *(v9 - 144) = a4;
  *(v9 - 136) = a6;
  *(v9 - 72) = *(v9 + 16);

  return type metadata accessor for _ProtoImageElement.AspectRatio(0);
}

void OUTLINED_FUNCTION_14_34()
{
  v2 = *(v1 - 88);
  *(v0 + 32) = *(v1 - 96);
  *(v0 + 40) = v2;
  v3 = *(v1 - 72);
  v4 = *(v1 - 72);
}

uint64_t OUTLINED_FUNCTION_24_44@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  *(v2 - 112) = &a2 - a1;

  return type metadata accessor for ImageElement.AspectRatio();
}

uint64_t OUTLINED_FUNCTION_25_37()
{
  v2 = *(v0 + 8);
}

uint64_t OUTLINED_FUNCTION_29_27()
{
  v2 = *(v0 - 240);
  v3 = *(v0 - 232);

  return sub_26A4249C4();
}

void OUTLINED_FUNCTION_30_21()
{
  *(v0 - 65) = *(v0 - 124);

  sub_26A217AB0(v0 - 96);
}

uint64_t OUTLINED_FUNCTION_32_23()
{

  return __swift_storeEnumTagSinglePayload(v1 + v0, 0, 1, v2);
}

uint64_t OUTLINED_FUNCTION_33_20()
{

  return type metadata accessor for _ProtoImageElement.Bundle(0);
}

uint64_t OUTLINED_FUNCTION_34_18()
{

  return type metadata accessor for _ProtoOptionalBool(0);
}

uint64_t OUTLINED_FUNCTION_35_29()
{

  return type metadata accessor for _ProtoImageElement.Bundle(0);
}

uint64_t Vibrancy.description.getter()
{
  v1 = 6710895;
  if (*v0 != 1)
  {
    v1 = 28271;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t Vibrancy.hashValue.getter()
{
  v1 = *v0;
  sub_26A425504();
  MEMORY[0x26D65C340](v1);
  return sub_26A425554();
}

unint64_t sub_26A414CF0()
{
  result = qword_280373F90;
  if (!qword_280373F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280373F90);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Vibrancy(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_26A414E34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ProtoWatchListButton(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A414EA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ProtoWatchListButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t WatchListButton.canonicalId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t WatchListButton.init(canonicalId:)()
{
  type metadata accessor for _ProtoWatchListButton(0);
  sub_26A415170(&qword_28036F778, type metadata accessor for _ProtoWatchListButton);
  sub_26A4249C4();
}

Swift::String __swiftcall WatchListButton.description(redacted:)(Swift::Bool redacted)
{
  sub_26A424EF4();

  MEMORY[0x26D65BA70](*v1, v1[1]);
  MEMORY[0x26D65BA70](41, 0xE100000000000000);
  v2 = 0xD000000000000025;
  v3 = 0x800000026A446A00;
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

BOOL static WatchListButton.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  result = 0;
  if (v2 || (sub_26A425354() & 1) != 0)
  {
    v3 = *(type metadata accessor for _ProtoWatchListButton(0) + 20);
    sub_26A424794();
    sub_26A415170(qword_2815792E0, MEMORY[0x277D216C8]);
    if (sub_26A424B64())
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_26A415170(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for WatchListButton()
{
  result = qword_280373F98;
  if (!qword_280373F98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A415278()
{
  result = type metadata accessor for _ProtoWatchListButton(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_98()
{

  return type metadata accessor for _ProtoWatchListButton(0);
}

Swift::String __swiftcall ReferenceButton.description(redacted:)(Swift::Bool redacted)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB30, &qword_26A426480);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v7 = v47 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB18, &unk_26A427670);
  OUTLINED_FUNCTION_41(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v11);
  v13 = v47 - v12;
  v14 = type metadata accessor for ReferenceButton();
  v15 = OUTLINED_FUNCTION_41(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_17();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = v47 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF70, &unk_26A426B20);
  OUTLINED_FUNCTION_12(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v27);
  v29 = v47 - v28;
  OUTLINED_FUNCTION_4_61();
  sub_26A416544();
  if (redacted)
  {
    _ProtoReference_Button.redactedProto.getter(v20);
  }

  else
  {
    sub_26A416544();
  }

  sub_26A416598();
  v29[*(v24 + 32)] = redacted;
  sub_26A4165EC(v23, type metadata accessor for ReferenceButton);
  *&v29[*(v24 + 28)] = MEMORY[0x277D84F90];
  ReferenceButton.action.getter();
  type metadata accessor for ActionProperty();
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
  sub_26A1081A0();
  sub_26A0E48F0(v13, &qword_28036CB18, &unk_26A427670);
  ReferenceButton.label.getter();
  type metadata accessor for TextProperty(0);
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
  sub_26A108178();
  sub_26A0E48F0(v7, &qword_28036CB30, &qword_26A426480);
  if (v29[24] == 1)
  {
    v38 = v29[16];
  }

  sub_26A146454();
  KeyPath = swift_getKeyPath();
  sub_26A0F7D90(KeyPath, 0x6E656E6F706D6F63, 0xED0000656D614E74, 1, v40, v41, v42, v43, v47[0], v47[1]);

  sub_26A0FF490();
  sub_26A0E48F0(v29, &qword_28036CF70, &unk_26A426B20);
  v44 = OUTLINED_FUNCTION_175();
  result._object = v45;
  result._countAndFlagsBits = v44;
  return result;
}

uint64_t type metadata accessor for ReferenceButton()
{
  result = qword_280373FA8;
  if (!qword_280373FA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ReferenceButton.action.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_36();
  v5 = type metadata accessor for _ProtoActionProperty();
  v6 = OUTLINED_FUNCTION_12(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18();
  v11 = (v10 - v9);
  v12 = *(type metadata accessor for _ProtoReference_Button(0) + 32);
  OUTLINED_FUNCTION_18_37();
  OUTLINED_FUNCTION_1_4();
  if (v13)
  {
    *v11 = MEMORY[0x277D84F90];
    v11[1] = 0;
    v11[2] = 0xE000000000000000;
    v14 = v11 + *(v5 + 24);
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    OUTLINED_FUNCTION_1_4();
    if (!v13)
    {
      sub_26A0E48F0(v0, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    sub_26A416598();
  }

  return sub_26A416598();
}

uint64_t ReferenceButton.label.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_36();
  v6 = type metadata accessor for _ProtoTextProperty(v5);
  v7 = OUTLINED_FUNCTION_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18();
  v12 = v11 - v10;
  v13 = *(type metadata accessor for _ProtoReference_Button(0) + 28);
  OUTLINED_FUNCTION_18_37();
  OUTLINED_FUNCTION_1_4();
  if (v14)
  {
    *v12 = MEMORY[0x277D84F90];
    *(v12 + 8) = 0;
    v15 = v12 + v6[7];
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v16 = v6[8];
    v17 = type metadata accessor for _ProtoActionProperty();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v17);
    v21 = v6[9];
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v17);
    OUTLINED_FUNCTION_1_4();
    if (!v14)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A416598();
  }

  return sub_26A416598();
}

uint64_t ReferenceButton.componentName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_175();
}

void ReferenceButton.buttonRole.getter(_BYTE *a1@<X8>)
{
  if (*(v1 + 24) == 1)
  {
    v2 = *(v1 + 16);
  }

  else
  {
    v2 = 0;
  }

  *a1 = v2;
}

uint64_t _ProtoReference_Button.redactedProto.getter@<X0>(uint64_t a1@<X8>)
{
  v67 = type metadata accessor for _ProtoActionProperty();
  v2 = OUTLINED_FUNCTION_12(v67);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_17();
  v66 = (v5 - v6);
  MEMORY[0x28223BE20](v7);
  v65 = (&v63 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v10 = OUTLINED_FUNCTION_41(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17();
  v64 = v13 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v63 - v16;
  v18 = type metadata accessor for _ProtoTextProperty(0);
  v19 = OUTLINED_FUNCTION_12(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_17();
  v63 = v22 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v63 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v28 = OUTLINED_FUNCTION_41(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_17();
  v33 = v31 - v32;
  MEMORY[0x28223BE20](v34);
  v36 = &v63 - v35;
  OUTLINED_FUNCTION_1_73();
  sub_26A416544();
  v68 = type metadata accessor for _ProtoReference_Button(0);
  v37 = *(v68 + 28);
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v36, 1, v18);
  sub_26A0E48F0(v36, &qword_28036C7B8, &unk_26A425BF0);
  v39 = MEMORY[0x277D84F90];
  v40 = EnumTagSinglePayload == 1;
  v41 = v67;
  if (!v40)
  {
    sub_26A10FD9C();
    if (__swift_getEnumTagSinglePayload(v33, 1, v18) == 1)
    {
      *v26 = v39;
      *(v26 + 4) = 0;
      v42 = &v26[v18[7]];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v43 = v18[8];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v44, v45, v46, v41);
      v47 = v18[9];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v48, v49, v50, v41);
      if (__swift_getEnumTagSinglePayload(v33, 1, v18) != 1)
      {
        sub_26A0E48F0(v33, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A416598();
    }

    _ProtoTextProperty.redactedProto.getter();
    sub_26A4165EC(v26, type metadata accessor for _ProtoTextProperty);
    sub_26A0E48F0(a1 + v37, &qword_28036C7B8, &unk_26A425BF0);
    sub_26A416598();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v51, v52, v53, v18);
  }

  v54 = *(v68 + 32);
  sub_26A10FD9C();
  v55 = __swift_getEnumTagSinglePayload(v17, 1, v41);
  result = sub_26A0E48F0(v17, &off_28036C7C0, &off_26A427400);
  if (v55 != 1)
  {
    v57 = v64;
    sub_26A10FD9C();
    if (__swift_getEnumTagSinglePayload(v57, 1, v41) == 1)
    {
      v58 = v65;
      *v65 = v39;
      *(v58 + 8) = 0;
      *(v58 + 16) = 0xE000000000000000;
      v59 = v58 + *(v41 + 24);
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      if (__swift_getEnumTagSinglePayload(v57, 1, v41) != 1)
      {
        sub_26A0E48F0(v57, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      v58 = v65;
      sub_26A416598();
    }

    _s10SnippetKit14ActionPropertyV13redactedProtoAA01_fcD0Vvg_0(v66);
    sub_26A4165EC(v58, type metadata accessor for _ProtoActionProperty);
    sub_26A0E48F0(a1 + v54, &off_28036C7C0, &off_26A427400);
    sub_26A416598();
    OUTLINED_FUNCTION_126_0();
    return __swift_storeEnumTagSinglePayload(v60, v61, v62, v41);
  }

  return result;
}

uint64_t ReferenceButton.init(action:label:buttonRole:componentName:)(uint64_t *a1, uint64_t *a2, char *a3)
{
  v5 = *a3;
  type metadata accessor for _ProtoReference_Button(0);
  OUTLINED_FUNCTION_0_99();
  sub_26A416924(v6, v7);
  OUTLINED_FUNCTION_12_39();

  __swift_destroy_boxed_opaque_existential_1(a2);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26A415FB4(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a6;
  v31 = a5;
  v29 = a4;
  v28 = type metadata accessor for _ProtoTextProperty(0);
  v9 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v27[1] = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TextProperty(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = type metadata accessor for _ProtoActionProperty();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v15 = type metadata accessor for ActionProperty();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = a2[3];
  v18 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v17);
  (*(v18 + 8))(v17, v18);
  sub_26A416598();
  v19 = type metadata accessor for _ProtoReference_Button(0);
  v20 = *(v19 + 32);
  sub_26A0E48F0(a1 + v20, &off_28036C7C0, &off_26A427400);
  sub_26A416598();
  __swift_storeEnumTagSinglePayload(a1 + v20, 0, 1, v13);
  v21 = a3[3];
  v22 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v21);
  (*(v22 + 8))(v21, v22);
  sub_26A416598();
  v23 = *(v19 + 28);
  sub_26A0E48F0(a1 + v23, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A416598();
  __swift_storeEnumTagSinglePayload(a1 + v23, 0, 1, v28);
  v24 = v30;
  *(a1 + 16) = v29;
  *(a1 + 24) = 1;
  v25 = *(a1 + 8);

  *a1 = v31;
  *(a1 + 8) = v24;
  return result;
}

uint64_t ReferenceButton.init(action:label:buttonRole:)(uint64_t *a1, uint64_t *a2, char *a3)
{
  v5 = *a3;
  sub_26A0E5D68(a1, v10);
  sub_26A0E5D68(a2, v9);
  type metadata accessor for _ProtoReference_Button(0);
  OUTLINED_FUNCTION_0_99();
  sub_26A416924(v6, v7);
  OUTLINED_FUNCTION_65_2();
  __swift_destroy_boxed_opaque_existential_1(a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  __swift_destroy_boxed_opaque_existential_1(v9);
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t ReferenceButton.init(action:label:componentName:)(uint64_t *a1, uint64_t *a2)
{
  sub_26A0E5D68(a1, v8);
  sub_26A0E5D68(a2, v7);
  type metadata accessor for _ProtoReference_Button(0);
  OUTLINED_FUNCTION_0_99();
  sub_26A416924(v4, v5);
  OUTLINED_FUNCTION_12_39();

  __swift_destroy_boxed_opaque_existential_1(a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  __swift_destroy_boxed_opaque_existential_1(v7);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t ReferenceButton.init(action:label:)(uint64_t *a1, uint64_t *a2)
{
  sub_26A0E5D68(a1, v8);
  sub_26A0E5D68(a2, v7);
  type metadata accessor for _ProtoReference_Button(0);
  OUTLINED_FUNCTION_0_99();
  sub_26A416924(v4, v5);
  OUTLINED_FUNCTION_65_2();
  __swift_destroy_boxed_opaque_existential_1(a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  __swift_destroy_boxed_opaque_existential_1(v7);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t sub_26A416544()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t sub_26A416598()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t sub_26A4165EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t ReferenceButton.componentProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoReference_Button(0);
  v3 = OUTLINED_FUNCTION_41(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  v6 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v6);
  v10 = type metadata accessor for _ProtoResponse.Component(0);
  v11 = a1 + *(v10 + 20);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v12 = *(v10 + 24);
  type metadata accessor for _ProtoSeparators();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  OUTLINED_FUNCTION_1_73();
  sub_26A416544();
  sub_26A0E48F0(a1, &qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_5_60();
  sub_26A416598();
  OUTLINED_FUNCTION_175();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_126_0();
  return __swift_storeEnumTagSinglePayload(v17, v18, v19, v6);
}

uint64_t ReferenceButton.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for ReferenceButton();
  *(inited + 64) = &protocol witness table for ReferenceButton;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_4_61();
  sub_26A416544();
  swift_beginAccess();

  sub_26A10BF5C(v1);
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A416924(&qword_28036CB48, type metadata accessor for _ProtoResponse.Section);
  sub_26A4249C4();

  swift_setDeallocating();
  return sub_26A10C358();
}

uint64_t sub_26A416924(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A4169E0()
{
  result = type metadata accessor for _ProtoReference_Button(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_12_39()
{

  return sub_26A4249C4();
}

uint64_t OUTLINED_FUNCTION_17_35()
{

  return type metadata accessor for _ProtoReference_Button(0);
}

uint64_t OUTLINED_FUNCTION_18_37()
{

  return sub_26A10FD9C();
}

uint64_t Loggable<A>.encode(to:)(void *a1, uint64_t a2)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26A425584();
  __swift_mutable_project_boxed_opaque_existential_1(v6, v6[3]);
  v4 = *(a2 + 16);
  sub_26A425394();
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t Loggable<A>.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21[6] = a3;
  v20 = a4;
  v19 = *(a2 - 8);
  v7 = *(v19 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Loggable();
  v18 = *(v10 - 8);
  v11 = *(v18 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26A425564();
  if (!v4)
  {
    v17 = v10;
    __swift_project_boxed_opaque_existential_1(v21, v21[3]);
    sub_26A425374();
    (*(v19 + 32))(v13, v9, a2);
    __swift_destroy_boxed_opaque_existential_1(v21);
    (*(v18 + 32))(v20, v13, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26A416F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v5 = *(a3 + 16);
  return static Loggable<A>.== infix(_:_:)();
}

uint64_t Loggable<A>.hashValue.getter(uint64_t a1)
{
  sub_26A425504();
  Loggable<A>.hash(into:)(v3, a1);
  return sub_26A425554();
}

uint64_t sub_26A416FE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_26A425504();
  Loggable<A>.hash(into:)(v6, a2);
  return sub_26A425554();
}

uint64_t sub_26A417040(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A4170B0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_26A4171EC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
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
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_26A417424(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_16_11();
  v5 = v4(v3);
  OUTLINED_FUNCTION_12(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_175();
  v9(v8);
  return a2;
}

uint64_t sub_26A41804C@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, void (*a3)(uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v25 = a4;
  v28 = a3;
  v24 = a5;
  v8 = a2(0);
  OUTLINED_FUNCTION_41(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803705E0, &qword_26A432700);
  OUTLINED_FUNCTION_24(v14);
  v16 = v15;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_59_7();
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26A22CB30();
  sub_26A425574();
  if (!v5)
  {
    v21 = v28;
    sub_26A0E718C();
    sub_26A425054();
    v21(v26, v27);
    (*(v16 + 8))(v6, v14);
    sub_26A41C158(v13, v24);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26A418A18()
{
  v1 = OUTLINED_FUNCTION_16_11();
  v2 = type metadata accessor for _ProtoVisualElement(v1);
  v3 = OUTLINED_FUNCTION_12(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803705F0, &qword_26A432708);
  OUTLINED_FUNCTION_24(v9);
  v11 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_59_7();
  v15 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  sub_26A22CB30();
  sub_26A425594();
  VisualElement.proto.getter();
  sub_26A41C49C(qword_281579800, type metadata accessor for _ProtoVisualElement);
  v16 = sub_26A424994();
  if (v24)
  {
    sub_26A41C1B0(v8, type metadata accessor for _ProtoVisualElement);
  }

  else
  {
    v18 = v16;
    v19 = v17;
    sub_26A41C1B0(v8, type metadata accessor for _ProtoVisualElement);
    sub_26A0E70D4();
    sub_26A425154();
    sub_26A0E4784(v18, v19);
  }

  v20 = *(v11 + 8);
  v21 = OUTLINED_FUNCTION_44();
  return v22(v21);
}

uint64_t sub_26A4190DC(void *a1, void (*a2)(void), unint64_t *a3, void (*a4)(uint64_t))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803705F0, &qword_26A432708);
  OUTLINED_FUNCTION_24(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_59_7();
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26A22CB30();
  sub_26A425594();
  a2(0);
  sub_26A41C49C(a3, a4);
  v15 = sub_26A424994();
  if (!v23)
  {
    v21 = v15;
    v22 = v16;
    sub_26A0E70D4();
    sub_26A425154();
    sub_26A0E4784(v21, v22);
  }

  v17 = *(v10 + 8);
  v18 = OUTLINED_FUNCTION_44();
  return v19(v18);
}

uint64_t sub_26A419278(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  sub_26A41C408(*(a1 + 16), 0, &qword_28036CC18, &qword_26A426678);
  OUTLINED_FUNCTION_33_21();
  v7 = sub_26A41C990(v3, v4, v5, v6);
  sub_26A3CDE80();
  if (v7 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v1;
}

uint64_t sub_26A41931C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  sub_26A41C408(*(a1 + 16), 0, a2, a3);
  OUTLINED_FUNCTION_33_21();
  v9 = sub_26A41CAEC(v5, v6, v7, v8);
  sub_26A3CDE80();
  if (v9 != v4)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t Player.proto.getter()
{
  OUTLINED_FUNCTION_97_6();
  OUTLINED_FUNCTION_17_36();
  return sub_26A417424(v0, v1);
}

Swift::String __swiftcall Player.description(redacted:)(Swift::Bool redacted)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8F8, &unk_26A426440);
  OUTLINED_FUNCTION_41(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_36_2();
  v11 = type metadata accessor for Player.Control(v10);
  v12 = OUTLINED_FUNCTION_41(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_18();
  v15 = OUTLINED_FUNCTION_14_29();
  v16 = type metadata accessor for Player(v15);
  v17 = OUTLINED_FUNCTION_41(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_31_19();
  MEMORY[0x28223BE20](v20);
  v22 = v57 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB60, &qword_26A426578);
  OUTLINED_FUNCTION_12(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_15_47();
  sub_26A417424(v2, v22);
  if (redacted)
  {
    sub_26A2DD0AC();
  }

  else
  {
    v27 = OUTLINED_FUNCTION_124();
    sub_26A417424(v27, v28);
  }

  sub_26A41C158(v4, v1);
  *(v1 + *(v23 + 32)) = redacted;
  sub_26A41C1B0(v22, type metadata accessor for Player);
  v29 = *(v23 + 28);
  *(v1 + v29) = MEMORY[0x277D84F90];
  v30 = OUTLINED_FUNCTION_133();
  sub_26A0E4894(v30, v31, v32, v33);
  Player.Control.init(proto:)();
  v34 = sub_26A41A9B0(redacted);
  v36 = v35;
  OUTLINED_FUNCTION_14_35();
  sub_26A41C1B0(v3, v37);
  v38 = HIBYTE(v36) & 0xF;
  if ((v36 & 0x2000000000000000) == 0)
  {
    v38 = v34 & 0xFFFFFFFFFFFFLL;
  }

  if (v38)
  {

    sub_26A166E7C();
    v40 = v39;
    v41 = *(v39 + 16);
    if (v41 >= *(v39 + 24) >> 1)
    {
      sub_26A166E7C();
      v40 = v55;
    }

    *(v40 + 16) = v41 + 1;
    v42 = (v40 + 32 * v41);
    v42[4] = 0;
    v42[5] = 0;
    v42[6] = v34;
    v42[7] = v36;
    *(v1 + v29) = v40;
  }

  else
  {
  }

  KeyPath = swift_getKeyPath();
  sub_26A28FCC0(KeyPath, 0x736D6F696469, 0xE600000000000000);

  v44 = swift_getKeyPath();
  sub_26A0F8270(v44, 0x696669746E656469, 0xEA00000000007265, 1, v45, v46, v47, v48, v57[0], v57[1]);

  sub_26A0F99B8();
  v50 = v49;
  v52 = v51;
  sub_26A0E48F0(v1, &qword_28036CB60, &qword_26A426578);
  v53 = v50;
  v54 = v52;
  result._object = v54;
  result._countAndFlagsBits = v53;
  return result;
}

uint64_t _s10SnippetKit12_ProtoPlayerV08redactedC0ACvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = type metadata accessor for _ProtoPlayer.OneOf_Control(0);
  v6 = OUTLINED_FUNCTION_12(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8F8, &unk_26A426440);
  OUTLINED_FUNCTION_41(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_59_7();
  OUTLINED_FUNCTION_17_36();
  sub_26A417424(v3, a1);
  v16 = 1;
  if (!__swift_getEnumTagSinglePayload(a1, 1, v5))
  {
    v17 = OUTLINED_FUNCTION_175();
    sub_26A417424(v17, v18);
    _ProtoPlayer.OneOf_Control.redactedProto.getter(v2);
    OUTLINED_FUNCTION_18_38();
    sub_26A41C1B0(v11, v19);
    v16 = 0;
  }

  __swift_storeEnumTagSinglePayload(v2, v16, 1, v5);
  v20 = OUTLINED_FUNCTION_44();
  return sub_26A11C4D8(v20, v21);
}

void Player.control.getter()
{
  v1 = OUTLINED_FUNCTION_78_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  sub_26A0E4894(v0, &v8 - v7, &qword_28036C8F8, &unk_26A426440);
  Player.Control.init(proto:)();
}

void Player.Control.init(proto:)()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v103 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v5 = OUTLINED_FUNCTION_41(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_48();
  v95 = v9;
  v98 = type metadata accessor for _ProtoActionProperty();
  v10 = OUTLINED_FUNCTION_12(v98);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_48();
  v96 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036EC48, &unk_26A4385C0);
  v16 = OUTLINED_FUNCTION_41(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_17();
  v100 = v19 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v92 - v22;
  v101 = type metadata accessor for _ProtoButton(0);
  v24 = OUTLINED_FUNCTION_12(v101);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_48();
  v94 = v28;
  v29 = type metadata accessor for _ProtoPlayerButton(0);
  v30 = OUTLINED_FUNCTION_12(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_18();
  v102 = v34 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8F8, &unk_26A426440);
  v36 = OUTLINED_FUNCTION_12(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_31_19();
  MEMORY[0x28223BE20](v39);
  v41 = &v92 - v40;
  MEMORY[0x28223BE20](v42);
  v44 = &v92 - v43;
  v45 = v2;
  sub_26A0E4894(v2, &v92 - v43, &qword_28036C8F8, &unk_26A426440);
  v46 = type metadata accessor for _ProtoPlayer.OneOf_Control(0);
  if (__swift_getEnumTagSinglePayload(v44, 1, v46) == 1)
  {
    if (qword_28036C5A0 != -1)
    {
      swift_once();
    }

    v47 = sub_26A424AE4();
    __swift_project_value_buffer(v47, qword_2803A8950);
    v48 = v2;
    sub_26A0E4894(v2, v41, &qword_28036C8F8, &unk_26A426440);
    v49 = sub_26A424AD4();
    v50 = sub_26A424E04();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v105[0] = v52;
      *v51 = 136315138;
      sub_26A0E4894(v41, v0, &qword_28036C8F8, &unk_26A426440);
      sub_26A424BC4();
      sub_26A0E48F0(v41, &qword_28036C8F8, &unk_26A426440);
      v53 = OUTLINED_FUNCTION_124();
      v56 = sub_26A0E8788(v53, v54, v55);

      *(v51 + 4) = v56;
      _os_log_impl(&dword_26A0B8000, v49, v50, "Malformed protobuf message: %s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v52);
      MEMORY[0x26D65C950](v52, -1, -1);
      MEMORY[0x26D65C950](v51, -1, -1);

      v57 = v48;
    }

    else
    {

      sub_26A0E48F0(v45, &qword_28036C8F8, &unk_26A426440);
      v57 = v41;
    }

    sub_26A0E48F0(v57, &qword_28036C8F8, &unk_26A426440);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_26A0E48F0(v2, &qword_28036C8F8, &unk_26A426440);
        OUTLINED_FUNCTION_9_50();
      }

      else
      {
        sub_26A0E48F0(v2, &qword_28036C8F8, &unk_26A426440);
        OUTLINED_FUNCTION_8_46();
      }

      sub_26A41C158(v44, v103);
    }

    else
    {
      v59 = v102;
      sub_26A41C158(v44, v102);
      v60 = v29;
      sub_26A0E4894(v59 + *(v29 + 20), v23, &qword_28036EC48, &unk_26A4385C0);
      v61 = v101;
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v23, 1, v101);
      v92 = v45;
      if (EnumTagSinglePayload == 1)
      {
        v63 = v94;
        _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
        v64 = *(v61 + 20);
        v65 = v98;
        v66 = v95;
        if (qword_28036C428 != -1)
        {
          OUTLINED_FUNCTION_60_4();
        }

        *(v63 + v64) = qword_280371710;
        v67 = __swift_getEnumTagSinglePayload(v23, 1, v61);

        if (v67 != 1)
        {
          sub_26A0E48F0(v23, &qword_28036EC48, &unk_26A4385C0);
        }
      }

      else
      {
        v63 = v94;
        sub_26A41C158(v23, v94);
        v65 = v98;
        v66 = v95;
      }

      v68 = *(v63 + *(v61 + 20));
      v69 = OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__action;
      swift_beginAccess();
      sub_26A0E4894(v68 + v69, v66, &off_28036C7C0, &off_26A427400);
      if (__swift_getEnumTagSinglePayload(v66, 1, v65) == 1)
      {
        v70 = v96;
        v71 = MEMORY[0x277D84F90];
        *v96 = MEMORY[0x277D84F90];
        v70[1] = 0;
        v70[2] = 0xE000000000000000;
        v72 = v70 + *(v65 + 24);
        _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
        OUTLINED_FUNCTION_15(v66);
        v73 = v100;
        if (!v74)
        {
          sub_26A0E48F0(v66, &off_28036C7C0, &off_26A427400);
        }
      }

      else
      {
        v71 = MEMORY[0x277D84F90];
        OUTLINED_FUNCTION_4_62();
        v70 = v96;
        sub_26A41C158(v66, v96);
        v73 = v100;
      }

      sub_26A41C1B0(v63, type metadata accessor for _ProtoButton);
      v75 = type metadata accessor for ActionProperty();
      v105[3] = v75;
      v105[4] = &protocol witness table for ActionProperty;
      __swift_allocate_boxed_opaque_existential_1(v105);
      OUTLINED_FUNCTION_4_62();
      sub_26A41C158(v70, v76);
      sub_26A0E4894(v102 + *(v60 + 24), v73, &qword_28036EC48, &unk_26A4385C0);
      if (__swift_getEnumTagSinglePayload(v73, 1, v61) == 1)
      {
        v77 = v97;
        _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
        v78 = *(v61 + 20);
        if (qword_28036C428 != -1)
        {
          OUTLINED_FUNCTION_60_4();
        }

        *(v77 + v78) = qword_280371710;
        v79 = v100;
        v80 = __swift_getEnumTagSinglePayload(v100, 1, v61);

        if (v80 != 1)
        {
          sub_26A0E48F0(v79, &qword_28036EC48, &unk_26A4385C0);
        }
      }

      else
      {
        v77 = v97;
        sub_26A41C158(v73, v97);
      }

      v81 = *(v77 + *(v101 + 20));
      v82 = OBJC_IVAR____TtCV10SnippetKit12_ProtoButtonP33_99FD3D5AC21A4123539D9FC0C9DEBB4913_StorageClass__action;
      swift_beginAccess();
      v83 = v81 + v82;
      v84 = v93;
      sub_26A0E4894(v83, v93, &off_28036C7C0, &off_26A427400);
      OUTLINED_FUNCTION_15(v84);
      if (v74)
      {
        v86 = v99;
        *v99 = v71;
        v86[1] = 0;
        v86[2] = 0xE000000000000000;
        v85 = v86 + *(v65 + 24);
        _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
        OUTLINED_FUNCTION_15(v84);
        if (!v74)
        {
          sub_26A0E48F0(v84, &off_28036C7C0, &off_26A427400);
        }
      }

      else
      {
        v86 = v99;
        sub_26A41C158(v84, v99);
      }

      sub_26A41C1B0(v77, type metadata accessor for _ProtoButton);
      v104[3] = v75;
      v104[4] = &protocol witness table for ActionProperty;
      __swift_allocate_boxed_opaque_existential_1(v104);
      OUTLINED_FUNCTION_4_62();
      sub_26A41C158(v86, v87);
      v88 = type metadata accessor for _ProtoStandardPlayerButton(0);
      MEMORY[0x28223BE20](v88);
      *(&v92 - 6) = v105;
      *(&v92 - 5) = v104;
      *(&v92 - 4) = 0;
      *(&v92 - 3) = 0xE000000000000000;
      OUTLINED_FUNCTION_13_40();
      sub_26A41C49C(v89, v90);
      *(&v92 - 2) = 0;
      *(&v92 - 1) = 0;
      sub_26A4249C4();
      sub_26A0E48F0(v92, &qword_28036C8F8, &unk_26A426440);
      OUTLINED_FUNCTION_12_40();
      sub_26A41C1B0(v102, v91);
      __swift_destroy_boxed_opaque_existential_1(v104);
      __swift_destroy_boxed_opaque_existential_1(v105);
    }
  }

  type metadata accessor for Player.Control(0);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_75();
}

void *Player.idioms.getter()
{
  if (*(*(v0 + *(type metadata accessor for _ProtoPlayer(0) + 20)) + 16))
  {
  }

  else
  {
    return &unk_287B02990;
  }
}

uint64_t Player.identifier.getter()
{
  v1 = (v0 + *(type metadata accessor for _ProtoPlayer(0) + 24));
  v2 = *v1;
  v3 = v1[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
  }

  return OUTLINED_FUNCTION_175();
}

uint64_t Player.init(_:idioms:identifier:)(uint64_t *a1)
{
  type metadata accessor for _ProtoPlayer(0);
  OUTLINED_FUNCTION_0_100();
  sub_26A41C49C(v2, v3);
  sub_26A4249C4();

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26A41A4FC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = type metadata accessor for Player.Control(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a2[3];
  v14 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v13);
  (*(v14 + 8))(v13, v14);
  sub_26A0E48F0(a1, &qword_28036C8F8, &unk_26A426440);
  Player.Control.proto.getter(a1);
  sub_26A41C1B0(v12, type metadata accessor for Player.Control);

  v16 = sub_26A41931C(v15, &qword_280374070, &unk_26A445C68);
  v17 = type metadata accessor for _ProtoPlayer(0);
  v18 = *(v17 + 20);
  v19 = *(a1 + v18);

  *(a1 + v18) = v16;
  if (a5)
  {
    v20 = a4;
  }

  else
  {
    v20 = 0;
  }

  if (a5)
  {
    v21 = a5;
  }

  else
  {
    v21 = 0xE000000000000000;
  }

  v22 = (a1 + *(v17 + 24));
  v23 = v22[1];

  *v22 = v20;
  v22[1] = v21;
  return result;
}

uint64_t Player.Control.proto.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1;
  v6 = type metadata accessor for StandardPlayerButton();
  v7 = OUTLINED_FUNCTION_41(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18();
  v12 = v11 - v10;
  v13 = type metadata accessor for CustomCanvas();
  v14 = OUTLINED_FUNCTION_41(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_44_6();
  v17 = type metadata accessor for PlayerButton();
  v18 = OUTLINED_FUNCTION_41(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_18();
  v21 = OUTLINED_FUNCTION_14_29();
  v22 = type metadata accessor for Player.Control(v21);
  v23 = OUTLINED_FUNCTION_12(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_18();
  v28 = v27 - v26;
  OUTLINED_FUNCTION_1_74();
  sub_26A417424(v4, v28);
  OUTLINED_FUNCTION_124();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_26A41C158(v28, v2);
      OUTLINED_FUNCTION_9_50();
      v33 = OUTLINED_FUNCTION_44();
      sub_26A41C158(v33, v34);
      v29 = type metadata accessor for _ProtoPlayer.OneOf_Control(0);
      OUTLINED_FUNCTION_175();
      goto LABEL_6;
    case 2u:
      sub_26A41C158(v28, v12);
      OUTLINED_FUNCTION_8_46();
      sub_26A41C158(v12, a1);
      v29 = type metadata accessor for _ProtoPlayer.OneOf_Control(0);
      OUTLINED_FUNCTION_175();
      goto LABEL_6;
    case 3u:
      v30 = type metadata accessor for _ProtoPlayer.OneOf_Control(0);
      v31 = a1;
      v32 = 1;
      return __swift_storeEnumTagSinglePayload(v31, v32, 1, v30);
    default:
      sub_26A41C158(v28, v3);
      sub_26A41C158(v3, a1);
      v29 = type metadata accessor for _ProtoPlayer.OneOf_Control(0);
      OUTLINED_FUNCTION_175();
LABEL_6:
      swift_storeEnumTagMultiPayload();
      v31 = a1;
      v32 = 0;
      v30 = v29;
      return __swift_storeEnumTagSinglePayload(v31, v32, 1, v30);
  }
}

uint64_t Player.init(_:idioms:)(uint64_t *a1)
{
  sub_26A0E5D68(a1, v5);
  type metadata accessor for _ProtoPlayer(0);
  OUTLINED_FUNCTION_0_100();
  sub_26A41C49C(v2, v3);
  sub_26A4249C4();

  __swift_destroy_boxed_opaque_existential_1(a1);
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t Player.hash(into:)()
{
  type metadata accessor for _ProtoPlayer(0);
  OUTLINED_FUNCTION_0_100();
  sub_26A41C49C(v0, v1);
  OUTLINED_FUNCTION_133();

  return sub_26A424B44();
}

uint64_t Player.hashValue.getter()
{
  sub_26A425504();
  type metadata accessor for _ProtoPlayer(0);
  OUTLINED_FUNCTION_0_100();
  sub_26A41C49C(v0, v1);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A41AEA0()
{
  sub_26A425504();
  type metadata accessor for _ProtoPlayer(0);
  sub_26A41C49C(&qword_28036D1E0, type metadata accessor for _ProtoPlayer);
  sub_26A424B44();
  return sub_26A425554();
}

void static Player.Control.== infix(_:_:)()
{
  OUTLINED_FUNCTION_76();
  v47 = v3;
  v5 = v4;
  v6 = type metadata accessor for StandardPlayerButton();
  v7 = OUTLINED_FUNCTION_41(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18();
  v46 = v11 - v10;
  v12 = type metadata accessor for CustomCanvas();
  v13 = OUTLINED_FUNCTION_41(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_36_2();
  v16 = type metadata accessor for PlayerButton();
  v17 = OUTLINED_FUNCTION_41(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_18();
  v20 = OUTLINED_FUNCTION_14_29();
  v21 = type metadata accessor for Player.Control(v20);
  v22 = OUTLINED_FUNCTION_12(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_17();
  v27 = v25 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v46 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v46 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280374038, &qword_26A445A10);
  OUTLINED_FUNCTION_41(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_113();
  v39 = *(v38 + 56);
  sub_26A417424(v5, v0);
  sub_26A417424(v47, v0 + v39);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_26A417424(v0, v30);
      if (OUTLINED_FUNCTION_42_16() == 1)
      {
        sub_26A41C158(v0 + v39, v1);
        static _ProtoCustomCanvas.== infix(_:_:)(v30, v1);
        v43 = type metadata accessor for CustomCanvas;
        sub_26A41C1B0(v1, type metadata accessor for CustomCanvas);
        v44 = v30;
        goto LABEL_15;
      }

      v40 = type metadata accessor for CustomCanvas;
      v41 = v30;
      goto LABEL_12;
    case 2u:
      sub_26A417424(v0, v27);
      if (OUTLINED_FUNCTION_42_16() == 2)
      {
        v42 = v46;
        sub_26A41C158(v0 + v39, v46);
        static _ProtoStandardPlayerButton.== infix(_:_:)();
        v43 = type metadata accessor for StandardPlayerButton;
        sub_26A41C1B0(v42, type metadata accessor for StandardPlayerButton);
        v44 = v27;
        goto LABEL_15;
      }

      v40 = type metadata accessor for StandardPlayerButton;
      v41 = v27;
      goto LABEL_12;
    case 3u:
      if (OUTLINED_FUNCTION_42_16() != 3)
      {
        goto LABEL_13;
      }

      sub_26A41C1B0(v0, type metadata accessor for Player.Control);
      goto LABEL_16;
    default:
      sub_26A417424(v0, v33);
      if (OUTLINED_FUNCTION_42_16())
      {
        v40 = type metadata accessor for PlayerButton;
        v41 = v33;
LABEL_12:
        sub_26A41C1B0(v41, v40);
LABEL_13:
        sub_26A0E48F0(v0, &qword_280374038, &qword_26A445A10);
      }

      else
      {
        sub_26A41C158(v0 + v39, v2);
        static _ProtoPlayerButton.== infix(_:_:)();
        v43 = type metadata accessor for PlayerButton;
        sub_26A41C1B0(v2, type metadata accessor for PlayerButton);
        v44 = v33;
LABEL_15:
        sub_26A41C1B0(v44, v43);
        OUTLINED_FUNCTION_14_35();
        sub_26A41C1B0(v0, v45);
      }

LABEL_16:
      OUTLINED_FUNCTION_75();
      return;
  }
}

uint64_t Player.Control.hash(into:)()
{
  OUTLINED_FUNCTION_16_11();
  v4 = type metadata accessor for StandardPlayerButton();
  v5 = OUTLINED_FUNCTION_41(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_113();
  v8 = type metadata accessor for CustomCanvas();
  v9 = OUTLINED_FUNCTION_41(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_36_2();
  v12 = type metadata accessor for PlayerButton();
  v13 = OUTLINED_FUNCTION_41(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_44_6();
  v16 = type metadata accessor for Player.Control(0);
  v17 = OUTLINED_FUNCTION_12(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_18();
  v22 = v21 - v20;
  OUTLINED_FUNCTION_1_74();
  sub_26A417424(v1, v22);
  OUTLINED_FUNCTION_124();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_26A41C158(v22, v2);
      MEMORY[0x26D65C340](1);
      type metadata accessor for _ProtoCustomCanvas();
      sub_26A41C49C(&qword_28036D5D0, type metadata accessor for _ProtoCustomCanvas);
      OUTLINED_FUNCTION_84_5();
      sub_26A424B44();
      OUTLINED_FUNCTION_11_46();
      v24 = v2;
      return sub_26A41C1B0(v24, v23);
    case 2u:
      sub_26A41C158(v22, v0);
      MEMORY[0x26D65C340](2);
      type metadata accessor for _ProtoStandardPlayerButton(0);
      OUTLINED_FUNCTION_13_40();
      sub_26A41C49C(v25, v26);
      OUTLINED_FUNCTION_84_5();
      sub_26A424B44();
      OUTLINED_FUNCTION_10_61();
      v24 = v0;
      return sub_26A41C1B0(v24, v23);
    case 3u:
      return MEMORY[0x26D65C340](3);
    default:
      sub_26A41C158(v22, v3);
      MEMORY[0x26D65C340](0);
      type metadata accessor for _ProtoPlayerButton(0);
      sub_26A41C49C(&qword_2803715F0, type metadata accessor for _ProtoPlayerButton);
      OUTLINED_FUNCTION_84_5();
      sub_26A424B44();
      OUTLINED_FUNCTION_16_33();
      v24 = v3;
      return sub_26A41C1B0(v24, v23);
  }
}

uint64_t Player.Control.hashValue.getter()
{
  sub_26A425504();
  Player.Control.hash(into:)();
  return sub_26A425554();
}

uint64_t sub_26A41B684()
{
  sub_26A425504();
  Player.Control.hash(into:)();
  return sub_26A425554();
}

uint64_t Player.Control.asPlayerControl()()
{
  OUTLINED_FUNCTION_97_6();
  OUTLINED_FUNCTION_1_74();
  return sub_26A417424(v0, v1);
}

uint64_t sub_26A41B740()
{
  v0 = OUTLINED_FUNCTION_84_5();
  sub_26A417424(v0, v1);
  type metadata accessor for Player.Control(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_26A41B798(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[3] = a1(0);
  v9[4] = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  sub_26A417424(v4, boxed_opaque_existential_1);
  sub_26A217578(a4);
  return Player.init(_:idioms:)(v9);
}

uint64_t PlayerConvertible<>.asPlayer()(uint64_t a1, uint64_t a2)
{
  v6[3] = a1;
  v6[4] = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v6);
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_1, v2, a1);
  sub_26A217578(&unk_287B029C0);
  return Player.init(_:idioms:)(v6);
}

uint64_t Player.asPlayer()()
{
  OUTLINED_FUNCTION_97_6();
  OUTLINED_FUNCTION_15_47();
  return sub_26A417424(v0, v1);
}

BOOL sub_26A41BD00(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for Player(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a5 + 8))(a4, a5, v11);
  v14 = type metadata accessor for _ProtoPlayer(0);
  v15 = *&v13[*(v14 + 20)];
  if (v15[2])
  {
    v16 = *&v13[*(v14 + 20)];
  }

  else
  {
    v15 = &unk_287B029F0;
  }

  sub_26A41C1B0(v13, type metadata accessor for Player);
  v17 = sub_26A165034(a2, a3 & 1, v15);

  return v17;
}

BOOL sub_26A41BE20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Player(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a3 + 8))(a2, a3, v7);
  v10 = type metadata accessor for _ProtoPlayer(0);
  v11 = *&v9[*(v10 + 20)];
  if (v11[2])
  {
    v12 = *&v9[*(v10 + 20)];
  }

  else
  {
    v11 = &unk_287B02A20;
  }

  sub_26A41C1B0(v9, type metadata accessor for Player);
  v13 = v11[2] + 1;
  v14 = 4;
  do
  {
    if (!--v13)
    {
      break;
    }

    v15 = v11[v14];
    v14 += 2;
  }

  while (v15);
  v16 = v13 != 0;

  return v16;
}

uint64_t _ProtoPlayer.OneOf_Control.redactedProto.getter@<X0>(uint64_t a1@<X8>)
{
  v5 = type metadata accessor for _ProtoStandardPlayerButton(0);
  v6 = OUTLINED_FUNCTION_41(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_44_6();
  v9 = type metadata accessor for _ProtoPlayerButton(0);
  v10 = OUTLINED_FUNCTION_41(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_18();
  v13 = OUTLINED_FUNCTION_14_29();
  v14 = type metadata accessor for _ProtoPlayer.OneOf_Control(v13);
  v15 = OUTLINED_FUNCTION_12(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_18();
  v20 = v19 - v18;
  sub_26A417424(v1, v19 - v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_26A417424(v1, a1);
      OUTLINED_FUNCTION_18_38();
      return sub_26A41C1B0(v20, v22);
    }

    sub_26A41C158(v20, v2);
    sub_26A2917A8(a1);
    sub_26A41C1B0(v2, type metadata accessor for _ProtoStandardPlayerButton);
    OUTLINED_FUNCTION_133();
  }

  else
  {
    sub_26A41C158(v20, v3);
    _ProtoPlayerButton.redactedProto.getter(a1);
    OUTLINED_FUNCTION_12_40();
    sub_26A41C1B0(v3, v24);
    OUTLINED_FUNCTION_133();
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_26A41C158(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_16_11();
  v5 = v4(v3);
  OUTLINED_FUNCTION_12(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_175();
  v9(v8);
  return a2;
}

uint64_t sub_26A41C1B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(a1);
  return a1;
}

size_t sub_26A41C30C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_26A41C408(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  v6[2] = a1;
  v6[3] = 2 * ((v7 - 32) / 16);
  return v6;
}

uint64_t sub_26A41C49C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A41C62C()
{
  result = type metadata accessor for _ProtoPlayer(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A41C698()
{
  result = type metadata accessor for PlayerButton();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for CustomCanvas();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for StandardPlayerButton();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_26A41C74C()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for ComponentGroup();
  v34 = *(v8 - 8);
  v9 = *(v34 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  OUTLINED_FUNCTION_17();
  v33 = v10 - v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_48();
  v32 = v13;
  v14 = v1 + 64;
  v15 = -1 << *(v1 + 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(v1 + 64);
  if (!v5)
  {
    v19 = 0;
LABEL_20:
    *v7 = v1;
    v7[1] = v14;
    v7[2] = ~v15;
    v7[3] = v19;
    v7[4] = v17;
    OUTLINED_FUNCTION_75();
    return;
  }

  if (!v3)
  {
    v19 = 0;
    goto LABEL_20;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    v29 = -1 << *(v1 + 32);
    v30 = v7;
    v18 = 0;
    v19 = 0;
    v20 = (63 - v15) >> 6;
    v31 = v3;
    while (v18 < v3)
    {
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_24;
      }

      if (!v17)
      {
        while (1)
        {
          v22 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          if (v22 >= v20)
          {
            v17 = 0;
            v15 = v29;
            v7 = v30;
            goto LABEL_20;
          }

          v17 = *(v14 + 8 * v22);
          ++v19;
          if (v17)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v22 = v19;
LABEL_15:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v24 = v1;
      v25 = *(v1 + 56);
      v26 = *(v34 + 72);
      sub_26A417424(v25 + v26 * (v23 | (v22 << 6)), v33);
      sub_26A41C158(v33, v32);
      v27 = OUTLINED_FUNCTION_78_1();
      sub_26A41C158(v27, v28);
      v3 = v31;
      if (v21 == v31)
      {
        v19 = v22;
        v15 = v29;
        v7 = v30;
        v1 = v24;
        goto LABEL_20;
      }

      v5 += v26;
      v18 = v21;
      v19 = v22;
      v1 = v24;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_26A41C990(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_26A41CAEC(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
    v9 = 0;
    a3 = 0;
LABEL_18:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (!v7)
      {
        while (1)
        {
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v11 >= ((63 - v6) >> 6))
          {
            v7 = 0;
            a3 = v8;
            goto LABEL_18;
          }

          v7 = *(v4 + 8 * v11);
          ++v9;
          if (v7)
          {
            v9 = v11;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

LABEL_13:
      v12 = *(a4 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v7))));
      v13 = *v12;
      LOBYTE(v12) = *(v12 + 8);
      v7 &= v7 - 1;
      *a2 = v13;
      *(a2 + 8) = v12;
      a2 += 16;
      v8 = v10;
      if (v10 == a3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_42_16()
{

  return swift_getEnumCaseMultiPayload();
}

unint64_t _ProtoIdiom.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 9;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_26A41CDC4@<X0>(uint64_t *a1@<X8>)
{
  result = _ProtoIdiom.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_26A41CDF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A11EF50();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t static _ProtoIdiom.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_280374090 = a1;
}

uint64_t sub_26A41CF40@<X0>(uint64_t *a1@<X8>)
{
  result = static _ProtoIdiom.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_26A41CF68()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280374098);
  __swift_project_value_buffer(v0, qword_280374098);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_26A42B0D0;
  v4 = v24 + v3 + v1[14];
  *(v24 + v3) = 0;
  *v4 = "DEFAULT";
  *(v4 + 8) = 7;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_26A424A94();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v24 + v3 + v2 + v1[14];
  *(v24 + v3 + v2) = 1;
  *v8 = "PHONE";
  *(v8 + 8) = 5;
  *(v8 + 16) = 2;
  v7();
  v9 = (v24 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "PAD";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v7();
  v11 = (v24 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "POD";
  *(v12 + 1) = 3;
  v12[16] = 2;
  v7();
  v13 = (v24 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "CAR";
  *(v14 + 1) = 3;
  v14[16] = 2;
  v7();
  v15 = (v24 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "TV";
  *(v16 + 1) = 2;
  v16[16] = 2;
  v7();
  v17 = (v24 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "WATCH";
  *(v18 + 1) = 5;
  v18[16] = 2;
  v7();
  v19 = (v24 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "MAC";
  *(v20 + 1) = 3;
  v20[16] = 2;
  v7();
  v21 = (v24 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "RESERVED_DEVICE";
  *(v22 + 1) = 15;
  v22[16] = 2;
  v7();
  return sub_26A424AA4();
}

uint64_t static _ProtoIdiom._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_28036C798 != -1)
  {
    swift_once();
  }

  v2 = sub_26A424AC4();
  v3 = __swift_project_value_buffer(v2, qword_280374098);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_26A41D378()
{
  result = qword_28157B540;
  if (!qword_28157B540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157B540);
  }

  return result;
}

unint64_t sub_26A41D3D0()
{
  result = qword_28157B548;
  if (!qword_28157B548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157B548);
  }

  return result;
}

unint64_t sub_26A41D428()
{
  result = qword_2803740B0;
  if (!qword_2803740B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803740B8, &qword_26A445DF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803740B0);
  }

  return result;
}

uint64_t ImageElement.Contact.Avatar.init(contactIds:)()
{
  type metadata accessor for _ProtoImageElement.Contact.Avatar(0);
  OUTLINED_FUNCTION_7_36();
  sub_26A41E618(v0, v1);
  OUTLINED_FUNCTION_65_2();
}

uint64_t ImageElement.Contact.init(_:imageStyle:)(uint64_t a1, char *a2)
{
  v3 = *a2;
  type metadata accessor for _ProtoImageElement.Contact(0);
  OUTLINED_FUNCTION_0_101();
  sub_26A41E618(v4, v5);
  OUTLINED_FUNCTION_65_2();
  OUTLINED_FUNCTION_1_75();
  return sub_26A41E6A0(a1, v6);
}

uint64_t ImageElement.Contact.Monogram.init(letters:)()
{
  type metadata accessor for _ProtoImageElement.Contact.Monogram(0);
  OUTLINED_FUNCTION_9_51();
  sub_26A41E618(v0, v1);
  sub_26A4249C4();
}

uint64_t static ImageElement.contactImageAvatar(contactIds:imageStyle:idioms:)(uint64_t a1, char *a2)
{
  v3 = OUTLINED_FUNCTION_26_13();
  v4 = type metadata accessor for ImageElement.Contact.Content(v3);
  v5 = OUTLINED_FUNCTION_12(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18();
  v10 = v9 - v8;
  v11 = type metadata accessor for ImageElement.Contact(0);
  v12 = OUTLINED_FUNCTION_41(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_163_1();
  v15 = *a2;
  type metadata accessor for _ProtoImageElement.Contact.Avatar(0);
  OUTLINED_FUNCTION_7_36();
  sub_26A41E618(v16, v17);

  OUTLINED_FUNCTION_15_48();

  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ProtoImageElement.Contact(0);
  OUTLINED_FUNCTION_0_101();
  sub_26A41E618(v18, v19);
  OUTLINED_FUNCTION_22_36();
  OUTLINED_FUNCTION_1_75();
  sub_26A41E6A0(v10, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CFB8, &qword_26A426BE0);
  v21 = OUTLINED_FUNCTION_16_11();
  v22 = type metadata accessor for ImageElement.SourceType(v21);
  OUTLINED_FUNCTION_18_39(v22);
  v24 = *(v23 + 72);
  v25 = OUTLINED_FUNCTION_17_37();
  OUTLINED_FUNCTION_5_61(v25, xmmword_26A426410);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ProtoImageElement(0);
  OUTLINED_FUNCTION_6_44();
  sub_26A41E618(v26, v27);
  OUTLINED_FUNCTION_21_32();
  OUTLINED_FUNCTION_11_47();
  swift_setDeallocating();
  return sub_26A10C318();
}

uint64_t static ImageElement.contactImageMonogram(letters:imageStyle:idioms:)(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = OUTLINED_FUNCTION_26_13();
  v5 = type metadata accessor for ImageElement.Contact.Content(v4);
  v6 = OUTLINED_FUNCTION_12(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18();
  v11 = v10 - v9;
  v12 = type metadata accessor for ImageElement.Contact(0);
  v13 = OUTLINED_FUNCTION_41(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_163_1();
  v16 = *a3;
  type metadata accessor for _ProtoImageElement.Contact.Monogram(0);
  OUTLINED_FUNCTION_9_51();
  sub_26A41E618(v17, v18);

  OUTLINED_FUNCTION_15_48();

  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ProtoImageElement.Contact(0);
  OUTLINED_FUNCTION_0_101();
  sub_26A41E618(v19, v20);
  OUTLINED_FUNCTION_22_36();
  OUTLINED_FUNCTION_1_75();
  sub_26A41E6A0(v11, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CFB8, &qword_26A426BE0);
  v22 = OUTLINED_FUNCTION_16_11();
  v23 = type metadata accessor for ImageElement.SourceType(v22);
  OUTLINED_FUNCTION_18_39(v23);
  v25 = *(v24 + 72);
  v26 = OUTLINED_FUNCTION_17_37();
  OUTLINED_FUNCTION_5_61(v26, xmmword_26A426410);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ProtoImageElement(0);
  OUTLINED_FUNCTION_6_44();
  sub_26A41E618(v27, v28);
  OUTLINED_FUNCTION_21_32();
  OUTLINED_FUNCTION_11_47();
  swift_setDeallocating();
  return sub_26A10C318();
}

uint64_t ImageElement.Contact.content.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D9D0, &qword_26A432980);
  v4 = OUTLINED_FUNCTION_41(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  sub_26A41E6F8(v1, &v10 - v7);
  return sub_26A41DBFC(v8, a1);
}

uint64_t sub_26A41DBFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D9D0, &qword_26A432980);
  v6 = OUTLINED_FUNCTION_41(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_163_1();
  v9 = type metadata accessor for _ProtoImageElement.Contact.OneOf_Content(0);
  v10 = OUTLINED_FUNCTION_12(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v24 - v16;
  sub_26A41E6F8(a1, v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v9) == 1)
  {
    sub_26A41EA4C(v2);
    if (qword_28036C5A0 != -1)
    {
      swift_once();
    }

    v19 = sub_26A424AE4();
    __swift_project_value_buffer(v19, qword_2803A8950);
    v20 = sub_26A424AD4();
    v21 = sub_26A424E14();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v25 = v23;
      *v22 = 136446210;
      *(v22 + 4) = sub_26A0E8788(0xD000000000000032, 0x800000026A44B570, &v25);
      _os_log_impl(&dword_26A0B8000, v20, v21, "%{public}s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x26D65C950](v23, -1, -1);
      MEMORY[0x26D65C950](v22, -1, -1);
    }

    result = sub_26A424FC4();
    __break(1u);
  }

  else
  {
    sub_26A41EA4C(a1);
    sub_26A41E804(v2, v17);
    sub_26A41E804(v17, v14);
    swift_getEnumCaseMultiPayload();
    sub_26A41E804(v14, a2);
    type metadata accessor for ImageElement.Contact.Content(0);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t ImageElement.Contact.imageStyle.getter()
{
  v2 = OUTLINED_FUNCTION_26_13();
  v3 = (v1 + *(type metadata accessor for _ProtoImageElement.Contact(v2) + 20));
  v4 = *v3;
  LOBYTE(v3) = *(v3 + 8);
  v6 = v4;
  v7 = v3;
  return sub_26A217A84(&v6, v0);
}

uint64_t sub_26A41DF88(uint64_t a1, uint64_t a2, char a3)
{
  sub_26A41EA4C(a1);
  sub_26A41E020();
  v5 = type metadata accessor for _ProtoImageElement.Contact.OneOf_Content(0);
  __swift_storeEnumTagSinglePayload(a1, 0, 1, v5);
  v12 = a3;
  sub_26A217AB0(&v10);
  v6 = v10;
  v7 = v11;
  result = type metadata accessor for _ProtoImageElement.Contact(0);
  v9 = a1 + *(result + 20);
  *v9 = v6;
  *(v9 + 8) = v7;
  return result;
}

uint64_t sub_26A41E020()
{
  v3 = v1;
  v4 = OUTLINED_FUNCTION_26_13();
  v5 = type metadata accessor for ImageElement.Contact.Avatar(v4);
  v6 = OUTLINED_FUNCTION_41(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18();
  v11 = v10 - v9;
  v12 = type metadata accessor for ImageElement.Contact.Monogram(0);
  v13 = OUTLINED_FUNCTION_41(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_18();
  v18 = v17 - v16;
  v19 = type metadata accessor for ImageElement.Contact.Content(0);
  v20 = OUTLINED_FUNCTION_12(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_163_1();
  OUTLINED_FUNCTION_8_47();
  sub_26A41E768(v3, v2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A41E804(v2, v11);
    sub_26A41E804(v11, v0);
  }

  else
  {
    sub_26A41E804(v2, v18);
    sub_26A41E804(v18, v0);
  }

  type metadata accessor for _ProtoImageElement.Contact.OneOf_Content(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t ImageElement.Contact.hash(into:)()
{
  type metadata accessor for _ProtoImageElement.Contact(0);
  OUTLINED_FUNCTION_0_101();
  sub_26A41E618(v0, v1);

  return sub_26A424B44();
}

uint64_t ImageElement.Contact.hashValue.getter()
{
  sub_26A425504();
  type metadata accessor for _ProtoImageElement.Contact(0);
  OUTLINED_FUNCTION_0_101();
  sub_26A41E618(v0, v1);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A41E2B8()
{
  sub_26A425504();
  type metadata accessor for _ProtoImageElement.Contact(0);
  sub_26A41E618(&qword_28036D9C0, type metadata accessor for _ProtoImageElement.Contact);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t ImageElement.Contact.Content.description.getter()
{
  v1 = type metadata accessor for ImageElement.Contact.Monogram(0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18();
  v7 = (v6 - v5);
  v8 = type metadata accessor for ImageElement.Contact.Avatar(0);
  v9 = OUTLINED_FUNCTION_41(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_18();
  v14 = (v13 - v12);
  v15 = type metadata accessor for ImageElement.Contact.Content(0);
  v16 = OUTLINED_FUNCTION_12(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_18();
  v21 = v20 - v19;
  OUTLINED_FUNCTION_8_47();
  sub_26A41E768(v0, v21);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A41E804(v21, v14);
    v29 = *v14;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB68, &qword_26A426580);
    sub_26A10D548();
    v22 = sub_26A424B54();
    v24 = v23;

    MEMORY[0x26D65BA70](v22, v24);

    MEMORY[0x26D65BA70](41, 0xE100000000000000);
    v25 = 0x287261746176612ELL;
    v26 = type metadata accessor for ImageElement.Contact.Avatar;
    v27 = v14;
  }

  else
  {
    sub_26A41E804(v21, v7);
    MEMORY[0x26D65BA70](*v7, v7[1]);
    MEMORY[0x26D65BA70](41, 0xE100000000000000);
    v25 = 0x6172676F6E6F6D2ELL;
    v26 = type metadata accessor for ImageElement.Contact.Monogram;
    v27 = v7;
  }

  sub_26A41E6A0(v27, v26);
  return v25;
}

uint64_t ImageElement.Contact.Monogram.letters.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_26A41E5CC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;

  *a1 = a2;
  return result;
}

uint64_t sub_26A41E618(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A41E6A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_26A41E6F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D9D0, &qword_26A432980);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A41E768(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_16_11();
  v6 = v5(v4);
  OUTLINED_FUNCTION_12(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t sub_26A41E804(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_16_11();
  v6 = v5(v4);
  OUTLINED_FUNCTION_12(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t sub_26A41E8E8()
{
  result = type metadata accessor for ImageElement.Contact.Monogram(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ImageElement.Contact.Avatar(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_26A41E9DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A41EA4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D9D0, &qword_26A432980);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_5_61(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return sub_26A41E768(v2, a1 + v3);
}

uint64_t OUTLINED_FUNCTION_11_47()
{

  return sub_26A41E6A0(v0, type metadata accessor for ImageElement.Contact);
}

uint64_t OUTLINED_FUNCTION_15_48()
{

  return sub_26A4249C4();
}

uint64_t OUTLINED_FUNCTION_17_37()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_21_32()
{

  return sub_26A4249C4();
}

uint64_t OUTLINED_FUNCTION_22_36()
{

  return sub_26A4249C4();
}

uint64_t type metadata accessor for PrimaryHeaderRich()
{
  result = qword_2803740F8;
  if (!qword_2803740F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PrimaryHeaderRich.text1.getter()
{
  v2 = OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_56_3();
  v7 = OUTLINED_FUNCTION_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18();
  v12 = v11 - v10;
  v13 = *(v0 + *(type metadata accessor for _ProtoPrimaryHeader_Rich(0) + 20));
  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  v14 = OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_37(v14, v15, v6);
  if (v16)
  {
    *v12 = MEMORY[0x277D84F90];
    *(v12 + 8) = 0;
    v17 = v12 + v6[7];
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v18 = v6[8];
    v19 = type metadata accessor for _ProtoActionProperty();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v19);
    v23 = v6[9];
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v19);
    v27 = OUTLINED_FUNCTION_107();
    OUTLINED_FUNCTION_37(v27, v28, v6);
    if (!v16)
    {
      sub_26A0E48F0(v1, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A421C7C();
  }

  return sub_26A421C7C();
}

void sub_26A41F490()
{
  OUTLINED_FUNCTION_76();
  v3 = v2;
  v5 = OUTLINED_FUNCTION_239(v4);
  v6 = type metadata accessor for _ProtoMultilineTextProperty(v5);
  v7 = OUTLINED_FUNCTION_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_7();
  v10 = OUTLINED_FUNCTION_41_2();
  v11 = OUTLINED_FUNCTION_41(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v14);
  v15 = OUTLINED_FUNCTION_20_36();
  OUTLINED_FUNCTION_241(v15);
  v16 = *v3;
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v17 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v17, v18, &unk_26A4273F0);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v19)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v20 = *(v6 + 32);
      v21 = type metadata accessor for _ProtoActionProperty();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v22, v23, v24, v21);
      v25 = *(v6 + 36);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v26, v27, v28, v21);
      OUTLINED_FUNCTION_38_0();
      if (!v19)
      {
        sub_26A0E48F0(v1, &qword_28036CAE0, &unk_26A4273F0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_50_18();
    }

    sub_26A421C7C();
    v3 = 0;
  }

  v29 = type metadata accessor for MultilineTextProperty(0);
  __swift_storeEnumTagSinglePayload(v30, v3, 1, v29);
  OUTLINED_FUNCTION_75();
}

void PrimaryHeaderRich.text4.getter()
{
  OUTLINED_FUNCTION_76();
  v4 = OUTLINED_FUNCTION_239(v3);
  v5 = type metadata accessor for _ProtoTextProperty(v4);
  v6 = OUTLINED_FUNCTION_12(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_7();
  v9 = OUTLINED_FUNCTION_41_2();
  v10 = OUTLINED_FUNCTION_41(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v13);
  v14 = OUTLINED_FUNCTION_20_36();
  OUTLINED_FUNCTION_241(v14);
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v15 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v15, v16, &unk_26A425BF0);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v17)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v18 = *(v5 + 32);
      v19 = type metadata accessor for _ProtoActionProperty();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v20, v21, v22, v19);
      v23 = *(v5 + 36);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v24, v25, v26, v19);
      OUTLINED_FUNCTION_38_0();
      if (!v17)
      {
        sub_26A0E48F0(v1, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_50_18();
    }

    sub_26A421C7C();
    v2 = 0;
  }

  v27 = type metadata accessor for TextProperty(0);
  __swift_storeEnumTagSinglePayload(v28, v2, 1, v27);
  OUTLINED_FUNCTION_75();
}

void PrimaryHeaderRich.thumbnail.getter()
{
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_239(v3);
  v4 = type metadata accessor for _ProtoVisualProperty();
  v5 = OUTLINED_FUNCTION_12(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_7();
  v8 = OUTLINED_FUNCTION_41_2();
  v9 = OUTLINED_FUNCTION_41(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_20_36();
  OUTLINED_FUNCTION_241(v13);
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v14 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v14, v15, &unk_26A426430);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v16)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v17 = *(v4 + 32);
      v18 = type metadata accessor for _ProtoActionProperty();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v19, v20, v21, v18);
      v22 = *(v4 + 36);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v23, v24, v25, v18);
      OUTLINED_FUNCTION_38_0();
      if (!v16)
      {
        sub_26A0E48F0(v1, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      OUTLINED_FUNCTION_50_18();
    }

    sub_26A421C7C();
    v2 = 0;
  }

  v26 = type metadata accessor for VisualProperty();
  __swift_storeEnumTagSinglePayload(v27, v2, 1, v26);
  OUTLINED_FUNCTION_75();
}

void PrimaryHeaderRich.action.getter()
{
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_239(v4);
  v5 = type metadata accessor for _ProtoActionProperty();
  v6 = OUTLINED_FUNCTION_12(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_7();
  v9 = OUTLINED_FUNCTION_41_2();
  v10 = OUTLINED_FUNCTION_41(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v13);
  v14 = OUTLINED_FUNCTION_20_36();
  OUTLINED_FUNCTION_241(v14);
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v15 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v15, v16, &off_26A427400);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v17)
    {
      *v3 = MEMORY[0x277D84F90];
      v3[1] = 0;
      v3[2] = 0xE000000000000000;
      v18 = v3 + *(v5 + 24);
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_38_0();
      if (!v17)
      {
        sub_26A0E48F0(v1, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      OUTLINED_FUNCTION_50_18();
    }

    sub_26A421C7C();
    v2 = 0;
  }

  v19 = type metadata accessor for ActionProperty();
  __swift_storeEnumTagSinglePayload(v20, v2, 1, v19);
  OUTLINED_FUNCTION_75();
}

uint64_t PrimaryHeaderRich.componentName.getter()
{
  v1 = (*(v0 + *(type metadata accessor for _ProtoPrimaryHeader_Rich(0) + 20)) + OBJC_IVAR____TtCV10SnippetKit24_ProtoPrimaryHeader_RichP33_20A83C8923FECE60991A771F98D088B413_StorageClass__componentName);
  OUTLINED_FUNCTION_142();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

void _ProtoPrimaryHeader_Rich.redactedProto.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_76();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v291 = type metadata accessor for _ProtoActionProperty();
  v24 = OUTLINED_FUNCTION_12(v291);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v30 = OUTLINED_FUNCTION_41(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v35);
  v289 = type metadata accessor for _ProtoVisualProperty();
  v36 = OUTLINED_FUNCTION_12(v289);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v42 = OUTLINED_FUNCTION_41(v41);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v47);
  v284 = type metadata accessor for _ProtoMultilineTextProperty(0);
  v48 = OUTLINED_FUNCTION_12(v284);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v54);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  v56 = OUTLINED_FUNCTION_41(v55);
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v63);
  v64 = type metadata accessor for _ProtoTextProperty(0);
  v65 = OUTLINED_FUNCTION_12(v64);
  v67 = *(v66 + 64);
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v70);
  v72 = &v268 - v71;
  v73 = OUTLINED_FUNCTION_41_2();
  v74 = OUTLINED_FUNCTION_41(v73);
  v76 = *(v75 + 64);
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v79);
  v81 = &v268 - v80;
  MEMORY[0x28223BE20](v82);
  v84 = &v268 - v83;
  OUTLINED_FUNCTION_5_62();
  sub_26A42210C();
  v85 = *(type metadata accessor for _ProtoPrimaryHeader_Rich(0) + 20);
  v292 = v23;
  v293 = v85;
  v86 = *(v23 + v85);
  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  LODWORD(v23) = __swift_getEnumTagSinglePayload(v84, 1, v64);
  sub_26A0E48F0(v84, &qword_28036C7B8, &unk_26A425BF0);
  v87 = MEMORY[0x277D84F90];
  if (v23 != 1)
  {
    sub_26A10FD9C();
    v88 = OUTLINED_FUNCTION_38_1();
    OUTLINED_FUNCTION_37(v88, v89, v64);
    if (v90)
    {
      *v72 = v87;
      *(v72 + 4) = 0;
      v91 = &v72[v64[7]];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v92 = v64[8];
      OUTLINED_FUNCTION_92();
      v93 = v291;
      __swift_storeEnumTagSinglePayload(v94, v95, v96, v291);
      v97 = v64[9];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v98, v99, v100, v93);
      v101 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_37(v101, v102, v64);
      v103 = v292;
      if (!v90)
      {
        sub_26A0E48F0(v81, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A421C7C();
      v103 = v292;
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_13_41();
    sub_26A421CD0(v72, v104);
    v105 = v293;
    v106 = *(v103 + v293);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v86 = *(v103 + v105);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v108 = type metadata accessor for _ProtoPrimaryHeader_Rich._StorageClass(0);
      v109 = OUTLINED_FUNCTION_188_0(v108);
      OUTLINED_FUNCTION_26_38(v109, v110, v111, v112, v113, v114, v115, v116, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279);
      v86 = v117;
      *(v103 + v105) = v117;
    }

    OUTLINED_FUNCTION_129(&a12);
    sub_26A421C7C();
    v118 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v118, v119, v120, v64);
    OUTLINED_FUNCTION_211();
    sub_26A10CF40();
    swift_endAccess();
  }

  v285 = v64;
  OUTLINED_FUNCTION_142();
  v121 = v283;
  OUTLINED_FUNCTION_209();
  v122 = v284;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v121, 1, v284);
  OUTLINED_FUNCTION_162_0(v121);
  if (EnumTagSinglePayload == 1)
  {
    v124 = v87;
    v125 = v291;
    v126 = v292;
  }

  else
  {
    v127 = v268;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v127, 1, v122);
    v126 = v292;
    v128 = v293;
    if (v90)
    {
      OUTLINED_FUNCTION_35_17(v294);
      v129 = v86 + v122[7];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v130 = OUTLINED_FUNCTION_44_0(v122[8]);
      v136 = v291;
      __swift_storeEnumTagSinglePayload(v130, v131, v132, v291);
      v133 = OUTLINED_FUNCTION_44_0(v122[9]);
      __swift_storeEnumTagSinglePayload(v133, v134, v135, v136);
      OUTLINED_FUNCTION_37(v127, 1, v122);
      if (!v90)
      {
        sub_26A0E48F0(v127, &qword_28036CAE0, &unk_26A4273F0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_43_17(v294);
      v136 = v291;
    }

    _ProtoMultilineTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_21_33();
    v137 = *(v126 + v128);
    v138 = swift_isUniquelyReferenced_nonNull_native();
    v86 = *(v126 + v128);
    v125 = v136;
    if ((v138 & 1) == 0)
    {
      v139 = type metadata accessor for _ProtoPrimaryHeader_Rich._StorageClass(0);
      v140 = OUTLINED_FUNCTION_188_0(v139);
      OUTLINED_FUNCTION_26_38(v140, v141, v142, v143, v144, v145, v146, v147, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279);
      v86 = v148;
      *(v126 + v128) = v148;
    }

    v124 = v87;
    OUTLINED_FUNCTION_129(&a11);
    sub_26A421C7C();
    v149 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v149, v150, v151, v122);
    OUTLINED_FUNCTION_211();
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  v152 = v286;
  sub_26A10FD9C();
  v153 = v122;
  v154 = __swift_getEnumTagSinglePayload(v152, 1, v122);
  sub_26A0E48F0(v152, &qword_28036CAE0, &unk_26A4273F0);
  if (v154 == 1)
  {
    v155 = v124;
    v156 = v125;
    v157 = v126;
    v158 = v285;
  }

  else
  {
    v159 = v271;
    sub_26A10FD9C();
    v160 = OUTLINED_FUNCTION_107();
    OUTLINED_FUNCTION_37(v160, v161, v153);
    v162 = v293;
    v155 = v124;
    if (v90)
    {
      OUTLINED_FUNCTION_35_17(v295);
      v163 = v86 + v153[7];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v164 = OUTLINED_FUNCTION_44_0(v153[8]);
      v156 = v125;
      __swift_storeEnumTagSinglePayload(v164, v165, v166, v125);
      v167 = OUTLINED_FUNCTION_44_0(v153[9]);
      __swift_storeEnumTagSinglePayload(v167, v168, v169, v125);
      v170 = OUTLINED_FUNCTION_107();
      OUTLINED_FUNCTION_37(v170, v171, v153);
      v157 = v126;
      if (!v90)
      {
        sub_26A0E48F0(v159, &qword_28036CAE0, &unk_26A4273F0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_43_17(v295);
      v156 = v125;
      v157 = v126;
    }

    _ProtoMultilineTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_21_33();
    v172 = *(v157 + v162);
    v173 = swift_isUniquelyReferenced_nonNull_native();
    v86 = *(v157 + v162);
    v158 = v285;
    if ((v173 & 1) == 0)
    {
      v174 = type metadata accessor for _ProtoPrimaryHeader_Rich._StorageClass(0);
      v175 = OUTLINED_FUNCTION_188_0(v174);
      OUTLINED_FUNCTION_26_38(v175, v176, v177, v178, v179, v180, v181, v182, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279);
      v86 = v183;
      *(v157 + v162) = v183;
    }

    sub_26A421C7C();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v184, v185, v186, v153);
    OUTLINED_FUNCTION_211();
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  v187 = v287;
  OUTLINED_FUNCTION_209();
  v188 = __swift_getEnumTagSinglePayload(v187, 1, v158);
  OUTLINED_FUNCTION_162_0(v187);
  if (v188 == 1)
  {
    v189 = v155;
  }

  else
  {
    OUTLINED_FUNCTION_129(&v296);
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(&unk_26A425BF0, 1, v158);
    v190 = v293;
    if (v90)
    {
      OUTLINED_FUNCTION_35_17(v297);
      v191 = v86 + v158[7];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v192 = OUTLINED_FUNCTION_44_0(v158[8]);
      __swift_storeEnumTagSinglePayload(v192, v193, v194, v156);
      v195 = OUTLINED_FUNCTION_44_0(v158[9]);
      __swift_storeEnumTagSinglePayload(v195, v196, v197, v156);
      OUTLINED_FUNCTION_37(&unk_26A425BF0, 1, v158);
      if (!v90)
      {
        sub_26A0E48F0(&unk_26A425BF0, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_43_17(v297);
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_13_41();
    sub_26A421CD0(v86, v198);
    v199 = *(v157 + v190);
    v200 = swift_isUniquelyReferenced_nonNull_native();
    v86 = *(v157 + v190);
    v201 = v158;
    if ((v200 & 1) == 0)
    {
      v202 = type metadata accessor for _ProtoPrimaryHeader_Rich._StorageClass(0);
      v203 = OUTLINED_FUNCTION_188_0(v202);
      OUTLINED_FUNCTION_26_38(v203, v204, v205, v206, v207, v208, v209, v210, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279);
      v86 = v211;
      *(v157 + v190) = v211;
    }

    v189 = v155;
    sub_26A421C7C();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v212, v213, v214, v201);
    OUTLINED_FUNCTION_211();
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  v215 = v288;
  OUTLINED_FUNCTION_209();
  v216 = v289;
  v217 = __swift_getEnumTagSinglePayload(v215, 1, v289);
  OUTLINED_FUNCTION_162_0(v215);
  if (v217 == 1)
  {
    v218 = v189;
  }

  else
  {
    v219 = v277;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v219, 1, v216);
    v220 = v293;
    if (v90)
    {
      v86 = v278;
      v218 = v189;
      *v278 = v189;
      *(v86 + 4) = 0;
      v221 = v86 + v216[7];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v222 = OUTLINED_FUNCTION_44_0(v216[8]);
      __swift_storeEnumTagSinglePayload(v222, v223, v224, v156);
      v225 = OUTLINED_FUNCTION_44_0(v216[9]);
      __swift_storeEnumTagSinglePayload(v225, v226, v227, v156);
      OUTLINED_FUNCTION_37(v219, 1, v216);
      if (!v90)
      {
        sub_26A0E48F0(v219, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      OUTLINED_FUNCTION_43_17(&v298);
      v218 = v189;
    }

    _ProtoVisualProperty.redactedProto.getter();
    sub_26A421CD0(v86, type metadata accessor for _ProtoVisualProperty);
    v228 = *(v157 + v220);
    v229 = swift_isUniquelyReferenced_nonNull_native();
    v86 = *(v157 + v220);
    if ((v229 & 1) == 0)
    {
      v230 = type metadata accessor for _ProtoPrimaryHeader_Rich._StorageClass(0);
      v231 = OUTLINED_FUNCTION_188_0(v230);
      OUTLINED_FUNCTION_26_38(v231, v232, v233, v234, v235, v236, v237, v238, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279);
      v86 = v239;
      *(v157 + v220) = v239;
    }

    OUTLINED_FUNCTION_129(&v299);
    sub_26A421C7C();
    v240 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v240, v241, v242, v216);
    OUTLINED_FUNCTION_211();
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  v243 = v290;
  OUTLINED_FUNCTION_209();
  v244 = __swift_getEnumTagSinglePayload(v243, 1, v156);
  OUTLINED_FUNCTION_162_0(v243);
  if (v244 != 1)
  {
    v245 = v280;
    sub_26A10FD9C();
    v246 = OUTLINED_FUNCTION_38_1();
    OUTLINED_FUNCTION_37(v246, v247, v156);
    v248 = v293;
    if (v90)
    {
      v86 = v281;
      *v281 = v218;
      v86[1] = 0;
      v86[2] = 0xE000000000000000;
      v249 = v86 + *(v156 + 24);
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v250 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_37(v250, v251, v156);
      v252 = v282;
      if (!v90)
      {
        sub_26A0E48F0(v245, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      OUTLINED_FUNCTION_43_17(&v300);
      v252 = v282;
    }

    _s10SnippetKit14ActionPropertyV13redactedProtoAA01_fcD0Vvg_0(v252);
    sub_26A421CD0(v86, type metadata accessor for _ProtoActionProperty);
    v253 = *(v157 + v248);
    v254 = swift_isUniquelyReferenced_nonNull_native();
    v255 = *(v157 + v248);
    if ((v254 & 1) == 0)
    {
      v256 = type metadata accessor for _ProtoPrimaryHeader_Rich._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v256);
      sub_26A400CEC(v255, v257, v258, v259, v260, v261, v262, v263, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279);
      *(v157 + v248) = v264;
    }

    OUTLINED_FUNCTION_129(&v301);
    sub_26A421C7C();
    v265 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v265, v266, v267, v156);
    OUTLINED_FUNCTION_211();
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t PrimaryHeaderRich.init(text1:text2:text3:text4:thumbnail:action:componentName:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for _ProtoPrimaryHeader_Rich(0);
  OUTLINED_FUNCTION_15_49();
  sub_26A421FE4(v12, v13);
  sub_26A4249C4();

  sub_26A0E48F0(a6, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(a5, &qword_28036CB00, &unk_26A426450);
  sub_26A0E48F0(a4, &qword_28036CB08, &unk_26A428720);
  sub_26A0E48F0(a3, &qword_28036CB10, &unk_26A426460);
  sub_26A0E48F0(a2, &qword_28036CB10, &unk_26A426460);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26A420D94(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v106 = a8;
  v103 = a7;
  v98 = a6;
  v99 = a5;
  v11 = type metadata accessor for ActionProperty();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v97 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v108 = &v87 - v16;
  v107 = type metadata accessor for _ProtoActionProperty();
  v17 = *(*(v107 - 8) + 64);
  MEMORY[0x28223BE20](v107);
  v93 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v94 = &v87 - v20;
  v21 = type metadata accessor for VisualProperty();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v96 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v105 = &v87 - v26;
  v104 = type metadata accessor for _ProtoVisualProperty();
  v27 = *(*(v104 - 8) + 64);
  MEMORY[0x28223BE20](v104);
  v91 = &v87 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v92 = &v87 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v102 = &v87 - v33;
  v34 = type metadata accessor for MultilineTextProperty(0);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36 - 8);
  v100 = &v87 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v41 = &v87 - v40;
  v42 = type metadata accessor for _ProtoMultilineTextProperty(0);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v88 = &v87 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v95 = &v87 - v46;
  MEMORY[0x28223BE20](v47);
  v87 = &v87 - v48;
  v101 = type metadata accessor for _ProtoTextProperty(0);
  v49 = *(*(v101 - 8) + 64);
  MEMORY[0x28223BE20](v101);
  v90 = &v87 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51);
  v53 = &v87 - v52;
  v54 = type metadata accessor for TextProperty(0);
  v55 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54 - 8);

  _ProtoPrimaryHeader_Rich.componentName.setter(a2, a3);
  v56 = a4;
  v57 = a4[3];
  v58 = v56[4];
  __swift_project_boxed_opaque_existential_1(v56, v57);
  (*(v58 + 8))(v57, v58);
  sub_26A421C7C();
  v89 = v53;
  _ProtoPrimaryHeader_Rich.text1.setter(v53);
  sub_26A10FD9C();
  v59 = v110;
  if (v110)
  {
    v60 = v111;
    __swift_project_boxed_opaque_existential_1(v109, v110);
    (*(v60 + 8))(v59, v60);
    sub_26A421C7C();
    __swift_storeEnumTagSinglePayload(v41, 0, 1, v42);
    __swift_destroy_boxed_opaque_existential_1(v109);
    if (__swift_getEnumTagSinglePayload(v41, 1, v42) != 1)
    {
      v61 = v87;
      sub_26A421C7C();
      v62 = v95;
      sub_26A42210C();
      _ProtoPrimaryHeader_Rich.text2.setter(v62);
      sub_26A421CD0(v61, type metadata accessor for _ProtoMultilineTextProperty);
      goto LABEL_6;
    }
  }

  else
  {
    sub_26A0E48F0(v109, &qword_28036CB10, &unk_26A426460);
    __swift_storeEnumTagSinglePayload(v41, 1, 1, v42);
  }

  sub_26A0E48F0(v41, &qword_28036CAE0, &unk_26A4273F0);
LABEL_6:
  sub_26A10FD9C();
  v63 = v110;
  if (v110)
  {
    v64 = v111;
    __swift_project_boxed_opaque_existential_1(v109, v110);
    (*(v64 + 8))(v63, v64);
    v65 = v100;
    sub_26A421C7C();
    __swift_storeEnumTagSinglePayload(v65, 0, 1, v42);
    __swift_destroy_boxed_opaque_existential_1(v109);
    if (__swift_getEnumTagSinglePayload(v65, 1, v42) != 1)
    {
      v66 = v88;
      sub_26A421C7C();
      v67 = v95;
      sub_26A42210C();
      _ProtoPrimaryHeader_Rich.text3.setter(v67);
      sub_26A421CD0(v66, type metadata accessor for _ProtoMultilineTextProperty);
      goto LABEL_11;
    }
  }

  else
  {
    sub_26A0E48F0(v109, &qword_28036CB10, &unk_26A426460);
    v65 = v100;
    __swift_storeEnumTagSinglePayload(v100, 1, 1, v42);
  }

  sub_26A0E48F0(v65, &qword_28036CAE0, &unk_26A4273F0);
LABEL_11:
  sub_26A10FD9C();
  v68 = v110;
  if (v110)
  {
    v69 = v111;
    __swift_project_boxed_opaque_existential_1(v109, v110);
    (*(v69 + 8))(v68, v69);
    v70 = v102;
    sub_26A421C7C();
    v71 = v101;
    __swift_storeEnumTagSinglePayload(v70, 0, 1, v101);
    __swift_destroy_boxed_opaque_existential_1(v109);
    if (__swift_getEnumTagSinglePayload(v70, 1, v71) != 1)
    {
      v72 = v90;
      sub_26A421C7C();
      v73 = v89;
      sub_26A42210C();
      _ProtoPrimaryHeader_Rich.text4.setter(v73);
      sub_26A421CD0(v72, type metadata accessor for _ProtoTextProperty);
      goto LABEL_16;
    }
  }

  else
  {
    sub_26A0E48F0(v109, &qword_28036CB08, &unk_26A428720);
    v70 = v102;
    __swift_storeEnumTagSinglePayload(v102, 1, 1, v101);
  }

  sub_26A0E48F0(v70, &qword_28036C7B8, &unk_26A425BF0);
LABEL_16:
  sub_26A10FD9C();
  v74 = v110;
  if (v110)
  {
    v75 = v111;
    __swift_project_boxed_opaque_existential_1(v109, v110);
    (*(v75 + 8))(v74, v75);
    v76 = v105;
    sub_26A421C7C();
    v77 = v104;
    __swift_storeEnumTagSinglePayload(v76, 0, 1, v104);
    __swift_destroy_boxed_opaque_existential_1(v109);
    if (__swift_getEnumTagSinglePayload(v76, 1, v77) != 1)
    {
      v78 = v92;
      sub_26A421C7C();
      v79 = v91;
      sub_26A42210C();
      _ProtoPrimaryHeader_Rich.thumbnail.setter(v79);
      sub_26A421CD0(v78, type metadata accessor for _ProtoVisualProperty);
      goto LABEL_21;
    }
  }

  else
  {
    sub_26A0E48F0(v109, &qword_28036CB00, &unk_26A426450);
    v76 = v105;
    __swift_storeEnumTagSinglePayload(v105, 1, 1, v104);
  }

  sub_26A0E48F0(v76, &qword_28036CAE8, &unk_26A426430);
LABEL_21:
  sub_26A10FD9C();
  v80 = v110;
  if (v110)
  {
    v81 = v111;
    __swift_project_boxed_opaque_existential_1(v109, v110);
    (*(v81 + 8))(v80, v81);
    v82 = v108;
    sub_26A421C7C();
    v83 = v107;
    __swift_storeEnumTagSinglePayload(v82, 0, 1, v107);
    __swift_destroy_boxed_opaque_existential_1(v109);
    if (__swift_getEnumTagSinglePayload(v82, 1, v83) != 1)
    {
      v84 = v94;
      sub_26A421C7C();
      v85 = v93;
      sub_26A42210C();
      _ProtoPrimaryHeader_Rich.action.setter(v85);
      return sub_26A421CD0(v84, type metadata accessor for _ProtoActionProperty);
    }
  }

  else
  {
    sub_26A0E48F0(v109, &qword_28036CAF8, &unk_26A426D30);
    v82 = v108;
    __swift_storeEnumTagSinglePayload(v108, 1, 1, v107);
  }

  return sub_26A0E48F0(v82, &off_28036C7C0, &off_26A427400);
}

uint64_t PrimaryHeaderRich.init(text1:text2:text3:text4:thumbnail:action:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_26A0E5D68(a1, v20);
  sub_26A10FD9C();
  sub_26A10FD9C();
  sub_26A10FD9C();
  sub_26A10FD9C();
  sub_26A10FD9C();
  type metadata accessor for _ProtoPrimaryHeader_Rich(0);
  OUTLINED_FUNCTION_15_49();
  sub_26A421FE4(v10, v11);
  sub_26A4249C4();
  sub_26A0E48F0(a6, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(a5, &qword_28036CB00, &unk_26A426450);
  sub_26A0E48F0(a4, &qword_28036CB08, &unk_26A428720);
  OUTLINED_FUNCTION_164_0(a3);
  OUTLINED_FUNCTION_164_0(a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_26A0E48F0(v15, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v16, &qword_28036CB00, &unk_26A426450);
  sub_26A0E48F0(v17, &qword_28036CB08, &unk_26A428720);
  OUTLINED_FUNCTION_164_0(v18);
  OUTLINED_FUNCTION_164_0(v19);
  return __swift_destroy_boxed_opaque_existential_1(v20);
}

uint64_t sub_26A421C7C()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t sub_26A421CD0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t PrimaryHeaderRich.componentProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoPrimaryHeader_Rich(0);
  v3 = OUTLINED_FUNCTION_41(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  v6 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v6);
  v10 = type metadata accessor for _ProtoResponse.Component(0);
  v11 = a1 + *(v10 + 20);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v12 = *(v10 + 24);
  type metadata accessor for _ProtoSeparators();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  OUTLINED_FUNCTION_5_62();
  sub_26A42210C();
  sub_26A0E48F0(a1, &qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_17_38();
  sub_26A421C7C();
  OUTLINED_FUNCTION_175();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_126_0();
  return __swift_storeEnumTagSinglePayload(v17, v18, v19, v6);
}

uint64_t PrimaryHeaderRich.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for PrimaryHeaderRich();
  *(inited + 64) = &protocol witness table for PrimaryHeaderRich;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_16_34();
  sub_26A42210C();
  OUTLINED_FUNCTION_142();

  sub_26A10BF5C(v1);
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A421FE4(&qword_28036CB48, type metadata accessor for _ProtoResponse.Section);
  sub_26A4249C4();

  swift_setDeallocating();
  return sub_26A10C358();
}

uint64_t sub_26A421FE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A4220A0()
{
  result = type metadata accessor for _ProtoPrimaryHeader_Rich(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A42210C()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t OUTLINED_FUNCTION_20_36()
{

  return type metadata accessor for _ProtoPrimaryHeader_Rich(0);
}

uint64_t OUTLINED_FUNCTION_21_33()
{

  return sub_26A421CD0(v0, type metadata accessor for _ProtoMultilineTextProperty);
}

void OUTLINED_FUNCTION_26_38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{

  sub_26A400CEC(v20, a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t OUTLINED_FUNCTION_43_17@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return sub_26A421C7C();
}

uint64_t OUTLINED_FUNCTION_48_25()
{

  return type metadata accessor for _ProtoPrimaryHeader_Rich(0);
}

uint64_t OUTLINED_FUNCTION_50_18()
{

  return sub_26A421C7C();
}

uint64_t _ProtoKeyValue_Standard.Pair.key.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - v7;
  v9 = type metadata accessor for _ProtoKeyValue_Standard.Pair(0);
  sub_26A3CE064(v1 + *(v9 + 24), v8);
  v10 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_37(v8, 1, v10);
  if (!v11)
  {
    return sub_26A3CE218(v8, a1);
  }

  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = 0;
  v12 = a1 + v10[7];
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v13 = v10[8];
  v14 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v14);
  v18 = v10[9];
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v14);
  result = OUTLINED_FUNCTION_37(v8, 1, v10);
  if (!v11)
  {
    return sub_26A13440C();
  }

  return result;
}

uint64_t _ProtoKeyValue_Standard.Pair.key.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for _ProtoKeyValue_Standard.Pair(0) + 24);
  sub_26A13440C();
  sub_26A3CE218(a1, v1 + v3);
  v4 = type metadata accessor for _ProtoTextProperty(0);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

uint64_t _ProtoKeyValue_Standard.Pair.hasKey.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - v5;
  v7 = type metadata accessor for _ProtoKeyValue_Standard.Pair(0);
  sub_26A3CE064(v0 + *(v7 + 24), v6);
  v8 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_37(v6, 1, v8);
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  sub_26A13440C();
  return v10;
}

uint64_t _ProtoKeyValue_Standard.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  a1[1] = 0;
  a1[2] = 0xE000000000000000;
  v1 = a1 + *(type metadata accessor for _ProtoKeyValue_Standard(0) + 24);
  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t _ProtoKeyValue_Standard.componentName.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t _ProtoKeyValue_Standard.componentName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t _ProtoKeyValue_Standard.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for _ProtoKeyValue_Standard(0) + 24);
  v4 = sub_26A424794();
  v5 = OUTLINED_FUNCTION_12(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t _ProtoKeyValue_Standard.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for _ProtoKeyValue_Standard(0) + 24);
  v4 = sub_26A424794();
  OUTLINED_FUNCTION_12(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, a1);
}

uint64_t (*_ProtoKeyValue_Standard.unknownFields.modify())()
{
  OUTLINED_FUNCTION_14_4();
  v0 = *(type metadata accessor for _ProtoKeyValue_Standard(0) + 24);
  return nullsub_1;
}

uint64_t sub_26A422820(uint64_t a1)
{
  v2 = type metadata accessor for _ProtoTextProperty(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A3CEC5C(a1, v5);
  return _ProtoKeyValue_Standard.Pair.key.setter(v5);
}

void (*_ProtoKeyValue_Standard.Pair.key.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for _ProtoTextProperty(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_12(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for _ProtoKeyValue_Standard.Pair(0) + 24);
  *(v3 + 10) = v11;
  sub_26A3CE064(v1 + v11, v6);
  OUTLINED_FUNCTION_37(v6, 1, v7);
  if (v12)
  {
    *v10 = MEMORY[0x277D84F90];
    v10[4] = 0;
    v13 = v10 + v7[7];
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v14 = v7[8];
    v15 = type metadata accessor for _ProtoActionProperty();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v15);
    v19 = v7[9];
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v15);
    OUTLINED_FUNCTION_37(v6, 1, v7);
    if (!v12)
    {
      sub_26A13440C();
    }
  }

  else
  {
    sub_26A3CE218(v6, v10);
  }

  return sub_26A3CEB7C;
}

Swift::Void __swiftcall _ProtoKeyValue_Standard.Pair.clearKey()()
{
  v0 = *(type metadata accessor for _ProtoKeyValue_Standard.Pair(0) + 24);
  sub_26A13440C();
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_92();

  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t _ProtoKeyValue_Standard.Pair.value.setter()
{
  OUTLINED_FUNCTION_14_4();
  v2 = *v1;

  *v1 = v0;
  return result;
}

uint64_t _ProtoKeyValue_Standard.Pair.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for _ProtoKeyValue_Standard.Pair(0) + 20);
  v4 = sub_26A424794();
  v5 = OUTLINED_FUNCTION_12(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t _ProtoKeyValue_Standard.Pair.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for _ProtoKeyValue_Standard.Pair(0) + 20);
  v4 = sub_26A424794();
  OUTLINED_FUNCTION_12(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, a1);
}

uint64_t (*_ProtoKeyValue_Standard.Pair.unknownFields.modify())()
{
  OUTLINED_FUNCTION_14_4();
  v0 = *(type metadata accessor for _ProtoKeyValue_Standard.Pair(0) + 20);
  return nullsub_1;
}

uint64_t _ProtoKeyValue_Standard.Pair.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for _ProtoKeyValue_Standard.Pair(0);
  v3 = a1 + *(v2 + 20);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v4 = *(v2 + 24);
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_92();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t sub_26A422CA8()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280374108);
  __swift_project_value_buffer(v0, qword_280374108);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A425EF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "pairs";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "component_name";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v11 = *MEMORY[0x277D21888];
  v9();
  return sub_26A424AA4();
}

uint64_t _ProtoKeyValue_Standard.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_18_3();
  while (1)
  {
    result = sub_26A424834();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      sub_26A424924();
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_5_6();
      sub_26A4236CC(v3, v4, v5, v6, v7);
    }
  }

  return result;
}

uint64_t _ProtoKeyValue_Standard.traverse<A>(visitor:)()
{
  v3 = v1;
  OUTLINED_FUNCTION_18_11();
  if (!*(*v0 + 16) || (type metadata accessor for _ProtoKeyValue_Standard.Pair(0), sub_26A42304C(), result = OUTLINED_FUNCTION_9_52(), (v3 = v1) == 0))
  {
    v5 = *(v2 + 16);
    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = *(v2 + 8) & 0xFFFFFFFFFFFFLL;
    }

    if (!v6 || (result = sub_26A424A64(), !v3))
    {
      v7 = *(type metadata accessor for _ProtoKeyValue_Standard(0) + 24);
      return OUTLINED_FUNCTION_19_6();
    }
  }

  return result;
}

unint64_t sub_26A42304C()
{
  OUTLINED_FUNCTION_14_4();
  result = *v2;
  if (!result)
  {
    v1(255);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

uint64_t sub_26A423134(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A42304C();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A4231B4(uint64_t a1)
{
  v2 = sub_26A42304C();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A423224()
{
  sub_26A42304C();

  return sub_26A4249B4();
}

uint64_t sub_26A4232A4()
{
  result = MEMORY[0x26D65BA70](0x726961502ELL, 0xE500000000000000);
  qword_280374120 = 0xD00000000000001BLL;
  *algn_280374128 = 0x800000026A44B5B0;
  return result;
}

uint64_t static _ProtoKeyValue_Standard.Pair.protoMessageName.getter()
{
  if (qword_28036C7A8 != -1)
  {
    swift_once();
  }

  v0 = qword_280374120;

  return v0;
}

uint64_t sub_26A423374()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280374130);
  __swift_project_value_buffer(v0, qword_280374130);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A425EF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "key";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t _ProtoKeyValue_Standard.Pair.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_18_3();
  while (1)
  {
    result = sub_26A424834();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v3 = OUTLINED_FUNCTION_5_6();
      sub_26A4236CC(v3, v4, v5, v6, v7);
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_5_6();
      sub_26A423618();
    }
  }

  return result;
}

uint64_t sub_26A423618()
{
  v0 = *(type metadata accessor for _ProtoKeyValue_Standard.Pair(0) + 24);
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A42304C();
  return sub_26A424944();
}

uint64_t sub_26A4236CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  a5(0);
  sub_26A42304C();
  return sub_26A424934();
}

uint64_t _ProtoKeyValue_Standard.Pair.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_18_11();
  result = sub_26A423838(v0);
  if (!v1)
  {
    if (*(*v2 + 16))
    {
      type metadata accessor for _ProtoTextProperty(0);
      sub_26A42304C();
      OUTLINED_FUNCTION_9_52();
    }

    v4 = *(type metadata accessor for _ProtoKeyValue_Standard.Pair(0) + 20);
    return OUTLINED_FUNCTION_19_6();
  }

  return result;
}

uint64_t sub_26A423838(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for _ProtoTextProperty(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for _ProtoKeyValue_Standard.Pair(0);
  sub_26A3CE064(a1 + *(v10 + 24), v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A3CE218(v5, v9);
  sub_26A42304C();
  sub_26A424A84();
  return sub_26A3CE6D8(v9);
}

uint64_t static _ProtoKeyValue_Standard.Pair.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for _ProtoTextProperty(0);
  v5 = OUTLINED_FUNCTION_12(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - v14;
  v16 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7D0, &qword_26A426DE0) - 8);
  v17 = *(*v16 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v18);
  v20 = &v32 - v19;
  v21 = type metadata accessor for _ProtoKeyValue_Standard.Pair(0);
  v22 = *(v21 + 24);
  v23 = v16[14];
  sub_26A3CE064(a1 + v22, v20);
  sub_26A3CE064(a2 + v22, &v20[v23]);
  OUTLINED_FUNCTION_37(v20, 1, v4);
  if (v24)
  {
    OUTLINED_FUNCTION_37(&v20[v23], 1, v4);
    if (v24)
    {
      sub_26A13440C();
      goto LABEL_11;
    }

LABEL_9:
    sub_26A13440C();
LABEL_13:
    v30 = 0;
    return v30 & 1;
  }

  sub_26A3CE064(v20, v15);
  OUTLINED_FUNCTION_37(&v20[v23], 1, v4);
  if (v24)
  {
    sub_26A3CE6D8(v15);
    goto LABEL_9;
  }

  sub_26A3CE218(&v20[v23], v9);
  v25 = static _ProtoTextProperty.== infix(_:_:)(v15, v9);
  sub_26A3CE6D8(v9);
  sub_26A3CE6D8(v15);
  sub_26A13440C();
  if ((v25 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  v26 = *a1;
  v27 = *a2;
  sub_26A0DB64C();
  if ((v28 & 1) == 0)
  {
    goto LABEL_13;
  }

  v29 = *(v21 + 20);
  sub_26A424794();
  OUTLINED_FUNCTION_1_76();
  sub_26A42304C();
  v30 = OUTLINED_FUNCTION_14_7();
  return v30 & 1;
}

uint64_t sub_26A423C8C(void (*a1)(void))
{
  sub_26A425504();
  a1(0);
  sub_26A42304C();
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A423EBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A42304C();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A423FCC(uint64_t a1)
{
  v2 = sub_26A42304C();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A424084()
{
  sub_26A42304C();

  return sub_26A4249B4();
}

void sub_26A42412C()
{
  sub_26A42430C(319, &qword_280374188, type metadata accessor for _ProtoKeyValue_Standard.Pair, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_26A424794();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26A424210()
{
  sub_26A42430C(319, &qword_2803741A0, type metadata accessor for _ProtoTextProperty, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_26A424794();
    if (v1 <= 0x3F)
    {
      sub_26A42430C(319, &qword_28036C808, type metadata accessor for _ProtoTextProperty, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26A42430C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t OUTLINED_FUNCTION_9_52()
{

  return sub_26A424A74();
}