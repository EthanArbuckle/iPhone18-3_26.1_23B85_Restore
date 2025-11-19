uint64_t sub_26A116D94()
{
  v0 = *(type metadata accessor for _ProtoSectionHeader_Standard(0) + 24);
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A119F3C(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  return sub_26A424944();
}

uint64_t sub_26A116E48()
{
  v0 = *(type metadata accessor for _ProtoSectionHeader_Standard(0) + 28);
  type metadata accessor for _ProtoActionProperty();
  sub_26A119F3C(&qword_28036C928, type metadata accessor for _ProtoActionProperty);
  return sub_26A424944();
}

uint64_t _ProtoSectionHeader_Standard.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_87();
  result = sub_26A116FCC(v2, v3, v4, v5);
  if (!v1)
  {
    OUTLINED_FUNCTION_124();
    OUTLINED_FUNCTION_87();
    sub_26A1171A0(v7, v8, v9, v10);
    v11 = *v0;
    v12 = v0[1];
    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = *v0 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {
      sub_26A424A64();
    }

    v14 = v0 + *(type metadata accessor for _ProtoSectionHeader_Standard(0) + 20);
    return sub_26A424774();
  }

  return result;
}

uint64_t sub_26A116FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for _ProtoTextProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for _ProtoSectionHeader_Standard(0) + 24);
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A118238();
  sub_26A119F3C(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A1182E0();
}

uint64_t sub_26A1171A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for _ProtoActionProperty();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for _ProtoSectionHeader_Standard(0) + 28);
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &off_28036C7C0, &off_26A427400);
  }

  sub_26A118238();
  sub_26A119F3C(&qword_28036C928, type metadata accessor for _ProtoActionProperty);
  sub_26A424A84();
  return sub_26A1182E0();
}

void static _ProtoSectionHeader_Standard.== infix(_:_:)()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v3 = v2;
  v66 = type metadata accessor for _ProtoActionProperty();
  v4 = OUTLINED_FUNCTION_12(v66);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v62 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v11);
  v63 = &v62 - v12;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7C8, &qword_26A425C00);
  OUTLINED_FUNCTION_12(v64);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v15);
  v67 = &v62 - v16;
  v17 = type metadata accessor for _ProtoTextProperty(0);
  v18 = OUTLINED_FUNCTION_12(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v26);
  v28 = &v62 - v27;
  v29 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7D0, &qword_26A426DE0) - 8);
  v30 = *(*v29 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v31);
  v33 = &v62 - v32;
  v65 = type metadata accessor for _ProtoSectionHeader_Standard(0);
  v34 = *(v65 + 24);
  v35 = v29[14];
  v68 = v3;
  sub_26A10FD9C();
  v69 = v1;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_37(v33, 1, v17);
  if (v36)
  {
    OUTLINED_FUNCTION_37(&v33[v35], 1, v17);
    if (v36)
    {
      sub_26A0E48F0(v33, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_11;
    }

LABEL_9:
    v37 = &qword_28036C7D0;
    v38 = &qword_26A426DE0;
    v39 = v33;
LABEL_36:
    sub_26A0E48F0(v39, v37, v38);
    goto LABEL_37;
  }

  sub_26A10FD9C();
  OUTLINED_FUNCTION_37(&v33[v35], 1, v17);
  if (v36)
  {
    sub_26A1182E0();
    goto LABEL_9;
  }

  sub_26A118238();
  v40 = static _ProtoTextProperty.== infix(_:_:)(v28, v22);
  sub_26A1182E0();
  OUTLINED_FUNCTION_48_1();
  sub_26A1182E0();
  sub_26A0E48F0(v33, &qword_28036C7B8, &unk_26A425BF0);
  if ((v40 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_11:
  v41 = v65;
  v42 = *(v65 + 28);
  v43 = *(v64 + 48);
  v45 = v67;
  v44 = v68;
  OUTLINED_FUNCTION_209();
  v46 = v69;
  OUTLINED_FUNCTION_209();
  v47 = v66;
  OUTLINED_FUNCTION_37(v45, 1, v66);
  if (!v36)
  {
    v52 = v63;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v45 + v43, 1, v47);
    if (!v53)
    {
      v54 = v62;
      sub_26A118238();
      v55 = *v52;
      v56 = *v54;
      sub_26A0E36D8();
      if (v57)
      {
        v58 = v52[1] == v54[1] && v52[2] == v54[2];
        if (v58 || (sub_26A425354() & 1) != 0)
        {
          v59 = *(v47 + 24);
          sub_26A424794();
          OUTLINED_FUNCTION_3_4();
          sub_26A119F3C(v60, v61);
          LOBYTE(v59) = sub_26A424B64();
          sub_26A1182E0();
          sub_26A1182E0();
          sub_26A0E48F0(v45, &off_28036C7C0, &off_26A427400);
          if ((v59 & 1) == 0)
          {
            goto LABEL_37;
          }

          goto LABEL_16;
        }
      }

      sub_26A1182E0();
      sub_26A1182E0();
      v37 = &off_28036C7C0;
      v38 = &off_26A427400;
      goto LABEL_35;
    }

    sub_26A1182E0();
LABEL_25:
    v37 = &qword_28036C7C8;
    v38 = &qword_26A425C00;
LABEL_35:
    v39 = v45;
    goto LABEL_36;
  }

  OUTLINED_FUNCTION_37(v45 + v43, 1, v47);
  if (!v36)
  {
    goto LABEL_25;
  }

  sub_26A0E48F0(v45, &off_28036C7C0, &off_26A427400);
LABEL_16:
  v48 = *v44 == *v46 && v44[1] == v46[1];
  if (v48 || (sub_26A425354() & 1) != 0)
  {
    v49 = *(v41 + 20);
    sub_26A424794();
    OUTLINED_FUNCTION_3_4();
    sub_26A119F3C(v50, v51);
    sub_26A424B64();
  }

LABEL_37:
  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A1179E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A119F3C(&qword_28036D188, type metadata accessor for _ProtoSectionHeader_Standard);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A117A64(uint64_t a1)
{
  v2 = sub_26A119F3C(&qword_28036D120, type metadata accessor for _ProtoSectionHeader_Standard);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A117AD4()
{
  sub_26A119F3C(&qword_28036D120, type metadata accessor for _ProtoSectionHeader_Standard);

  return sub_26A4249B4();
}

uint64_t sub_26A117B70()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_28036D0C8);
  __swift_project_value_buffer(v0, qword_28036D0C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A426DD0;
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
  *v10 = "thumbnail";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x277D21870];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = 0x26A44B000;
  *(v13 + 1) = 6;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "component_name";
  *(v15 + 1) = 14;
  v15[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t sub_26A117DE4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_26A424AC4();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_26A117E7C()
{
  OUTLINED_FUNCTION_11_2();
  result = sub_26A117EAC();
  qword_28036D0E0 = result;
  return result;
}

uint64_t sub_26A117EAC()
{
  v1 = OBJC_IVAR____TtCV10SnippetKit24_ProtoSectionHeader_RichP33_A124C83771F5B717D3B1D13C8ACC016313_StorageClass__text1;
  v2 = type metadata accessor for _ProtoTextProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10SnippetKit24_ProtoSectionHeader_RichP33_A124C83771F5B717D3B1D13C8ACC016313_StorageClass__thumbnail;
  v4 = type metadata accessor for _ProtoVisualProperty();
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV10SnippetKit24_ProtoSectionHeader_RichP33_A124C83771F5B717D3B1D13C8ACC016313_StorageClass__action;
  v6 = type metadata accessor for _ProtoActionProperty();
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  v7 = (v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSectionHeader_RichP33_A124C83771F5B717D3B1D13C8ACC016313_StorageClass__componentName);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  return v0;
}

void sub_26A117F4C()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20]();
  v30 = &v30 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20]();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20]();
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
  v25 = (v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSectionHeader_RichP33_A124C83771F5B717D3B1D13C8ACC016313_StorageClass__componentName);
  *v25 = 0;
  v25[1] = 0xE000000000000000;
  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_211();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_211();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_211();
  sub_26A10CF40();
  swift_endAccess();
  v26 = (v2 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSectionHeader_RichP33_A124C83771F5B717D3B1D13C8ACC016313_StorageClass__componentName);
  OUTLINED_FUNCTION_142();
  v28 = *v26;
  v27 = v26[1];

  swift_beginAccess();
  v29 = v25[1];
  *v25 = v28;
  v25[1] = v27;

  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A118238()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t sub_26A11828C()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t sub_26A1182E0()
{
  v1 = OUTLINED_FUNCTION_110();
  v3 = v2(v1);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_26A118334()
{
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSectionHeader_RichP33_A124C83771F5B717D3B1D13C8ACC016313_StorageClass__text1, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSectionHeader_RichP33_A124C83771F5B717D3B1D13C8ACC016313_StorageClass__thumbnail, &qword_28036CAE8, &unk_26A426430);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSectionHeader_RichP33_A124C83771F5B717D3B1D13C8ACC016313_StorageClass__action, &off_28036C7C0, &off_26A427400);
  v1 = *(v0 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSectionHeader_RichP33_A124C83771F5B717D3B1D13C8ACC016313_StorageClass__componentName + 8);

  return v0;
}

uint64_t sub_26A1183C0()
{
  v0 = sub_26A118334();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t _ProtoSectionHeader_Rich.decodeMessage<A>(decoder:)()
{
  v1 = v0;
  v2 = *(type metadata accessor for _ProtoSectionHeader_Rich(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for _ProtoSectionHeader_Rich._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A117F4C();
    *(v1 + v2) = v9;
  }

  OUTLINED_FUNCTION_87();
  return sub_26A1184B0();
}

uint64_t sub_26A1184B0()
{
  while (1)
  {
    result = sub_26A424834();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_26A118590();
        break;
      case 2:
        sub_26A11866C();
        break;
      case 3:
        sub_26A118748();
        break;
      case 4:
        sub_26A118824();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A118590()
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A119F3C(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A11866C()
{
  swift_beginAccess();
  type metadata accessor for _ProtoVisualProperty();
  sub_26A119F3C(qword_2815796B8, type metadata accessor for _ProtoVisualProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A118748()
{
  swift_beginAccess();
  type metadata accessor for _ProtoActionProperty();
  sub_26A119F3C(&qword_28036C928, type metadata accessor for _ProtoActionProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A118824()
{
  swift_beginAccess();
  sub_26A424924();
  return swift_endAccess();
}

uint64_t _ProtoSectionHeader_Rich.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for _ProtoSectionHeader_Rich(0);
  result = sub_26A11891C(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_26A424774();
  }

  return result;
}

uint64_t sub_26A11891C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_26A118A18(a1, a2, a3, a4);
  if (!v4)
  {
    sub_26A118C00(a1, a2, a3, a4);
    sub_26A118DE8(a1, a2, a3, a4);
    v10 = (a1 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSectionHeader_RichP33_A124C83771F5B717D3B1D13C8ACC016313_StorageClass__componentName);
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

uint64_t sub_26A118A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for _ProtoTextProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A118238();
  sub_26A119F3C(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A1182E0();
}

uint64_t sub_26A118C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for _ProtoVisualProperty();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &qword_28036CAE8, &unk_26A426430);
  }

  sub_26A118238();
  sub_26A119F3C(qword_2815796B8, type metadata accessor for _ProtoVisualProperty);
  sub_26A424A84();
  return sub_26A1182E0();
}

uint64_t sub_26A118DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for _ProtoActionProperty();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &off_28036C7C0, &off_26A427400);
  }

  sub_26A118238();
  sub_26A119F3C(&qword_28036C928, type metadata accessor for _ProtoActionProperty);
  sub_26A424A84();
  return sub_26A1182E0();
}

uint64_t static _ProtoSectionHeader_Rich.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for _ProtoSectionHeader_Rich(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {
    v7 = *(a1 + v4);

    v8 = sub_26A1190A4(v5, v6);

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  sub_26A424794();
  OUTLINED_FUNCTION_3_4();
  sub_26A119F3C(v9, v10);
  OUTLINED_FUNCTION_246();
  return sub_26A424B64() & 1;
}

uint64_t sub_26A1190A4(uint64_t a1, uint64_t a2)
{
  v77 = type metadata accessor for _ProtoActionProperty();
  v4 = *(*(v77 - 8) + 64);
  MEMORY[0x28223BE20](v77);
  v73 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7C8, &qword_26A425C00);
  v6 = *(*(v76 - 8) + 64);
  MEMORY[0x28223BE20](v76);
  v78 = &v72 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v74 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v85 = &v72 - v12;
  v83 = type metadata accessor for _ProtoVisualProperty();
  v13 = *(*(v83 - 8) + 64);
  MEMORY[0x28223BE20](v83);
  v75 = (&v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D190, &unk_26A427130);
  v15 = *(*(v81 - 8) + 64);
  MEMORY[0x28223BE20](v81);
  v84 = &v72 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v79 = (&v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20);
  v82 = &v72 - v21;
  v22 = type metadata accessor for _ProtoTextProperty(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v80 = &v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7D0, &qword_26A426DE0);
  v26 = v25 - 8;
  v27 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v72 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v86 = &v72 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v35 = &v72 - v34;
  swift_beginAccess();
  sub_26A10FD9C();
  swift_beginAccess();
  v36 = *(v26 + 56);
  sub_26A10FD9C();
  v37 = a2;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v29, 1, v22) == 1)
  {

    sub_26A0E48F0(v35, &qword_28036C7B8, &unk_26A425BF0);
    v38 = a1;
    if (__swift_getEnumTagSinglePayload(&v29[v36], 1, v22) == 1)
    {
      sub_26A0E48F0(v29, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_8;
    }

LABEL_6:
    v40 = &qword_28036C7D0;
    v41 = &qword_26A426DE0;
    v42 = v29;
LABEL_36:
    sub_26A0E48F0(v42, v40, v41);
    goto LABEL_37;
  }

  v39 = v86;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(&v29[v36], 1, v22) == 1)
  {

    sub_26A0E48F0(v35, &qword_28036C7B8, &unk_26A425BF0);
    sub_26A1182E0();
    goto LABEL_6;
  }

  v43 = v80;
  sub_26A118238();

  v44 = static _ProtoTextProperty.== infix(_:_:)(v39, v43);
  sub_26A1182E0();
  sub_26A0E48F0(v35, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A1182E0();
  v38 = a1;
  sub_26A0E48F0(v29, &qword_28036C7B8, &unk_26A425BF0);
  if ((v44 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_8:
  swift_beginAccess();
  v45 = v82;
  sub_26A10FD9C();
  swift_beginAccess();
  v46 = *(v81 + 48);
  v47 = v84;
  sub_26A10FD9C();
  sub_26A10FD9C();
  v48 = v83;
  if (__swift_getEnumTagSinglePayload(v47, 1, v83) == 1)
  {
    sub_26A0E48F0(v45, &qword_28036CAE8, &unk_26A426430);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v47 + v46, 1, v48);
    v50 = v85;
    if (EnumTagSinglePayload == 1)
    {
      sub_26A0E48F0(v47, &qword_28036CAE8, &unk_26A426430);
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v51 = v79;
  sub_26A10FD9C();
  v52 = __swift_getEnumTagSinglePayload(v47 + v46, 1, v48);
  v50 = v85;
  if (v52 == 1)
  {
    sub_26A0E48F0(v45, &qword_28036CAE8, &unk_26A426430);
    sub_26A1182E0();
LABEL_13:
    v40 = &qword_28036D190;
    v41 = &unk_26A427130;
    v42 = v47;
    goto LABEL_36;
  }

  v53 = v75;
  sub_26A118238();
  v54 = static _ProtoVisualProperty.== infix(_:_:)(v51, v53);
  sub_26A1182E0();
  sub_26A0E48F0(v45, &qword_28036CAE8, &unk_26A426430);
  sub_26A1182E0();
  sub_26A0E48F0(v47, &qword_28036CAE8, &unk_26A426430);
  if ((v54 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_15:
  swift_beginAccess();
  sub_26A10FD9C();
  swift_beginAccess();
  v55 = *(v76 + 48);
  v56 = v78;
  sub_26A10FD9C();
  sub_26A10FD9C();
  v57 = v77;
  if (__swift_getEnumTagSinglePayload(v56, 1, v77) != 1)
  {
    v65 = v74;
    sub_26A10FD9C();
    if (__swift_getEnumTagSinglePayload(v56 + v55, 1, v57) == 1)
    {
      sub_26A0E48F0(v50, &off_28036C7C0, &off_26A427400);
      sub_26A1182E0();
      goto LABEL_26;
    }

    v66 = v73;
    sub_26A118238();
    v67 = *v65;
    v68 = *v66;
    sub_26A0E36D8();
    if ((v69 & 1) == 0 || (v65[1] == v66[1] ? (v70 = v65[2] == v66[2]) : (v70 = 0), !v70 && (sub_26A425354() & 1) == 0))
    {
      sub_26A1182E0();
      sub_26A0E48F0(v50, &off_28036C7C0, &off_26A427400);
      sub_26A1182E0();
      v42 = v56;
      v40 = &off_28036C7C0;
      v41 = &off_26A427400;
      goto LABEL_36;
    }

    v71 = *(v57 + 24);
    sub_26A424794();
    sub_26A119F3C(qword_2815792E0, MEMORY[0x277D216C8]);
    LOBYTE(v71) = sub_26A424B64();
    sub_26A1182E0();
    sub_26A0E48F0(v50, &off_28036C7C0, &off_26A427400);
    sub_26A1182E0();
    sub_26A0E48F0(v56, &off_28036C7C0, &off_26A427400);
    if (v71)
    {
      goto LABEL_18;
    }

LABEL_37:

    return 0;
  }

  sub_26A0E48F0(v50, &off_28036C7C0, &off_26A427400);
  if (__swift_getEnumTagSinglePayload(v56 + v55, 1, v57) != 1)
  {
LABEL_26:
    v40 = &qword_28036C7C8;
    v41 = &qword_26A425C00;
    v42 = v56;
    goto LABEL_36;
  }

  sub_26A0E48F0(v56, &off_28036C7C0, &off_26A427400);
LABEL_18:
  v58 = (v38 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSectionHeader_RichP33_A124C83771F5B717D3B1D13C8ACC016313_StorageClass__componentName);
  swift_beginAccess();
  v59 = *v58;
  v60 = v58[1];
  v61 = (v37 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSectionHeader_RichP33_A124C83771F5B717D3B1D13C8ACC016313_StorageClass__componentName);
  swift_beginAccess();
  if (v59 == *v61 && v60 == v61[1])
  {

    return 1;
  }

  v63 = sub_26A425354();

  result = 0;
  if (v63)
  {
    return 1;
  }

  return result;
}

uint64_t sub_26A119CC8(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_26A425504();
  a1(0);
  sub_26A119F3C(a2, a3);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A119DCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A119F3C(&qword_28036D180, type metadata accessor for _ProtoSectionHeader_Rich);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A119E4C(uint64_t a1)
{
  v2 = sub_26A119F3C(&qword_28036D138, type metadata accessor for _ProtoSectionHeader_Rich);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A119EBC()
{
  sub_26A119F3C(&qword_28036D138, type metadata accessor for _ProtoSectionHeader_Rich);

  return sub_26A4249B4();
}

uint64_t sub_26A119F3C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_26A11A1EC()
{
  sub_26A424794();
  if (v0 <= 0x3F)
  {
    sub_26A11A4E4(319, &qword_28036C808, type metadata accessor for _ProtoTextProperty);
    if (v1 <= 0x3F)
    {
      sub_26A11A4E4(319, qword_281579718, type metadata accessor for _ProtoActionProperty);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_26A11A2F8()
{
  result = sub_26A424794();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for _ProtoSectionHeader_Rich._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_26A11A384()
{
  sub_26A11A4E4(319, &qword_28036C808, type metadata accessor for _ProtoTextProperty);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_26A11A4E4(319, &qword_28036D178, type metadata accessor for _ProtoVisualProperty);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_26A11A4E4(319, qword_281579718, type metadata accessor for _ProtoActionProperty);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_26A11A4E4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_6_3()
{
  result = type metadata accessor for _ProtoSectionHeader_Rich(0);
  v2 = *(v0 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_11_2()
{
  v0 = type metadata accessor for _ProtoSectionHeader_Rich._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_22_2@<X0>(uint64_t a1@<X8>)
{
  *v1 = a1;
  *(v1 + 8) = 0;
  v4 = v1 + *(v2 + 28);

  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t OUTLINED_FUNCTION_23_2@<X0>(uint64_t a1@<X8>)
{
  *v2 = a1;
  *(v2 + 8) = 0;
  v4 = v2 + *(v1 + 28);

  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t OUTLINED_FUNCTION_24_2()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_25_1()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_26_1()
{

  return sub_26A10FD9C();
}

uint64_t OUTLINED_FUNCTION_27_1()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_32_0(uint64_t result)
{
  *v1 = result;
  *(result + 24) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_40_0@<X0>(uint64_t a1@<X8>)
{
  *v1 = a1;
  v1[1] = 0;
  v1[2] = 0xE000000000000000;
  v4 = v1 + *(v2 + 24);

  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t OUTLINED_FUNCTION_41_1()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t OUTLINED_FUNCTION_43_1(uint64_t a1)
{
  v2 = *(v1 + *(type metadata accessor for _ProtoSectionHeader_Rich(a1) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_44_1@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t OUTLINED_FUNCTION_49_1()
{

  return sub_26A118238();
}

uint64_t ImageElement.PNGData.data.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = OUTLINED_FUNCTION_175();
  sub_26A0E45C0(v3, v4);
  return OUTLINED_FUNCTION_175();
}

uint64_t ImageElement.PNGData.darkModeData.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  result = 0;
  switch(v2 >> 62)
  {
    case 1uLL:
      v6 = v1;
      v7 = v1 >> 32;
      goto LABEL_6;
    case 2uLL:
      v6 = *(v1 + 16);
      v7 = *(v1 + 24);
LABEL_6:
      if (v6 == v7)
      {
        return 0;
      }

      goto LABEL_3;
    case 3uLL:
      return result;
    default:
      if ((v2 & 0xFF000000000000) == 0)
      {
        return 0;
      }

LABEL_3:
      v4 = OUTLINED_FUNCTION_175();
      sub_26A0E45C0(v4, v5);
      return OUTLINED_FUNCTION_175();
  }
}

uint64_t ImageElement.PNGData.imageStyle.getter@<X0>(char *a1@<X8>)
{
  v2 = *(v1 + 24);
  v4 = *(v1 + 16);
  v5 = v2;
  return sub_26A217A84(&v4, a1);
}

void ImageElement.PNGData.fixedWidth.getter()
{
  OUTLINED_FUNCTION_76();
  v1 = type metadata accessor for _ProtoOptionalBool(0);
  v2 = OUTLINED_FUNCTION_12(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18();
  v7 = (v6 - v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D198, &qword_26A432940);
  v9 = OUTLINED_FUNCTION_41(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v16 = *(OUTLINED_FUNCTION_24_3() + 44);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_20_2();
  if (v0 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_10_2();
    if (v17)
    {
      *v7 = 0;
      v18 = &v7[*(v1 + 20)];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_10_2();
      if (!v17)
      {
        sub_26A0E48F0(v14, &qword_28036D198, &qword_26A432940);
      }
    }

    else
    {
      sub_26A11C1EC();
    }

    OUTLINED_FUNCTION_9_2();
  }

  OUTLINED_FUNCTION_75();
}

void ImageElement.PNGData.fixedHeight.getter()
{
  OUTLINED_FUNCTION_76();
  v1 = type metadata accessor for _ProtoOptionalBool(0);
  v2 = OUTLINED_FUNCTION_12(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18();
  v7 = (v6 - v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D198, &qword_26A432940);
  v9 = OUTLINED_FUNCTION_41(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v16 = *(OUTLINED_FUNCTION_24_3() + 40);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_20_2();
  if (v0 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_10_2();
    if (v17)
    {
      *v7 = 0;
      v18 = &v7[*(v1 + 20)];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_10_2();
      if (!v17)
      {
        sub_26A0E48F0(v14, &qword_28036D198, &qword_26A432940);
      }
    }

    else
    {
      sub_26A11C1EC();
    }

    OUTLINED_FUNCTION_9_2();
  }

  OUTLINED_FUNCTION_75();
}

void ImageElement.PNGData.aspectRatio.getter()
{
  OUTLINED_FUNCTION_76();
  v25 = v0;
  v1 = type metadata accessor for _ProtoImageElement.AspectRatio(0);
  v2 = OUTLINED_FUNCTION_12(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18();
  v7 = (v6 - v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D1A0, &qword_26A427150);
  v9 = OUTLINED_FUNCTION_41(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v24 - v16;
  v18 = *(type metadata accessor for _ProtoImageElement.DataMessage(0) + 36);
  sub_26A10FD9C();
  v19 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, 1, v1);
  v21 = v25;
  sub_26A0E48F0(v17, &qword_28036D1A0, &qword_26A427150);
  if (EnumTagSinglePayload != 1)
  {
    sub_26A10FD9C();
    if (__swift_getEnumTagSinglePayload(v14, 1, v1) == 1)
    {
      *v7 = 0;
      v22 = v7 + *(v1 + 24);
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      if (__swift_getEnumTagSinglePayload(v14, 1, v1) != 1)
      {
        sub_26A0E48F0(v14, &qword_28036D1A0, &qword_26A427150);
      }
    }

    else
    {
      sub_26A11C1EC();
    }

    sub_26A11C1EC();
    v19 = 0;
  }

  v23 = type metadata accessor for ImageElement.AspectRatio();
  __swift_storeEnumTagSinglePayload(v21, v19, 1, v23);
  OUTLINED_FUNCTION_75();
}

uint64_t ImageElement.PNGData.init(_:darkModeData:imageStyle:aspectRatio:fixedWidth:fixedHeight:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, char *a5, uint64_t a6)
{
  v11 = *a5;
  type metadata accessor for _ProtoImageElement.DataMessage(0);
  OUTLINED_FUNCTION_0_4();
  sub_26A11C064(v12, v13);
  sub_26A4249C4();
  sub_26A0E4784(a1, a2);
  sub_26A10E794(a3, a4);
  return sub_26A0E48F0(a6, &qword_28036CBB8, &qword_26A4265C8);
}

uint64_t sub_26A11AEE8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, int a6, int a7, int a8)
{
  v84 = a8;
  v78 = a6;
  v79 = a7;
  v72 = a4;
  v77 = type metadata accessor for _ProtoImageElement.AspectRatio(0);
  v12 = OUTLINED_FUNCTION_12(v77);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_18();
  v76 = v16 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBB8, &qword_26A4265C8);
  OUTLINED_FUNCTION_41(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v20);
  v81 = &v72 - v21;
  v80 = type metadata accessor for ImageElement.AspectRatio();
  v22 = OUTLINED_FUNCTION_12(v80);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_18();
  v75 = v26 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D198, &qword_26A432940);
  v28 = OUTLINED_FUNCTION_41(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_17();
  v73 = v31 - v32;
  MEMORY[0x28223BE20](v33);
  v35 = &v72 - v34;
  v36 = type metadata accessor for _ProtoOptionalBool(0);
  v37 = OUTLINED_FUNCTION_12(v36);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_17();
  v74 = (v40 - v41);
  MEMORY[0x28223BE20](v42);
  v44 = &v72 - v43;
  v45 = *a1;
  v46 = *(a1 + 8);
  *a1 = a2;
  *(a1 + 8) = a3;
  sub_26A0E45C0(a2, a3);
  sub_26A0E4784(v45, v46);
  if (a5 >> 60 != 15)
  {
    v47 = *(a1 + 32);
    v48 = *(a1 + 40);
    v49 = v72;
    sub_26A0E45C0(v72, a5);
    sub_26A0E4784(v47, v48);
    *(a1 + 32) = v49;
    *(a1 + 40) = a5;
  }

  v85 = v78;
  sub_26A217AB0(&v82);
  v50 = v83;
  *(a1 + 16) = v82;
  *(a1 + 24) = v50;
  v51 = v79;
  v52 = v84;
  if (v79 != 2)
  {
    v53 = *(type metadata accessor for _ProtoImageElement.DataMessage(0) + 44);
    sub_26A10FD9C();
    OUTLINED_FUNCTION_12_1(v35);
    if (v54)
    {
      v55 = &v44[*(v36 + 20)];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_12_1(v35);
      if (!v54)
      {
        sub_26A0E48F0(v35, &qword_28036D198, &qword_26A432940);
      }
    }

    else
    {
      sub_26A11C1EC();
    }

    *v44 = v51 & 1;
    sub_26A0E48F0(a1 + v53, &qword_28036D198, &qword_26A432940);
    OUTLINED_FUNCTION_8_2();
    v56 = OUTLINED_FUNCTION_16_1();
    __swift_storeEnumTagSinglePayload(v56, v57, v58, v36);
  }

  if (v52 != 2)
  {
    v59 = *(type metadata accessor for _ProtoImageElement.DataMessage(0) + 40);
    v60 = v73;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_12_1(v60);
    if (v54)
    {
      v62 = v74;
      v61 = &v74[*(v36 + 20)];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_12_1(v60);
      if (!v54)
      {
        sub_26A0E48F0(v60, &qword_28036D198, &qword_26A432940);
      }
    }

    else
    {
      v62 = v74;
      sub_26A11C1EC();
    }

    *v62 = v52 & 1;
    sub_26A0E48F0(a1 + v59, &qword_28036D198, &qword_26A432940);
    OUTLINED_FUNCTION_8_2();
    v63 = OUTLINED_FUNCTION_16_1();
    __swift_storeEnumTagSinglePayload(v63, v64, v65, v36);
  }

  v66 = v81;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v66, 1, v80) == 1)
  {
    return sub_26A0E48F0(v66, &qword_28036CBB8, &qword_26A4265C8);
  }

  sub_26A11C1EC();
  sub_26A11C1EC();
  v68 = type metadata accessor for _ProtoImageElement.DataMessage(0);
  sub_26A0E48F0(a1 + *(v68 + 36), &qword_28036D1A0, &qword_26A427150);
  sub_26A11C1EC();
  v69 = OUTLINED_FUNCTION_16_1();
  return __swift_storeEnumTagSinglePayload(v69, v70, v71, v77);
}

void ImageElement.PNGData.init(_:imageStyle:aspectRatio:fixedWidth:fixedHeight:)()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBB8, &qword_26A4265C8);
  OUTLINED_FUNCTION_41(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_15_2();
  v13 = *v4;
  OUTLINED_FUNCTION_25_2();
  type metadata accessor for _ProtoImageElement.DataMessage(0);
  OUTLINED_FUNCTION_0_4();
  sub_26A11C064(v14, v15);
  OUTLINED_FUNCTION_22_3();
  sub_26A4249C4();
  sub_26A0E4784(v8, v6);
  OUTLINED_FUNCTION_27_2(v2);
  OUTLINED_FUNCTION_27_2(v0);
  OUTLINED_FUNCTION_75();
}

void ImageElement.PNGData.init(_:imageStyle:aspectRatio:)()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBB8, &qword_26A4265C8);
  OUTLINED_FUNCTION_41(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_15_2();
  v13 = *v4;
  OUTLINED_FUNCTION_25_2();
  type metadata accessor for _ProtoImageElement.DataMessage(0);
  OUTLINED_FUNCTION_19_1(xmmword_26A427140);
  OUTLINED_FUNCTION_0_4();
  sub_26A11C064(v14, v15);
  OUTLINED_FUNCTION_22_3();
  sub_26A4249C4();
  sub_26A0E4784(v8, v6);
  OUTLINED_FUNCTION_27_2(v2);
  OUTLINED_FUNCTION_27_2(v0);
  OUTLINED_FUNCTION_75();
}

uint64_t ImageElement.PNGData.hash(into:)()
{
  type metadata accessor for _ProtoImageElement.DataMessage(0);
  OUTLINED_FUNCTION_0_4();
  sub_26A11C064(v0, v1);

  return sub_26A424B44();
}

uint64_t ImageElement.PNGData.hashValue.getter()
{
  sub_26A425504();
  type metadata accessor for _ProtoImageElement.DataMessage(0);
  OUTLINED_FUNCTION_0_4();
  sub_26A11C064(v0, v1);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A11B734()
{
  sub_26A425504();
  type metadata accessor for _ProtoImageElement.DataMessage(0);
  sub_26A11C064(&qword_28036D1B0, type metadata accessor for _ProtoImageElement.DataMessage);
  sub_26A424B44();
  return sub_26A425554();
}

void static ImageElement.pngData(_:darkModeData:imageStyle:aspectRatio:fixedWidth:fixedHeight:idioms:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_76();
  v59 = v21;
  v60 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v62 = v33;
  v61 = a21;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBB8, &qword_26A4265C8);
  OUTLINED_FUNCTION_41(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v37);
  v39 = &v58 - v38;
  v40 = type metadata accessor for ImageElement.PNGData();
  v41 = OUTLINED_FUNCTION_41(v40);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_18();
  v46 = v45 - v44;
  LOBYTE(v24) = *v24;
  sub_26A10FD9C();
  type metadata accessor for _ProtoImageElement.DataMessage(0);
  v65 = v32;
  v66 = v30;
  v67 = v28;
  v68 = v26;
  v69 = v24;
  v70 = v59;
  v71 = v60;
  v72 = v39;
  OUTLINED_FUNCTION_0_4();
  sub_26A11C064(v47, v48);
  OUTLINED_FUNCTION_22_3();
  sub_26A4249C4();
  sub_26A0E48F0(v39, &qword_28036CBB8, &qword_26A4265C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CFB8, &qword_26A426BE0);
  v49 = type metadata accessor for ImageElement.SourceType(0);
  OUTLINED_FUNCTION_21_2(v49);
  v51 = *(v50 + 72);
  v53 = (*(v52 + 80) + 32) & ~*(v52 + 80);
  v54 = swift_allocObject();
  OUTLINED_FUNCTION_4_4(v54, xmmword_26A426410);
  sub_26A11C140();
  swift_storeEnumTagMultiPayload();
  v73 = v54;
  type metadata accessor for _ProtoImageElement(0);
  v63 = &v73;
  v64 = v61;
  OUTLINED_FUNCTION_7_2();
  sub_26A11C064(v55, v56);
  sub_26A4249C4();
  OUTLINED_FUNCTION_6_4();
  sub_26A11C194(v46, v57);
  swift_setDeallocating();
  sub_26A10C318();
  OUTLINED_FUNCTION_75();
}

uint64_t type metadata accessor for ImageElement.PNGData()
{
  result = qword_28157AFA0;
  if (!qword_28157AFA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void static ImageElement.pngData(_:imageStyle:aspectRatio:idioms:)()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBB8, &qword_26A4265C8);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_15_2();
  v7 = type metadata accessor for ImageElement.PNGData();
  v8 = OUTLINED_FUNCTION_41(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18();
  v13 = v12 - v11;
  v14 = *v2;
  sub_26A10FD9C();
  type metadata accessor for _ProtoImageElement.DataMessage(0);
  OUTLINED_FUNCTION_19_1(xmmword_26A427140);
  OUTLINED_FUNCTION_0_4();
  sub_26A11C064(v15, v16);
  OUTLINED_FUNCTION_22_3();
  sub_26A4249C4();
  sub_26A0E48F0(v0, &qword_28036CBB8, &qword_26A4265C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CFB8, &qword_26A426BE0);
  v17 = type metadata accessor for ImageElement.SourceType(0);
  OUTLINED_FUNCTION_21_2(v17);
  v19 = *(v18 + 72);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  OUTLINED_FUNCTION_4_4(v22, xmmword_26A426410);
  sub_26A11C140();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ProtoImageElement(0);
  OUTLINED_FUNCTION_7_2();
  sub_26A11C064(v23, v24);
  sub_26A4249C4();
  OUTLINED_FUNCTION_6_4();
  sub_26A11C194(v13, v25);
  swift_setDeallocating();
  sub_26A10C318();
  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A11BD3C(void *a1, uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v24 = a3;
  v4 = type metadata accessor for _ProtoImageElement.Source(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = type metadata accessor for ImageElement.SourceType(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  v27 = MEMORY[0x277D84F90];
  sub_26A10D200();
  v13 = v27;
  if (v12)
  {
    v14 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v26 = *(v8 + 72);
    do
    {
      sub_26A11C140();
      sub_26A3E31B8();
      sub_26A11C194(v11, type metadata accessor for ImageElement.SourceType);
      v27 = v13;
      v15 = *(v13 + 16);
      if (v15 >= *(v13 + 24) >> 1)
      {
        sub_26A10D200();
        v13 = v27;
      }

      *(v13 + 16) = v15 + 1;
      v16 = v13 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v17 = *(v5 + 72);
      sub_26A11C1EC();
      v14 += v26;
      --v12;
    }

    while (v12);
  }

  v18 = v25;
  v19 = *v25;

  *v18 = v13;

  v21 = sub_26A419264(v20);
  v22 = v18[1];

  v18[1] = v21;
  return result;
}

uint64_t sub_26A11C064(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A11C0D4()
{
  result = type metadata accessor for _ProtoImageElement.DataMessage(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A11C140()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t sub_26A11C194(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_26A11C1EC()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t OUTLINED_FUNCTION_8_2()
{

  return sub_26A11C1EC();
}

uint64_t OUTLINED_FUNCTION_9_2()
{
  v2 = *v0;

  return sub_26A11C194(v0, type metadata accessor for _ProtoOptionalBool);
}

void OUTLINED_FUNCTION_19_1(__n128 a1)
{
  *(v3 - 128) = a1;
  *(v3 - 112) = v2;
  *(v3 - 111) = 514;
  *(v3 - 104) = v1;
}

uint64_t OUTLINED_FUNCTION_20_2()
{
  __swift_getEnumTagSinglePayload(v3, 1, v0);

  return sub_26A0E48F0(v3, v1, v2);
}

uint64_t OUTLINED_FUNCTION_23_3()
{

  return sub_26A10FD9C();
}

uint64_t OUTLINED_FUNCTION_24_3()
{

  return type metadata accessor for _ProtoImageElement.DataMessage(0);
}

uint64_t OUTLINED_FUNCTION_25_2()
{

  return sub_26A10FD9C();
}

uint64_t OUTLINED_FUNCTION_26_2()
{

  return type metadata accessor for _ProtoImageElement.DataMessage(0);
}

uint64_t OUTLINED_FUNCTION_27_2(uint64_t a1)
{

  return sub_26A0E48F0(a1, v1, v2);
}

uint64_t sub_26A11C4D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8F8, &unk_26A426440);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _ProtoPlayer.playerButton.getter()
{
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_1_5(v6, v20);
  OUTLINED_FUNCTION_6_5();
  if (v7)
  {
    sub_26A0E48F0(v0, &qword_28036C8F8, &unk_26A426440);
LABEL_6:
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v9 = type metadata accessor for _ProtoPlayerButton(0);
    v10 = *(v9 + 20);
    v11 = type metadata accessor for _ProtoButton(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v11);
    v15 = *(v9 + 24);
    OUTLINED_FUNCTION_92();
    return __swift_storeEnumTagSinglePayload(v16, v17, v18, v11);
  }

  OUTLINED_FUNCTION_21_3();
  if (swift_getEnumCaseMultiPayload())
  {
    sub_26A11C870();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_246();
  return sub_26A11C9E0();
}

void (*_ProtoPlayer.playerButton.modify())(uint64_t **a1, char a2)
{
  v2 = OUTLINED_FUNCTION_17_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_16_2(v3);
  v4 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15_3(v6);
  v8 = type metadata accessor for _ProtoPlayerButton(v7);
  OUTLINED_FUNCTION_12(v8);
  v10 = *(v9 + 64);
  *(v1 + 16) = __swift_coroFrameAllocStub(v10);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_5_4(v11);
  OUTLINED_FUNCTION_2_2();
  if (v12)
  {
    sub_26A0E48F0(v0, &qword_28036C8F8, &unk_26A426440);
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_157();
      sub_26A11C9E0();
      return sub_26A11C840;
    }

    sub_26A11C870();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v14 = *(v8 + 20);
  v15 = type metadata accessor for _ProtoButton(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v15);
  v19 = *(v8 + 24);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v15);
  return sub_26A11C840;
}

uint64_t sub_26A11C870()
{
  v1 = OUTLINED_FUNCTION_11_3();
  v3 = v2(v1);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t _ProtoPlayer.customCanvas.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_12_2();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_1_5(v8, v13);
  OUTLINED_FUNCTION_6_5();
  if (v9)
  {
    sub_26A0E48F0(v1, &qword_28036C8F8, &unk_26A426440);
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A11C9E0();
    }

    sub_26A11C870();
  }

  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = xmmword_26A426400;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  *(a1 + 64) = 0;
  *(a1 + 66) = 0;
  v12 = a1 + *(type metadata accessor for _ProtoCustomCanvas() + 44);
  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t sub_26A11C9E0()
{
  v1 = OUTLINED_FUNCTION_53();
  v3 = v2(v1);
  OUTLINED_FUNCTION_12(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_175();
  v7(v6);
  return v0;
}

uint64_t sub_26A11CA34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = a5(0);
  OUTLINED_FUNCTION_41(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20]();
  v12 = &v14 - v11;
  OUTLINED_FUNCTION_12_2();
  sub_26A11CC80();
  return a7(v12);
}

void (*_ProtoPlayer.customCanvas.modify())(uint64_t **a1, char a2)
{
  v2 = OUTLINED_FUNCTION_17_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_16_2(v3);
  v4 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_15_3(v6);
  v7 = type metadata accessor for _ProtoCustomCanvas();
  OUTLINED_FUNCTION_12(v7);
  v9 = *(v8 + 64);
  *(v1 + 16) = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_5_4(v10);
  OUTLINED_FUNCTION_2_2();
  if (v11)
  {
    sub_26A0E48F0(v0, &qword_28036C8F8, &unk_26A426440);
LABEL_7:
    *v9 = 0;
    *(v9 + 8) = 0xE000000000000000;
    *(v9 + 16) = 0;
    *(v9 + 24) = 0xE000000000000000;
    *(v9 + 32) = xmmword_26A426400;
    *(v9 + 48) = 0;
    *(v9 + 56) = 0xE000000000000000;
    *(v9 + 64) = 0;
    *(v9 + 66) = 0;
    v13 = v9 + *(v7 + 44);
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    return sub_26A11CC50;
  }

  OUTLINED_FUNCTION_12_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_26A11C870();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_157();
  sub_26A11C9E0();
  return sub_26A11CC50;
}

uint64_t sub_26A11CC80()
{
  v1 = OUTLINED_FUNCTION_53();
  v3 = v2(v1);
  OUTLINED_FUNCTION_12(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_175();
  v7(v6);
  return v0;
}

uint64_t _ProtoPlayer.standardPlayerButton.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_12_2();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_1_5(v8, v23);
  OUTLINED_FUNCTION_6_5();
  if (v9)
  {
    sub_26A0E48F0(v1, &qword_28036C8F8, &unk_26A426440);
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A11C9E0();
    }

    sub_26A11C870();
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  v12 = type metadata accessor for _ProtoStandardPlayerButton(0);
  v13 = a1 + v12[6];
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v14 = v12[7];
  v15 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v15);
  v19 = v12[8];
  OUTLINED_FUNCTION_92();
  return __swift_storeEnumTagSinglePayload(v20, v21, v22, v15);
}

uint64_t sub_26A11CE30()
{
  sub_26A0E48F0(v0, &qword_28036C8F8, &unk_26A426440);
  OUTLINED_FUNCTION_157();
  sub_26A11C9E0();
  v1 = type metadata accessor for _ProtoPlayer.OneOf_Control(0);
  OUTLINED_FUNCTION_21_3();
  swift_storeEnumTagMultiPayload();

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

void (*_ProtoPlayer.standardPlayerButton.modify())(uint64_t **a1, char a2)
{
  v2 = OUTLINED_FUNCTION_17_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_16_2(v3);
  v4 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15_3(v6);
  v8 = type metadata accessor for _ProtoStandardPlayerButton(v7);
  OUTLINED_FUNCTION_12(v8);
  v10 = *(v9 + 64);
  *(v1 + 16) = __swift_coroFrameAllocStub(v10);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_5_4(v11);
  OUTLINED_FUNCTION_2_2();
  if (v12)
  {
    sub_26A0E48F0(v0, &qword_28036C8F8, &unk_26A426440);
LABEL_7:
    *v10 = 0;
    v10[1] = 0xE000000000000000;
    v10[2] = 0;
    v10[3] = 0xE000000000000000;
    v14 = v10 + v8[6];
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v15 = v8[7];
    v16 = type metadata accessor for _ProtoActionProperty();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v16);
    v20 = v8[8];
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v16);
    return sub_26A11D040;
  }

  OUTLINED_FUNCTION_12_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    sub_26A11C870();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_157();
  sub_26A11C9E0();
  return sub_26A11D040;
}

void sub_26A11D070(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  v5 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = **a1;
  if (a2)
  {
    v8 = (*a1)[3];
    sub_26A11CC80();
    sub_26A0E48F0(v7, &qword_28036C8F8, &unk_26A426440);
    sub_26A11C9E0();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_22_4();
    sub_26A11C870();
  }

  else
  {
    sub_26A0E48F0(**a1, &qword_28036C8F8, &unk_26A426440);
    sub_26A11C9E0();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_22_4();
  }

  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

uint64_t _ProtoPlayer.idioms.getter()
{
  v1 = *(v0 + *(type metadata accessor for _ProtoPlayer(0) + 20));
}

uint64_t _ProtoPlayer.idioms.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for _ProtoPlayer(0) + 20);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t (*_ProtoPlayer.idioms.modify())()
{
  v0 = OUTLINED_FUNCTION_11_3();
  v1 = *(type metadata accessor for _ProtoPlayer(v0) + 20);
  return nullsub_1;
}

uint64_t _ProtoPlayer.identifier.getter()
{
  v1 = (v0 + *(type metadata accessor for _ProtoPlayer(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_175();
}

uint64_t _ProtoPlayer.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for _ProtoPlayer(0) + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*_ProtoPlayer.identifier.modify())()
{
  v0 = OUTLINED_FUNCTION_11_3();
  v1 = *(type metadata accessor for _ProtoPlayer(v0) + 24);
  return nullsub_1;
}

uint64_t _ProtoPlayer.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for _ProtoPlayer(0) + 28);
  v4 = sub_26A424794();
  v5 = OUTLINED_FUNCTION_12(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t _ProtoPlayer.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for _ProtoPlayer(0) + 28);
  v4 = sub_26A424794();
  OUTLINED_FUNCTION_12(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, a1);
}

uint64_t (*_ProtoPlayer.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_11_3();
  v1 = *(type metadata accessor for _ProtoPlayer(v0) + 28);
  return nullsub_1;
}

uint64_t static _ProtoPlayer.OneOf_Control.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v40[1] = a2;
  v2 = type metadata accessor for _ProtoStandardPlayerButton(0);
  v3 = OUTLINED_FUNCTION_41(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  v40[0] = v7 - v6;
  v8 = type metadata accessor for _ProtoCustomCanvas();
  v9 = OUTLINED_FUNCTION_41(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_18();
  v14 = v13 - v12;
  v15 = type metadata accessor for _ProtoPlayerButton(0);
  v16 = OUTLINED_FUNCTION_41(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_18();
  v19 = type metadata accessor for _ProtoPlayer.OneOf_Control(0);
  v20 = OUTLINED_FUNCTION_12(v19);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v24 = MEMORY[0x28223BE20](v23);
  v26 = v40 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D1D8, &qword_26A4271E0);
  OUTLINED_FUNCTION_41(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_39();
  v31 = MEMORY[0x28223BE20](v30);
  v33 = v40 - v32;
  v34 = *(v31 + 56);
  sub_26A11CC80();
  sub_26A11CC80();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_26A11CC80();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_26A11C9E0();
        v36 = static _ProtoCustomCanvas.== infix(_:_:)(v26, v14);
        sub_26A11C870();
LABEL_11:
        sub_26A11C870();
        OUTLINED_FUNCTION_7_3();
        sub_26A11C870();
        return v36 & 1;
      }
    }

    else
    {
      sub_26A11CC80();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        sub_26A11C9E0();
        static _ProtoStandardPlayerButton.== infix(_:_:)();
        v36 = v37;
        sub_26A11C870();
        goto LABEL_11;
      }
    }
  }

  else
  {
    sub_26A11CC80();
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_26A11C9E0();
      static _ProtoPlayerButton.== infix(_:_:)();
      v36 = v38;
      sub_26A11C870();
      goto LABEL_11;
    }
  }

  sub_26A11C870();
  sub_26A0E48F0(v33, &qword_28036D1D8, &qword_26A4271E0);
  v36 = 0;
  return v36 & 1;
}

uint64_t _ProtoPlayer.init()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for _ProtoPlayer.OneOf_Control(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = type metadata accessor for _ProtoPlayer(0);
  *(a1 + v6[5]) = MEMORY[0x277D84F90];
  v7 = (a1 + v6[6]);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = a1 + v6[7];
  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t sub_26A11D918()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_28036D1C0);
  __swift_project_value_buffer(v0, qword_28036D1C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A4271D0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "player_button";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "custom_canvas";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 5;
  *v12 = "standard_player_button";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "idioms";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v15 = *MEMORY[0x277D21870];
  v9();
  v16 = (v5 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 4;
  *v17 = "identifier";
  *(v17 + 1) = 10;
  v17[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t static _ProtoPlayer._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_28036C008 != -1)
  {
    swift_once();
  }

  v2 = sub_26A424AC4();
  v3 = __swift_project_value_buffer(v2, qword_28036D1C0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t _ProtoPlayer.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_26A424834();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_10_3();
        sub_26A11DD20(v3, v4, v5, v6);
        break;
      case 2:
        v11 = OUTLINED_FUNCTION_10_3();
        sub_26A11E218(v11, v12, v13, v14);
        break;
      case 3:
        OUTLINED_FUNCTION_246();
        sub_26A11E710();
        break;
      case 4:
        OUTLINED_FUNCTION_246();
        sub_26A11E784();
        break;
      case 5:
        v7 = OUTLINED_FUNCTION_10_3();
        sub_26A11E7E8(v7, v8, v9, v10);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A11DD20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for _ProtoPlayerButton(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8F8, &unk_26A426440);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for _ProtoPlayer.OneOf_Control(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D248, &qword_26A4273C8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_26A0E4894(a1, v12, &qword_28036C8F8, &unk_26A426440);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A0E48F0(v12, &qword_28036C8F8, &unk_26A426440);
  }

  else
  {
    sub_26A11C9E0();
    sub_26A11C9E0();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_26A11C870();
    }

    else
    {
      sub_26A0E48F0(v22, &qword_28036D248, &qword_26A4273C8);
      sub_26A11C9E0();
      sub_26A11C9E0();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }
  }

  sub_26A11FB3C(&qword_28036D238, type metadata accessor for _ProtoPlayerButton);
  v23 = v33;
  sub_26A424944();
  if (v23)
  {
    v24 = v22;
    return sub_26A0E48F0(v24, &qword_28036D248, &qword_26A4273C8);
  }

  sub_26A0E4894(v22, v20, &qword_28036D248, &qword_26A4273C8);
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_26A0E48F0(v22, &qword_28036D248, &qword_26A4273C8);
    v24 = v20;
    return sub_26A0E48F0(v24, &qword_28036D248, &qword_26A4273C8);
  }

  sub_26A11C9E0();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v26 = v31;
  sub_26A0E48F0(v22, &qword_28036D248, &qword_26A4273C8);
  v27 = v29;
  sub_26A0E48F0(v29, &qword_28036C8F8, &unk_26A426440);
  sub_26A11C9E0();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_26A11E218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for _ProtoCustomCanvas();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8F8, &unk_26A426440);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for _ProtoPlayer.OneOf_Control(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCC0, &qword_26A426750);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_26A0E4894(a1, v12, &qword_28036C8F8, &unk_26A426440);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A0E48F0(v12, &qword_28036C8F8, &unk_26A426440);
  }

  else
  {
    sub_26A11C9E0();
    sub_26A11C9E0();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_26A0E48F0(v22, &qword_28036CCC0, &qword_26A426750);
      sub_26A11C9E0();
      sub_26A11C9E0();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_26A11C870();
    }
  }

  sub_26A11FB3C(&qword_28036C950, type metadata accessor for _ProtoCustomCanvas);
  v23 = v33;
  sub_26A424944();
  if (v23)
  {
    v24 = v22;
    return sub_26A0E48F0(v24, &qword_28036CCC0, &qword_26A426750);
  }

  sub_26A0E4894(v22, v20, &qword_28036CCC0, &qword_26A426750);
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_26A0E48F0(v22, &qword_28036CCC0, &qword_26A426750);
    v24 = v20;
    return sub_26A0E48F0(v24, &qword_28036CCC0, &qword_26A426750);
  }

  sub_26A11C9E0();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v26 = v31;
  sub_26A0E48F0(v22, &qword_28036CCC0, &qword_26A426750);
  v27 = v29;
  sub_26A0E48F0(v29, &qword_28036C8F8, &unk_26A426440);
  sub_26A11C9E0();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_26A11E710()
{
  v0 = *(type metadata accessor for _ProtoPlayer(0) + 20);
  sub_26A11EF50();
  return sub_26A424854();
}

uint64_t sub_26A11E7E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for _ProtoStandardPlayerButton(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8F8, &unk_26A426440);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for _ProtoPlayer.OneOf_Control(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D250, &unk_26A4273D0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_26A0E4894(a1, v12, &qword_28036C8F8, &unk_26A426440);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A0E48F0(v12, &qword_28036C8F8, &unk_26A426440);
  }

  else
  {
    sub_26A11C9E0();
    sub_26A11C9E0();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_26A0E48F0(v22, &qword_28036D250, &unk_26A4273D0);
      sub_26A11C9E0();
      sub_26A11C9E0();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_26A11C870();
    }
  }

  sub_26A11FB3C(&qword_28036D240, type metadata accessor for _ProtoStandardPlayerButton);
  v23 = v33;
  sub_26A424944();
  if (v23)
  {
    v24 = v22;
    return sub_26A0E48F0(v24, &qword_28036D250, &unk_26A4273D0);
  }

  sub_26A0E4894(v22, v20, &qword_28036D250, &unk_26A4273D0);
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_26A0E48F0(v22, &qword_28036D250, &unk_26A4273D0);
    v24 = v20;
    return sub_26A0E48F0(v24, &qword_28036D250, &unk_26A4273D0);
  }

  sub_26A11C9E0();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v26 = v31;
  sub_26A0E48F0(v22, &qword_28036D250, &unk_26A4273D0);
  v27 = v29;
  sub_26A0E48F0(v29, &qword_28036C8F8, &unk_26A426440);
  sub_26A11C9E0();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t _ProtoPlayer.traverse<A>(visitor:)()
{
  v2 = v1;
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8F8, &unk_26A426440);
  v5 = OUTLINED_FUNCTION_41(v4);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v34 - v11;
  sub_26A0E4894(v3, v34 - v11, &qword_28036C8F8, &unk_26A426440);
  v13 = type metadata accessor for _ProtoPlayer.OneOf_Control(0);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) != 1)
  {
    sub_26A0E4894(v12, v10, &qword_28036C8F8, &unk_26A426440);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        sub_26A11C870();
        goto LABEL_9;
      }

      v15 = OUTLINED_FUNCTION_3_5();
      sub_26A11F1B4(v15, v16, v17, v18);
    }

    else
    {
      v19 = OUTLINED_FUNCTION_3_5();
      sub_26A11EFA4(v19, v20, v21, v22);
    }

    v2 = v1;
    OUTLINED_FUNCTION_7_3();
    sub_26A11C870();
    if (v1)
    {
      return sub_26A0E48F0(v12, &qword_28036C8F8, &unk_26A426440);
    }
  }

LABEL_9:
  sub_26A0E48F0(v12, &qword_28036C8F8, &unk_26A426440);
  v24 = type metadata accessor for _ProtoPlayer(0);
  if (!*(*(v3 + v24[5]) + 16) || (sub_26A11EF50(), v1 = v2, result = sub_26A4249D4(), !v2))
  {
    v25 = (v3 + v24[6]);
    v26 = *v25;
    v27 = v25[1];
    v28 = HIBYTE(v27) & 0xF;
    if ((v27 & 0x2000000000000000) == 0)
    {
      v28 = v26 & 0xFFFFFFFFFFFFLL;
    }

    if (!v28 || (v1 = v2, result = sub_26A424A64(), !v2))
    {
      v29 = OUTLINED_FUNCTION_3_5();
      result = sub_26A11F3C8(v29, v30, v31, v32);
      if (!v1)
      {
        v33 = v3 + v24[7];
        return sub_26A424774();
      }
    }
  }

  return result;
}

unint64_t sub_26A11EF50()
{
  result = qword_28157B558[0];
  if (!qword_28157B558[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28157B558);
  }

  return result;
}

uint64_t sub_26A11EFA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8F8, &unk_26A426440);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for _ProtoPlayerButton(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  sub_26A0E4894(a1, v8, &qword_28036C8F8, &unk_26A426440);
  v11 = type metadata accessor for _ProtoPlayer.OneOf_Control(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    result = sub_26A0E48F0(v8, &qword_28036C8F8, &unk_26A426440);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_26A11C9E0();
      sub_26A11FB3C(&qword_28036D238, type metadata accessor for _ProtoPlayerButton);
      sub_26A424A84();
      return sub_26A11C870();
    }

    result = sub_26A11C870();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A11F1B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8F8, &unk_26A426440);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for _ProtoCustomCanvas();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  sub_26A0E4894(a1, v8, &qword_28036C8F8, &unk_26A426440);
  v11 = type metadata accessor for _ProtoPlayer.OneOf_Control(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    result = sub_26A0E48F0(v8, &qword_28036C8F8, &unk_26A426440);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_26A11C9E0();
      sub_26A11FB3C(&qword_28036C950, type metadata accessor for _ProtoCustomCanvas);
      sub_26A424A84();
      return sub_26A11C870();
    }

    result = sub_26A11C870();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A11F3C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8F8, &unk_26A426440);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for _ProtoStandardPlayerButton(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  sub_26A0E4894(a1, v8, &qword_28036C8F8, &unk_26A426440);
  v11 = type metadata accessor for _ProtoPlayer.OneOf_Control(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    return sub_26A0E48F0(v8, &qword_28036C8F8, &unk_26A426440);
  }

  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_26A11C9E0();
    sub_26A11FB3C(&qword_28036D240, type metadata accessor for _ProtoStandardPlayerButton);
    sub_26A424A84();
  }

  return sub_26A11C870();
}

uint64_t static _ProtoPlayer.== infix(_:_:)()
{
  v2 = OUTLINED_FUNCTION_53();
  v3 = type metadata accessor for _ProtoPlayer.OneOf_Control(v2);
  v4 = OUTLINED_FUNCTION_12(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_18();
  v9 = v8 - v7;
  v10 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v13);
  v15 = &v39 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C900, &unk_26A425EB0);
  OUTLINED_FUNCTION_41(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_39();
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v39 - v21;
  v23 = *(v20 + 56);
  sub_26A0E4894(v1, &v39 - v21, &qword_28036C8F8, &unk_26A426440);
  sub_26A0E4894(v0, &v22[v23], &qword_28036C8F8, &unk_26A426440);
  OUTLINED_FUNCTION_28(v22);
  if (!v28)
  {
    v24 = OUTLINED_FUNCTION_12_2();
    sub_26A0E4894(v24, v25, v26, v27);
    OUTLINED_FUNCTION_28(&v22[v23]);
    if (!v28)
    {
      sub_26A11C9E0();
      v29 = static _ProtoPlayer.OneOf_Control.== infix(_:_:)(v15, v9);
      sub_26A11C870();
      sub_26A11C870();
      sub_26A0E48F0(v22, &qword_28036C8F8, &unk_26A426440);
      if (v29)
      {
        goto LABEL_11;
      }

LABEL_18:
      v37 = 0;
      return v37 & 1;
    }

    sub_26A11C870();
LABEL_9:
    sub_26A0E48F0(v22, &qword_28036C900, &unk_26A425EB0);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_28(&v22[v23]);
  if (!v28)
  {
    goto LABEL_9;
  }

  sub_26A0E48F0(v22, &qword_28036C8F8, &unk_26A426440);
LABEL_11:
  v30 = type metadata accessor for _ProtoPlayer(0);
  if ((sub_26A0DB6A0(*(v1 + v30[5]), *(v0 + v30[5])) & 1) == 0)
  {
    goto LABEL_18;
  }

  v31 = v30[6];
  v32 = *(v1 + v31);
  v33 = *(v1 + v31 + 8);
  v34 = (v0 + v31);
  v35 = v32 == *v34 && v33 == v34[1];
  if (!v35 && (sub_26A425354() & 1) == 0)
  {
    goto LABEL_18;
  }

  v36 = v30[7];
  sub_26A424794();
  sub_26A11FB3C(qword_2815792E0, MEMORY[0x277D216C8]);
  v37 = sub_26A424B64();
  return v37 & 1;
}

uint64_t _ProtoPlayer.hashValue.getter()
{
  sub_26A425504();
  type metadata accessor for _ProtoPlayer(0);
  sub_26A11FB3C(&qword_28036D1E0, type metadata accessor for _ProtoPlayer);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t (*sub_26A11F978(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t sub_26A11F9CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A11FB3C(&qword_28036D230, type metadata accessor for _ProtoPlayer);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A11FA4C(uint64_t a1)
{
  v2 = sub_26A11FB3C(&qword_28036D1F0, type metadata accessor for _ProtoPlayer);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A11FABC()
{
  sub_26A11FB3C(&qword_28036D1F0, type metadata accessor for _ProtoPlayer);

  return sub_26A4249B4();
}

uint64_t sub_26A11FB3C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_26A11FCCC()
{
  sub_26A11FD70();
  if (v0 <= 0x3F)
  {
    sub_26A11FDC8();
    if (v1 <= 0x3F)
    {
      sub_26A424794();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26A11FD70()
{
  if (!qword_28036D210)
  {
    type metadata accessor for _ProtoPlayer.OneOf_Control(255);
    v0 = sub_26A424E44();
    if (!v1)
    {
      atomic_store(v0, &qword_28036D210);
    }
  }
}

void sub_26A11FDC8()
{
  if (!qword_28036D218)
  {
    v0 = sub_26A424D94();
    if (!v1)
    {
      atomic_store(v0, &qword_28036D218);
    }
  }
}

uint64_t sub_26A11FE20()
{
  result = type metadata accessor for _ProtoPlayerButton(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for _ProtoCustomCanvas();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for _ProtoStandardPlayerButton(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_5@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_26A0E4894(v2, &a2 - a1, v3, v4);
}

uint64_t OUTLINED_FUNCTION_2_2()
{
  v2 = type metadata accessor for _ProtoPlayer.OneOf_Control(0);
  *(v1 + 32) = v2;
  return __swift_getEnumTagSinglePayload(v0, 1, v2);
}

uint64_t OUTLINED_FUNCTION_5_4(uint64_t a1)
{
  *(v3 + 24) = a1;

  return sub_26A0E4894(v2, v1, v4, v5);
}

void *OUTLINED_FUNCTION_16_2(void *result)
{
  *v1 = result;
  *result = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_22_4()
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
}

uint64_t OUTLINED_FUNCTION_24_4()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t SummaryItemSwitch.switch.getter()
{
  v3 = OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_51_1();
  v7 = type metadata accessor for _ProtoSwitch();
  v8 = OUTLINED_FUNCTION_12(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18();
  v11 = OUTLINED_FUNCTION_36_2();
  v12 = *(v0 + *(type metadata accessor for _ProtoSummaryItem_Switch(v11) + 20));
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_54_1();
  OUTLINED_FUNCTION_37(v2, 1, v7);
  if (v13)
  {
    *v1 = 0;
    *(v1 + 8) = 0xE000000000000000;
    *(v1 + 16) = 0;
    *(v1 + 24) = xmmword_26A426400;
    v14 = v1 + v7[7];
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v15 = v7[8];
    v16 = type metadata accessor for _ProtoActionProperty();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v16);
    v20 = v7[9];
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v16);
    OUTLINED_FUNCTION_37(v2, 1, v7);
    if (!v13)
    {
      sub_26A0E48F0(v2, &qword_28036D258, &unk_26A4273E0);
    }
  }

  else
  {
    sub_26A1243E0();
  }

  return sub_26A1243E0();
}

uint64_t SummaryItemSwitch.text1.getter()
{
  v3 = OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_51_1();
  v8 = type metadata accessor for _ProtoTextProperty(v7);
  v9 = OUTLINED_FUNCTION_12(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_18();
  v12 = OUTLINED_FUNCTION_36_2();
  v13 = *(v0 + *(type metadata accessor for _ProtoSummaryItem_Switch(v12) + 20));
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_54_1();
  OUTLINED_FUNCTION_37(v2, 1, v8);
  if (v14)
  {
    *v1 = MEMORY[0x277D84F90];
    *(v1 + 8) = 0;
    v15 = v1 + v8[7];
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v16 = v8[8];
    v17 = type metadata accessor for _ProtoActionProperty();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v17);
    v21 = v8[9];
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v17);
    OUTLINED_FUNCTION_37(v2, 1, v8);
    if (!v14)
    {
      sub_26A0E48F0(v2, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A1243E0();
  }

  return sub_26A1243E0();
}

void SummaryItemSwitch.text3.getter()
{
  OUTLINED_FUNCTION_76();
  v4 = OUTLINED_FUNCTION_239(v3);
  v5 = type metadata accessor for _ProtoMultilineTextProperty(v4);
  v6 = OUTLINED_FUNCTION_12(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_152_0();
  v9 = OUTLINED_FUNCTION_41_2();
  v10 = OUTLINED_FUNCTION_41(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v13);
  v14 = OUTLINED_FUNCTION_20_3();
  OUTLINED_FUNCTION_241(v14);
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v15 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v15, v16, &unk_26A4273F0);
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
        sub_26A0E48F0(v1, &qword_28036CAE0, &unk_26A4273F0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_57_1();
    }

    sub_26A1243E0();
    v2 = 0;
  }

  v27 = type metadata accessor for MultilineTextProperty(0);
  __swift_storeEnumTagSinglePayload(v28, v2, 1, v27);
  OUTLINED_FUNCTION_75();
}

void sub_26A12058C()
{
  OUTLINED_FUNCTION_76();
  v3 = v2;
  v5 = OUTLINED_FUNCTION_239(v4);
  v6 = type metadata accessor for _ProtoTextProperty(v5);
  v7 = OUTLINED_FUNCTION_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_152_0();
  v10 = OUTLINED_FUNCTION_41_2();
  v11 = OUTLINED_FUNCTION_41(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v14);
  v15 = OUTLINED_FUNCTION_20_3();
  OUTLINED_FUNCTION_241(v15);
  v16 = *v3;
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v17 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v17, v18, &unk_26A425BF0);
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
        sub_26A0E48F0(v1, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_57_1();
    }

    sub_26A1243E0();
    v3 = 0;
  }

  v29 = type metadata accessor for TextProperty(0);
  __swift_storeEnumTagSinglePayload(v30, v3, 1, v29);
  OUTLINED_FUNCTION_75();
}

void SummaryItemSwitch.thumbnail.getter()
{
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_239(v3);
  v4 = type metadata accessor for _ProtoVisualProperty();
  v5 = OUTLINED_FUNCTION_12(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_152_0();
  v8 = OUTLINED_FUNCTION_41_2();
  v9 = OUTLINED_FUNCTION_41(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_20_3();
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
      OUTLINED_FUNCTION_57_1();
    }

    sub_26A1243E0();
    v2 = 0;
  }

  v26 = type metadata accessor for VisualProperty();
  __swift_storeEnumTagSinglePayload(v27, v2, 1, v26);
  OUTLINED_FUNCTION_75();
}

void SummaryItemSwitch.action.getter()
{
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_239(v4);
  v5 = type metadata accessor for _ProtoActionProperty();
  v6 = OUTLINED_FUNCTION_12(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_152_0();
  v9 = OUTLINED_FUNCTION_41_2();
  v10 = OUTLINED_FUNCTION_41(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v13);
  v14 = OUTLINED_FUNCTION_20_3();
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
      OUTLINED_FUNCTION_57_1();
    }

    sub_26A1243E0();
    v2 = 0;
  }

  v19 = type metadata accessor for ActionProperty();
  __swift_storeEnumTagSinglePayload(v20, v2, 1, v19);
  OUTLINED_FUNCTION_75();
}

uint64_t SummaryItemSwitch.componentName.getter()
{
  v1 = (*(v0 + *(type metadata accessor for _ProtoSummaryItem_Switch(0) + 20)) + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_SwitchP33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName);
  OUTLINED_FUNCTION_142();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t SummaryItemSwitch.linkIdentifier.getter()
{
  v1 = (*(v0 + *(type metadata accessor for _ProtoSummaryItem_Switch(0) + 20)) + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_SwitchP33_517B9946414782DAF24306F75BD7687D13_StorageClass__linkIdentifier);
  OUTLINED_FUNCTION_142();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

void _ProtoSummaryItem_Switch.redactedProto.getter()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v202 = type metadata accessor for _ProtoActionProperty();
  v2 = OUTLINED_FUNCTION_12(v202);
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
  v200 = type metadata accessor for _ProtoVisualProperty();
  v14 = OUTLINED_FUNCTION_12(v200);
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
  v198 = type metadata accessor for _ProtoMultilineTextProperty(0);
  v26 = OUTLINED_FUNCTION_12(v198);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  v32 = OUTLINED_FUNCTION_41(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v37);
  v38 = type metadata accessor for _ProtoTextProperty(0);
  v39 = OUTLINED_FUNCTION_12(v38);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v46);
  v48 = &v188[-v47];
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v50 = OUTLINED_FUNCTION_41(v49);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v55);
  v57 = &v188[-v56];
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v59);
  v61 = &v188[-v60];
  MEMORY[0x28223BE20](v62);
  v64 = &v188[-v63];
  OUTLINED_FUNCTION_9_3();
  sub_26A1245E8();
  v65 = *(type metadata accessor for _ProtoSummaryItem_Switch(0) + 20);
  v203 = v1;
  v204 = v65;
  v66 = *(v1 + v65);
  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  LODWORD(v1) = __swift_getEnumTagSinglePayload(v64, 1, v38);
  sub_26A0E48F0(v64, &qword_28036C7B8, &unk_26A425BF0);
  if (v1 != 1)
  {
    sub_26A10FD9C();
    v67 = OUTLINED_FUNCTION_116();
    OUTLINED_FUNCTION_37(v67, v68, v38);
    if (v69)
    {
      *v48 = MEMORY[0x277D84F90];
      *(v48 + 4) = 0;
      v70 = &v48[v38[7]];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v71 = v38[8];
      OUTLINED_FUNCTION_92();
      v72 = v202;
      __swift_storeEnumTagSinglePayload(v73, v74, v75, v202);
      v76 = v38[9];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v77, v78, v79, v72);
      v80 = OUTLINED_FUNCTION_116();
      OUTLINED_FUNCTION_37(v80, v81, v38);
      v82 = v204;
      if (!v69)
      {
        sub_26A0E48F0(v61, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A1243E0();
      v82 = v204;
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_8_3();
    sub_26A124434(v48, v83);
    v84 = v203;
    v85 = *(v203 + v82);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v66 = *(v84 + v82);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v87 = type metadata accessor for _ProtoSummaryItem_Switch._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v87);
      OUTLINED_FUNCTION_27_3();
      v66 = v88;
      *(v84 + v82) = v88;
    }

    OUTLINED_FUNCTION_30_0();
    v89 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v89, v90, v91, v38);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_209();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v57, 1, v38);
  OUTLINED_FUNCTION_162_0(v57);
  if (EnumTagSinglePayload == 1)
  {
    v93 = v202;
    v94 = v203;
    v95 = v198;
  }

  else
  {
    OUTLINED_FUNCTION_58_1(&v205);
    OUTLINED_FUNCTION_11_4();
    v94 = v203;
    v96 = v204;
    v95 = v198;
    if (v69)
    {
      v66 = v189;
      *v189 = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_39_0();
      v97 = OUTLINED_FUNCTION_44_0(v38[8]);
      v93 = v202;
      __swift_storeEnumTagSinglePayload(v97, v98, v99, v202);
      v100 = OUTLINED_FUNCTION_44_0(v38[9]);
      __swift_storeEnumTagSinglePayload(v100, v101, v102, v93);
      OUTLINED_FUNCTION_11_4();
      if (!v69)
      {
        sub_26A0E48F0(EnumTagSinglePayload, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_44_2(&v206);
      v93 = v202;
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_8_3();
    sub_26A124434(v66, v103);
    v104 = *(v94 + v96);
    v105 = swift_isUniquelyReferenced_nonNull_native();
    v66 = *(v94 + v96);
    if ((v105 & 1) == 0)
    {
      v106 = type metadata accessor for _ProtoSummaryItem_Switch._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v106);
      OUTLINED_FUNCTION_27_3();
      v66 = v107;
      *(v94 + v96) = v107;
    }

    OUTLINED_FUNCTION_30_0();
    v108 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v108, v109, v110, v38);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  v111 = v196;
  OUTLINED_FUNCTION_209();
  v112 = __swift_getEnumTagSinglePayload(v111, 1, v95);
  OUTLINED_FUNCTION_162_0(v111);
  if (v112 != 1)
  {
    OUTLINED_FUNCTION_58_1(&v207);
    OUTLINED_FUNCTION_37(v112, 1, v95);
    v113 = v204;
    if (v69)
    {
      v114 = v190;
      *v190 = MEMORY[0x277D84F90];
      *(v114 + 4) = 0;
      v115 = v114 + v95[7];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v116 = OUTLINED_FUNCTION_44_0(v95[8]);
      __swift_storeEnumTagSinglePayload(v116, v117, v118, v93);
      v119 = OUTLINED_FUNCTION_44_0(v95[9]);
      __swift_storeEnumTagSinglePayload(v119, v120, v121, v93);
      OUTLINED_FUNCTION_37(v112, 1, v95);
      if (!v69)
      {
        sub_26A0E48F0(v112, &qword_28036CAE0, &unk_26A4273F0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_44_2(&v208);
    }

    _ProtoMultilineTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_43_2();
    v122 = *(v94 + v113);
    v123 = swift_isUniquelyReferenced_nonNull_native();
    v66 = *(v94 + v113);
    if ((v123 & 1) == 0)
    {
      v124 = type metadata accessor for _ProtoSummaryItem_Switch._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v124);
      OUTLINED_FUNCTION_27_3();
      v66 = v125;
      *(v94 + v113) = v125;
    }

    sub_26A1243E0();
    v126 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v126, v127, v128, v95);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  v129 = v197;
  OUTLINED_FUNCTION_209();
  v130 = __swift_getEnumTagSinglePayload(v129, 1, v38);
  OUTLINED_FUNCTION_162_0(v129);
  if (v130 == 1)
  {
    v131 = v93;
    v132 = MEMORY[0x277D84F90];
  }

  else
  {
    OUTLINED_FUNCTION_58_1(&v209);
    OUTLINED_FUNCTION_11_4();
    v133 = v204;
    if (v69)
    {
      v66 = v191;
      *v191 = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_39_0();
      v134 = OUTLINED_FUNCTION_44_0(v38[8]);
      __swift_storeEnumTagSinglePayload(v134, v135, v136, v93);
      v137 = OUTLINED_FUNCTION_44_0(v38[9]);
      __swift_storeEnumTagSinglePayload(v137, v138, v139, v93);
      OUTLINED_FUNCTION_11_4();
      if (!v69)
      {
        sub_26A0E48F0(v130, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_44_2(&v210);
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_8_3();
    sub_26A124434(v66, v140);
    v141 = *(v94 + v133);
    v142 = swift_isUniquelyReferenced_nonNull_native();
    v143 = *(v94 + v133);
    v131 = v93;
    if ((v142 & 1) == 0)
    {
      v144 = type metadata accessor for _ProtoSummaryItem_Switch._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v144);
      OUTLINED_FUNCTION_27_3();
      *(v94 + v133) = v145;
    }

    v132 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_30_0();
    v146 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v146, v147, v148, v38);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  v149 = v199;
  OUTLINED_FUNCTION_209();
  v150 = v200;
  v151 = __swift_getEnumTagSinglePayload(v149, 1, v200);
  OUTLINED_FUNCTION_162_0(v149);
  if (v151 == 1)
  {
    v152 = v132;
    v153 = v131;
  }

  else
  {
    OUTLINED_FUNCTION_58_1(&v211);
    OUTLINED_FUNCTION_11_4();
    v154 = v204;
    if (v69)
    {
      v152 = v132;
      *v192 = v132;
      OUTLINED_FUNCTION_39_0();
      v155 = OUTLINED_FUNCTION_44_0(*(v150 + 32));
      v153 = v131;
      __swift_storeEnumTagSinglePayload(v155, v156, v157, v131);
      v158 = OUTLINED_FUNCTION_44_0(*(v150 + 36));
      __swift_storeEnumTagSinglePayload(v158, v159, v160, v131);
      OUTLINED_FUNCTION_11_4();
      if (!v69)
      {
        sub_26A0E48F0(v151, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      OUTLINED_FUNCTION_44_2(&v212);
      v152 = v132;
      v153 = v131;
    }

    _ProtoVisualProperty.redactedProto.getter();
    OUTLINED_FUNCTION_43_2();
    v161 = *(v94 + v154);
    v162 = swift_isUniquelyReferenced_nonNull_native();
    v163 = *(v94 + v154);
    if ((v162 & 1) == 0)
    {
      v164 = type metadata accessor for _ProtoSummaryItem_Switch._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v164);
      OUTLINED_FUNCTION_27_3();
      *(v94 + v154) = v165;
    }

    sub_26A1243E0();
    v166 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v166, v167, v168, v150);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  v169 = v201;
  OUTLINED_FUNCTION_209();
  v170 = __swift_getEnumTagSinglePayload(v169, 1, v153);
  OUTLINED_FUNCTION_162_0(v169);
  if (v170 != 1)
  {
    v171 = v193;
    sub_26A10FD9C();
    v172 = OUTLINED_FUNCTION_38_1();
    OUTLINED_FUNCTION_37(v172, v173, v153);
    v174 = v204;
    if (v69)
    {
      v175 = v194;
      *v194 = v152;
      v175[1] = 0;
      v175[2] = 0xE000000000000000;
      v176 = v175 + *(v153 + 24);
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v177 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_37(v177, v178, v153);
      v179 = v195;
      if (!v69)
      {
        sub_26A0E48F0(v171, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      OUTLINED_FUNCTION_44_2(&v213);
      v179 = v195;
    }

    _s10SnippetKit14ActionPropertyV13redactedProtoAA01_fcD0Vvg_0(v179);
    OUTLINED_FUNCTION_43_2();
    v180 = *(v94 + v174);
    v181 = swift_isUniquelyReferenced_nonNull_native();
    v182 = *(v94 + v174);
    if ((v181 & 1) == 0)
    {
      v183 = type metadata accessor for _ProtoSummaryItem_Switch._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v183);
      sub_26A1BAEFC();
      *(v94 + v174) = v184;
    }

    sub_26A1243E0();
    v185 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v185, v186, v187, v153);
    OUTLINED_FUNCTION_211();
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t SummaryItemSwitch.init(switch:text1:text2:text3:text4:thumbnail:action:componentName:linkIdentifier:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for _ProtoSummaryItem_Switch(0);
  OUTLINED_FUNCTION_0_5();
  sub_26A1245A0(v11, v12);
  OUTLINED_FUNCTION_56_1();

  sub_26A0E48F0(a7, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(a6, &qword_28036CB00, &unk_26A426450);
  sub_26A0E48F0(a5, &qword_28036CB08, &unk_26A428720);
  sub_26A0E48F0(a4, &qword_28036CB10, &unk_26A426460);
  sub_26A0E48F0(a3, &qword_28036CB08, &unk_26A428720);
  OUTLINED_FUNCTION_6_6(a2);
  return sub_26A124434(a1, v13);
}

uint64_t sub_26A121CB8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v106 = a7;
  v107 = a8;
  v102 = a5;
  v103 = a6;
  v99 = a4;
  v13 = type metadata accessor for ActionProperty();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v97 = v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v109 = v87 - v18;
  v108 = type metadata accessor for _ProtoActionProperty();
  v19 = *(*(v108 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v108);
  v92 = v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v93 = v87 - v22;
  v23 = type metadata accessor for VisualProperty();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v96 = v87 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v105 = v87 - v28;
  v104 = type metadata accessor for _ProtoVisualProperty();
  v29 = *(*(v104 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v104);
  v90 = v87 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v91 = v87 - v32;
  v33 = type metadata accessor for MultilineTextProperty(0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v94 = v87 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36 - 8);
  v98 = v87 - v38;
  v100 = type metadata accessor for _ProtoMultilineTextProperty(0);
  v39 = *(*(v100 - 8) + 64);
  v40 = MEMORY[0x28223BE20](v100);
  v87[1] = v87 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v88 = v87 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v44 = *(*(v43 - 8) + 64);
  v45 = MEMORY[0x28223BE20](v43 - 8);
  v101 = v87 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v48 = v87 - v47;
  v49 = type metadata accessor for _ProtoTextProperty(0);
  v50 = *(*(v49 - 8) + 64);
  v51 = MEMORY[0x28223BE20](v49);
  v89 = v87 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x28223BE20](v51);
  v55 = v87 - v54;
  MEMORY[0x28223BE20](v53);
  v57 = v87 - v56;
  v58 = type metadata accessor for TextProperty(0);
  v59 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58 - 8);
  v60 = type metadata accessor for _ProtoSwitch();
  v61 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60 - 8);
  sub_26A1245E8();
  _ProtoSummaryItem_Switch.switch.setter();
  v62 = a3;
  v63 = a3[3];
  v64 = v62[4];
  __swift_project_boxed_opaque_existential_1(v62, v63);
  (*(v64 + 8))(v63, v64);
  sub_26A1243E0();
  v95 = v57;
  _ProtoSummaryItem_Switch.text1.setter();
  sub_26A10FD9C();
  v65 = v111;
  if (v111)
  {
    v66 = v112;
    __swift_project_boxed_opaque_existential_1(v110, v111);
    (*(v66 + 8))(v65, v66);
    sub_26A1243E0();
    __swift_storeEnumTagSinglePayload(v48, 0, 1, v49);
    __swift_destroy_boxed_opaque_existential_1(v110);
    if (__swift_getEnumTagSinglePayload(v48, 1, v49) != 1)
    {
      sub_26A1243E0();
      sub_26A1245E8();
      _ProtoSummaryItem_Switch.text2.setter();
      sub_26A124434(v55, type metadata accessor for _ProtoTextProperty);
      goto LABEL_6;
    }
  }

  else
  {
    sub_26A0E48F0(v110, &qword_28036CB08, &unk_26A428720);
    __swift_storeEnumTagSinglePayload(v48, 1, 1, v49);
  }

  sub_26A0E48F0(v48, &qword_28036C7B8, &unk_26A425BF0);
LABEL_6:
  sub_26A10FD9C();
  v67 = v111;
  if (v111)
  {
    v68 = v112;
    __swift_project_boxed_opaque_existential_1(v110, v111);
    (*(v68 + 8))(v67, v68);
    v69 = v98;
    sub_26A1243E0();
    v70 = v100;
    __swift_storeEnumTagSinglePayload(v69, 0, 1, v100);
    __swift_destroy_boxed_opaque_existential_1(v110);
    if (__swift_getEnumTagSinglePayload(v69, 1, v70) != 1)
    {
      v71 = v88;
      sub_26A1243E0();
      sub_26A1245E8();
      _ProtoSummaryItem_Switch.text3.setter();
      sub_26A124434(v71, type metadata accessor for _ProtoMultilineTextProperty);
      goto LABEL_11;
    }
  }

  else
  {
    sub_26A0E48F0(v110, &qword_28036CB10, &unk_26A426460);
    v69 = v98;
    __swift_storeEnumTagSinglePayload(v98, 1, 1, v100);
  }

  sub_26A0E48F0(v69, &qword_28036CAE0, &unk_26A4273F0);
LABEL_11:
  sub_26A10FD9C();
  v72 = v111;
  if (v111)
  {
    v73 = v112;
    __swift_project_boxed_opaque_existential_1(v110, v111);
    (*(v73 + 8))(v72, v73);
    v74 = v101;
    sub_26A1243E0();
    __swift_storeEnumTagSinglePayload(v74, 0, 1, v49);
    __swift_destroy_boxed_opaque_existential_1(v110);
    if (__swift_getEnumTagSinglePayload(v74, 1, v49) != 1)
    {
      v75 = v89;
      sub_26A1243E0();
      sub_26A1245E8();
      _ProtoSummaryItem_Switch.text4.setter();
      sub_26A124434(v75, type metadata accessor for _ProtoTextProperty);
      goto LABEL_16;
    }
  }

  else
  {
    sub_26A0E48F0(v110, &qword_28036CB08, &unk_26A428720);
    v74 = v101;
    __swift_storeEnumTagSinglePayload(v101, 1, 1, v49);
  }

  sub_26A0E48F0(v74, &qword_28036C7B8, &unk_26A425BF0);
LABEL_16:
  sub_26A10FD9C();
  v76 = v111;
  if (v111)
  {
    v77 = v112;
    __swift_project_boxed_opaque_existential_1(v110, v111);
    (*(v77 + 8))(v76, v77);
    v78 = v105;
    sub_26A1243E0();
    v79 = v104;
    __swift_storeEnumTagSinglePayload(v78, 0, 1, v104);
    __swift_destroy_boxed_opaque_existential_1(v110);
    if (__swift_getEnumTagSinglePayload(v78, 1, v79) != 1)
    {
      v80 = v91;
      sub_26A1243E0();
      sub_26A1245E8();
      _ProtoSummaryItem_Switch.thumbnail.setter();
      sub_26A124434(v80, type metadata accessor for _ProtoVisualProperty);
      goto LABEL_21;
    }
  }

  else
  {
    sub_26A0E48F0(v110, &qword_28036CB00, &unk_26A426450);
    v78 = v105;
    __swift_storeEnumTagSinglePayload(v105, 1, 1, v104);
  }

  sub_26A0E48F0(v78, &qword_28036CAE8, &unk_26A426430);
LABEL_21:
  sub_26A10FD9C();
  v81 = v111;
  if (v111)
  {
    v82 = v112;
    __swift_project_boxed_opaque_existential_1(v110, v111);
    (*(v82 + 8))(v81, v82);
    v83 = v109;
    sub_26A1243E0();
    v84 = v108;
    __swift_storeEnumTagSinglePayload(v83, 0, 1, v108);
    __swift_destroy_boxed_opaque_existential_1(v110);
    if (__swift_getEnumTagSinglePayload(v83, 1, v84) != 1)
    {
      v85 = v93;
      sub_26A1243E0();
      sub_26A1245E8();
      _ProtoSummaryItem_Switch.action.setter();
      sub_26A124434(v85, type metadata accessor for _ProtoActionProperty);
      goto LABEL_26;
    }
  }

  else
  {
    sub_26A0E48F0(v110, &qword_28036CAF8, &unk_26A426D30);
    v83 = v109;
    __swift_storeEnumTagSinglePayload(v109, 1, 1, v108);
  }

  sub_26A0E48F0(v83, &off_28036C7C0, &off_26A427400);
LABEL_26:

  result = _ProtoSummaryItem_Switch.componentName.setter();
  if (a12)
  {

    return _ProtoSummaryItem_Switch.linkIdentifier.setter();
  }

  return result;
}

uint64_t SummaryItemSwitch.init(switch:text1:text2:text3:action:componentName:linkIdentifier:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for _ProtoSummaryItem_Switch(0);
  OUTLINED_FUNCTION_0_5();
  sub_26A1245A0(v9, v10);
  OUTLINED_FUNCTION_56_1();

  sub_26A0E48F0(a5, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(a4, &qword_28036CB10, &unk_26A426460);
  sub_26A0E48F0(a3, &qword_28036CB08, &unk_26A428720);
  OUTLINED_FUNCTION_6_6(a2);
  return sub_26A124434(a1, v11);
}

uint64_t sub_26A122B48(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v72 = a7;
  v73 = a8;
  v68 = a5;
  v69 = a6;
  v65 = a4;
  v11 = type metadata accessor for ActionProperty();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v64 = v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v71 = v59 - v16;
  v70 = type metadata accessor for _ProtoActionProperty();
  v17 = *(*(v70 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v70);
  v61 = v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v62 = v59 - v20;
  v21 = type metadata accessor for MultilineTextProperty(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v63 = v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v67 = v59 - v26;
  v66 = type metadata accessor for _ProtoMultilineTextProperty(0);
  v27 = *(*(v66 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v66);
  v59[1] = v59 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v60 = v59 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v34 = v59 - v33;
  v35 = type metadata accessor for _ProtoTextProperty(0);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x28223BE20](v35);
  v59[0] = v59 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v39 = type metadata accessor for TextProperty(0);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39 - 8);
  v41 = type metadata accessor for _ProtoSwitch();
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41 - 8);
  sub_26A1245E8();
  _ProtoSummaryItem_Switch.switch.setter();
  v44 = a3[3];
  v43 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v44);
  (*(v43 + 8))(v44, v43);
  sub_26A1243E0();
  _ProtoSummaryItem_Switch.text1.setter();
  sub_26A10FD9C();
  v45 = v75;
  if (v75)
  {
    v46 = v76;
    __swift_project_boxed_opaque_existential_1(v74, v75);
    (*(v46 + 8))(v45, v46);
    sub_26A1243E0();
    __swift_storeEnumTagSinglePayload(v34, 0, 1, v35);
    __swift_destroy_boxed_opaque_existential_1(v74);
    if (__swift_getEnumTagSinglePayload(v34, 1, v35) != 1)
    {
      v47 = v59[0];
      sub_26A1243E0();
      sub_26A1245E8();
      _ProtoSummaryItem_Switch.text2.setter();
      sub_26A124434(v47, type metadata accessor for _ProtoTextProperty);
      goto LABEL_6;
    }
  }

  else
  {
    sub_26A0E48F0(v74, &qword_28036CB08, &unk_26A428720);
    __swift_storeEnumTagSinglePayload(v34, 1, 1, v35);
  }

  sub_26A0E48F0(v34, &qword_28036C7B8, &unk_26A425BF0);
LABEL_6:
  sub_26A10FD9C();
  v48 = v75;
  if (v75)
  {
    v49 = v76;
    __swift_project_boxed_opaque_existential_1(v74, v75);
    (*(v49 + 8))(v48, v49);
    v50 = v67;
    sub_26A1243E0();
    v51 = v66;
    __swift_storeEnumTagSinglePayload(v50, 0, 1, v66);
    __swift_destroy_boxed_opaque_existential_1(v74);
    if (__swift_getEnumTagSinglePayload(v50, 1, v51) != 1)
    {
      v52 = v60;
      sub_26A1243E0();
      sub_26A1245E8();
      _ProtoSummaryItem_Switch.text3.setter();
      sub_26A124434(v52, type metadata accessor for _ProtoMultilineTextProperty);
      goto LABEL_11;
    }
  }

  else
  {
    sub_26A0E48F0(v74, &qword_28036CB10, &unk_26A426460);
    v50 = v67;
    __swift_storeEnumTagSinglePayload(v67, 1, 1, v66);
  }

  sub_26A0E48F0(v50, &qword_28036CAE0, &unk_26A4273F0);
LABEL_11:
  sub_26A10FD9C();
  v53 = v75;
  if (v75)
  {
    v54 = v76;
    __swift_project_boxed_opaque_existential_1(v74, v75);
    (*(v54 + 8))(v53, v54);
    v55 = v71;
    sub_26A1243E0();
    v56 = v70;
    __swift_storeEnumTagSinglePayload(v55, 0, 1, v70);
    __swift_destroy_boxed_opaque_existential_1(v74);
    if (__swift_getEnumTagSinglePayload(v55, 1, v56) != 1)
    {
      v57 = v62;
      sub_26A1243E0();
      sub_26A1245E8();
      _ProtoSummaryItem_Switch.action.setter();
      sub_26A124434(v57, type metadata accessor for _ProtoActionProperty);
      goto LABEL_16;
    }
  }

  else
  {
    sub_26A0E48F0(v74, &qword_28036CAF8, &unk_26A426D30);
    v55 = v71;
    __swift_storeEnumTagSinglePayload(v71, 1, 1, v70);
  }

  sub_26A0E48F0(v55, &off_28036C7C0, &off_26A427400);
LABEL_16:

  result = _ProtoSummaryItem_Switch.componentName.setter();
  if (a10)
  {

    return _ProtoSummaryItem_Switch.linkIdentifier.setter();
  }

  return result;
}

void SummaryItemSwitch.init(switch:text1:text2:text3:action:componentName:)()
{
  OUTLINED_FUNCTION_76();
  v18 = v1;
  v3 = v2;
  v5 = v4;
  v17 = v6;
  v7 = v1;
  v19 = v8;
  v9 = type metadata accessor for Switch();
  v10 = OUTLINED_FUNCTION_41(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_17_2();
  sub_26A0E5D68(v7, v23);
  sub_26A10FD9C();
  sub_26A10FD9C();
  sub_26A10FD9C();
  type metadata accessor for _ProtoSummaryItem_Switch(0);
  OUTLINED_FUNCTION_0_5();
  sub_26A1245A0(v13, v14);
  OUTLINED_FUNCTION_56_1();

  sub_26A0E48F0(v3, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v5, &qword_28036CB10, &unk_26A426460);
  sub_26A0E48F0(v17, &qword_28036CB08, &unk_26A428720);
  OUTLINED_FUNCTION_6_6(v18);
  v16 = v15;
  sub_26A124434(v19, v15);
  sub_26A0E48F0(&v20, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(&v21, &qword_28036CB10, &unk_26A426460);
  sub_26A0E48F0(&v22, &qword_28036CB08, &unk_26A428720);
  __swift_destroy_boxed_opaque_existential_1(v23);
  sub_26A124434(v0, v16);
  OUTLINED_FUNCTION_75();
}

void SummaryItemSwitch.init(switch:text1:text2:text3:action:)()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v18 = v7;
  v19 = v9;
  v10 = type metadata accessor for Switch();
  v11 = OUTLINED_FUNCTION_41(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_17_2();
  sub_26A0E5D68(v8, v23);
  sub_26A10FD9C();
  sub_26A10FD9C();
  sub_26A10FD9C();
  type metadata accessor for _ProtoSummaryItem_Switch(0);
  OUTLINED_FUNCTION_0_5();
  sub_26A1245A0(v14, v15);
  sub_26A4249C4();
  sub_26A0E48F0(v2, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v4, &qword_28036CB10, &unk_26A426460);
  sub_26A0E48F0(v6, &qword_28036CB08, &unk_26A428720);
  OUTLINED_FUNCTION_6_6(v18);
  v17 = v16;
  sub_26A124434(v19, v16);
  sub_26A0E48F0(&v20, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(&v21, &qword_28036CB10, &unk_26A426460);
  sub_26A0E48F0(&v22, &qword_28036CB08, &unk_26A428720);
  __swift_destroy_boxed_opaque_existential_1(v23);
  sub_26A124434(v0, v17);
  OUTLINED_FUNCTION_75();
}

Swift::String __swiftcall SummaryItemSwitch.description(redacted:)(Swift::Bool redacted)
{
  OUTLINED_FUNCTION_76();
  v123 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB18, &unk_26A427670);
  OUTLINED_FUNCTION_41(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_42();
  v130 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB20, &unk_26A426470);
  OUTLINED_FUNCTION_41(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_42();
  v129 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB28, &qword_26A427980);
  OUTLINED_FUNCTION_41(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_42();
  v128 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_42();
  v127 = v24;
  v125 = type metadata accessor for _ProtoTextProperty(0);
  v25 = OUTLINED_FUNCTION_12(v125);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_18();
  v124 = v29 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB30, &qword_26A426480);
  v31 = OUTLINED_FUNCTION_41(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_17();
  v36 = v34 - v35;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_48();
  v126 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D258, &unk_26A4273E0);
  OUTLINED_FUNCTION_41(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v42);
  v44 = &v123 - v43;
  v45 = type metadata accessor for _ProtoSwitch();
  v46 = OUTLINED_FUNCTION_12(v45);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_18();
  v51 = v50 - v49;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF48, &qword_26A426AD0);
  OUTLINED_FUNCTION_41(v52);
  v54 = *(v53 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_36_2();
  v56 = type metadata accessor for SummaryItemSwitch();
  v57 = OUTLINED_FUNCTION_41(v56);
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v60);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D030, &qword_26A427410);
  OUTLINED_FUNCTION_12(v61);
  v63 = *(v62 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v64);
  v66 = &v123 - v65;
  OUTLINED_FUNCTION_19_2();
  sub_26A1245E8();
  if (v4)
  {
    _ProtoSummaryItem_Switch.redactedProto.getter();
  }

  else
  {
    sub_26A1245E8();
  }

  sub_26A1243E0();
  v66[*(v61 + 32)] = v4 & 1;
  OUTLINED_FUNCTION_43_2();
  v67 = MEMORY[0x277D84F90];
  *&v66[*(v61 + 28)] = MEMORY[0x277D84F90];
  v68 = *&v66[*(type metadata accessor for _ProtoSummaryItem_Switch(0) + 20)];
  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  v69 = OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_37(v69, v70, v45);
  if (v71)
  {
    *v51 = 0;
    *(v51 + 8) = 0xE000000000000000;
    *(v51 + 16) = 0;
    *(v51 + 24) = xmmword_26A426400;
    v72 = v51 + v45[7];
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v73 = v45[8];
    v74 = type metadata accessor for _ProtoActionProperty();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v75, v76, v77, v74);
    v78 = v45[9];
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v79, v80, v81, v74);
    v82 = OUTLINED_FUNCTION_38_1();
    OUTLINED_FUNCTION_37(v82, v83, v45);
    v84 = v124;
    if (!v71)
    {
      sub_26A0E48F0(v44, &qword_28036D258, &unk_26A4273E0);
    }
  }

  else
  {
    sub_26A1243E0();
    v84 = v124;
  }

  sub_26A1243E0();
  type metadata accessor for Switch();
  v85 = OUTLINED_FUNCTION_95_0();
  __swift_storeEnumTagSinglePayload(v85, v86, v87, v88);
  sub_26A104564();
  sub_26A0E48F0(v2, &qword_28036CF48, &qword_26A426AD0);
  OUTLINED_FUNCTION_142();
  v89 = v127;
  sub_26A10FD9C();
  v90 = OUTLINED_FUNCTION_116();
  v91 = v125;
  OUTLINED_FUNCTION_37(v90, v92, v125);
  if (v71)
  {
    *v84 = v67;
    *(v84 + 8) = 0;
    v93 = v84 + v91[7];
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v94 = v91[8];
    v95 = type metadata accessor for _ProtoActionProperty();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v96, v97, v98, v95);
    v99 = v91[9];
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v100, v101, v102, v95);
    v103 = OUTLINED_FUNCTION_116();
    OUTLINED_FUNCTION_37(v103, v104, v91);
    if (!v71)
    {
      sub_26A0E48F0(v89, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A1243E0();
  }

  v105 = v126;
  sub_26A1243E0();
  v106 = type metadata accessor for TextProperty(0);
  __swift_storeEnumTagSinglePayload(v105, 0, 1, v106);
  OUTLINED_FUNCTION_222();
  sub_26A10453C();
  OUTLINED_FUNCTION_162_0(v105);
  SummaryItemSwitch.text2.getter();
  OUTLINED_FUNCTION_222();
  sub_26A10453C();
  OUTLINED_FUNCTION_162_0(v36);
  v107 = v128;
  SummaryItemSwitch.text3.getter();
  OUTLINED_FUNCTION_222();
  sub_26A104514();
  sub_26A0E48F0(v107, &qword_28036CB28, &qword_26A427980);
  SummaryItemSwitch.text4.getter();
  OUTLINED_FUNCTION_222();
  sub_26A10453C();
  OUTLINED_FUNCTION_162_0(v36);
  v108 = v129;
  SummaryItemSwitch.thumbnail.getter();
  sub_26A1044EC();
  sub_26A0E48F0(v108, &qword_28036CB20, &unk_26A426470);
  v109 = v130;
  SummaryItemSwitch.action.getter();
  sub_26A1043E8();
  sub_26A0E48F0(v109, &qword_28036CB18, &unk_26A427670);
  KeyPath = swift_getKeyPath();
  sub_26A0F76D8(KeyPath, 0x6E656E6F706D6F63, 0xED0000656D614E74, 1, v111, v112, v113, v114, v123, v124);

  v115 = swift_getKeyPath();
  sub_26A0F8364(v115, 0x6E6564496B6E696CLL, 0xEE00726569666974, 1, v116, v117, v118, v119, v123, v124);

  sub_26A0F9F28();
  sub_26A0E48F0(v66, &qword_28036D030, &qword_26A427410);
  OUTLINED_FUNCTION_175();
  OUTLINED_FUNCTION_75();
  result._object = v121;
  result._countAndFlagsBits = v120;
  return result;
}

uint64_t SummaryItemSwitch.componentProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoSummaryItem_Switch(0);
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
  OUTLINED_FUNCTION_9_3();
  sub_26A1245E8();
  sub_26A0E48F0(a1, &qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_18_1();
  sub_26A1243E0();
  OUTLINED_FUNCTION_175();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v6);
}

uint64_t SummaryItemSwitch.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for SummaryItemSwitch();
  *(inited + 64) = &protocol witness table for SummaryItemSwitch;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_19_2();
  sub_26A1245E8();
  OUTLINED_FUNCTION_142();

  sub_26A10BF5C(v1);
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A1245A0(&qword_28036CB48, type metadata accessor for _ProtoResponse.Section);
  OUTLINED_FUNCTION_56_1();

  swift_setDeallocating();
  return sub_26A10C358();
}

uint64_t type metadata accessor for SummaryItemSwitch()
{
  result = qword_28036D268;
  if (!qword_28036D268)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A1243E0()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t sub_26A124434(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_26A124534()
{
  result = type metadata accessor for _ProtoSummaryItem_Switch(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A1245A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A1245E8()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t OUTLINED_FUNCTION_17_2()
{

  return sub_26A1245E8();
}

uint64_t OUTLINED_FUNCTION_20_3()
{

  return type metadata accessor for _ProtoSummaryItem_Switch(0);
}

uint64_t OUTLINED_FUNCTION_23_4()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_27_3()
{

  sub_26A1BAEFC();
}

uint64_t OUTLINED_FUNCTION_30_0()
{
  v2 = *(v0 - 280);

  return sub_26A1243E0();
}

uint64_t OUTLINED_FUNCTION_39_0()
{
  *(v0 + 8) = 0;
  v3 = v0 + *(v1 + 28);

  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t OUTLINED_FUNCTION_41_2()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t OUTLINED_FUNCTION_43_2()
{

  return sub_26A124434(v1, v0);
}

uint64_t OUTLINED_FUNCTION_44_2@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return sub_26A1243E0();
}

uint64_t OUTLINED_FUNCTION_54_1()
{

  return sub_26A10FD9C();
}

uint64_t OUTLINED_FUNCTION_55_1()
{

  return type metadata accessor for _ProtoSummaryItem_Switch(0);
}

uint64_t OUTLINED_FUNCTION_56_1()
{

  return sub_26A4249C4();
}

uint64_t OUTLINED_FUNCTION_57_1()
{

  return sub_26A1243E0();
}

uint64_t OUTLINED_FUNCTION_58_1@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return sub_26A10FD9C();
}

uint64_t sub_26A12491C(uint64_t *a1)
{
  v4 = OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_41(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_152_0();
  v8 = type metadata accessor for _ProtoTextProperty(0);
  v9 = OUTLINED_FUNCTION_12(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_18();
  v14 = v13 - v12;
  v15 = *(v1 + *(type metadata accessor for _ProtoSummaryItem_Pair(0) + 20));
  v16 = *a1;
  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v2, 1, v8) == 1)
  {
    *v14 = MEMORY[0x277D84F90];
    *(v14 + 8) = 0;
    v17 = v14 + v8[7];
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v18 = v8[8];
    v19 = type metadata accessor for _ProtoActionProperty();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v19);
    v23 = v8[9];
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v19);
    if (__swift_getEnumTagSinglePayload(v2, 1, v8) != 1)
    {
      sub_26A0E48F0(v2, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A1295FC();
  }

  return sub_26A1295FC();
}

void sub_26A124B04()
{
  OUTLINED_FUNCTION_76();
  v3 = v2;
  v29 = v4;
  v5 = type metadata accessor for _ProtoTextProperty(0);
  v6 = OUTLINED_FUNCTION_12(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_152_0();
  v9 = OUTLINED_FUNCTION_41_2();
  v10 = OUTLINED_FUNCTION_41(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v13);
  v14 = *(v0 + *(OUTLINED_FUNCTION_34_1() + 20));
  v15 = *v3;
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_127_0();
  v16 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v16, v17, &unk_26A425BF0);
  if (v0 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_38_0();
    if (v18)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v19 = *(v5 + 32);
      v20 = type metadata accessor for _ProtoActionProperty();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v21, v22, v23, v20);
      v24 = *(v5 + 36);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v25, v26, v27, v20);
      OUTLINED_FUNCTION_38_0();
      if (!v18)
      {
        sub_26A0E48F0(v1, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A1295FC();
    }

    sub_26A1295FC();
    v3 = 0;
  }

  v28 = type metadata accessor for TextProperty(0);
  __swift_storeEnumTagSinglePayload(v29, v3, 1, v28);
  OUTLINED_FUNCTION_75();
}

void sub_26A124D48()
{
  OUTLINED_FUNCTION_76();
  v3 = v2;
  v29 = v4;
  v5 = type metadata accessor for _ProtoVisualProperty();
  v6 = OUTLINED_FUNCTION_12(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_152_0();
  v9 = OUTLINED_FUNCTION_41_2();
  v10 = OUTLINED_FUNCTION_41(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v13);
  v14 = *(v0 + *(OUTLINED_FUNCTION_34_1() + 20));
  v15 = *v3;
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_127_0();
  v16 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v16, v17, &unk_26A426430);
  if (v0 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_38_0();
    if (v18)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v19 = *(v5 + 32);
      v20 = type metadata accessor for _ProtoActionProperty();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v21, v22, v23, v20);
      v24 = *(v5 + 36);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v25, v26, v27, v20);
      OUTLINED_FUNCTION_38_0();
      if (!v18)
      {
        sub_26A0E48F0(v1, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      sub_26A1295FC();
    }

    sub_26A1295FC();
    v3 = 0;
  }

  v28 = type metadata accessor for VisualProperty();
  __swift_storeEnumTagSinglePayload(v29, v3, 1, v28);
  OUTLINED_FUNCTION_75();
}

void SummaryItemPair.action.getter()
{
  OUTLINED_FUNCTION_76();
  v20 = v4;
  v5 = type metadata accessor for _ProtoActionProperty();
  v6 = OUTLINED_FUNCTION_12(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_152_0();
  v9 = OUTLINED_FUNCTION_41_2();
  v10 = OUTLINED_FUNCTION_41(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v13);
  v14 = *(v0 + *(OUTLINED_FUNCTION_34_1() + 20));
  OUTLINED_FUNCTION_142();
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
      sub_26A1295FC();
    }

    sub_26A1295FC();
    v2 = 0;
  }

  v19 = type metadata accessor for ActionProperty();
  __swift_storeEnumTagSinglePayload(v20, v2, 1, v19);
  OUTLINED_FUNCTION_75();
}

uint64_t SummaryItemPair.componentName.getter()
{
  v1 = (*(v0 + *(type metadata accessor for _ProtoSummaryItem_Pair(0) + 20)) + OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName);
  OUTLINED_FUNCTION_142();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t SummaryItemPair.linkIdentifier.getter()
{
  v1 = (*(v0 + *(type metadata accessor for _ProtoSummaryItem_Pair(0) + 20)) + OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__linkIdentifier);
  OUTLINED_FUNCTION_142();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

void _ProtoSummaryItem_Pair.redactedProto.getter()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v341 = type metadata accessor for _ProtoActionProperty();
  v2 = OUTLINED_FUNCTION_12(v341);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_8();
  v324 = v5;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_48();
  v323 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v9 = OUTLINED_FUNCTION_41(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_8();
  v325 = v12;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_47();
  v322 = v14;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_48();
  v338 = v16;
  v337 = type metadata accessor for _ProtoVisualProperty();
  v17 = OUTLINED_FUNCTION_12(v337);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_8();
  v321 = v20;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_47();
  v320 = v22;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_47();
  v318 = v24;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_48();
  v317 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v28 = OUTLINED_FUNCTION_41(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_8();
  v319 = v31;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_47();
  v335 = v33;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_47();
  v336 = v35;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_47();
  v316 = v37;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_48();
  v334 = v39;
  v40 = type metadata accessor for _ProtoTextProperty(0);
  v41 = OUTLINED_FUNCTION_12(v40);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_8();
  v315 = v44;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_47();
  v314 = v46;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_47();
  v312 = v48;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_47();
  v311 = v50;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_47();
  v309 = v52;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_47();
  v308 = v54;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_47();
  v306 = v56;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_47();
  v305 = v58;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_47();
  v303 = v60;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_47();
  v302 = v62;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_47();
  v300 = v64;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_47();
  v299 = v66;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_47();
  v297 = v68;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_47();
  v296 = v70;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_47();
  v294 = v72;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_47();
  v293 = v74;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_47();
  v291 = v76;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_47();
  v290 = v78;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_47();
  v289 = v80;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_48();
  v287[1] = v82;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v84 = OUTLINED_FUNCTION_41(v83);
  v86 = *(v85 + 64);
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_8();
  v313 = v87;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_47();
  v333 = v89;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_47();
  v310 = v91;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_47();
  v332 = v93;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_47();
  v307 = v95;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_47();
  v331 = v97;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v98);
  OUTLINED_FUNCTION_47();
  v304 = v99;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v100);
  OUTLINED_FUNCTION_47();
  v330 = v101;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v102);
  OUTLINED_FUNCTION_47();
  v301 = v103;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v104);
  OUTLINED_FUNCTION_47();
  v329 = v105;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v106);
  OUTLINED_FUNCTION_47();
  v298 = v107;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v108);
  OUTLINED_FUNCTION_47();
  v328 = v109;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v110);
  OUTLINED_FUNCTION_47();
  v295 = v111;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v112);
  OUTLINED_FUNCTION_47();
  v327 = v113;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v114);
  OUTLINED_FUNCTION_47();
  v292 = v115;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v116);
  OUTLINED_FUNCTION_47();
  v326 = v117;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v118);
  OUTLINED_FUNCTION_47();
  v288 = v119;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v120);
  v122 = v287 - v121;
  MEMORY[0x28223BE20](v123);
  OUTLINED_FUNCTION_47();
  v342 = v124;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v125);
  v127 = v287 - v126;
  MEMORY[0x28223BE20](v128);
  v130 = v287 - v129;
  OUTLINED_FUNCTION_10_4();
  sub_26A129804();
  v131 = *(type metadata accessor for _ProtoSummaryItem_Pair(0) + 20);
  v339 = v1;
  v340 = v131;
  v132 = *(v1 + v131);
  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  LODWORD(v1) = __swift_getEnumTagSinglePayload(v130, 1, v40);
  sub_26A0E48F0(v130, &qword_28036C7B8, &unk_26A425BF0);
  if (v1 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_3_6(v127);
    if (v133)
    {
      OUTLINED_FUNCTION_11_5(MEMORY[0x277D84F90]);
      v134 = *(v40 + 32);
      OUTLINED_FUNCTION_92();
      v135 = v341;
      __swift_storeEnumTagSinglePayload(v136, v137, v138, v341);
      v139 = *(v40 + 36);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v140, v141, v142, v135);
      OUTLINED_FUNCTION_3_6(v127);
      v143 = v340;
      if (!v133)
      {
        sub_26A0E48F0(v127, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A1295FC();
      v143 = v340;
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_1_6();
    v144 = v339;
    v145 = *(v339 + v143);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v147 = *(v144 + v143);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v148 = type metadata accessor for _ProtoSummaryItem_Pair._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v148);
      OUTLINED_FUNCTION_16_3();
      *(v144 + v143) = v149;
    }

    sub_26A1295FC();
    v150 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v150, v151, v152, v40);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  LODWORD(v153) = __swift_getEnumTagSinglePayload(v122, 1, v40);
  OUTLINED_FUNCTION_38_2(v122);
  if (v153 == 1)
  {
    v155 = v339;
    v154 = v340;
  }

  else
  {
    v153 = v288;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_2_3();
    if (v133)
    {
      OUTLINED_FUNCTION_11_5(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_0_6();
      v154 = v340;
      if (!v133)
      {
        sub_26A0E48F0(v153, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A1295FC();
      v154 = v340;
    }

    OUTLINED_FUNCTION_44_3();
    OUTLINED_FUNCTION_1_6();
    v155 = v339;
    v156 = *(v339 + v154);
    v157 = swift_isUniquelyReferenced_nonNull_native();
    v158 = *(v155 + v154);
    if ((v157 & 1) == 0)
    {
      v159 = type metadata accessor for _ProtoSummaryItem_Pair._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v159);
      OUTLINED_FUNCTION_16_3();
      OUTLINED_FUNCTION_21_4(v160);
    }

    OUTLINED_FUNCTION_18_2();
    v161 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v161, v162, v163, v40);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_4_5();
  if (v153 != 1)
  {
    v153 = v292;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_2_3();
    if (v133)
    {
      OUTLINED_FUNCTION_11_5(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_0_6();
      if (!v133)
      {
        sub_26A0E48F0(v153, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A1295FC();
    }

    OUTLINED_FUNCTION_44_3();
    OUTLINED_FUNCTION_1_6();
    v164 = *(v155 + v154);
    v165 = swift_isUniquelyReferenced_nonNull_native();
    v166 = *(v155 + v154);
    if ((v165 & 1) == 0)
    {
      v167 = type metadata accessor for _ProtoSummaryItem_Pair._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v167);
      OUTLINED_FUNCTION_16_3();
      OUTLINED_FUNCTION_21_4(v168);
    }

    OUTLINED_FUNCTION_18_2();
    v169 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v169, v170, v171, v40);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_4_5();
  if (v153 != 1)
  {
    v153 = v295;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_2_3();
    if (v133)
    {
      OUTLINED_FUNCTION_11_5(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_0_6();
      if (!v133)
      {
        sub_26A0E48F0(v153, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A1295FC();
    }

    OUTLINED_FUNCTION_44_3();
    OUTLINED_FUNCTION_1_6();
    v172 = *(v155 + v154);
    v173 = swift_isUniquelyReferenced_nonNull_native();
    v174 = *(v155 + v154);
    if ((v173 & 1) == 0)
    {
      v175 = type metadata accessor for _ProtoSummaryItem_Pair._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v175);
      OUTLINED_FUNCTION_16_3();
      OUTLINED_FUNCTION_21_4(v176);
    }

    OUTLINED_FUNCTION_18_2();
    v177 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v177, v178, v179, v40);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_4_5();
  if (v153 != 1)
  {
    v153 = v298;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_2_3();
    if (v133)
    {
      OUTLINED_FUNCTION_11_5(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_0_6();
      if (!v133)
      {
        sub_26A0E48F0(v153, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A1295FC();
    }

    OUTLINED_FUNCTION_44_3();
    OUTLINED_FUNCTION_1_6();
    v180 = *(v155 + v154);
    v181 = swift_isUniquelyReferenced_nonNull_native();
    v182 = *(v155 + v154);
    if ((v181 & 1) == 0)
    {
      v183 = type metadata accessor for _ProtoSummaryItem_Pair._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v183);
      OUTLINED_FUNCTION_16_3();
      OUTLINED_FUNCTION_21_4(v184);
    }

    OUTLINED_FUNCTION_18_2();
    v185 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v185, v186, v187, v40);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_4_5();
  if (v153 != 1)
  {
    v153 = v301;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_2_3();
    if (v133)
    {
      OUTLINED_FUNCTION_11_5(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_0_6();
      if (!v133)
      {
        sub_26A0E48F0(v153, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A1295FC();
    }

    OUTLINED_FUNCTION_44_3();
    OUTLINED_FUNCTION_1_6();
    v188 = *(v155 + v154);
    v189 = swift_isUniquelyReferenced_nonNull_native();
    v190 = *(v155 + v154);
    if ((v189 & 1) == 0)
    {
      v191 = type metadata accessor for _ProtoSummaryItem_Pair._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v191);
      OUTLINED_FUNCTION_16_3();
      OUTLINED_FUNCTION_21_4(v192);
    }

    OUTLINED_FUNCTION_18_2();
    v193 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v193, v194, v195, v40);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_4_5();
  if (v153 != 1)
  {
    v153 = v304;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_2_3();
    if (v133)
    {
      OUTLINED_FUNCTION_11_5(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_0_6();
      if (!v133)
      {
        sub_26A0E48F0(v153, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A1295FC();
    }

    OUTLINED_FUNCTION_44_3();
    OUTLINED_FUNCTION_1_6();
    v196 = *(v155 + v154);
    v197 = swift_isUniquelyReferenced_nonNull_native();
    v198 = *(v155 + v154);
    if ((v197 & 1) == 0)
    {
      v199 = type metadata accessor for _ProtoSummaryItem_Pair._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v199);
      OUTLINED_FUNCTION_16_3();
      OUTLINED_FUNCTION_21_4(v200);
    }

    OUTLINED_FUNCTION_18_2();
    v201 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v201, v202, v203, v40);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_4_5();
  if (v153 != 1)
  {
    v153 = v307;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_2_3();
    if (v133)
    {
      OUTLINED_FUNCTION_11_5(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_0_6();
      if (!v133)
      {
        sub_26A0E48F0(v153, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A1295FC();
    }

    OUTLINED_FUNCTION_44_3();
    OUTLINED_FUNCTION_1_6();
    v204 = *(v155 + v154);
    v205 = swift_isUniquelyReferenced_nonNull_native();
    v206 = *(v155 + v154);
    if ((v205 & 1) == 0)
    {
      v207 = type metadata accessor for _ProtoSummaryItem_Pair._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v207);
      OUTLINED_FUNCTION_16_3();
      OUTLINED_FUNCTION_21_4(v208);
    }

    OUTLINED_FUNCTION_18_2();
    v209 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v209, v210, v211, v40);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_4_5();
  if (v153 != 1)
  {
    v153 = v310;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_2_3();
    if (v133)
    {
      OUTLINED_FUNCTION_11_5(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_0_6();
      if (!v133)
      {
        sub_26A0E48F0(v153, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A1295FC();
    }

    OUTLINED_FUNCTION_44_3();
    OUTLINED_FUNCTION_1_6();
    v212 = *(v155 + v154);
    v213 = swift_isUniquelyReferenced_nonNull_native();
    v214 = *(v155 + v154);
    if ((v213 & 1) == 0)
    {
      v215 = type metadata accessor for _ProtoSummaryItem_Pair._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v215);
      OUTLINED_FUNCTION_16_3();
      OUTLINED_FUNCTION_21_4(v216);
    }

    OUTLINED_FUNCTION_18_2();
    v217 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v217, v218, v219, v40);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_4_5();
  if (v153 != 1)
  {
    v220 = v313;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_2_3();
    if (v133)
    {
      OUTLINED_FUNCTION_11_5(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_0_6();
      if (!v133)
      {
        sub_26A0E48F0(v220, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A1295FC();
    }

    OUTLINED_FUNCTION_44_3();
    OUTLINED_FUNCTION_1_6();
    v221 = *(v155 + v154);
    v222 = swift_isUniquelyReferenced_nonNull_native();
    v223 = *(v155 + v154);
    if ((v222 & 1) == 0)
    {
      v224 = type metadata accessor for _ProtoSummaryItem_Pair._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v224);
      OUTLINED_FUNCTION_16_3();
      OUTLINED_FUNCTION_21_4(v225);
    }

    OUTLINED_FUNCTION_18_2();
    v226 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v226, v227, v228, v40);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  v229 = v334;
  OUTLINED_FUNCTION_19_3();
  v230 = v337;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v229, 1, v337);
  OUTLINED_FUNCTION_38_2(v229);
  if (EnumTagSinglePayload != 1)
  {
    v232 = v316;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_3_6(v232);
    if (v133)
    {
      OUTLINED_FUNCTION_50_1(MEMORY[0x277D84F90]);
      v233 = *(v230 + 32);
      OUTLINED_FUNCTION_92();
      v234 = v341;
      __swift_storeEnumTagSinglePayload(v235, v236, v237, v341);
      v238 = *(v230 + 36);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v239, v240, v241, v234);
      OUTLINED_FUNCTION_3_6(v232);
      if (!v133)
      {
        sub_26A0E48F0(v232, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      sub_26A1295FC();
    }

    _ProtoVisualProperty.redactedProto.getter();
    OUTLINED_FUNCTION_26_3();
    v242 = *(v155 + v154);
    v243 = swift_isUniquelyReferenced_nonNull_native();
    v244 = *(v155 + v154);
    if ((v243 & 1) == 0)
    {
      v245 = type metadata accessor for _ProtoSummaryItem_Pair._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v245);
      OUTLINED_FUNCTION_16_3();
      OUTLINED_FUNCTION_21_4(v246);
    }

    sub_26A1295FC();
    v247 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v247, v248, v249, v230);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  v250 = v335;
  sub_26A10FD9C();
  v251 = __swift_getEnumTagSinglePayload(v250, 1, v230);
  OUTLINED_FUNCTION_38_2(v250);
  if (v251 == 1)
  {
    v252 = v340;
  }

  else
  {
    v253 = v319;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_3_6(v253);
    v252 = v340;
    if (v133)
    {
      OUTLINED_FUNCTION_50_1(MEMORY[0x277D84F90]);
      v254 = *(v230 + 32);
      OUTLINED_FUNCTION_92();
      v255 = v341;
      __swift_storeEnumTagSinglePayload(v256, v257, v258, v341);
      v259 = *(v230 + 36);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v260, v261, v262, v255);
      OUTLINED_FUNCTION_3_6(v253);
      if (!v133)
      {
        sub_26A0E48F0(v253, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      sub_26A1295FC();
    }

    _ProtoVisualProperty.redactedProto.getter();
    OUTLINED_FUNCTION_26_3();
    v263 = *(v155 + v252);
    v264 = swift_isUniquelyReferenced_nonNull_native();
    v265 = *(v155 + v252);
    if ((v264 & 1) == 0)
    {
      v266 = type metadata accessor for _ProtoSummaryItem_Pair._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v266);
      OUTLINED_FUNCTION_16_3();
      OUTLINED_FUNCTION_21_4(v267);
    }

    sub_26A1295FC();
    v268 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v268, v269, v270, v230);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  v271 = v338;
  sub_26A10FD9C();
  v272 = v341;
  v273 = __swift_getEnumTagSinglePayload(v271, 1, v341);
  OUTLINED_FUNCTION_38_2(v271);
  if (v273 != 1)
  {
    v274 = v322;
    sub_26A10FD9C();
    if (__swift_getEnumTagSinglePayload(v274, 1, v272) == 1)
    {
      v275 = v323;
      *v323 = MEMORY[0x277D84F90];
      *(v275 + 8) = 0;
      *(v275 + 16) = 0xE000000000000000;
      v276 = v275 + *(v272 + 24);
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v277 = __swift_getEnumTagSinglePayload(v274, 1, v272);
      v278 = v324;
      if (v277 != 1)
      {
        sub_26A0E48F0(v274, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      v275 = v323;
      sub_26A1295FC();
      v278 = v324;
    }

    _s10SnippetKit14ActionPropertyV13redactedProtoAA01_fcD0Vvg_0(v278);
    sub_26A129650(v275, type metadata accessor for _ProtoActionProperty);
    v279 = *(v155 + v252);
    v280 = swift_isUniquelyReferenced_nonNull_native();
    v281 = *(v155 + v252);
    if ((v280 & 1) == 0)
    {
      v282 = type metadata accessor for _ProtoSummaryItem_Pair._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v282);
      OUTLINED_FUNCTION_16_3();
      OUTLINED_FUNCTION_21_4(v283);
    }

    sub_26A1295FC();
    v284 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v284, v285, v286, v272);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t SummaryItemPair.init(text4:text6:text1:text2:text3:text5:text7:text8:text9:text10:thumbnail1:thumbnail2:action:componentName:linkIdentifier:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  type metadata accessor for _ProtoSummaryItem_Pair(0);
  OUTLINED_FUNCTION_9_4();
  sub_26A1297BC(v13, v14);
  sub_26A4249C4();

  sub_26A0E48F0(a13, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_40_1(a12);
  OUTLINED_FUNCTION_40_1(a11);
  v15 = OUTLINED_FUNCTION_175();
  sub_26A0E48F0(v15, v16, &unk_26A428720);
  OUTLINED_FUNCTION_40_1(a9);
  OUTLINED_FUNCTION_40_1(a8);
  OUTLINED_FUNCTION_40_1(a7);
  OUTLINED_FUNCTION_40_1(a6);
  OUTLINED_FUNCTION_40_1(a5);
  OUTLINED_FUNCTION_40_1(a4);
  OUTLINED_FUNCTION_40_1(a3);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26A126D78(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v158 = a8;
  v156 = a7;
  v154 = a6;
  v152 = a5;
  v150 = a4;
  v171 = a3;
  v19 = type metadata accessor for ActionProperty();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v149 = &v135 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v167 = &v135 - v24;
  v166 = type metadata accessor for _ProtoActionProperty();
  v25 = *(*(v166 - 8) + 64);
  MEMORY[0x28223BE20](v166);
  v146 = &v135 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v147 = &v135 - v28;
  v29 = type metadata accessor for VisualProperty();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v164 = &v135 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v165 = &v135 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v162 = &v135 - v36;
  v163 = type metadata accessor for _ProtoVisualProperty();
  v37 = *(*(v163 - 8) + 64);
  MEMORY[0x28223BE20](v163);
  v145 = &v135 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v148 = &v135 - v40;
  MEMORY[0x28223BE20](v41);
  v144 = &v135 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43 - 8);
  v161 = &v135 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v160 = &v135 - v47;
  MEMORY[0x28223BE20](v48);
  v159 = &v135 - v49;
  MEMORY[0x28223BE20](v50);
  v157 = &v135 - v51;
  MEMORY[0x28223BE20](v52);
  v155 = &v135 - v53;
  MEMORY[0x28223BE20](v54);
  v153 = &v135 - v55;
  MEMORY[0x28223BE20](v56);
  v151 = &v135 - v57;
  MEMORY[0x28223BE20](v58);
  v60 = &v135 - v59;
  v61 = type metadata accessor for _ProtoTextProperty(0);
  v62 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61);
  v143 = &v135 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v64);
  v142 = &v135 - v65;
  MEMORY[0x28223BE20](v66);
  v141 = &v135 - v67;
  MEMORY[0x28223BE20](v68);
  v140 = &v135 - v69;
  MEMORY[0x28223BE20](v70);
  v139 = &v135 - v71;
  MEMORY[0x28223BE20](v72);
  v138 = &v135 - v73;
  MEMORY[0x28223BE20](v74);
  v137 = &v135 - v75;
  MEMORY[0x28223BE20](v76);
  v136 = &v135 - v77;
  MEMORY[0x28223BE20](v78);
  v80 = (&v135 - v79);
  v81 = type metadata accessor for TextProperty(0);
  v82 = *(*(v81 - 8) + 64);
  MEMORY[0x28223BE20](v81 - 8);
  v83 = a2[3];
  v84 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v83);
  (*(v84 + 8))(v83, v84);
  sub_26A1295FC();
  _ProtoSummaryItem_Pair.text4.setter();
  v86 = v171[3];
  v85 = v171[4];
  __swift_project_boxed_opaque_existential_1(v171, v86);
  (*(v85 + 8))(v86, v85);
  sub_26A1295FC();
  v171 = v80;
  _ProtoSummaryItem_Pair.text6.setter();
  sub_26A10FD9C();
  v87 = v169;
  if (v169)
  {
    v88 = v170;
    __swift_project_boxed_opaque_existential_1(&v168, v169);
    (*(v88 + 8))(v87, v88);
    sub_26A1295FC();
    __swift_storeEnumTagSinglePayload(v60, 0, 1, v61);
    __swift_destroy_boxed_opaque_existential_1(&v168);
    v89 = v61;
    if (__swift_getEnumTagSinglePayload(v60, 1, v61) != 1)
    {
      v90 = v136;
      sub_26A1295FC();
      sub_26A129804();
      _ProtoSummaryItem_Pair.text1.setter();
      sub_26A129650(v90, type metadata accessor for _ProtoTextProperty);
      goto LABEL_6;
    }
  }

  else
  {
    sub_26A0E48F0(&v168, &qword_28036CB08, &unk_26A428720);
    __swift_storeEnumTagSinglePayload(v60, 1, 1, v61);
    v89 = v61;
  }

  sub_26A0E48F0(v60, &qword_28036C7B8, &unk_26A425BF0);
LABEL_6:
  sub_26A10FD9C();
  v91 = v169;
  if (v169)
  {
    v92 = v170;
    __swift_project_boxed_opaque_existential_1(&v168, v169);
    (*(v92 + 8))(v91, v92);
    v93 = v151;
    sub_26A1295FC();
    __swift_storeEnumTagSinglePayload(v93, 0, 1, v89);
    __swift_destroy_boxed_opaque_existential_1(&v168);
    if (__swift_getEnumTagSinglePayload(v93, 1, v89) != 1)
    {
      v94 = v137;
      sub_26A1295FC();
      sub_26A129804();
      _ProtoSummaryItem_Pair.text2.setter();
      sub_26A129650(v94, type metadata accessor for _ProtoTextProperty);
      goto LABEL_11;
    }
  }

  else
  {
    sub_26A0E48F0(&v168, &qword_28036CB08, &unk_26A428720);
    v93 = v151;
    __swift_storeEnumTagSinglePayload(v151, 1, 1, v89);
  }

  sub_26A0E48F0(v93, &qword_28036C7B8, &unk_26A425BF0);
LABEL_11:
  sub_26A10FD9C();
  v95 = v169;
  if (v169)
  {
    v96 = v170;
    __swift_project_boxed_opaque_existential_1(&v168, v169);
    (*(v96 + 8))(v95, v96);
    v97 = v153;
    sub_26A1295FC();
    __swift_storeEnumTagSinglePayload(v97, 0, 1, v89);
    __swift_destroy_boxed_opaque_existential_1(&v168);
    if (__swift_getEnumTagSinglePayload(v97, 1, v89) != 1)
    {
      v98 = v138;
      sub_26A1295FC();
      sub_26A129804();
      _ProtoSummaryItem_Pair.text3.setter();
      sub_26A129650(v98, type metadata accessor for _ProtoTextProperty);
      goto LABEL_16;
    }
  }

  else
  {
    sub_26A0E48F0(&v168, &qword_28036CB08, &unk_26A428720);
    v97 = v153;
    __swift_storeEnumTagSinglePayload(v153, 1, 1, v89);
  }

  sub_26A0E48F0(v97, &qword_28036C7B8, &unk_26A425BF0);
LABEL_16:
  sub_26A10FD9C();
  v99 = v169;
  if (v169)
  {
    v100 = v170;
    __swift_project_boxed_opaque_existential_1(&v168, v169);
    (*(v100 + 8))(v99, v100);
    v101 = v155;
    sub_26A1295FC();
    __swift_storeEnumTagSinglePayload(v101, 0, 1, v89);
    __swift_destroy_boxed_opaque_existential_1(&v168);
    if (__swift_getEnumTagSinglePayload(v101, 1, v89) != 1)
    {
      v102 = v139;
      sub_26A1295FC();
      sub_26A129804();
      _ProtoSummaryItem_Pair.text5.setter();
      sub_26A129650(v102, type metadata accessor for _ProtoTextProperty);
      goto LABEL_21;
    }
  }

  else
  {
    sub_26A0E48F0(&v168, &qword_28036CB08, &unk_26A428720);
    v101 = v155;
    __swift_storeEnumTagSinglePayload(v155, 1, 1, v89);
  }

  sub_26A0E48F0(v101, &qword_28036C7B8, &unk_26A425BF0);
LABEL_21:
  sub_26A10FD9C();
  v103 = v169;
  if (v169)
  {
    v104 = v170;
    __swift_project_boxed_opaque_existential_1(&v168, v169);
    (*(v104 + 8))(v103, v104);
    v105 = v157;
    sub_26A1295FC();
    __swift_storeEnumTagSinglePayload(v105, 0, 1, v89);
    __swift_destroy_boxed_opaque_existential_1(&v168);
    if (__swift_getEnumTagSinglePayload(v105, 1, v89) != 1)
    {
      v106 = v140;
      sub_26A1295FC();
      sub_26A129804();
      _ProtoSummaryItem_Pair.text7.setter();
      sub_26A129650(v106, type metadata accessor for _ProtoTextProperty);
      goto LABEL_26;
    }
  }

  else
  {
    sub_26A0E48F0(&v168, &qword_28036CB08, &unk_26A428720);
    v105 = v157;
    __swift_storeEnumTagSinglePayload(v157, 1, 1, v89);
  }

  sub_26A0E48F0(v105, &qword_28036C7B8, &unk_26A425BF0);
LABEL_26:
  sub_26A10FD9C();
  v107 = v169;
  if (v169)
  {
    v108 = v170;
    __swift_project_boxed_opaque_existential_1(&v168, v169);
    (*(v108 + 8))(v107, v108);
    v109 = v159;
    sub_26A1295FC();
    __swift_storeEnumTagSinglePayload(v109, 0, 1, v89);
    __swift_destroy_boxed_opaque_existential_1(&v168);
    if (__swift_getEnumTagSinglePayload(v109, 1, v89) != 1)
    {
      v110 = v141;
      sub_26A1295FC();
      sub_26A129804();
      _ProtoSummaryItem_Pair.text8.setter();
      sub_26A129650(v110, type metadata accessor for _ProtoTextProperty);
      goto LABEL_31;
    }
  }

  else
  {
    sub_26A0E48F0(&v168, &qword_28036CB08, &unk_26A428720);
    v109 = v159;
    __swift_storeEnumTagSinglePayload(v159, 1, 1, v89);
  }

  sub_26A0E48F0(v109, &qword_28036C7B8, &unk_26A425BF0);
LABEL_31:
  sub_26A10FD9C();
  v111 = v169;
  if (v169)
  {
    v112 = v170;
    __swift_project_boxed_opaque_existential_1(&v168, v169);
    (*(v112 + 8))(v111, v112);
    v113 = v160;
    sub_26A1295FC();
    __swift_storeEnumTagSinglePayload(v113, 0, 1, v89);
    __swift_destroy_boxed_opaque_existential_1(&v168);
    if (__swift_getEnumTagSinglePayload(v113, 1, v89) != 1)
    {
      v114 = v142;
      sub_26A1295FC();
      sub_26A129804();
      _ProtoSummaryItem_Pair.text9.setter();
      sub_26A129650(v114, type metadata accessor for _ProtoTextProperty);
      goto LABEL_36;
    }
  }

  else
  {
    sub_26A0E48F0(&v168, &qword_28036CB08, &unk_26A428720);
    v113 = v160;
    __swift_storeEnumTagSinglePayload(v160, 1, 1, v89);
  }

  sub_26A0E48F0(v113, &qword_28036C7B8, &unk_26A425BF0);
LABEL_36:
  sub_26A10FD9C();
  v115 = v169;
  if (v169)
  {
    v116 = v170;
    __swift_project_boxed_opaque_existential_1(&v168, v169);
    (*(v116 + 8))(v115, v116);
    v117 = v161;
    sub_26A1295FC();
    __swift_storeEnumTagSinglePayload(v117, 0, 1, v89);
    __swift_destroy_boxed_opaque_existential_1(&v168);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v117, 1, v89);
    v119 = v163;
    if (EnumTagSinglePayload != 1)
    {
      v120 = v143;
      sub_26A1295FC();
      sub_26A129804();
      _ProtoSummaryItem_Pair.text10.setter();
      sub_26A129650(v120, type metadata accessor for _ProtoTextProperty);
      goto LABEL_41;
    }
  }

  else
  {
    sub_26A0E48F0(&v168, &qword_28036CB08, &unk_26A428720);
    v117 = v161;
    __swift_storeEnumTagSinglePayload(v161, 1, 1, v89);
    v119 = v163;
  }

  sub_26A0E48F0(v117, &qword_28036C7B8, &unk_26A425BF0);
LABEL_41:
  sub_26A10FD9C();
  v121 = v169;
  if (v169)
  {
    v122 = v170;
    __swift_project_boxed_opaque_existential_1(&v168, v169);
    (*(v122 + 8))(v121, v122);
    v123 = v162;
    sub_26A1295FC();
    __swift_storeEnumTagSinglePayload(v123, 0, 1, v119);
    __swift_destroy_boxed_opaque_existential_1(&v168);
    if (__swift_getEnumTagSinglePayload(v123, 1, v119) != 1)
    {
      v124 = v144;
      sub_26A1295FC();
      sub_26A129804();
      _ProtoSummaryItem_Pair.thumbnail1.setter();
      sub_26A129650(v124, type metadata accessor for _ProtoVisualProperty);
      goto LABEL_46;
    }
  }

  else
  {
    sub_26A0E48F0(&v168, &qword_28036CB00, &unk_26A426450);
    v123 = v162;
    __swift_storeEnumTagSinglePayload(v162, 1, 1, v119);
  }

  sub_26A0E48F0(v123, &qword_28036CAE8, &unk_26A426430);
LABEL_46:
  sub_26A10FD9C();
  v125 = v169;
  if (v169)
  {
    v126 = v170;
    __swift_project_boxed_opaque_existential_1(&v168, v169);
    (*(v126 + 8))(v125, v126);
    v127 = v165;
    sub_26A1295FC();
    __swift_storeEnumTagSinglePayload(v127, 0, 1, v119);
    __swift_destroy_boxed_opaque_existential_1(&v168);
    if (__swift_getEnumTagSinglePayload(v127, 1, v119) != 1)
    {
      v128 = v145;
      sub_26A1295FC();
      sub_26A129804();
      _ProtoSummaryItem_Pair.thumbnail2.setter();
      sub_26A129650(v128, type metadata accessor for _ProtoVisualProperty);
      goto LABEL_51;
    }
  }

  else
  {
    sub_26A0E48F0(&v168, &qword_28036CB00, &unk_26A426450);
    v127 = v165;
    __swift_storeEnumTagSinglePayload(v165, 1, 1, v119);
  }

  sub_26A0E48F0(v127, &qword_28036CAE8, &unk_26A426430);
LABEL_51:
  sub_26A10FD9C();
  v129 = v169;
  if (v169)
  {
    v130 = v170;
    __swift_project_boxed_opaque_existential_1(&v168, v169);
    (*(v130 + 8))(v129, v130);
    v131 = v167;
    sub_26A1295FC();
    v132 = v166;
    __swift_storeEnumTagSinglePayload(v131, 0, 1, v166);
    __swift_destroy_boxed_opaque_existential_1(&v168);
    if (__swift_getEnumTagSinglePayload(v131, 1, v132) != 1)
    {
      v133 = v147;
      sub_26A1295FC();
      sub_26A129804();
      _ProtoSummaryItem_Pair.action.setter();
      sub_26A129650(v133, type metadata accessor for _ProtoActionProperty);
      goto LABEL_56;
    }
  }

  else
  {
    sub_26A0E48F0(&v168, &qword_28036CAF8, &unk_26A426D30);
    v131 = v167;
    __swift_storeEnumTagSinglePayload(v167, 1, 1, v166);
  }

  sub_26A0E48F0(v131, &off_28036C7C0, &off_26A427400);
LABEL_56:

  result = _ProtoSummaryItem_Pair.componentName.setter();
  if (a18)
  {

    return _ProtoSummaryItem_Pair.linkIdentifier.setter();
  }

  return result;
}

void SummaryItemPair.init(text4:text6:text1:text2:text3:text5:text7:text8:text9:text10:thumbnail1:thumbnail2:action:componentName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_76();
  v37 = v22;
  v38 = v24;
  v39 = v23;
  v40 = v26;
  v41 = v25;
  v42 = v28;
  v43 = v27;
  v29 = v27;
  v44 = v30;
  OUTLINED_FUNCTION_39_1();
  sub_26A0E5D68(v31, v57);
  sub_26A0E5D68(v29, v56);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  sub_26A10FD9C();
  sub_26A10FD9C();
  sub_26A10FD9C();
  type metadata accessor for _ProtoSummaryItem_Pair(0);
  OUTLINED_FUNCTION_9_4();
  sub_26A1297BC(v32, v33);
  sub_26A4249C4();

  sub_26A0E48F0(v36, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_52_1(v35);
  OUTLINED_FUNCTION_52_1(v34);
  OUTLINED_FUNCTION_164_0(a22);
  OUTLINED_FUNCTION_164_0(a21);
  OUTLINED_FUNCTION_164_0(v37);
  OUTLINED_FUNCTION_164_0(v38);
  OUTLINED_FUNCTION_164_0(v39);
  OUTLINED_FUNCTION_164_0(v40);
  OUTLINED_FUNCTION_164_0(v41);
  OUTLINED_FUNCTION_164_0(v42);
  __swift_destroy_boxed_opaque_existential_1(v43);
  __swift_destroy_boxed_opaque_existential_1(v44);
  sub_26A0E48F0(v45, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_52_1(v46);
  OUTLINED_FUNCTION_52_1(v47);
  OUTLINED_FUNCTION_164_0(v48);
  OUTLINED_FUNCTION_164_0(v49);
  OUTLINED_FUNCTION_164_0(v50);
  OUTLINED_FUNCTION_164_0(v51);
  OUTLINED_FUNCTION_164_0(v52);
  OUTLINED_FUNCTION_164_0(v53);
  OUTLINED_FUNCTION_164_0(&v54);
  OUTLINED_FUNCTION_164_0(&v55);
  __swift_destroy_boxed_opaque_existential_1(v56);
  __swift_destroy_boxed_opaque_existential_1(v57);
  OUTLINED_FUNCTION_75();
}

void SummaryItemPair.init(text4:text6:text1:text2:text3:text5:text7:text8:text9:text10:thumbnail1:thumbnail2:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_76();
  v37 = v23;
  v38 = v22;
  v39 = v24;
  v40 = v26;
  v41 = v25;
  v42 = v28;
  v43 = v27;
  v29 = v27;
  v44 = v30;
  OUTLINED_FUNCTION_39_1();
  sub_26A0E5D68(v31, v57);
  sub_26A0E5D68(v29, v56);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  sub_26A10FD9C();
  sub_26A10FD9C();
  sub_26A10FD9C();
  type metadata accessor for _ProtoSummaryItem_Pair(0);
  OUTLINED_FUNCTION_9_4();
  sub_26A1297BC(v32, v33);
  sub_26A4249C4();
  sub_26A0E48F0(v36, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_53_1(v35);
  OUTLINED_FUNCTION_53_1(v34);
  OUTLINED_FUNCTION_164_0(a22);
  OUTLINED_FUNCTION_164_0(a21);
  OUTLINED_FUNCTION_164_0(v37);
  OUTLINED_FUNCTION_164_0(v38);
  OUTLINED_FUNCTION_164_0(v39);
  OUTLINED_FUNCTION_164_0(v40);
  OUTLINED_FUNCTION_164_0(v41);
  OUTLINED_FUNCTION_164_0(v42);
  __swift_destroy_boxed_opaque_existential_1(v43);
  __swift_destroy_boxed_opaque_existential_1(v44);
  sub_26A0E48F0(v45, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_53_1(v46);
  OUTLINED_FUNCTION_53_1(v47);
  OUTLINED_FUNCTION_164_0(v48);
  OUTLINED_FUNCTION_164_0(v49);
  OUTLINED_FUNCTION_164_0(v50);
  OUTLINED_FUNCTION_164_0(v51);
  OUTLINED_FUNCTION_164_0(v52);
  OUTLINED_FUNCTION_164_0(v53);
  OUTLINED_FUNCTION_164_0(&v54);
  OUTLINED_FUNCTION_164_0(&v55);
  __swift_destroy_boxed_opaque_existential_1(v56);
  __swift_destroy_boxed_opaque_existential_1(v57);
  OUTLINED_FUNCTION_75();
}

Swift::String __swiftcall SummaryItemPair.description(redacted:)(Swift::Bool redacted)
{
  OUTLINED_FUNCTION_76();
  v94 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB18, &unk_26A427670);
  OUTLINED_FUNCTION_41(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  v99 = &v94 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB20, &unk_26A426470);
  OUTLINED_FUNCTION_41(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v12);
  v98 = &v94 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v15 = OUTLINED_FUNCTION_41(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_8();
  v97 = v18;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v19);
  v21 = &v94 - v20;
  v22 = type metadata accessor for _ProtoTextProperty(0);
  v23 = OUTLINED_FUNCTION_12(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_8();
  v96 = v26;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v27);
  v29 = &v94 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB30, &qword_26A426480);
  v31 = OUTLINED_FUNCTION_41(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_47();
  v95 = v35;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v36);
  v38 = &v94 - v37;
  v39 = type metadata accessor for SummaryItemPair();
  v40 = OUTLINED_FUNCTION_41(v39);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v43);
  v45 = &v94 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D028, &unk_26A426C50);
  OUTLINED_FUNCTION_12(v46);
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v49);
  v51 = &v94 - v50;
  OUTLINED_FUNCTION_23_5();
  sub_26A129804();
  if (v3)
  {
    _ProtoSummaryItem_Pair.redactedProto.getter();
  }

  else
  {
    sub_26A129804();
  }

  sub_26A1295FC();
  v51[*(v46 + 32)] = v3 & 1;
  sub_26A129650(v45, type metadata accessor for SummaryItemPair);
  v52 = MEMORY[0x277D84F90];
  *&v51[*(v46 + 28)] = MEMORY[0x277D84F90];
  v53 = *&v51[*(type metadata accessor for _ProtoSummaryItem_Pair(0) + 20)];
  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_3_6(v21);
  if (v54)
  {
    *v29 = v52;
    *(v29 + 4) = 0;
    v55 = &v29[v22[7]];
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v56 = v22[8];
    v57 = type metadata accessor for _ProtoActionProperty();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v58, v59, v60, v57);
    v61 = v22[9];
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v62, v63, v64, v57);
    OUTLINED_FUNCTION_3_6(v21);
    v65 = v97;
    if (!v54)
    {
      sub_26A0E48F0(v21, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A1295FC();
    v65 = v97;
  }

  sub_26A1295FC();
  v66 = type metadata accessor for TextProperty(0);
  __swift_storeEnumTagSinglePayload(v38, 0, 1, v66);
  OUTLINED_FUNCTION_222();
  sub_26A108150();
  sub_26A0E48F0(v38, &qword_28036CB30, &qword_26A426480);
  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_3_6(v65);
  if (v54)
  {
    v67 = v96;
    *v96 = v52;
    *(v67 + 4) = 0;
    v68 = v67 + v22[7];
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v69 = v22[8];
    v70 = type metadata accessor for _ProtoActionProperty();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v71, v72, v73, v70);
    v74 = v22[9];
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v75, v76, v77, v70);
    OUTLINED_FUNCTION_3_6(v65);
    if (!v54)
    {
      sub_26A0E48F0(v65, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A1295FC();
  }

  v78 = v95;
  sub_26A1295FC();
  __swift_storeEnumTagSinglePayload(v78, 0, 1, v66);
  OUTLINED_FUNCTION_222();
  sub_26A108150();
  sub_26A0E48F0(v78, &qword_28036CB30, &qword_26A426480);
  SummaryItemPair.text1.getter();
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_25_3();
  SummaryItemPair.text2.getter();
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_25_3();
  SummaryItemPair.text3.getter();
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_25_3();
  SummaryItemPair.text5.getter();
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_25_3();
  SummaryItemPair.text7.getter();
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_25_3();
  SummaryItemPair.text8.getter();
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_25_3();
  SummaryItemPair.text9.getter();
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_25_3();
  v79 = v98;
  SummaryItemPair.thumbnail1.getter();
  sub_26A108128();
  sub_26A0E48F0(v79, &qword_28036CB20, &unk_26A426470);
  SummaryItemPair.thumbnail2.getter();
  sub_26A108128();
  sub_26A0E48F0(v79, &qword_28036CB20, &unk_26A426470);
  v80 = v99;
  SummaryItemPair.action.getter();
  sub_26A108024();
  sub_26A0E48F0(v80, &qword_28036CB18, &unk_26A427670);
  KeyPath = swift_getKeyPath();
  sub_26A0F7D68(KeyPath, 0x6E656E6F706D6F63, 0xED0000656D614E74, 1, v82, v83, v84, v85, v94, v95);

  v86 = swift_getKeyPath();
  sub_26A0F86FC(v86, 0x6E6564496B6E696CLL, 0xEE00726569666974, 1, v87, v88, v89, v90, v94, v95);

  sub_26A0FF2C0();
  sub_26A0E48F0(v51, &qword_28036D028, &unk_26A426C50);
  OUTLINED_FUNCTION_175();
  OUTLINED_FUNCTION_75();
  result._object = v92;
  result._countAndFlagsBits = v91;
  return result;
}

uint64_t SummaryItemPair.componentProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoSummaryItem_Pair(0);
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
  OUTLINED_FUNCTION_10_4();
  sub_26A129804();
  sub_26A0E48F0(a1, &qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_24_5();
  sub_26A1295FC();
  OUTLINED_FUNCTION_175();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v6);
}

uint64_t SummaryItemPair.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for SummaryItemPair();
  *(inited + 64) = &protocol witness table for SummaryItemPair;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_23_5();
  sub_26A129804();
  OUTLINED_FUNCTION_142();

  sub_26A10BF5C(v1);
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A1297BC(&qword_28036CB48, type metadata accessor for _ProtoResponse.Section);
  sub_26A4249C4();

  swift_setDeallocating();
  return sub_26A10C358();
}

uint64_t type metadata accessor for SummaryItemPair()
{
  result = qword_28036D288;
  if (!qword_28036D288)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A1295FC()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t sub_26A129650(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_26A129750()
{
  result = type metadata accessor for _ProtoSummaryItem_Pair(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A1297BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A129804()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t OUTLINED_FUNCTION_0_6()
{
  v4 = *(v0 + 440);
  __swift_storeEnumTagSinglePayload(v1 + *(v3 + 32), 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v1 + *(v3 + 36), 1, 1, v4);
  return __swift_getEnumTagSinglePayload(v2, 1, v3);
}

uint64_t OUTLINED_FUNCTION_1_6()
{

  return sub_26A129650(v0, type metadata accessor for _ProtoTextProperty);
}

uint64_t OUTLINED_FUNCTION_4_5()
{
  __swift_getEnumTagSinglePayload(v2, 1, v3);

  return sub_26A0E48F0(v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_11_5@<X0>(uint64_t a1@<X8>)
{
  *v1 = a1;
  *(v1 + 8) = 0;
  v4 = v1 + *(v2 + 28);

  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

void OUTLINED_FUNCTION_16_3()
{

  sub_26A19E384();
}

uint64_t OUTLINED_FUNCTION_18_2()
{
  v2 = *(v0 + 448);

  return sub_26A1295FC();
}

uint64_t OUTLINED_FUNCTION_19_3()
{

  return sub_26A10FD9C();
}

uint64_t OUTLINED_FUNCTION_25_3()
{

  return sub_26A0E48F0(v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_26_3()
{

  return sub_26A129650(v0, type metadata accessor for _ProtoVisualProperty);
}

uint64_t OUTLINED_FUNCTION_32_1()
{

  return sub_26A10FD9C();
}

uint64_t OUTLINED_FUNCTION_34_1()
{

  return type metadata accessor for _ProtoSummaryItem_Pair(0);
}

uint64_t OUTLINED_FUNCTION_35_2()
{

  return sub_26A10CF40();
}

uint64_t OUTLINED_FUNCTION_38_2(uint64_t a1)
{

  return sub_26A0E48F0(a1, v1, v2);
}

void OUTLINED_FUNCTION_39_1()
{
  v3 = v0[6];
  v2 = v0[5];
  v1 = v0[4];
}

uint64_t OUTLINED_FUNCTION_40_1(uint64_t a1)
{

  return sub_26A0E48F0(a1, v1, v2);
}

void OUTLINED_FUNCTION_44_3()
{

  _ProtoTextProperty.redactedProto.getter();
}

void OUTLINED_FUNCTION_46_1()
{

  sub_26A108150();
}

uint64_t OUTLINED_FUNCTION_49_2()
{

  return type metadata accessor for _ProtoSummaryItem_Pair(0);
}

uint64_t OUTLINED_FUNCTION_50_1@<X0>(uint64_t a1@<X8>)
{
  *v1 = a1;
  *(v1 + 8) = 0;
  v4 = v1 + *(v2 + 28);

  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t OUTLINED_FUNCTION_52_1(uint64_t a1)
{

  return sub_26A0E48F0(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_53_1(uint64_t a1)
{

  return sub_26A0E48F0(a1, v1, v2);
}

uint64_t ControlSwitch.switch.getter()
{
  v3 = OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_51_1();
  v7 = type metadata accessor for _ProtoSwitch();
  v8 = OUTLINED_FUNCTION_12(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18();
  v11 = OUTLINED_FUNCTION_36_2();
  v12 = *(v0 + *(type metadata accessor for _ProtoControl_Switch(v11) + 20));
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_54_1();
  v13 = OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_37(v13, v14, v7);
  if (v15)
  {
    *v1 = 0;
    *(v1 + 8) = 0xE000000000000000;
    *(v1 + 16) = 0;
    *(v1 + 24) = xmmword_26A426400;
    v16 = v1 + v7[7];
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v17 = v7[8];
    v18 = type metadata accessor for _ProtoActionProperty();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v18);
    v22 = v7[9];
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v18);
    v26 = OUTLINED_FUNCTION_107();
    OUTLINED_FUNCTION_37(v26, v27, v7);
    if (!v15)
    {
      sub_26A0E48F0(v2, &qword_28036D258, &unk_26A4273E0);
    }
  }

  else
  {
    sub_26A12C714();
  }

  return sub_26A12C714();
}

uint64_t ControlSwitch.text1.getter()
{
  v3 = OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_51_1();
  v8 = type metadata accessor for _ProtoTextProperty(v7);
  v9 = OUTLINED_FUNCTION_12(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_18();
  v12 = OUTLINED_FUNCTION_36_2();
  v13 = *(v0 + *(type metadata accessor for _ProtoControl_Switch(v12) + 20));
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_54_1();
  v14 = OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_37(v14, v15, v8);
  if (v16)
  {
    *v1 = MEMORY[0x277D84F90];
    *(v1 + 8) = 0;
    v17 = v1 + v8[7];
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v18 = v8[8];
    v19 = type metadata accessor for _ProtoActionProperty();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v19);
    v23 = v8[9];
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v19);
    v27 = OUTLINED_FUNCTION_107();
    OUTLINED_FUNCTION_37(v27, v28, v8);
    if (!v16)
    {
      sub_26A0E48F0(v2, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A12C714();
  }

  return sub_26A12C714();
}

void ControlSwitch.text2.getter()
{
  OUTLINED_FUNCTION_76();
  v27 = v3;
  v4 = type metadata accessor for _ProtoTextProperty(0);
  v5 = OUTLINED_FUNCTION_12(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_152_0();
  v8 = OUTLINED_FUNCTION_41_2();
  v9 = OUTLINED_FUNCTION_41(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_93_0();
  v13 = *(v0 + *(type metadata accessor for _ProtoControl_Switch(0) + 20));
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
      sub_26A12C714();
    }

    sub_26A12C714();
    v2 = 0;
  }

  v26 = type metadata accessor for TextProperty(0);
  __swift_storeEnumTagSinglePayload(v27, v2, 1, v26);
  OUTLINED_FUNCTION_75();
}

void ControlSwitch.thumbnail.getter()
{
  OUTLINED_FUNCTION_76();
  v27 = v3;
  v4 = type metadata accessor for _ProtoVisualProperty();
  v5 = OUTLINED_FUNCTION_12(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_152_0();
  v8 = OUTLINED_FUNCTION_41_2();
  v9 = OUTLINED_FUNCTION_41(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_93_0();
  v13 = *(v0 + *(type metadata accessor for _ProtoControl_Switch(0) + 20));
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
      sub_26A12C714();
    }

    sub_26A12C714();
    v2 = 0;
  }

  v26 = type metadata accessor for VisualProperty();
  __swift_storeEnumTagSinglePayload(v27, v2, 1, v26);
  OUTLINED_FUNCTION_75();
}

void ControlSwitch.action.getter()
{
  OUTLINED_FUNCTION_76();
  v20 = v4;
  v5 = type metadata accessor for _ProtoActionProperty();
  v6 = OUTLINED_FUNCTION_12(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_152_0();
  v9 = OUTLINED_FUNCTION_41_2();
  v10 = OUTLINED_FUNCTION_41(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_93_0();
  v14 = *(v0 + *(type metadata accessor for _ProtoControl_Switch(0) + 20));
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
      sub_26A12C714();
    }

    sub_26A12C714();
    v2 = 0;
  }

  v19 = type metadata accessor for ActionProperty();
  __swift_storeEnumTagSinglePayload(v20, v2, 1, v19);
  OUTLINED_FUNCTION_75();
}

uint64_t ControlSwitch.componentName.getter()
{
  v1 = (*(v0 + *(type metadata accessor for _ProtoControl_Switch(0) + 20)) + OBJC_IVAR____TtCV10SnippetKit20_ProtoControl_SwitchP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__componentName);
  OUTLINED_FUNCTION_142();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

void _ProtoControl_Switch.redactedProto.getter()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v159 = type metadata accessor for _ProtoActionProperty();
  v3 = OUTLINED_FUNCTION_12(v159);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_48();
  v154 = v7;
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
  OUTLINED_FUNCTION_48();
  v158 = v14;
  v157 = type metadata accessor for _ProtoVisualProperty();
  v15 = OUTLINED_FUNCTION_12(v157);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_48();
  v152 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v21 = OUTLINED_FUNCTION_41(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_48();
  v156 = v26;
  v27 = type metadata accessor for _ProtoTextProperty(0);
  v28 = OUTLINED_FUNCTION_12(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_93_0();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v35 = OUTLINED_FUNCTION_41(v34);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v38);
  v40 = v149 - v39;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v42);
  v44 = v149 - v43;
  MEMORY[0x28223BE20](v45);
  v47 = v149 - v46;
  OUTLINED_FUNCTION_4_6();
  sub_26A12C8E4();
  v48 = *(type metadata accessor for _ProtoControl_Switch(0) + 20);
  v160 = v2;
  v161 = v48;
  v49 = *(v2 + v48);
  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v47, 1, v27);
  sub_26A0E48F0(v47, &qword_28036C7B8, &unk_26A425BF0);
  if (EnumTagSinglePayload != 1)
  {
    sub_26A10FD9C();
    v51 = OUTLINED_FUNCTION_116();
    OUTLINED_FUNCTION_37(v51, v52, v27);
    if (v53)
    {
      *v0 = MEMORY[0x277D84F90];
      *(v0 + 8) = 0;
      v54 = v0 + v27[7];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v55 = v27[8];
      OUTLINED_FUNCTION_92();
      v56 = v159;
      __swift_storeEnumTagSinglePayload(v57, v58, v59, v159);
      v60 = v27[9];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v61, v62, v63, v56);
      v64 = OUTLINED_FUNCTION_116();
      OUTLINED_FUNCTION_37(v64, v65, v27);
      v66 = v161;
      if (!v53)
      {
        sub_26A0E48F0(v44, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A12C714();
      v66 = v161;
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_10_5();
    sub_26A12C768(v0, v67);
    v68 = v160;
    v69 = *(v160 + v66);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v71 = *(v68 + v66);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v72 = type metadata accessor for _ProtoControl_Switch._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v72);
      OUTLINED_FUNCTION_33_1();
      *(v68 + v66) = v73;
    }

    OUTLINED_FUNCTION_39_2();
    v74 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v74, v75, v76, v27);
    OUTLINED_FUNCTION_211();
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  v77 = __swift_getEnumTagSinglePayload(v40, 1, v27);
  OUTLINED_FUNCTION_162_0(v40);
  if (v77 == 1)
  {
    v78 = v159;
    v79 = v160;
    v80 = v157;
  }

  else
  {
    v81 = v149[2];
    sub_26A10FD9C();
    v82 = OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_37(v82, v83, v27);
    v79 = v160;
    v80 = v157;
    if (v53)
    {
      v95 = v150;
      *v150 = MEMORY[0x277D84F90];
      *(v95 + 8) = 0;
      v84 = v95 + v27[7];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v85 = v27[8];
      OUTLINED_FUNCTION_92();
      v78 = v159;
      __swift_storeEnumTagSinglePayload(v86, v87, v88, v159);
      v89 = v27[9];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v90, v91, v92, v78);
      v93 = OUTLINED_FUNCTION_71();
      OUTLINED_FUNCTION_37(v93, v94, v27);
      v96 = v161;
      if (!v53)
      {
        sub_26A0E48F0(v81, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      v95 = v150;
      sub_26A12C714();
      v78 = v159;
      v96 = v161;
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_10_5();
    sub_26A12C768(v95, v97);
    v98 = *(v79 + v96);
    v99 = swift_isUniquelyReferenced_nonNull_native();
    v100 = *(v79 + v96);
    if ((v99 & 1) == 0)
    {
      v101 = type metadata accessor for _ProtoControl_Switch._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v101);
      OUTLINED_FUNCTION_33_1();
      *(v79 + v96) = v102;
    }

    OUTLINED_FUNCTION_39_2();
    v103 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v103, v104, v105, v27);
    OUTLINED_FUNCTION_211();
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  v106 = v156;
  sub_26A10FD9C();
  v107 = OUTLINED_FUNCTION_107();
  v109 = __swift_getEnumTagSinglePayload(v107, v108, v80);
  OUTLINED_FUNCTION_162_0(v106);
  if (v109 != 1)
  {
    v110 = v151;
    sub_26A10FD9C();
    v111 = OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_37(v111, v112, v80);
    v113 = v161;
    if (v53)
    {
      v125 = v152;
      *v152 = MEMORY[0x277D84F90];
      *(v125 + 8) = 0;
      v114 = v125 + v80[7];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v115 = v80[8];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v116, v117, v118, v78);
      v119 = v80[9];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v120, v121, v122, v78);
      v123 = OUTLINED_FUNCTION_71();
      OUTLINED_FUNCTION_37(v123, v124, v80);
      if (!v53)
      {
        sub_26A0E48F0(v110, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      v125 = v152;
      sub_26A12C714();
    }

    _ProtoVisualProperty.redactedProto.getter();
    sub_26A12C768(v125, type metadata accessor for _ProtoVisualProperty);
    v126 = *(v79 + v113);
    v127 = swift_isUniquelyReferenced_nonNull_native();
    v128 = *(v79 + v113);
    if ((v127 & 1) == 0)
    {
      v129 = type metadata accessor for _ProtoControl_Switch._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v129);
      OUTLINED_FUNCTION_33_1();
      *(v79 + v113) = v130;
    }

    sub_26A12C714();
    v131 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v131, v132, v133, v80);
    OUTLINED_FUNCTION_211();
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  v134 = v158;
  sub_26A10FD9C();
  v135 = __swift_getEnumTagSinglePayload(v134, 1, v78);
  OUTLINED_FUNCTION_162_0(v134);
  if (v135 != 1)
  {
    v136 = v153;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v136, 1, v78);
    v137 = v161;
    if (v53)
    {
      v139 = v154;
      *v154 = MEMORY[0x277D84F90];
      *(v139 + 8) = 0;
      *(v139 + 16) = 0xE000000000000000;
      v138 = v139 + *(v78 + 24);
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_37(v136, 1, v78);
      v140 = v155;
      if (!v53)
      {
        sub_26A0E48F0(v136, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      v139 = v154;
      sub_26A12C714();
      v140 = v155;
    }

    _s10SnippetKit14ActionPropertyV13redactedProtoAA01_fcD0Vvg_0(v140);
    sub_26A12C768(v139, type metadata accessor for _ProtoActionProperty);
    v141 = *(v79 + v137);
    v142 = swift_isUniquelyReferenced_nonNull_native();
    v143 = *(v79 + v137);
    if ((v142 & 1) == 0)
    {
      v144 = type metadata accessor for _ProtoControl_Switch._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v144);
      sub_26A1CD104();
      *(v79 + v137) = v145;
    }

    sub_26A12C714();
    v146 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v146, v147, v148, v78);
    OUTLINED_FUNCTION_211();
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_75();
}

void ControlSwitch.init(switch:text1:text2:thumbnail:action:)()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v18 = v8;
  v9 = type metadata accessor for Switch();
  v10 = OUTLINED_FUNCTION_41(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_18();
  sub_26A12C8E4();
  sub_26A0E5D68(v7, v22);
  sub_26A10FD9C();
  sub_26A10FD9C();
  sub_26A10FD9C();
  type metadata accessor for _ProtoControl_Switch(0);
  OUTLINED_FUNCTION_13_3();
  sub_26A12C7C0(v13, v14);
  sub_26A4249C4();
  sub_26A0E48F0(v1, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v3, &qword_28036CB00, &unk_26A426450);
  sub_26A0E48F0(v5, &qword_28036CB08, &unk_26A428720);
  OUTLINED_FUNCTION_25_4(v7);
  sub_26A12C768(v18, v15);
  sub_26A0E48F0(&v19, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(&v20, &qword_28036CB00, &unk_26A426450);
  sub_26A0E48F0(&v21, &qword_28036CB08, &unk_26A428720);
  __swift_destroy_boxed_opaque_existential_1(v22);
  v16 = OUTLINED_FUNCTION_175();
  sub_26A12C768(v16, v17);
  OUTLINED_FUNCTION_75();
}

uint64_t ControlSwitch.init(switch:text1:text2:thumbnail:action:componentName:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for _ProtoControl_Switch(0);
  OUTLINED_FUNCTION_13_3();
  sub_26A12C7C0(v10, v11);
  sub_26A4249C4();

  sub_26A0E48F0(a5, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(a4, &qword_28036CB00, &unk_26A426450);
  sub_26A0E48F0(a3, &qword_28036CB08, &unk_26A428720);
  OUTLINED_FUNCTION_25_4(a2);
  return sub_26A12C768(a1, v12);
}

uint64_t sub_26A12B400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v71 = a7;
  v72 = a8;
  v67 = a2;
  v68 = a6;
  v11 = type metadata accessor for ActionProperty();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v66 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v74 = &v59 - v16;
  v73 = type metadata accessor for _ProtoActionProperty();
  v17 = *(*(v73 - 8) + 64);
  MEMORY[0x28223BE20](v73);
  v63 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v64 = &v59 - v20;
  v21 = type metadata accessor for VisualProperty();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v65 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v70 = &v59 - v26;
  v69 = type metadata accessor for _ProtoVisualProperty();
  v27 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69);
  v61 = &v59 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v62 = &v59 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v34 = &v59 - v33;
  v35 = type metadata accessor for _ProtoTextProperty(0);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v60 = &v59 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v39 = type metadata accessor for TextProperty(0);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39 - 8);
  v41 = type metadata accessor for _ProtoSwitch();
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41 - 8);
  sub_26A12C8E4();
  _ProtoControl_Switch.switch.setter();

  _ProtoControl_Switch.componentName.setter(a3, a4);
  v43 = a5[3];
  v44 = a5[4];
  __swift_project_boxed_opaque_existential_1(a5, v43);
  (*(v44 + 8))(v43, v44);
  sub_26A12C714();
  _ProtoControl_Switch.text1.setter();
  sub_26A10FD9C();
  v45 = v76;
  if (v76)
  {
    v46 = v77;
    __swift_project_boxed_opaque_existential_1(v75, v76);
    (*(v46 + 8))(v45, v46);
    sub_26A12C714();
    __swift_storeEnumTagSinglePayload(v34, 0, 1, v35);
    __swift_destroy_boxed_opaque_existential_1(v75);
    if (__swift_getEnumTagSinglePayload(v34, 1, v35) != 1)
    {
      v47 = v60;
      sub_26A12C714();
      sub_26A12C8E4();
      _ProtoControl_Switch.text2.setter();
      sub_26A12C768(v47, type metadata accessor for _ProtoTextProperty);
      goto LABEL_6;
    }
  }

  else
  {
    sub_26A0E48F0(v75, &qword_28036CB08, &unk_26A428720);
    __swift_storeEnumTagSinglePayload(v34, 1, 1, v35);
  }

  sub_26A0E48F0(v34, &qword_28036C7B8, &unk_26A425BF0);
LABEL_6:
  sub_26A10FD9C();
  v48 = v76;
  if (v76)
  {
    v49 = v77;
    __swift_project_boxed_opaque_existential_1(v75, v76);
    (*(v49 + 8))(v48, v49);
    v50 = v70;
    sub_26A12C714();
    v51 = v69;
    __swift_storeEnumTagSinglePayload(v50, 0, 1, v69);
    __swift_destroy_boxed_opaque_existential_1(v75);
    if (__swift_getEnumTagSinglePayload(v50, 1, v51) != 1)
    {
      v52 = v62;
      sub_26A12C714();
      sub_26A12C8E4();
      _ProtoControl_Switch.thumbnail.setter();
      sub_26A12C768(v52, type metadata accessor for _ProtoVisualProperty);
      goto LABEL_11;
    }
  }

  else
  {
    sub_26A0E48F0(v75, &qword_28036CB00, &unk_26A426450);
    v50 = v70;
    __swift_storeEnumTagSinglePayload(v70, 1, 1, v69);
  }

  sub_26A0E48F0(v50, &qword_28036CAE8, &unk_26A426430);
LABEL_11:
  sub_26A10FD9C();
  v53 = v76;
  if (v76)
  {
    v54 = v77;
    __swift_project_boxed_opaque_existential_1(v75, v76);
    (*(v54 + 8))(v53, v54);
    v55 = v74;
    sub_26A12C714();
    v56 = v73;
    __swift_storeEnumTagSinglePayload(v55, 0, 1, v73);
    __swift_destroy_boxed_opaque_existential_1(v75);
    if (__swift_getEnumTagSinglePayload(v55, 1, v56) != 1)
    {
      v57 = v64;
      sub_26A12C714();
      sub_26A12C8E4();
      _ProtoControl_Switch.action.setter();
      return sub_26A12C768(v57, type metadata accessor for _ProtoActionProperty);
    }
  }

  else
  {
    sub_26A0E48F0(v75, &qword_28036CAF8, &unk_26A426D30);
    v55 = v74;
    __swift_storeEnumTagSinglePayload(v74, 1, 1, v73);
  }

  return sub_26A0E48F0(v55, &off_28036C7C0, &off_26A427400);
}

Swift::String __swiftcall ControlSwitch.description(redacted:)(Swift::Bool redacted)
{
  OUTLINED_FUNCTION_76();
  v110 = v1;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB18, &unk_26A427670);
  OUTLINED_FUNCTION_41(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v9);
  v116 = &v109 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB20, &unk_26A426470);
  OUTLINED_FUNCTION_41(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v14);
  v115 = &v109 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v19);
  v113 = &v109 - v20;
  v112 = type metadata accessor for _ProtoTextProperty(0);
  v21 = OUTLINED_FUNCTION_12(v112);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_18();
  v26 = v25 - v24;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB30, &qword_26A426480);
  v28 = OUTLINED_FUNCTION_41(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_8();
  v114 = v31;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_48();
  v111 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D258, &unk_26A4273E0);
  OUTLINED_FUNCTION_41(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_36_2();
  v38 = type metadata accessor for _ProtoSwitch();
  v39 = OUTLINED_FUNCTION_12(v38);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_18();
  v44 = v43 - v42;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF48, &qword_26A426AD0);
  OUTLINED_FUNCTION_41(v45);
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v48);
  v50 = &v109 - v49;
  v51 = type metadata accessor for ControlSwitch();
  v52 = OUTLINED_FUNCTION_41(v51);
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v55);
  v57 = &v109 - v56;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D020, &qword_26A426C48);
  OUTLINED_FUNCTION_12(v58);
  v60 = *(v59 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_152_0();
  OUTLINED_FUNCTION_12_3();
  sub_26A12C8E4();
  if (v5)
  {
    _ProtoControl_Switch.redactedProto.getter();
  }

  else
  {
    sub_26A12C8E4();
  }

  sub_26A12C714();
  *(v3 + *(v58 + 32)) = v5 & 1;
  sub_26A12C768(v57, type metadata accessor for ControlSwitch);
  v62 = MEMORY[0x277D84F90];
  *(v3 + *(v58 + 28)) = MEMORY[0x277D84F90];
  v63 = *(v3 + *(type metadata accessor for _ProtoControl_Switch(0) + 20));
  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  v64 = OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_37(v64, v65, v38);
  if (v66)
  {
    *v44 = 0;
    *(v44 + 8) = 0xE000000000000000;
    *(v44 + 16) = 0;
    *(v44 + 24) = xmmword_26A426400;
    v67 = v44 + v38[7];
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v68 = v38[8];
    v69 = type metadata accessor for _ProtoActionProperty();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v70, v71, v72, v69);
    v73 = v38[9];
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v74, v75, v76, v69);
    v77 = OUTLINED_FUNCTION_116();
    OUTLINED_FUNCTION_37(v77, v78, v38);
    if (!v66)
    {
      sub_26A0E48F0(v2, &qword_28036D258, &unk_26A4273E0);
    }
  }

  else
  {
    sub_26A12C714();
  }

  sub_26A12C714();
  v79 = type metadata accessor for Switch();
  __swift_storeEnumTagSinglePayload(v50, 0, 1, v79);
  sub_26A108FF8();
  sub_26A0E48F0(v50, &qword_28036CF48, &qword_26A426AD0);
  OUTLINED_FUNCTION_142();
  v80 = v113;
  sub_26A10FD9C();
  v81 = OUTLINED_FUNCTION_116();
  v82 = v112;
  OUTLINED_FUNCTION_37(v81, v83, v112);
  if (v66)
  {
    *v26 = v62;
    *(v26 + 8) = 0;
    v84 = v26 + v82[7];
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v85 = v82[8];
    v86 = type metadata accessor for _ProtoActionProperty();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v87, v88, v89, v86);
    v90 = v82[9];
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v91, v92, v93, v86);
    v94 = OUTLINED_FUNCTION_116();
    OUTLINED_FUNCTION_37(v94, v95, v82);
    if (!v66)
    {
      sub_26A0E48F0(v80, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A12C714();
  }

  v96 = v111;
  sub_26A12C714();
  v97 = type metadata accessor for TextProperty(0);
  __swift_storeEnumTagSinglePayload(v96, 0, 1, v97);
  sub_26A108FD0();
  OUTLINED_FUNCTION_162_0(v96);
  v98 = v114;
  ControlSwitch.text2.getter();
  sub_26A108FD0();
  OUTLINED_FUNCTION_162_0(v98);
  v99 = v115;
  ControlSwitch.thumbnail.getter();
  sub_26A108FA8();
  sub_26A0E48F0(v99, &qword_28036CB20, &unk_26A426470);
  v100 = v116;
  ControlSwitch.action.getter();
  sub_26A108EA4();
  sub_26A0E48F0(v100, &qword_28036CB18, &unk_26A427670);
  KeyPath = swift_getKeyPath();
  sub_26A0F7EA8(KeyPath, 0x6E656E6F706D6F63, 0xED0000656D614E74, 1, v102, v103, v104, v105, v109, v110);

  sub_26A1006A8();
  sub_26A0E48F0(v3, &qword_28036D020, &qword_26A426C48);
  OUTLINED_FUNCTION_175();
  OUTLINED_FUNCTION_75();
  result._object = v107;
  result._countAndFlagsBits = v106;
  return result;
}

uint64_t ControlSwitch.componentProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoControl_Switch(0);
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
  OUTLINED_FUNCTION_4_6();
  sub_26A12C8E4();
  sub_26A0E48F0(a1, &qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_11_6();
  sub_26A12C714();
  OUTLINED_FUNCTION_175();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v6);
}

uint64_t ControlSwitch.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for ControlSwitch();
  *(inited + 64) = &protocol witness table for ControlSwitch;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_12_3();
  sub_26A12C8E4();
  OUTLINED_FUNCTION_142();

  sub_26A10BF5C(v1);
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A12C7C0(&qword_28036CB48, type metadata accessor for _ProtoResponse.Section);
  sub_26A4249C4();

  swift_setDeallocating();
  return sub_26A10C358();
}

uint64_t type metadata accessor for ControlSwitch()
{
  result = qword_28036D2A8;
  if (!qword_28036D2A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A12C714()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t sub_26A12C768(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_26A12C7C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A12C878()
{
  result = type metadata accessor for _ProtoControl_Switch(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A12C8E4()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

void OUTLINED_FUNCTION_33_1()
{

  sub_26A1CD104();
}

uint64_t OUTLINED_FUNCTION_39_2()
{
  v2 = *(v0 - 264);

  return sub_26A12C714();
}

uint64_t OUTLINED_FUNCTION_40_2()
{

  return type metadata accessor for _ProtoControl_Switch(0);
}

unint64_t _ProtoIdiom.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    result = 1918985006;
    switch(*v0)
    {
      case 1:
        result = 0x656E6F68702ELL;
        break;
      case 2:
        result = 1684107310;
        break;
      case 3:
        result = 1685024814;
        break;
      case 4:
        return result;
      case 5:
        result = 7762990;
        break;
      case 6:
        result = 0x68637461772ELL;
        break;
      case 7:
        result = 1667329326;
        break;
      case 8:
        result = 0xD000000000000011;
        break;
      default:
        result = 0x746C75616665642ELL;
        break;
    }
  }

  else
  {
    sub_26A424EF4();

    OUTLINED_FUNCTION_0_7();
    v4 = v2;
    v3 = sub_26A4251B4();
    MEMORY[0x26D65BA70](v3);

    MEMORY[0x26D65BA70](41, 0xE100000000000000);
    return v4;
  }

  return result;
}

uint64_t sub_26A12CBBC(uint64_t a1)
{
  if (sub_26A0DB6A0(a1, &unk_287B01538))
  {
    return 0;
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    v15 = MEMORY[0x277D84F90];
    sub_26A10D50C();
    v4 = (a1 + 40);
    do
    {
      if (*v4 == 1)
      {
        v5 = 0xE400000000000000;
        v6 = 1918985006;
        switch(*(v4 - 1))
        {
          case 1:
            v5 = 0xE600000000000000;
            v6 = 0x656E6F68702ELL;
            break;
          case 2:
            v6 = 1684107310;
            break;
          case 3:
            v6 = 1685024814;
            break;
          case 4:
            break;
          case 5:
            v5 = 0xE300000000000000;
            v6 = 7762990;
            break;
          case 6:
            v5 = 0xE600000000000000;
            v6 = 0x68637461772ELL;
            break;
          case 7:
            v6 = 1667329326;
            break;
          case 8:
            v6 = 0xD000000000000011;
            v5 = 0x800000026A447550;
            break;
          default:
            v5 = 0xE800000000000000;
            v6 = 0x746C75616665642ELL;
            break;
        }
      }

      else
      {
        sub_26A424EF4();

        OUTLINED_FUNCTION_0_7();
        v14 = v7;
        v8 = sub_26A4251B4();
        MEMORY[0x26D65BA70](v8);

        MEMORY[0x26D65BA70](41, 0xE100000000000000);
        v6 = v14;
        v5 = 0xED00002864657A69;
      }

      v9 = *(v15 + 16);
      if (v9 >= *(v15 + 24) >> 1)
      {
        sub_26A10D50C();
      }

      *(v15 + 16) = v9 + 1;
      v10 = v15 + 16 * v9;
      *(v10 + 32) = v6;
      *(v10 + 40) = v5;
      v4 += 16;
      --v3;
    }

    while (v3);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB68, &qword_26A426580);
  sub_26A10D548();
  v11 = sub_26A424B54();
  v13 = v12;

  MEMORY[0x26D65BA70](v11, v13);

  MEMORY[0x26D65BA70](93, 0xE100000000000000);

  return 91;
}

uint64_t FactItemHeroNumber.number.getter()
{
  v1 = OUTLINED_FUNCTION_104();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - v7;
  v9 = type metadata accessor for _ProtoTextProperty(0);
  v10 = OUTLINED_FUNCTION_12(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v0 + *(type metadata accessor for _ProtoFactItem_HeroNumber(0) + 20));
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_32_2();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    *v14 = MEMORY[0x277D84F90];
    *(v14 + 4) = 0;
    v16 = &v14[v9[7]];
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v17 = v9[8];
    v18 = type metadata accessor for _ProtoActionProperty();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v18);
    v22 = v9[9];
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v18);
    if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
    {
      sub_26A0E48F0(v8, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A130A5C();
  }

  return sub_26A130A5C();
}

void FactItemHeroNumber.text2.getter()
{
  OUTLINED_FUNCTION_76();
  v4 = OUTLINED_FUNCTION_239(v3);
  v5 = type metadata accessor for _ProtoMultilineTextProperty(v4);
  v6 = OUTLINED_FUNCTION_12(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_7();
  v9 = OUTLINED_FUNCTION_104();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  v12 = OUTLINED_FUNCTION_41(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v15);
  v16 = OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_241(v16);
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
      OUTLINED_FUNCTION_52_2();
    }

    OUTLINED_FUNCTION_146_0();
    sub_26A130A5C();
    v2 = 0;
  }

  v21 = type metadata accessor for MultilineTextProperty(0);
  __swift_storeEnumTagSinglePayload(&qword_28036CAE0, v2, 1, v21);
  OUTLINED_FUNCTION_75();
}

void FactItemHeroNumber.text3.getter()
{
  OUTLINED_FUNCTION_76();
  v4 = OUTLINED_FUNCTION_239(v3);
  v5 = type metadata accessor for _ProtoMultilineTextProperty(v4);
  v6 = OUTLINED_FUNCTION_12(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_7();
  v9 = OUTLINED_FUNCTION_104();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  v12 = OUTLINED_FUNCTION_41(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v15);
  v16 = OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_241(v16);
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
      OUTLINED_FUNCTION_52_2();
    }

    OUTLINED_FUNCTION_146_0();
    sub_26A130A5C();
    v2 = 0;
  }

  v21 = type metadata accessor for MultilineTextProperty(0);
  __swift_storeEnumTagSinglePayload(&qword_28036CAE0, v2, 1, v21);
  OUTLINED_FUNCTION_75();
}

void sub_26A12D3C4()
{
  OUTLINED_FUNCTION_76();
  v3 = v2;
  v5 = OUTLINED_FUNCTION_239(v4);
  v6 = type metadata accessor for _ProtoTextProperty(v5);
  v7 = OUTLINED_FUNCTION_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_7();
  v10 = OUTLINED_FUNCTION_104();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  v13 = OUTLINED_FUNCTION_41(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v16);
  v17 = OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_241(v17);
  v18 = *v3;
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v19 = OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_62_1(v19, v20);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v21)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v22 = OUTLINED_FUNCTION_61_1();
      OUTLINED_FUNCTION_1_7(v22);
      if (!v21)
      {
        sub_26A0E48F0(v1, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_52_2();
    }

    OUTLINED_FUNCTION_146_0();
    sub_26A130A5C();
    v3 = 0;
  }

  v23 = type metadata accessor for TextProperty(0);
  __swift_storeEnumTagSinglePayload(&qword_28036C7B8, v3, 1, v23);
  OUTLINED_FUNCTION_75();
}

void FactItemHeroNumber.text5.getter()
{
  OUTLINED_FUNCTION_76();
  v4 = OUTLINED_FUNCTION_239(v3);
  v5 = type metadata accessor for _ProtoMultilineTextProperty(v4);
  v6 = OUTLINED_FUNCTION_12(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_7();
  v9 = OUTLINED_FUNCTION_104();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  v12 = OUTLINED_FUNCTION_41(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v15);
  v16 = OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_241(v16);
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
      OUTLINED_FUNCTION_52_2();
    }

    OUTLINED_FUNCTION_146_0();
    sub_26A130A5C();
    v2 = 0;
  }

  v21 = type metadata accessor for MultilineTextProperty(0);
  __swift_storeEnumTagSinglePayload(&qword_28036CAE0, v2, 1, v21);
  OUTLINED_FUNCTION_75();
}

void FactItemHeroNumber.action.getter()
{
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_239(v4);
  v5 = type metadata accessor for _ProtoActionProperty();
  v6 = OUTLINED_FUNCTION_12(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_7();
  v9 = OUTLINED_FUNCTION_104();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  v12 = OUTLINED_FUNCTION_41(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v15);
  v16 = OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_241(v16);
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v17 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v17, v18, &off_26A427400);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v19)
    {
      *v3 = MEMORY[0x277D84F90];
      v3[1] = 0;
      v3[2] = 0xE000000000000000;
      v20 = v3 + *(v5 + 24);
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_38_0();
      if (!v19)
      {
        sub_26A0E48F0(v1, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      OUTLINED_FUNCTION_52_2();
    }

    sub_26A130A5C();
    v2 = 0;
  }

  v21 = type metadata accessor for ActionProperty();
  __swift_storeEnumTagSinglePayload(v22, v2, 1, v21);
  OUTLINED_FUNCTION_75();
}

uint64_t FactItemHeroNumber.componentName.getter()
{
  v1 = (*(v0 + *(type metadata accessor for _ProtoFactItem_HeroNumber(0) + 20)) + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__componentName);
  OUTLINED_FUNCTION_142();
  v3 = *v1;
  v2 = v1[1];

  return OUTLINED_FUNCTION_246();
}

uint64_t FactItemHeroNumber.linkIdentifier.getter()
{
  v1 = (*(v0 + *(type metadata accessor for _ProtoFactItem_HeroNumber(0) + 20)) + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__linkIdentifier);
  OUTLINED_FUNCTION_142();
  v3 = *v1;
  v2 = v1[1];

  return OUTLINED_FUNCTION_246();
}

void _ProtoFactItem_HeroNumber.redactedProto.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_76();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v239 = type metadata accessor for _ProtoActionProperty();
  v24 = OUTLINED_FUNCTION_12(v239);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v30 = OUTLINED_FUNCTION_41(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v35);
  v236 = type metadata accessor for _ProtoMultilineTextProperty(0);
  v36 = OUTLINED_FUNCTION_12(v236);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  v46 = OUTLINED_FUNCTION_41(v45);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_17();
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
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v55);
  v56 = type metadata accessor for _ProtoTextProperty(0);
  v57 = OUTLINED_FUNCTION_12(v56);
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_17();
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
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v64);
  v66 = &v225[-v65];
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v68 = OUTLINED_FUNCTION_41(v67);
  v70 = *(v69 + 64);
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v73);
  v75 = &v225[-v74];
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v77);
  v79 = &v225[-v78];
  MEMORY[0x28223BE20](v80);
  v82 = &v225[-v81];
  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_246();
  sub_26A130C2C();
  v83 = *(type metadata accessor for _ProtoFactItem_HeroNumber(0) + 20);
  v238 = v23;
  v240 = v83;
  v84 = *(v23 + v83);
  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  LODWORD(v23) = OUTLINED_FUNCTION_63_0(v82);
  sub_26A0E48F0(v82, &qword_28036C7B8, &unk_26A425BF0);
  if (v23 != 1)
  {
    sub_26A10FD9C();
    if (OUTLINED_FUNCTION_63_0(v79) == 1)
    {
      *v66 = MEMORY[0x277D84F90];
      *(v66 + 4) = 0;
      v85 = &v66[v56[7]];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v86 = OUTLINED_FUNCTION_12_4(v56[8]);
      v87 = v239;
      __swift_storeEnumTagSinglePayload(v86, v88, v89, v239);
      v90 = OUTLINED_FUNCTION_12_4(v56[9]);
      __swift_storeEnumTagSinglePayload(v90, v91, v92, v87);
      v93 = OUTLINED_FUNCTION_63_0(v79);
      v94 = v238;
      if (v93 != 1)
      {
        sub_26A0E48F0(v79, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A130A5C();
      v94 = v238;
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_10_6();
    sub_26A130AB0(v66, v95);
    v96 = v240;
    v97 = *(v94 + v240);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v99 = *(v94 + v96);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v100 = type metadata accessor for _ProtoFactItem_HeroNumber._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v100);
      OUTLINED_FUNCTION_29_0();
      *(v94 + v96) = v101;
    }

    OUTLINED_FUNCTION_46_2(&a11);
    v102 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v102, v103, v104, v56);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_63_0(v75);
  OUTLINED_FUNCTION_59_1();
  v105 = v56;
  if (v66 == 1)
  {
    v106 = v238;
    v107 = v236;
  }

  else
  {
    OUTLINED_FUNCTION_128(&v241);
    sub_26A10FD9C();
    OUTLINED_FUNCTION_17_3(v66);
    v106 = v238;
    v107 = v236;
    if (v108)
    {
      v120 = v226;
      *v226 = MEMORY[0x277D84F90];
      *(v120 + 8) = 0;
      v109 = v120 + v56[7];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v110 = v56[8];
      OUTLINED_FUNCTION_14_3();
      v112 = *(v111 - 256);
      __swift_storeEnumTagSinglePayload(v113, v114, v115, v112);
      v116 = v56[9];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v117, v118, v119, v112);
      OUTLINED_FUNCTION_17_3(v66);
      v121 = v240;
      if (!v108)
      {
        sub_26A0E48F0(v66, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      v120 = v226;
      sub_26A130A5C();
      v121 = v240;
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_10_6();
    sub_26A130AB0(v120, v122);
    v123 = *(v106 + v121);
    v124 = swift_isUniquelyReferenced_nonNull_native();
    v125 = *(v106 + v121);
    if ((v124 & 1) == 0)
    {
      v126 = type metadata accessor for _ProtoFactItem_HeroNumber._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v126);
      OUTLINED_FUNCTION_29_0();
      OUTLINED_FUNCTION_244(v127);
    }

    OUTLINED_FUNCTION_46_2(&a11);
    v128 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v128, v129, v130, v56);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_26_4(&v247);
  OUTLINED_FUNCTION_23_6();
  if (v66 != 1)
  {
    v56 = v227;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_48_0(v56);
    v131 = v240;
    if (v108)
    {
      OUTLINED_FUNCTION_49_3(MEMORY[0x277D84F90]);
      v132 = OUTLINED_FUNCTION_12_4(v107[8]);
      v133 = v239;
      __swift_storeEnumTagSinglePayload(v132, v134, v135, v239);
      v136 = OUTLINED_FUNCTION_12_4(v107[9]);
      __swift_storeEnumTagSinglePayload(v136, v137, v138, v133);
      OUTLINED_FUNCTION_48_0(v56);
      if (!v108)
      {
        sub_26A0E48F0(v56, &qword_28036CAE0, &unk_26A4273F0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_128(&v242);
      sub_26A130A5C();
    }

    _ProtoMultilineTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_9_5();
    sub_26A130AB0(v66, v139);
    v140 = *(v106 + v131);
    v141 = swift_isUniquelyReferenced_nonNull_native();
    v142 = *(v106 + v131);
    if ((v141 & 1) == 0)
    {
      v143 = type metadata accessor for _ProtoFactItem_HeroNumber._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v143);
      OUTLINED_FUNCTION_29_0();
      OUTLINED_FUNCTION_244(v144);
    }

    OUTLINED_FUNCTION_46_2(&a12);
    v145 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v145, v146, v147, v107);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_26_4(&v248);
  OUTLINED_FUNCTION_23_6();
  if (v66 != 1)
  {
    v56 = v228;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_48_0(v56);
    v148 = v240;
    if (v108)
    {
      OUTLINED_FUNCTION_49_3(MEMORY[0x277D84F90]);
      v149 = OUTLINED_FUNCTION_12_4(v107[8]);
      v150 = v239;
      __swift_storeEnumTagSinglePayload(v149, v151, v152, v239);
      v153 = OUTLINED_FUNCTION_12_4(v107[9]);
      __swift_storeEnumTagSinglePayload(v153, v154, v155, v150);
      OUTLINED_FUNCTION_48_0(v56);
      if (!v108)
      {
        sub_26A0E48F0(v56, &qword_28036CAE0, &unk_26A4273F0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_128(&v243);
      sub_26A130A5C();
    }

    _ProtoMultilineTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_9_5();
    sub_26A130AB0(v66, v156);
    v157 = *(v106 + v148);
    v158 = swift_isUniquelyReferenced_nonNull_native();
    v159 = *(v106 + v148);
    if ((v158 & 1) == 0)
    {
      v160 = type metadata accessor for _ProtoFactItem_HeroNumber._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v160);
      OUTLINED_FUNCTION_29_0();
      OUTLINED_FUNCTION_244(v161);
    }

    OUTLINED_FUNCTION_46_2(&a12);
    v162 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v162, v163, v164, v107);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  v165 = &unk_26A425BF0;
  OUTLINED_FUNCTION_26_4(&v249);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v56, 1, v105);
  sub_26A0E48F0(v56, &qword_28036C7B8, &unk_26A425BF0);
  if (EnumTagSinglePayload == 1)
  {
    v167 = MEMORY[0x277D84F90];
  }

  else
  {
    v168 = v229;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_17_3(v168);
    v169 = v240;
    if (v108)
    {
      v165 = v230;
      *v230 = MEMORY[0x277D84F90];
      v165[4] = 0;
      v170 = v165 + v105[7];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v171 = v105[8];
      OUTLINED_FUNCTION_14_3();
      v173 = *(v172 - 256);
      __swift_storeEnumTagSinglePayload(v174, v175, v176, v173);
      v177 = v105[9];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v178, v179, v180, v173);
      OUTLINED_FUNCTION_17_3(v168);
      EnumTagSinglePayload = v231;
      if (!v108)
      {
        sub_26A0E48F0(v168, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_46_2(&v244);
      EnumTagSinglePayload = v231;
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_10_6();
    sub_26A130AB0(v165, v181);
    v182 = *(v106 + v169);
    v183 = swift_isUniquelyReferenced_nonNull_native();
    v184 = *(v106 + v169);
    v185 = v105;
    if ((v183 & 1) == 0)
    {
      v186 = type metadata accessor for _ProtoFactItem_HeroNumber._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v186);
      OUTLINED_FUNCTION_29_0();
      OUTLINED_FUNCTION_244(v187);
    }

    v167 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_128(&a11);
    sub_26A130A5C();
    __swift_storeEnumTagSinglePayload(EnumTagSinglePayload, 0, 1, v185);
    OUTLINED_FUNCTION_211();
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_26_4(&v250);
  OUTLINED_FUNCTION_23_6();
  if (EnumTagSinglePayload == 1)
  {
    v188 = v167;
    v189 = v239;
  }

  else
  {
    OUTLINED_FUNCTION_128(&v245);
    sub_26A10FD9C();
    OUTLINED_FUNCTION_48_0(EnumTagSinglePayload);
    v190 = v240;
    if (v108)
    {
      v201 = v232;
      v188 = v167;
      *v232 = v167;
      *(v201 + 8) = 0;
      v191 = v201 + v107[7];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v192 = v107[8];
      OUTLINED_FUNCTION_14_3();
      v189 = *(v193 - 256);
      __swift_storeEnumTagSinglePayload(v194, v195, v196, v189);
      v197 = v107[9];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v198, v199, v200, v189);
      OUTLINED_FUNCTION_48_0(EnumTagSinglePayload);
      if (!v108)
      {
        sub_26A0E48F0(EnumTagSinglePayload, &qword_28036CAE0, &unk_26A4273F0);
      }
    }

    else
    {
      v201 = v232;
      sub_26A130A5C();
      v188 = v167;
      v189 = v239;
    }

    _ProtoMultilineTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_9_5();
    sub_26A130AB0(v201, v202);
    v203 = *(v106 + v190);
    v204 = swift_isUniquelyReferenced_nonNull_native();
    v205 = *(v106 + v190);
    if ((v204 & 1) == 0)
    {
      v206 = type metadata accessor for _ProtoFactItem_HeroNumber._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v206);
      OUTLINED_FUNCTION_29_0();
      *(v106 + v190) = v207;
    }

    OUTLINED_FUNCTION_46_2(&a12);
    v208 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v208, v209, v210, v107);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  v211 = v237;
  sub_26A10FD9C();
  __swift_getEnumTagSinglePayload(v211, 1, v189);
  OUTLINED_FUNCTION_59_1();
  if (EnumTagSinglePayload != 1)
  {
    v212 = v233;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_17_3(v212);
    v213 = v240;
    if (v108)
    {
      v215 = v234;
      *v234 = v188;
      *(v215 + 8) = 0;
      *(v215 + 16) = 0xE000000000000000;
      v214 = v215 + *(v189 + 24);
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_17_3(v212);
      v216 = v235;
      if (!v108)
      {
        sub_26A0E48F0(v212, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      v215 = v234;
      sub_26A130A5C();
      v216 = v235;
    }

    _s10SnippetKit14ActionPropertyV13redactedProtoAA01_fcD0Vvg_0(v216);
    sub_26A130AB0(v215, type metadata accessor for _ProtoActionProperty);
    v217 = *(v106 + v213);
    v218 = swift_isUniquelyReferenced_nonNull_native();
    v219 = *(v106 + v213);
    if ((v218 & 1) == 0)
    {
      v220 = type metadata accessor for _ProtoFactItem_HeroNumber._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v220);
      sub_26A2CD7C0();
      *(v106 + v213) = v221;
    }

    OUTLINED_FUNCTION_46_2(&v246);
    v222 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v222, v223, v224, v189);
    OUTLINED_FUNCTION_211();
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t FactItemHeroNumber.init(number:text1:text2:text3:text4:text5:action:componentName:linkIdentifier:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for _ProtoFactItem_HeroNumber(0);
  OUTLINED_FUNCTION_0_8();
  sub_26A130B08(v10, v11);
  OUTLINED_FUNCTION_56_1();

  sub_26A0E48F0(a7, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_187_0(a6);
  sub_26A0E48F0(a5, &qword_28036CB08, &unk_26A428720);
  OUTLINED_FUNCTION_187_0(a4);
  OUTLINED_FUNCTION_187_0(a3);
  sub_26A0E48F0(a2, &qword_28036CB08, &unk_26A428720);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26A12EC0C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v104 = a8;
  v102 = a7;
  v100 = a6;
  v97 = a3;
  v98 = a5;
  v96 = a4;
  v14 = type metadata accessor for ActionProperty();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v94 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v109 = &v87 - v19;
  v108 = type metadata accessor for _ProtoActionProperty();
  v20 = *(*(v108 - 8) + 64);
  MEMORY[0x28223BE20](v108);
  v91 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v92 = &v87 - v23;
  v24 = type metadata accessor for MultilineTextProperty(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v106 = &v87 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v107 = &v87 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v101 = &v87 - v31;
  MEMORY[0x28223BE20](v32);
  v99 = &v87 - v33;
  v105 = type metadata accessor for _ProtoMultilineTextProperty(0);
  v34 = *(*(v105 - 8) + 64);
  MEMORY[0x28223BE20](v105);
  v90 = &v87 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v88 = &v87 - v37;
  MEMORY[0x28223BE20](v38);
  v95 = &v87 - v39;
  MEMORY[0x28223BE20](v40);
  v87 = &v87 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42 - 8);
  v103 = &v87 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v47 = &v87 - v46;
  v48 = type metadata accessor for _ProtoTextProperty(0);
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48);
  v89 = &v87 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51);
  v53 = &v87 - v52;
  MEMORY[0x28223BE20](v54);
  v56 = &v87 - v55;
  v57 = type metadata accessor for TextProperty(0);
  v58 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57 - 8);
  v59 = a2[3];
  v60 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v59);
  (*(v60 + 8))(v59, v60);
  sub_26A130A5C();
  v93 = v56;
  _ProtoFactItem_HeroNumber.number.setter();

  _ProtoFactItem_HeroNumber.componentName.setter();
  sub_26A10FD9C();
  v61 = v111;
  v113 = a1;
  if (v111)
  {
    v62 = v112;
    __swift_project_boxed_opaque_existential_1(v110, v111);
    (*(v62 + 8))(v61, v62);
    sub_26A130A5C();
    __swift_storeEnumTagSinglePayload(v47, 0, 1, v48);
    __swift_destroy_boxed_opaque_existential_1(v110);
    if (__swift_getEnumTagSinglePayload(v47, 1, v48) != 1)
    {
      sub_26A130A5C();
      sub_26A130C2C();
      _ProtoFactItem_HeroNumber.text1.setter();
      sub_26A130AB0(v53, type metadata accessor for _ProtoTextProperty);
      goto LABEL_6;
    }
  }

  else
  {
    sub_26A0E48F0(v110, &qword_28036CB08, &unk_26A428720);
    __swift_storeEnumTagSinglePayload(v47, 1, 1, v48);
  }

  sub_26A0E48F0(v47, &qword_28036C7B8, &unk_26A425BF0);
LABEL_6:
  sub_26A10FD9C();
  v63 = v111;
  v64 = v105;
  if (v111)
  {
    v65 = v112;
    __swift_project_boxed_opaque_existential_1(v110, v111);
    (*(v65 + 8))(v63, v65);
    v66 = v99;
    sub_26A130A5C();
    __swift_storeEnumTagSinglePayload(v66, 0, 1, v64);
    __swift_destroy_boxed_opaque_existential_1(v110);
    if (__swift_getEnumTagSinglePayload(v66, 1, v64) != 1)
    {
      v67 = v87;
      sub_26A130A5C();
      sub_26A130C2C();
      _ProtoFactItem_HeroNumber.text2.setter();
      sub_26A130AB0(v67, type metadata accessor for _ProtoMultilineTextProperty);
      goto LABEL_11;
    }
  }

  else
  {
    sub_26A0E48F0(v110, &qword_28036CB10, &unk_26A426460);
    v66 = v99;
    __swift_storeEnumTagSinglePayload(v99, 1, 1, v64);
  }

  sub_26A0E48F0(v66, &qword_28036CAE0, &unk_26A4273F0);
LABEL_11:
  sub_26A10FD9C();
  v68 = v111;
  if (v111)
  {
    v69 = v112;
    __swift_project_boxed_opaque_existential_1(v110, v111);
    (*(v69 + 8))(v68, v69);
    v70 = v101;
    sub_26A130A5C();
    __swift_storeEnumTagSinglePayload(v70, 0, 1, v64);
    __swift_destroy_boxed_opaque_existential_1(v110);
    if (__swift_getEnumTagSinglePayload(v70, 1, v64) != 1)
    {
      v71 = v88;
      sub_26A130A5C();
      sub_26A130C2C();
      _ProtoFactItem_HeroNumber.text3.setter();
      sub_26A130AB0(v71, type metadata accessor for _ProtoMultilineTextProperty);
      goto LABEL_16;
    }
  }

  else
  {
    sub_26A0E48F0(v110, &qword_28036CB10, &unk_26A426460);
    v70 = v101;
    __swift_storeEnumTagSinglePayload(v101, 1, 1, v64);
  }

  sub_26A0E48F0(v70, &qword_28036CAE0, &unk_26A4273F0);
LABEL_16:
  sub_26A10FD9C();
  v72 = v111;
  if (v111)
  {
    v73 = v112;
    __swift_project_boxed_opaque_existential_1(v110, v111);
    (*(v73 + 8))(v72, v73);
    v74 = v103;
    sub_26A130A5C();
    __swift_storeEnumTagSinglePayload(v74, 0, 1, v48);
    __swift_destroy_boxed_opaque_existential_1(v110);
    if (__swift_getEnumTagSinglePayload(v74, 1, v48) != 1)
    {
      v75 = v89;
      sub_26A130A5C();
      sub_26A130C2C();
      _ProtoFactItem_HeroNumber.text4.setter();
      sub_26A130AB0(v75, type metadata accessor for _ProtoTextProperty);
      goto LABEL_21;
    }
  }

  else
  {
    sub_26A0E48F0(v110, &qword_28036CB08, &unk_26A428720);
    v74 = v103;
    __swift_storeEnumTagSinglePayload(v103, 1, 1, v48);
  }

  sub_26A0E48F0(v74, &qword_28036C7B8, &unk_26A425BF0);
LABEL_21:
  sub_26A10FD9C();
  v76 = v111;
  if (v111)
  {
    v77 = v64;
    v78 = v112;
    __swift_project_boxed_opaque_existential_1(v110, v111);
    (*(v78 + 8))(v76, v78);
    v79 = v107;
    sub_26A130A5C();
    __swift_storeEnumTagSinglePayload(v79, 0, 1, v77);
    __swift_destroy_boxed_opaque_existential_1(v110);
    if (__swift_getEnumTagSinglePayload(v79, 1, v77) != 1)
    {
      v80 = v90;
      sub_26A130A5C();
      sub_26A130C2C();
      _ProtoFactItem_HeroNumber.text5.setter();
      sub_26A130AB0(v80, type metadata accessor for _ProtoMultilineTextProperty);
      goto LABEL_26;
    }
  }

  else
  {
    sub_26A0E48F0(v110, &qword_28036CB10, &unk_26A426460);
    v79 = v107;
    __swift_storeEnumTagSinglePayload(v107, 1, 1, v64);
  }

  sub_26A0E48F0(v79, &qword_28036CAE0, &unk_26A4273F0);
LABEL_26:
  sub_26A10FD9C();
  v81 = v111;
  if (!v111)
  {
    sub_26A0E48F0(v110, &qword_28036CAF8, &unk_26A426D30);
    v83 = v109;
    __swift_storeEnumTagSinglePayload(v109, 1, 1, v108);
LABEL_31:
    result = sub_26A0E48F0(v83, &off_28036C7C0, &off_26A427400);
    if (!a12)
    {
      return result;
    }

    goto LABEL_32;
  }

  v82 = v112;
  __swift_project_boxed_opaque_existential_1(v110, v111);
  (*(v82 + 8))(v81, v82);
  v83 = v109;
  sub_26A130A5C();
  v84 = v108;
  __swift_storeEnumTagSinglePayload(v83, 0, 1, v108);
  __swift_destroy_boxed_opaque_existential_1(v110);
  if (__swift_getEnumTagSinglePayload(v83, 1, v84) == 1)
  {
    goto LABEL_31;
  }

  v85 = v92;
  sub_26A130A5C();
  sub_26A130C2C();
  _ProtoFactItem_HeroNumber.action.setter();
  result = sub_26A130AB0(v85, type metadata accessor for _ProtoActionProperty);
  if (a12)
  {
LABEL_32:

    return _ProtoFactItem_HeroNumber.linkIdentifier.setter();
  }

  return result;
}

void FactItemHeroNumber.init(number:text1:text2:text3:text4:text5:action:componentName:)()
{
  OUTLINED_FUNCTION_76();
  v12 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v13 = v8;
  v14 = v7;
  v15 = v9;
  sub_26A0E5D68(v9, v22);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_32_2();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_32_2();
  sub_26A10FD9C();
  type metadata accessor for _ProtoFactItem_HeroNumber(0);
  OUTLINED_FUNCTION_0_8();
  sub_26A130B08(v10, v11);
  OUTLINED_FUNCTION_56_1();

  sub_26A0E48F0(v2, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_31_2(v4);
  sub_26A0E48F0(v6, &qword_28036CB08, &unk_26A428720);
  OUTLINED_FUNCTION_31_2(v12);
  OUTLINED_FUNCTION_31_2(v13);
  OUTLINED_FUNCTION_187_0(v14);
  __swift_destroy_boxed_opaque_existential_1(v15);
  sub_26A0E48F0(v16, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_31_2(v17);
  OUTLINED_FUNCTION_187_0(v18);
  OUTLINED_FUNCTION_31_2(&v19);
  OUTLINED_FUNCTION_31_2(&v20);
  OUTLINED_FUNCTION_187_0(&v21);
  __swift_destroy_boxed_opaque_existential_1(v22);
  OUTLINED_FUNCTION_75();
}

void FactItemHeroNumber.init(number:text1:text2:text3:text4:action:)()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v9 = v3;
  v10 = v2;
  v11 = v4;
  v12 = v6;
  v13 = v5;
  sub_26A0E5D68(v5, v28);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_32_1();
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  sub_26A10FD9C();
  sub_26A0E5D68(v28, v20);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_2();
  sub_26A10FD9C();
  type metadata accessor for _ProtoFactItem_HeroNumber(0);
  OUTLINED_FUNCTION_0_8();
  sub_26A130B08(v7, v8);
  sub_26A4249C4();
  sub_26A0E48F0(v1, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_164_0(v9);
  OUTLINED_FUNCTION_31_2(v10);
  OUTLINED_FUNCTION_31_2(v11);
  OUTLINED_FUNCTION_164_0(v12);
  __swift_destroy_boxed_opaque_existential_1(v13);
  sub_26A0E48F0(v21, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_31_2(v22);
  OUTLINED_FUNCTION_164_0(v24);
  OUTLINED_FUNCTION_31_2(&v25);
  OUTLINED_FUNCTION_31_2(&v26);
  OUTLINED_FUNCTION_164_0(&v27);
  __swift_destroy_boxed_opaque_existential_1(v28);
  sub_26A0E48F0(v14, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_31_2(v15);
  OUTLINED_FUNCTION_164_0(v16);
  OUTLINED_FUNCTION_31_2(v17);
  OUTLINED_FUNCTION_31_2(v18);
  OUTLINED_FUNCTION_164_0(v19);
  __swift_destroy_boxed_opaque_existential_1(v20);
  OUTLINED_FUNCTION_75();
}

void FactItemHeroNumber.init(number:text1:text2:text3:text4:action:componentName:)()
{
  OUTLINED_FUNCTION_76();
  v9 = v0;
  v8 = v1;
  v10 = v2;
  v11 = v4;
  v12 = v3;
  v13 = v5;
  sub_26A0E5D68(v5, v28);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_32_1();
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  sub_26A10FD9C();
  sub_26A0E5D68(v28, v20);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_2();
  sub_26A10FD9C();
  type metadata accessor for _ProtoFactItem_HeroNumber(0);
  OUTLINED_FUNCTION_0_8();
  sub_26A130B08(v6, v7);
  OUTLINED_FUNCTION_56_1();

  sub_26A0E48F0(v8, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_164_0(v9);
  OUTLINED_FUNCTION_31_2(v10);
  OUTLINED_FUNCTION_31_2(v11);
  OUTLINED_FUNCTION_164_0(v12);
  __swift_destroy_boxed_opaque_existential_1(v13);
  sub_26A0E48F0(v21, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_31_2(v22);
  OUTLINED_FUNCTION_164_0(v24);
  OUTLINED_FUNCTION_31_2(&v25);
  OUTLINED_FUNCTION_31_2(&v26);
  OUTLINED_FUNCTION_164_0(&v27);
  __swift_destroy_boxed_opaque_existential_1(v28);
  sub_26A0E48F0(v14, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_31_2(v15);
  OUTLINED_FUNCTION_164_0(v16);
  OUTLINED_FUNCTION_31_2(v17);
  OUTLINED_FUNCTION_31_2(v18);
  OUTLINED_FUNCTION_164_0(v19);
  __swift_destroy_boxed_opaque_existential_1(v20);
  OUTLINED_FUNCTION_75();
}

uint64_t FactItemHeroNumber.componentProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoFactItem_HeroNumber(0);
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
  OUTLINED_FUNCTION_11_7();
  sub_26A130C2C();
  sub_26A0E48F0(a1, &qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_24_6();
  sub_26A130A5C();
  OUTLINED_FUNCTION_175();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v6);
}

uint64_t FactItemHeroNumber.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for FactItemHeroNumber();
  *(inited + 64) = &protocol witness table for FactItemHeroNumber;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_25_5();
  sub_26A130C2C();
  OUTLINED_FUNCTION_142();

  sub_26A10BF5C(v1);
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A130B08(&qword_28036CB48, type metadata accessor for _ProtoResponse.Section);
  OUTLINED_FUNCTION_56_1();

  swift_setDeallocating();
  return sub_26A10C358();
}

uint64_t type metadata accessor for FactItemHeroNumber()
{
  result = qword_28036D2C0;
  if (!qword_28036D2C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A130A5C()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t sub_26A130AB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_26A130B08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A130BC0()
{
  result = type metadata accessor for _ProtoFactItem_HeroNumber(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A130C2C()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t OUTLINED_FUNCTION_1_7(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v4 + v1, 1, 1, a1);
  __swift_storeEnumTagSinglePayload(v4 + *(v2 + 36), 1, 1, a1);
  return __swift_getEnumTagSinglePayload(v3, 1, v2);
}

uint64_t OUTLINED_FUNCTION_21_5()
{

  return type metadata accessor for _ProtoFactItem_HeroNumber(0);
}

uint64_t OUTLINED_FUNCTION_23_6()
{
  __swift_getEnumTagSinglePayload(v2, 1, v3);

  return sub_26A0E48F0(v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_26_4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return sub_26A10FD9C();
}

void OUTLINED_FUNCTION_29_0()
{

  sub_26A2CD7C0();
}

uint64_t OUTLINED_FUNCTION_31_2(uint64_t a1)
{

  return sub_26A0E48F0(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_32_2()
{

  return sub_26A10FD9C();
}

uint64_t OUTLINED_FUNCTION_46_2@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return sub_26A130A5C();
}

uint64_t OUTLINED_FUNCTION_48_2()
{

  return sub_26A0E48F0(v1, v0, v2);
}

uint64_t OUTLINED_FUNCTION_49_3@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 - 256);
  *v4 = a1;
  *(v4 + 8) = 0;
  v5 = v4 + *(v2 + 28);

  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t OUTLINED_FUNCTION_52_2()
{

  return sub_26A130A5C();
}

uint64_t OUTLINED_FUNCTION_58_2()
{

  return type metadata accessor for _ProtoFactItem_HeroNumber(0);
}

uint64_t OUTLINED_FUNCTION_59_1()
{

  return sub_26A0E48F0(v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_61_1()
{
  v2 = *(v0 + 32);

  return type metadata accessor for _ProtoActionProperty();
}

uint64_t OUTLINED_FUNCTION_62_1(uint64_t a1, uint64_t *a2)
{
  v5 = *(v3 - 112);

  return sub_26A0E48F0(a1, a2, v2);
}

uint64_t OUTLINED_FUNCTION_63_0(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

uint64_t TertiaryHeaderStandard.text1.getter()
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
  v13 = *(type metadata accessor for _ProtoTertiaryHeader_Standard() + 24);
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
    sub_26A132288();
  }

  return sub_26A132288();
}