void sub_1B95449EC(uint64_t **a1, char a2)
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
    sub_1B954546C();
    sub_1B8D9207C(v7, &qword_1EBAD0A90, &qword_1B96D8670);
    sub_1B954518C();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v4);
    OUTLINED_FUNCTION_0_106();
    sub_1B9544B24();
  }

  else
  {
    sub_1B8D9207C(**a1, &qword_1EBAD0A90, &qword_1B96D8670);
    OUTLINED_FUNCTION_2_73();
    sub_1B954518C();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v4);
  }

  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

uint64_t sub_1B9544B24()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t Searchfoundation_RFColor.name.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_177_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_27_9();
  v9 = type metadata accessor for Searchfoundation_RFColor.OneOf_Value(0);
  OUTLINED_FUNCTION_178(v1, 1, v9);
  if (v10)
  {
    result = sub_1B8D9207C(v1, &qword_1EBAD0A90, &qword_1B96D8670);
LABEL_7:
    v12 = 0;
    v13 = 1;
    goto LABEL_8;
  }

  result = swift_getEnumCaseMultiPayload();
  if (result != 1)
  {
    result = sub_1B9544B24();
    goto LABEL_7;
  }

  v12 = *v1;
  v13 = *(v1 + 8);
LABEL_8:
  *a1 = v12;
  *(a1 + 8) = v13;
  return result;
}

uint64_t sub_1B9544C78@<X0>(uint64_t a1@<X8>)
{
  result = Searchfoundation_RFColor.name.getter(&v4);
  v3 = v5;
  *a1 = v4;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_1B9544CBC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  return Searchfoundation_RFColor.name.setter(&v3);
}

uint64_t Searchfoundation_RFColor.name.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  sub_1B8D9207C(v1, &qword_1EBAD0A90, &qword_1B96D8670);
  *v1 = v2;
  *(v1 + 8) = v3;
  v4 = type metadata accessor for Searchfoundation_RFColor.OneOf_Value(0);
  OUTLINED_FUNCTION_288();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v4);
}

void (*Searchfoundation_RFColor.name.modify(void *a1))(uint64_t **a1)
{
  v2 = v1;
  v4 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v4;
  v4[2] = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0A90, &qword_1B96D8670);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v4[3] = v7;
  sub_1B8D92024();
  v8 = type metadata accessor for Searchfoundation_RFColor.OneOf_Value(0);
  v4[4] = v8;
  OUTLINED_FUNCTION_178(v7, 1, v8);
  if (v9)
  {
    sub_1B8D9207C(v7, &qword_1EBAD0A90, &qword_1B96D8670);
LABEL_7:
    v11 = 0;
    v12 = 1;
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_1B9544B24();
    goto LABEL_7;
  }

  v11 = *v7;
  v12 = v7[8];
LABEL_8:
  *v4 = v11;
  *(v4 + 8) = v12;
  return sub_1B9544EC0;
}

void sub_1B9544EC0(uint64_t **a1)
{
  v1 = *a1;
  v3 = (*a1)[3];
  v2 = (*a1)[4];
  v4 = (*a1)[2];
  v5 = **a1;
  v6 = *(*a1 + 8);
  sub_1B8D9207C(v4, &qword_1EBAD0A90, &qword_1B96D8670);
  *v4 = v5;
  *(v4 + 8) = v6;
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_80();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v2);
  free(v3);

  free(v1);
}

uint64_t Searchfoundation_RFColor.alpha.getter@<X0>(_DWORD *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0A98, &qword_1B96D8678);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = *(type metadata accessor for Searchfoundation_RFColor(v7) + 24);
  sub_1B8D92024();
  v9 = type metadata accessor for Searchfoundation_RFOptionalFloat(0);
  v10 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v10, v11, v9);
  if (v12)
  {
    *a1 = 0;
    v13 = a1 + *(v9 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v14 = OUTLINED_FUNCTION_493();
    result = OUTLINED_FUNCTION_178(v14, v15, v9);
    if (!v12)
    {
      return sub_1B8D9207C(v1, &qword_1EBAD0A98, &qword_1B96D8678);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_88();
    return sub_1B954518C();
  }

  return result;
}

uint64_t sub_1B9545058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = a5(0);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v15 - v12;
  OUTLINED_FUNCTION_177_1();
  sub_1B954546C();
  return a7(v13);
}

uint64_t Searchfoundation_RFColor.alpha.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_RFColor(v1);
  sub_1B8D9207C(v0 + *(v2 + 24), &qword_1EBAD0A98, &qword_1B96D8678);
  OUTLINED_FUNCTION_1_88();
  sub_1B954518C();
  type metadata accessor for Searchfoundation_RFOptionalFloat(0);
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_1B954518C()
{
  OUTLINED_FUNCTION_468();
  v2 = v1(0);
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v0;
}

void (*Searchfoundation_RFColor.alpha.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0A98, &qword_1B96D8678);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Searchfoundation_RFOptionalFloat(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  *(v3 + 10) = *(type metadata accessor for Searchfoundation_RFColor(0) + 24);
  sub_1B8D92024();
  v11 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v11, v12, v7);
  if (v13)
  {
    *v10 = 0;
    v14 = v10 + *(v7 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v15 = OUTLINED_FUNCTION_493();
    OUTLINED_FUNCTION_178(v15, v16, v7);
    if (!v13)
    {
      sub_1B8D9207C(v6, &qword_1EBAD0A98, &qword_1B96D8678);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_88();
    sub_1B954518C();
  }

  return sub_1B9545350;
}

void sub_1B9545350(uint64_t **a1, char a2)
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
    v9 = (*a1)[4];
    sub_1B954546C();
    sub_1B8D9207C(v8 + v3, &qword_1EBAD0A98, &qword_1B96D8678);
    sub_1B954518C();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v7);
    OUTLINED_FUNCTION_7_47();
    sub_1B9544B24();
  }

  else
  {
    sub_1B8D9207C(v8 + v3, &qword_1EBAD0A98, &qword_1B96D8678);
    OUTLINED_FUNCTION_1_88();
    sub_1B954518C();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v7);
  }

  free(v5);
  free(v4);
  free(v6);

  free(v2);
}

uint64_t sub_1B954546C()
{
  OUTLINED_FUNCTION_468();
  v2 = v1(0);
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v0;
}

uint64_t Searchfoundation_RFColor.hasAlpha.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0A98, &qword_1B96D8678);
  OUTLINED_FUNCTION_183(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  v6 = *(type metadata accessor for Searchfoundation_RFColor(v5) + 24);
  sub_1B8D92024();
  type metadata accessor for Searchfoundation_RFOptionalFloat(0);
  v7 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v7, v8, v9);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  sub_1B8D9207C(v0, &qword_1EBAD0A98, &qword_1B96D8678);
  return v11;
}

Swift::Void __swiftcall Searchfoundation_RFColor.clearAlpha()()
{
  v1 = *(type metadata accessor for Searchfoundation_RFColor(0) + 24);
  sub_1B8D9207C(v0 + v1, &qword_1EBAD0A98, &qword_1B96D8678);
  v2 = type metadata accessor for Searchfoundation_RFOptionalFloat(0);

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t Searchfoundation_RFColor.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Searchfoundation_RFColor(0) + 20);
  v4 = sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Searchfoundation_RFColor.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Searchfoundation_RFColor(v2) + 20);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*Searchfoundation_RFColor.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_RFColor(v0) + 20);
  return nullsub_1;
}

BOOL static Searchfoundation_RFColor.OneOf_Value.== infix(_:_:)()
{
  v0 = type metadata accessor for Searchfoundation_RFRGBValue(0);
  v1 = OUTLINED_FUNCTION_59_1(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_62();
  v6 = (v5 - v4);
  v7 = type metadata accessor for Searchfoundation_RFColor.OneOf_Value(0);
  v8 = OUTLINED_FUNCTION_59_1(v7);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v31 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0AA0, &qword_1B96D8680);
  OUTLINED_FUNCTION_183(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_176();
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v31 - v21;
  v23 = &v31 + *(v20 + 56) - v21;
  sub_1B954546C();
  sub_1B954546C();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_6_44();
    sub_1B954546C();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      OUTLINED_FUNCTION_2_73();
      sub_1B954518C();
      if (*v15 == *v6 && v15[1] == v6[1] && v15[2] == v6[2])
      {
        v26 = *(v0 + 28);
        sub_1B964C2B0();
        OUTLINED_FUNCTION_4_60();
        sub_1B8CD3728(v27, v28);
        v29 = sub_1B964C850();
        OUTLINED_FUNCTION_0_106();
        sub_1B9544B24();
        if (v29)
        {
          OUTLINED_FUNCTION_0_106();
          sub_1B9544B24();
          OUTLINED_FUNCTION_3_78();
          sub_1B9544B24();
          return 1;
        }
      }

      else
      {
        OUTLINED_FUNCTION_0_106();
        sub_1B9544B24();
      }

      OUTLINED_FUNCTION_0_106();
      sub_1B9544B24();
      OUTLINED_FUNCTION_3_78();
      sub_1B9544B24();
      return 0;
    }

    OUTLINED_FUNCTION_0_106();
    sub_1B9544B24();
LABEL_6:
    sub_1B8D9207C(v22, &qword_1EBAD0AA0, &qword_1B96D8680);
    return 0;
  }

  OUTLINED_FUNCTION_6_44();
  sub_1B954546C();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    goto LABEL_6;
  }

  v24 = v23[8];
  v25 = sub_1B8D92198(*v13, v13[8], *v23);
  OUTLINED_FUNCTION_3_78();
  sub_1B9544B24();
  return v25;
}

uint64_t static Searchfoundation_RFRGBValue.== infix(_:_:)(float *a1, float *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_468();
  if (*(v4 + 4) != *(v5 + 4) || *(v3 + 8) != *(v2 + 8))
  {
    return 0;
  }

  v6 = *(type metadata accessor for Searchfoundation_RFRGBValue(0) + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_4_60();
  sub_1B8CD3728(v7, v8);
  return sub_1B964C850() & 1;
}

uint64_t Searchfoundation_RFColor.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Searchfoundation_RFColor.OneOf_Value(0);
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
  v3 = type metadata accessor for Searchfoundation_RFColor(0);
  v4 = a1 + *(v3 + 20);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v5 = *(v3 + 24);
  v6 = type metadata accessor for Searchfoundation_RFOptionalFloat(0);

  return __swift_storeEnumTagSinglePayload(a1 + v5, 1, 1, v6);
}

uint64_t Searchfoundation_RFRGBValue.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Searchfoundation_RFRGBValue(0) + 28);
  v4 = sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Searchfoundation_RFRGBValue.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Searchfoundation_RFRGBValue(v2) + 28);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*Searchfoundation_RFRGBValue.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_RFRGBValue(v0) + 28);
  return nullsub_1;
}

uint64_t sub_1B9545CF8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD0A48);
  __swift_project_value_buffer(v0, qword_1EBAD0A48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1B96511A0;
  v4 = v43 + v3;
  v5 = v43 + v3 + v1[14];
  *(v43 + v3) = 0;
  *v5 = "RF_COLOR_NAME_DEFAULT";
  *(v5 + 8) = 21;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "RF_COLOR_NAME_PRIMARY";
  *(v9 + 8) = 21;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "RF_COLOR_NAME_SECONDARY";
  *(v11 + 1) = 23;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "RF_COLOR_NAME_TERTIARY";
  *(v13 + 1) = 22;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "RF_COLOR_NAME_QUATERNARY";
  *(v15 + 1) = 24;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "RF_COLOR_NAME_CLEAR";
  *(v17 + 1) = 19;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "RF_COLOR_NAME_RED";
  *(v19 + 1) = 17;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "RF_COLOR_NAME_GREEN";
  *(v21 + 1) = 19;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 8;
  *v23 = "RF_COLOR_NAME_BLUE";
  *(v23 + 1) = 18;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 9;
  *v25 = "RF_COLOR_NAME_ORANGE";
  *(v25 + 1) = 20;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 10;
  *v27 = "RF_COLOR_NAME_YELLOW";
  *(v27 + 1) = 20;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 11;
  *v29 = "RF_COLOR_NAME_PINK";
  *(v29 + 1) = 18;
  v29[16] = 2;
  v8();
  v30 = (v4 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 12;
  *v31 = "RF_COLOR_NAME_PURPLE";
  *(v31 + 1) = 20;
  v31[16] = 2;
  v8();
  v32 = (v4 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 13;
  *v33 = "RF_COLOR_NAME_BROWN";
  *(v33 + 1) = 19;
  v33[16] = 2;
  v8();
  v34 = (v4 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 14;
  *v35 = "RF_COLOR_NAME_CYAN";
  *(v35 + 1) = 18;
  v35[16] = 2;
  v8();
  v36 = (v4 + 15 * v2);
  v37 = v36 + v1[14];
  *v36 = 15;
  *v37 = "RF_COLOR_NAME_INDIGO";
  *(v37 + 1) = 20;
  v37[16] = 2;
  v8();
  v38 = (v4 + 16 * v2);
  v39 = v38 + v1[14];
  *v38 = 16;
  *v39 = "RF_COLOR_NAME_MINT";
  *(v39 + 1) = 18;
  v39[16] = 2;
  v8();
  v40 = (v4 + 17 * v2);
  v41 = v40 + v1[14];
  *v40 = 17;
  *v41 = "RF_COLOR_NAME_TEAL";
  *(v41 + 1) = 18;
  v41[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t sub_1B95462C4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD0A60);
  __swift_project_value_buffer(v0, qword_1EBAD0A60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "rgb_value";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "name";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "alpha";
  *(v13 + 1) = 5;
  v13[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_RFColor.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v4 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_288();
        sub_1B9546C48();
        break;
      case 2:
        v7 = OUTLINED_FUNCTION_288();
        sub_1B9546A8C(v7, v8);
        break;
      case 1:
        v5 = OUTLINED_FUNCTION_432();
        sub_1B9546594(v5, v6, v2, v1);
        break;
    }
  }

  return result;
}

uint64_t sub_1B9546594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Searchfoundation_RFRGBValue(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0A90, &qword_1B96D8670);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Searchfoundation_RFColor.OneOf_Value(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0B10, &unk_1B96D8BD0);
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
    sub_1B8D9207C(v12, &qword_1EBAD0A90, &qword_1B96D8670);
  }

  else
  {
    sub_1B954518C();
    sub_1B954518C();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B9544B24();
    }

    else
    {
      sub_1B8D9207C(v22, &qword_1EBAD0B10, &unk_1B96D8BD0);
      sub_1B954518C();
      sub_1B954518C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }
  }

  sub_1B8CD3728(&qword_1EBAD0AF0, type metadata accessor for Searchfoundation_RFRGBValue);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAD0B10, &unk_1B96D8BD0);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAD0B10, &unk_1B96D8BD0);
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAD0B10, &unk_1B96D8BD0);
  }

  sub_1B954518C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAD0B10, &unk_1B96D8BD0);
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAD0A90, &qword_1B96D8670);
  sub_1B954518C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B9546A8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0A90, &qword_1B96D8670);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  v13 = 0;
  v14 = 256;
  sub_1B9548680();
  result = sub_1B964C410();
  if (!v2 && (v14 & 0x100) == 0)
  {
    v15 = v13;
    v12 = v14;
    sub_1B8D92024();
    v9 = type metadata accessor for Searchfoundation_RFColor.OneOf_Value(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v9);
    sub_1B8D9207C(v7, &qword_1EBAD0A90, &qword_1B96D8670);
    if (EnumTagSinglePayload != 1)
    {
      sub_1B964C3D0();
    }

    sub_1B8D9207C(a2, &qword_1EBAD0A90, &qword_1B96D8670);
    *a2 = v15;
    *(a2 + 8) = v12 & 1;
    swift_storeEnumTagMultiPayload();
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v9);
  }

  return result;
}

uint64_t sub_1B9546C48()
{
  v0 = *(type metadata accessor for Searchfoundation_RFColor(0) + 24);
  type metadata accessor for Searchfoundation_RFOptionalFloat(0);
  sub_1B8CD3728(&qword_1EBAD0AA8, type metadata accessor for Searchfoundation_RFOptionalFloat);
  return sub_1B964C580();
}

uint64_t Searchfoundation_RFColor.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v32[0] = a2;
  v32[1] = a3;
  v32[3] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0A98, &qword_1B96D8678);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v32 - v9;
  v11 = type metadata accessor for Searchfoundation_RFOptionalFloat(0);
  v12 = OUTLINED_FUNCTION_59_1(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_62();
  v15 = OUTLINED_FUNCTION_177_1();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
  OUTLINED_FUNCTION_183(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v20);
  v22 = v32 - v21;
  sub_1B8D92024();
  v23 = type metadata accessor for Searchfoundation_RFColor.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v22, 1, v23) != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_18_29();
      result = sub_1B95471A4();
      v4 = v3;
      if (v3)
      {
        return result;
      }
    }

    else
    {
      v28 = OUTLINED_FUNCTION_18_29();
      sub_1B9546F90(v28, v29, v30, v31);
      v4 = v3;
      OUTLINED_FUNCTION_3_78();
      result = sub_1B9544B24();
      if (v3)
      {
        return result;
      }
    }
  }

  v24 = type metadata accessor for Searchfoundation_RFColor(0);
  v25 = *(v24 + 24);
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAD0A98, &qword_1B96D8678);
  }

  else
  {
    OUTLINED_FUNCTION_1_88();
    sub_1B954518C();
    sub_1B8CD3728(&qword_1EBAD0AA8, type metadata accessor for Searchfoundation_RFOptionalFloat);
    sub_1B964C740();
    OUTLINED_FUNCTION_7_47();
    result = sub_1B9544B24();
    if (v4)
    {
      return result;
    }
  }

  v27 = *(v24 + 20);
  return OUTLINED_FUNCTION_8_1();
}

uint64_t sub_1B9546F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0A90, &qword_1B96D8670);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Searchfoundation_RFRGBValue(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8D92024();
  v10 = type metadata accessor for Searchfoundation_RFColor.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAD0A90, &qword_1B96D8670);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1B954518C();
      sub_1B8CD3728(&qword_1EBAD0AF0, type metadata accessor for Searchfoundation_RFRGBValue);
      sub_1B964C740();
      return sub_1B9544B24();
    }

    result = sub_1B9544B24();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B95471A4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0A90, &qword_1B96D8670);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  sub_1B8D92024();
  v4 = type metadata accessor for Searchfoundation_RFColor.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    result = sub_1B8D9207C(v3, &qword_1EBAD0A90, &qword_1B96D8670);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v5 = v3[8];
      v7 = *v3;
      v8 = v5;
      sub_1B9548680();
      return sub_1B964C680();
    }

    result = sub_1B9544B24();
  }

  __break(1u);
  return result;
}

uint64_t static Searchfoundation_RFColor.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v60 = type metadata accessor for Searchfoundation_RFOptionalFloat(0);
  v5 = OUTLINED_FUNCTION_59_1(v60);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_62();
  v57 = (v9 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0A98, &qword_1B96D8678);
  OUTLINED_FUNCTION_183(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  v58 = (&v57 - v14);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0AB0, &qword_1B96D8688);
  OUTLINED_FUNCTION_59_1(v59);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v17);
  v18 = OUTLINED_FUNCTION_22_3();
  v19 = type metadata accessor for Searchfoundation_RFColor.OneOf_Value(v18);
  v20 = OUTLINED_FUNCTION_59_1(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_62();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0A90, &qword_1B96D8670);
  OUTLINED_FUNCTION_183(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0AB8, &qword_1B96D8690);
  OUTLINED_FUNCTION_183(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_176();
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = &v57 - v32;
  v34 = *(v31 + 56);
  v61 = a1;
  sub_1B8D92024();
  v62 = a2;
  sub_1B8D92024();
  OUTLINED_FUNCTION_48(v33);
  if (v35)
  {
    OUTLINED_FUNCTION_48(&v33[v34]);
    if (v35)
    {
      sub_1B8D9207C(v33, &qword_1EBAD0A90, &qword_1B96D8670);
      goto LABEL_11;
    }

LABEL_9:
    v36 = &qword_1EBAD0AB8;
    v37 = &qword_1B96D8690;
    v38 = v33;
LABEL_21:
    sub_1B8D9207C(v38, v36, v37);
    goto LABEL_22;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_48(&v33[v34]);
  if (v35)
  {
    OUTLINED_FUNCTION_3_78();
    sub_1B9544B24();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_6_44();
  sub_1B954518C();
  v39 = static Searchfoundation_RFColor.OneOf_Value.== infix(_:_:)();
  sub_1B9544B24();
  sub_1B9544B24();
  sub_1B8D9207C(v33, &qword_1EBAD0A90, &qword_1B96D8670);
  if (!v39)
  {
    goto LABEL_22;
  }

LABEL_11:
  v40 = type metadata accessor for Searchfoundation_RFColor(0);
  v41 = *(v40 + 24);
  v42 = *(v59 + 48);
  sub_1B8D92024();
  sub_1B8D92024();
  v43 = OUTLINED_FUNCTION_493();
  v44 = v60;
  OUTLINED_FUNCTION_178(v43, v45, v60);
  if (v35)
  {
    OUTLINED_FUNCTION_48(v2 + v42);
    if (v35)
    {
      sub_1B8D9207C(v2, &qword_1EBAD0A98, &qword_1B96D8678);
LABEL_26:
      v54 = *(v40 + 20);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_4_60();
      sub_1B8CD3728(v55, v56);
      v48 = sub_1B964C850();
      return v48 & 1;
    }

    goto LABEL_19;
  }

  v46 = v58;
  sub_1B8D92024();
  OUTLINED_FUNCTION_48(v2 + v42);
  if (v47)
  {
    OUTLINED_FUNCTION_7_47();
    sub_1B9544B24();
LABEL_19:
    v36 = &qword_1EBAD0AB0;
    v37 = &qword_1B96D8688;
LABEL_20:
    v38 = v2;
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_1_88();
  v50 = v57;
  sub_1B954518C();
  if (*v46 != *v50)
  {
    sub_1B9544B24();
    sub_1B9544B24();
    v36 = &qword_1EBAD0A98;
    v37 = &qword_1B96D8678;
    goto LABEL_20;
  }

  v51 = *(v44 + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_4_60();
  sub_1B8CD3728(v52, v53);
  LOBYTE(v51) = sub_1B964C850();
  sub_1B9544B24();
  sub_1B9544B24();
  sub_1B8D9207C(v2, &qword_1EBAD0A98, &qword_1B96D8678);
  if (v51)
  {
    goto LABEL_26;
  }

LABEL_22:
  v48 = 0;
  return v48 & 1;
}

uint64_t sub_1B95478D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3728(&qword_1EBAD0B08, type metadata accessor for Searchfoundation_RFColor);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9547958(uint64_t a1)
{
  v2 = sub_1B8CD3728(&qword_1EBAB5540, type metadata accessor for Searchfoundation_RFColor);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B95479C8()
{
  sub_1B8CD3728(&qword_1EBAB5540, type metadata accessor for Searchfoundation_RFColor);

  return sub_1B964C5D0();
}

uint64_t sub_1B9547A64()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD0A78);
  __swift_project_value_buffer(v0, qword_1EBAD0A78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "red";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "green";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "blue";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_RFRGBValue.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2 || result == 1)
    {
      sub_1B964C490();
    }
  }

  return result;
}

uint64_t Searchfoundation_RFRGBValue.traverse<A>(visitor:)()
{
  if (*v0 == 0.0 || (result = OUTLINED_FUNCTION_23_3(), !v1))
  {
    if (v0[1] == 0.0 || (result = OUTLINED_FUNCTION_23_3(), !v1))
    {
      if (v0[2] == 0.0 || (result = OUTLINED_FUNCTION_23_3(), !v1))
      {
        v2 = *(type metadata accessor for Searchfoundation_RFRGBValue(0) + 28);
        return OUTLINED_FUNCTION_8_1();
      }
    }
  }

  return result;
}

uint64_t sub_1B9547E08(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1B964CA70();
  a1(0);
  sub_1B8CD3728(a2, a3);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B9547EEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3728(&qword_1EBAD0B00, type metadata accessor for Searchfoundation_RFRGBValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9547F6C(uint64_t a1)
{
  v2 = sub_1B8CD3728(&qword_1EBAD0AF0, type metadata accessor for Searchfoundation_RFRGBValue);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9547FDC()
{
  sub_1B8CD3728(&qword_1EBAD0AF0, type metadata accessor for Searchfoundation_RFRGBValue);

  return sub_1B964C5D0();
}

unint64_t sub_1B9548060()
{
  result = qword_1EBAB5350;
  if (!qword_1EBAB5350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB5350);
  }

  return result;
}

unint64_t sub_1B95480B8()
{
  result = qword_1EBAB5340;
  if (!qword_1EBAB5340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB5340);
  }

  return result;
}

unint64_t sub_1B9548110()
{
  result = qword_1EBAB5348;
  if (!qword_1EBAB5348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB5348);
  }

  return result;
}

unint64_t sub_1B9548168()
{
  result = qword_1EBAD0AD0;
  if (!qword_1EBAD0AD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAD0AD8, &qword_1B96D8780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD0AD0);
  }

  return result;
}

void sub_1B9548444()
{
  sub_1B9548518(319, &qword_1ED9F2C88, type metadata accessor for Searchfoundation_RFColor.OneOf_Value);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      sub_1B9548518(319, &qword_1ED9F1C48, type metadata accessor for Searchfoundation_RFOptionalFloat);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B9548518(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B964C930();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1B954856C()
{
  result = type metadata accessor for Searchfoundation_RFRGBValue(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B95485FC()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B9548680()
{
  result = qword_1EBAB5358;
  if (!qword_1EBAB5358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB5358);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_18_29()
{
  result = v0;
  v3 = *(v1 - 72);
  v5 = *(v1 - 96);
  v4 = *(v1 - 88);
  return result;
}

unint64_t Searchfoundation_RFVibrancy.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B95487DC@<X0>(uint64_t *a1@<X8>)
{
  result = Searchfoundation_RFVibrancy.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9548810(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9548DB0();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Searchfoundation_RFVibrancy.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EBAD0B18 = a1;
}

uint64_t sub_1B9548958@<X0>(uint64_t *a1@<X8>)
{
  result = static Searchfoundation_RFVibrancy.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9548980()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD0B20);
  __swift_project_value_buffer(v0, qword_1EBAD0B20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "RF_VIBRANCY_DEFAULT";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "RF_VIBRANCY_OFF";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "RF_VIBRANCY_ON";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t static Searchfoundation_RFVibrancy._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB87A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBAD0B20);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1B9548C30()
{
  result = qword_1EBAD0B38;
  if (!qword_1EBAD0B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD0B38);
  }

  return result;
}

unint64_t sub_1B9548C88()
{
  result = qword_1EBAD0B40;
  if (!qword_1EBAD0B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD0B40);
  }

  return result;
}

unint64_t sub_1B9548CE0()
{
  result = qword_1EBAD0B48;
  if (!qword_1EBAD0B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD0B48);
  }

  return result;
}

unint64_t sub_1B9548D38()
{
  result = qword_1EBAD0B50;
  if (!qword_1EBAD0B50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAD0B58, &qword_1B96D8CC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD0B50);
  }

  return result;
}

unint64_t sub_1B9548DB0()
{
  result = qword_1EBAD0B60;
  if (!qword_1EBAD0B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD0B60);
  }

  return result;
}

uint64_t Searchfoundation_RFDisambiguationTitleCardSection.init()()
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v0 = type metadata accessor for Searchfoundation_RFDisambiguationTitleCardSection();
  v1 = *(v0 + 20);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = *(v0 + 24);
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t type metadata accessor for Searchfoundation_RFDisambiguationTitleCardSection()
{
  result = qword_1ED9D55A8;
  if (!qword_1ED9D55A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Searchfoundation_RFDisambiguationTitleCardSection.text1.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_183(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_6_45();
  v6 = OUTLINED_FUNCTION_115(*(v5 + 20));
  sub_1B8DD9078(v6, v7, &qword_1EBAB8DF8, &qword_1B96B9A80);
  v8 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  v9 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v9, v10, v8);
  if (v11)
  {
    OUTLINED_FUNCTION_465_0(MEMORY[0x1E69E7CC0]);
    v12 = OUTLINED_FUNCTION_493();
    result = OUTLINED_FUNCTION_178(v12, v13, v8);
    if (!v11)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_89();
    v14 = OUTLINED_FUNCTION_182();
    return sub_1B95493B8(v14, v15);
  }

  return result;
}

uint64_t Searchfoundation_RFDisambiguationTitleCardSection.text1.setter()
{
  OUTLINED_FUNCTION_313();
  v2 = *(type metadata accessor for Searchfoundation_RFDisambiguationTitleCardSection() + 20);
  sub_1B8D9207C(v1 + v2, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_1_89();
  sub_1B95493B8(v0, v1 + v2);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void (*Searchfoundation_RFDisambiguationTitleCardSection.text1.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Searchfoundation_RFDisambiguationTitleCardSection() + 20);
  *(v3 + 10) = v11;
  v12 = OUTLINED_FUNCTION_115(v11);
  sub_1B8DD9078(v12, v13, &qword_1EBAB8DF8, &qword_1B96B9A80);
  v14 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v14, v15, v7);
  if (v16)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    v17 = OUTLINED_FUNCTION_493();
    OUTLINED_FUNCTION_178(v17, v18, v7);
    if (!v16)
    {
      sub_1B8D9207C(v6, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_89();
    sub_1B95493B8(v6, v10);
  }

  return sub_1B9549198;
}

uint64_t Searchfoundation_RFDisambiguationTitleCardSection.hasText1.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_183(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_6_45();
  v5 = OUTLINED_FUNCTION_115(*(v4 + 20));
  sub_1B8DD9078(v5, v6, &qword_1EBAB8DF8, &qword_1B96B9A80);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  v7 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v7, v8, v9);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = OUTLINED_FUNCTION_182();
  sub_1B8D9207C(v12, v13, &qword_1B96B9A80);
  return v11;
}

Swift::Void __swiftcall Searchfoundation_RFDisambiguationTitleCardSection.clearText1()()
{
  v1 = type metadata accessor for Searchfoundation_RFDisambiguationTitleCardSection();
  sub_1B8D9207C(v0 + *(v1 + 20), &qword_1EBAB8DF8, &qword_1B96B9A80);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Searchfoundation_RFDisambiguationTitleCardSection.thumbnail.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_183(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_6_45();
  v6 = OUTLINED_FUNCTION_115(*(v5 + 24));
  sub_1B8DD9078(v6, v7, &qword_1EBACC708, &unk_1B96D92F0);
  v8 = type metadata accessor for Searchfoundation_RFVisualProperty(0);
  v9 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v9, v10, v8);
  if (v11)
  {
    OUTLINED_FUNCTION_465_0(MEMORY[0x1E69E7CC0]);
    v12 = OUTLINED_FUNCTION_493();
    result = OUTLINED_FUNCTION_178(v12, v13, v8);
    if (!v11)
    {
      return sub_1B8D9207C(v0, &qword_1EBACC708, &unk_1B96D92F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_107();
    v14 = OUTLINED_FUNCTION_182();
    return sub_1B95493B8(v14, v15);
  }

  return result;
}

uint64_t sub_1B95493B8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_28_1();
  v5 = v4(v3);
  OUTLINED_FUNCTION_59_1(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_432();
  v9(v8);
  return a2;
}

uint64_t sub_1B9549410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v9 = a5(0);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v16 - v13;
  sub_1B95497C0(a1, &v16 - v13);
  return a7(v14);
}

uint64_t Searchfoundation_RFDisambiguationTitleCardSection.thumbnail.setter()
{
  OUTLINED_FUNCTION_313();
  v2 = *(type metadata accessor for Searchfoundation_RFDisambiguationTitleCardSection() + 24);
  sub_1B8D9207C(v1 + v2, &qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_0_107();
  sub_1B95493B8(v0, v1 + v2);
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void (*Searchfoundation_RFDisambiguationTitleCardSection.thumbnail.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Searchfoundation_RFVisualProperty(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Searchfoundation_RFDisambiguationTitleCardSection() + 24);
  *(v3 + 10) = v11;
  v12 = OUTLINED_FUNCTION_115(v11);
  sub_1B8DD9078(v12, v13, &qword_1EBACC708, &unk_1B96D92F0);
  v14 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v14, v15, v7);
  if (v16)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    v17 = OUTLINED_FUNCTION_493();
    OUTLINED_FUNCTION_178(v17, v18, v7);
    if (!v16)
    {
      sub_1B8D9207C(v6, &qword_1EBACC708, &unk_1B96D92F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_107();
    sub_1B95493B8(v6, v10);
  }

  return sub_1B954968C;
}

void sub_1B95496B4(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4)
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
    sub_1B95497C0((*a1)[4], v8);
    sub_1B8D9207C(v12 + v7, a3, a4);
    sub_1B95493B8(v8, v12 + v7);
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v11);
    sub_1B9549818();
  }

  else
  {
    sub_1B8D9207C(v12 + v7, a3, a4);
    sub_1B95493B8(v9, v12 + v7);
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v11);
  }

  free(v9);
  free(v8);
  free(v10);

  free(v6);
}

uint64_t sub_1B95497C0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_28_1();
  v5 = v4(v3);
  OUTLINED_FUNCTION_59_1(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_432();
  v9(v8);
  return a2;
}

uint64_t sub_1B9549818()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t Searchfoundation_RFDisambiguationTitleCardSection.hasThumbnail.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_183(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_6_45();
  v5 = OUTLINED_FUNCTION_115(*(v4 + 24));
  sub_1B8DD9078(v5, v6, &qword_1EBACC708, &unk_1B96D92F0);
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  v7 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v7, v8, v9);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = OUTLINED_FUNCTION_182();
  sub_1B8D9207C(v12, v13, &unk_1B96D92F0);
  return v11;
}

Swift::Void __swiftcall Searchfoundation_RFDisambiguationTitleCardSection.clearThumbnail()()
{
  v1 = type metadata accessor for Searchfoundation_RFDisambiguationTitleCardSection();
  sub_1B8D9207C(v0 + *(v1 + 24), &qword_1EBACC708, &unk_1B96D92F0);
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Searchfoundation_RFDisambiguationTitleCardSection.unknownFields.getter()
{
  v0 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_432();

  return v4(v3);
}

uint64_t Searchfoundation_RFDisambiguationTitleCardSection.unknownFields.setter()
{
  OUTLINED_FUNCTION_313();
  v2 = sub_1B964C2B0();
  v3 = OUTLINED_FUNCTION_59_1(v2);
  v5 = *(v4 + 40);

  return v5(v1, v0, v3);
}

uint64_t sub_1B9549A6C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB3E38);
  __swift_project_value_buffer(v0, qword_1EBAB3E38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "text_1";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "thumbnail";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v9();
  return sub_1B964C760();
}

uint64_t static Searchfoundation_RFDisambiguationTitleCardSection._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB3E30 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBAB3E38);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Searchfoundation_RFDisambiguationTitleCardSection.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_9();
      sub_1B9549E0C();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_9();
      sub_1B9549D58();
    }
  }

  return result;
}

uint64_t sub_1B9549D58()
{
  v0 = *(type metadata accessor for Searchfoundation_RFDisambiguationTitleCardSection() + 20);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  sub_1B954AD04(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty);
  return sub_1B964C580();
}

uint64_t sub_1B9549E0C()
{
  v0 = *(type metadata accessor for Searchfoundation_RFDisambiguationTitleCardSection() + 24);
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  sub_1B954AD04(&qword_1ED9D2A40, type metadata accessor for Searchfoundation_RFVisualProperty);
  return sub_1B964C580();
}

uint64_t Searchfoundation_RFDisambiguationTitleCardSection.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  v39 = a3;
  v37 = a1;
  v38 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_183(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_156();
  v35 = type metadata accessor for Searchfoundation_RFVisualProperty(v11);
  v12 = OUTLINED_FUNCTION_59_1(v35);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_62();
  v34 = v16 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_183(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v33 - v21;
  v23 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  v24 = OUTLINED_FUNCTION_59_1(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_62();
  v29 = v28 - v27;
  v30 = type metadata accessor for Searchfoundation_RFDisambiguationTitleCardSection();
  v31 = *(v30 + 20);
  v36 = v6;
  sub_1B8DD9078(v6 + v31, v22, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if (__swift_getEnumTagSinglePayload(v22, 1, v23) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    sub_1B95493B8(v22, v29);
    sub_1B954AD04(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty);
    sub_1B964C740();
    result = sub_1B9549818();
    if (v4)
    {
      return result;
    }
  }

  sub_1B8DD9078(v36 + *(v30 + 24), v5, &qword_1EBACC708, &unk_1B96D92F0);
  if (__swift_getEnumTagSinglePayload(v5, 1, v35) == 1)
  {
    sub_1B8D9207C(v5, &qword_1EBACC708, &unk_1B96D92F0);
  }

  else
  {
    sub_1B95493B8(v5, v34);
    sub_1B954AD04(&qword_1ED9D2A40, type metadata accessor for Searchfoundation_RFVisualProperty);
    sub_1B964C740();
    result = sub_1B9549818();
    if (v4)
    {
      return result;
    }
  }

  return sub_1B964C290();
}

uint64_t static Searchfoundation_RFDisambiguationTitleCardSection.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v70 = type metadata accessor for Searchfoundation_RFVisualProperty(0);
  v5 = OUTLINED_FUNCTION_59_1(v70);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_62();
  v66 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_183(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  v67 = &v66 - v14;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACCC18, &unk_1B96D8D70);
  OUTLINED_FUNCTION_59_1(v69);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v17);
  v71 = &v66 - v18;
  v19 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  v20 = OUTLINED_FUNCTION_59_1(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_62();
  v25 = v24 - v23;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_183(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v66 - v30;
  v32 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E00, &qword_1B964D600) - 8);
  v33 = *(*v32 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_156();
  v68 = type metadata accessor for Searchfoundation_RFDisambiguationTitleCardSection();
  v35 = *(v68 + 20);
  v36 = v32[14];
  v72 = a1;
  sub_1B8DD9078(a1 + v35, v2, &qword_1EBAB8DF8, &qword_1B96B9A80);
  v73 = a2;
  sub_1B8DD9078(a2 + v35, v2 + v36, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_178(v2, 1, v19);
  if (v44)
  {
    OUTLINED_FUNCTION_178(v2 + v36, 1, v19);
    if (v44)
    {
      sub_1B8D9207C(v2, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_6;
    }

LABEL_15:
    v45 = &qword_1EBAB8E00;
    v46 = &qword_1B964D600;
LABEL_19:
    v50 = v2;
LABEL_28:
    sub_1B8D9207C(v50, v45, v46);
LABEL_29:
    v43 = 0;
    return v43 & 1;
  }

  sub_1B8DD9078(v2, v31, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_178(v2 + v36, 1, v19);
  if (v44)
  {
    sub_1B9549818();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_1_89();
  sub_1B95493B8(v2 + v36, v25);
  v47 = *v31;
  v48 = *v25;
  sub_1B8D5BA08();
  if ((v49 & 1) == 0 || v31[8] != *(v25 + 8))
  {
    sub_1B9549818();
    OUTLINED_FUNCTION_432();
    sub_1B9549818();
    v45 = &qword_1EBAB8DF8;
    v46 = &qword_1B96B9A80;
    goto LABEL_19;
  }

  v59 = *(v19 + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_3_79();
  sub_1B954AD04(v60, v61);
  v62 = sub_1B964C850();
  sub_1B9549818();
  sub_1B9549818();
  sub_1B8D9207C(v2, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v62 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_6:
  v37 = *(v68 + 24);
  v38 = *(v69 + 48);
  v39 = v71;
  sub_1B8DD9078(v72 + v37, v71, &qword_1EBACC708, &unk_1B96D92F0);
  sub_1B8DD9078(v73 + v37, v39 + v38, &qword_1EBACC708, &unk_1B96D92F0);
  v40 = v70;
  OUTLINED_FUNCTION_178(v39, 1, v70);
  if (v44)
  {
    OUTLINED_FUNCTION_178(v39 + v38, 1, v40);
    if (v44)
    {
      sub_1B8D9207C(v39, &qword_1EBACC708, &unk_1B96D92F0);
      goto LABEL_11;
    }

LABEL_23:
    v45 = &qword_1EBACCC18;
    v46 = &unk_1B96D8D70;
LABEL_27:
    v50 = v39;
    goto LABEL_28;
  }

  v51 = v67;
  sub_1B8DD9078(v39, v67, &qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_178(v39 + v38, 1, v40);
  if (v52)
  {
    sub_1B9549818();
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_0_107();
  v53 = v39 + v38;
  v54 = v66;
  sub_1B95493B8(v53, v66);
  v55 = *v51;
  v56 = *v54;
  sub_1B8D5D124();
  if ((v57 & 1) == 0 || *(v51 + 8) != *(v54 + 8))
  {
    sub_1B9549818();
    OUTLINED_FUNCTION_182();
    sub_1B9549818();
    v45 = &qword_1EBACC708;
    v46 = &unk_1B96D92F0;
    goto LABEL_27;
  }

  v63 = *(v40 + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_3_79();
  sub_1B954AD04(v64, v65);
  LOBYTE(v63) = sub_1B964C850();
  sub_1B9549818();
  sub_1B9549818();
  sub_1B8D9207C(v39, &qword_1EBACC708, &unk_1B96D92F0);
  if ((v63 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_11:
  sub_1B964C2B0();
  OUTLINED_FUNCTION_3_79();
  sub_1B954AD04(v41, v42);
  v43 = sub_1B964C850();
  return v43 & 1;
}

uint64_t Searchfoundation_RFDisambiguationTitleCardSection.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Searchfoundation_RFDisambiguationTitleCardSection();
  sub_1B954AD04(&qword_1EBAD0B68, type metadata accessor for Searchfoundation_RFDisambiguationTitleCardSection);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B954A924(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B954AD04(&qword_1EBAD0B78, type metadata accessor for Searchfoundation_RFDisambiguationTitleCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B954A9A4(uint64_t a1)
{
  v2 = sub_1B954AD04(&qword_1ED9C9510, type metadata accessor for Searchfoundation_RFDisambiguationTitleCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B954AA14()
{
  sub_1B954AD04(&qword_1ED9C9510, type metadata accessor for Searchfoundation_RFDisambiguationTitleCardSection);

  return sub_1B964C5D0();
}

void sub_1B954ABDC()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B954ACB0(319, &qword_1ED9F1E00, type metadata accessor for Searchfoundation_RFTextProperty);
    if (v1 <= 0x3F)
    {
      sub_1B954ACB0(319, &qword_1ED9F1BC0, type metadata accessor for Searchfoundation_RFVisualProperty);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B954ACB0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B964C930();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1B954AD04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_6_45()
{

  return type metadata accessor for Searchfoundation_RFDisambiguationTitleCardSection();
}

uint64_t Searchfoundation_RFExpandableStandardCardSection.init()()
{
  v1 = OUTLINED_FUNCTION_27();
  type metadata accessor for Searchfoundation_RFExpandableStandardCardSection.OneOf_PrimaryComponent(v1);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = type metadata accessor for Searchfoundation_RFExpandableStandardCardSection(0);
  *(v0 + *(v6 + 20)) = MEMORY[0x1E69E7CC0];
  v7 = v0 + *(v6 + 24);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Searchfoundation_RFExpandableStandardCardSection.summaryItemStandardCardSection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_177_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_50(v9, v29);
  v10 = type metadata accessor for Searchfoundation_RFExpandableStandardCardSection.OneOf_PrimaryComponent(0);
  if (__swift_getEnumTagSinglePayload(v1, 1, v10) == 1)
  {
    sub_1B8D9207C(v1, &qword_1EBAD0BB0, &qword_1B96D8F40);
    v11 = MEMORY[0x1E69E7CC0];
    *a1 = MEMORY[0x1E69E7CC0];
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    v12 = type metadata accessor for Searchfoundation_RFSummaryItemStandardCardSection(0);
    v13 = a1 + v12[7];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v14 = v12[8];
    v15 = type metadata accessor for Searchfoundation_RFTextProperty(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v15);
    v19 = v12[9];
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v15);
    v23 = v12[10];
    type metadata accessor for Searchfoundation_RFVisualProperty(0);
    OUTLINED_FUNCTION_83();
    return __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
  }

  else
  {
    OUTLINED_FUNCTION_0_108();
    OUTLINED_FUNCTION_288();
    return sub_1B954B83C();
  }
}

uint64_t Searchfoundation_RFExpandableStandardCardSection.summaryItemStandardCardSection.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAD0BB0, &qword_1B96D8F40);
  OUTLINED_FUNCTION_0_108();
  OUTLINED_FUNCTION_432();
  sub_1B954B83C();
  type metadata accessor for Searchfoundation_RFExpandableStandardCardSection.OneOf_PrimaryComponent(0);
  OUTLINED_FUNCTION_231();
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void (*Searchfoundation_RFExpandableStandardCardSection.summaryItemStandardCardSection.modify())(uint64_t **a1, char a2)
{
  v2 = OUTLINED_FUNCTION_25_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  v10 = type metadata accessor for Searchfoundation_RFSummaryItemStandardCardSection(v9);
  OUTLINED_FUNCTION_59_1(v10);
  v12 = *(v11 + 64);
  *(v1 + 16) = __swift_coroFrameAllocStub(v12);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_10_42(v13);
  v14 = type metadata accessor for Searchfoundation_RFExpandableStandardCardSection.OneOf_PrimaryComponent(0);
  v15 = OUTLINED_FUNCTION_28_23(v14);
  if (__swift_getEnumTagSinglePayload(v15, v16, v17) == 1)
  {
    sub_1B8D9207C(v0, &qword_1EBAD0BB0, &qword_1B96D8F40);
    v18 = MEMORY[0x1E69E7CC0];
    *v12 = MEMORY[0x1E69E7CC0];
    *(v12 + 8) = v18;
    *(v12 + 16) = 0;
    v19 = v12 + v10[7];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v20 = v10[8];
    v21 = type metadata accessor for Searchfoundation_RFTextProperty(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v21);
    v25 = v10[9];
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v26, v27, v28, v21);
    v29 = v10[10];
    type metadata accessor for Searchfoundation_RFVisualProperty(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
  }

  else
  {
    OUTLINED_FUNCTION_0_108();
    OUTLINED_FUNCTION_128();
    sub_1B954B83C();
  }

  return sub_1B954B210;
}

void sub_1B954B210(uint64_t **a1, char a2)
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
    sub_1B954B634();
    sub_1B8D9207C(v7, &qword_1EBAD0BB0, &qword_1B96D8F40);
    OUTLINED_FUNCTION_0_108();
    sub_1B954B83C();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v4);
    OUTLINED_FUNCTION_13_34();
    sub_1B954B318();
  }

  else
  {
    sub_1B8D9207C(**a1, &qword_1EBAD0BB0, &qword_1B96D8F40);
    OUTLINED_FUNCTION_0_108();
    sub_1B954B83C();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v4);
  }

  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

uint64_t sub_1B954B318()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t Searchfoundation_RFExpandableStandardCardSection.expandingComponentContent.getter()
{
  v1 = *(v0 + *(type metadata accessor for Searchfoundation_RFExpandableStandardCardSection(0) + 20));
}

uint64_t Searchfoundation_RFExpandableStandardCardSection.expandingComponentContent.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Searchfoundation_RFExpandableStandardCardSection(v2) + 20);
  v4 = *(v1 + v3);

  *(v1 + v3) = v0;
  return result;
}

uint64_t (*Searchfoundation_RFExpandableStandardCardSection.expandingComponentContent.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_RFExpandableStandardCardSection(v0) + 20);
  return nullsub_1;
}

uint64_t Searchfoundation_RFExpandableStandardCardSection.unknownFields.getter()
{
  v2 = OUTLINED_FUNCTION_27();
  v3 = *(type metadata accessor for Searchfoundation_RFExpandableStandardCardSection(v2) + 24);
  v4 = sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 16);

  return v7(v0, v1 + v3, v5);
}

uint64_t Searchfoundation_RFExpandableStandardCardSection.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Searchfoundation_RFExpandableStandardCardSection(v2) + 24);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*Searchfoundation_RFExpandableStandardCardSection.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_RFExpandableStandardCardSection(v0) + 24);
  return nullsub_1;
}

uint64_t static Searchfoundation_RFExpandableStandardCardSection.OneOf_PrimaryComponent.== infix(_:_:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0BB8, &qword_1B96D8F48);
  OUTLINED_FUNCTION_183(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_238_0();
  v5 = *(v4 + 56);
  sub_1B954B634();
  sub_1B954B634();
  static Searchfoundation_RFSummaryItemStandardCardSection.== infix(_:_:)();
  v7 = v6;
  sub_1B954B318();
  sub_1B954B318();
  return v7 & 1;
}

uint64_t sub_1B954B634()
{
  v1 = OUTLINED_FUNCTION_280();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_432();
  v7(v6);
  return v0;
}

uint64_t Searchfoundation_RFExpandingComponentContent.longItemStandardCardSection.getter@<X0>(_WORD *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_177_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_50(v9, v20);
  OUTLINED_FUNCTION_38_13();
  if (v10)
  {
    sub_1B8D9207C(v1, &qword_1EBAB8E10, &qword_1B964D610);
LABEL_6:
    *a1 = 0;
    v12 = type metadata accessor for Searchfoundation_RFLongItemStandardCardSection();
    v13 = a1 + *(v12 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v14 = *(v12 + 28);
    type metadata accessor for Searchfoundation_RFTextProperty(0);
    OUTLINED_FUNCTION_83();
    return __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_1B954B318();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_4_61();
  OUTLINED_FUNCTION_288();
  return sub_1B954B83C();
}

uint64_t sub_1B954B83C()
{
  v1 = OUTLINED_FUNCTION_280();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_432();
  v7(v6);
  return v0;
}

uint64_t sub_1B954B890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = a5(0);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_177_1();
  sub_1B954B634();
  return a7(v7);
}

void (*Searchfoundation_RFExpandingComponentContent.longItemStandardCardSection.modify())()
{
  v2 = OUTLINED_FUNCTION_25_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_85(v8);
  v9 = type metadata accessor for Searchfoundation_RFLongItemStandardCardSection();
  OUTLINED_FUNCTION_59_1(v9);
  v11 = *(v10 + 64);
  *(v1 + 16) = __swift_coroFrameAllocStub(v11);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_10_42(v12);
  v13 = type metadata accessor for Searchfoundation_RFExpandingComponentContent.OneOf_Value(0);
  v14 = OUTLINED_FUNCTION_28_23(v13);
  if (__swift_getEnumTagSinglePayload(v14, v15, v13) == 1)
  {
    sub_1B8D9207C(v0, &qword_1EBAB8E10, &qword_1B964D610);
  }

  else
  {
    OUTLINED_FUNCTION_177_1();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      OUTLINED_FUNCTION_4_61();
      OUTLINED_FUNCTION_128();
      sub_1B954B83C();
      return sub_1B954BAAC;
    }

    sub_1B954B318();
  }

  *v11 = 0;
  v16 = v11 + *(v9 + 24);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v17 = *(v9 + 28);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  return sub_1B954BAAC;
}

uint64_t Searchfoundation_RFExpandingComponentContent.referenceFootnoteCardSection.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_177_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_50(v9, v32);
  OUTLINED_FUNCTION_38_13();
  if (v10)
  {
    sub_1B8D9207C(v1, &qword_1EBAB8E10, &qword_1B964D610);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_3_80();
      OUTLINED_FUNCTION_288();
      return sub_1B954B83C();
    }

    sub_1B954B318();
  }

  *a1 = 0;
  v13 = type metadata accessor for Searchfoundation_RFReferenceFootnoteCardSection(0);
  v14 = &a1[v13[5]];
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v15 = v13[6];
  v16 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v16);
  v20 = v13[7];
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v16);
  v24 = v13[8];
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v16);
  v28 = v13[9];
  OUTLINED_FUNCTION_83();
  return __swift_storeEnumTagSinglePayload(v29, v30, v31, v16);
}

uint64_t sub_1B954BC60()
{
  sub_1B8D9207C(v0, &qword_1EBAB8E10, &qword_1B964D610);
  OUTLINED_FUNCTION_128();
  sub_1B954B83C();
  v1 = type metadata accessor for Searchfoundation_RFExpandingComponentContent.OneOf_Value(0);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
}

void (*Searchfoundation_RFExpandingComponentContent.referenceFootnoteCardSection.modify())()
{
  v2 = OUTLINED_FUNCTION_25_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  v10 = type metadata accessor for Searchfoundation_RFReferenceFootnoteCardSection(v9);
  OUTLINED_FUNCTION_59_1(v10);
  v12 = *(v11 + 64);
  *(v1 + 16) = __swift_coroFrameAllocStub(v12);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_10_42(v13);
  v14 = type metadata accessor for Searchfoundation_RFExpandingComponentContent.OneOf_Value(0);
  v15 = OUTLINED_FUNCTION_28_23(v14);
  if (__swift_getEnumTagSinglePayload(v15, v16, v14) == 1)
  {
    sub_1B8D9207C(v0, &qword_1EBAB8E10, &qword_1B964D610);
LABEL_6:
    *v12 = 0;
    v17 = &v12[v10[5]];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v18 = v10[6];
    v19 = type metadata accessor for Searchfoundation_RFTextProperty(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v19);
    v23 = v10[7];
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v19);
    v27 = v10[8];
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v28, v29, v30, v19);
    v31 = v10[9];
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v32, v33, v34, v19);
    return sub_1B954BE9C;
  }

  OUTLINED_FUNCTION_177_1();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B954B318();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_3_80();
  OUTLINED_FUNCTION_128();
  sub_1B954B83C();
  return sub_1B954BE9C;
}

void sub_1B954BEE0()
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
    sub_1B954B634();
    sub_1B8D9207C(v5, &qword_1EBAB8E10, &qword_1B964D610);
    sub_1B954B83C();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v7, v8, v9, v2);
    sub_1B954B318();
  }

  else
  {
    sub_1B8D9207C(**v0, &qword_1EBAB8E10, &qword_1B964D610);
    sub_1B954B83C();
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

uint64_t Searchfoundation_RFExpandingComponentContent.unknownFields.getter()
{
  v2 = OUTLINED_FUNCTION_27();
  v3 = *(type metadata accessor for Searchfoundation_RFExpandingComponentContent(v2) + 20);
  v4 = sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 16);

  return v7(v0, v1 + v3, v5);
}

uint64_t Searchfoundation_RFExpandingComponentContent.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Searchfoundation_RFExpandingComponentContent(v2) + 20);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*Searchfoundation_RFExpandingComponentContent.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_RFExpandingComponentContent(v0) + 20);
  return nullsub_1;
}

void static Searchfoundation_RFExpandingComponentContent.OneOf_Value.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_284();
  a19 = v21;
  a20 = v22;
  v23 = type metadata accessor for Searchfoundation_RFReferenceFootnoteCardSection(0);
  v24 = OUTLINED_FUNCTION_183(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_62();
  v27 = type metadata accessor for Searchfoundation_RFLongItemStandardCardSection();
  v28 = OUTLINED_FUNCTION_183(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_238_0();
  v31 = type metadata accessor for Searchfoundation_RFExpandingComponentContent.OneOf_Value(0);
  v32 = OUTLINED_FUNCTION_59_1(v31);
  v34 = *(v33 + 64);
  v35 = MEMORY[0x1EEE9AC00](v32);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &a9 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E08, &qword_1B964D608);
  OUTLINED_FUNCTION_183(v38);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_176();
  v42 = MEMORY[0x1EEE9AC00](v41);
  v44 = &a9 - v43;
  v45 = *(v42 + 56);
  sub_1B954B634();
  sub_1B954B634();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_12_38();
    sub_1B954B634();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_3_80();
      sub_1B954B83C();
      OUTLINED_FUNCTION_128();
      static Searchfoundation_RFReferenceFootnoteCardSection.== infix(_:_:)();
      sub_1B954B318();
      OUTLINED_FUNCTION_461();
LABEL_7:
      sub_1B954B318();
      OUTLINED_FUNCTION_2_74();
      sub_1B954B318();
      goto LABEL_8;
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_38();
    sub_1B954B634();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      OUTLINED_FUNCTION_4_61();
      sub_1B954B83C();
      static Searchfoundation_RFLongItemStandardCardSection.== infix(_:_:)(v37, v20);
      sub_1B954B318();
      goto LABEL_7;
    }
  }

  sub_1B954B318();
  sub_1B8D9207C(v44, &qword_1EBAB8E08, &qword_1B964D608);
LABEL_8:
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_RFExpandingComponentContent.init()()
{
  v1 = OUTLINED_FUNCTION_27();
  type metadata accessor for Searchfoundation_RFExpandingComponentContent.OneOf_Value(v1);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = v0 + *(type metadata accessor for Searchfoundation_RFExpandingComponentContent(0) + 20);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B954C480()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD0B80);
  __swift_project_value_buffer(v0, qword_1EBAD0B80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "summary_item_standard_card_section";
  *(v6 + 8) = 34;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "expanding_component_content";
  *(v10 + 1) = 27;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_RFExpandableStandardCardSection.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_288();
      sub_1B954CB80();
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_17_3();
      sub_1B954C6DC(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_1B954C6DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for Searchfoundation_RFSummaryItemStandardCardSection(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v30 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0BB0, &qword_1B96D8F40);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Searchfoundation_RFExpandableStandardCardSection.OneOf_PrimaryComponent(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC3F0, &qword_1B96B9708);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B906D5EC(a1, v12, &qword_1EBAD0BB0, &qword_1B96D8F40);
  v28 = v13;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAD0BB0, &qword_1B96D8F40);
  }

  else
  {
    sub_1B954B83C();
    sub_1B954B83C();
    sub_1B8D9207C(v22, &qword_1EBACC3F0, &qword_1B96B9708);
    sub_1B954B83C();
    sub_1B954B83C();
    __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
  }

  sub_1B954CE94(&qword_1EBAB3E28, type metadata accessor for Searchfoundation_RFSummaryItemStandardCardSection);
  v24 = v31;
  sub_1B964C580();
  if (v24)
  {
    v25 = v22;
    return sub_1B8D9207C(v25, &qword_1EBACC3F0, &qword_1B96B9708);
  }

  sub_1B906D5EC(v22, v20, &qword_1EBACC3F0, &qword_1B96B9708);
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBACC3F0, &qword_1B96B9708);
    v25 = v20;
    return sub_1B8D9207C(v25, &qword_1EBACC3F0, &qword_1B96B9708);
  }

  sub_1B954B83C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  sub_1B8D9207C(v22, &qword_1EBACC3F0, &qword_1B96B9708);
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAD0BB0, &qword_1B96D8F40);
  sub_1B954B83C();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v28);
}

uint64_t sub_1B954CB80()
{
  v0 = *(type metadata accessor for Searchfoundation_RFExpandableStandardCardSection(0) + 20);
  type metadata accessor for Searchfoundation_RFExpandingComponentContent(0);
  sub_1B954CE94(&qword_1EBAD0BC0, type metadata accessor for Searchfoundation_RFExpandingComponentContent);
  return sub_1B964C570();
}

uint64_t Searchfoundation_RFExpandableStandardCardSection.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0BB0, &qword_1B96D8F40);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - v9;
  v11 = type metadata accessor for Searchfoundation_RFSummaryItemStandardCardSection(0);
  v12 = OUTLINED_FUNCTION_59_1(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_62();
  v21 = v3;
  sub_1B906D5EC(v3, v10, &qword_1EBAD0BB0, &qword_1B96D8F40);
  v15 = type metadata accessor for Searchfoundation_RFExpandableStandardCardSection.OneOf_PrimaryComponent(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v15) == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAD0BB0, &qword_1B96D8F40);
  }

  else
  {
    OUTLINED_FUNCTION_0_108();
    sub_1B954B83C();
    sub_1B954CE94(&qword_1EBAB3E28, type metadata accessor for Searchfoundation_RFSummaryItemStandardCardSection);
    sub_1B964C740();
    OUTLINED_FUNCTION_13_34();
    result = sub_1B954B318();
    if (v4)
    {
      return result;
    }
  }

  v17 = type metadata accessor for Searchfoundation_RFExpandableStandardCardSection(0);
  v18 = v21;
  if (!*(*(v21 + *(v17 + 20)) + 16) || (type metadata accessor for Searchfoundation_RFExpandingComponentContent(0), sub_1B954CE94(&qword_1EBAD0BC0, type metadata accessor for Searchfoundation_RFExpandingComponentContent), OUTLINED_FUNCTION_231(), result = sub_1B964C730(), !v4))
  {
    v19 = v18 + *(v17 + 24);
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B954CE94(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B954D1D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B954CE94(&qword_1EBAD0C08, type metadata accessor for Searchfoundation_RFExpandableStandardCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B954D254(uint64_t a1)
{
  v2 = sub_1B954CE94(&qword_1EBACE608, type metadata accessor for Searchfoundation_RFExpandableStandardCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B954D2C4()
{
  sub_1B954CE94(&qword_1EBACE608, type metadata accessor for Searchfoundation_RFExpandableStandardCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B954D360()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD0B98);
  __swift_project_value_buffer(v0, qword_1EBAD0B98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "long_item_standard_card_section";
  *(v6 + 8) = 31;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "reference_footnote_card_section";
  *(v10 + 1) = 31;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_RFExpandingComponentContent.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v7 = OUTLINED_FUNCTION_17_3();
      sub_1B954DAAC(v7, v8, v9, v10);
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_17_3();
      sub_1B954D5B4(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_1B954D5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Searchfoundation_RFLongItemStandardCardSection();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E10, &qword_1B964D610);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Searchfoundation_RFExpandingComponentContent.OneOf_Value(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC408, &qword_1B96B9720);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B906D5EC(a1, v12, &qword_1EBAB8E10, &qword_1B964D610);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB8E10, &qword_1B964D610);
  }

  else
  {
    sub_1B954B83C();
    sub_1B954B83C();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B954B318();
    }

    else
    {
      sub_1B8D9207C(v22, &unk_1EBACC408, &qword_1B96B9720);
      sub_1B954B83C();
      sub_1B954B83C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }
  }

  sub_1B954CE94(&qword_1EBAB4140, type metadata accessor for Searchfoundation_RFLongItemStandardCardSection);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &unk_1EBACC408, &qword_1B96B9720);
  }

  sub_1B906D5EC(v22, v20, &unk_1EBACC408, &qword_1B96B9720);
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &unk_1EBACC408, &qword_1B96B9720);
    v24 = v20;
    return sub_1B8D9207C(v24, &unk_1EBACC408, &qword_1B96B9720);
  }

  sub_1B954B83C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &unk_1EBACC408, &qword_1B96B9720);
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB8E10, &qword_1B964D610);
  sub_1B954B83C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B954DAAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Searchfoundation_RFReferenceFootnoteCardSection(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E10, &qword_1B964D610);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Searchfoundation_RFExpandingComponentContent.OneOf_Value(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC420, &unk_1B96D9370);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B906D5EC(a1, v12, &qword_1EBAB8E10, &qword_1B964D610);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB8E10, &qword_1B964D610);
  }

  else
  {
    sub_1B954B83C();
    sub_1B954B83C();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8D9207C(v22, &qword_1EBACC420, &unk_1B96D9370);
      sub_1B954B83C();
      sub_1B954B83C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B954B318();
    }
  }

  sub_1B954CE94(&qword_1EBACE628, type metadata accessor for Searchfoundation_RFReferenceFootnoteCardSection);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBACC420, &unk_1B96D9370);
  }

  sub_1B906D5EC(v22, v20, &qword_1EBACC420, &unk_1B96D9370);
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBACC420, &unk_1B96D9370);
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBACC420, &unk_1B96D9370);
  }

  sub_1B954B83C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBACC420, &unk_1B96D9370);
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB8E10, &qword_1B964D610);
  sub_1B954B83C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t Searchfoundation_RFExpandingComponentContent.traverse<A>(visitor:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E10, &qword_1B964D610);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - v6;
  sub_1B906D5EC(v0, &v19 - v6, &qword_1EBAB8E10, &qword_1B964D610);
  v8 = type metadata accessor for Searchfoundation_RFExpandingComponentContent.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_686();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = OUTLINED_FUNCTION_7_6();
    sub_1B954E2E8(v9, v10, v11, v12);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7_6();
    sub_1B954E0D4(v13, v14, v15, v16);
  }

  OUTLINED_FUNCTION_2_74();
  result = sub_1B954B318();
  if (!v1)
  {
LABEL_6:
    v18 = v0 + *(type metadata accessor for Searchfoundation_RFExpandingComponentContent(0) + 20);
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B954E0D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E10, &qword_1B964D610);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for Searchfoundation_RFLongItemStandardCardSection();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1B906D5EC(a1, v8, &qword_1EBAB8E10, &qword_1B964D610);
  v11 = type metadata accessor for Searchfoundation_RFExpandingComponentContent.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    result = sub_1B8D9207C(v8, &qword_1EBAB8E10, &qword_1B964D610);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1B954B83C();
      sub_1B954CE94(&qword_1EBAB4140, type metadata accessor for Searchfoundation_RFLongItemStandardCardSection);
      sub_1B964C740();
      return sub_1B954B318();
    }

    result = sub_1B954B318();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B954E2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E10, &qword_1B964D610);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for Searchfoundation_RFReferenceFootnoteCardSection(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1B906D5EC(a1, v8, &qword_1EBAB8E10, &qword_1B964D610);
  v11 = type metadata accessor for Searchfoundation_RFExpandingComponentContent.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    result = sub_1B8D9207C(v8, &qword_1EBAB8E10, &qword_1B964D610);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B954B83C();
      sub_1B954CE94(&qword_1EBACE628, type metadata accessor for Searchfoundation_RFReferenceFootnoteCardSection);
      sub_1B964C740();
      return sub_1B954B318();
    }

    result = sub_1B954B318();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B954E76C(void (*a1)(void))
{
  sub_1B964CA70();
  a1(0);
  v2 = OUTLINED_FUNCTION_461();
  sub_1B954CE94(v2, v3);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B954E84C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B954CE94(&qword_1EBAD0C00, type metadata accessor for Searchfoundation_RFExpandingComponentContent);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B954E8CC(uint64_t a1)
{
  v2 = sub_1B954CE94(&qword_1EBAD0BC0, type metadata accessor for Searchfoundation_RFExpandingComponentContent);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B954E93C()
{
  sub_1B954CE94(&qword_1EBAD0BC0, type metadata accessor for Searchfoundation_RFExpandingComponentContent);

  return sub_1B964C5D0();
}

void sub_1B954EC24()
{
  sub_1B954ED20(319, &qword_1ED9EB5E8, type metadata accessor for Searchfoundation_RFExpandableStandardCardSection.OneOf_PrimaryComponent, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1B954ED20(319, &qword_1ED9D3990, type metadata accessor for Searchfoundation_RFExpandingComponentContent, MEMORY[0x1E69E62F8]);
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

void sub_1B954ED20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1B954ED84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Searchfoundation_RFSummaryItemStandardCardSection(0);

  return MEMORY[0x1EEE6BEB8](a1, a2, v4, sub_1B8D415D4);
}

uint64_t sub_1B954EDDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Searchfoundation_RFSummaryItemStandardCardSection(0);

  return MEMORY[0x1EEE6C118](a1, a2, a3, v6, sub_1B8D416E8);
}

uint64_t sub_1B954EE44(uint64_t a1)
{
  v2 = type metadata accessor for Searchfoundation_RFSummaryItemStandardCardSection(319);
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v2 - 8) + 84);
    return 0;
  }

  return v2;
}

void sub_1B954EF14()
{
  sub_1B954ED20(319, &qword_1ED9D71F0, type metadata accessor for Searchfoundation_RFExpandingComponentContent.OneOf_Value, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B954EFC8()
{
  result = type metadata accessor for Searchfoundation_RFLongItemStandardCardSection();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Searchfoundation_RFReferenceFootnoteCardSection(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_50@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_1B906D5EC(v2, &a2 - a1, v3, v4);
}

uint64_t OUTLINED_FUNCTION_10_42(uint64_t a1)
{
  *(v3 + 24) = a1;

  return sub_1B906D5EC(v2, v1, v4, v5);
}

uint64_t OUTLINED_FUNCTION_21_28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3)
{
  v7 = *(a1 + 56);

  return sub_1B906D5EC(v3, &a3 - a2, v4, v5);
}

uint64_t OUTLINED_FUNCTION_43_18()
{

  return sub_1B906D5EC(v0, v1 + v4, v2, v3);
}

uint64_t Searchfoundation_RFFactItemStandardCardSection.init()@<X0>(void *a1@<X8>)
{
  v3 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v3;
  v4 = type metadata accessor for Searchfoundation_RFFactItemStandardCardSection(0);
  OUTLINED_FUNCTION_191_2(v4);
  v5 = v1[7];
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_410_1();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  v10 = OUTLINED_FUNCTION_338_1(v1[8]);
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  v14 = OUTLINED_FUNCTION_338_1(v1[9]);
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  v18 = v1[10];
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  OUTLINED_FUNCTION_410_1();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  v23 = OUTLINED_FUNCTION_338_1(v1[11]);

  return __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
}

uint64_t Searchfoundation_RFFactItemHeroNumberCardSection.init()@<X0>(void *a1@<X8>)
{
  v3 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v3;
  v4 = type metadata accessor for Searchfoundation_RFFactItemHeroNumberCardSection(0);
  OUTLINED_FUNCTION_191_2(v4);
  v5 = v1[7];
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_410_1();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  v10 = OUTLINED_FUNCTION_338_1(v1[8]);
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  v14 = OUTLINED_FUNCTION_338_1(v1[9]);
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  v18 = OUTLINED_FUNCTION_338_1(v1[10]);

  return __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
}

uint64_t sub_1B954F390@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  v4 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  a2[1] = v4;
  v5 = a1(0);
  OUTLINED_FUNCTION_191_2(v5);
  v6 = v2[7];
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_410_1();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  v11 = OUTLINED_FUNCTION_338_1(v2[8]);
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  v15 = OUTLINED_FUNCTION_338_1(v2[9]);
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  v19 = OUTLINED_FUNCTION_338_1(v2[10]);
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  v23 = v2[11];
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
}

uint64_t Searchfoundation_RFFactItemDetailedNumberCardSection.init()()
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v0 = type metadata accessor for Searchfoundation_RFFactItemDetailedNumberCardSection(0);
  v1 = v0[5];
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_410_1();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = OUTLINED_FUNCTION_338_1(v0[6]);
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  v10 = OUTLINED_FUNCTION_338_1(v0[7]);
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  v14 = OUTLINED_FUNCTION_338_1(v0[8]);
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  v18 = v0[9];
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  v23 = OUTLINED_FUNCTION_338_1(v0[10]);

  return __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
}

uint64_t Searchfoundation_RFFactItemImageRightCardSection.init()()
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v0 = type metadata accessor for Searchfoundation_RFFactItemImageRightCardSection(0);
  v1 = v0[5];
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_410_1();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = OUTLINED_FUNCTION_338_1(v0[6]);
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  v10 = v0[7];
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
}

void Searchfoundation_RFFactItemStandardCardSection.text1.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  v7 = type metadata accessor for Searchfoundation_RFTextProperty(v6);
  OUTLINED_FUNCTION_7_17(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Searchfoundation_RFFactItemStandardCardSection(v12);
  OUTLINED_FUNCTION_19_11(*(v13 + 28));
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_89();
    v15 = OUTLINED_FUNCTION_461();
    sub_1B954FD00(v15, v16, v17);
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void Searchfoundation_RFFactItemStandardCardSection.text2.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  v7 = type metadata accessor for Searchfoundation_RFTextProperty(v6);
  OUTLINED_FUNCTION_7_17(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Searchfoundation_RFFactItemStandardCardSection(v12);
  OUTLINED_FUNCTION_19_11(*(v13 + 32));
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_89();
    v15 = OUTLINED_FUNCTION_461();
    sub_1B954FD00(v15, v16, v17);
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B954F8DC()
{
  OUTLINED_FUNCTION_284();
  v3 = v2;
  v4 = v1;
  v5 = v0;
  v7 = *(*v6 + 10);
  v8 = (*v6)[3];
  v9 = (*v6)[4];
  v10 = (*v6)[1];
  v11 = (*v6)[2];
  v12 = **v6;
  if (v13)
  {
    v14 = OUTLINED_FUNCTION_128();
    sub_1B954FECC(v14, v15, v3);
    sub_1B8D9207C(v12 + v7, v5, v4);
    sub_1B954FD00(v8, v12 + v7, v3);
    OUTLINED_FUNCTION_187_1();
    sub_1B9549818();
  }

  else
  {
    sub_1B8D9207C(v12 + v7, v0, v1);
    sub_1B954FD00(v9, v12 + v7, v3);
    OUTLINED_FUNCTION_187_1();
  }

  free(v9);
  free(v8);
  free(v10);
  OUTLINED_FUNCTION_283();

  free(v16);
}

void Searchfoundation_RFFactItemStandardCardSection.text3.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  v7 = type metadata accessor for Searchfoundation_RFTextProperty(v6);
  OUTLINED_FUNCTION_7_17(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Searchfoundation_RFFactItemStandardCardSection(v12);
  OUTLINED_FUNCTION_19_11(*(v13 + 36));
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_89();
    v15 = OUTLINED_FUNCTION_461();
    sub_1B954FD00(v15, v16, v17);
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Searchfoundation_RFFactItemStandardCardSection.text4.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Searchfoundation_RFFactItemStandardCardSection.text5.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t Searchfoundation_RFFactItemStandardCardSection.thumbnail.getter()
{
  v1 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  v6 = type metadata accessor for Searchfoundation_RFFactItemStandardCardSection(v5);
  OUTLINED_FUNCTION_62_10(v6);
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  OUTLINED_FUNCTION_9_2();
  if (v7)
  {
    OUTLINED_FUNCTION_465_0(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_9_2();
    if (!v7)
    {
      return sub_1B8D9207C(v0, &qword_1EBACC708, &unk_1B96D92F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_107();
    v8 = OUTLINED_FUNCTION_182();
    return sub_1B954FD00(v8, v9, v10);
  }

  return result;
}

uint64_t sub_1B954FD00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_432();
  v8(v7);
  return a2;
}

uint64_t Searchfoundation_RFFactItemStandardCardSection.thumbnail.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_RFFactItemStandardCardSection(v1);
  sub_1B8D9207C(v0 + *(v2 + 40), &qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_0_107();
  OUTLINED_FUNCTION_112_8(v3, v4, v5);
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  v6 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

void Searchfoundation_RFFactItemStandardCardSection.thumbnail.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  v7 = type metadata accessor for Searchfoundation_RFVisualProperty(v6);
  OUTLINED_FUNCTION_7_17(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Searchfoundation_RFFactItemStandardCardSection(v12);
  OUTLINED_FUNCTION_19_11(*(v13 + 40));
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBACC708, &unk_1B96D92F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_107();
    v15 = OUTLINED_FUNCTION_461();
    sub_1B954FD00(v15, v16, v17);
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B954FECC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_432();
  v8(v7);
  return a2;
}

void Searchfoundation_RFFactItemStandardCardSection.thumbnail2.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  v7 = type metadata accessor for Searchfoundation_RFVisualProperty(v6);
  OUTLINED_FUNCTION_7_17(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Searchfoundation_RFFactItemStandardCardSection(v12);
  OUTLINED_FUNCTION_19_11(*(v13 + 44));
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBACC708, &unk_1B96D92F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_107();
    v15 = OUTLINED_FUNCTION_461();
    sub_1B954FD00(v15, v16, v17);
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Searchfoundation_RFFactItemStandardCardSection.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_RFFactItemStandardCardSection(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B95501B4()
{
  OUTLINED_FUNCTION_79_4();
  v2 = OUTLINED_FUNCTION_690();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_22_3();
  v9 = v0(v8);
  v10 = OUTLINED_FUNCTION_115(*(v9 + 28));
  OUTLINED_FUNCTION_109_2(v10, v11);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_9_2();
  if (v12)
  {
    OUTLINED_FUNCTION_465_0(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_9_2();
    if (!v12)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_182();
    return sub_1B954FD00(v13, v14, v15);
  }

  return result;
}

uint64_t sub_1B95502B4()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  sub_1B8D9207C(v0 + *(v3 + 28), &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_1_89();
  OUTLINED_FUNCTION_112_8(v4, v5, v6);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  v7 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

void Searchfoundation_RFFactItemShortNumberCardSection.number.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  v7 = type metadata accessor for Searchfoundation_RFTextProperty(v6);
  OUTLINED_FUNCTION_7_17(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Searchfoundation_RFFactItemShortNumberCardSection(v12);
  OUTLINED_FUNCTION_19_11(*(v13 + 28));
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_89();
    v15 = OUTLINED_FUNCTION_461();
    sub_1B954FD00(v15, v16, v17);
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B9550464()
{
  OUTLINED_FUNCTION_111_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_103();
  v9 = v1(v8);
  OUTLINED_FUNCTION_106_5(*(v9 + 28));
  v0(0);
  v10 = OUTLINED_FUNCTION_602();
  OUTLINED_FUNCTION_178(v10, v11, v12);
  OUTLINED_FUNCTION_111_9();
  return OUTLINED_FUNCTION_681_0();
}

uint64_t sub_1B9550530()
{
  OUTLINED_FUNCTION_111_0();
  v1 = OUTLINED_FUNCTION_178_1();
  v3 = *(v2(v1) + 28);
  OUTLINED_FUNCTION_114_4();
  v0(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t sub_1B95505B4()
{
  OUTLINED_FUNCTION_79_4();
  v2 = OUTLINED_FUNCTION_690();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_22_3();
  v9 = v0(v8);
  v10 = OUTLINED_FUNCTION_115(*(v9 + 32));
  OUTLINED_FUNCTION_109_2(v10, v11);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_9_2();
  if (v12)
  {
    OUTLINED_FUNCTION_465_0(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_9_2();
    if (!v12)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_182();
    return sub_1B954FD00(v13, v14, v15);
  }

  return result;
}

uint64_t sub_1B95506B4()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  sub_1B8D9207C(v0 + *(v3 + 32), &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_1_89();
  OUTLINED_FUNCTION_112_8(v4, v5, v6);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  v7 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

void Searchfoundation_RFFactItemShortNumberCardSection.text1.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  v7 = type metadata accessor for Searchfoundation_RFTextProperty(v6);
  OUTLINED_FUNCTION_7_17(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Searchfoundation_RFFactItemShortNumberCardSection(v12);
  OUTLINED_FUNCTION_19_11(*(v13 + 32));
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_89();
    v15 = OUTLINED_FUNCTION_461();
    sub_1B954FD00(v15, v16, v17);
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B9550840(uint64_t (*a1)(uint64_t))
{
  v2 = OUTLINED_FUNCTION_163_8();
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_35();
  v7 = a1(v6);
  OUTLINED_FUNCTION_82_2(*(v7 + 32));
  v8 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_51_17(v8);
  return OUTLINED_FUNCTION_681_0();
}

uint64_t sub_1B95508E4()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v3 = v2(v1);
  sub_1B8D9207C(v0 + *(v3 + 32), &qword_1EBAB8DF8, &qword_1B96B9A80);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t sub_1B955099C()
{
  OUTLINED_FUNCTION_79_4();
  v2 = OUTLINED_FUNCTION_690();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_22_3();
  v9 = v0(v8);
  v10 = OUTLINED_FUNCTION_115(*(v9 + 36));
  OUTLINED_FUNCTION_109_2(v10, v11);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_9_2();
  if (v12)
  {
    OUTLINED_FUNCTION_465_0(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_9_2();
    if (!v12)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_182();
    return sub_1B954FD00(v13, v14, v15);
  }

  return result;
}

uint64_t sub_1B9550A9C()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  sub_1B8D9207C(v0 + *(v3 + 36), &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_1_89();
  OUTLINED_FUNCTION_112_8(v4, v5, v6);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  v7 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

void Searchfoundation_RFFactItemShortNumberCardSection.unit.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  v7 = type metadata accessor for Searchfoundation_RFTextProperty(v6);
  OUTLINED_FUNCTION_7_17(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Searchfoundation_RFFactItemShortNumberCardSection(v12);
  OUTLINED_FUNCTION_19_11(*(v13 + 36));
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_89();
    v15 = OUTLINED_FUNCTION_461();
    sub_1B954FD00(v15, v16, v17);
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B9550C4C()
{
  OUTLINED_FUNCTION_111_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_103();
  v9 = v1(v8);
  OUTLINED_FUNCTION_106_5(*(v9 + 36));
  v0(0);
  v10 = OUTLINED_FUNCTION_602();
  OUTLINED_FUNCTION_178(v10, v11, v12);
  OUTLINED_FUNCTION_111_9();
  return OUTLINED_FUNCTION_681_0();
}

uint64_t sub_1B9550D18()
{
  OUTLINED_FUNCTION_111_0();
  v1 = OUTLINED_FUNCTION_178_1();
  v3 = *(v2(v1) + 36);
  OUTLINED_FUNCTION_114_4();
  v0(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t Searchfoundation_RFFactItemShortNumberCardSection.text4.getter()
{
  v1 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  v6 = type metadata accessor for Searchfoundation_RFFactItemShortNumberCardSection(v5);
  OUTLINED_FUNCTION_62_10(v6);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_9_2();
  if (v7)
  {
    OUTLINED_FUNCTION_465_0(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_9_2();
    if (!v7)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_89();
    v8 = OUTLINED_FUNCTION_182();
    return sub_1B954FD00(v8, v9, v10);
  }

  return result;
}

uint64_t Searchfoundation_RFFactItemShortNumberCardSection.text4.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_RFFactItemShortNumberCardSection(v1);
  sub_1B8D9207C(v0 + *(v2 + 40), &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_1_89();
  OUTLINED_FUNCTION_112_8(v3, v4, v5);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  v6 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

void Searchfoundation_RFFactItemShortNumberCardSection.text4.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  v7 = type metadata accessor for Searchfoundation_RFTextProperty(v6);
  OUTLINED_FUNCTION_7_17(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Searchfoundation_RFFactItemShortNumberCardSection(v12);
  OUTLINED_FUNCTION_19_11(*(v13 + 40));
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_89();
    v15 = OUTLINED_FUNCTION_461();
    sub_1B954FD00(v15, v16, v17);
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B9550FF8()
{
  OUTLINED_FUNCTION_111_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_103();
  v9 = v1(v8);
  OUTLINED_FUNCTION_106_5(*(v9 + 40));
  v0(0);
  v10 = OUTLINED_FUNCTION_602();
  OUTLINED_FUNCTION_178(v10, v11, v12);
  OUTLINED_FUNCTION_111_9();
  return OUTLINED_FUNCTION_681_0();
}

uint64_t sub_1B95510C4()
{
  OUTLINED_FUNCTION_111_0();
  v1 = OUTLINED_FUNCTION_178_1();
  v3 = *(v2(v1) + 40);
  OUTLINED_FUNCTION_114_4();
  v0(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t sub_1B9551148()
{
  OUTLINED_FUNCTION_79_4();
  v2 = OUTLINED_FUNCTION_690();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_22_3();
  v9 = v0(v8);
  v10 = OUTLINED_FUNCTION_115(*(v9 + 44));
  OUTLINED_FUNCTION_109_2(v10, v11);
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  OUTLINED_FUNCTION_9_2();
  if (v12)
  {
    OUTLINED_FUNCTION_465_0(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_9_2();
    if (!v12)
    {
      return sub_1B8D9207C(v1, &qword_1EBACC708, &unk_1B96D92F0);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_182();
    return sub_1B954FD00(v13, v14, v15);
  }

  return result;
}

uint64_t sub_1B9551248()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  sub_1B8D9207C(v0 + *(v3 + 44), &qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_0_107();
  OUTLINED_FUNCTION_112_8(v4, v5, v6);
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  v7 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

void Searchfoundation_RFFactItemShortNumberCardSection.thumbnail.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  v7 = type metadata accessor for Searchfoundation_RFVisualProperty(v6);
  OUTLINED_FUNCTION_7_17(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Searchfoundation_RFFactItemShortNumberCardSection(v12);
  OUTLINED_FUNCTION_19_11(*(v13 + 44));
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBACC708, &unk_1B96D92F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_107();
    v15 = OUTLINED_FUNCTION_461();
    sub_1B954FD00(v15, v16, v17);
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B95513D4(uint64_t (*a1)(uint64_t))
{
  v2 = OUTLINED_FUNCTION_163_8();
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_35();
  v7 = a1(v6);
  OUTLINED_FUNCTION_82_2(*(v7 + 44));
  v8 = type metadata accessor for Searchfoundation_RFVisualProperty(0);
  OUTLINED_FUNCTION_51_17(v8);
  return OUTLINED_FUNCTION_681_0();
}

uint64_t sub_1B9551478()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v3 = v2(v1);
  sub_1B8D9207C(v0 + *(v3 + 44), &qword_1EBACC708, &unk_1B96D92F0);
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t sub_1B95514F8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = sub_1B964C2B0();
  v6 = OUTLINED_FUNCTION_59_1(v5);
  v8 = *(v7 + 16);

  return v8(a2, v2 + v4, v6);
}

uint64_t sub_1B955158C()
{
  v2 = OUTLINED_FUNCTION_313();
  v4 = *(v3(v2) + 24);
  v5 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v5);
  v7 = *(v6 + 40);

  return v7(v1 + v4, v0);
}

uint64_t Searchfoundation_RFFactItemShortNumberCardSection.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_RFFactItemShortNumberCardSection(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

void Searchfoundation_RFFactItemHeroNumberCardSection.number.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  v7 = type metadata accessor for Searchfoundation_RFTextProperty(v6);
  OUTLINED_FUNCTION_7_17(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Searchfoundation_RFFactItemHeroNumberCardSection(v12);
  OUTLINED_FUNCTION_19_11(*(v13 + 28));
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_89();
    v15 = OUTLINED_FUNCTION_461();
    sub_1B954FD00(v15, v16, v17);
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void Searchfoundation_RFFactItemHeroNumberCardSection.unit.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  v7 = type metadata accessor for Searchfoundation_RFTextProperty(v6);
  OUTLINED_FUNCTION_7_17(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Searchfoundation_RFFactItemHeroNumberCardSection(v12);
  OUTLINED_FUNCTION_19_11(*(v13 + 32));
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_89();
    v15 = OUTLINED_FUNCTION_461();
    sub_1B954FD00(v15, v16, v17);
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void Searchfoundation_RFFactItemHeroNumberCardSection.text4.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  v7 = type metadata accessor for Searchfoundation_RFTextProperty(v6);
  OUTLINED_FUNCTION_7_17(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Searchfoundation_RFFactItemHeroNumberCardSection(v12);
  OUTLINED_FUNCTION_19_11(*(v13 + 36));
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_89();
    v15 = OUTLINED_FUNCTION_461();
    sub_1B954FD00(v15, v16, v17);
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Searchfoundation_RFFactItemHeroNumberCardSection.text5.getter()
{
  v1 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  v6 = type metadata accessor for Searchfoundation_RFFactItemHeroNumberCardSection(v5);
  OUTLINED_FUNCTION_62_10(v6);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_9_2();
  if (v7)
  {
    OUTLINED_FUNCTION_465_0(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_9_2();
    if (!v7)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_89();
    v8 = OUTLINED_FUNCTION_182();
    return sub_1B954FD00(v8, v9, v10);
  }

  return result;
}

uint64_t Searchfoundation_RFFactItemHeroNumberCardSection.text5.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_RFFactItemHeroNumberCardSection(v1);
  sub_1B8D9207C(v0 + *(v2 + 40), &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_1_89();
  OUTLINED_FUNCTION_112_8(v3, v4, v5);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  v6 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

void Searchfoundation_RFFactItemHeroNumberCardSection.text5.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  v7 = type metadata accessor for Searchfoundation_RFTextProperty(v6);
  OUTLINED_FUNCTION_7_17(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Searchfoundation_RFFactItemHeroNumberCardSection(v12);
  OUTLINED_FUNCTION_19_11(*(v13 + 40));
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_89();
    v15 = OUTLINED_FUNCTION_461();
    sub_1B954FD00(v15, v16, v17);
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Searchfoundation_RFFactItemHeroNumberCardSection.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_RFFactItemHeroNumberCardSection(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

void Searchfoundation_RFFactItemShortHeroNumberCardSection.number.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  v7 = type metadata accessor for Searchfoundation_RFTextProperty(v6);
  OUTLINED_FUNCTION_7_17(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Searchfoundation_RFFactItemShortHeroNumberCardSection(v12);
  OUTLINED_FUNCTION_19_11(*(v13 + 28));
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_89();
    v15 = OUTLINED_FUNCTION_461();
    sub_1B954FD00(v15, v16, v17);
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void Searchfoundation_RFFactItemShortHeroNumberCardSection.text1.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  v7 = type metadata accessor for Searchfoundation_RFTextProperty(v6);
  OUTLINED_FUNCTION_7_17(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Searchfoundation_RFFactItemShortHeroNumberCardSection(v12);
  OUTLINED_FUNCTION_19_11(*(v13 + 32));
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_89();
    v15 = OUTLINED_FUNCTION_461();
    sub_1B954FD00(v15, v16, v17);
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void Searchfoundation_RFFactItemShortHeroNumberCardSection.unit.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  v7 = type metadata accessor for Searchfoundation_RFTextProperty(v6);
  OUTLINED_FUNCTION_7_17(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Searchfoundation_RFFactItemShortHeroNumberCardSection(v12);
  OUTLINED_FUNCTION_19_11(*(v13 + 36));
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_89();
    v15 = OUTLINED_FUNCTION_461();
    sub_1B954FD00(v15, v16, v17);
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Searchfoundation_RFFactItemShortHeroNumberCardSection.text4.getter()
{
  v1 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  v6 = type metadata accessor for Searchfoundation_RFFactItemShortHeroNumberCardSection(v5);
  OUTLINED_FUNCTION_62_10(v6);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_9_2();
  if (v7)
  {
    OUTLINED_FUNCTION_465_0(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_9_2();
    if (!v7)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_89();
    v8 = OUTLINED_FUNCTION_182();
    return sub_1B954FD00(v8, v9, v10);
  }

  return result;
}

uint64_t Searchfoundation_RFFactItemShortHeroNumberCardSection.text4.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_RFFactItemShortHeroNumberCardSection(v1);
  sub_1B8D9207C(v0 + *(v2 + 40), &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_1_89();
  OUTLINED_FUNCTION_112_8(v3, v4, v5);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  v6 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

void Searchfoundation_RFFactItemShortHeroNumberCardSection.text4.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  v7 = type metadata accessor for Searchfoundation_RFTextProperty(v6);
  OUTLINED_FUNCTION_7_17(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Searchfoundation_RFFactItemShortHeroNumberCardSection(v12);
  OUTLINED_FUNCTION_19_11(*(v13 + 40));
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_89();
    v15 = OUTLINED_FUNCTION_461();
    sub_1B954FD00(v15, v16, v17);
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void Searchfoundation_RFFactItemShortHeroNumberCardSection.thumbnail.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  v7 = type metadata accessor for Searchfoundation_RFVisualProperty(v6);
  OUTLINED_FUNCTION_7_17(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Searchfoundation_RFFactItemShortHeroNumberCardSection(v12);
  OUTLINED_FUNCTION_19_11(*(v13 + 44));
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBACC708, &unk_1B96D92F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_107();
    v15 = OUTLINED_FUNCTION_461();
    sub_1B954FD00(v15, v16, v17);
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Searchfoundation_RFFactItemShortHeroNumberCardSection.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_RFFactItemShortHeroNumberCardSection(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

void Searchfoundation_RFFactItemDetailedNumberCardSection.number.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  v7 = type metadata accessor for Searchfoundation_RFTextProperty(v6);
  OUTLINED_FUNCTION_7_17(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Searchfoundation_RFFactItemDetailedNumberCardSection(v12);
  OUTLINED_FUNCTION_19_11(*(v13 + 20));
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_89();
    v15 = OUTLINED_FUNCTION_461();
    sub_1B954FD00(v15, v16, v17);
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void Searchfoundation_RFFactItemDetailedNumberCardSection.text1.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  v7 = type metadata accessor for Searchfoundation_RFTextProperty(v6);
  OUTLINED_FUNCTION_7_17(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Searchfoundation_RFFactItemDetailedNumberCardSection(v12);
  OUTLINED_FUNCTION_19_11(*(v13 + 24));
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_89();
    v15 = OUTLINED_FUNCTION_461();
    sub_1B954FD00(v15, v16, v17);
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void Searchfoundation_RFFactItemDetailedNumberCardSection.text2.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  v7 = type metadata accessor for Searchfoundation_RFTextProperty(v6);
  OUTLINED_FUNCTION_7_17(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Searchfoundation_RFFactItemDetailedNumberCardSection(v12);
  OUTLINED_FUNCTION_19_11(*(v13 + 28));
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_89();
    v15 = OUTLINED_FUNCTION_461();
    sub_1B954FD00(v15, v16, v17);
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void Searchfoundation_RFFactItemDetailedNumberCardSection.text3.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  v7 = type metadata accessor for Searchfoundation_RFTextProperty(v6);
  OUTLINED_FUNCTION_7_17(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Searchfoundation_RFFactItemDetailedNumberCardSection(v12);
  OUTLINED_FUNCTION_19_11(*(v13 + 32));
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_89();
    v15 = OUTLINED_FUNCTION_461();
    sub_1B954FD00(v15, v16, v17);
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Searchfoundation_RFFactItemDetailedNumberCardSection.thumbnail.getter()
{
  v1 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  v6 = type metadata accessor for Searchfoundation_RFFactItemDetailedNumberCardSection(v5);
  v7 = OUTLINED_FUNCTION_115(*(v6 + 36));
  sub_1B8DD9078(v7, v8, &qword_1EBACC708, &unk_1B96D92F0);
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
    OUTLINED_FUNCTION_0_107();
    v10 = OUTLINED_FUNCTION_182();
    return sub_1B954FD00(v10, v11, v12);
  }

  return result;
}

uint64_t Searchfoundation_RFFactItemDetailedNumberCardSection.thumbnail.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_RFFactItemDetailedNumberCardSection(v1);
  sub_1B8D9207C(v0 + *(v2 + 36), &qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_0_107();
  OUTLINED_FUNCTION_112_8(v3, v4, v5);
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  v6 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

void Searchfoundation_RFFactItemDetailedNumberCardSection.thumbnail.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  v7 = type metadata accessor for Searchfoundation_RFVisualProperty(v6);
  OUTLINED_FUNCTION_7_17(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Searchfoundation_RFFactItemDetailedNumberCardSection(v12);
  OUTLINED_FUNCTION_19_11(*(v13 + 36));
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBACC708, &unk_1B96D92F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_107();
    v15 = OUTLINED_FUNCTION_461();
    sub_1B954FD00(v15, v16, v17);
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Searchfoundation_RFFactItemDetailedNumberCardSection.text4.getter()
{
  v1 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  v6 = type metadata accessor for Searchfoundation_RFFactItemDetailedNumberCardSection(v5);
  OUTLINED_FUNCTION_62_10(v6);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_9_2();
  if (v7)
  {
    OUTLINED_FUNCTION_465_0(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_9_2();
    if (!v7)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_89();
    v8 = OUTLINED_FUNCTION_182();
    return sub_1B954FD00(v8, v9, v10);
  }

  return result;
}

uint64_t Searchfoundation_RFFactItemDetailedNumberCardSection.text4.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_RFFactItemDetailedNumberCardSection(v1);
  sub_1B8D9207C(v0 + *(v2 + 40), &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_1_89();
  OUTLINED_FUNCTION_112_8(v3, v4, v5);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  v6 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

void Searchfoundation_RFFactItemDetailedNumberCardSection.text4.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  v7 = type metadata accessor for Searchfoundation_RFTextProperty(v6);
  OUTLINED_FUNCTION_7_17(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Searchfoundation_RFFactItemDetailedNumberCardSection(v12);
  OUTLINED_FUNCTION_19_11(*(v13 + 40));
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_89();
    v15 = OUTLINED_FUNCTION_461();
    sub_1B954FD00(v15, v16, v17);
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B955334C()
{
  OUTLINED_FUNCTION_79_4();
  v2 = OUTLINED_FUNCTION_690();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_22_3();
  v9 = v0(v8);
  v10 = OUTLINED_FUNCTION_115(*(v9 + 20));
  OUTLINED_FUNCTION_109_2(v10, v11);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_9_2();
  if (v12)
  {
    OUTLINED_FUNCTION_465_0(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_9_2();
    if (!v12)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_182();
    return sub_1B954FD00(v13, v14, v15);
  }

  return result;
}

uint64_t sub_1B955344C()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  sub_1B8D9207C(v0 + *(v3 + 20), &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_1_89();
  OUTLINED_FUNCTION_112_8(v4, v5, v6);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  v7 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

void Searchfoundation_RFFactItemImageRightCardSection.number.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  v7 = type metadata accessor for Searchfoundation_RFTextProperty(v6);
  OUTLINED_FUNCTION_7_17(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Searchfoundation_RFFactItemImageRightCardSection(v12);
  OUTLINED_FUNCTION_19_11(*(v13 + 20));
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_89();
    v15 = OUTLINED_FUNCTION_461();
    sub_1B954FD00(v15, v16, v17);
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B95535D8(uint64_t (*a1)(uint64_t))
{
  v2 = OUTLINED_FUNCTION_163_8();
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_35();
  v7 = a1(v6);
  OUTLINED_FUNCTION_82_2(*(v7 + 20));
  v8 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_51_17(v8);
  return OUTLINED_FUNCTION_681_0();
}

uint64_t sub_1B955367C()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v3 = v2(v1);
  sub_1B8D9207C(v0 + *(v3 + 20), &qword_1EBAB8DF8, &qword_1B96B9A80);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t sub_1B95536FC()
{
  OUTLINED_FUNCTION_79_4();
  v2 = OUTLINED_FUNCTION_690();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_22_3();
  v9 = v0(v8);
  v10 = OUTLINED_FUNCTION_115(*(v9 + 24));
  OUTLINED_FUNCTION_109_2(v10, v11);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_9_2();
  if (v12)
  {
    OUTLINED_FUNCTION_465_0(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_9_2();
    if (!v12)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_182();
    return sub_1B954FD00(v13, v14, v15);
  }

  return result;
}

uint64_t sub_1B95537FC()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  sub_1B8D9207C(v0 + *(v3 + 24), &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_1_89();
  OUTLINED_FUNCTION_112_8(v4, v5, v6);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  v7 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

void Searchfoundation_RFFactItemImageRightCardSection.text1.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  v7 = type metadata accessor for Searchfoundation_RFTextProperty(v6);
  OUTLINED_FUNCTION_7_17(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Searchfoundation_RFFactItemImageRightCardSection(v12);
  OUTLINED_FUNCTION_19_11(*(v13 + 24));
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_89();
    v15 = OUTLINED_FUNCTION_461();
    sub_1B954FD00(v15, v16, v17);
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B9553988(uint64_t (*a1)(uint64_t))
{
  v2 = OUTLINED_FUNCTION_163_8();
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_35();
  v7 = a1(v6);
  OUTLINED_FUNCTION_82_2(*(v7 + 24));
  v8 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_51_17(v8);
  return OUTLINED_FUNCTION_681_0();
}

uint64_t sub_1B9553A2C()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v3 = v2(v1);
  sub_1B8D9207C(v0 + *(v3 + 24), &qword_1EBAB8DF8, &qword_1B96B9A80);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t Searchfoundation_RFFactItemImageRightCardSection.thumbnail.getter()
{
  v1 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  v6 = type metadata accessor for Searchfoundation_RFFactItemImageRightCardSection(v5);
  v7 = OUTLINED_FUNCTION_115(*(v6 + 28));
  sub_1B8DD9078(v7, v8, &qword_1EBACC708, &unk_1B96D92F0);
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
    OUTLINED_FUNCTION_0_107();
    v10 = OUTLINED_FUNCTION_182();
    return sub_1B954FD00(v10, v11, v12);
  }

  return result;
}

uint64_t sub_1B9553B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(char *))
{
  v10 = a5(0);
  OUTLINED_FUNCTION_183(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v17 - v14;
  sub_1B954FECC(a1, &v17 - v14, a6);
  return a7(v15);
}

uint64_t Searchfoundation_RFFactItemImageRightCardSection.thumbnail.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_RFFactItemImageRightCardSection(v1);
  sub_1B8D9207C(v0 + *(v2 + 28), &qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_0_107();
  OUTLINED_FUNCTION_112_8(v3, v4, v5);
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  v6 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

void Searchfoundation_RFFactItemImageRightCardSection.thumbnail.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  v7 = type metadata accessor for Searchfoundation_RFVisualProperty(v6);
  OUTLINED_FUNCTION_7_17(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Searchfoundation_RFFactItemImageRightCardSection(v12);
  OUTLINED_FUNCTION_19_11(*(v13 + 28));
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBACC708, &unk_1B96D92F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_107();
    v15 = OUTLINED_FUNCTION_461();
    sub_1B954FD00(v15, v16, v17);
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B9553DF8()
{
  OUTLINED_FUNCTION_313();
  v1 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_753();

  return v5(v4, v0);
}

uint64_t sub_1B9553E88()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD0C10);
  __swift_project_value_buffer(v0, qword_1EBAD0C10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1B9650810;
  v4 = v21 + v3 + v1[14];
  *(v21 + v3) = 1;
  *v4 = "text_1";
  *(v4 + 8) = 6;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1B964C750();
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
  *v14 = "text_5";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v7();
  v15 = (v21 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "thumbnail";
  *(v16 + 1) = 9;
  v16[16] = 2;
  v17 = *MEMORY[0x1E69AADC8];
  v7();
  v18 = (v21 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "thumbnail2";
  *(v19 + 1) = 10;
  v19[16] = 2;
  v7();
  return sub_1B964C760();
}

void Searchfoundation_RFFactItemStandardCardSection.decodeMessage<A>(decoder:)()
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
      case 1:
        OUTLINED_FUNCTION_16_36();
        sub_1B9558DB4();
        break;
      case 2:
        OUTLINED_FUNCTION_16_36();
        sub_1B9558E30();
        break;
      case 3:
        OUTLINED_FUNCTION_16_36();
        sub_1B9557358();
        break;
      case 4:
        OUTLINED_FUNCTION_9();
        sub_1B9557284();
        break;
      case 5:
        OUTLINED_FUNCTION_9();
        sub_1B95572EC();
        break;
      case 6:
        OUTLINED_FUNCTION_9();
        sub_1B95542B0();
        break;
      case 7:
        OUTLINED_FUNCTION_16_36();
        sub_1B9557488();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B95542B0()
{
  v0 = *(type metadata accessor for Searchfoundation_RFFactItemStandardCardSection(0) + 40);
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  sub_1B955498C(&qword_1ED9D2A40, type metadata accessor for Searchfoundation_RFVisualProperty);
  return sub_1B964C580();
}

void Searchfoundation_RFFactItemStandardCardSection.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v88 = v2;
  v89 = v5;
  v91 = v6;
  v92 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
  v9 = OUTLINED_FUNCTION_183(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44_0();
  v84 = v12;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_266_0();
  v85 = v14;
  v15 = OUTLINED_FUNCTION_201();
  v86 = type metadata accessor for Searchfoundation_RFVisualProperty(v15);
  v16 = OUTLINED_FUNCTION_59_1(v86);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_44_0();
  v82 = v19;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_266_0();
  v83 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  v23 = OUTLINED_FUNCTION_183(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_66();
  v28 = v26 - v27;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_93_10();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v81 - v31;
  v33 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  v34 = OUTLINED_FUNCTION_59_1(v33);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_44_0();
  v87 = v37;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_91_6();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_94_12();
  v93 = type metadata accessor for Searchfoundation_RFFactItemStandardCardSection(0);
  v40 = v93[7];
  v90 = v1;
  sub_1B8DD9078(v1 + v40, v32, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_55_12();
  OUTLINED_FUNCTION_178(v41, v42, v43);
  if (v44)
  {
    sub_1B8D9207C(v32, &qword_1EBAB8DF8, &qword_1B96B9A80);
    v47 = v88;
  }

  else
  {
    sub_1B954FD00(v32, v0, type metadata accessor for Searchfoundation_RFTextProperty);
    OUTLINED_FUNCTION_1_90();
    sub_1B955498C(v45, v46);
    OUTLINED_FUNCTION_129();
    v2 = v88;
    sub_1B964C740();
    v47 = v2;
    sub_1B9549818();
    if (v2)
    {
      goto LABEL_26;
    }
  }

  sub_1B8DD9078(v90 + v93[8], v4, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_55_12();
  OUTLINED_FUNCTION_178(v48, v49, v50);
  if (v44)
  {
    sub_1B8D9207C(v4, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    OUTLINED_FUNCTION_6_46();
    sub_1B954FD00(v4, v3, v51);
    OUTLINED_FUNCTION_1_90();
    sub_1B955498C(v52, v53);
    v2 = v47;
    sub_1B964C740();
    OUTLINED_FUNCTION_182();
    sub_1B9549818();
    if (v47)
    {
      goto LABEL_26;
    }
  }

  v54 = v90;
  sub_1B8DD9078(v90 + v93[9], v28, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_55_12();
  OUTLINED_FUNCTION_178(v55, v56, v57);
  if (v44)
  {
    sub_1B8D9207C(v28, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    OUTLINED_FUNCTION_6_46();
    sub_1B954FD00(v28, v87, v58);
    OUTLINED_FUNCTION_1_90();
    sub_1B955498C(v59, v60);
    OUTLINED_FUNCTION_272_2();
    OUTLINED_FUNCTION_42_16();
    sub_1B964C740();
    OUTLINED_FUNCTION_144_8();
    if (v47)
    {
      goto LABEL_26;
    }
  }

  if (!*(*v54 + 16) || (OUTLINED_FUNCTION_1_90(), sub_1B955498C(v61, v62), OUTLINED_FUNCTION_129(), OUTLINED_FUNCTION_42_16(), sub_1B964C730(), (v47 = v2) == 0))
  {
    if (!*(v54[1] + 16) || (OUTLINED_FUNCTION_1_90(), sub_1B955498C(v63, v64), OUTLINED_FUNCTION_129(), OUTLINED_FUNCTION_42_16(), sub_1B964C730(), (v47 = v2) == 0))
    {
      v65 = v85;
      sub_1B8DD9078(v54 + v93[10], v85, &qword_1EBACC708, &unk_1B96D92F0);
      v66 = OUTLINED_FUNCTION_105_9();
      OUTLINED_FUNCTION_178(v66, v67, v86);
      if (v44)
      {
        sub_1B8D9207C(v65, &qword_1EBACC708, &unk_1B96D92F0);
      }

      else
      {
        v68 = OUTLINED_FUNCTION_85_6();
        sub_1B954FD00(v68, v83, v69);
        OUTLINED_FUNCTION_12_39();
        sub_1B955498C(v70, v71);
        OUTLINED_FUNCTION_272_2();
        OUTLINED_FUNCTION_42_16();
        sub_1B964C740();
        OUTLINED_FUNCTION_144_8();
        if (v47)
        {
          goto LABEL_26;
        }
      }

      v72 = v84;
      sub_1B8DD9078(v54 + v93[11], v84, &qword_1EBACC708, &unk_1B96D92F0);
      OUTLINED_FUNCTION_55_12();
      OUTLINED_FUNCTION_178(v73, v74, v75);
      if (v44)
      {
        sub_1B8D9207C(v72, &qword_1EBACC708, &unk_1B96D92F0);
LABEL_25:
        v80 = v54 + v93[6];
        sub_1B964C290();
        goto LABEL_26;
      }

      v76 = OUTLINED_FUNCTION_85_6();
      sub_1B954FD00(v76, v82, v77);
      OUTLINED_FUNCTION_12_39();
      sub_1B955498C(v78, v79);
      OUTLINED_FUNCTION_272_2();
      OUTLINED_FUNCTION_42_16();
      sub_1B964C740();
      OUTLINED_FUNCTION_144_8();
      if (!v47)
      {
        goto LABEL_25;
      }
    }
  }

LABEL_26:
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B955498C(unint64_t *a1, void (*a2)(uint64_t))
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

void static Searchfoundation_RFFactItemStandardCardSection.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v4 = v3;
  v6 = v5;
  v187 = type metadata accessor for Searchfoundation_RFVisualProperty(0);
  v7 = OUTLINED_FUNCTION_59_1(v187);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44_0();
  v164 = v10;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_266_0();
  v172 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
  v14 = OUTLINED_FUNCTION_183(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_44_0();
  v169 = v17;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_266_0();
  v178 = v19;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACCC18, &unk_1B96D8D70);
  v20 = OUTLINED_FUNCTION_59_1(v184);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_44_0();
  v175 = v23;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_266_0();
  v181 = v25;
  v26 = OUTLINED_FUNCTION_201();
  v27 = type metadata accessor for Searchfoundation_RFTextProperty(v26);
  v28 = OUTLINED_FUNCTION_59_1(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_44_0();
  v190 = v31;
  OUTLINED_FUNCTION_230();
  v33 = MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_35_17(v33, v34, v35, v36, v37, v38, v39, v40, v164);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_219_0();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  v43 = OUTLINED_FUNCTION_183(v42);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_44_0();
  v192 = v46;
  OUTLINED_FUNCTION_230();
  v48 = MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_36_12(v48, v49, v50, v51, v52, v53, v54, v55, v165);
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_94_12();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E00, &qword_1B964D600);
  v58 = OUTLINED_FUNCTION_59_1(v57);
  v60 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_59_15();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_682();
  v202 = v62;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_211();
  v199 = v57;
  v200 = type metadata accessor for Searchfoundation_RFFactItemStandardCardSection(0);
  v64 = v200[7];
  v65 = *(v57 + 48);
  sub_1B8DD9078(v6 + v64, v1, &qword_1EBAB8DF8, &qword_1B96B9A80);
  v201 = v4;
  sub_1B8DD9078(v4 + v64, v1 + v65, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_118(v1);
  if (v129)
  {
    OUTLINED_FUNCTION_118(v1 + v65);
    if (!v129)
    {
      goto LABEL_32;
    }

    sub_1B8D9207C(v1, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    sub_1B8DD9078(v1, v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    OUTLINED_FUNCTION_118(v1 + v65);
    if (v129)
    {
      goto LABEL_31;
    }

    OUTLINED_FUNCTION_1_89();
    sub_1B954FD00(v1 + v65, v2, v132);
    v133 = *v0;
    v134 = *v2;
    sub_1B8D5BA08();
    if ((v135 & 1) == 0 || *(v0 + 8) != *(v2 + 8))
    {
      OUTLINED_FUNCTION_5_51();
      sub_1B9549818();
      OUTLINED_FUNCTION_432();
LABEL_36:
      sub_1B9549818();
      v130 = &qword_1EBAB8DF8;
      v131 = &qword_1B96B9A80;
      goto LABEL_37;
    }

    v140 = *(v27 + 24);
    v141 = sub_1B964C2B0();
    OUTLINED_FUNCTION_2_75();
    sub_1B955498C(v142, v143);
    sub_1B964C850();
    OUTLINED_FUNCTION_10_43();
    sub_1B9549818();
    sub_1B9549818();
    sub_1B8D9207C(v1, &qword_1EBAB8DF8, &qword_1B96B9A80);
    if ((v141 & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  v66 = v200[8];
  v67 = *(v199 + 48);
  OUTLINED_FUNCTION_71_10();
  sub_1B8DD9078(v68, v69, v70, v71);
  OUTLINED_FUNCTION_71_10();
  sub_1B8DD9078(v72, v73, v74, v75);
  OUTLINED_FUNCTION_118(v202);
  if (v129)
  {
    OUTLINED_FUNCTION_118(v202 + v67);
    if (v129)
    {
      sub_1B8D9207C(v202, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_11;
    }

LABEL_44:
    v130 = &qword_1EBAB8E00;
    v131 = &qword_1B964D600;
    v136 = v202;
    goto LABEL_38;
  }

  sub_1B8DD9078(v202, v198, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_118(v202 + v67);
  if (v137)
  {
    OUTLINED_FUNCTION_7_48();
    sub_1B9549818();
    goto LABEL_44;
  }

  OUTLINED_FUNCTION_1_89();
  sub_1B954FD00(v202 + v67, v194, v138);
  OUTLINED_FUNCTION_107_7();
  sub_1B8D5BA08();
  if ((v139 & 1) == 0 || (OUTLINED_FUNCTION_58_15(), !v129))
  {
    OUTLINED_FUNCTION_6_46();
    sub_1B9549818();
    OUTLINED_FUNCTION_202();
    sub_1B9549818();
    v130 = &qword_1EBAB8DF8;
    v131 = &qword_1B96B9A80;
    v136 = v202;
    goto LABEL_38;
  }

  v148 = *(v27 + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_2_75();
  sub_1B955498C(v149, v150);
  LOBYTE(v148) = OUTLINED_FUNCTION_645_0();
  OUTLINED_FUNCTION_5_51();
  sub_1B9549818();
  OUTLINED_FUNCTION_121_5();
  sub_1B8D9207C(v202, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v148 & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_11:
  v76 = v200[9];
  v77 = *(v199 + 48);
  v1 = v196;
  OUTLINED_FUNCTION_71_10();
  sub_1B8DD9078(v78, v79, v80, v81);
  OUTLINED_FUNCTION_71_10();
  sub_1B8DD9078(v82, v83, v84, v85);
  OUTLINED_FUNCTION_118(v196);
  if (v129)
  {
    OUTLINED_FUNCTION_118(v196 + v77);
    if (v129)
    {
      sub_1B8D9207C(v196, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_16;
    }

LABEL_32:
    v130 = &qword_1EBAB8E00;
    v131 = &qword_1B964D600;
LABEL_37:
    v136 = v1;
LABEL_38:
    sub_1B8D9207C(v136, v130, v131);
LABEL_39:
    v128 = 0;
    goto LABEL_40;
  }

  sub_1B8DD9078(v196, v192, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_118(v196 + v77);
  if (v144)
  {
LABEL_31:
    OUTLINED_FUNCTION_7_48();
    sub_1B9549818();
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_1_89();
  OUTLINED_FUNCTION_165_6(v196 + v77, v145, v146);
  OUTLINED_FUNCTION_107_7();
  sub_1B8D5BA08();
  if ((v147 & 1) == 0 || (OUTLINED_FUNCTION_58_15(), !v129))
  {
    OUTLINED_FUNCTION_6_46();
    sub_1B9549818();
    OUTLINED_FUNCTION_202();
    goto LABEL_36;
  }

  v151 = *(v27 + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_2_75();
  sub_1B955498C(v152, v153);
  LOBYTE(v151) = OUTLINED_FUNCTION_645_0();
  OUTLINED_FUNCTION_5_51();
  sub_1B9549818();
  OUTLINED_FUNCTION_121_5();
  sub_1B8D9207C(v196, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v151 & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_16:
  sub_1B8D5B224(*v6, *v201, v86, v87, v88, v89, v90, v91, v166, v169, v172, v175, v178, v181, v184, v187, v190, v192, v194, v196);
  if ((v98 & 1) == 0)
  {
    goto LABEL_39;
  }

  sub_1B8D5B224(v6[1], v201[1], v92, v93, v94, v95, v96, v97, v167, v170, v173, v176, v179, v182, v185, v188, v191, v193, v195, v197);
  if ((v99 & 1) == 0)
  {
    goto LABEL_39;
  }

  v100 = v200[10];
  v101 = *(v186 + 48);
  OUTLINED_FUNCTION_71_10();
  sub_1B8DD9078(v102, v103, v104, v105);
  v106 = v183;
  OUTLINED_FUNCTION_71_10();
  sub_1B8DD9078(v107, v108, v109, v110);
  v111 = OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_44(v111, v112);
  if (v129)
  {
    OUTLINED_FUNCTION_48(v183 + v101);
    if (!v129)
    {
      goto LABEL_69;
    }

    sub_1B8D9207C(v183, &qword_1EBACC708, &unk_1B96D92F0);
  }

  else
  {
    sub_1B8DD9078(v183, v180, &qword_1EBACC708, &unk_1B96D92F0);
    OUTLINED_FUNCTION_48(v183 + v101);
    if (v154)
    {
      goto LABEL_68;
    }

    OUTLINED_FUNCTION_0_107();
    sub_1B954FD00(v183 + v101, v174, v155);
    OUTLINED_FUNCTION_107_7();
    sub_1B8D5D124();
    if ((v156 & 1) == 0)
    {
      goto LABEL_72;
    }

    OUTLINED_FUNCTION_58_15();
    if (!v129)
    {
      goto LABEL_72;
    }

    OUTLINED_FUNCTION_1328();
    OUTLINED_FUNCTION_2_75();
    sub_1B955498C(v157, v158);
    OUTLINED_FUNCTION_645_0();
    OUTLINED_FUNCTION_18_30();
    sub_1B9549818();
    OUTLINED_FUNCTION_121_5();
    sub_1B8D9207C(v183, &qword_1EBACC708, &unk_1B96D92F0);
    if ((v189 & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  v113 = v200[11];
  v114 = *(v186 + 48);
  OUTLINED_FUNCTION_71_10();
  sub_1B8DD9078(v115, v116, v117, v118);
  v106 = v177;
  OUTLINED_FUNCTION_71_10();
  sub_1B8DD9078(v119, v120, v121, v122);
  v123 = OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_44(v123, v124);
  if (v129)
  {
    OUTLINED_FUNCTION_48(v177 + v114);
    if (v129)
    {
      sub_1B8D9207C(v177, &qword_1EBACC708, &unk_1B96D92F0);
      goto LABEL_28;
    }

LABEL_69:
    v130 = &qword_1EBACCC18;
    v131 = &unk_1B96D8D70;
LABEL_73:
    v136 = v106;
    goto LABEL_38;
  }

  sub_1B8DD9078(v177, v171, &qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_48(v177 + v114);
  if (v159)
  {
LABEL_68:
    OUTLINED_FUNCTION_44_15();
    sub_1B9549818();
    goto LABEL_69;
  }

  OUTLINED_FUNCTION_0_107();
  sub_1B954FD00(v177 + v114, v168, v160);
  OUTLINED_FUNCTION_107_7();
  sub_1B8D5D124();
  if ((v161 & 1) == 0 || (OUTLINED_FUNCTION_58_15(), !v129))
  {
LABEL_72:
    OUTLINED_FUNCTION_28_24();
    sub_1B9549818();
    OUTLINED_FUNCTION_202();
    sub_1B9549818();
    v130 = &qword_1EBACC708;
    v131 = &unk_1B96D92F0;
    goto LABEL_73;
  }

  OUTLINED_FUNCTION_1328();
  OUTLINED_FUNCTION_2_75();
  sub_1B955498C(v162, v163);
  OUTLINED_FUNCTION_645_0();
  OUTLINED_FUNCTION_18_30();
  sub_1B9549818();
  OUTLINED_FUNCTION_121_5();
  sub_1B8D9207C(v177, &qword_1EBACC708, &unk_1B96D92F0);
  if ((v189 & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_28:
  v125 = v200[6];
  sub_1B964C2B0();
  OUTLINED_FUNCTION_2_75();
  sub_1B955498C(v126, v127);
  v128 = sub_1B964C850();
LABEL_40:
  OUTLINED_FUNCTION_264(v128);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B95554B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B955498C(&qword_1EBAD0D38, type metadata accessor for Searchfoundation_RFFactItemStandardCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9555534(uint64_t a1)
{
  v2 = sub_1B955498C(&qword_1EBACE640, type metadata accessor for Searchfoundation_RFFactItemStandardCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B95555A4()
{
  sub_1B955498C(&qword_1EBACE640, type metadata accessor for Searchfoundation_RFFactItemStandardCardSection);

  return sub_1B964C5D0();
}

void sub_1B95556D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t))
{
  while (1)
  {
    v8 = sub_1B964C3C0();
    if (v6 || (v9 & 1) != 0)
    {
      break;
    }

    switch(v8)
    {
      case 1:
        OUTLINED_FUNCTION_39_15();
        sub_1B9558DB4();
        break;
      case 2:
        OUTLINED_FUNCTION_39_15();
        sub_1B9558E30();
        break;
      case 3:
        OUTLINED_FUNCTION_39_15();
        sub_1B9557284();
        break;
      case 4:
        OUTLINED_FUNCTION_39_15();
        sub_1B95572EC();
        break;
      case 5:
        OUTLINED_FUNCTION_39_15();
        sub_1B9557358();
        break;
      case 6:
        v10 = OUTLINED_FUNCTION_39_15();
        a6(v10);
        break;
      case 7:
        OUTLINED_FUNCTION_39_15();
        sub_1B9557488();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B95557E8()
{
  v0 = *(type metadata accessor for Searchfoundation_RFFactItemShortNumberCardSection(0) + 40);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  sub_1B955498C(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty);
  return sub_1B964C580();
}

uint64_t sub_1B9555984(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B955498C(&qword_1EBAD0D30, type metadata accessor for Searchfoundation_RFFactItemShortNumberCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9555A04(uint64_t a1)
{
  v2 = sub_1B955498C(&qword_1EBACE648, type metadata accessor for Searchfoundation_RFFactItemShortNumberCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9555A74()
{
  sub_1B955498C(&qword_1EBACE648, type metadata accessor for Searchfoundation_RFFactItemShortNumberCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B9555B0C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD0C40);
  __swift_project_value_buffer(v0, qword_1EBAD0C40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "number";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "unit";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "text_2";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v13 = *MEMORY[0x1E69AADE8];
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "text_3";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "text_4";
  *(v17 + 1) = 6;
  v17[16] = 2;
  v9();
  v18 = (v5 + 5 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "text_5";
  *(v19 + 1) = 6;
  v19[16] = 2;
  v9();
  return sub_1B964C760();
}

void Searchfoundation_RFFactItemHeroNumberCardSection.decodeMessage<A>(decoder:)()
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
      case 1:
        OUTLINED_FUNCTION_16_36();
        sub_1B9558DB4();
        break;
      case 2:
        OUTLINED_FUNCTION_16_36();
        sub_1B9558E30();
        break;
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B9557284();
        break;
      case 4:
        OUTLINED_FUNCTION_9();
        sub_1B95572EC();
        break;
      case 5:
        OUTLINED_FUNCTION_16_36();
        sub_1B9557358();
        break;
      case 6:
        OUTLINED_FUNCTION_9();
        sub_1B9555EE8();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B9555EE8()
{
  v0 = *(type metadata accessor for Searchfoundation_RFFactItemHeroNumberCardSection(0) + 40);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  sub_1B955498C(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty);
  return sub_1B964C580();
}

void Searchfoundation_RFFactItemHeroNumberCardSection.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v67 = v1;
  v68 = v5;
  v6 = v0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  v8 = OUTLINED_FUNCTION_183(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44_0();
  v64 = v11;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_682();
  v65 = v13;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_93_10();
  MEMORY[0x1EEE9AC00](v15);
  v16 = OUTLINED_FUNCTION_68();
  v17 = type metadata accessor for Searchfoundation_RFTextProperty(v16);
  v18 = OUTLINED_FUNCTION_59_1(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_59_15();
  v22 = MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_36_12(v22, v23, v24, v25, v26, v27, v28, v29, v63[0]);
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = v63 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v34 = OUTLINED_FUNCTION_95_8();
  v69 = type metadata accessor for Searchfoundation_RFFactItemHeroNumberCardSection(v34);
  v35 = v69[7];
  v66 = v6;
  sub_1B8DD9078(v6 + v35, v3, &qword_1EBAB8DF8, &qword_1B96B9A80);
  v36 = OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_178(v36, v37, v17);
  if (v38)
  {
    sub_1B8D9207C(v3, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    OUTLINED_FUNCTION_45_18();
    sub_1B954FD00(v3, v2, v39);
    OUTLINED_FUNCTION_1_90();
    sub_1B955498C(v40, v41);
    v1 = v67;
    sub_1B964C740();
    sub_1B9549818();
    if (v1)
    {
      goto LABEL_25;
    }
  }

  v42 = v66;
  sub_1B8DD9078(v66 + v69[8], v4, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_178(v4, 1, v17);
  if (v38)
  {
    v46 = v17;
    sub_1B8D9207C(v4, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    OUTLINED_FUNCTION_13_35();
    sub_1B954FD00(v4, v33, v43);
    OUTLINED_FUNCTION_1_90();
    sub_1B955498C(v44, v45);
    v46 = v17;
    OUTLINED_FUNCTION_53_19();
    sub_1B964C740();
    sub_1B9549818();
    if (v1)
    {
      goto LABEL_25;
    }

    v42 = v66;
  }

  v47 = v65;
  if (!*(*v42 + 16) || (OUTLINED_FUNCTION_1_90(), sub_1B955498C(v48, v49), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_53_19(), sub_1B964C730(), !v1))
  {
    if (!*(v42[1] + 16) || (OUTLINED_FUNCTION_1_90(), sub_1B955498C(v50, v51), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_53_19(), sub_1B964C730(), !v1))
    {
      sub_1B8DD9078(v42 + v69[9], v47, &qword_1EBAB8DF8, &qword_1B96B9A80);
      v52 = v46;
      OUTLINED_FUNCTION_178(v47, 1, v46);
      if (v38)
      {
        sub_1B8D9207C(v47, &qword_1EBAB8DF8, &qword_1B96B9A80);
        v53 = v64;
      }

      else
      {
        OUTLINED_FUNCTION_13_35();
        sub_1B954FD00(v47, v63[2], v54);
        OUTLINED_FUNCTION_1_90();
        sub_1B955498C(v55, v56);
        OUTLINED_FUNCTION_129();
        OUTLINED_FUNCTION_53_19();
        sub_1B964C740();
        sub_1B9549818();
        if (v1)
        {
          goto LABEL_25;
        }

        v42 = v66;
        v53 = v64;
      }

      sub_1B8DD9078(v42 + v69[10], v53, &qword_1EBAB8DF8, &qword_1B96B9A80);
      v57 = OUTLINED_FUNCTION_105_9();
      OUTLINED_FUNCTION_178(v57, v58, v52);
      if (v38)
      {
        sub_1B8D9207C(v53, &qword_1EBAB8DF8, &qword_1B96B9A80);
LABEL_24:
        v62 = v42 + v69[6];
        sub_1B964C290();
        goto LABEL_25;
      }

      OUTLINED_FUNCTION_13_35();
      sub_1B954FD00(v53, v63[1], v59);
      OUTLINED_FUNCTION_1_90();
      sub_1B955498C(v60, v61);
      OUTLINED_FUNCTION_129();
      OUTLINED_FUNCTION_53_19();
      sub_1B964C740();
      sub_1B9549818();
      if (!v1)
      {
        v42 = v66;
        goto LABEL_24;
      }
    }
  }

LABEL_25:
  OUTLINED_FUNCTION_272_0();
}

void static Searchfoundation_RFFactItemHeroNumberCardSection.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  v6 = OUTLINED_FUNCTION_59_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_44_0();
  v128 = v9;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_48_16();
  v12 = MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_36_12(v12, v13, v14, v15, v16, v17, v18, v19, v128);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v128 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  v24 = OUTLINED_FUNCTION_183(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_44_0();
  v129 = v27;
  OUTLINED_FUNCTION_230();
  v29 = MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_35_17(v29, v30, v31, v32, v33, v34, v35, v36, v128);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_682();
  v135 = v38;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_219_0();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E00, &qword_1B964D600);
  v41 = OUTLINED_FUNCTION_59_1(v40);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_44_0();
  v131 = v44;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_675_0();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_682();
  v139 = v47;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v128 - v49;
  v136 = type metadata accessor for Searchfoundation_RFFactItemHeroNumberCardSection(0);
  v137 = v4;
  v51 = v136[7];
  v138 = v40;
  v52 = *(v40 + 48);
  OUTLINED_FUNCTION_148_6(v4 + v51, v50);
  v53 = v2;
  OUTLINED_FUNCTION_148_6(v2 + v51, &v50[v52]);
  OUTLINED_FUNCTION_48(v50);
  if (v96)
  {
    OUTLINED_FUNCTION_48(&v50[v52]);
    if (v96)
    {
      sub_1B8D9207C(v50, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_6;
    }

LABEL_27:
    v97 = &qword_1EBAB8E00;
    v98 = &qword_1B964D600;
LABEL_31:
    v103 = v50;
LABEL_32:
    sub_1B8D9207C(v103, v97, v98);
LABEL_33:
    v95 = 0;
    goto LABEL_34;
  }

  sub_1B8DD9078(v50, v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_48(&v50[v52]);
  if (v96)
  {
    OUTLINED_FUNCTION_7_48();
    sub_1B9549818();
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_1_89();
  sub_1B954FD00(&v50[v52], v22, v99);
  v100 = *v0;
  v101 = *v22;
  sub_1B8D5BA08();
  if ((v102 & 1) == 0 || *(v0 + 8) != v22[8])
  {
    OUTLINED_FUNCTION_6_46();
    sub_1B9549818();
    sub_1B9549818();
    v97 = &qword_1EBAB8DF8;
    v98 = &qword_1B96B9A80;
    goto LABEL_31;
  }

  v107 = *(v5 + 24);
  v108 = sub_1B964C2B0();
  OUTLINED_FUNCTION_2_75();
  sub_1B955498C(v109, v110);
  sub_1B964C850();
  OUTLINED_FUNCTION_10_43();
  sub_1B9549818();
  sub_1B9549818();
  sub_1B8D9207C(v50, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v108 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_6:
  v55 = v136;
  v54 = v137;
  v56 = v136[8];
  v57 = v139;
  v58 = *(v138 + 48);
  OUTLINED_FUNCTION_148_6(v137 + v56, v139);
  OUTLINED_FUNCTION_148_6(v53 + v56, v57 + v58);
  OUTLINED_FUNCTION_48(v57);
  if (v96)
  {
    OUTLINED_FUNCTION_48(v57 + v58);
    if (v96)
    {
      sub_1B8D9207C(v57, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_11;
    }

LABEL_38:
    v97 = &qword_1EBAB8E00;
    v98 = &qword_1B964D600;
    v103 = v57;
    goto LABEL_32;
  }

  sub_1B8DD9078(v57, v135, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_48(v57 + v58);
  if (v104)
  {
    OUTLINED_FUNCTION_7_48();
    sub_1B9549818();
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_1_89();
  sub_1B954FD00(v57 + v58, v134, v105);
  OUTLINED_FUNCTION_107_7();
  sub_1B8D5BA08();
  if ((v106 & 1) == 0 || (OUTLINED_FUNCTION_58_15(), !v96))
  {
    OUTLINED_FUNCTION_5_51();
    sub_1B9549818();
    OUTLINED_FUNCTION_121_5();
    v97 = &qword_1EBAB8DF8;
    v98 = &qword_1B96B9A80;
    v103 = v139;
    goto LABEL_32;
  }

  v111 = *(v5 + 24);
  v112 = sub_1B964C2B0();
  OUTLINED_FUNCTION_2_75();
  sub_1B955498C(v113, v114);
  sub_1B964C850();
  OUTLINED_FUNCTION_10_43();
  sub_1B9549818();
  OUTLINED_FUNCTION_690();
  sub_1B9549818();
  sub_1B8D9207C(v139, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v112 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_11:
  sub_1B8D5B224(*v54, *v53, v59, v60, v61, v62, v63, v64, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139);
  if ((v71 & 1) == 0)
  {
    goto LABEL_33;
  }

  sub_1B8D5B224(v54[1], v53[1], v65, v66, v67, v68, v69, v70, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139);
  if ((v72 & 1) == 0)
  {
    goto LABEL_33;
  }

  v73 = v55[9];
  v74 = *(v138 + 48);
  v75 = v133;
  OUTLINED_FUNCTION_71_10();
  sub_1B8DD9078(v76, v77, v78, v79);
  sub_1B8DD9078(v53 + v73, v75 + v74, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_75(v75);
  if (v96)
  {
    OUTLINED_FUNCTION_48(v75 + v74);
    if (!v96)
    {
      goto LABEL_55;
    }

    sub_1B8D9207C(v75, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    sub_1B8DD9078(v75, v132, &qword_1EBAB8DF8, &qword_1B96B9A80);
    OUTLINED_FUNCTION_48(v75 + v74);
    if (v115)
    {
      goto LABEL_54;
    }

    OUTLINED_FUNCTION_1_89();
    OUTLINED_FUNCTION_165_6(v75 + v74, v116, v117);
    OUTLINED_FUNCTION_102_12();
    sub_1B8D5BA08();
    if ((v118 & 1) == 0)
    {
      goto LABEL_58;
    }

    OUTLINED_FUNCTION_52_13();
    if (!v96)
    {
      goto LABEL_58;
    }

    OUTLINED_FUNCTION_1328();
    OUTLINED_FUNCTION_2_75();
    sub_1B955498C(v119, v120);
    v121 = OUTLINED_FUNCTION_181();
    OUTLINED_FUNCTION_5_51();
    sub_1B9549818();
    OUTLINED_FUNCTION_128();
    sub_1B9549818();
    sub_1B8D9207C(v75, &qword_1EBAB8DF8, &qword_1B96B9A80);
    if ((v121 & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  v80 = v55[10];
  v81 = *(v138 + 48);
  v75 = v131;
  OUTLINED_FUNCTION_71_10();
  sub_1B8DD9078(v82, v83, v84, v85);
  OUTLINED_FUNCTION_71_10();
  sub_1B8DD9078(v86, v87, v88, v89);
  v90 = OUTLINED_FUNCTION_602();
  OUTLINED_FUNCTION_110(v90, v91);
  if (v96)
  {
    OUTLINED_FUNCTION_48(v75 + v81);
    if (v96)
    {
      sub_1B8D9207C(v75, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_23;
    }

LABEL_55:
    v97 = &qword_1EBAB8E00;
    v98 = &qword_1B964D600;
LABEL_59:
    v103 = v75;
    goto LABEL_32;
  }

  sub_1B8DD9078(v75, v129, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_48(v75 + v81);
  if (v122)
  {
LABEL_54:
    OUTLINED_FUNCTION_7_48();
    sub_1B9549818();
    goto LABEL_55;
  }

  OUTLINED_FUNCTION_1_89();
  sub_1B954FD00(v75 + v81, v128, v123);
  OUTLINED_FUNCTION_102_12();
  sub_1B8D5BA08();
  if ((v124 & 1) == 0 || (OUTLINED_FUNCTION_52_13(), !v96))
  {
LABEL_58:
    OUTLINED_FUNCTION_6_46();
    sub_1B9549818();
    OUTLINED_FUNCTION_182();
    sub_1B9549818();
    v97 = &qword_1EBAB8DF8;
    v98 = &qword_1B96B9A80;
    goto LABEL_59;
  }

  OUTLINED_FUNCTION_1328();
  OUTLINED_FUNCTION_2_75();
  sub_1B955498C(v125, v126);
  v127 = OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_5_51();
  sub_1B9549818();
  OUTLINED_FUNCTION_128();
  sub_1B9549818();
  sub_1B8D9207C(v75, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v127 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_23:
  v92 = v55[6];
  sub_1B964C2B0();
  OUTLINED_FUNCTION_2_75();
  sub_1B955498C(v93, v94);
  v95 = sub_1B964C850();
LABEL_34:
  OUTLINED_FUNCTION_264(v95);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9556DB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B955498C(&qword_1EBAD0D28, type metadata accessor for Searchfoundation_RFFactItemHeroNumberCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9556E34(uint64_t a1)
{
  v2 = sub_1B955498C(&qword_1EBACE600, type metadata accessor for Searchfoundation_RFFactItemHeroNumberCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9556EA4()
{
  sub_1B955498C(&qword_1EBACE600, type metadata accessor for Searchfoundation_RFFactItemHeroNumberCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B9556F48(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1B964C780();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v4 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v5 = *(*v4 + 72);
  v6 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1B9650810;
  v7 = v29 + v6 + v4[14];
  *(v29 + v6) = 1;
  *v7 = "number";
  *(v7 + 8) = 6;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADC8];
  v9 = sub_1B964C750();
  OUTLINED_FUNCTION_59_1(v9);
  v11 = *(v10 + 104);
  (v11)(v7, v8, v9);
  v12 = OUTLINED_FUNCTION_53_5(v29 + v6 + v5);
  *v13 = 2;
  *v12 = "text_1";
  *(v12 + 8) = 6;
  *(v12 + 16) = 2;
  v14 = *MEMORY[0x1E69AADE8];
  v11();
  v15 = OUTLINED_FUNCTION_53_5(v29 + v6 + 2 * v5);
  *v16 = 3;
  v17 = OUTLINED_FUNCTION_99_12(v15, "text_2");
  (v11)(v17);
  v18 = OUTLINED_FUNCTION_53_5(v29 + v6 + 3 * v5);
  *v19 = 4;
  v20 = OUTLINED_FUNCTION_99_12(v18, "text_3");
  (v11)(v20);
  v21 = OUTLINED_FUNCTION_53_5(v29 + v6 + 4 * v5);
  *v22 = 5;
  *v21 = "unit";
  *(v21 + 8) = 4;
  *(v21 + 16) = 2;
  v11();
  v23 = OUTLINED_FUNCTION_53_5(v29 + v6 + 5 * v5);
  *v24 = 6;
  v25 = OUTLINED_FUNCTION_99_12(v23, "text_4");
  (v11)(v25);
  v26 = OUTLINED_FUNCTION_53_5(v29 + v6 + 6 * v5);
  *v27 = 7;
  *v26 = "thumbnail";
  *(v26 + 8) = 9;
  *(v26 + 16) = 2;
  v11();
  return sub_1B964C760();
}

uint64_t sub_1B9557284()
{
  v0 = OUTLINED_FUNCTION_20_20();
  type metadata accessor for Searchfoundation_RFTextProperty(v0);
  OUTLINED_FUNCTION_1_90();
  sub_1B955498C(v1, v2);
  OUTLINED_FUNCTION_753();
  OUTLINED_FUNCTION_4_21();
  return sub_1B964C570();
}

uint64_t sub_1B95572EC()
{
  v0 = OUTLINED_FUNCTION_20_20();
  type metadata accessor for Searchfoundation_RFTextProperty(v0);
  OUTLINED_FUNCTION_1_90();
  sub_1B955498C(v1, v2);
  OUTLINED_FUNCTION_4_21();
  return sub_1B964C570();
}

void sub_1B9557358()
{
  OUTLINED_FUNCTION_822();
  v0 = OUTLINED_FUNCTION_20_20();
  v2 = *(v1(v0) + 36);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_1_90();
  sub_1B955498C(v3, v4);
  OUTLINED_FUNCTION_4_21();
  sub_1B964C580();
  OUTLINED_FUNCTION_823();
}

uint64_t sub_1B95573D4()
{
  v0 = *(type metadata accessor for Searchfoundation_RFFactItemShortHeroNumberCardSection(0) + 40);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  sub_1B955498C(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty);
  return sub_1B964C580();
}

void sub_1B9557488()
{
  OUTLINED_FUNCTION_822();
  v0 = OUTLINED_FUNCTION_20_20();
  v2 = *(v1(v0) + 44);
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  OUTLINED_FUNCTION_12_39();
  sub_1B955498C(v3, v4);
  OUTLINED_FUNCTION_4_21();
  sub_1B964C580();
  OUTLINED_FUNCTION_823();
}

void sub_1B9557530()
{
  OUTLINED_FUNCTION_273_0();
  v5 = v4;
  v97 = v1;
  v98 = v6;
  v96 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_185();
  v90 = v12;
  v13 = OUTLINED_FUNCTION_201();
  v91 = type metadata accessor for Searchfoundation_RFVisualProperty(v13);
  v14 = OUTLINED_FUNCTION_59_1(v91);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_21();
  v88 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  v19 = OUTLINED_FUNCTION_183(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_59_15();
  v23 = MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_36_12(v23, v24, v25, v26, v27, v28, v29, v30, v88);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_91_6();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v88 - v33;
  v35 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  v36 = OUTLINED_FUNCTION_59_1(v35);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_44_0();
  v89 = v39;
  OUTLINED_FUNCTION_230();
  v41 = MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_35_17(v41, v42, v43, v44, v45, v46, v47, v48, v88);
  v50 = MEMORY[0x1EEE9AC00](v49);
  v52 = &v88 - v51;
  MEMORY[0x1EEE9AC00](v50);
  v53 = OUTLINED_FUNCTION_68();
  v99 = v5(v53);
  v54 = v99[7];
  v95 = v0;
  sub_1B8DD9078(v0 + v54, v34, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_31_25();
  OUTLINED_FUNCTION_178(v55, v56, v57);
  if (v58)
  {
    sub_1B8D9207C(v34, &qword_1EBAB8DF8, &qword_1B96B9A80);
    v61 = v97;
  }

  else
  {
    sub_1B954FD00(v34, v3, type metadata accessor for Searchfoundation_RFTextProperty);
    OUTLINED_FUNCTION_1_90();
    sub_1B955498C(v59, v60);
    OUTLINED_FUNCTION_257_0();
    v1 = v97;
    sub_1B964C740();
    v61 = v1;
    OUTLINED_FUNCTION_690();
    sub_1B9549818();
    if (v1)
    {
      goto LABEL_27;
    }
  }

  v62 = v95;
  sub_1B8DD9078(v95 + v99[8], v2, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_31_25();
  OUTLINED_FUNCTION_178(v63, v64, v65);
  if (v58)
  {
    sub_1B8D9207C(v2, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    sub_1B954FD00(v2, v52, type metadata accessor for Searchfoundation_RFTextProperty);
    OUTLINED_FUNCTION_1_90();
    sub_1B955498C(v66, v67);
    OUTLINED_FUNCTION_683_0();
    OUTLINED_FUNCTION_43_19();
    sub_1B964C740();
    v61 = v1;
    sub_1B9549818();
    if (v1)
    {
      goto LABEL_27;
    }

    v62 = v95;
  }

  if (!*(*v62 + 16) || (OUTLINED_FUNCTION_1_90(), sub_1B955498C(v68, v69), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_43_19(), sub_1B964C730(), (v61 = v1) == 0))
  {
    if (!*(v62[1] + 16) || (OUTLINED_FUNCTION_1_90(), sub_1B955498C(v70, v71), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_43_19(), sub_1B964C730(), (v61 = v1) == 0))
    {
      v72 = v94;
      sub_1B8DD9078(v62 + v99[9], v94, &qword_1EBAB8DF8, &qword_1B96B9A80);
      OUTLINED_FUNCTION_31_25();
      OUTLINED_FUNCTION_178(v73, v74, v75);
      if (v58)
      {
        sub_1B8D9207C(v72, &qword_1EBAB8DF8, &qword_1B96B9A80);
      }

      else
      {
        sub_1B954FD00(v72, v92, type metadata accessor for Searchfoundation_RFTextProperty);
        OUTLINED_FUNCTION_1_90();
        sub_1B955498C(v76, v77);
        OUTLINED_FUNCTION_683_0();
        OUTLINED_FUNCTION_43_19();
        sub_1B964C740();
        OUTLINED_FUNCTION_146_6();
        if (v61)
        {
          goto LABEL_27;
        }
      }

      v78 = v93;
      sub_1B8DD9078(v62 + v99[10], v93, &qword_1EBAB8DF8, &qword_1B96B9A80);
      OUTLINED_FUNCTION_31_25();
      OUTLINED_FUNCTION_178(v79, v80, v81);
      if (v58)
      {
        sub_1B8D9207C(v78, &qword_1EBAB8DF8, &qword_1B96B9A80);
      }

      else
      {
        sub_1B954FD00(v78, v89, type metadata accessor for Searchfoundation_RFTextProperty);
        OUTLINED_FUNCTION_1_90();
        sub_1B955498C(v82, v83);
        OUTLINED_FUNCTION_683_0();
        OUTLINED_FUNCTION_43_19();
        sub_1B964C740();
        OUTLINED_FUNCTION_146_6();
        if (v61)
        {
          goto LABEL_27;
        }
      }

      v84 = v90;
      sub_1B8DD9078(v62 + v99[11], v90, &qword_1EBACC708, &unk_1B96D92F0);
      OUTLINED_FUNCTION_178(v84, 1, v91);
      if (v58)
      {
        sub_1B8D9207C(v84, &qword_1EBACC708, &unk_1B96D92F0);
LABEL_26:
        v87 = v62 + v99[6];
        sub_1B964C290();
        goto LABEL_27;
      }

      sub_1B954FD00(v84, v88, type metadata accessor for Searchfoundation_RFVisualProperty);
      OUTLINED_FUNCTION_12_39();
      sub_1B955498C(v85, v86);
      OUTLINED_FUNCTION_683_0();
      sub_1B964C740();
      OUTLINED_FUNCTION_146_6();
      if (!v61)
      {
        goto LABEL_26;
      }
    }
  }

LABEL_27:
  OUTLINED_FUNCTION_272_0();
}

void sub_1B9557BB8()
{
  OUTLINED_FUNCTION_284();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v179 = type metadata accessor for Searchfoundation_RFVisualProperty(0);
  v8 = OUTLINED_FUNCTION_59_1(v179);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_21();
  v175 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_183(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_185();
  v176 = v16;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACCC18, &unk_1B96D8D70);
  OUTLINED_FUNCTION_59_1(v178);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_185();
  v180 = v20;
  v21 = OUTLINED_FUNCTION_201();
  v22 = type metadata accessor for Searchfoundation_RFTextProperty(v21);
  v23 = OUTLINED_FUNCTION_59_1(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_44_0();
  v177 = v26;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_48_16();
  v29 = MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_36_12(v29, v30, v31, v32, v33, v34, v35, v36, v174);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_211();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  v39 = OUTLINED_FUNCTION_183(v38);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_44_0();
  v181 = v42;
  OUTLINED_FUNCTION_230();
  v44 = MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_35_17(v44, v45, v46, v47, v48, v49, v50, v51, v174);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_682();
  v187 = v53;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v174 - v55;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E00, &qword_1B964D600);
  v58 = OUTLINED_FUNCTION_59_1(v57);
  v60 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_44_0();
  v183 = v61;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_675_0();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_682();
  v188 = v64;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_94_12();
  v66 = v3(0);
  v189 = v57;
  v190 = v66;
  v67 = *(v66 + 28);
  v68 = *(v57 + 48);
  v191 = v7;
  sub_1B8DD9078(v7 + v67, v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
  v69 = v5;
  sub_1B8DD9078(v5 + v67, v0 + v68, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_75(v0);
  if (v137)
  {
    OUTLINED_FUNCTION_75(v0 + v68);
    if (v137)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_6;
    }

LABEL_32:
    v138 = &qword_1EBAB8E00;
    v139 = &qword_1B964D600;
LABEL_36:
    v143 = v0;
LABEL_45:
    sub_1B8D9207C(v143, v138, v139);
LABEL_46:
    v136 = 0;
    goto LABEL_47;
  }

  sub_1B8DD9078(v0, v56, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_75(v0 + v68);
  if (v137)
  {
    sub_1B9549818();
    goto LABEL_32;
  }

  sub_1B954FD00(v0 + v68, v1, type metadata accessor for Searchfoundation_RFTextProperty);
  v140 = *v56;
  v141 = *v1;
  sub_1B8D5BA08();
  if ((v142 & 1) == 0 || v56[8] != *(v1 + 8))
  {
    sub_1B9549818();
    sub_1B9549818();
    v138 = &qword_1EBAB8DF8;
    v139 = &qword_1B96B9A80;
    goto LABEL_36;
  }

  v146 = *(v22 + 24);
  v147 = sub_1B964C2B0();
  OUTLINED_FUNCTION_2_75();
  sub_1B955498C(v148, v149);
  sub_1B964C850();
  OUTLINED_FUNCTION_10_43();
  sub_1B9549818();
  sub_1B9549818();
  sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v147 & 1) == 0)
  {
    goto LABEL_46;
  }

LABEL_6:
  v70 = v189;
  v71 = v190;
  v72 = v190[8];
  v73 = *(v189 + 48);
  v74 = v188;
  sub_1B8DD9078(v191 + v72, v188, &qword_1EBAB8DF8, &qword_1B96B9A80);
  sub_1B8DD9078(v69 + v72, v74 + v73, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_75(v74);
  if (v137)
  {
    OUTLINED_FUNCTION_75(v74 + v73);
    if (!v137)
    {
      goto LABEL_40;
    }

    sub_1B8D9207C(v74, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    sub_1B8DD9078(v74, v187, &qword_1EBAB8DF8, &qword_1B96B9A80);
    OUTLINED_FUNCTION_75(v74 + v73);
    if (v144)
    {
      goto LABEL_39;
    }

    sub_1B954FD00(v74 + v73, v186, type metadata accessor for Searchfoundation_RFTextProperty);
    OUTLINED_FUNCTION_102_12();
    sub_1B8D5BA08();
    if ((v145 & 1) == 0)
    {
      goto LABEL_43;
    }

    OUTLINED_FUNCTION_52_13();
    if (!v137)
    {
      goto LABEL_43;
    }

    v150 = *(v22 + 24);
    sub_1B964C2B0();
    OUTLINED_FUNCTION_2_75();
    sub_1B955498C(v151, v152);
    LOBYTE(v150) = OUTLINED_FUNCTION_181();
    OUTLINED_FUNCTION_5_51();
    sub_1B9549818();
    OUTLINED_FUNCTION_128();
    sub_1B9549818();
    sub_1B8D9207C(v74, &qword_1EBAB8DF8, &qword_1B96B9A80);
    if ((v150 & 1) == 0)
    {
      goto LABEL_46;
    }
  }

  v81 = v191;
  sub_1B8D5B224(*v191, *v69, v75, v76, v77, v78, v79, v80, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185);
  if ((v88 & 1) == 0)
  {
    goto LABEL_46;
  }

  sub_1B8D5B224(v81[1], v69[1], v82, v83, v84, v85, v86, v87, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185);
  if ((v89 & 1) == 0)
  {
    goto LABEL_46;
  }

  v90 = v71[9];
  v91 = v22;
  v92 = *(v70 + 48);
  v93 = v185;
  OUTLINED_FUNCTION_71_10();
  sub_1B8DD9078(v94, v95, v96, v97);
  OUTLINED_FUNCTION_71_10();
  v74 = v93;
  sub_1B8DD9078(v98, v99, v100, v101);
  v102 = OUTLINED_FUNCTION_602();
  OUTLINED_FUNCTION_178(v102, v103, v91);
  if (v137)
  {
    OUTLINED_FUNCTION_178(v93 + v92, 1, v91);
    if (v137)
    {
      sub_1B8D9207C(v93, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_18;
    }

LABEL_40:
    v138 = &qword_1EBAB8E00;
    v139 = &qword_1B964D600;
LABEL_44:
    v143 = v74;
    goto LABEL_45;
  }

  v153 = v93;
  v154 = v184;
  sub_1B8DD9078(v153, v184, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_178(v74 + v92, 1, v91);
  if (v155)
  {
LABEL_39:
    sub_1B9549818();
    goto LABEL_40;
  }

  OUTLINED_FUNCTION_165_6(v74 + v92, v156, type metadata accessor for Searchfoundation_RFTextProperty);
  v157 = *v154;
  v158 = *v90;
  sub_1B8D5BA08();
  if ((v159 & 1) == 0 || *(v154 + 8) != *(v90 + 8))
  {
LABEL_43:
    sub_1B9549818();
    sub_1B9549818();
    v138 = &qword_1EBAB8DF8;
    v139 = &qword_1B96B9A80;
    goto LABEL_44;
  }

  OUTLINED_FUNCTION_1328();
  OUTLINED_FUNCTION_2_75();
  sub_1B955498C(v164, v165);
  v166 = OUTLINED_FUNCTION_845_0();
  OUTLINED_FUNCTION_5_51();
  sub_1B9549818();
  sub_1B9549818();
  sub_1B8D9207C(v74, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v166 & 1) == 0)
  {
    goto LABEL_46;
  }

LABEL_18:
  v104 = v71[10];
  v105 = *(v70 + 48);
  v106 = v183;
  OUTLINED_FUNCTION_71_10();
  sub_1B8DD9078(v107, v108, v109, v110);
  OUTLINED_FUNCTION_71_10();
  sub_1B8DD9078(v111, v112, v113, v114);
  v115 = OUTLINED_FUNCTION_602();
  OUTLINED_FUNCTION_178(v115, v116, v91);
  if (v137)
  {
    v117 = OUTLINED_FUNCTION_81_10();
    OUTLINED_FUNCTION_178(v117, v118, v91);
    if (v137)
    {
      sub_1B8D9207C(v106, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_23;
    }

LABEL_61:
    v138 = &qword_1EBAB8E00;
    v139 = &qword_1B964D600;
LABEL_65:
    v143 = v106;
    goto LABEL_45;
  }

  sub_1B8DD9078(v106, v181, &qword_1EBAB8DF8, &qword_1B96B9A80);
  v160 = OUTLINED_FUNCTION_81_10();
  OUTLINED_FUNCTION_178(v160, v161, v91);
  if (v162)
  {
    sub_1B9549818();
    goto LABEL_61;
  }

  sub_1B954FD00(v106 + v105, v177, type metadata accessor for Searchfoundation_RFTextProperty);
  OUTLINED_FUNCTION_107_7();
  sub_1B8D5BA08();
  if ((v163 & 1) == 0 || (OUTLINED_FUNCTION_58_15(), !v137))
  {
    sub_1B9549818();
    OUTLINED_FUNCTION_202();
    sub_1B9549818();
    v138 = &qword_1EBAB8DF8;
    v139 = &qword_1B96B9A80;
    goto LABEL_65;
  }

  v169 = *(v91 + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_2_75();
  sub_1B955498C(v170, v171);
  LOBYTE(v169) = OUTLINED_FUNCTION_645_0();
  OUTLINED_FUNCTION_5_51();
  sub_1B9549818();
  OUTLINED_FUNCTION_121_5();
  sub_1B8D9207C(v106, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v169 & 1) == 0)
  {
    goto LABEL_46;
  }

LABEL_23:
  v119 = v71[11];
  v120 = *(v178 + 48);
  v121 = v180;
  OUTLINED_FUNCTION_71_10();
  sub_1B8DD9078(v122, v123, v124, v125);
  OUTLINED_FUNCTION_71_10();
  sub_1B8DD9078(v126, v127, v128, v129);
  v130 = OUTLINED_FUNCTION_207();
  v131 = v179;
  OUTLINED_FUNCTION_44(v130, v132);
  if (v137)
  {
    OUTLINED_FUNCTION_48(v121 + v120);
    if (v137)
    {
      sub_1B8D9207C(v121, &qword_1EBACC708, &unk_1B96D92F0);
      goto LABEL_28;
    }

LABEL_71:
    v138 = &qword_1EBACCC18;
    v139 = &unk_1B96D8D70;
LABEL_75:
    v143 = v121;
    goto LABEL_45;
  }

  sub_1B8DD9078(v121, v176, &qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_48(v121 + v120);
  if (v167)
  {
    sub_1B9549818();
    goto LABEL_71;
  }

  sub_1B954FD00(v121 + v120, v175, type metadata accessor for Searchfoundation_RFVisualProperty);
  OUTLINED_FUNCTION_107_7();
  sub_1B8D5D124();
  if ((v168 & 1) == 0 || (OUTLINED_FUNCTION_58_15(), !v137))
  {
    sub_1B9549818();
    OUTLINED_FUNCTION_202();
    sub_1B9549818();
    v138 = &qword_1EBACC708;
    v139 = &unk_1B96D92F0;
    goto LABEL_75;
  }

  OUTLINED_FUNCTION_1328();
  OUTLINED_FUNCTION_2_75();
  sub_1B955498C(v172, v173);
  OUTLINED_FUNCTION_645_0();
  OUTLINED_FUNCTION_18_30();
  sub_1B9549818();
  OUTLINED_FUNCTION_121_5();
  sub_1B8D9207C(v121, &qword_1EBACC708, &unk_1B96D92F0);
  if ((v131 & 1) == 0)
  {
    goto LABEL_46;
  }

LABEL_28:
  v133 = v71[6];
  sub_1B964C2B0();
  OUTLINED_FUNCTION_2_75();
  sub_1B955498C(v134, v135);
  v136 = sub_1B964C850();
LABEL_47:
  OUTLINED_FUNCTION_264(v136);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9558844(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B955498C(&qword_1EBAD0D20, type metadata accessor for Searchfoundation_RFFactItemShortHeroNumberCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B95588C4(uint64_t a1)
{
  v2 = sub_1B955498C(&qword_1EBACE5E0, type metadata accessor for Searchfoundation_RFFactItemShortHeroNumberCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9558934()
{
  sub_1B955498C(&qword_1EBACE5E0, type metadata accessor for Searchfoundation_RFFactItemShortHeroNumberCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B95589CC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB3C90);
  __swift_project_value_buffer(v0, qword_1EBAB3C90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1B964E4A0;
  v4 = v20 + v3;
  v5 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v5 = "number";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "text_1";
  *(v9 + 8) = 6;
  *(v9 + 16) = 2;
  v10 = *MEMORY[0x1E69AADE8];
  v8();
  v11 = (v4 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "text_2";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v8();
  v13 = (v4 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "text_3";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v8();
  v15 = (v4 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "thumbnail";
  *(v16 + 1) = 9;
  v16[16] = 2;
  v8();
  v17 = (v4 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "text_4";
  *(v18 + 1) = 6;
  v18[16] = 2;
  v8();
  return sub_1B964C760();
}

void Searchfoundation_RFFactItemDetailedNumberCardSection.decodeMessage<A>(decoder:)()
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
      case 1:
        OUTLINED_FUNCTION_16_36();
        sub_1B955A7C4();
        break;
      case 2:
        OUTLINED_FUNCTION_16_36();
        sub_1B955A840();
        break;
      case 3:
        OUTLINED_FUNCTION_16_36();
        sub_1B9558DB4();
        break;
      case 4:
        OUTLINED_FUNCTION_16_36();
        sub_1B9558E30();
        break;
      case 5:
        OUTLINED_FUNCTION_9();
        sub_1B9558EAC();
        break;
      case 6:
        OUTLINED_FUNCTION_9();
        sub_1B9558F60();
        break;
      default:
        continue;
    }
  }
}

void sub_1B9558DB4()
{
  OUTLINED_FUNCTION_822();
  v0 = OUTLINED_FUNCTION_20_20();
  v2 = *(v1(v0) + 28);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_1_90();
  sub_1B955498C(v3, v4);
  OUTLINED_FUNCTION_4_21();
  sub_1B964C580();
  OUTLINED_FUNCTION_823();
}

void sub_1B9558E30()
{
  OUTLINED_FUNCTION_822();
  v0 = OUTLINED_FUNCTION_20_20();
  v2 = *(v1(v0) + 32);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_1_90();
  sub_1B955498C(v3, v4);
  OUTLINED_FUNCTION_4_21();
  sub_1B964C580();
  OUTLINED_FUNCTION_823();
}

uint64_t sub_1B9558EAC()
{
  v0 = *(type metadata accessor for Searchfoundation_RFFactItemDetailedNumberCardSection(0) + 36);
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  sub_1B955498C(&qword_1ED9D2A40, type metadata accessor for Searchfoundation_RFVisualProperty);
  return sub_1B964C580();
}

uint64_t sub_1B9558F60()
{
  v0 = *(type metadata accessor for Searchfoundation_RFFactItemDetailedNumberCardSection(0) + 40);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  sub_1B955498C(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty);
  return sub_1B964C580();
}

void Searchfoundation_RFFactItemDetailedNumberCardSection.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v101 = v6;
  v102 = v7;
  v100 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_185();
  v97 = v13;
  v14 = OUTLINED_FUNCTION_201();
  v98 = type metadata accessor for Searchfoundation_RFVisualProperty(v14);
  v15 = OUTLINED_FUNCTION_59_1(v98);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_21();
  v92 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  v20 = OUTLINED_FUNCTION_183(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_59_15();
  v24 = MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_35_17(v24, v25, v26, v27, v28, v29, v30, v31, v91);
  v33 = MEMORY[0x1EEE9AC00](v32);
  v35 = &v91 - v34;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_91_6();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_94_12();
  v37 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  v38 = OUTLINED_FUNCTION_59_1(v37);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_44_0();
  v91 = v41;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_48_16();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_47_16();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_93_10();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_211();
  v99 = type metadata accessor for Searchfoundation_RFFactItemDetailedNumberCardSection(0);
  sub_1B8DD9078(v1 + v99[5], v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
  v46 = OUTLINED_FUNCTION_105_9();
  OUTLINED_FUNCTION_178(v46, v47, v37);
  if (v48)
  {
    sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    OUTLINED_FUNCTION_45_18();
    sub_1B954FD00(v0, v4, v49);
    OUTLINED_FUNCTION_1_90();
    sub_1B955498C(v50, v51);
    sub_1B964C740();
    sub_1B9549818();
    if (v2)
    {
      goto LABEL_27;
    }
  }

  v52 = v99[6];
  v102 = v1;
  sub_1B8DD9078(v1 + v52, v3, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_178(v3, 1, v37);
  if (v48)
  {
    sub_1B8D9207C(v3, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    OUTLINED_FUNCTION_87_7();
    sub_1B954FD00(v3, v5, v53);
    OUTLINED_FUNCTION_1_90();
    sub_1B955498C(v54, v55);
    v2 = v1;
    sub_1B964C740();
    sub_1B9549818();
    if (v1)
    {
      goto LABEL_27;
    }
  }

  v56 = v99;
  v57 = OUTLINED_FUNCTION_155_5(v99[7]);
  sub_1B8DD9078(v57, v35, v58, v59);
  v60 = OUTLINED_FUNCTION_207();
  v61 = v37;
  OUTLINED_FUNCTION_178(v60, v62, v37);
  v63 = v97;
  if (v48)
  {
    sub_1B8D9207C(v35, &qword_1EBAB8DF8, &qword_1B96B9A80);
    v64 = v98;
  }

  else
  {
    OUTLINED_FUNCTION_6_46();
    sub_1B954FD00(v35, v94, v65);
    OUTLINED_FUNCTION_1_90();
    sub_1B955498C(v66, v67);
    OUTLINED_FUNCTION_257_0();
    OUTLINED_FUNCTION_145_9();
    OUTLINED_FUNCTION_202();
    sub_1B9549818();
    v64 = v98;
    if (v2)
    {
      goto LABEL_27;
    }
  }

  v68 = v95;
  v69 = OUTLINED_FUNCTION_155_5(v56[8]);
  sub_1B8DD9078(v69, v68, v70, v71);
  v72 = OUTLINED_FUNCTION_105_9();
  OUTLINED_FUNCTION_178(v72, v73, v61);
  v74 = v96;
  if (v48)
  {
    sub_1B8D9207C(v68, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    sub_1B954FD00(v68, v93, type metadata accessor for Searchfoundation_RFTextProperty);
    OUTLINED_FUNCTION_1_90();
    sub_1B955498C(v75, v76);
    OUTLINED_FUNCTION_257_0();
    OUTLINED_FUNCTION_145_9();
    OUTLINED_FUNCTION_202();
    sub_1B9549818();
    if (v2)
    {
      goto LABEL_27;
    }

    v74 = v96;
  }

  v77 = OUTLINED_FUNCTION_155_5(v56[9]);
  sub_1B8DD9078(v77, v63, v78, v79);
  OUTLINED_FUNCTION_178(v63, 1, v64);
  if (v48)
  {
    sub_1B8D9207C(v63, &qword_1EBACC708, &unk_1B96D92F0);
  }

  else
  {
    OUTLINED_FUNCTION_28_24();
    sub_1B954FD00(v63, v92, v80);
    OUTLINED_FUNCTION_12_39();
    sub_1B955498C(v81, v82);
    OUTLINED_FUNCTION_145_9();
    sub_1B9549818();
    if (v2)
    {
      goto LABEL_27;
    }
  }

  v83 = OUTLINED_FUNCTION_155_5(v56[10]);
  sub_1B8DD9078(v83, v74, v84, v85);
  v86 = OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_178(v86, v87, v61);
  if (v48)
  {
    sub_1B8D9207C(v74, &qword_1EBAB8DF8, &qword_1B96B9A80);
LABEL_26:
    sub_1B964C290();
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_87_7();
  sub_1B954FD00(v74, v91, v88);
  OUTLINED_FUNCTION_1_90();
  sub_1B955498C(v89, v90);
  OUTLINED_FUNCTION_257_0();
  sub_1B964C740();
  OUTLINED_FUNCTION_202();
  sub_1B9549818();
  if (!v56)
  {
    goto LABEL_26;
  }

LABEL_27:
  OUTLINED_FUNCTION_272_0();
}

void static Searchfoundation_RFFactItemDetailedNumberCardSection.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v3 = v2;
  v5 = v4;
  v193 = type metadata accessor for Searchfoundation_RFVisualProperty(0);
  v6 = OUTLINED_FUNCTION_59_1(v193);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_21();
  v188 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_183(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_185();
  v190 = v14;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACCC18, &unk_1B96D8D70);
  OUTLINED_FUNCTION_59_1(v192);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_185();
  v194 = v18;
  v19 = OUTLINED_FUNCTION_201();
  v20 = type metadata accessor for Searchfoundation_RFTextProperty(v19);
  v21 = OUTLINED_FUNCTION_59_1(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_44_0();
  v186 = v24;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_682();
  v191 = v26;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_682();
  v196 = v28;
  OUTLINED_FUNCTION_230();
  v30 = MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_35_17(v30, v31, v32, v33, v34, v35, v36, v37, v185);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_219_0();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  v40 = OUTLINED_FUNCTION_183(v39);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_44_0();
  v187 = v43;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_682();
  v195 = v45;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_47_16();
  v48 = MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_36_12(v48, v49, v50, v51, v52, v53, v54, v55, v185);
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v185 - v57;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E00, &qword_1B964D600);
  v60 = OUTLINED_FUNCTION_59_1(v59);
  v62 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_44_0();
  v189 = v63;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_48_16();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_675_0();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_682();
  v204 = v67;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v68);
  v69 = OUTLINED_FUNCTION_95_8();
  v205 = type metadata accessor for Searchfoundation_RFFactItemDetailedNumberCardSection(v69);
  v70 = v205[5];
  v202 = v59;
  v203 = v5;
  v71 = *(v59 + 48);
  OUTLINED_FUNCTION_148_6(v5 + v70, v0);
  v72 = v3;
  OUTLINED_FUNCTION_148_6(v3 + v70, v0 + v71);
  OUTLINED_FUNCTION_9_2();
  if (v128)
  {
    OUTLINED_FUNCTION_57(v0 + v71);
    if (v128)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_6;
    }

LABEL_35:
    v129 = &qword_1EBAB8E00;
    v130 = &qword_1B964D600;
LABEL_39:
    v135 = v0;
LABEL_40:
    sub_1B8D9207C(v135, v129, v130);
LABEL_41:
    v127 = 0;
    goto LABEL_42;
  }

  sub_1B8DD9078(v0, v58, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_57(v0 + v71);
  if (v128)
  {
    OUTLINED_FUNCTION_7_48();
    sub_1B9549818();
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_1_89();
  sub_1B954FD00(v0 + v71, v1, v131);
  v132 = *v58;
  v133 = *v1;
  sub_1B8D5BA08();
  if ((v134 & 1) == 0 || v58[8] != *(v1 + 8))
  {
    OUTLINED_FUNCTION_6_46();
    sub_1B9549818();
    sub_1B9549818();
    v129 = &qword_1EBAB8DF8;
    v130 = &qword_1B96B9A80;
    goto LABEL_39;
  }

  v144 = *(v20 + 24);
  v145 = sub_1B964C2B0();
  OUTLINED_FUNCTION_2_75();
  sub_1B955498C(v146, v147);
  sub_1B964C850();
  OUTLINED_FUNCTION_10_43();
  sub_1B9549818();
  sub_1B9549818();
  sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v145 & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_6:
  v73 = v204;
  v74 = v205[6];
  v75 = v202;
  v76 = *(v202 + 48);
  OUTLINED_FUNCTION_36_11(v203 + v74, v204);
  OUTLINED_FUNCTION_36_11(v72 + v74, v73 + v76);
  OUTLINED_FUNCTION_57(v73);
  if (v128)
  {
    OUTLINED_FUNCTION_57(v73 + v76);
    if (v128)
    {
      sub_1B8D9207C(v73, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_11;
    }

LABEL_46:
    v129 = &qword_1EBAB8E00;
    v130 = &qword_1B964D600;
    v135 = v73;
    goto LABEL_40;
  }

  v136 = v201;
  sub_1B8DD9078(v73, v201, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_57(v73 + v76);
  if (v137)
  {
    OUTLINED_FUNCTION_7_48();
    sub_1B9549818();
    goto LABEL_46;
  }

  OUTLINED_FUNCTION_1_89();
  v138 = v73 + v76;
  v139 = v199;
  sub_1B954FD00(v138, v199, v140);
  v141 = *v136;
  v142 = *v139;
  sub_1B8D5BA08();
  if ((v143 & 1) == 0 || *(v136 + 8) != *(v139 + 8))
  {
    OUTLINED_FUNCTION_5_51();
    sub_1B9549818();
    OUTLINED_FUNCTION_121_5();
    v129 = &qword_1EBAB8DF8;
    v130 = &qword_1B96B9A80;
    v135 = v204;
    goto LABEL_40;
  }

  v156 = *(v20 + 24);
  v157 = sub_1B964C2B0();
  OUTLINED_FUNCTION_2_75();
  sub_1B955498C(v158, v159);
  sub_1B964C850();
  OUTLINED_FUNCTION_10_43();
  sub_1B9549818();
  OUTLINED_FUNCTION_186();
  sub_1B9549818();
  sub_1B8D9207C(v204, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v157 & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_11:
  v77 = v205[7];
  v78 = v20;
  v79 = *(v75 + 48);
  v80 = v200;
  OUTLINED_FUNCTION_71_10();
  sub_1B8DD9078(v81, v82, v83, v84);
  OUTLINED_FUNCTION_71_10();
  sub_1B8DD9078(v85, v86, v87, v88);
  OUTLINED_FUNCTION_75(v80);
  if (v128)
  {
    OUTLINED_FUNCTION_75(v80 + v79);
    if (!v128)
    {
      goto LABEL_63;
    }

    sub_1B8D9207C(v80, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    sub_1B8DD9078(v80, v198, &qword_1EBAB8DF8, &qword_1B96B9A80);
    v148 = OUTLINED_FUNCTION_81_10();
    OUTLINED_FUNCTION_110(v148, v149);
    if (v150)
    {
      goto LABEL_62;
    }

    OUTLINED_FUNCTION_1_89();
    sub_1B954FD00(v80 + v79, v196, v151);
    OUTLINED_FUNCTION_102_12();
    sub_1B8D5BA08();
    if ((v152 & 1) == 0)
    {
      goto LABEL_66;
    }

    OUTLINED_FUNCTION_52_13();
    if (!v128)
    {
      goto LABEL_66;
    }

    OUTLINED_FUNCTION_1328();
    OUTLINED_FUNCTION_2_75();
    sub_1B955498C(v153, v154);
    v155 = OUTLINED_FUNCTION_181();
    OUTLINED_FUNCTION_5_51();
    sub_1B9549818();
    OUTLINED_FUNCTION_128();
    sub_1B9549818();
    sub_1B8D9207C(v80, &qword_1EBAB8DF8, &qword_1B96B9A80);
    if ((v155 & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  v89 = v205[8];
  v90 = *(v75 + 48);
  v80 = v197;
  OUTLINED_FUNCTION_71_10();
  sub_1B8DD9078(v91, v92, v93, v94);
  OUTLINED_FUNCTION_71_10();
  sub_1B8DD9078(v95, v96, v97, v98);
  OUTLINED_FUNCTION_75(v80);
  if (v128)
  {
    OUTLINED_FUNCTION_75(v80 + v90);
    if (!v128)
    {
      goto LABEL_63;
    }

    sub_1B8D9207C(v80, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    sub_1B8DD9078(v80, v195, &qword_1EBAB8DF8, &qword_1B96B9A80);
    v160 = OUTLINED_FUNCTION_81_10();
    OUTLINED_FUNCTION_110(v160, v161);
    if (v162)
    {
      goto LABEL_62;
    }

    OUTLINED_FUNCTION_1_89();
    sub_1B954FD00(v80 + v90, v191, v163);
    OUTLINED_FUNCTION_102_12();
    sub_1B8D5BA08();
    if ((v164 & 1) == 0)
    {
      goto LABEL_66;
    }

    OUTLINED_FUNCTION_52_13();
    if (!v128)
    {
      goto LABEL_66;
    }

    OUTLINED_FUNCTION_1328();
    OUTLINED_FUNCTION_2_75();
    sub_1B955498C(v174, v175);
    v176 = OUTLINED_FUNCTION_181();
    OUTLINED_FUNCTION_5_51();
    sub_1B9549818();
    OUTLINED_FUNCTION_128();
    sub_1B9549818();
    sub_1B8D9207C(v80, &qword_1EBAB8DF8, &qword_1B96B9A80);
    if ((v176 & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  v99 = v205[9];
  v100 = *(v192 + 48);
  v101 = v194;
  OUTLINED_FUNCTION_71_10();
  sub_1B8DD9078(v102, v103, v104, v105);
  v0 = v101;
  OUTLINED_FUNCTION_71_10();
  sub_1B8DD9078(v106, v107, v108, v109);
  v110 = OUTLINED_FUNCTION_602();
  v111 = v193;
  OUTLINED_FUNCTION_44(v110, v112);
  if (v128)
  {
    OUTLINED_FUNCTION_48(v101 + v100);
    if (v128)
    {
      sub_1B8D9207C(v101, &qword_1EBACC708, &unk_1B96D92F0);
      goto LABEL_26;
    }

LABEL_71:
    v129 = &qword_1EBACCC18;
    v130 = &unk_1B96D8D70;
    goto LABEL_39;
  }

  v165 = v101;
  v166 = v190;
  sub_1B8DD9078(v165, v190, &qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_48(v0 + v100);
  if (v167)
  {
    OUTLINED_FUNCTION_44_15();
    sub_1B9549818();
    goto LABEL_71;
  }

  OUTLINED_FUNCTION_0_107();
  v168 = v0 + v100;
  v169 = v188;
  sub_1B954FD00(v168, v188, v170);
  v171 = *v166;
  v172 = *v169;
  sub_1B8D5D124();
  if ((v173 & 1) == 0 || *(v166 + 8) != *(v169 + 8))
  {
    OUTLINED_FUNCTION_28_24();
    sub_1B9549818();
    sub_1B9549818();
    v129 = &qword_1EBACC708;
    v130 = &unk_1B96D92F0;
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_1328();
  OUTLINED_FUNCTION_2_75();
  sub_1B955498C(v183, v184);
  OUTLINED_FUNCTION_845_0();
  OUTLINED_FUNCTION_18_30();
  sub_1B9549818();
  sub_1B9549818();
  sub_1B8D9207C(v0, &qword_1EBACC708, &unk_1B96D92F0);
  if ((v111 & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_26:
  v113 = v205[10];
  v114 = *(v75 + 48);
  v80 = v189;
  OUTLINED_FUNCTION_71_10();
  sub_1B8DD9078(v115, v116, v117, v118);
  OUTLINED_FUNCTION_71_10();
  sub_1B8DD9078(v119, v120, v121, v122);
  v123 = OUTLINED_FUNCTION_602();
  OUTLINED_FUNCTION_110(v123, v124);
  if (v128)
  {
    OUTLINED_FUNCTION_48(v80 + v114);
    if (v128)
    {
      sub_1B8D9207C(v80, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_31;
    }

LABEL_63:
    v129 = &qword_1EBAB8E00;
    v130 = &qword_1B964D600;
LABEL_67:
    v135 = v80;
    goto LABEL_40;
  }

  sub_1B8DD9078(v80, v187, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_48(v80 + v114);
  if (v177)
  {
LABEL_62:
    OUTLINED_FUNCTION_7_48();
    sub_1B9549818();
    goto LABEL_63;
  }

  OUTLINED_FUNCTION_1_89();
  sub_1B954FD00(v80 + v114, v186, v178);
  OUTLINED_FUNCTION_102_12();
  sub_1B8D5BA08();
  if ((v179 & 1) == 0 || (OUTLINED_FUNCTION_52_13(), !v128))
  {
LABEL_66:
    OUTLINED_FUNCTION_6_46();
    sub_1B9549818();
    OUTLINED_FUNCTION_182();
    sub_1B9549818();
    v129 = &qword_1EBAB8DF8;
    v130 = &qword_1B96B9A80;
    goto LABEL_67;
  }

  v180 = *(v78 + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_2_75();
  sub_1B955498C(v181, v182);
  LOBYTE(v180) = OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_5_51();
  sub_1B9549818();
  OUTLINED_FUNCTION_128();
  sub_1B9549818();
  sub_1B8D9207C(v80, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v180 & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_31:
  sub_1B964C2B0();
  OUTLINED_FUNCTION_2_75();
  sub_1B955498C(v125, v126);
  v127 = sub_1B964C850();
LABEL_42:
  OUTLINED_FUNCTION_264(v127);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B955A36C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B955498C(&qword_1EBAD0D18, type metadata accessor for Searchfoundation_RFFactItemDetailedNumberCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B955A3EC(uint64_t a1)
{
  v2 = sub_1B955498C(qword_1ED9C9008, type metadata accessor for Searchfoundation_RFFactItemDetailedNumberCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B955A45C()
{
  sub_1B955498C(qword_1ED9C9008, type metadata accessor for Searchfoundation_RFFactItemDetailedNumberCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B955A4F4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD0C70);
  __swift_project_value_buffer(v0, qword_1EBAD0C70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "number";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "text_1";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "thumbnail";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v9();
  return sub_1B964C760();
}

void Searchfoundation_RFFactItemImageRightCardSection.decodeMessage<A>(decoder:)()
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
        sub_1B955A8BC();
        break;
      case 2:
        OUTLINED_FUNCTION_16_36();
        sub_1B955A840();
        break;
      case 1:
        OUTLINED_FUNCTION_16_36();
        sub_1B955A7C4();
        break;
    }
  }
}

void sub_1B955A7C4()
{
  OUTLINED_FUNCTION_822();
  v0 = OUTLINED_FUNCTION_20_20();
  v2 = *(v1(v0) + 20);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_1_90();
  sub_1B955498C(v3, v4);
  OUTLINED_FUNCTION_4_21();
  sub_1B964C580();
  OUTLINED_FUNCTION_823();
}

void sub_1B955A840()
{
  OUTLINED_FUNCTION_822();
  v0 = OUTLINED_FUNCTION_20_20();
  v2 = *(v1(v0) + 24);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_1_90();
  sub_1B955498C(v3, v4);
  OUTLINED_FUNCTION_4_21();
  sub_1B964C580();
  OUTLINED_FUNCTION_823();
}

uint64_t sub_1B955A8BC()
{
  v0 = *(type metadata accessor for Searchfoundation_RFFactItemImageRightCardSection(0) + 28);
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  sub_1B955498C(&qword_1ED9D2A40, type metadata accessor for Searchfoundation_RFVisualProperty);
  return sub_1B964C580();
}

void Searchfoundation_RFFactItemImageRightCardSection.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v60 = v1;
  v61 = v3;
  v4 = v0;
  v62 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_183(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_185();
  v57 = v10;
  v11 = OUTLINED_FUNCTION_201();
  v58 = type metadata accessor for Searchfoundation_RFVisualProperty(v11);
  v12 = OUTLINED_FUNCTION_59_1(v58);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_21();
  v56 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  v17 = OUTLINED_FUNCTION_183(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_66();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v55 - v24;
  v26 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  v27 = OUTLINED_FUNCTION_59_1(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_66();
  v32 = v30 - v31;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_219_0();
  v34 = type metadata accessor for Searchfoundation_RFFactItemImageRightCardSection(0);
  v35 = v34[5];
  v59 = v4;
  sub_1B8DD9078(v4 + v35, v25, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_55_12();
  OUTLINED_FUNCTION_178(v36, v37, v38);
  if (v39)
  {
    sub_1B8D9207C(v25, &qword_1EBAB8DF8, &qword_1B96B9A80);
    v44 = v60;
  }

  else
  {
    OUTLINED_FUNCTION_13_35();
    sub_1B954FD00(v25, v2, v40);
    OUTLINED_FUNCTION_1_90();
    sub_1B955498C(v41, v42);
    v43 = v60;
    sub_1B964C740();
    v44 = v43;
    sub_1B9549818();
    if (v43)
    {
      goto LABEL_15;
    }
  }

  v45 = v59;
  sub_1B8DD9078(v59 + v34[6], v22, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_55_12();
  OUTLINED_FUNCTION_178(v46, v47, v48);
  if (v39)
  {
    sub_1B8D9207C(v22, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    OUTLINED_FUNCTION_13_35();
    sub_1B954FD00(v22, v32, v49);
    OUTLINED_FUNCTION_1_90();
    sub_1B955498C(v50, v51);
    sub_1B964C740();
    sub_1B9549818();
    if (v44)
    {
      goto LABEL_15;
    }

    v45 = v59;
  }

  v52 = v57;
  sub_1B8DD9078(v45 + v34[7], v57, &qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_178(v52, 1, v58);
  if (v39)
  {
    sub_1B8D9207C(v52, &qword_1EBACC708, &unk_1B96D92F0);
LABEL_14:
    sub_1B964C290();
    goto LABEL_15;
  }

  sub_1B954FD00(v52, v56, type metadata accessor for Searchfoundation_RFVisualProperty);
  OUTLINED_FUNCTION_12_39();
  sub_1B955498C(v53, v54);
  OUTLINED_FUNCTION_272_2();
  sub_1B964C740();
  sub_1B9549818();
  if (!v44)
  {
    goto LABEL_14;
  }

LABEL_15:
  OUTLINED_FUNCTION_272_0();
}

void static Searchfoundation_RFFactItemImageRightCardSection.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v3 = v2;
  v5 = v4;
  v85 = type metadata accessor for Searchfoundation_RFVisualProperty(0);
  v6 = OUTLINED_FUNCTION_59_1(v85);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_21();
  v82 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_183(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_185();
  v83 = v14;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACCC18, &unk_1B96D8D70);
  OUTLINED_FUNCTION_59_1(v84);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_185();
  v86 = v18;
  v19 = OUTLINED_FUNCTION_201();
  v20 = type metadata accessor for Searchfoundation_RFTextProperty(v19);
  v21 = OUTLINED_FUNCTION_59_1(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_266_0();
  v88 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  v27 = OUTLINED_FUNCTION_183(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_44_0();
  v87 = v30;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_219_0();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E00, &qword_1B964D600);
  v33 = OUTLINED_FUNCTION_59_1(v32);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_44_0();
  v90 = v36;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v37);
  v38 = OUTLINED_FUNCTION_95_8();
  v89 = type metadata accessor for Searchfoundation_RFFactItemImageRightCardSection(v38);
  v39 = v89[5];
  v40 = *(v32 + 48);
  v91 = v5;
  sub_1B8DD9078(v5 + v39, v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
  sub_1B8DD9078(v3 + v39, v0 + v40, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_48(v0);
  if (v58)
  {
    OUTLINED_FUNCTION_48(v0 + v40);
    if (v58)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_6;
    }

LABEL_20:
    v59 = &qword_1EBAB8E00;
    v60 = &qword_1B964D600;
LABEL_24:
    v65 = v0;
LABEL_43:
    sub_1B8D9207C(v65, v59, v60);
LABEL_44:
    v57 = 0;
    goto LABEL_45;
  }

  sub_1B8DD9078(v0, v1, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_48(v0 + v40);
  if (v58)
  {
    OUTLINED_FUNCTION_7_48();
    sub_1B9549818();
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_1_89();
  sub_1B954FD00(v0 + v40, v88, v61);
  v62 = *v1;
  v63 = *v88;
  sub_1B8D5BA08();
  if ((v64 & 1) == 0 || *(v1 + 8) != *(v88 + 8))
  {
    OUTLINED_FUNCTION_6_46();
    sub_1B9549818();
    sub_1B9549818();
    v59 = &qword_1EBAB8DF8;
    v60 = &qword_1B96B9A80;
    goto LABEL_24;
  }

  v70 = *(v20 + 24);
  v71 = sub_1B964C2B0();
  OUTLINED_FUNCTION_2_75();
  sub_1B955498C(v72, v73);
  sub_1B964C850();
  OUTLINED_FUNCTION_10_43();
  sub_1B9549818();
  sub_1B9549818();
  sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v71 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_6:
  v41 = v89[6];
  v42 = *(v32 + 48);
  OUTLINED_FUNCTION_36_11(v91 + v41, v90);
  OUTLINED_FUNCTION_36_11(v3 + v41, v90 + v42);
  OUTLINED_FUNCTION_48(v90);
  if (v58)
  {
    OUTLINED_FUNCTION_48(v90 + v42);
    if (v58)
    {
      sub_1B8D9207C(v90, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_11;
    }

LABEL_28:
    v59 = &qword_1EBAB8E00;
    v60 = &qword_1B964D600;
LABEL_32:
    v65 = v90;
    goto LABEL_43;
  }

  sub_1B8DD9078(v90, v87, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_48(v90 + v42);
  if (v66)
  {
    OUTLINED_FUNCTION_7_48();
    sub_1B9549818();
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_1_89();
  OUTLINED_FUNCTION_165_6(v90 + v42, v67, v68);
  OUTLINED_FUNCTION_102_12();
  sub_1B8D5BA08();
  if ((v69 & 1) == 0 || (OUTLINED_FUNCTION_52_13(), !v58))
  {
    OUTLINED_FUNCTION_6_46();
    sub_1B9549818();
    OUTLINED_FUNCTION_182();
    sub_1B9549818();
    v59 = &qword_1EBAB8DF8;
    v60 = &qword_1B96B9A80;
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_1328();
  OUTLINED_FUNCTION_2_75();
  sub_1B955498C(v77, v78);
  v79 = OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_5_51();
  sub_1B9549818();
  OUTLINED_FUNCTION_128();
  sub_1B9549818();
  sub_1B8D9207C(v90, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v79 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_11:
  v43 = v89[7];
  v44 = *(v84 + 48);
  OUTLINED_FUNCTION_71_10();
  sub_1B8DD9078(v45, v46, v47, v48);
  OUTLINED_FUNCTION_71_10();
  sub_1B8DD9078(v49, v50, v51, v52);
  v53 = OUTLINED_FUNCTION_602();
  OUTLINED_FUNCTION_44(v53, v54);
  if (v58)
  {
    OUTLINED_FUNCTION_48(v86 + v44);
    if (v58)
    {
      sub_1B8D9207C(v86, &qword_1EBACC708, &unk_1B96D92F0);
      goto LABEL_16;
    }

LABEL_38:
    v59 = &qword_1EBACCC18;
    v60 = &unk_1B96D8D70;
LABEL_42:
    v65 = v86;
    goto LABEL_43;
  }

  sub_1B8DD9078(v86, v83, &qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_48(v86 + v44);
  if (v74)
  {
    OUTLINED_FUNCTION_44_15();
    sub_1B9549818();
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_0_107();
  sub_1B954FD00(v86 + v44, v82, v75);
  OUTLINED_FUNCTION_102_12();
  sub_1B8D5D124();
  if ((v76 & 1) == 0 || (OUTLINED_FUNCTION_52_13(), !v58))
  {
    OUTLINED_FUNCTION_28_24();
    sub_1B9549818();
    OUTLINED_FUNCTION_182();
    sub_1B9549818();
    v59 = &qword_1EBACC708;
    v60 = &unk_1B96D92F0;
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_1328();
  OUTLINED_FUNCTION_2_75();
  sub_1B955498C(v80, v81);
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_18_30();
  sub_1B9549818();
  OUTLINED_FUNCTION_128();
  sub_1B9549818();
  sub_1B8D9207C(v86, &qword_1EBACC708, &unk_1B96D92F0);
  if ((v85 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_16:
  sub_1B964C2B0();
  OUTLINED_FUNCTION_2_75();
  sub_1B955498C(v55, v56);
  OUTLINED_FUNCTION_272_2();
  v57 = sub_1B964C850();
LABEL_45:
  OUTLINED_FUNCTION_264(v57);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B955B4D0()
{
  OUTLINED_FUNCTION_111_0();
  v1 = v0;
  sub_1B964CA70();
  v1(0);
  v2 = OUTLINED_FUNCTION_461();
  sub_1B955498C(v2, v3);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B955B5A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B955498C(&qword_1EBAD0D10, type metadata accessor for Searchfoundation_RFFactItemImageRightCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B955B620(uint64_t a1)
{
  v2 = sub_1B955498C(&qword_1EBACE5D8, type metadata accessor for Searchfoundation_RFFactItemImageRightCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B955B690()
{
  sub_1B955498C(&qword_1EBACE5D8, type metadata accessor for Searchfoundation_RFFactItemImageRightCardSection);

  return sub_1B964C5D0();
}

void sub_1B955BDF8()
{
  sub_1B955BF44(319, &qword_1ED9D39F0, type metadata accessor for Searchfoundation_RFTextProperty, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      sub_1B955BF44(319, &qword_1ED9F1E00, type metadata accessor for Searchfoundation_RFTextProperty, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1B955BF44(319, &qword_1ED9F1BC0, type metadata accessor for Searchfoundation_RFVisualProperty, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B955BF44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B955BFF8()
{
  sub_1B955BF44(319, &qword_1ED9D39F0, type metadata accessor for Searchfoundation_RFTextProperty, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      sub_1B955BF44(319, &qword_1ED9F1E00, type metadata accessor for Searchfoundation_RFTextProperty, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_83Tm_0()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_10_7();
  }

  v4 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1(v4);
  if (*(v5 + 84) == v0)
  {
    v6 = *(v1 + 24);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
    OUTLINED_FUNCTION_128_1(v7);
    if (*(v8 + 84) == v0)
    {
      OUTLINED_FUNCTION_267_0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
      v6 = *(v1 + 44);
    }
  }

  v9 = OUTLINED_FUNCTION_699(v6);

  return __swift_getEnumTagSinglePayload(v9, v10, v11);
}

void __swift_store_extra_inhabitant_index_84Tm_0()
{
  OUTLINED_FUNCTION_7();
  if (v4)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_178_0();
    v5 = sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1(v5);
    if (*(v6 + 84) == v3)
    {
      v7 = *(v2 + 24);
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
      OUTLINED_FUNCTION_128_1(v8);
      if (*(v9 + 84) == v3)
      {
        OUTLINED_FUNCTION_259_0();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
        v7 = *(v2 + 44);
      }
    }

    v10 = OUTLINED_FUNCTION_699(v7);

    __swift_storeEnumTagSinglePayload(v10, v11, v0, v12);
  }
}

void sub_1B955C318()
{
  OUTLINED_FUNCTION_86_8();
  sub_1B955BF44(319, v0, v1, MEMORY[0x1E69E62F8]);
  if (v2 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v3 <= 0x3F)
    {
      OUTLINED_FUNCTION_86_8();
      sub_1B955BF44(319, v4, v5, MEMORY[0x1E69E6720]);
      if (v6 <= 0x3F)
      {
        sub_1B955BF44(319, &qword_1ED9F1BC0, type metadata accessor for Searchfoundation_RFVisualProperty, MEMORY[0x1E69E6720]);
        if (v7 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1B955C468()
{
  v0 = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B955BF44(319, &qword_1ED9F1E00, type metadata accessor for Searchfoundation_RFTextProperty, MEMORY[0x1E69E6720]);
    v0 = v2;
    if (v3 <= 0x3F)
    {
      sub_1B955BF44(319, &qword_1ED9F1BC0, type metadata accessor for Searchfoundation_RFVisualProperty, MEMORY[0x1E69E6720]);
      if (v5 > 0x3F)
      {
        return v4;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v0;
}

void sub_1B955C5A8()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B955BF44(319, &qword_1ED9F1E00, type metadata accessor for Searchfoundation_RFTextProperty, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1B955BF44(319, &qword_1ED9F1BC0, type metadata accessor for Searchfoundation_RFVisualProperty, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t OUTLINED_FUNCTION_51_17(uint64_t a1)
{
  __swift_getEnumTagSinglePayload(v3, 1, a1);

  return sub_1B8D9207C(v3, v1, v2);
}

uint64_t OUTLINED_FUNCTION_62_10(uint64_t a1)
{
  v6 = v1 + *(a1 + 40);

  return sub_1B8DD9078(v6, v3, v2, v4);
}

uint64_t OUTLINED_FUNCTION_99_12@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *result = a2;
  *(result + 8) = v2;
  *(result + 16) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_102_12()
{
  result = *v1;
  v3 = *v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_107_7()
{
  result = *v1;
  v3 = *v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_111_9()
{

  return sub_1B8D9207C(v2, v1, v0);
}

uint64_t OUTLINED_FUNCTION_112_8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{

  return sub_1B954FD00(v3, v4 + v5, a3);
}

uint64_t OUTLINED_FUNCTION_121_5()
{

  return sub_1B9549818();
}

uint64_t OUTLINED_FUNCTION_144_8()
{

  return sub_1B9549818();
}

uint64_t OUTLINED_FUNCTION_145_9()
{
  v2 = *(v0 - 72);

  return sub_1B964C740();
}

uint64_t OUTLINED_FUNCTION_146_6()
{

  return sub_1B9549818();
}

uint64_t OUTLINED_FUNCTION_148_6(uint64_t a1, uint64_t a2)
{

  return sub_1B8DD9078(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_163_8()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t OUTLINED_FUNCTION_165_6(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = *(v3 - 160);

  return sub_1B954FD00(a1, v5, a3);
}

void Searchfoundation_RFImageStyle.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  switch(a2)
  {
    case 30:
      a2 = 29;
      break;
    case 31:
      a2 = 30;
      break;
    case 32:
      a2 = 31;
      break;
    case 33:
      a2 = 32;
      break;
    case 34:
      a2 = 33;
      break;
    case 35:
      a2 = 34;
      break;
    case 36:
      a2 = 35;
      break;
    case 37:
      a2 = 36;
      break;
    case 38:
      a2 = 37;
      break;
    case 39:
      a2 = 38;
      break;
    case 40:
      a2 = 39;
      break;
    case 41:
      a2 = 40;
      break;
    default:
      break;
  }

  *a1 = a2;
  OUTLINED_FUNCTION_7_3(a1);
}

uint64_t Searchfoundation_RFImageStyle.rawValue.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_1B96DB7E0[result];
  }

  return result;
}

uint64_t sub_1B955CD60@<X0>(uint64_t *a1@<X8>)
{
  result = Searchfoundation_RFImageStyle.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B955CD94(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9570294();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Searchfoundation_RFImageStyle.allCases.modify()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t sub_1B955CE98@<X0>(uint64_t *a1@<X8>)
{
  result = static Searchfoundation_RFImageStyle.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B955CEE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B95702E8();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Searchfoundation_RFImageSizingMode.allCases.modify()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t sub_1B955CFCC@<X0>(uint64_t *a1@<X8>)
{
  result = static Searchfoundation_RFImageSizingMode.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B955D000(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B957033C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Searchfoundation_RFImageRenderingMode.allCases.modify()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t sub_1B955D0E8@<X0>(uint64_t *a1@<X8>)
{
  result = static Searchfoundation_RFImageRenderingMode.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B955D11C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9570390();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Searchfoundation_RFImageCornerRoundingMode.allCases.modify()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t sub_1B955D204@<X0>(uint64_t *a1@<X8>)
{
  result = static Searchfoundation_RFImageCornerRoundingMode.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B955D254(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9572110();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Searchfoundation_RFSymbolRenderingMode.allCases.modify()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t sub_1B955D33C@<X0>(uint64_t *a1@<X8>)
{
  result = static Searchfoundation_RFSymbolRenderingMode.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Searchfoundation_RFImageElement.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_RFImageElement(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_RFImageElement.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v1 = a1 + *(type metadata accessor for Searchfoundation_RFImageElement(0) + 20);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Searchfoundation_RFImageSource.value.getter()
{
  OUTLINED_FUNCTION_15_28();
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_209();
  return sub_1B8D92024();
}

uint64_t sub_1B955D4D4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DE0, &unk_1B964D5E0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1B8D92024();
  return Searchfoundation_RFImageSource.value.setter();
}

uint64_t Searchfoundation_RFImageSource.value.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = type metadata accessor for Searchfoundation_RFImageSource(v2);
  v4 = OUTLINED_FUNCTION_182_0(v3);
  v5 = *(v0 + v1);
  if ((v4 & 1) == 0)
  {
    v6 = type metadata accessor for Searchfoundation_RFImageSource._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v6);
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B9565A6C(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}