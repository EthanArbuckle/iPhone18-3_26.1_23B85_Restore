uint64_t sub_26A33B408(uint64_t a1)
{
  v2 = type metadata accessor for _ProtoColor(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26A33B464(uint64_t a1)
{
  v2 = type metadata accessor for _ProtoColor(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A33B728(a1, v5);
  return _ProtoColorElement.color.setter(v5);
}

void (*_ProtoColorElement.color.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCD8, &unk_26A432950);
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for _ProtoColor(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_12(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for _ProtoColorElement() + 24);
  *(v3 + 10) = v11;
  sub_26A291178(v1 + v11, v6);
  OUTLINED_FUNCTION_14_9(v6);
  if (v12)
  {
    type metadata accessor for _ProtoColor.OneOf_Value(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
    v17 = &v10[*(v7 + 20)];
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    OUTLINED_FUNCTION_14_9(v6);
    if (!v12)
    {
      sub_26A13440C();
    }
  }

  else
  {
    sub_26A33B040(v6, v10);
  }

  return sub_26A33B648;
}

void sub_26A33B648(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 10);
  v4 = (*a1)[3];
  v5 = (*a1)[4];
  v6 = (*a1)[1];
  v7 = (*a1)[2];
  v8 = **a1;
  if (a2)
  {
    sub_26A33B728((*a1)[4], v4);
    sub_26A13440C();
    sub_26A33B040(v4, v8 + v3);
    OUTLINED_FUNCTION_70();
    sub_26A33B408(v5);
  }

  else
  {
    sub_26A13440C();
    sub_26A33B040(v5, v8 + v3);
    OUTLINED_FUNCTION_70();
  }

  free(v5);
  free(v4);
  free(v6);

  free(v2);
}

uint64_t sub_26A33B728(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ProtoColor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL _ProtoColorElement.hasColor.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCD8, &unk_26A432950);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_8_33();
  sub_26A291178(v0 + *(v6 + 24), v1);
  v7 = type metadata accessor for _ProtoColor(0);
  v8 = __swift_getEnumTagSinglePayload(v1, 1, v7) != 1;
  sub_26A13440C();
  return v8;
}

Swift::Void __swiftcall _ProtoColorElement.clearColor()()
{
  v0 = *(type metadata accessor for _ProtoColorElement() + 24);
  sub_26A13440C();
  type metadata accessor for _ProtoColor(0);
  OUTLINED_FUNCTION_92();

  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t _ProtoColorElement.idioms.setter()
{
  OUTLINED_FUNCTION_14_4();
  v2 = *v1;

  *v1 = v0;
  return result;
}

uint64_t _ProtoColorElement.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for _ProtoColorElement() + 20);
  v4 = sub_26A424794();
  v5 = OUTLINED_FUNCTION_12(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t _ProtoColorElement.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for _ProtoColorElement() + 20);
  v4 = sub_26A424794();
  OUTLINED_FUNCTION_12(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, a1);
}

uint64_t (*_ProtoColorElement.unknownFields.modify())()
{
  OUTLINED_FUNCTION_14_4();
  v0 = *(type metadata accessor for _ProtoColorElement() + 20);
  return nullsub_1;
}

uint64_t sub_26A33BA38()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280372CA0);
  __swift_project_value_buffer(v0, qword_280372CA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A425EF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "color";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "idioms";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t static _ProtoColorElement._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_28036C608 != -1)
  {
    swift_once();
  }

  v2 = sub_26A424AC4();
  v3 = __swift_project_value_buffer(v2, qword_280372CA0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t _ProtoColorElement.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_26A424834();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_5_6();
      sub_26A1FD7CC();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_5_6();
      sub_26A33BD1C();
    }
  }

  return result;
}

uint64_t sub_26A33BD1C()
{
  v0 = *(type metadata accessor for _ProtoColorElement() + 24);
  type metadata accessor for _ProtoColor(0);
  sub_26A33C4C4();
  return sub_26A424944();
}

uint64_t _ProtoColorElement.traverse<A>(visitor:)()
{
  v2 = v0;
  result = sub_26A33BE94(v0);
  if (!v1)
  {
    v4 = *v0;
    if (*(*v2 + 16))
    {
      sub_26A11EF50();
      sub_26A4249D4();
    }

    v5 = v2 + *(type metadata accessor for _ProtoColorElement() + 20);
    return sub_26A424774();
  }

  return result;
}

uint64_t sub_26A33BE94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCD8, &unk_26A432950);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for _ProtoColor(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for _ProtoColorElement();
  sub_26A291178(a1 + *(v10 + 24), v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A33B040(v5, v9);
  sub_26A33C4C4();
  sub_26A424A84();
  return sub_26A33B408(v9);
}

uint64_t _ProtoColorElement.hashValue.getter()
{
  sub_26A425504();
  type metadata accessor for _ProtoColorElement();
  sub_26A33C4C4();
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A33C160(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A33C4C4();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A33C270(uint64_t a1)
{
  v2 = sub_26A33C4C4();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A33C328()
{
  sub_26A33C4C4();

  return sub_26A4249B4();
}

void sub_26A33C3D0()
{
  sub_26A11FDC8();
  if (v0 <= 0x3F)
  {
    sub_26A424794();
    if (v1 <= 0x3F)
    {
      sub_26A33C46C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26A33C46C()
{
  if (!qword_28157B5B8[0])
  {
    type metadata accessor for _ProtoColor(255);
    v0 = sub_26A424E44();
    if (!v1)
    {
      atomic_store(v0, qword_28157B5B8);
    }
  }
}

unint64_t sub_26A33C4C4()
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

uint64_t OUTLINED_FUNCTION_8_33()
{

  return type metadata accessor for _ProtoColorElement();
}

uint64_t sub_26A33C528(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v49 = MEMORY[0x277D84F90];
  sub_26A10D50C();
  v5 = v49;
  v6 = a1 + 32;
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CDC0, &qword_26A426948) + 32);
  do
  {
    v8 = *(a2 + v7);
    sub_26A33E100(v6, &v42);
    sub_26A33E100(&v42, v44);
    v48 = v8;
    sub_26A33E138(&v42);
    v47 = v3;
    object = TableRow.Content.description(redacted:)(v8)._object;
    OUTLINED_FUNCTION_84_0();
    if (v11)
    {
      v12 = v10;

      OUTLINED_FUNCTION_12_28();
      v3 = v13;
      v14 = *(v13 + 16);
      if (v14 >= *(v13 + 24) >> 1)
      {
        OUTLINED_FUNCTION_12_28();
        v3 = v33;
      }

      *(v3 + 16) = v14 + 1;
      v15 = (v3 + 32 * v14);
      v15[4] = 0;
      v15[5] = 0;
      v15[6] = v12;
      v15[7] = object;
      v47 = v3;
    }

    else
    {
    }

    v42 = v45;
    v43 = 0;
    sub_26A4251B4();
    v17 = v16;
    OUTLINED_FUNCTION_84_0();
    if (v19)
    {
      v20 = v18;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = *(v3 + 16);
        OUTLINED_FUNCTION_12_28();
        v3 = v35;
      }

      v21 = *(v3 + 16);
      if (v21 >= *(v3 + 24) >> 1)
      {
        OUTLINED_FUNCTION_12_28();
        v3 = v36;
      }

      *(v3 + 16) = v21 + 1;
      v22 = v3 + 32 * v21;
      *(v22 + 32) = xmmword_26A43F1C0;
      *(v22 + 48) = v20;
      *(v22 + 56) = v17;
      v47 = v3;
    }

    else
    {
    }

    v23 = 0xE700000000000000;
    v24 = 0x746C7561666564;
    switch(v46)
    {
      case 1:
        v24 = 0x676E696461656CLL;
        break;
      case 2:
        v23 = 0xE600000000000000;
        v24 = 0x7265746E6563;
        break;
      case 3:
        v23 = 0xE800000000000000;
        v24 = 0x676E696C69617274;
        break;
      default:
        break;
    }

    if ((v23 & 0xF00000000000000) != 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = *(v3 + 16);
        OUTLINED_FUNCTION_12_28();
        v3 = v38;
      }

      v25 = *(v3 + 16);
      if (v25 >= *(v3 + 24) >> 1)
      {
        OUTLINED_FUNCTION_12_28();
        v3 = v39;
      }

      *(v3 + 16) = v25 + 1;
      v26 = v3 + 32 * v25;
      *(v26 + 32) = xmmword_26A43F1D0;
      *(v26 + 48) = v24;
      *(v26 + 56) = v23;
      v47 = v3;
    }

    else
    {
    }

    sub_26A101358();
    v28 = v27;
    v30 = v29;
    sub_26A0E48F0(v44, &qword_280372CD0, &qword_26A43F210);
    v49 = v5;
    v31 = *(v5 + 16);
    if (v31 >= *(v5 + 24) >> 1)
    {
      sub_26A10D50C();
      v5 = v49;
    }

    *(v5 + 16) = v31 + 1;
    v32 = v5 + 16 * v31;
    *(v32 + 32) = v28;
    *(v32 + 40) = v30;
    v6 += 64;
    --v2;
    v3 = MEMORY[0x277D84F90];
  }

  while (v2);
  return v5;
}

void TableHeader.cells.getter()
{
  OUTLINED_FUNCTION_76();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C888, &qword_26A440D90);
  OUTLINED_FUNCTION_41(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v6 = &v50 - v5;
  v7 = type metadata accessor for _ProtoTable.Content(0);
  v8 = OUTLINED_FUNCTION_12(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for _ProtoTable.HeaderCell(0);
  v13 = OUTLINED_FUNCTION_24(v54);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_17();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v50 - v22;
  v24 = *v0;
  v25 = *(*v0 + 16);
  if (v25)
  {
    v58 = MEMORY[0x277D84F90];
    sub_26A10D9EC(0, v25, 0);
    v26 = v58;
    v27 = v15;
    v28 = v24 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v51 = *(v27 + 72);
    *&v29 = 134217984;
    v50 = v29;
    v52 = v12;
    v53 = v7;
    do
    {
      sub_26A33E1E0();
      sub_26A33E1E0();
      v30 = *(v54 + 28);
      sub_26A10FD9C();
      if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
      {
        v31 = type metadata accessor for _ProtoTable.Content.OneOf_Value(0);
        OUTLINED_FUNCTION_18_26(v12, v32, v33, v31);
        v34 = &v12[*(v7 + 20)];
        _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
        v35 = *(v7 + 24);
        v36 = type metadata accessor for _ProtoOptionalInt(0);
        OUTLINED_FUNCTION_18_26(&v12[v35], v37, v38, v36);
        if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
        {
          sub_26A0E48F0(v6, &qword_28036C888, &qword_26A440D90);
        }
      }

      else
      {
        sub_26A33E234();
      }

      sub_26A3B145C();
      *&v57[20] = *v20;
      v39 = *(v20 + 8);
      if ((*(v20 + 16) & 1) == 0)
      {
        if (qword_28036C5A0 != -1)
        {
          swift_once();
        }

        v40 = sub_26A424AE4();
        __swift_project_value_buffer(v40, qword_2803A8950);
        v41 = sub_26A424AD4();
        v42 = sub_26A424E04();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          *v43 = v50;
          *(v43 + 4) = v39;
          _os_log_impl(&dword_26A0B8000, v41, v42, "Unhandled column alignment value: %ld", v43, 0xCu);
          MEMORY[0x26D65C950](v43, -1, -1);
        }

        LOBYTE(v39) = 0;
      }

      sub_26A33E288(v20, type metadata accessor for _ProtoTable.HeaderCell);
      sub_26A33E288(v23, type metadata accessor for _ProtoTable.HeaderCell);
      v57[24] = v39;
      v58 = v26;
      v45 = *(v26 + 16);
      v44 = *(v26 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_26A10D9EC(v44 > 1, v45 + 1, 1);
        v26 = v58;
      }

      *(v26 + 16) = v45 + 1;
      v46 = (v26 + (v45 << 6));
      v47 = v55;
      v48 = v56;
      v49 = *v57;
      *(v46 + 73) = *&v57[9];
      v46[3] = v48;
      v46[4] = v49;
      v46[2] = v47;
      v12 = v52;
      v28 += v51;
      --v25;
      v7 = v53;
    }

    while (v25);
  }

  OUTLINED_FUNCTION_75();
}

uint64_t TableHeader.componentName.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_175();
}

uint64_t TableHeader.init(_:componentName:)()
{
  return sub_26A33CFDC();
}

{
  return sub_26A33CFDC();
}

uint64_t sub_26A33CD60(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = type metadata accessor for _ProtoTable.HeaderCell(0);
  v8 = *(v22 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v22);
  v10 = *(a2 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v19 = a1;
    v20 = a3;
    v21 = a4;
    v24 = MEMORY[0x277D84F90];
    sub_26A10DA0C();
    v11 = v24;
    v12 = a2 + 32;
    do
    {
      v13 = sub_26A33E100(v12, v23);
      MEMORY[0x28223BE20](v13);
      *(&v19 - 2) = v23;
      sub_26A33E498(&qword_280372CE8, type metadata accessor for _ProtoTable.HeaderCell);
      sub_26A4249C4();
      sub_26A33E138(v23);
      v24 = v11;
      v14 = *(v11 + 16);
      if (v14 >= *(v11 + 24) >> 1)
      {
        sub_26A10DA0C();
        v11 = v24;
      }

      *(v11 + 16) = v14 + 1;
      v15 = v11 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v14;
      sub_26A33E234();
      v12 += 64;
      --v10;
    }

    while (v10);
    a3 = v20;
    a4 = v21;
    a1 = v19;
  }

  v16 = *a1;

  *a1 = v11;
  v17 = a1[2];

  a1[1] = a3;
  a1[2] = a4;
  return result;
}

uint64_t sub_26A33CFDC()
{
  type metadata accessor for _ProtoTable.Header(0);
  OUTLINED_FUNCTION_4_39();
  sub_26A33E498(v0, v1);
  sub_26A4249C4();
}

uint64_t TableHeader.init(_:)()
{
  return sub_26A33D0BC();
}

{
  return sub_26A33D0BC();
}

uint64_t sub_26A33D0BC()
{
  type metadata accessor for _ProtoTable.Header(0);
  OUTLINED_FUNCTION_4_39();
  sub_26A33E498(v0, v1);
  sub_26A4249C4();
}

Swift::String __swiftcall TableHeader.description(redacted:)(Swift::Bool redacted)
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v3 = type metadata accessor for TableHeader();
  v4 = OUTLINED_FUNCTION_41(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v7);
  v9 = v25 - v8;
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CDC0, &qword_26A426948) - 8);
  v11 = *(*v10 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v12);
  v14 = v25 - v13;
  sub_26A33E1E0();
  sub_26A33E1E0();
  sub_26A33E234();
  v14[v10[10]] = v2;
  sub_26A33E288(v9, type metadata accessor for TableHeader);
  *&v14[v10[9]] = MEMORY[0x277D84F90];
  TableHeader.cells.getter();
  v16 = sub_26A33C528(v15, v14);

  sub_26A3A2C20(v16, 0, 0, 0);

  KeyPath = swift_getKeyPath();
  sub_26A0F7FC0(KeyPath, 0x6E656E6F706D6F63, 0xED0000656D614E74, 1, v18, v19, v20, v21, v25[0], v25[1]);

  sub_26A102034();
  sub_26A0E48F0(v14, &qword_28036CDC0, &qword_26A426948);
  OUTLINED_FUNCTION_75();
  result._object = v23;
  result._countAndFlagsBits = v22;
  return result;
}

uint64_t sub_26A33D37C@<X0>(uint64_t *a1@<X8>)
{
  result = TableHeader.componentName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A33D3D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ProtoTable.Content(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  sub_26A3B1280();
  v6 = *(type metadata accessor for _ProtoTable.HeaderCell(0) + 28);
  sub_26A0E48F0(a1 + v6, &qword_28036C888, &qword_26A440D90);
  sub_26A33E234();
  result = __swift_storeEnumTagSinglePayload(a1 + v6, 0, 1, v4);
  *a1 = *(a2 + 52);
  *(a1 + 8) = *(a2 + 56);
  *(a1 + 16) = 1;
  return result;
}

__n128 TableHeader.HeaderCell.init(_:columnSpan:alignment:)@<Q0>(uint64_t a1@<X0>, int a2@<W1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  v5 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v5;
  result = *(a1 + 32);
  *(a4 + 32) = result;
  *(a4 + 48) = *(a1 + 48);
  *(a4 + 52) = a2;
  *(a4 + 56) = v4;
  return result;
}

Swift::String __swiftcall TableHeader.HeaderCell.description(redacted:)(Swift::Bool redacted)
{
  sub_26A33E100(v1, v15);
  sub_26A33E100(v15, v16);
  v18 = redacted;
  sub_26A33E138(v15);
  v17 = MEMORY[0x277D84F90];
  object = TableRow.Content.description(redacted:)(redacted)._object;
  OUTLINED_FUNCTION_84_0();
  if (v5)
  {
    v6 = v4;

    sub_26A168154();
    v8 = v7;
    v9 = *(v7 + 16);
    if (v9 >= *(v7 + 24) >> 1)
    {
      sub_26A168154();
      v8 = v13;
    }

    *(v8 + 16) = v9 + 1;
    v10 = (v8 + 32 * v9);
    v10[4] = 0;
    v10[5] = 0;
    v10[6] = v6;
    v10[7] = object;
    v17 = v8;
  }

  else
  {
  }

  v15[0] = 0;
  sub_26A146A18();
  sub_26A1468F8();
  sub_26A101358();
  sub_26A0E48F0(v16, &qword_280372CD0, &qword_26A43F210);
  v11 = OUTLINED_FUNCTION_175();
  result._object = v12;
  result._countAndFlagsBits = v11;
  return result;
}

void _ProtoTable.Header.redactedProto.getter()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v2 = type metadata accessor for _ProtoVisualProperty();
  v3 = OUTLINED_FUNCTION_41(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_17();
  v95 = v6 - v7;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_48();
  v94 = v9;
  v10 = type metadata accessor for _ProtoMultilineTextProperty(0);
  v11 = OUTLINED_FUNCTION_41(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_17();
  v93 = v14 - v15;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_48();
  v92 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8B0, &unk_26A425E60);
  OUTLINED_FUNCTION_41(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v21);
  v98 = &v91 - v22;
  v23 = type metadata accessor for _ProtoTable.Content(0);
  v24 = OUTLINED_FUNCTION_12(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_17();
  v105 = v27 - v28;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v29);
  v97 = &v91 - v30;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_48();
  v100 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C888, &qword_26A440D90);
  v34 = OUTLINED_FUNCTION_41(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_17();
  v39 = v37 - v38;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_48();
  v110 = v41;
  v42 = type metadata accessor for _ProtoTable.HeaderCell(0);
  v43 = OUTLINED_FUNCTION_24(v42);
  v103 = v44;
  v104 = v43;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_17();
  v111 = v47 - v48;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v49);
  v51 = &v91 - v50;
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_48();
  v107 = v53;
  OUTLINED_FUNCTION_5_44();
  v54 = v23;
  sub_26A33E1E0();
  v55 = *v1;
  v102 = *(*v1 + 16);
  if (!v102)
  {
LABEL_24:
    OUTLINED_FUNCTION_75();
    return;
  }

  v56 = 0;
  v57 = &qword_28036C888;
  v96 = v1;
  v99 = v39;
  v106 = v54;
  v101 = v51;
  while (v56 < *(v55 + 16))
  {
    v109 = (*(v103 + 80) + 32) & ~*(v103 + 80);
    v108 = *(v103 + 72) * v56;
    v58 = v57;
    v59 = v107;
    sub_26A33E1E0();
    v60 = v106;
    sub_26A33E1E0();
    v61 = *(v104 + 28);
    v62 = v110;
    sub_26A10FD9C();
    if (__swift_getEnumTagSinglePayload(v62, 1, v60) == 1)
    {
      sub_26A33E288(v59, type metadata accessor for _ProtoTable.HeaderCell);
      sub_26A0E48F0(v110, v58, &qword_26A440D90);
      v57 = v58;
      goto LABEL_20;
    }

    sub_26A0E48F0(v110, v58, &qword_26A440D90);
    sub_26A10FD9C();
    v57 = v58;
    if (__swift_getEnumTagSinglePayload(v39, 1, v60) == 1)
    {
      v63 = type metadata accessor for _ProtoTable.Content.OneOf_Value(0);
      v64 = v100;
      OUTLINED_FUNCTION_18_26(v100, v65, v66, v63);
      v67 = v64 + *(v60 + 20);
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v68 = v60;
      v69 = *(v60 + 24);
      v70 = type metadata accessor for _ProtoOptionalInt(0);
      OUTLINED_FUNCTION_18_26(v64 + v69, v71, v72, v70);
      v73 = v68;
      v74 = v64;
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v39, 1, v73);
      v76 = v98;
      if (EnumTagSinglePayload != 1)
      {
        sub_26A0E48F0(v99, v57, &qword_26A440D90);
      }
    }

    else
    {
      v74 = v100;
      sub_26A33E234();
      v76 = v98;
    }

    sub_26A33E1E0();
    sub_26A10FD9C();
    v77 = type metadata accessor for _ProtoTable.Content.OneOf_Value(0);
    if (__swift_getEnumTagSinglePayload(v76, 1, v77) == 1)
    {
      sub_26A33E288(v74, type metadata accessor for _ProtoTable.Content);
      OUTLINED_FUNCTION_0_65();
      v79 = v107;
    }

    else
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        v81 = v107;
        if (EnumCaseMultiPayload == 1)
        {
          v82 = v92;
          sub_26A33E234();
          _ProtoMultilineTextProperty.redactedProto.getter();
          sub_26A33E288(v82, type metadata accessor for _ProtoMultilineTextProperty);
        }

        else
        {
          v87 = v94;
          sub_26A33E234();
          _ProtoVisualProperty.redactedProto.getter();
          sub_26A33E288(v87, type metadata accessor for _ProtoVisualProperty);
        }

        OUTLINED_FUNCTION_1_54();
        sub_26A33E288(v100, v83);
        OUTLINED_FUNCTION_0_65();
        sub_26A33E288(v81, v84);
        v85 = v105;
        sub_26A0E48F0(v105, &qword_28036C8B0, &unk_26A425E60);
        sub_26A33E234();
        swift_storeEnumTagMultiPayload();
        __swift_storeEnumTagSinglePayload(v85, 0, 1, v77);
        goto LABEL_19;
      }

      sub_26A33E288(v100, type metadata accessor for _ProtoTable.Content);
      OUTLINED_FUNCTION_0_65();
      sub_26A33E288(v107, v86);
      v78 = type metadata accessor for _ProtoTable.Content.OneOf_Value;
      v79 = v76;
    }

    sub_26A33E288(v79, v78);
LABEL_19:
    sub_26A33E234();
    v88 = v111;
    sub_26A0E48F0(v111 + v61, v57, &qword_26A440D90);
    sub_26A33E234();
    __swift_storeEnumTagSinglePayload(v88 + v61, 0, 1, v106);
    v1 = v96;
    v39 = v99;
LABEL_20:
    v89 = v101;
    sub_26A33E234();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_26A33E168(v55);
      v55 = v90;
    }

    if (v56 >= *(v55 + 16))
    {
      goto LABEL_26;
    }

    ++v56;
    sub_26A33E17C(v89, v55 + v109 + v108);
    *v1 = v55;
    if (v102 == v56)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t type metadata accessor for TableHeader()
{
  result = qword_280372CD8;
  if (!qword_280372CD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A33E17C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ProtoTable.HeaderCell(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A33E1E0()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t sub_26A33E234()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t sub_26A33E288(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_26A33E350()
{
  result = type metadata accessor for _ProtoTable.Header(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10SnippetKit8TableRowV7ContentO(uint64_t a1)
{
  if ((*(a1 + 49) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 49) & 3;
  }
}

uint64_t sub_26A33E3D8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 57))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 49);
      if (v3 <= 2)
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

uint64_t sub_26A33E418(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 49) = -a2;
    }
  }

  return result;
}

uint64_t sub_26A33E498(unint64_t *a1, void (*a2)(uint64_t))
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

void OUTLINED_FUNCTION_12_28()
{

  sub_26A168154();
}

uint64_t OUTLINED_FUNCTION_15_33()
{

  return type metadata accessor for _ProtoTable.Header(0);
}

uint64_t OUTLINED_FUNCTION_18_26(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
}

uint64_t static _ProtoCoreChart.== infix(_:_:)(void *a1, void *a2)
{
  if ((MEMORY[0x26D65B4F0](*a1, a1[1], *a2, a2[1]) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for _ProtoCoreChart() + 20);
  sub_26A424794();
  sub_26A33F034(qword_2815792E0, MEMORY[0x277D216C8]);
  return sub_26A424B64() & 1;
}

uint64_t type metadata accessor for _ProtoCoreChart()
{
  result = qword_28157AB98;
  if (!qword_28157AB98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _ProtoCoreChart.init()@<X0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_26A426400;
  v1 = a1 + *(type metadata accessor for _ProtoCoreChart() + 20);
  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t _ProtoCoreChart.data.getter()
{
  v1 = *v0;
  sub_26A0E45C0(*v0, *(v0 + 8));
  return v1;
}

uint64_t _ProtoCoreChart.data.setter(uint64_t a1, uint64_t a2)
{
  result = sub_26A0E4784(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t _ProtoCoreChart.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for _ProtoCoreChart() + 20);
  v4 = sub_26A424794();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t _ProtoCoreChart.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for _ProtoCoreChart() + 20);
  v4 = sub_26A424794();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_26A33E8CC()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280372CF0);
  __swift_project_value_buffer(v0, qword_280372CF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A426410;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "data";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_26A424A94();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_26A424AA4();
}

uint64_t static _ProtoCoreChart._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_28036C610 != -1)
  {
    swift_once();
  }

  v2 = sub_26A424AC4();
  v3 = __swift_project_value_buffer(v2, qword_280372CF0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t _ProtoCoreChart.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_26A424834();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_26A4248C4();
    }
  }

  return result;
}

uint64_t _ProtoCoreChart.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  switch(v3 >> 62)
  {
    case 1uLL:
      v4 = v2;
      v5 = v2 >> 32;
      goto LABEL_6;
    case 2uLL:
      v4 = *(v2 + 16);
      v5 = *(v2 + 24);
LABEL_6:
      if (v4 != v5)
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    case 3uLL:
      goto LABEL_8;
    default:
      if ((v3 & 0xFF000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_7:
      result = sub_26A424A14();
      if (!v1)
      {
LABEL_8:
        v7 = v0 + *(type metadata accessor for _ProtoCoreChart() + 20);
        return sub_26A424774();
      }

      return result;
  }
}

uint64_t _ProtoCoreChart.hashValue.getter()
{
  sub_26A425504();
  type metadata accessor for _ProtoCoreChart();
  sub_26A33F034(&qword_28036D540, type metadata accessor for _ProtoCoreChart);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A33ED48(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A33F034(&qword_280372D18, type metadata accessor for _ProtoCoreChart);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A33EE58(uint64_t a1)
{
  v2 = sub_26A33F034(&qword_28036D538, type metadata accessor for _ProtoCoreChart);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A33EF10()
{
  sub_26A33F034(&qword_28036D538, type metadata accessor for _ProtoCoreChart);

  return sub_26A4249B4();
}

uint64_t sub_26A33EFB8()
{
  result = sub_26A424794();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A33F034(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _ProtoSlider.redactedProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoVisualProperty();
  v3 = OUTLINED_FUNCTION_12(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_17();
  v92 = v6 - v7;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_47();
  v91 = v9;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_47();
  v89[1] = v11;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v12);
  v89[0] = v89 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v15 = OUTLINED_FUNCTION_41(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_17();
  v90 = v18 - v19;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_47();
  v93 = v21;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_47();
  v94 = v23;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v24);
  v26 = v89 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = v89 - v28;
  OUTLINED_FUNCTION_3_49();
  sub_26A340D0C();
  v30 = *(type metadata accessor for _ProtoSlider(0) + 20);
  v31 = *(a1 + v30);
  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v29, 1, v2);
  sub_26A0E48F0(v29, &qword_28036CAE8, &unk_26A426430);
  v33 = MEMORY[0x277D84F90];
  v34 = EnumTagSinglePayload == 1;
  v35 = v2;
  if (!v34)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_3_6(v26);
    if (v34)
    {
      v46 = v89[0];
      *v89[0] = v33;
      *(v46 + 8) = 0;
      v36 = v46 + v2[7];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v37 = v2[8];
      v38 = type metadata accessor for _ProtoActionProperty();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v39, v40, v41, v38);
      v42 = v2[9];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v43, v44, v45, v38);
      OUTLINED_FUNCTION_3_6(v26);
      if (!v34)
      {
        sub_26A0E48F0(v26, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      v46 = v89[0];
      sub_26A340D60();
    }

    _ProtoVisualProperty.redactedProto.getter();
    OUTLINED_FUNCTION_2_46();
    sub_26A340DB4(v46, v47);
    v48 = *(a1 + v30);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50 = *(a1 + v30);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v51 = type metadata accessor for _ProtoSlider._StorageClass(0);
      v52 = *(v51 + 48);
      v53 = *(v51 + 52);
      swift_allocObject();
      v50 = sub_26A15B28C(v50);
      *(a1 + v30) = v50;
    }

    v54 = v94;
    sub_26A340D60();
    __swift_storeEnumTagSinglePayload(v54, 0, 1, v2);
    v55 = OBJC_IVAR____TtCV10SnippetKit12_ProtoSliderP33_29BEE0BA4CDEBE8D801D91DD4B42411813_StorageClass__leadingThumbnail;
    swift_beginAccess();
    sub_26A33F6B4(v54, v50 + v55);
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  v56 = v93;
  sub_26A10FD9C();
  v57 = __swift_getEnumTagSinglePayload(v56, 1, v35);
  sub_26A0E48F0(v56, &qword_28036CAE8, &unk_26A426430);
  if (v57 != 1)
  {
    v58 = v90;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_3_6(v58);
    if (v34)
    {
      v69 = v91;
      *v91 = v33;
      *(v69 + 8) = 0;
      v59 = v69 + v35[7];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v60 = v35[8];
      v61 = type metadata accessor for _ProtoActionProperty();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v62, v63, v64, v61);
      v65 = v35[9];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v66, v67, v68, v61);
      OUTLINED_FUNCTION_3_6(v58);
      if (!v34)
      {
        sub_26A0E48F0(v58, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      v69 = v91;
      sub_26A340D60();
    }

    _ProtoVisualProperty.redactedProto.getter();
    OUTLINED_FUNCTION_2_46();
    sub_26A340DB4(v69, v70);
    v71 = *(a1 + v30);
    v72 = swift_isUniquelyReferenced_nonNull_native();
    v73 = *(a1 + v30);
    if ((v72 & 1) == 0)
    {
      v74 = type metadata accessor for _ProtoSlider._StorageClass(0);
      v75 = *(v74 + 48);
      v76 = *(v74 + 52);
      swift_allocObject();
      v73 = sub_26A15B28C(v73);
      *(a1 + v30) = v73;
    }

    v77 = v94;
    sub_26A340D60();
    __swift_storeEnumTagSinglePayload(v77, 0, 1, v35);
    v78 = OBJC_IVAR____TtCV10SnippetKit12_ProtoSliderP33_29BEE0BA4CDEBE8D801D91DD4B42411813_StorageClass__trailingThumbnail;
    swift_beginAccess();
    sub_26A33F6B4(v77, v73 + v78);
    swift_endAccess();
  }

  v79 = *(a1 + v30);
  v80 = swift_isUniquelyReferenced_nonNull_native();
  v81 = *(a1 + v30);
  if ((v80 & 1) == 0)
  {
    v82 = type metadata accessor for _ProtoSlider._StorageClass(0);
    v83 = *(v82 + 48);
    v84 = *(v82 + 52);
    swift_allocObject();
    v81 = sub_26A15B28C(v81);
    *(a1 + v30) = v81;
  }

  v85 = (v81 + OBJC_IVAR____TtCV10SnippetKit12_ProtoSliderP33_29BEE0BA4CDEBE8D801D91DD4B42411813_StorageClass__invocationPayload);
  swift_beginAccess();
  v86 = *v85;
  v87 = v85[1];
  *v85 = xmmword_26A426400;
  return sub_26A0E4784(v86, v87);
}

uint64_t sub_26A33F6B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Slider.identifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for _ProtoSlider(0) + 20));
  OUTLINED_FUNCTION_142();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);

  return OUTLINED_FUNCTION_175();
}

double Slider.minimum.getter()
{
  v1 = *(v0 + *(type metadata accessor for _ProtoSlider(0) + 20));
  OUTLINED_FUNCTION_142();
  return *(v1 + 32);
}

double Slider.maximum.getter()
{
  v1 = *(v0 + *(type metadata accessor for _ProtoSlider(0) + 20));
  OUTLINED_FUNCTION_142();
  return *(v1 + 40);
}

uint64_t sub_26A33F838(uint64_t *a1)
{
  v3 = type metadata accessor for _ProtoOptionalDouble(0);
  v4 = OUTLINED_FUNCTION_12(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_18();
  v9 = (v8 - v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D8D8, &qword_26A429A50);
  v11 = OUTLINED_FUNCTION_41(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_17();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v25 - v18;
  v20 = *(v1 + *(type metadata accessor for _ProtoSlider(0) + 20));
  v21 = *a1;
  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  LODWORD(a1) = __swift_getEnumTagSinglePayload(v19, 1, v3);
  sub_26A0E48F0(v19, &qword_28036D8D8, &qword_26A429A50);
  v22 = 0;
  if (a1 != 1)
  {
    sub_26A10FD9C();
    if (__swift_getEnumTagSinglePayload(v16, 1, v3) == 1)
    {
      *v9 = 0;
      v23 = v9 + *(v3 + 20);
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      if (__swift_getEnumTagSinglePayload(v16, 1, v3) != 1)
      {
        sub_26A0E48F0(v16, &qword_28036D8D8, &qword_26A429A50);
      }
    }

    else
    {
      sub_26A340D60();
    }

    v22 = *v9;
    sub_26A340DB4(v9, type metadata accessor for _ProtoOptionalDouble);
  }

  return v22;
}

uint64_t sub_26A33FA68@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v4 = type metadata accessor for _ProtoVisualProperty();
  v5 = OUTLINED_FUNCTION_12(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v12 = OUTLINED_FUNCTION_41(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_17();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v38 - v19;
  v21 = *(v2 + *(type metadata accessor for _ProtoSlider(0) + 20));
  v22 = *a1;
  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  v23 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v20, 1, v4);
  v25 = v38;
  sub_26A0E48F0(v20, &qword_28036CAE8, &unk_26A426430);
  if (EnumTagSinglePayload != 1)
  {
    sub_26A10FD9C();
    if (__swift_getEnumTagSinglePayload(v17, 1, v4) == 1)
    {
      *v10 = MEMORY[0x277D84F90];
      *(v10 + 8) = 0;
      v26 = v10 + v4[7];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v27 = v4[8];
      v28 = type metadata accessor for _ProtoActionProperty();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v29, v30, v31, v28);
      v32 = v4[9];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v33, v34, v35, v28);
      if (__swift_getEnumTagSinglePayload(v17, 1, v4) != 1)
      {
        sub_26A0E48F0(v17, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      sub_26A340D60();
    }

    sub_26A340D60();
    v23 = 0;
  }

  v36 = type metadata accessor for VisualProperty();
  return __swift_storeEnumTagSinglePayload(v25, v23, 1, v36);
}

uint64_t Slider.invocationPayload.getter()
{
  v22[7] = *MEMORY[0x277D85DE8];
  v1 = objc_opt_self();
  v2 = (*(v0 + *(type metadata accessor for _ProtoSlider(0) + 20)) + OBJC_IVAR____TtCV10SnippetKit12_ProtoSliderP33_29BEE0BA4CDEBE8D801D91DD4B42411813_StorageClass__invocationPayload);
  OUTLINED_FUNCTION_142();
  v4 = *v2;
  v3 = v2[1];
  sub_26A0E45C0(v4, v3);
  v5 = sub_26A4246B4();
  sub_26A0E4784(v4, v3);
  v22[0] = 0;
  v6 = [v1 propertyListWithData:v5 options:0 format:0 error:v22];

  if (!v6)
  {
    v9 = v22[0];
    v10 = sub_26A4245B4();

    swift_willThrow();
    if (qword_28036C5A0 != -1)
    {
      swift_once();
    }

    v11 = sub_26A424AE4();
    __swift_project_value_buffer(v11, qword_2803A8950);
    v12 = v10;
    v13 = sub_26A424AD4();
    v14 = sub_26A424DF4();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22[0] = v16;
      *v15 = 136446210;
      swift_getErrorValue();
      v17 = sub_26A4254B4();
      v19 = sub_26A0E8788(v17, v18, v22);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_26A0B8000, v13, v14, "Failed to deserialize invocationPayload data to dictionary: %{public}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x26D65C950](v16, -1, -1);
      MEMORY[0x26D65C950](v15, -1, -1);
    }

    else
    {
    }

    goto LABEL_9;
  }

  v7 = v22[0];
  sub_26A424E64();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036FB50, &qword_26A43B4F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    result = sub_26A424B24();
    goto LABEL_10;
  }

  result = v21;
LABEL_10:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t Slider.init(identifier:minimum:maximum:step:initialValue:leadingThumbnail:trailingThumbnail:invocationPayload:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = type metadata accessor for _ProtoSlider(0);
  v11 = OUTLINED_FUNCTION_12(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_18();
  sub_26A340C68();
  sub_26A4249C4();

  if (!v15)
  {
    sub_26A340D60();
  }

  sub_26A0E48F0(a8, &qword_28036CB00, &unk_26A426450);
  return sub_26A0E48F0(a7, &qword_28036CB00, &unk_26A426450);
}

uint64_t sub_26A340150(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, int a9, uint64_t a10)
{
  v66 = a10;
  v65 = a9;
  v63 = a8;
  LODWORD(v64) = a7;
  v62 = a6;
  v74 = *MEMORY[0x277D85DE8];
  v14 = type metadata accessor for _ProtoVisualProperty();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v68 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for VisualProperty();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v67 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D8D8, &qword_26A429A50);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v61 - v25;
  v27 = type metadata accessor for _ProtoOptionalDouble(0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v30 = (&v61 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v31);
  v33 = (&v61 - v32);

  _ProtoSlider.identifier.setter();
  v34 = *(type metadata accessor for _ProtoSlider(0) + 20);
  v35 = *(a1 + v34);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37 = *(a1 + v34);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v38 = type metadata accessor for _ProtoSlider._StorageClass(0);
    v39 = *(v38 + 48);
    v40 = *(v38 + 52);
    swift_allocObject();
    v37 = sub_26A15B28C(v37);
    *(a1 + v34) = v37;
  }

  swift_beginAccess();
  v37[4] = a2;
  v41 = *(a1 + v34);
  v42 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *(a1 + v34);
  if ((v42 & 1) == 0)
  {
    v44 = type metadata accessor for _ProtoSlider._StorageClass(0);
    v45 = *(v44 + 48);
    v46 = *(v44 + 52);
    swift_allocObject();
    v43 = sub_26A15B28C(v43);
    *(a1 + v34) = v43;
  }

  swift_beginAccess();
  v43[5] = a3;
  if ((v64 & 1) == 0)
  {
    v64 = v10;
    swift_beginAccess();
    sub_26A10FD9C();
    if (__swift_getEnumTagSinglePayload(v26, 1, v27) == 1)
    {
      v47 = v33 + *(v27 + 20);
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      if (__swift_getEnumTagSinglePayload(v26, 1, v27) != 1)
      {
        sub_26A0E48F0(v26, &qword_28036D8D8, &qword_26A429A50);
      }
    }

    else
    {
      sub_26A340D60();
    }

    *v33 = v62;
    _ProtoSlider.step.setter();
  }

  if ((v65 & 1) == 0)
  {
    v48 = *(a1 + v34);
    swift_beginAccess();
    sub_26A10FD9C();
    if (__swift_getEnumTagSinglePayload(v23, 1, v27) == 1)
    {
      v49 = v30 + *(v27 + 20);
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      if (__swift_getEnumTagSinglePayload(v23, 1, v27) != 1)
      {
        sub_26A0E48F0(v23, &qword_28036D8D8, &qword_26A429A50);
      }
    }

    else
    {
      sub_26A340D60();
    }

    *v30 = v63;
    _ProtoSlider.initialValue.setter();
  }

  sub_26A10FD9C();
  if (v70)
  {
    sub_26A0D671C(&v69, v71);
    v50 = v72;
    v51 = v73;
    __swift_project_boxed_opaque_existential_1(v71, v72);
    (*(v51 + 8))(v50, v51);
    sub_26A340D60();
    _ProtoSlider.leadingThumbnail.setter();
    __swift_destroy_boxed_opaque_existential_1(v71);
  }

  else
  {
    sub_26A0E48F0(&v69, &qword_28036CB00, &unk_26A426450);
  }

  sub_26A10FD9C();
  if (v70)
  {
    sub_26A0D671C(&v69, v71);
    v52 = v72;
    v53 = v73;
    __swift_project_boxed_opaque_existential_1(v71, v72);
    (*(v53 + 8))(v52, v53);
    sub_26A340D60();
    _ProtoSlider.trailingThumbnail.setter();
    __swift_destroy_boxed_opaque_existential_1(v71);
  }

  else
  {
    sub_26A0E48F0(&v69, &qword_28036CB00, &unk_26A426450);
  }

  v54 = objc_opt_self();
  v55 = sub_26A424B04();
  v71[0] = 0;
  v56 = [v54 dataWithPropertyList:v55 format:200 options:0 error:v71];

  v57 = v71[0];
  if (v56)
  {
    sub_26A4246D4();

    result = _ProtoSlider.invocationPayload.setter();
  }

  else
  {
    v59 = v57;
    sub_26A4245B4();

    result = swift_willThrow();
  }

  v60 = *MEMORY[0x277D85DE8];
  return result;
}

Swift::String __swiftcall Slider.description(redacted:)(Swift::Bool redacted)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB20, &unk_26A426470);
  v3 = OUTLINED_FUNCTION_41(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v43 - v6;
  v8 = type metadata accessor for Slider();
  v9 = OUTLINED_FUNCTION_41(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v43 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CDB8, &qword_26A426940);
  v19 = OUTLINED_FUNCTION_12(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v43 - v22;
  sub_26A340D0C();
  if (redacted)
  {
    _ProtoSlider.redactedProto.getter(v14);
  }

  else
  {
    sub_26A340D0C();
  }

  sub_26A340D60();
  v23[*(v18 + 32)] = redacted;
  sub_26A340DB4(v17, type metadata accessor for Slider);
  *&v23[*(v18 + 28)] = MEMORY[0x277D84F90];
  KeyPath = swift_getKeyPath();
  sub_26A0F75B0(KeyPath, 0x696669746E656469, 0xEA00000000007265, 0, v25, v26, v27, v28, v43, v44);

  swift_getKeyPath();
  OUTLINED_FUNCTION_15_34();

  swift_getKeyPath();
  OUTLINED_FUNCTION_15_34();

  v29 = swift_getKeyPath();
  sub_26A0F81C0(v29, 1885697139, 0xE400000000000000, 0, v30, v31, v32, v33, v43, v44);

  v34 = swift_getKeyPath();
  sub_26A0F81C0(v34, 0x566C616974696E69, 0xEC00000065756C61, 0, v35, v36, v37, v38, v43, v44);

  Slider.leadingThumbnail.getter(v7);
  sub_26A104118();
  sub_26A0E48F0(v7, &qword_28036CB20, &unk_26A426470);
  Slider.trailingThumbnail.getter(v7);
  sub_26A104118();
  sub_26A0E48F0(v7, &qword_28036CB20, &unk_26A426470);
  v39 = Slider.invocationPayload.getter();
  sub_26A2F1CD0(v39, 0xD000000000000011, 0x800000026A446EA0);

  sub_26A0F97E4();
  sub_26A0E48F0(v23, &qword_28036CDB8, &qword_26A426940);
  v40 = OUTLINED_FUNCTION_175();
  result._object = v41;
  result._countAndFlagsBits = v40;
  return result;
}

uint64_t sub_26A340C24(uint64_t a1)
{
  v3 = *(v1 + 88);
  v4 = *(v1 + 96);
  return sub_26A340150(a1, *(v1 + 32), *(v1 + 40), *(v1 + 16), *(v1 + 24), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80));
}

unint64_t sub_26A340C68()
{
  result = qword_28036D918;
  if (!qword_28036D918)
  {
    type metadata accessor for _ProtoSlider(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036D918);
  }

  return result;
}

uint64_t type metadata accessor for Slider()
{
  result = qword_280372D20;
  if (!qword_280372D20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A340D0C()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t sub_26A340D60()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t sub_26A340DB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_26A340E38()
{
  result = type metadata accessor for _ProtoSlider(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_14_26()
{

  return type metadata accessor for _ProtoSlider(0);
}

void OUTLINED_FUNCTION_15_34()
{

  sub_26A0F75D8();
}

uint64_t VisualizationImage.visual.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v6 = &v27 - v5;
  v7 = type metadata accessor for _ProtoVisualProperty();
  v8 = OUTLINED_FUNCTION_12(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18();
  v13 = v12 - v11;
  v14 = *(v0 + *(type metadata accessor for _ProtoVisualization_Image(0) + 20));
  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_15(v6);
  if (v15)
  {
    *v13 = MEMORY[0x277D84F90];
    *(v13 + 8) = 0;
    v16 = v13 + v7[7];
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v17 = v7[8];
    v18 = type metadata accessor for _ProtoActionProperty();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v18);
    v22 = v7[9];
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v18);
    OUTLINED_FUNCTION_15(v6);
    if (!v15)
    {
      sub_26A0E48F0(v6, &qword_28036CAE8, &unk_26A426430);
    }
  }

  else
  {
    sub_26A3433C4();
  }

  return sub_26A3433C4();
}

void sub_26A341114()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v35 = v3;
  v4 = type metadata accessor for _ProtoTextProperty(0);
  v5 = OUTLINED_FUNCTION_12(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v12 = OUTLINED_FUNCTION_41(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_17();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_93_0();
  v19 = *(v0 + *(type metadata accessor for _ProtoVisualization_Image(0) + 20));
  v20 = *v2;
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_127_0();
  v21 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v21, v22, &unk_26A425BF0);
  if (v0 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_38_0();
    if (v23)
    {
      *v10 = MEMORY[0x277D84F90];
      *(v10 + 8) = 0;
      v24 = v10 + v4[7];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v25 = v4[8];
      v26 = type metadata accessor for _ProtoActionProperty();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v27, v28, v29, v26);
      v30 = v4[9];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v31, v32, v33, v26);
      OUTLINED_FUNCTION_38_0();
      if (!v23)
      {
        sub_26A0E48F0(v17, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A3433C4();
    }

    sub_26A3433C4();
    v2 = 0;
  }

  v34 = type metadata accessor for TextProperty(0);
  __swift_storeEnumTagSinglePayload(v35, v2, 1, v34);
  OUTLINED_FUNCTION_75();
}

void VisualizationImage.action.getter()
{
  OUTLINED_FUNCTION_76();
  v24 = v2;
  v3 = type metadata accessor for _ProtoActionProperty();
  v4 = OUTLINED_FUNCTION_12(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_18();
  v9 = (v8 - v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v11 = OUTLINED_FUNCTION_41(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_17();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_93_0();
  v18 = *(v0 + *(type metadata accessor for _ProtoVisualization_Image(0) + 20));
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_127_0();
  v19 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v19, v20, &off_26A427400);
  if (v0 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_38_0();
    if (v21)
    {
      *v9 = MEMORY[0x277D84F90];
      v9[1] = 0;
      v9[2] = 0xE000000000000000;
      v22 = v9 + *(v3 + 24);
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_38_0();
      if (!v21)
      {
        sub_26A0E48F0(v16, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      sub_26A3433C4();
    }

    sub_26A3433C4();
    v1 = 0;
  }

  v23 = type metadata accessor for ActionProperty();
  __swift_storeEnumTagSinglePayload(v24, v1, 1, v23);
  OUTLINED_FUNCTION_75();
}

uint64_t VisualizationImage.componentName.getter()
{
  v1 = (*(v0 + *(type metadata accessor for _ProtoVisualization_Image(0) + 20)) + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ImageP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__componentName);
  OUTLINED_FUNCTION_142();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t VisualizationImage.linkIdentifier.getter()
{
  v1 = (*(v0 + *(type metadata accessor for _ProtoVisualization_Image(0) + 20)) + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ImageP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__linkIdentifier);
  OUTLINED_FUNCTION_142();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

void _ProtoVisualization_Image.redactedProto.getter()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v144 = type metadata accessor for _ProtoActionProperty();
  v3 = OUTLINED_FUNCTION_12(v144);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v6);
  v138 = (v133 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v9 = OUTLINED_FUNCTION_41(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v13);
  v143 = v133 - v14;
  v142 = type metadata accessor for _ProtoTextProperty(0);
  v15 = OUTLINED_FUNCTION_12(v142);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v20);
  v134 = (v133 - v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v23 = OUTLINED_FUNCTION_41(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_47();
  v141 = v28;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v30);
  v32 = v133 - v31;
  v33 = type metadata accessor for _ProtoVisualProperty();
  v34 = OUTLINED_FUNCTION_12(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v37);
  v39 = v133 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v41 = OUTLINED_FUNCTION_41(v40);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v44);
  v46 = v133 - v45;
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_93_0();
  OUTLINED_FUNCTION_3_50();
  sub_26A343838();
  v48 = *(type metadata accessor for _ProtoVisualization_Image(0) + 20);
  v145 = v2;
  v146 = v48;
  v49 = *(v2 + v48);
  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0, 1, v33);
  sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
  if (EnumTagSinglePayload != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_17_3(v46);
    if (v51)
    {
      *v39 = MEMORY[0x277D84F90];
      *(v39 + 4) = 0;
      v52 = &v39[v33[7]];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v53 = v33[8];
      OUTLINED_FUNCTION_92();
      v54 = v144;
      __swift_storeEnumTagSinglePayload(v55, v56, v57, v144);
      v58 = v33[9];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v59, v60, v61, v54);
      OUTLINED_FUNCTION_17_3(v46);
      v62 = v145;
      v63 = v146;
      if (!v51)
      {
        sub_26A0E48F0(v46, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      sub_26A3433C4();
      v62 = v145;
      v63 = v146;
    }

    _ProtoVisualProperty.redactedProto.getter();
    sub_26A343418(v39, type metadata accessor for _ProtoVisualProperty);
    v64 = *(v62 + v63);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v66 = *(v62 + v63);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v67 = type metadata accessor for _ProtoVisualization_Image._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v67);
      OUTLINED_FUNCTION_24_33();
      *(v62 + v63) = v68;
    }

    sub_26A3433C4();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v69, v70, v71, v33);
    OUTLINED_FUNCTION_211();
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  v72 = v142;
  v73 = __swift_getEnumTagSinglePayload(v32, 1, v142);
  sub_26A0E48F0(v32, &qword_28036C7B8, &unk_26A425BF0);
  if (v73 == 1)
  {
    v74 = v144;
    v75 = v145;
    v76 = v146;
  }

  else
  {
    v77 = v133[3];
    sub_26A10FD9C();
    OUTLINED_FUNCTION_15(v77);
    v75 = v145;
    v76 = v146;
    if (v51)
    {
      v78 = v134;
      *v134 = MEMORY[0x277D84F90];
      *(v78 + 4) = 0;
      v79 = v78 + v72[7];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v80 = v72[8];
      OUTLINED_FUNCTION_92();
      v74 = v144;
      __swift_storeEnumTagSinglePayload(v81, v82, v83, v144);
      v84 = v72[9];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v85, v86, v87, v74);
      OUTLINED_FUNCTION_15(v77);
      if (!v51)
      {
        sub_26A0E48F0(v77, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A3433C4();
      v74 = v144;
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_13_30();
    v88 = *(v75 + v76);
    v89 = swift_isUniquelyReferenced_nonNull_native();
    v90 = *(v75 + v76);
    if ((v89 & 1) == 0)
    {
      v91 = type metadata accessor for _ProtoVisualization_Image._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v91);
      OUTLINED_FUNCTION_24_33();
      *(v75 + v76) = v92;
    }

    sub_26A3433C4();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v93, v94, v95, v72);
    OUTLINED_FUNCTION_211();
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  v96 = v140;
  sub_26A10FD9C();
  v97 = v72;
  v98 = __swift_getEnumTagSinglePayload(v96, 1, v72);
  sub_26A0E48F0(v96, &qword_28036C7B8, &unk_26A425BF0);
  if (v98 != 1)
  {
    v99 = v135;
    sub_26A10FD9C();
    if (__swift_getEnumTagSinglePayload(v99, 1, v97) == 1)
    {
      v100 = v136;
      *v136 = MEMORY[0x277D84F90];
      *(v100 + 4) = 0;
      v101 = v100 + v97[7];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v102 = v97[8];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v103, v104, v105, v74);
      v106 = v97[9];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v107, v108, v109, v74);
      if (__swift_getEnumTagSinglePayload(v99, 1, v97) != 1)
      {
        sub_26A0E48F0(v99, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A3433C4();
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_13_30();
    v110 = *(v75 + v76);
    v111 = swift_isUniquelyReferenced_nonNull_native();
    v112 = *(v75 + v76);
    if ((v111 & 1) == 0)
    {
      v113 = type metadata accessor for _ProtoVisualization_Image._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v113);
      OUTLINED_FUNCTION_24_33();
      *(v75 + v76) = v114;
    }

    sub_26A3433C4();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v115, v116, v117, v97);
    OUTLINED_FUNCTION_211();
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  v118 = v143;
  sub_26A10FD9C();
  v119 = __swift_getEnumTagSinglePayload(v118, 1, v74);
  sub_26A0E48F0(v118, &off_28036C7C0, &off_26A427400);
  if (v119 != 1)
  {
    v120 = v137;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_17_3(v120);
    v121 = v146;
    if (v51)
    {
      v123 = v138;
      *v138 = MEMORY[0x277D84F90];
      *(v123 + 8) = 0;
      *(v123 + 16) = 0xE000000000000000;
      v122 = v123 + *(v74 + 24);
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_17_3(v120);
      v124 = v139;
      if (!v51)
      {
        sub_26A0E48F0(v120, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      v123 = v138;
      sub_26A3433C4();
      v124 = v139;
    }

    _s10SnippetKit14ActionPropertyV13redactedProtoAA01_fcD0Vvg_0(v124);
    sub_26A343418(v123, type metadata accessor for _ProtoActionProperty);
    v125 = *(v75 + v121);
    v126 = swift_isUniquelyReferenced_nonNull_native();
    v127 = *(v75 + v121);
    if ((v126 & 1) == 0)
    {
      v128 = type metadata accessor for _ProtoVisualization_Image._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v128);
      sub_26A311400();
      *(v75 + v121) = v129;
    }

    sub_26A3433C4();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v130, v131, v132, v74);
    OUTLINED_FUNCTION_211();
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t VisualizationImage.init(visual:text1:text2:action:componentName:linkIdentifier:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _ProtoVisualization_Image(0);
  OUTLINED_FUNCTION_2_47();
  sub_26A343710(v8, v9);
  sub_26A4249C4();

  sub_26A0E48F0(a4, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(a3, &qword_28036CB08, &unk_26A428720);
  sub_26A0E48F0(a2, &qword_28036CB08, &unk_26A428720);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26A342240(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v60 = a8;
  v61 = a1;
  v68 = a6;
  v69 = a7;
  v64 = a4;
  v65 = a5;
  v62 = a3;
  v10 = type metadata accessor for ActionProperty();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v59 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v67 = &v54 - v15;
  v66 = type metadata accessor for _ProtoActionProperty();
  v16 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v56 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v57 = &v54 - v19;
  v20 = type metadata accessor for TextProperty(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v63 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v54 - v26;
  v28 = type metadata accessor for _ProtoTextProperty(0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v55 = &v54 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v58 = &v54 - v32;
  MEMORY[0x28223BE20](v33);
  v35 = &v54 - v34;
  v36 = type metadata accessor for _ProtoVisualProperty();
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36 - 8);
  v38 = type metadata accessor for VisualProperty();
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38 - 8);
  v40 = a2[3];
  v41 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v40);
  (*(v41 + 8))(v40, v41);
  sub_26A3433C4();
  _ProtoVisualization_Image.visual.setter();
  sub_26A10FD9C();
  v42 = v71;
  if (v71)
  {
    v43 = v72;
    __swift_project_boxed_opaque_existential_1(v70, v71);
    (*(v43 + 8))(v42, v43);
    sub_26A3433C4();
    __swift_storeEnumTagSinglePayload(v27, 0, 1, v28);
    __swift_destroy_boxed_opaque_existential_1(v70);
    if (__swift_getEnumTagSinglePayload(v27, 1, v28) != 1)
    {
      sub_26A3433C4();
      sub_26A343838();
      _ProtoVisualization_Image.text1.setter();
      sub_26A343418(v35, type metadata accessor for _ProtoTextProperty);
      goto LABEL_6;
    }
  }

  else
  {
    sub_26A0E48F0(v70, &qword_28036CB08, &unk_26A428720);
    __swift_storeEnumTagSinglePayload(v27, 1, 1, v28);
  }

  sub_26A0E48F0(v27, &qword_28036C7B8, &unk_26A425BF0);
LABEL_6:
  sub_26A10FD9C();
  v44 = v71;
  if (v71)
  {
    v45 = v72;
    __swift_project_boxed_opaque_existential_1(v70, v71);
    (*(v45 + 8))(v44, v45);
    v46 = v63;
    sub_26A3433C4();
    __swift_storeEnumTagSinglePayload(v46, 0, 1, v28);
    __swift_destroy_boxed_opaque_existential_1(v70);
    if (__swift_getEnumTagSinglePayload(v46, 1, v28) != 1)
    {
      v47 = v55;
      sub_26A3433C4();
      sub_26A343838();
      _ProtoVisualization_Image.text2.setter();
      sub_26A343418(v47, type metadata accessor for _ProtoTextProperty);
      goto LABEL_11;
    }
  }

  else
  {
    sub_26A0E48F0(v70, &qword_28036CB08, &unk_26A428720);
    v46 = v63;
    __swift_storeEnumTagSinglePayload(v63, 1, 1, v28);
  }

  sub_26A0E48F0(v46, &qword_28036C7B8, &unk_26A425BF0);
LABEL_11:
  sub_26A10FD9C();
  v48 = v71;
  if (v71)
  {
    v49 = v72;
    __swift_project_boxed_opaque_existential_1(v70, v71);
    (*(v49 + 8))(v48, v49);
    v50 = v67;
    sub_26A3433C4();
    v51 = v66;
    __swift_storeEnumTagSinglePayload(v50, 0, 1, v66);
    __swift_destroy_boxed_opaque_existential_1(v70);
    if (__swift_getEnumTagSinglePayload(v50, 1, v51) != 1)
    {
      v52 = v57;
      sub_26A3433C4();
      sub_26A343838();
      _ProtoVisualization_Image.action.setter();
      sub_26A343418(v52, type metadata accessor for _ProtoActionProperty);
      goto LABEL_16;
    }
  }

  else
  {
    sub_26A0E48F0(v70, &qword_28036CAF8, &unk_26A426D30);
    v50 = v67;
    __swift_storeEnumTagSinglePayload(v67, 1, 1, v66);
  }

  sub_26A0E48F0(v50, &off_28036C7C0, &off_26A427400);
LABEL_16:

  result = _ProtoVisualization_Image.componentName.setter();
  if (a9)
  {

    return _ProtoVisualization_Image.linkIdentifier.setter();
  }

  return result;
}

uint64_t VisualizationImage.init(visual:text1:text2:action:componentName:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_26A0E5D68(a1, v14);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  sub_26A10FD9C();
  type metadata accessor for _ProtoVisualization_Image(0);
  OUTLINED_FUNCTION_2_47();
  sub_26A343710(v8, v9);
  sub_26A4249C4();

  sub_26A0E48F0(a4, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_164_0(a3);
  OUTLINED_FUNCTION_164_0(a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_26A0E48F0(v11, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_164_0(v12);
  OUTLINED_FUNCTION_164_0(v13);
  return __swift_destroy_boxed_opaque_existential_1(v14);
}

void VisualizationImage.init(visual:text1:text2:action:)()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v9 = v6;
  sub_26A0E5D68(v6, v17);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  sub_26A10FD9C();
  sub_26A0E5D68(v17, v13);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  sub_26A10FD9C();
  type metadata accessor for _ProtoVisualization_Image(0);
  OUTLINED_FUNCTION_2_47();
  sub_26A343710(v7, v8);
  sub_26A4249C4();
  sub_26A0E48F0(v1, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_164_0(v3);
  OUTLINED_FUNCTION_164_0(v5);
  __swift_destroy_boxed_opaque_existential_1(v9);
  sub_26A0E48F0(&v14, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_164_0(&v15);
  OUTLINED_FUNCTION_164_0(&v16);
  __swift_destroy_boxed_opaque_existential_1(v17);
  sub_26A0E48F0(v10, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_164_0(v11);
  OUTLINED_FUNCTION_164_0(v12);
  __swift_destroy_boxed_opaque_existential_1(v13);
  OUTLINED_FUNCTION_75();
}

Swift::String __swiftcall VisualizationImage.description(redacted:)(Swift::Bool redacted)
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB18, &unk_26A427670);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v79 = &v77 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB30, &qword_26A426480);
  OUTLINED_FUNCTION_41(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v11);
  v13 = &v77 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v17);
  v78 = &v77 - v18;
  v19 = type metadata accessor for _ProtoVisualProperty();
  v20 = OUTLINED_FUNCTION_12(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_18();
  v25 = v24 - v23;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB20, &unk_26A426470);
  OUTLINED_FUNCTION_41(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v29);
  v31 = &v77 - v30;
  v32 = type metadata accessor for VisualizationImage();
  v33 = OUTLINED_FUNCTION_41(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v36);
  v38 = &v77 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CDB0, &qword_26A43F5D0);
  OUTLINED_FUNCTION_12(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v42);
  v44 = &v77 - v43;
  OUTLINED_FUNCTION_10_45();
  sub_26A343838();
  if (v2)
  {
    _ProtoVisualization_Image.redactedProto.getter();
  }

  else
  {
    sub_26A343838();
  }

  sub_26A3433C4();
  v44[*(v39 + 32)] = v2 & 1;
  sub_26A343418(v38, type metadata accessor for VisualizationImage);
  v45 = MEMORY[0x277D84F90];
  *&v44[*(v39 + 28)] = MEMORY[0x277D84F90];
  v46 = *&v44[*(type metadata accessor for _ProtoVisualization_Image(0) + 20)];
  OUTLINED_FUNCTION_142();
  v47 = v78;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_17_3(v47);
  if (v48)
  {
    *v25 = v45;
    *(v25 + 8) = 0;
    v49 = v25 + v19[7];
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v50 = v19[8];
    v51 = type metadata accessor for _ProtoActionProperty();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v52, v53, v54, v51);
    v55 = v19[9];
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v56, v57, v58, v51);
    OUTLINED_FUNCTION_17_3(v47);
    if (!v48)
    {
      sub_26A0E48F0(v47, &qword_28036CAE8, &unk_26A426430);
    }
  }

  else
  {
    sub_26A3433C4();
  }

  sub_26A3433C4();
  type metadata accessor for VisualProperty();
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v59, v60, v61, v62);
  sub_26A104B80();
  sub_26A0E48F0(v31, &qword_28036CB20, &unk_26A426470);
  VisualizationImage.text1.getter();
  sub_26A104B58();
  sub_26A0E48F0(v13, &qword_28036CB30, &qword_26A426480);
  VisualizationImage.text2.getter();
  sub_26A104B58();
  sub_26A0E48F0(v13, &qword_28036CB30, &qword_26A426480);
  v63 = v79;
  VisualizationImage.action.getter();
  sub_26A104A54();
  sub_26A0E48F0(v63, &qword_28036CB18, &unk_26A427670);
  KeyPath = swift_getKeyPath();
  sub_26A0F77C8(KeyPath, 0x6E656E6F706D6F63, 0xED0000656D614E74, 1, v65, v66, v67, v68, v77, v78);

  v69 = swift_getKeyPath();
  sub_26A0F83B4(v69, 0x6E6564496B6E696CLL, 0xEE00726569666974, 1, v70, v71, v72, v73, v77, v78);

  sub_26A0FADA4();
  sub_26A0E48F0(v44, &qword_28036CDB0, &qword_26A43F5D0);
  OUTLINED_FUNCTION_175();
  OUTLINED_FUNCTION_75();
  result._object = v75;
  result._countAndFlagsBits = v74;
  return result;
}

uint64_t type metadata accessor for VisualizationImage()
{
  result = qword_280372D30;
  if (!qword_280372D30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A3433C4()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t sub_26A343418(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t VisualizationImage.componentProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoVisualization_Image(0);
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
  OUTLINED_FUNCTION_3_50();
  sub_26A343838();
  sub_26A0E48F0(a1, &qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_11_32();
  sub_26A3433C4();
  OUTLINED_FUNCTION_175();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_126_0();
  return __swift_storeEnumTagSinglePayload(v17, v18, v19, v6);
}

uint64_t VisualizationImage.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for VisualizationImage();
  *(inited + 64) = &protocol witness table for VisualizationImage;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_10_45();
  sub_26A343838();
  OUTLINED_FUNCTION_142();

  sub_26A10BF5C(v1);
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A343710(&qword_28036CB48, type metadata accessor for _ProtoResponse.Section);
  sub_26A4249C4();

  swift_setDeallocating();
  return sub_26A10C358();
}

uint64_t sub_26A343710(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A3437CC()
{
  result = type metadata accessor for _ProtoVisualization_Image(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A343838()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t OUTLINED_FUNCTION_13_30()
{

  return sub_26A343418(v0, type metadata accessor for _ProtoTextProperty);
}

void OUTLINED_FUNCTION_24_33()
{

  sub_26A311400();
}

uint64_t OUTLINED_FUNCTION_29_19()
{

  return type metadata accessor for _ProtoVisualization_Image(0);
}

uint64_t ReferenceStandard.text1.getter()
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
  v13 = *(type metadata accessor for _ProtoReference_Standard(0) + 24);
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
    sub_26A344C58();
  }

  return sub_26A344C58();
}

uint64_t ReferenceStandard.action.getter@<X0>(uint64_t a1@<X8>)
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
  v18 = *(type metadata accessor for _ProtoReference_Standard(0) + 28);
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
      sub_26A344C58();
    }

    sub_26A344C58();
    v19 = 0;
  }

  v28 = type metadata accessor for ActionProperty();
  return __swift_storeEnumTagSinglePayload(v21, v19, 1, v28);
}

uint64_t ReferenceStandard.componentName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_175();
}

uint64_t _ProtoReference_Standard.redactedProto.getter@<X0>(uint64_t a1@<X8>)
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
  OUTLINED_FUNCTION_0_66();
  sub_26A344C04();
  v72 = type metadata accessor for _ProtoReference_Standard(0);
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
      sub_26A344C58();
    }

    _ProtoTextProperty.redactedProto.getter();
    sub_26A344CAC(v26, type metadata accessor for _ProtoTextProperty);
    sub_26A0E48F0(a1 + v37, &qword_28036C7B8, &unk_26A425BF0);
    sub_26A344C58();
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
      sub_26A344C58();
    }

    _s10SnippetKit14ActionPropertyV13redactedProtoAA01_fcD0Vvg_0(v70);
    sub_26A344CAC(v63, type metadata accessor for _ProtoActionProperty);
    sub_26A0E48F0(a1 + v58, &off_28036C7C0, &off_26A427400);
    sub_26A344C58();
    OUTLINED_FUNCTION_126_0();
    return __swift_storeEnumTagSinglePayload(v64, v65, v66, v41);
  }

  return result;
}

uint64_t ReferenceStandard.init(text1:action:componentName:)(uint64_t *a1, uint64_t a2)
{
  type metadata accessor for _ProtoReference_Standard(0);
  OUTLINED_FUNCTION_4_40();
  sub_26A344F78(v4, v5);
  sub_26A4249C4();

  sub_26A0E48F0(a2, &qword_28036CAF8, &unk_26A426D30);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26A344368(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
  sub_26A344C58();
  v23 = type metadata accessor for _ProtoReference_Standard(0);
  v24 = *(v23 + 24);
  sub_26A0E48F0(a1 + v24, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A344C58();
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
  sub_26A344C58();
  v27 = v33;
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v33);
  __swift_destroy_boxed_opaque_existential_1(v36);
  if (__swift_getEnumTagSinglePayload(v12, 1, v27) == 1)
  {
LABEL_5:
    sub_26A0E48F0(v12, &off_28036C7C0, &off_26A427400);
    goto LABEL_6;
  }

  sub_26A344C58();
  sub_26A344C58();
  v28 = *(v23 + 28);
  sub_26A0E48F0(a1 + v28, &off_28036C7C0, &off_26A427400);
  sub_26A344C58();
  __swift_storeEnumTagSinglePayload(a1 + v28, 0, 1, v27);
LABEL_6:
  v29 = a1[1];
  v30 = v35;

  *a1 = v34;
  a1[1] = v30;
  return result;
}

uint64_t ReferenceStandard.init(text1:action:)(uint64_t *a1, uint64_t a2)
{
  sub_26A0E5D68(a1, v8);
  sub_26A10FD9C();
  type metadata accessor for _ProtoReference_Standard(0);
  OUTLINED_FUNCTION_4_40();
  sub_26A344F78(v4, v5);
  sub_26A4249C4();
  sub_26A0E48F0(a2, &qword_28036CAF8, &unk_26A426D30);
  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_26A0E48F0(v7, &qword_28036CAF8, &unk_26A426D30);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

Swift::String __swiftcall ReferenceStandard.description(redacted:)(Swift::Bool redacted)
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
  v14 = type metadata accessor for ReferenceStandard();
  v15 = OUTLINED_FUNCTION_41(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_17();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = v42 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CDA8, &unk_26A426930);
  OUTLINED_FUNCTION_12(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v27);
  v29 = v42 - v28;
  OUTLINED_FUNCTION_3_51();
  sub_26A344C04();
  if (redacted)
  {
    _ProtoReference_Standard.redactedProto.getter(v20);
  }

  else
  {
    sub_26A344C04();
  }

  sub_26A344C58();
  v29[*(v24 + 32)] = redacted;
  sub_26A344CAC(v23, type metadata accessor for ReferenceStandard);
  *&v29[*(v24 + 28)] = MEMORY[0x277D84F90];
  ReferenceStandard.text1.getter();
  type metadata accessor for TextProperty(0);
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
  sub_26A1058AC();
  sub_26A0E48F0(v13, &qword_28036CB30, &qword_26A426480);
  ReferenceStandard.action.getter(v7);
  sub_26A1057A8();
  sub_26A0E48F0(v7, &qword_28036CB18, &unk_26A427670);
  KeyPath = swift_getKeyPath();
  sub_26A0F7958(KeyPath, 0x6E656E6F706D6F63, 0xED0000656D614E74, 1, v35, v36, v37, v38, v42[0], v42[1]);

  sub_26A0FC1B8();
  sub_26A0E48F0(v29, &qword_28036CDA8, &unk_26A426930);
  v39 = OUTLINED_FUNCTION_175();
  result._object = v40;
  result._countAndFlagsBits = v39;
  return result;
}

uint64_t type metadata accessor for ReferenceStandard()
{
  result = qword_280372D40;
  if (!qword_280372D40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A344C04()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t sub_26A344C58()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t sub_26A344CAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t ReferenceStandard.componentProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoReference_Standard(0);
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
  OUTLINED_FUNCTION_0_66();
  sub_26A344C04();
  sub_26A0E48F0(a1, &qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_5_45();
  sub_26A344C58();
  OUTLINED_FUNCTION_175();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_126_0();
  return __swift_storeEnumTagSinglePayload(v17, v18, v19, v6);
}

uint64_t ReferenceStandard.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for ReferenceStandard();
  *(inited + 64) = &protocol witness table for ReferenceStandard;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_3_51();
  sub_26A344C04();
  swift_beginAccess();

  sub_26A10BF5C(v1);
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A344F78(&qword_28036CB48, type metadata accessor for _ProtoResponse.Section);
  sub_26A4249C4();

  swift_setDeallocating();
  return sub_26A10C358();
}

uint64_t sub_26A344F78(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A345034()
{
  result = type metadata accessor for _ProtoReference_Standard(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_15_35()
{

  return type metadata accessor for _ProtoReference_Standard(0);
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_26A345150(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_26A345190(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_26A3451EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness - 8);
  v12 = v25 - v11;
  v13 = *(a1 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a3 + 24))(a1, a3, v16);
  (*(a3 + 32))(v12, a1, a3);
  v19 = (*(a3 + 64))(1, a1, a3);
  if (v4)
  {
    return (*(v13 + 8))(v18, a1);
  }

  v22 = v19;
  v23 = v20;
  (*(v13 + 8))(v18, a1);
  v24 = *(a3 + 48);
  a4[3] = a1;
  a4[4] = a2;
  __swift_allocate_boxed_opaque_existential_1(a4);
  return v24(v22, v23, a1, a3);
}

uint64_t *__swift_deallocate_boxed_opaque_existential_1(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x26D65C950);
  }

  return result;
}

uint64_t _ProtoResponse.Component.init()()
{
  v1 = OUTLINED_FUNCTION_26_13();
  type metadata accessor for _ProtoResponse.Component.OneOf_Value(v1);
  OUTLINED_FUNCTION_90_7();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = type metadata accessor for _ProtoResponse.Component(0);
  OUTLINED_FUNCTION_23_21(v6);
  v7 = *(v0 + 24);
  type metadata accessor for _ProtoSeparators();
  v8 = OUTLINED_FUNCTION_12_29();

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

uint64_t sub_26A34552C()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t _ProtoResponse.Component.hasSeparators.getter()
{
  v1 = OUTLINED_FUNCTION_133();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_46();
  v8 = type metadata accessor for _ProtoResponse.Component(v7);
  OUTLINED_FUNCTION_176(*(v8 + 24));
  sub_26A10FD9C();
  type metadata accessor for _ProtoSeparators();
  v9 = OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_37(v9, v10, v11);
  OUTLINED_FUNCTION_125_4();
  return v0;
}

uint64_t _ProtoResponse.Component.separators.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_115();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_46();
  v10 = type metadata accessor for _ProtoResponse.Component(v9);
  OUTLINED_FUNCTION_176(*(v10 + 24));
  sub_26A10FD9C();
  v11 = type metadata accessor for _ProtoSeparators();
  OUTLINED_FUNCTION_23(v1);
  if (!v12)
  {
    return sub_26A34552C();
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  v13 = a1 + *(v11 + 24);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  result = OUTLINED_FUNCTION_23(v1);
  if (!v12)
  {
    return sub_26A13440C();
  }

  return result;
}

uint64_t _ProtoResponse.Component.separators.setter()
{
  v0 = OUTLINED_FUNCTION_110();
  v1 = *(type metadata accessor for _ProtoResponse.Component(v0) + 24);
  sub_26A13440C();
  OUTLINED_FUNCTION_30_14();
  OUTLINED_FUNCTION_36_1();
  sub_26A34552C();
  type metadata accessor for _ProtoSeparators();
  OUTLINED_FUNCTION_126_0();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t _ProtoIntentsUI_Standard.hasAction.getter()
{
  v1 = OUTLINED_FUNCTION_133();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_46();
  v8 = type metadata accessor for _ProtoIntentsUI_Standard(v7);
  OUTLINED_FUNCTION_176(*(v8 + 36));
  sub_26A10FD9C();
  type metadata accessor for _ProtoActionProperty();
  v9 = OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_37(v9, v10, v11);
  OUTLINED_FUNCTION_125_4();
  return v0;
}

uint64_t _ProtoIntentsUI_Standard.action.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_115();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_46();
  v10 = type metadata accessor for _ProtoIntentsUI_Standard(v9);
  OUTLINED_FUNCTION_176(*(v10 + 36));
  sub_26A10FD9C();
  v11 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_23(v1);
  if (!v12)
  {
    return sub_26A34552C();
  }

  OUTLINED_FUNCTION_138_2(MEMORY[0x277D84F90]);
  v13 = a1 + *(v11 + 24);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  result = OUTLINED_FUNCTION_23(v1);
  if (!v12)
  {
    return sub_26A13440C();
  }

  return result;
}

uint64_t _ProtoIntentsUI_Standard.action.setter()
{
  v0 = OUTLINED_FUNCTION_110();
  v1 = *(type metadata accessor for _ProtoIntentsUI_Standard(v0) + 36);
  sub_26A13440C();
  OUTLINED_FUNCTION_29_20();
  OUTLINED_FUNCTION_36_1();
  sub_26A34552C();
  type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_126_0();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t _ProtoIntentsUI_Standard.Slot.parameterKeyPaths.getter()
{
  OUTLINED_FUNCTION_124_2();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_142();
  v3 = *(v2 + 16);
}

uint64_t _ProtoIntentsUI_Standard.Slot.fallback.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_115();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_62_3();
  OUTLINED_FUNCTION_124_2();
  v11 = *(v2 + v10);
  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  v12 = type metadata accessor for _ProtoResponse.Component(0);
  OUTLINED_FUNCTION_23(v1);
  if (!v13)
  {
    return sub_26A34552C();
  }

  type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  v18 = a1 + *(v12 + 20);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v19 = *(v12 + 24);
  type metadata accessor for _ProtoSeparators();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  result = OUTLINED_FUNCTION_23(v1);
  if (!v13)
  {
    return sub_26A13440C();
  }

  return result;
}

uint64_t _ProtoIntentsUI_Standard.Slot.parameterKeyPaths.setter()
{
  v2 = v1;
  v3 = OUTLINED_FUNCTION_110();
  v4 = *(type metadata accessor for _ProtoIntentsUI_Standard.Slot(v3) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_133_3();
    v8 = OUTLINED_FUNCTION_5_3();
    v7 = sub_26A375664(v8);
    *(v2 + v4) = v7;
  }

  swift_beginAccess();
  v9 = *(v7 + 16);
  *(v7 + 16) = v0;
}

uint64_t _ProtoIntentsUI_Standard.Slot.fallback.setter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C880, &unk_26A425E30);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_62_3();
  v6 = *(type metadata accessor for _ProtoIntentsUI_Standard.Slot(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_133_3();
    v10 = OUTLINED_FUNCTION_5_3();
    *(v1 + v6) = sub_26A375664(v10);
  }

  sub_26A34552C();
  type metadata accessor for _ProtoResponse.Component(0);
  OUTLINED_FUNCTION_90_7();
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  swift_beginAccess();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  return swift_endAccess();
}

uint64_t static _ProtoIntentsUI_Standard.Slot.== infix(_:_:)()
{
  OUTLINED_FUNCTION_45_3();
  OUTLINED_FUNCTION_124_2();
  v3 = *(v1 + v2);
  v4 = *(v0 + v2);
  if (v3 != v4)
  {
    v5 = *(v1 + v2);

    v6 = sub_26A375DE4(v3, v4);

    if (!v6)
    {
      return 0;
    }
  }

  sub_26A424794();
  OUTLINED_FUNCTION_1_55();
  sub_26A37650C();
  OUTLINED_FUNCTION_246();
  return sub_26A424B64() & 1;
}

uint64_t _ProtoResponse.backgrounds.setter()
{
  OUTLINED_FUNCTION_14_4();
  v2 = *(v1 + 16);

  *(v1 + 16) = v0;
  return result;
}

uint64_t _ProtoResponse.ornaments.setter()
{
  OUTLINED_FUNCTION_14_4();
  v2 = *(v1 + 24);

  *(v1 + 24) = v0;
  return result;
}

uint64_t _ProtoResponse.groups.setter()
{
  OUTLINED_FUNCTION_14_4();
  v2 = *(v1 + 32);

  *(v1 + 32) = v0;
  return result;
}

uint64_t _ProtoResponse.aceCommands.setter()
{
  OUTLINED_FUNCTION_14_4();
  v2 = *(v1 + 40);

  *(v1 + 40) = v0;
  return result;
}

uint64_t _ProtoResponse.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_26_13();
  v1 = *(type metadata accessor for _ProtoResponse(v0) + 40);
  v2 = sub_26A424794();
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_57_5();

  return v6(v5);
}

uint64_t _ProtoResponse.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_110();
  v1 = *(type metadata accessor for _ProtoResponse(v0) + 40);
  v2 = sub_26A424794();
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_219_0();

  return v6(v5);
}

uint64_t _ProtoResponse.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_11_3();
  v1 = *(type metadata accessor for _ProtoResponse(v0) + 40);
  return OUTLINED_FUNCTION_51_5();
}

unint64_t _ProtoResponse.LevelOfDetail.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t _ProtoResponse.LevelOfDetail.rawValue.getter()
{
  v1 = *v0 == 0;
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t sub_26A3465E4@<X0>(uint64_t *a1@<X8>)
{
  result = _ProtoResponse.LevelOfDetail.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_26A346618(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A376550();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t _ProtoResponse.Section.componentList.setter()
{
  OUTLINED_FUNCTION_14_4();
  v2 = *v1;

  *v1 = v0;
  return result;
}

uint64_t _ProtoResponse.Section.levelOfDetail.setter()
{
  OUTLINED_FUNCTION_14_4();
  v2 = *(v1 + 8);

  *(v1 + 8) = v0;
  return result;
}

uint64_t _ProtoResponse.Section.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_11_3();
  v1 = *(type metadata accessor for _ProtoResponse.Section(v0) + 32);
  return OUTLINED_FUNCTION_51_5();
}

uint64_t _ProtoResponse.Section.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = v2;
  *(a1 + 16) = v2;
  *(a1 + 24) = 0;
  v3 = a1 + *(type metadata accessor for _ProtoResponse.Section(0) + 32);
  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t _ProtoResponse.Group.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_175();
}

uint64_t _ProtoResponse.Group.id.setter()
{
  OUTLINED_FUNCTION_60_5();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t _ProtoResponse.Group.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_26_13();
  v1 = *(type metadata accessor for _ProtoResponse.Group(v0) + 24);
  v2 = sub_26A424794();
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_57_5();

  return v6(v5);
}

uint64_t _ProtoResponse.Group.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_110();
  v1 = *(type metadata accessor for _ProtoResponse.Group(v0) + 24);
  v2 = sub_26A424794();
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_219_0();

  return v6(v5);
}

uint64_t _ProtoResponse.Group.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_11_3();
  v1 = *(type metadata accessor for _ProtoResponse.Group(v0) + 24);
  return OUTLINED_FUNCTION_51_5();
}

uint64_t _ProtoResponse.Group.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_61_11();
  *(a1 + 16) = MEMORY[0x277D84F90];
  v2 = a1 + *(type metadata accessor for _ProtoResponse.Group(0) + 24);
  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t _ProtoResponse.Component.customCanvas.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v7)
  {
    sub_26A13440C();
LABEL_6:
    OUTLINED_FUNCTION_61_11();
    *(v0 + 16) = 0;
    *(v0 + 24) = v9;
    *(v0 + 32) = xmmword_26A426400;
    *(v0 + 48) = 0;
    *(v0 + 56) = v9;
    *(v0 + 64) = 0;
    *(v0 + 66) = 0;
    v10 = v0 + *(type metadata accessor for _ProtoCustomCanvas() + 44);
    return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  }

  OUTLINED_FUNCTION_21_3();
  if (swift_getEnumCaseMultiPayload())
  {
    sub_26A3761EC();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_246();
  return sub_26A34552C();
}

void _ProtoResponse.Component.customCanvas.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  OUTLINED_FUNCTION_15_3(v5);
  v6 = type metadata accessor for _ProtoCustomCanvas();
  OUTLINED_FUNCTION_7_28(v6);
  v8 = *(v7 + 64);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_26_22(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_10_46(v11);
  OUTLINED_FUNCTION_0_67();
  if (v12)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_157();
      sub_26A34552C();
      goto LABEL_7;
    }

    sub_26A3761EC();
  }

  OUTLINED_FUNCTION_60_12();
  *(v8 + 16) = 0;
  *(v8 + 24) = v14;
  *(v8 + 32) = xmmword_26A426400;
  *(v8 + 48) = 0;
  *(v8 + 56) = v14;
  *(v8 + 64) = 0;
  *(v8 + 66) = 0;
  v15 = v8 + *(v0 + 44);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
LABEL_7:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.factItemStandard.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v7)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v10 = *(type metadata accessor for _ProtoFactItem_Standard(0) + 20);
  if (qword_28036C488 != -1)
  {
    OUTLINED_FUNCTION_87_7();
  }

  *(v0 + v10) = qword_280371AE8;
}

uint64_t sub_26A346E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = a5(0);
  OUTLINED_FUNCTION_41(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v11);
  v13 = &v15 - v12;
  OUTLINED_FUNCTION_12_2();
  sub_26A37623C();
  return a7(v13);
}

void _ProtoResponse.Component.factItemStandard.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  v7 = type metadata accessor for _ProtoFactItem_Standard(v6);
  OUTLINED_FUNCTION_7_28(v7);
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_26_22(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_10_46(v12);
  OUTLINED_FUNCTION_0_67();
  if (v13)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_157();
      sub_26A34552C();
      goto LABEL_10;
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v15 = *(v0 + 20);
  if (qword_28036C488 != -1)
  {
    OUTLINED_FUNCTION_87_7();
  }

  *(v9 + v15) = qword_280371AE8;

LABEL_10:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.factItemShortNumber.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v7)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v10 = *(type metadata accessor for _ProtoFactItem_ShortNumber(0) + 20);
  if (qword_28036C498 != -1)
  {
    OUTLINED_FUNCTION_86_10();
  }

  *(v0 + v10) = qword_280371B08;
}

void _ProtoResponse.Component.factItemShortNumber.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  v7 = type metadata accessor for _ProtoFactItem_ShortNumber(v6);
  OUTLINED_FUNCTION_7_28(v7);
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_26_22(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_10_46(v12);
  OUTLINED_FUNCTION_0_67();
  if (v13)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      OUTLINED_FUNCTION_157();
      sub_26A34552C();
      goto LABEL_10;
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v15 = *(v0 + 20);
  if (qword_28036C498 != -1)
  {
    OUTLINED_FUNCTION_86_10();
  }

  *(v9 + v15) = qword_280371B08;

LABEL_10:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.factItemHeroNumber.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v7)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 3)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v10 = *(type metadata accessor for _ProtoFactItem_HeroNumber(0) + 20);
  if (qword_28036C4A8 != -1)
  {
    OUTLINED_FUNCTION_85_6();
  }

  *(v0 + v10) = qword_280371B28;
}

void _ProtoResponse.Component.factItemHeroNumber.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  v7 = type metadata accessor for _ProtoFactItem_HeroNumber(v6);
  OUTLINED_FUNCTION_7_28(v7);
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_26_22(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_10_46(v12);
  OUTLINED_FUNCTION_0_67();
  if (v13)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 3)
    {
      OUTLINED_FUNCTION_157();
      sub_26A34552C();
      goto LABEL_10;
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v15 = *(v0 + 20);
  if (qword_28036C4A8 != -1)
  {
    OUTLINED_FUNCTION_85_6();
  }

  *(v9 + v15) = qword_280371B28;

LABEL_10:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.summaryItemStandard.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v7)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 4)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v10 = *(type metadata accessor for _ProtoSummaryItem_Standard(0) + 20);
  if (qword_28036C080 != -1)
  {
    OUTLINED_FUNCTION_84_7();
  }

  *(v0 + v10) = qword_28036E740;
}

void _ProtoResponse.Component.summaryItemStandard.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  v7 = type metadata accessor for _ProtoSummaryItem_Standard(v6);
  OUTLINED_FUNCTION_7_28(v7);
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_26_22(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_10_46(v12);
  OUTLINED_FUNCTION_0_67();
  if (v13)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 4)
    {
      OUTLINED_FUNCTION_157();
      sub_26A34552C();
      goto LABEL_10;
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v15 = *(v0 + 20);
  if (qword_28036C080 != -1)
  {
    OUTLINED_FUNCTION_84_7();
  }

  *(v9 + v15) = qword_28036E740;

LABEL_10:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.summaryItemShortNumber.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v7)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 5)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v10 = *(type metadata accessor for _ProtoSummaryItem_ShortNumber(0) + 20);
  if (qword_28036C090 != -1)
  {
    OUTLINED_FUNCTION_83_8();
  }

  *(v0 + v10) = qword_28036E760;
}

void _ProtoResponse.Component.summaryItemShortNumber.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  v7 = type metadata accessor for _ProtoSummaryItem_ShortNumber(v6);
  OUTLINED_FUNCTION_7_28(v7);
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_26_22(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_10_46(v12);
  OUTLINED_FUNCTION_0_67();
  if (v13)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 5)
    {
      OUTLINED_FUNCTION_157();
      sub_26A34552C();
      goto LABEL_10;
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v15 = *(v0 + 20);
  if (qword_28036C090 != -1)
  {
    OUTLINED_FUNCTION_83_8();
  }

  *(v9 + v15) = qword_28036E760;

LABEL_10:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.summaryItemText.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v7)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 6)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v10 = *(type metadata accessor for _ProtoSummaryItem_Text(0) + 20);
  if (qword_28036C0A0 != -1)
  {
    OUTLINED_FUNCTION_82_9();
  }

  *(v0 + v10) = qword_28036E780;
}

void _ProtoResponse.Component.summaryItemText.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  v7 = type metadata accessor for _ProtoSummaryItem_Text(v6);
  OUTLINED_FUNCTION_7_28(v7);
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_26_22(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_10_46(v12);
  OUTLINED_FUNCTION_0_67();
  if (v13)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 6)
    {
      OUTLINED_FUNCTION_157();
      sub_26A34552C();
      goto LABEL_10;
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v15 = *(v0 + 20);
  if (qword_28036C0A0 != -1)
  {
    OUTLINED_FUNCTION_82_9();
  }

  *(v9 + v15) = qword_28036E780;

LABEL_10:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.summaryItemLargeText.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v7)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 7)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v10 = *(type metadata accessor for _ProtoSummaryItem_LargeText(0) + 20);
  if (qword_28036C0B0 != -1)
  {
    OUTLINED_FUNCTION_81_7();
  }

  *(v0 + v10) = qword_28036E7A0;
}

void _ProtoResponse.Component.summaryItemLargeText.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  v7 = type metadata accessor for _ProtoSummaryItem_LargeText(v6);
  OUTLINED_FUNCTION_7_28(v7);
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_26_22(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_10_46(v12);
  OUTLINED_FUNCTION_0_67();
  if (v13)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 7)
    {
      OUTLINED_FUNCTION_157();
      sub_26A34552C();
      goto LABEL_10;
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v15 = *(v0 + 20);
  if (qword_28036C0B0 != -1)
  {
    OUTLINED_FUNCTION_81_7();
  }

  *(v9 + v15) = qword_28036E7A0;

LABEL_10:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.summaryItemDetailedText.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v7)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 8)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v10 = *(type metadata accessor for _ProtoSummaryItem_DetailedText(0) + 20);
  if (qword_28036C0C0 != -1)
  {
    OUTLINED_FUNCTION_80_7();
  }

  *(v0 + v10) = qword_28036E7C0;
}

void _ProtoResponse.Component.summaryItemDetailedText.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  v7 = type metadata accessor for _ProtoSummaryItem_DetailedText(v6);
  OUTLINED_FUNCTION_7_28(v7);
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_26_22(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_10_46(v12);
  OUTLINED_FUNCTION_0_67();
  if (v13)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 8)
    {
      OUTLINED_FUNCTION_157();
      sub_26A34552C();
      goto LABEL_10;
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v15 = *(v0 + 20);
  if (qword_28036C0C0 != -1)
  {
    OUTLINED_FUNCTION_80_7();
  }

  *(v9 + v15) = qword_28036E7C0;

LABEL_10:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.simpleItemStandard.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v7)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 9)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v10 = *(type metadata accessor for _ProtoSimpleItem_Standard(0) + 20);
  if (qword_28036C3C8 != -1)
  {
    OUTLINED_FUNCTION_79_8();
  }

  *(v0 + v10) = qword_280370C00;
}

void _ProtoResponse.Component.simpleItemStandard.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  v7 = type metadata accessor for _ProtoSimpleItem_Standard(v6);
  OUTLINED_FUNCTION_7_28(v7);
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_26_22(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_10_46(v12);
  OUTLINED_FUNCTION_0_67();
  if (v13)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 9)
    {
      OUTLINED_FUNCTION_157();
      sub_26A34552C();
      goto LABEL_10;
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v15 = *(v0 + 20);
  if (qword_28036C3C8 != -1)
  {
    OUTLINED_FUNCTION_79_8();
  }

  *(v9 + v15) = qword_280370C00;

LABEL_10:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.simpleItemRich.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v7)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 10)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v10 = *(type metadata accessor for _ProtoSimpleItem_Rich(0) + 20);
  if (qword_28036C3D8 != -1)
  {
    OUTLINED_FUNCTION_78_8();
  }

  *(v0 + v10) = qword_280370C20;
}

void _ProtoResponse.Component.simpleItemRich.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  v7 = type metadata accessor for _ProtoSimpleItem_Rich(v6);
  OUTLINED_FUNCTION_7_28(v7);
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_26_22(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_10_46(v12);
  OUTLINED_FUNCTION_0_67();
  if (v13)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 10)
    {
      OUTLINED_FUNCTION_157();
      sub_26A34552C();
      goto LABEL_10;
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v15 = *(v0 + 20);
  if (qword_28036C3D8 != -1)
  {
    OUTLINED_FUNCTION_78_8();
  }

  *(v9 + v15) = qword_280370C20;

LABEL_10:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.simpleItemVisual.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v7)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 11)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  *v0 = MEMORY[0x277D84F90];
  v0[1] = 0;
  v0[2] = 0xE000000000000000;
  v0[3] = 0;
  v0[4] = 0xE000000000000000;
  v10 = type metadata accessor for _ProtoSimpleItem_Visual(0);
  v11 = v0 + v10[7];
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v12 = v10[8];
  v13 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_26_29(v13);
  v14 = v10[9];
  type metadata accessor for _ProtoTextProperty(0);
  v15 = OUTLINED_FUNCTION_12_29();
  return __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
}

void _ProtoResponse.Component.simpleItemVisual.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  v7 = type metadata accessor for _ProtoSimpleItem_Visual(v6);
  OUTLINED_FUNCTION_7_28(v7);
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_26_22(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_10_46(v12);
  OUTLINED_FUNCTION_0_67();
  if (v13)
  {
    sub_26A13440C();
LABEL_7:
    *v9 = MEMORY[0x277D84F90];
    v9[1] = 0;
    v9[2] = 0xE000000000000000;
    v9[3] = 0;
    v9[4] = 0xE000000000000000;
    v15 = v9 + v0[7];
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v16 = v0[8];
    v17 = type metadata accessor for _ProtoActionProperty();
    OUTLINED_FUNCTION_27_21(v17);
    v18 = v0[9];
    v19 = type metadata accessor for _ProtoTextProperty(0);
    OUTLINED_FUNCTION_19_17(v19);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_12_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 11)
  {
    sub_26A3761EC();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_157();
  sub_26A34552C();
LABEL_8:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.primaryHeaderStandard.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v7)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 12)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v10 = *(type metadata accessor for _ProtoPrimaryHeader_Standard(0) + 20);
  if (qword_28036C768 != -1)
  {
    OUTLINED_FUNCTION_77_7();
  }

  *(v0 + v10) = qword_280373AC8;
}

void _ProtoResponse.Component.primaryHeaderStandard.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  v7 = type metadata accessor for _ProtoPrimaryHeader_Standard(v6);
  OUTLINED_FUNCTION_7_28(v7);
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_26_22(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_10_46(v12);
  OUTLINED_FUNCTION_0_67();
  if (v13)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 12)
    {
      OUTLINED_FUNCTION_157();
      sub_26A34552C();
      goto LABEL_10;
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v15 = *(v0 + 20);
  if (qword_28036C768 != -1)
  {
    OUTLINED_FUNCTION_77_7();
  }

  *(v9 + v15) = qword_280373AC8;

LABEL_10:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.primaryHeaderMarquee.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v7)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 13)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v10 = *(type metadata accessor for _ProtoPrimaryHeader_Marquee(0) + 20);
  if (qword_28036C778 != -1)
  {
    OUTLINED_FUNCTION_76_9();
  }

  *(v0 + v10) = qword_280373AE8;
}

void _ProtoResponse.Component.primaryHeaderMarquee.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  v7 = type metadata accessor for _ProtoPrimaryHeader_Marquee(v6);
  OUTLINED_FUNCTION_7_28(v7);
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_26_22(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_10_46(v12);
  OUTLINED_FUNCTION_0_67();
  if (v13)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 13)
    {
      OUTLINED_FUNCTION_157();
      sub_26A34552C();
      goto LABEL_10;
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v15 = *(v0 + 20);
  if (qword_28036C778 != -1)
  {
    OUTLINED_FUNCTION_76_9();
  }

  *(v9 + v15) = qword_280373AE8;

LABEL_10:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.primaryHeaderRich.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v7)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 14)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v10 = *(type metadata accessor for _ProtoPrimaryHeader_Rich(0) + 20);
  if (qword_28036C788 != -1)
  {
    OUTLINED_FUNCTION_75_10();
  }

  *(v0 + v10) = qword_280373B08;
}

void _ProtoResponse.Component.primaryHeaderRich.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  v7 = type metadata accessor for _ProtoPrimaryHeader_Rich(v6);
  OUTLINED_FUNCTION_7_28(v7);
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_26_22(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_10_46(v12);
  OUTLINED_FUNCTION_0_67();
  if (v13)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 14)
    {
      OUTLINED_FUNCTION_157();
      sub_26A34552C();
      goto LABEL_10;
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v15 = *(v0 + 20);
  if (qword_28036C788 != -1)
  {
    OUTLINED_FUNCTION_75_10();
  }

  *(v9 + v15) = qword_280373B08;

LABEL_10:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.secondaryHeaderStandard.getter()
{
  OUTLINED_FUNCTION_25_21();
  v0 = OUTLINED_FUNCTION_12_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v6)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 15)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  v9 = OUTLINED_FUNCTION_25_25();
  v10 = type metadata accessor for _ProtoSecondaryHeader_Standard(v9);
  OUTLINED_FUNCTION_23_21(v10);
  v11 = OUTLINED_FUNCTION_68_9();
  v12 = type metadata accessor for _ProtoTextProperty(v11);
  OUTLINED_FUNCTION_22_22(v12);
  v13 = OUTLINED_FUNCTION_12_29();
  return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
}

void _ProtoResponse.Component.secondaryHeaderStandard.modify()
{
  OUTLINED_FUNCTION_69_1();
  v0 = OUTLINED_FUNCTION_17_1();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_16_2(v1);
  v2 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v5 = OUTLINED_FUNCTION_15_3(v4);
  v6 = type metadata accessor for _ProtoSecondaryHeader_Standard(v5);
  OUTLINED_FUNCTION_7_28(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_26_22(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_10_46(v10);
  OUTLINED_FUNCTION_0_67();
  if (v11)
  {
    sub_26A13440C();
LABEL_7:
    OUTLINED_FUNCTION_32_17();
    v13 = OUTLINED_FUNCTION_67_8();
    v14 = type metadata accessor for _ProtoTextProperty(v13);
    v15 = OUTLINED_FUNCTION_23_31(v14);
    OUTLINED_FUNCTION_19_17(v15);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_12_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 15)
  {
    sub_26A3761EC();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_157();
  sub_26A34552C();
LABEL_8:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.button.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v7)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 16)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v10 = *(type metadata accessor for _ProtoButton(0) + 20);
  if (qword_28036C428 != -1)
  {
    OUTLINED_FUNCTION_60_4();
  }

  *(v0 + v10) = qword_280371710;
}

void _ProtoResponse.Component.button.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  v7 = type metadata accessor for _ProtoButton(v6);
  OUTLINED_FUNCTION_7_28(v7);
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_26_22(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_10_46(v12);
  OUTLINED_FUNCTION_0_67();
  if (v13)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 16)
    {
      OUTLINED_FUNCTION_157();
      sub_26A34552C();
      goto LABEL_10;
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v15 = *(v0 + 20);
  if (qword_28036C428 != -1)
  {
    OUTLINED_FUNCTION_60_4();
  }

  *(v9 + v15) = qword_280371710;

LABEL_10:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.binaryButton.getter()
{
  OUTLINED_FUNCTION_25_21();
  v2 = OUTLINED_FUNCTION_12_2();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_41(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v8)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 17)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  OUTLINED_FUNCTION_61_11();
  *(v0 + 16) = 0;
  *(v0 + 24) = v11;
  v12 = type metadata accessor for _ProtoBinaryButton(0);
  OUTLINED_FUNCTION_144_5(v12);
  v13 = *(v1 + 28);
  v14 = type metadata accessor for _ProtoButton(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v14);
  v18 = *(v1 + 32);
  OUTLINED_FUNCTION_92();
  return __swift_storeEnumTagSinglePayload(v19, v20, v21, v14);
}

void _ProtoResponse.Component.binaryButton.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  v7 = type metadata accessor for _ProtoBinaryButton(v6);
  OUTLINED_FUNCTION_7_28(v7);
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_26_22(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_10_46(v12);
  OUTLINED_FUNCTION_0_67();
  if (v13)
  {
    sub_26A13440C();
LABEL_7:
    OUTLINED_FUNCTION_60_12();
    *(v9 + 16) = 0;
    *(v9 + 24) = v15;
    v16 = v9 + v0[6];
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v17 = v0[7];
    v18 = type metadata accessor for _ProtoButton(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v18);
    v22 = v0[8];
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v18);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_12_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 17)
  {
    sub_26A3761EC();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_157();
  sub_26A34552C();
LABEL_8:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.statusIndicatorSuccess.getter()
{
  OUTLINED_FUNCTION_25_21();
  v0 = OUTLINED_FUNCTION_12_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v6)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 18)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  v9 = OUTLINED_FUNCTION_25_25();
  v10 = type metadata accessor for _ProtoStatusIndicator_Success(v9);
  OUTLINED_FUNCTION_23_21(v10);
  v11 = OUTLINED_FUNCTION_68_9();
  v12 = type metadata accessor for _ProtoTextProperty(v11);
  OUTLINED_FUNCTION_26_29(v12);
  v13 = OUTLINED_FUNCTION_132_3();
  v14 = type metadata accessor for _ProtoOptionalBool(v13);
  OUTLINED_FUNCTION_26_29(v14);
  OUTLINED_FUNCTION_123_5();
  type metadata accessor for _ProtoActionProperty();
  v15 = OUTLINED_FUNCTION_12_29();
  return __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
}

void _ProtoResponse.Component.statusIndicatorSuccess.modify()
{
  OUTLINED_FUNCTION_69_1();
  v0 = OUTLINED_FUNCTION_17_1();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_16_2(v1);
  v2 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v5 = OUTLINED_FUNCTION_15_3(v4);
  v6 = type metadata accessor for _ProtoStatusIndicator_Success(v5);
  OUTLINED_FUNCTION_7_28(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_26_22(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_10_46(v10);
  OUTLINED_FUNCTION_0_67();
  if (v11)
  {
    sub_26A13440C();
LABEL_7:
    OUTLINED_FUNCTION_32_17();
    v13 = OUTLINED_FUNCTION_67_8();
    v14 = type metadata accessor for _ProtoTextProperty(v13);
    OUTLINED_FUNCTION_27_21(v14);
    v15 = OUTLINED_FUNCTION_131_4();
    v16 = type metadata accessor for _ProtoOptionalBool(v15);
    OUTLINED_FUNCTION_27_21(v16);
    OUTLINED_FUNCTION_122_4();
    v17 = type metadata accessor for _ProtoActionProperty();
    OUTLINED_FUNCTION_19_17(v17);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_12_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 18)
  {
    sub_26A3761EC();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_157();
  sub_26A34552C();
LABEL_8:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.statusIndicatorError.getter()
{
  OUTLINED_FUNCTION_25_21();
  v0 = OUTLINED_FUNCTION_12_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v6)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 19)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  v9 = OUTLINED_FUNCTION_25_25();
  v10 = type metadata accessor for _ProtoStatusIndicator_Error(v9);
  OUTLINED_FUNCTION_23_21(v10);
  v11 = OUTLINED_FUNCTION_68_9();
  v12 = type metadata accessor for _ProtoTextProperty(v11);
  OUTLINED_FUNCTION_26_29(v12);
  v13 = OUTLINED_FUNCTION_132_3();
  v14 = type metadata accessor for _ProtoOptionalBool(v13);
  OUTLINED_FUNCTION_26_29(v14);
  OUTLINED_FUNCTION_123_5();
  type metadata accessor for _ProtoActionProperty();
  v15 = OUTLINED_FUNCTION_12_29();
  return __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
}

void _ProtoResponse.Component.statusIndicatorError.modify()
{
  OUTLINED_FUNCTION_69_1();
  v0 = OUTLINED_FUNCTION_17_1();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_16_2(v1);
  v2 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v5 = OUTLINED_FUNCTION_15_3(v4);
  v6 = type metadata accessor for _ProtoStatusIndicator_Error(v5);
  OUTLINED_FUNCTION_7_28(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_26_22(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_10_46(v10);
  OUTLINED_FUNCTION_0_67();
  if (v11)
  {
    sub_26A13440C();
LABEL_7:
    OUTLINED_FUNCTION_32_17();
    v13 = OUTLINED_FUNCTION_67_8();
    v14 = type metadata accessor for _ProtoTextProperty(v13);
    OUTLINED_FUNCTION_27_21(v14);
    v15 = OUTLINED_FUNCTION_131_4();
    v16 = type metadata accessor for _ProtoOptionalBool(v15);
    OUTLINED_FUNCTION_27_21(v16);
    OUTLINED_FUNCTION_122_4();
    v17 = type metadata accessor for _ProtoActionProperty();
    OUTLINED_FUNCTION_19_17(v17);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_12_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 19)
  {
    sub_26A3761EC();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_157();
  sub_26A34552C();
LABEL_8:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.statusIndicatorInProgress.getter()
{
  OUTLINED_FUNCTION_25_21();
  v0 = OUTLINED_FUNCTION_12_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v6)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 20)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  v9 = OUTLINED_FUNCTION_25_25();
  v10 = type metadata accessor for _ProtoStatusIndicator_InProgress(v9);
  OUTLINED_FUNCTION_23_21(v10);
  v11 = OUTLINED_FUNCTION_68_9();
  v12 = type metadata accessor for _ProtoTextProperty(v11);
  OUTLINED_FUNCTION_26_29(v12);
  v13 = OUTLINED_FUNCTION_132_3();
  v14 = type metadata accessor for _ProtoOptionalBool(v13);
  OUTLINED_FUNCTION_26_29(v14);
  OUTLINED_FUNCTION_123_5();
  type metadata accessor for _ProtoActionProperty();
  v15 = OUTLINED_FUNCTION_12_29();
  return __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
}

void _ProtoResponse.Component.statusIndicatorInProgress.modify()
{
  OUTLINED_FUNCTION_69_1();
  v0 = OUTLINED_FUNCTION_17_1();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_16_2(v1);
  v2 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v5 = OUTLINED_FUNCTION_15_3(v4);
  v6 = type metadata accessor for _ProtoStatusIndicator_InProgress(v5);
  OUTLINED_FUNCTION_7_28(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_26_22(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_10_46(v10);
  OUTLINED_FUNCTION_0_67();
  if (v11)
  {
    sub_26A13440C();
LABEL_7:
    OUTLINED_FUNCTION_32_17();
    v13 = OUTLINED_FUNCTION_67_8();
    v14 = type metadata accessor for _ProtoTextProperty(v13);
    OUTLINED_FUNCTION_27_21(v14);
    v15 = OUTLINED_FUNCTION_131_4();
    v16 = type metadata accessor for _ProtoOptionalBool(v15);
    OUTLINED_FUNCTION_27_21(v16);
    OUTLINED_FUNCTION_122_4();
    v17 = type metadata accessor for _ProtoActionProperty();
    OUTLINED_FUNCTION_19_17(v17);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_12_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 20)
  {
    sub_26A3761EC();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_157();
  sub_26A34552C();
LABEL_8:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.statusIndicatorCancelled.getter()
{
  OUTLINED_FUNCTION_25_21();
  v0 = OUTLINED_FUNCTION_12_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v6)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 21)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  v9 = OUTLINED_FUNCTION_25_25();
  v10 = type metadata accessor for _ProtoStatusIndicator_Cancelled(v9);
  OUTLINED_FUNCTION_23_21(v10);
  v11 = OUTLINED_FUNCTION_68_9();
  v12 = type metadata accessor for _ProtoTextProperty(v11);
  OUTLINED_FUNCTION_26_29(v12);
  v13 = OUTLINED_FUNCTION_132_3();
  v14 = type metadata accessor for _ProtoOptionalBool(v13);
  OUTLINED_FUNCTION_26_29(v14);
  OUTLINED_FUNCTION_123_5();
  type metadata accessor for _ProtoActionProperty();
  v15 = OUTLINED_FUNCTION_12_29();
  return __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
}

void _ProtoResponse.Component.statusIndicatorCancelled.modify()
{
  OUTLINED_FUNCTION_69_1();
  v0 = OUTLINED_FUNCTION_17_1();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_16_2(v1);
  v2 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v5 = OUTLINED_FUNCTION_15_3(v4);
  v6 = type metadata accessor for _ProtoStatusIndicator_Cancelled(v5);
  OUTLINED_FUNCTION_7_28(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_26_22(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_10_46(v10);
  OUTLINED_FUNCTION_0_67();
  if (v11)
  {
    sub_26A13440C();
LABEL_7:
    OUTLINED_FUNCTION_32_17();
    v13 = OUTLINED_FUNCTION_67_8();
    v14 = type metadata accessor for _ProtoTextProperty(v13);
    OUTLINED_FUNCTION_27_21(v14);
    v15 = OUTLINED_FUNCTION_131_4();
    v16 = type metadata accessor for _ProtoOptionalBool(v15);
    OUTLINED_FUNCTION_27_21(v16);
    OUTLINED_FUNCTION_122_4();
    v17 = type metadata accessor for _ProtoActionProperty();
    OUTLINED_FUNCTION_19_17(v17);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_12_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 21)
  {
    sub_26A3761EC();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_157();
  sub_26A34552C();
LABEL_8:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.textInput.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v7)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 22)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  return _ProtoTextInput.init()(v0);
}

void _ProtoResponse.Component.textInput.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  OUTLINED_FUNCTION_15_3(v5);
  v6 = type metadata accessor for _ProtoTextInput();
  OUTLINED_FUNCTION_7_28(v6);
  v8 = *(v7 + 64);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_26_22(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_10_46(v11);
  OUTLINED_FUNCTION_0_67();
  if (v12)
  {
    sub_26A13440C();
LABEL_7:
    OUTLINED_FUNCTION_60_12();
    *(v8 + 16) = 0;
    *(v8 + 24) = v14;
    *(v8 + 32) = 0;
    *(v8 + 40) = v14;
    *(v8 + 48) = 0;
    *(v8 + 56) = 1;
    *(v8 + 64) = xmmword_26A426400;
    *(v8 + 80) = 0;
    *(v8 + 88) = v14;
    *(v8 + 96) = 0;
    v15 = v8 + *(v0 + 44);
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v16 = *(v0 + 48);
    v17 = type metadata accessor for _ProtoTextProperty(0);
    OUTLINED_FUNCTION_19_17(v17);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_12_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 22)
  {
    sub_26A3761EC();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_157();
  sub_26A34552C();
LABEL_8:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.controlSwitch.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v7)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 23)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v10 = *(type metadata accessor for _ProtoControl_Switch(0) + 20);
  if (qword_28036C1E0 != -1)
  {
    OUTLINED_FUNCTION_113_3();
  }

  *(v0 + v10) = qword_28036F2B0;
}

void _ProtoResponse.Component.controlSwitch.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  v7 = type metadata accessor for _ProtoControl_Switch(v6);
  OUTLINED_FUNCTION_7_28(v7);
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_26_22(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_10_46(v12);
  OUTLINED_FUNCTION_0_67();
  if (v13)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 23)
    {
      OUTLINED_FUNCTION_157();
      sub_26A34552C();
      goto LABEL_10;
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v15 = *(v0 + 20);
  if (qword_28036C1E0 != -1)
  {
    OUTLINED_FUNCTION_113_3();
  }

  *(v9 + v15) = qword_28036F2B0;

LABEL_10:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.controlSlider.getter()
{
  OUTLINED_FUNCTION_25_21();
  v0 = OUTLINED_FUNCTION_12_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v6)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 24)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  v9 = OUTLINED_FUNCTION_25_25();
  v10 = type metadata accessor for _ProtoControl_Slider(v9);
  OUTLINED_FUNCTION_23_21(v10);
  v11 = OUTLINED_FUNCTION_68_9();
  v12 = type metadata accessor for _ProtoSlider(v11);
  OUTLINED_FUNCTION_26_29(v12);
  v13 = OUTLINED_FUNCTION_132_3();
  v14 = type metadata accessor for _ProtoTextProperty(v13);
  OUTLINED_FUNCTION_26_29(v14);
  OUTLINED_FUNCTION_123_5();
  type metadata accessor for _ProtoActionProperty();
  v15 = OUTLINED_FUNCTION_12_29();
  return __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
}

void _ProtoResponse.Component.controlSlider.modify()
{
  OUTLINED_FUNCTION_69_1();
  v0 = OUTLINED_FUNCTION_17_1();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_16_2(v1);
  v2 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v5 = OUTLINED_FUNCTION_15_3(v4);
  v6 = type metadata accessor for _ProtoControl_Slider(v5);
  OUTLINED_FUNCTION_7_28(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_26_22(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_10_46(v10);
  OUTLINED_FUNCTION_0_67();
  if (v11)
  {
    sub_26A13440C();
LABEL_7:
    OUTLINED_FUNCTION_32_17();
    v13 = OUTLINED_FUNCTION_67_8();
    v14 = type metadata accessor for _ProtoSlider(v13);
    OUTLINED_FUNCTION_27_21(v14);
    v15 = OUTLINED_FUNCTION_131_4();
    v16 = type metadata accessor for _ProtoTextProperty(v15);
    OUTLINED_FUNCTION_27_21(v16);
    OUTLINED_FUNCTION_122_4();
    v17 = type metadata accessor for _ProtoActionProperty();
    OUTLINED_FUNCTION_19_17(v17);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_12_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 24)
  {
    sub_26A3761EC();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_157();
  sub_26A34552C();
LABEL_8:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.controlPlayerButton.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v7)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 25)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v10 = *(type metadata accessor for _ProtoControl_PlayerButton(0) + 20);
  if (qword_28036C1F8 != -1)
  {
    OUTLINED_FUNCTION_111_4();
  }

  *(v0 + v10) = qword_28036F2E8;
}

void _ProtoResponse.Component.controlPlayerButton.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  v7 = type metadata accessor for _ProtoControl_PlayerButton(v6);
  OUTLINED_FUNCTION_7_28(v7);
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_26_22(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_10_46(v12);
  OUTLINED_FUNCTION_0_67();
  if (v13)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 25)
    {
      OUTLINED_FUNCTION_157();
      sub_26A34552C();
      goto LABEL_10;
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v15 = *(v0 + 20);
  if (qword_28036C1F8 != -1)
  {
    OUTLINED_FUNCTION_111_4();
  }

  *(v9 + v15) = qword_28036F2E8;

LABEL_10:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.groupID.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_41(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_62_3();
  OUTLINED_FUNCTION_246();
  sub_26A10FD9C();
  v5 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  OUTLINED_FUNCTION_37(v0, 1, v5);
  if (v6)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_175();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 26)
    {
      result = *v0;
      v9 = v0[1];
      return result;
    }

    sub_26A3761EC();
  }

  return 0;
}

uint64_t sub_26A34B4EC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoResponse.Component.groupID.setter();
}

uint64_t _ProtoResponse.Component.groupID.setter()
{
  OUTLINED_FUNCTION_60_5();
  sub_26A13440C();
  *v1 = v2;
  v1[1] = v0;
  v3 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  OUTLINED_FUNCTION_246();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_126_0();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v3);
}

void (*_ProtoResponse.Component.groupID.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v4;
  v4[2] = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v4[3] = v7;
  OUTLINED_FUNCTION_125();
  sub_26A10FD9C();
  v8 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  v4[4] = v8;
  OUTLINED_FUNCTION_37(v7, 1, v8);
  if (v9)
  {
    sub_26A13440C();
LABEL_7:
    v11 = 0;
    v12 = 0xE000000000000000;
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 26)
  {
    sub_26A3761EC();
    goto LABEL_7;
  }

  v11 = *v7;
  v12 = v7[1];
LABEL_8:
  *v4 = v11;
  v4[1] = v12;
  return sub_26A34B6D8;
}

void sub_26A34B6D8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  v7 = (*a1)[2];
  if (a2)
  {
    v8 = (*a1)[1];

    sub_26A13440C();
    *v7 = v4;
    v7[1] = v3;
    OUTLINED_FUNCTION_125();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v6);
    v12 = v2[1];
  }

  else
  {
    v13 = (*a1)[2];
    sub_26A13440C();
    *v7 = v4;
    v7[1] = v3;
    OUTLINED_FUNCTION_125();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v6);
  }

  free(v5);

  free(v2);
}

uint64_t _ProtoResponse.Component.referenceStandard.getter()
{
  OUTLINED_FUNCTION_25_21();
  v0 = OUTLINED_FUNCTION_12_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v6)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 27)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  v9 = OUTLINED_FUNCTION_25_25();
  v10 = type metadata accessor for _ProtoReference_Standard(v9);
  OUTLINED_FUNCTION_23_21(v10);
  v11 = OUTLINED_FUNCTION_68_9();
  v12 = type metadata accessor for _ProtoTextProperty(v11);
  OUTLINED_FUNCTION_22_22(v12);
  v13 = OUTLINED_FUNCTION_12_29();
  return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
}

void _ProtoResponse.Component.referenceStandard.modify()
{
  OUTLINED_FUNCTION_69_1();
  v0 = OUTLINED_FUNCTION_17_1();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_16_2(v1);
  v2 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v5 = OUTLINED_FUNCTION_15_3(v4);
  v6 = type metadata accessor for _ProtoReference_Standard(v5);
  OUTLINED_FUNCTION_7_28(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_26_22(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_10_46(v10);
  OUTLINED_FUNCTION_0_67();
  if (v11)
  {
    sub_26A13440C();
LABEL_7:
    OUTLINED_FUNCTION_32_17();
    v13 = OUTLINED_FUNCTION_67_8();
    v14 = type metadata accessor for _ProtoTextProperty(v13);
    v15 = OUTLINED_FUNCTION_23_31(v14);
    OUTLINED_FUNCTION_19_17(v15);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_12_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 27)
  {
    sub_26A3761EC();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_157();
  sub_26A34552C();
LABEL_8:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.referenceLogo.getter()
{
  OUTLINED_FUNCTION_25_21();
  v0 = OUTLINED_FUNCTION_12_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v6)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 28)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  v9 = OUTLINED_FUNCTION_25_25();
  v10 = type metadata accessor for _ProtoReference_Logo(v9);
  OUTLINED_FUNCTION_23_21(v10);
  OUTLINED_FUNCTION_68_9();
  v11 = type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_22_22(v11);
  v12 = OUTLINED_FUNCTION_12_29();
  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
}

void _ProtoResponse.Component.referenceLogo.modify()
{
  OUTLINED_FUNCTION_69_1();
  v0 = OUTLINED_FUNCTION_17_1();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_16_2(v1);
  v2 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v5 = OUTLINED_FUNCTION_15_3(v4);
  v6 = type metadata accessor for _ProtoReference_Logo(v5);
  OUTLINED_FUNCTION_7_28(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_26_22(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_10_46(v10);
  OUTLINED_FUNCTION_0_67();
  if (v11)
  {
    sub_26A13440C();
LABEL_7:
    OUTLINED_FUNCTION_32_17();
    OUTLINED_FUNCTION_67_8();
    v13 = type metadata accessor for _ProtoVisualProperty();
    v14 = OUTLINED_FUNCTION_23_31(v13);
    OUTLINED_FUNCTION_19_17(v14);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_12_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 28)
  {
    sub_26A3761EC();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_157();
  sub_26A34552C();
LABEL_8:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.referenceRich.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v7)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 29)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v10 = *(type metadata accessor for _ProtoReference_Rich(0) + 20);
  if (qword_28036C510 != -1)
  {
    OUTLINED_FUNCTION_108_6();
  }

  *(v0 + v10) = qword_280372270;
}

void _ProtoResponse.Component.referenceRich.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  v7 = type metadata accessor for _ProtoReference_Rich(v6);
  OUTLINED_FUNCTION_7_28(v7);
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_26_22(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_10_46(v12);
  OUTLINED_FUNCTION_0_67();
  if (v13)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 29)
    {
      OUTLINED_FUNCTION_157();
      sub_26A34552C();
      goto LABEL_10;
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v15 = *(v0 + 20);
  if (qword_28036C510 != -1)
  {
    OUTLINED_FUNCTION_108_6();
  }

  *(v9 + v15) = qword_280372270;

LABEL_10:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.referenceButton.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v7)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 30)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  OUTLINED_FUNCTION_61_11();
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  v10 = type metadata accessor for _ProtoReference_Button(0);
  OUTLINED_FUNCTION_144_5(v10);
  v11 = OUTLINED_FUNCTION_132_3();
  v12 = type metadata accessor for _ProtoTextProperty(v11);
  OUTLINED_FUNCTION_26_29(v12);
  OUTLINED_FUNCTION_123_5();
  type metadata accessor for _ProtoActionProperty();
  v13 = OUTLINED_FUNCTION_12_29();
  return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
}

void _ProtoResponse.Component.referenceButton.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  v7 = type metadata accessor for _ProtoReference_Button(v6);
  OUTLINED_FUNCTION_7_28(v7);
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_26_22(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_10_46(v12);
  OUTLINED_FUNCTION_0_67();
  if (v13)
  {
    sub_26A13440C();
LABEL_7:
    OUTLINED_FUNCTION_60_12();
    *(v9 + 16) = 0;
    *(v9 + 24) = 1;
    v15 = v9 + *(v0 + 24);
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v16 = OUTLINED_FUNCTION_131_4();
    v17 = type metadata accessor for _ProtoTextProperty(v16);
    OUTLINED_FUNCTION_27_21(v17);
    OUTLINED_FUNCTION_122_4();
    v18 = type metadata accessor for _ProtoActionProperty();
    OUTLINED_FUNCTION_19_17(v18);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_12_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 30)
  {
    sub_26A3761EC();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_157();
  sub_26A34552C();
LABEL_8:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.summaryItemPair.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v7)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 31)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v10 = *(type metadata accessor for _ProtoSummaryItem_Pair(0) + 20);
  if (qword_28036C0D0 != -1)
  {
    OUTLINED_FUNCTION_106_5();
  }

  *(v0 + v10) = qword_28036E7E0;
}

void _ProtoResponse.Component.summaryItemPair.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  v7 = type metadata accessor for _ProtoSummaryItem_Pair(v6);
  OUTLINED_FUNCTION_7_28(v7);
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_26_22(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_10_46(v12);
  OUTLINED_FUNCTION_0_67();
  if (v13)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 31)
    {
      OUTLINED_FUNCTION_157();
      sub_26A34552C();
      goto LABEL_10;
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v15 = *(v0 + 20);
  if (qword_28036C0D0 != -1)
  {
    OUTLINED_FUNCTION_106_5();
  }

  *(v9 + v15) = qword_28036E7E0;

LABEL_10:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.summaryItemPairV2.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v7)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 32)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v10 = *(type metadata accessor for _ProtoSummaryItem_PairV2(0) + 20);
  if (qword_28036C0E0 != -1)
  {
    OUTLINED_FUNCTION_105_3();
  }

  *(v0 + v10) = qword_28036E800;
}

void _ProtoResponse.Component.summaryItemPairV2.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  v7 = type metadata accessor for _ProtoSummaryItem_PairV2(v6);
  OUTLINED_FUNCTION_7_28(v7);
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_26_22(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_10_46(v12);
  OUTLINED_FUNCTION_0_67();
  if (v13)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 32)
    {
      OUTLINED_FUNCTION_157();
      sub_26A34552C();
      goto LABEL_10;
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v15 = *(v0 + 20);
  if (qword_28036C0E0 != -1)
  {
    OUTLINED_FUNCTION_105_3();
  }

  *(v9 + v15) = qword_28036E800;

LABEL_10:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.summaryItemPairNumber.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v7)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 33)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v10 = *(type metadata accessor for _ProtoSummaryItem_PairNumber(0) + 20);
  if (qword_28036C0F0 != -1)
  {
    OUTLINED_FUNCTION_104_4();
  }

  *(v0 + v10) = qword_28036E820;
}

void _ProtoResponse.Component.summaryItemPairNumber.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  v7 = type metadata accessor for _ProtoSummaryItem_PairNumber(v6);
  OUTLINED_FUNCTION_7_28(v7);
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_26_22(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_10_46(v12);
  OUTLINED_FUNCTION_0_67();
  if (v13)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 33)
    {
      OUTLINED_FUNCTION_157();
      sub_26A34552C();
      goto LABEL_10;
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v15 = *(v0 + 20);
  if (qword_28036C0F0 != -1)
  {
    OUTLINED_FUNCTION_104_4();
  }

  *(v9 + v15) = qword_28036E820;

LABEL_10:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.summaryItemPairNumberV2.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v7)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 34)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v10 = *(type metadata accessor for _ProtoSummaryItem_PairNumberV2(0) + 20);
  if (qword_28036C100 != -1)
  {
    OUTLINED_FUNCTION_103_4();
  }

  *(v0 + v10) = qword_28036E840;
}

void _ProtoResponse.Component.summaryItemPairNumberV2.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  v7 = type metadata accessor for _ProtoSummaryItem_PairNumberV2(v6);
  OUTLINED_FUNCTION_7_28(v7);
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_26_22(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_10_46(v12);
  OUTLINED_FUNCTION_0_67();
  if (v13)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 34)
    {
      OUTLINED_FUNCTION_157();
      sub_26A34552C();
      goto LABEL_10;
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v15 = *(v0 + 20);
  if (qword_28036C100 != -1)
  {
    OUTLINED_FUNCTION_103_4();
  }

  *(v9 + v15) = qword_28036E840;

LABEL_10:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.summaryItemButton.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v7)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 35)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v10 = *(type metadata accessor for _ProtoSummaryItem_Button(0) + 20);
  if (qword_28036C110 != -1)
  {
    OUTLINED_FUNCTION_102_5();
  }

  *(v0 + v10) = qword_28036E860;
}

void _ProtoResponse.Component.summaryItemButton.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  v7 = type metadata accessor for _ProtoSummaryItem_Button(v6);
  OUTLINED_FUNCTION_7_28(v7);
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_26_22(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_10_46(v12);
  OUTLINED_FUNCTION_0_67();
  if (v13)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 35)
    {
      OUTLINED_FUNCTION_157();
      sub_26A34552C();
      goto LABEL_10;
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v15 = *(v0 + 20);
  if (qword_28036C110 != -1)
  {
    OUTLINED_FUNCTION_102_5();
  }

  *(v9 + v15) = qword_28036E860;

LABEL_10:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.factItemButton.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v7)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 36)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v10 = *(type metadata accessor for _ProtoFactItem_Button(0) + 20);
  if (qword_28036C4B8 != -1)
  {
    OUTLINED_FUNCTION_101_6();
  }

  *(v0 + v10) = qword_280371B48;
}

void _ProtoResponse.Component.factItemButton.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  v7 = type metadata accessor for _ProtoFactItem_Button(v6);
  OUTLINED_FUNCTION_7_28(v7);
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_26_22(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_10_46(v12);
  OUTLINED_FUNCTION_0_67();
  if (v13)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 36)
    {
      OUTLINED_FUNCTION_157();
      sub_26A34552C();
      goto LABEL_10;
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v15 = *(v0 + 20);
  if (qword_28036C4B8 != -1)
  {
    OUTLINED_FUNCTION_101_6();
  }

  *(v9 + v15) = qword_280371B48;

LABEL_10:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.table.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v7)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 37)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  *v0 = 0;
  v10 = MEMORY[0x277D84F90];
  *(v0 + 8) = MEMORY[0x277D84F90];
  *(v0 + 16) = v10;
  v11 = v0 + *(type metadata accessor for _ProtoTable(0) + 28);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v12 = OUTLINED_FUNCTION_123_5();
  type metadata accessor for _ProtoTable.Header(v12);
  v13 = OUTLINED_FUNCTION_12_29();
  return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
}

void _ProtoResponse.Component.table.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  v7 = type metadata accessor for _ProtoTable(v6);
  OUTLINED_FUNCTION_7_28(v7);
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_26_22(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_10_46(v12);
  OUTLINED_FUNCTION_0_67();
  if (v13)
  {
    sub_26A13440C();
LABEL_7:
    *v9 = 0;
    v15 = MEMORY[0x277D84F90];
    *(v9 + 8) = MEMORY[0x277D84F90];
    *(v9 + 16) = v15;
    v16 = v9 + *(v0 + 28);
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v17 = OUTLINED_FUNCTION_122_4();
    v18 = type metadata accessor for _ProtoTable.Header(v17);
    OUTLINED_FUNCTION_19_17(v18);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_12_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 37)
  {
    sub_26A3761EC();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_157();
  sub_26A34552C();
LABEL_8:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.referenceFootnote.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v7)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 38)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v10 = *(type metadata accessor for _ProtoReference_Footnote(0) + 20);
  if (qword_28036C530 != -1)
  {
    OUTLINED_FUNCTION_100_5();
  }

  *(v0 + v10) = qword_2803722C0;
}

void _ProtoResponse.Component.referenceFootnote.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  v7 = type metadata accessor for _ProtoReference_Footnote(v6);
  OUTLINED_FUNCTION_7_28(v7);
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_26_22(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_10_46(v12);
  OUTLINED_FUNCTION_0_67();
  if (v13)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 38)
    {
      OUTLINED_FUNCTION_157();
      sub_26A34552C();
      goto LABEL_10;
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v15 = *(v0 + 20);
  if (qword_28036C530 != -1)
  {
    OUTLINED_FUNCTION_100_5();
  }

  *(v9 + v15) = qword_2803722C0;

LABEL_10:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.longItemText.getter()
{
  OUTLINED_FUNCTION_25_21();
  v0 = OUTLINED_FUNCTION_12_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v6)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 39)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  OUTLINED_FUNCTION_25_25();
  v9 = type metadata accessor for _ProtoLongItem_Text();
  OUTLINED_FUNCTION_23_21(v9);
  v10 = OUTLINED_FUNCTION_68_9();
  v11 = type metadata accessor for _ProtoTextProperty(v10);
  OUTLINED_FUNCTION_22_22(v11);
  v12 = OUTLINED_FUNCTION_12_29();
  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
}

void _ProtoResponse.Component.longItemText.modify()
{
  OUTLINED_FUNCTION_69_1();
  v0 = OUTLINED_FUNCTION_17_1();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_16_2(v1);
  v2 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  OUTLINED_FUNCTION_15_3(v4);
  v5 = type metadata accessor for _ProtoLongItem_Text();
  OUTLINED_FUNCTION_7_28(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_26_22(v7);
  v9 = __swift_coroFrameAllocStub(v8);
  OUTLINED_FUNCTION_10_46(v9);
  OUTLINED_FUNCTION_0_67();
  if (v10)
  {
    sub_26A13440C();
LABEL_7:
    OUTLINED_FUNCTION_32_17();
    v12 = OUTLINED_FUNCTION_67_8();
    v13 = type metadata accessor for _ProtoTextProperty(v12);
    v14 = OUTLINED_FUNCTION_23_31(v13);
    OUTLINED_FUNCTION_19_17(v14);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_12_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 39)
  {
    sub_26A3761EC();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_157();
  sub_26A34552C();
LABEL_8:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.visualizationChart.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v7)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 40)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v10 = *(type metadata accessor for _ProtoVisualization_Chart(0) + 20);
  if (qword_28036C560 != -1)
  {
    OUTLINED_FUNCTION_99_5();
  }

  *(v0 + v10) = qword_280372590;
}

void _ProtoResponse.Component.visualizationChart.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  v7 = type metadata accessor for _ProtoVisualization_Chart(v6);
  OUTLINED_FUNCTION_7_28(v7);
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_26_22(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_10_46(v12);
  OUTLINED_FUNCTION_0_67();
  if (v13)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 40)
    {
      OUTLINED_FUNCTION_157();
      sub_26A34552C();
      goto LABEL_10;
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v15 = *(v0 + 20);
  if (qword_28036C560 != -1)
  {
    OUTLINED_FUNCTION_99_5();
  }

  *(v9 + v15) = qword_280372590;

LABEL_10:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.summaryItemPlayer.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v7)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 41)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v10 = *(type metadata accessor for _ProtoSummaryItem_Player(0) + 20);
  if (qword_28036C120 != -1)
  {
    OUTLINED_FUNCTION_98_7();
  }

  *(v0 + v10) = qword_28036E880;
}

void _ProtoResponse.Component.summaryItemPlayer.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  v7 = type metadata accessor for _ProtoSummaryItem_Player(v6);
  OUTLINED_FUNCTION_7_28(v7);
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_26_22(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_10_46(v12);
  OUTLINED_FUNCTION_0_67();
  if (v13)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 41)
    {
      OUTLINED_FUNCTION_157();
      sub_26A34552C();
      goto LABEL_10;
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v15 = *(v0 + 20);
  if (qword_28036C120 != -1)
  {
    OUTLINED_FUNCTION_98_7();
  }

  *(v9 + v15) = qword_28036E880;

LABEL_10:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.simpleItemPlayer.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v7)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 42)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v10 = *(type metadata accessor for _ProtoSimpleItem_Player(0) + 20);
  if (qword_28036C400 != -1)
  {
    OUTLINED_FUNCTION_97_4();
  }

  *(v0 + v10) = qword_280370C78;
}

void _ProtoResponse.Component.simpleItemPlayer.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  v7 = type metadata accessor for _ProtoSimpleItem_Player(v6);
  OUTLINED_FUNCTION_7_28(v7);
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_26_22(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_10_46(v12);
  OUTLINED_FUNCTION_0_67();
  if (v13)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 42)
    {
      OUTLINED_FUNCTION_157();
      sub_26A34552C();
      goto LABEL_10;
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v15 = *(v0 + 20);
  if (qword_28036C400 != -1)
  {
    OUTLINED_FUNCTION_97_4();
  }

  *(v9 + v15) = qword_280370C78;

LABEL_10:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.simpleItemReverseRich.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v7)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 43)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v10 = *(type metadata accessor for _ProtoSimpleItem_ReverseRich(0) + 20);
  if (qword_28036C3E8 != -1)
  {
    OUTLINED_FUNCTION_96_5();
  }

  *(v0 + v10) = qword_280370C40;
}

void _ProtoResponse.Component.simpleItemReverseRich.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  v7 = type metadata accessor for _ProtoSimpleItem_ReverseRich(v6);
  OUTLINED_FUNCTION_7_28(v7);
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_26_22(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_10_46(v12);
  OUTLINED_FUNCTION_0_67();
  if (v13)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 43)
    {
      OUTLINED_FUNCTION_157();
      sub_26A34552C();
      goto LABEL_10;
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v15 = *(v0 + 20);
  if (qword_28036C3E8 != -1)
  {
    OUTLINED_FUNCTION_96_5();
  }

  *(v9 + v15) = qword_280370C40;

LABEL_10:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.secondaryHeaderEmphasized.getter()
{
  OUTLINED_FUNCTION_25_21();
  v0 = OUTLINED_FUNCTION_12_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v6)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 44)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  v9 = OUTLINED_FUNCTION_25_25();
  v10 = type metadata accessor for _ProtoSecondaryHeader_Emphasized(v9);
  OUTLINED_FUNCTION_23_21(v10);
  v11 = OUTLINED_FUNCTION_68_9();
  v12 = type metadata accessor for _ProtoTextProperty(v11);
  OUTLINED_FUNCTION_22_22(v12);
  v13 = OUTLINED_FUNCTION_12_29();
  return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
}

void _ProtoResponse.Component.secondaryHeaderEmphasized.modify()
{
  OUTLINED_FUNCTION_69_1();
  v0 = OUTLINED_FUNCTION_17_1();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_16_2(v1);
  v2 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v5 = OUTLINED_FUNCTION_15_3(v4);
  v6 = type metadata accessor for _ProtoSecondaryHeader_Emphasized(v5);
  OUTLINED_FUNCTION_7_28(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_26_22(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_10_46(v10);
  OUTLINED_FUNCTION_0_67();
  if (v11)
  {
    sub_26A13440C();
LABEL_7:
    OUTLINED_FUNCTION_32_17();
    v13 = OUTLINED_FUNCTION_67_8();
    v14 = type metadata accessor for _ProtoTextProperty(v13);
    v15 = OUTLINED_FUNCTION_23_31(v14);
    OUTLINED_FUNCTION_19_17(v15);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_12_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 44)
  {
    sub_26A3761EC();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_157();
  sub_26A34552C();
LABEL_8:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.summaryItemSwitch.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v7)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 45)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v10 = *(type metadata accessor for _ProtoSummaryItem_Switch(0) + 20);
  if (qword_28036C130 != -1)
  {
    OUTLINED_FUNCTION_95_7();
  }

  *(v0 + v10) = qword_28036E8A0;
}

void _ProtoResponse.Component.summaryItemSwitch.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  v7 = type metadata accessor for _ProtoSummaryItem_Switch(v6);
  OUTLINED_FUNCTION_7_28(v7);
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_26_22(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_10_46(v12);
  OUTLINED_FUNCTION_0_67();
  if (v13)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 45)
    {
      OUTLINED_FUNCTION_157();
      sub_26A34552C();
      goto LABEL_10;
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v15 = *(v0 + 20);
  if (qword_28036C130 != -1)
  {
    OUTLINED_FUNCTION_95_7();
  }

  *(v9 + v15) = qword_28036E8A0;

LABEL_10:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.systemTextClarificationTitle.getter()
{
  OUTLINED_FUNCTION_25_21();
  v0 = OUTLINED_FUNCTION_12_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v6)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 46)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  OUTLINED_FUNCTION_25_25();
  v9 = type metadata accessor for _ProtoSystemText_ClarificationTitle();
  OUTLINED_FUNCTION_23_21(v9);
  v10 = OUTLINED_FUNCTION_68_9();
  v11 = type metadata accessor for _ProtoTextProperty(v10);
  OUTLINED_FUNCTION_22_22(v11);
  v12 = OUTLINED_FUNCTION_12_29();
  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
}

void _ProtoResponse.Component.systemTextClarificationTitle.modify()
{
  OUTLINED_FUNCTION_69_1();
  v0 = OUTLINED_FUNCTION_17_1();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_16_2(v1);
  v2 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  OUTLINED_FUNCTION_15_3(v4);
  v5 = type metadata accessor for _ProtoSystemText_ClarificationTitle();
  OUTLINED_FUNCTION_7_28(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_26_22(v7);
  v9 = __swift_coroFrameAllocStub(v8);
  OUTLINED_FUNCTION_10_46(v9);
  OUTLINED_FUNCTION_0_67();
  if (v10)
  {
    sub_26A13440C();
LABEL_7:
    OUTLINED_FUNCTION_32_17();
    v12 = OUTLINED_FUNCTION_67_8();
    v13 = type metadata accessor for _ProtoTextProperty(v12);
    v14 = OUTLINED_FUNCTION_23_31(v13);
    OUTLINED_FUNCTION_19_17(v14);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_12_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 46)
  {
    sub_26A3761EC();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_157();
  sub_26A34552C();
LABEL_8:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.visualizationImage.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v7)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 47)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v10 = *(type metadata accessor for _ProtoVisualization_Image(0) + 20);
  if (qword_28036C570 != -1)
  {
    OUTLINED_FUNCTION_94_6();
  }

  *(v0 + v10) = qword_2803725B0;
}

void _ProtoResponse.Component.visualizationImage.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  v7 = type metadata accessor for _ProtoVisualization_Image(v6);
  OUTLINED_FUNCTION_7_28(v7);
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_26_22(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_10_46(v12);
  OUTLINED_FUNCTION_0_67();
  if (v13)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 47)
    {
      OUTLINED_FUNCTION_157();
      sub_26A34552C();
      goto LABEL_10;
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v15 = *(v0 + 20);
  if (qword_28036C570 != -1)
  {
    OUTLINED_FUNCTION_94_6();
  }

  *(v9 + v15) = qword_2803725B0;

LABEL_10:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.visualizationMap.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v7)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 48)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v10 = *(type metadata accessor for _ProtoVisualization_Map(0) + 20);
  if (qword_28036C580 != -1)
  {
    OUTLINED_FUNCTION_93_6();
  }

  *(v0 + v10) = qword_2803725D0;
}

void _ProtoResponse.Component.visualizationMap.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  v7 = type metadata accessor for _ProtoVisualization_Map(v6);
  OUTLINED_FUNCTION_7_28(v7);
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_26_22(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_10_46(v12);
  OUTLINED_FUNCTION_0_67();
  if (v13)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 48)
    {
      OUTLINED_FUNCTION_157();
      sub_26A34552C();
      goto LABEL_10;
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v15 = *(v0 + 20);
  if (qword_28036C580 != -1)
  {
    OUTLINED_FUNCTION_93_6();
  }

  *(v9 + v15) = qword_2803725D0;

LABEL_10:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.buttonContainer.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v7)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 49)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  *v0 = MEMORY[0x277D84F90];
  v10 = v0 + *(type metadata accessor for _ProtoButton_Container(0) + 20);
  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

void _ProtoResponse.Component.buttonContainer.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  v7 = type metadata accessor for _ProtoButton_Container(v6);
  OUTLINED_FUNCTION_7_28(v7);
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_26_22(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_10_46(v12);
  OUTLINED_FUNCTION_0_67();
  if (v13)
  {
    sub_26A13440C();
LABEL_7:
    *v9 = MEMORY[0x277D84F90];
    v15 = v9 + *(v0 + 20);
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_12_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 49)
  {
    sub_26A3761EC();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_157();
  sub_26A34552C();
LABEL_8:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.intentsUiStandard.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v7)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 50)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  OUTLINED_FUNCTION_137_4(MEMORY[0x277D84F90], xmmword_26A426400);
  v10 = *(v0 + 36);
  type metadata accessor for _ProtoActionProperty();
  v11 = OUTLINED_FUNCTION_12_29();
  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
}

uint64_t _ProtoIntentsUI_Standard.init()()
{
  OUTLINED_FUNCTION_137_4(MEMORY[0x277D84F90], xmmword_26A426400);
  v1 = *(v0 + 36);
  type metadata accessor for _ProtoActionProperty();
  v2 = OUTLINED_FUNCTION_12_29();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

void _ProtoResponse.Component.intentsUiStandard.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  v7 = type metadata accessor for _ProtoIntentsUI_Standard(v6);
  OUTLINED_FUNCTION_7_28(v7);
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_26_22(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_10_46(v12);
  OUTLINED_FUNCTION_0_67();
  if (v13)
  {
    sub_26A13440C();
LABEL_7:
    *v9 = xmmword_26A426400;
    *(v9 + 16) = MEMORY[0x277D84F90];
    *(v9 + 24) = 0;
    *(v9 + 32) = 0xE000000000000000;
    *(v9 + 40) = 0;
    v15 = v9 + *(v0 + 32);
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v16 = *(v0 + 36);
    v17 = type metadata accessor for _ProtoActionProperty();
    OUTLINED_FUNCTION_19_17(v17);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_12_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 50)
  {
    sub_26A3761EC();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_157();
  sub_26A34552C();
LABEL_8:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.sashStandard.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v7)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 51)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v10 = *(type metadata accessor for _ProtoSash_Standard(0) + 20);
  if (qword_28036C4D8 != -1)
  {
    OUTLINED_FUNCTION_92_6();
  }

  *(v0 + v10) = qword_280371E30;
}

void _ProtoResponse.Component.sashStandard.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  v7 = type metadata accessor for _ProtoSash_Standard(v6);
  OUTLINED_FUNCTION_7_28(v7);
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_26_22(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_10_46(v12);
  OUTLINED_FUNCTION_0_67();
  if (v13)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 51)
    {
      OUTLINED_FUNCTION_157();
      sub_26A34552C();
      goto LABEL_10;
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v15 = *(v0 + 20);
  if (qword_28036C4D8 != -1)
  {
    OUTLINED_FUNCTION_92_6();
  }

  *(v9 + v15) = qword_280371E30;

LABEL_10:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.heroHeader.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v7)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 52)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v10 = *(type metadata accessor for _ProtoHeroHeader(0) + 20);
  if (qword_28036C248 != -1)
  {
    OUTLINED_FUNCTION_91_6();
  }

  *(v0 + v10) = qword_28036F8B0;
}

void _ProtoResponse.Component.heroHeader.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  v7 = type metadata accessor for _ProtoHeroHeader(v6);
  OUTLINED_FUNCTION_7_28(v7);
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_26_22(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_10_46(v12);
  OUTLINED_FUNCTION_0_67();
  if (v13)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 52)
    {
      OUTLINED_FUNCTION_157();
      sub_26A34552C();
      goto LABEL_10;
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v15 = *(v0 + 20);
  if (qword_28036C248 != -1)
  {
    OUTLINED_FUNCTION_91_6();
  }

  *(v9 + v15) = qword_28036F8B0;

LABEL_10:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.horizontalListStandard.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v7)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 53)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  OUTLINED_FUNCTION_138_2(MEMORY[0x277D84F90]);
  v10 = type metadata accessor for _ProtoHorizontalList_Standard(0);
  OUTLINED_FUNCTION_144_5(v10);
  v11 = *(v0 + 28);
  type metadata accessor for _ProtoTextProperty(0);
  v12 = OUTLINED_FUNCTION_12_29();
  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
}

void _ProtoResponse.Component.horizontalListStandard.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  v7 = type metadata accessor for _ProtoHorizontalList_Standard(v6);
  OUTLINED_FUNCTION_7_28(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_26_22(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_10_46(v11);
  OUTLINED_FUNCTION_0_67();
  if (v12)
  {
    sub_26A13440C();
LABEL_7:
    OUTLINED_FUNCTION_141_3(MEMORY[0x277D84F90]);
    v14 = *(v0 + 28);
    v15 = type metadata accessor for _ProtoTextProperty(0);
    OUTLINED_FUNCTION_19_17(v15);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_12_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 53)
  {
    sub_26A3761EC();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_157();
  sub_26A34552C();
LABEL_8:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.sectionHeaderStandard.getter()
{
  OUTLINED_FUNCTION_25_21();
  v0 = OUTLINED_FUNCTION_12_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v6)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 54)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  v9 = OUTLINED_FUNCTION_25_25();
  v10 = type metadata accessor for _ProtoSectionHeader_Standard(v9);
  OUTLINED_FUNCTION_23_21(v10);
  v11 = OUTLINED_FUNCTION_68_9();
  v12 = type metadata accessor for _ProtoTextProperty(v11);
  OUTLINED_FUNCTION_22_22(v12);
  v13 = OUTLINED_FUNCTION_12_29();
  return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
}

uint64_t sub_26A350360()
{
  sub_26A13440C();
  OUTLINED_FUNCTION_157();
  sub_26A34552C();
  v0 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  OUTLINED_FUNCTION_21_3();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_126_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v0);
}

void _ProtoResponse.Component.sectionHeaderStandard.modify()
{
  OUTLINED_FUNCTION_69_1();
  v0 = OUTLINED_FUNCTION_17_1();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_16_2(v1);
  v2 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v5 = OUTLINED_FUNCTION_15_3(v4);
  v6 = type metadata accessor for _ProtoSectionHeader_Standard(v5);
  OUTLINED_FUNCTION_7_28(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_26_22(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_10_46(v10);
  OUTLINED_FUNCTION_0_67();
  if (v11)
  {
    sub_26A13440C();
LABEL_7:
    OUTLINED_FUNCTION_32_17();
    v13 = OUTLINED_FUNCTION_67_8();
    v14 = type metadata accessor for _ProtoTextProperty(v13);
    v15 = OUTLINED_FUNCTION_23_31(v14);
    OUTLINED_FUNCTION_19_17(v15);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_12_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 54)
  {
    sub_26A3761EC();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_157();
  sub_26A34552C();
LABEL_8:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.sectionHeaderRich.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v7)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 55)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v10 = *(type metadata accessor for _ProtoSectionHeader_Rich(0) + 20);
  if (qword_28036C000 != -1)
  {
    OUTLINED_FUNCTION_90_8();
  }

  *(v0 + v10) = qword_28036D0E0;
}

void _ProtoResponse.Component.sectionHeaderRich.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  v7 = type metadata accessor for _ProtoSectionHeader_Rich(v6);
  OUTLINED_FUNCTION_7_28(v7);
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_26_22(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_10_46(v12);
  OUTLINED_FUNCTION_0_67();
  if (v13)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 55)
    {
      OUTLINED_FUNCTION_157();
      sub_26A34552C();
      goto LABEL_10;
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v15 = *(v0 + 20);
  if (qword_28036C000 != -1)
  {
    OUTLINED_FUNCTION_90_8();
  }

  *(v9 + v15) = qword_28036D0E0;

LABEL_10:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.keyValueStandard.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v7)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 56)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  OUTLINED_FUNCTION_138_2(MEMORY[0x277D84F90]);
  v10 = v0 + *(type metadata accessor for _ProtoKeyValue_Standard(0) + 24);
  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

void _ProtoResponse.Component.keyValueStandard.modify()
{
  OUTLINED_FUNCTION_69_1();
  v0 = OUTLINED_FUNCTION_17_1();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_16_2(v1);
  v2 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v5 = OUTLINED_FUNCTION_15_3(v4);
  v6 = type metadata accessor for _ProtoKeyValue_Standard(v5);
  OUTLINED_FUNCTION_7_28(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_26_22(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_10_46(v10);
  OUTLINED_FUNCTION_0_67();
  if (v11)
  {
    sub_26A13440C();
LABEL_7:
    OUTLINED_FUNCTION_141_3(MEMORY[0x277D84F90]);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_12_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 56)
  {
    sub_26A3761EC();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_157();
  sub_26A34552C();
LABEL_8:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.tertiaryHeaderStandard.getter()
{
  OUTLINED_FUNCTION_25_21();
  v0 = OUTLINED_FUNCTION_12_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v6)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 57)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  OUTLINED_FUNCTION_25_25();
  v9 = type metadata accessor for _ProtoTertiaryHeader_Standard();
  OUTLINED_FUNCTION_23_21(v9);
  v10 = OUTLINED_FUNCTION_68_9();
  v11 = type metadata accessor for _ProtoTextProperty(v10);
  OUTLINED_FUNCTION_22_22(v11);
  v12 = OUTLINED_FUNCTION_12_29();
  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
}

void _ProtoResponse.Component.tertiaryHeaderStandard.modify()
{
  OUTLINED_FUNCTION_69_1();
  v0 = OUTLINED_FUNCTION_17_1();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_16_2(v1);
  v2 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  OUTLINED_FUNCTION_15_3(v4);
  v5 = type metadata accessor for _ProtoTertiaryHeader_Standard();
  OUTLINED_FUNCTION_7_28(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_26_22(v7);
  v9 = __swift_coroFrameAllocStub(v8);
  OUTLINED_FUNCTION_10_46(v9);
  OUTLINED_FUNCTION_0_67();
  if (v10)
  {
    sub_26A13440C();
LABEL_7:
    OUTLINED_FUNCTION_32_17();
    v12 = OUTLINED_FUNCTION_67_8();
    v13 = type metadata accessor for _ProtoTextProperty(v12);
    v14 = OUTLINED_FUNCTION_23_31(v13);
    OUTLINED_FUNCTION_19_17(v14);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_12_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 57)
  {
    sub_26A3761EC();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_157();
  sub_26A34552C();
LABEL_8:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.simpleItemRichSearchResult.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v7)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 58)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v10 = *(type metadata accessor for _ProtoSimpleItem_RichSearchResult(0) + 20);
  if (qword_28036C410 != -1)
  {
    OUTLINED_FUNCTION_89_6();
  }

  *(v0 + v10) = qword_280370C98;
}

void _ProtoResponse.Component.simpleItemRichSearchResult.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  v7 = type metadata accessor for _ProtoSimpleItem_RichSearchResult(v6);
  OUTLINED_FUNCTION_7_28(v7);
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_26_22(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_10_46(v12);
  OUTLINED_FUNCTION_0_67();
  if (v13)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 58)
    {
      OUTLINED_FUNCTION_157();
      sub_26A34552C();
      goto LABEL_10;
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v15 = *(v0 + 20);
  if (qword_28036C410 != -1)
  {
    OUTLINED_FUNCTION_89_6();
  }

  *(v9 + v15) = qword_280370C98;

LABEL_10:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.summaryItemSwitchV2.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v7)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 59)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v10 = *(type metadata accessor for _ProtoSummaryItem_SwitchV2(0) + 20);
  if (qword_28036C140 != -1)
  {
    OUTLINED_FUNCTION_88_9();
  }

  *(v0 + v10) = qword_28036E8C0;
}

void _ProtoResponse.Component.summaryItemSwitchV2.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  v7 = type metadata accessor for _ProtoSummaryItem_SwitchV2(v6);
  OUTLINED_FUNCTION_7_28(v7);
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_26_22(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_10_46(v12);
  OUTLINED_FUNCTION_0_67();
  if (v13)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 59)
    {
      OUTLINED_FUNCTION_157();
      sub_26A34552C();
      goto LABEL_10;
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v15 = *(v0 + 20);
  if (qword_28036C140 != -1)
  {
    OUTLINED_FUNCTION_88_9();
  }

  *(v9 + v15) = qword_28036E8C0;

LABEL_10:
  OUTLINED_FUNCTION_67_1();
}

void sub_26A3512D8()
{
  OUTLINED_FUNCTION_76();
  v1 = (*v0)[3];
  v2 = (*v0)[4];
  v3 = (*v0)[1];
  v4 = (*v0)[2];
  v5 = **v0;
  if (v6)
  {
    OUTLINED_FUNCTION_125();
    sub_26A37623C();
    sub_26A13440C();
    sub_26A34552C();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v7, v8, v9, v2);
    sub_26A3761EC();
  }

  else
  {
    v10 = **v0;
    sub_26A13440C();
    sub_26A34552C();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v2);
  }

  free(v1);
  free(v4);
  free(v3);
  OUTLINED_FUNCTION_75();

  free(v14);
}

void _ProtoResponse.Component.separators.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_16_2(v1);
  v2 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  OUTLINED_FUNCTION_15_3(v4);
  v5 = type metadata accessor for _ProtoSeparators();
  *(v0 + 16) = v5;
  OUTLINED_FUNCTION_12(v5);
  v7 = *(v6 + 64);
  *(v0 + 24) = __swift_coroFrameAllocStub(v7);
  v8 = __swift_coroFrameAllocStub(v7);
  *(v0 + 32) = v8;
  v9 = *(type metadata accessor for _ProtoResponse.Component(0) + 24);
  *(v0 + 40) = v9;
  OUTLINED_FUNCTION_176(v9);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_4_11();
  if (v10)
  {
    *v8 = 0;
    v8[8] = 1;
    *(v8 + 2) = 0;
    v8[24] = 1;
    v11 = &v8[*(v5 + 24)];
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    OUTLINED_FUNCTION_4_11();
    if (!v10)
    {
      sub_26A13440C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_125();
    sub_26A34552C();
  }

  OUTLINED_FUNCTION_67_1();
}

void sub_26A351550()
{
  OUTLINED_FUNCTION_69_1();
  OUTLINED_FUNCTION_108(v4);
  if (v5)
  {
    OUTLINED_FUNCTION_157();
    sub_26A37623C();
    sub_26A13440C();
    OUTLINED_FUNCTION_30_14();
    sub_26A34552C();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v6, v7, v8, v3);
    sub_26A3761EC();
  }

  else
  {
    sub_26A13440C();
    OUTLINED_FUNCTION_30_14();
    sub_26A34552C();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v3);
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_67_1();

  free(v12);
}

Swift::Void __swiftcall _ProtoResponse.Component.clearSeparators()()
{
  v0 = *(type metadata accessor for _ProtoResponse.Component(0) + 24);
  sub_26A13440C();
  type metadata accessor for _ProtoSeparators();
  OUTLINED_FUNCTION_92();

  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t _ProtoResponse.Component.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_26_13();
  v1 = *(type metadata accessor for _ProtoResponse.Component(v0) + 20);
  v2 = sub_26A424794();
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_57_5();

  return v6(v5);
}

uint64_t _ProtoResponse.Component.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_110();
  v1 = *(type metadata accessor for _ProtoResponse.Component(v0) + 20);
  v2 = sub_26A424794();
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_219_0();

  return v6(v5);
}

uint64_t _ProtoResponse.Component.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_11_3();
  v1 = *(type metadata accessor for _ProtoResponse.Component(v0) + 20);
  return OUTLINED_FUNCTION_51_5();
}

void static _ProtoResponse.Component.OneOf_Value.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_76();
  a19 = v21;
  a20 = v22;
  v651 = v23;
  v652 = v24;
  v25 = type metadata accessor for _ProtoSummaryItem_SwitchV2(0);
  v26 = OUTLINED_FUNCTION_41(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_11();
  v30 = OUTLINED_FUNCTION_35(v29);
  v31 = type metadata accessor for _ProtoSimpleItem_RichSearchResult(v30);
  v32 = OUTLINED_FUNCTION_41(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_35(v35);
  v36 = type metadata accessor for _ProtoTertiaryHeader_Standard();
  v37 = OUTLINED_FUNCTION_41(v36);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_11();
  v41 = OUTLINED_FUNCTION_35(v40);
  v42 = type metadata accessor for _ProtoKeyValue_Standard(v41);
  v43 = OUTLINED_FUNCTION_41(v42);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_11();
  v47 = OUTLINED_FUNCTION_35(v46);
  v48 = type metadata accessor for _ProtoSectionHeader_Rich(v47);
  v49 = OUTLINED_FUNCTION_41(v48);
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_11();
  v53 = OUTLINED_FUNCTION_35(v52);
  v54 = type metadata accessor for _ProtoSectionHeader_Standard(v53);
  v55 = OUTLINED_FUNCTION_41(v54);
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_11();
  v59 = OUTLINED_FUNCTION_35(v58);
  v60 = type metadata accessor for _ProtoHorizontalList_Standard(v59);
  v61 = OUTLINED_FUNCTION_41(v60);
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_11();
  v65 = OUTLINED_FUNCTION_35(v64);
  v66 = type metadata accessor for _ProtoHeroHeader(v65);
  v67 = OUTLINED_FUNCTION_41(v66);
  v69 = *(v68 + 64);
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_11();
  v71 = OUTLINED_FUNCTION_35(v70);
  v72 = type metadata accessor for _ProtoSash_Standard(v71);
  v73 = OUTLINED_FUNCTION_41(v72);
  v75 = *(v74 + 64);
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_11();
  v77 = OUTLINED_FUNCTION_35(v76);
  v78 = type metadata accessor for _ProtoIntentsUI_Standard(v77);
  v79 = OUTLINED_FUNCTION_41(v78);
  v81 = *(v80 + 64);
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_11();
  v83 = OUTLINED_FUNCTION_35(v82);
  v84 = type metadata accessor for _ProtoButton_Container(v83);
  v85 = OUTLINED_FUNCTION_13_31(v84, &v556);
  v87 = *(v86 + 64);
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_11();
  v89 = OUTLINED_FUNCTION_35(v88);
  v90 = type metadata accessor for _ProtoVisualization_Map(v89);
  v91 = OUTLINED_FUNCTION_41(v90);
  v93 = *(v92 + 64);
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_11();
  v95 = OUTLINED_FUNCTION_35(v94);
  v96 = type metadata accessor for _ProtoVisualization_Image(v95);
  v97 = OUTLINED_FUNCTION_41(v96);
  v99 = *(v98 + 64);
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_35(v100);
  v101 = type metadata accessor for _ProtoSystemText_ClarificationTitle();
  v102 = OUTLINED_FUNCTION_41(v101);
  v104 = *(v103 + 64);
  MEMORY[0x28223BE20](v102);
  OUTLINED_FUNCTION_11();
  v106 = OUTLINED_FUNCTION_35(v105);
  v107 = type metadata accessor for _ProtoSummaryItem_Switch(v106);
  v108 = OUTLINED_FUNCTION_41(v107);
  v110 = *(v109 + 64);
  MEMORY[0x28223BE20](v108);
  OUTLINED_FUNCTION_11();
  v112 = OUTLINED_FUNCTION_35(v111);
  v113 = type metadata accessor for _ProtoSecondaryHeader_Emphasized(v112);
  v114 = OUTLINED_FUNCTION_41(v113);
  v116 = *(v115 + 64);
  MEMORY[0x28223BE20](v114);
  OUTLINED_FUNCTION_11();
  v118 = OUTLINED_FUNCTION_35(v117);
  v119 = type metadata accessor for _ProtoSimpleItem_ReverseRich(v118);
  v120 = OUTLINED_FUNCTION_41(v119);
  v122 = *(v121 + 64);
  MEMORY[0x28223BE20](v120);
  OUTLINED_FUNCTION_11();
  v124 = OUTLINED_FUNCTION_35(v123);
  v125 = type metadata accessor for _ProtoSimpleItem_Player(v124);
  v126 = OUTLINED_FUNCTION_41(v125);
  v128 = *(v127 + 64);
  MEMORY[0x28223BE20](v126);
  OUTLINED_FUNCTION_11();
  v130 = OUTLINED_FUNCTION_35(v129);
  v131 = type metadata accessor for _ProtoSummaryItem_Player(v130);
  v132 = OUTLINED_FUNCTION_41(v131);
  v134 = *(v133 + 64);
  MEMORY[0x28223BE20](v132);
  OUTLINED_FUNCTION_11();
  v136 = OUTLINED_FUNCTION_35(v135);
  v137 = type metadata accessor for _ProtoVisualization_Chart(v136);
  v138 = OUTLINED_FUNCTION_41(v137);
  v140 = *(v139 + 64);
  MEMORY[0x28223BE20](v138);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_35(v141);
  v142 = type metadata accessor for _ProtoLongItem_Text();
  v143 = OUTLINED_FUNCTION_41(v142);
  v145 = *(v144 + 64);
  MEMORY[0x28223BE20](v143);
  OUTLINED_FUNCTION_11();
  v147 = OUTLINED_FUNCTION_35(v146);
  v148 = type metadata accessor for _ProtoReference_Footnote(v147);
  v149 = OUTLINED_FUNCTION_41(v148);
  v151 = *(v150 + 64);
  MEMORY[0x28223BE20](v149);
  OUTLINED_FUNCTION_11();
  v153 = OUTLINED_FUNCTION_35(v152);
  v154 = type metadata accessor for _ProtoTable(v153);
  v155 = OUTLINED_FUNCTION_41(v154);
  v157 = *(v156 + 64);
  MEMORY[0x28223BE20](v155);
  OUTLINED_FUNCTION_11();
  v159 = OUTLINED_FUNCTION_35(v158);
  v160 = type metadata accessor for _ProtoFactItem_Button(v159);
  v161 = OUTLINED_FUNCTION_41(v160);
  v163 = *(v162 + 64);
  MEMORY[0x28223BE20](v161);
  OUTLINED_FUNCTION_11();
  v165 = OUTLINED_FUNCTION_35(v164);
  v166 = type metadata accessor for _ProtoSummaryItem_Button(v165);
  v167 = OUTLINED_FUNCTION_41(v166);
  v169 = *(v168 + 64);
  MEMORY[0x28223BE20](v167);
  OUTLINED_FUNCTION_11();
  v171 = OUTLINED_FUNCTION_35(v170);
  v172 = type metadata accessor for _ProtoSummaryItem_PairNumberV2(v171);
  v173 = OUTLINED_FUNCTION_41(v172);
  v175 = *(v174 + 64);
  MEMORY[0x28223BE20](v173);
  OUTLINED_FUNCTION_11();
  v177 = OUTLINED_FUNCTION_35(v176);
  v178 = type metadata accessor for _ProtoSummaryItem_PairNumber(v177);
  v179 = OUTLINED_FUNCTION_41(v178);
  v181 = *(v180 + 64);
  MEMORY[0x28223BE20](v179);
  OUTLINED_FUNCTION_11();
  v183 = OUTLINED_FUNCTION_35(v182);
  v184 = type metadata accessor for _ProtoSummaryItem_PairV2(v183);
  v185 = OUTLINED_FUNCTION_41(v184);
  v187 = *(v186 + 64);
  MEMORY[0x28223BE20](v185);
  OUTLINED_FUNCTION_11();
  v189 = OUTLINED_FUNCTION_35(v188);
  v190 = type metadata accessor for _ProtoSummaryItem_Pair(v189);
  v191 = OUTLINED_FUNCTION_41(v190);
  v193 = *(v192 + 64);
  MEMORY[0x28223BE20](v191);
  OUTLINED_FUNCTION_11();
  v195 = OUTLINED_FUNCTION_35(v194);
  v196 = type metadata accessor for _ProtoReference_Button(v195);
  v197 = OUTLINED_FUNCTION_41(v196);
  v199 = *(v198 + 64);
  MEMORY[0x28223BE20](v197);
  OUTLINED_FUNCTION_11();
  v201 = OUTLINED_FUNCTION_35(v200);
  v202 = type metadata accessor for _ProtoReference_Rich(v201);
  v203 = OUTLINED_FUNCTION_41(v202);
  v205 = *(v204 + 64);
  MEMORY[0x28223BE20](v203);
  OUTLINED_FUNCTION_11();
  v207 = OUTLINED_FUNCTION_35(v206);
  v208 = type metadata accessor for _ProtoReference_Logo(v207);
  v209 = OUTLINED_FUNCTION_41(v208);
  v211 = *(v210 + 64);
  MEMORY[0x28223BE20](v209);
  OUTLINED_FUNCTION_11();
  v213 = OUTLINED_FUNCTION_35(v212);
  v214 = type metadata accessor for _ProtoReference_Standard(v213);
  v215 = OUTLINED_FUNCTION_41(v214);
  v217 = *(v216 + 64);
  MEMORY[0x28223BE20](v215);
  OUTLINED_FUNCTION_11();
  v219 = OUTLINED_FUNCTION_35(v218);
  v220 = type metadata accessor for _ProtoControl_PlayerButton(v219);
  v221 = OUTLINED_FUNCTION_13_31(v220, &v595);
  v223 = *(v222 + 64);
  MEMORY[0x28223BE20](v221);
  OUTLINED_FUNCTION_11();
  v225 = OUTLINED_FUNCTION_35(v224);
  v226 = type metadata accessor for _ProtoControl_Slider(v225);
  v227 = OUTLINED_FUNCTION_41(v226);
  v229 = *(v228 + 64);
  MEMORY[0x28223BE20](v227);
  OUTLINED_FUNCTION_11();
  v231 = OUTLINED_FUNCTION_35(v230);
  v232 = type metadata accessor for _ProtoControl_Switch(v231);
  v233 = OUTLINED_FUNCTION_13_31(v232, &v593);
  v235 = *(v234 + 64);
  MEMORY[0x28223BE20](v233);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_35(v236);
  v237 = type metadata accessor for _ProtoTextInput();
  v238 = OUTLINED_FUNCTION_41(v237);
  v240 = *(v239 + 64);
  MEMORY[0x28223BE20](v238);
  OUTLINED_FUNCTION_11();
  v242 = OUTLINED_FUNCTION_35(v241);
  v243 = type metadata accessor for _ProtoStatusIndicator_Cancelled(v242);
  v244 = OUTLINED_FUNCTION_41(v243);
  v246 = *(v245 + 64);
  MEMORY[0x28223BE20](v244);
  OUTLINED_FUNCTION_11();
  v248 = OUTLINED_FUNCTION_35(v247);
  v249 = type metadata accessor for _ProtoStatusIndicator_InProgress(v248);
  v250 = OUTLINED_FUNCTION_41(v249);
  v252 = *(v251 + 64);
  MEMORY[0x28223BE20](v250);
  OUTLINED_FUNCTION_11();
  v254 = OUTLINED_FUNCTION_35(v253);
  v255 = type metadata accessor for _ProtoStatusIndicator_Error(v254);
  v256 = OUTLINED_FUNCTION_41(v255);
  v258 = *(v257 + 64);
  MEMORY[0x28223BE20](v256);
  OUTLINED_FUNCTION_11();
  v260 = OUTLINED_FUNCTION_35(v259);
  v261 = type metadata accessor for _ProtoStatusIndicator_Success(v260);
  v262 = OUTLINED_FUNCTION_41(v261);
  v264 = *(v263 + 64);
  MEMORY[0x28223BE20](v262);
  OUTLINED_FUNCTION_11();
  v266 = OUTLINED_FUNCTION_35(v265);
  v267 = type metadata accessor for _ProtoBinaryButton(v266);
  v268 = OUTLINED_FUNCTION_41(v267);
  v270 = *(v269 + 64);
  MEMORY[0x28223BE20](v268);
  OUTLINED_FUNCTION_11();
  v272 = OUTLINED_FUNCTION_35(v271);
  v273 = type metadata accessor for _ProtoButton(v272);
  v274 = OUTLINED_FUNCTION_41(v273);
  v276 = *(v275 + 64);
  MEMORY[0x28223BE20](v274);
  OUTLINED_FUNCTION_11();
  v278 = OUTLINED_FUNCTION_35(v277);
  v279 = type metadata accessor for _ProtoSecondaryHeader_Standard(v278);
  v280 = OUTLINED_FUNCTION_41(v279);
  v282 = *(v281 + 64);
  MEMORY[0x28223BE20](v280);
  OUTLINED_FUNCTION_11();
  v284 = OUTLINED_FUNCTION_35(v283);
  v285 = type metadata accessor for _ProtoPrimaryHeader_Rich(v284);
  v286 = OUTLINED_FUNCTION_13_31(v285, &v581);
  v288 = *(v287 + 64);
  MEMORY[0x28223BE20](v286);
  OUTLINED_FUNCTION_11();
  v290 = OUTLINED_FUNCTION_35(v289);
  v291 = type metadata accessor for _ProtoPrimaryHeader_Marquee(v290);
  v292 = OUTLINED_FUNCTION_13_31(v291, &v579);
  v294 = *(v293 + 64);
  MEMORY[0x28223BE20](v292);
  OUTLINED_FUNCTION_11();
  v296 = OUTLINED_FUNCTION_35(v295);
  v297 = type metadata accessor for _ProtoPrimaryHeader_Standard(v296);
  v298 = OUTLINED_FUNCTION_13_31(v297, &v577);
  v300 = *(v299 + 64);
  MEMORY[0x28223BE20](v298);
  OUTLINED_FUNCTION_11();
  v302 = OUTLINED_FUNCTION_35(v301);
  v303 = type metadata accessor for _ProtoSimpleItem_Visual(v302);
  v304 = OUTLINED_FUNCTION_41(v303);
  v306 = *(v305 + 64);
  MEMORY[0x28223BE20](v304);
  OUTLINED_FUNCTION_11();
  v308 = OUTLINED_FUNCTION_35(v307);
  v309 = type metadata accessor for _ProtoSimpleItem_Rich(v308);
  v310 = OUTLINED_FUNCTION_13_31(v309, &v574);
  v312 = *(v311 + 64);
  MEMORY[0x28223BE20](v310);
  OUTLINED_FUNCTION_11();
  v314 = OUTLINED_FUNCTION_35(v313);
  v315 = type metadata accessor for _ProtoSimpleItem_Standard(v314);
  v316 = OUTLINED_FUNCTION_13_31(v315, &v572);
  v318 = *(v317 + 64);
  MEMORY[0x28223BE20](v316);
  OUTLINED_FUNCTION_11();
  v320 = OUTLINED_FUNCTION_35(v319);
  v321 = type metadata accessor for _ProtoSummaryItem_DetailedText(v320);
  v322 = OUTLINED_FUNCTION_13_31(v321, &v570);
  v324 = *(v323 + 64);
  MEMORY[0x28223BE20](v322);
  OUTLINED_FUNCTION_11();
  v326 = OUTLINED_FUNCTION_35(v325);
  v327 = type metadata accessor for _ProtoSummaryItem_LargeText(v326);
  v328 = OUTLINED_FUNCTION_13_31(v327, &v568);
  v330 = *(v329 + 64);
  MEMORY[0x28223BE20](v328);
  OUTLINED_FUNCTION_11();
  v332 = OUTLINED_FUNCTION_35(v331);
  v333 = type metadata accessor for _ProtoSummaryItem_Text(v332);
  v334 = OUTLINED_FUNCTION_13_31(v333, &v566);
  v336 = *(v335 + 64);
  MEMORY[0x28223BE20](v334);
  OUTLINED_FUNCTION_11();
  v338 = OUTLINED_FUNCTION_35(v337);
  v339 = type metadata accessor for _ProtoSummaryItem_ShortNumber(v338);
  v340 = OUTLINED_FUNCTION_13_31(v339, &v564);
  v342 = *(v341 + 64);
  MEMORY[0x28223BE20](v340);
  OUTLINED_FUNCTION_11();
  v344 = OUTLINED_FUNCTION_35(v343);
  v345 = type metadata accessor for _ProtoSummaryItem_Standard(v344);
  v346 = OUTLINED_FUNCTION_13_31(v345, &v562);
  v348 = *(v347 + 64);
  MEMORY[0x28223BE20](v346);
  OUTLINED_FUNCTION_11();
  v350 = OUTLINED_FUNCTION_35(v349);
  v351 = type metadata accessor for _ProtoFactItem_HeroNumber(v350);
  v352 = OUTLINED_FUNCTION_13_31(v351, &v560);
  v354 = *(v353 + 64);
  MEMORY[0x28223BE20](v352);
  OUTLINED_FUNCTION_11();
  v356 = OUTLINED_FUNCTION_35(v355);
  v357 = type metadata accessor for _ProtoFactItem_ShortNumber(v356);
  v358 = OUTLINED_FUNCTION_13_31(v357, &v559);
  v360 = *(v359 + 64);
  MEMORY[0x28223BE20](v358);
  OUTLINED_FUNCTION_11();
  v362 = OUTLINED_FUNCTION_35(v361);
  v363 = type metadata accessor for _ProtoFactItem_Standard(v362);
  v364 = OUTLINED_FUNCTION_13_31(v363, &v558);
  v366 = *(v365 + 64);
  MEMORY[0x28223BE20](v364);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_35(v367);
  v368 = type metadata accessor for _ProtoCustomCanvas();
  v369 = OUTLINED_FUNCTION_41(v368);
  v371 = *(v370 + 64);
  MEMORY[0x28223BE20](v369);
  OUTLINED_FUNCTION_11();
  v373 = OUTLINED_FUNCTION_35(v372);
  v650 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(v373);
  v374 = OUTLINED_FUNCTION_12(v650);
  v376 = *(v375 + 64);
  MEMORY[0x28223BE20](v374);
  OUTLINED_FUNCTION_8();
  v649 = v377;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v378);
  OUTLINED_FUNCTION_47();
  v648 = v379;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v380);
  OUTLINED_FUNCTION_47();
  v647 = v381;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v382);
  OUTLINED_FUNCTION_47();
  v646 = v383;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v384);
  OUTLINED_FUNCTION_47();
  v645 = v385;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v386);
  OUTLINED_FUNCTION_47();
  v643 = v387;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v388);
  OUTLINED_FUNCTION_47();
  v642[1] = v389;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v390);
  OUTLINED_FUNCTION_47();
  v642[0] = v391;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v392);
  OUTLINED_FUNCTION_47();
  v641 = v393;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v394);
  OUTLINED_FUNCTION_47();
  v640 = v395;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v396);
  OUTLINED_FUNCTION_47();
  v644 = v397;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v398);
  OUTLINED_FUNCTION_47();
  v639 = v399;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v400);
  OUTLINED_FUNCTION_47();
  v638 = v401;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v402);
  OUTLINED_FUNCTION_47();
  v637 = v403;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v404);
  OUTLINED_FUNCTION_47();
  v636 = v405;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v406);
  OUTLINED_FUNCTION_47();
  v635 = v407;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v408);
  OUTLINED_FUNCTION_47();
  v634 = v409;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v410);
  OUTLINED_FUNCTION_47();
  v633 = v411;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v412);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v413);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v414);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v415);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v416);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v417);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v418);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v419);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v420);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v421);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v422);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v423);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v424);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v425);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v426);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v427);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v428);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v429);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v430);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v431);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v432);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v433);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v434);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v435);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v436);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v437);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v438);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v439);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v440);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v441);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v442);
  OUTLINED_FUNCTION_152_4();
  MEMORY[0x28223BE20](v443);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v444);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v445);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v446);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v447);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v448);
  v450 = v555 - v449;
  MEMORY[0x28223BE20](v451);
  v453 = v555 - v452;
  MEMORY[0x28223BE20](v454);
  v456 = v555 - v455;
  MEMORY[0x28223BE20](v457);
  v459 = v555 - v458;
  MEMORY[0x28223BE20](v460);
  v462 = v555 - v461;
  MEMORY[0x28223BE20](v463);
  v465 = v555 - v464;
  v466 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280372E50, &unk_26A43F7F0);
  OUTLINED_FUNCTION_41(v466);
  v468 = *(v467 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v469);
  v472 = v555 + *(v471 + 56) - v470;
  sub_26A37623C();
  v652 = v472;
  sub_26A37623C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 1)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_128(&v561);
      sub_26A34552C();
      OUTLINED_FUNCTION_65_13(&v558);
      if (*&v462[v510] != *(v20 + v510))
      {
        v511 = *&v462[v510];

        OUTLINED_FUNCTION_175();
        sub_26A2C7F08();
        OUTLINED_FUNCTION_126_4();

        if ((v453 & 1) == 0)
        {
          goto LABEL_226;
        }
      }

      goto LABEL_73;
    case 2u:
      sub_26A37623C();
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_148(&v563);
      sub_26A34552C();
      OUTLINED_FUNCTION_65_13(&v559);
      if (*&v459[v502] == *&v450[v502])
      {
        goto LABEL_66;
      }

      v503 = *&v459[v502];

      OUTLINED_FUNCTION_21_3();
      sub_26A2CBC94();
      v505 = v504;

      if (v505)
      {
LABEL_66:
        sub_26A424794();
        OUTLINED_FUNCTION_1_55();
        sub_26A37650C();
        OUTLINED_FUNCTION_90_7();
        sub_26A424B64();
      }

      sub_26A3761EC();
      OUTLINED_FUNCTION_175();
      goto LABEL_227;
    case 3u:
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 3)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_128(&v565);
      sub_26A34552C();
      OUTLINED_FUNCTION_65_13(&v560);
      if (*&v456[v508] == *(v20 + v508) || (v509 = *&v456[v508], , , OUTLINED_FUNCTION_175(), sub_26A2CF6B4(), OUTLINED_FUNCTION_126_4(), , (v453 & 1) != 0))
      {
LABEL_73:
        sub_26A424794();
        OUTLINED_FUNCTION_1_55();
        sub_26A37650C();
        sub_26A424B64();
      }

      goto LABEL_226;
    case 4u:
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 4)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_148(&v567);
      sub_26A34552C();
      OUTLINED_FUNCTION_65_13(&v562);
      if (*&v453[v498] == *&v450[v498])
      {
        goto LABEL_46;
      }

      v499 = *&v453[v498];

      OUTLINED_FUNCTION_175();
      sub_26A18F48C();
      v501 = v500;

      if (v501)
      {
LABEL_46:
        sub_26A424794();
        OUTLINED_FUNCTION_1_55();
        sub_26A37650C();
        OUTLINED_FUNCTION_115();
        sub_26A424B64();
      }

      goto LABEL_226;
    case 5u:
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 5)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_128(&v569);
      sub_26A34552C();
      OUTLINED_FUNCTION_11_33(&v564);
      if (v548)
      {
        goto LABEL_113;
      }

      OUTLINED_FUNCTION_175();
      sub_26A19336C();
      OUTLINED_FUNCTION_126_4();

      if (v453)
      {
        goto LABEL_113;
      }

      goto LABEL_226;
    case 6u:
      OUTLINED_FUNCTION_148(&v630);
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 6)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_128(&v571);
      sub_26A34552C();
      OUTLINED_FUNCTION_11_33(&v566);
      if (v548)
      {
        goto LABEL_113;
      }

      OUTLINED_FUNCTION_175();
      sub_26A19699C();
      OUTLINED_FUNCTION_126_4();

      if (v453)
      {
        goto LABEL_113;
      }

      goto LABEL_226;
    case 7u:
      OUTLINED_FUNCTION_148(&v632);
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 7)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_128(&v573);
      sub_26A34552C();
      OUTLINED_FUNCTION_11_33(&v568);
      if (v548)
      {
        goto LABEL_113;
      }

      OUTLINED_FUNCTION_175();
      sub_26A199228();
      OUTLINED_FUNCTION_126_4();

      if (v453)
      {
        goto LABEL_113;
      }

      goto LABEL_226;
    case 8u:
      OUTLINED_FUNCTION_148(&v634);
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 8)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_128(&v576);
      sub_26A34552C();
      OUTLINED_FUNCTION_11_33(&v570);
      if (v548)
      {
        goto LABEL_113;
      }

      OUTLINED_FUNCTION_175();
      sub_26A19C6A4();
      OUTLINED_FUNCTION_126_4();

      if (v453)
      {
        goto LABEL_113;
      }

      goto LABEL_226;
    case 9u:
      OUTLINED_FUNCTION_148(&v636);
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 9)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_128(&v578);
      sub_26A34552C();
      OUTLINED_FUNCTION_11_33(&v572);
      if (v548)
      {
        goto LABEL_113;
      }

      OUTLINED_FUNCTION_175();
      sub_26A2674E8();
      OUTLINED_FUNCTION_126_4();

      if (v453)
      {
        goto LABEL_113;
      }

      goto LABEL_226;
    case 0xAu:
      OUTLINED_FUNCTION_148(&v638);
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 10)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_128(&v580);
      sub_26A34552C();
      OUTLINED_FUNCTION_11_33(&v574);
      if (v548)
      {
        goto LABEL_113;
      }

      OUTLINED_FUNCTION_175();
      sub_26A26BA64();
      OUTLINED_FUNCTION_126_4();

      if (v453)
      {
        goto LABEL_113;
      }

      goto LABEL_226;
    case 0xBu:
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 11)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2(&v575);
      OUTLINED_FUNCTION_157();
      static _ProtoSimpleItem_Visual.== infix(_:_:)();
      goto LABEL_159;
    case 0xCu:
      OUTLINED_FUNCTION_148(&v641);
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 12)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_128(&v583);
      sub_26A34552C();
      OUTLINED_FUNCTION_11_33(&v577);
      if (v548)
      {
        goto LABEL_113;
      }

      OUTLINED_FUNCTION_175();
      sub_26A3FD598();
      OUTLINED_FUNCTION_126_4();

      if (v453)
      {
        goto LABEL_113;
      }

      goto LABEL_226;
    case 0xDu:
      OUTLINED_FUNCTION_148(&v643);
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 13)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_128(&v585);
      sub_26A34552C();
      OUTLINED_FUNCTION_11_33(&v579);
      if (v548)
      {
        goto LABEL_113;
      }

      OUTLINED_FUNCTION_175();
      sub_26A3FFA58();
      OUTLINED_FUNCTION_126_4();

      if (v453)
      {
        goto LABEL_113;
      }

      goto LABEL_226;
    case 0xEu:
      OUTLINED_FUNCTION_148(&v645);
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 14)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_128(&v587);
      sub_26A34552C();
      OUTLINED_FUNCTION_11_33(&v581);
      if (v548)
      {
        goto LABEL_113;
      }

      OUTLINED_FUNCTION_175();
      sub_26A4026C8();
      OUTLINED_FUNCTION_126_4();

      if (v453)
      {
        goto LABEL_113;
      }

      goto LABEL_226;
    case 0xFu:
      OUTLINED_FUNCTION_128(&v631);
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 15)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2(&v582);
      v506 = OUTLINED_FUNCTION_157();
      static _ProtoSecondaryHeader_Standard.== infix(_:_:)(v506, v507);
      goto LABEL_159;
    case 0x10u:
      OUTLINED_FUNCTION_128(&v633);
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 16)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2(&v584);
      v484 = OUTLINED_FUNCTION_157();
      static _ProtoButton.== infix(_:_:)(v484, v485);
      goto LABEL_159;
    case 0x11u:
      OUTLINED_FUNCTION_128(&v635);
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 17)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2(&v586);
      OUTLINED_FUNCTION_157();
      static _ProtoBinaryButton.== infix(_:_:)();
      goto LABEL_159;
    case 0x12u:
      OUTLINED_FUNCTION_128(&v637);
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 18)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2(&v588);
      v520 = OUTLINED_FUNCTION_157();
      static _ProtoStatusIndicator_Success.== infix(_:_:)(v520, v521);
      goto LABEL_159;
    case 0x13u:
      OUTLINED_FUNCTION_128(&v639);
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 19)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2(&v589);
      v530 = OUTLINED_FUNCTION_157();
      static _ProtoStatusIndicator_Error.== infix(_:_:)(v530, v531);
      goto LABEL_159;
    case 0x14u:
      OUTLINED_FUNCTION_128(&v640);
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 20)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2(&v590);
      v516 = OUTLINED_FUNCTION_157();
      static _ProtoStatusIndicator_InProgress.== infix(_:_:)(v516, v517);
      goto LABEL_159;
    case 0x15u:
      OUTLINED_FUNCTION_128(v642);
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 21)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2(&v591);
      v518 = OUTLINED_FUNCTION_157();
      static _ProtoStatusIndicator_Cancelled.== infix(_:_:)(v518, v519);
      goto LABEL_159;
    case 0x16u:
      OUTLINED_FUNCTION_128(&v644);
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 22)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2(&v592);
      v526 = OUTLINED_FUNCTION_157();
      static _ProtoTextInput.== infix(_:_:)(v526, v527);
      goto LABEL_159;
    case 0x17u:
      OUTLINED_FUNCTION_148(&v652);
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 23)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_128(&v597);
      sub_26A34552C();
      OUTLINED_FUNCTION_11_33(&v593);
      if (v548)
      {
        goto LABEL_113;
      }

      OUTLINED_FUNCTION_175();
      sub_26A1CE844();
      OUTLINED_FUNCTION_126_4();

      if (v453)
      {
        goto LABEL_113;
      }

      goto LABEL_226;
    case 0x18u:
      OUTLINED_FUNCTION_128(&v646);
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 24)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2(&v594);
      OUTLINED_FUNCTION_157();
      static _ProtoControl_Slider.== infix(_:_:)();
      goto LABEL_159;
    case 0x19u:
      OUTLINED_FUNCTION_148(&a10);
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 25)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_128(&v600);
      sub_26A34552C();
      OUTLINED_FUNCTION_11_33(&v595);
      if (v548 || (, , OUTLINED_FUNCTION_175(), sub_26A1D2380(), OUTLINED_FUNCTION_126_4(), , (v453 & 1) != 0))
      {
LABEL_113:
        sub_26A424794();
        OUTLINED_FUNCTION_1_55();
        sub_26A37650C();
        OUTLINED_FUNCTION_33_15();
      }

      goto LABEL_226;
    case 0x1Au:
      v542 = v612;
      sub_26A37623C();
      v544 = *v542;
      v543 = v542[1];
      v545 = v652;
      if (swift_getEnumCaseMultiPayload() != 26)
      {

        goto LABEL_216;
      }

      v546 = *v545;
      v547 = v545[1];
      v548 = v544 == v546 && v543 == v547;
      if (!v548)
      {
        OUTLINED_FUNCTION_246();
        sub_26A425354();
      }

LABEL_228:
      sub_26A3761EC();
      break;
    case 0x1Bu:
      OUTLINED_FUNCTION_128(&v647);
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 27)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2(&v596);
      OUTLINED_FUNCTION_157();
      static _ProtoReference_Standard.== infix(_:_:)();
      goto LABEL_159;
    case 0x1Cu:
      OUTLINED_FUNCTION_128(&v648);
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 28)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2(&v598);
      OUTLINED_FUNCTION_157();
      static _ProtoReference_Logo.== infix(_:_:)();
      goto LABEL_159;
    case 0x1Du:
      OUTLINED_FUNCTION_128(&v649);
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 29)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2(&v599);
      v538 = OUTLINED_FUNCTION_157();
      static _ProtoReference_Rich.== infix(_:_:)(v538, v539);
      goto LABEL_159;
    case 0x1Eu:
      OUTLINED_FUNCTION_128(&v650);
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 30)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2(&v601);
      OUTLINED_FUNCTION_157();
      static _ProtoReference_Button.== infix(_:_:)();
      goto LABEL_159;
    case 0x1Fu:
      OUTLINED_FUNCTION_128(&v651);
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 31)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2(&v602);
      v512 = OUTLINED_FUNCTION_157();
      static _ProtoSummaryItem_Pair.== infix(_:_:)(v512, v513);
      goto LABEL_159;
    case 0x20u:
      OUTLINED_FUNCTION_128(&v653);
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 32)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2(&v603);
      v522 = OUTLINED_FUNCTION_157();
      static _ProtoSummaryItem_PairV2.== infix(_:_:)(v522, v523);
      goto LABEL_159;
    case 0x21u:
      OUTLINED_FUNCTION_128(&a9);
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 33)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2(&v604);
      v488 = OUTLINED_FUNCTION_157();
      static _ProtoSummaryItem_PairNumber.== infix(_:_:)(v488, v489);
      goto LABEL_159;
    case 0x22u:
      OUTLINED_FUNCTION_128(&a11);
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 34)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2(&v605);
      v482 = OUTLINED_FUNCTION_157();
      static _ProtoSummaryItem_PairNumberV2.== infix(_:_:)(v482, v483);
      goto LABEL_159;
    case 0x23u:
      OUTLINED_FUNCTION_128(&a12);
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 35)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2(&v606);
      v478 = OUTLINED_FUNCTION_157();
      static _ProtoSummaryItem_Button.== infix(_:_:)(v478, v479);
      goto LABEL_159;
    case 0x24u:
      OUTLINED_FUNCTION_128(&a13);
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 36)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2(&v607);
      v480 = OUTLINED_FUNCTION_157();
      static _ProtoFactItem_Button.== infix(_:_:)(v480, v481);
      goto LABEL_159;
    case 0x25u:
      OUTLINED_FUNCTION_128(&a14);
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 37)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2(&v608);
      v476 = OUTLINED_FUNCTION_157();
      static _ProtoTable.== infix(_:_:)(v476);
      goto LABEL_159;
    case 0x26u:
      OUTLINED_FUNCTION_128(&a15);
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 38)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2(&v609);
      v540 = OUTLINED_FUNCTION_157();
      static _ProtoReference_Footnote.== infix(_:_:)(v540, v541);
      goto LABEL_159;
    case 0x27u:
      OUTLINED_FUNCTION_128(&a16);
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 39)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2(&v610);
      v528 = OUTLINED_FUNCTION_157();
      static _ProtoLongItem_Text.== infix(_:_:)(v528, v529);
      goto LABEL_159;
    case 0x28u:
      OUTLINED_FUNCTION_128(&a17);
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 40)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2(&v611);
      OUTLINED_FUNCTION_157();
      static _ProtoVisualization_Chart.== infix(_:_:)();
      goto LABEL_159;
    case 0x29u:
      OUTLINED_FUNCTION_128(&a18);
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 41)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2(&v612);
      v514 = OUTLINED_FUNCTION_157();
      static _ProtoSummaryItem_Player.== infix(_:_:)(v514, v515);
      goto LABEL_159;
    case 0x2Au:
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 42)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2(&v613);
      v534 = OUTLINED_FUNCTION_157();
      static _ProtoSimpleItem_Player.== infix(_:_:)(v534, v535);
      goto LABEL_159;
    case 0x2Bu:
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 43)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2(&v614);
      v474 = OUTLINED_FUNCTION_157();
      static _ProtoSimpleItem_ReverseRich.== infix(_:_:)(v474, v475);
      goto LABEL_159;
    case 0x2Cu:
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 44)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2(&v615);
      v486 = OUTLINED_FUNCTION_157();
      static _ProtoSecondaryHeader_Emphasized.== infix(_:_:)(v486, v487);
      goto LABEL_159;
    case 0x2Du:
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 45)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2(&v616);
      v524 = OUTLINED_FUNCTION_157();
      static _ProtoSummaryItem_Switch.== infix(_:_:)(v524, v525);
      goto LABEL_159;
    case 0x2Eu:
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 46)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2(&v617);
      OUTLINED_FUNCTION_157();
      static _ProtoSystemText_ClarificationTitle.== infix(_:_:)();
      goto LABEL_159;
    case 0x2Fu:
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 47)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2(&v618);
      OUTLINED_FUNCTION_157();
      static _ProtoVisualization_Image.== infix(_:_:)();
      goto LABEL_159;
    case 0x30u:
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 48)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2(&v619);
      OUTLINED_FUNCTION_157();
      static _ProtoVisualization_Map.== infix(_:_:)();
      goto LABEL_159;
    case 0x31u:
      v492 = v644;
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 49)
      {
        goto LABEL_215;
      }

      v493 = v590;
      sub_26A34552C();
      v494 = *v492;
      v495 = *v493;
      sub_26A0DCCA8();
      if (v496)
      {
        v497 = *(v555[0] + 20);
        sub_26A424794();
        OUTLINED_FUNCTION_1_55();
        sub_26A37650C();
        sub_26A424B64();
      }

LABEL_226:
      sub_26A3761EC();
LABEL_227:
      sub_26A3761EC();
      goto LABEL_228;
    case 0x32u:
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 50)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2(&v620);
      v473 = OUTLINED_FUNCTION_157();
      static _ProtoIntentsUI_Standard.== infix(_:_:)(v473);
      goto LABEL_159;
    case 0x33u:
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 51)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2(&v621);
      v553 = OUTLINED_FUNCTION_157();
      static _ProtoSash_Standard.== infix(_:_:)(v553, v554);
      goto LABEL_159;
    case 0x34u:
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 52)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2(&v622);
      v551 = OUTLINED_FUNCTION_157();
      static _ProtoHeroHeader.== infix(_:_:)(v551, v552);
      goto LABEL_159;
    case 0x35u:
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 53)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2(&v623);
      OUTLINED_FUNCTION_157();
      static _ProtoHorizontalList_Standard.== infix(_:_:)();
      goto LABEL_159;
    case 0x36u:
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 54)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2(&v624);
      OUTLINED_FUNCTION_157();
      static _ProtoSectionHeader_Standard.== infix(_:_:)();
      goto LABEL_159;
    case 0x37u:
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 55)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2(&v625);
      v549 = OUTLINED_FUNCTION_157();
      static _ProtoSectionHeader_Rich.== infix(_:_:)(v549, v550);
      goto LABEL_159;
    case 0x38u:
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 56)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2(&v626);
      v477 = OUTLINED_FUNCTION_157();
      static _ProtoKeyValue_Standard.== infix(_:_:)(v477);
      goto LABEL_159;
    case 0x39u:
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 57)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2(&v627);
      v532 = OUTLINED_FUNCTION_157();
      static _ProtoTertiaryHeader_Standard.== infix(_:_:)(v532, v533);
      goto LABEL_159;
    case 0x3Au:
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 58)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2(&v628);
      v490 = OUTLINED_FUNCTION_157();
      static _ProtoSimpleItem_RichSearchResult.== infix(_:_:)(v490, v491);
      goto LABEL_159;
    case 0x3Bu:
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 59)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2(&v629);
      v536 = OUTLINED_FUNCTION_157();
      static _ProtoSummaryItem_SwitchV2.== infix(_:_:)(v536, v537);
LABEL_159:
      sub_26A3761EC();
      goto LABEL_160;
    default:
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10())
      {
LABEL_215:
        sub_26A3761EC();
LABEL_216:
        sub_26A13440C();
      }

      else
      {
        OUTLINED_FUNCTION_128(&v557);
        sub_26A34552C();
        static _ProtoCustomCanvas.== infix(_:_:)(v465, v20);
        sub_26A3761EC();
LABEL_160:
        sub_26A3761EC();
        sub_26A3761EC();
      }

      break;
  }

  OUTLINED_FUNCTION_75();
}