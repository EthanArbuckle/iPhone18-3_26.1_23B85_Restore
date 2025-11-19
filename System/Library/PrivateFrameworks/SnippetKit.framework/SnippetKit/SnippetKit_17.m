uint64_t sub_26A26D374(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A275BB8(&qword_280370F88, type metadata accessor for _ProtoSimpleItem_Rich);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A26D3F4(uint64_t a1)
{
  v2 = sub_26A275BB8(&qword_28036F880, type metadata accessor for _ProtoSimpleItem_Rich);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A26D464()
{
  sub_26A275BB8(&qword_28036F880, type metadata accessor for _ProtoSimpleItem_Rich);

  return sub_26A4249B4();
}

uint64_t sub_26A26D4FC()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280370C28);
  __swift_project_value_buffer(v0, qword_280370C28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_26A429A40;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "text_1";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21888];
  v7 = sub_26A424A94();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "text_2";
  *(v9 + 8) = 6;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "text_3";
  *(v11 + 1) = 6;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "thumbnail";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v14 = *MEMORY[0x277D21870];
  v8();
  v15 = (v4 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "action";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v8();
  v17 = (v4 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "component_name";
  *(v18 + 1) = 14;
  v18[16] = 2;
  v8();
  v19 = (v4 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "text_4";
  *(v20 + 1) = 6;
  v20[16] = 2;
  v8();
  v21 = (v4 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "link_identifier";
  *(v22 + 1) = 15;
  v22[16] = 2;
  v8();
  return sub_26A424AA4();
}

uint64_t sub_26A26D890()
{
  v1 = OBJC_IVAR____TtCV10SnippetKit28_ProtoSimpleItem_ReverseRichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text1;
  v2 = type metadata accessor for _ProtoTextProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSimpleItem_ReverseRichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text2, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10SnippetKit28_ProtoSimpleItem_ReverseRichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text3;
  v4 = type metadata accessor for _ProtoMultilineTextProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV10SnippetKit28_ProtoSimpleItem_ReverseRichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__thumbnail;
  v6 = type metadata accessor for _ProtoVisualProperty();
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCV10SnippetKit28_ProtoSimpleItem_ReverseRichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__action;
  v8 = type metadata accessor for _ProtoActionProperty();
  __swift_storeEnumTagSinglePayload(v0 + v7, 1, 1, v8);
  v9 = (v0 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSimpleItem_ReverseRichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__componentName);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSimpleItem_ReverseRichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text4, 1, 1, v2);
  v10 = (v0 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSimpleItem_ReverseRichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__linkIdentifier);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  return v0;
}

void sub_26A26D9A8()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_42();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_42();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_42();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_56();
  v19 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v19);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v19);
  type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
  type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
  v38 = (v0 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSimpleItem_ReverseRichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__componentName);
  *v38 = 0;
  v38[1] = 0xE000000000000000;
  v39 = OUTLINED_FUNCTION_44_0(OBJC_IVAR____TtCV10SnippetKit28_ProtoSimpleItem_ReverseRichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text4);
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v19);
  v42 = (v0 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSimpleItem_ReverseRichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__linkIdentifier);
  *v42 = 0;
  v42[1] = 0xE000000000000000;
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
  OUTLINED_FUNCTION_127_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  sub_26A10CF40();
  swift_endAccess();
  v43 = (v2 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSimpleItem_ReverseRichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__componentName);
  OUTLINED_FUNCTION_142();
  v44 = *v43;
  v45 = v43[1];
  OUTLINED_FUNCTION_26_10();
  v46 = v38[1];
  *v38 = v44;
  v38[1] = v45;

  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  sub_26A10CF40();
  swift_endAccess();
  v47 = (v2 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSimpleItem_ReverseRichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__linkIdentifier);
  OUTLINED_FUNCTION_142();
  v49 = *v47;
  v48 = v47[1];

  OUTLINED_FUNCTION_26_10();
  v50 = v42[1];
  *v42 = v49;
  v42[1] = v48;

  OUTLINED_FUNCTION_144_1();
  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A26DF28()
{
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSimpleItem_ReverseRichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text1, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSimpleItem_ReverseRichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text2, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSimpleItem_ReverseRichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text3, &qword_28036CAE0, &unk_26A4273F0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSimpleItem_ReverseRichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__thumbnail, &qword_28036CAE8, &unk_26A426430);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSimpleItem_ReverseRichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__action, &off_28036C7C0, &off_26A427400);
  v1 = *(v0 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSimpleItem_ReverseRichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__componentName + 8);

  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSimpleItem_ReverseRichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text4, &qword_28036C7B8, &unk_26A425BF0);
  v2 = *(v0 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSimpleItem_ReverseRichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__linkIdentifier + 8);

  return v0;
}

uint64_t sub_26A26E0A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        sub_26A26E208();
        break;
      case 2:
        sub_26A26E2E4();
        break;
      case 3:
        sub_26A26E3C0();
        break;
      case 4:
        sub_26A26E49C();
        break;
      case 5:
        sub_26A26E578();
        break;
      case 6:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10SnippetKit28_ProtoSimpleItem_ReverseRichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__componentName;
        goto LABEL_11;
      case 7:
        sub_26A26E654();
        break;
      case 8:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10SnippetKit28_ProtoSimpleItem_ReverseRichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__linkIdentifier;
LABEL_11:
        sub_26A2768B0(v11, v12, v13, v14, v15);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A26E208()
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A275BB8(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A26E2E4()
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A275BB8(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A26E3C0()
{
  swift_beginAccess();
  type metadata accessor for _ProtoMultilineTextProperty(0);
  sub_26A275BB8(&qword_28036D450, type metadata accessor for _ProtoMultilineTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A26E49C()
{
  swift_beginAccess();
  type metadata accessor for _ProtoVisualProperty();
  sub_26A275BB8(qword_2815796B8, type metadata accessor for _ProtoVisualProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A26E578()
{
  swift_beginAccess();
  type metadata accessor for _ProtoActionProperty();
  sub_26A275BB8(&qword_28036C928, type metadata accessor for _ProtoActionProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A26E654()
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A275BB8(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A26E760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_26A26E92C(a1, a2, a3, a4);
  if (!v4)
  {
    sub_26A26EB20(a1, a2, a3, a4);
    sub_26A26ED14(a1, a2, a3, a4);
    sub_26A26EF08(a1, a2, a3, a4);
    sub_26A26F0FC(a1, a2, a3, a4);
    v10 = (a1 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSimpleItem_ReverseRichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__componentName);
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

    sub_26A26F2F0(a1, a2, a3, a4);
    v14 = (a1 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSimpleItem_ReverseRichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__linkIdentifier);
    result = swift_beginAccess();
    v15 = *v14;
    v16 = v14[1];
    v17 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v17 = v15 & 0xFFFFFFFFFFFFLL;
    }

    if (v17)
    {

      sub_26A424A64();
    }
  }

  return result;
}

uint64_t sub_26A26E92C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_26A2597D8();
  sub_26A275BB8(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A26960C();
}

uint64_t sub_26A26EB20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_26A2597D8();
  sub_26A275BB8(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A26960C();
}

uint64_t sub_26A26ED14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for _ProtoMultilineTextProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &qword_28036CAE0, &unk_26A4273F0);
  }

  sub_26A2597D8();
  sub_26A275BB8(&qword_28036D450, type metadata accessor for _ProtoMultilineTextProperty);
  sub_26A424A84();
  return sub_26A26960C();
}

uint64_t sub_26A26EF08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_26A2597D8();
  sub_26A275BB8(qword_2815796B8, type metadata accessor for _ProtoVisualProperty);
  sub_26A424A84();
  return sub_26A26960C();
}

uint64_t sub_26A26F0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_26A2597D8();
  sub_26A275BB8(&qword_28036C928, type metadata accessor for _ProtoActionProperty);
  sub_26A424A84();
  return sub_26A26960C();
}

uint64_t sub_26A26F2F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_26A2597D8();
  sub_26A275BB8(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A26960C();
}

uint64_t sub_26A26F510(uint64_t a1, char *a2)
{
  v127 = type metadata accessor for _ProtoActionProperty();
  v4 = *(*(v127 - 8) + 64);
  MEMORY[0x28223BE20](v127);
  v122 = &v119 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7C8, &qword_26A425C00);
  v6 = *(*(v126 - 8) + 64);
  MEMORY[0x28223BE20](v126);
  v128 = &v119 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v124 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v130 = &v119 - v12;
  v133 = type metadata accessor for _ProtoVisualProperty();
  v13 = *(*(v133 - 8) + 64);
  MEMORY[0x28223BE20](v133);
  v125 = (&v119 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D190, &unk_26A427130);
  v15 = *(*(v132 - 8) + 64);
  MEMORY[0x28223BE20](v132);
  v134 = &v119 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v129 = (&v119 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20);
  v139 = &v119 - v21;
  v137 = type metadata accessor for _ProtoMultilineTextProperty(0);
  v22 = *(*(v137 - 8) + 64);
  MEMORY[0x28223BE20](v137);
  v131 = &v119 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036F088, &unk_26A42C570);
  v24 = *(*(v136 - 8) + 64);
  MEMORY[0x28223BE20](v136);
  v138 = &v119 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v135 = &v119 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v141 = &v119 - v30;
  v147 = type metadata accessor for _ProtoTextProperty(0);
  v31 = *(*(v147 - 8) + 64);
  MEMORY[0x28223BE20](v147);
  v142 = &v119 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7D0, &qword_26A426DE0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v121 = &v119 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v144 = &v119 - v37;
  MEMORY[0x28223BE20](v38);
  v40 = &v119 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41 - 8);
  v120 = &v119 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v123 = &v119 - v45;
  MEMORY[0x28223BE20](v46);
  v140 = &v119 - v47;
  MEMORY[0x28223BE20](v48);
  v143 = &v119 - v49;
  MEMORY[0x28223BE20](v50);
  v146 = &v119 - v51;
  MEMORY[0x28223BE20](v52);
  v54 = &v119 - v53;
  swift_beginAccess();
  sub_26A10FD9C();
  swift_beginAccess();
  v145 = v33;
  v55 = *(v33 + 48);
  sub_26A10FD9C();
  v56 = a2;
  v57 = v147;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v40, 1, v57) == 1)
  {

    sub_26A0E48F0(v54, &qword_28036C7B8, &unk_26A425BF0);
    v58 = a2;
    if (__swift_getEnumTagSinglePayload(&v40[v55], 1, v57) == 1)
    {
      sub_26A0E48F0(v40, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_9;
    }

LABEL_6:
    sub_26A0E48F0(v40, &qword_28036C7D0, &qword_26A426DE0);
    goto LABEL_31;
  }

  v59 = v146;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(&v40[v55], 1, v57) == 1)
  {

    sub_26A0E48F0(v54, &qword_28036C7B8, &unk_26A425BF0);
    sub_26A26960C();
    goto LABEL_6;
  }

  v60 = v142;
  sub_26A2597D8();

  v61 = static _ProtoTextProperty.== infix(_:_:)(v59, v60);
  sub_26A26960C();
  sub_26A0E48F0(v54, &qword_28036C7B8, &unk_26A425BF0);
  v58 = v56;
  sub_26A26960C();
  sub_26A0E48F0(v40, &qword_28036C7B8, &unk_26A425BF0);
  if ((v61 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_9:
  v119 = a1;
  swift_beginAccess();
  v62 = v143;
  sub_26A10FD9C();
  swift_beginAccess();
  v63 = v144;
  v64 = *(v145 + 48);
  sub_26A10FD9C();
  sub_26A10FD9C();
  v65 = v147;
  if (__swift_getEnumTagSinglePayload(v63, 1, v147) == 1)
  {
    sub_26A0E48F0(v62, &qword_28036C7B8, &unk_26A425BF0);
    if (__swift_getEnumTagSinglePayload(v63 + v64, 1, v65) == 1)
    {
      sub_26A0E48F0(v63, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_16;
    }

LABEL_14:
    v67 = &qword_28036C7D0;
    v68 = &qword_26A426DE0;
    v69 = v63;
LABEL_30:
    sub_26A0E48F0(v69, v67, v68);
    goto LABEL_31;
  }

  v66 = v140;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v63 + v64, 1, v65) == 1)
  {
    sub_26A0E48F0(v62, &qword_28036C7B8, &unk_26A425BF0);
    sub_26A26960C();
    goto LABEL_14;
  }

  v146 = v58;
  v70 = v65;
  v71 = v63;
  v72 = v142;
  sub_26A2597D8();
  v73 = static _ProtoTextProperty.== infix(_:_:)(v66, v72);
  sub_26A26960C();
  sub_26A0E48F0(v62, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A26960C();
  v74 = v71;
  v65 = v70;
  v58 = v146;
  sub_26A0E48F0(v74, &qword_28036C7B8, &unk_26A425BF0);
  if ((v73 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_16:
  swift_beginAccess();
  v75 = v141;
  sub_26A10FD9C();
  swift_beginAccess();
  v76 = *(v136 + 48);
  v77 = v138;
  sub_26A10FD9C();
  sub_26A10FD9C();
  v78 = v137;
  if (__swift_getEnumTagSinglePayload(v77, 1, v137) == 1)
  {
    sub_26A0E48F0(v75, &qword_28036CAE0, &unk_26A4273F0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v77 + v76, 1, v78);
    v80 = v139;
    if (EnumTagSinglePayload == 1)
    {
      sub_26A0E48F0(v77, &qword_28036CAE0, &unk_26A4273F0);
      goto LABEL_23;
    }

LABEL_21:
    v67 = &qword_28036F088;
    v68 = &unk_26A42C570;
LABEL_29:
    v69 = v77;
    goto LABEL_30;
  }

  v81 = v135;
  sub_26A10FD9C();
  v82 = __swift_getEnumTagSinglePayload(v77 + v76, 1, v78);
  v80 = v139;
  if (v82 == 1)
  {
    sub_26A0E48F0(v141, &qword_28036CAE0, &unk_26A4273F0);
    sub_26A26960C();
    goto LABEL_21;
  }

  v83 = v131;
  sub_26A2597D8();
  v84 = static _ProtoMultilineTextProperty.== infix(_:_:)(v81, v83);
  sub_26A26960C();
  sub_26A0E48F0(v141, &qword_28036CAE0, &unk_26A4273F0);
  sub_26A26960C();
  sub_26A0E48F0(v77, &qword_28036CAE0, &unk_26A4273F0);
  if ((v84 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_23:
  swift_beginAccess();
  sub_26A10FD9C();
  swift_beginAccess();
  v85 = *(v132 + 48);
  v77 = v134;
  sub_26A10FD9C();
  sub_26A10FD9C();
  v86 = v133;
  if (__swift_getEnumTagSinglePayload(v77, 1, v133) == 1)
  {
    sub_26A0E48F0(v80, &qword_28036CAE8, &unk_26A426430);
    if (__swift_getEnumTagSinglePayload(v77 + v85, 1, v86) == 1)
    {
      sub_26A0E48F0(v77, &qword_28036CAE8, &unk_26A426430);
      goto LABEL_34;
    }

    goto LABEL_28;
  }

  v87 = v129;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v77 + v85, 1, v86) == 1)
  {
    sub_26A0E48F0(v80, &qword_28036CAE8, &unk_26A426430);
    sub_26A26960C();
LABEL_28:
    v67 = &qword_28036D190;
    v68 = &unk_26A427130;
    goto LABEL_29;
  }

  v89 = v125;
  sub_26A2597D8();
  v90 = static _ProtoVisualProperty.== infix(_:_:)(v87, v89);
  sub_26A26960C();
  sub_26A0E48F0(v80, &qword_28036CAE8, &unk_26A426430);
  sub_26A26960C();
  sub_26A0E48F0(v77, &qword_28036CAE8, &unk_26A426430);
  if ((v90 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_34:
  swift_beginAccess();
  v91 = v130;
  sub_26A10FD9C();
  swift_beginAccess();
  v92 = *(v126 + 48);
  v93 = v128;
  sub_26A10FD9C();
  sub_26A10FD9C();
  v94 = v127;
  if (__swift_getEnumTagSinglePayload(v93, 1, v127) == 1)
  {
    sub_26A0E48F0(v91, &off_28036C7C0, &off_26A427400);
    if (__swift_getEnumTagSinglePayload(v93 + v92, 1, v94) == 1)
    {
      sub_26A0E48F0(v93, &off_28036C7C0, &off_26A427400);
      goto LABEL_37;
    }

LABEL_47:
    v67 = &qword_28036C7C8;
    v68 = &qword_26A425C00;
    v69 = v93;
    goto LABEL_30;
  }

  v102 = v124;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v93 + v92, 1, v94) == 1)
  {
    sub_26A0E48F0(v130, &off_28036C7C0, &off_26A427400);
    sub_26A26960C();
    goto LABEL_47;
  }

  v103 = v122;
  sub_26A2597D8();
  v104 = *v102;
  v105 = *v103;
  sub_26A0E36D8();
  if ((v106 & 1) == 0 || (v102[1] == v103[1] ? (v107 = v102[2] == v103[2]) : (v107 = 0), !v107 && (sub_26A425354() & 1) == 0))
  {
    sub_26A26960C();
    sub_26A0E48F0(v130, &off_28036C7C0, &off_26A427400);
    sub_26A26960C();
    v69 = v93;
    v67 = &off_28036C7C0;
    v68 = &off_26A427400;
    goto LABEL_30;
  }

  v108 = *(v94 + 24);
  sub_26A424794();
  sub_26A275BB8(qword_2815792E0, MEMORY[0x277D216C8]);
  v109 = sub_26A424B64();
  sub_26A26960C();
  sub_26A0E48F0(v130, &off_28036C7C0, &off_26A427400);
  sub_26A26960C();
  sub_26A0E48F0(v93, &off_28036C7C0, &off_26A427400);
  if ((v109 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_37:
  v95 = (v119 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSimpleItem_ReverseRichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__componentName);
  swift_beginAccess();
  v96 = *v95;
  v97 = v95[1];
  v98 = &v58[OBJC_IVAR____TtCV10SnippetKit28_ProtoSimpleItem_ReverseRichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__componentName];
  swift_beginAccess();
  v99 = v96 == *v98 && v97 == *(v98 + 1);
  if (!v99 && (sub_26A425354() & 1) == 0)
  {
    goto LABEL_31;
  }

  swift_beginAccess();
  v100 = v123;
  sub_26A10FD9C();
  swift_beginAccess();
  v101 = *(v145 + 48);
  v77 = v121;
  sub_26A10FD9C();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v77, 1, v65) != 1)
  {
    v110 = v120;
    sub_26A10FD9C();
    if (__swift_getEnumTagSinglePayload(v77 + v101, 1, v65) == 1)
    {
      sub_26A0E48F0(v123, &qword_28036C7B8, &unk_26A425BF0);
      sub_26A26960C();
      goto LABEL_59;
    }

    v111 = v142;
    sub_26A2597D8();
    v112 = static _ProtoTextProperty.== infix(_:_:)(v110, v111);
    sub_26A26960C();
    sub_26A0E48F0(v123, &qword_28036C7B8, &unk_26A425BF0);
    sub_26A26960C();
    sub_26A0E48F0(v77, &qword_28036C7B8, &unk_26A425BF0);
    if (v112)
    {
      goto LABEL_61;
    }

LABEL_31:

    return 0;
  }

  sub_26A0E48F0(v100, &qword_28036C7B8, &unk_26A425BF0);
  if (__swift_getEnumTagSinglePayload(v77 + v101, 1, v65) != 1)
  {
LABEL_59:
    v67 = &qword_28036C7D0;
    v68 = &qword_26A426DE0;
    goto LABEL_29;
  }

  sub_26A0E48F0(v77, &qword_28036C7B8, &unk_26A425BF0);
LABEL_61:
  v113 = (v119 + OBJC_IVAR____TtCV10SnippetKit28_ProtoSimpleItem_ReverseRichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__linkIdentifier);
  swift_beginAccess();
  v114 = *v113;
  v115 = v113[1];
  v116 = &v58[OBJC_IVAR____TtCV10SnippetKit28_ProtoSimpleItem_ReverseRichP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__linkIdentifier];
  swift_beginAccess();
  if (v114 == *v116 && v115 == *(v116 + 1))
  {

    return 1;
  }

  v118 = sub_26A425354();

  result = 0;
  if (v118)
  {
    return 1;
  }

  return result;
}

uint64_t sub_26A2709FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A275BB8(&qword_280370F80, type metadata accessor for _ProtoSimpleItem_ReverseRich);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A270A7C(uint64_t a1)
{
  v2 = sub_26A275BB8(&qword_28036F848, type metadata accessor for _ProtoSimpleItem_ReverseRich);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A270AEC()
{
  sub_26A275BB8(&qword_28036F848, type metadata accessor for _ProtoSimpleItem_ReverseRich);

  return sub_26A4249B4();
}

uint64_t sub_26A270B84()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280370C48);
  __swift_project_value_buffer(v0, qword_280370C48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A4271D0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "thumbnails";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "action";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "text_1";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v13 = *MEMORY[0x277D21888];
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "component_name";
  *(v15 + 1) = 14;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "link_identifier";
  *(v17 + 1) = 15;
  v17[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t _ProtoSimpleItem_Visual.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    OUTLINED_FUNCTION_103();
    result = sub_26A424834();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_5_6();
        sub_26A270EEC();
        break;
      case 2:
        OUTLINED_FUNCTION_5_6();
        sub_26A270F8C();
        break;
      case 3:
        OUTLINED_FUNCTION_5_6();
        sub_26A271040();
        break;
      case 4:
      case 5:
        OUTLINED_FUNCTION_12_7();
        sub_26A424924();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A270EEC()
{
  type metadata accessor for _ProtoVisualProperty();
  sub_26A275BB8(qword_2815796B8, type metadata accessor for _ProtoVisualProperty);
  return sub_26A424934();
}

uint64_t sub_26A270F8C()
{
  v0 = *(type metadata accessor for _ProtoSimpleItem_Visual(0) + 32);
  type metadata accessor for _ProtoActionProperty();
  sub_26A275BB8(&qword_28036C928, type metadata accessor for _ProtoActionProperty);
  return sub_26A424944();
}

uint64_t sub_26A271040()
{
  v0 = *(type metadata accessor for _ProtoSimpleItem_Visual(0) + 36);
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A275BB8(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  return sub_26A424944();
}

uint64_t _ProtoSimpleItem_Visual.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for _ProtoVisualProperty(), sub_26A275BB8(qword_2815796B8, type metadata accessor for _ProtoVisualProperty), result = sub_26A424A74(), !v1))
  {
    OUTLINED_FUNCTION_124();
    OUTLINED_FUNCTION_87();
    result = sub_26A271248(v3, v4, v5, v6);
    if (!v1)
    {
      OUTLINED_FUNCTION_124();
      OUTLINED_FUNCTION_87();
      sub_26A271428(v7, v8, v9, v10);
      v11 = v0[1];
      v12 = v0[2];
      OUTLINED_FUNCTION_84_0();
      if (v13)
      {
        OUTLINED_FUNCTION_42_7();
      }

      v14 = v0[3];
      v15 = v0[4];
      OUTLINED_FUNCTION_84_0();
      if (v16)
      {
        OUTLINED_FUNCTION_42_7();
      }

      v17 = v0 + *(type metadata accessor for _ProtoSimpleItem_Visual(0) + 28);
      OUTLINED_FUNCTION_12_7();
      return sub_26A424774();
    }
  }

  return result;
}

uint64_t sub_26A271248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for _ProtoActionProperty();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for _ProtoSimpleItem_Visual(0) + 32);
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &off_28036C7C0, &off_26A427400);
  }

  sub_26A2597D8();
  sub_26A275BB8(&qword_28036C928, type metadata accessor for _ProtoActionProperty);
  sub_26A424A84();
  return sub_26A26960C();
}

uint64_t sub_26A271428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for _ProtoTextProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for _ProtoSimpleItem_Visual(0) + 36);
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A2597D8();
  sub_26A275BB8(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A26960C();
}

void static _ProtoSimpleItem_Visual.== infix(_:_:)()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v4 = v3;
  v73 = type metadata accessor for _ProtoTextProperty(0);
  v5 = OUTLINED_FUNCTION_12(v73);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_56();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7D0, &qword_26A426DE0);
  OUTLINED_FUNCTION_12(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_42();
  v74 = v18;
  OUTLINED_FUNCTION_45();
  v19 = type metadata accessor for _ProtoActionProperty();
  v20 = OUTLINED_FUNCTION_12(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = (v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v28);
  v30 = (v70 - v29);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7C8, &qword_26A425C00);
  OUTLINED_FUNCTION_12(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v34);
  v36 = v70 - v35;
  v37 = *v4;
  v38 = *v2;
  sub_26A0D9860();
  if ((v39 & 1) == 0)
  {
    goto LABEL_27;
  }

  v70[0] = v9;
  v70[1] = v0;
  v40 = type metadata accessor for _ProtoSimpleItem_Visual(0);
  v41 = *(v40 + 32);
  v42 = *(v31 + 48);
  v71 = v40;
  v72 = v4;
  sub_26A10FD9C();
  v43 = v2;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_9(v36);
  if (v50)
  {
    OUTLINED_FUNCTION_9(&v36[v42]);
    if (v50)
    {
      sub_26A0E48F0(v36, &off_28036C7C0, &off_26A427400);
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  sub_26A10FD9C();
  OUTLINED_FUNCTION_9(&v36[v42]);
  if (v50)
  {
    sub_26A26960C();
LABEL_15:
    v51 = &qword_28036C7C8;
    v52 = &qword_26A425C00;
LABEL_25:
    v60 = v36;
LABEL_26:
    sub_26A0E48F0(v60, v51, v52);
    goto LABEL_27;
  }

  sub_26A2597D8();
  v53 = *v30;
  v54 = *v24;
  sub_26A0E36D8();
  if ((v55 & 1) == 0 || (v30[1] == v24[1] ? (v56 = v30[2] == v24[2]) : (v56 = 0), !v56 && (sub_26A425354() & 1) == 0))
  {
    sub_26A26960C();
    sub_26A26960C();
    v51 = &off_28036C7C0;
    v52 = &off_26A427400;
    goto LABEL_25;
  }

  v57 = *(v19 + 24);
  sub_26A424794();
  OUTLINED_FUNCTION_14_11();
  sub_26A275BB8(v58, v59);
  LOBYTE(v57) = sub_26A424B64();
  sub_26A26960C();
  sub_26A26960C();
  sub_26A0E48F0(v36, &off_28036C7C0, &off_26A427400);
  if ((v57 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_7:
  v45 = v71;
  v44 = v72;
  v46 = *(v71 + 36);
  v47 = *(v14 + 48);
  v48 = v74;
  sub_26A10FD9C();
  sub_26A10FD9C();
  v49 = v73;
  OUTLINED_FUNCTION_37(v48, 1, v73);
  if (!v50)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v48 + v47, 1, v49);
    if (!v61)
    {
      sub_26A2597D8();
      v62 = OUTLINED_FUNCTION_125();
      v64 = static _ProtoTextProperty.== infix(_:_:)(v62, v63);
      sub_26A26960C();
      sub_26A26960C();
      sub_26A0E48F0(v48, &qword_28036C7B8, &unk_26A425BF0);
      if ((v64 & 1) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_33;
    }

    sub_26A26960C();
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_37(v48 + v47, 1, v49);
  if (!v50)
  {
LABEL_31:
    v51 = &qword_28036C7D0;
    v52 = &qword_26A426DE0;
    v60 = v48;
    goto LABEL_26;
  }

  sub_26A0E48F0(v48, &qword_28036C7B8, &unk_26A425BF0);
LABEL_33:
  v65 = v44[1] == v43[1] && v44[2] == v43[2];
  if (v65 || (sub_26A425354() & 1) != 0)
  {
    v66 = v44[3] == v43[3] && v44[4] == v43[4];
    if (v66 || (sub_26A425354() & 1) != 0)
    {
      v67 = *(v45 + 28);
      sub_26A424794();
      OUTLINED_FUNCTION_14_11();
      sub_26A275BB8(v68, v69);
      sub_26A424B64();
    }
  }

LABEL_27:
  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A271C9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A275BB8(&qword_280370F78, type metadata accessor for _ProtoSimpleItem_Visual);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A271D1C(uint64_t a1)
{
  v2 = sub_26A275BB8(&qword_28036F7F0, type metadata accessor for _ProtoSimpleItem_Visual);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A271D8C()
{
  sub_26A275BB8(&qword_28036F7F0, type metadata accessor for _ProtoSimpleItem_Visual);

  return sub_26A4249B4();
}

uint64_t sub_26A271E24()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280370C60);
  __swift_project_value_buffer(v0, qword_280370C60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_26A429A40;
  v4 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v4 = "player";
  *(v4 + 8) = 6;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_26A424A94();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v23 + v3 + v2 + v1[14];
  *(v23 + v3 + v2) = 2;
  *v8 = "text_1";
  *(v8 + 8) = 6;
  *(v8 + 16) = 2;
  v9 = *MEMORY[0x277D21888];
  v7();
  v10 = (v23 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "text_2";
  *(v11 + 1) = 6;
  v11[16] = 2;
  v7();
  v12 = (v23 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "text_3";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v7();
  v14 = (v23 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "action";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v7();
  v16 = (v23 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "component_name";
  *(v17 + 1) = 14;
  v17[16] = 2;
  v7();
  v18 = (v23 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "link_identifier";
  *(v19 + 1) = 15;
  v19[16] = 2;
  v7();
  v20 = (v23 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "text_4";
  *(v21 + 1) = 6;
  v21[16] = 2;
  v7();
  return sub_26A424AA4();
}

uint64_t sub_26A2721B4()
{
  *(v0 + 16) = MEMORY[0x277D84F90];
  v1 = OBJC_IVAR____TtCV10SnippetKit23_ProtoSimpleItem_PlayerP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text1;
  v2 = type metadata accessor for _ProtoTextProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit23_ProtoSimpleItem_PlayerP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text2, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10SnippetKit23_ProtoSimpleItem_PlayerP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text3;
  v4 = type metadata accessor for _ProtoMultilineTextProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV10SnippetKit23_ProtoSimpleItem_PlayerP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__action;
  v6 = type metadata accessor for _ProtoActionProperty();
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  v7 = (v0 + OBJC_IVAR____TtCV10SnippetKit23_ProtoSimpleItem_PlayerP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__componentName);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = (v0 + OBJC_IVAR____TtCV10SnippetKit23_ProtoSimpleItem_PlayerP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__linkIdentifier);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit23_ProtoSimpleItem_PlayerP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text4, 1, 1, v2);
  return v0;
}

void sub_26A2722B4()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_42();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
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
  OUTLINED_FUNCTION_131_3();
  *(v0 + 16) = MEMORY[0x277D84F90];
  v15 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v15);
  v19 = OUTLINED_FUNCTION_44_0(OBJC_IVAR____TtCV10SnippetKit23_ProtoSimpleItem_PlayerP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text2);
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v15);
  type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  v30 = (v0 + OBJC_IVAR____TtCV10SnippetKit23_ProtoSimpleItem_PlayerP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__componentName);
  *v30 = 0;
  v30[1] = 0xE000000000000000;
  v31 = (v0 + OBJC_IVAR____TtCV10SnippetKit23_ProtoSimpleItem_PlayerP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__linkIdentifier);
  *v31 = 0;
  v31[1] = 0xE000000000000000;
  v32 = OUTLINED_FUNCTION_44_0(OBJC_IVAR____TtCV10SnippetKit23_ProtoSimpleItem_PlayerP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text4);
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v15);
  OUTLINED_FUNCTION_125_1();
  v35 = *(v2 + 16);
  OUTLINED_FUNCTION_26_10();
  *(v0 + 16) = v35;
  OUTLINED_FUNCTION_124_1();
  OUTLINED_FUNCTION_98_3();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();

  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_123_1();
  OUTLINED_FUNCTION_98_3();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_127_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_135_3();
  swift_endAccess();
  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_135_3();
  swift_endAccess();
  v36 = (v2 + OBJC_IVAR____TtCV10SnippetKit23_ProtoSimpleItem_PlayerP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__componentName);
  OUTLINED_FUNCTION_122_1();
  v38 = *v36;
  v37 = v36[1];
  OUTLINED_FUNCTION_26_10();
  v39 = v30[1];
  *v30 = v38;
  v30[1] = v37;

  v40 = (v2 + OBJC_IVAR____TtCV10SnippetKit23_ProtoSimpleItem_PlayerP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__linkIdentifier);
  OUTLINED_FUNCTION_122_1();
  v42 = *v40;
  v41 = v40[1];
  OUTLINED_FUNCTION_26_10();
  v43 = v31[1];
  *v31 = v42;
  v31[1] = v41;

  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_98_3();
  sub_26A10FD9C();

  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_87();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_144_1();
  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A272738()
{
  v1 = *(v0 + 16);

  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit23_ProtoSimpleItem_PlayerP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text1, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit23_ProtoSimpleItem_PlayerP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text2, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit23_ProtoSimpleItem_PlayerP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text3, &qword_28036CAE0, &unk_26A4273F0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit23_ProtoSimpleItem_PlayerP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__action, &off_28036C7C0, &off_26A427400);
  v2 = *(v0 + OBJC_IVAR____TtCV10SnippetKit23_ProtoSimpleItem_PlayerP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__componentName + 8);

  v3 = *(v0 + OBJC_IVAR____TtCV10SnippetKit23_ProtoSimpleItem_PlayerP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__linkIdentifier + 8);

  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit23_ProtoSimpleItem_PlayerP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text4, &qword_28036C7B8, &unk_26A425BF0);
  return v0;
}

uint64_t sub_26A272898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        sub_26A272A00();
        break;
      case 2:
        sub_26A272ACC();
        break;
      case 3:
        sub_26A272BA8();
        break;
      case 4:
        sub_26A272C84();
        break;
      case 5:
        sub_26A272D60();
        break;
      case 6:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10SnippetKit23_ProtoSimpleItem_PlayerP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__componentName;
        goto LABEL_12;
      case 7:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10SnippetKit23_ProtoSimpleItem_PlayerP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__linkIdentifier;
LABEL_12:
        sub_26A2768B0(v11, v12, v13, v14, v15);
        break;
      case 8:
        sub_26A272E3C();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A272A00()
{
  swift_beginAccess();
  type metadata accessor for _ProtoPlayer(0);
  sub_26A275BB8(&qword_28036D1F0, type metadata accessor for _ProtoPlayer);
  sub_26A424934();
  return swift_endAccess();
}

uint64_t sub_26A272ACC()
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A275BB8(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A272BA8()
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A275BB8(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A272C84()
{
  swift_beginAccess();
  type metadata accessor for _ProtoMultilineTextProperty(0);
  sub_26A275BB8(&qword_28036D450, type metadata accessor for _ProtoMultilineTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A272D60()
{
  swift_beginAccess();
  type metadata accessor for _ProtoActionProperty();
  sub_26A275BB8(&qword_28036C928, type metadata accessor for _ProtoActionProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A272E3C()
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A275BB8(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A272F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (!*(*(a1 + 16) + 16) || (type metadata accessor for _ProtoPlayer(0), sub_26A275BB8(&qword_28036D1F0, type metadata accessor for _ProtoPlayer), , sub_26A424A74(), result = , !v4))
  {
    result = sub_26A2731AC(a1, a2, a3, a4);
    if (!v4)
    {
      sub_26A2733A0(a1, a2, a3, a4);
      sub_26A273594(a1, a2, a3, a4);
      sub_26A273788(a1, a2, a3, a4);
      v10 = (a1 + OBJC_IVAR____TtCV10SnippetKit23_ProtoSimpleItem_PlayerP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__componentName);
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

      v14 = (a1 + OBJC_IVAR____TtCV10SnippetKit23_ProtoSimpleItem_PlayerP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__linkIdentifier);
      swift_beginAccess();
      v15 = *v14;
      v16 = v14[1];
      v17 = HIBYTE(v16) & 0xF;
      if ((v16 & 0x2000000000000000) == 0)
      {
        v17 = v15 & 0xFFFFFFFFFFFFLL;
      }

      if (v17)
      {

        sub_26A424A64();
      }

      return sub_26A27397C(a1, a2, a3, a4);
    }
  }

  return result;
}

uint64_t sub_26A2731AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_26A2597D8();
  sub_26A275BB8(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A26960C();
}

uint64_t sub_26A2733A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_26A2597D8();
  sub_26A275BB8(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A26960C();
}

uint64_t sub_26A273594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for _ProtoMultilineTextProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &qword_28036CAE0, &unk_26A4273F0);
  }

  sub_26A2597D8();
  sub_26A275BB8(&qword_28036D450, type metadata accessor for _ProtoMultilineTextProperty);
  sub_26A424A84();
  return sub_26A26960C();
}

uint64_t sub_26A273788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_26A2597D8();
  sub_26A275BB8(&qword_28036C928, type metadata accessor for _ProtoActionProperty);
  sub_26A424A84();
  return sub_26A26960C();
}

uint64_t sub_26A27397C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_26A2597D8();
  sub_26A275BB8(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A26960C();
}

BOOL sub_26A273B9C(uint64_t a1, uint64_t a2)
{
  v112 = type metadata accessor for _ProtoActionProperty();
  v4 = *(*(v112 - 8) + 64);
  MEMORY[0x28223BE20](v112);
  v108 = &v104[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7C8, &qword_26A425C00);
  v6 = *(*(v111 - 8) + 64);
  MEMORY[0x28223BE20](v111);
  v113 = &v104[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v109 = &v104[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v115 = &v104[-v12];
  v117 = type metadata accessor for _ProtoMultilineTextProperty(0);
  v13 = *(*(v117 - 8) + 64);
  MEMORY[0x28223BE20](v117);
  v110 = &v104[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036F088, &unk_26A42C570);
  v15 = *(*(v116 - 8) + 64);
  MEMORY[0x28223BE20](v116);
  v118 = &v104[-v16];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v114 = &v104[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v20);
  v121 = &v104[-v21];
  v22 = type metadata accessor for _ProtoTextProperty(0);
  v23 = *(*(v22 - 1) + 64);
  MEMORY[0x28223BE20](v22);
  v122 = &v104[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7D0, &qword_26A426DE0);
  v25 = *(*(v127 - 8) + 64);
  MEMORY[0x28223BE20](v127);
  v27 = &v104[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v28);
  v124 = &v104[-v29];
  MEMORY[0x28223BE20](v30);
  v32 = &v104[-v31];
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v107 = &v104[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v36);
  v119 = &v104[-v37];
  MEMORY[0x28223BE20](v38);
  v120 = &v104[-v39];
  MEMORY[0x28223BE20](v40);
  v123 = &v104[-v41];
  MEMORY[0x28223BE20](v42);
  v125 = &v104[-v43];
  MEMORY[0x28223BE20](v44);
  v46 = &v104[-v45];
  swift_beginAccess();
  v47 = *(a1 + 16);
  swift_beginAccess();
  v48 = *(a2 + 16);

  sub_26A0E3F04();
  v50 = v49;

  if ((v50 & 1) == 0)
  {
    goto LABEL_17;
  }

  v106 = v27;
  swift_beginAccess();
  v126 = a1;
  sub_26A10FD9C();
  swift_beginAccess();
  v51 = *(v127 + 48);
  sub_26A10FD9C();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v32, 1, v22) == 1)
  {
    sub_26A0E48F0(v46, &qword_28036C7B8, &unk_26A425BF0);
    if (__swift_getEnumTagSinglePayload(&v32[v51], 1, v22) == 1)
    {
      sub_26A0E48F0(v32, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_11;
    }

LABEL_7:
    v53 = &qword_28036C7D0;
    v54 = &qword_26A426DE0;
    v55 = v32;
LABEL_8:
    sub_26A0E48F0(v55, v53, v54);
    goto LABEL_17;
  }

  v52 = v125;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(&v32[v51], 1, v22) == 1)
  {
    sub_26A0E48F0(v46, &qword_28036C7B8, &unk_26A425BF0);
    sub_26A26960C();
    goto LABEL_7;
  }

  v56 = v122;
  sub_26A2597D8();
  v105 = static _ProtoTextProperty.== infix(_:_:)(v52, v56);
  sub_26A26960C();
  sub_26A0E48F0(v46, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A26960C();
  sub_26A0E48F0(v32, &qword_28036C7B8, &unk_26A425BF0);
  if ((v105 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_11:
  swift_beginAccess();
  v57 = v123;
  sub_26A10FD9C();
  swift_beginAccess();
  v58 = v127;
  v59 = *(v127 + 48);
  v60 = v124;
  sub_26A10FD9C();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v60, 1, v22) == 1)
  {
    sub_26A0E48F0(v57, &qword_28036C7B8, &unk_26A425BF0);
    if (__swift_getEnumTagSinglePayload(v60 + v59, 1, v22) == 1)
    {
      v125 = v22;
      sub_26A0E48F0(v60, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  v61 = v120;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v60 + v59, 1, v22) == 1)
  {
    sub_26A0E48F0(v57, &qword_28036C7B8, &unk_26A425BF0);
    sub_26A26960C();
LABEL_16:
    sub_26A0E48F0(v60, &qword_28036C7D0, &qword_26A426DE0);
LABEL_17:

    return 0;
  }

  v125 = v22;
  v63 = v57;
  v64 = v122;
  sub_26A2597D8();
  v65 = static _ProtoTextProperty.== infix(_:_:)(v61, v64);
  sub_26A26960C();
  sub_26A0E48F0(v63, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A26960C();
  sub_26A0E48F0(v60, &qword_28036C7B8, &unk_26A425BF0);
  if ((v65 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_21:
  swift_beginAccess();
  v66 = v121;
  sub_26A10FD9C();
  swift_beginAccess();
  v67 = *(v116 + 48);
  v68 = v118;
  sub_26A10FD9C();
  sub_26A10FD9C();
  v69 = v117;
  if (__swift_getEnumTagSinglePayload(v68, 1, v117) == 1)
  {
    sub_26A0E48F0(v66, &qword_28036CAE0, &unk_26A4273F0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v68 + v67, 1, v69);
    v71 = v119;
    if (EnumTagSinglePayload == 1)
    {
      sub_26A0E48F0(v68, &qword_28036CAE0, &unk_26A4273F0);
      goto LABEL_28;
    }

LABEL_26:
    v53 = &qword_28036F088;
    v54 = &unk_26A42C570;
LABEL_47:
    v55 = v68;
    goto LABEL_8;
  }

  v72 = v114;
  sub_26A10FD9C();
  v73 = __swift_getEnumTagSinglePayload(v68 + v67, 1, v69);
  v71 = v119;
  if (v73 == 1)
  {
    sub_26A0E48F0(v121, &qword_28036CAE0, &unk_26A4273F0);
    sub_26A26960C();
    goto LABEL_26;
  }

  v74 = v110;
  sub_26A2597D8();
  v75 = static _ProtoMultilineTextProperty.== infix(_:_:)(v72, v74);
  sub_26A26960C();
  sub_26A0E48F0(v121, &qword_28036CAE0, &unk_26A4273F0);
  sub_26A26960C();
  sub_26A0E48F0(v68, &qword_28036CAE0, &unk_26A4273F0);
  if ((v75 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_28:
  swift_beginAccess();
  v76 = v115;
  sub_26A10FD9C();
  swift_beginAccess();
  v77 = *(v111 + 48);
  v68 = v113;
  sub_26A10FD9C();
  sub_26A10FD9C();
  v78 = v112;
  if (__swift_getEnumTagSinglePayload(v68, 1, v112) == 1)
  {
    sub_26A0E48F0(v76, &off_28036C7C0, &off_26A427400);
    if (__swift_getEnumTagSinglePayload(v68 + v77, 1, v78) == 1)
    {
      sub_26A0E48F0(v68, &off_28036C7C0, &off_26A427400);
      goto LABEL_31;
    }

    goto LABEL_46;
  }

  v93 = v109;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v68 + v77, 1, v78) == 1)
  {
    sub_26A0E48F0(v115, &off_28036C7C0, &off_26A427400);
    sub_26A26960C();
LABEL_46:
    v53 = &qword_28036C7C8;
    v54 = &qword_26A425C00;
    goto LABEL_47;
  }

  v94 = v108;
  sub_26A2597D8();
  v95 = *v93;
  v96 = *v94;
  sub_26A0E36D8();
  if ((v97 & 1) == 0 || (v93[1] == v94[1] ? (v98 = v93[2] == v94[2]) : (v98 = 0), !v98 && (sub_26A425354() & 1) == 0))
  {
    sub_26A26960C();
    sub_26A0E48F0(v115, &off_28036C7C0, &off_26A427400);
    sub_26A26960C();
    v55 = v68;
    v53 = &off_28036C7C0;
    v54 = &off_26A427400;
    goto LABEL_8;
  }

  v99 = *(v78 + 24);
  sub_26A424794();
  sub_26A275BB8(qword_2815792E0, MEMORY[0x277D216C8]);
  v100 = sub_26A424B64();
  sub_26A26960C();
  sub_26A0E48F0(v115, &off_28036C7C0, &off_26A427400);
  sub_26A26960C();
  sub_26A0E48F0(v68, &off_28036C7C0, &off_26A427400);
  if ((v100 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_31:
  v79 = (v126 + OBJC_IVAR____TtCV10SnippetKit23_ProtoSimpleItem_PlayerP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__componentName);
  swift_beginAccess();
  v80 = *v79;
  v81 = v79[1];
  v82 = (a2 + OBJC_IVAR____TtCV10SnippetKit23_ProtoSimpleItem_PlayerP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__componentName);
  swift_beginAccess();
  v83 = v80 == *v82 && v81 == v82[1];
  if (!v83 && (sub_26A425354() & 1) == 0)
  {
    goto LABEL_17;
  }

  v84 = (v126 + OBJC_IVAR____TtCV10SnippetKit23_ProtoSimpleItem_PlayerP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__linkIdentifier);
  swift_beginAccess();
  v85 = *v84;
  v86 = v84[1];
  v87 = (a2 + OBJC_IVAR____TtCV10SnippetKit23_ProtoSimpleItem_PlayerP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__linkIdentifier);
  swift_beginAccess();
  v88 = v85 == *v87 && v86 == v87[1];
  if (!v88 && (sub_26A425354() & 1) == 0)
  {
    goto LABEL_17;
  }

  swift_beginAccess();
  sub_26A10FD9C();
  swift_beginAccess();
  v89 = *(v58 + 48);
  v90 = v71;
  v91 = v106;
  sub_26A10FD9C();
  sub_26A10FD9C();
  v92 = v125;
  if (__swift_getEnumTagSinglePayload(v91, 1, v125) == 1)
  {

    sub_26A0E48F0(v90, &qword_28036C7B8, &unk_26A425BF0);
    if (__swift_getEnumTagSinglePayload(v91 + v89, 1, v92) == 1)
    {
      sub_26A0E48F0(v91, &qword_28036C7B8, &unk_26A425BF0);
      return 1;
    }

    goto LABEL_59;
  }

  v101 = v107;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v91 + v89, 1, v92) == 1)
  {

    sub_26A0E48F0(v119, &qword_28036C7B8, &unk_26A425BF0);
    sub_26A26960C();
LABEL_59:
    sub_26A0E48F0(v91, &qword_28036C7D0, &qword_26A426DE0);
    return 0;
  }

  v102 = v122;
  sub_26A2597D8();
  v103 = static _ProtoTextProperty.== infix(_:_:)(v101, v102);

  sub_26A26960C();
  sub_26A0E48F0(v119, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A26960C();
  sub_26A0E48F0(v91, &qword_28036C7B8, &unk_26A425BF0);
  return (v103 & 1) != 0;
}

uint64_t sub_26A274DB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A275BB8(&qword_280370F70, type metadata accessor for _ProtoSimpleItem_Player);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A274E34(uint64_t a1)
{
  v2 = sub_26A275BB8(&qword_28036F818, type metadata accessor for _ProtoSimpleItem_Player);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A274EA4()
{
  sub_26A275BB8(&qword_28036F818, type metadata accessor for _ProtoSimpleItem_Player);

  return sub_26A4249B4();
}

uint64_t sub_26A274F3C()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280370C80);
  __swift_project_value_buffer(v0, qword_280370C80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_26A42B0C0;
  v4 = v31 + v3 + v1[14];
  *(v31 + v3) = 1;
  *v4 = "text_1";
  *(v4 + 8) = 6;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21888];
  v6 = sub_26A424A94();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v31 + v3 + v2 + v1[14];
  *(v31 + v3 + v2) = 2;
  *v8 = "text_2";
  *(v8 + 8) = 6;
  *(v8 + 16) = 2;
  v7();
  v9 = (v31 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "text_3";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v7();
  v11 = (v31 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "text_4";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v7();
  v13 = (v31 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "text_5";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v7();
  v15 = (v31 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "text_6";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v7();
  v17 = (v31 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "text_7";
  *(v18 + 1) = 6;
  v18[16] = 2;
  v7();
  v19 = (v31 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "text_8";
  *(v20 + 1) = 6;
  v20[16] = 2;
  v7();
  v21 = (v31 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "thumbnail";
  *(v22 + 1) = 9;
  v22[16] = 2;
  v23 = *MEMORY[0x277D21870];
  v7();
  v24 = (v31 + v3 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "action";
  *(v25 + 1) = 6;
  v25[16] = 2;
  v7();
  v26 = (v31 + v3 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "component_name";
  *(v27 + 1) = 14;
  v27[16] = 2;
  v7();
  v28 = (v31 + v3 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "link_identifier";
  *(v29 + 1) = 15;
  v29[16] = 2;
  v7();
  return sub_26A424AA4();
}

uint64_t sub_26A2753D4()
{
  v1 = OBJC_IVAR____TtCV10SnippetKit33_ProtoSimpleItem_RichSearchResultP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text1;
  v2 = type metadata accessor for _ProtoTextProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit33_ProtoSimpleItem_RichSearchResultP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text2, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10SnippetKit33_ProtoSimpleItem_RichSearchResultP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text3;
  v4 = type metadata accessor for _ProtoMultilineTextProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit33_ProtoSimpleItem_RichSearchResultP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text4, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit33_ProtoSimpleItem_RichSearchResultP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text5, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit33_ProtoSimpleItem_RichSearchResultP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text6, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit33_ProtoSimpleItem_RichSearchResultP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text7, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit33_ProtoSimpleItem_RichSearchResultP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text8, 1, 1, v2);
  v5 = OBJC_IVAR____TtCV10SnippetKit33_ProtoSimpleItem_RichSearchResultP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__thumbnail;
  v6 = type metadata accessor for _ProtoVisualProperty();
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCV10SnippetKit33_ProtoSimpleItem_RichSearchResultP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__action;
  v8 = type metadata accessor for _ProtoActionProperty();
  __swift_storeEnumTagSinglePayload(v0 + v7, 1, 1, v8);
  v9 = (v0 + OBJC_IVAR____TtCV10SnippetKit33_ProtoSimpleItem_RichSearchResultP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__componentName);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = (v0 + OBJC_IVAR____TtCV10SnippetKit33_ProtoSimpleItem_RichSearchResultP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__linkIdentifier);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  return v0;
}

void sub_26A275560()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_42();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_42();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_131_3();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_56();
  v19 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v19);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v19);
  v26 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v26);
  v30 = OUTLINED_FUNCTION_44_0(OBJC_IVAR____TtCV10SnippetKit33_ProtoSimpleItem_RichSearchResultP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text4);
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v19);
  v33 = OUTLINED_FUNCTION_44_0(OBJC_IVAR____TtCV10SnippetKit33_ProtoSimpleItem_RichSearchResultP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text5);
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v26);
  v36 = OUTLINED_FUNCTION_44_0(OBJC_IVAR____TtCV10SnippetKit33_ProtoSimpleItem_RichSearchResultP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text6);
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v19);
  v39 = OUTLINED_FUNCTION_44_0(OBJC_IVAR____TtCV10SnippetKit33_ProtoSimpleItem_RichSearchResultP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text7);
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v19);
  v42 = OUTLINED_FUNCTION_44_0(OBJC_IVAR____TtCV10SnippetKit33_ProtoSimpleItem_RichSearchResultP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text8);
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v19);
  type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v48);
  type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v52);
  v53 = (v0 + OBJC_IVAR____TtCV10SnippetKit33_ProtoSimpleItem_RichSearchResultP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__componentName);
  v63 = (v0 + OBJC_IVAR____TtCV10SnippetKit33_ProtoSimpleItem_RichSearchResultP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__componentName);
  *v53 = 0;
  v53[1] = 0xE000000000000000;
  v54 = (v0 + OBJC_IVAR____TtCV10SnippetKit33_ProtoSimpleItem_RichSearchResultP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__linkIdentifier);
  v64 = (v0 + OBJC_IVAR____TtCV10SnippetKit33_ProtoSimpleItem_RichSearchResultP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__linkIdentifier);
  *v54 = 0;
  v54[1] = 0xE000000000000000;
  OUTLINED_FUNCTION_125_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_137_2();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_128_1();
  OUTLINED_FUNCTION_137_2();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_124_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_166_3();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_123_1();
  OUTLINED_FUNCTION_111_3();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_112_3();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_98_3();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_137_2();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_111_3();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_112_3();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_111_3();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_112_3();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_111_3();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_112_3();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_164_3();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_164_3();
  sub_26A10CF40();
  swift_endAccess();
  v55 = (v2 + OBJC_IVAR____TtCV10SnippetKit33_ProtoSimpleItem_RichSearchResultP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__componentName);
  OUTLINED_FUNCTION_122_1();
  v57 = *v55;
  v56 = v55[1];
  OUTLINED_FUNCTION_26_10();
  v58 = v63[1];
  *v63 = v57;
  v63[1] = v56;

  v59 = (v2 + OBJC_IVAR____TtCV10SnippetKit33_ProtoSimpleItem_RichSearchResultP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__linkIdentifier);
  OUTLINED_FUNCTION_122_1();
  v61 = *v59;
  v60 = v59[1];

  OUTLINED_FUNCTION_26_10();
  v62 = v64[1];
  *v64 = v61;
  v64[1] = v60;

  OUTLINED_FUNCTION_144_1();
  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A275BB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A275C00()
{
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit33_ProtoSimpleItem_RichSearchResultP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text1, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit33_ProtoSimpleItem_RichSearchResultP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text2, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit33_ProtoSimpleItem_RichSearchResultP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text3, &qword_28036CAE0, &unk_26A4273F0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit33_ProtoSimpleItem_RichSearchResultP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text4, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit33_ProtoSimpleItem_RichSearchResultP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text5, &qword_28036CAE0, &unk_26A4273F0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit33_ProtoSimpleItem_RichSearchResultP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text6, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit33_ProtoSimpleItem_RichSearchResultP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text7, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit33_ProtoSimpleItem_RichSearchResultP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__text8, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit33_ProtoSimpleItem_RichSearchResultP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__thumbnail, &qword_28036CAE8, &unk_26A426430);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit33_ProtoSimpleItem_RichSearchResultP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__action, &off_28036C7C0, &off_26A427400);
  v1 = *(v0 + OBJC_IVAR____TtCV10SnippetKit33_ProtoSimpleItem_RichSearchResultP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__componentName + 8);

  v2 = *(v0 + OBJC_IVAR____TtCV10SnippetKit33_ProtoSimpleItem_RichSearchResultP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__linkIdentifier + 8);

  return v0;
}

uint64_t sub_26A275D90(uint64_t (*a1)(void))
{
  v1 = *a1();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);

  return MEMORY[0x2821FE8D8]();
}

uint64_t sub_26A275E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        sub_26A276018();
        break;
      case 2:
        sub_26A2760F4();
        break;
      case 3:
        sub_26A2761D0();
        break;
      case 4:
        sub_26A2762AC();
        break;
      case 5:
        sub_26A276388();
        break;
      case 6:
        sub_26A276464();
        break;
      case 7:
        sub_26A276540();
        break;
      case 8:
        sub_26A27661C();
        break;
      case 9:
        sub_26A2766F8();
        break;
      case 10:
        sub_26A2767D4();
        break;
      case 11:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10SnippetKit33_ProtoSimpleItem_RichSearchResultP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__componentName;
        goto LABEL_15;
      case 12:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10SnippetKit33_ProtoSimpleItem_RichSearchResultP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__linkIdentifier;
LABEL_15:
        sub_26A2768B0(v11, v12, v13, v14, v15);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A276018()
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A275BB8(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2760F4()
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A275BB8(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2761D0()
{
  swift_beginAccess();
  type metadata accessor for _ProtoMultilineTextProperty(0);
  sub_26A275BB8(&qword_28036D450, type metadata accessor for _ProtoMultilineTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2762AC()
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A275BB8(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A276388()
{
  swift_beginAccess();
  type metadata accessor for _ProtoMultilineTextProperty(0);
  sub_26A275BB8(&qword_28036D450, type metadata accessor for _ProtoMultilineTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A276464()
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A275BB8(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A276540()
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A275BB8(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A27661C()
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A275BB8(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2766F8()
{
  swift_beginAccess();
  type metadata accessor for _ProtoVisualProperty();
  sub_26A275BB8(qword_2815796B8, type metadata accessor for _ProtoVisualProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2767D4()
{
  swift_beginAccess();
  type metadata accessor for _ProtoActionProperty();
  sub_26A275BB8(&qword_28036C928, type metadata accessor for _ProtoActionProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2768B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a5;
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_12_7();
  sub_26A424924();
  return swift_endAccess();
}

uint64_t sub_26A276960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_26A276B6C(a1, a2, a3, a4);
  if (!v4)
  {
    sub_26A276D60(a1, a2, a3, a4);
    sub_26A276F54(a1, a2, a3, a4);
    sub_26A277148(a1, a2, a3, a4);
    sub_26A27733C(a1, a2, a3, a4);
    sub_26A277530(a1, a2, a3, a4);
    sub_26A277724(a1, a2, a3, a4);
    sub_26A277918(a1, a2, a3, a4);
    sub_26A277B0C(a1, a2, a3, a4);
    sub_26A277D00(a1, a2, a3, a4);
    v10 = (a1 + OBJC_IVAR____TtCV10SnippetKit33_ProtoSimpleItem_RichSearchResultP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__componentName);
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

    v14 = (a1 + OBJC_IVAR____TtCV10SnippetKit33_ProtoSimpleItem_RichSearchResultP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__linkIdentifier);
    result = swift_beginAccess();
    v15 = *v14;
    v16 = v14[1];
    v17 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v17 = v15 & 0xFFFFFFFFFFFFLL;
    }

    if (v17)
    {

      sub_26A424A64();
    }
  }

  return result;
}

uint64_t sub_26A276B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_26A2597D8();
  sub_26A275BB8(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A26960C();
}

uint64_t sub_26A276D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_26A2597D8();
  sub_26A275BB8(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A26960C();
}

uint64_t sub_26A276F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for _ProtoMultilineTextProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &qword_28036CAE0, &unk_26A4273F0);
  }

  sub_26A2597D8();
  sub_26A275BB8(&qword_28036D450, type metadata accessor for _ProtoMultilineTextProperty);
  sub_26A424A84();
  return sub_26A26960C();
}

uint64_t sub_26A277148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_26A2597D8();
  sub_26A275BB8(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A26960C();
}

uint64_t sub_26A27733C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for _ProtoMultilineTextProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &qword_28036CAE0, &unk_26A4273F0);
  }

  sub_26A2597D8();
  sub_26A275BB8(&qword_28036D450, type metadata accessor for _ProtoMultilineTextProperty);
  sub_26A424A84();
  return sub_26A26960C();
}

uint64_t sub_26A277530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_26A2597D8();
  sub_26A275BB8(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A26960C();
}

uint64_t sub_26A277724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_26A2597D8();
  sub_26A275BB8(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A26960C();
}

uint64_t sub_26A277918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_26A2597D8();
  sub_26A275BB8(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A26960C();
}

uint64_t sub_26A277B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_26A2597D8();
  sub_26A275BB8(qword_2815796B8, type metadata accessor for _ProtoVisualProperty);
  sub_26A424A84();
  return sub_26A26960C();
}

uint64_t sub_26A277D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_26A2597D8();
  sub_26A275BB8(&qword_28036C928, type metadata accessor for _ProtoActionProperty);
  sub_26A424A84();
  return sub_26A26960C();
}

uint64_t sub_26A277F20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t))
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
  OUTLINED_FUNCTION_14_11();
  sub_26A275BB8(v12, v13);
  return sub_26A424B64() & 1;
}

uint64_t sub_26A278004(uint64_t a1, uint64_t a2)
{
  v206 = a2;
  v171 = type metadata accessor for _ProtoActionProperty();
  v3 = *(*(v171 - 8) + 64);
  MEMORY[0x28223BE20](v171);
  v167 = &v165[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7C8, &qword_26A425C00);
  v5 = *(*(v170 - 8) + 64);
  MEMORY[0x28223BE20](v170);
  v172 = &v165[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v169 = &v165[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v174 = &v165[-v11];
  v176 = type metadata accessor for _ProtoVisualProperty();
  v12 = *(*(v176 - 8) + 64);
  MEMORY[0x28223BE20](v176);
  v168 = &v165[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D190, &unk_26A427130);
  v14 = *(*(v175 - 8) + 64);
  MEMORY[0x28223BE20](v175);
  v177 = &v165[-v15];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v173 = &v165[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v19);
  v186 = &v165[-v20];
  v198 = type metadata accessor for _ProtoMultilineTextProperty(0);
  v21 = *(*(v198 - 8) + 64);
  MEMORY[0x28223BE20](v198);
  v191 = &v165[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036F088, &unk_26A42C570);
  v23 = *(*(v197 - 8) + 64);
  MEMORY[0x28223BE20](v197);
  v188 = &v165[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v25);
  v196 = &v165[-v26];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v187 = &v165[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v30);
  v190 = &v165[-v31];
  MEMORY[0x28223BE20](v32);
  v195 = &v165[-v33];
  MEMORY[0x28223BE20](v34);
  v200 = &v165[-v35];
  v207 = type metadata accessor for _ProtoTextProperty(0);
  v36 = *(*(v207 - 8) + 64);
  MEMORY[0x28223BE20](v207);
  v201 = &v165[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7D0, &qword_26A426DE0);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v179 = &v165[-((v40 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v41);
  v182 = &v165[-v42];
  MEMORY[0x28223BE20](v43);
  v185 = &v165[-v44];
  MEMORY[0x28223BE20](v45);
  v193 = &v165[-v46];
  MEMORY[0x28223BE20](v47);
  v203 = &v165[-v48];
  MEMORY[0x28223BE20](v49);
  v51 = &v165[-v50];
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v53 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52 - 8);
  v178 = &v165[-((v54 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v55);
  v181 = &v165[-v56];
  MEMORY[0x28223BE20](v57);
  v180 = &v165[-v58];
  MEMORY[0x28223BE20](v59);
  v184 = &v165[-v60];
  MEMORY[0x28223BE20](v61);
  v183 = &v165[-v62];
  MEMORY[0x28223BE20](v63);
  v194 = &v165[-v64];
  MEMORY[0x28223BE20](v65);
  v189 = &v165[-v66];
  MEMORY[0x28223BE20](v67);
  v192 = &v165[-v68];
  MEMORY[0x28223BE20](v69);
  v199 = &v165[-v70];
  MEMORY[0x28223BE20](v71);
  v202 = &v165[-v72];
  MEMORY[0x28223BE20](v73);
  v205 = &v165[-v74];
  MEMORY[0x28223BE20](v75);
  v77 = &v165[-v76];
  swift_beginAccess();
  sub_26A10FD9C();
  v78 = v206;
  swift_beginAccess();
  v204 = v38;
  v79 = *(v38 + 48);
  sub_26A10FD9C();
  v80 = v78;
  v81 = v207;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v51, 1, v81) == 1)
  {

    sub_26A0E48F0(v77, &qword_28036C7B8, &unk_26A425BF0);
    if (__swift_getEnumTagSinglePayload(&v51[v79], 1, v81) == 1)
    {
      sub_26A0E48F0(v51, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_8;
    }

LABEL_6:
    v83 = v51;
LABEL_14:
    sub_26A0E48F0(v83, &qword_28036C7D0, &qword_26A426DE0);
    goto LABEL_15;
  }

  v82 = v205;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(&v51[v79], 1, v81) == 1)
  {

    sub_26A0E48F0(v77, &qword_28036C7B8, &unk_26A425BF0);
    sub_26A26960C();
    goto LABEL_6;
  }

  v84 = v201;
  sub_26A2597D8();

  v166 = static _ProtoTextProperty.== infix(_:_:)(v82, v84);
  sub_26A26960C();
  sub_26A0E48F0(v77, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A26960C();
  sub_26A0E48F0(v51, &qword_28036C7B8, &unk_26A425BF0);
  if ((v166 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  swift_beginAccess();
  v85 = v202;
  sub_26A10FD9C();
  swift_beginAccess();
  v86 = v203;
  v87 = *(v204 + 48);
  sub_26A10FD9C();
  sub_26A10FD9C();
  v88 = v207;
  if (__swift_getEnumTagSinglePayload(v86, 1, v207) == 1)
  {
    sub_26A0E48F0(v85, &qword_28036C7B8, &unk_26A425BF0);
    if (__swift_getEnumTagSinglePayload(v86 + v87, 1, v88) == 1)
    {
      sub_26A0E48F0(v86, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  v89 = v199;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v86 + v87, 1, v88) == 1)
  {
    sub_26A0E48F0(v85, &qword_28036C7B8, &unk_26A425BF0);
    sub_26A26960C();
LABEL_13:
    v83 = v86;
    goto LABEL_14;
  }

  v91 = v201;
  sub_26A2597D8();
  v92 = static _ProtoTextProperty.== infix(_:_:)(v89, v91);
  sub_26A26960C();
  sub_26A0E48F0(v85, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A26960C();
  sub_26A0E48F0(v86, &qword_28036C7B8, &unk_26A425BF0);
  if ((v92 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_18:
  swift_beginAccess();
  v206 = a1;
  v93 = v200;
  sub_26A10FD9C();
  swift_beginAccess();
  v94 = v196;
  v95 = *(v197 + 48);
  sub_26A10FD9C();
  sub_26A10FD9C();
  v96 = v198;
  if (__swift_getEnumTagSinglePayload(v94, 1, v198) == 1)
  {
    sub_26A0E48F0(v93, &qword_28036CAE0, &unk_26A4273F0);
    if (__swift_getEnumTagSinglePayload(&v94[v95], 1, v96) != 1)
    {
      goto LABEL_24;
    }

    sub_26A0E48F0(v94, &qword_28036CAE0, &unk_26A4273F0);
    goto LABEL_26;
  }

  v97 = v195;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(&v94[v95], 1, v96) == 1)
  {
    sub_26A0E48F0(v200, &qword_28036CAE0, &unk_26A4273F0);
LABEL_23:
    sub_26A26960C();
    goto LABEL_24;
  }

  v100 = v191;
  sub_26A2597D8();
  v101 = static _ProtoMultilineTextProperty.== infix(_:_:)(v97, v100);
  sub_26A26960C();
  sub_26A0E48F0(v200, &qword_28036CAE0, &unk_26A4273F0);
  sub_26A26960C();
  sub_26A0E48F0(v94, &qword_28036CAE0, &unk_26A4273F0);
  if ((v101 & 1) == 0)
  {
LABEL_15:

    return 0;
  }

LABEL_26:
  swift_beginAccess();
  v102 = v192;
  sub_26A10FD9C();
  swift_beginAccess();
  v103 = *(v204 + 48);
  v94 = v193;
  sub_26A10FD9C();
  sub_26A10FD9C();
  v104 = v207;
  if (__swift_getEnumTagSinglePayload(v94, 1, v207) == 1)
  {
    sub_26A0E48F0(v102, &qword_28036C7B8, &unk_26A425BF0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v94[v103], 1, v104);
    v106 = v194;
    if (EnumTagSinglePayload != 1)
    {
LABEL_32:
      v98 = &qword_28036C7D0;
      v99 = &qword_26A426DE0;
      goto LABEL_33;
    }

    sub_26A0E48F0(v94, &qword_28036C7B8, &unk_26A425BF0);
  }

  else
  {
    v107 = v189;
    sub_26A10FD9C();
    v108 = __swift_getEnumTagSinglePayload(&v94[v103], 1, v104);
    v109 = v194;
    if (v108 == 1)
    {
      v110 = v102;
      goto LABEL_31;
    }

    v112 = v201;
    sub_26A2597D8();
    LODWORD(v205) = static _ProtoTextProperty.== infix(_:_:)(v107, v112);
    sub_26A26960C();
    sub_26A0E48F0(v102, &qword_28036C7B8, &unk_26A425BF0);
    v106 = v109;
    sub_26A26960C();
    sub_26A0E48F0(v94, &qword_28036C7B8, &unk_26A425BF0);
    if ((v205 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  swift_beginAccess();
  v113 = v190;
  sub_26A10FD9C();
  swift_beginAccess();
  v114 = *(v197 + 48);
  v94 = v188;
  sub_26A10FD9C();
  sub_26A10FD9C();
  v115 = v198;
  if (__swift_getEnumTagSinglePayload(v94, 1, v198) == 1)
  {
    sub_26A0E48F0(v113, &qword_28036CAE0, &unk_26A4273F0);
    if (__swift_getEnumTagSinglePayload(&v94[v114], 1, v115) == 1)
    {
      sub_26A0E48F0(v94, &qword_28036CAE0, &unk_26A4273F0);
      goto LABEL_43;
    }

LABEL_24:
    v98 = &qword_28036F088;
    v99 = &unk_26A42C570;
LABEL_33:
    v111 = v94;
LABEL_34:
    sub_26A0E48F0(v111, v98, v99);
    goto LABEL_15;
  }

  v116 = v187;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(&v94[v114], 1, v115) == 1)
  {
    sub_26A0E48F0(v190, &qword_28036CAE0, &unk_26A4273F0);
    goto LABEL_23;
  }

  v117 = v191;
  sub_26A2597D8();
  v118 = static _ProtoMultilineTextProperty.== infix(_:_:)(v116, v117);
  sub_26A26960C();
  sub_26A0E48F0(v190, &qword_28036CAE0, &unk_26A4273F0);
  v106 = v194;
  sub_26A26960C();
  sub_26A0E48F0(v94, &qword_28036CAE0, &unk_26A4273F0);
  if ((v118 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_43:
  swift_beginAccess();
  sub_26A10FD9C();
  swift_beginAccess();
  v119 = *(v204 + 48);
  v94 = v185;
  sub_26A10FD9C();
  sub_26A10FD9C();
  v120 = v207;
  if (__swift_getEnumTagSinglePayload(v94, 1, v207) == 1)
  {
    sub_26A0E48F0(v106, &qword_28036C7B8, &unk_26A425BF0);
    v121 = __swift_getEnumTagSinglePayload(&v94[v119], 1, v120);
    v122 = v186;
    if (v121 != 1)
    {
      goto LABEL_32;
    }

    sub_26A0E48F0(v94, &qword_28036C7B8, &unk_26A425BF0);
  }

  else
  {
    v123 = v183;
    sub_26A10FD9C();
    v124 = __swift_getEnumTagSinglePayload(&v94[v119], 1, v120);
    v122 = v186;
    if (v124 == 1)
    {
      v110 = v194;
      goto LABEL_31;
    }

    v125 = v201;
    sub_26A2597D8();
    v126 = static _ProtoTextProperty.== infix(_:_:)(v123, v125);
    sub_26A26960C();
    sub_26A0E48F0(v194, &qword_28036C7B8, &unk_26A425BF0);
    sub_26A26960C();
    sub_26A0E48F0(v94, &qword_28036C7B8, &unk_26A425BF0);
    if ((v126 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  swift_beginAccess();
  v127 = v184;
  sub_26A10FD9C();
  swift_beginAccess();
  v128 = *(v204 + 48);
  v94 = v182;
  sub_26A10FD9C();
  sub_26A10FD9C();
  v129 = v207;
  if (__swift_getEnumTagSinglePayload(v94, 1, v207) != 1)
  {
    v130 = v180;
    sub_26A10FD9C();
    if (__swift_getEnumTagSinglePayload(&v94[v128], 1, v129) != 1)
    {
      v131 = v201;
      sub_26A2597D8();
      v132 = static _ProtoTextProperty.== infix(_:_:)(v130, v131);
      sub_26A26960C();
      sub_26A0E48F0(v184, &qword_28036C7B8, &unk_26A425BF0);
      sub_26A26960C();
      sub_26A0E48F0(v94, &qword_28036C7B8, &unk_26A425BF0);
      if ((v132 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_55;
    }

    v110 = v184;
LABEL_31:
    sub_26A0E48F0(v110, &qword_28036C7B8, &unk_26A425BF0);
    sub_26A26960C();
    goto LABEL_32;
  }

  sub_26A0E48F0(v127, &qword_28036C7B8, &unk_26A425BF0);
  if (__swift_getEnumTagSinglePayload(&v94[v128], 1, v129) != 1)
  {
    goto LABEL_32;
  }

  sub_26A0E48F0(v94, &qword_28036C7B8, &unk_26A425BF0);
LABEL_55:
  swift_beginAccess();
  v133 = v181;
  sub_26A10FD9C();
  swift_beginAccess();
  v134 = *(v204 + 48);
  v94 = v179;
  sub_26A10FD9C();
  sub_26A10FD9C();
  v135 = v207;
  if (__swift_getEnumTagSinglePayload(v94, 1, v207) == 1)
  {
    sub_26A0E48F0(v133, &qword_28036C7B8, &unk_26A425BF0);
    if (__swift_getEnumTagSinglePayload(&v94[v134], 1, v135) == 1)
    {
      sub_26A0E48F0(v94, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_61;
    }

    goto LABEL_32;
  }

  v136 = v178;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(&v94[v134], 1, v135) == 1)
  {
    v110 = v181;
    goto LABEL_31;
  }

  v137 = v201;
  sub_26A2597D8();
  v138 = static _ProtoTextProperty.== infix(_:_:)(v136, v137);
  sub_26A26960C();
  sub_26A0E48F0(v181, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A26960C();
  sub_26A0E48F0(v94, &qword_28036C7B8, &unk_26A425BF0);
  if ((v138 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_61:
  swift_beginAccess();
  sub_26A10FD9C();
  swift_beginAccess();
  v139 = *(v175 + 48);
  v94 = v177;
  sub_26A10FD9C();
  sub_26A10FD9C();
  v140 = v176;
  if (__swift_getEnumTagSinglePayload(v94, 1, v176) == 1)
  {
    sub_26A0E48F0(v122, &qword_28036CAE8, &unk_26A426430);
    if (__swift_getEnumTagSinglePayload(&v94[v139], 1, v140) == 1)
    {
      sub_26A0E48F0(v94, &qword_28036CAE8, &unk_26A426430);
      goto LABEL_68;
    }

    goto LABEL_66;
  }

  v141 = v173;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(&v94[v139], 1, v140) == 1)
  {
    sub_26A0E48F0(v122, &qword_28036CAE8, &unk_26A426430);
    sub_26A26960C();
LABEL_66:
    v98 = &qword_28036D190;
    v99 = &unk_26A427130;
    goto LABEL_33;
  }

  v142 = v168;
  sub_26A2597D8();
  v143 = static _ProtoVisualProperty.== infix(_:_:)(v141, v142);
  sub_26A26960C();
  sub_26A0E48F0(v122, &qword_28036CAE8, &unk_26A426430);
  sub_26A26960C();
  sub_26A0E48F0(v94, &qword_28036CAE8, &unk_26A426430);
  if ((v143 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_68:
  swift_beginAccess();
  sub_26A10FD9C();
  swift_beginAccess();
  v144 = *(v170 + 48);
  v94 = v172;
  sub_26A10FD9C();
  sub_26A10FD9C();
  v145 = v171;
  if (__swift_getEnumTagSinglePayload(v94, 1, v171) == 1)
  {
    sub_26A0E48F0(v174, &off_28036C7C0, &off_26A427400);
    if (__swift_getEnumTagSinglePayload(&v94[v144], 1, v145) == 1)
    {
      sub_26A0E48F0(v94, &off_28036C7C0, &off_26A427400);
      goto LABEL_71;
    }

    goto LABEL_84;
  }

  v157 = v169;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(&v94[v144], 1, v145) == 1)
  {
    sub_26A0E48F0(v174, &off_28036C7C0, &off_26A427400);
    sub_26A26960C();
LABEL_84:
    v98 = &qword_28036C7C8;
    v99 = &qword_26A425C00;
    goto LABEL_33;
  }

  v158 = v167;
  sub_26A2597D8();
  v159 = *v157;
  v160 = *v158;
  sub_26A0E36D8();
  if ((v161 & 1) == 0 || (v169[1] == v167[1] ? (v162 = v169[2] == v167[2]) : (v162 = 0), !v162 && (sub_26A425354() & 1) == 0))
  {
    sub_26A26960C();
    sub_26A0E48F0(v174, &off_28036C7C0, &off_26A427400);
    sub_26A26960C();
    v111 = v172;
    v98 = &off_28036C7C0;
    v99 = &off_26A427400;
    goto LABEL_34;
  }

  v163 = *(v171 + 24);
  sub_26A424794();
  sub_26A275BB8(qword_2815792E0, MEMORY[0x277D216C8]);
  v164 = sub_26A424B64();
  sub_26A26960C();
  sub_26A0E48F0(v174, &off_28036C7C0, &off_26A427400);
  sub_26A26960C();
  sub_26A0E48F0(v172, &off_28036C7C0, &off_26A427400);
  if ((v164 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_71:
  v146 = (v206 + OBJC_IVAR____TtCV10SnippetKit33_ProtoSimpleItem_RichSearchResultP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__componentName);
  swift_beginAccess();
  v147 = *v146;
  v148 = v146[1];
  v149 = (v80 + OBJC_IVAR____TtCV10SnippetKit33_ProtoSimpleItem_RichSearchResultP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__componentName);
  swift_beginAccess();
  v150 = v147 == *v149 && v148 == v149[1];
  if (!v150 && (sub_26A425354() & 1) == 0)
  {
    goto LABEL_15;
  }

  v151 = (v206 + OBJC_IVAR____TtCV10SnippetKit33_ProtoSimpleItem_RichSearchResultP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__linkIdentifier);
  swift_beginAccess();
  v152 = *v151;
  v153 = v151[1];
  v154 = (v80 + OBJC_IVAR____TtCV10SnippetKit33_ProtoSimpleItem_RichSearchResultP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__linkIdentifier);
  swift_beginAccess();
  if (v152 == *v154 && v153 == v154[1])
  {

    return 1;
  }

  v156 = sub_26A425354();

  result = 0;
  if (v156)
  {
    return 1;
  }

  return result;
}

uint64_t sub_26A279DF4(void (*a1)(void))
{
  sub_26A425504();
  a1(0);
  v2 = OUTLINED_FUNCTION_125();
  sub_26A275BB8(v2, v3);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A27A4B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A275BB8(&qword_280370F68, type metadata accessor for _ProtoSimpleItem_RichSearchResult);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A27A5C4(uint64_t a1)
{
  v2 = sub_26A275BB8(&qword_28036F850, type metadata accessor for _ProtoSimpleItem_RichSearchResult);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A27A67C()
{
  sub_26A275BB8(&qword_28036F850, type metadata accessor for _ProtoSimpleItem_RichSearchResult);

  return sub_26A4249B4();
}

uint64_t sub_26A27A77C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
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

void sub_26A27A870()
{
  sub_26A27AE0C(319, &qword_280370EF0, type metadata accessor for _ProtoVisualProperty, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_26A424794();
    if (v1 <= 0x3F)
    {
      sub_26A27AE0C(319, qword_281579718, type metadata accessor for _ProtoActionProperty, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_26A27AE0C(319, &qword_28036C808, type metadata accessor for _ProtoTextProperty, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_26A27AA4C()
{
  sub_26A27AE0C(319, &qword_28036C808, type metadata accessor for _ProtoTextProperty, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    sub_26A27AE0C(319, &qword_28036EF48, type metadata accessor for _ProtoMultilineTextProperty, MEMORY[0x277D83D88]);
    if (v4 <= 0x3F)
    {
      v7 = *(v3 - 8) + 64;
      sub_26A27AE0C(319, qword_281579718, type metadata accessor for _ProtoActionProperty, MEMORY[0x277D83D88]);
      if (v6 <= 0x3F)
      {
        v8 = *(v5 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_26A27ABF8()
{
  sub_26A27AE0C(319, &qword_28036C808, type metadata accessor for _ProtoTextProperty, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    sub_26A27AE0C(319, &qword_28036EF48, type metadata accessor for _ProtoMultilineTextProperty, MEMORY[0x277D83D88]);
    if (v4 <= 0x3F)
    {
      v9 = *(v3 - 8) + 64;
      sub_26A27AE0C(319, &qword_28036D178, type metadata accessor for _ProtoVisualProperty, MEMORY[0x277D83D88]);
      if (v6 <= 0x3F)
      {
        v10 = *(v5 - 8) + 64;
        sub_26A27AE0C(319, qword_281579718, type metadata accessor for _ProtoActionProperty, MEMORY[0x277D83D88]);
        if (v8 <= 0x3F)
        {
          v11 = *(v7 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_26A27AE0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_26A27AE78()
{
  sub_26A27AE0C(319, &qword_28036C808, type metadata accessor for _ProtoTextProperty, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    sub_26A27AE0C(319, &qword_28036EF48, type metadata accessor for _ProtoMultilineTextProperty, MEMORY[0x277D83D88]);
    if (v4 <= 0x3F)
    {
      v9 = *(v3 - 8) + 64;
      sub_26A27AE0C(319, &qword_28036D178, type metadata accessor for _ProtoVisualProperty, MEMORY[0x277D83D88]);
      if (v6 <= 0x3F)
      {
        v10 = *(v5 - 8) + 64;
        sub_26A27AE0C(319, qword_281579718, type metadata accessor for _ProtoActionProperty, MEMORY[0x277D83D88]);
        if (v8 <= 0x3F)
        {
          v11 = *(v7 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_26A27B08C()
{
  sub_26A27AE0C(319, &qword_28036C808, type metadata accessor for _ProtoTextProperty, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    sub_26A27AE0C(319, &qword_28036EF48, type metadata accessor for _ProtoMultilineTextProperty, MEMORY[0x277D83D88]);
    if (v4 <= 0x3F)
    {
      v7 = *(v3 - 8) + 64;
      sub_26A27AE0C(319, qword_281579718, type metadata accessor for _ProtoActionProperty, MEMORY[0x277D83D88]);
      if (v6 <= 0x3F)
      {
        v8 = *(v5 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_26A27B244()
{
  sub_26A27AE0C(319, &qword_28036C808, type metadata accessor for _ProtoTextProperty, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    sub_26A27AE0C(319, &qword_28036EF48, type metadata accessor for _ProtoMultilineTextProperty, MEMORY[0x277D83D88]);
    if (v4 <= 0x3F)
    {
      v9 = *(v3 - 8) + 64;
      sub_26A27AE0C(319, &qword_28036D178, type metadata accessor for _ProtoVisualProperty, MEMORY[0x277D83D88]);
      if (v6 <= 0x3F)
      {
        v10 = *(v5 - 8) + 64;
        sub_26A27AE0C(319, qword_281579718, type metadata accessor for _ProtoActionProperty, MEMORY[0x277D83D88]);
        if (v8 <= 0x3F)
        {
          v11 = *(v7 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t OUTLINED_FUNCTION_15_18()
{
  result = type metadata accessor for _ProtoSimpleItem_RichSearchResult(0);
  v2 = *(v0 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_16_16()
{
  result = type metadata accessor for _ProtoSimpleItem_Rich(0);
  v2 = *(v0 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_18_16()
{
  result = type metadata accessor for _ProtoSimpleItem_Standard(0);
  v2 = *(v0 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_22_13()
{
  result = type metadata accessor for _ProtoSimpleItem_ReverseRich(0);
  v2 = *(v0 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_28_10(uint64_t a1)
{
  result = type metadata accessor for _ProtoSimpleItem_RichSearchResult(a1);
  v3 = *(v1 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_29_11(uint64_t a1)
{
  result = type metadata accessor for _ProtoSimpleItem_Rich(a1);
  v3 = *(v1 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_46_6(uint64_t a1)
{
  result = type metadata accessor for _ProtoSimpleItem_Standard(a1);
  v3 = *(v1 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_52_10()
{
  v0 = type metadata accessor for _ProtoSimpleItem_RichSearchResult._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_53_10()
{
  v0 = type metadata accessor for _ProtoSimpleItem_Rich._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_54_10(uint64_t a1)
{
  result = type metadata accessor for _ProtoSimpleItem_ReverseRich(a1);
  v3 = *(v1 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_56_10(uint64_t a1)
{
  result = type metadata accessor for _ProtoSimpleItem_Player(a1);
  v3 = *(v1 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_58_11()
{
  v0 = type metadata accessor for _ProtoSimpleItem_Standard._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_65_9()
{
  v0 = type metadata accessor for _ProtoSimpleItem_ReverseRich._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_66_5()
{
  v0 = type metadata accessor for _ProtoSimpleItem_Player._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_103_1(uint64_t a1)
{
  v2 = *(v1 + *(type metadata accessor for _ProtoSimpleItem_RichSearchResult(a1) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_104_2(uint64_t a1)
{
  v2 = *(v1 + *(type metadata accessor for _ProtoSimpleItem_RichSearchResult(a1) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_106_3(uint64_t a1)
{
  v2 = *(v1 + *(type metadata accessor for _ProtoSimpleItem_Rich(a1) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_107_4(uint64_t a1)
{
  v2 = *(v1 + *(type metadata accessor for _ProtoSimpleItem_Rich(a1) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_123_3()
{

  return sub_26A2597D8();
}

uint64_t OUTLINED_FUNCTION_126_3()
{

  return sub_26A2597D8();
}

uint64_t OUTLINED_FUNCTION_127_2()
{

  return sub_26A0E48F0(v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_135_3()
{

  return sub_26A10CF40();
}

uint64_t OUTLINED_FUNCTION_158_3()
{
  v2 = *(v0 + 288);

  return sub_26A2597D8();
}

uint64_t OUTLINED_FUNCTION_159_2()
{

  return sub_26A10FD9C();
}

uint64_t _ProtoTertiaryHeader_Standard.text1.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - v6;
  v8 = *(type metadata accessor for _ProtoTertiaryHeader_Standard() + 24);
  sub_26A10FD9C();
  v9 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_37(v7, 1, v9);
  if (!v10)
  {
    return sub_26A27BEAC();
  }

  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = 0;
  v11 = a1 + v9[7];
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v12 = v9[8];
  v13 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v13);
  v17 = v9[9];
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v13);
  result = OUTLINED_FUNCTION_37(v7, 1, v9);
  if (!v10)
  {
    return sub_26A0E48F0(v7, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t type metadata accessor for _ProtoTertiaryHeader_Standard()
{
  result = qword_280370FC8;
  if (!qword_280370FC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _ProtoTertiaryHeader_Standard.hasAction.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_9_21();
  OUTLINED_FUNCTION_176(*(v5 + 28));
  OUTLINED_FUNCTION_209();
  type metadata accessor for _ProtoActionProperty();
  v6 = OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_37(v6, v7, v8);
  OUTLINED_FUNCTION_18_17();
  return v0;
}

uint64_t _ProtoTertiaryHeader_Standard.action.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_9_21();
  OUTLINED_FUNCTION_176(*(v7 + 28));
  sub_26A10FD9C();
  v8 = type metadata accessor for _ProtoActionProperty();
  v9 = OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_37(v9, v10, v8);
  if (!v11)
  {
    return sub_26A27BEAC();
  }

  *a1 = MEMORY[0x277D84F90];
  a1[1] = 0;
  a1[2] = 0xE000000000000000;
  v12 = a1 + *(v8 + 24);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v13 = OUTLINED_FUNCTION_71();
  result = OUTLINED_FUNCTION_37(v13, v14, v8);
  if (!v11)
  {
    return sub_26A0E48F0(v1, &off_28036C7C0, &off_26A427400);
  }

  return result;
}

uint64_t sub_26A27BEAC()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t _ProtoTertiaryHeader_Standard.text1.setter()
{
  OUTLINED_FUNCTION_110();
  v1 = type metadata accessor for _ProtoTertiaryHeader_Standard();
  sub_26A0E48F0(v0 + *(v1 + 24), &qword_28036C7B8, &unk_26A425BF0);
  sub_26A27BEAC();
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_126_0();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t _ProtoTertiaryHeader_Standard.action.setter()
{
  OUTLINED_FUNCTION_110();
  v1 = type metadata accessor for _ProtoTertiaryHeader_Standard();
  sub_26A0E48F0(v0 + *(v1 + 28), &off_28036C7C0, &off_26A427400);
  sub_26A27BEAC();
  type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_126_0();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t _ProtoTertiaryHeader_Standard.hasText1.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_9_21();
  OUTLINED_FUNCTION_176(*(v5 + 24));
  OUTLINED_FUNCTION_209();
  type metadata accessor for _ProtoTextProperty(0);
  v6 = OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_37(v6, v7, v8);
  OUTLINED_FUNCTION_18_17();
  return v0;
}

void (*_ProtoTertiaryHeader_Standard.text1.modify(void *a1))()
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
  *(v3 + 10) = *(type metadata accessor for _ProtoTertiaryHeader_Standard() + 24);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_37(v6, 1, v7);
  if (v11)
  {
    *v10 = MEMORY[0x277D84F90];
    v10[4] = 0;
    v12 = v10 + v7[7];
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v13 = v7[8];
    v14 = type metadata accessor for _ProtoActionProperty();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v14);
    v18 = v7[9];
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v14);
    OUTLINED_FUNCTION_37(v6, 1, v7);
    if (!v11)
    {
      sub_26A0E48F0(v6, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A27BEAC();
  }

  return sub_26A27C270;
}

Swift::Void __swiftcall _ProtoTertiaryHeader_Standard.clearText1()()
{
  v1 = type metadata accessor for _ProtoTertiaryHeader_Standard();
  sub_26A0E48F0(v0 + *(v1 + 24), &qword_28036C7B8, &unk_26A425BF0);
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_92();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_26A27C2FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = a5(0);
  OUTLINED_FUNCTION_41(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v11);
  v13 = &v15 - v12;
  sub_26A27C654();
  return a7(v13);
}

void (*_ProtoTertiaryHeader_Standard.action.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for _ProtoActionProperty();
  v3[2] = v7;
  OUTLINED_FUNCTION_12(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for _ProtoTertiaryHeader_Standard() + 28);
  *(v3 + 10) = v11;
  OUTLINED_FUNCTION_176(v11);
  sub_26A10FD9C();
  v12 = OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_37(v12, v13, v7);
  if (v14)
  {
    *v10 = MEMORY[0x277D84F90];
    v10[1] = 0;
    v10[2] = 0xE000000000000000;
    v15 = v10 + *(v7 + 24);
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v16 = OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_37(v16, v17, v7);
    if (!v14)
    {
      sub_26A0E48F0(v6, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    sub_26A27BEAC();
  }

  return sub_26A27C520;
}

void sub_26A27C548(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v6 = *a1;
  v7 = *(*a1 + 10);
  v8 = (*a1)[3];
  v9 = (*a1)[4];
  v10 = (*a1)[1];
  v11 = (*a1)[2];
  v12 = **a1;
  if (a2)
  {
    v13 = (*a1)[4];
    sub_26A27C654();
    sub_26A0E48F0(v12 + v7, a3, a4);
    sub_26A27BEAC();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v11);
    sub_26A27C6A8();
  }

  else
  {
    sub_26A0E48F0(v12 + v7, a3, a4);
    sub_26A27BEAC();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v11);
  }

  free(v9);
  free(v8);
  free(v10);

  free(v6);
}

uint64_t sub_26A27C654()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t sub_26A27C6A8()
{
  v1 = OUTLINED_FUNCTION_110();
  v3 = v2(v1);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(v0);
  return v0;
}

Swift::Void __swiftcall _ProtoTertiaryHeader_Standard.clearAction()()
{
  v1 = type metadata accessor for _ProtoTertiaryHeader_Standard();
  sub_26A0E48F0(v0 + *(v1 + 28), &off_28036C7C0, &off_26A427400);
  type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_92();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t _ProtoTertiaryHeader_Standard.componentName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_175();
}

uint64_t _ProtoTertiaryHeader_Standard.componentName.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t _ProtoTertiaryHeader_Standard.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for _ProtoTertiaryHeader_Standard() + 20);
  v4 = sub_26A424794();
  v5 = OUTLINED_FUNCTION_12(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t _ProtoTertiaryHeader_Standard.unknownFields.setter()
{
  OUTLINED_FUNCTION_110();
  v2 = *(type metadata accessor for _ProtoTertiaryHeader_Standard() + 20);
  v3 = sub_26A424794();
  OUTLINED_FUNCTION_12(v3);
  v5 = *(v4 + 40);

  return v5(v1 + v2, v0);
}

uint64_t (*_ProtoTertiaryHeader_Standard.unknownFields.modify())()
{
  OUTLINED_FUNCTION_110();
  v0 = *(type metadata accessor for _ProtoTertiaryHeader_Standard() + 20);
  return nullsub_1;
}

uint64_t _ProtoTertiaryHeader_Standard.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v2 = type metadata accessor for _ProtoTertiaryHeader_Standard();
  v3 = a1 + v2[5];
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v4 = v2[6];
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  v9 = v2[7];
  type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_92();

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

uint64_t sub_26A27C9B4()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280370F98);
  __swift_project_value_buffer(v0, qword_280370F98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A425BE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "text_1";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = 0x26A44B000;
  *(v10 + 1) = 6;
  v10[16] = 2;
  v11 = *MEMORY[0x277D21870];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "component_name";
  *(v13 + 1) = 14;
  v13[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t static _ProtoTertiaryHeader_Standard._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_28036C418 != -1)
  {
    swift_once();
  }

  v2 = sub_26A424AC4();
  v3 = __swift_project_value_buffer(v2, qword_280370F98);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t _ProtoTertiaryHeader_Standard.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_26A424834();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_26A424924();
        break;
      case 2:
        OUTLINED_FUNCTION_87();
        sub_26A27CDC4();
        break;
      case 1:
        OUTLINED_FUNCTION_87();
        sub_26A27CD10();
        break;
    }
  }

  return result;
}

uint64_t sub_26A27CD10()
{
  v0 = *(type metadata accessor for _ProtoTertiaryHeader_Standard() + 24);
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A27DC48(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  return sub_26A424944();
}

uint64_t sub_26A27CDC4()
{
  v0 = *(type metadata accessor for _ProtoTertiaryHeader_Standard() + 28);
  type metadata accessor for _ProtoActionProperty();
  sub_26A27DC48(&qword_28036C928, type metadata accessor for _ProtoActionProperty);
  return sub_26A424944();
}

uint64_t _ProtoTertiaryHeader_Standard.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_87();
  result = sub_26A27CF4C(v2, v3, v4, v5);
  if (!v1)
  {
    OUTLINED_FUNCTION_87();
    sub_26A27D120(v7, v8, v9, v10);
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

    v14 = v0 + *(type metadata accessor for _ProtoTertiaryHeader_Standard() + 20);
    return sub_26A424774();
  }

  return result;
}

uint64_t sub_26A27CF4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for _ProtoTextProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for _ProtoTertiaryHeader_Standard() + 24);
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A27BEAC();
  sub_26A27DC48(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A27C6A8();
}

uint64_t sub_26A27D120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for _ProtoActionProperty();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for _ProtoTertiaryHeader_Standard() + 28);
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &off_28036C7C0, &off_26A427400);
  }

  sub_26A27BEAC();
  sub_26A27DC48(&qword_28036C928, type metadata accessor for _ProtoActionProperty);
  sub_26A424A84();
  return sub_26A27C6A8();
}

uint64_t static _ProtoTertiaryHeader_Standard.== infix(_:_:)(void *a1, void *a2)
{
  v68 = type metadata accessor for _ProtoActionProperty();
  v4 = OUTLINED_FUNCTION_12(v68);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v64 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v11);
  v65 = &v64 - v12;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7C8, &qword_26A425C00);
  OUTLINED_FUNCTION_12(v66);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v15);
  v69 = &v64 - v16;
  v17 = type metadata accessor for _ProtoTextProperty(0);
  v18 = OUTLINED_FUNCTION_12(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v26);
  v28 = &v64 - v27;
  v29 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7D0, &qword_26A426DE0) - 8);
  v30 = *(*v29 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v31);
  v33 = &v64 - v32;
  v67 = type metadata accessor for _ProtoTertiaryHeader_Standard();
  v34 = *(v67 + 24);
  v35 = v29[14];
  v70 = a1;
  sub_26A10FD9C();
  v71 = a2;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_12_1(v33);
  if (v36)
  {
    OUTLINED_FUNCTION_12_1(&v33[v35]);
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
LABEL_37:
    v52 = 0;
    return v52 & 1;
  }

  sub_26A10FD9C();
  OUTLINED_FUNCTION_12_1(&v33[v35]);
  if (v36)
  {
    sub_26A27C6A8();
    goto LABEL_9;
  }

  sub_26A27BEAC();
  v40 = static _ProtoTextProperty.== infix(_:_:)(v28, v22);
  sub_26A27C6A8();
  sub_26A27C6A8();
  sub_26A0E48F0(v33, &qword_28036C7B8, &unk_26A425BF0);
  if ((v40 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_11:
  v41 = v67;
  v42 = *(v67 + 28);
  v43 = *(v66 + 48);
  v45 = v69;
  v44 = v70;
  OUTLINED_FUNCTION_209();
  v46 = v71;
  OUTLINED_FUNCTION_209();
  v47 = v68;
  OUTLINED_FUNCTION_37(v45, 1, v68);
  if (v36)
  {
    OUTLINED_FUNCTION_12_1(v45 + v43);
    if (v36)
    {
      sub_26A0E48F0(v45, &off_28036C7C0, &off_26A427400);
      goto LABEL_16;
    }

    goto LABEL_25;
  }

  v53 = v65;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_12_1(v45 + v43);
  if (v54)
  {
    sub_26A27C6A8();
LABEL_25:
    v37 = &qword_28036C7C8;
    v38 = &qword_26A425C00;
LABEL_35:
    v39 = v45;
    goto LABEL_36;
  }

  v55 = v64;
  sub_26A27BEAC();
  v56 = *v53;
  v57 = *v55;
  sub_26A0E36D8();
  if ((v58 & 1) == 0 || (v53[1] == v55[1] ? (v59 = v53[2] == v55[2]) : (v59 = 0), !v59 && (sub_26A425354() & 1) == 0))
  {
    sub_26A27C6A8();
    sub_26A27C6A8();
    v37 = &off_28036C7C0;
    v38 = &off_26A427400;
    goto LABEL_35;
  }

  v60 = *(v47 + 24);
  sub_26A424794();
  OUTLINED_FUNCTION_1_29();
  sub_26A27DC48(v61, v62);
  LOBYTE(v60) = sub_26A424B64();
  sub_26A27C6A8();
  sub_26A27C6A8();
  sub_26A0E48F0(v45, &off_28036C7C0, &off_26A427400);
  if ((v60 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_16:
  v48 = *v44 == *v46 && v44[1] == v46[1];
  if (!v48 && (sub_26A425354() & 1) == 0)
  {
    goto LABEL_37;
  }

  v49 = *(v41 + 20);
  sub_26A424794();
  OUTLINED_FUNCTION_1_29();
  sub_26A27DC48(v50, v51);
  v52 = sub_26A424B64();
  return v52 & 1;
}

uint64_t _ProtoTertiaryHeader_Standard.hashValue.getter()
{
  sub_26A425504();
  type metadata accessor for _ProtoTertiaryHeader_Standard();
  sub_26A27DC48(&qword_280370FB0, type metadata accessor for _ProtoTertiaryHeader_Standard);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A27D9D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A27DC48(&qword_280370FD8, type metadata accessor for _ProtoTertiaryHeader_Standard);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A27DAE8(uint64_t a1)
{
  v2 = sub_26A27DC48(&qword_28036D2D0, type metadata accessor for _ProtoTertiaryHeader_Standard);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A27DBA0()
{
  sub_26A27DC48(&qword_28036D2D0, type metadata accessor for _ProtoTertiaryHeader_Standard);

  return sub_26A4249B4();
}

uint64_t sub_26A27DC48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_9_21()
{

  return type metadata accessor for _ProtoTertiaryHeader_Standard();
}

uint64_t OUTLINED_FUNCTION_18_17()
{

  return sub_26A0E48F0(v2, v0, v1);
}

uint64_t StatusIndicatorSuccess.text.getter()
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
  v13 = *(type metadata accessor for _ProtoStatusIndicator_Success(0) + 24);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_15(v5);
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
    OUTLINED_FUNCTION_15(v5);
    if (!v14)
    {
      sub_26A0E48F0(v5, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A27F594();
  }

  return sub_26A27F594();
}

uint64_t StatusIndicatorSuccess.showIndicator.getter()
{
  v0 = type metadata accessor for _ProtoOptionalBool(0);
  v1 = OUTLINED_FUNCTION_12(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_18();
  v6 = (v5 - v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D198, &qword_26A432940);
  v8 = OUTLINED_FUNCTION_41(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v23 - v15;
  v17 = *(type metadata accessor for _ProtoStatusIndicator_Success(0) + 28);
  sub_26A10FD9C();
  v18 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v0);
  sub_26A0E48F0(v16, &qword_28036D198, &qword_26A432940);
  if (EnumTagSinglePayload != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_15(v13);
    if (v20)
    {
      *v6 = 0;
      v21 = &v6[*(v0 + 20)];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_15(v13);
      if (!v20)
      {
        sub_26A0E48F0(v13, &qword_28036D198, &qword_26A432940);
      }
    }

    else
    {
      sub_26A27F594();
    }

    v18 = *v6;
    sub_26A27FBDC(v6, type metadata accessor for _ProtoOptionalBool);
  }

  return v18;
}

uint64_t StatusIndicatorSuccess.action.getter@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
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
  v17 = &v29 - v16;
  v18 = *(type metadata accessor for _ProtoStatusIndicator_Success(0) + 32);
  sub_26A10FD9C();
  v19 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, 1, v1);
  v21 = v30;
  sub_26A0E48F0(v17, &off_28036C7C0, &off_26A427400);
  if (EnumTagSinglePayload != 1)
  {
    sub_26A10FD9C();
    v22 = OUTLINED_FUNCTION_71();
    if (__swift_getEnumTagSinglePayload(v22, v23, v1) == 1)
    {
      *v7 = MEMORY[0x277D84F90];
      v7[1] = 0;
      v7[2] = 0xE000000000000000;
      v24 = v7 + *(v1 + 24);
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v25 = OUTLINED_FUNCTION_71();
      if (__swift_getEnumTagSinglePayload(v25, v26, v1) != 1)
      {
        sub_26A0E48F0(v14, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      sub_26A27F594();
    }

    sub_26A27F594();
    v19 = 0;
  }

  v27 = type metadata accessor for ActionProperty();
  return __swift_storeEnumTagSinglePayload(v21, v19, 1, v27);
}

uint64_t StatusIndicatorSuccess.componentName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_175();
}

uint64_t sub_26A27E314@<X0>(uint64_t a1@<X8>)
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
  OUTLINED_FUNCTION_2_26();
  sub_26A27F540();
  v72 = type metadata accessor for _ProtoStatusIndicator_Success(0);
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
    if (__swift_getEnumTagSinglePayload(v42, v43, v18) == 1)
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
      if (__swift_getEnumTagSinglePayload(v53, v54, v18) != 1)
      {
        sub_26A0E48F0(v33, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A27F594();
    }

    _ProtoTextProperty.redactedProto.getter();
    sub_26A27FBDC(v26, type metadata accessor for _ProtoTextProperty);
    sub_26A0E48F0(a1 + v37, &qword_28036C7B8, &unk_26A425BF0);
    sub_26A27F594();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v55, v56, v57, v18);
  }

  v58 = *(v72 + 32);
  sub_26A10FD9C();
  v59 = __swift_getEnumTagSinglePayload(v17, 1, v41);
  result = sub_26A0E48F0(v17, &off_28036C7C0, &off_26A427400);
  if (v59 != 1)
  {
    v61 = v68;
    sub_26A10FD9C();
    if (__swift_getEnumTagSinglePayload(v61, 1, v41) == 1)
    {
      v62 = v69;
      *v69 = v39;
      *(v62 + 8) = 0;
      *(v62 + 16) = 0xE000000000000000;
      v63 = v62 + *(v41 + 24);
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      if (__swift_getEnumTagSinglePayload(v61, 1, v41) != 1)
      {
        sub_26A0E48F0(v61, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      v62 = v69;
      sub_26A27F594();
    }

    _s10SnippetKit14ActionPropertyV13redactedProtoAA01_fcD0Vvg_0(v70);
    sub_26A27FBDC(v62, type metadata accessor for _ProtoActionProperty);
    sub_26A0E48F0(a1 + v58, &off_28036C7C0, &off_26A427400);
    sub_26A27F594();
    OUTLINED_FUNCTION_126_0();
    return __swift_storeEnumTagSinglePayload(v64, v65, v66, v41);
  }

  return result;
}

uint64_t StatusIndicatorSuccess.init(text:componentName:showIndicator:action:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for _ProtoStatusIndicator_Success(0);
  OUTLINED_FUNCTION_0_39();
  sub_26A27FAB8(v7, v8);
  OUTLINED_FUNCTION_30_3();
  sub_26A4249C4();

  sub_26A0E48F0(a5, &qword_28036CAF8, &unk_26A426D30);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26A27E90C(void *a1, void *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v50 = a6;
  v49 = a5;
  v47 = a4;
  v48 = a3;
  v8 = type metadata accessor for ActionProperty();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v45[3] = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v51 = v45 - v13;
  v52 = type metadata accessor for _ProtoActionProperty();
  v14 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  v45[2] = v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v45[1] = v45 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D198, &qword_26A432940);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = v45 - v20;
  v46 = type metadata accessor for _ProtoOptionalBool(0);
  v22 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v24 = v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for _ProtoTextProperty(0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v27 = type metadata accessor for TextProperty(0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = a2[3];
  v30 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v29);
  (*(v30 + 8))(v29, v30);
  sub_26A27F594();
  v31 = type metadata accessor for _ProtoStatusIndicator_Success(0);
  v32 = v31[6];
  sub_26A0E48F0(a1 + v32, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A27F594();
  v33 = v25;
  v34 = v46;
  __swift_storeEnumTagSinglePayload(a1 + v32, 0, 1, v33);
  v35 = a1[1];
  v36 = v47;

  *a1 = v48;
  a1[1] = v36;
  v37 = v31[7];
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v21, 1, v34) == 1)
  {
    v38 = &v24[*(v34 + 20)];
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    if (__swift_getEnumTagSinglePayload(v21, 1, v34) != 1)
    {
      sub_26A0E48F0(v21, &qword_28036D198, &qword_26A432940);
    }
  }

  else
  {
    sub_26A27F594();
  }

  *v24 = v49 & 1;
  sub_26A0E48F0(a1 + v37, &qword_28036D198, &qword_26A432940);
  sub_26A27F594();
  __swift_storeEnumTagSinglePayload(a1 + v37, 0, 1, v34);
  sub_26A10FD9C();
  v39 = v54;
  if (v54)
  {
    v40 = v55;
    __swift_project_boxed_opaque_existential_1(v53, v54);
    (*(v40 + 8))(v39, v40);
    v41 = v51;
    sub_26A27F594();
    v42 = v52;
    __swift_storeEnumTagSinglePayload(v41, 0, 1, v52);
    __swift_destroy_boxed_opaque_existential_1(v53);
    if (__swift_getEnumTagSinglePayload(v41, 1, v42) != 1)
    {
      sub_26A27F594();
      sub_26A27F594();
      v43 = v31[8];
      sub_26A0E48F0(a1 + v43, &off_28036C7C0, &off_26A427400);
      sub_26A27F594();
      return __swift_storeEnumTagSinglePayload(a1 + v43, 0, 1, v42);
    }
  }

  else
  {
    sub_26A0E48F0(v53, &qword_28036CAF8, &unk_26A426D30);
    v41 = v51;
    __swift_storeEnumTagSinglePayload(v51, 1, 1, v52);
  }

  return sub_26A0E48F0(v41, &off_28036C7C0, &off_26A427400);
}

uint64_t StatusIndicatorSuccess.init(text:componentName:showIndicator:)(uint64_t *a1)
{
  sub_26A0E5D68(a1, v6);
  type metadata accessor for _ProtoStatusIndicator_Success(0);
  OUTLINED_FUNCTION_12_11();
  OUTLINED_FUNCTION_0_39();
  sub_26A27FAB8(v2, v3);
  OUTLINED_FUNCTION_30_3();
  sub_26A4249C4();

  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_26A0E48F0(v5, &qword_28036CAF8, &unk_26A426D30);
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t StatusIndicatorSuccess.init(text:componentName:)(uint64_t *a1)
{
  sub_26A0E5D68(a1, v6);
  type metadata accessor for _ProtoStatusIndicator_Success(0);
  OUTLINED_FUNCTION_12_11();
  OUTLINED_FUNCTION_15_6();
  OUTLINED_FUNCTION_0_39();
  sub_26A27FAB8(v2, v3);
  OUTLINED_FUNCTION_30_3();
  sub_26A4249C4();

  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_26A0E48F0(v5, &qword_28036CAF8, &unk_26A426D30);
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t StatusIndicatorSuccess.init(text:)(uint64_t *a1)
{
  sub_26A0E5D68(a1, v6);
  type metadata accessor for _ProtoStatusIndicator_Success(0);
  OUTLINED_FUNCTION_12_11();
  OUTLINED_FUNCTION_15_6();
  OUTLINED_FUNCTION_0_39();
  sub_26A27FAB8(v2, v3);
  OUTLINED_FUNCTION_30_3();
  sub_26A4249C4();
  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_26A0E48F0(v5, &qword_28036CAF8, &unk_26A426D30);
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

Swift::String __swiftcall StatusIndicatorSuccess.description(redacted:)(Swift::Bool redacted)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB18, &unk_26A427670);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v7 = v43 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB30, &qword_26A426480);
  OUTLINED_FUNCTION_41(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v11);
  v13 = v43 - v12;
  v14 = type metadata accessor for StatusIndicatorSuccess();
  v15 = OUTLINED_FUNCTION_41(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_17();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = v43 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF78, &qword_26A4354C0);
  OUTLINED_FUNCTION_12(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v27);
  v29 = v43 - v28;
  OUTLINED_FUNCTION_5_22();
  sub_26A27F540();
  if (redacted)
  {
    sub_26A27E314(v20);
  }

  else
  {
    sub_26A27F540();
  }

  sub_26A27F594();
  v29[*(v24 + 32)] = redacted;
  sub_26A27FBDC(v23, type metadata accessor for StatusIndicatorSuccess);
  *&v29[*(v24 + 28)] = MEMORY[0x277D84F90];
  StatusIndicatorSuccess.text.getter();
  type metadata accessor for TextProperty(0);
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
  sub_26A105654();
  sub_26A0E48F0(v13, &qword_28036CB30, &qword_26A426480);
  KeyPath = swift_getKeyPath();
  sub_26A0F7908(KeyPath, 0x6E656E6F706D6F63, 0xED0000656D614E74, 1, v35, v36, v37, v38, v43[0], v43[1]);

  v39 = StatusIndicatorSuccess.showIndicator.getter();
  sub_26A1461DC(v39 & 1);
  StatusIndicatorSuccess.action.getter(v7);
  sub_26A105550();
  sub_26A0E48F0(v7, &qword_28036CB18, &unk_26A427670);
  sub_26A0FBE18();
  sub_26A0E48F0(v29, &qword_28036CF78, &qword_26A4354C0);
  v40 = OUTLINED_FUNCTION_175();
  result._object = v41;
  result._countAndFlagsBits = v40;
  return result;
}

uint64_t type metadata accessor for StatusIndicatorSuccess()
{
  result = qword_280370FE0;
  if (!qword_280370FE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A27F540()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t sub_26A27F594()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> StatusIndicatorSuccess.jsonString(redacted:)(Swift::Bool redacted)
{
  v2 = v1;
  v4 = sub_26A4247D4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_17();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - v11;
  v13 = type metadata accessor for _ProtoStatusIndicator_Success(0);
  v14 = OUTLINED_FUNCTION_12(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_18();
  if (redacted)
  {
    sub_26A27E314(v18 - v17);
    sub_26A4247C4();
    OUTLINED_FUNCTION_0_39();
    sub_26A27FAB8(v19, v20);
    v21 = sub_26A424954();
    if (!v1)
    {
      v2 = v21;
      v13 = v22;
    }

    (*(v5 + 8))(v12, v4);
    OUTLINED_FUNCTION_7_14();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_0_39();
    sub_26A27FAB8(v23, v24);
    v25 = sub_26A424954();
    if (!v1)
    {
      v2 = v25;
      v13 = v26;
    }

    (*(v5 + 8))(v9, v4);
  }

  v27 = v2;
  v28 = v13;
  result._object = v28;
  result._countAndFlagsBits = v27;
  return result;
}

uint64_t StatusIndicatorSuccess.componentProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoStatusIndicator_Success(0);
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
  OUTLINED_FUNCTION_2_26();
  sub_26A27F540();
  sub_26A0E48F0(a1, &qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_6_15();
  sub_26A27F594();
  OUTLINED_FUNCTION_175();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_126_0();
  return __swift_storeEnumTagSinglePayload(v17, v18, v19, v6);
}

uint64_t StatusIndicatorSuccess.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for StatusIndicatorSuccess();
  *(inited + 64) = &protocol witness table for StatusIndicatorSuccess;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_5_22();
  sub_26A27F540();
  swift_beginAccess();

  sub_26A10BF5C(v1);
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A27FAB8(&qword_28036CB48, type metadata accessor for _ProtoResponse.Section);
  OUTLINED_FUNCTION_30_3();
  sub_26A4249C4();

  swift_setDeallocating();
  return sub_26A10C358();
}

uint64_t sub_26A27FAB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A27FB70()
{
  result = type metadata accessor for _ProtoStatusIndicator_Success(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A27FBDC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_7_14()
{

  return sub_26A27FBDC(v0, type metadata accessor for _ProtoStatusIndicator_Success);
}

uint64_t OUTLINED_FUNCTION_19_15()
{

  return type metadata accessor for _ProtoStatusIndicator_Success(0);
}

uint64_t RFImage.redacted.getter()
{
  OUTLINED_FUNCTION_70_5();

  strcpy(v0, "slash.circle");
  *(v0 + 13) = 0;
  *(v0 + 14) = -5120;
  OUTLINED_FUNCTION_18_18();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;

  return swift_storeEnumTagMultiPayload();
}

uint64_t static RFImage.symbol(_:dark:)()
{
  OUTLINED_FUNCTION_31_10();

  *v4 = v3;
  v4[1] = v2;
  v4[2] = v1;
  v4[3] = v0;
  OUTLINED_FUNCTION_18_18();

  return swift_storeEnumTagMultiPayload();
}

uint64_t RFImage.DefaultAppIcon.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_175();
}

uint64_t sub_26A27FE54()
{
  result = sub_26A217780(&unk_287B01F88);
  qword_2815793C8 = result;
  return result;
}

uint64_t static RFImage.DefaultAppIcon.allCases.getter()
{
  if (qword_2815793C0 != -1)
  {
    swift_once();
  }
}

uint64_t static RFImage.DefaultAppIcon.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_26A425354();
  }
}

uint64_t sub_26A27FF18(uint64_t a1)
{
  v2 = sub_26A28009C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A27FF54(uint64_t a1)
{
  v2 = sub_26A28009C();

  return MEMORY[0x2821FE720](a1, v2);
}

void RFImage.DefaultAppIcon.encode(to:)()
{
  OUTLINED_FUNCTION_40_5();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280370FF0, &qword_26A435560);
  OUTLINED_FUNCTION_24(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_131_3();
  v9 = *v0;
  v10 = v0[1];
  v11 = v2[4];
  OUTLINED_FUNCTION_36_5(v2, v2[3]);
  sub_26A28009C();
  sub_26A425594();
  sub_26A425114();
  v12 = *(v5 + 8);
  v13 = OUTLINED_FUNCTION_69();
  v14(v13);
  OUTLINED_FUNCTION_41_5();
}

unint64_t sub_26A28009C()
{
  result = qword_280370FF8;
  if (!qword_280370FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280370FF8);
  }

  return result;
}

uint64_t RFImage.DefaultAppIcon.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_26A424C04();
}

uint64_t RFImage.DefaultAppIcon.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  OUTLINED_FUNCTION_4_0();
  sub_26A424C04();
  return sub_26A425554();
}

void RFImage.DefaultAppIcon.init(from:)()
{
  OUTLINED_FUNCTION_40_5();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371000, &qword_26A435568);
  OUTLINED_FUNCTION_24(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_131_3();
  OUTLINED_FUNCTION_13_15();
  sub_26A28009C();
  OUTLINED_FUNCTION_56_11();
  sub_26A425574();
  if (!v0)
  {
    v11 = sub_26A425034();
    v13 = v12;
    v14 = *(v7 + 8);
    v15 = OUTLINED_FUNCTION_69();
    v16(v15);
    *v4 = v11;
    v4[1] = v13;
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_41_5();
}

uint64_t sub_26A2802A4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_26A425504();
  sub_26A424C04();
  return sub_26A425554();
}

uint64_t static RFImage.appIcon(_:)()
{
  OUTLINED_FUNCTION_90_5();
  *v2 = v0;
  v2[1] = v1;
  OUTLINED_FUNCTION_18_18();
  swift_storeEnumTagMultiPayload();
}

uint64_t RFImage.AppIcon.init(appBundleId:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t static RFImage.defaultAppIcon(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  OUTLINED_FUNCTION_18_18();
  swift_storeEnumTagMultiPayload();
}

uint64_t static RFImage.bundle(_:darkName:location:)()
{
  OUTLINED_FUNCTION_31_10();
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v5 + 16);
  sub_26A0D6660();

  *v4 = v3;
  *(v4 + 8) = v2;
  *(v4 + 16) = v1;
  *(v4 + 24) = v0;
  *(v4 + 32) = v6;
  *(v4 + 40) = v7;
  *(v4 + 48) = v8;
  OUTLINED_FUNCTION_18_18();
  swift_storeEnumTagMultiPayload();
}

uint64_t RFImage.Bundle.init(lightName:darkName:location:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *a5;
  v10 = a5[1];
  v11 = *(a5 + 16);
  *a6 = a1;
  *(a6 + 8) = a2;

  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = v9;
  *(a6 + 40) = v10;
  *(a6 + 48) = v11;
  return result;
}

__n128 RFImage.Contact.init(content:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u8[0] = v2;
  return result;
}

uint64_t sub_26A28049C()
{
  OUTLINED_FUNCTION_90_5();
  *v2 = v0;
  *(v2 + 8) = v1;
  *(v2 + 16) = v3;
  OUTLINED_FUNCTION_18_18();
  swift_storeEnumTagMultiPayload();
}

uint64_t static RFImage.pngData(_:dark:)()
{
  OUTLINED_FUNCTION_31_10();
  sub_26A0E45C0(v5, v6);
  sub_26A280558(v1, v0);
  sub_26A10E794(0, 0xF000000000000000);
  *v4 = v3;
  v4[1] = v2;
  v4[2] = v1;
  v4[3] = v0;
  OUTLINED_FUNCTION_18_18();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_26A280558(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26A0E45C0(a1, a2);
  }

  return a1;
}

uint64_t RFImage.PngData.init(lightData:darkData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = OUTLINED_FUNCTION_60_8(a1, a2, a3);
  result = sub_26A10E794(v6, 0xF000000000000000);
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  return result;
}

uint64_t static RFImage.assetData(_:)()
{
  OUTLINED_FUNCTION_66_6();
  *v4 = v2;
  v4[1] = v3;
  OUTLINED_FUNCTION_18_18();
  swift_storeEnumTagMultiPayload();

  return sub_26A0E45C0(v1, v0);
}

uint64_t RFImage.Symbol.init(lightName:darkName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  OUTLINED_FUNCTION_60_8(a1, a2, a3);

  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  return result;
}

uint64_t static RFImage.url(_:dark:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D500, &qword_26A435570);
  OUTLINED_FUNCTION_41(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_59_7();
  v11 = sub_26A424614();
  OUTLINED_FUNCTION_12(v11);
  (*(v12 + 16))(a3, a1, v11);
  sub_26A280714(a2, v3);
  v13 = *(type metadata accessor for RFImage.Url(0) + 20);
  __swift_storeEnumTagSinglePayload(a3 + v13, 1, 1, v11);
  sub_26A2807A4(v3, a3 + v13);
  OUTLINED_FUNCTION_18_18();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_26A280714(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D500, &qword_26A435570);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A2807A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D500, &qword_26A435570);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t RFImage.Url.init(lightSource:darkSource:)()
{
  OUTLINED_FUNCTION_66_6();
  v3 = *(type metadata accessor for RFImage.Url(0) + 20);
  v4 = sub_26A424614();
  __swift_storeEnumTagSinglePayload(v2 + v3, 1, 1, v4);
  OUTLINED_FUNCTION_26_17(v4);
  (*(v5 + 32))(v2, v1, v4);

  return sub_26A2807A4(v0, v2 + v3);
}

uint64_t static RFImage.badgedImage(image:badge:)()
{
  OUTLINED_FUNCTION_66_6();
  v1 = type metadata accessor for RFImage.BadgedImage(0);
  v2 = swift_allocBox();
  sub_26A2823D8();
  v3 = *(v1 + 20);
  sub_26A2823D8();
  *v0 = v2;
  OUTLINED_FUNCTION_18_18();

  return swift_storeEnumTagMultiPayload();
}

uint64_t RFImage.BadgedImage.init(image:badge:)()
{
  sub_26A280F24();
  v0 = *(type metadata accessor for RFImage.BadgedImage(0) + 20);
  return sub_26A280F24();
}

uint64_t sub_26A2809E4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x656372756F73 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26A425354();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_26A280A70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26A2809E4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_26A280A9C(uint64_t a1)
{
  v2 = sub_26A280C5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A280AD8(uint64_t a1)
{
  v2 = sub_26A280C5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RFImage.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371008, &qword_26A435578);
  OUTLINED_FUNCTION_24(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_131_3();
  v9 = a1[4];
  OUTLINED_FUNCTION_36_5(a1, a1[3]);
  sub_26A280C5C();
  OUTLINED_FUNCTION_52_11();
  sub_26A425594();
  type metadata accessor for RFImage.Source(0);
  OUTLINED_FUNCTION_5_23();
  sub_26A280EDC(v10, v11);
  sub_26A425154();
  return (*(v5 + 8))(v1, v3);
}

unint64_t sub_26A280C5C()
{
  result = qword_280371010;
  if (!qword_280371010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371010);
  }

  return result;
}

void RFImage.init(from:)()
{
  OUTLINED_FUNCTION_40_5();
  v2 = v1;
  v3 = type metadata accessor for RFImage.Source(0);
  v4 = OUTLINED_FUNCTION_12(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_18();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371020, &qword_26A435580);
  OUTLINED_FUNCTION_24(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_47_9();
  v11 = type metadata accessor for RFImage(0);
  v12 = OUTLINED_FUNCTION_41(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_87_5();
  v15 = v2[3];
  v16 = v2[4];
  v17 = OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_36_5(v17, v18);
  sub_26A280C5C();
  OUTLINED_FUNCTION_86_6();
  sub_26A425574();
  if (!v0)
  {
    OUTLINED_FUNCTION_5_23();
    sub_26A280EDC(v19, v20);
    sub_26A425054();
    v21 = OUTLINED_FUNCTION_41_11();
    v22(v21, v7);
    sub_26A280F24();
    sub_26A280F24();
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_41_5();
}

uint64_t sub_26A280EDC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A280F24()
{
  OUTLINED_FUNCTION_90_5();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t RFImage.Source.redacted.getter()
{
  OUTLINED_FUNCTION_70_5();

  strcpy(v0, "slash.circle");
  *(v0 + 13) = 0;
  *(v0 + 14) = -5120;
  OUTLINED_FUNCTION_18_18();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_26A281024(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6349707061 && a2 == 0xE700000000000000;
  if (v4 || (sub_26A425354() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C646E7562 && a2 == 0xE600000000000000;
    if (v6 || (sub_26A425354() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x746361746E6F63 && a2 == 0xE700000000000000;
      if (v7 || (sub_26A425354() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x61746144676E70 && a2 == 0xE700000000000000;
        if (v8 || (sub_26A425354() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7461447465737361 && a2 == 0xE900000000000061;
          if (v9 || (sub_26A425354() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6C6F626D7973 && a2 == 0xE600000000000000;
            if (v10 || (sub_26A425354() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 7107189 && a2 == 0xE300000000000000;
              if (v11 || (sub_26A425354() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x6D49646567646162 && a2 == 0xEB00000000656761)
              {

                return 7;
              }

              else
              {
                v13 = sub_26A425354();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_26A2812B0(char a1)
{
  result = 0x6E6F6349707061;
  switch(a1)
  {
    case 1:
      result = 0x656C646E7562;
      break;
    case 2:
      result = 0x746361746E6F63;
      break;
    case 3:
      result = 0x61746144676E70;
      break;
    case 4:
      result = 0x7461447465737361;
      break;
    case 5:
      result = 0x6C6F626D7973;
      break;
    case 6:
      result = 7107189;
      break;
    case 7:
      result = 0x6D49646567646162;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26A281388(uint64_t a1)
{
  v2 = sub_26A28281C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A2813C4(uint64_t a1)
{
  v2 = sub_26A28281C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A281400(uint64_t a1)
{
  v2 = sub_26A2825D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A28143C(uint64_t a1)
{
  v2 = sub_26A2825D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A281478(uint64_t a1)
{
  v2 = sub_26A282430();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A2814B4(uint64_t a1)
{
  v2 = sub_26A282430();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A2814F0(uint64_t a1)
{
  v2 = sub_26A282774();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A28152C(uint64_t a1)
{
  v2 = sub_26A282774();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A281570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26A281024(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26A281598@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26A2812A8();
  *a1 = result;
  return result;
}

uint64_t sub_26A2815C0(uint64_t a1)
{
  v2 = sub_26A282384();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A2815FC(uint64_t a1)
{
  v2 = sub_26A282384();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A281638(uint64_t a1)
{
  v2 = sub_26A2826CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A281674(uint64_t a1)
{
  v2 = sub_26A2826CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A2816B0(uint64_t a1)
{
  v2 = sub_26A282624();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A2816EC(uint64_t a1)
{
  v2 = sub_26A282624();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A281728(uint64_t a1)
{
  v2 = sub_26A282528();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A281764(uint64_t a1)
{
  v2 = sub_26A282528();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A2817A0(uint64_t a1)
{
  v2 = sub_26A282484();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A2817DC(uint64_t a1)
{
  v2 = sub_26A282484();

  return MEMORY[0x2821FE720](a1, v2);
}

void RFImage.Source.encode(to:)()
{
  OUTLINED_FUNCTION_40_5();
  v160 = v0;
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371030, &qword_26A435588);
  v4 = OUTLINED_FUNCTION_24(v3);
  v158 = v5;
  v159 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_42();
  v157 = v9;
  v155 = type metadata accessor for RFImage.BadgedImage(0);
  v10 = OUTLINED_FUNCTION_12(v155);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_18();
  v156 = v14 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371038, &qword_26A435590);
  v16 = OUTLINED_FUNCTION_24(v15);
  v153 = v17;
  v154 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_42();
  v152 = v21;
  v150 = type metadata accessor for RFImage.Url(0);
  v22 = OUTLINED_FUNCTION_12(v150);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_18();
  v151 = v26 - v25;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371040, &qword_26A435598);
  OUTLINED_FUNCTION_24(v149);
  v148 = v27;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_49(v31);
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371048, &qword_26A4355A0);
  OUTLINED_FUNCTION_24(v147);
  v146 = v32;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_49(v36);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371050, &qword_26A4355A8);
  OUTLINED_FUNCTION_24(v145);
  v144 = v37;
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_49(v41);
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371058, &qword_26A4355B0);
  OUTLINED_FUNCTION_24(v143);
  v142 = v42;
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_49(v46);
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371060, &qword_26A4355B8);
  OUTLINED_FUNCTION_24(v141);
  v140[2] = v47;
  v49 = *(v48 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v50);
  v52 = v140 - v51;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371068, &qword_26A4355C0);
  OUTLINED_FUNCTION_24(v53);
  v140[1] = v54;
  v56 = *(v55 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_131_3();
  v58 = type metadata accessor for RFImage.Source(0);
  v59 = OUTLINED_FUNCTION_12(v58);
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_18();
  v64 = v63 - v62;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371070, &qword_26A4355C8);
  v162 = OUTLINED_FUNCTION_24(v65);
  v163 = v66;
  v68 = *(v67 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_47_9();
  v70 = v2[4];
  OUTLINED_FUNCTION_36_5(v2, v2[3]);
  sub_26A282384();
  OUTLINED_FUNCTION_86_6();
  sub_26A425594();
  OUTLINED_FUNCTION_39_12();
  sub_26A2823D8();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v114 = *(v64 + 8);
      v159 = *v64;
      v160 = v114;
      v115 = *(v64 + 24);
      v158 = *(v64 + 16);
      v117 = *(v64 + 32);
      v116 = *(v64 + 40);
      v118 = *(v64 + 48);
      LOBYTE(v164) = 1;
      sub_26A282774();
      v119 = v162;
      sub_26A4250A4();
      v164 = v159;
      v165 = v114;
      v166 = v158;
      v167[0] = v115;
      v167[1] = v117;
      v167[2] = v116;
      v168 = v118;
      sub_26A2827C8();
      v120 = v141;
      sub_26A425154();
      v121 = OUTLINED_FUNCTION_54_11();
      v122(v121, v120);
      v123 = OUTLINED_FUNCTION_41_11();
      v124(v123, v119);

      goto LABEL_8;
    case 2u:
      v85 = *v64;
      v86 = *(v64 + 8);
      v87 = *(v64 + 16);
      LOBYTE(v164) = 2;
      sub_26A2826CC();
      v89 = v161;
      v88 = v162;
      sub_26A4250A4();
      v164 = v85;
      v165 = v86;
      LOBYTE(v166) = v87;
      sub_26A282720();
      v90 = v143;
      sub_26A425154();
      v91 = OUTLINED_FUNCTION_27_16();
      v92(v91, v90);
      OUTLINED_FUNCTION_53_11();
      v93(v89, v88);
LABEL_8:
      sub_26A0D6740();
      goto LABEL_12;
    case 3u:
      v94 = *v64;
      v95 = *(v64 + 8);
      v96 = *(v64 + 16);
      v97 = *(v64 + 24);
      LOBYTE(v164) = 3;
      sub_26A282624();
      v99 = v161;
      v98 = v162;
      sub_26A4250A4();
      v164 = v94;
      v165 = v95;
      v166 = v96;
      v167[0] = v97;
      sub_26A282678();
      v100 = v145;
      sub_26A425154();
      v101 = OUTLINED_FUNCTION_41_11();
      v102(v101, v100);
      OUTLINED_FUNCTION_53_11();
      v103(v99, v98);
      sub_26A0E4784(v94, v95);
      v104 = OUTLINED_FUNCTION_97();
      sub_26A10E794(v104, v105);
      goto LABEL_12;
    case 4u:
      v76 = *v64;
      v77 = *(v64 + 8);
      LOBYTE(v164) = 4;
      sub_26A2825D0();
      OUTLINED_FUNCTION_65_10();
      sub_26A4250A4();
      v164 = v76;
      v165 = v77;
      sub_26A0E70D4();
      v78 = v147;
      sub_26A425154();
      v79 = OUTLINED_FUNCTION_54_11();
      v80(v79, v78);
      OUTLINED_FUNCTION_53_11();
      v81 = OUTLINED_FUNCTION_69();
      v82(v81);
      v83 = OUTLINED_FUNCTION_97();
      sub_26A0E4784(v83, v84);
      goto LABEL_12;
    case 5u:
      v126 = *v64;
      v125 = *(v64 + 8);
      v128 = *(v64 + 16);
      v127 = *(v64 + 24);
      LOBYTE(v164) = 5;
      sub_26A282528();
      OUTLINED_FUNCTION_95_4();
      v164 = v126;
      v165 = v125;
      v166 = v128;
      v167[0] = v127;
      sub_26A28257C();
      v129 = v149;
      sub_26A425154();
      v130 = OUTLINED_FUNCTION_27_16();
      v131(v130, v129);
      OUTLINED_FUNCTION_53_11();
      v132(v52, v64);

      goto LABEL_10;
    case 6u:
      sub_26A280F24();
      LOBYTE(v164) = 6;
      sub_26A282484();
      sub_26A4250A4();
      OUTLINED_FUNCTION_37_10();
      sub_26A280EDC(v133, v134);
      sub_26A425154();
      v135 = *(v153 + 8);
      v136 = OUTLINED_FUNCTION_69();
      v137(v136);
      OUTLINED_FUNCTION_44_11();
      OUTLINED_FUNCTION_53_11();
      v138 = OUTLINED_FUNCTION_44();
      v139(v138);
      goto LABEL_12;
    case 7u:
      v106 = *v64;
      swift_projectBox();
      OUTLINED_FUNCTION_36_10();
      sub_26A2823D8();
      LOBYTE(v164) = 7;
      sub_26A282430();
      OUTLINED_FUNCTION_32_11();
      sub_26A4250A4();
      OUTLINED_FUNCTION_35_14();
      sub_26A280EDC(v107, v108);
      sub_26A425154();
      v109 = *(v158 + 8);
      v110 = OUTLINED_FUNCTION_65_4();
      v111(v110);
      OUTLINED_FUNCTION_34_10();
      sub_26A2824D8();
      OUTLINED_FUNCTION_53_11();
      v112 = OUTLINED_FUNCTION_103();
      v113(v112);

      goto LABEL_12;
    default:
      v72 = *v64;
      v71 = *(v64 + 8);
      LOBYTE(v164) = 0;
      sub_26A28281C();
      OUTLINED_FUNCTION_95_4();
      v164 = v72;
      v165 = v71;
      sub_26A282870();
      sub_26A425154();
      v73 = OUTLINED_FUNCTION_14_12(v167);
      v74(v73);
      OUTLINED_FUNCTION_53_11();
      v75(v52, v64);
LABEL_10:

LABEL_12:
      OUTLINED_FUNCTION_41_5();
      return;
  }
}

unint64_t sub_26A282384()
{
  result = qword_280371078;
  if (!qword_280371078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371078);
  }

  return result;
}

uint64_t sub_26A2823D8()
{
  OUTLINED_FUNCTION_90_5();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

unint64_t sub_26A282430()
{
  result = qword_280371080;
  if (!qword_280371080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371080);
  }

  return result;
}

unint64_t sub_26A282484()
{
  result = qword_280371090;
  if (!qword_280371090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371090);
  }

  return result;
}

uint64_t sub_26A2824D8()
{
  v1 = OUTLINED_FUNCTION_11_3();
  v3 = v2(v1);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(v0);
  return v0;
}

unint64_t sub_26A282528()
{
  result = qword_2803710A0;
  if (!qword_2803710A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803710A0);
  }

  return result;
}

unint64_t sub_26A28257C()
{
  result = qword_2803710A8;
  if (!qword_2803710A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803710A8);
  }

  return result;
}

unint64_t sub_26A2825D0()
{
  result = qword_2803710B0;
  if (!qword_2803710B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803710B0);
  }

  return result;
}

unint64_t sub_26A282624()
{
  result = qword_2803710B8;
  if (!qword_2803710B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803710B8);
  }

  return result;
}

unint64_t sub_26A282678()
{
  result = qword_2803710C0;
  if (!qword_2803710C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803710C0);
  }

  return result;
}

unint64_t sub_26A2826CC()
{
  result = qword_2803710C8;
  if (!qword_2803710C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803710C8);
  }

  return result;
}

unint64_t sub_26A282720()
{
  result = qword_2803710D0;
  if (!qword_2803710D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803710D0);
  }

  return result;
}

unint64_t sub_26A282774()
{
  result = qword_2803710D8;
  if (!qword_2803710D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803710D8);
  }

  return result;
}

unint64_t sub_26A2827C8()
{
  result = qword_2803710E0;
  if (!qword_2803710E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803710E0);
  }

  return result;
}

unint64_t sub_26A28281C()
{
  result = qword_2803710E8;
  if (!qword_2803710E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803710E8);
  }

  return result;
}

unint64_t sub_26A282870()
{
  result = qword_2803710F0;
  if (!qword_2803710F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803710F0);
  }

  return result;
}

void RFImage.Source.init(from:)()
{
  OUTLINED_FUNCTION_40_5();
  v3 = v2;
  v173 = v4;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803710F8, &qword_26A4355D0);
  OUTLINED_FUNCTION_24(v167);
  v174 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_42();
  v172 = v9;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371100, &qword_26A4355D8);
  OUTLINED_FUNCTION_24(v166);
  v160 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_42();
  v171 = v14;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371108, &qword_26A4355E0);
  OUTLINED_FUNCTION_24(v165);
  v159 = v15;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_42();
  v180 = v19;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371110, &qword_26A4355E8);
  OUTLINED_FUNCTION_24(v164);
  v158 = v20;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_42();
  v170 = v24;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371118, &qword_26A4355F0);
  OUTLINED_FUNCTION_24(v163);
  v157 = v25;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_42();
  v169 = v29;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371120, &qword_26A4355F8);
  OUTLINED_FUNCTION_24(v179);
  v156 = v30;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_42();
  v168 = v34;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371128, &qword_26A435600);
  OUTLINED_FUNCTION_24(v162);
  v155 = v35;
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_49(v39);
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371130, &qword_26A435608);
  OUTLINED_FUNCTION_24(v161);
  v154 = v40;
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_49(v44);
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371138, &unk_26A435610);
  OUTLINED_FUNCTION_24(v178);
  v176 = v45;
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_56();
  v175 = type metadata accessor for RFImage.Source(0);
  v49 = OUTLINED_FUNCTION_12(v175);
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v54);
  v56 = &v147 - v55;
  MEMORY[0x28223BE20](v57);
  v59 = &v147 - v58;
  MEMORY[0x28223BE20](v60);
  v62 = &v147 - v61;
  MEMORY[0x28223BE20](v63);
  v65 = &v147 - v64;
  MEMORY[0x28223BE20](v66);
  v68 = (&v147 - v67);
  v70 = v3[3];
  v69 = v3[4];
  v181 = v3;
  OUTLINED_FUNCTION_36_5(v3, v70);
  sub_26A282384();
  v177 = v1;
  OUTLINED_FUNCTION_50_10();
  sub_26A425574();
  if (v0)
  {
    goto LABEL_10;
  }

  v148 = v65;
  v149 = v62;
  v150 = v59;
  v151 = v56;
  v71 = v179;
  v187 = v68;
  v73 = v177;
  v72 = v178;
  v74 = sub_26A425074();
  sub_26A156098(v74, 0);
  if (v76 == v77 >> 1)
  {
    v78 = v175;
    v79 = v176;
LABEL_9:
    v87 = sub_26A424F34();
    swift_allocError();
    v89 = v88;
    v90 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D6D8, &qword_26A42F120) + 48);
    *v89 = v78;
    sub_26A425004();
    OUTLINED_FUNCTION_57_9();
    v91 = *MEMORY[0x277D84160];
    OUTLINED_FUNCTION_26_17(v87);
    (*(v92 + 104))(v89);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v79 + 8))(v73, v72);
LABEL_10:
    v93 = v181;
LABEL_11:
    __swift_destroy_boxed_opaque_existential_1(v93);
    OUTLINED_FUNCTION_41_5();
    return;
  }

  v147 = 0;
  if (v76 < (v77 >> 1))
  {
    v80 = *(v75 + v76);
    sub_26A156088(v76 + 1);
    v82 = v81;
    v84 = v83;
    swift_unknownObjectRelease();
    v85 = v82 == v84 >> 1;
    v86 = v174;
    if (v85)
    {
      switch(v80)
      {
        case 1:
          LOBYTE(v182) = 1;
          sub_26A282774();
          OUTLINED_FUNCTION_16_17();
          sub_26A28794C();
          OUTLINED_FUNCTION_65_10();
          sub_26A425054();
          OUTLINED_FUNCTION_51_10();
          swift_unknownObjectRelease();
          v128 = OUTLINED_FUNCTION_14_12(&v183);
          v129(v128);
          v130 = OUTLINED_FUNCTION_3_30();
          v131(v130);
          v132 = *(&v182 + 1);
          v133 = v185;
          v134 = v149;
          *v149 = v182;
          v134[1] = v132;
          v135 = v184;
          *(v134 + 1) = v183;
          *(v134 + 2) = v135;
          *(v134 + 48) = v133;
          OUTLINED_FUNCTION_64_7();
          goto LABEL_19;
        case 2:
          LOBYTE(v182) = 2;
          sub_26A2826CC();
          OUTLINED_FUNCTION_16_17();
          sub_26A2878F8();
          OUTLINED_FUNCTION_49_14();
          sub_26A425054();
          OUTLINED_FUNCTION_51_10();
          swift_unknownObjectRelease();
          v108 = OUTLINED_FUNCTION_4_25(&v183 + 8);
          v109(v108, v71);
          v110 = OUTLINED_FUNCTION_3_30();
          v111(v110);
          v112 = v183;
          v113 = v150;
          *v150 = v182;
          *(v113 + 16) = v112;
          OUTLINED_FUNCTION_64_7();
          goto LABEL_19;
        case 3:
          LOBYTE(v182) = 3;
          sub_26A282624();
          OUTLINED_FUNCTION_16_17();
          sub_26A2878A4();
          v95 = v163;
          OUTLINED_FUNCTION_49_14();
          sub_26A425054();
          OUTLINED_FUNCTION_51_10();
          swift_unknownObjectRelease();
          v114 = OUTLINED_FUNCTION_4_25(&v184);
          v115(v114, v95);
          v116 = OUTLINED_FUNCTION_3_30();
          v117(v116);
          v118 = v183;
          v119 = v151;
          *v151 = v182;
          v119[1] = v118;
          OUTLINED_FUNCTION_64_7();
          goto LABEL_19;
        case 4:
          LOBYTE(v182) = 4;
          sub_26A2825D0();
          OUTLINED_FUNCTION_16_17();
          sub_26A0E718C();
          v94 = v164;
          OUTLINED_FUNCTION_49_14();
          sub_26A425054();
          OUTLINED_FUNCTION_51_10();
          swift_unknownObjectRelease();
          v104 = OUTLINED_FUNCTION_4_25(&v184 + 8);
          v105(v104, v94);
          v106 = OUTLINED_FUNCTION_3_30();
          v107(v106);
          *v152 = v182;
          OUTLINED_FUNCTION_64_7();
          goto LABEL_19;
        case 5:
          LOBYTE(v182) = 5;
          sub_26A282528();
          OUTLINED_FUNCTION_16_17();
          sub_26A287850();
          v101 = v165;
          OUTLINED_FUNCTION_49_14();
          sub_26A425054();
          OUTLINED_FUNCTION_51_10();
          swift_unknownObjectRelease();
          v136 = OUTLINED_FUNCTION_4_25(&v185);
          v137(v136, v101);
          v138 = OUTLINED_FUNCTION_3_30();
          v139(v138);
          v140 = *(&v182 + 1);
          v141 = v153;
          *v153 = v182;
          v141[1] = v140;
          *(v141 + 1) = v183;
          OUTLINED_FUNCTION_64_7();
          goto LABEL_19;
        case 6:
          LOBYTE(v182) = 6;
          sub_26A282484();
          OUTLINED_FUNCTION_16_17();
          type metadata accessor for RFImage.Url(0);
          OUTLINED_FUNCTION_37_10();
          sub_26A280EDC(v102, v103);
          sub_26A425054();
          OUTLINED_FUNCTION_51_10();
          swift_unknownObjectRelease();
          v143 = OUTLINED_FUNCTION_14_12(&v186);
          v144(v143);
          v145 = OUTLINED_FUNCTION_3_30();
          v146(v145);
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_6_16();
          goto LABEL_20;
        case 7:
          LOBYTE(v182) = 7;
          sub_26A282430();
          v96 = v172;
          OUTLINED_FUNCTION_16_17();
          type metadata accessor for RFImage.BadgedImage(0);
          v97 = swift_allocBox();
          OUTLINED_FUNCTION_35_14();
          sub_26A280EDC(v98, v99);
          v100 = v167;
          sub_26A425054();
          OUTLINED_FUNCTION_51_10();
          swift_unknownObjectRelease();
          (*(v86 + 8))(v96, v100);
          v120 = OUTLINED_FUNCTION_3_30();
          v121(v120);
          *v187 = v97;
          swift_storeEnumTagMultiPayload();
          goto LABEL_21;
        default:
          LOBYTE(v182) = 0;
          sub_26A28281C();
          OUTLINED_FUNCTION_16_17();
          sub_26A2879A0();
          OUTLINED_FUNCTION_65_10();
          sub_26A425054();
          OUTLINED_FUNCTION_51_10();
          swift_unknownObjectRelease();
          v122 = OUTLINED_FUNCTION_14_12(&v182 + 8);
          v123(v122);
          v124 = OUTLINED_FUNCTION_3_30();
          v125(v124);
          v126 = *(&v182 + 1);
          v127 = v148;
          *v148 = v182;
          v127[1] = v126;
          OUTLINED_FUNCTION_64_7();
LABEL_19:
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_6_16();
LABEL_20:
          sub_26A280F24();
LABEL_21:
          v142 = v181;
          OUTLINED_FUNCTION_6_16();
          sub_26A280F24();
          v93 = v142;
          break;
      }

      goto LABEL_11;
    }

    v78 = v175;
    v79 = v176;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_26A283714(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6C646E7542707061 && a2 == 0xEB00000000644965)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26A425354();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_26A2837FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26A283714(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_26A283828(uint64_t a1)
{
  v2 = sub_26A2879F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A283864(uint64_t a1)
{
  v2 = sub_26A2879F4();

  return MEMORY[0x2821FE720](a1, v2);
}

void RFImage.AppIcon.encode(to:)()
{
  OUTLINED_FUNCTION_40_5();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371178, &qword_26A435620);
  OUTLINED_FUNCTION_24(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_141_0();
  v10 = *v0;
  v11 = v0[1];
  v12 = v3[4];
  OUTLINED_FUNCTION_36_5(v3, v3[3]);
  sub_26A2879F4();

  OUTLINED_FUNCTION_61_9();
  OUTLINED_FUNCTION_56_11();
  sub_26A425594();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371188, &qword_26A435628);
  OUTLINED_FUNCTION_1_30();
  sub_26A287A48(v13);
  sub_26A425154();

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_41_5();
}

void RFImage.AppIcon.init(from:)()
{
  OUTLINED_FUNCTION_40_5();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371198, &qword_26A435630);
  OUTLINED_FUNCTION_24(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_13_15();
  sub_26A2879F4();
  OUTLINED_FUNCTION_50_10();
  OUTLINED_FUNCTION_56_11();
  sub_26A425574();
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371188, &qword_26A435628);
    OUTLINED_FUNCTION_0_40();
    sub_26A287A48(v11);
    sub_26A425054();
    v12 = *(v7 + 8);
    v13 = OUTLINED_FUNCTION_126();
    v14(v13);
    *v4 = v15;
    v4[1] = v16;
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_41_5();
}

uint64_t sub_26A283B6C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_26A425354() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1752457584 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_26A425354();

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

uint64_t sub_26A283C2C(char a1)
{
  if (a1)
  {
    return 1752457584;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_26A283C58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26A283B6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26A283C80(uint64_t a1)
{
  v2 = sub_26A287AB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A283CBC(uint64_t a1)
{
  v2 = sub_26A287AB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A283CF8(uint64_t a1)
{
  v2 = sub_26A287B60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A283D34(uint64_t a1)
{
  v2 = sub_26A287B60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A283D70(uint64_t a1)
{
  v2 = sub_26A287B0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A283DAC(uint64_t a1)
{
  v2 = sub_26A287B0C();

  return MEMORY[0x2821FE720](a1, v2);
}

void RFImage.Bundle.Location.encode(to:)()
{
  OUTLINED_FUNCTION_40_5();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803711A8, &qword_26A435638);
  OUTLINED_FUNCTION_24(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_42();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803711B0, &qword_26A435640);
  OUTLINED_FUNCTION_24(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_87_5();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803711B8, &qword_26A435648);
  OUTLINED_FUNCTION_24(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_56();
  v24 = v0[1];
  v25 = *v0;
  v17 = *(v0 + 16);
  v18 = v2[4];
  OUTLINED_FUNCTION_36_5(v2, v2[3]);
  sub_26A287AB8();
  OUTLINED_FUNCTION_50_10();
  sub_26A425594();
  if (v17)
  {
    OUTLINED_FUNCTION_40_12();
    sub_26A287B0C();
    OUTLINED_FUNCTION_29_12();
    sub_26A4250A4();
    OUTLINED_FUNCTION_78_6();
    v19 = OUTLINED_FUNCTION_54_11();
  }

  else
  {
    sub_26A287B60();
    OUTLINED_FUNCTION_29_12();
    sub_26A4250A4();
    OUTLINED_FUNCTION_77_4();
    v19 = OUTLINED_FUNCTION_27_16();
  }

  v20(v19, v17);
  v21 = *(v13 + 8);
  v22 = OUTLINED_FUNCTION_126();
  v23(v22);
  OUTLINED_FUNCTION_41_5();
}

void RFImage.Bundle.Location.init(from:)()
{
  OUTLINED_FUNCTION_40_5();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803711D8, &qword_26A435650);
  OUTLINED_FUNCTION_24(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_131_3();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803711E0, &qword_26A435658);
  OUTLINED_FUNCTION_24(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_56();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803711E8, &qword_26A435660);
  OUTLINED_FUNCTION_24(v11);
  v55 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_141_0();
  v16 = *(v2 + 24);
  v17 = *(v2 + 32);
  v18 = OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_36_5(v18, v19);
  sub_26A287AB8();
  OUTLINED_FUNCTION_61_9();
  sub_26A425574();
  if (!v0)
  {
    v20 = OUTLINED_FUNCTION_76_6();
    sub_26A156098(v20, 0);
    if (v22 == v21 >> 1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_62_9();
    if (v25 == v26)
    {
      __break(1u);
      return;
    }

    v27 = OUTLINED_FUNCTION_91_4(v23, v24);
    sub_26A156088(v27);
    OUTLINED_FUNCTION_93_3();
    if (v17 >> 1)
    {
LABEL_9:
      v31 = sub_26A424F34();
      swift_allocError();
      v33 = v32;
      v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D6D8, &qword_26A42F120) + 48);
      *v33 = &type metadata for RFImage.Bundle.Location;
      sub_26A425004();
      OUTLINED_FUNCTION_57_9();
      v35 = *MEMORY[0x277D84160];
      OUTLINED_FUNCTION_26_17(v31);
      (*(v36 + 104))(v33);
      swift_willThrow();
      swift_unknownObjectRelease();
      v37 = OUTLINED_FUNCTION_23_19();
      v38(v37, v11);
      v2 = 0;
    }

    else
    {
      v28 = v11;
      v29 = v2;
      if (v2)
      {
        OUTLINED_FUNCTION_40_12();
        sub_26A287B0C();
        OUTLINED_FUNCTION_32_11();
        sub_26A424FF4();
        if (!v53)
        {
          v30 = v55;
          v42 = OUTLINED_FUNCTION_71_5();
          v44 = v43;
          swift_unknownObjectRelease();
          v45 = OUTLINED_FUNCTION_25_17();
          v46(v45);
          v29 = v2;
LABEL_15:
          v50 = *(v30 + 8);
          v51 = OUTLINED_FUNCTION_103();
          v52(v51);
          *v2 = v42;
          *(v2 + 8) = v44;
          *(v2 + 16) = v29;
          __swift_destroy_boxed_opaque_existential_1(0);
          goto LABEL_13;
        }
      }

      else
      {
        sub_26A287B60();
        OUTLINED_FUNCTION_32_11();
        sub_26A424FF4();
        if (!v53)
        {
          v41 = OUTLINED_FUNCTION_82_7();
          v44 = v47;
          v54 = v41;
          swift_unknownObjectRelease();
          v48 = OUTLINED_FUNCTION_24_20();
          v49(v48);
          v42 = v54;
          v30 = v55;
          goto LABEL_15;
        }
      }

      v39 = OUTLINED_FUNCTION_23_19();
      v40(v39, v28);
      swift_unknownObjectRelease();
      v2 = 0;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
LABEL_13:
  OUTLINED_FUNCTION_73_5();
  OUTLINED_FUNCTION_41_5();
}

uint64_t sub_26A284490(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E746867696CLL && a2 == 0xE900000000000065;
  if (v4 || (sub_26A425354() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656D614E6B726164 && a2 == 0xE800000000000000;
    if (v6 || (sub_26A425354() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_26A425354();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_26A2845B0(char a1)
{
  if (!a1)
  {
    return 0x6D614E746867696CLL;
  }

  if (a1 == 1)
  {
    return 0x656D614E6B726164;
  }

  return 0x6E6F697461636F6CLL;
}

uint64_t sub_26A284644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26A284490(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26A28466C(uint64_t a1)
{
  v2 = sub_26A287BB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A2846A8(uint64_t a1)
{
  v2 = sub_26A287BB4();

  return MEMORY[0x2821FE720](a1, v2);
}

void RFImage.Bundle.encode(to:)()
{
  OUTLINED_FUNCTION_40_5();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803711F0, &qword_26A435668);
  OUTLINED_FUNCTION_24(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_59_7();
  v10 = *v0;
  v11 = v0[1];
  v21 = v0[2];
  v22 = v0[3];
  v19 = v0[5];
  v20 = v0[4];
  v23 = *(v0 + 48);
  v12 = v3[4];
  OUTLINED_FUNCTION_36_5(v3, v3[3]);
  sub_26A287BB4();

  OUTLINED_FUNCTION_52_11();
  sub_26A425594();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371188, &qword_26A435628);
  OUTLINED_FUNCTION_1_30();
  sub_26A287A48(v13);
  OUTLINED_FUNCTION_11_20();
  sub_26A425154();

  if (!v1)
  {
    OUTLINED_FUNCTION_40_12();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371200, &qword_26A435670);
    OUTLINED_FUNCTION_1_30();
    sub_26A287D74(v14);
    OUTLINED_FUNCTION_11_20();
    sub_26A425154();

    sub_26A0D6660();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371228, &qword_26A435680);
    OUTLINED_FUNCTION_1_30();
    sub_26A287C6C(v15);
    OUTLINED_FUNCTION_11_20();
    sub_26A425154();
    sub_26A0D6740();
  }

  v16 = *(v6 + 8);
  v17 = OUTLINED_FUNCTION_44();
  v18(v17);
  OUTLINED_FUNCTION_41_5();
}

void RFImage.Bundle.init(from:)()
{
  OUTLINED_FUNCTION_40_5();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371248, &qword_26A435688);
  OUTLINED_FUNCTION_24(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_13_15();
  sub_26A287BB4();
  OUTLINED_FUNCTION_48_13();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371188, &qword_26A435628);
    OUTLINED_FUNCTION_0_40();
    sub_26A287A48(v9);
    OUTLINED_FUNCTION_7_15();
    sub_26A425054();
    OUTLINED_FUNCTION_40_12();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371200, &qword_26A435670);
    OUTLINED_FUNCTION_0_40();
    sub_26A287D74(v10);
    OUTLINED_FUNCTION_7_15();
    sub_26A425024();
    v11 = v17;
    if (v17 == 1)
    {
      sub_26A287E1C(v16, 1);
      v15 = 0;
      v11 = 0;
    }

    else
    {
      v15 = v16;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371228, &qword_26A435680);
    OUTLINED_FUNCTION_0_40();
    sub_26A287C6C(v12);
    OUTLINED_FUNCTION_7_15();
    sub_26A425054();
    v13 = OUTLINED_FUNCTION_2_18();
    v14(v13);
    *v4 = v16;
    *(v4 + 8) = v17;
    *(v4 + 16) = v15;
    *(v4 + 24) = v11;
    *(v4 + 32) = v16;
    *(v4 + 40) = v17;
    *(v4 + 48) = v18;

    OUTLINED_FUNCTION_92_3();
    sub_26A0D6660();
    __swift_destroy_boxed_opaque_existential_1(v2);

    OUTLINED_FUNCTION_92_3();
    sub_26A0D6740();
  }

  OUTLINED_FUNCTION_73_5();
  OUTLINED_FUNCTION_41_5();
}

uint64_t sub_26A284BB8(uint64_t a1, uint64_t a2)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26A425354();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_26A284C28(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726174617661 && a2 == 0xE600000000000000;
  if (v4 || (sub_26A425354() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D6172676F6E6F6DLL && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_26A425354();

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

uint64_t sub_26A284CEC(char a1)
{
  if (a1)
  {
    return 0x6D6172676F6E6F6DLL;
  }

  else
  {
    return 0x726174617661;
  }
}

uint64_t sub_26A284D20(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x736C616974696E69 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26A425354();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_26A284DE0(uint64_t a1)
{
  v2 = sub_26A287ED8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A284E1C(uint64_t a1)
{
  v2 = sub_26A287ED8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A284E60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26A284C28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26A284E88(uint64_t a1)
{
  v2 = sub_26A287E30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A284EC4(uint64_t a1)
{
  v2 = sub_26A287E30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A284F04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26A284D20(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_26A284F30(uint64_t a1)
{
  v2 = sub_26A287E84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A284F6C(uint64_t a1)
{
  v2 = sub_26A287E84();

  return MEMORY[0x2821FE720](a1, v2);
}

void RFImage.Contact.Content.encode(to:)()
{
  OUTLINED_FUNCTION_40_5();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371260, &qword_26A435690);
  OUTLINED_FUNCTION_24(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_42();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371268, &qword_26A435698);
  OUTLINED_FUNCTION_24(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_87_5();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371270, &qword_26A4356A0);
  OUTLINED_FUNCTION_24(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_56();
  v24 = v0[1];
  v25 = *v0;
  v17 = *(v0 + 16);
  v18 = v2[4];
  OUTLINED_FUNCTION_36_5(v2, v2[3]);
  sub_26A287E30();
  OUTLINED_FUNCTION_50_10();
  sub_26A425594();
  if (v17)
  {
    OUTLINED_FUNCTION_40_12();
    sub_26A287E84();
    OUTLINED_FUNCTION_29_12();
    sub_26A4250A4();
    OUTLINED_FUNCTION_78_6();
    v19 = OUTLINED_FUNCTION_54_11();
  }

  else
  {
    sub_26A287ED8();
    OUTLINED_FUNCTION_29_12();
    sub_26A4250A4();
    OUTLINED_FUNCTION_77_4();
    v19 = OUTLINED_FUNCTION_27_16();
  }

  v20(v19, v17);
  v21 = *(v13 + 8);
  v22 = OUTLINED_FUNCTION_126();
  v23(v22);
  OUTLINED_FUNCTION_41_5();
}

void RFImage.Contact.Content.init(from:)()
{
  OUTLINED_FUNCTION_40_5();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371290, &qword_26A4356A8);
  OUTLINED_FUNCTION_24(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_131_3();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371298, &qword_26A4356B0);
  OUTLINED_FUNCTION_24(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_56();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803712A0, &qword_26A4356B8);
  OUTLINED_FUNCTION_24(v11);
  v55 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_141_0();
  v16 = *(v2 + 24);
  v17 = *(v2 + 32);
  v18 = OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_36_5(v18, v19);
  sub_26A287E30();
  OUTLINED_FUNCTION_61_9();
  sub_26A425574();
  if (!v0)
  {
    v20 = OUTLINED_FUNCTION_76_6();
    sub_26A156098(v20, 0);
    if (v22 == v21 >> 1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_62_9();
    if (v25 == v26)
    {
      __break(1u);
      return;
    }

    v27 = OUTLINED_FUNCTION_91_4(v23, v24);
    sub_26A156088(v27);
    OUTLINED_FUNCTION_93_3();
    if (v17 >> 1)
    {
LABEL_9:
      v31 = sub_26A424F34();
      swift_allocError();
      v33 = v32;
      v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D6D8, &qword_26A42F120) + 48);
      *v33 = &type metadata for RFImage.Contact.Content;
      sub_26A425004();
      OUTLINED_FUNCTION_57_9();
      v35 = *MEMORY[0x277D84160];
      OUTLINED_FUNCTION_26_17(v31);
      (*(v36 + 104))(v33);
      swift_willThrow();
      swift_unknownObjectRelease();
      v37 = OUTLINED_FUNCTION_23_19();
      v38(v37, v11);
      v2 = 0;
    }

    else
    {
      v28 = v11;
      v29 = v2;
      if (v2)
      {
        OUTLINED_FUNCTION_40_12();
        sub_26A287E84();
        OUTLINED_FUNCTION_32_11();
        sub_26A424FF4();
        if (!v53)
        {
          v30 = v55;
          v42 = OUTLINED_FUNCTION_71_5();
          v44 = v43;
          swift_unknownObjectRelease();
          v45 = OUTLINED_FUNCTION_25_17();
          v46(v45);
          v29 = v2;
LABEL_15:
          v50 = *(v30 + 8);
          v51 = OUTLINED_FUNCTION_103();
          v52(v51);
          *v2 = v42;
          *(v2 + 8) = v44;
          *(v2 + 16) = v29;
          __swift_destroy_boxed_opaque_existential_1(0);
          goto LABEL_13;
        }
      }

      else
      {
        sub_26A287ED8();
        OUTLINED_FUNCTION_32_11();
        sub_26A424FF4();
        if (!v53)
        {
          v41 = OUTLINED_FUNCTION_82_7();
          v44 = v47;
          v54 = v41;
          swift_unknownObjectRelease();
          v48 = OUTLINED_FUNCTION_24_20();
          v49(v48);
          v42 = v54;
          v30 = v55;
          goto LABEL_15;
        }
      }

      v39 = OUTLINED_FUNCTION_23_19();
      v40(v39, v28);
      swift_unknownObjectRelease();
      v2 = 0;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
LABEL_13:
  OUTLINED_FUNCTION_73_5();
  OUTLINED_FUNCTION_41_5();
}

uint64_t sub_26A285650(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26A425354();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_26A285714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26A285650(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_26A285740(uint64_t a1)
{
  v2 = sub_26A287F2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A28577C(uint64_t a1)
{
  v2 = sub_26A287F2C();

  return MEMORY[0x2821FE720](a1, v2);
}

void RFImage.Contact.encode(to:)()
{
  OUTLINED_FUNCTION_40_5();
  v2 = v1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803712A8, &qword_26A4356C0);
  OUTLINED_FUNCTION_24(v15);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_141_0();
  v8 = *v0;
  v9 = v0[1];
  v10 = *(v0 + 16);
  v11 = v2[4];
  OUTLINED_FUNCTION_36_5(v2, v2[3]);
  sub_26A0D6660();
  sub_26A287F2C();
  OUTLINED_FUNCTION_61_9();
  sub_26A425594();
  sub_26A287F80();
  sub_26A425154();
  sub_26A0D6740();
  v12 = *(v4 + 8);
  v13 = OUTLINED_FUNCTION_103();
  v14(v13);
  OUTLINED_FUNCTION_41_5();
}

void RFImage.Contact.init(from:)()
{
  OUTLINED_FUNCTION_40_5();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803712C0, &qword_26A4356C8);
  OUTLINED_FUNCTION_24(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_13_15();
  sub_26A287F2C();
  OUTLINED_FUNCTION_50_10();
  OUTLINED_FUNCTION_56_11();
  sub_26A425574();
  if (!v0)
  {
    sub_26A287FD4();
    OUTLINED_FUNCTION_29_12();
    sub_26A425054();
    v11 = *(v7 + 8);
    v12 = OUTLINED_FUNCTION_126();
    v13(v12);
    *v4 = v14;
    *(v4 + 16) = v15;
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_41_5();
}

uint64_t sub_26A285A58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746867696CLL && a2 == 0xE900000000000061;
  if (v4 || (sub_26A425354() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x617461446B726164 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_26A425354();

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

uint64_t sub_26A285B28(char a1)
{
  if (a1)
  {
    return 0x617461446B726164;
  }

  else
  {
    return 0x746144746867696CLL;
  }
}

uint64_t sub_26A285B6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26A285A58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26A285B94(uint64_t a1)
{
  v2 = sub_26A288028();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A285BD0(uint64_t a1)
{
  v2 = sub_26A288028();

  return MEMORY[0x2821FE720](a1, v2);
}

void RFImage.PngData.encode(to:)()
{
  OUTLINED_FUNCTION_40_5();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803712D0, &qword_26A4356D0);
  OUTLINED_FUNCTION_24(v4);
  v19 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_59_7();
  v9 = *v0;
  v10 = v0[1];
  v17 = v0[3];
  v18 = v0[2];
  v11 = v3[4];
  OUTLINED_FUNCTION_36_5(v3, v3[3]);
  sub_26A0E45C0(v9, v10);
  sub_26A288028();
  sub_26A425594();
  sub_26A0E70D4();
  OUTLINED_FUNCTION_63_8();
  sub_26A425154();
  sub_26A0E4784(v9, v10);
  if (!v1)
  {
    OUTLINED_FUNCTION_40_12();
    sub_26A280558(v12, v13);
    OUTLINED_FUNCTION_63_8();
    sub_26A4250F4();
    sub_26A10E794(v18, v17);
  }

  v14 = *(v19 + 8);
  v15 = OUTLINED_FUNCTION_44();
  v16(v15);
  OUTLINED_FUNCTION_41_5();
}

void RFImage.PngData.init(from:)()
{
  OUTLINED_FUNCTION_40_5();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803712E0, &qword_26A4356D8);
  OUTLINED_FUNCTION_24(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_13_15();
  sub_26A288028();
  OUTLINED_FUNCTION_48_13();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
    v16 = 0;
    v17 = 0xF000000000000000;
  }

  else
  {
    sub_26A0E718C();
    OUTLINED_FUNCTION_55_9();
    sub_26A425054();
    OUTLINED_FUNCTION_40_12();
    OUTLINED_FUNCTION_55_9();
    sub_26A425024();
    v11 = *(v7 + 8);
    v12 = OUTLINED_FUNCTION_65_4();
    v13(v12);
    sub_26A10E794(0, 0xF000000000000000);
    *v4 = v18;
    v4[1] = v19;
    v4[2] = v18;
    v4[3] = v19;
    sub_26A0E45C0(v18, v19);
    v14 = OUTLINED_FUNCTION_92_3();
    sub_26A280558(v14, v15);
    __swift_destroy_boxed_opaque_existential_1(v2);
    sub_26A0E4784(v18, v19);
    v16 = OUTLINED_FUNCTION_92_3();
  }

  sub_26A10E794(v16, v17);
  OUTLINED_FUNCTION_73_5();
  OUTLINED_FUNCTION_41_5();
}

uint64_t sub_26A285F58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E746867696CLL && a2 == 0xE900000000000065;
  if (v4 || (sub_26A425354() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D614E6B726164 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_26A425354();

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

uint64_t sub_26A286028(char a1)
{
  if (a1)
  {
    return 0x656D614E6B726164;
  }

  else
  {
    return 0x6D614E746867696CLL;
  }
}

uint64_t sub_26A28606C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26A285F58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26A286094(uint64_t a1)
{
  v2 = sub_26A28807C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A2860D0(uint64_t a1)
{
  v2 = sub_26A28807C();

  return MEMORY[0x2821FE720](a1, v2);
}

void RFImage.Symbol.encode(to:)()
{
  OUTLINED_FUNCTION_40_5();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803712E8, &qword_26A4356E0);
  OUTLINED_FUNCTION_24(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_59_7();
  v10 = *v0;
  v11 = v0[1];
  v18 = v0[2];
  v19 = v0[3];
  v12 = v3[4];
  OUTLINED_FUNCTION_36_5(v3, v3[3]);
  sub_26A28807C();

  sub_26A425594();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371188, &qword_26A435628);
  OUTLINED_FUNCTION_1_30();
  sub_26A287A48(v13);
  OUTLINED_FUNCTION_11_20();
  sub_26A425154();

  if (!v1)
  {
    OUTLINED_FUNCTION_40_12();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371200, &qword_26A435670);
    OUTLINED_FUNCTION_1_30();
    sub_26A287D74(v14);
    OUTLINED_FUNCTION_11_20();
    sub_26A425154();
  }

  v15 = *(v6 + 8);
  v16 = OUTLINED_FUNCTION_44();
  v17(v16);
  OUTLINED_FUNCTION_41_5();
}

void RFImage.Symbol.init(from:)()
{
  OUTLINED_FUNCTION_40_5();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803712F8, &qword_26A4356E8);
  OUTLINED_FUNCTION_24(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_13_15();
  sub_26A28807C();
  OUTLINED_FUNCTION_48_13();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371188, &qword_26A435628);
    OUTLINED_FUNCTION_0_40();
    sub_26A287A48(v9);
    OUTLINED_FUNCTION_7_15();
    sub_26A425054();
    OUTLINED_FUNCTION_40_12();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371200, &qword_26A435670);
    OUTLINED_FUNCTION_0_40();
    sub_26A287D74(v10);
    OUTLINED_FUNCTION_7_15();
    sub_26A425024();
    v11 = OUTLINED_FUNCTION_2_18();
    v12(v11);
    v14 = v15;
    v13 = v16;
    if (v16 == 1)
    {
      sub_26A287E1C(v15, 1);
      v14 = 0;
      v13 = 0;
    }

    *v4 = v15;
    v4[1] = v16;
    v4[2] = v14;
    v4[3] = v13;

    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  OUTLINED_FUNCTION_73_5();
  OUTLINED_FUNCTION_41_5();
}

uint64_t RFImage.Url.lightSource.getter()
{
  v0 = sub_26A424614();
  OUTLINED_FUNCTION_12(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_175();

  return v4(v3);
}

uint64_t RFImage.Url.lightSource.setter(uint64_t a1)
{
  v2 = sub_26A424614();
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_84_5();

  return v6(v5, a1);
}

uint64_t RFImage.Url.darkSource.getter()
{
  v2 = OUTLINED_FUNCTION_70_5();
  v3 = v1 + *(type metadata accessor for RFImage.Url(v2) + 20);

  return sub_26A280714(v3, v0);
}

uint64_t RFImage.Url.darkSource.setter()
{
  v2 = OUTLINED_FUNCTION_11_3();
  v3 = v1 + *(type metadata accessor for RFImage.Url(v2) + 20);

  return sub_26A2807A4(v0, v3);
}

uint64_t (*RFImage.Url.darkSource.modify())()
{
  v0 = OUTLINED_FUNCTION_11_3();
  v1 = *(type metadata accessor for RFImage.Url(v0) + 20);
  return nullsub_1;
}

BOOL static RFImage.Url.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_26A424614();
  v6 = OUTLINED_FUNCTION_24(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D500, &qword_26A435570);
  OUTLINED_FUNCTION_41(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_59_7();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371300, &qword_26A4356F0);
  OUTLINED_FUNCTION_12(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v21);
  v23 = &v33 - v22;
  OUTLINED_FUNCTION_69();
  if ((sub_26A4245F4() & 1) == 0)
  {
    return 0;
  }

  v24 = *(type metadata accessor for RFImage.Url(0) + 20);
  v25 = *(v18 + 48);
  sub_26A280714(a1 + v24, v23);
  sub_26A280714(a2 + v24, &v23[v25]);
  OUTLINED_FUNCTION_9(v23);
  if (v26)
  {
    OUTLINED_FUNCTION_9(&v23[v25]);
    if (v26)
    {
      sub_26A0E48F0(v23, &qword_28036D500, &qword_26A435570);
      return 1;
    }

    goto LABEL_10;
  }

  sub_26A280714(v23, v2);
  OUTLINED_FUNCTION_9(&v23[v25]);
  if (v26)
  {
    (*(v8 + 8))(v2, v5);
LABEL_10:
    sub_26A0E48F0(v23, &qword_280371300, &qword_26A4356F0);
    return 0;
  }

  (*(v8 + 32))(v13, &v23[v25], v5);
  OUTLINED_FUNCTION_4_26();
  sub_26A280EDC(v28, v29);
  OUTLINED_FUNCTION_44();
  v30 = sub_26A424B64();
  v31 = *(v8 + 8);
  v32 = OUTLINED_FUNCTION_175();
  v31(v32);
  (v31)(v2, v5);
  sub_26A0E48F0(v23, &qword_28036D500, &qword_26A435570);
  return (v30 & 1) != 0;
}

uint64_t sub_26A2868F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x756F53746867696CLL && a2 == 0xEB00000000656372;
  if (v4 || (sub_26A425354() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72756F536B726164 && a2 == 0xEA00000000006563)
  {

    return 1;
  }

  else
  {
    v7 = sub_26A425354();

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

uint64_t sub_26A2869CC(char a1)
{
  if (a1)
  {
    return 0x72756F536B726164;
  }

  else
  {
    return 0x756F53746867696CLL;
  }
}

uint64_t sub_26A286A18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26A2868F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26A286A40(uint64_t a1)
{
  v2 = sub_26A2880D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A286A7C(uint64_t a1)
{
  v2 = sub_26A2880D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RFImage.Url.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371310, &qword_26A4356F8);
  OUTLINED_FUNCTION_24(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_141_0();
  v10 = a1[4];
  OUTLINED_FUNCTION_36_5(a1, a1[3]);
  sub_26A2880D0();
  OUTLINED_FUNCTION_61_9();
  OUTLINED_FUNCTION_52_11();
  sub_26A425594();
  sub_26A424614();
  OUTLINED_FUNCTION_4_26();
  sub_26A280EDC(v11, v12);
  OUTLINED_FUNCTION_12_16();
  sub_26A425154();
  if (!v1)
  {
    v13 = *(type metadata accessor for RFImage.Url(0) + 20);
    OUTLINED_FUNCTION_12_16();
    sub_26A4250F4();
  }

  return (*(v6 + 8))(v2, v4);
}

uint64_t RFImage.Url.hash(into:)()
{
  v2 = sub_26A424614();
  v3 = OUTLINED_FUNCTION_24(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D500, &qword_26A435570);
  OUTLINED_FUNCTION_41(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_141_0();
  OUTLINED_FUNCTION_4_26();
  sub_26A280EDC(v15, v16);
  sub_26A424B44();
  v17 = type metadata accessor for RFImage.Url(0);
  sub_26A280714(v0 + *(v17 + 20), v1);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    return sub_26A425524();
  }

  (*(v5 + 32))(v10, v1, v2);
  sub_26A425524();
  sub_26A424B44();
  return (*(v5 + 8))(v10, v2);
}

uint64_t RFImage.Url.hashValue.getter()
{
  OUTLINED_FUNCTION_4_0();
  RFImage.Url.hash(into:)();
  return sub_26A425554();
}

void RFImage.Url.init(from:)()
{
  OUTLINED_FUNCTION_40_5();
  v43 = v0;
  v2 = v1;
  v39 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D500, &qword_26A435570);
  OUTLINED_FUNCTION_41(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  v9 = &v39 - v8;
  v10 = sub_26A424614();
  v11 = OUTLINED_FUNCTION_24(v10);
  v40 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_18();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371328, &qword_26A435700);
  v19 = OUTLINED_FUNCTION_24(v18);
  v41 = v20;
  v42 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_47_9();
  v24 = type metadata accessor for RFImage.Url(0);
  v25 = OUTLINED_FUNCTION_41(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_18();
  v30 = v29 - v28;
  v44 = *(v31 + 28);
  __swift_storeEnumTagSinglePayload(v29 - v28 + v44, 1, 1, v10);
  v32 = v2[4];
  OUTLINED_FUNCTION_36_5(v2, v2[3]);
  sub_26A2880D0();
  OUTLINED_FUNCTION_86_6();
  v33 = v43;
  sub_26A425574();
  if (v33)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
    sub_26A0E48F0(v30 + v44, &qword_28036D500, &qword_26A435570);
  }

  else
  {
    v43 = v9;
    OUTLINED_FUNCTION_4_26();
    sub_26A280EDC(v34, v35);
    OUTLINED_FUNCTION_85_4();
    sub_26A425054();
    (*(v40 + 32))(v30, v17, v10);
    v36 = v43;
    OUTLINED_FUNCTION_85_4();
    sub_26A425024();
    v37 = OUTLINED_FUNCTION_41_11();
    v38(v37);
    sub_26A2807A4(v36, v30 + v44);
    sub_26A2823D8();
    __swift_destroy_boxed_opaque_existential_1(v2);
    OUTLINED_FUNCTION_44_11();
  }

  OUTLINED_FUNCTION_41_5();
}

uint64_t sub_26A287148(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6567616D69 && a2 == 0xE500000000000000;
  if (v4 || (sub_26A425354() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6567646162 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_26A425354();

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

uint64_t sub_26A287210(char a1)
{
  if (a1)
  {
    return 0x6567646162;
  }

  else
  {
    return 0x6567616D69;
  }
}

uint64_t sub_26A287270()
{
  sub_26A425504();
  RFImage.Url.hash(into:)();
  return sub_26A425554();
}

uint64_t sub_26A2872B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26A287148(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26A2872E0(uint64_t a1)
{
  v2 = sub_26A288124();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A28731C(uint64_t a1)
{
  v2 = sub_26A288124();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RFImage.BadgedImage.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371338, &qword_26A435708);
  OUTLINED_FUNCTION_24(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_141_0();
  v10 = a1[4];
  OUTLINED_FUNCTION_36_5(a1, a1[3]);
  sub_26A288124();
  OUTLINED_FUNCTION_61_9();
  OUTLINED_FUNCTION_52_11();
  sub_26A425594();
  type metadata accessor for RFImage.Source(0);
  OUTLINED_FUNCTION_5_23();
  sub_26A280EDC(v11, v12);
  OUTLINED_FUNCTION_12_16();
  sub_26A425154();
  if (!v1)
  {
    v13 = *(type metadata accessor for RFImage.BadgedImage(0) + 20);
    OUTLINED_FUNCTION_12_16();
    sub_26A425154();
  }

  return (*(v6 + 8))(v2, v4);
}

void RFImage.BadgedImage.init(from:)()
{
  OUTLINED_FUNCTION_40_5();
  v3 = v2;
  v27 = v4;
  v31 = type metadata accessor for RFImage.Source(0);
  v5 = OUTLINED_FUNCTION_12(v31);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  MEMORY[0x28223BE20](v8);
  v29 = &v24 - v9;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371348, &qword_26A435710);
  OUTLINED_FUNCTION_24(v30);
  v28 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_47_9();
  v14 = type metadata accessor for RFImage.BadgedImage(0);
  v15 = OUTLINED_FUNCTION_12(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_87_5();
  v18 = v3[4];
  OUTLINED_FUNCTION_36_5(v3, v3[3]);
  sub_26A288124();
  OUTLINED_FUNCTION_86_6();
  sub_26A425574();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    v25 = v14;
    v26 = v1;
    OUTLINED_FUNCTION_5_23();
    sub_26A280EDC(v19, v20);
    sub_26A425054();
    sub_26A280F24();
    sub_26A425054();
    v21 = OUTLINED_FUNCTION_83_6();
    v22(v21);
    v23 = *(v25 + 20);
    OUTLINED_FUNCTION_6_16();
    sub_26A280F24();
    OUTLINED_FUNCTION_36_10();
    sub_26A2823D8();
    __swift_destroy_boxed_opaque_existential_1(v3);
    OUTLINED_FUNCTION_34_10();
    sub_26A2824D8();
  }

  OUTLINED_FUNCTION_41_5();
}

uint64_t RFImage.Style.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x26D65C340](v1);
  return sub_26A425554();
}

unint64_t sub_26A287850()
{
  result = qword_280371150;
  if (!qword_280371150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371150);
  }

  return result;
}

unint64_t sub_26A2878A4()
{
  result = qword_280371158;
  if (!qword_280371158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371158);
  }

  return result;
}

unint64_t sub_26A2878F8()
{
  result = qword_280371160;
  if (!qword_280371160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371160);
  }

  return result;
}

unint64_t sub_26A28794C()
{
  result = qword_280371168;
  if (!qword_280371168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371168);
  }

  return result;
}

unint64_t sub_26A2879A0()
{
  result = qword_280371170;
  if (!qword_280371170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371170);
  }

  return result;
}

unint64_t sub_26A2879F4()
{
  result = qword_280371180;
  if (!qword_280371180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371180);
  }

  return result;
}

uint64_t sub_26A287A48(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280371188, &qword_26A435628);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26A287AB8()
{
  result = qword_2803711C0;
  if (!qword_2803711C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803711C0);
  }

  return result;
}

unint64_t sub_26A287B0C()
{
  result = qword_2803711C8;
  if (!qword_2803711C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803711C8);
  }

  return result;
}

unint64_t sub_26A287B60()
{
  result = qword_2803711D0;
  if (!qword_2803711D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803711D0);
  }

  return result;
}

unint64_t sub_26A287BB4()
{
  result = qword_2803711F8;
  if (!qword_2803711F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803711F8);
  }

  return result;
}

unint64_t sub_26A287C08(uint64_t a1)
{
  result = OUTLINED_FUNCTION_68_5(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280371218, &qword_26A435678);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_26A287C6C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_68_5(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280371228, &qword_26A435680);
    sub_26A287CCC();
    sub_26A287D20();
    result = OUTLINED_FUNCTION_94_4();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_26A287CCC()
{
  result = qword_280371238;
  if (!qword_280371238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371238);
  }

  return result;
}

unint64_t sub_26A287D20()
{
  result = qword_280371240;
  if (!qword_280371240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371240);
  }

  return result;
}

unint64_t sub_26A287D74(uint64_t a1)
{
  result = OUTLINED_FUNCTION_68_5(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280371200, &qword_26A435670);
    sub_26A287C08(&unk_280371210);
    sub_26A287C08(&unk_280371220);
    result = OUTLINED_FUNCTION_94_4();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_26A287E1C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_26A287E30()
{
  result = qword_280371278;
  if (!qword_280371278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371278);
  }

  return result;
}

unint64_t sub_26A287E84()
{
  result = qword_280371280;
  if (!qword_280371280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371280);
  }

  return result;
}

unint64_t sub_26A287ED8()
{
  result = qword_280371288;
  if (!qword_280371288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371288);
  }

  return result;
}

unint64_t sub_26A287F2C()
{
  result = qword_2803712B0;
  if (!qword_2803712B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803712B0);
  }

  return result;
}

unint64_t sub_26A287F80()
{
  result = qword_2803712B8;
  if (!qword_2803712B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803712B8);
  }

  return result;
}

unint64_t sub_26A287FD4()
{
  result = qword_2803712C8;
  if (!qword_2803712C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803712C8);
  }

  return result;
}

unint64_t sub_26A288028()
{
  result = qword_2803712D8;
  if (!qword_2803712D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803712D8);
  }

  return result;
}

unint64_t sub_26A28807C()
{
  result = qword_2803712F0;
  if (!qword_2803712F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803712F0);
  }

  return result;
}

unint64_t sub_26A2880D0()
{
  result = qword_280371318;
  if (!qword_280371318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371318);
  }

  return result;
}

unint64_t sub_26A288124()
{
  result = qword_280371340;
  if (!qword_280371340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371340);
  }

  return result;
}

unint64_t sub_26A28817C()
{
  result = qword_2815793B8;
  if (!qword_2815793B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815793B8);
  }

  return result;
}

unint64_t sub_26A28821C()
{
  result = qword_280371358;
  if (!qword_280371358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371358);
  }

  return result;
}

uint64_t sub_26A288298()
{
  result = type metadata accessor for RFImage.Source(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A288314()
{
  result = type metadata accessor for RFImage.Url(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A2883BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      return OUTLINED_FUNCTION_80_5(result, 1);
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_26A288420(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_26A288460(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26A2884E0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_26A288520(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_80_5(result, -a2);
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26A288598(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xD && *(a1 + 32))
    {
      v2 = *a1 + 12;
    }

    else
    {
      v2 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
      if (v2 >= 0xC)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_26A2885E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_26A288644(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_26A288684(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_26A2886FC()
{
  sub_26A424614();
  if (v0 <= 0x3F)
  {
    sub_26A288780();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26A288780()
{
  if (!qword_280371390)
  {
    sub_26A424614();
    v0 = sub_26A424E44();
    if (!v1)
    {
      atomic_store(v0, &qword_280371390);
    }
  }
}

uint64_t sub_26A288800()
{
  result = type metadata accessor for RFImage.Source(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RFImage.Style(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 46 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 46) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xD2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xD1)
  {
    v6 = ((a2 - 210) >> 8) + 1;
    *result = a2 + 46;
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
          *result = a2 + 46;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RFImage.Bundle.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_26A288AA4(_BYTE *result, unsigned int a2, unsigned int a3)
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