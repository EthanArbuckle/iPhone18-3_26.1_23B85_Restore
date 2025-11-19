uint64_t sub_1B95C16F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DA8, &qword_1B96DFD10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Searchfoundation_RFTableSpacerColumnDefinition(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8D92024();
  v10 = type metadata accessor for Searchfoundation_RFTableColumnDefinition.OneOf_Definition(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB8DA8, &qword_1B96DFD10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1B95BD324();
      sub_1B8CD3920(&qword_1EBAD1BD8, type metadata accessor for Searchfoundation_RFTableSpacerColumnDefinition);
      sub_1B964C740();
      return sub_1B95BD070();
    }

    result = sub_1B95BD070();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B95C1904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DA8, &qword_1B96DFD10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Searchfoundation_RFTableContentColumnDefinition(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8D92024();
  v10 = type metadata accessor for Searchfoundation_RFTableColumnDefinition.OneOf_Definition(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB8DA8, &qword_1B96DFD10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B95BD324();
      sub_1B8CD3920(&qword_1EBAD1BF0, type metadata accessor for Searchfoundation_RFTableContentColumnDefinition);
      sub_1B964C740();
      return sub_1B95BD070();
    }

    result = sub_1B95BD070();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B95C1DE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3920(&qword_1EBAD1C28, type metadata accessor for Searchfoundation_RFTableColumnDefinition);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B95C1E60(uint64_t a1)
{
  v2 = sub_1B8CD3920(&qword_1EBAD1AD0, type metadata accessor for Searchfoundation_RFTableColumnDefinition);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B95C1ED0()
{
  sub_1B8CD3920(&qword_1EBAD1AD0, type metadata accessor for Searchfoundation_RFTableColumnDefinition);

  return sub_1B964C5D0();
}

uint64_t sub_1B95C1F68()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD1A80);
  __swift_project_value_buffer(v0, qword_1EBAD1A80);
  return sub_1B964C770();
}

uint64_t Searchfoundation_RFTableSpacerColumnDefinition.decodeMessage<A>(decoder:)()
{
  do
  {
    result = sub_1B964C3C0();
  }

  while (!v0 && (v2 & 1) == 0);
  return result;
}

uint64_t sub_1B95C20D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3920(&qword_1EBAD1C20, type metadata accessor for Searchfoundation_RFTableSpacerColumnDefinition);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B95C2158(uint64_t a1)
{
  v2 = sub_1B8CD3920(&qword_1EBAD1BD8, type metadata accessor for Searchfoundation_RFTableSpacerColumnDefinition);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B95C21C8()
{
  sub_1B8CD3920(&qword_1EBAD1BD8, type metadata accessor for Searchfoundation_RFTableSpacerColumnDefinition);

  return sub_1B964C5D0();
}

uint64_t sub_1B95C2260()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD1A98);
  __swift_project_value_buffer(v0, qword_1EBAD1A98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "size_percent";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "horizontal_alignment";
  *(v10 + 8) = 20;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "drop_order";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "equal_size_column_group";
  *(v14 + 1) = 23;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "disable_truncation";
  *(v16 + 1) = 18;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "should_drop_in_flow_layout";
  *(v18 + 1) = 26;
  v18[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_RFTableContentColumnDefinition.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_12();
        sub_1B964C490();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B95C2604();
        break;
      case 3:
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C4A0();
        break;
      case 5:
      case 6:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      default:
        continue;
    }
  }
}

uint64_t Searchfoundation_RFTableContentColumnDefinition.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (*v1 == 0.0 || (v2 = v0, OUTLINED_FUNCTION_12(), result = sub_1B964C6B0(), !v0))
  {
    if (!*(v3 + 8) || (v4 = *(v3 + 16), OUTLINED_FUNCTION_94_4(), sub_1B95C43F4(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v2))
    {
      if (!*(v3 + 20) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v2))
      {
        if (!*(v3 + 24) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v2))
        {
          if (*(v3 + 28) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v2))
          {
            if (*(v3 + 29) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v2))
            {
              v6 = *(type metadata accessor for Searchfoundation_RFTableContentColumnDefinition(0) + 40);
              return OUTLINED_FUNCTION_8_1();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B95C2844(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3920(&qword_1EBAD1C18, type metadata accessor for Searchfoundation_RFTableContentColumnDefinition);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B95C28C4(uint64_t a1)
{
  v2 = sub_1B8CD3920(&qword_1EBAD1BF0, type metadata accessor for Searchfoundation_RFTableContentColumnDefinition);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B95C2934()
{
  sub_1B8CD3920(&qword_1EBAD1BF0, type metadata accessor for Searchfoundation_RFTableContentColumnDefinition);

  return sub_1B964C5D0();
}

uint64_t sub_1B95C29CC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD1AB0);
  __swift_project_value_buffer(v0, qword_1EBAD1AB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "text";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "visual";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "column_span";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v13 = *MEMORY[0x1E69AADE8];
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "horizontal_alignment";
  *(v15 + 1) = 20;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "applySmallCaps";
  *(v17 + 1) = 14;
  v17[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_RFTableCell.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_432();
        OUTLINED_FUNCTION_24_3();
        sub_1B95C2D38(v3, v4, v5, v6);
        break;
      case 2:
        OUTLINED_FUNCTION_432();
        OUTLINED_FUNCTION_24_3();
        sub_1B95C3230(v7, v8, v9, v10);
        break;
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B95C3728();
        break;
      case 4:
        OUTLINED_FUNCTION_9();
        sub_1B95C378C();
        break;
      case 5:
        OUTLINED_FUNCTION_9();
        sub_1B95C3800();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B95C2D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8D90, &qword_1B964D590);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Searchfoundation_RFTableCell.OneOf_Content(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB8D90, &qword_1B964D590);
  }

  else
  {
    sub_1B95BD324();
    sub_1B95BD324();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B95BD070();
    }

    else
    {
      sub_1B8D9207C(v22, &qword_1EBAB8DF8, &qword_1B96B9A80);
      sub_1B95BD324();
      sub_1B95BD324();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }
  }

  sub_1B8CD3920(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAB8DF8, &qword_1B96B9A80);
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  sub_1B95BD324();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAB8DF8, &qword_1B96B9A80);
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB8D90, &qword_1B964D590);
  sub_1B95BD324();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B95C3230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Searchfoundation_RFVisualProperty(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8D90, &qword_1B964D590);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Searchfoundation_RFTableCell.OneOf_Content(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB8D90, &qword_1B964D590);
  }

  else
  {
    sub_1B95BD324();
    sub_1B95BD324();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8D9207C(v22, &qword_1EBACC708, &unk_1B96D92F0);
      sub_1B95BD324();
      sub_1B95BD324();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B95BD070();
    }
  }

  sub_1B8CD3920(&qword_1ED9D2A40, type metadata accessor for Searchfoundation_RFVisualProperty);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBACC708, &unk_1B96D92F0);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBACC708, &unk_1B96D92F0);
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBACC708, &unk_1B96D92F0);
  }

  sub_1B95BD324();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBACC708, &unk_1B96D92F0);
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB8D90, &qword_1B964D590);
  sub_1B95BD324();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B95C378C()
{
  v0 = *(type metadata accessor for Searchfoundation_RFTableCell(0) + 24);
  sub_1B95C43F4();
  return sub_1B964C420();
}

uint64_t Searchfoundation_RFTableCell.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8D90, &qword_1B964D590);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - v7;
  sub_1B8D92024();
  v9 = type metadata accessor for Searchfoundation_RFTableCell.OneOf_Content(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    goto LABEL_15;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_24_3();
    v1 = v0;
    sub_1B95C3C30(v10, v11, v12, v13);
  }

  else
  {
    OUTLINED_FUNCTION_24_3();
    v1 = v0;
    sub_1B95C3A1C(v14, v15, v16, v17);
  }

  OUTLINED_FUNCTION_3_88();
  result = sub_1B95BD070();
  if (!v1)
  {
LABEL_15:
    if (!*(v2 + *(OUTLINED_FUNCTION_65_14() + 20)) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v1))
    {
      v19 = (v2 + v9[6]);
      v20 = *v19;
      if (!*v19 || (v21 = *(v19 + 8), v23 = v20, v24 = v21, sub_1B95C43F4(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
      {
        if (*(v2 + v9[7]) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v1))
        {
          v22 = v9[8];
          return OUTLINED_FUNCTION_8_1();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B95C3A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8D90, &qword_1B964D590);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8D92024();
  v10 = type metadata accessor for Searchfoundation_RFTableCell.OneOf_Content(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB8D90, &qword_1B964D590);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1B95BD324();
      sub_1B8CD3920(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty);
      sub_1B964C740();
      return sub_1B95BD070();
    }

    result = sub_1B95BD070();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B95C3C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8D90, &qword_1B964D590);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Searchfoundation_RFVisualProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8D92024();
  v10 = type metadata accessor for Searchfoundation_RFTableCell.OneOf_Content(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB8D90, &qword_1B964D590);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B95BD324();
      sub_1B8CD3920(&qword_1ED9D2A40, type metadata accessor for Searchfoundation_RFVisualProperty);
      sub_1B964C740();
      return sub_1B95BD070();
    }

    result = sub_1B95BD070();
  }

  __break(1u);
  return result;
}

void static Searchfoundation_RFTableCell.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v4 = OUTLINED_FUNCTION_280();
  v5 = type metadata accessor for Searchfoundation_RFTableCell.OneOf_Content(v4);
  v6 = OUTLINED_FUNCTION_59_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_31_8();
  v9 = OUTLINED_FUNCTION_686();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_183(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_79();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8D98, &qword_1B964D598);
  OUTLINED_FUNCTION_183(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_176();
  v19 = MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_49_17(v19);
  OUTLINED_FUNCTION_313_1();
  OUTLINED_FUNCTION_50(v2);
  if (!v20)
  {
    OUTLINED_FUNCTION_177_1();
    sub_1B8D92024();
    OUTLINED_FUNCTION_50(v2 + v3);
    if (!v20)
    {
      sub_1B95BD324();
      static Searchfoundation_RFTableCell.OneOf_Content.== infix(_:_:)();
      v22 = v21;
      sub_1B95BD070();
      sub_1B95BD070();
      sub_1B8D9207C(v2, &qword_1EBAB8D90, &qword_1B964D590);
      if ((v22 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    }

    OUTLINED_FUNCTION_3_88();
    sub_1B95BD070();
LABEL_9:
    sub_1B8D9207C(v2, &qword_1EBAB8D98, &qword_1B964D598);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_50(v2 + v3);
  if (!v20)
  {
    goto LABEL_9;
  }

  sub_1B8D9207C(v2, &qword_1EBAB8D90, &qword_1B964D590);
LABEL_11:
  v23 = OUTLINED_FUNCTION_66_9();
  if (*(v1 + v24) == *(v0 + v24))
  {
    v25 = v23;
    v26 = *(v23 + 24);
    v27 = *(v1 + v26);
    v28 = *(v1 + v26 + 8);
    v29 = v0 + v26;
    v30 = *(v29 + 8);
    if (sub_1B8D92198(v27, v28, *v29) && *(v1 + *(v25 + 28)) == *(v0 + *(v25 + 28)))
    {
      v31 = *(v25 + 32);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_113();
      sub_1B8CD3920(v32, v33);
      OUTLINED_FUNCTION_634();
    }
  }

LABEL_15:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B95C40FC(void (*a1)(void))
{
  sub_1B964CA70();
  a1(0);
  v2 = OUTLINED_FUNCTION_461();
  sub_1B8CD3920(v2, v3);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B95C41DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3920(&qword_1EBAD1C10, type metadata accessor for Searchfoundation_RFTableCell);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B95C425C(uint64_t a1)
{
  v2 = sub_1B8CD3920(&qword_1EBAD1AD8, type metadata accessor for Searchfoundation_RFTableCell);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B95C42CC()
{
  sub_1B8CD3920(&qword_1EBAD1AD8, type metadata accessor for Searchfoundation_RFTableCell);

  return sub_1B964C5D0();
}

unint64_t sub_1B95C434C()
{
  result = qword_1EBAD1AE0;
  if (!qword_1EBAD1AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD1AE0);
  }

  return result;
}

unint64_t sub_1B95C43A0()
{
  result = qword_1EBAD1AE8;
  if (!qword_1EBAD1AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD1AE8);
  }

  return result;
}

unint64_t sub_1B95C43F4()
{
  result = qword_1EBAD1B10;
  if (!qword_1EBAD1B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD1B10);
  }

  return result;
}

unint64_t sub_1B95C444C()
{
  result = qword_1EBAD1B28;
  if (!qword_1EBAD1B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD1B28);
  }

  return result;
}

unint64_t sub_1B95C44A4()
{
  result = qword_1EBAD1B30;
  if (!qword_1EBAD1B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD1B30);
  }

  return result;
}

unint64_t sub_1B95C44FC()
{
  result = qword_1EBAD1B38;
  if (!qword_1EBAD1B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD1B38);
  }

  return result;
}

unint64_t sub_1B95C4584()
{
  result = qword_1EBAD1B50;
  if (!qword_1EBAD1B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD1B50);
  }

  return result;
}

unint64_t sub_1B95C45DC()
{
  result = qword_1EBAD1B58;
  if (!qword_1EBAD1B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD1B58);
  }

  return result;
}

unint64_t sub_1B95C4634()
{
  result = qword_1EBAD1B60;
  if (!qword_1EBAD1B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD1B60);
  }

  return result;
}

unint64_t sub_1B95C46BC()
{
  result = qword_1EBAD1B78;
  if (!qword_1EBAD1B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD1B78);
  }

  return result;
}

unint64_t sub_1B95C4714()
{
  result = qword_1EBAD1B80;
  if (!qword_1EBAD1B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD1B80);
  }

  return result;
}

unint64_t sub_1B95C476C()
{
  result = qword_1EBAD1B88;
  if (!qword_1EBAD1B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD1B88);
  }

  return result;
}

void sub_1B95C4F08()
{
  sub_1B95C5018(319, &qword_1ED9D39A0, type metadata accessor for Searchfoundation_RFTableColumnDefinition, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B95C5018(319, &qword_1ED9D3A20, type metadata accessor for Searchfoundation_RFTableCell, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1B964C2B0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B95C5018(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B95C50A4()
{
  sub_1B95C5018(319, &qword_1ED9D3A20, type metadata accessor for Searchfoundation_RFTableCell, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B95C5194()
{
  sub_1B95C5018(319, qword_1ED9DA068, type metadata accessor for Searchfoundation_RFTableColumnDefinition.OneOf_Definition, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B95C52C4()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B95C538C()
{
  sub_1B95C5018(319, qword_1ED9E1120, type metadata accessor for Searchfoundation_RFTableCell.OneOf_Content, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B95C5488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_49_17(uint64_t a1)
{
  v2 = *(a1 + 56);

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_52_15()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t **OUTLINED_FUNCTION_54_13(uint64_t **result)
{
  v1 = (*result)[3];
  v2 = (*result)[4];
  v3 = (*result)[1];
  v4 = (*result)[2];
  v5 = **result;
  return result;
}

uint64_t OUTLINED_FUNCTION_66_9()
{
  result = type metadata accessor for Searchfoundation_RFTableCell(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_69_10()
{
  *(v0 + 16) = 1;
  v1 = type metadata accessor for Searchfoundation_RFTableContentColumnDefinition(0);
  *(v0 + 20) = 0;
  *(v0 + 28) = 0;
  v2 = v0 + *(v1 + 40);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_77_11@<X0>(uint64_t a1@<X8>)
{
  *v1 = a1;
  *(v1 + 8) = 0;
  v4 = v1 + *(v2 + 24);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_78_9()
{

  return sub_1B95BD324();
}

uint64_t Searchfoundation_RFTextProperty.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  v1 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  return OUTLINED_FUNCTION_279(v1);
}

uint64_t static Searchfoundation_RFTextProperty.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v3 = *v2;
  v5 = *v4;
  sub_1B8D5BA08();
  if ((v6 & 1) == 0 || *(v1 + 8) != *(v0 + 8))
  {
    return 0;
  }

  v8 = *(type metadata accessor for Searchfoundation_RFTextProperty(0) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_114();
  sub_1B8CD3968(v9, v10);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B95C58C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B95DAE54();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Searchfoundation_RFTextEncapsulationStyle.allCases.modify()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t sub_1B95C59B0@<X0>(uint64_t *a1@<X8>)
{
  result = static Searchfoundation_RFTextEncapsulationStyle.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B95C5A00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B95DCEF0();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Searchfoundation_RFNamedFont.allCases.modify()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t sub_1B95C5AE8@<X0>(uint64_t *a1@<X8>)
{
  result = static Searchfoundation_RFNamedFont.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B95C5B50(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B95DAEA8();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Searchfoundation_RFWeight.allCases.modify()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t sub_1B95C5C38@<X0>(uint64_t *a1@<X8>)
{
  result = static Searchfoundation_RFWeight.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B95C5C88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B95DCE9C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Searchfoundation_RFFontDesign.allCases.modify()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t sub_1B95C5D70@<X0>(uint64_t *a1@<X8>)
{
  result = static Searchfoundation_RFFontDesign.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Searchfoundation_RFTextProperty.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_RFTextProperty(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_RFTextElement.showMoreOnTap.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = *(type metadata accessor for Searchfoundation_RFTextElement(v7) + 28);
  OUTLINED_FUNCTION_100_0();
  type metadata accessor for Searchfoundation_RFShowMoreOnTap(0);
  OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    OUTLINED_FUNCTION_158_4();
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB8DE8, &qword_1B96E0CB0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_50();
    OUTLINED_FUNCTION_182();
    return sub_1B95DAC6C();
  }

  return result;
}

uint64_t Searchfoundation_RFTextElement.showMoreOnTap.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_RFTextElement(v1);
  sub_1B8D9207C(v0 + *(v2 + 28), &qword_1EBAB8DE8, &qword_1B96E0CB0);
  OUTLINED_FUNCTION_6_50();
  OUTLINED_FUNCTION_122_0();
  sub_1B95DAC6C();
  type metadata accessor for Searchfoundation_RFShowMoreOnTap(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_RFTextElement.showMoreOnTap.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  v10 = type metadata accessor for Searchfoundation_RFShowMoreOnTap(v9);
  *(v1 + 16) = v10;
  OUTLINED_FUNCTION_59_1(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  v16 = type metadata accessor for Searchfoundation_RFTextElement(v15);
  OUTLINED_FUNCTION_64_0(*(v16 + 28));
  OUTLINED_FUNCTION_16_2();
  if (v17)
  {
    OUTLINED_FUNCTION_157_6();
    OUTLINED_FUNCTION_16_2();
    if (!v17)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DE8, &qword_1B96E0CB0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_50();
    OUTLINED_FUNCTION_461();
    sub_1B95DAC6C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B95C60F0()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_128();
    sub_1B95DACC0();
    sub_1B8D9207C(v4 + v3, &qword_1EBAB8DE8, &qword_1B96E0CB0);
    OUTLINED_FUNCTION_6_50();
    OUTLINED_FUNCTION_220_6();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_47_18();
    sub_1B95DAC18();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBAB8DE8, &qword_1B96E0CB0);
    OUTLINED_FUNCTION_6_50();
    OUTLINED_FUNCTION_221_4();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v7);
}

uint64_t Searchfoundation_RFTextElement.hasShowMoreOnTap.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  v7 = *(type metadata accessor for Searchfoundation_RFTextElement(v6) + 28);
  OUTLINED_FUNCTION_274_0();
  v8 = type metadata accessor for Searchfoundation_RFShowMoreOnTap(0);
  OUTLINED_FUNCTION_11(v8);
  return OUTLINED_FUNCTION_193_1();
}

Swift::Void __swiftcall Searchfoundation_RFTextElement.clearShowMoreOnTap()()
{
  v1 = type metadata accessor for Searchfoundation_RFTextElement(0);
  sub_1B8D9207C(v0 + *(v1 + 28), &qword_1EBAB8DE8, &qword_1B96E0CB0);
  type metadata accessor for Searchfoundation_RFShowMoreOnTap(0);
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_1B95C62B8()
{
  v0 = OUTLINED_FUNCTION_27();
  v2 = *(v1(v0) + 24);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_18_1();

  return v7(v6);
}

uint64_t sub_1B95C6340()
{
  v0 = OUTLINED_FUNCTION_313();
  v2 = *(v1(v0) + 24);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_209();

  return v7(v6);
}

uint64_t Searchfoundation_RFTextElement.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_RFTextElement(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_RFTextElement.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  v1 = type metadata accessor for Searchfoundation_RFTextElement(0);
  OUTLINED_FUNCTION_279(v1);
  v2 = *(v1 + 28);
  type metadata accessor for Searchfoundation_RFShowMoreOnTap(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Searchfoundation_RFShowMoreOnTap.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_RFShowMoreOnTap(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_RFFormattedText.value.getter()
{
  OUTLINED_FUNCTION_17_31();
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_209();
  return sub_1B8D92024();
}

uint64_t sub_1B95C6548()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1D70, &unk_1B96E0CB8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1B8D92024();
  return Searchfoundation_RFFormattedText.value.setter();
}

uint64_t Searchfoundation_RFFormattedText.value.setter()
{
  v1 = v0;
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Searchfoundation_RFFormattedText(v2) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_57_17();
    v7 = OUTLINED_FUNCTION_40_0();
    *(v1 + v3) = sub_1B95CF644(v7);
  }

  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_RFFormattedText.value.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  *(OUTLINED_FUNCTION_99(v2) + 48) = v0;
  v3 = OUTLINED_FUNCTION_177_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  *(v1 + 56) = __swift_coroFrameAllocStub(v7);
  *(v1 + 64) = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_41_27();
  *(v1 + 72) = v8;
  v9 = *(v0 + v8);
  OUTLINED_FUNCTION_521();
  sub_1B8D92024();
  OUTLINED_FUNCTION_242();
}

void sub_1B95C6768(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = *(v2 + 56);
    v3 = *(v2 + 64);
    v5 = *(v2 + 48);
    OUTLINED_FUNCTION_466();
    sub_1B8D92024();
    Searchfoundation_RFFormattedText.value.setter();
    v6 = OUTLINED_FUNCTION_236();
    sub_1B8D9207C(v6, v7, &unk_1B96E0CB8);
  }

  else
  {
    v8 = *(v2 + 72);
    v9 = *(v2 + 48);
    v10 = *(v9 + v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v9 + v8);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = *(v2 + 72);
      v14 = *(v2 + 48);
      OUTLINED_FUNCTION_57_17();
      v15 = OUTLINED_FUNCTION_40_0();
      *(v14 + v13) = sub_1B95CF644(v15);
    }

    v4 = *(v2 + 56);
    v3 = *(v2 + 64);
    OUTLINED_FUNCTION_131();
    swift_beginAccess();
    sub_1B8DAA170();
    swift_endAccess();
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t Searchfoundation_RFFormattedText.text.getter()
{
  v1 = OUTLINED_FUNCTION_303();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_17_31();
  OUTLINED_FUNCTION_119_0();
  OUTLINED_FUNCTION_1399();
  type metadata accessor for Searchfoundation_RFFormattedText.OneOf_Value(0);
  OUTLINED_FUNCTION_37_0(v0);
  if (v7)
  {
    sub_1B8D9207C(v0, &qword_1EBAD1D70, &unk_1B96E0CB8);
    return 0;
  }

  OUTLINED_FUNCTION_432();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    OUTLINED_FUNCTION_7_52();
    sub_1B95DAC18();
    return 0;
  }

  result = *v0;
  v10 = v0[1];
  return result;
}

uint64_t sub_1B95C6968(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Searchfoundation_RFFormattedText.text.setter(v1, v2);
}

uint64_t Searchfoundation_RFFormattedText.text.setter(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1D70, &unk_1B96E0CB8);
  OUTLINED_FUNCTION_183(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_139();
  v11 = *(type metadata accessor for Searchfoundation_RFFormattedText(0) + 20);
  v12 = *(v3 + v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v3 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_57_17();
    v15 = OUTLINED_FUNCTION_40_0();
    *(v4 + v11) = sub_1B95CF644(v15);
  }

  *v2 = a1;
  v2[1] = a2;
  v16 = type metadata accessor for Searchfoundation_RFFormattedText.OneOf_Value(0);
  OUTLINED_FUNCTION_514();
  swift_storeEnumTagMultiPayload();
  v17 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v16);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_RFFormattedText.text.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  *v0 = v3;
  v3[5] = v1;
  v4 = OUTLINED_FUNCTION_1_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v3[6] = v8;
  OUTLINED_FUNCTION_17_31();
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_176_2();
  sub_1B8D92024();
  type metadata accessor for Searchfoundation_RFFormattedText.OneOf_Value(0);
  OUTLINED_FUNCTION_28_13();
  OUTLINED_FUNCTION_178(v9, v10, v11);
  if (v12)
  {
    sub_1B8D9207C(v8, &qword_1EBAD1D70, &unk_1B96E0CB8);
  }

  else
  {
    OUTLINED_FUNCTION_303();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 1)
    {
      v14 = *v8;
      v15 = v8[1];
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_7_52();
    sub_1B95DAC18();
  }

  v14 = 0;
  v15 = 0xE000000000000000;
LABEL_8:
  v3[3] = v14;
  v3[4] = v15;
  OUTLINED_FUNCTION_242();
}

void sub_1B95C6BD0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 40);
  v5 = *(*a1 + 48);
  if (a2)
  {
    v6 = *(*a1 + 32);

    v7 = OUTLINED_FUNCTION_186();
    Searchfoundation_RFFormattedText.text.setter(v7, v8);
    v9 = v2[4];
  }

  else
  {
    v10 = OUTLINED_FUNCTION_186();
    Searchfoundation_RFFormattedText.text.setter(v10, v11);
  }

  free(v5);

  free(v2);
}

uint64_t Searchfoundation_RFFormattedText.inlineImageElement.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_43_21(v9);
  OUTLINED_FUNCTION_119_0();
  OUTLINED_FUNCTION_106_0();
  type metadata accessor for Searchfoundation_RFFormattedText.OneOf_Value(0);
  OUTLINED_FUNCTION_9_2();
  if (v10)
  {
    sub_1B8D9207C(v1, &qword_1EBAD1D70, &unk_1B96E0CB8);
  }

  else
  {
    OUTLINED_FUNCTION_461();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_28_28();
      OUTLINED_FUNCTION_182();
      return sub_1B95DAC6C();
    }

    OUTLINED_FUNCTION_7_52();
    sub_1B95DAC18();
  }

  *a1 = MEMORY[0x1E69E7CC0];
  v13 = type metadata accessor for Searchfoundation_RFImageElement(0);
  return OUTLINED_FUNCTION_163_2(v13);
}

uint64_t sub_1B95C6D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = a5(0);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_177_1();
  sub_1B95DACC0();
  return a7(v7);
}

uint64_t Searchfoundation_RFFormattedText.inlineImageElement.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1D70, &unk_1B96E0CB8);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_139();
  v6 = OUTLINED_FUNCTION_71_13();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_57_17();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B95CF644(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_28_28();
  OUTLINED_FUNCTION_175_7();
  v10 = type metadata accessor for Searchfoundation_RFFormattedText.OneOf_Value(0);
  OUTLINED_FUNCTION_514();
  swift_storeEnumTagMultiPayload();
  v11 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v10);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_RFFormattedText.inlineImageElement.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_26_3(v8);
  v10 = type metadata accessor for Searchfoundation_RFImageElement(v9);
  OUTLINED_FUNCTION_59_1(v10);
  v12 = *(v11 + 64);
  *(v1 + 40) = __swift_coroFrameAllocStub(v12);
  v13 = __swift_coroFrameAllocStub(v12);
  *(v1 + 48) = v13;
  OUTLINED_FUNCTION_17_31();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  type metadata accessor for Searchfoundation_RFFormattedText.OneOf_Value(0);
  OUTLINED_FUNCTION_37_0(v0);
  if (v14)
  {
    sub_1B8D9207C(v0, &qword_1EBAD1D70, &unk_1B96E0CB8);
LABEL_7:
    *v13 = MEMORY[0x1E69E7CC0];
    v16 = v13 + *(v10 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_128();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    OUTLINED_FUNCTION_7_52();
    sub_1B95DAC18();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_28_28();
  OUTLINED_FUNCTION_177_1();
  sub_1B95DAC6C();
LABEL_8:
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_RFFormattedText.color.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DB8, &unk_1B96D9DC0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_139();
  v6 = OUTLINED_FUNCTION_71_13();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_57_17();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B95CF644(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_8_51();
  OUTLINED_FUNCTION_175_7();
  type metadata accessor for Searchfoundation_RFColor(0);
  v10 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_RFFormattedText.color.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  v10 = type metadata accessor for Searchfoundation_RFColor(v9);
  OUTLINED_FUNCTION_59_1(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_187(v12);
  *(v1 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_17_31();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    type metadata accessor for Searchfoundation_RFColor.OneOf_Value(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    OUTLINED_FUNCTION_282_2();
    v19 = *(v10 + 24);
    type metadata accessor for Searchfoundation_RFOptionalFloat(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
    OUTLINED_FUNCTION_17_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DB8, &unk_1B96D9DC0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_51();
    OUTLINED_FUNCTION_246();
    sub_1B95DAC6C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

void sub_1B95C72D0()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 24);
  v6 = *(*v0 + 32);
  if (v7)
  {
    OUTLINED_FUNCTION_186();
    sub_1B95DACC0();
    v2(v3);
    OUTLINED_FUNCTION_690();
    sub_1B95DAC18();
  }

  else
  {
    v1(*(*v0 + 48));
  }

  free(v4);
  free(v3);
  free(v6);
  OUTLINED_FUNCTION_242();

  free(v8);
}

uint64_t Searchfoundation_RFFormattedText.isItalic.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1D78, &qword_1B96E0CC8);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_139();
  v6 = OUTLINED_FUNCTION_71_13();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_57_17();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B95CF644(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_3_89();
  OUTLINED_FUNCTION_175_7();
  type metadata accessor for Searchfoundation_RFOptionalBool(0);
  v10 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_RFFormattedText.isItalic.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_26_3(v8);
  v10 = type metadata accessor for Searchfoundation_RFOptionalBool(v9);
  OUTLINED_FUNCTION_59_1(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_187(v12);
  *(v1 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_17_31();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_171_5();
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAD1D78, &qword_1B96E0CC8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_89();
    OUTLINED_FUNCTION_461();
    sub_1B95DAC6C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B95C7634(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_16();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_183(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_17_31();
  v15 = *a3;
  OUTLINED_FUNCTION_119_0();
  sub_1B8D92024();
  v16 = a4(0);
  OUTLINED_FUNCTION_178(v6, 1, v16);
  if (v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  sub_1B8D9207C(v6, v5, v4);
  return v18;
}

void sub_1B95C7728()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_16();
  v5 = v0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_79();
  v12 = *(type metadata accessor for Searchfoundation_RFFormattedText(0) + 20);
  v13 = *(v0 + v12);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v0 + v12);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_57_17();
    v16 = OUTLINED_FUNCTION_40_0();
    *(v5 + v12) = sub_1B95CF644(v16);
  }

  v4(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  v21 = *v2;
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  OUTLINED_FUNCTION_242();
}

uint64_t Searchfoundation_RFFormattedText.isBold.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1D78, &qword_1B96E0CC8);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_139();
  v6 = OUTLINED_FUNCTION_71_13();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_57_17();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B95CF644(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_3_89();
  OUTLINED_FUNCTION_175_7();
  type metadata accessor for Searchfoundation_RFOptionalBool(0);
  v10 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_RFFormattedText.isBold.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_26_3(v8);
  v10 = type metadata accessor for Searchfoundation_RFOptionalBool(v9);
  OUTLINED_FUNCTION_59_1(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_187(v12);
  *(v1 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_17_31();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_171_5();
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAD1D78, &qword_1B96E0CC8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_89();
    OUTLINED_FUNCTION_461();
    sub_1B95DAC6C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_RFFormattedText.textEncapsulation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_43_21(v9);
  OUTLINED_FUNCTION_119_0();
  OUTLINED_FUNCTION_106_0();
  v10 = type metadata accessor for Searchfoundation_RFTextEncapsulation(0);
  OUTLINED_FUNCTION_9_2();
  if (v11)
  {
    *a1 = 0;
    *(a1 + 8) = 1;
    v12 = a1 + *(v10 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v11)
    {
      return sub_1B8D9207C(v1, &qword_1EBAD1D80, &qword_1B96E0CD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_28();
    OUTLINED_FUNCTION_182();
    return sub_1B95DAC6C();
  }

  return result;
}

uint64_t Searchfoundation_RFFormattedText.textEncapsulation.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1D80, &qword_1B96E0CD0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_139();
  v6 = OUTLINED_FUNCTION_71_13();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_57_17();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B95CF644(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_26_28();
  OUTLINED_FUNCTION_175_7();
  type metadata accessor for Searchfoundation_RFTextEncapsulation(0);
  v10 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Searchfoundation_RFTextEncapsulation.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v1 = type metadata accessor for Searchfoundation_RFTextEncapsulation(0);
  return OUTLINED_FUNCTION_163_2(v1);
}

void Searchfoundation_RFFormattedText.textEncapsulation.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  v10 = type metadata accessor for Searchfoundation_RFTextEncapsulation(v9);
  OUTLINED_FUNCTION_59_1(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_187(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  *(v1 + 48) = v14;
  OUTLINED_FUNCTION_17_31();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    *v14 = 0;
    v14[8] = 1;
    OUTLINED_FUNCTION_282_2();
    OUTLINED_FUNCTION_17_2();
    if (!v15)
    {
      sub_1B8D9207C(v0, &qword_1EBAD1D80, &qword_1B96E0CD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_28();
    OUTLINED_FUNCTION_246();
    sub_1B95DAC6C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_RFFormattedText.isHighlighted.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1D78, &qword_1B96E0CC8);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_139();
  v6 = OUTLINED_FUNCTION_71_13();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_57_17();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B95CF644(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_3_89();
  OUTLINED_FUNCTION_175_7();
  type metadata accessor for Searchfoundation_RFOptionalBool(0);
  v10 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_RFFormattedText.isHighlighted.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_26_3(v8);
  v10 = type metadata accessor for Searchfoundation_RFOptionalBool(v9);
  OUTLINED_FUNCTION_59_1(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_187(v12);
  *(v1 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_17_31();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_171_5();
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAD1D78, &qword_1B96E0CC8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_89();
    OUTLINED_FUNCTION_461();
    sub_1B95DAC6C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B95C8104@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = OUTLINED_FUNCTION_690();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_183(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_17_31();
  v11 = *a1;
  OUTLINED_FUNCTION_119_0();
  OUTLINED_FUNCTION_209();
  sub_1B8D92024();
  v12 = type metadata accessor for Searchfoundation_RFColor(0);
  OUTLINED_FUNCTION_57(v2);
  if (!v13)
  {
    return sub_1B95DAC6C();
  }

  type metadata accessor for Searchfoundation_RFColor.OneOf_Value(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  v18 = a2 + *(v12 + 20);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v19 = *(v12 + 24);
  type metadata accessor for Searchfoundation_RFOptionalFloat(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  result = OUTLINED_FUNCTION_57(v2);
  if (!v13)
  {
    return sub_1B8D9207C(v2, &qword_1EBAB8DB8, &unk_1B96D9DC0);
  }

  return result;
}

uint64_t Searchfoundation_RFFormattedText.backgroundColor.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DB8, &unk_1B96D9DC0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_139();
  v6 = OUTLINED_FUNCTION_71_13();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_57_17();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B95CF644(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_8_51();
  OUTLINED_FUNCTION_175_7();
  type metadata accessor for Searchfoundation_RFColor(0);
  v10 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_RFFormattedText.backgroundColor.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  v10 = type metadata accessor for Searchfoundation_RFColor(v9);
  OUTLINED_FUNCTION_59_1(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_187(v12);
  *(v1 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_17_31();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    type metadata accessor for Searchfoundation_RFColor.OneOf_Value(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    OUTLINED_FUNCTION_282_2();
    v19 = *(v10 + 24);
    type metadata accessor for Searchfoundation_RFOptionalFloat(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
    OUTLINED_FUNCTION_17_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DB8, &unk_1B96D9DC0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_51();
    OUTLINED_FUNCTION_246();
    sub_1B95DAC6C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B95C8508(uint64_t *a1)
{
  v1 = *a1;

  return Searchfoundation_RFFormattedText.attributions.setter(v2);
}

uint64_t Searchfoundation_RFFormattedText.attributions.modify()
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_99(v2) + 56) = v0;
  OUTLINED_FUNCTION_41_27();
  *(v1 + 64) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__attributions;
  OUTLINED_FUNCTION_521();
  *(v1 + 48) = *(v4 + v5);

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B95C85F0(uint64_t *a1)
{
  OUTLINED_FUNCTION_17_31();
  v3 = *a1;
  OUTLINED_FUNCTION_521();
  v4 = *(v1 + v3);
}

uint64_t sub_1B95C8634(uint64_t *a1)
{
  v1 = *a1;

  return Searchfoundation_RFFormattedText.highlightedSubstrings.setter(v2);
}

uint64_t sub_1B95C866C(uint64_t a1, uint64_t *a2)
{
  v6 = OUTLINED_FUNCTION_71_13();
  v7 = *(v2 + v3);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_57_17();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B95CF644(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  v10 = *a2;
  OUTLINED_FUNCTION_18();
  v11 = *(v7 + v10);
  *(v7 + v10) = a1;
}

uint64_t Searchfoundation_RFFormattedText.highlightedSubstrings.modify()
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_99(v2) + 56) = v0;
  OUTLINED_FUNCTION_41_27();
  *(v1 + 64) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__highlightedSubstrings;
  OUTLINED_FUNCTION_521();
  *(v1 + 48) = *(v4 + v5);

  return OUTLINED_FUNCTION_514();
}

void sub_1B95C8788(uint64_t *a1, char a2, uint64_t *a3, void (*a4)(uint64_t))
{
  v4 = *a1;
  v5 = *(*a1 + 48);
  if (a2)
  {
    v7 = *(v4 + 56);
    v8 = *(*a1 + 48);

    a4(v9);
    v10 = *(v4 + 48);
  }

  else
  {
    v12 = *(v4 + 64);
    v13 = *(v4 + 56);
    v14 = *(v13 + v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v13 + v12);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = *(v4 + 64);
      v18 = *(v4 + 56);
      OUTLINED_FUNCTION_57_17();
      v19 = OUTLINED_FUNCTION_40_0();
      v16 = sub_1B95CF644(v19);
      *(v18 + v17) = v16;
    }

    v20 = *a3;
    OUTLINED_FUNCTION_18();
    v21 = *(v16 + v20);
    *(v16 + v20) = v5;
  }

  free(v4);
}

uint64_t Searchfoundation_RFFormattedText.font.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_43_21(v9);
  OUTLINED_FUNCTION_119_0();
  OUTLINED_FUNCTION_106_0();
  v10 = type metadata accessor for Searchfoundation_RFFont(0);
  OUTLINED_FUNCTION_9_2();
  if (v11)
  {
    type metadata accessor for Searchfoundation_RFFont.OneOf_Value(0);
    OUTLINED_FUNCTION_129();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
    *(a1 + *(v10 + 20)) = 0;
    v16 = a1 + *(v10 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v11)
    {
      return sub_1B8D9207C(v1, &qword_1EBAD1D88, &qword_1B96E0CD8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_21_30();
    OUTLINED_FUNCTION_182();
    return sub_1B95DAC6C();
  }

  return result;
}

uint64_t Searchfoundation_RFFormattedText.font.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1D88, &qword_1B96E0CD8);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_139();
  v6 = OUTLINED_FUNCTION_71_13();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_57_17();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B95CF644(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_21_30();
  OUTLINED_FUNCTION_175_7();
  type metadata accessor for Searchfoundation_RFFont(0);
  v10 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Searchfoundation_RFFont.init()()
{
  v1 = OUTLINED_FUNCTION_27();
  type metadata accessor for Searchfoundation_RFFont.OneOf_Value(v1);
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = OUTLINED_FUNCTION_188_4();
  *(v0 + v7) = 0;
  return OUTLINED_FUNCTION_279(v6);
}

void Searchfoundation_RFFormattedText.font.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  v10 = type metadata accessor for Searchfoundation_RFFont(v9);
  OUTLINED_FUNCTION_59_1(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_187(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  *(v1 + 48) = v14;
  OUTLINED_FUNCTION_17_31();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    type metadata accessor for Searchfoundation_RFFont.OneOf_Value(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    v14[*(v10 + 20)] = 0;
    v20 = &v14[*(v10 + 24)];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v15)
    {
      sub_1B8D9207C(v0, &qword_1EBAD1D88, &qword_1B96E0CD8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_21_30();
    OUTLINED_FUNCTION_246();
    sub_1B95DAC6C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B95C8C44@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = OUTLINED_FUNCTION_690();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_183(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_43_21(v11);
  v12 = *a1;
  OUTLINED_FUNCTION_119_0();
  OUTLINED_FUNCTION_466();
  sub_1B8D92024();
  v13 = type metadata accessor for Searchfoundation_RFOptionalBool(0);
  OUTLINED_FUNCTION_9_2();
  if (v14)
  {
    *a2 = 0;
    v15 = &a2[*(v13 + 20)];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v14)
    {
      return sub_1B8D9207C(v2, &qword_1EBAD1D78, &qword_1B96E0CC8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_182();
    return sub_1B95DAC6C();
  }

  return result;
}

uint64_t Searchfoundation_RFFormattedText.isUnderlined.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1D78, &qword_1B96E0CC8);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_139();
  v6 = OUTLINED_FUNCTION_71_13();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_57_17();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B95CF644(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_3_89();
  OUTLINED_FUNCTION_175_7();
  type metadata accessor for Searchfoundation_RFOptionalBool(0);
  v10 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_RFFormattedText.isUnderlined.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_26_3(v8);
  v10 = type metadata accessor for Searchfoundation_RFOptionalBool(v9);
  OUTLINED_FUNCTION_59_1(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_187(v12);
  *(v1 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_17_31();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_171_5();
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAD1D78, &qword_1B96E0CC8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_89();
    OUTLINED_FUNCTION_461();
    sub_1B95DAC6C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_RFFormattedText.engageable.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_43_21(v9);
  OUTLINED_FUNCTION_119_0();
  OUTLINED_FUNCTION_106_0();
  v10 = type metadata accessor for Searchfoundation_RFEngageable(0);
  OUTLINED_FUNCTION_9_2();
  if (v11)
  {
    type metadata accessor for Searchfoundation_RFEngageable.OneOf_EngageableOneof(0);
    OUTLINED_FUNCTION_129();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
    v16 = a1 + *(v10 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v11)
    {
      return sub_1B8D9207C(v1, &qword_1EBAD1D90, &qword_1B96E0CE0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_29_37();
    OUTLINED_FUNCTION_182();
    return sub_1B95DAC6C();
  }

  return result;
}

uint64_t Searchfoundation_RFFormattedText.engageable.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1D90, &qword_1B96E0CE0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_139();
  v6 = OUTLINED_FUNCTION_71_13();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_57_17();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B95CF644(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_29_37();
  OUTLINED_FUNCTION_175_7();
  type metadata accessor for Searchfoundation_RFEngageable(0);
  v10 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Searchfoundation_RFEngageable.init()()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Searchfoundation_RFEngageable.OneOf_EngageableOneof(v0);
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  v5 = type metadata accessor for Searchfoundation_RFEngageable(0);
  return OUTLINED_FUNCTION_163_2(v5);
}

void Searchfoundation_RFFormattedText.engageable.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  v10 = type metadata accessor for Searchfoundation_RFEngageable(v9);
  OUTLINED_FUNCTION_59_1(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_187(v12);
  *(v1 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_17_31();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    type metadata accessor for Searchfoundation_RFEngageable.OneOf_EngageableOneof(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    OUTLINED_FUNCTION_282_2();
    OUTLINED_FUNCTION_17_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAD1D90, &qword_1B96E0CE0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_29_37();
    OUTLINED_FUNCTION_246();
    sub_1B95DAC6C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_RFFormattedText.weight.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_99(v2) + 88) = v0;
  OUTLINED_FUNCTION_41_27();
  *(v1 + 84) = v3;
  v4 = *(v0 + v3) + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__weight;
  OUTLINED_FUNCTION_543();
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_117_0();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t sub_1B95C9448@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_41_27();
  v6 = *(v2 + v5) + *a1;
  result = OUTLINED_FUNCTION_6_2();
  v8 = *(v6 + 8);
  *a2 = *v6;
  *(a2 + 8) = v8;
  return result;
}

uint64_t sub_1B95C94AC(uint64_t *a1, void *a2)
{
  v4 = v2;
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(type metadata accessor for Searchfoundation_RFFormattedText(0) + 20);
  v8 = *(v2 + v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v2 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_57_17();
    v11 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B95CF644(v11);
    *(v4 + v7) = v10;
  }

  v12 = v10 + *a2;
  result = OUTLINED_FUNCTION_18();
  *v12 = v5;
  *(v12 + 8) = v6;
  return result;
}

uint64_t Searchfoundation_RFFormattedText.design.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_99(v2) + 88) = v0;
  OUTLINED_FUNCTION_41_27();
  *(v1 + 84) = v3;
  v4 = *(v0 + v3) + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__design;
  OUTLINED_FUNCTION_543();
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_117_0();
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B95C95C0()
{
  OUTLINED_FUNCTION_243();
  v1 = v0;
  v3 = *v2;
  v4 = *(*v2 + 72);
  v5 = *(*v2 + 84);
  v6 = *(*v2 + 88);
  v7 = *(*v2 + 80);
  v8 = *(v6 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v6 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v3 + 84);
    v12 = *(v3 + 88);
    OUTLINED_FUNCTION_57_17();
    v13 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B95CF644(v13);
    *(v12 + v11) = v10;
  }

  v14 = v10 + *v1;
  OUTLINED_FUNCTION_18();
  *v14 = v4;
  *(v14 + 8) = v7;
  OUTLINED_FUNCTION_242();

  free(v15);
}

uint64_t Searchfoundation_RFFormattedText.unknownFields.getter()
{
  OUTLINED_FUNCTION_27();
  v0 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_432();

  return v4(v3);
}

uint64_t Searchfoundation_RFFormattedText.unknownFields.setter()
{
  OUTLINED_FUNCTION_313();
  v0 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v0);
  v2 = *(v1 + 40);
  v3 = OUTLINED_FUNCTION_288();

  return v4(v3);
}

uint64_t Searchfoundation_RFFormattedText.init()@<X0>(uint64_t a1@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v2 = *(type metadata accessor for Searchfoundation_RFFormattedText(0) + 20);
  if (qword_1ED9D2AD8 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_1ED9D2AE0;
}

uint64_t Searchfoundation_RFEngageable.commandReference.getter()
{
  OUTLINED_FUNCTION_180_3();
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_27_9();
  type metadata accessor for Searchfoundation_RFEngageable.OneOf_EngageableOneof(0);
  v7 = OUTLINED_FUNCTION_157_4();
  OUTLINED_FUNCTION_57(v7);
  if (v8)
  {
    sub_1B8D9207C(v0, &qword_1EBAD1DA0, &qword_1B96E0CF0);
LABEL_6:
    v10 = OUTLINED_FUNCTION_61_3();
    v11 = type metadata accessor for Searchfoundation_CommandReference(v10);
    return OUTLINED_FUNCTION_163_2(v11);
  }

  OUTLINED_FUNCTION_543();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_1B95DAC18();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_1_98();
  OUTLINED_FUNCTION_288();
  return sub_1B95DAC6C();
}

void Searchfoundation_RFEngageable.commandReference.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_25_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  v10 = type metadata accessor for Searchfoundation_CommandReference(v9);
  OUTLINED_FUNCTION_59_1(v10);
  v12 = *(v11 + 64);
  v1[2] = __swift_coroFrameAllocStub(v12);
  v13 = __swift_coroFrameAllocStub(v12);
  v1[3] = v13;
  OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_643();
  v1[4] = type metadata accessor for Searchfoundation_RFEngageable.OneOf_EngageableOneof(0);
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    sub_1B8D9207C(v0, &qword_1EBAD1DA0, &qword_1B96E0CF0);
  }

  else
  {
    OUTLINED_FUNCTION_177_1();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 1)
    {
      OUTLINED_FUNCTION_1_98();
      OUTLINED_FUNCTION_128();
      sub_1B95DAC6C();
      goto LABEL_8;
    }

    sub_1B95DAC18();
  }

  *v13 = 0;
  v13[1] = 0xE000000000000000;
  v16 = v13 + *(v10 + 20);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

uint64_t Searchfoundation_RFEngageable.previewList.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_27_9();
  type metadata accessor for Searchfoundation_RFEngageable.OneOf_EngageableOneof(0);
  v8 = OUTLINED_FUNCTION_157_4();
  OUTLINED_FUNCTION_57(v8);
  if (v9)
  {
    sub_1B8D9207C(v1, &qword_1EBAD1DA0, &qword_1B96E0CF0);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_48_18();
      OUTLINED_FUNCTION_288();
      return sub_1B95DAC6C();
    }

    sub_1B95DAC18();
  }

  *v0 = MEMORY[0x1E69E7CC0];
  v12 = type metadata accessor for Searchfoundation_RFPreviewList(0);
  return OUTLINED_FUNCTION_163_2(v12);
}

uint64_t sub_1B95C9EDC()
{
  sub_1B8D9207C(v0, &qword_1EBAD1DA0, &qword_1B96E0CF0);
  OUTLINED_FUNCTION_128();
  sub_1B95DAC6C();
  v1 = type metadata accessor for Searchfoundation_RFEngageable.OneOf_EngageableOneof(0);
  OUTLINED_FUNCTION_543();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
}

uint64_t Searchfoundation_RFPreviewList.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v1 = type metadata accessor for Searchfoundation_RFPreviewList(0);
  return OUTLINED_FUNCTION_163_2(v1);
}

void Searchfoundation_RFEngageable.previewList.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_25_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  v10 = type metadata accessor for Searchfoundation_RFPreviewList(v9);
  OUTLINED_FUNCTION_59_1(v10);
  v12 = *(v11 + 64);
  v1[2] = __swift_coroFrameAllocStub(v12);
  v13 = __swift_coroFrameAllocStub(v12);
  v1[3] = v13;
  OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_643();
  v1[4] = type metadata accessor for Searchfoundation_RFEngageable.OneOf_EngageableOneof(0);
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    sub_1B8D9207C(v0, &qword_1EBAD1DA0, &qword_1B96E0CF0);
LABEL_7:
    *v13 = MEMORY[0x1E69E7CC0];
    v16 = v13 + *(v10 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_1B95DAC18();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_48_18();
  OUTLINED_FUNCTION_128();
  sub_1B95DAC6C();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B95CA138()
{
  OUTLINED_FUNCTION_284();
  v1 = (*v0)[3];
  v2 = (*v0)[4];
  v3 = (*v0)[1];
  v4 = (*v0)[2];
  v5 = **v0;
  if (v6)
  {
    OUTLINED_FUNCTION_461();
    sub_1B95DACC0();
    sub_1B8D9207C(v5, &qword_1EBAD1DA0, &qword_1B96E0CF0);
    sub_1B95DAC6C();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v7, v8, v9, v2);
    sub_1B95DAC18();
  }

  else
  {
    sub_1B8D9207C(**v0, &qword_1EBAD1DA0, &qword_1B96E0CF0);
    sub_1B95DAC6C();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v2);
  }

  free(v1);
  free(v4);
  free(v3);
  OUTLINED_FUNCTION_283();

  free(v13);
}

uint64_t sub_1B95CA274()
{
  v0 = OUTLINED_FUNCTION_27();
  v2 = *(v1(v0) + 20);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_18_1();

  return v7(v6);
}

uint64_t sub_1B95CA2FC()
{
  v0 = OUTLINED_FUNCTION_313();
  v2 = *(v1(v0) + 20);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_209();

  return v7(v6);
}

uint64_t Searchfoundation_RFEngageable.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_RFEngageable(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

void static Searchfoundation_RFEngageable.OneOf_EngageableOneof.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v39 = type metadata accessor for Searchfoundation_RFPreviewList(0);
  v1 = OUTLINED_FUNCTION_59_1(v39);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_62();
  v6 = (v5 - v4);
  v40 = type metadata accessor for Searchfoundation_CommandReference(0);
  v7 = OUTLINED_FUNCTION_59_1(v40);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_62();
  v12 = (v11 - v10);
  v13 = type metadata accessor for Searchfoundation_RFEngageable.OneOf_EngageableOneof(0);
  v14 = OUTLINED_FUNCTION_59_1(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_66();
  v19 = (v17 - v18);
  MEMORY[0x1EEE9AC00](v20);
  v22 = (&v39 - v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1DA8, &unk_1B96E0CF8);
  OUTLINED_FUNCTION_183(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_139();
  v28 = *(v27 + 56);
  sub_1B95DACC0();
  sub_1B95DACC0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_114_12();
    sub_1B95DACC0();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_48_18();
      sub_1B95DAC6C();
      v29 = *v19;
      v30 = *v6;
      sub_1B8D79238();
      if (v31)
      {
        v32 = *(v39 + 20);
        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_114();
        sub_1B8CD3968(v33, v34);
        sub_1B964C850();
      }

      OUTLINED_FUNCTION_129_10();
      sub_1B95DAC18();
      OUTLINED_FUNCTION_200();
      goto LABEL_18;
    }
  }

  else
  {
    OUTLINED_FUNCTION_114_12();
    sub_1B95DACC0();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      OUTLINED_FUNCTION_1_98();
      sub_1B95DAC6C();
      v35 = *v22 == *v12 && v22[1] == v12[1];
      if (v35 || (sub_1B964C9F0() & 1) != 0)
      {
        v36 = *(v40 + 20);
        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_114();
        sub_1B8CD3968(v37, v38);
        sub_1B964C850();
        OUTLINED_FUNCTION_4_66();
        sub_1B95DAC18();
      }

      else
      {
        OUTLINED_FUNCTION_4_66();
        sub_1B95DAC18();
      }

      OUTLINED_FUNCTION_4_66();
LABEL_18:
      sub_1B95DAC18();
      OUTLINED_FUNCTION_27_21();
      sub_1B95DAC18();
      goto LABEL_19;
    }

    OUTLINED_FUNCTION_4_66();
  }

  sub_1B95DAC18();
  sub_1B8D9207C(v0, &qword_1EBAD1DA8, &unk_1B96E0CF8);
LABEL_19:
  OUTLINED_FUNCTION_283();
}

uint64_t static Searchfoundation_RFPreviewList.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v1 = *v0;
  v3 = *v2;
  sub_1B8D79238();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for Searchfoundation_RFPreviewList(0);
  OUTLINED_FUNCTION_871(v5);
  OUTLINED_FUNCTION_0_114();
  sub_1B8CD3968(v6, v7);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t Searchfoundation_RFPreviewList.previews.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Searchfoundation_RFPreviewList.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_RFPreviewList(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_RFPreview.text.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_RFPreview.text.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Searchfoundation_RFPreview.commandReference.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = *(type metadata accessor for Searchfoundation_RFPreview(v7) + 24);
  OUTLINED_FUNCTION_100_0();
  type metadata accessor for Searchfoundation_CommandReference(0);
  OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    OUTLINED_FUNCTION_158_4();
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB8D80, &unk_1B964D580);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_98();
    OUTLINED_FUNCTION_182();
    return sub_1B95DAC6C();
  }

  return result;
}

uint64_t Searchfoundation_RFPreview.commandReference.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_RFPreview(v1);
  sub_1B8D9207C(v0 + *(v2 + 24), &qword_1EBAB8D80, &unk_1B964D580);
  OUTLINED_FUNCTION_1_98();
  OUTLINED_FUNCTION_122_0();
  sub_1B95DAC6C();
  type metadata accessor for Searchfoundation_CommandReference(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_RFPreview.commandReference.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  v10 = type metadata accessor for Searchfoundation_CommandReference(v9);
  *(v1 + 16) = v10;
  OUTLINED_FUNCTION_59_1(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  v16 = type metadata accessor for Searchfoundation_RFPreview(v15);
  OUTLINED_FUNCTION_64_0(*(v16 + 24));
  OUTLINED_FUNCTION_16_2();
  if (v17)
  {
    OUTLINED_FUNCTION_157_6();
    OUTLINED_FUNCTION_16_2();
    if (!v17)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8D80, &unk_1B964D580);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_98();
    OUTLINED_FUNCTION_461();
    sub_1B95DAC6C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B95CAB44()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_128();
    sub_1B95DACC0();
    sub_1B8D9207C(v4 + v3, &qword_1EBAB8D80, &unk_1B964D580);
    OUTLINED_FUNCTION_1_98();
    OUTLINED_FUNCTION_220_6();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_4_66();
    sub_1B95DAC18();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBAB8D80, &unk_1B964D580);
    OUTLINED_FUNCTION_1_98();
    OUTLINED_FUNCTION_221_4();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v7);
}

uint64_t Searchfoundation_RFPreview.hasCommandReference.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  v7 = *(type metadata accessor for Searchfoundation_RFPreview(v6) + 24);
  OUTLINED_FUNCTION_274_0();
  v8 = type metadata accessor for Searchfoundation_CommandReference(0);
  OUTLINED_FUNCTION_11(v8);
  return OUTLINED_FUNCTION_193_1();
}

Swift::Void __swiftcall Searchfoundation_RFPreview.clearCommandReference()()
{
  v1 = type metadata accessor for Searchfoundation_RFPreview(0);
  sub_1B8D9207C(v0 + *(v1 + 24), &qword_1EBAB8D80, &unk_1B964D580);
  type metadata accessor for Searchfoundation_CommandReference(0);
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Searchfoundation_RFPreview.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_RFPreview(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_RFPreview.init()()
{
  v0 = OUTLINED_FUNCTION_61_3();
  v1 = type metadata accessor for Searchfoundation_RFPreview(v0);
  OUTLINED_FUNCTION_163_2(v1);
  v2 = *(v1 + 24);
  type metadata accessor for Searchfoundation_CommandReference(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_RFTextEncapsulation.style.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Searchfoundation_RFTextEncapsulation.style.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Searchfoundation_RFTextEncapsulation.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_RFTextEncapsulation(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_RFHighlightedSubstring.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_RFHighlightedSubstring(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B95CAF14()
{
  v0 = OUTLINED_FUNCTION_61_3();
  v2 = v1(v0);
  return OUTLINED_FUNCTION_163_2(v2);
}

uint64_t Searchfoundation_RFAttribution.title.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = *(type metadata accessor for Searchfoundation_RFAttribution(v7) + 36);
  OUTLINED_FUNCTION_100_0();
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    OUTLINED_FUNCTION_465_0(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_84();
    OUTLINED_FUNCTION_182();
    return sub_1B95DAC6C();
  }

  return result;
}

uint64_t Searchfoundation_RFAttribution.title.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_RFAttribution(v1);
  sub_1B8D9207C(v0 + *(v2 + 36), &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_2_84();
  OUTLINED_FUNCTION_122_0();
  sub_1B95DAC6C();
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_RFAttribution.title.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  v10 = type metadata accessor for Searchfoundation_RFTextProperty(v9);
  *(v1 + 16) = v10;
  OUTLINED_FUNCTION_59_1(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  v16 = type metadata accessor for Searchfoundation_RFAttribution(v15);
  OUTLINED_FUNCTION_64_0(*(v16 + 36));
  OUTLINED_FUNCTION_16_2();
  if (v17)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v17)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_84();
    OUTLINED_FUNCTION_461();
    sub_1B95DAC6C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B95CB198()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_128();
    sub_1B95DACC0();
    sub_1B8D9207C(v4 + v3, &qword_1EBAB8DF8, &qword_1B96B9A80);
    OUTLINED_FUNCTION_2_84();
    OUTLINED_FUNCTION_220_6();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_12_41();
    sub_1B95DAC18();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBAB8DF8, &qword_1B96B9A80);
    OUTLINED_FUNCTION_2_84();
    OUTLINED_FUNCTION_221_4();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v7);
}

uint64_t Searchfoundation_RFAttribution.hasTitle.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  v7 = *(type metadata accessor for Searchfoundation_RFAttribution(v6) + 36);
  OUTLINED_FUNCTION_274_0();
  v8 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_11(v8);
  return OUTLINED_FUNCTION_193_1();
}

Swift::Void __swiftcall Searchfoundation_RFAttribution.clearTitle()()
{
  v1 = type metadata accessor for Searchfoundation_RFAttribution(0);
  sub_1B8D9207C(v0 + *(v1 + 36), &qword_1EBAB8DF8, &qword_1B96B9A80);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Searchfoundation_RFAttribution.subtitle.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = *(type metadata accessor for Searchfoundation_RFAttribution(v7) + 40);
  OUTLINED_FUNCTION_100_0();
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    OUTLINED_FUNCTION_465_0(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_84();
    OUTLINED_FUNCTION_182();
    return sub_1B95DAC6C();
  }

  return result;
}

uint64_t Searchfoundation_RFAttribution.subtitle.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_RFAttribution(v1);
  sub_1B8D9207C(v0 + *(v2 + 40), &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_2_84();
  OUTLINED_FUNCTION_122_0();
  sub_1B95DAC6C();
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_RFAttribution.subtitle.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  v10 = type metadata accessor for Searchfoundation_RFTextProperty(v9);
  *(v1 + 16) = v10;
  OUTLINED_FUNCTION_59_1(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  v16 = type metadata accessor for Searchfoundation_RFAttribution(v15);
  OUTLINED_FUNCTION_64_0(*(v16 + 40));
  OUTLINED_FUNCTION_16_2();
  if (v17)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v17)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_84();
    OUTLINED_FUNCTION_461();
    sub_1B95DAC6C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Searchfoundation_RFAttribution.hasSubtitle.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  v7 = *(type metadata accessor for Searchfoundation_RFAttribution(v6) + 40);
  OUTLINED_FUNCTION_274_0();
  v8 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_11(v8);
  return OUTLINED_FUNCTION_193_1();
}

Swift::Void __swiftcall Searchfoundation_RFAttribution.clearSubtitle()()
{
  v1 = type metadata accessor for Searchfoundation_RFAttribution(0);
  sub_1B8D9207C(v0 + *(v1 + 40), &qword_1EBAB8DF8, &qword_1B96B9A80);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Searchfoundation_RFAttribution.image.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = *(type metadata accessor for Searchfoundation_RFAttribution(v7) + 44);
  OUTLINED_FUNCTION_100_0();
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    OUTLINED_FUNCTION_465_0(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v0, &qword_1EBACC708, &unk_1B96D92F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_55();
    OUTLINED_FUNCTION_182();
    return sub_1B95DAC6C();
  }

  return result;
}

uint64_t Searchfoundation_RFAttribution.image.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_RFAttribution(v1);
  sub_1B8D9207C(v0 + *(v2 + 44), &qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_5_55();
  OUTLINED_FUNCTION_122_0();
  sub_1B95DAC6C();
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_RFAttribution.image.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  v10 = type metadata accessor for Searchfoundation_RFVisualProperty(v9);
  *(v1 + 16) = v10;
  OUTLINED_FUNCTION_59_1(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  v16 = type metadata accessor for Searchfoundation_RFAttribution(v15);
  OUTLINED_FUNCTION_64_0(*(v16 + 44));
  OUTLINED_FUNCTION_16_2();
  if (v17)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v17)
    {
      sub_1B8D9207C(v0, &qword_1EBACC708, &unk_1B96D92F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_55();
    OUTLINED_FUNCTION_461();
    sub_1B95DAC6C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B95CB8C4()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_128();
    sub_1B95DACC0();
    sub_1B8D9207C(v4 + v3, &qword_1EBACC708, &unk_1B96D92F0);
    OUTLINED_FUNCTION_5_55();
    OUTLINED_FUNCTION_220_6();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_46_18();
    sub_1B95DAC18();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBACC708, &unk_1B96D92F0);
    OUTLINED_FUNCTION_5_55();
    OUTLINED_FUNCTION_221_4();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v7);
}

uint64_t Searchfoundation_RFAttribution.hasImage.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  v7 = *(type metadata accessor for Searchfoundation_RFAttribution(v6) + 44);
  OUTLINED_FUNCTION_274_0();
  v8 = type metadata accessor for Searchfoundation_RFVisualProperty(0);
  OUTLINED_FUNCTION_11(v8);
  return OUTLINED_FUNCTION_193_1();
}

Swift::Void __swiftcall Searchfoundation_RFAttribution.clearImage()()
{
  v1 = type metadata accessor for Searchfoundation_RFAttribution(0);
  sub_1B8D9207C(v0 + *(v1 + 44), &qword_1EBACC708, &unk_1B96D92F0);
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Searchfoundation_RFAttribution.localizedIndex.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_RFAttribution.localizedIndex.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t Searchfoundation_RFAttribution.localizedSeparator.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_RFAttribution.localizedSeparator.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 32);

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t Searchfoundation_RFAttribution.locale.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_RFAttribution.locale.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 48);

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t Searchfoundation_RFAttribution.commandReference.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = *(type metadata accessor for Searchfoundation_RFAttribution(v7) + 48);
  OUTLINED_FUNCTION_100_0();
  type metadata accessor for Searchfoundation_CommandReference(0);
  OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    OUTLINED_FUNCTION_158_4();
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB8D80, &unk_1B964D580);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_98();
    OUTLINED_FUNCTION_182();
    return sub_1B95DAC6C();
  }

  return result;
}

uint64_t Searchfoundation_RFAttribution.commandReference.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_RFAttribution(v1);
  sub_1B8D9207C(v0 + *(v2 + 48), &qword_1EBAB8D80, &unk_1B964D580);
  OUTLINED_FUNCTION_1_98();
  OUTLINED_FUNCTION_122_0();
  sub_1B95DAC6C();
  type metadata accessor for Searchfoundation_CommandReference(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_RFAttribution.commandReference.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  v10 = type metadata accessor for Searchfoundation_CommandReference(v9);
  *(v1 + 16) = v10;
  OUTLINED_FUNCTION_59_1(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  v16 = type metadata accessor for Searchfoundation_RFAttribution(v15);
  OUTLINED_FUNCTION_64_0(*(v16 + 48));
  OUTLINED_FUNCTION_16_2();
  if (v17)
  {
    OUTLINED_FUNCTION_157_6();
    OUTLINED_FUNCTION_16_2();
    if (!v17)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8D80, &unk_1B964D580);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_98();
    OUTLINED_FUNCTION_461();
    sub_1B95DAC6C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Searchfoundation_RFAttribution.hasCommandReference.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  v7 = *(type metadata accessor for Searchfoundation_RFAttribution(v6) + 48);
  OUTLINED_FUNCTION_274_0();
  v8 = type metadata accessor for Searchfoundation_CommandReference(0);
  OUTLINED_FUNCTION_11(v8);
  return OUTLINED_FUNCTION_193_1();
}

Swift::Void __swiftcall Searchfoundation_RFAttribution.clearCommandReference()()
{
  v1 = type metadata accessor for Searchfoundation_RFAttribution(0);
  sub_1B8D9207C(v0 + *(v1 + 48), &qword_1EBAB8D80, &unk_1B964D580);
  type metadata accessor for Searchfoundation_CommandReference(0);
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Searchfoundation_RFAttribution.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Searchfoundation_RFAttribution(v0) + 32);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Searchfoundation_RFAttribution.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_RFAttribution(v0) + 32);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Searchfoundation_RFAttribution.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_RFAttribution(v0) + 32);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_RFAttribution.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0xE000000000000000;
  v2 = type metadata accessor for Searchfoundation_RFAttribution(0);
  v3 = a1 + v2[8];
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v4 = v2[9];
  v5 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v5);
  v9 = v2[10];
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v5);
  v13 = v2[11];
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  v18 = v2[12];
  type metadata accessor for Searchfoundation_CommandReference(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
}

uint64_t Searchfoundation_RFFont.name.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_27_9();
  type metadata accessor for Searchfoundation_RFFont.OneOf_Value(0);
  v8 = OUTLINED_FUNCTION_157_4();
  OUTLINED_FUNCTION_57(v8);
  if (v9)
  {
    result = sub_1B8D9207C(v1, &qword_1EBAD1DB0, &qword_1B96E0D08);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    result = swift_getEnumCaseMultiPayload();
    if (result != 1)
    {
      v11 = *v1;
      v12 = *(v1 + 8);
      goto LABEL_8;
    }

    result = sub_1B95DAC18();
  }

  v11 = 0;
  v12 = 1;
LABEL_8:
  *v0 = v11;
  *(v0 + 8) = v12;
  return result;
}

void *sub_1B95CC280@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X3>, uint64_t a2@<X8>)
{
  result = a1(&v5);
  v4 = v6;
  *a2 = v5;
  *(a2 + 8) = v4;
  return result;
}

uint64_t sub_1B95CC2C8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *))
{
  v5 = *(a1 + 8);
  v7 = *a1;
  v8 = v5;
  return a5(&v7);
}

uint64_t Searchfoundation_RFFont.name.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  sub_1B8D9207C(v1, &qword_1EBAD1DB0, &qword_1B96E0D08);
  *v1 = v2;
  *(v1 + 8) = v3;
  v4 = type metadata accessor for Searchfoundation_RFFont.OneOf_Value(0);
  OUTLINED_FUNCTION_288();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v4);
}

uint64_t Searchfoundation_RFFont.name.modify(void *a1)
{
  v2 = v1;
  v4 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v4;
  v4[2] = v2;
  v5 = OUTLINED_FUNCTION_690();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_183(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v4[3] = v9;
  OUTLINED_FUNCTION_461();
  sub_1B8D92024();
  v4[4] = type metadata accessor for Searchfoundation_RFFont.OneOf_Value(0);
  OUTLINED_FUNCTION_28_13();
  OUTLINED_FUNCTION_178(v10, v11, v12);
  if (v13)
  {
    sub_1B8D9207C(v9, &qword_1EBAD1DB0, &qword_1B96E0D08);
  }

  else
  {
    OUTLINED_FUNCTION_303();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 1)
    {
      v15 = *v9;
      v16 = v9[8];
      goto LABEL_8;
    }

    sub_1B95DAC18();
  }

  v15 = 0;
  v16 = 1;
LABEL_8:
  *v4 = v15;
  *(v4 + 8) = v16;
  return OUTLINED_FUNCTION_19_2();
}

void sub_1B95CC4BC(uint64_t **a1)
{
  v1 = *a1;
  v3 = (*a1)[3];
  v2 = (*a1)[4];
  v4 = (*a1)[2];
  v5 = **a1;
  v6 = *(*a1 + 8);
  sub_1B8D9207C(v4, &qword_1EBAD1DB0, &qword_1B96E0D08);
  *v4 = v5;
  *(v4 + 8) = v6;
  OUTLINED_FUNCTION_128();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_80();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v2);
  free(v3);

  free(v1);
}

uint64_t Searchfoundation_RFFont.system.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_27_9();
  type metadata accessor for Searchfoundation_RFFont.OneOf_Value(0);
  v8 = OUTLINED_FUNCTION_157_4();
  OUTLINED_FUNCTION_57(v8);
  if (v9)
  {
    sub_1B8D9207C(v1, &qword_1EBAD1DB0, &qword_1B96E0D08);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_9_47();
      OUTLINED_FUNCTION_288();
      return sub_1B95DAC6C();
    }

    sub_1B95DAC18();
  }

  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = 1;
  v12 = type metadata accessor for Searchfoundation_RFFont.RFSystemFont(0);
  return OUTLINED_FUNCTION_279(v12);
}

uint64_t Searchfoundation_RFFont.system.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAD1DB0, &qword_1B96E0D08);
  OUTLINED_FUNCTION_9_47();
  OUTLINED_FUNCTION_432();
  sub_1B95DAC6C();
  v1 = type metadata accessor for Searchfoundation_RFFont.OneOf_Value(0);
  OUTLINED_FUNCTION_288();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
}

uint64_t Searchfoundation_RFFont.RFSystemFont.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v1 = type metadata accessor for Searchfoundation_RFFont.RFSystemFont(0);
  return OUTLINED_FUNCTION_279(v1);
}

void Searchfoundation_RFFont.system.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_25_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  v10 = type metadata accessor for Searchfoundation_RFFont.RFSystemFont(v9);
  OUTLINED_FUNCTION_59_1(v10);
  v12 = *(v11 + 64);
  v1[2] = __swift_coroFrameAllocStub(v12);
  v13 = __swift_coroFrameAllocStub(v12);
  v1[3] = v13;
  OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_643();
  v1[4] = type metadata accessor for Searchfoundation_RFFont.OneOf_Value(0);
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    sub_1B8D9207C(v0, &qword_1EBAD1DB0, &qword_1B96E0D08);
LABEL_7:
    *v13 = 0;
    v13[1] = 0;
    *(v13 + 16) = 1;
    v16 = v13 + *(v10 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_1B95DAC18();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_9_47();
  OUTLINED_FUNCTION_128();
  sub_1B95DAC6C();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B95CC860(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  v5 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = **a1;
  if (a2)
  {
    OUTLINED_FUNCTION_461();
    sub_1B95DACC0();
    sub_1B8D9207C(v7, &qword_1EBAD1DB0, &qword_1B96E0D08);
    OUTLINED_FUNCTION_9_47();
    sub_1B95DAC6C();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v4);
    OUTLINED_FUNCTION_133_10();
    sub_1B95DAC18();
  }

  else
  {
    sub_1B8D9207C(**a1, &qword_1EBAD1DB0, &qword_1B96E0D08);
    OUTLINED_FUNCTION_9_47();
    OUTLINED_FUNCTION_1_0();
    sub_1B95DAC6C();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v4);
  }

  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

uint64_t Searchfoundation_RFFont.applySmallCaps.setter(char a1)
{
  result = OUTLINED_FUNCTION_188_4();
  *(v1 + v4) = a1;
  return result;
}

uint64_t Searchfoundation_RFFont.applySmallCaps.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_RFFont(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_RFFont.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_RFFont(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

void static Searchfoundation_RFFont.OneOf_Value.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v2 = type metadata accessor for Searchfoundation_RFFont.RFSystemFont(0);
  v3 = OUTLINED_FUNCTION_183(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_62();
  v6 = type metadata accessor for Searchfoundation_RFFont.OneOf_Value(0);
  v7 = OUTLINED_FUNCTION_59_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_66();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_219_0();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1DB8, &unk_1B96E0D10);
  OUTLINED_FUNCTION_183(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_139();
  v16 = v0 + *(v15 + 56);
  sub_1B95DACC0();
  OUTLINED_FUNCTION_690();
  sub_1B95DACC0();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_121_7();
    sub_1B95DACC0();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v19 = *(v16 + 8);
      sub_1B8D92198(*v1, *(v1 + 8), *v16);
      goto LABEL_6;
    }

LABEL_8:
    sub_1B8D9207C(v0, &qword_1EBAD1DB8, &unk_1B96E0D10);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_121_7();
  sub_1B95DACC0();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_133_10();
    sub_1B95DAC18();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_9_47();
  OUTLINED_FUNCTION_200();
  sub_1B95DAC6C();
  v17 = OUTLINED_FUNCTION_74_7();
  static Searchfoundation_RFFont.RFSystemFont.== infix(_:_:)(v17, v18);
  sub_1B95DAC18();
  OUTLINED_FUNCTION_236();
  sub_1B95DAC18();
LABEL_6:
  OUTLINED_FUNCTION_49_18();
  sub_1B95DAC18();
LABEL_9:
  OUTLINED_FUNCTION_283();
}

uint64_t static Searchfoundation_RFFont.RFSystemFont.== infix(_:_:)(float *a1, float *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_468();
  v3 = *(v2 + 8);
  v5 = *(v4 + 8);
  if (*(v4 + 16) == 1)
  {
    switch(v5)
    {
      case 1:
        if (v3 == 1)
        {
          goto LABEL_7;
        }

        return 0;
      case 2:
        if (v3 == 2)
        {
          goto LABEL_7;
        }

        return 0;
      case 3:
        if (v3 == 3)
        {
          goto LABEL_7;
        }

        return 0;
      case 4:
        if (v3 == 4)
        {
          goto LABEL_7;
        }

        return 0;
      case 5:
        if (v3 == 5)
        {
          goto LABEL_7;
        }

        return 0;
      case 6:
        if (v3 == 6)
        {
          goto LABEL_7;
        }

        return 0;
      case 7:
        if (v3 == 7)
        {
          goto LABEL_7;
        }

        return 0;
      case 8:
        if (v3 == 8)
        {
          goto LABEL_7;
        }

        return 0;
      case 9:
        if (v3 == 9)
        {
          goto LABEL_7;
        }

        return 0;
      default:
        if (v3)
        {
          return 0;
        }

        goto LABEL_7;
    }
  }

  if (v3 != v5)
  {
    return 0;
  }

LABEL_7:
  v7 = *(type metadata accessor for Searchfoundation_RFFont.RFSystemFont(0) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_114();
  sub_1B8CD3968(v8, v9);
  return OUTLINED_FUNCTION_634() & 1;
}

void Searchfoundation_RFFont.RFSystemFont.weight.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Searchfoundation_RFFont.RFSystemFont.weight.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  return result;
}

uint64_t Searchfoundation_RFFont.RFSystemFont.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_RFFont.RFSystemFont(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B95CCEA8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD1C70);
  __swift_project_value_buffer(v0, qword_1EBAD1C70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "RF_TEXT_ENCAPSULATION_STYLE_OUTLINE";
  *(v6 + 8) = 35;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "RF_TEXT_ENCAPSULATION_STYLE_FILL";
  *(v10 + 1) = 32;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "RF_TEXT_ENCAPSULATION_STYLE_BADGE";
  *(v12 + 1) = 33;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B95CD0D4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB5328);
  __swift_project_value_buffer(v0, qword_1EBAB5328);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1B964D040;
  v4 = v30 + v3 + v1[14];
  *(v30 + v3) = 0;
  *v4 = "RF_NAMED_FONT_UNSPECIFIED";
  *(v4 + 8) = 25;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v30 + v3 + v2 + v1[14];
  *(v30 + v3 + v2) = 1;
  *v8 = "RF_NAMED_FONT_LARGE_TITLE";
  *(v8 + 8) = 25;
  *(v8 + 16) = 2;
  v7();
  v9 = (v30 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "RF_NAMED_FONT_TITLE";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v7();
  v11 = (v30 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "RF_NAMED_FONT_TITLE2";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v7();
  v13 = (v30 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "RF_NAMED_FONT_TITLE3";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v7();
  v15 = (v30 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "RF_NAMED_FONT_HEADLINE";
  *(v16 + 1) = 22;
  v16[16] = 2;
  v7();
  v17 = (v30 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "RF_NAMED_FONT_SUBHEADLINE";
  *(v18 + 1) = 25;
  v18[16] = 2;
  v7();
  v19 = (v30 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "RF_NAMED_FONT_BODY";
  *(v20 + 1) = 18;
  v20[16] = 2;
  v7();
  v21 = (v30 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "RF_NAMED_FONT_CALLOUT";
  *(v22 + 1) = 21;
  v22[16] = 2;
  v7();
  v23 = (v30 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "RF_NAMED_FONT_FOOTNOTE";
  *(v24 + 1) = 22;
  v24[16] = 2;
  v7();
  v25 = (v30 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "RF_NAMED_FONT_CAPTION";
  *(v26 + 1) = 21;
  v26[16] = 2;
  v7();
  v27 = (v30 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "RF_NAMED_FONT_CAPTION2";
  *(v28 + 1) = 22;
  v28[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B95CD51C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB54E0);
  __swift_project_value_buffer(v0, qword_1EBAB54E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B9656CE0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "RF_WEIGHT_UNSPECIFIED";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "RF_WEIGHT_REGULAR";
  *(v10 + 8) = 17;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "RF_WEIGHT_BLACK";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "RF_WEIGHT_BOLD";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "RF_WEIGHT_HEAVY";
  *(v16 + 1) = 15;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "RF_WEIGHT_LIGHT";
  *(v18 + 1) = 15;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "RF_WEIGHT_MEDIUM";
  *(v20 + 1) = 16;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "RF_WEIGHT_SEMIBOLD";
  *(v22 + 1) = 18;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 8;
  *v24 = "RF_WEIGHT_THIN";
  *(v24 + 1) = 14;
  v24[16] = 2;
  v9();
  v25 = (v5 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 9;
  *v26 = "RF_WEIGHT_ULTRALIGHT";
  *(v26 + 1) = 20;
  v26[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B95CD8F8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD1C88);
  __swift_project_value_buffer(v0, qword_1EBAD1C88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "RF_FONT_DESIGN_UNSPECIFIED";
  *(v6 + 8) = 26;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "RF_FONT_DESIGN_MONOSPACED";
  *(v10 + 8) = 25;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "RF_FONT_DESIGN_ROUNDED";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "RF_FONT_DESIGN_SERIF";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B95CDB78()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB5038);
  __swift_project_value_buffer(v0, qword_1EBAB5038);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "text_elements";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "is_safe_for_logging";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

void Searchfoundation_RFTextProperty.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C400();
    }

    else if (v1 == 1)
    {
      OUTLINED_FUNCTION_9();
      sub_1B95D6284();
    }
  }
}

uint64_t Searchfoundation_RFTextProperty.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (type metadata accessor for Searchfoundation_RFTextElement(0), sub_1B8CD3968(&qword_1ED9D2D88, type metadata accessor for Searchfoundation_RFTextElement), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
  {
    if (*(v2 + 8) != 1 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_24_3(), result = sub_1B964C670(), !v1))
    {
      v4 = *(type metadata accessor for Searchfoundation_RFTextProperty(0) + 24);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t sub_1B95CDFA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3968(&qword_1EBAD2000, type metadata accessor for Searchfoundation_RFTextProperty);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B95CE020(uint64_t a1)
{
  v2 = sub_1B8CD3968(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B95CE090()
{
  sub_1B8CD3968(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty);

  return sub_1B964C5D0();
}

uint64_t sub_1B95CE11C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB5148);
  __swift_project_value_buffer(v0, qword_1EBAB5148);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "formatted_text";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "line_limit";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "show_more_on_tap";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

void Searchfoundation_RFTextElement.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B95CE418();
        break;
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C4A0();
        break;
      case 1:
        OUTLINED_FUNCTION_9();
        sub_1B95D6284();
        break;
    }
  }
}

uint64_t sub_1B95CE418()
{
  v0 = *(type metadata accessor for Searchfoundation_RFTextElement(0) + 28);
  type metadata accessor for Searchfoundation_RFShowMoreOnTap(0);
  sub_1B8CD3968(&qword_1EBAD1DC8, type metadata accessor for Searchfoundation_RFShowMoreOnTap);
  return sub_1B964C580();
}

void Searchfoundation_RFTextElement.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_614();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DE8, &qword_1B96E0CB0);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_151();
  v10 = type metadata accessor for Searchfoundation_RFShowMoreOnTap(v9);
  v11 = OUTLINED_FUNCTION_59_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_62();
  if (!*(*v1 + 16) || (type metadata accessor for Searchfoundation_RFFormattedText(0), sub_1B8CD3968(&qword_1ED9D2AD0, type metadata accessor for Searchfoundation_RFFormattedText), OUTLINED_FUNCTION_231(), v2 = v0, sub_1B964C730(), !v0))
  {
    if (!*(v3 + 8) || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_24_3(), sub_1B964C6C0(), !v2))
    {
      v14 = type metadata accessor for Searchfoundation_RFTextElement(0);
      v15 = *(v14 + 28);
      sub_1B8D92024();
      OUTLINED_FUNCTION_170_2();
      OUTLINED_FUNCTION_178(v16, v17, v18);
      if (v19)
      {
        sub_1B8D9207C(v4, &qword_1EBAB8DE8, &qword_1B96E0CB0);
LABEL_9:
        v20 = *(v14 + 24);
        OUTLINED_FUNCTION_8_1();
        goto LABEL_10;
      }

      OUTLINED_FUNCTION_6_50();
      sub_1B95DAC6C();
      sub_1B8CD3968(&qword_1EBAD1DC8, type metadata accessor for Searchfoundation_RFShowMoreOnTap);
      OUTLINED_FUNCTION_687();
      sub_1B964C740();
      OUTLINED_FUNCTION_47_18();
      sub_1B95DAC18();
      if (!v2)
      {
        goto LABEL_9;
      }
    }
  }

LABEL_10:
  OUTLINED_FUNCTION_272_0();
}

void static Searchfoundation_RFTextElement.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_16();
  v4 = type metadata accessor for Searchfoundation_RFShowMoreOnTap(0);
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_62();
  v10 = (v9 - v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DE8, &qword_1B96E0CB0);
  OUTLINED_FUNCTION_183(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_137();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF0, &unk_1B964D5F0);
  OUTLINED_FUNCTION_59_1(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_88();
  v19 = *v1;
  v20 = *v0;
  sub_1B8D5BF94();
  if ((v21 & 1) == 0 || *(v1 + 2) != *(v0 + 2))
  {
    goto LABEL_13;
  }

  v36 = type metadata accessor for Searchfoundation_RFTextElement(0);
  v22 = *(v36 + 28);
  v23 = *(v15 + 48);
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v2);
  if (v24)
  {
    OUTLINED_FUNCTION_37_0(v2 + v23);
    if (v24)
    {
      sub_1B8D9207C(v2, &qword_1EBAB8DE8, &qword_1B96E0CB0);
LABEL_21:
      v33 = *(v36 + 24);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_114();
      sub_1B8CD3968(v34, v35);
      v27 = OUTLINED_FUNCTION_199_0();
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  OUTLINED_FUNCTION_1_0();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v2 + v23);
  if (v24)
  {
    OUTLINED_FUNCTION_47_18();
    sub_1B95DAC18();
LABEL_11:
    v25 = &qword_1EBAB8DF0;
    v26 = &unk_1B964D5F0;
LABEL_12:
    sub_1B8D9207C(v2, v25, v26);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_6_50();
  sub_1B95DAC6C();
  v28 = *v3 == *v10 && v3[1] == v10[1];
  if (!v28 && (sub_1B964C9F0() & 1) == 0)
  {
    sub_1B95DAC18();
    sub_1B95DAC18();
    v25 = &qword_1EBAB8DE8;
    v26 = &qword_1B96E0CB0;
    goto LABEL_12;
  }

  v29 = *(v4 + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_114();
  sub_1B8CD3968(v30, v31);
  v32 = OUTLINED_FUNCTION_198_0();
  sub_1B95DAC18();
  sub_1B95DAC18();
  sub_1B8D9207C(v2, &qword_1EBAB8DE8, &qword_1B96E0CB0);
  if (v32)
  {
    goto LABEL_21;
  }

LABEL_13:
  v27 = 0;
LABEL_14:
  OUTLINED_FUNCTION_264(v27);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B95CEAB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3968(&qword_1EBAD1FF8, type metadata accessor for Searchfoundation_RFTextElement);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B95CEB34(uint64_t a1)
{
  v2 = sub_1B8CD3968(&qword_1ED9D2D88, type metadata accessor for Searchfoundation_RFTextElement);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B95CEBA4()
{
  sub_1B8CD3968(&qword_1ED9D2D88, type metadata accessor for Searchfoundation_RFTextElement);

  return sub_1B964C5D0();
}

uint64_t sub_1B95CED60(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3968(&qword_1EBAD1FF0, type metadata accessor for Searchfoundation_RFShowMoreOnTap);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B95CEDE0(uint64_t a1)
{
  v2 = sub_1B8CD3968(&qword_1EBAD1DC8, type metadata accessor for Searchfoundation_RFShowMoreOnTap);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B95CEE50()
{
  sub_1B8CD3968(&qword_1EBAD1DC8, type metadata accessor for Searchfoundation_RFShowMoreOnTap);

  return sub_1B964C5D0();
}

uint64_t sub_1B95CEEE8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB4F08);
  __swift_project_value_buffer(v0, qword_1EBAB4F08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1B966F8E0;
  v4 = v37 + v3 + v1[14];
  *(v37 + v3) = 1;
  *v4 = "text";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v37 + v3 + v2 + v1[14];
  *(v37 + v3 + v2) = 2;
  *v8 = "inline_image_element";
  *(v8 + 8) = 20;
  *(v8 + 16) = 2;
  v9 = *MEMORY[0x1E69AADE8];
  v7();
  v10 = (v37 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "color";
  *(v11 + 1) = 5;
  v11[16] = 2;
  v7();
  v12 = (v37 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "is_italic";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v7();
  v14 = (v37 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "is_bold";
  *(v15 + 1) = 7;
  v15[16] = 2;
  v7();
  v16 = (v37 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "text_encapsulation";
  *(v17 + 1) = 18;
  v17[16] = 2;
  v7();
  v18 = (v37 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "is_highlighted";
  *(v19 + 1) = 14;
  v19[16] = 2;
  v7();
  v20 = (v37 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "background_color";
  *(v21 + 1) = 16;
  v21[16] = 2;
  v7();
  v22 = (v37 + v3 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "attributions";
  *(v23 + 1) = 12;
  v23[16] = 2;
  v7();
  v24 = (v37 + v3 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "highlighted_substrings";
  *(v25 + 1) = 22;
  v25[16] = 2;
  v7();
  v26 = (v37 + v3 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "font";
  *(v27 + 1) = 4;
  v27[16] = 2;
  v7();
  v28 = (v37 + v3 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "is_underlined";
  *(v29 + 1) = 13;
  v29[16] = 2;
  v7();
  v30 = (v37 + v3 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 13;
  *v31 = "engageable";
  *(v31 + 1) = 10;
  v31[16] = 2;
  v7();
  v32 = (v37 + v3 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 14;
  *v33 = "weight";
  *(v33 + 1) = 6;
  v33[16] = 2;
  v7();
  v34 = (v37 + v3 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 15;
  *v35 = "design";
  *(v35 + 1) = 6;
  v35[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B95CF438()
{
  v0 = type metadata accessor for Searchfoundation_RFFormattedText._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1B95CF478();
  qword_1ED9D2AE0 = result;
  return result;
}

uint64_t sub_1B95CF478()
{
  v1 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__value;
  v2 = type metadata accessor for Searchfoundation_RFFormattedText.OneOf_Value(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__color;
  v4 = type metadata accessor for Searchfoundation_RFColor(0);
  __swift_storeEnumTagSinglePayload(v3 + v0, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__isItalic;
  v6 = type metadata accessor for Searchfoundation_RFOptionalBool(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__isBold, 1, 1, v6);
  v7 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__textEncapsulation;
  v8 = type metadata accessor for Searchfoundation_RFTextEncapsulation(0);
  __swift_storeEnumTagSinglePayload(v0 + v7, 1, 1, v8);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__isHighlighted, 1, 1, v6);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__backgroundColor, 1, 1, v4);
  v9 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__attributions) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__highlightedSubstrings) = v9;
  v10 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__font;
  v11 = type metadata accessor for Searchfoundation_RFFont(0);
  __swift_storeEnumTagSinglePayload(v0 + v10, 1, 1, v11);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__isUnderlined, 1, 1, v6);
  v12 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__engageable;
  v13 = type metadata accessor for Searchfoundation_RFEngageable(0);
  __swift_storeEnumTagSinglePayload(v0 + v12, 1, 1, v13);
  v14 = v0 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__weight;
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = v0 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__design;
  *v15 = 0;
  *(v15 + 8) = 1;
  return v0;
}

uint64_t sub_1B95CF644(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1D90, &qword_1B96E0CE0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v59 = v49 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1D88, &qword_1B96E0CD8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v58 = v49 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1D80, &qword_1B96E0CD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v52 = v49 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1D78, &qword_1B96E0CC8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DB8, &unk_1B96D9DC0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v60 = v49 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1D70, &unk_1B96E0CB8);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__value;
  v20 = type metadata accessor for Searchfoundation_RFFormattedText.OneOf_Value(0);
  __swift_storeEnumTagSinglePayload(v1 + v19, 1, 1, v20);
  v21 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__color;
  v22 = type metadata accessor for Searchfoundation_RFColor(0);
  __swift_storeEnumTagSinglePayload(v21 + v1, 1, 1, v22);
  v23 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__isItalic;
  v49[1] = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__isItalic;
  v24 = type metadata accessor for Searchfoundation_RFOptionalBool(0);
  __swift_storeEnumTagSinglePayload(v1 + v23, 1, 1, v24);
  v49[2] = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__isBold;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__isBold, 1, 1, v24);
  v25 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__textEncapsulation;
  v49[3] = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__textEncapsulation;
  v26 = type metadata accessor for Searchfoundation_RFTextEncapsulation(0);
  __swift_storeEnumTagSinglePayload(v1 + v25, 1, 1, v26);
  v49[4] = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__isHighlighted;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__isHighlighted, 1, 1, v24);
  v49[5] = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__backgroundColor;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__backgroundColor, 1, 1, v22);
  v50 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__attributions;
  v27 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__attributions) = MEMORY[0x1E69E7CC0];
  v51 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__highlightedSubstrings;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__highlightedSubstrings) = v27;
  v28 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__font;
  v53 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__font;
  v29 = type metadata accessor for Searchfoundation_RFFont(0);
  __swift_storeEnumTagSinglePayload(v1 + v28, 1, 1, v29);
  v54 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__isUnderlined;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__isUnderlined, 1, 1, v24);
  v30 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__engageable;
  v55 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__engageable;
  v31 = type metadata accessor for Searchfoundation_RFEngageable(0);
  __swift_storeEnumTagSinglePayload(v1 + v30, 1, 1, v31);
  v32 = v1 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__weight;
  v56 = v1 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__weight;
  *v32 = 0;
  *(v32 + 8) = 1;
  v33 = v1 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__design;
  v57 = v1 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__design;
  *v33 = 0;
  *(v33 + 8) = 1;
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v34 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__attributions;
  swift_beginAccess();
  v35 = *(a1 + v34);
  v36 = v50;
  swift_beginAccess();
  v37 = *(v1 + v36);
  *(v1 + v36) = v35;

  v38 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__highlightedSubstrings;
  swift_beginAccess();
  v39 = *(a1 + v38);
  v40 = v51;
  swift_beginAccess();
  v41 = *(v1 + v40);
  *(v1 + v40) = v39;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v42 = (a1 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__weight);
  swift_beginAccess();
  v43 = *v42;
  LOBYTE(v42) = *(v42 + 8);
  v44 = v56;
  swift_beginAccess();
  *v44 = v43;
  *(v44 + 8) = v42;
  v45 = (a1 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__design);
  swift_beginAccess();
  v46 = *v45;
  LOBYTE(v45) = *(v45 + 8);

  v47 = v57;
  swift_beginAccess();
  *v47 = v46;
  *(v47 + 8) = v45;
  return v1;
}

uint64_t sub_1B95CFFD8()
{
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__value, &qword_1EBAD1D70, &unk_1B96E0CB8);
  sub_1B8D9207C(OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__color + v0, &qword_1EBAB8DB8, &unk_1B96D9DC0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__isItalic, &qword_1EBAD1D78, &qword_1B96E0CC8);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__isBold, &qword_1EBAD1D78, &qword_1B96E0CC8);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__textEncapsulation, &qword_1EBAD1D80, &qword_1B96E0CD0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__isHighlighted, &qword_1EBAD1D78, &qword_1B96E0CC8);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__backgroundColor, &qword_1EBAB8DB8, &unk_1B96D9DC0);
  v1 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__attributions);

  v2 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__highlightedSubstrings);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__font, &qword_1EBAD1D88, &qword_1B96E0CD8);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__isUnderlined, &qword_1EBAD1D78, &qword_1B96E0CC8);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__engageable, &qword_1EBAD1D90, &qword_1B96E0CE0);
  return v0;
}

uint64_t sub_1B95D0158()
{
  v0 = sub_1B95CFFD8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Searchfoundation_RFFormattedText.decodeMessage<A>(decoder:)()
{
  v1 = v0;
  v2 = *(type metadata accessor for Searchfoundation_RFFormattedText(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for Searchfoundation_RFFormattedText._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_40_0();
    *(v1 + v2) = sub_1B95CF644(v9);
  }

  OUTLINED_FUNCTION_24_3();
  return sub_1B95D0248(v10, v11, v12, v13);
}

uint64_t sub_1B95D0248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1B95D04BC();
        break;
      case 2:
        sub_1B95D06D0(a1, a2, a3, a4);
        break;
      case 3:
        sub_1B95D0C40();
        break;
      case 4:
        sub_1B95D0D1C();
        break;
      case 5:
        sub_1B95D0DF8();
        break;
      case 6:
        sub_1B95D0ED4();
        break;
      case 7:
        sub_1B95D0FB0();
        break;
      case 8:
        sub_1B95D108C();
        break;
      case 9:
        sub_1B95D1168();
        break;
      case 10:
        sub_1B95D1244();
        break;
      case 11:
        sub_1B95D1320();
        break;
      case 12:
        sub_1B95D13FC();
        break;
      case 13:
        sub_1B95D14D8();
        break;
      case 14:
        v11 = sub_1B95DAEA8;
        v12 = a2;
        v13 = a1;
        v14 = a3;
        v15 = a4;
        v16 = &OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__weight;
        goto LABEL_16;
      case 15:
        v11 = sub_1B95DCE9C;
        v12 = a2;
        v13 = a1;
        v14 = a3;
        v15 = a4;
        v16 = &OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__design;
LABEL_16:
        sub_1B95D15B4(v12, v13, v14, v15, v16, v11);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B95D04BC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1D70, &unk_1B96E0CB8);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = (v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v3);
  v7 = v12 - v6;
  v13 = 0;
  v14 = 0;
  result = sub_1B964C520();
  if (v0)
  {
  }

  if (v14)
  {
    v15 = v14;
    v12[0] = v13;
    v9 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__value;
    swift_beginAccess();
    v12[1] = v9;
    sub_1B8D92024();
    v10 = type metadata accessor for Searchfoundation_RFFormattedText.OneOf_Value(0);
    LODWORD(v9) = __swift_getEnumTagSinglePayload(v7, 1, v10);
    sub_1B8D9207C(v7, &qword_1EBAD1D70, &unk_1B96E0CB8);
    if (v9 != 1)
    {
      sub_1B964C3D0();
    }

    v11 = v15;
    *v5 = v12[0];
    v5[1] = v11;
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v10);
    swift_beginAccess();
    sub_1B8DAA170();
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1B95D06D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Searchfoundation_RFImageElement(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1D70, &unk_1B96E0CB8);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Searchfoundation_RFFormattedText.OneOf_Value(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD2048, &qword_1B96E2808);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__value;
  swift_beginAccess();
  v32[1] = v26;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v15, &qword_1EBAD1D70, &unk_1B96E0CB8);
  }

  else
  {
    v32[0] = a1;
    sub_1B95DAC6C();
    sub_1B95DAC6C();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8D9207C(v25, &qword_1EBAD2048, &qword_1B96E2808);
      sub_1B95DAC6C();
      sub_1B95DAC6C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_1B95DAC18();
    }
  }

  sub_1B8CD3968(&qword_1ED9D2D28, type metadata accessor for Searchfoundation_RFImageElement);
  v27 = v38;
  sub_1B964C580();
  if (v27)
  {
    v28 = v25;
    return sub_1B8D9207C(v28, &qword_1EBAD2048, &qword_1B96E2808);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBAD2048, &qword_1B96E2808);
    v28 = v23;
    return sub_1B8D9207C(v28, &qword_1EBAD2048, &qword_1B96E2808);
  }

  sub_1B95DAC6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v30 = v35;
  sub_1B8D9207C(v25, &qword_1EBAD2048, &qword_1B96E2808);
  v31 = v33;
  sub_1B95DAC6C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B95D0C40()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFColor(0);
  sub_1B8CD3968(&qword_1EBAB5540, type metadata accessor for Searchfoundation_RFColor);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B95D0D1C()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFOptionalBool(0);
  sub_1B8CD3968(&qword_1ED9D2D18, type metadata accessor for Searchfoundation_RFOptionalBool);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B95D0DF8()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFOptionalBool(0);
  sub_1B8CD3968(&qword_1ED9D2D18, type metadata accessor for Searchfoundation_RFOptionalBool);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B95D0ED4()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFTextEncapsulation(0);
  sub_1B8CD3968(&qword_1EBAD1F28, type metadata accessor for Searchfoundation_RFTextEncapsulation);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B95D0FB0()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFOptionalBool(0);
  sub_1B8CD3968(&qword_1ED9D2D18, type metadata accessor for Searchfoundation_RFOptionalBool);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B95D108C()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFColor(0);
  sub_1B8CD3968(&qword_1EBAB5540, type metadata accessor for Searchfoundation_RFColor);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B95D1168()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFAttribution(0);
  sub_1B8CD3968(&qword_1EBAD1F58, type metadata accessor for Searchfoundation_RFAttribution);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B95D1244()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFHighlightedSubstring(0);
  sub_1B8CD3968(&qword_1EBAD1F40, type metadata accessor for Searchfoundation_RFHighlightedSubstring);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B95D1320()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFFont(0);
  sub_1B8CD3968(&qword_1ED9D3060, type metadata accessor for Searchfoundation_RFFont);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B95D13FC()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFOptionalBool(0);
  sub_1B8CD3968(&qword_1ED9D2D18, type metadata accessor for Searchfoundation_RFOptionalBool);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B95D14D8()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFEngageable(0);
  sub_1B8CD3968(&qword_1EBAD1EE8, type metadata accessor for Searchfoundation_RFEngageable);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B95D15B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t))
{
  v7 = *a5;
  OUTLINED_FUNCTION_131();
  v8 = swift_beginAccess();
  a6(v8);
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t Searchfoundation_RFFormattedText.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + *(type metadata accessor for Searchfoundation_RFFormattedText(0) + 20));
  OUTLINED_FUNCTION_12();
  result = sub_1B95D16BC(v7, v8, v9, a3);
  if (!v4)
  {
    OUTLINED_FUNCTION_186();
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B95D16BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v96 = a4;
  v95 = a3;
  v98 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1D90, &qword_1B96E0CE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v80 = v76 - v7;
  v77 = type metadata accessor for Searchfoundation_RFEngageable(0);
  v8 = *(*(v77 - 8) + 64);
  MEMORY[0x1EEE9AC00](v77);
  v76[1] = v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1D88, &qword_1B96E0CD8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v81 = v76 - v12;
  v82 = type metadata accessor for Searchfoundation_RFFont(0);
  v13 = *(*(v82 - 8) + 64);
  MEMORY[0x1EEE9AC00](v82);
  v78 = v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1D80, &qword_1B96E0CD0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v89 = v76 - v17;
  v90 = type metadata accessor for Searchfoundation_RFTextEncapsulation(0);
  v18 = *(*(v90 - 8) + 64);
  MEMORY[0x1EEE9AC00](v90);
  v86 = v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1D78, &qword_1B96E0CC8);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v79 = v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v87 = v76 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v92 = v76 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v29 = v76 - v28;
  v93 = type metadata accessor for Searchfoundation_RFOptionalBool(0);
  v30 = *(*(v93 - 8) + 64);
  v31 = MEMORY[0x1EEE9AC00](v93);
  v76[2] = v76 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v84 = v76 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v88 = v76 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v91 = v76 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DB8, &unk_1B96D9DC0);
  v39 = *(*(v38 - 8) + 64);
  v40 = MEMORY[0x1EEE9AC00](v38 - 8);
  v85 = v76 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v43 = v76 - v42;
  v94 = type metadata accessor for Searchfoundation_RFColor(0);
  v44 = *(*(v94 - 8) + 64);
  v45 = MEMORY[0x1EEE9AC00](v94);
  v83 = v76 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1D70, &unk_1B96E0CB8);
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47 - 8);
  v50 = v76 - v49;
  swift_beginAccess();
  v103 = a1;
  sub_1B8D92024();
  v51 = type metadata accessor for Searchfoundation_RFFormattedText.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v50, 1, v51) == 1)
  {
    v52 = v97;
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    v53 = v97;
    sub_1B95D2AB0(v103, v98, v95, v96);
    v52 = v53;
    if (v53)
    {
      return sub_1B95DAC18();
    }

    sub_1B95DAC18();
  }

  else
  {
    sub_1B95DAC18();
    v54 = v97;
    result = sub_1B95D2934();
    v52 = v54;
    if (v54)
    {
      return result;
    }
  }

  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v43, 1, v94) == 1)
  {
    sub_1B8D9207C(v43, &qword_1EBAB8DB8, &unk_1B96D9DC0);
  }

  else
  {
    sub_1B95DAC6C();
    sub_1B8CD3968(&qword_1EBAB5540, type metadata accessor for Searchfoundation_RFColor);
    sub_1B964C740();
    if (v52)
    {
      return sub_1B95DAC18();
    }

    sub_1B95DAC18();
  }

  v56 = v103;
  swift_beginAccess();
  sub_1B8D92024();
  v57 = v93;
  if (__swift_getEnumTagSinglePayload(v29, 1, v93) == 1)
  {
    sub_1B8D9207C(v29, &qword_1EBAD1D78, &qword_1B96E0CC8);
  }

  else
  {
    sub_1B95DAC6C();
    sub_1B8CD3968(&qword_1ED9D2D18, type metadata accessor for Searchfoundation_RFOptionalBool);
    sub_1B964C740();
    if (v52)
    {
      return sub_1B95DAC18();
    }

    sub_1B95DAC18();
  }

  swift_beginAccess();
  v58 = v92;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v58, 1, v57) == 1)
  {
    v59 = v58;
    v60 = v57;
    sub_1B8D9207C(v59, &qword_1EBAD1D78, &qword_1B96E0CC8);
  }

  else
  {
    sub_1B95DAC6C();
    sub_1B8CD3968(&qword_1ED9D2D18, type metadata accessor for Searchfoundation_RFOptionalBool);
    sub_1B964C740();
    if (v52)
    {
      return sub_1B95DAC18();
    }

    v60 = v57;
    sub_1B95DAC18();
  }

  swift_beginAccess();
  v61 = v89;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v61, 1, v90) == 1)
  {
    sub_1B8D9207C(v61, &qword_1EBAD1D80, &qword_1B96E0CD0);
  }

  else
  {
    sub_1B95DAC6C();
    sub_1B8CD3968(&qword_1EBAD1F28, type metadata accessor for Searchfoundation_RFTextEncapsulation);
    sub_1B964C740();
    if (v52)
    {
      return sub_1B95DAC18();
    }

    sub_1B95DAC18();
  }

  swift_beginAccess();
  v62 = v87;
  sub_1B8D92024();
  v63 = v60;
  if (__swift_getEnumTagSinglePayload(v62, 1, v60) == 1)
  {
    sub_1B8D9207C(v62, &qword_1EBAD1D78, &qword_1B96E0CC8);
  }

  else
  {
    sub_1B95DAC6C();
    sub_1B8CD3968(&qword_1ED9D2D18, type metadata accessor for Searchfoundation_RFOptionalBool);
    sub_1B964C740();
    if (v52)
    {
      return sub_1B95DAC18();
    }

    sub_1B95DAC18();
  }

  swift_beginAccess();
  v64 = v85;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v64, 1, v94) == 1)
  {
    sub_1B8D9207C(v64, &qword_1EBAB8DB8, &unk_1B96D9DC0);
    goto LABEL_37;
  }

  sub_1B95DAC6C();
  sub_1B8CD3968(&qword_1EBAB5540, type metadata accessor for Searchfoundation_RFColor);
  sub_1B964C740();
  if (v52)
  {
    return sub_1B95DAC18();
  }

  sub_1B95DAC18();
LABEL_37:
  v65 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__attributions;
  swift_beginAccess();
  if (*(*(v56 + v65) + 16))
  {
    type metadata accessor for Searchfoundation_RFAttribution(0);
    sub_1B8CD3968(&qword_1EBAD1F58, type metadata accessor for Searchfoundation_RFAttribution);

    sub_1B964C730();
    if (v52)
    {
    }
  }

  v66 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__highlightedSubstrings;
  v67 = v103;
  swift_beginAccess();
  if (!*(*(v67 + v66) + 16) || (type metadata accessor for Searchfoundation_RFHighlightedSubstring(0), sub_1B8CD3968(&qword_1EBAD1F40, type metadata accessor for Searchfoundation_RFHighlightedSubstring), , sub_1B964C730(), result = , !v52))
  {
    v68 = v103;
    swift_beginAccess();
    v69 = v81;
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v69, 1, v82) == 1)
    {
      sub_1B8D9207C(v69, &qword_1EBAD1D88, &qword_1B96E0CD8);
    }

    else
    {
      sub_1B95DAC6C();
      sub_1B8CD3968(&qword_1ED9D3060, type metadata accessor for Searchfoundation_RFFont);
      sub_1B964C740();
      result = sub_1B95DAC18();
      if (v52)
      {
        return result;
      }

      v63 = v93;
    }

    swift_beginAccess();
    v70 = v79;
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v70, 1, v63) == 1)
    {
      sub_1B8D9207C(v70, &qword_1EBAD1D78, &qword_1B96E0CC8);
    }

    else
    {
      sub_1B95DAC6C();
      sub_1B8CD3968(&qword_1ED9D2D18, type metadata accessor for Searchfoundation_RFOptionalBool);
      sub_1B964C740();
      result = sub_1B95DAC18();
      if (v52)
      {
        return result;
      }
    }

    swift_beginAccess();
    v71 = v80;
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v71, 1, v77) == 1)
    {
      sub_1B8D9207C(v80, &qword_1EBAD1D90, &qword_1B96E0CE0);
    }

    else
    {
      sub_1B95DAC6C();
      sub_1B8CD3968(&qword_1EBAD1EE8, type metadata accessor for Searchfoundation_RFEngageable);
      sub_1B964C740();
      result = sub_1B95DAC18();
      if (v52)
      {
        return result;
      }
    }

    v72 = v68 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__weight;
    swift_beginAccess();
    if (!*v72 || (v73 = *(v72 + 8), v101 = *v72, v102 = v73, sub_1B95DAEA8(), result = sub_1B964C680(), !v52))
    {
      v74 = v68 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__design;
      result = swift_beginAccess();
      if (*v74)
      {
        v75 = *(v74 + 8);
        v99 = *v74;
        v100 = v75;
        sub_1B95DCE9C();
        return sub_1B964C680();
      }
    }
  }

  return result;
}

uint64_t sub_1B95D2934()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1D70, &unk_1B96E0CB8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = (&v8 - v2);
  swift_beginAccess();
  sub_1B8D92024();
  v4 = type metadata accessor for Searchfoundation_RFFormattedText.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    result = sub_1B8D9207C(v3, &qword_1EBAD1D70, &unk_1B96E0CB8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v5 = *v3;
      v6 = v3[1];
      sub_1B964C700();
    }

    result = sub_1B95DAC18();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B95D2AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1D70, &unk_1B96E0CB8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Searchfoundation_RFImageElement(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  swift_beginAccess();
  sub_1B8D92024();
  v10 = type metadata accessor for Searchfoundation_RFFormattedText.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAD1D70, &unk_1B96E0CB8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B95DAC6C();
      sub_1B8CD3968(&qword_1ED9D2D28, type metadata accessor for Searchfoundation_RFImageElement);
      sub_1B964C740();
      return sub_1B95DAC18();
    }

    result = sub_1B95DAC18();
  }

  __break(1u);
  return result;
}

uint64_t static Searchfoundation_RFFormattedText.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_41_27();
  if (*(v1 + v2) != *(v0 + v2))
  {
    v3 = *(v1 + v2);

    OUTLINED_FUNCTION_303();
    sub_1B95D2DA8();
    v5 = v4;

    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_114();
  sub_1B8CD3968(v6, v7);
  OUTLINED_FUNCTION_288();
  return sub_1B964C850() & 1;
}

void sub_1B95D2DA8()
{
  OUTLINED_FUNCTION_284();
  v355 = v1;
  v3 = v2;
  v312 = type metadata accessor for Searchfoundation_RFEngageable(0);
  v4 = OUTLINED_FUNCTION_59_1(v312);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_21();
  v308 = v7;
  v309 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD2020, &qword_1B96E27D8);
  OUTLINED_FUNCTION_59_1(v309);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_185();
  v315 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1D90, &qword_1B96E0CE0);
  v13 = OUTLINED_FUNCTION_183(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_44_0();
  v310 = v16;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_266_0();
  v313 = v18;
  v19 = OUTLINED_FUNCTION_201();
  v320 = type metadata accessor for Searchfoundation_RFFont(v19);
  v20 = OUTLINED_FUNCTION_59_1(v320);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_21();
  v314 = v23;
  v319 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD2028, &qword_1B96E27E0);
  OUTLINED_FUNCTION_59_1(v319);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_185();
  v321 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1D88, &qword_1B96E0CD8);
  v29 = OUTLINED_FUNCTION_183(v28);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_44_0();
  v317 = v32;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_266_0();
  v323 = v34;
  v35 = OUTLINED_FUNCTION_201();
  v335 = type metadata accessor for Searchfoundation_RFTextEncapsulation(v35);
  v36 = OUTLINED_FUNCTION_59_1(v335);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_21();
  v329 = v39;
  v334 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD2030, &qword_1B96E27E8);
  OUTLINED_FUNCTION_59_1(v334);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_185();
  v336 = v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1D80, &qword_1B96E0CD0);
  v45 = OUTLINED_FUNCTION_183(v44);
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_44_0();
  v331 = v48;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_266_0();
  v337 = v50;
  v51 = OUTLINED_FUNCTION_201();
  v347 = type metadata accessor for Searchfoundation_RFOptionalBool(v51);
  v52 = OUTLINED_FUNCTION_59_1(v347);
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_44_0();
  v311 = v55;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_682();
  v325 = v57;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_682();
  v333 = v59;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_266_0();
  v339 = v61;
  v346 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD2038, &unk_1B96E27F0);
  v62 = OUTLINED_FUNCTION_59_1(v346);
  v64 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_44_0();
  v322 = v65;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_682();
  v330 = v67;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_682();
  v340 = v69;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_266_0();
  v344 = v71;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1D78, &qword_1B96E0CC8);
  v73 = OUTLINED_FUNCTION_183(v72);
  v75 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_44_0();
  v316 = v76;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_682();
  v318 = v78;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_682();
  v327 = v80;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_682();
  v332 = v82;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_682();
  v338 = v84;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_682();
  v341 = v86;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_682();
  v342 = v88;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_266_0();
  v348 = v90;
  v91 = OUTLINED_FUNCTION_201();
  v352 = type metadata accessor for Searchfoundation_RFColor(v91);
  v92 = OUTLINED_FUNCTION_59_1(v352);
  v94 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_21();
  v343 = v95;
  v351 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DC0, &unk_1B964D5C0);
  v96 = OUTLINED_FUNCTION_59_1(v351);
  v98 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_44_0();
  v326 = v99;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v100);
  OUTLINED_FUNCTION_266_0();
  v353 = v101;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DB8, &unk_1B96D9DC0);
  v103 = OUTLINED_FUNCTION_183(v102);
  v105 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v103);
  OUTLINED_FUNCTION_44_0();
  v324 = v106;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v107);
  OUTLINED_FUNCTION_682();
  v328 = v108;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v109);
  OUTLINED_FUNCTION_682();
  v345 = v110;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v111);
  OUTLINED_FUNCTION_266_0();
  v350 = v112;
  v113 = OUTLINED_FUNCTION_201();
  v114 = type metadata accessor for Searchfoundation_RFFormattedText.OneOf_Value(v113);
  v115 = OUTLINED_FUNCTION_59_1(v114);
  v117 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v115);
  OUTLINED_FUNCTION_21();
  v349 = v118;
  v119 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD2040, &qword_1B96E2800) - 8);
  v120 = *(*v119 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v121);
  v123 = &v308 - v122;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1D70, &unk_1B96E0CB8);
  v125 = OUTLINED_FUNCTION_183(v124);
  v127 = *(v126 + 64);
  MEMORY[0x1EEE9AC00](v125);
  OUTLINED_FUNCTION_44_0();
  v354 = v128;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v129);
  OUTLINED_FUNCTION_219_0();
  OUTLINED_FUNCTION_521();
  v130 = v355;
  sub_1B8D92024();
  OUTLINED_FUNCTION_521();
  v131 = v119[14];
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_75(v123);
  v356 = v3;
  if (v132)
  {

    sub_1B8D9207C(v0, &qword_1EBAD1D70, &unk_1B96E0CB8);
    OUTLINED_FUNCTION_75(&v123[v131]);
    if (v132)
    {
      sub_1B8D9207C(v123, &qword_1EBAD1D70, &unk_1B96E0CB8);
      goto LABEL_11;
    }

LABEL_9:
    v133 = &qword_1EBAD2040;
    v134 = &qword_1B96E2800;
    v135 = v123;
LABEL_89:
    sub_1B8D9207C(v135, v133, v134);
    goto LABEL_90;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_75(&v123[v131]);
  if (v132)
  {

    sub_1B8D9207C(v0, &qword_1EBAD1D70, &unk_1B96E0CB8);
    OUTLINED_FUNCTION_7_52();
    sub_1B95DAC18();
    goto LABEL_9;
  }

  sub_1B95DAC6C();

  v136 = OUTLINED_FUNCTION_74_7();
  v137 = static Searchfoundation_RFFormattedText.OneOf_Value.== infix(_:_:)(v136);
  sub_1B95DAC18();
  sub_1B8D9207C(v0, &qword_1EBAD1D70, &unk_1B96E0CB8);
  OUTLINED_FUNCTION_236();
  sub_1B95DAC18();
  sub_1B8D9207C(v123, &qword_1EBAD1D70, &unk_1B96E0CB8);
  if ((v137 & 1) == 0)
  {
    goto LABEL_90;
  }

LABEL_11:
  OUTLINED_FUNCTION_183_9();
  OUTLINED_FUNCTION_521();
  v138 = v350;
  OUTLINED_FUNCTION_1399();
  OUTLINED_FUNCTION_521();
  v139 = *(v351 + 48);
  v140 = v353;
  OUTLINED_FUNCTION_1399();
  OUTLINED_FUNCTION_1399();
  v141 = OUTLINED_FUNCTION_538();
  OUTLINED_FUNCTION_178(v141, v142, v352);
  if (v132)
  {
    sub_1B8D9207C(v138, &qword_1EBAB8DB8, &unk_1B96D9DC0);
    OUTLINED_FUNCTION_749();
    OUTLINED_FUNCTION_178(v143, v144, v145);
    if (v132)
    {
      sub_1B8D9207C(v140, &qword_1EBAB8DB8, &unk_1B96D9DC0);
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_749();
  OUTLINED_FUNCTION_178(v146, v147, v148);
  if (v149)
  {
    sub_1B8D9207C(v138, &qword_1EBAB8DB8, &unk_1B96D9DC0);
    OUTLINED_FUNCTION_138_8();
LABEL_19:
    v133 = &qword_1EBAB8DC0;
    v134 = &unk_1B964D5C0;
    v135 = v140;
    goto LABEL_89;
  }

  OUTLINED_FUNCTION_8_51();
  sub_1B95DAC6C();
  v150 = OUTLINED_FUNCTION_74_7();
  v152 = static Searchfoundation_RFColor.== infix(_:_:)(v150, v151);
  sub_1B95DAC18();
  sub_1B8D9207C(v138, &qword_1EBAB8DB8, &unk_1B96D9DC0);
  OUTLINED_FUNCTION_303();
  sub_1B95DAC18();
  sub_1B8D9207C(v353, &qword_1EBAB8DB8, &unk_1B96D9DC0);
  if ((v152 & 1) == 0)
  {
    goto LABEL_90;
  }

LABEL_21:
  OUTLINED_FUNCTION_183_9();
  OUTLINED_FUNCTION_521();
  v153 = v348;
  OUTLINED_FUNCTION_115_2();
  OUTLINED_FUNCTION_521();
  v154 = *(v346 + 48);
  v155 = v344;
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_84_0();
  v156 = OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_81(v156, v157);
  if (v132)
  {
    sub_1B8D9207C(v153, &qword_1EBAD1D78, &qword_1B96E0CC8);
    OUTLINED_FUNCTION_37_0(v155 + v154);
    if (!v132)
    {
      goto LABEL_55;
    }

    sub_1B8D9207C(v155, &qword_1EBAD1D78, &qword_1B96E0CC8);
  }

  else
  {
    v182 = v342;
    sub_1B8D92024();
    OUTLINED_FUNCTION_37_0(v155 + v154);
    if (v183)
    {
      sub_1B8D9207C(v348, &qword_1EBAD1D78, &qword_1B96E0CC8);
      OUTLINED_FUNCTION_23_27();
      goto LABEL_54;
    }

    OUTLINED_FUNCTION_3_89();
    v184 = v339;
    sub_1B95DAC6C();
    if (*v182 != *v184)
    {
      goto LABEL_50;
    }

    OUTLINED_FUNCTION_219_5();
    OUTLINED_FUNCTION_0_114();
    sub_1B8CD3968(v191, v192);
    v193 = OUTLINED_FUNCTION_731();
    OUTLINED_FUNCTION_25_25();
    sub_1B95DAC18();
    sub_1B8D9207C(v348, &qword_1EBAD1D78, &qword_1B96E0CC8);
    sub_1B95DAC18();
    v194 = OUTLINED_FUNCTION_186();
    sub_1B8D9207C(v194, v195, &qword_1B96E0CC8);
    if ((v193 & 1) == 0)
    {
      goto LABEL_90;
    }
  }

  OUTLINED_FUNCTION_183_9();
  OUTLINED_FUNCTION_521();
  v158 = v341;
  OUTLINED_FUNCTION_79_6();
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_121_2(v346);
  v155 = v340;
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_84_0();
  v159 = OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_81(v159, v160);
  if (!v132)
  {
    v189 = v338;
    sub_1B8D92024();
    OUTLINED_FUNCTION_37_0(&unk_1ED9DF000 + v155);
    if (!v190)
    {
      OUTLINED_FUNCTION_3_89();
      v196 = v333;
      sub_1B95DAC6C();
      if (*v189 != *v196)
      {
        OUTLINED_FUNCTION_24_30();
        sub_1B95DAC18();
        v185 = &qword_1B96E0CC8;
LABEL_87:
        OUTLINED_FUNCTION_176_2();
        sub_1B8D9207C(v219, v220, v221);
        goto LABEL_88;
      }

      OUTLINED_FUNCTION_219_5();
      OUTLINED_FUNCTION_0_114();
      sub_1B8CD3968(v199, v200);
      v201 = OUTLINED_FUNCTION_731();
      OUTLINED_FUNCTION_25_25();
      sub_1B95DAC18();
      sub_1B8D9207C(v341, &qword_1EBAD1D78, &qword_1B96E0CC8);
      sub_1B95DAC18();
      v202 = OUTLINED_FUNCTION_186();
      sub_1B8D9207C(v202, v203, &qword_1B96E0CC8);
      if ((v201 & 1) == 0)
      {
        goto LABEL_90;
      }

      goto LABEL_31;
    }

    sub_1B8D9207C(v341, &qword_1EBAD1D78, &qword_1B96E0CC8);
    OUTLINED_FUNCTION_23_27();
LABEL_54:
    sub_1B95DAC18();
LABEL_55:
    v133 = &qword_1EBAD2038;
    v134 = &unk_1B96E27F0;
LABEL_56:
    v135 = v155;
    goto LABEL_89;
  }

  sub_1B8D9207C(v158, &qword_1EBAD1D78, &qword_1B96E0CC8);
  OUTLINED_FUNCTION_37_0(&unk_1ED9DF000 + v155);
  if (!v132)
  {
    goto LABEL_55;
  }

  sub_1B8D9207C(v155, &qword_1EBAD1D78, &qword_1B96E0CC8);
LABEL_31:
  OUTLINED_FUNCTION_183_9();
  OUTLINED_FUNCTION_521();
  v161 = v337;
  OUTLINED_FUNCTION_79_6();
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_121_2(v334);
  v162 = v336;
  OUTLINED_FUNCTION_115_2();
  v155 = v162;
  OUTLINED_FUNCTION_84_0();
  v163 = OUTLINED_FUNCTION_538();
  OUTLINED_FUNCTION_81(v163, v164);
  if (v132)
  {
    sub_1B8D9207C(v161, &qword_1EBAD1D80, &qword_1B96E0CD0);
    OUTLINED_FUNCTION_37_0(&unk_1ED9DF000 + v162);
    v165 = v332;
    v166 = v351;
    if (v132)
    {
      sub_1B8D9207C(v155, &qword_1EBAD1D80, &qword_1B96E0CD0);
      goto LABEL_36;
    }

LABEL_64:
    v133 = &qword_1EBAD2030;
    v134 = &qword_1B96E27E8;
    goto LABEL_56;
  }

  v197 = v331;
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(&unk_1ED9DF000 + v155);
  v166 = v351;
  if (v198)
  {
    sub_1B8D9207C(v337, &qword_1EBAD1D80, &qword_1B96E0CD0);
    sub_1B95DAC18();
    goto LABEL_64;
  }

  OUTLINED_FUNCTION_26_28();
  v204 = v329;
  sub_1B95DAC6C();
  v205 = *v197;
  v206 = *v204;
  if (*(v204 + 8) == 1)
  {
    if (v206)
    {
      if (v206 == 1)
      {
        if (v205 != 1)
        {
          goto LABEL_86;
        }
      }

      else if (v205 != 2)
      {
        goto LABEL_86;
      }

      goto LABEL_76;
    }

    if (v205)
    {
LABEL_86:
      sub_1B95DAC18();
      v185 = &qword_1B96E0CD0;
      goto LABEL_87;
    }
  }

  else if (v205 != v206)
  {
    goto LABEL_86;
  }

LABEL_76:
  OUTLINED_FUNCTION_219_5();
  OUTLINED_FUNCTION_0_114();
  sub_1B8CD3968(v209, v210);
  v211 = OUTLINED_FUNCTION_731();
  sub_1B95DAC18();
  sub_1B8D9207C(v337, &qword_1EBAD1D80, &qword_1B96E0CD0);
  sub_1B95DAC18();
  v212 = OUTLINED_FUNCTION_186();
  sub_1B8D9207C(v212, v213, &qword_1B96E0CD0);
  v165 = v332;
  if ((v211 & 1) == 0)
  {
    goto LABEL_90;
  }

LABEL_36:
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_115_2();
  OUTLINED_FUNCTION_521();
  v167 = *(v346 + 48);
  v168 = v165;
  v169 = v330;
  OUTLINED_FUNCTION_115_2();
  v155 = v169;
  OUTLINED_FUNCTION_84_0();
  v170 = OUTLINED_FUNCTION_538();
  OUTLINED_FUNCTION_81(v170, v171);
  if (v132)
  {
    sub_1B8D9207C(v168, &qword_1EBAD1D78, &qword_1B96E0CC8);
    OUTLINED_FUNCTION_37_0(v169 + v167);
    v172 = v328;
    if (v132)
    {
      sub_1B8D9207C(v155, &qword_1EBAD1D78, &qword_1B96E0CC8);
      goto LABEL_41;
    }

    goto LABEL_55;
  }

  v207 = v327;
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v169 + v167);
  if (v208)
  {
    sub_1B8D9207C(v332, &qword_1EBAD1D78, &qword_1B96E0CC8);
    OUTLINED_FUNCTION_23_27();
    goto LABEL_54;
  }

  OUTLINED_FUNCTION_3_89();
  v214 = v325;
  sub_1B95DAC6C();
  if (*v207 != *v214)
  {
LABEL_50:
    OUTLINED_FUNCTION_24_30();
    sub_1B95DAC18();
    v185 = &qword_1B96E0CC8;
    OUTLINED_FUNCTION_176_2();
    sub_1B8D9207C(v186, v187, v188);
LABEL_88:
    sub_1B95DAC18();
    v135 = OUTLINED_FUNCTION_246();
    v134 = v185;
    goto LABEL_89;
  }

  OUTLINED_FUNCTION_219_5();
  OUTLINED_FUNCTION_0_114();
  sub_1B8CD3968(v223, v224);
  v225 = OUTLINED_FUNCTION_731();
  OUTLINED_FUNCTION_25_25();
  sub_1B95DAC18();
  OUTLINED_FUNCTION_466();
  sub_1B8D9207C(v226, v227, v228);
  v166 = v351;
  sub_1B95DAC18();
  OUTLINED_FUNCTION_466();
  sub_1B8D9207C(v229, v230, v231);
  v172 = v328;
  if ((v225 & 1) == 0)
  {
    goto LABEL_90;
  }

LABEL_41:
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_115_2();
  OUTLINED_FUNCTION_521();
  v173 = *(v166 + 48);
  v174 = v172;
  v175 = v326;
  OUTLINED_FUNCTION_115_2();
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_749();
  OUTLINED_FUNCTION_178(v176, v177, v178);
  if (v132)
  {
    sub_1B8D9207C(v174, &qword_1EBAB8DB8, &unk_1B96D9DC0);
    OUTLINED_FUNCTION_749();
    OUTLINED_FUNCTION_178(v179, v180, v181);
    if (v132)
    {
      sub_1B8D9207C(v175, &qword_1EBAB8DB8, &unk_1B96D9DC0);
      goto LABEL_97;
    }

LABEL_83:
    v133 = &qword_1EBAB8DC0;
    v134 = &unk_1B964D5C0;
LABEL_84:
    v135 = v175;
    goto LABEL_89;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_749();
  OUTLINED_FUNCTION_178(v215, v216, v217);
  if (v218)
  {
    sub_1B8D9207C(v328, &qword_1EBAB8DB8, &unk_1B96D9DC0);
    OUTLINED_FUNCTION_138_8();
    goto LABEL_83;
  }

  OUTLINED_FUNCTION_8_51();
  sub_1B95DAC6C();
  v232 = OUTLINED_FUNCTION_303();
  v234 = static Searchfoundation_RFColor.== infix(_:_:)(v232, v233);
  sub_1B95DAC18();
  OUTLINED_FUNCTION_466();
  sub_1B8D9207C(v235, v236, v237);
  sub_1B95DAC18();
  OUTLINED_FUNCTION_466();
  sub_1B8D9207C(v238, v239, v240);
  if ((v234 & 1) == 0)
  {
    goto LABEL_90;
  }

LABEL_97:
  v241 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__attributions;
  v242 = v356;
  OUTLINED_FUNCTION_521();
  v243 = *(v242 + v241);
  v244 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__attributions;
  OUTLINED_FUNCTION_521();
  v245 = *(v130 + v244);

  OUTLINED_FUNCTION_543();
  sub_1B8D919B4();
  LOBYTE(v242) = v246;

  if ((v242 & 1) == 0)
  {
    goto LABEL_90;
  }

  v247 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__highlightedSubstrings;
  v248 = v356;
  OUTLINED_FUNCTION_521();
  v249 = *(v248 + v247);
  v250 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__highlightedSubstrings;
  OUTLINED_FUNCTION_521();
  v251 = *(v130 + v250);

  OUTLINED_FUNCTION_543();
  sub_1B8D91B5C();
  LOBYTE(v248) = v252;

  if ((v248 & 1) == 0)
  {
    goto LABEL_90;
  }

  OUTLINED_FUNCTION_183_9();
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_115_2();
  OUTLINED_FUNCTION_521();
  v253 = *(v319 + 48);
  v175 = v321;
  OUTLINED_FUNCTION_115_2();
  OUTLINED_FUNCTION_84_0();
  v254 = OUTLINED_FUNCTION_538();
  OUTLINED_FUNCTION_178(v254, v255, v320);
  if (v132)
  {
    sub_1B8D9207C(v323, &qword_1EBAD1D88, &qword_1B96E0CD8);
    OUTLINED_FUNCTION_57(v175 + v253);
    if (v132)
    {
      v256 = v356;
      sub_1B8D9207C(v175, &qword_1EBAD1D88, &qword_1B96E0CD8);
      goto LABEL_109;
    }

    goto LABEL_107;
  }

  v256 = v356;
  sub_1B8D92024();
  OUTLINED_FUNCTION_57(v175 + v253);
  if (v257)
  {
    sub_1B8D9207C(v323, &qword_1EBAD1D88, &qword_1B96E0CD8);
    sub_1B95DAC18();
LABEL_107:
    v133 = &qword_1EBAD2028;
    v134 = &qword_1B96E27E0;
    goto LABEL_84;
  }

  OUTLINED_FUNCTION_21_30();
  sub_1B95DAC6C();
  static Searchfoundation_RFFont.== infix(_:_:)();
  v259 = v258;
  sub_1B95DAC18();
  OUTLINED_FUNCTION_466();
  sub_1B8D9207C(v260, v261, v262);
  sub_1B95DAC18();
  OUTLINED_FUNCTION_466();
  sub_1B8D9207C(v263, v264, v265);
  if ((v259 & 1) == 0)
  {
    goto LABEL_90;
  }

LABEL_109:
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_79_6();
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_121_2(v346);
  v266 = v322;
  OUTLINED_FUNCTION_79_6();
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_178(v266, 1, v347);
  if (v132)
  {
    sub_1B8D9207C(v318, &qword_1EBAD1D78, &qword_1B96E0CC8);
    OUTLINED_FUNCTION_178(&unk_1ED9DF000 + v322, 1, v347);
    if (v132)
    {
      sub_1B8D9207C(v322, &qword_1EBAD1D78, &qword_1B96E0CC8);
      goto LABEL_114;
    }

LABEL_122:
    v270 = &qword_1EBAD2038;
    v271 = &unk_1B96E27F0;
    v272 = v322;
LABEL_130:
    sub_1B8D9207C(v272, v270, v271);
    goto LABEL_90;
  }

  v268 = v322;
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(&unk_1ED9DF000 + v268, 1, v347);
  if (v269)
  {
    sub_1B8D9207C(v318, &qword_1EBAD1D78, &qword_1B96E0CC8);
    OUTLINED_FUNCTION_23_27();
    sub_1B95DAC18();
    goto LABEL_122;
  }

  OUTLINED_FUNCTION_3_89();
  v273 = v311;
  sub_1B95DAC6C();
  if (*v316 != *v273)
  {
    OUTLINED_FUNCTION_24_30();
    sub_1B95DAC18();
    OUTLINED_FUNCTION_176_2();
    sub_1B8D9207C(v274, v275, v276);
    sub_1B95DAC18();
    OUTLINED_FUNCTION_176_2();
    goto LABEL_130;
  }

  v279 = *(v347 + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_114();
  sub_1B8CD3968(v280, v281);
  v282 = OUTLINED_FUNCTION_731();
  OUTLINED_FUNCTION_25_25();
  sub_1B95DAC18();
  OUTLINED_FUNCTION_466();
  sub_1B8D9207C(v283, v284, v285);
  sub_1B95DAC18();
  OUTLINED_FUNCTION_466();
  sub_1B8D9207C(v286, v287, v288);
  if ((v282 & 1) == 0)
  {
    goto LABEL_90;
  }

LABEL_114:
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_79_6();
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_121_2(v309);
  v267 = v315;
  OUTLINED_FUNCTION_79_6();
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_178(v267, 1, v312);
  if (!v132)
  {
    v277 = v315;
    sub_1B8D92024();
    OUTLINED_FUNCTION_178(&unk_1ED9DF000 + v277, 1, v312);
    if (!v278)
    {
      OUTLINED_FUNCTION_29_37();
      sub_1B95DAC6C();
      static Searchfoundation_RFEngageable.== infix(_:_:)();
      v290 = v289;
      sub_1B95DAC18();
      OUTLINED_FUNCTION_466();
      sub_1B8D9207C(v291, v292, v293);
      sub_1B95DAC18();
      OUTLINED_FUNCTION_466();
      sub_1B8D9207C(v294, v295, v296);
      if ((v290 & 1) == 0)
      {
        goto LABEL_90;
      }

      goto LABEL_135;
    }

    sub_1B8D9207C(v313, &qword_1EBAD1D90, &qword_1B96E0CE0);
    sub_1B95DAC18();
LABEL_129:
    v270 = &qword_1EBAD2020;
    v271 = &qword_1B96E27D8;
    v272 = v315;
    goto LABEL_130;
  }

  sub_1B8D9207C(v313, &qword_1EBAD1D90, &qword_1B96E0CE0);
  OUTLINED_FUNCTION_178(&unk_1ED9DF000 + v315, 1, v312);
  if (!v132)
  {
    goto LABEL_129;
  }

  sub_1B8D9207C(v315, &qword_1EBAD1D90, &qword_1B96E0CE0);
LABEL_135:
  v297 = v256 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__weight;
  OUTLINED_FUNCTION_521();
  v298 = *v297;
  v299 = *(v297 + 8);
  v300 = v130 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__weight;
  OUTLINED_FUNCTION_521();
  v301 = *(v300 + 8);
  if (sub_1B8D92198(v298, v299, *v300))
  {
    v302 = v256 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__design;
    OUTLINED_FUNCTION_521();
    v303 = *v302;
    v304 = *(v302 + 8);

    v305 = v130 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_RFFormattedTextP33_D56F78EC12659560DB481273784C886413_StorageClass__design;
    OUTLINED_FUNCTION_521();
    v306 = *v305;
    v307 = *(v305 + 8);

    v222 = sub_1B8D92198(v303, v304, v306);
    goto LABEL_91;
  }

LABEL_90:

  v222 = 0;
LABEL_91:
  OUTLINED_FUNCTION_264(v222);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B95D4A10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3968(&qword_1EBAD1FE8, type metadata accessor for Searchfoundation_RFFormattedText);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B95D4A90(uint64_t a1)
{
  v2 = sub_1B8CD3968(&qword_1ED9D2AD0, type metadata accessor for Searchfoundation_RFFormattedText);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B95D4B00()
{
  sub_1B8CD3968(&qword_1ED9D2AD0, type metadata accessor for Searchfoundation_RFFormattedText);

  return sub_1B964C5D0();
}

uint64_t sub_1B95D4B98()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD1CB8);
  __swift_project_value_buffer(v0, qword_1EBAD1CB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "command_reference";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "preview_list";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_RFEngageable.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_432();
      OUTLINED_FUNCTION_24_3();
      sub_1B95D52E8(v7, v8, v9, v10);
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_432();
      OUTLINED_FUNCTION_24_3();
      sub_1B95D4DF0(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_1B95D4DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Searchfoundation_CommandReference(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1DA0, &qword_1B96E0CF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Searchfoundation_RFEngageable.OneOf_EngageableOneof(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8D80, &unk_1B964D580);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAD1DA0, &qword_1B96E0CF0);
  }

  else
  {
    sub_1B95DAC6C();
    sub_1B95DAC6C();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B95DAC18();
    }

    else
    {
      sub_1B8D9207C(v22, &qword_1EBAB8D80, &unk_1B964D580);
      sub_1B95DAC6C();
      sub_1B95DAC6C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }
  }

  sub_1B8CD3968(&qword_1EBACDFE8, type metadata accessor for Searchfoundation_CommandReference);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAB8D80, &unk_1B964D580);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAB8D80, &unk_1B964D580);
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAB8D80, &unk_1B964D580);
  }

  sub_1B95DAC6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAB8D80, &unk_1B964D580);
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAD1DA0, &qword_1B96E0CF0);
  sub_1B95DAC6C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B95D52E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Searchfoundation_RFPreviewList(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1DA0, &qword_1B96E0CF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Searchfoundation_RFEngageable.OneOf_EngageableOneof(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD2018, &qword_1B96E27D0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAD1DA0, &qword_1B96E0CF0);
  }

  else
  {
    sub_1B95DAC6C();
    sub_1B95DAC6C();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8D9207C(v22, &qword_1EBAD2018, &qword_1B96E27D0);
      sub_1B95DAC6C();
      sub_1B95DAC6C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B95DAC18();
    }
  }

  sub_1B8CD3968(&qword_1EBAD1F00, type metadata accessor for Searchfoundation_RFPreviewList);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAD2018, &qword_1B96E27D0);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAD2018, &qword_1B96E27D0);
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAD2018, &qword_1B96E27D0);
  }

  sub_1B95DAC6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAD2018, &qword_1B96E27D0);
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAD1DA0, &qword_1B96E0CF0);
  sub_1B95DAC6C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t Searchfoundation_RFEngageable.traverse<A>(visitor:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1DA0, &qword_1B96E0CF0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  type metadata accessor for Searchfoundation_RFEngageable.OneOf_EngageableOneof(0);
  OUTLINED_FUNCTION_749();
  OUTLINED_FUNCTION_178(v6, v7, v8);
  if (v9)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_686();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_24_3();
    sub_1B95D5B2C(v10, v11, v12, v13);
  }

  else
  {
    OUTLINED_FUNCTION_24_3();
    sub_1B95D5918(v14, v15, v16, v17);
  }

  OUTLINED_FUNCTION_27_21();
  result = sub_1B95DAC18();
  if (!v1)
  {
LABEL_6:
    v19 = v0 + *(type metadata accessor for Searchfoundation_RFEngageable(0) + 20);
    OUTLINED_FUNCTION_12();
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B95D5918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1DA0, &qword_1B96E0CF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Searchfoundation_CommandReference(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8D92024();
  v10 = type metadata accessor for Searchfoundation_RFEngageable.OneOf_EngageableOneof(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAD1DA0, &qword_1B96E0CF0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1B95DAC6C();
      sub_1B8CD3968(&qword_1EBACDFE8, type metadata accessor for Searchfoundation_CommandReference);
      sub_1B964C740();
      return sub_1B95DAC18();
    }

    result = sub_1B95DAC18();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B95D5B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1DA0, &qword_1B96E0CF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Searchfoundation_RFPreviewList(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8D92024();
  v10 = type metadata accessor for Searchfoundation_RFEngageable.OneOf_EngageableOneof(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAD1DA0, &qword_1B96E0CF0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B95DAC6C();
      sub_1B8CD3968(&qword_1EBAD1F00, type metadata accessor for Searchfoundation_RFPreviewList);
      sub_1B964C740();
      return sub_1B95DAC18();
    }

    result = sub_1B95DAC18();
  }

  __break(1u);
  return result;
}

void static Searchfoundation_RFEngageable.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_280();
  v2 = type metadata accessor for Searchfoundation_RFEngageable.OneOf_EngageableOneof(v1);
  v3 = OUTLINED_FUNCTION_59_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_62();
  v6 = OUTLINED_FUNCTION_686();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_79();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1DE8, &unk_1B96E0D20);
  OUTLINED_FUNCTION_183(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_88();
  v17 = *(v16 + 56);
  OUTLINED_FUNCTION_643();
  OUTLINED_FUNCTION_643();
  OUTLINED_FUNCTION_178(v0, 1, v2);
  if (v18)
  {
    OUTLINED_FUNCTION_178(v0 + v17, 1, v2);
    if (v18)
    {
      sub_1B8D9207C(v0, &qword_1EBAD1DA0, &qword_1B96E0CF0);
LABEL_12:
      v22 = type metadata accessor for Searchfoundation_RFEngageable(0);
      OUTLINED_FUNCTION_871(v22);
      OUTLINED_FUNCTION_0_114();
      sub_1B8CD3968(v23, v24);
      v19 = OUTLINED_FUNCTION_634();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_177_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v0 + v17, 1, v2);
  if (v18)
  {
    OUTLINED_FUNCTION_27_21();
    sub_1B95DAC18();
LABEL_9:
    sub_1B8D9207C(v0, &qword_1EBAD1DE8, &unk_1B96E0D20);
    goto LABEL_10;
  }

  sub_1B95DAC6C();
  OUTLINED_FUNCTION_246();
  static Searchfoundation_RFEngageable.OneOf_EngageableOneof.== infix(_:_:)();
  v21 = v20;
  sub_1B95DAC18();
  sub_1B95DAC18();
  sub_1B8D9207C(v0, &qword_1EBAD1DA0, &qword_1B96E0CF0);
  if (v21)
  {
    goto LABEL_12;
  }

LABEL_10:
  v19 = 0;
LABEL_13:
  OUTLINED_FUNCTION_264(v19);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B95D6030(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3968(&qword_1EBAD1FE0, type metadata accessor for Searchfoundation_RFEngageable);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B95D60B0(uint64_t a1)
{
  v2 = sub_1B8CD3968(&qword_1EBAD1EE8, type metadata accessor for Searchfoundation_RFEngageable);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B95D6120()
{
  sub_1B8CD3968(&qword_1EBAD1EE8, type metadata accessor for Searchfoundation_RFEngageable);

  return sub_1B964C5D0();
}

void Searchfoundation_RFPreviewList.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 1)
    {
      OUTLINED_FUNCTION_9();
      sub_1B95D6284();
    }
  }
}

void sub_1B95D6284()
{
  OUTLINED_FUNCTION_273_0();
  v0(0);
  v1 = OUTLINED_FUNCTION_128();
  sub_1B8CD3968(v1, v2);
  sub_1B964C570();
  OUTLINED_FUNCTION_272_0();
}

uint64_t Searchfoundation_RFPreviewList.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (type metadata accessor for Searchfoundation_RFPreview(0), sub_1B8CD3968(&qword_1EBAD1DF8, type metadata accessor for Searchfoundation_RFPreview), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
  {
    v3 = *(type metadata accessor for Searchfoundation_RFPreviewList(0) + 20);
    return OUTLINED_FUNCTION_8_1();
  }

  return result;
}

uint64_t sub_1B95D6468(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3968(&qword_1EBAD1FD8, type metadata accessor for Searchfoundation_RFPreviewList);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B95D64E8(uint64_t a1)
{
  v2 = sub_1B8CD3968(&qword_1EBAD1F00, type metadata accessor for Searchfoundation_RFPreviewList);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B95D6558()
{
  sub_1B8CD3968(&qword_1EBAD1F00, type metadata accessor for Searchfoundation_RFPreviewList);

  return sub_1B964C5D0();
}

uint64_t sub_1B95D65F0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD1CE8);
  __swift_project_value_buffer(v0, qword_1EBAD1CE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "text";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "command_reference";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_RFPreview.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_9();
      sub_1B95D684C();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t sub_1B95D684C()
{
  v0 = *(type metadata accessor for Searchfoundation_RFPreview(0) + 24);
  type metadata accessor for Searchfoundation_CommandReference(0);
  sub_1B8CD3968(&qword_1EBACDFE8, type metadata accessor for Searchfoundation_CommandReference);
  return sub_1B964C580();
}

void Searchfoundation_RFPreview.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8D80, &unk_1B964D580);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_151();
  v8 = type metadata accessor for Searchfoundation_CommandReference(v7);
  v9 = OUTLINED_FUNCTION_59_1(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_62();
  v12 = *v0;
  v13 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v14 || (sub_1B964C700(), !v1))
  {
    v15 = type metadata accessor for Searchfoundation_RFPreview(0);
    v16 = *(v15 + 24);
    sub_1B8D92024();
    OUTLINED_FUNCTION_170_2();
    OUTLINED_FUNCTION_178(v17, v18, v19);
    if (v20)
    {
      sub_1B8D9207C(v2, &qword_1EBAB8D80, &unk_1B964D580);
LABEL_7:
      v23 = v0 + *(v15 + 20);
      sub_1B964C290();
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_1_98();
    sub_1B95DAC6C();
    OUTLINED_FUNCTION_130_8();
    sub_1B8CD3968(v21, v22);
    sub_1B964C740();
    OUTLINED_FUNCTION_4_66();
    sub_1B95DAC18();
    if (!v1)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
  OUTLINED_FUNCTION_272_0();
}

void static Searchfoundation_RFPreview.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_16();
  v4 = type metadata accessor for Searchfoundation_CommandReference(0);
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_62();
  v10 = (v9 - v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8D80, &unk_1B964D580);
  OUTLINED_FUNCTION_183(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_137();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8D88, &qword_1B96CA730);
  OUTLINED_FUNCTION_59_1(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_88();
  v19 = *v1 == *v0 && v1[1] == v0[1];
  if (!v19 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_16;
  }

  v34 = type metadata accessor for Searchfoundation_RFPreview(0);
  v20 = *(v34 + 24);
  v21 = *(v15 + 48);
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v2);
  if (v19)
  {
    OUTLINED_FUNCTION_37_0(v2 + v21);
    if (v19)
    {
      sub_1B8D9207C(v2, &qword_1EBAB8D80, &unk_1B964D580);
LABEL_23:
      v31 = *(v34 + 20);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_114();
      sub_1B8CD3968(v32, v33);
      v25 = OUTLINED_FUNCTION_199_0();
      goto LABEL_24;
    }

    goto LABEL_14;
  }

  OUTLINED_FUNCTION_1_0();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v2 + v21);
  if (v22)
  {
    OUTLINED_FUNCTION_4_66();
    sub_1B95DAC18();
LABEL_14:
    v23 = &qword_1EBAB8D88;
    v24 = &qword_1B96CA730;
LABEL_15:
    sub_1B8D9207C(v2, v23, v24);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_1_98();
  sub_1B95DAC6C();
  v26 = *v3 == *v10 && v3[1] == v10[1];
  if (!v26 && (sub_1B964C9F0() & 1) == 0)
  {
    OUTLINED_FUNCTION_128_10();
    sub_1B95DAC18();
    sub_1B95DAC18();
    v23 = &qword_1EBAB8D80;
    v24 = &unk_1B964D580;
    goto LABEL_15;
  }

  v27 = *(v4 + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_114();
  sub_1B8CD3968(v28, v29);
  v30 = OUTLINED_FUNCTION_198_0();
  sub_1B95DAC18();
  sub_1B95DAC18();
  sub_1B8D9207C(v2, &qword_1EBAB8D80, &unk_1B964D580);
  if (v30)
  {
    goto LABEL_23;
  }

LABEL_16:
  v25 = 0;
LABEL_24:
  OUTLINED_FUNCTION_264(v25);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B95D6E68(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3968(&qword_1EBAD1FD0, type metadata accessor for Searchfoundation_RFPreview);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B95D6EE8(uint64_t a1)
{
  v2 = sub_1B8CD3968(&qword_1EBAD1DF8, type metadata accessor for Searchfoundation_RFPreview);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B95D6F58()
{
  sub_1B8CD3968(&qword_1EBAD1DF8, type metadata accessor for Searchfoundation_RFPreview);

  return sub_1B964C5D0();
}

uint64_t Searchfoundation_RFTextEncapsulation.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_9();
      sub_1B95D7078();
    }
  }

  return result;
}

uint64_t Searchfoundation_RFTextEncapsulation.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*v0 || (v5 = *v0, v6 = *(v2 + 8), sub_1B95DAE54(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
  {
    v4 = *(type metadata accessor for Searchfoundation_RFTextEncapsulation(0) + 20);
    return OUTLINED_FUNCTION_8_1();
  }

  return result;
}

uint64_t static Searchfoundation_RFTextEncapsulation.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v1 = *v0;
  v3 = *v2;
  if (*(v2 + 8) == 1)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        if (v1 != 1)
        {
          return 0;
        }
      }

      else if (v1 != 2)
      {
        return 0;
      }

LABEL_7:
      v4 = type metadata accessor for Searchfoundation_RFTextEncapsulation(0);
      OUTLINED_FUNCTION_871(v4);
      OUTLINED_FUNCTION_0_114();
      sub_1B8CD3968(v5, v6);
      return OUTLINED_FUNCTION_634() & 1;
    }

    if (!v1)
    {
      goto LABEL_7;
    }
  }

  else if (v1 == v3)
  {
    goto LABEL_7;
  }

  return 0;
}

uint64_t sub_1B95D72C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3968(&qword_1EBAD1FC8, type metadata accessor for Searchfoundation_RFTextEncapsulation);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B95D7340(uint64_t a1)
{
  v2 = sub_1B8CD3968(&qword_1EBAD1F28, type metadata accessor for Searchfoundation_RFTextEncapsulation);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B95D73B0()
{
  sub_1B8CD3968(&qword_1EBAD1F28, type metadata accessor for Searchfoundation_RFTextEncapsulation);

  return sub_1B964C5D0();
}

uint64_t sub_1B95D74B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_614();
  v7 = *v4;
  v8 = v4[1];
  OUTLINED_FUNCTION_1();
  if (!v9 || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C700(), !v5))
  {
    v11 = *(a4(0) + 20);
    return OUTLINED_FUNCTION_8_1();
  }

  return result;
}

uint64_t sub_1B95D7548(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  OUTLINED_FUNCTION_468();
  v7 = *v6 == *v3 && *(v4 + 8) == v3[1];
  if (!v7 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v8 = a3(0);
  OUTLINED_FUNCTION_871(v8);
  OUTLINED_FUNCTION_0_114();
  sub_1B8CD3968(v9, v10);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B95D766C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3968(&qword_1EBAD1FC0, type metadata accessor for Searchfoundation_RFHighlightedSubstring);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B95D76EC(uint64_t a1)
{
  v2 = sub_1B8CD3968(&qword_1EBAD1F40, type metadata accessor for Searchfoundation_RFHighlightedSubstring);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B95D775C()
{
  sub_1B8CD3968(&qword_1EBAD1F40, type metadata accessor for Searchfoundation_RFHighlightedSubstring);

  return sub_1B964C5D0();
}

uint64_t sub_1B95D77E8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD1D30);
  __swift_project_value_buffer(v0, qword_1EBAD1D30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B96511B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "title";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "subtitle";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "image";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "index";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 7;
  *v16 = "localized_index";
  *(v16 + 1) = 15;
  v16[16] = 2;
  v17 = *MEMORY[0x1E69AADE8];
  v9();
  v18 = (v5 + 5 * v2);
  v19 = v18 + v1[14];
  *v18 = 8;
  *v19 = "localized_separator";
  *(v19 + 1) = 19;
  v19[16] = 2;
  v9();
  v20 = (v5 + 6 * v2);
  v21 = v20 + v1[14];
  *v20 = 6;
  *v21 = "locale";
  *(v21 + 1) = 6;
  v21[16] = 2;
  v9();
  v22 = (v5 + 7 * v2);
  v23 = v22 + v1[14];
  *v22 = 5;
  *v23 = "commandReference";
  *(v23 + 1) = 16;
  v23[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_RFAttribution.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_9();
        sub_1B95D7C30();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B95D7CE4();
        break;
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B95D7D98();
        break;
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C4A0();
        break;
      case 5:
        OUTLINED_FUNCTION_9();
        sub_1B95D7E4C();
        break;
      case 6:
      case 7:
      case 8:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B95D7C30()
{
  v0 = *(type metadata accessor for Searchfoundation_RFAttribution(0) + 36);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  sub_1B8CD3968(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty);
  return sub_1B964C580();
}

uint64_t sub_1B95D7CE4()
{
  v0 = *(type metadata accessor for Searchfoundation_RFAttribution(0) + 40);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  sub_1B8CD3968(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty);
  return sub_1B964C580();
}

uint64_t sub_1B95D7D98()
{
  v0 = *(type metadata accessor for Searchfoundation_RFAttribution(0) + 44);
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  sub_1B8CD3968(&qword_1ED9D2A40, type metadata accessor for Searchfoundation_RFVisualProperty);
  return sub_1B964C580();
}

uint64_t sub_1B95D7E4C()
{
  v0 = *(type metadata accessor for Searchfoundation_RFAttribution(0) + 48);
  type metadata accessor for Searchfoundation_CommandReference(0);
  sub_1B8CD3968(&qword_1EBACDFE8, type metadata accessor for Searchfoundation_CommandReference);
  return sub_1B964C580();
}

void Searchfoundation_RFAttribution.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v79 = v1;
  v80 = v2;
  v3 = v0;
  v81 = v4;
  v83 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8D80, &unk_1B964D580);
  OUTLINED_FUNCTION_183(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_185();
  v78 = v10;
  v11 = OUTLINED_FUNCTION_201();
  v76 = type metadata accessor for Searchfoundation_CommandReference(v11);
  v12 = OUTLINED_FUNCTION_59_1(v76);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_21();
  v75[0] = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_183(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v19);
  v21 = v75 - v20;
  v77 = type metadata accessor for Searchfoundation_RFVisualProperty(0);
  v22 = OUTLINED_FUNCTION_59_1(v77);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_21();
  v75[1] = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  v27 = OUTLINED_FUNCTION_183(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_66();
  v32 = v30 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = v75 - v34;
  v36 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  v37 = OUTLINED_FUNCTION_59_1(v36);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_66();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_219_0();
  v84 = type metadata accessor for Searchfoundation_RFAttribution(0);
  v41 = v84[9];
  v82 = v3;
  sub_1B8D92024();
  OUTLINED_FUNCTION_28_13();
  OUTLINED_FUNCTION_178(v42, v43, v44);
  if (v45)
  {
    sub_1B8D9207C(v35, &qword_1EBAB8DF8, &qword_1B96B9A80);
    v48 = v79;
  }

  else
  {
    OUTLINED_FUNCTION_2_84();
    sub_1B95DAC6C();
    OUTLINED_FUNCTION_125_5();
    sub_1B8CD3968(v46, v47);
    v1 = v79;
    sub_1B964C740();
    v48 = v1;
    OUTLINED_FUNCTION_12_41();
    sub_1B95DAC18();
    if (v1)
    {
      goto LABEL_26;
    }
  }

  v49 = v84[10];
  sub_1B8D92024();
  OUTLINED_FUNCTION_28_13();
  OUTLINED_FUNCTION_178(v50, v51, v52);
  if (v45)
  {
    sub_1B8D9207C(v32, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    OUTLINED_FUNCTION_2_84();
    sub_1B95DAC6C();
    OUTLINED_FUNCTION_125_5();
    sub_1B8CD3968(v53, v54);
    OUTLINED_FUNCTION_195_4();
    v48 = v1;
    OUTLINED_FUNCTION_12_41();
    sub_1B95DAC18();
    if (v1)
    {
      goto LABEL_26;
    }
  }

  v55 = v77;
  v56 = v84[11];
  v57 = v82;
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v21, 1, v55);
  v58 = v78;
  if (v45)
  {
    sub_1B8D9207C(v21, &qword_1EBACC708, &unk_1B96D92F0);
  }

  else
  {
    OUTLINED_FUNCTION_5_55();
    sub_1B95DAC6C();
    sub_1B8CD3968(&qword_1ED9D2A40, type metadata accessor for Searchfoundation_RFVisualProperty);
    OUTLINED_FUNCTION_195_4();
    v48 = v1;
    OUTLINED_FUNCTION_46_18();
    sub_1B95DAC18();
    if (v1)
    {
      goto LABEL_26;
    }
  }

  if (!*v57 || (v1 = v48, sub_1B964C6C0(), !v48))
  {
    v59 = v84[12];
    sub_1B8D92024();
    OUTLINED_FUNCTION_170_2();
    OUTLINED_FUNCTION_178(v60, v61, v62);
    if (v45)
    {
      sub_1B8D9207C(v58, &qword_1EBAB8D80, &unk_1B964D580);
    }

    else
    {
      OUTLINED_FUNCTION_1_98();
      sub_1B95DAC6C();
      OUTLINED_FUNCTION_130_8();
      sub_1B8CD3968(v63, v64);
      OUTLINED_FUNCTION_129();
      OUTLINED_FUNCTION_195_4();
      OUTLINED_FUNCTION_4_66();
      sub_1B95DAC18();
      if (v1)
      {
        goto LABEL_26;
      }
    }

    v65 = *(v57 + 40);
    v66 = *(v57 + 48);
    OUTLINED_FUNCTION_1();
    if (!v67 || (OUTLINED_FUNCTION_161_7(), !v1))
    {
      v68 = *(v57 + 8);
      v69 = *(v57 + 16);
      OUTLINED_FUNCTION_1();
      if (!v70 || (OUTLINED_FUNCTION_161_7(), !v1))
      {
        v71 = *(v57 + 24);
        v72 = *(v57 + 32);
        OUTLINED_FUNCTION_1();
        if (!v73 || (OUTLINED_FUNCTION_161_7(), !v1))
        {
          v74 = v57 + v84[8];
          sub_1B964C290();
        }
      }
    }
  }

LABEL_26:
  OUTLINED_FUNCTION_272_0();
}

void static Searchfoundation_RFAttribution.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v153 = v0;
  v2 = v1;
  v141 = type metadata accessor for Searchfoundation_CommandReference(0);
  v3 = OUTLINED_FUNCTION_59_1(v141);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_21();
  v138 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8D80, &unk_1B964D580);
  OUTLINED_FUNCTION_183(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_185();
  v139 = v11;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8D88, &qword_1B96CA730);
  OUTLINED_FUNCTION_59_1(v140);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_185();
  v142 = v15;
  v16 = OUTLINED_FUNCTION_201();
  v147 = type metadata accessor for Searchfoundation_RFVisualProperty(v16);
  v17 = OUTLINED_FUNCTION_59_1(v147);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_21();
  v143 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_183(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_185();
  v144 = v25;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACCC18, &unk_1B96D8D70);
  OUTLINED_FUNCTION_59_1(v146);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_185();
  v148 = v29;
  v30 = OUTLINED_FUNCTION_201();
  v31 = type metadata accessor for Searchfoundation_RFTextProperty(v30);
  v32 = OUTLINED_FUNCTION_59_1(v31);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_44_0();
  v145 = v35;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v138 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  v40 = OUTLINED_FUNCTION_183(v39);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_44_0();
  v149 = v43;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v138 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E00, &qword_1B964D600);
  v48 = OUTLINED_FUNCTION_59_1(v47);
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_44_0();
  v150 = v51;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v138 - v53;
  v151 = type metadata accessor for Searchfoundation_RFAttribution(0);
  v152 = v2;
  v55 = *(v151 + 36);
  v56 = *(v47 + 48);
  sub_1B8D92024();
  v57 = v153;
  sub_1B8D92024();
  OUTLINED_FUNCTION_170_2();
  OUTLINED_FUNCTION_178(v58, v59, v60);
  if (v94)
  {
    OUTLINED_FUNCTION_170_2();
    OUTLINED_FUNCTION_178(v61, v62, v63);
    if (v94)
    {
      sub_1B8D9207C(v54, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_6;
    }
  }

  else
  {
    sub_1B8D92024();
    OUTLINED_FUNCTION_170_2();
    OUTLINED_FUNCTION_178(v91, v92, v93);
    if (!v94)
    {
      OUTLINED_FUNCTION_2_84();
      sub_1B95DAC6C();
      v97 = *v46;
      v98 = *v38;
      sub_1B8D5BA08();
      if ((v99 & 1) == 0 || v46[8] != v38[8])
      {
        sub_1B95DAC18();
        sub_1B95DAC18();
        v95 = &qword_1EBAB8DF8;
        v96 = &qword_1B96B9A80;
        goto LABEL_44;
      }

      v110 = *(v31 + 24);
      v111 = sub_1B964C2B0();
      OUTLINED_FUNCTION_0_114();
      sub_1B8CD3968(v112, v113);
      sub_1B964C850();
      OUTLINED_FUNCTION_131_10();
      sub_1B95DAC18();
      sub_1B95DAC18();
      sub_1B8D9207C(v54, &qword_1EBAB8DF8, &qword_1B96B9A80);
      if ((v111 & 1) == 0)
      {
        goto LABEL_64;
      }

LABEL_6:
      v65 = v151;
      v64 = v152;
      v66 = *(v151 + 40);
      v67 = *(v47 + 48);
      v68 = v150;
      sub_1B8D92024();
      sub_1B8D92024();
      OUTLINED_FUNCTION_170_2();
      OUTLINED_FUNCTION_178(v69, v70, v71);
      if (v94)
      {
        OUTLINED_FUNCTION_170_2();
        OUTLINED_FUNCTION_178(v72, v73, v74);
        if (v94)
        {
          sub_1B8D9207C(v68, &qword_1EBAB8DF8, &qword_1B96B9A80);
          goto LABEL_11;
        }
      }

      else
      {
        v101 = v149;
        sub_1B8D92024();
        OUTLINED_FUNCTION_170_2();
        OUTLINED_FUNCTION_178(v102, v103, v104);
        if (!v105)
        {
          OUTLINED_FUNCTION_2_84();
          v106 = v145;
          sub_1B95DAC6C();
          v107 = *v101;
          v108 = *v106;
          sub_1B8D5BA08();
          if ((v109 & 1) == 0 || *(v101 + 8) != *(v106 + 8))
          {
            sub_1B95DAC18();
            OUTLINED_FUNCTION_128();
            sub_1B95DAC18();
            v95 = &qword_1EBAB8DF8;
            v96 = &qword_1B96B9A80;
            goto LABEL_52;
          }

          v121 = *(v31 + 24);
          v122 = sub_1B964C2B0();
          OUTLINED_FUNCTION_0_114();
          sub_1B8CD3968(v123, v124);
          OUTLINED_FUNCTION_181();
          OUTLINED_FUNCTION_131_10();
          sub_1B95DAC18();
          sub_1B95DAC18();
          sub_1B8D9207C(v68, &qword_1EBAB8DF8, &qword_1B96B9A80);
          if ((v122 & 1) == 0)
          {
            goto LABEL_64;
          }

LABEL_11:
          v75 = v65[11];
          v76 = *(v146 + 48);
          v77 = v148;
          OUTLINED_FUNCTION_235_1();
          OUTLINED_FUNCTION_235_1();
          v78 = OUTLINED_FUNCTION_207();
          v79 = v147;
          OUTLINED_FUNCTION_178(v78, v80, v147);
          if (v94)
          {
            OUTLINED_FUNCTION_178(v77 + v76, 1, v79);
            if (v94)
            {
              sub_1B8D9207C(v77, &qword_1EBACC708, &unk_1B96D92F0);
              goto LABEL_16;
            }
          }

          else
          {
            v114 = v144;
            sub_1B8D92024();
            OUTLINED_FUNCTION_178(v77 + v76, 1, v79);
            if (!v115)
            {
              OUTLINED_FUNCTION_5_55();
              v116 = v143;
              sub_1B95DAC6C();
              v117 = *v114;
              v118 = *v116;
              sub_1B8D5D124();
              if ((v119 & 1) == 0 || *(v114 + 8) != *(v116 + 8))
              {
                sub_1B95DAC18();
                OUTLINED_FUNCTION_182();
                sub_1B95DAC18();
                v95 = &qword_1EBACC708;
                v96 = &unk_1B96D92F0;
                goto LABEL_62;
              }

              v125 = *(v79 + 24);
              sub_1B964C2B0();
              OUTLINED_FUNCTION_0_114();
              sub_1B8CD3968(v126, v127);
              LOBYTE(v125) = OUTLINED_FUNCTION_181();
              sub_1B95DAC18();
              OUTLINED_FUNCTION_128();
              sub_1B95DAC18();
              sub_1B8D9207C(v77, &qword_1EBACC708, &unk_1B96D92F0);
              if ((v125 & 1) == 0)
              {
                goto LABEL_64;
              }

LABEL_16:
              if (*v64 != *v57)
              {
                goto LABEL_64;
              }

              v81 = *(v64 + 8) == *(v57 + 8) && *(v64 + 16) == *(v57 + 16);
              if (!v81 && (sub_1B964C9F0() & 1) == 0)
              {
                goto LABEL_64;
              }

              v82 = *(v64 + 24) == *(v57 + 24) && *(v64 + 32) == *(v57 + 32);
              if (!v82 && (sub_1B964C9F0() & 1) == 0)
              {
                goto LABEL_64;
              }

              v83 = *(v64 + 40) == *(v57 + 40) && *(v64 + 48) == *(v57 + 48);
              if (!v83 && (sub_1B964C9F0() & 1) == 0)
              {
                goto LABEL_64;
              }

              v84 = v65[12];
              v85 = *(v140 + 48);
              v86 = v142;
              OUTLINED_FUNCTION_235_1();
              v87 = v86;
              OUTLINED_FUNCTION_235_1();
              v88 = OUTLINED_FUNCTION_207();
              v89 = v141;
              OUTLINED_FUNCTION_178(v88, v90, v141);
              if (v94)
              {
                OUTLINED_FUNCTION_178(v86 + v85, 1, v89);
                if (v94)
                {
                  sub_1B8D9207C(v86, &qword_1EBAB8D80, &unk_1B964D580);
                  goto LABEL_81;
                }
              }

              else
              {
                v128 = v139;
                sub_1B8D92024();
                OUTLINED_FUNCTION_178(v87 + v85, 1, v89);
                if (!v129)
                {
                  OUTLINED_FUNCTION_1_98();
                  v130 = v138;
                  sub_1B95DAC6C();
                  v131 = *v128 == *v130 && v128[1] == v130[1];
                  if (v131 || (sub_1B964C9F0() & 1) != 0)
                  {
                    v132 = *(v89 + 20);
                    sub_1B964C2B0();
                    OUTLINED_FUNCTION_0_114();
                    sub_1B8CD3968(v133, v134);
                    LOBYTE(v132) = sub_1B964C850();
                    sub_1B95DAC18();
                    sub_1B95DAC18();
                    sub_1B8D9207C(v87, &qword_1EBAB8D80, &unk_1B964D580);
                    if ((v132 & 1) == 0)
                    {
                      goto LABEL_64;
                    }

LABEL_81:
                    v135 = v65[8];
                    sub_1B964C2B0();
                    OUTLINED_FUNCTION_0_114();
                    sub_1B8CD3968(v136, v137);
                    v120 = sub_1B964C850();
                    goto LABEL_65;
                  }

                  OUTLINED_FUNCTION_128_10();
                  sub_1B95DAC18();
                  sub_1B95DAC18();
                  v95 = &qword_1EBAB8D80;
                  v96 = &unk_1B964D580;
LABEL_74:
                  v100 = v87;
                  goto LABEL_63;
                }

                OUTLINED_FUNCTION_4_66();
                sub_1B95DAC18();
              }

              v95 = &qword_1EBAB8D88;
              v96 = &qword_1B96CA730;
              goto LABEL_74;
            }

            OUTLINED_FUNCTION_46_18();
            sub_1B95DAC18();
          }

          v95 = &qword_1EBACCC18;
          v96 = &unk_1B96D8D70;
LABEL_62:
          v100 = v77;
          goto LABEL_63;
        }

        OUTLINED_FUNCTION_12_41();
        sub_1B95DAC18();
      }

      v95 = &qword_1EBAB8E00;
      v96 = &qword_1B964D600;
LABEL_52:
      v100 = v68;
      goto LABEL_63;
    }

    OUTLINED_FUNCTION_12_41();
    sub_1B95DAC18();
  }

  v95 = &qword_1EBAB8E00;
  v96 = &qword_1B964D600;
LABEL_44:
  v100 = v54;
LABEL_63:
  sub_1B8D9207C(v100, v95, v96);
LABEL_64:
  v120 = 0;
LABEL_65:
  OUTLINED_FUNCTION_264(v120);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B95D9024(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3968(&qword_1EBAD1FB8, type metadata accessor for Searchfoundation_RFAttribution);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B95D90A4(uint64_t a1)
{
  v2 = sub_1B8CD3968(&qword_1EBAD1F58, type metadata accessor for Searchfoundation_RFAttribution);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B95D9114()
{
  sub_1B8CD3968(&qword_1EBAD1F58, type metadata accessor for Searchfoundation_RFAttribution);

  return sub_1B964C5D0();
}

uint64_t sub_1B95D91AC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB5570);
  __swift_project_value_buffer(v0, qword_1EBAB5570);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "system";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "applySmallCaps";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_RFFont.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B95D9B0C();
        break;
      case 2:
        OUTLINED_FUNCTION_432();
        OUTLINED_FUNCTION_24_3();
        sub_1B95D9614(v5, v6, v7, v8);
        break;
      case 1:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B95D9458(v3, v4);
        break;
    }
  }

  return result;
}

uint64_t sub_1B95D9458(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1DB0, &qword_1B96E0D08);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  v13 = 0;
  v14 = 256;
  sub_1B95DCEF0();
  result = sub_1B964C410();
  if (!v2 && (v14 & 0x100) == 0)
  {
    v15 = v13;
    v12 = v14;
    sub_1B8D92024();
    v9 = type metadata accessor for Searchfoundation_RFFont.OneOf_Value(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v9);
    sub_1B8D9207C(v7, &qword_1EBAD1DB0, &qword_1B96E0D08);
    if (EnumTagSinglePayload != 1)
    {
      sub_1B964C3D0();
    }

    sub_1B8D9207C(a2, &qword_1EBAD1DB0, &qword_1B96E0D08);
    *a2 = v15;
    *(a2 + 8) = v12 & 1;
    swift_storeEnumTagMultiPayload();
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v9);
  }

  return result;
}

uint64_t sub_1B95D9614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Searchfoundation_RFFont.RFSystemFont(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1DB0, &qword_1B96E0D08);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Searchfoundation_RFFont.OneOf_Value(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD2010, &qword_1B96E27C8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAD1DB0, &qword_1B96E0D08);
  }

  else
  {
    sub_1B95DAC6C();
    sub_1B95DAC6C();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8D9207C(v22, &qword_1EBAD2010, &qword_1B96E27C8);
      sub_1B95DAC6C();
      sub_1B95DAC6C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B95DAC18();
    }
  }

  sub_1B8CD3968(&qword_1EBAD1F78, type metadata accessor for Searchfoundation_RFFont.RFSystemFont);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAD2010, &qword_1B96E27C8);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAD2010, &qword_1B96E27C8);
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAD2010, &qword_1B96E27C8);
  }

  sub_1B95DAC6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAD2010, &qword_1B96E27C8);
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAD1DB0, &qword_1B96E0D08);
  sub_1B95DAC6C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t Searchfoundation_RFFont.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1DB0, &qword_1B96E0D08);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_200();
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  type metadata accessor for Searchfoundation_RFFont.OneOf_Value(0);
  OUTLINED_FUNCTION_749();
  OUTLINED_FUNCTION_178(v7, v8, v9);
  if (!v10)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_491();
      OUTLINED_FUNCTION_24_3();
      v1 = v0;
      sub_1B95D9E24(v15, v16, v17, v18);
      OUTLINED_FUNCTION_49_18();
      result = sub_1B95DAC18();
      if (v0)
      {
        return result;
      }
    }

    else
    {
      OUTLINED_FUNCTION_491();
      OUTLINED_FUNCTION_24_3();
      v1 = v0;
      result = sub_1B95D9CC0();
      if (v0)
      {
        return result;
      }
    }
  }

  v11 = type metadata accessor for Searchfoundation_RFFont(0);
  if (*(v2 + *(v11 + 20)) != 1 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_24_3(), result = sub_1B964C670(), !v1))
  {
    v13 = *(v11 + 24);
    return OUTLINED_FUNCTION_8_1();
  }

  return result;
}

uint64_t sub_1B95D9CC0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1DB0, &qword_1B96E0D08);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  sub_1B8D92024();
  v4 = type metadata accessor for Searchfoundation_RFFont.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    result = sub_1B8D9207C(v3, &qword_1EBAD1DB0, &qword_1B96E0D08);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v5 = v3[8];
      v7 = *v3;
      v8 = v5;
      sub_1B95DCEF0();
      return sub_1B964C680();
    }

    result = sub_1B95DAC18();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B95D9E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1DB0, &qword_1B96E0D08);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Searchfoundation_RFFont.RFSystemFont(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8D92024();
  v10 = type metadata accessor for Searchfoundation_RFFont.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAD1DB0, &qword_1B96E0D08);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B95DAC6C();
      sub_1B8CD3968(&qword_1EBAD1F78, type metadata accessor for Searchfoundation_RFFont.RFSystemFont);
      sub_1B964C740();
      return sub_1B95DAC18();
    }

    result = sub_1B95DAC18();
  }

  __break(1u);
  return result;
}

void static Searchfoundation_RFFont.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_280();
  v4 = type metadata accessor for Searchfoundation_RFFont.OneOf_Value(v3);
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_62();
  v8 = OUTLINED_FUNCTION_686();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_183(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_79();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1E30, &qword_1B96E0D30);
  OUTLINED_FUNCTION_183(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_88();
  v19 = *(v18 + 56);
  OUTLINED_FUNCTION_643();
  OUTLINED_FUNCTION_643();
  OUTLINED_FUNCTION_178(v2, 1, v4);
  if (!v20)
  {
    OUTLINED_FUNCTION_177_1();
    sub_1B8D92024();
    OUTLINED_FUNCTION_178(v2 + v19, 1, v4);
    if (!v20)
    {
      sub_1B95DAC6C();
      OUTLINED_FUNCTION_246();
      static Searchfoundation_RFFont.OneOf_Value.== infix(_:_:)();
      v22 = v21;
      sub_1B95DAC18();
      sub_1B95DAC18();
      sub_1B8D9207C(v2, &qword_1EBAD1DB0, &qword_1B96E0D08);
      if ((v22 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    OUTLINED_FUNCTION_49_18();
    sub_1B95DAC18();
LABEL_9:
    sub_1B8D9207C(v2, &qword_1EBAD1E30, &qword_1B96E0D30);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_178(v2 + v19, 1, v4);
  if (!v20)
  {
    goto LABEL_9;
  }

  sub_1B8D9207C(v2, &qword_1EBAD1DB0, &qword_1B96E0D08);
LABEL_11:
  v23 = OUTLINED_FUNCTION_188_4();
  if (*(v1 + v24) == *(v0 + v24))
  {
    v26 = *(v23 + 24);
    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_114();
    sub_1B8CD3968(v27, v28);
    v25 = OUTLINED_FUNCTION_634();
    goto LABEL_13;
  }

LABEL_12:
  v25 = 0;
LABEL_13:
  OUTLINED_FUNCTION_264(v25);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B95DA340(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3968(&qword_1EBAD1FB0, type metadata accessor for Searchfoundation_RFFont);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B95DA3C0(uint64_t a1)
{
  v2 = sub_1B8CD3968(&qword_1ED9D3060, type metadata accessor for Searchfoundation_RFFont);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B95DA430()
{
  sub_1B8CD3968(&qword_1ED9D3060, type metadata accessor for Searchfoundation_RFFont);

  return sub_1B964C5D0();
}

uint64_t sub_1B95DA4B0()
{
  result = MEMORY[0x1BFADC850](0x657473795346522ELL, 0xED0000746E6F466DLL);
  qword_1EBAD1D48 = 0xD000000000000017;
  unk_1EBAD1D50 = 0x80000001B97250F0;
  return result;
}

uint64_t static Searchfoundation_RFFont.RFSystemFont.protoMessageName.getter()
{
  if (qword_1EBAB8A00 != -1)
  {
    swift_once();
  }

  return OUTLINED_FUNCTION_432();
}

uint64_t sub_1B95DA58C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD1D58);
  __swift_project_value_buffer(v0, qword_1EBAD1D58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "size";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "weight";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_RFFont.RFSystemFont.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_9();
      sub_1B95DA7E0();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C490();
    }
  }

  return result;
}

uint64_t Searchfoundation_RFFont.RFSystemFont.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (*v0 == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), result = sub_1B964C6B0(), !v1))
  {
    if (!*(v2 + 8) || (v5 = *(v2 + 8), v6 = *(v2 + 16), sub_1B95DAEA8(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
    {
      v4 = *(type metadata accessor for Searchfoundation_RFFont.RFSystemFont(0) + 24);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t sub_1B95DA944(void (*a1)(void))
{
  sub_1B964CA70();
  a1(0);
  v2 = OUTLINED_FUNCTION_461();
  sub_1B8CD3968(v2, v3);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B95DAA08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3968(&qword_1EBAD1FA8, type metadata accessor for Searchfoundation_RFFont.RFSystemFont);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B95DAA88(uint64_t a1)
{
  v2 = sub_1B8CD3968(&qword_1EBAD1F78, type metadata accessor for Searchfoundation_RFFont.RFSystemFont);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B95DAAF8()
{
  sub_1B8CD3968(&qword_1EBAD1F78, type metadata accessor for Searchfoundation_RFFont.RFSystemFont);

  return sub_1B964C5D0();
}

uint64_t sub_1B95DAC18()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1B95DAC6C()
{
  v1 = OUTLINED_FUNCTION_280();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_432();
  v7(v6);
  return v0;
}

uint64_t sub_1B95DACC0()
{
  v1 = OUTLINED_FUNCTION_280();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_432();
  v7(v6);
  return v0;
}

unint64_t sub_1B95DAE54()
{
  result = qword_1EBAD1E10;
  if (!qword_1EBAD1E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD1E10);
  }

  return result;
}

unint64_t sub_1B95DAEA8()
{
  result = qword_1ED9CCC50;
  if (!qword_1ED9CCC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9CCC50);
  }

  return result;
}

unint64_t sub_1B95DAF00()
{
  result = qword_1EBAD1E48;
  if (!qword_1EBAD1E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD1E48);
  }

  return result;
}

unint64_t sub_1B95DAF58()
{
  result = qword_1EBAD1E50;
  if (!qword_1EBAD1E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD1E50);
  }

  return result;
}

unint64_t sub_1B95DAFB0()
{
  result = qword_1EBAD1E58;
  if (!qword_1EBAD1E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD1E58);
  }

  return result;
}

unint64_t sub_1B95DB038()
{
  result = qword_1ED9D2F10;
  if (!qword_1ED9D2F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9D2F10);
  }

  return result;
}

unint64_t sub_1B95DB090()
{
  result = qword_1ED9D2F00;
  if (!qword_1ED9D2F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9D2F00);
  }

  return result;
}

unint64_t sub_1B95DB0E8()
{
  result = qword_1ED9D2F08;
  if (!qword_1ED9D2F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9D2F08);
  }

  return result;
}

unint64_t sub_1B95DB170()
{
  result = qword_1ED9CCC48;
  if (!qword_1ED9CCC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9CCC48);
  }

  return result;
}

unint64_t sub_1B95DB1C8()
{
  result = qword_1ED9CCC38;
  if (!qword_1ED9CCC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9CCC38);
  }

  return result;
}

unint64_t sub_1B95DB220()
{
  result = qword_1ED9CCC40;
  if (!qword_1ED9CCC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9CCC40);
  }

  return result;
}

unint64_t sub_1B95DB2A8()
{
  result = qword_1EBAD1E90;
  if (!qword_1EBAD1E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD1E90);
  }

  return result;
}

unint64_t sub_1B95DB300()
{
  result = qword_1EBAD1E98;
  if (!qword_1EBAD1E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD1E98);
  }

  return result;
}

unint64_t sub_1B95DB358()
{
  result = qword_1EBAD1EA0;
  if (!qword_1EBAD1EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD1EA0);
  }

  return result;
}

void sub_1B95DC220()
{
  sub_1B95DC324(319, &qword_1ED9D39E8, type metadata accessor for Searchfoundation_RFFormattedText, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      sub_1B95DC324(319, qword_1ED9DF108, type metadata accessor for Searchfoundation_RFShowMoreOnTap, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B95DC324(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1B95DC3D8()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Searchfoundation_RFFormattedText._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B95DC4D8()
{
  result = type metadata accessor for Searchfoundation_CommandReference(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Searchfoundation_RFPreviewList(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B95DC5A8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_194_6(a1, a2, a3, a4, a5, a6);
  if (v6 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v7 <= 0x3F)
    {
      OUTLINED_FUNCTION_107_0();
      OUTLINED_FUNCTION_180_1();
    }
  }
}

void sub_1B95DC628()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B95DC324(319, qword_1ED9ED650, type metadata accessor for Searchfoundation_CommandReference, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void __swift_store_extra_inhabitant_index_100Tm()
{
  OUTLINED_FUNCTION_7();
  if (v2)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    sub_1B964C2B0();
    OUTLINED_FUNCTION_196_2();
    v4 = OUTLINED_FUNCTION_61_0(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1B95DC7B0()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_107_0();
    return OUTLINED_FUNCTION_180_1();
  }

  return result;
}