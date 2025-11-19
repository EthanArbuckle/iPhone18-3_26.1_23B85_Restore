uint64_t sub_1C8FAEC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC314768, &qword_1C9074E28);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v12, &unk_1EC314768, &qword_1C9074E28);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1C8D16D78(v24, &qword_1EC312A58, &unk_1C9074CC0);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    }
  }

  sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC312A58, &unk_1C9074CC0);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC312A58, &unk_1C9074CC0);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC312A58, &unk_1C9074CC0);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC312A58, &unk_1C9074CC0);
  v29 = v31;
  sub_1C8D16D78(v31, &unk_1EC314768, &qword_1C9074E28);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1C8FAF100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC314768, &qword_1C9074E28);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v12, &unk_1EC314768, &qword_1C9074E28);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1C8D16D78(v24, &qword_1EC312A58, &unk_1C9074CC0);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    }
  }

  sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC312A58, &unk_1C9074CC0);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC312A58, &unk_1C9074CC0);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC312A58, &unk_1C9074CC0);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC312A58, &unk_1C9074CC0);
  v29 = v31;
  sub_1C8D16D78(v31, &unk_1EC314768, &qword_1C9074E28);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1C8FAF5F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC314768, &qword_1C9074E28);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v12, &unk_1EC314768, &qword_1C9074E28);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1C8D16D78(v24, &qword_1EC312A58, &unk_1C9074CC0);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    }
  }

  sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC312A58, &unk_1C9074CC0);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC312A58, &unk_1C9074CC0);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC312A58, &unk_1C9074CC0);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC312A58, &unk_1C9074CC0);
  v29 = v31;
  sub_1C8D16D78(v31, &unk_1EC314768, &qword_1C9074E28);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1C8FAFAF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC314768, &qword_1C9074E28);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v12, &unk_1EC314768, &qword_1C9074E28);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1C8D16D78(v24, &qword_1EC312A58, &unk_1C9074CC0);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    }
  }

  sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC312A58, &unk_1C9074CC0);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC312A58, &unk_1C9074CC0);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC312A58, &unk_1C9074CC0);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC312A58, &unk_1C9074CC0);
  v29 = v31;
  sub_1C8D16D78(v31, &unk_1EC314768, &qword_1C9074E28);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1C8FAFFE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC314768, &qword_1C9074E28);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v12, &unk_1EC314768, &qword_1C9074E28);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_1C8D16D78(v24, &qword_1EC312A58, &unk_1C9074CC0);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    }
  }

  sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC312A58, &unk_1C9074CC0);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC312A58, &unk_1C9074CC0);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC312A58, &unk_1C9074CC0);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC312A58, &unk_1C9074CC0);
  v29 = v31;
  sub_1C8D16D78(v31, &unk_1EC314768, &qword_1C9074E28);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1C8FB04E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC314768, &qword_1C9074E28);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v12, &unk_1EC314768, &qword_1C9074E28);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_1C8D16D78(v24, &qword_1EC312A58, &unk_1C9074CC0);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    }
  }

  sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC312A58, &unk_1C9074CC0);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC312A58, &unk_1C9074CC0);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC312A58, &unk_1C9074CC0);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC312A58, &unk_1C9074CC0);
  v29 = v31;
  sub_1C8D16D78(v31, &unk_1EC314768, &qword_1C9074E28);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1C8FB09D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC314768, &qword_1C9074E28);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v12, &unk_1EC314768, &qword_1C9074E28);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_1C8D16D78(v24, &qword_1EC312A58, &unk_1C9074CC0);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    }
  }

  sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC312A58, &unk_1C9074CC0);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC312A58, &unk_1C9074CC0);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC312A58, &unk_1C9074CC0);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC312A58, &unk_1C9074CC0);
  v29 = v31;
  sub_1C8D16D78(v31, &unk_1EC314768, &qword_1C9074E28);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1C8FB0ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC314768, &qword_1C9074E28);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v12, &unk_1EC314768, &qword_1C9074E28);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_1C8D16D78(v24, &qword_1EC312A58, &unk_1C9074CC0);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    }
  }

  sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC312A58, &unk_1C9074CC0);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC312A58, &unk_1C9074CC0);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC312A58, &unk_1C9074CC0);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC312A58, &unk_1C9074CC0);
  v29 = v31;
  sub_1C8D16D78(v31, &unk_1EC314768, &qword_1C9074E28);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1C8FB13C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC314768, &qword_1C9074E28);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v12, &unk_1EC314768, &qword_1C9074E28);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_1C8D16D78(v24, &qword_1EC312A58, &unk_1C9074CC0);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    }
  }

  sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC312A58, &unk_1C9074CC0);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC312A58, &unk_1C9074CC0);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC312A58, &unk_1C9074CC0);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC312A58, &unk_1C9074CC0);
  v29 = v31;
  sub_1C8D16D78(v31, &unk_1EC314768, &qword_1C9074E28);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1C8FB18C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC314768, &qword_1C9074E28);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v12, &unk_1EC314768, &qword_1C9074E28);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_1C8D16D78(v24, &qword_1EC312A58, &unk_1C9074CC0);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    }
  }

  sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC312A58, &unk_1C9074CC0);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC312A58, &unk_1C9074CC0);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC312A58, &unk_1C9074CC0);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC312A58, &unk_1C9074CC0);
  v29 = v31;
  sub_1C8D16D78(v31, &unk_1EC314768, &qword_1C9074E28);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

void ToolKitProtoComparisonPredicate.Comparison.Template.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_300_0();
  OUTLINED_FUNCTION_43_15();
  v2 = OUTLINED_FUNCTION_245();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_9(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_45_21();
  v8 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  OUTLINED_FUNCTION_20_31(v8);
  if (!v9)
  {
    OUTLINED_FUNCTION_124();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v52 = OUTLINED_FUNCTION_3_4();
        sub_1C8FB217C(v52, v53, v54, v55);
        goto LABEL_22;
      case 2:
        v36 = OUTLINED_FUNCTION_3_4();
        sub_1C8FB27D4(v36, v37, v38, v39);
        goto LABEL_22;
      case 3:
        v44 = OUTLINED_FUNCTION_3_4();
        sub_1C8FB29DC(v44, v45, v46, v47);
        goto LABEL_22;
      case 4:
        v24 = OUTLINED_FUNCTION_3_4();
        sub_1C8FB2BE4(v24, v25, v26, v27);
        goto LABEL_22;
      case 5:
        v56 = OUTLINED_FUNCTION_3_4();
        sub_1C8FB2DEC(v56, v57, v58, v59);
        goto LABEL_22;
      case 6:
        v64 = OUTLINED_FUNCTION_3_4();
        sub_1C8FB2FF4(v64, v65, v66, v67);
        goto LABEL_22;
      case 7:
        v48 = OUTLINED_FUNCTION_3_4();
        sub_1C8FB31FC(v48, v49, v50, v51);
        goto LABEL_22;
      case 8:
        v73 = OUTLINED_FUNCTION_3_4();
        sub_1C8FB3404(v73, v74, v75, v76);
        goto LABEL_26;
      case 9:
        v32 = OUTLINED_FUNCTION_3_4();
        sub_1C8FB360C(v32, v33, v34, v35);
        goto LABEL_26;
      case 10:
        v69 = OUTLINED_FUNCTION_3_4();
        sub_1C8FB3814(v69, v70, v71, v72);
        goto LABEL_26;
      case 11:
        v20 = OUTLINED_FUNCTION_3_4();
        sub_1C8FB3A1C(v20, v21, v22, v23);
        goto LABEL_26;
      case 12:
        v28 = OUTLINED_FUNCTION_3_4();
        sub_1C8FB3E4C(v28, v29, v30, v31);
LABEL_26:
        if (v0)
        {
          OUTLINED_FUNCTION_78_9();
          sub_1C8CD20B4(v1, v77);
          goto LABEL_4;
        }

        OUTLINED_FUNCTION_78_9();
        sub_1C8CD20B4(v1, v78);
        break;
      case 13:
        v60 = OUTLINED_FUNCTION_3_4();
        sub_1C8FB2384(v60, v61, v62, v63);
        goto LABEL_19;
      case 14:
        v16 = OUTLINED_FUNCTION_3_4();
        sub_1C8FB25AC(v16, v17, v18, v19);
        goto LABEL_19;
      case 15:
        v40 = OUTLINED_FUNCTION_3_4();
        sub_1C8FB3C24(v40, v41, v42, v43);
LABEL_19:
        if (!v0)
        {
          break;
        }

        goto LABEL_4;
      default:
        v12 = OUTLINED_FUNCTION_3_4();
        sub_1C8FB1F78(v12, v13, v14, v15);
LABEL_22:
        OUTLINED_FUNCTION_78_9();
        sub_1C8CD20B4(v1, v68);
        if (!v0)
        {
          break;
        }

        goto LABEL_4;
    }
  }

  v10 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template(0);
  OUTLINED_FUNCTION_52_17(v10);
LABEL_4:
  OUTLINED_FUNCTION_190_8();
  OUTLINED_FUNCTION_301_1();
}

uint64_t sub_1C8FB1F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC314768, &qword_1C9074E28);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v12 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &unk_1EC314768, &qword_1C9074E28);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoTypeInstance);
    }

    result = sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FB217C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC314768, &qword_1C9074E28);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v12 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &unk_1EC314768, &qword_1C9074E28);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoTypeInstance);
    }

    result = sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FB2384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v4 = sub_1C906373C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC314768, &qword_1C9074E28);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v16 - v11;
  sub_1C8D63FCC();
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    result = sub_1C8D16D78(v12, &unk_1EC314768, &qword_1C9074E28);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_1C8CD20B4(v12, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    if (EnumCaseMultiPayload == 13)
    {
      sub_1C906372C();
      sub_1C8CD1B00(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8]);
      sub_1C9063B1C();
      return (*(v5 + 8))(v8, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FB25AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v4 = sub_1C906373C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC314768, &qword_1C9074E28);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v16 - v11;
  sub_1C8D63FCC();
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    result = sub_1C8D16D78(v12, &unk_1EC314768, &qword_1C9074E28);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_1C8CD20B4(v12, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    if (EnumCaseMultiPayload == 14)
    {
      sub_1C906372C();
      sub_1C8CD1B00(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8]);
      sub_1C9063B1C();
      return (*(v5 + 8))(v8, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FB27D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC314768, &qword_1C9074E28);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v12 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &unk_1EC314768, &qword_1C9074E28);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoTypeInstance);
    }

    result = sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FB29DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC314768, &qword_1C9074E28);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v12 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &unk_1EC314768, &qword_1C9074E28);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoTypeInstance);
    }

    result = sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FB2BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC314768, &qword_1C9074E28);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v12 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &unk_1EC314768, &qword_1C9074E28);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoTypeInstance);
    }

    result = sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FB2DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC314768, &qword_1C9074E28);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v12 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &unk_1EC314768, &qword_1C9074E28);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoTypeInstance);
    }

    result = sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FB2FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC314768, &qword_1C9074E28);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v12 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &unk_1EC314768, &qword_1C9074E28);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoTypeInstance);
    }

    result = sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FB31FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC314768, &qword_1C9074E28);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v12 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &unk_1EC314768, &qword_1C9074E28);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoTypeInstance);
    }

    result = sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FB3404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC314768, &qword_1C9074E28);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v12 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &unk_1EC314768, &qword_1C9074E28);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoTypeInstance);
    }

    result = sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FB360C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC314768, &qword_1C9074E28);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v12 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &unk_1EC314768, &qword_1C9074E28);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoTypeInstance);
    }

    result = sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FB3814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC314768, &qword_1C9074E28);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v12 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &unk_1EC314768, &qword_1C9074E28);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoTypeInstance);
    }

    result = sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FB3A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC314768, &qword_1C9074E28);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v12 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &unk_1EC314768, &qword_1C9074E28);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoTypeInstance);
    }

    result = sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FB3C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v4 = sub_1C906373C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC314768, &qword_1C9074E28);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v16 - v11;
  sub_1C8D63FCC();
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    result = sub_1C8D16D78(v12, &unk_1EC314768, &qword_1C9074E28);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_1C8CD20B4(v12, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    if (EnumCaseMultiPayload == 15)
    {
      sub_1C906372C();
      sub_1C8CD1B00(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8]);
      sub_1C9063B1C();
      return (*(v5 + 8))(v8, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FB3E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC314768, &qword_1C9074E28);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v12 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &unk_1EC314768, &qword_1C9074E28);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoTypeInstance);
    }

    result = sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  }

  __break(1u);
  return result;
}

void static ToolKitProtoComparisonPredicate.Comparison.Template.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v2 = OUTLINED_FUNCTION_24_2();
  v3 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(v2);
  v4 = OUTLINED_FUNCTION_39_19(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_18_23();
  v7 = OUTLINED_FUNCTION_124();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_9(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_73();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C4C0, &qword_1C90AC088);
  OUTLINED_FUNCTION_9(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_27_20(v17);
  OUTLINED_FUNCTION_108_5();
  OUTLINED_FUNCTION_18_32();
  if (v18)
  {
    OUTLINED_FUNCTION_16_31();
    if (v18)
    {
      sub_1C8D16D78(v0, &unk_1EC314768, &qword_1C9074E28);
LABEL_12:
      v27 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template(0);
      OUTLINED_FUNCTION_63_10(v27);
      OUTLINED_FUNCTION_1_76();
      sub_1C8CD1B00(v28, v29);
      v20 = OUTLINED_FUNCTION_12_28();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_287();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_16_31();
  if (v18)
  {
    OUTLINED_FUNCTION_78_9();
    sub_1C8CD20B4(v1, v19);
LABEL_9:
    sub_1C8D16D78(v0, &qword_1EC31C4C0, &qword_1C90AC088);
    goto LABEL_10;
  }

  sub_1C900BE74();
  OUTLINED_FUNCTION_398();
  static ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind.== infix(_:_:)();
  v22 = v21;
  v23 = OUTLINED_FUNCTION_181_0();
  sub_1C8CD20B4(v23, v24);
  v25 = OUTLINED_FUNCTION_125();
  sub_1C8CD20B4(v25, v26);
  sub_1C8D16D78(v0, &unk_1EC314768, &qword_1C9074E28);
  if (v22)
  {
    goto LABEL_12;
  }

LABEL_10:
  v20 = 0;
LABEL_13:
  OUTLINED_FUNCTION_50_0(v20);
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8FB42C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D590, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FB4348(uint64_t a1)
{
  v2 = sub_1C8CD1B00(qword_1EDA64640, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FB43B8()
{
  sub_1C8CD1B00(qword_1EDA64640, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template);

  return sub_1C9063ABC();
}

void sub_1C8FB4460(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_132_4(a1, a2);
  OUTLINED_FUNCTION_97_5();
  OUTLINED_FUNCTION_68_6();
  OUTLINED_FUNCTION_131_5(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1C8FB44C8()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B3A0);
  __swift_project_value_buffer(v0, qword_1EC31B3A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C909C3B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "property";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "comparisonTemplate";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "rawGroupId";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "contentItemClass";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  return sub_1C9063BEC();
}

void sub_1C8FB4798()
{
  OUTLINED_FUNCTION_340_2();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  while (1)
  {
    v7 = sub_1C90638DC();
    if (v0 || (v8 & 1) != 0)
    {
      break;
    }

    switch(v7)
    {
      case 1:
        OUTLINED_FUNCTION_136();
        OUTLINED_FUNCTION_92_5();
        v6();
        break;
      case 2:
        OUTLINED_FUNCTION_136();
        OUTLINED_FUNCTION_92_5();
        v4();
        break;
      case 3:
        sub_1C9063A0C();
        break;
      case 4:
        OUTLINED_FUNCTION_136();
        OUTLINED_FUNCTION_92_5();
        v2();
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_341_2();
}

uint64_t sub_1C8FB487C()
{
  v0 = *(type metadata accessor for ToolKitProtoComparisonPredicate.Template(0) + 20);
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
  sub_1C8CD1B00(&qword_1EDA64E20, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
  return sub_1C9063A4C();
}

uint64_t sub_1C8FB4930()
{
  v0 = *(type metadata accessor for ToolKitProtoComparisonPredicate.Template(0) + 24);
  type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template(0);
  sub_1C8CD1B00(qword_1EDA64640, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template);
  return sub_1C9063A4C();
}

uint64_t sub_1C8FB49E4()
{
  v0 = *(type metadata accessor for ToolKitProtoComparisonPredicate.Template(0) + 28);
  type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
  sub_1C8CD1B00(qword_1EDA63D38, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
  return sub_1C9063A4C();
}

void sub_1C8FB4B00()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = OUTLINED_FUNCTION_7_48();
  v9(v8);
  if (!v0)
  {
    v10 = OUTLINED_FUNCTION_2_55();
    v7(v10);
    v11 = *v1;
    v12 = v1[1];
    OUTLINED_FUNCTION_36_21();
    if (v13)
    {
      OUTLINED_FUNCTION_10_33();
      sub_1C9063B8C();
    }

    v14 = OUTLINED_FUNCTION_2_55();
    v5(v14);
    v15 = *(v3(0) + 32);
    OUTLINED_FUNCTION_13_23();
  }

  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8FB4BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314750, &qword_1C9074E10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ToolKitProtoComparisonPredicate.Template(0) + 20);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_1C8D16D78(v7, &qword_1EC314750, &qword_1C9074E10);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(&qword_1EDA64E20, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
}

uint64_t sub_1C8FB4D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314780, &qword_1C9074E40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ToolKitProtoComparisonPredicate.Template(0) + 24);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_1C8D16D78(v7, &qword_1EC314780, &qword_1C9074E40);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(qword_1EDA64640, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template);
}

uint64_t sub_1C8FB4F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314580, &qword_1C9074DA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ToolKitProtoComparisonPredicate.Template(0) + 28);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_1C8D16D78(v7, &qword_1EC314580, &qword_1C9074DA0);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(qword_1EDA63D38, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
}

void static ToolKitProtoComparisonPredicate.Template.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v72 = type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
  v2 = OUTLINED_FUNCTION_13_1(v72);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_369_0(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314580, &qword_1C9074DA0);
  OUTLINED_FUNCTION_9(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_97();
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C190, &qword_1C90ABFE8);
  OUTLINED_FUNCTION_13_1(v71);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_97();
  v73 = v13;
  v14 = OUTLINED_FUNCTION_111();
  v76 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template(v14);
  v15 = OUTLINED_FUNCTION_13_1(v76);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_316_2(v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314780, &qword_1C9074E40);
  OUTLINED_FUNCTION_9(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_102_8(v23);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C4D0, &qword_1C90AC090);
  OUTLINED_FUNCTION_13_1(v75);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_134_3(v27);
  v28 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
  v29 = OUTLINED_FUNCTION_13_1(v28);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_15();
  v34 = v33 - v32;
  v35 = OUTLINED_FUNCTION_245();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(v35, v36);
  OUTLINED_FUNCTION_9(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_72();
  v41 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C1A8, &qword_1C90AC000) - 8);
  v42 = *(*v41 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_51();
  v44 = *(type metadata accessor for ToolKitProtoComparisonPredicate.Template(0) + 20);
  v45 = v41[14];
  OUTLINED_FUNCTION_44_18();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_44_18();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_133_4(v0);
  if (v46)
  {
    OUTLINED_FUNCTION_133_4(v0 + v45);
    if (v46)
    {
      sub_1C8D16D78(v0, &qword_1EC314750, &qword_1C9074E10);
      goto LABEL_11;
    }

LABEL_9:
    v47 = &qword_1EC31C1A8;
    v48 = &qword_1C90AC000;
    v49 = v0;
LABEL_35:
    sub_1C8D16D78(v49, v47, v48);
    goto LABEL_36;
  }

  OUTLINED_FUNCTION_181();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_133_4(v0 + v45);
  if (v46)
  {
    OUTLINED_FUNCTION_267_2();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_228_5();
  sub_1C900BE74();
  OUTLINED_FUNCTION_93();
  static ToolKitProtoTypeDefinition.Version1.Entity.Property.== infix(_:_:)();
  v51 = v50;
  sub_1C8CD20B4(v34, v41);
  v52 = OUTLINED_FUNCTION_287();
  sub_1C8CD20B4(v52, v53);
  sub_1C8D16D78(v0, &qword_1EC314750, &qword_1C9074E10);
  if ((v51 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_11:
  OUTLINED_FUNCTION_368_0();
  OUTLINED_FUNCTION_193_5();
  OUTLINED_FUNCTION_290_2();
  v54 = OUTLINED_FUNCTION_175_5();
  OUTLINED_FUNCTION_65_13(v54, v55);
  if (v46)
  {
    OUTLINED_FUNCTION_34_17(v77 + v1);
    if (v46)
    {
      sub_1C8D16D78(v77, &qword_1EC314780, &qword_1C9074E40);
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  sub_1C8D63FCC();
  OUTLINED_FUNCTION_34_17(v77 + v1);
  if (v56)
  {
    sub_1C8CD20B4(v74, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template);
LABEL_19:
    v47 = &qword_1EC31C4D0;
    v48 = &qword_1C90AC090;
    v49 = v77;
    goto LABEL_35;
  }

  sub_1C900BE74();
  OUTLINED_FUNCTION_380_0();
  static ToolKitProtoComparisonPredicate.Comparison.Template.== infix(_:_:)();
  OUTLINED_FUNCTION_163_7();
  v57 = OUTLINED_FUNCTION_130_1();
  sub_1C8CD20B4(v57, v58);
  sub_1C8D16D78(v77, &qword_1EC314780, &qword_1C9074E40);
  if ((&qword_1C9074E40 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_21:
  OUTLINED_FUNCTION_336_2();
  if (v46)
  {
    v61 = v59 == v60;
  }

  else
  {
    v61 = 0;
  }

  if (!v61 && (sub_1C9064C2C() & 1) == 0)
  {
    goto LABEL_36;
  }

  v62 = *(v71 + 48);
  OUTLINED_FUNCTION_193_5();
  OUTLINED_FUNCTION_202_5();
  v63 = OUTLINED_FUNCTION_175_5();
  OUTLINED_FUNCTION_65_13(v63, v64);
  if (v46)
  {
    OUTLINED_FUNCTION_30_26();
    if (v46)
    {
      sub_1C8D16D78(v73, &qword_1EC314580, &qword_1C9074DA0);
LABEL_39:
      sub_1C90637EC();
      OUTLINED_FUNCTION_1_76();
      sub_1C8CD1B00(v69, v70);
      OUTLINED_FUNCTION_257_2();
      v66 = OUTLINED_FUNCTION_343_2();
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  sub_1C8D63FCC();
  OUTLINED_FUNCTION_30_26();
  if (v65)
  {
    OUTLINED_FUNCTION_128_4();
LABEL_34:
    v47 = &qword_1EC31C190;
    v48 = &qword_1C90ABFE8;
    v49 = v73;
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_231_4();
  sub_1C900BE74();
  OUTLINED_FUNCTION_347();
  static ToolKitProtoContentItemClassDescriptor.== infix(_:_:)();
  OUTLINED_FUNCTION_163_7();
  v67 = OUTLINED_FUNCTION_274_0();
  sub_1C8CD20B4(v67, v68);
  sub_1C8D16D78(v73, &qword_1EC314580, &qword_1C9074DA0);
  if (&qword_1C9074DA0)
  {
    goto LABEL_39;
  }

LABEL_36:
  v66 = 0;
LABEL_37:
  OUTLINED_FUNCTION_50_0(v66);
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8FB57A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D588, type metadata accessor for ToolKitProtoComparisonPredicate.Template);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FB5820(uint64_t a1)
{
  v2 = sub_1C8CD1B00(qword_1EDA645B8, type metadata accessor for ToolKitProtoComparisonPredicate.Template);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FB5890()
{
  sub_1C8CD1B00(qword_1EDA645B8, type metadata accessor for ToolKitProtoComparisonPredicate.Template);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FB591C()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B3B8);
  __swift_project_value_buffer(v0, qword_1EC31B3B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "operator";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "operands";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

void ToolKitProtoCompoundPredicate.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    v1 = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      OUTLINED_FUNCTION_17_34();
      sub_1C8F6BFE0();
    }

    else if (v1 == 1)
    {
      OUTLINED_FUNCTION_5_39();
      sub_1C8FB5BCC();
    }
  }
}

void ToolKitProtoCompoundPredicate.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_340_2();
  OUTLINED_FUNCTION_4_36();
  if (!*v0 || (v4 = *v0, sub_1C8DC0968(), OUTLINED_FUNCTION_29_23(), sub_1C9063B1C(), !v1))
  {
    OUTLINED_FUNCTION_347_2();
    if (!v2 || (type metadata accessor for ToolKitProtoComparisonPredicate(0), sub_1C8CD1B00(&qword_1EC31C4E0, type metadata accessor for ToolKitProtoComparisonPredicate), OUTLINED_FUNCTION_126_4(), OUTLINED_FUNCTION_29_23(), sub_1C9063BBC(), !v1))
    {
      v3 = *(type metadata accessor for ToolKitProtoCompoundPredicate(0) + 24);
      OUTLINED_FUNCTION_13_23();
    }
  }

  OUTLINED_FUNCTION_341_2();
}

uint64_t sub_1C8FB5DB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D580, type metadata accessor for ToolKitProtoCompoundPredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FB5E34(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CDD0, type metadata accessor for ToolKitProtoCompoundPredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FB5EA4()
{
  sub_1C8CD1B00(&qword_1EC31CDD0, type metadata accessor for ToolKitProtoCompoundPredicate);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FB5F24()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B3D0);
  __swift_project_value_buffer(v0, qword_1EC31B3D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C9084EE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "OperatorUnspecified";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "OperatorAnd";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "OperatorOr";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8FB6284(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D578, type metadata accessor for ToolKitProtoStringSearchPredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FB6304(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CDF0, type metadata accessor for ToolKitProtoStringSearchPredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FB6374()
{
  sub_1C8CD1B00(&qword_1EC31CDF0, type metadata accessor for ToolKitProtoStringSearchPredicate);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FB63F4()
{
  result = MEMORY[0x1CCA81A90](0x74616C706D65542ELL, 0xE900000000000065);
  qword_1EC31B400 = 0xD00000000000001DLL;
  *algn_1EC31B408 = 0x80000001C90CD3F0;
  return result;
}

uint64_t sub_1C8FB6520(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D570, type metadata accessor for ToolKitProtoStringSearchPredicate.Template);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FB65A0(uint64_t a1)
{
  v2 = sub_1C8CD1B00(qword_1EDA64158, type metadata accessor for ToolKitProtoStringSearchPredicate.Template);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FB6610()
{
  sub_1C8CD1B00(qword_1EDA64158, type metadata accessor for ToolKitProtoStringSearchPredicate.Template);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FB6698()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B428);
  __swift_project_value_buffer(v0, qword_1EC31B428);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "identifiers";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8FB6968(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D568, type metadata accessor for ToolKitProtoIdSearchPredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FB69E8(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CE10, type metadata accessor for ToolKitProtoIdSearchPredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FB6A58()
{
  sub_1C8CD1B00(&qword_1EC31CE10, type metadata accessor for ToolKitProtoIdSearchPredicate);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FB6AD8()
{
  result = MEMORY[0x1CCA81A90](0x74616C706D65542ELL, 0xE900000000000065);
  qword_1EC31B440 = 0xD000000000000019;
  *algn_1EC31B448 = 0x80000001C90CD410;
  return result;
}

uint64_t sub_1C8FB6C04(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D560, type metadata accessor for ToolKitProtoIdSearchPredicate.Template);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FB6C84(uint64_t a1)
{
  v2 = sub_1C8CD1B00(qword_1EDA64B50, type metadata accessor for ToolKitProtoIdSearchPredicate.Template);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FB6CF4()
{
  sub_1C8CD1B00(qword_1EDA64B50, type metadata accessor for ToolKitProtoIdSearchPredicate.Template);

  return sub_1C9063ABC();
}

void ToolKitProtoValueSearchPredicate.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    v1 = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 1)
    {
      OUTLINED_FUNCTION_233_4();
      OUTLINED_FUNCTION_17_34();
      sub_1C8F6BF94();
    }
  }
}

void ToolKitProtoValueSearchPredicate.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_340_2();
  OUTLINED_FUNCTION_4_36();
  OUTLINED_FUNCTION_264_3();
  if (!v1 || (type metadata accessor for ToolKitProtoTypedValue(0), OUTLINED_FUNCTION_19_31(), sub_1C8CD1B00(v2, v3), OUTLINED_FUNCTION_121_5(), OUTLINED_FUNCTION_29_23(), sub_1C9063BBC(), !v0))
  {
    v4 = *(type metadata accessor for ToolKitProtoValueSearchPredicate(0) + 20);
    OUTLINED_FUNCTION_13_23();
  }

  OUTLINED_FUNCTION_341_2();
}

uint64_t sub_1C8FB6F88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D558, type metadata accessor for ToolKitProtoValueSearchPredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FB7008(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CE30, type metadata accessor for ToolKitProtoValueSearchPredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FB7078()
{
  sub_1C8CD1B00(&qword_1EC31CE30, type metadata accessor for ToolKitProtoValueSearchPredicate);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FB70F8()
{
  result = MEMORY[0x1CCA81A90](0x74616C706D65542ELL, 0xE900000000000065);
  qword_1EC31B480 = 0xD00000000000001CLL;
  *algn_1EC31B488 = 0x80000001C90CD430;
  return result;
}

void static ToolKitProtoValueSearchPredicate.Template.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v2 = OUTLINED_FUNCTION_24_2();
  v3 = type metadata accessor for ToolKitProtoTypeInstance(v2);
  v4 = OUTLINED_FUNCTION_39_19(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_18_23();
  v7 = OUTLINED_FUNCTION_124();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_9(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_73();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A60, &unk_1C9068E40);
  OUTLINED_FUNCTION_9(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_27_20(v17);
  OUTLINED_FUNCTION_108_5();
  OUTLINED_FUNCTION_18_32();
  if (v18)
  {
    OUTLINED_FUNCTION_16_31();
    if (v18)
    {
      sub_1C8D16D78(v0, &qword_1EC312A58, &unk_1C9074CC0);
LABEL_12:
      v28 = type metadata accessor for ToolKitProtoValueSearchPredicate.Template(0);
      OUTLINED_FUNCTION_63_10(v28);
      OUTLINED_FUNCTION_1_76();
      sub_1C8CD1B00(v29, v30);
      v20 = OUTLINED_FUNCTION_12_28();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_287();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_16_31();
  if (v18)
  {
    OUTLINED_FUNCTION_5_52();
    sub_1C8CD20B4(v1, v19);
LABEL_9:
    sub_1C8D16D78(v0, &qword_1EC312A60, &unk_1C9068E40);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_48_16();
  sub_1C900BE74();
  v21 = OUTLINED_FUNCTION_398();
  v23 = static ToolKitProtoTypeInstance.== infix(_:_:)(v21, v22);
  v24 = OUTLINED_FUNCTION_181_0();
  sub_1C8CD20B4(v24, v25);
  v26 = OUTLINED_FUNCTION_125();
  sub_1C8CD20B4(v26, v27);
  sub_1C8D16D78(v0, &qword_1EC312A58, &unk_1C9074CC0);
  if (v23)
  {
    goto LABEL_12;
  }

LABEL_10:
  v20 = 0;
LABEL_13:
  OUTLINED_FUNCTION_50_0(v20);
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8FB7468(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D550, type metadata accessor for ToolKitProtoValueSearchPredicate.Template);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FB74E8(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CE48, type metadata accessor for ToolKitProtoValueSearchPredicate.Template);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FB7558()
{
  sub_1C8CD1B00(&qword_1EC31CE48, type metadata accessor for ToolKitProtoValueSearchPredicate.Template);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FB76FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D548, type metadata accessor for ToolKitProtoSearchableItemPredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FB777C(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CE60, type metadata accessor for ToolKitProtoSearchableItemPredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FB77EC()
{
  sub_1C8CD1B00(&qword_1EC31CE60, type metadata accessor for ToolKitProtoSearchableItemPredicate);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FB786C()
{
  result = MEMORY[0x1CCA81A90](0x74616C706D65542ELL, 0xE900000000000065);
  qword_1EC31B4C0 = 0xD00000000000001FLL;
  *algn_1EC31B4C8 = 0x80000001C90CD450;
  return result;
}

uint64_t sub_1C8FB7998(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D540, type metadata accessor for ToolKitProtoSearchableItemPredicate.Template);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FB7A18(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EDA63F30, type metadata accessor for ToolKitProtoSearchableItemPredicate.Template);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FB7A88()
{
  sub_1C8CD1B00(&qword_1EDA63F30, type metadata accessor for ToolKitProtoSearchableItemPredicate.Template);

  return sub_1C9063ABC();
}

uint64_t ToolKitProtoAllPredicate.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_349_1();
  do
  {
    OUTLINED_FUNCTION_93();
    result = sub_1C90638DC();
  }

  while (!v0 && (v2 & 1) == 0);
  return result;
}

uint64_t sub_1C8FB7C28(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D538, type metadata accessor for ToolKitProtoAllPredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FB7CA8(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EDA653D8, type metadata accessor for ToolKitProtoAllPredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FB7D18()
{
  sub_1C8CD1B00(&qword_1EDA653D8, type metadata accessor for ToolKitProtoAllPredicate);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FB7E58(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D530, type metadata accessor for ToolKitProtoValidPredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FB7ED8(uint64_t a1)
{
  v2 = sub_1C8CD1B00(qword_1EDA61830, type metadata accessor for ToolKitProtoValidPredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FB7F48()
{
  sub_1C8CD1B00(qword_1EDA61830, type metadata accessor for ToolKitProtoValidPredicate);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FB8088(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D528, type metadata accessor for ToolKitProtoSuggestedPredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FB8108(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EDA64788, type metadata accessor for ToolKitProtoSuggestedPredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FB8178()
{
  sub_1C8CD1B00(&qword_1EDA64788, type metadata accessor for ToolKitProtoSuggestedPredicate);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FB8218()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B530);
  __swift_project_value_buffer(v0, qword_1EC31B530);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C9084EE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "predicate";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "sort";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "limit";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoQuery.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    result = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        v3 = OUTLINED_FUNCTION_5_39();
        sub_1C8FB8618(v3, v4, v5, v6, v7, v8);
        break;
      case 2:
        OUTLINED_FUNCTION_5_39();
        sub_1C8FB85B0();
        break;
      case 1:
        OUTLINED_FUNCTION_5_39();
        sub_1C8FB84FC();
        break;
    }
  }

  return result;
}

uint64_t sub_1C8FB84FC()
{
  v0 = *(type metadata accessor for ToolKitProtoQuery(0) + 20);
  type metadata accessor for ToolKitProtoQuery.AnyPredicate(0);
  sub_1C8CD1B00(&qword_1EC319AA0, type metadata accessor for ToolKitProtoQuery.AnyPredicate);
  return sub_1C9063A4C();
}

uint64_t sub_1C8FB8618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  v7 = OUTLINED_FUNCTION_41_15();
  v9 = *(v8(v7) + 24);
  OUTLINED_FUNCTION_29_18();
  return a6();
}

void ToolKitProtoQuery.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_363_1();
  v2 = OUTLINED_FUNCTION_7_48();
  sub_1C8FB872C(v2, v3, v4, v5);
  if (!v0)
  {
    if (*v1)
    {
      v7 = *v1;
      sub_1C8DC0914();
      OUTLINED_FUNCTION_29_23();
      sub_1C9063B1C();
    }

    OUTLINED_FUNCTION_2_55();
    sub_1C8FB8900();
    v6 = type metadata accessor for ToolKitProtoQuery(0);
    OUTLINED_FUNCTION_53_15(v6);
  }

  OUTLINED_FUNCTION_364_1();
}

uint64_t sub_1C8FB872C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313400, &qword_1C906B680);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoQuery.AnyPredicate(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ToolKitProtoQuery(0) + 20);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_1C8D16D78(v7, &qword_1EC313400, &qword_1C906B680);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(&qword_1EC319AA0, type metadata accessor for ToolKitProtoQuery.AnyPredicate);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoQuery.AnyPredicate);
}

uint64_t sub_1C8FB8900()
{
  v1 = OUTLINED_FUNCTION_325_2();
  result = v2(v1);
  v4 = (v0 + *(result + 24));
  if ((v4[1] & 1) == 0)
  {
    v5 = *v4;
    OUTLINED_FUNCTION_138_6();
    return sub_1C9063B5C();
  }

  return result;
}

void static ToolKitProtoQuery.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for ToolKitProtoQuery.AnyPredicate(0);
  v7 = OUTLINED_FUNCTION_13_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_50_1();
  v10 = OUTLINED_FUNCTION_245();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  OUTLINED_FUNCTION_9(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_15_0();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C548, &qword_1C90AC098);
  OUTLINED_FUNCTION_184_6(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v19);
  v20 = OUTLINED_FUNCTION_35();
  v39 = type metadata accessor for ToolKitProtoQuery(v20);
  OUTLINED_FUNCTION_348_2(v39);
  OUTLINED_FUNCTION_44_18();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_44_18();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_78_4(v0);
  if (v21)
  {
    OUTLINED_FUNCTION_78_4(v0 + v1);
    if (v21)
    {
      sub_1C8D16D78(v0, &qword_1EC313400, &qword_1C906B680);
      goto LABEL_11;
    }

LABEL_9:
    sub_1C8D16D78(v0, &qword_1EC31C548, &qword_1C90AC098);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_177_5();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_78_4(v0 + v1);
  if (v21)
  {
    v22 = OUTLINED_FUNCTION_273();
    sub_1C8CD20B4(v22, v23);
    goto LABEL_9;
  }

  sub_1C900BE74();
  OUTLINED_FUNCTION_49();
  static ToolKitProtoQuery.AnyPredicate.== infix(_:_:)();
  v25 = v24;
  v26 = OUTLINED_FUNCTION_287();
  sub_1C8CD20B4(v26, v27);
  v28 = OUTLINED_FUNCTION_203();
  sub_1C8CD20B4(v28, v29);
  sub_1C8D16D78(v0, &qword_1EC313400, &qword_1C906B680);
  if ((v25 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  if (*v5 == *v3)
  {
    v30 = v39;
    v31 = *(v39 + 24);
    v32 = v5[v31 + 8];
    v33 = v3[v31 + 8];
    if (v32)
    {
      if (!v33)
      {
        goto LABEL_14;
      }
    }

    else
    {
      OUTLINED_FUNCTION_55_14();
      if (v35)
      {
        goto LABEL_14;
      }
    }

    v36 = *(v30 + 28);
    sub_1C90637EC();
    OUTLINED_FUNCTION_1_76();
    sub_1C8CD1B00(v37, v38);
    v34 = OUTLINED_FUNCTION_169_5();
    goto LABEL_15;
  }

LABEL_14:
  v34 = 0;
LABEL_15:
  OUTLINED_FUNCTION_50_0(v34);
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8FB8C8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D520, type metadata accessor for ToolKitProtoQuery);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FB8D0C(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CE98, type metadata accessor for ToolKitProtoQuery);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FB8D7C()
{
  sub_1C8CD1B00(&qword_1EC31CE98, type metadata accessor for ToolKitProtoQuery);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FB8DFC()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B548);
  __swift_project_value_buffer(v0, qword_1EC31B548);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C9084EE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "SortOrderUnspecified";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SortOrderForward";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SortOrderReverse";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8FB9044()
{
  strcpy(v1, "ToolKit.Query");
  HIWORD(v1[1]) = -4864;
  result = MEMORY[0x1CCA81A90](0x64657250796E412ELL, 0xED00006574616369);
  qword_1EC31B560 = v1[0];
  *algn_1EC31B568 = v1[1];
  return result;
}

uint64_t sub_1C8FB90E4()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B570);
  __swift_project_value_buffer(v0, qword_1EC31B570);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1C909C460;
  v4 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v4 = "comparison";
  *(v4 + 8) = 10;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1C9063BDC();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v24 + v3 + v2 + v1[14];
  *(v24 + v3 + v2) = 2;
  *v8 = "compound";
  *(v8 + 8) = 8;
  *(v8 + 16) = 2;
  v7();
  v9 = (v24 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "stringSearch";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v7();
  v11 = (v24 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "idSearch";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v7();
  v13 = (v24 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "all";
  *(v14 + 1) = 3;
  v14[16] = 2;
  v7();
  v15 = (v24 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "suggested";
  *(v16 + 1) = 9;
  v16[16] = 2;
  v7();
  v17 = (v24 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "searchableItem";
  *(v18 + 1) = 14;
  v18[16] = 2;
  v7();
  v19 = (v24 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "valid";
  *(v20 + 1) = 5;
  v20[16] = 2;
  v7();
  v21 = (v24 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "valueSearch";
  *(v22 + 1) = 11;
  v22[16] = 2;
  v7();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoQuery.AnyPredicate.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    result = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_8_32();
        sub_1C8FB9580(v3, v4, v5, v6);
        break;
      case 2:
        v23 = OUTLINED_FUNCTION_8_32();
        sub_1C8FB9A78(v23, v24, v25, v26);
        break;
      case 3:
        v11 = OUTLINED_FUNCTION_8_32();
        sub_1C8FB9F70(v11, v12, v13, v14);
        break;
      case 4:
        v15 = OUTLINED_FUNCTION_8_32();
        sub_1C8FBA468(v15, v16, v17, v18);
        break;
      case 5:
        v7 = OUTLINED_FUNCTION_8_32();
        sub_1C8FBA960(v7, v8, v9, v10);
        break;
      case 6:
        v27 = OUTLINED_FUNCTION_8_32();
        sub_1C8FBAE58(v27, v28, v29, v30);
        break;
      case 7:
        v31 = OUTLINED_FUNCTION_8_32();
        sub_1C8FBB350(v31, v32, v33, v34);
        break;
      case 8:
        v19 = OUTLINED_FUNCTION_8_32();
        sub_1C8FBB848(v19, v20, v21, v22);
        break;
      case 9:
        v35 = OUTLINED_FUNCTION_8_32();
        sub_1C8FBBD40(v35, v36, v37, v38);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8FB9580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoComparisonPredicate(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314788, &qword_1C9074E48);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D928, &qword_1C90BBD10);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v12, &qword_1EC314788, &qword_1C9074E48);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    }

    else
    {
      sub_1C8D16D78(v24, &qword_1EC31D928, &qword_1C90BBD10);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }
  }

  sub_1C8CD1B00(&qword_1EC31C4E0, type metadata accessor for ToolKitProtoComparisonPredicate);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC31D928, &qword_1C90BBD10);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC31D928, &qword_1C90BBD10);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC31D928, &qword_1C90BBD10);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC31D928, &qword_1C90BBD10);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC314788, &qword_1C9074E48);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1C8FB9A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoCompoundPredicate(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314788, &qword_1C9074E48);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D930, &qword_1C90BBD18);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v12, &qword_1EC314788, &qword_1C9074E48);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8D16D78(v24, &qword_1EC31D930, &qword_1C90BBD18);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    }
  }

  sub_1C8CD1B00(&qword_1EC31CDD0, type metadata accessor for ToolKitProtoCompoundPredicate);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC31D930, &qword_1C90BBD18);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC31D930, &qword_1C90BBD18);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC31D930, &qword_1C90BBD18);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC31D930, &qword_1C90BBD18);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC314788, &qword_1C9074E48);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1C8FB9F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoStringSearchPredicate(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314788, &qword_1C9074E48);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D938, &qword_1C90BBD20);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v12, &qword_1EC314788, &qword_1C9074E48);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C8D16D78(v24, &qword_1EC31D938, &qword_1C90BBD20);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    }
  }

  sub_1C8CD1B00(&qword_1EC31CDF0, type metadata accessor for ToolKitProtoStringSearchPredicate);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC31D938, &qword_1C90BBD20);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC31D938, &qword_1C90BBD20);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC31D938, &qword_1C90BBD20);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC31D938, &qword_1C90BBD20);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC314788, &qword_1C9074E48);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1C8FBA468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoIdSearchPredicate(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314788, &qword_1C9074E48);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D940, &qword_1C90BBD28);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v12, &qword_1EC314788, &qword_1C9074E48);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1C8D16D78(v24, &qword_1EC31D940, &qword_1C90BBD28);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    }
  }

  sub_1C8CD1B00(&qword_1EC31CE10, type metadata accessor for ToolKitProtoIdSearchPredicate);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC31D940, &qword_1C90BBD28);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC31D940, &qword_1C90BBD28);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC31D940, &qword_1C90BBD28);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC31D940, &qword_1C90BBD28);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC314788, &qword_1C9074E48);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1C8FBA960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoAllPredicate(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314788, &qword_1C9074E48);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314248, &unk_1C9072A80);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v12, &qword_1EC314788, &qword_1C9074E48);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1C8D16D78(v24, &qword_1EC314248, &unk_1C9072A80);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    }
  }

  sub_1C8CD1B00(&qword_1EDA653D8, type metadata accessor for ToolKitProtoAllPredicate);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC314248, &unk_1C9072A80);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC314248, &unk_1C9072A80);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC314248, &unk_1C9072A80);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC314248, &unk_1C9072A80);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC314788, &qword_1C9074E48);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1C8FBAE58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoSuggestedPredicate(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314788, &qword_1C9074E48);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314240, &unk_1C9074D50);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v12, &qword_1EC314788, &qword_1C9074E48);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1C8D16D78(v24, &qword_1EC314240, &unk_1C9074D50);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    }
  }

  sub_1C8CD1B00(&qword_1EDA64788, type metadata accessor for ToolKitProtoSuggestedPredicate);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC314240, &unk_1C9074D50);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC314240, &unk_1C9074D50);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC314240, &unk_1C9074D50);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC314240, &unk_1C9074D50);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC314788, &qword_1C9074E48);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1C8FBB350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoSearchableItemPredicate(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314788, &qword_1C9074E48);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D948, &qword_1C90BBD30);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v12, &qword_1EC314788, &qword_1C9074E48);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1C8D16D78(v24, &qword_1EC31D948, &qword_1C90BBD30);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    }
  }

  sub_1C8CD1B00(&qword_1EC31CE60, type metadata accessor for ToolKitProtoSearchableItemPredicate);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC31D948, &qword_1C90BBD30);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC31D948, &qword_1C90BBD30);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC31D948, &qword_1C90BBD30);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC31D948, &qword_1C90BBD30);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC314788, &qword_1C9074E48);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1C8FBB848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  valid = type metadata accessor for ToolKitProtoValidPredicate(0);
  v6 = *(*(valid - 8) + 64);
  MEMORY[0x1EEE9AC00](valid);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314788, &qword_1C9074E48);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314230, &unk_1C9074D60);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, valid);
  v31 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v12, &qword_1EC314788, &qword_1C9074E48);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_1C8D16D78(v24, &qword_1EC314230, &unk_1C9074D60);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, valid);
    }

    else
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    }
  }

  sub_1C8CD1B00(qword_1EDA61830, type metadata accessor for ToolKitProtoValidPredicate);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC314230, &unk_1C9074D60);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, valid) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC314230, &unk_1C9074D60);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC314230, &unk_1C9074D60);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC314230, &unk_1C9074D60);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC314788, &qword_1C9074E48);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1C8FBBD40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoValueSearchPredicate(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314788, &qword_1C9074E48);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D950, &qword_1C90BBD38);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v12, &qword_1EC314788, &qword_1C9074E48);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_1C8D16D78(v24, &qword_1EC31D950, &qword_1C90BBD38);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    }
  }

  sub_1C8CD1B00(&qword_1EC31CE30, type metadata accessor for ToolKitProtoValueSearchPredicate);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC31D950, &qword_1C90BBD38);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC31D950, &qword_1C90BBD38);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC31D950, &qword_1C90BBD38);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC31D950, &qword_1C90BBD38);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC314788, &qword_1C9074E48);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

void ToolKitProtoQuery.AnyPredicate.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_300_0();
  OUTLINED_FUNCTION_43_15();
  v2 = OUTLINED_FUNCTION_245();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_9(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_45_21();
  v8 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  OUTLINED_FUNCTION_20_31(v8);
  if (!v9)
  {
    OUTLINED_FUNCTION_124();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v30 = OUTLINED_FUNCTION_3_4();
        sub_1C8FBC59C(v30, v31, v32, v33);
        goto LABEL_11;
      case 2u:
        v18 = OUTLINED_FUNCTION_3_4();
        sub_1C8FBC7A4(v18, v19, v20, v21);
        goto LABEL_11;
      case 3u:
        v22 = OUTLINED_FUNCTION_3_4();
        sub_1C8FBC9AC(v22, v23, v24, v25);
        goto LABEL_11;
      case 4u:
        v14 = OUTLINED_FUNCTION_3_4();
        sub_1C8FBCBB4(v14, v15, v16, v17);
        goto LABEL_11;
      case 5u:
        v34 = OUTLINED_FUNCTION_3_4();
        sub_1C8FBCDBC(v34, v35, v36, v37);
        goto LABEL_11;
      case 6u:
        v38 = OUTLINED_FUNCTION_3_4();
        sub_1C8FBCFC4(v38, v39, v40, v41);
        goto LABEL_11;
      case 7u:
        v26 = OUTLINED_FUNCTION_3_4();
        sub_1C8FBD1CC(v26, v27, v28, v29);
        goto LABEL_11;
      case 8u:
        v44 = OUTLINED_FUNCTION_3_4();
        sub_1C8FBD3D4(v44, v45, v46, v47);
        if (v0)
        {
          OUTLINED_FUNCTION_76_9();
          sub_1C8CD20B4(v1, v48);
          goto LABEL_13;
        }

        OUTLINED_FUNCTION_76_9();
        sub_1C8CD20B4(v1, v49);
        break;
      default:
        v10 = OUTLINED_FUNCTION_3_4();
        sub_1C8FBC398(v10, v11, v12, v13);
LABEL_11:
        OUTLINED_FUNCTION_76_9();
        sub_1C8CD20B4(v1, v42);
        if (!v0)
        {
          break;
        }

        goto LABEL_13;
    }
  }

  v43 = type metadata accessor for ToolKitProtoQuery.AnyPredicate(0);
  OUTLINED_FUNCTION_52_17(v43);
LABEL_13:
  OUTLINED_FUNCTION_190_8();
  OUTLINED_FUNCTION_301_1();
}

uint64_t sub_1C8FBC398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314788, &qword_1C9074E48);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoComparisonPredicate(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v12 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &qword_1EC314788, &qword_1C9074E48);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EC31C4E0, type metadata accessor for ToolKitProtoComparisonPredicate);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoComparisonPredicate);
    }

    result = sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FBC59C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314788, &qword_1C9074E48);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoCompoundPredicate(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v12 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &qword_1EC314788, &qword_1C9074E48);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EC31CDD0, type metadata accessor for ToolKitProtoCompoundPredicate);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoCompoundPredicate);
    }

    result = sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FBC7A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314788, &qword_1C9074E48);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoStringSearchPredicate(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v12 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &qword_1EC314788, &qword_1C9074E48);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EC31CDF0, type metadata accessor for ToolKitProtoStringSearchPredicate);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoStringSearchPredicate);
    }

    result = sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FBC9AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314788, &qword_1C9074E48);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoIdSearchPredicate(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v12 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &qword_1EC314788, &qword_1C9074E48);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EC31CE10, type metadata accessor for ToolKitProtoIdSearchPredicate);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoIdSearchPredicate);
    }

    result = sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FBCBB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314788, &qword_1C9074E48);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoAllPredicate(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v12 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &qword_1EC314788, &qword_1C9074E48);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EDA653D8, type metadata accessor for ToolKitProtoAllPredicate);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoAllPredicate);
    }

    result = sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FBCDBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314788, &qword_1C9074E48);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoSuggestedPredicate(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v12 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &qword_1EC314788, &qword_1C9074E48);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EDA64788, type metadata accessor for ToolKitProtoSuggestedPredicate);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoSuggestedPredicate);
    }

    result = sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FBCFC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314788, &qword_1C9074E48);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoSearchableItemPredicate(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v12 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &qword_1EC314788, &qword_1C9074E48);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EC31CE60, type metadata accessor for ToolKitProtoSearchableItemPredicate);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoSearchableItemPredicate);
    }

    result = sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FBD1CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314788, &qword_1C9074E48);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  valid = type metadata accessor for ToolKitProtoValidPredicate(0);
  v9 = *(*(valid - 8) + 64);
  MEMORY[0x1EEE9AC00](valid);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v12 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &qword_1EC314788, &qword_1C9074E48);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(qword_1EDA61830, type metadata accessor for ToolKitProtoValidPredicate);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoValidPredicate);
    }

    result = sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FBD3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314788, &qword_1C9074E48);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoValueSearchPredicate(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v12 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &qword_1EC314788, &qword_1C9074E48);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EC31CE30, type metadata accessor for ToolKitProtoValueSearchPredicate);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoValueSearchPredicate);
    }

    result = sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  }

  __break(1u);
  return result;
}

void static ToolKitProtoQuery.AnyPredicate.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v2 = OUTLINED_FUNCTION_24_2();
  v3 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(v2);
  v4 = OUTLINED_FUNCTION_39_19(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_18_23();
  v7 = OUTLINED_FUNCTION_124();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_9(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_73();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C558, &qword_1C90AC0A0);
  OUTLINED_FUNCTION_9(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_27_20(v17);
  OUTLINED_FUNCTION_108_5();
  OUTLINED_FUNCTION_18_32();
  if (v18)
  {
    OUTLINED_FUNCTION_16_31();
    if (v18)
    {
      sub_1C8D16D78(v0, &qword_1EC314788, &qword_1C9074E48);
LABEL_12:
      v27 = type metadata accessor for ToolKitProtoQuery.AnyPredicate(0);
      OUTLINED_FUNCTION_63_10(v27);
      OUTLINED_FUNCTION_1_76();
      sub_1C8CD1B00(v28, v29);
      v20 = OUTLINED_FUNCTION_12_28();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_287();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_16_31();
  if (v18)
  {
    OUTLINED_FUNCTION_76_9();
    sub_1C8CD20B4(v1, v19);
LABEL_9:
    sub_1C8D16D78(v0, &qword_1EC31C558, &qword_1C90AC0A0);
    goto LABEL_10;
  }

  sub_1C900BE74();
  OUTLINED_FUNCTION_398();
  static ToolKitProtoQuery.ToolKitProtoAnyPredicateKind.== infix(_:_:)();
  v22 = v21;
  v23 = OUTLINED_FUNCTION_181_0();
  sub_1C8CD20B4(v23, v24);
  v25 = OUTLINED_FUNCTION_125();
  sub_1C8CD20B4(v25, v26);
  sub_1C8D16D78(v0, &qword_1EC314788, &qword_1C9074E48);
  if (v22)
  {
    goto LABEL_12;
  }

LABEL_10:
  v20 = 0;
LABEL_13:
  OUTLINED_FUNCTION_50_0(v20);
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8FBD850(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D518, type metadata accessor for ToolKitProtoQuery.AnyPredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FBD8D0(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC319AA0, type metadata accessor for ToolKitProtoQuery.AnyPredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FBD940()
{
  sub_1C8CD1B00(&qword_1EC319AA0, type metadata accessor for ToolKitProtoQuery.AnyPredicate);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FBD9D8()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B588);
  __swift_project_value_buffer(v0, qword_1EC31B588);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C909C3B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "major";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "minor";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "patch";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "isWildcard";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoRuntimePlatformVersion.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    result = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
        OUTLINED_FUNCTION_22_0();
        sub_1C906399C();
        break;
      case 4:
        OUTLINED_FUNCTION_22_0();
        sub_1C906391C();
        break;
      default:
        continue;
    }
  }
}

uint64_t ToolKitProtoRuntimePlatformVersion.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_4_36();
  if (!*v0 || (OUTLINED_FUNCTION_17_25(), result = sub_1C9063B4C(), !v1))
  {
    if (!*(v2 + 4) || (OUTLINED_FUNCTION_17_25(), result = sub_1C9063B4C(), !v1))
    {
      if (!*(v2 + 8) || (OUTLINED_FUNCTION_17_25(), result = sub_1C9063B4C(), !v1))
      {
        if (*(v2 + 12) != 1 || (OUTLINED_FUNCTION_17_25(), result = sub_1C9063B0C(), !v1))
        {
          v4 = *(type metadata accessor for ToolKitProtoRuntimePlatformVersion(0) + 32);
          return OUTLINED_FUNCTION_13_23();
        }
      }
    }
  }

  return result;
}

uint64_t static ToolKitProtoRuntimePlatformVersion.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_223();
  if (*(v4 + 4) != *(v5 + 4) || *(v3 + 8) != *(v2 + 8) || *(v3 + 12) != *(v2 + 12))
  {
    return 0;
  }

  v7 = *(type metadata accessor for ToolKitProtoRuntimePlatformVersion(0) + 32);
  sub_1C90637EC();
  OUTLINED_FUNCTION_1_76();
  sub_1C8CD1B00(v8, v9);
  return OUTLINED_FUNCTION_12_28() & 1;
}

uint64_t sub_1C8FBDF00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D510, type metadata accessor for ToolKitProtoRuntimePlatformVersion);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FBDF80(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EDA671F8, type metadata accessor for ToolKitProtoRuntimePlatformVersion);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FBDFF0()
{
  sub_1C8CD1B00(&qword_1EDA671F8, type metadata accessor for ToolKitProtoRuntimePlatformVersion);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FBE07C()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B5A0);
  __swift_project_value_buffer(v0, qword_1EC31B5A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C909C3B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "platform";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "deviceCapability";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "featureFlag";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "deviceState";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoRuntimeRequirement.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    result = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_8_32();
        sub_1C8FBE394(v3, v4, v5, v6);
        break;
      case 2:
        v13 = OUTLINED_FUNCTION_8_32();
        sub_1C8FBE88C(v13, v14, v15, v16);
        break;
      case 3:
        v7 = OUTLINED_FUNCTION_8_32();
        sub_1C8FBED84(v7, v8, v9, v10);
        break;
      case 4:
        v11 = OUTLINED_FUNCTION_5_39();
        sub_1C8FBF27C(v11, v12);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8FBE394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A78, &qword_1C9068E58);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoRuntimeRequirementKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D910, &qword_1C90BBCF8);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v12, &qword_1EC312A78, &qword_1C9068E58);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
    }

    else
    {
      sub_1C8D16D78(v24, &qword_1EC31D910, &qword_1C90BBCF8);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }
  }

  sub_1C8CD1B00(&qword_1EDA67C58, type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC31D910, &qword_1C90BBCF8);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC31D910, &qword_1C90BBCF8);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC31D910, &qword_1C90BBCF8);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC31D910, &qword_1C90BBCF8);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC312A78, &qword_1C9068E58);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1C8FBE88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A78, &qword_1C9068E58);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoRuntimeRequirementKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D918, &qword_1C90BBD00);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v12, &qword_1EC312A78, &qword_1C9068E58);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8D16D78(v24, &qword_1EC31D918, &qword_1C90BBD00);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
    }
  }

  sub_1C8CD1B00(&qword_1EDA67C68, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC31D918, &qword_1C90BBD00);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC31D918, &qword_1C90BBD00);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC31D918, &qword_1C90BBD00);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC31D918, &qword_1C90BBD00);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC312A78, &qword_1C9068E58);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1C8FBED84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A78, &qword_1C9068E58);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoRuntimeRequirementKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D920, &qword_1C90BBD08);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v12, &qword_1EC312A78, &qword_1C9068E58);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C8D16D78(v24, &qword_1EC31D920, &qword_1C90BBD08);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
    }
  }

  sub_1C8CD1B00(&qword_1EDA67C88, type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC31D920, &qword_1C90BBD08);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC31D920, &qword_1C90BBD08);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC31D920, &qword_1C90BBD08);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC31D920, &qword_1C90BBD08);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC312A78, &qword_1C9068E58);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1C8FBF27C(uint64_t a1, char *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A78, &qword_1C9068E58);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  v13 = 7;
  sub_1C8DC08C0();
  result = sub_1C906392C();
  if (!v2)
  {
    v9 = v13;
    if (v13 != 7)
    {
      sub_1C8D63FCC();
      v10 = type metadata accessor for ToolKitProtoRuntimeRequirementKind(0);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v10);
      sub_1C8D16D78(v7, &qword_1EC312A78, &qword_1C9068E58);
      if (EnumTagSinglePayload != 1)
      {
        sub_1C90638EC();
      }

      sub_1C8D16D78(a2, &qword_1EC312A78, &qword_1C9068E58);
      *a2 = v9;
      swift_storeEnumTagMultiPayload();
      return __swift_storeEnumTagSinglePayload(a2, 0, 1, v10);
    }
  }

  return result;
}

void ToolKitProtoRuntimeRequirement.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_300_0();
  OUTLINED_FUNCTION_43_15();
  v1 = OUTLINED_FUNCTION_245();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_9(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_45_21();
  v7 = type metadata accessor for ToolKitProtoRuntimeRequirementKind(0);
  OUTLINED_FUNCTION_20_31(v7);
  if (!v8)
  {
    OUTLINED_FUNCTION_124();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v17 = OUTLINED_FUNCTION_3_4();
        sub_1C8FBF72C(v17, v18, v19, v20);
        goto LABEL_8;
      case 2u:
        v13 = OUTLINED_FUNCTION_3_4();
        sub_1C8FBF934(v13, v14, v15, v16);
        goto LABEL_8;
      case 3u:
        OUTLINED_FUNCTION_3_4();
        sub_1C8FBFB3C();
        if (!v0)
        {
          break;
        }

        goto LABEL_10;
      default:
        v9 = OUTLINED_FUNCTION_3_4();
        sub_1C8FBF528(v9, v10, v11, v12);
LABEL_8:
        v21 = OUTLINED_FUNCTION_273();
        sub_1C8CD20B4(v21, v22);
        if (!v0)
        {
          break;
        }

        goto LABEL_10;
    }
  }

  v23 = type metadata accessor for ToolKitProtoRuntimeRequirement(0);
  OUTLINED_FUNCTION_52_17(v23);
LABEL_10:
  OUTLINED_FUNCTION_190_8();
  OUTLINED_FUNCTION_301_1();
}

uint64_t sub_1C8FBF528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A78, &qword_1C9068E58);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v12 = type metadata accessor for ToolKitProtoRuntimeRequirementKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &qword_1EC312A78, &qword_1C9068E58);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EDA67C58, type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation);
    }

    result = sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FBF72C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A78, &qword_1C9068E58);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v12 = type metadata accessor for ToolKitProtoRuntimeRequirementKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &qword_1EC312A78, &qword_1C9068E58);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EDA67C68, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability);
    }

    result = sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FBF934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A78, &qword_1C9068E58);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v12 = type metadata accessor for ToolKitProtoRuntimeRequirementKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &qword_1EC312A78, &qword_1C9068E58);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EDA67C88, type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag);
    }

    result = sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FBFB3C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A78, &qword_1C9068E58);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v6[-v2];
  sub_1C8D63FCC();
  v4 = type metadata accessor for ToolKitProtoRuntimeRequirementKind(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    result = sub_1C8D16D78(v3, &qword_1EC312A78, &qword_1C9068E58);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v6[15] = *v3;
      sub_1C8DC08C0();
      return sub_1C9063B1C();
    }

    result = sub_1C8CD20B4(v3, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
  }

  __break(1u);
  return result;
}

void static ToolKitProtoRuntimeRequirement.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v1 = OUTLINED_FUNCTION_24_2();
  v2 = type metadata accessor for ToolKitProtoRuntimeRequirementKind(v1);
  v3 = OUTLINED_FUNCTION_39_19(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_18_23();
  v6 = OUTLINED_FUNCTION_124();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_9(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_73();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A80, &qword_1C9068E60);
  OUTLINED_FUNCTION_9(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_27_20(v16);
  OUTLINED_FUNCTION_108_5();
  OUTLINED_FUNCTION_18_32();
  if (v17)
  {
    OUTLINED_FUNCTION_16_31();
    if (v17)
    {
      sub_1C8D16D78(v0, &qword_1EC312A78, &qword_1C9068E58);
LABEL_12:
      v25 = type metadata accessor for ToolKitProtoRuntimeRequirement(0);
      OUTLINED_FUNCTION_63_10(v25);
      OUTLINED_FUNCTION_1_76();
      sub_1C8CD1B00(v26, v27);
      v18 = OUTLINED_FUNCTION_12_28();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_287();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_16_31();
  if (v17)
  {
    OUTLINED_FUNCTION_292_2();
LABEL_9:
    sub_1C8D16D78(v0, &qword_1EC312A80, &qword_1C9068E60);
    goto LABEL_10;
  }

  sub_1C900BE74();
  OUTLINED_FUNCTION_398();
  static ToolKitProtoRuntimeRequirementKind.== infix(_:_:)();
  v20 = v19;
  v21 = OUTLINED_FUNCTION_181_0();
  sub_1C8CD20B4(v21, v22);
  v23 = OUTLINED_FUNCTION_125();
  sub_1C8CD20B4(v23, v24);
  sub_1C8D16D78(v0, &qword_1EC312A78, &qword_1C9068E58);
  if (v20)
  {
    goto LABEL_12;
  }

LABEL_10:
  v18 = 0;
LABEL_13:
  OUTLINED_FUNCTION_50_0(v18);
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8FBFF30(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D508, type metadata accessor for ToolKitProtoRuntimeRequirement);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FBFFB0(uint64_t a1)
{
  v2 = sub_1C8CD1B00(qword_1EDA6C268, type metadata accessor for ToolKitProtoRuntimeRequirement);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FC0020()
{
  sub_1C8CD1B00(qword_1EDA6C268, type metadata accessor for ToolKitProtoRuntimeRequirement);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FC00A0()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B5B8);
  __swift_project_value_buffer(v0, qword_1EC31B5B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C90ABEF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "DeviceStateUnspecified";
  *(v6 + 8) = 22;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "DeviceStateUnlocked";
  *(v10 + 8) = 19;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "DeviceStateWritingToolsAvailable";
  *(v12 + 1) = 32;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "DeviceStateUseModelAvailable";
  *(v14 + 1) = 28;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "DeviceStatePhotosMemoriesAvailable";
  *(v16 + 1) = 34;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "DeviceStateImagePlaygroundAvailable";
  *(v18 + 1) = 35;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "DeviceStateVisualIntelligenceCameraAvailable";
  *(v20 + 1) = 44;
  v20[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8FC03E4()
{
  result = MEMORY[0x1CCA81A90](0xD000000000000017, 0x80000001C90CE940);
  qword_1EC31B5D0 = 0xD00000000000001ALL;
  *algn_1EC31B5D8 = 0x80000001C90CD4F0;
  return result;
}

uint64_t sub_1C8FC0478()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B5E0);
  __swift_project_value_buffer(v0, qword_1EC31B5E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C909C3B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "platform";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "introducingVersion";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "deprecatingVersion";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "obsoletingVersion";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoRuntimeRequirement.AvailabilityAnnotation.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    result = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_5_39();
        sub_1C8FC0790();
        break;
      case 2:
        OUTLINED_FUNCTION_5_39();
        sub_1C8FC07F8();
        break;
      case 3:
        OUTLINED_FUNCTION_5_39();
        sub_1C8FC08AC();
        break;
      case 4:
        OUTLINED_FUNCTION_5_39();
        sub_1C8FC0960();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8FC07F8()
{
  v0 = *(type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(0) + 20);
  type metadata accessor for ToolKitProtoRuntimePlatformVersion(0);
  sub_1C8CD1B00(&qword_1EDA671F8, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
  return sub_1C9063A4C();
}

uint64_t sub_1C8FC08AC()
{
  v0 = *(type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(0) + 24);
  type metadata accessor for ToolKitProtoRuntimePlatformVersion(0);
  sub_1C8CD1B00(&qword_1EDA671F8, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
  return sub_1C9063A4C();
}

uint64_t sub_1C8FC0960()
{
  v0 = *(type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(0) + 28);
  type metadata accessor for ToolKitProtoRuntimePlatformVersion(0);
  sub_1C8CD1B00(&qword_1EDA671F8, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
  return sub_1C9063A4C();
}

void ToolKitProtoRuntimeRequirement.AvailabilityAnnotation.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_363_1();
  OUTLINED_FUNCTION_4_36();
  if (!*v0 || (v15 = *v0, sub_1C8DC0F50(), OUTLINED_FUNCTION_29_23(), sub_1C9063B1C(), !v1))
  {
    v2 = OUTLINED_FUNCTION_2_55();
    sub_1C8FC0AC0(v2, v3, v4, v5);
    if (!v1)
    {
      v6 = OUTLINED_FUNCTION_2_55();
      sub_1C8FC0C94(v6, v7, v8, v9);
      v10 = OUTLINED_FUNCTION_2_55();
      sub_1C8FC0E68(v10, v11, v12, v13);
      v14 = *(type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(0) + 32);
      OUTLINED_FUNCTION_13_23();
    }
  }

  OUTLINED_FUNCTION_364_1();
}

uint64_t sub_1C8FC0AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313D00, &qword_1C9070750);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoRuntimePlatformVersion(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(0) + 20);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_1C8D16D78(v7, &qword_1EC313D00, &qword_1C9070750);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(&qword_1EDA671F8, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
}

uint64_t sub_1C8FC0C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313D00, &qword_1C9070750);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoRuntimePlatformVersion(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(0) + 24);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_1C8D16D78(v7, &qword_1EC313D00, &qword_1C9070750);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(&qword_1EDA671F8, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
}

uint64_t sub_1C8FC0E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313D00, &qword_1C9070750);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoRuntimePlatformVersion(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(0) + 28);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_1C8D16D78(v7, &qword_1EC313D00, &qword_1C9070750);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(&qword_1EDA671F8, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
}

uint64_t sub_1C8FC10C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D500, type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FC1144(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EDA67C58, type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FC11B4()
{
  sub_1C8CD1B00(&qword_1EDA67C58, type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FC1234()
{
  result = MEMORY[0x1CCA81A90](0xD000000000000011, 0x80000001C90CE920);
  qword_1EC31B5F8 = 0xD00000000000001ALL;
  unk_1EC31B600 = 0x80000001C90CD4F0;
  return result;
}

uint64_t sub_1C8FC12C8()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B608);
  __swift_project_value_buffer(v0, qword_1EC31B608);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "mobileGestalt";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "capability";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoRuntimeRequirement.DeviceCapability.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    result = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v7 = OUTLINED_FUNCTION_5_39();
      sub_1C8FC1A24(v7, v8);
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_8_32();
      sub_1C8FC152C(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_1C8FC152C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313CD8, &qword_1C9074E60);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoRuntimeRequirement.ToolKitProtoDeviceCapabilityKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D908, &qword_1C90BBCF0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v12, &qword_1EC313CD8, &qword_1C9074E60);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoRuntimeRequirement.ToolKitProtoDeviceCapabilityKind);
    }

    else
    {
      sub_1C8D16D78(v24, &qword_1EC31D908, &qword_1C90BBCF0);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }
  }

  sub_1C8CD1B00(&qword_1EDA67C78, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC31D908, &qword_1C90BBCF0);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC31D908, &qword_1C90BBCF0);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC31D908, &qword_1C90BBCF0);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC31D908, &qword_1C90BBCF0);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC313CD8, &qword_1C9074E60);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1C8FC1A24(uint64_t a1, char *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313CD8, &qword_1C9074E60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  v13 = 8;
  sub_1C8DC086C();
  result = sub_1C906392C();
  if (!v2)
  {
    v9 = v13;
    if (v13 != 8)
    {
      sub_1C8D63FCC();
      v10 = type metadata accessor for ToolKitProtoRuntimeRequirement.ToolKitProtoDeviceCapabilityKind(0);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v10);
      sub_1C8D16D78(v7, &qword_1EC313CD8, &qword_1C9074E60);
      if (EnumTagSinglePayload != 1)
      {
        sub_1C90638EC();
      }

      sub_1C8D16D78(a2, &qword_1EC313CD8, &qword_1C9074E60);
      *a2 = v9;
      swift_storeEnumTagMultiPayload();
      return __swift_storeEnumTagSinglePayload(a2, 0, 1, v10);
    }
  }

  return result;
}

void ToolKitProtoRuntimeRequirement.DeviceCapability.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_300_0();
  OUTLINED_FUNCTION_43_15();
  v1 = OUTLINED_FUNCTION_245();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_9(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_45_21();
  v7 = type metadata accessor for ToolKitProtoRuntimeRequirement.ToolKitProtoDeviceCapabilityKind(0);
  OUTLINED_FUNCTION_20_31(v7);
  if (!v8)
  {
    OUTLINED_FUNCTION_124();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_3_4();
      sub_1C8FC1EA8();
      if (v0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v11 = OUTLINED_FUNCTION_3_4();
      sub_1C8FC1CA0(v11, v12, v13, v14);
      v15 = OUTLINED_FUNCTION_273();
      sub_1C8CD20B4(v15, v16);
      if (v0)
      {
        goto LABEL_4;
      }
    }
  }

  v9 = type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability(0);
  OUTLINED_FUNCTION_52_17(v9);
LABEL_4:
  OUTLINED_FUNCTION_190_8();
  OUTLINED_FUNCTION_301_1();
}

uint64_t sub_1C8FC1CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313CD8, &qword_1C9074E60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v12 = type metadata accessor for ToolKitProtoRuntimeRequirement.ToolKitProtoDeviceCapabilityKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &qword_1EC313CD8, &qword_1C9074E60);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EDA67C78, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt);
    }

    result = sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoRuntimeRequirement.ToolKitProtoDeviceCapabilityKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FC1EA8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313CD8, &qword_1C9074E60);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v6[-v2];
  sub_1C8D63FCC();
  v4 = type metadata accessor for ToolKitProtoRuntimeRequirement.ToolKitProtoDeviceCapabilityKind(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    result = sub_1C8D16D78(v3, &qword_1EC313CD8, &qword_1C9074E60);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v6[15] = *v3;
      sub_1C8DC086C();
      return sub_1C9063B1C();
    }

    result = sub_1C8CD20B4(v3, type metadata accessor for ToolKitProtoRuntimeRequirement.ToolKitProtoDeviceCapabilityKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FC208C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D4F8, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FC210C(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EDA67C68, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FC217C()
{
  sub_1C8CD1B00(&qword_1EDA67C68, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FC21FC()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B620);
  __swift_project_value_buffer(v0, qword_1EC31B620);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C90ABEA0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "DeviceCapabilityTypePersonalHotspot";
  *(v6 + 8) = 35;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "DeviceCapabilityTypePosters";
  *(v10 + 8) = 27;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "DeviceCapabilityTypeCellularTelephony";
  *(v12 + 1) = 37;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "DeviceCapabilityTypeCellularData";
  *(v14 + 1) = 32;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "DeviceCapabilityTypeStageManager";
  *(v16 + 1) = 32;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "DeviceCapabilityTypeRemovingBackgrounds";
  *(v18 + 1) = 39;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "DeviceCapabilityTypeAlwaysOnDisplay";
  *(v20 + 1) = 35;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "DeviceCapabilityTypeVibration";
  *(v22 + 1) = 29;
  v22[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8FC2584()
{
  if (qword_1EC311C88 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31B5F8;
  v2 = unk_1EC31B600;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0x47656C69626F4D2ELL, 0xEE00746C61747365);

  qword_1EC31B638 = v1;
  unk_1EC31B640 = v2;
  return result;
}

uint64_t sub_1C8FC2654()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B648);
  __swift_project_value_buffer(v0, qword_1EC31B648);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "key";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    result = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_22_0();
      sub_1C906391C();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_20_22();
      sub_1C9063A0C();
    }
  }

  return result;
}

uint64_t ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_6();
  if (!v2 || (OUTLINED_FUNCTION_23_29(), result = sub_1C9063B8C(), !v0))
  {
    if (*(v1 + 16) != 1 || (OUTLINED_FUNCTION_17_25(), result = sub_1C9063B0C(), !v0))
    {
      v4 = *(type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt(0) + 24);
      return OUTLINED_FUNCTION_13_23();
    }
  }

  return result;
}

uint64_t sub_1C8FC29C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D4F0, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FC2A44(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EDA67C78, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FC2AB4()
{
  sub_1C8CD1B00(&qword_1EDA67C78, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FC2B34()
{
  result = MEMORY[0x1CCA81A90](0x657275746165462ELL, 0xEC00000067616C46);
  qword_1EC31B660 = 0xD00000000000001ALL;
  *algn_1EC31B668 = 0x80000001C90CD4F0;
  return result;
}

uint64_t sub_1C8FC2BC8()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B670);
  __swift_project_value_buffer(v0, qword_1EC31B670);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C9084EE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "domain";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "feature";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "value";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoRuntimeRequirement.FeatureFlag.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    result = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      OUTLINED_FUNCTION_22_0();
      sub_1C906391C();
    }

    else if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_22_0();
      sub_1C9063A0C();
    }
  }

  return result;
}

uint64_t ToolKitProtoRuntimeRequirement.FeatureFlag.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_6();
  if (!v2 || (OUTLINED_FUNCTION_23_29(), result = sub_1C9063B8C(), !v0))
  {
    v4 = *(v1 + 16);
    v5 = *(v1 + 24);
    OUTLINED_FUNCTION_36_21();
    if (!v6 || (OUTLINED_FUNCTION_10_33(), result = sub_1C9063B8C(), !v0))
    {
      if (*(v1 + 32) != 1 || (OUTLINED_FUNCTION_17_25(), result = sub_1C9063B0C(), !v0))
      {
        v7 = type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag(0);
        return OUTLINED_FUNCTION_53_15(v7);
      }
    }
  }

  return result;
}

uint64_t sub_1C8FC2FA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D4E8, type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FC3028(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EDA67C88, type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FC3098()
{
  sub_1C8CD1B00(&qword_1EDA67C88, type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag);

  return sub_1C9063ABC();
}

void ToolKitProtoToolSummaryString.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    v1 = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 1)
    {
      OUTLINED_FUNCTION_17_34();
      sub_1C8F6BF94();
    }
  }
}

void ToolKitProtoToolSummaryString.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_340_2();
  OUTLINED_FUNCTION_4_36();
  OUTLINED_FUNCTION_264_3();
  if (!v1 || (type metadata accessor for ToolKitProtoToolSummaryString.Component(0), sub_1C8CD1B00(&qword_1EC31A000, type metadata accessor for ToolKitProtoToolSummaryString.Component), OUTLINED_FUNCTION_121_5(), OUTLINED_FUNCTION_29_23(), sub_1C9063BBC(), !v0))
  {
    v2 = *(type metadata accessor for ToolKitProtoToolSummaryString(0) + 20);
    OUTLINED_FUNCTION_13_23();
  }

  OUTLINED_FUNCTION_341_2();
}

uint64_t sub_1C8FC3388(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D4E0, type metadata accessor for ToolKitProtoToolSummaryString);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FC3408(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CEF8, type metadata accessor for ToolKitProtoToolSummaryString);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FC3478()
{
  sub_1C8CD1B00(&qword_1EC31CEF8, type metadata accessor for ToolKitProtoToolSummaryString);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FC34F8()
{
  result = MEMORY[0x1CCA81A90](0x656E6F706D6F432ELL, 0xEA0000000000746ELL);
  qword_1EC31B6A0 = 0xD000000000000019;
  *algn_1EC31B6A8 = 0x80000001C90CD510;
  return result;
}

uint64_t sub_1C8FC3588()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B6B0);
  __swift_project_value_buffer(v0, qword_1EC31B6B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "text";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "parameter";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoToolSummaryString.Component.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    result = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result == 2)
    {
      v3 = OUTLINED_FUNCTION_5_39();
      v7 = 1;
LABEL_8:
      sub_1C8FC37EC(v3, v4, v5, v6, v7);
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_5_39();
      v7 = 0;
      goto LABEL_8;
    }
  }
}

uint64_t sub_1C8FC37EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  result = OUTLINED_FUNCTION_308_1();
  if (v5)
  {
  }

  if (v13)
  {
    if (*(v6 + 16) == 255)
    {
      v9 = -1;
    }

    else
    {
      sub_1C90638EC();
      v9 = *(v6 + 16);
    }

    v10 = *v6;
    v11 = *(v6 + 8);
    *v6 = v12;
    *(v6 + 8) = v13;
    *(v6 + 16) = a5;
    return sub_1C8D06DF8(v10, v11, v9);
  }

  return result;
}

uint64_t ToolKitProtoToolSummaryString.Component.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_43_15();
  if (*(v0 + 16) == 255 || ((v2 = OUTLINED_FUNCTION_3_4(), (v3 & 1) == 0) ? (result = sub_1C8FC3908(v2)) : (result = sub_1C8FC3954(v2)), !v1))
  {
    v5 = type metadata accessor for ToolKitProtoToolSummaryString.Component(0);
    return OUTLINED_FUNCTION_52_17(v5);
  }

  return result;
}

uint64_t sub_1C8FC3908(uint64_t result)
{
  v1 = *(result + 16);
  if (v1 == 255 || (v1 & 1) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *result;
    v2 = *(result + 8);
    return sub_1C9063B8C();
  }

  return result;
}

uint64_t sub_1C8FC3954(uint64_t result)
{
  v1 = *(result + 16);
  if (v1 == 255 || (v1 & 1) == 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *result;
    v2 = *(result + 8);
    return sub_1C9063B8C();
  }

  return result;
}

uint64_t static ToolKitProtoToolSummaryString.Component.== infix(_:_:)()
{
  OUTLINED_FUNCTION_223();
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v5 = *v3;
  v4 = *(v3 + 8);
  v6 = *(v3 + 16);
  if (v2 != 255)
  {
    v44 = *v0;
    v45 = v1;
    v46 = v2;
    if (v6 != 255)
    {
      v41 = v5;
      v42 = v4;
      v43 = v6 & 1;
      v7 = OUTLINED_FUNCTION_100();
      sub_1C8D06DE0(v7, v8, v2);
      v9 = OUTLINED_FUNCTION_203();
      sub_1C8D06DE0(v9, v10, v6);
      v11 = OUTLINED_FUNCTION_100();
      sub_1C8D06DE0(v11, v12, v2);
      v13 = static ToolKitProtoToolSummaryString.ToolKitProtoComponentKind.== infix(_:_:)(&v44, &v41);
      j_j__OUTLINED_FUNCTION_265(v41, v42, v43);
      j_j__OUTLINED_FUNCTION_265(v44, v45, v46);
      v14 = OUTLINED_FUNCTION_100();
      sub_1C8D06DF8(v14, v15, v2);
      if (v13)
      {
        goto LABEL_11;
      }

      return 0;
    }

    v20 = OUTLINED_FUNCTION_100();
    sub_1C8D06DE0(v20, v21, v2);
    v22 = OUTLINED_FUNCTION_203();
    sub_1C8D06DE0(v22, v23, 255);
    v24 = OUTLINED_FUNCTION_100();
    sub_1C8D06DE0(v24, v25, v2);
    v26 = OUTLINED_FUNCTION_100();
    j_j__OUTLINED_FUNCTION_265(v26, v27, v28);
LABEL_8:
    v29 = OUTLINED_FUNCTION_100();
    sub_1C8D06DF8(v29, v30, v2);
    v31 = OUTLINED_FUNCTION_203();
    sub_1C8D06DF8(v31, v32, v6);
    return 0;
  }

  v16 = OUTLINED_FUNCTION_100();
  sub_1C8D06DE0(v16, v17, 255);
  if (v6 != 255)
  {
    v18 = OUTLINED_FUNCTION_203();
    sub_1C8D06DE0(v18, v19, v6);
    goto LABEL_8;
  }

  v34 = OUTLINED_FUNCTION_203();
  sub_1C8D06DE0(v34, v35, 255);
  v36 = OUTLINED_FUNCTION_100();
  sub_1C8D06DF8(v36, v37, 255);
LABEL_11:
  v38 = type metadata accessor for ToolKitProtoToolSummaryString.Component(0);
  OUTLINED_FUNCTION_63_10(v38);
  OUTLINED_FUNCTION_1_76();
  sub_1C8CD1B00(v39, v40);
  return OUTLINED_FUNCTION_12_28() & 1;
}

uint64_t sub_1C8FC3BC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D4D8, type metadata accessor for ToolKitProtoToolSummaryString.Component);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FC3C44(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31A000, type metadata accessor for ToolKitProtoToolSummaryString.Component);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FC3CB4()
{
  sub_1C8CD1B00(&qword_1EC31A000, type metadata accessor for ToolKitProtoToolSummaryString.Component);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FC3D4C()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B6C8);
  __swift_project_value_buffer(v0, qword_1EC31B6C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C9084EE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "visibleParameterKeys";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "invisibleParameterKeys";
  *(v10 + 1) = 22;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "valueConstraints";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoToolInvocationSignature.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    result = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      OUTLINED_FUNCTION_5_39();
      sub_1C8FC4004();
    }

    else if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_22_0();
      sub_1C90639CC();
    }
  }

  return result;
}

uint64_t sub_1C8FC4004()
{
  sub_1C90637BC();
  type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations(0);
  sub_1C8CD1B00(&qword_1EC31C5A8, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations);
  sub_1C8CD1B00(&qword_1EC31C5B0, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations);
  return sub_1C90638CC();
}

void ToolKitProtoToolInvocationSignature.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_4_36();
  if (!*(*v0 + 16) || (OUTLINED_FUNCTION_17_25(), sub_1C9063B6C(), !v1))
  {
    if (!*(*(v2 + 8) + 16) || (OUTLINED_FUNCTION_17_25(), sub_1C9063B6C(), !v1))
    {
      OUTLINED_FUNCTION_346_2();
      if (!v3 || (sub_1C90637BC(), type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations(0), sub_1C8CD1B00(&qword_1EC31C5A8, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations), sub_1C8CD1B00(&qword_1EC31C5B0, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations), OUTLINED_FUNCTION_146_6(), sub_1C9063ADC(), !v1))
      {
        v4 = type metadata accessor for ToolKitProtoToolInvocationSignature(0);
        OUTLINED_FUNCTION_53_15(v4);
      }
    }
  }

  OUTLINED_FUNCTION_18_4();
}

uint64_t static ToolKitProtoToolInvocationSignature.== infix(_:_:)(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_96_6(a1);
  sub_1C8CEB10C(v3, *v4);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  sub_1C8CEB10C(*(v2 + 8), *(v1 + 8));
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  sub_1C8F560FC(*(v2 + 16), *(v1 + 16));
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = type metadata accessor for ToolKitProtoToolInvocationSignature(0);
  OUTLINED_FUNCTION_327_1(v8);
  OUTLINED_FUNCTION_1_76();
  sub_1C8CD1B00(v9, v10);
  return OUTLINED_FUNCTION_12_28() & 1;
}

uint64_t sub_1C8FC4374(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D4D0, type metadata accessor for ToolKitProtoToolInvocationSignature);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FC43F4(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CF20, type metadata accessor for ToolKitProtoToolInvocationSignature);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FC4464()
{
  sub_1C8CD1B00(&qword_1EC31CF20, type metadata accessor for ToolKitProtoToolInvocationSignature);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FC44E4()
{
  result = MEMORY[0x1CCA81A90](0xD000000000000010, 0x80000001C90CE700);
  qword_1EC31B6E0 = 0xD00000000000001FLL;
  *algn_1EC31B6E8 = 0x80000001C90CD530;
  return result;
}

void ToolKitProtoToolInvocationSignature.ListOfRelations.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    v1 = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 1)
    {
      OUTLINED_FUNCTION_17_34();
      sub_1C8F6BF94();
    }
  }
}

void ToolKitProtoToolInvocationSignature.ListOfRelations.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_340_2();
  OUTLINED_FUNCTION_4_36();
  OUTLINED_FUNCTION_264_3();
  if (!v1 || (type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation(0), sub_1C8CD1B00(&qword_1EDA63B68, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation), OUTLINED_FUNCTION_121_5(), OUTLINED_FUNCTION_29_23(), sub_1C9063BBC(), !v0))
  {
    v2 = *(type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations(0) + 20);
    OUTLINED_FUNCTION_13_23();
  }

  OUTLINED_FUNCTION_341_2();
}

uint64_t sub_1C8FC47C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D4C8, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FC4840(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31C5A8, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FC48B0()
{
  sub_1C8CD1B00(&qword_1EC31C5A8, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FC4948()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B708);
  __swift_project_value_buffer(v0, qword_1EC31B708);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C9084EE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "phrases";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "expectedResult";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "negativePhrases";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoSampleInvocationDefinition.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    result = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        goto LABEL_9;
      case 2:
        OUTLINED_FUNCTION_22_0();
        sub_1C90639FC();
        break;
      case 1:
LABEL_9:
        OUTLINED_FUNCTION_22_0();
        sub_1C90639CC();
        break;
    }
  }
}

uint64_t ToolKitProtoSampleInvocationDefinition.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_4_36();
  if (!*(*v0 + 16) || (OUTLINED_FUNCTION_17_25(), result = sub_1C9063B6C(), !v1))
  {
    v4 = OUTLINED_FUNCTION_2_55();
    result = sub_1C8CE2E28(v4);
    if (!v1)
    {
      if (*(*(v2 + 8) + 16))
      {
        OUTLINED_FUNCTION_17_25();
        sub_1C9063B6C();
      }

      v5 = type metadata accessor for ToolKitProtoSampleInvocationDefinition(0);
      return OUTLINED_FUNCTION_53_15(v5);
    }
  }

  return result;
}

uint64_t static ToolKitProtoSampleInvocationDefinition.== infix(_:_:)(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_96_6(a1);
  sub_1C8CEB10C(v3, *v4);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_371_0();
  if (v7)
  {
    if (!v6)
    {
      return 0;
    }

    OUTLINED_FUNCTION_272_1();
    v10 = v10 && v8 == v9;
    if (!v10 && (sub_1C9064C2C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  sub_1C8CEB10C(*(v2 + 8), *(v1 + 8));
  if (v11)
  {
    v12 = type metadata accessor for ToolKitProtoSampleInvocationDefinition(0);
    OUTLINED_FUNCTION_327_1(v12);
    OUTLINED_FUNCTION_1_76();
    sub_1C8CD1B00(v13, v14);
    return OUTLINED_FUNCTION_12_28() & 1;
  }

  return 0;
}

uint64_t sub_1C8FC4DF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D4C0, type metadata accessor for ToolKitProtoSampleInvocationDefinition);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FC4E70(uint64_t a1)
{
  v2 = sub_1C8CD1B00(qword_1EDA61050, type metadata accessor for ToolKitProtoSampleInvocationDefinition);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FC4EE0()
{
  sub_1C8CD1B00(qword_1EDA61050, type metadata accessor for ToolKitProtoSampleInvocationDefinition);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FC4F78()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B720);
  __swift_project_value_buffer(v0, qword_1EC31B720);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C9084EE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "major";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "minor";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "patch";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoAssistantSchemaVersion.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    result = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_22_0();
      sub_1C9063A2C();
    }
  }

  return result;
}

uint64_t ToolKitProtoAssistantSchemaVersion.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_4_36();
  if (!*v0 || (OUTLINED_FUNCTION_17_25(), result = sub_1C9063BAC(), !v1))
  {
    if (!*(v2 + 8) || (OUTLINED_FUNCTION_17_25(), result = sub_1C9063BAC(), !v1))
    {
      if (!*(v2 + 16) || (OUTLINED_FUNCTION_17_25(), result = sub_1C9063BAC(), !v1))
      {
        v4 = type metadata accessor for ToolKitProtoAssistantSchemaVersion(0);
        return OUTLINED_FUNCTION_53_15(v4);
      }
    }
  }

  return result;
}

uint64_t static ToolKitProtoAssistantSchemaVersion.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_330_2(a1, a2);
  if (!v2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_223();
  if (*(v3 + 8) != *(v4 + 8))
  {
    return 0;
  }

  OUTLINED_FUNCTION_337_2();
  if (!v2)
  {
    return 0;
  }

  v5 = type metadata accessor for ToolKitProtoAssistantSchemaVersion(0);
  OUTLINED_FUNCTION_327_1(v5);
  OUTLINED_FUNCTION_1_76();
  sub_1C8CD1B00(v6, v7);
  return OUTLINED_FUNCTION_12_28() & 1;
}

uint64_t sub_1C8FC53EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D4B8, type metadata accessor for ToolKitProtoAssistantSchemaVersion);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FC546C(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EDA611C8, type metadata accessor for ToolKitProtoAssistantSchemaVersion);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FC54DC()
{
  sub_1C8CD1B00(&qword_1EDA611C8, type metadata accessor for ToolKitProtoAssistantSchemaVersion);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FC5574()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B738);
  __swift_project_value_buffer(v0, qword_1EC31B738);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C9084EE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "kind";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "version";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "domain";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8FC57F4()
{
  OUTLINED_FUNCTION_89_1();
  while (1)
  {
    OUTLINED_FUNCTION_203();
    result = sub_1C90638DC();
    if (v1 || (v4 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_278_3();
        sub_1C9063A0C();
        break;
      case 2:
        OUTLINED_FUNCTION_276();
        OUTLINED_FUNCTION_305_1();
        v0();
        break;
      case 1:
        v5 = OUTLINED_FUNCTION_177_5();
        v2(v5);
        break;
    }
  }

  return result;
}

uint64_t sub_1C8FC588C()
{
  v0 = *(type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0) + 24);
  type metadata accessor for ToolKitProtoAssistantSchemaVersion(0);
  sub_1C8CD1B00(&qword_1EDA611C8, type metadata accessor for ToolKitProtoAssistantSchemaVersion);
  return sub_1C9063A4C();
}

uint64_t ToolKitProtoAssistantSchemaIdentifier.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_6();
  if (!v2 || (OUTLINED_FUNCTION_23_29(), result = sub_1C9063B8C(), !v0))
  {
    v4 = OUTLINED_FUNCTION_2_55();
    result = sub_1C8FC59C8(v4, v5, v6, v7);
    if (!v0)
    {
      v8 = *(v1 + 16);
      v9 = *(v1 + 24);
      OUTLINED_FUNCTION_36_21();
      if (v10)
      {
        OUTLINED_FUNCTION_10_33();
        sub_1C9063B8C();
      }

      v11 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
      return OUTLINED_FUNCTION_53_15(v11);
    }
  }

  return result;
}

uint64_t sub_1C8FC59C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F28, &qword_1C9072058);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoAssistantSchemaVersion(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0) + 24);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_1C8D16D78(v7, &qword_1EC313F28, &qword_1C9072058);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(&qword_1EDA611C8, type metadata accessor for ToolKitProtoAssistantSchemaVersion);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoAssistantSchemaVersion);
}

void static ToolKitProtoAssistantSchemaIdentifier.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v5 = OUTLINED_FUNCTION_55_3();
  v6 = type metadata accessor for ToolKitProtoAssistantSchemaVersion(v5);
  v7 = OUTLINED_FUNCTION_13_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15();
  v12 = (v11 - v10);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F28, &qword_1C9072058);
  OUTLINED_FUNCTION_9(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_73();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C5D0, &qword_1C90AC0A8);
  OUTLINED_FUNCTION_44_22(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_72();
  v21 = *v1 == *v0 && v1[1] == v0[1];
  if (!v21 && (sub_1C9064C2C() & 1) == 0)
  {
    goto LABEL_28;
  }

  v22 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  OUTLINED_FUNCTION_276_2(v22);
  OUTLINED_FUNCTION_44_18();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_122_8();
  OUTLINED_FUNCTION_191(v2);
  if (v21)
  {
    OUTLINED_FUNCTION_191(v2 + v4);
    if (v21)
    {
      sub_1C8D16D78(v2, &qword_1EC313F28, &qword_1C9072058);
      goto LABEL_11;
    }

    goto LABEL_20;
  }

  OUTLINED_FUNCTION_287();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_191(v2 + v4);
  if (v27)
  {
    OUTLINED_FUNCTION_292_2();
LABEL_20:
    v28 = &qword_1EC31C5D0;
    v29 = &qword_1C90AC0A8;
LABEL_27:
    sub_1C8D16D78(v2, v28, v29);
LABEL_28:
    v26 = 0;
    goto LABEL_29;
  }

  sub_1C900BE74();
  if (*v3 != *v12 || v3[1] != v12[1] || v3[2] != v12[2])
  {
    sub_1C8CD20B4(v12, type metadata accessor for ToolKitProtoAssistantSchemaVersion);
    OUTLINED_FUNCTION_335_1();
    v28 = &qword_1EC313F28;
    v29 = &qword_1C9072058;
    goto LABEL_27;
  }

  v30 = *(v6 + 28);
  sub_1C90637EC();
  OUTLINED_FUNCTION_1_76();
  sub_1C8CD1B00(v31, v32);
  v33 = sub_1C9063EAC();
  sub_1C8CD20B4(v12, type metadata accessor for ToolKitProtoAssistantSchemaVersion);
  sub_1C8CD20B4(v3, type metadata accessor for ToolKitProtoAssistantSchemaVersion);
  sub_1C8D16D78(v2, &qword_1EC313F28, &qword_1C9072058);
  if ((v33 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_11:
  v23 = v1[2] == v0[2] && v1[3] == v0[3];
  if (!v23 && (sub_1C9064C2C() & 1) == 0)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_303_2();
  OUTLINED_FUNCTION_1_76();
  sub_1C8CD1B00(v24, v25);
  v26 = OUTLINED_FUNCTION_265_2();
LABEL_29:
  OUTLINED_FUNCTION_50_0(v26);
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8FC5F70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D4B0, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FC5FF0(uint64_t a1)
{
  v2 = sub_1C8CD1B00(qword_1EDA61090, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FC6060()
{
  sub_1C8CD1B00(qword_1EDA61090, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FC60F8()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B750);
  __swift_project_value_buffer(v0, qword_1EC31B750);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C90ABEB0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "name";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "description";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "parameters";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "sampleInvocations";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "outputType";
  *(v18 + 1) = 10;
  v18[16] = 2;
  v9();
  return sub_1C9063BEC();
}

void ToolKitProtoAssistantToolSchemaDefinition.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    v1 = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_5_39();
        sub_1C8FC6568();
        break;
      case 2:
        OUTLINED_FUNCTION_20_22();
        sub_1C9063A0C();
        break;
      case 3:
        v3 = OUTLINED_FUNCTION_5_39();
        sub_1C8FC661C(v3, v4, v5, v6, v7, v8);
        break;
      case 4:
        OUTLINED_FUNCTION_17_34();
        sub_1C8FC6684();
        break;
      case 5:
        OUTLINED_FUNCTION_5_39();
        sub_1C8F6C148();
        break;
      case 6:
        OUTLINED_FUNCTION_5_39();
        sub_1C8FC66D0();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8FC6568()
{
  v0 = *(type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition(0) + 28);
  type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  sub_1C8CD1B00(qword_1EDA61090, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
  return sub_1C9063A4C();
}

uint64_t sub_1C8FC661C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  v7 = OUTLINED_FUNCTION_41_15();
  v9 = *(v8(v7) + 32);
  OUTLINED_FUNCTION_29_18();
  return a6();
}

void sub_1C8FC6684()
{
  OUTLINED_FUNCTION_196();
  v0 = OUTLINED_FUNCTION_31_22();
  v1(v0);
  OUTLINED_FUNCTION_178_4();
  OUTLINED_FUNCTION_84_6();
  sub_1C9063A3C();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8FC66D0()
{
  v0 = *(type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition(0) + 36);
  type metadata accessor for ToolKitProtoTypeInstance(0);
  sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance);
  return sub_1C9063A4C();
}

void ToolKitProtoAssistantToolSchemaDefinition.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_340_2();
  v2 = OUTLINED_FUNCTION_7_48();
  sub_1C8FC68C4(v2, v3, v4, v5);
  if (!v0)
  {
    v6 = *v1;
    v7 = v1[1];
    OUTLINED_FUNCTION_36_21();
    if (v8)
    {
      OUTLINED_FUNCTION_10_33();
      sub_1C9063B8C();
    }

    v9 = OUTLINED_FUNCTION_2_55();
    sub_1C8FC6A98(v9);
    OUTLINED_FUNCTION_346_2();
    if (v10)
    {
      type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter(0);
      OUTLINED_FUNCTION_74_5();
      sub_1C8CD1B00(v11, v12);
      OUTLINED_FUNCTION_227_0();
      OUTLINED_FUNCTION_29_23();
      sub_1C9063BBC();
    }

    OUTLINED_FUNCTION_367_0();
    if (v13)
    {
      type metadata accessor for ToolKitProtoSampleInvocationDefinition(0);
      OUTLINED_FUNCTION_47_18();
      sub_1C8CD1B00(v14, v15);
      OUTLINED_FUNCTION_227_0();
      OUTLINED_FUNCTION_29_23();
      sub_1C9063BBC();
    }

    v16 = OUTLINED_FUNCTION_2_55();
    sub_1C8FC6B10(v16, v17, v18, v19);
    v20 = *(type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition(0) + 40);
    OUTLINED_FUNCTION_13_23();
  }

  OUTLINED_FUNCTION_341_2();
}

uint64_t sub_1C8FC68C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F20, &unk_1C9074D20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition(0) + 28);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_1C8D16D78(v7, &qword_1EC313F20, &unk_1C9074D20);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(qword_1EDA61090, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
}

uint64_t sub_1C8FC6A98(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition(0);
  v3 = (a1 + *(result + 32));
  if (v3[1])
  {
    v4 = *v3;
    return sub_1C9063B8C();
  }

  return result;
}

uint64_t sub_1C8FC6B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition(0) + 36);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_1C8D16D78(v7, &qword_1EC312A58, &unk_1C9074CC0);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoTypeInstance);
}

void static ToolKitProtoAssistantToolSchemaDefinition.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_41_15();
  v77 = type metadata accessor for ToolKitProtoTypeInstance(v4);
  v5 = OUTLINED_FUNCTION_13_1(v77);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_320(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  OUTLINED_FUNCTION_9(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_86_7(v13, v73);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A60, &unk_1C9068E40);
  OUTLINED_FUNCTION_13_1(v76);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_120_7(v17, v74);
  v18 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  v19 = OUTLINED_FUNCTION_13_1(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_51_15();
  v22 = OUTLINED_FUNCTION_112();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(v22, v23);
  OUTLINED_FUNCTION_9(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_73();
  v28 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C108, &qword_1C90ABF68) - 8);
  v29 = *(*v28 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v30);
  v31 = OUTLINED_FUNCTION_109_0();
  v79 = type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition(v31);
  v32 = v79[7];
  v33 = v28[14];
  OUTLINED_FUNCTION_138_6();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_138_6();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_54_15(v1);
  if (v34)
  {
    OUTLINED_FUNCTION_54_15(v1 + v33);
    if (v34)
    {
      sub_1C8D16D78(v1, &qword_1EC313F20, &unk_1C9074D20);
      goto LABEL_14;
    }

LABEL_9:
    v35 = &qword_1EC31C108;
    v36 = &qword_1C90ABF68;
    v37 = v1;
LABEL_10:
    sub_1C8D16D78(v37, v35, v36);
    goto LABEL_11;
  }

  sub_1C8D63FCC();
  OUTLINED_FUNCTION_54_15(v1 + v33);
  if (v34)
  {
    OUTLINED_FUNCTION_129_6();
    goto LABEL_9;
  }

  sub_1C900BE74();
  OUTLINED_FUNCTION_300();
  static ToolKitProtoAssistantSchemaIdentifier.== infix(_:_:)();
  v40 = v39;
  v41 = OUTLINED_FUNCTION_380_0();
  sub_1C8CD20B4(v41, v42);
  v43 = OUTLINED_FUNCTION_398();
  sub_1C8CD20B4(v43, v44);
  sub_1C8D16D78(v1, &qword_1EC313F20, &unk_1C9074D20);
  if ((v40 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v45 = *v0 == *v3 && v0[1] == v3[1];
  if (!v45 && (sub_1C9064C2C() & 1) == 0)
  {
    goto LABEL_11;
  }

  v46 = v79[8];
  v47 = *(v3 + v46 + 8);
  if (*(v0 + v46 + 8))
  {
    if (!v47)
    {
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_105_5((v0 + v46));
    v50 = v34 && v48 == v49;
    if (!v50 && (sub_1C9064C2C() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v47)
  {
    goto LABEL_11;
  }

  v51 = v0[2];
  v52 = v3[2];
  sub_1C8CED650();
  if ((v53 & 1) == 0)
  {
    goto LABEL_11;
  }

  v54 = v0[3];
  v55 = v3[3];
  sub_1C8CEDC30();
  if ((v56 & 1) == 0)
  {
    goto LABEL_11;
  }

  v57 = v79[9];
  v58 = *(v76 + 48);
  OUTLINED_FUNCTION_362_1();
  OUTLINED_FUNCTION_362_1();
  v59 = OUTLINED_FUNCTION_175_5();
  OUTLINED_FUNCTION_108_2(v59, v60, v77);
  if (v34)
  {
    OUTLINED_FUNCTION_54_15(v78 + v58);
    if (v34)
    {
      sub_1C8D16D78(v78, &qword_1EC312A58, &unk_1C9074CC0);
LABEL_40:
      v70 = v79[10];
      sub_1C90637EC();
      OUTLINED_FUNCTION_1_76();
      sub_1C8CD1B00(v71, v72);
      OUTLINED_FUNCTION_257_2();
      v38 = sub_1C9063EAC();
      goto LABEL_12;
    }

    goto LABEL_38;
  }

  sub_1C8D63FCC();
  OUTLINED_FUNCTION_54_15(v78 + v58);
  if (v61)
  {
    OUTLINED_FUNCTION_5_52();
    sub_1C8CD20B4(v75, v62);
LABEL_38:
    v35 = &qword_1EC312A60;
    v36 = &unk_1C9068E40;
    v37 = v78;
    goto LABEL_10;
  }

  sub_1C900BE74();
  v63 = OUTLINED_FUNCTION_378();
  v65 = static ToolKitProtoTypeInstance.== infix(_:_:)(v63, v64);
  v66 = OUTLINED_FUNCTION_209();
  sub_1C8CD20B4(v66, v67);
  v68 = OUTLINED_FUNCTION_347();
  sub_1C8CD20B4(v68, v69);
  sub_1C8D16D78(v78, &qword_1EC312A58, &unk_1C9074CC0);
  if (v65)
  {
    goto LABEL_40;
  }

LABEL_11:
  v38 = 0;
LABEL_12:
  OUTLINED_FUNCTION_50_0(v38);
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8FC7238(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D4A8, type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FC72B8(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CF60, type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FC7328()
{
  sub_1C8CD1B00(&qword_1EC31CF60, type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FC73C0()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B768);
  __swift_project_value_buffer(v0, qword_1EC31B768);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "entity";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "enumeration";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8FC7600()
{
  OUTLINED_FUNCTION_89_1();
  while (1)
  {
    OUTLINED_FUNCTION_203();
    result = sub_1C90638DC();
    if (v1 || (v4 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_305_1();
      v0();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_305_1();
      v2();
    }
  }

  return result;
}

uint64_t sub_1C8FC7684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3147A8, &qword_1C9074E78);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D8E8, &qword_1C90BBCD0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v12, &qword_1EC3147A8, &qword_1C9074E78);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
    }

    else
    {
      sub_1C8D16D78(v24, &qword_1EC31D8E8, &qword_1C90BBCD0);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }
  }

  sub_1C8CD1B00(&qword_1EC31CF90, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC31D8E8, &qword_1C90BBCD0);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC31D8E8, &qword_1C90BBCD0);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC31D8E8, &qword_1C90BBCD0);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC31D8E8, &qword_1C90BBCD0);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC3147A8, &qword_1C9074E78);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1C8FC7B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3147A8, &qword_1C9074E78);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D8F0, &qword_1C90BBCD8);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v12, &qword_1EC3147A8, &qword_1C9074E78);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8D16D78(v24, &qword_1EC31D8F0, &qword_1C90BBCD8);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
    }
  }

  sub_1C8CD1B00(&qword_1EC31CFA8, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC31D8F0, &qword_1C90BBCD8);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC31D8F0, &qword_1C90BBCD8);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC31D8F0, &qword_1C90BBCD8);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC31D8F0, &qword_1C90BBCD8);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC3147A8, &qword_1C9074E78);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

void ToolKitProtoAssistantTypeSchemaDefinition.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_300_0();
  OUTLINED_FUNCTION_43_15();
  v1 = OUTLINED_FUNCTION_245();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_9(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_45_21();
  v7 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind(0);
  OUTLINED_FUNCTION_20_31(v7);
  if (v8)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_124();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = OUTLINED_FUNCTION_3_4();
    sub_1C8FC8354(v9, v10, v11, v12);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_3_4();
    sub_1C8FC814C(v13, v14, v15, v16);
  }

  v17 = OUTLINED_FUNCTION_273();
  sub_1C8CD20B4(v17, v18);
  if (!v0)
  {
LABEL_6:
    v19 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition(0);
    OUTLINED_FUNCTION_52_17(v19);
  }

  OUTLINED_FUNCTION_190_8();
  OUTLINED_FUNCTION_301_1();
}

uint64_t sub_1C8FC814C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3147A8, &qword_1C9074E78);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v12 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &qword_1EC3147A8, &qword_1C9074E78);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EC31CF90, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity);
    }

    result = sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FC8354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3147A8, &qword_1C9074E78);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v12 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &qword_1EC3147A8, &qword_1C9074E78);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EC31CFA8, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration);
    }

    result = sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
  }

  __break(1u);
  return result;
}

void static ToolKitProtoAssistantTypeSchemaDefinition.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v1 = OUTLINED_FUNCTION_24_2();
  v2 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind(v1);
  v3 = OUTLINED_FUNCTION_39_19(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_18_23();
  v6 = OUTLINED_FUNCTION_124();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_9(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_73();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C5E8, &qword_1C90AC0B0);
  OUTLINED_FUNCTION_9(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_27_20(v16);
  OUTLINED_FUNCTION_108_5();
  OUTLINED_FUNCTION_18_32();
  if (v17)
  {
    OUTLINED_FUNCTION_16_31();
    if (v17)
    {
      sub_1C8D16D78(v0, &qword_1EC3147A8, &qword_1C9074E78);
LABEL_12:
      v25 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition(0);
      OUTLINED_FUNCTION_63_10(v25);
      OUTLINED_FUNCTION_1_76();
      sub_1C8CD1B00(v26, v27);
      v18 = OUTLINED_FUNCTION_12_28();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_287();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_16_31();
  if (v17)
  {
    OUTLINED_FUNCTION_292_2();
LABEL_9:
    sub_1C8D16D78(v0, &qword_1EC31C5E8, &qword_1C90AC0B0);
    goto LABEL_10;
  }

  sub_1C900BE74();
  OUTLINED_FUNCTION_398();
  static ToolKitProtoAssistantTypeSchemaDefinitionKind.== infix(_:_:)();
  v20 = v19;
  v21 = OUTLINED_FUNCTION_181_0();
  sub_1C8CD20B4(v21, v22);
  v23 = OUTLINED_FUNCTION_125();
  sub_1C8CD20B4(v23, v24);
  sub_1C8D16D78(v0, &qword_1EC3147A8, &qword_1C9074E78);
  if (v20)
  {
    goto LABEL_12;
  }

LABEL_10:
  v18 = 0;
LABEL_13:
  OUTLINED_FUNCTION_50_0(v18);
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8FC87F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D4A0, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FC8874(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CF78, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FC88E4()
{
  sub_1C8CD1B00(&qword_1EC31CF78, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FC89A8()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B790);
  __swift_project_value_buffer(v0, qword_1EC31B790);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C9084EE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "properties";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "displayRepresentation";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v9();
  return sub_1C9063BEC();
}

void ToolKitProtoAssistantTypeSchemaDefinition.Entity.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    v1 = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        OUTLINED_FUNCTION_5_39();
        sub_1C8FC8D54();
        break;
      case 2:
        OUTLINED_FUNCTION_226_5();
        OUTLINED_FUNCTION_17_34();
        sub_1C8F6BF94();
        break;
      case 1:
        OUTLINED_FUNCTION_5_39();
        sub_1C8FC8CA0();
        break;
    }
  }
}

uint64_t sub_1C8FC8CA0()
{
  v0 = *(type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity(0) + 20);
  type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  sub_1C8CD1B00(qword_1EDA61090, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
  return sub_1C9063A4C();
}

uint64_t sub_1C8FC8D54()
{
  v0 = *(type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity(0) + 24);
  type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  sub_1C8CD1B00(qword_1EDA63E58, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
  return sub_1C9063A4C();
}

void ToolKitProtoAssistantTypeSchemaDefinition.Entity.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_340_2();
  v1 = OUTLINED_FUNCTION_7_48();
  sub_1C8FC8EBC(v1, v2, v3, v4);
  if (!v0)
  {
    OUTLINED_FUNCTION_271_1();
    if (v5)
    {
      type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
      OUTLINED_FUNCTION_224_3();
      sub_1C8CD1B00(v6, v7);
      OUTLINED_FUNCTION_126_4();
      OUTLINED_FUNCTION_29_23();
      sub_1C9063BBC();
    }

    v8 = OUTLINED_FUNCTION_2_55();
    sub_1C8FC9090(v8, v9, v10, v11);
    v12 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity(0);
    OUTLINED_FUNCTION_53_15(v12);
  }

  OUTLINED_FUNCTION_341_2();
}

uint64_t sub_1C8FC8EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F20, &unk_1C9074D20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity(0) + 20);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_1C8D16D78(v7, &qword_1EC313F20, &unk_1C9074D20);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(qword_1EDA61090, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
}

uint64_t sub_1C8FC9090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F18, &unk_1C9072A20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity(0) + 24);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_1C8D16D78(v7, &qword_1EC313F18, &unk_1C9072A20);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(qword_1EDA63E58, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
}

uint64_t sub_1C8FC92EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D498, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FC936C(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CF90, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FC93DC()
{
  sub_1C8CD1B00(&qword_1EC31CF90, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity);

  return sub_1C9063ABC();
}

void sub_1C8FC9488(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_132_4(a1, a2);
  OUTLINED_FUNCTION_97_5();
  OUTLINED_FUNCTION_68_6();
  OUTLINED_FUNCTION_131_5(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1C8FC94F0()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B7B8);
  __swift_project_value_buffer(v0, qword_1EC31B7B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C9084EE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "cases";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "displayRepresentation";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v9();
  return sub_1C9063BEC();
}

void ToolKitProtoAssistantTypeSchemaDefinition.Enumeration.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    v1 = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        OUTLINED_FUNCTION_5_39();
        sub_1C8FC989C();
        break;
      case 2:
        OUTLINED_FUNCTION_222_5();
        OUTLINED_FUNCTION_17_34();
        sub_1C8F6BF94();
        break;
      case 1:
        OUTLINED_FUNCTION_5_39();
        sub_1C8FC97E8();
        break;
    }
  }
}

uint64_t sub_1C8FC97E8()
{
  v0 = *(type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration(0) + 20);
  type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  sub_1C8CD1B00(qword_1EDA61090, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
  return sub_1C9063A4C();
}

uint64_t sub_1C8FC989C()
{
  v0 = *(type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration(0) + 24);
  type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  sub_1C8CD1B00(qword_1EDA63E58, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
  return sub_1C9063A4C();
}

void ToolKitProtoAssistantTypeSchemaDefinition.Enumeration.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_340_2();
  v1 = OUTLINED_FUNCTION_7_48();
  sub_1C8FC9A04(v1, v2, v3, v4);
  if (!v0)
  {
    OUTLINED_FUNCTION_271_1();
    if (v5)
    {
      type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case(0);
      OUTLINED_FUNCTION_260_1();
      sub_1C8CD1B00(v6, v7);
      OUTLINED_FUNCTION_126_4();
      OUTLINED_FUNCTION_29_23();
      sub_1C9063BBC();
    }

    v8 = OUTLINED_FUNCTION_2_55();
    sub_1C8FC9BD8(v8, v9, v10, v11);
    v12 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration(0);
    OUTLINED_FUNCTION_53_15(v12);
  }

  OUTLINED_FUNCTION_341_2();
}

uint64_t sub_1C8FC9A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F20, &unk_1C9074D20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration(0) + 20);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_1C8D16D78(v7, &qword_1EC313F20, &unk_1C9074D20);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(qword_1EDA61090, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
}

uint64_t sub_1C8FC9BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F18, &unk_1C9072A20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration(0) + 24);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_1C8D16D78(v7, &qword_1EC313F18, &unk_1C9072A20);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(qword_1EDA63E58, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
}

uint64_t sub_1C8FC9E34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D490, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FC9EB4(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CFA8, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FC9F24()
{
  sub_1C8CD1B00(&qword_1EC31CFA8, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FC9FB0()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B7D0);
  __swift_project_value_buffer(v0, qword_1EC31B7D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v138 = swift_allocObject();
  *(v138 + 16) = xmmword_1C90ABF40;
  v4 = v138 + v3 + v1[14];
  *(v138 + v3) = 1;
  *v4 = "unknown";
  *(v4 + 8) = 7;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1C9063BDC();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v138 + v3 + v2 + v1[14];
  *(v138 + v3 + v2) = 2;
  *v8 = "undoable";
  *(v8 + 8) = 8;
  *(v8 + 16) = 2;
  v7();
  v9 = (v138 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "sessionStarting";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v7();
  v11 = (v138 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "urlRepresentable";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v7();
  v13 = (v138 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "conditionallyEnabled";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v7();
  v15 = (v138 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "foregroundContinuable";
  *(v16 + 1) = 21;
  v16[16] = 2;
  v7();
  v17 = (v138 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "changeBinarySetting";
  *(v18 + 1) = 19;
  v18[16] = 2;
  v7();
  v19 = (v138 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "requiresMdmChecks";
  *(v20 + 1) = 17;
  v20[16] = 2;
  v7();
  v21 = (v138 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "cut";
  *(v22 + 1) = 3;
  v22[16] = 2;
  v7();
  v23 = (v138 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "copy";
  *(v24 + 1) = 4;
  v24[16] = 2;
  v7();
  v25 = (v138 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "paste";
  *(v26 + 1) = 5;
  v26[16] = 2;
  v7();
  v27 = (v138 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "cancel";
  *(v28 + 1) = 6;
  v28[16] = 2;
  v7();
  v29 = (v138 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "resize";
  *(v30 + 1) = 6;
  v30[16] = 2;
  v7();
  v31 = (v138 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "scroll";
  *(v32 + 1) = 6;
  v32[16] = 2;
  v7();
  v33 = (v138 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "undo";
  *(v34 + 1) = 4;
  v34[16] = 2;
  v7();
  v35 = (v138 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "zoom";
  *(v36 + 1) = 4;
  v36[16] = 2;
  v7();
  v37 = (v138 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 17;
  *v38 = "closeEntity";
  *(v38 + 1) = 11;
  v38[16] = 2;
  v7();
  v39 = (v138 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 18;
  *v40 = "createEntity";
  *(v40 + 1) = 12;
  v40[16] = 2;
  v7();
  v41 = (v138 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 19;
  *v42 = "cutEntity";
  *(v42 + 1) = 9;
  v42[16] = 2;
  v7();
  v43 = (v138 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 20;
  *v44 = "deleteEntity";
  *(v44 + 1) = 12;
  v44[16] = 2;
  v7();
  v45 = (v138 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 21;
  *v46 = "duplicateEntity";
  *(v46 + 1) = 15;
  v46[16] = 2;
  v7();
  v47 = (v138 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 22;
  *v48 = "favoriteEntity";
  *(v48 + 1) = 14;
  v48[16] = 2;
  v7();
  v49 = (v138 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 23;
  *v50 = "openEntity";
  *(v50 + 1) = 10;
  v50[16] = 2;
  v7();
  v51 = (v138 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 24;
  *v52 = "previewEntity";
  *(v52 + 1) = 13;
  v52[16] = 2;
  v7();
  v53 = (v138 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 25;
  *v54 = "saveEntity";
  *(v54 + 1) = 10;
  v54[16] = 2;
  v7();
  v55 = (v138 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 26;
  *v56 = "putEntityInContainer";
  *(v56 + 1) = 20;
  v56[16] = 2;
  v7();
  v57 = (v138 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 27;
  *v58 = "playVideo";
  *(v58 + 1) = 9;
  v58[16] = 2;
  v7();
  v59 = (v138 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 28;
  *v60 = "audioStarting";
  *(v60 + 1) = 13;
  v60[16] = 2;
  v7();
  v61 = (v138 + v3 + 28 * v2);
  v62 = v61 + v1[14];
  *v61 = 29;
  *v62 = "audioRecording";
  *(v62 + 1) = 14;
  v62[16] = 2;
  v7();
  v63 = (v138 + v3 + 29 * v2);
  v64 = v63 + v1[14];
  *v63 = 30;
  *v64 = "pushToTalkTransmission";
  *(v64 + 1) = 22;
  v64[16] = 2;
  v7();
  v65 = (v138 + v3 + 30 * v2);
  v66 = v65 + v1[14];
  *v65 = 31;
  *v66 = "startDive";
  *(v66 + 1) = 9;
  v66[16] = 2;
  v7();
  v67 = (v138 + v3 + 31 * v2);
  v68 = v67 + v1[14];
  *v67 = 32;
  *v68 = "startWorkout";
  *(v68 + 1) = 12;
  v68[16] = 2;
  v7();
  v69 = (v138 + v3 + 32 * v2);
  v70 = v69 + v1[14];
  *v69 = 33;
  *v70 = "pauseWorkout";
  *(v70 + 1) = 12;
  v70[16] = 2;
  v7();
  v71 = (v138 + v3 + 33 * v2);
  v72 = v71 + v1[14];
  *v71 = 34;
  *v72 = "resumeWorkout";
  *(v72 + 1) = 13;
  v72[16] = 2;
  v7();
  v73 = (v138 + v3 + 34 * v2);
  v74 = v73 + v1[14];
  *v73 = 35;
  *v74 = "enterMarkup";
  *(v74 + 1) = 11;
  v74[16] = 2;
  v7();
  v75 = (v138 + v3 + 35 * v2);
  v76 = v75 + v1[14];
  *v75 = 36;
  *v76 = "exitMarkup";
  *(v76 + 1) = 10;
  v76[16] = 2;
  v7();
  v77 = (v138 + v3 + 36 * v2);
  v78 = v77 + v1[14];
  *v77 = 37;
  *v78 = "focusConfiguration";
  *(v78 + 1) = 18;
  v78[16] = 2;
  v7();
  v79 = (v138 + v3 + 37 * v2);
  v80 = v79 + v1[14];
  *v79 = 38;
  *v80 = "widgetConfiguration";
  *(v80 + 1) = 19;
  v80[16] = 2;
  v7();
  v81 = (v138 + v3 + 38 * v2);
  v82 = v81 + v1[14];
  *v81 = 39;
  *v82 = "search";
  *(v82 + 1) = 6;
  v82[16] = 2;
  v7();
  v83 = (v138 + v3 + 39 * v2);
  v84 = v83 + v1[14];
  *v83 = 40;
  *v84 = "showSearchResultsInApp";
  *(v84 + 1) = 22;
  v84[16] = 2;
  v7();
  v85 = (v138 + v3 + 40 * v2);
  v86 = v85 + v1[14];
  *v85 = 41;
  *v86 = "showStringSearchResultsInApp";
  *(v86 + 1) = 28;
  v86[16] = 2;
  v7();
  v87 = (v138 + v3 + 41 * v2);
  v88 = v87 + v1[14];
  *v87 = 42;
  *v88 = "showInAppSearchResults";
  *(v88 + 1) = 22;
  v88[16] = 2;
  v7();
  v89 = (v138 + v3 + 42 * v2);
  v90 = v89 + v1[14];
  *v89 = 43;
  *v90 = "showInAppStringSearchResults";
  *(v90 + 1) = 28;
  v90[16] = 2;
  v7();
  v91 = (v138 + v3 + 43 * v2);
  v92 = v91 + v1[14];
  *v91 = 44;
  *v92 = "moveSpatial";
  *(v92 + 1) = 11;
  v92[16] = 2;
  v7();
  v93 = (v138 + v3 + 44 * v2);
  v94 = v93 + v1[14];
  *v93 = 45;
  *v94 = "navigateSequentially";
  *(v94 + 1) = 20;
  v94[16] = 2;
  v7();
  v95 = (v138 + v3 + 45 * v2);
  v96 = v95 + v1[14];
  *v95 = 46;
  *v96 = "sting";
  *(v96 + 1) = 5;
  v96[16] = 2;
  v7();
  v97 = (v138 + v3 + 46 * v2);
  v98 = v97 + v1[14];
  *v97 = 47;
  *v98 = "toggle";
  *(v98 + 1) = 6;
  v98[16] = 2;
  v7();
  v99 = (v138 + v3 + 47 * v2);
  v100 = v99 + v1[14];
  *v99 = 48;
  *v100 = "cameraCapture";
  *(v100 + 1) = 13;
  v100[16] = 2;
  v7();
  v101 = (v138 + v3 + 48 * v2);
  v102 = v101 + v1[14];
  *v101 = 49;
  *v102 = "staccatoLongPress";
  *(v102 + 1) = 17;
  v102[16] = 2;
  v7();
  v103 = (v138 + v3 + 49 * v2);
  v104 = v103 + v1[14];
  *v103 = 50;
  *v104 = "entityUpdating";
  *(v104 + 1) = 14;
  v104[16] = 2;
  v7();
  v105 = (v138 + v3 + 50 * v2);
  v106 = v105 + v1[14];
  *v105 = 51;
  *v106 = "propertyUpdater";
  *(v106 + 1) = 15;
  v106[16] = 2;
  v7();
  v107 = (v138 + v3 + 51 * v2);
  v108 = v107 + v1[14];
  *v107 = 52;
  *v108 = "sendMail";
  *(v108 + 1) = 8;
  v108[16] = 2;
  v7();
  v109 = (v138 + v3 + 52 * v2);
  v110 = v109 + v1[14];
  *v109 = 53;
  *v110 = "setMailMessageIsRead";
  *(v110 + 1) = 20;
  v110[16] = 2;
  v7();
  v111 = (v138 + v3 + 53 * v2);
  v112 = v111 + v1[14];
  *v111 = 54;
  *v112 = "siriKitIntent";
  *(v112 + 1) = 13;
  v112[16] = 2;
  v7();
  v113 = (v138 + v3 + 54 * v2);
  v114 = v113 + v1[14];
  *v113 = 55;
  *v114 = "intentSideEffect";
  *(v114 + 1) = 16;
  v114[16] = 2;
  v7();
  v115 = (v138 + v3 + 55 * v2);
  v116 = v115 + v1[14];
  *v115 = 56;
  *v116 = "assistantSchema";
  *(v116 + 1) = 15;
  v116[16] = 2;
  v7();
  v117 = (v138 + v3 + 56 * v2);
  v118 = v117 + v1[14];
  *v117 = 57;
  *v118 = "rewriteWritingTool";
  *(v118 + 1) = 18;
  v118[16] = 2;
  v7();
  v119 = (v138 + v3 + 57 * v2);
  v120 = v119 + v1[14];
  *v119 = 58;
  *v120 = "proofreadWritingTool";
  *(v120 + 1) = 20;
  v120[16] = 2;
  v7();
  v121 = (v138 + v3 + 58 * v2);
  v122 = v121 + v1[14];
  *v121 = 59;
  *v122 = "assistantInvocable";
  *(v122 + 1) = 18;
  v122[16] = 2;
  v7();
  v123 = (v138 + v3 + 59 * v2);
  v124 = v123 + v1[14];
  *v123 = 60;
  *v124 = "appIntent";
  *(v124 + 1) = 9;
  v124[16] = 2;
  v7();
  v125 = (v138 + v3 + 60 * v2);
  v126 = v125 + v1[14];
  *v125 = 61;
  *v126 = "systemFrameworkIntent";
  *(v126 + 1) = 21;
  v126[16] = 2;
  v7();
  v127 = (v138 + v3 + 61 * v2);
  v128 = v127 + v1[14];
  *v127 = 62;
  *v128 = "synthesizedTool";
  *(v128 + 1) = 15;
  v128[16] = 2;
  v7();
  v129 = (v138 + v3 + 62 * v2);
  v130 = v129 + v1[14];
  *v129 = 63;
  *v130 = "progressReporting";
  *(v130 + 1) = 17;
  v130[16] = 2;
  v7();
  v131 = (v138 + v3 + 63 * v2);
  v132 = v131 + v1[14];
  *v131 = 64;
  *v132 = "controlConfiguration";
  *(v132 + 1) = 20;
  v132[16] = 2;
  v7();
  v133 = (v138 + v3 + (v2 << 6));
  v134 = v133 + v1[14];
  *v133 = 65;
  *v134 = "valueSetting";
  *(v134 + 1) = 12;
  v134[16] = 2;
  v7();
  v135 = (v138 + v3 + 65 * v2);
  v136 = v135 + v1[14];
  *v135 = 66;
  *v136 = "entityGetter";
  *(v136 + 1) = 12;
  v136[16] = 2;
  v7();
  return sub_1C9063BEC();
}

void ToolKitProtoSystemToolProtocol.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    v1 = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
      case 11:
      case 12:
      case 13:
      case 14:
      case 15:
      case 16:
      case 17:
      case 18:
      case 19:
      case 20:
      case 21:
      case 22:
      case 23:
      case 24:
      case 25:
      case 26:
      case 28:
      case 29:
      case 30:
      case 31:
      case 32:
      case 33:
      case 34:
      case 35:
      case 36:
      case 37:
      case 38:
      case 39:
      case 40:
      case 41:
      case 42:
      case 44:
      case 45:
      case 46:
      case 47:
      case 48:
      case 49:
      case 52:
      case 53:
      case 57:
      case 58:
      case 59:
      case 61:
      case 63:
      case 64:
        goto LABEL_17;
      case 5:
        v15 = OUTLINED_FUNCTION_8_32();
        sub_1C8FCB824(v15, v16, v17, v18);
        break;
      case 27:
        v31 = OUTLINED_FUNCTION_8_32();
        sub_1C8FCBD1C(v31, v32, v33, v34);
        break;
      case 43:
        v23 = OUTLINED_FUNCTION_8_32();
        sub_1C8FCC214(v23, v24, v25, v26);
        break;
      case 50:
        v11 = OUTLINED_FUNCTION_8_32();
        sub_1C8FCC70C(v11, v12, v13, v14);
        break;
      case 51:
        v3 = OUTLINED_FUNCTION_8_32();
        sub_1C8FCCC04(v3, v4, v5, v6);
        break;
      case 54:
        v7 = OUTLINED_FUNCTION_8_32();
        sub_1C8FCD0FC(v7, v8, v9, v10);
        break;
      case 55:
        v35 = OUTLINED_FUNCTION_8_32();
        sub_1C8FCD5F4(v35, v36, v37, v38);
        break;
      case 56:
        v39 = OUTLINED_FUNCTION_8_32();
        sub_1C8FCDAEC(v39, v40, v41, v42);
        break;
      case 60:
        v27 = OUTLINED_FUNCTION_8_32();
        sub_1C8FCDFE4(v27, v28, v29, v30);
        break;
      case 62:
        v19 = OUTLINED_FUNCTION_8_32();
        sub_1C8FCE4DC(v19, v20, v21, v22);
        break;
      default:
        if (v1 == 66 || v1 == 65)
        {
LABEL_17:
          OUTLINED_FUNCTION_0_80();
          sub_1C8F6278C();
        }

        break;
    }
  }
}

uint64_t sub_1C8FCB824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D898, &qword_1C90BBC80);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v12, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    }

    else
    {
      sub_1C8D16D78(v24, &qword_1EC31D898, &qword_1C90BBC80);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }
  }

  sub_1C8CD1B00(&qword_1EC31CFC8, type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC31D898, &qword_1C90BBC80);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC31D898, &qword_1C90BBC80);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC31D898, &qword_1C90BBC80);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC31D898, &qword_1C90BBC80);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC312948, &qword_1C9068D28);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1C8FCBD1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D8A0, &qword_1C90BBC88);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v12, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8D16D78(v24, &qword_1EC31D8A0, &qword_1C90BBC88);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    }
  }

  sub_1C8CD1B00(&qword_1EC31CFE0, type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC31D8A0, &qword_1C90BBC88);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC31D8A0, &qword_1C90BBC88);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC31D8A0, &qword_1C90BBC88);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC31D8A0, &qword_1C90BBC88);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC312948, &qword_1C9068D28);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1C8FCC214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D8A8, &qword_1C90BBC90);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v12, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C8D16D78(v24, &qword_1EC31D8A8, &qword_1C90BBC90);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    }
  }

  sub_1C8CD1B00(&qword_1EDA63CF8, type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC31D8A8, &qword_1C90BBC90);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC31D8A8, &qword_1C90BBC90);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC31D8A8, &qword_1C90BBC90);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC31D8A8, &qword_1C90BBC90);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC312948, &qword_1C9068D28);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1C8FCC70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D8B0, &qword_1C90BBC98);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v12, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1C8D16D78(v24, &qword_1EC31D8B0, &qword_1C90BBC98);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    }
  }

  sub_1C8CD1B00(&qword_1EDA63D18, type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC31D8B0, &qword_1C90BBC98);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC31D8B0, &qword_1C90BBC98);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC31D8B0, &qword_1C90BBC98);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC31D8B0, &qword_1C90BBC98);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC312948, &qword_1C9068D28);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1C8FCCC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D8B8, &qword_1C90BBCA0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v12, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1C8D16D78(v24, &qword_1EC31D8B8, &qword_1C90BBCA0);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    }
  }

  sub_1C8CD1B00(&qword_1EDA61020, type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC31D8B8, &qword_1C90BBCA0);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC31D8B8, &qword_1C90BBCA0);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC31D8B8, &qword_1C90BBCA0);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC31D8B8, &qword_1C90BBCA0);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC312948, &qword_1C9068D28);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1C8FCD0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D8C0, &qword_1C90BBCA8);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v12, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1C8D16D78(v24, &qword_1EC31D8C0, &qword_1C90BBCA8);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    }
  }

  sub_1C8CD1B00(&qword_1EDA63D28, type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC31D8C0, &qword_1C90BBCA8);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC31D8C0, &qword_1C90BBCA8);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC31D8C0, &qword_1C90BBCA8);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC31D8C0, &qword_1C90BBCA8);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC312948, &qword_1C9068D28);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1C8FCD5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D8C8, &qword_1C90BBCB0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v12, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1C8D16D78(v24, &qword_1EC31D8C8, &qword_1C90BBCB0);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    }
  }

  sub_1C8CD1B00(&qword_1EDA63D08, type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC31D8C8, &qword_1C90BBCB0);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC31D8C8, &qword_1C90BBCB0);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC31D8C8, &qword_1C90BBCB0);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC31D8C8, &qword_1C90BBCB0);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC312948, &qword_1C9068D28);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1C8FCDAEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D8D0, &qword_1C90BBCB8);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v12, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_1C8D16D78(v24, &qword_1EC31D8D0, &qword_1C90BBCB8);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    }
  }

  sub_1C8CD1B00(&qword_1EDA61030, type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC31D8D0, &qword_1C90BBCB8);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC31D8D0, &qword_1C90BBCB8);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC31D8D0, &qword_1C90BBCB8);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC31D8D0, &qword_1C90BBCB8);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC312948, &qword_1C9068D28);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1C8FCDFE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D8D8, &qword_1C90BBCC0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v12, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_1C8D16D78(v24, &qword_1EC31D8D8, &qword_1C90BBCC0);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    }
  }

  sub_1C8CD1B00(&qword_1EDA6A460, type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC31D8D8, &qword_1C90BBCC0);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC31D8D8, &qword_1C90BBCC0);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC31D8D8, &qword_1C90BBCC0);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC31D8D8, &qword_1C90BBCC0);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC312948, &qword_1C9068D28);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1C8FCE4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoSystemToolProtocol.SynthesizedToolProtocol(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D8E0, &qword_1C90BBCC8);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v12, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_1C8D16D78(v24, &qword_1EC31D8E0, &qword_1C90BBCC8);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    }
  }

  sub_1C8CD1B00(&qword_1EDA61040, type metadata accessor for ToolKitProtoSystemToolProtocol.SynthesizedToolProtocol);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC31D8E0, &qword_1C90BBCC8);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC31D8E0, &qword_1C90BBCC8);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC31D8E0, &qword_1C90BBCC8);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC31D8E0, &qword_1C90BBCC8);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC312948, &qword_1C9068D28);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

void ToolKitProtoSystemToolProtocol.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_300_0();
  OUTLINED_FUNCTION_43_15();
  v2 = OUTLINED_FUNCTION_245();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_9(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_45_21();
  v8 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  OUTLINED_FUNCTION_20_31(v8);
  if (!v9)
  {
    OUTLINED_FUNCTION_124();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v138 = OUTLINED_FUNCTION_3_4();
        sub_1C8FD25C0(v138, v139, v140, v141);
        goto LABEL_50;
      case 2u:
        v118 = OUTLINED_FUNCTION_3_4();
        sub_1C8FD4820(v118, v119, v120, v121);
        goto LABEL_50;
      case 3u:
        v130 = OUTLINED_FUNCTION_3_4();
        sub_1C8FD5718(v130, v131, v132, v133);
        goto LABEL_50;
      case 4u:
        v86 = OUTLINED_FUNCTION_3_4();
        sub_1C8FD5920(v86, v87, v88, v89);
        goto LABEL_50;
      case 5u:
        v162 = OUTLINED_FUNCTION_3_4();
        sub_1C8FD5F78(v162, v163, v164, v165);
        goto LABEL_50;
      case 6u:
        v182 = OUTLINED_FUNCTION_3_4();
        sub_1C8FD6180(v182, v183, v184, v185);
        goto LABEL_50;
      case 7u:
        v134 = OUTLINED_FUNCTION_3_4();
        sub_1C8FD6388(v134, v135, v136, v137);
        goto LABEL_50;
      case 8u:
        v194 = OUTLINED_FUNCTION_3_4();
        sub_1C8FD6C08(v194, v195, v196, v197);
        goto LABEL_50;
      case 9u:
        v106 = OUTLINED_FUNCTION_3_4();
        sub_1C8FD7038(v106, v107, v108, v109);
        goto LABEL_50;
      case 0xAu:
        v190 = OUTLINED_FUNCTION_3_4();
        sub_1C8FCEDD4(v190, v191, v192, v193);
        goto LABEL_72;
      case 0xBu:
        v78 = OUTLINED_FUNCTION_3_4();
        sub_1C8FCEFFC(v78, v79, v80, v81);
        goto LABEL_72;
      case 0xCu:
        v102 = OUTLINED_FUNCTION_3_4();
        sub_1C8FCF224(v102, v103, v104, v105);
        goto LABEL_72;
      case 0xDu:
        v178 = OUTLINED_FUNCTION_3_4();
        sub_1C8FCF44C(v178, v179, v180, v181);
        goto LABEL_72;
      case 0xEu:
        v62 = OUTLINED_FUNCTION_3_4();
        sub_1C8FCF878(v62, v63, v64, v65);
        goto LABEL_72;
      case 0xFu:
        v122 = OUTLINED_FUNCTION_3_4();
        sub_1C8FCFAA0(v122, v123, v124, v125);
        goto LABEL_72;
      case 0x10u:
        v54 = OUTLINED_FUNCTION_3_4();
        sub_1C8FCFCC8(v54, v55, v56, v57);
        goto LABEL_72;
      case 0x11u:
        v146 = OUTLINED_FUNCTION_3_4();
        sub_1C8FCFEF0(v146, v147, v148, v149);
        goto LABEL_72;
      case 0x12u:
        v186 = OUTLINED_FUNCTION_3_4();
        sub_1C8FD0118(v186, v187, v188, v189);
        goto LABEL_72;
      case 0x13u:
        v220 = OUTLINED_FUNCTION_3_4();
        sub_1C8FD0340(v220, v221, v222, v223);
        goto LABEL_72;
      case 0x14u:
        v154 = OUTLINED_FUNCTION_3_4();
        sub_1C8FD0568(v154, v155, v156, v157);
        goto LABEL_72;
      case 0x15u:
        v174 = OUTLINED_FUNCTION_3_4();
        sub_1C8FD0790(v174, v175, v176, v177);
        goto LABEL_72;
      case 0x16u:
        v212 = OUTLINED_FUNCTION_3_4();
        sub_1C8FD09B8(v212, v213, v214, v215);
        goto LABEL_72;
      case 0x17u:
        v236 = OUTLINED_FUNCTION_3_4();
        sub_1C8FD0BE0(v236, v237, v238, v239);
        goto LABEL_72;
      case 0x18u:
        v114 = OUTLINED_FUNCTION_3_4();
        sub_1C8FD0E08(v114, v115, v116, v117);
        goto LABEL_72;
      case 0x19u:
        v110 = OUTLINED_FUNCTION_3_4();
        sub_1C8FD1030(v110, v111, v112, v113);
        goto LABEL_72;
      case 0x1Au:
        v252 = OUTLINED_FUNCTION_3_4();
        sub_1C8FD1258(v252, v253, v254, v255);
        goto LABEL_72;
      case 0x1Bu:
        v46 = OUTLINED_FUNCTION_3_4();
        sub_1C8FD1480(v46, v47, v48, v49);
        goto LABEL_72;
      case 0x1Cu:
        v240 = OUTLINED_FUNCTION_3_4();
        sub_1C8FD16A8(v240, v241, v242, v243);
        goto LABEL_72;
      case 0x1Du:
        v244 = OUTLINED_FUNCTION_3_4();
        sub_1C8FD18D0(v244, v245, v246, v247);
        goto LABEL_72;
      case 0x1Eu:
        v200 = OUTLINED_FUNCTION_3_4();
        sub_1C8FD1AF8(v200, v201, v202, v203);
        goto LABEL_72;
      case 0x1Fu:
        v142 = OUTLINED_FUNCTION_3_4();
        sub_1C8FD1D20(v142, v143, v144, v145);
        goto LABEL_72;
      case 0x20u:
        v204 = OUTLINED_FUNCTION_3_4();
        sub_1C8FD1F48(v204, v205, v206, v207);
        goto LABEL_72;
      case 0x21u:
        v66 = OUTLINED_FUNCTION_3_4();
        sub_1C8FD2170(v66, v67, v68, v69);
        goto LABEL_72;
      case 0x22u:
        v50 = OUTLINED_FUNCTION_3_4();
        sub_1C8FD2398(v50, v51, v52, v53);
        goto LABEL_72;
      case 0x23u:
        v38 = OUTLINED_FUNCTION_3_4();
        sub_1C8FD27C8(v38, v39, v40, v41);
        goto LABEL_72;
      case 0x24u:
        v42 = OUTLINED_FUNCTION_3_4();
        sub_1C8FD29F0(v42, v43, v44, v45);
        goto LABEL_72;
      case 0x25u:
        v22 = OUTLINED_FUNCTION_3_4();
        sub_1C8FD2C18(v22, v23, v24, v25);
        goto LABEL_72;
      case 0x26u:
        v248 = OUTLINED_FUNCTION_3_4();
        sub_1C8FD2E40(v248, v249, v250, v251);
        goto LABEL_72;
      case 0x27u:
        v216 = OUTLINED_FUNCTION_3_4();
        sub_1C8FD3068(v216, v217, v218, v219);
        goto LABEL_72;
      case 0x28u:
        v90 = OUTLINED_FUNCTION_3_4();
        sub_1C8FD3290(v90, v91, v92, v93);
        goto LABEL_72;
      case 0x29u:
        v150 = OUTLINED_FUNCTION_3_4();
        sub_1C8FD34B8(v150, v151, v152, v153);
        goto LABEL_72;
      case 0x2Au:
        v228 = OUTLINED_FUNCTION_3_4();
        sub_1C8FD36E0(v228, v229, v230, v231);
        goto LABEL_72;
      case 0x2Bu:
        v18 = OUTLINED_FUNCTION_3_4();
        sub_1C8FD3908(v18, v19, v20, v21);
        goto LABEL_72;
      case 0x2Cu:
        v58 = OUTLINED_FUNCTION_3_4();
        sub_1C8FD3B30(v58, v59, v60, v61);
        goto LABEL_72;
      case 0x2Du:
        v208 = OUTLINED_FUNCTION_3_4();
        sub_1C8FD3D58(v208, v209, v210, v211);
        goto LABEL_72;
      case 0x2Eu:
        v268 = OUTLINED_FUNCTION_3_4();
        sub_1C8FD3F80(v268, v269, v270, v271);
        goto LABEL_72;
      case 0x2Fu:
        v30 = OUTLINED_FUNCTION_3_4();
        sub_1C8FD41A8(v30, v31, v32, v33);
        goto LABEL_72;
      case 0x30u:
        v70 = OUTLINED_FUNCTION_3_4();
        sub_1C8FD43D0(v70, v71, v72, v73);
        goto LABEL_72;
      case 0x31u:
        v82 = OUTLINED_FUNCTION_3_4();
        sub_1C8FD45F8(v82, v83, v84, v85);
        goto LABEL_72;
      case 0x32u:
        v14 = OUTLINED_FUNCTION_3_4();
        sub_1C8FD4A28(v14, v15, v16, v17);
        goto LABEL_72;
      case 0x33u:
        v272 = OUTLINED_FUNCTION_3_4();
        sub_1C8FD4C50(v272, v273, v274, v275);
        goto LABEL_72;
      case 0x34u:
        v264 = OUTLINED_FUNCTION_3_4();
        sub_1C8FD4E78(v264, v265, v266, v267);
        goto LABEL_72;
      case 0x35u:
        v26 = OUTLINED_FUNCTION_3_4();
        sub_1C8FD50A0(v26, v27, v28, v29);
        goto LABEL_72;
      case 0x36u:
        v256 = OUTLINED_FUNCTION_3_4();
        sub_1C8FD52C8(v256, v257, v258, v259);
        goto LABEL_72;
      case 0x37u:
        v260 = OUTLINED_FUNCTION_3_4();
        sub_1C8FD54F0(v260, v261, v262, v263);
        goto LABEL_72;
      case 0x38u:
        v34 = OUTLINED_FUNCTION_3_4();
        sub_1C8FD5B28(v34, v35, v36, v37);
        goto LABEL_72;
      case 0x39u:
        v224 = OUTLINED_FUNCTION_3_4();
        sub_1C8FD5D50(v224, v225, v226, v227);
        goto LABEL_72;
      case 0x3Au:
        v74 = OUTLINED_FUNCTION_3_4();
        sub_1C8FD6590(v74, v75, v76, v77);
        goto LABEL_72;
      case 0x3Bu:
        v232 = OUTLINED_FUNCTION_3_4();
        sub_1C8FD67B8(v232, v233, v234, v235);
        goto LABEL_72;
      case 0x3Cu:
        v94 = OUTLINED_FUNCTION_3_4();
        sub_1C8FD69E0(v94, v95, v96, v97);
        goto LABEL_72;
      case 0x3Du:
        v158 = OUTLINED_FUNCTION_3_4();
        sub_1C8FD6E10(v158, v159, v160, v161);
        goto LABEL_72;
      case 0x3Eu:
        v170 = OUTLINED_FUNCTION_3_4();
        sub_1C8FD7240(v170, v171, v172, v173);
        goto LABEL_72;
      case 0x3Fu:
        v126 = OUTLINED_FUNCTION_3_4();
        sub_1C8FD7468(v126, v127, v128, v129);
        goto LABEL_72;
      case 0x40u:
        v98 = OUTLINED_FUNCTION_3_4();
        sub_1C8FD7690(v98, v99, v100, v101);
        goto LABEL_72;
      case 0x41u:
        v166 = OUTLINED_FUNCTION_3_4();
        sub_1C8FD78B8(v166, v167, v168, v169);
LABEL_72:
        if (!v0)
        {
          break;
        }

        goto LABEL_74;
      default:
        v10 = OUTLINED_FUNCTION_3_4();
        sub_1C8FCF674(v10, v11, v12, v13);
LABEL_50:
        if (v0)
        {
          OUTLINED_FUNCTION_117_5();
          sub_1C8CD20B4(v1, v198);
          goto LABEL_74;
        }

        OUTLINED_FUNCTION_117_5();
        sub_1C8CD20B4(v1, v199);
        break;
    }
  }

  v276 = type metadata accessor for ToolKitProtoSystemToolProtocol(0);
  OUTLINED_FUNCTION_52_17(v276);
LABEL_74:
  OUTLINED_FUNCTION_190_8();
  OUTLINED_FUNCTION_301_1();
}