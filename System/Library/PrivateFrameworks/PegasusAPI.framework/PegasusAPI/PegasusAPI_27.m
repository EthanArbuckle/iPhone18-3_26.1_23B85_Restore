unint64_t sub_1B8F48A50()
{
  result = qword_1EBABF3E0;
  if (!qword_1EBABF3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABF3E0);
  }

  return result;
}

unint64_t sub_1B8F48AA8()
{
  result = qword_1EBABF3E8;
  if (!qword_1EBABF3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABF3E8);
  }

  return result;
}

unint64_t sub_1B8F48B30()
{
  result = qword_1EBABF400;
  if (!qword_1EBABF400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABF400);
  }

  return result;
}

unint64_t sub_1B8F48B88()
{
  result = qword_1EBABF408;
  if (!qword_1EBABF408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABF408);
  }

  return result;
}

unint64_t sub_1B8F48BE0()
{
  result = qword_1EBABF410;
  if (!qword_1EBABF410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABF410);
  }

  return result;
}

unint64_t sub_1B8F48C68()
{
  result = qword_1EBABF428;
  if (!qword_1EBABF428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABF428);
  }

  return result;
}

unint64_t sub_1B8F48CC0()
{
  result = qword_1EBABF430;
  if (!qword_1EBABF430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABF430);
  }

  return result;
}

unint64_t sub_1B8F48D18()
{
  result = qword_1EBABF438;
  if (!qword_1EBABF438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABF438);
  }

  return result;
}

unint64_t sub_1B8F48DA0()
{
  result = qword_1EBABF450;
  if (!qword_1EBABF450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABF450);
  }

  return result;
}

unint64_t sub_1B8F48DF8()
{
  result = qword_1EBABF458;
  if (!qword_1EBABF458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABF458);
  }

  return result;
}

unint64_t sub_1B8F48E50()
{
  result = qword_1EBABF460;
  if (!qword_1EBABF460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABF460);
  }

  return result;
}

unint64_t sub_1B8F48ED8()
{
  result = qword_1EBABF478;
  if (!qword_1EBABF478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABF478);
  }

  return result;
}

unint64_t sub_1B8F48F30()
{
  result = qword_1EBABF480;
  if (!qword_1EBABF480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABF480);
  }

  return result;
}

unint64_t sub_1B8F48F88()
{
  result = qword_1EBABF488;
  if (!qword_1EBABF488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABF488);
  }

  return result;
}

unint64_t sub_1B8F49010()
{
  result = qword_1EBABF4A0;
  if (!qword_1EBABF4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABF4A0);
  }

  return result;
}

unint64_t sub_1B8F49068()
{
  result = qword_1EBABF4A8;
  if (!qword_1EBABF4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABF4A8);
  }

  return result;
}

unint64_t sub_1B8F490C0()
{
  result = qword_1EBABF4B0;
  if (!qword_1EBABF4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABF4B0);
  }

  return result;
}

void sub_1B8F49D2C()
{
  sub_1B8DD7D14(319, &qword_1EBABA968);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B8F49E30()
{
  sub_1B8F4A114(319, &qword_1EBABF5B8, type metadata accessor for Apple_Parsec_Feedback_V2_ArgInfo, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B8DD7D14(319, qword_1EDA06FD0);
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

uint64_t __swift_get_extra_inhabitant_indexTm_0()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_700(*v0);
  }

  OUTLINED_FUNCTION_24_1();
  v3 = OUTLINED_FUNCTION_48_1();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void __swift_store_extra_inhabitant_indexTm_1()
{
  OUTLINED_FUNCTION_7();
  if (v2)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    sub_1B964C2B0();
    v3 = OUTLINED_FUNCTION_48_1();

    __swift_storeEnumTagSinglePayload(v3, v4, v0, v5);
  }
}

void sub_1B8F4A038()
{
  sub_1B8DD7D14(319, qword_1EDA06FD0);
  if (v0 <= 0x3F)
  {
    sub_1B8F4A114(319, &qword_1EBABF5D0, type metadata accessor for Apple_Parsec_Feedback_V2_IntentInfo, MEMORY[0x1E69E62F8]);
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

void sub_1B8F4A114(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void __swift_store_extra_inhabitant_index_339Tm()
{
  OUTLINED_FUNCTION_7();
  if (v2)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    sub_1B964C2B0();
    v3 = OUTLINED_FUNCTION_48_1();

    __swift_storeEnumTagSinglePayload(v3, v4, v0, v5);
  }
}

void sub_1B8F4A24C()
{
  sub_1B8F4A114(319, &qword_1EBABF5F8, type metadata accessor for Apple_Parsec_Feedback_V2_CompletionSourceInfo, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B8F4A350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_1B964C2B0();
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

void sub_1B8F4A414()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B8F4A114(319, &qword_1EBABF620, type metadata accessor for Apple_Parsec_Feedback_V2_ImageFeedback, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B8F4A52C()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B8F4A5B0()
{
  sub_1B8F4A114(319, &qword_1ED9CA400, type metadata accessor for Apple_Parsec_Feedback_V2_DomainProperty, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1B8F4A114(319, &qword_1ED9CC010, type metadata accessor for Apple_Parsec_Feedback_V2_KGInfo, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_1B8F4A784()
{
  result = qword_1EBABF688;
  if (!qword_1EBABF688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABF688);
  }

  return result;
}

unint64_t sub_1B8F4A7D8()
{
  result = qword_1EBABF690;
  if (!qword_1EBABF690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABF690);
  }

  return result;
}

unint64_t sub_1B8F4A82C()
{
  result = qword_1EBABF698;
  if (!qword_1EBABF698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABF698);
  }

  return result;
}

unint64_t sub_1B8F4A880()
{
  result = qword_1EBABF6A0;
  if (!qword_1EBABF6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABF6A0);
  }

  return result;
}

unint64_t sub_1B8F4A8D4()
{
  result = qword_1EBABF6A8;
  if (!qword_1EBABF6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABF6A8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_32(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 64) = v2;
  result = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackQuery(0);
  v5 = *(result + 20);
  *(a1 + 72) = v5;
  v6 = *(v2 + v5);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_19(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 72) = v2;
  result = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackQuery(0);
  v5 = *(result + 20);
  *(a1 + 84) = v5;
  v6 = *(v2 + v5);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_22(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 64) = v2;
  result = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackResult(0);
  *(a1 + 72) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_6_11(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 72) = v2;
  return 0;
}

uint64_t OUTLINED_FUNCTION_7_20(uint64_t a1)
{
  v2 = *(*a1 + 80);
  v3 = *(*(*a1 + 72) + *(*a1 + 84));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_8_20(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 56) = v2;
  result = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackResult(0);
  v5 = *(result + 20);
  *(a1 + 64) = v5;
  v6 = *(v2 + v5);
  return result;
}

uint64_t OUTLINED_FUNCTION_9_14()
{
  result = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackQuery(0);
  v2 = *(v0 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_12_15()
{
  result = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackQuery(0);
  v2 = *(v0 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_16_13()
{
  result = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackResult(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_18_9()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 64);
  return 0;
}

uint64_t OUTLINED_FUNCTION_19_8()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackQuery(0) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_21_8(uint64_t result)
{
  v3 = *(result + 20);
  *(v2 + 84) = v3;
  v4 = *(v1 + v3);
  return result;
}

uint64_t OUTLINED_FUNCTION_28_11()
{
  v1 = *(v0 + 84);
  v2 = *(v0 + 72);
  return 0;
}

uint64_t OUTLINED_FUNCTION_31_10()
{
  v0 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackResult._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_37_3(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 88) = v2;
  return 0;
}

uint64_t OUTLINED_FUNCTION_46_4()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackResult(0) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_65_5()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackQuery(0) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_72_4()
{
  v1 = *(v0 + 84);
  v2 = *(v0 + 72);
  return 0;
}

uint64_t OUTLINED_FUNCTION_77_4(uint64_t a1)
{
  v2 = *(v1 + *(type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackQuery(a1) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_81_2(uint64_t a1)
{
  v2 = *(v1 + *(type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackQuery(a1) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_94_5(uint64_t a1)
{
  v2 = *(v1 + *(type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackResult(a1) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_95_2(uint64_t a1)
{
  v2 = *(v1 + *(type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackResult(a1) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_124_0(uint64_t result)
{
  v3 = *(result + 20);
  *(v2 + 80) = v3;
  v4 = *(v1 + v3);
  return result;
}

uint64_t OUTLINED_FUNCTION_138_2@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 72);
  v4 = *(v1 + 80);
  v5 = *(*(v1 + 88) + *(v1 + 84));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t Google_Protobuf_EnumOptions.Apple_Parsec_Feedback_V2_objcEnumType.getter()
{
  if (qword_1EBAB69B8 != -1)
  {
    OUTLINED_FUNCTION_11_18();
  }

  OUTLINED_FUNCTION_4_22();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_26_11();
  return OUTLINED_FUNCTION_22_12(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12);
}

uint64_t sub_1B8F4AE8C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Google_Protobuf_EnumOptions.Apple_Parsec_Feedback_V2_objcEnumType.setter();
}

uint64_t Google_Protobuf_EnumOptions.Apple_Parsec_Feedback_V2_objcEnumType.setter()
{
  OUTLINED_FUNCTION_16();
  if (qword_1EBAB69B8 != -1)
  {
    OUTLINED_FUNCTION_11_18();
  }

  OUTLINED_FUNCTION_4_22();
  sub_1B8F4F470(v0, v1);
  OUTLINED_FUNCTION_25_10();
}

uint64_t Google_Protobuf_EnumOptions.Apple_Parsec_Feedback_V2_objcEnumType.modify()
{
  v1 = OUTLINED_FUNCTION_29_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_21_9(v2);
  *v0 = Google_Protobuf_EnumOptions.Apple_Parsec_Feedback_V2_objcEnumType.getter();
  v0[1] = v3;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F4AFAC(uint64_t **a1)
{
  OUTLINED_FUNCTION_31_11(a1);
  v4 = qword_1EBAB69B8;
  if (v5)
  {

    if (v4 != -1)
    {
      OUTLINED_FUNCTION_11_18();
    }

    v6 = v1[4];
    v1[2] = v3;
    v1[3] = v2;
    OUTLINED_FUNCTION_4_22();
    sub_1B8F4F470(v7, v8);
    OUTLINED_FUNCTION_23_9();

    v9 = v1[1];
  }

  else
  {
    if (qword_1EBAB69B8 != -1)
    {
      OUTLINED_FUNCTION_11_18();
    }

    v10 = v1[4];
    v1[2] = v3;
    v1[3] = v2;
    OUTLINED_FUNCTION_4_22();
    sub_1B8F4F470(v11, v12);
    OUTLINED_FUNCTION_23_9();
  }

  free(v1);
}

uint64_t Google_Protobuf_EnumOptions.hasApple_Parsec_Feedback_V2_objcEnumType.getter()
{
  if (qword_1EBAB69B8 != -1)
  {
    OUTLINED_FUNCTION_11_18();
  }

  OUTLINED_FUNCTION_4_22();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_24_13();

  return MEMORY[0x1EEE15650](v2);
}

Swift::Void __swiftcall Google_Protobuf_EnumOptions.clearApple_Parsec_Feedback_V2_objcEnumType()()
{
  if (qword_1EBAB69B8 != -1)
  {
    OUTLINED_FUNCTION_11_18();
  }

  OUTLINED_FUNCTION_4_22();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_24_13();

  MEMORY[0x1EEE15660](v2);
}

uint64_t Google_Protobuf_EnumValueOptions.Apple_Parsec_Feedback_V2_stringValue.getter()
{
  if (qword_1EBAB6990 != -1)
  {
    OUTLINED_FUNCTION_12_16();
  }

  OUTLINED_FUNCTION_3_23();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_26_11();
  return OUTLINED_FUNCTION_22_12(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12);
}

uint64_t sub_1B8F4B234(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Google_Protobuf_EnumValueOptions.Apple_Parsec_Feedback_V2_stringValue.setter();
}

uint64_t Google_Protobuf_EnumValueOptions.Apple_Parsec_Feedback_V2_stringValue.setter()
{
  OUTLINED_FUNCTION_16();
  if (qword_1EBAB6990 != -1)
  {
    OUTLINED_FUNCTION_12_16();
  }

  OUTLINED_FUNCTION_3_23();
  sub_1B8F4F470(v0, v1);
  OUTLINED_FUNCTION_25_10();
}

uint64_t Google_Protobuf_EnumValueOptions.Apple_Parsec_Feedback_V2_stringValue.modify()
{
  v1 = OUTLINED_FUNCTION_29_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_21_9(v2);
  *v0 = Google_Protobuf_EnumValueOptions.Apple_Parsec_Feedback_V2_stringValue.getter();
  v0[1] = v3;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F4B354(uint64_t **a1)
{
  OUTLINED_FUNCTION_31_11(a1);
  v4 = qword_1EBAB6990;
  if (v5)
  {

    if (v4 != -1)
    {
      OUTLINED_FUNCTION_12_16();
    }

    v6 = v1[4];
    v1[2] = v3;
    v1[3] = v2;
    OUTLINED_FUNCTION_3_23();
    sub_1B8F4F470(v7, v8);
    OUTLINED_FUNCTION_23_9();

    v9 = v1[1];
  }

  else
  {
    if (qword_1EBAB6990 != -1)
    {
      OUTLINED_FUNCTION_12_16();
    }

    v10 = v1[4];
    v1[2] = v3;
    v1[3] = v2;
    OUTLINED_FUNCTION_3_23();
    sub_1B8F4F470(v11, v12);
    OUTLINED_FUNCTION_23_9();
  }

  free(v1);
}

uint64_t Google_Protobuf_EnumValueOptions.hasApple_Parsec_Feedback_V2_stringValue.getter()
{
  if (qword_1EBAB6990 != -1)
  {
    OUTLINED_FUNCTION_12_16();
  }

  OUTLINED_FUNCTION_3_23();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_24_13();

  return MEMORY[0x1EEE15650](v2);
}

Swift::Void __swiftcall Google_Protobuf_EnumValueOptions.clearApple_Parsec_Feedback_V2_stringValue()()
{
  if (qword_1EBAB6990 != -1)
  {
    OUTLINED_FUNCTION_12_16();
  }

  OUTLINED_FUNCTION_3_23();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_24_13();

  MEMORY[0x1EEE15660](v2);
}

uint64_t Google_Protobuf_FieldOptions.Apple_Parsec_Feedback_V2_includeEmpty.getter()
{
  if (qword_1EBAB6970 != -1)
  {
    OUTLINED_FUNCTION_17_11();
  }

  OUTLINED_FUNCTION_1_33();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_36_4();
  return OUTLINED_FUNCTION_39_2(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12, SWORD2(v12), SBYTE6(v12), SHIBYTE(v12));
}

uint64_t Google_Protobuf_FieldOptions.Apple_Parsec_Feedback_V2_includeEmpty.setter()
{
  if (qword_1EBAB6970 != -1)
  {
    OUTLINED_FUNCTION_17_11();
  }

  OUTLINED_FUNCTION_38_3();
  OUTLINED_FUNCTION_1_33();
  sub_1B8F4F470(v0, v1);
  return OUTLINED_FUNCTION_35_5();
}

uint64_t Google_Protobuf_FieldOptions.Apple_Parsec_Feedback_V2_includeEmpty.modify(void *a1)
{
  OUTLINED_FUNCTION_33(a1);
  if (qword_1EBAB6970 != -1)
  {
    OUTLINED_FUNCTION_17_11();
  }

  *(v1 + 8) = qword_1EBABF6D8;
  OUTLINED_FUNCTION_1_33();
  v4 = sub_1B8F4F470(v2, v3);
  OUTLINED_FUNCTION_32_8(v4);
  OUTLINED_FUNCTION_34_6();
  return OUTLINED_FUNCTION_37_4();
}

uint64_t Google_Protobuf_FieldOptions.hasApple_Parsec_Feedback_V2_includeEmpty.getter()
{
  if (qword_1EBAB6970 != -1)
  {
    OUTLINED_FUNCTION_17_11();
  }

  OUTLINED_FUNCTION_1_33();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_24_13();

  return MEMORY[0x1EEE15650](v2);
}

Swift::Void __swiftcall Google_Protobuf_FieldOptions.clearApple_Parsec_Feedback_V2_includeEmpty()()
{
  if (qword_1EBAB6970 != -1)
  {
    OUTLINED_FUNCTION_17_11();
  }

  OUTLINED_FUNCTION_1_33();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_24_13();

  MEMORY[0x1EEE15660](v2);
}

uint64_t Google_Protobuf_FieldOptions.Apple_Parsec_Feedback_V2_jsonKey.getter()
{
  if (qword_1EBAB6978 != -1)
  {
    OUTLINED_FUNCTION_8_21();
  }

  OUTLINED_FUNCTION_1_33();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_26_11();
  return OUTLINED_FUNCTION_22_12(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12);
}

uint64_t sub_1B8F4B868(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Google_Protobuf_FieldOptions.Apple_Parsec_Feedback_V2_jsonKey.setter();
}

uint64_t Google_Protobuf_FieldOptions.Apple_Parsec_Feedback_V2_jsonKey.setter()
{
  OUTLINED_FUNCTION_16();
  if (qword_1EBAB6978 != -1)
  {
    OUTLINED_FUNCTION_8_21();
  }

  OUTLINED_FUNCTION_1_33();
  sub_1B8F4F470(v0, v1);
  OUTLINED_FUNCTION_25_10();
}

uint64_t Google_Protobuf_FieldOptions.Apple_Parsec_Feedback_V2_jsonKey.modify()
{
  v1 = OUTLINED_FUNCTION_29_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_21_9(v2);
  *v0 = Google_Protobuf_FieldOptions.Apple_Parsec_Feedback_V2_jsonKey.getter();
  v0[1] = v3;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F4B988(uint64_t **a1)
{
  OUTLINED_FUNCTION_31_11(a1);
  v4 = qword_1EBAB6978;
  if (v5)
  {

    if (v4 != -1)
    {
      OUTLINED_FUNCTION_8_21();
    }

    v6 = v1[4];
    v1[2] = v3;
    v1[3] = v2;
    OUTLINED_FUNCTION_1_33();
    sub_1B8F4F470(v7, v8);
    OUTLINED_FUNCTION_23_9();

    v9 = v1[1];
  }

  else
  {
    if (qword_1EBAB6978 != -1)
    {
      OUTLINED_FUNCTION_8_21();
    }

    v10 = v1[4];
    v1[2] = v3;
    v1[3] = v2;
    OUTLINED_FUNCTION_1_33();
    sub_1B8F4F470(v11, v12);
    OUTLINED_FUNCTION_23_9();
  }

  free(v1);
}

uint64_t Google_Protobuf_FieldOptions.hasApple_Parsec_Feedback_V2_jsonKey.getter()
{
  if (qword_1EBAB6978 != -1)
  {
    OUTLINED_FUNCTION_8_21();
  }

  OUTLINED_FUNCTION_1_33();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_24_13();

  return MEMORY[0x1EEE15650](v2);
}

Swift::Void __swiftcall Google_Protobuf_FieldOptions.clearApple_Parsec_Feedback_V2_jsonKey()()
{
  if (qword_1EBAB6978 != -1)
  {
    OUTLINED_FUNCTION_8_21();
  }

  OUTLINED_FUNCTION_1_33();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_24_13();

  MEMORY[0x1EEE15660](v2);
}

uint64_t Google_Protobuf_FieldOptions.Apple_Parsec_Feedback_V2_objcType.getter()
{
  if (qword_1EBAB6998 != -1)
  {
    OUTLINED_FUNCTION_7_21();
  }

  OUTLINED_FUNCTION_1_33();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_26_11();
  return OUTLINED_FUNCTION_22_12(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12);
}

uint64_t sub_1B8F4BC10(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Google_Protobuf_FieldOptions.Apple_Parsec_Feedback_V2_objcType.setter();
}

uint64_t Google_Protobuf_FieldOptions.Apple_Parsec_Feedback_V2_objcType.setter()
{
  OUTLINED_FUNCTION_16();
  if (qword_1EBAB6998 != -1)
  {
    OUTLINED_FUNCTION_7_21();
  }

  OUTLINED_FUNCTION_1_33();
  sub_1B8F4F470(v0, v1);
  OUTLINED_FUNCTION_25_10();
}

uint64_t Google_Protobuf_FieldOptions.Apple_Parsec_Feedback_V2_objcType.modify()
{
  v1 = OUTLINED_FUNCTION_29_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_21_9(v2);
  *v0 = Google_Protobuf_FieldOptions.Apple_Parsec_Feedback_V2_objcType.getter();
  v0[1] = v3;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F4BD30(uint64_t **a1)
{
  OUTLINED_FUNCTION_31_11(a1);
  v4 = qword_1EBAB6998;
  if (v5)
  {

    if (v4 != -1)
    {
      OUTLINED_FUNCTION_7_21();
    }

    v6 = v1[4];
    v1[2] = v3;
    v1[3] = v2;
    OUTLINED_FUNCTION_1_33();
    sub_1B8F4F470(v7, v8);
    OUTLINED_FUNCTION_23_9();

    v9 = v1[1];
  }

  else
  {
    if (qword_1EBAB6998 != -1)
    {
      OUTLINED_FUNCTION_7_21();
    }

    v10 = v1[4];
    v1[2] = v3;
    v1[3] = v2;
    OUTLINED_FUNCTION_1_33();
    sub_1B8F4F470(v11, v12);
    OUTLINED_FUNCTION_23_9();
  }

  free(v1);
}

uint64_t Google_Protobuf_FieldOptions.hasApple_Parsec_Feedback_V2_objcType.getter()
{
  if (qword_1EBAB6998 != -1)
  {
    OUTLINED_FUNCTION_7_21();
  }

  OUTLINED_FUNCTION_1_33();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_24_13();

  return MEMORY[0x1EEE15650](v2);
}

Swift::Void __swiftcall Google_Protobuf_FieldOptions.clearApple_Parsec_Feedback_V2_objcType()()
{
  if (qword_1EBAB6998 != -1)
  {
    OUTLINED_FUNCTION_7_21();
  }

  OUTLINED_FUNCTION_1_33();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_24_13();

  MEMORY[0x1EEE15660](v2);
}

uint64_t Google_Protobuf_FieldOptions.Apple_Parsec_Feedback_V2_objcAttr.getter()
{
  if (qword_1EBAB69A0 != -1)
  {
    OUTLINED_FUNCTION_6_12();
  }

  OUTLINED_FUNCTION_1_33();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_26_11();
  return OUTLINED_FUNCTION_22_12(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12);
}

uint64_t sub_1B8F4BFB8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Google_Protobuf_FieldOptions.Apple_Parsec_Feedback_V2_objcAttr.setter();
}

uint64_t Google_Protobuf_FieldOptions.Apple_Parsec_Feedback_V2_objcAttr.setter()
{
  OUTLINED_FUNCTION_16();
  if (qword_1EBAB69A0 != -1)
  {
    OUTLINED_FUNCTION_6_12();
  }

  OUTLINED_FUNCTION_1_33();
  sub_1B8F4F470(v0, v1);
  OUTLINED_FUNCTION_25_10();
}

uint64_t Google_Protobuf_FieldOptions.Apple_Parsec_Feedback_V2_objcAttr.modify()
{
  v1 = OUTLINED_FUNCTION_29_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_21_9(v2);
  *v0 = Google_Protobuf_FieldOptions.Apple_Parsec_Feedback_V2_objcAttr.getter();
  v0[1] = v3;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F4C0D8(uint64_t **a1)
{
  OUTLINED_FUNCTION_31_11(a1);
  v4 = qword_1EBAB69A0;
  if (v5)
  {

    if (v4 != -1)
    {
      OUTLINED_FUNCTION_6_12();
    }

    v6 = v1[4];
    v1[2] = v3;
    v1[3] = v2;
    OUTLINED_FUNCTION_1_33();
    sub_1B8F4F470(v7, v8);
    OUTLINED_FUNCTION_23_9();

    v9 = v1[1];
  }

  else
  {
    if (qword_1EBAB69A0 != -1)
    {
      OUTLINED_FUNCTION_6_12();
    }

    v10 = v1[4];
    v1[2] = v3;
    v1[3] = v2;
    OUTLINED_FUNCTION_1_33();
    sub_1B8F4F470(v11, v12);
    OUTLINED_FUNCTION_23_9();
  }

  free(v1);
}

uint64_t Google_Protobuf_FieldOptions.hasApple_Parsec_Feedback_V2_objcAttr.getter()
{
  if (qword_1EBAB69A0 != -1)
  {
    OUTLINED_FUNCTION_6_12();
  }

  OUTLINED_FUNCTION_1_33();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_24_13();

  return MEMORY[0x1EEE15650](v2);
}

Swift::Void __swiftcall Google_Protobuf_FieldOptions.clearApple_Parsec_Feedback_V2_objcAttr()()
{
  if (qword_1EBAB69A0 != -1)
  {
    OUTLINED_FUNCTION_6_12();
  }

  OUTLINED_FUNCTION_1_33();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_24_13();

  MEMORY[0x1EEE15660](v2);
}

uint64_t Google_Protobuf_FileOptions.Apple_Parsec_Feedback_V2_objcFacadePrefix.getter()
{
  if (qword_1EBAB69C0 != -1)
  {
    OUTLINED_FUNCTION_5_16();
  }

  OUTLINED_FUNCTION_0_39();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_26_11();
  return OUTLINED_FUNCTION_22_12(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12);
}

uint64_t sub_1B8F4C360(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Google_Protobuf_FileOptions.Apple_Parsec_Feedback_V2_objcFacadePrefix.setter();
}

uint64_t Google_Protobuf_FileOptions.Apple_Parsec_Feedback_V2_objcFacadePrefix.setter()
{
  OUTLINED_FUNCTION_16();
  if (qword_1EBAB69C0 != -1)
  {
    OUTLINED_FUNCTION_5_16();
  }

  OUTLINED_FUNCTION_0_39();
  sub_1B8F4F470(v0, v1);
  OUTLINED_FUNCTION_25_10();
}

uint64_t Google_Protobuf_FileOptions.Apple_Parsec_Feedback_V2_objcFacadePrefix.modify()
{
  v1 = OUTLINED_FUNCTION_29_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_21_9(v2);
  *v0 = Google_Protobuf_FileOptions.Apple_Parsec_Feedback_V2_objcFacadePrefix.getter();
  v0[1] = v3;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F4C480(uint64_t **a1)
{
  OUTLINED_FUNCTION_31_11(a1);
  v4 = qword_1EBAB69C0;
  if (v5)
  {

    if (v4 != -1)
    {
      OUTLINED_FUNCTION_5_16();
    }

    v6 = v1[4];
    v1[2] = v3;
    v1[3] = v2;
    OUTLINED_FUNCTION_0_39();
    sub_1B8F4F470(v7, v8);
    OUTLINED_FUNCTION_23_9();

    v9 = v1[1];
  }

  else
  {
    if (qword_1EBAB69C0 != -1)
    {
      OUTLINED_FUNCTION_5_16();
    }

    v10 = v1[4];
    v1[2] = v3;
    v1[3] = v2;
    OUTLINED_FUNCTION_0_39();
    sub_1B8F4F470(v11, v12);
    OUTLINED_FUNCTION_23_9();
  }

  free(v1);
}

uint64_t Google_Protobuf_FileOptions.hasApple_Parsec_Feedback_V2_objcFacadePrefix.getter()
{
  if (qword_1EBAB69C0 != -1)
  {
    OUTLINED_FUNCTION_5_16();
  }

  OUTLINED_FUNCTION_0_39();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_24_13();

  return MEMORY[0x1EEE15650](v2);
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearApple_Parsec_Feedback_V2_objcFacadePrefix()()
{
  if (qword_1EBAB69C0 != -1)
  {
    OUTLINED_FUNCTION_5_16();
  }

  OUTLINED_FUNCTION_0_39();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_24_13();

  MEMORY[0x1EEE15660](v2);
}

uint64_t Google_Protobuf_FileOptions.Apple_Parsec_Feedback_V2_objcFramework.getter()
{
  if (qword_1EBAB69C8 != -1)
  {
    OUTLINED_FUNCTION_16_14();
  }

  OUTLINED_FUNCTION_0_39();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_26_11();
  return OUTLINED_FUNCTION_22_12(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12);
}

uint64_t sub_1B8F4C708(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Google_Protobuf_FileOptions.Apple_Parsec_Feedback_V2_objcFramework.setter();
}

uint64_t Google_Protobuf_FileOptions.Apple_Parsec_Feedback_V2_objcFramework.setter()
{
  OUTLINED_FUNCTION_16();
  if (qword_1EBAB69C8 != -1)
  {
    OUTLINED_FUNCTION_16_14();
  }

  OUTLINED_FUNCTION_0_39();
  sub_1B8F4F470(v0, v1);
  OUTLINED_FUNCTION_25_10();
}

uint64_t Google_Protobuf_FileOptions.Apple_Parsec_Feedback_V2_objcFramework.modify()
{
  v1 = OUTLINED_FUNCTION_29_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_21_9(v2);
  *v0 = Google_Protobuf_FileOptions.Apple_Parsec_Feedback_V2_objcFramework.getter();
  v0[1] = v3;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F4C828(uint64_t **a1)
{
  OUTLINED_FUNCTION_31_11(a1);
  v4 = qword_1EBAB69C8;
  if (v5)
  {

    if (v4 != -1)
    {
      OUTLINED_FUNCTION_16_14();
    }

    v6 = v1[4];
    v1[2] = v3;
    v1[3] = v2;
    OUTLINED_FUNCTION_0_39();
    sub_1B8F4F470(v7, v8);
    OUTLINED_FUNCTION_23_9();

    v9 = v1[1];
  }

  else
  {
    if (qword_1EBAB69C8 != -1)
    {
      OUTLINED_FUNCTION_16_14();
    }

    v10 = v1[4];
    v1[2] = v3;
    v1[3] = v2;
    OUTLINED_FUNCTION_0_39();
    sub_1B8F4F470(v11, v12);
    OUTLINED_FUNCTION_23_9();
  }

  free(v1);
}

uint64_t Google_Protobuf_FileOptions.hasApple_Parsec_Feedback_V2_objcFramework.getter()
{
  if (qword_1EBAB69C8 != -1)
  {
    OUTLINED_FUNCTION_16_14();
  }

  OUTLINED_FUNCTION_0_39();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_24_13();

  return MEMORY[0x1EEE15650](v2);
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearApple_Parsec_Feedback_V2_objcFramework()()
{
  if (qword_1EBAB69C8 != -1)
  {
    OUTLINED_FUNCTION_16_14();
  }

  OUTLINED_FUNCTION_0_39();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_24_13();

  MEMORY[0x1EEE15660](v2);
}

uint64_t Google_Protobuf_FileOptions.Apple_Parsec_Feedback_V2_objcPackage.getter()
{
  if (qword_1EBAB69D0 != -1)
  {
    OUTLINED_FUNCTION_15_14();
  }

  OUTLINED_FUNCTION_0_39();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_26_11();
  return OUTLINED_FUNCTION_22_12(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12);
}

uint64_t sub_1B8F4CAB0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Google_Protobuf_FileOptions.Apple_Parsec_Feedback_V2_objcPackage.setter();
}

uint64_t Google_Protobuf_FileOptions.Apple_Parsec_Feedback_V2_objcPackage.setter()
{
  OUTLINED_FUNCTION_16();
  if (qword_1EBAB69D0 != -1)
  {
    OUTLINED_FUNCTION_15_14();
  }

  OUTLINED_FUNCTION_0_39();
  sub_1B8F4F470(v0, v1);
  OUTLINED_FUNCTION_25_10();
}

uint64_t Google_Protobuf_FileOptions.Apple_Parsec_Feedback_V2_objcPackage.modify()
{
  v1 = OUTLINED_FUNCTION_29_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_21_9(v2);
  *v0 = Google_Protobuf_FileOptions.Apple_Parsec_Feedback_V2_objcPackage.getter();
  v0[1] = v3;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F4CBD0(uint64_t **a1)
{
  OUTLINED_FUNCTION_31_11(a1);
  v4 = qword_1EBAB69D0;
  if (v5)
  {

    if (v4 != -1)
    {
      OUTLINED_FUNCTION_15_14();
    }

    v6 = v1[4];
    v1[2] = v3;
    v1[3] = v2;
    OUTLINED_FUNCTION_0_39();
    sub_1B8F4F470(v7, v8);
    OUTLINED_FUNCTION_23_9();

    v9 = v1[1];
  }

  else
  {
    if (qword_1EBAB69D0 != -1)
    {
      OUTLINED_FUNCTION_15_14();
    }

    v10 = v1[4];
    v1[2] = v3;
    v1[3] = v2;
    OUTLINED_FUNCTION_0_39();
    sub_1B8F4F470(v11, v12);
    OUTLINED_FUNCTION_23_9();
  }

  free(v1);
}

uint64_t Google_Protobuf_FileOptions.hasApple_Parsec_Feedback_V2_objcPackage.getter()
{
  if (qword_1EBAB69D0 != -1)
  {
    OUTLINED_FUNCTION_15_14();
  }

  OUTLINED_FUNCTION_0_39();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_24_13();

  return MEMORY[0x1EEE15650](v2);
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearApple_Parsec_Feedback_V2_objcPackage()()
{
  if (qword_1EBAB69D0 != -1)
  {
    OUTLINED_FUNCTION_15_14();
  }

  OUTLINED_FUNCTION_0_39();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_24_13();

  MEMORY[0x1EEE15660](v2);
}

uint64_t Google_Protobuf_FileOptions.Apple_Parsec_Feedback_V2_objcEnumNaming.getter()
{
  if (qword_1EBAB69D8 != -1)
  {
    OUTLINED_FUNCTION_14_12();
  }

  OUTLINED_FUNCTION_0_39();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_26_11();
  return OUTLINED_FUNCTION_22_12(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12);
}

uint64_t sub_1B8F4CE58(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Google_Protobuf_FileOptions.Apple_Parsec_Feedback_V2_objcEnumNaming.setter();
}

uint64_t Google_Protobuf_FileOptions.Apple_Parsec_Feedback_V2_objcEnumNaming.setter()
{
  OUTLINED_FUNCTION_16();
  if (qword_1EBAB69D8 != -1)
  {
    OUTLINED_FUNCTION_14_12();
  }

  OUTLINED_FUNCTION_0_39();
  sub_1B8F4F470(v0, v1);
  OUTLINED_FUNCTION_25_10();
}

uint64_t Google_Protobuf_FileOptions.Apple_Parsec_Feedback_V2_objcEnumNaming.modify()
{
  v1 = OUTLINED_FUNCTION_29_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_21_9(v2);
  *v0 = Google_Protobuf_FileOptions.Apple_Parsec_Feedback_V2_objcEnumNaming.getter();
  v0[1] = v3;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F4CF78(uint64_t **a1)
{
  OUTLINED_FUNCTION_31_11(a1);
  v4 = qword_1EBAB69D8;
  if (v5)
  {

    if (v4 != -1)
    {
      OUTLINED_FUNCTION_14_12();
    }

    v6 = v1[4];
    v1[2] = v3;
    v1[3] = v2;
    OUTLINED_FUNCTION_0_39();
    sub_1B8F4F470(v7, v8);
    OUTLINED_FUNCTION_23_9();

    v9 = v1[1];
  }

  else
  {
    if (qword_1EBAB69D8 != -1)
    {
      OUTLINED_FUNCTION_14_12();
    }

    v10 = v1[4];
    v1[2] = v3;
    v1[3] = v2;
    OUTLINED_FUNCTION_0_39();
    sub_1B8F4F470(v11, v12);
    OUTLINED_FUNCTION_23_9();
  }

  free(v1);
}

uint64_t Google_Protobuf_FileOptions.hasApple_Parsec_Feedback_V2_objcEnumNaming.getter()
{
  if (qword_1EBAB69D8 != -1)
  {
    OUTLINED_FUNCTION_14_12();
  }

  OUTLINED_FUNCTION_0_39();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_24_13();

  return MEMORY[0x1EEE15650](v2);
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearApple_Parsec_Feedback_V2_objcEnumNaming()()
{
  if (qword_1EBAB69D8 != -1)
  {
    OUTLINED_FUNCTION_14_12();
  }

  OUTLINED_FUNCTION_0_39();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_24_13();

  MEMORY[0x1EEE15660](v2);
}

uint64_t Google_Protobuf_FileOptions.Apple_Parsec_Feedback_V2_objcUseArc.getter()
{
  if (qword_1EBAB69E0 != -1)
  {
    OUTLINED_FUNCTION_20_3();
  }

  OUTLINED_FUNCTION_0_39();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_36_4();
  return OUTLINED_FUNCTION_39_2(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12, SWORD2(v12), SBYTE6(v12), SHIBYTE(v12));
}

uint64_t Google_Protobuf_FileOptions.Apple_Parsec_Feedback_V2_objcUseArc.setter()
{
  if (qword_1EBAB69E0 != -1)
  {
    OUTLINED_FUNCTION_20_3();
  }

  OUTLINED_FUNCTION_38_3();
  OUTLINED_FUNCTION_0_39();
  sub_1B8F4F470(v0, v1);
  return OUTLINED_FUNCTION_35_5();
}

uint64_t Google_Protobuf_FileOptions.Apple_Parsec_Feedback_V2_objcUseArc.modify(void *a1)
{
  OUTLINED_FUNCTION_33(a1);
  if (qword_1EBAB69E0 != -1)
  {
    OUTLINED_FUNCTION_20_3();
  }

  *(v1 + 8) = qword_1EBABF748;
  OUTLINED_FUNCTION_0_39();
  v4 = sub_1B8F4F470(v2, v3);
  OUTLINED_FUNCTION_32_8(v4);
  OUTLINED_FUNCTION_34_6();
  return OUTLINED_FUNCTION_37_4();
}

uint64_t Google_Protobuf_FileOptions.hasApple_Parsec_Feedback_V2_objcUseArc.getter()
{
  if (qword_1EBAB69E0 != -1)
  {
    OUTLINED_FUNCTION_20_3();
  }

  OUTLINED_FUNCTION_0_39();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_24_13();

  return MEMORY[0x1EEE15650](v2);
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearApple_Parsec_Feedback_V2_objcUseArc()()
{
  if (qword_1EBAB69E0 != -1)
  {
    OUTLINED_FUNCTION_20_3();
  }

  OUTLINED_FUNCTION_0_39();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_24_13();

  MEMORY[0x1EEE15660](v2);
}

uint64_t Google_Protobuf_FileOptions.Apple_Parsec_Feedback_V2_objcClassPrefix.getter()
{
  if (qword_1EBAB69E8 != -1)
  {
    OUTLINED_FUNCTION_13_12();
  }

  OUTLINED_FUNCTION_0_39();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_26_11();
  return OUTLINED_FUNCTION_22_12(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12);
}

uint64_t sub_1B8F4D490(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Google_Protobuf_FileOptions.Apple_Parsec_Feedback_V2_objcClassPrefix.setter();
}

uint64_t Google_Protobuf_FileOptions.Apple_Parsec_Feedback_V2_objcClassPrefix.setter()
{
  OUTLINED_FUNCTION_16();
  if (qword_1EBAB69E8 != -1)
  {
    OUTLINED_FUNCTION_13_12();
  }

  OUTLINED_FUNCTION_0_39();
  sub_1B8F4F470(v0, v1);
  OUTLINED_FUNCTION_25_10();
}

uint64_t Google_Protobuf_FileOptions.Apple_Parsec_Feedback_V2_objcClassPrefix.modify()
{
  v1 = OUTLINED_FUNCTION_29_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_21_9(v2);
  *v0 = Google_Protobuf_FileOptions.Apple_Parsec_Feedback_V2_objcClassPrefix.getter();
  v0[1] = v3;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F4D5B0(uint64_t **a1)
{
  OUTLINED_FUNCTION_31_11(a1);
  v4 = qword_1EBAB69E8;
  if (v5)
  {

    if (v4 != -1)
    {
      OUTLINED_FUNCTION_13_12();
    }

    v6 = v1[4];
    v1[2] = v3;
    v1[3] = v2;
    OUTLINED_FUNCTION_0_39();
    sub_1B8F4F470(v7, v8);
    OUTLINED_FUNCTION_23_9();

    v9 = v1[1];
  }

  else
  {
    if (qword_1EBAB69E8 != -1)
    {
      OUTLINED_FUNCTION_13_12();
    }

    v10 = v1[4];
    v1[2] = v3;
    v1[3] = v2;
    OUTLINED_FUNCTION_0_39();
    sub_1B8F4F470(v11, v12);
    OUTLINED_FUNCTION_23_9();
  }

  free(v1);
}

uint64_t Google_Protobuf_FileOptions.hasApple_Parsec_Feedback_V2_objcClassPrefix.getter()
{
  if (qword_1EBAB69E8 != -1)
  {
    OUTLINED_FUNCTION_13_12();
  }

  OUTLINED_FUNCTION_0_39();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_24_13();

  return MEMORY[0x1EEE15650](v2);
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearApple_Parsec_Feedback_V2_objcClassPrefix()()
{
  if (qword_1EBAB69E8 != -1)
  {
    OUTLINED_FUNCTION_13_12();
  }

  OUTLINED_FUNCTION_0_39();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_24_13();

  MEMORY[0x1EEE15660](v2);
}

uint64_t Google_Protobuf_MessageOptions.Apple_Parsec_Feedback_V2_customFacadeInitializer.getter()
{
  if (qword_1EBAB6980 != -1)
  {
    OUTLINED_FUNCTION_19_9();
  }

  OUTLINED_FUNCTION_2_20();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_36_4();
  return OUTLINED_FUNCTION_39_2(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12, SWORD2(v12), SBYTE6(v12), SHIBYTE(v12));
}

uint64_t Google_Protobuf_MessageOptions.Apple_Parsec_Feedback_V2_customFacadeInitializer.setter()
{
  if (qword_1EBAB6980 != -1)
  {
    OUTLINED_FUNCTION_19_9();
  }

  OUTLINED_FUNCTION_38_3();
  OUTLINED_FUNCTION_2_20();
  sub_1B8F4F470(v0, v1);
  return OUTLINED_FUNCTION_35_5();
}

uint64_t Google_Protobuf_MessageOptions.Apple_Parsec_Feedback_V2_customFacadeInitializer.modify(void *a1)
{
  OUTLINED_FUNCTION_33(a1);
  if (qword_1EBAB6980 != -1)
  {
    OUTLINED_FUNCTION_19_9();
  }

  *(v1 + 8) = qword_1EBABF6E8;
  OUTLINED_FUNCTION_2_20();
  v4 = sub_1B8F4F470(v2, v3);
  OUTLINED_FUNCTION_32_8(v4);
  OUTLINED_FUNCTION_34_6();
  return OUTLINED_FUNCTION_37_4();
}

uint64_t Google_Protobuf_MessageOptions.hasApple_Parsec_Feedback_V2_customFacadeInitializer.getter()
{
  if (qword_1EBAB6980 != -1)
  {
    OUTLINED_FUNCTION_19_9();
  }

  OUTLINED_FUNCTION_2_20();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_24_13();

  return MEMORY[0x1EEE15650](v2);
}

Swift::Void __swiftcall Google_Protobuf_MessageOptions.clearApple_Parsec_Feedback_V2_customFacadeInitializer()()
{
  if (qword_1EBAB6980 != -1)
  {
    OUTLINED_FUNCTION_19_9();
  }

  OUTLINED_FUNCTION_2_20();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_24_13();

  MEMORY[0x1EEE15660](v2);
}

uint64_t Google_Protobuf_MessageOptions.Apple_Parsec_Feedback_V2_objcFacadeTranslate.getter()
{
  if (qword_1EBAB6988 != -1)
  {
    OUTLINED_FUNCTION_18_10();
  }

  OUTLINED_FUNCTION_2_20();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_36_4();
  return OUTLINED_FUNCTION_39_2(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12, SWORD2(v12), SBYTE6(v12), SHIBYTE(v12));
}

uint64_t Google_Protobuf_MessageOptions.Apple_Parsec_Feedback_V2_objcFacadeTranslate.setter()
{
  if (qword_1EBAB6988 != -1)
  {
    OUTLINED_FUNCTION_18_10();
  }

  OUTLINED_FUNCTION_38_3();
  OUTLINED_FUNCTION_2_20();
  sub_1B8F4F470(v0, v1);
  return OUTLINED_FUNCTION_35_5();
}

uint64_t Google_Protobuf_MessageOptions.Apple_Parsec_Feedback_V2_objcFacadeTranslate.modify(void *a1)
{
  OUTLINED_FUNCTION_33(a1);
  if (qword_1EBAB6988 != -1)
  {
    OUTLINED_FUNCTION_18_10();
  }

  *(v1 + 8) = qword_1EBABF6F0;
  OUTLINED_FUNCTION_2_20();
  v4 = sub_1B8F4F470(v2, v3);
  OUTLINED_FUNCTION_32_8(v4);
  OUTLINED_FUNCTION_34_6();
  return OUTLINED_FUNCTION_37_4();
}

uint64_t sub_1B8F4DBD8(uint64_t *a1)
{
  v2 = *(a1 + 24);
  v5 = a1 + 1;
  v3 = a1[1];
  v4 = v5[1];
  v6 = *a1;
  *(a1 + 25) = v2;
  return sub_1B964C2F0();
}

uint64_t Google_Protobuf_MessageOptions.hasApple_Parsec_Feedback_V2_objcFacadeTranslate.getter()
{
  if (qword_1EBAB6988 != -1)
  {
    OUTLINED_FUNCTION_18_10();
  }

  OUTLINED_FUNCTION_2_20();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_24_13();

  return MEMORY[0x1EEE15650](v2);
}

Swift::Void __swiftcall Google_Protobuf_MessageOptions.clearApple_Parsec_Feedback_V2_objcFacadeTranslate()()
{
  if (qword_1EBAB6988 != -1)
  {
    OUTLINED_FUNCTION_18_10();
  }

  OUTLINED_FUNCTION_2_20();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_24_13();

  MEMORY[0x1EEE15660](v2);
}

uint64_t Google_Protobuf_MessageOptions.Apple_Parsec_Feedback_V2_objcMsgSuperclass.getter()
{
  if (qword_1EBAB69A8 != -1)
  {
    OUTLINED_FUNCTION_10_14();
  }

  OUTLINED_FUNCTION_2_20();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_26_11();
  return OUTLINED_FUNCTION_22_12(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12);
}

uint64_t sub_1B8F4DD84(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Google_Protobuf_MessageOptions.Apple_Parsec_Feedback_V2_objcMsgSuperclass.setter();
}

uint64_t Google_Protobuf_MessageOptions.Apple_Parsec_Feedback_V2_objcMsgSuperclass.setter()
{
  OUTLINED_FUNCTION_16();
  if (qword_1EBAB69A8 != -1)
  {
    OUTLINED_FUNCTION_10_14();
  }

  OUTLINED_FUNCTION_2_20();
  sub_1B8F4F470(v0, v1);
  OUTLINED_FUNCTION_25_10();
}

uint64_t Google_Protobuf_MessageOptions.Apple_Parsec_Feedback_V2_objcMsgSuperclass.modify()
{
  v1 = OUTLINED_FUNCTION_29_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_21_9(v2);
  *v0 = Google_Protobuf_MessageOptions.Apple_Parsec_Feedback_V2_objcMsgSuperclass.getter();
  v0[1] = v3;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F4DEA4(uint64_t **a1)
{
  OUTLINED_FUNCTION_31_11(a1);
  v4 = qword_1EBAB69A8;
  if (v5)
  {

    if (v4 != -1)
    {
      OUTLINED_FUNCTION_10_14();
    }

    v6 = v1[4];
    v1[2] = v3;
    v1[3] = v2;
    OUTLINED_FUNCTION_2_20();
    sub_1B8F4F470(v7, v8);
    OUTLINED_FUNCTION_23_9();

    v9 = v1[1];
  }

  else
  {
    if (qword_1EBAB69A8 != -1)
    {
      OUTLINED_FUNCTION_10_14();
    }

    v10 = v1[4];
    v1[2] = v3;
    v1[3] = v2;
    OUTLINED_FUNCTION_2_20();
    sub_1B8F4F470(v11, v12);
    OUTLINED_FUNCTION_23_9();
  }

  free(v1);
}

uint64_t Google_Protobuf_MessageOptions.hasApple_Parsec_Feedback_V2_objcMsgSuperclass.getter()
{
  if (qword_1EBAB69A8 != -1)
  {
    OUTLINED_FUNCTION_10_14();
  }

  OUTLINED_FUNCTION_2_20();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_24_13();

  return MEMORY[0x1EEE15650](v2);
}

Swift::Void __swiftcall Google_Protobuf_MessageOptions.clearApple_Parsec_Feedback_V2_objcMsgSuperclass()()
{
  if (qword_1EBAB69A8 != -1)
  {
    OUTLINED_FUNCTION_10_14();
  }

  OUTLINED_FUNCTION_2_20();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_24_13();

  MEMORY[0x1EEE15660](v2);
}

uint64_t Google_Protobuf_MessageOptions.Apple_Parsec_Feedback_V2_objcMsgType.getter()
{
  if (qword_1EBAB69B0 != -1)
  {
    OUTLINED_FUNCTION_9_15();
  }

  OUTLINED_FUNCTION_2_20();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_26_11();
  return OUTLINED_FUNCTION_22_12(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12);
}

uint64_t sub_1B8F4E12C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Google_Protobuf_MessageOptions.Apple_Parsec_Feedback_V2_objcMsgType.setter();
}

uint64_t Google_Protobuf_MessageOptions.Apple_Parsec_Feedback_V2_objcMsgType.setter()
{
  OUTLINED_FUNCTION_16();
  if (qword_1EBAB69B0 != -1)
  {
    OUTLINED_FUNCTION_9_15();
  }

  OUTLINED_FUNCTION_2_20();
  sub_1B8F4F470(v0, v1);
  OUTLINED_FUNCTION_25_10();
}

uint64_t Google_Protobuf_MessageOptions.Apple_Parsec_Feedback_V2_objcMsgType.modify()
{
  v1 = OUTLINED_FUNCTION_29_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_21_9(v2);
  *v0 = Google_Protobuf_MessageOptions.Apple_Parsec_Feedback_V2_objcMsgType.getter();
  v0[1] = v3;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F4E24C(uint64_t **a1)
{
  OUTLINED_FUNCTION_31_11(a1);
  v4 = qword_1EBAB69B0;
  if (v5)
  {

    if (v4 != -1)
    {
      OUTLINED_FUNCTION_9_15();
    }

    v6 = v1[4];
    v1[2] = v3;
    v1[3] = v2;
    OUTLINED_FUNCTION_2_20();
    sub_1B8F4F470(v7, v8);
    OUTLINED_FUNCTION_23_9();

    v9 = v1[1];
  }

  else
  {
    if (qword_1EBAB69B0 != -1)
    {
      OUTLINED_FUNCTION_9_15();
    }

    v10 = v1[4];
    v1[2] = v3;
    v1[3] = v2;
    OUTLINED_FUNCTION_2_20();
    sub_1B8F4F470(v11, v12);
    OUTLINED_FUNCTION_23_9();
  }

  free(v1);
}

uint64_t Google_Protobuf_MessageOptions.hasApple_Parsec_Feedback_V2_objcMsgType.getter()
{
  if (qword_1EBAB69B0 != -1)
  {
    OUTLINED_FUNCTION_9_15();
  }

  OUTLINED_FUNCTION_2_20();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_24_13();

  return MEMORY[0x1EEE15650](v2);
}

Swift::Void __swiftcall Google_Protobuf_MessageOptions.clearApple_Parsec_Feedback_V2_objcMsgType()()
{
  if (qword_1EBAB69B0 != -1)
  {
    OUTLINED_FUNCTION_9_15();
  }

  OUTLINED_FUNCTION_2_20();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_24_13();

  MEMORY[0x1EEE15660](v2);
}

uint64_t sub_1B8F4E454()
{
  v0 = sub_1B964C320();
  __swift_allocate_value_buffer(v0, qword_1EBABF6C0);
  __swift_project_value_buffer(v0, qword_1EBABF6C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF780, &unk_1B968F160);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1B96594C0;
  if (qword_1EBAB6970 != -1)
  {
    swift_once();
  }

  v2 = qword_1EBABF6D8;
  *(v1 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF788, &qword_1B966F850);
  *(v1 + 64) = sub_1B8F4F528(&qword_1EBABF790, &qword_1EBABF788, &qword_1B966F850);
  *(v1 + 32) = v2;
  v3 = qword_1EBAB6978;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = qword_1EBABF6E0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF798, &qword_1B966F858);
  *(v1 + 96) = v5;
  v6 = sub_1B8F4F528(&qword_1EBABF7A0, &qword_1EBABF798, &qword_1B966F858);
  *(v1 + 104) = v6;
  *(v1 + 72) = v4;
  v7 = qword_1EBAB6980;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = qword_1EBABF6E8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7A8, &qword_1B966F860);
  *(v1 + 136) = v9;
  v10 = sub_1B8F4F528(&qword_1EBABF7B0, &qword_1EBABF7A8, &qword_1B966F860);
  *(v1 + 144) = v10;
  *(v1 + 112) = v8;
  v11 = qword_1EBAB6988;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = qword_1EBABF6F0;
  *(v1 + 176) = v9;
  *(v1 + 184) = v10;
  *(v1 + 152) = v12;
  v13 = qword_1EBAB6990;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = qword_1EBABF6F8;
  *(v1 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7B8, &qword_1B966F868);
  *(v1 + 224) = sub_1B8F4F528(&qword_1EBABF7C0, &qword_1EBABF7B8, &qword_1B966F868);
  *(v1 + 192) = v14;
  v15 = qword_1EBAB6998;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = qword_1EBABF700;
  *(v1 + 256) = v5;
  *(v1 + 264) = v6;
  *(v1 + 232) = v16;
  v17 = qword_1EBAB69A0;

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = qword_1EBABF708;
  *(v1 + 296) = v5;
  *(v1 + 304) = v6;
  *(v1 + 272) = v18;
  v19 = qword_1EBAB69A8;

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = qword_1EBABF710;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7C8, &qword_1B966F870);
  *(v1 + 336) = v21;
  v22 = sub_1B8F4F528(&qword_1EBABF7D0, &qword_1EBABF7C8, &qword_1B966F870);
  *(v1 + 344) = v22;
  *(v1 + 312) = v20;
  v23 = qword_1EBAB69B0;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = qword_1EBABF718;
  *(v1 + 376) = v21;
  *(v1 + 384) = v22;
  *(v1 + 352) = v24;
  v25 = qword_1EBAB69B8;

  if (v25 != -1)
  {
    swift_once();
  }

  v26 = qword_1EBABF720;
  *(v1 + 416) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7D8, &qword_1B966F878);
  *(v1 + 424) = sub_1B8F4F528(&qword_1EBABF7E0, &qword_1EBABF7D8, &qword_1B966F878);
  *(v1 + 392) = v26;
  v27 = qword_1EBAB69C0;

  if (v27 != -1)
  {
    swift_once();
  }

  v28 = qword_1EBABF728;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7E8, &qword_1B966F880);
  *(v1 + 456) = v29;
  v30 = sub_1B8F4F528(&qword_1EBABF7F0, &qword_1EBABF7E8, &qword_1B966F880);
  *(v1 + 464) = v30;
  *(v1 + 432) = v28;
  v31 = qword_1EBAB69C8;

  if (v31 != -1)
  {
    swift_once();
  }

  v32 = qword_1EBABF730;
  *(v1 + 496) = v29;
  *(v1 + 504) = v30;
  *(v1 + 472) = v32;
  v33 = qword_1EBAB69D0;

  if (v33 != -1)
  {
    swift_once();
  }

  v34 = qword_1EBABF738;
  *(v1 + 536) = v29;
  *(v1 + 544) = v30;
  *(v1 + 512) = v34;
  v35 = qword_1EBAB69D8;

  if (v35 != -1)
  {
    swift_once();
  }

  v36 = qword_1EBABF740;
  *(v1 + 576) = v29;
  *(v1 + 584) = v30;
  *(v1 + 552) = v36;
  v37 = qword_1EBAB69E0;

  if (v37 != -1)
  {
    swift_once();
  }

  v38 = qword_1EBABF748;
  *(v1 + 616) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7F8, &qword_1B966F888);
  *(v1 + 624) = sub_1B8F4F528(&qword_1EBABF800, &qword_1EBABF7F8, &qword_1B966F888);
  *(v1 + 592) = v38;
  v39 = qword_1EBAB69E8;

  if (v39 != -1)
  {
    swift_once();
  }

  v40 = qword_1EBABF750;
  *(v1 + 656) = v29;
  *(v1 + 664) = v30;
  *(v1 + 632) = v40;

  return sub_1B964C310();
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackOptions_Extensions.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB6968 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C320();
  v3 = __swift_project_value_buffer(v2, qword_1EBABF6C0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1B8F4EBC4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF788, &qword_1B966F850);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1B964C2C0();
  qword_1EBABF6D8 = result;
  return result;
}

uint64_t sub_1B8F4EC54()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF798, &qword_1B966F858);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1B964C2C0();
  qword_1EBABF6E0 = result;
  return result;
}

uint64_t sub_1B8F4ECE4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7A8, &qword_1B966F860);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1B964C2C0();
  qword_1EBABF6E8 = result;
  return result;
}

uint64_t sub_1B8F4ED74()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7A8, &qword_1B966F860);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1B964C2C0();
  qword_1EBABF6F0 = result;
  return result;
}

uint64_t sub_1B8F4EE00()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7B8, &qword_1B966F868);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1B964C2C0();
  qword_1EBABF6F8 = result;
  return result;
}

uint64_t sub_1B8F4EE90()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF798, &qword_1B966F858);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1B964C2C0();
  qword_1EBABF700 = result;
  return result;
}

uint64_t sub_1B8F4EF1C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF798, &qword_1B966F858);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1B964C2C0();
  qword_1EBABF708 = result;
  return result;
}

uint64_t sub_1B8F4EFA8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7C8, &qword_1B966F870);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1B964C2C0();
  qword_1EBABF710 = result;
  return result;
}

uint64_t sub_1B8F4F034()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7C8, &qword_1B966F870);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1B964C2C0();
  qword_1EBABF718 = result;
  return result;
}

uint64_t sub_1B8F4F0C0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7D8, &qword_1B966F878);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1B964C2C0();
  qword_1EBABF720 = result;
  return result;
}

uint64_t sub_1B8F4F14C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7E8, &qword_1B966F880);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1B964C2C0();
  qword_1EBABF728 = result;
  return result;
}

uint64_t sub_1B8F4F1D8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7E8, &qword_1B966F880);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1B964C2C0();
  qword_1EBABF730 = result;
  return result;
}

uint64_t sub_1B8F4F264()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7E8, &qword_1B966F880);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1B964C2C0();
  qword_1EBABF738 = result;
  return result;
}

uint64_t sub_1B8F4F2F0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7E8, &qword_1B966F880);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1B964C2C0();
  qword_1EBABF740 = result;
  return result;
}

uint64_t sub_1B8F4F37C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7F8, &qword_1B966F888);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1B964C2C0();
  qword_1EBABF748 = result;
  return result;
}

uint64_t sub_1B8F4F408()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7E8, &qword_1B966F880);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1B964C2C0();
  qword_1EBABF750 = result;
  return result;
}

uint64_t sub_1B8F4F470(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8F4F4DC(void *a1, uint64_t *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;
}

uint64_t sub_1B8F4F528(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_16()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_12()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_21()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_8_21()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9_15()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10_14()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_11_18()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_12_16()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_13_12()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_14_12()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_15_14()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_16_14()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_17_11()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_18_10()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_19_9()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_20_3()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_21_9(uint64_t result)
{
  *v1 = result;
  *(result + 32) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_22_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    return a9;
  }

  else
  {
    return 0;
  }
}

uint64_t OUTLINED_FUNCTION_23_9()
{

  return sub_1B964C2F0();
}

uint64_t OUTLINED_FUNCTION_25_10()
{

  return sub_1B964C2F0();
}

uint64_t OUTLINED_FUNCTION_26_11()
{

  return sub_1B964C2D0();
}

uint64_t **OUTLINED_FUNCTION_31_11(uint64_t **result)
{
  v2 = **result;
  v1 = (*result)[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_32_8(uint64_t a1)
{
  *(v1 + 16) = a1;

  return sub_1B964C2D0();
}

uint64_t OUTLINED_FUNCTION_35_5()
{

  return sub_1B964C2F0();
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.avgRtt.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(v3);
  v5 = OUTLINED_FUNCTION_182_0(v4);
  v6 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_475_0();
    swift_allocObject();
    OUTLINED_FUNCTION_40_0();
    sub_1B8FA9A40();
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v6 + 16) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.rxDuplicateBytes.setter()
{
  v3 = OUTLINED_FUNCTION_244_1();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_475_0();
    swift_allocObject();
    OUTLINED_FUNCTION_40_0();
    sub_1B8FA9A40();
    OUTLINED_FUNCTION_157_2(v5);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v4 + 64) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.rxOutOfOrderBytes.setter()
{
  v3 = OUTLINED_FUNCTION_244_1();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_475_0();
    swift_allocObject();
    OUTLINED_FUNCTION_40_0();
    sub_1B8FA9A40();
    OUTLINED_FUNCTION_157_2(v5);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v4 + 72) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.rxPackets.setter()
{
  v3 = OUTLINED_FUNCTION_244_1();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_475_0();
    swift_allocObject();
    OUTLINED_FUNCTION_40_0();
    sub_1B8FA9A40();
    OUTLINED_FUNCTION_157_2(v5);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v4 + 80) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.txBytes.setter()
{
  v3 = OUTLINED_FUNCTION_244_1();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_475_0();
    swift_allocObject();
    OUTLINED_FUNCTION_40_0();
    sub_1B8FA9A40();
    OUTLINED_FUNCTION_157_2(v5);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v4 + 88) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.txPackets.setter()
{
  v3 = OUTLINED_FUNCTION_244_1();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_475_0();
    swift_allocObject();
    OUTLINED_FUNCTION_40_0();
    sub_1B8FA9A40();
    OUTLINED_FUNCTION_157_2(v5);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v4 + 96) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.txRetransmitBytes.setter()
{
  v3 = OUTLINED_FUNCTION_244_1();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_475_0();
    swift_allocObject();
    OUTLINED_FUNCTION_40_0();
    sub_1B8FA9A40();
    OUTLINED_FUNCTION_157_2(v5);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v4 + 168) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.wifiRxpackets.setter()
{
  v3 = OUTLINED_FUNCTION_244_1();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_475_0();
    swift_allocObject();
    OUTLINED_FUNCTION_40_0();
    sub_1B8FA9A40();
    OUTLINED_FUNCTION_157_2(v5);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v4 + 120) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.wifiTxpackets.setter()
{
  v3 = OUTLINED_FUNCTION_244_1();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_475_0();
    swift_allocObject();
    OUTLINED_FUNCTION_40_0();
    sub_1B8FA9A40();
    OUTLINED_FUNCTION_157_2(v5);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v4 + 128) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.wiredRxpackets.setter()
{
  v3 = OUTLINED_FUNCTION_244_1();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_475_0();
    swift_allocObject();
    OUTLINED_FUNCTION_40_0();
    sub_1B8FA9A40();
    OUTLINED_FUNCTION_157_2(v5);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v4 + 136) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.wiredTxpackets.setter()
{
  v3 = OUTLINED_FUNCTION_244_1();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_475_0();
    swift_allocObject();
    OUTLINED_FUNCTION_40_0();
    sub_1B8FA9A40();
    OUTLINED_FUNCTION_157_2(v5);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v4 + 144) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.connectionReused.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(v3);
  v5 = OUTLINED_FUNCTION_182_0(v4);
  v6 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    v7 = type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v7);
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8FABCD4(v8);
    OUTLINED_FUNCTION_157_2(v9);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v6 + 49) = v0 & 1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.connectionRace.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(v3);
  v5 = OUTLINED_FUNCTION_182_0(v4);
  v6 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    v7 = type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v7);
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8FABCD4(v8);
    OUTLINED_FUNCTION_157_2(v9);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v6 + 48) = v0 & 1;
  return result;
}

void sub_1B8F500F8()
{
  OUTLINED_FUNCTION_184_0();
  OUTLINED_FUNCTION_353_0();
  v6 = OUTLINED_FUNCTION_313();
  v8 = v7(v6);
  v9 = OUTLINED_FUNCTION_216_1(v8);
  v10 = *(v1 + v5);
  if ((v9 & 1) == 0)
  {
    v11 = v4(0);
    OUTLINED_FUNCTION_57_0(v11);
    swift_allocObject();
    v12 = OUTLINED_FUNCTION_40_0();
    v13 = v3(v12);
    OUTLINED_FUNCTION_192_2(v13);
  }

  OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_9_3();
  *(v10 + v2) = v0;
  OUTLINED_FUNCTION_183_2();
}

void Apple_Parsec_Feedback_V2_NetworkTimingData.peerAddress.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(v4);
  v6 = OUTLINED_FUNCTION_47(v5);
  v7 = *(v1 + v3);
  if ((v6 & 1) == 0)
  {
    v8 = type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v8);
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8FABCD4(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_9_3();
  v11 = *(v7 + 32);
  v12 = *(v7 + 40);
  *(v7 + 32) = v2;
  *(v7 + 40) = v0;
  sub_1B8D538A0(v11, v12);
  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.startTimeCounts.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8C78, &qword_1B966F950);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(v6);
  v8 = OUTLINED_FUNCTION_47(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = sub_1B8FABCD4(v11);
    OUTLINED_FUNCTION_135(v12);
  }

  OUTLINED_FUNCTION_124_1();
  OUTLINED_FUNCTION_294();
  sub_1B8FAC528();
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(0);
  OUTLINED_FUNCTION_65_1(v13);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.stopTimeCounts.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8C78, &qword_1B966F950);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(v6);
  v8 = OUTLINED_FUNCTION_47(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = sub_1B8FABCD4(v11);
    OUTLINED_FUNCTION_135(v12);
  }

  OUTLINED_FUNCTION_124_1();
  OUTLINED_FUNCTION_294();
  sub_1B8FAC528();
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(0);
  OUTLINED_FUNCTION_65_1(v13);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

void sub_1B8F5086C()
{
  OUTLINED_FUNCTION_184_0();
  OUTLINED_FUNCTION_353_0();
  v6 = OUTLINED_FUNCTION_313();
  v8 = v7(v6);
  v9 = OUTLINED_FUNCTION_216_1(v8);
  v10 = *(v1 + v5);
  if ((v9 & 1) == 0)
  {
    v11 = v4(0);
    OUTLINED_FUNCTION_57_0(v11);
    swift_allocObject();
    v12 = OUTLINED_FUNCTION_40_0();
    v13 = v3(v12);
    OUTLINED_FUNCTION_192_2(v13);
  }

  OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_9_3();
  *(v10 + v2) = v0 & 1;
  OUTLINED_FUNCTION_183_2();
}

uint64_t sub_1B8F50914(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9013634();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F509F4@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_SearchSuggestionType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8F50A44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B902402C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F50B24@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_ResultType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8F50B58(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9013A24();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F50C38@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_EngagementActionTarget.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8F50C88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B90139D0();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F50D68@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_EngagementDestination.allCases.getter();
  *a1 = result;
  return result;
}

void Apple_Parsec_Feedback_V2_CardSectionType.init(rawValue:)(unint64_t *a1@<X8>, unint64_t a2@<X0>)
{
  if (a2 >= 0x3E)
  {
    switch(a2)
    {
      case 0xC8uLL:
        a2 = 64;
        break;
      case 0xC9uLL:
        a2 = 65;
        break;
      case 0xCAuLL:
        a2 = 66;
        break;
      case 0xCBuLL:
        a2 = 67;
        break;
      case 0xCCuLL:
        a2 = 68;
        break;
      case 0xCDuLL:
        a2 = 69;
        break;
      case 0xCEuLL:
        a2 = 70;
        break;
      case 0xCFuLL:
        a2 = 71;
        break;
      case 0xD0uLL:
        a2 = 72;
        break;
      case 0xD1uLL:
        a2 = 73;
        break;
      case 0xD2uLL:
        a2 = 74;
        break;
      case 0xD3uLL:
        a2 = 75;
        break;
      case 0xD4uLL:
        a2 = 76;
        break;
      case 0xD5uLL:
        a2 = 77;
        break;
      case 0xD6uLL:
        a2 = 78;
        break;
      default:
        v2 = 62;
        if (a2 != 63)
        {
          v2 = a2;
        }

        if (a2 == 64)
        {
          a2 = 63;
        }

        else
        {
          a2 = v2;
        }

        break;
    }
  }

  *a1 = a2;
  OUTLINED_FUNCTION_7_3(a1);
}

uint64_t Apple_Parsec_Feedback_V2_CardSectionType.rawValue.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_1B967F5D0[result];
  }

  return result;
}

uint64_t sub_1B8F50EE0@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Feedback_V2_CardSectionType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8F50F14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9013B74();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F51010@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_CardSectionType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8F51054(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9023FD8();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F51134@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_FBTH.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8F51184(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9013A78();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F51264@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_TriggerVisibleResultsEvent.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8F512A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9014060();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F51388@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_SessionEndTriggerEvent.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8F513BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9013BC8();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F5149C@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_ActionCardType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8F514EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9013C70();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F515CC@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_TriggerSearchRequestEvent.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8F5161C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9013D18();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F516FC@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_EndpointType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8F51740(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9023F84();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F51820@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_IndexType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8F51854(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9013E68();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F51934@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_CardDisappearEvent.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8F51968(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9013EBC();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F51A48@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_ClearInputTriggerEvent.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8F51A7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9013F10();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F51B5C@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_SectionEngagementTriggerEvent.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8F51B90(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9013F64();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F51C70@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_VisibleSectionHeaderType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8F51CC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9013E14();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F51DA0@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_KnownFeedbackType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8F51DE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9013FB8();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F51EC4@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_FeedbackGrade.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8F51F14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B901397C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F51FF4@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_TriggerEngagementEvent.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8F52044(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9013880();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F52124@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_ViewAppearEvent.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8F52174(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B90138D4();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F52254@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_ViewDisappearEvent.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8F522A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9023F30();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F523A0@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_TimingDataDictKeys.allCases.getter();
  *a1 = result;
  return result;
}

void Apple_Parsec_Feedback_V2_CommandType.init(rawValue:)(uint64_t *a1@<X8>, unint64_t a2@<X0>)
{
  v2 = 48;
  if (a2 != 50)
  {
    v2 = a2;
  }

  if (a2 < 0x30)
  {
    v2 = a2;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_7_3(a1);
}

uint64_t Apple_Parsec_Feedback_V2_CommandType.rawValue.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_1B967F848[result];
  }

  return result;
}

uint64_t sub_1B8F52424@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Feedback_V2_CommandType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8F52458(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9013B20();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F52554@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_CommandType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8F52588(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9023EDC();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F52668@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_CoreSpotlightIndexUsed.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8F5269C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9023E88();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F5277C@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_CoreSpotlightIndexUsedReason.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8F527B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9023E34();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F52890@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_ThirdPartyQueryCompletionMatched.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8F528C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B90136DC();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F529A4@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_PhotosSuggestionType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8F529D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9013730();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F52AB8@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_HideReason.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8F52AEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9013784();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F52BCC@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_MailSuggestionDataSources.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8F52C00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B90137D8();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F52CE0@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_CoreSpotlightResultQueryRecency.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8F52D14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B901382C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F52DF4@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_EmbeddingStatusType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8F52E44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9023DE0();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F52F24@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_ContactActionType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8F52F58(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9013ACC();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F53038@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_CounterfactualError.allCases.getter();
  *a1 = result;
  return result;
}

void Apple_Parsec_Feedback_V2_MKPlaceViewFeedbackType.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  if (!v3 & v2)
  {
    switch(a2)
    {
      case 0:
      case 1:
      case 4:
      case 7:
      case 8:
      case 9:
      case 10:
      case 11:
        break;
      case 2:
        a2 = 1;
        break;
      case 3:
        a2 = 2;
        break;
      case 5:
        a2 = 4;
        break;
      case 6:
        a2 = 5;
        break;
      case 12:
        a2 = 6;
        break;
      case 13:
        a2 = 7;
        break;
      case 14:
        a2 = 8;
        break;
      default:
        switch(a2)
        {
          case 62:
            a2 = 9;
            break;
          case 124:
            a2 = 10;
            break;
          case 125:
            a2 = 11;
            break;
          case 127:
            a2 = 12;
            break;
          case 201:
            a2 = 3;
            break;
        }

        break;
    }
  }

  else
  {
    switch(a2)
    {
      case 172:
        a2 = 13;
        break;
      case 173:
        a2 = 14;
        break;
      case 174:
        a2 = 15;
        break;
      case 175:
        a2 = 16;
        break;
      case 176:
        a2 = 17;
        break;
      case 177:
        a2 = 18;
        break;
      case 178:
        a2 = 19;
        break;
      case 179:
        a2 = 20;
        break;
      case 180:
        a2 = 21;
        break;
      default:
        JUMPOUT(0);
    }
  }

  *a1 = a2;
  OUTLINED_FUNCTION_7_3(a1);
}

uint64_t Apple_Parsec_Feedback_V2_MKPlaceViewFeedbackType.rawValue.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_1B967F9D0[result];
  }

  return result;
}

uint64_t sub_1B8F53200@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Feedback_V2_MKPlaceViewFeedbackType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8F53234(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9013C1C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F53330@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_MKPlaceViewFeedbackType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8F53364(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9023D8C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F53444@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_SKStoreProductPageResult.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8F53478(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9013CC4();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F53558@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_SearchType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8F5359C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9013D6C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F5367C@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_EntityType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8F536B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9013928();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F53790@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_SpotlightQueryIntentType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8F537D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9023D38();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F538B4@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_QueryUnderstandingQueryIntentType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8F538F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9013DC0();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F539D8@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_PhotosLibraryBucket.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8F53A28(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9013688();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F53B08@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_PhotosRetrievalBucket.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8F53B3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B901400C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F53C1C@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_LookupHintRelevancy.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_FlusherEndpoint.rawValue.getter()
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

uint64_t sub_1B8F53C80@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Feedback_V2_FlusherEndpoint.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8F53CB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9023CE4();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F53D94@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_FlusherEndpoint.allCases.getter();
  *a1 = result;
  return result;
}

void Apple_Parsec_Feedback_V2_FeedbackType.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  switch(a2)
  {
    case 'd':
      a2 = 45;
      break;
    case 'e':
      a2 = 46;
      break;
    case 'f':
      a2 = 47;
      break;
    default:
      break;
  }

  *a1 = a2;
  OUTLINED_FUNCTION_7_3(a1);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackType.rawValue.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_1B967FA80[result];
  }

  return result;
}

uint64_t sub_1B8F53E44@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Feedback_V2_FeedbackType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8F53E78(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9023C90();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F53F74@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_FeedbackType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8F53FA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9023C3C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F54088@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_LookupSelectionType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8F540BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B90140B4();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F5419C@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_SkipSearchTriggerEvent.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8F541D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9023BE8();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F542B0@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_PrivateRelayStatus.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_NullValue.rawValue.getter()
{
  if (*(v0 + 8))
  {
    return 0;
  }

  else
  {
    return OUTLINED_FUNCTION_805();
  }
}

uint64_t sub_1B8F5430C@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Feedback_V2_NullValue.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8F54340(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9023B94();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F5443C@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_NullValue.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8F54470(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9014108();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F54550@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_CBAEngagementType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8F545A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9023B40();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F5469C@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_BundleIdentifier.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8F546D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9023AEC();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F547B0@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_UserReportType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8F547F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9023A98();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F548D4@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_Client.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8F54934(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9023A44();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F54A14@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_FeedbackDeletionReason.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.avgRtt.getter()
{
  OUTLINED_FUNCTION_253_1();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 16);
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.avgRtt.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_6_11(v3);
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(v4);
  OUTLINED_FUNCTION_21_8(v5);
  OUTLINED_FUNCTION_344_0();
  *(v1 + 80) = *(v0 + 16);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F54AD4(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_28_11();
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_475_0();
    swift_allocObject();
    OUTLINED_FUNCTION_40_0();
    sub_1B8FA9A40();
    OUTLINED_FUNCTION_168(v7);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 16) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.cellRxpackets.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_34_7(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 72) = *(v0 + 24);
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.cellTxpackets.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_34_7(v3);
  OUTLINED_FUNCTION_374_0();
  *(v1 + 72) = *(v0 + 32);
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.connectAttempts.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_6_11(v3);
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(v4);
  OUTLINED_FUNCTION_21_8(v5);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v0 + 40);
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.connectSuccesses.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_6_11(v3);
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(v4);
  OUTLINED_FUNCTION_21_8(v5);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v0 + 44);
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.minRtt.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_6_11(v3);
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(v4);
  OUTLINED_FUNCTION_21_8(v5);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v0 + 48);
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.rxBytes.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_34_7(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 72) = *(v0 + 56);
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.rxDuplicateBytes.getter()
{
  OUTLINED_FUNCTION_253_1();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 64);
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.rxDuplicateBytes.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_34_7(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 72) = *(v0 + 64);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F54FD8(uint64_t a1)
{
  OUTLINED_FUNCTION_7_14(a1);
  v5 = OUTLINED_FUNCTION_500_0();
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_278_1();
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_475_0();
    swift_allocObject();
    OUTLINED_FUNCTION_40_0();
    sub_1B8FA9A40();
    OUTLINED_FUNCTION_168(v7);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 64) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.rxOutOfOrderBytes.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_34_7(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 72) = *(v0 + 72);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F550D4(uint64_t a1)
{
  OUTLINED_FUNCTION_7_14(a1);
  v5 = OUTLINED_FUNCTION_500_0();
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_278_1();
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_475_0();
    swift_allocObject();
    OUTLINED_FUNCTION_40_0();
    sub_1B8FA9A40();
    OUTLINED_FUNCTION_168(v7);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 72) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.rxPackets.getter()
{
  OUTLINED_FUNCTION_253_1();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 80);
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.rxPackets.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_34_7(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 72) = *(v0 + 80);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F551F0(uint64_t a1)
{
  OUTLINED_FUNCTION_7_14(a1);
  v5 = OUTLINED_FUNCTION_500_0();
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_278_1();
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_475_0();
    swift_allocObject();
    OUTLINED_FUNCTION_40_0();
    sub_1B8FA9A40();
    OUTLINED_FUNCTION_168(v7);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 80) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.txBytes.getter()
{
  OUTLINED_FUNCTION_253_1();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 88);
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.txBytes.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_34_7(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 72) = *(v0 + 88);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F5530C(uint64_t a1)
{
  OUTLINED_FUNCTION_7_14(a1);
  v5 = OUTLINED_FUNCTION_500_0();
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_278_1();
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_475_0();
    swift_allocObject();
    OUTLINED_FUNCTION_40_0();
    sub_1B8FA9A40();
    OUTLINED_FUNCTION_168(v7);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 88) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.txPackets.getter()
{
  OUTLINED_FUNCTION_253_1();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 96);
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.txPackets.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_34_7(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 72) = *(v0 + 96);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F55428(uint64_t a1)
{
  OUTLINED_FUNCTION_7_14(a1);
  v5 = OUTLINED_FUNCTION_500_0();
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_278_1();
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_475_0();
    swift_allocObject();
    OUTLINED_FUNCTION_40_0();
    sub_1B8FA9A40();
    OUTLINED_FUNCTION_168(v7);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 96) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.txRetransmitPackets.getter()
{
  OUTLINED_FUNCTION_253_1();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 104);
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.txRetransmitPackets.setter()
{
  v3 = OUTLINED_FUNCTION_244_1();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_475_0();
    swift_allocObject();
    OUTLINED_FUNCTION_40_0();
    sub_1B8FA9A40();
    OUTLINED_FUNCTION_157_2(v5);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v4 + 104) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.txRetransmitPackets.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_34_7(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 72) = *(v0 + 104);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F555A4(uint64_t a1)
{
  OUTLINED_FUNCTION_7_14(a1);
  v5 = OUTLINED_FUNCTION_500_0();
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_278_1();
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_475_0();
    swift_allocObject();
    OUTLINED_FUNCTION_40_0();
    sub_1B8FA9A40();
    OUTLINED_FUNCTION_168(v7);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 104) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.varRtt.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_6_11(v3);
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(v4);
  OUTLINED_FUNCTION_21_8(v5);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v0 + 112);
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.wifiRxpackets.getter()
{
  OUTLINED_FUNCTION_253_1();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 120);
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.wifiRxpackets.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_34_7(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 72) = *(v0 + 120);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F5576C(uint64_t a1)
{
  OUTLINED_FUNCTION_7_14(a1);
  v5 = OUTLINED_FUNCTION_500_0();
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_278_1();
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_475_0();
    swift_allocObject();
    OUTLINED_FUNCTION_40_0();
    sub_1B8FA9A40();
    OUTLINED_FUNCTION_168(v7);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 120) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.wifiTxpackets.getter()
{
  OUTLINED_FUNCTION_253_1();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 128);
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.wifiTxpackets.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_34_7(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 72) = *(v0 + 128);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F55888(uint64_t a1)
{
  OUTLINED_FUNCTION_7_14(a1);
  v5 = OUTLINED_FUNCTION_500_0();
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_278_1();
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_475_0();
    swift_allocObject();
    OUTLINED_FUNCTION_40_0();
    sub_1B8FA9A40();
    OUTLINED_FUNCTION_168(v7);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 128) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.wiredRxpackets.getter()
{
  OUTLINED_FUNCTION_253_1();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 136);
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.wiredRxpackets.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_34_7(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 72) = *(v0 + 136);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F559A4(uint64_t a1)
{
  OUTLINED_FUNCTION_7_14(a1);
  v5 = OUTLINED_FUNCTION_500_0();
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_278_1();
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_475_0();
    swift_allocObject();
    OUTLINED_FUNCTION_40_0();
    sub_1B8FA9A40();
    OUTLINED_FUNCTION_168(v7);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 136) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.wiredTxpackets.getter()
{
  OUTLINED_FUNCTION_253_1();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 144);
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.wiredTxpackets.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_34_7(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 72) = *(v0 + 144);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F55AC0(uint64_t a1)
{
  OUTLINED_FUNCTION_7_14(a1);
  v5 = OUTLINED_FUNCTION_500_0();
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_278_1();
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_475_0();
    swift_allocObject();
    OUTLINED_FUNCTION_40_0();
    sub_1B8FA9A40();
    OUTLINED_FUNCTION_168(v7);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 144) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.statsType.getter()
{
  OUTLINED_FUNCTION_253_1();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 152);
  v4 = *(v2 + 160);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8F55B8C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Feedback_V2_TCPInfo.statsType.setter();
}

void Apple_Parsec_Feedback_V2_TCPInfo.statsType.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(v4);
  v6 = OUTLINED_FUNCTION_47(v5);
  v7 = *(v1 + v3);
  if ((v6 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_475_0();
    swift_allocObject();
    OUTLINED_FUNCTION_40_0();
    sub_1B8FA9A40();
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3();
  v9 = *(v7 + 160);
  *(v7 + 152) = v2;
  *(v7 + 160) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.statsType.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(v4);
  OUTLINED_FUNCTION_66_1(v5);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v0 + 160);
  *(v1 + 48) = *(v0 + 152);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8F55CA8(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Feedback_V2_TCPInfo.statsType.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_18_9();
      type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
      OUTLINED_FUNCTION_475_0();
      swift_allocObject();
      OUTLINED_FUNCTION_40_0();
      sub_1B8FA9A40();
      OUTLINED_FUNCTION_168(v10);
    }

    OUTLINED_FUNCTION_59_3();
    v11 = *(v9 + 160);
    *(v9 + 152) = v4;
    *(v9 + 160) = v3;
  }

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.txRetransmitBytes.getter()
{
  OUTLINED_FUNCTION_253_1();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 168);
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.txRetransmitBytes.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_34_7(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 72) = *(v0 + 168);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F55DD4(uint64_t a1)
{
  OUTLINED_FUNCTION_7_14(a1);
  v5 = OUTLINED_FUNCTION_500_0();
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_278_1();
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_475_0();
    swift_allocObject();
    OUTLINED_FUNCTION_40_0();
    sub_1B8FA9A40();
    OUTLINED_FUNCTION_168(v7);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 168) = v3;

  free(v1);
}

void sub_1B8F55ECC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Feedback_V2_NetworkTimingData.interfaceIdentifier.setter();
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.interfaceIdentifier.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = *(type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(v4) + 20);
  *(v1 + 72) = v5;
  OUTLINED_FUNCTION_249_1(v5);
  v6 = *(v0 + 24);
  *(v1 + 48) = *(v0 + 16);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.peerAddress.getter()
{
  v1 = type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(0);
  OUTLINED_FUNCTION_77_0(v1);
  OUTLINED_FUNCTION_10_4();
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v4, v5);
  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.peerAddress.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(v4);
  OUTLINED_FUNCTION_66_1(v5);
  OUTLINED_FUNCTION_374_0();
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);
  *(v1 + 48) = v6;
  *(v1 + 56) = v7;
  sub_1B8D91FCC(v6, v7);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F560A8(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    v7 = v1[8];
    v8 = OUTLINED_FUNCTION_461();
    sub_1B8D91FCC(v8, v9);
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Feedback_V2_NetworkTimingData.peerAddress.setter();
    v10 = v1[6];
    v11 = v1[7];
  }

  else
  {
    v12 = OUTLINED_FUNCTION_163_1();
    v13 = *(v5 + v2);
    if ((v12 & 1) == 0)
    {
      v14 = OUTLINED_FUNCTION_18_9();
      v15 = type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData._StorageClass(v14);
      OUTLINED_FUNCTION_57_0(v15);
      swift_allocObject();
      v16 = OUTLINED_FUNCTION_40_0();
      v17 = sub_1B8FABCD4(v16);
      OUTLINED_FUNCTION_168(v17);
    }

    OUTLINED_FUNCTION_59_3();
    v10 = *(v13 + 32);
    v11 = *(v13 + 40);
    *(v13 + 32) = v4;
    *(v13 + 40) = v3;
  }

  sub_1B8D538A0(v10, v11);

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.connectionRace.getter()
{
  v1 = type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(0);
  OUTLINED_FUNCTION_354_0(v1);
  return *(v0 + 48);
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.connectionRace.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_40_6(v3);
  *(v1 + 80) = v4;
  OUTLINED_FUNCTION_346_0(v4);
  *(v1 + 84) = *(v0 + 48);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F561D8(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    v7 = OUTLINED_FUNCTION_232_0();
    v8 = type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData._StorageClass(v7);
    OUTLINED_FUNCTION_57_0(v8);
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8FABCD4(v9);
    OUTLINED_FUNCTION_168(v10);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 48) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.connectionReused.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_40_6(v3);
  OUTLINED_FUNCTION_102_2(v4);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 84) = *(v0 + 49);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F562D4(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    v7 = OUTLINED_FUNCTION_232_0();
    v8 = type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData._StorageClass(v7);
    OUTLINED_FUNCTION_57_0(v8);
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8FABCD4(v9);
    OUTLINED_FUNCTION_168(v10);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 49) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.startTimeCounts.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(v9);
  OUTLINED_FUNCTION_77_0(v10);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_343_0();
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(0);
  OUTLINED_FUNCTION_29_14(v11);
  if (v12)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1ED9CBF90 != -1)
    {
      OUTLINED_FUNCTION_262_0();
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB8C78, &qword_1B966F950);
    }
  }

  else
  {
    OUTLINED_FUNCTION_124_1();
    OUTLINED_FUNCTION_182();
    return sub_1B8FAC528();
  }

  return result;
}

void Apple_Parsec_Feedback_V2_NetworkTimingData.startTimeCounts.modify()
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
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(v9);
  OUTLINED_FUNCTION_135_0(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_187(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_224_2(v14);
  v16 = type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(v15);
  OUTLINED_FUNCTION_77_0(v16);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_17_2();
  if (v17)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v18 = *(v0 + 20);
    if (qword_1ED9CBF90 != -1)
    {
      OUTLINED_FUNCTION_262_0();
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBAB8C78, &qword_1B966F950);
    }
  }

  else
  {
    OUTLINED_FUNCTION_124_1();
    OUTLINED_FUNCTION_246();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.hasStartTimeCounts.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(v6);
  OUTLINED_FUNCTION_77_0(v7);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_285_0();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(0);
  OUTLINED_FUNCTION_11(v8);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_NetworkTimingData.clearStartTimeCounts()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8C78, &qword_1B966F950);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(v6);
  v8 = OUTLINED_FUNCTION_182_0(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = sub_1B8FABCD4(v11);
    OUTLINED_FUNCTION_157_2(v12);
  }

  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(0);
  OUTLINED_FUNCTION_274_1(v13);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.stopTimeCounts.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(v9);
  OUTLINED_FUNCTION_77_0(v10);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_343_0();
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(0);
  OUTLINED_FUNCTION_29_14(v11);
  if (v12)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1ED9CBF90 != -1)
    {
      OUTLINED_FUNCTION_262_0();
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB8C78, &qword_1B966F950);
    }
  }

  else
  {
    OUTLINED_FUNCTION_124_1();
    OUTLINED_FUNCTION_182();
    return sub_1B8FAC528();
  }

  return result;
}

uint64_t sub_1B8F56850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = a5(0);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_177_1();
  sub_1B8FAC578();
  return a7(v7);
}

void Apple_Parsec_Feedback_V2_NetworkTimingData.stopTimeCounts.modify()
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
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(v9);
  OUTLINED_FUNCTION_135_0(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_187(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_224_2(v14);
  v16 = type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(v15);
  OUTLINED_FUNCTION_77_0(v16);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_17_2();
  if (v17)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v18 = *(v0 + 20);
    if (qword_1ED9CBF90 != -1)
    {
      OUTLINED_FUNCTION_262_0();
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBAB8C78, &qword_1B966F950);
    }
  }

  else
  {
    OUTLINED_FUNCTION_124_1();
    OUTLINED_FUNCTION_246();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

void sub_1B8F56A60()
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
    sub_1B8FAC578();
    v2(v3);
    OUTLINED_FUNCTION_690();
    sub_1B8FAC5C8();
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

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.hasStopTimeCounts.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(v6);
  OUTLINED_FUNCTION_77_0(v7);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_285_0();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(0);
  OUTLINED_FUNCTION_11(v8);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_NetworkTimingData.clearStopTimeCounts()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8C78, &qword_1B966F950);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(v6);
  v8 = OUTLINED_FUNCTION_182_0(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = sub_1B8FABCD4(v11);
    OUTLINED_FUNCTION_157_2(v12);
  }

  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(0);
  OUTLINED_FUNCTION_274_1(v13);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  swift_endAccess();
}

void sub_1B8F56C88(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Feedback_V2_NetworkTimingData.connectionUuid.setter();
}

void sub_1B8F56D10()
{
  OUTLINED_FUNCTION_184_0();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v1;
  v11 = OUTLINED_FUNCTION_112();
  v13 = v12(v11);
  OUTLINED_FUNCTION_704_0(v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v1 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = v9(0);
    OUTLINED_FUNCTION_57_0(v16);
    swift_allocObject();
    v17 = OUTLINED_FUNCTION_40_0();
    v15 = v7(v17);
    *(v10 + v3) = v15;
  }

  v18 = (v15 + *v5);
  OUTLINED_FUNCTION_211_0();
  v19 = v18[1];
  *v18 = v2;
  v18[1] = v0;

  OUTLINED_FUNCTION_183_2();
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.connectionUuid.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(v2);
  OUTLINED_FUNCTION_254_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B8F56E80()
{
  v0 = OUTLINED_FUNCTION_428_0();
  v2 = v1(v0);
  OUTLINED_FUNCTION_478_0(v2);
  v5 = (v3 + v4);
  OUTLINED_FUNCTION_6_2();
  v7 = *v5;
  v6 = v5[1];

  return OUTLINED_FUNCTION_288();
}

void sub_1B8F56ECC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Feedback_V2_NetworkTimingData.networkProtocolName.setter();
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.networkProtocolName.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(v2);
  OUTLINED_FUNCTION_254_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.quicwhitelistedDomain.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_40_6(v1);
  OUTLINED_FUNCTION_102_2(v2);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.redirectCount.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_19_10(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_62_1();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t sub_1B8F5718C()
{
  v2 = OUTLINED_FUNCTION_428_0();
  v4 = v3(v2);
  OUTLINED_FUNCTION_308_0(v4);
  return *(v1 + v0);
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.redirectCountW3C.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_19_10(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_62_1();
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F5729C()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_296_0(v7);
  v8 = OUTLINED_FUNCTION_520_0(v0);
  v9 = *(v6 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = OUTLINED_FUNCTION_519_0();
    v11 = v4(v10);
    OUTLINED_FUNCTION_57_0(v11);
    swift_allocObject();
    v12 = OUTLINED_FUNCTION_40_0();
    v13 = v3(v12);
    OUTLINED_FUNCTION_529_0(v13);
  }

  OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_11_4();
  *(v9 + v2) = v5;
  OUTLINED_FUNCTION_283();

  free(v14);
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.requestHeaderSize.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_19_10(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_62_1();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.responseBodyBytesDecoded.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_19_10(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_62_1();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.responseBodyBytesReceived.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_19_10(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_62_1();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.responseHeaderSize.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_19_10(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_62_1();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t sub_1B8F57610()
{
  v2 = OUTLINED_FUNCTION_428_0();
  v4 = v3(v2);
  OUTLINED_FUNCTION_308_0(v4);
  return *(v1 + v0);
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.tfosuccess.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_40_6(v1);
  OUTLINED_FUNCTION_102_2(v2);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F576DC()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_296_0(v4);
  v5 = *(v0 + 80);
  v6 = *(v0 + 72);
  v7 = *(v0 + 84);
  v8 = *(v6 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v6 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v0 + 80);
    v12 = *(v0 + 72);
    v13 = v3(0);
    OUTLINED_FUNCTION_57_0(v13);
    swift_allocObject();
    v14 = OUTLINED_FUNCTION_40_0();
    v15 = v2(v14);
    OUTLINED_FUNCTION_529_0(v15);
  }

  OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_11_4();
  *(v10 + v1) = v7;
  OUTLINED_FUNCTION_283();

  free(v16);
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.timingDataInit.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_138_3(v3);
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(v4);
  OUTLINED_FUNCTION_225_2(v5);
  v6 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__timingDataInit;
  OUTLINED_FUNCTION_68_0();
  *(v1 + 72) = *(v0 + v6);
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.connectStart.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_19_10(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_62_1();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.connectEnd.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_19_10(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_62_1();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.domainLookupStart.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_19_10(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_62_1();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.domainLookupEnd.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_19_10(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_62_1();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.fetchStart.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_19_10(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_62_1();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.redirectStart.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_19_10(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_62_1();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.redirectEnd.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_19_10(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_62_1();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.requestStart.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_19_10(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_62_1();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.requestEnd.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_19_10(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_62_1();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.responseStart.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_19_10(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_62_1();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.responseEnd.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_19_10(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_62_1();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.secureConnectStart.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_19_10(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_62_1();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t sub_1B8F58120@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v8 = *(a1(0) + 20);
  if (*a2 != -1)
  {
    OUTLINED_FUNCTION_461();
    swift_once();
  }

  *(a4 + v8) = *a3;
}

uint64_t Apple_Parsec_Feedback_V2_ResultSectionForFeedback.fallbackResultSection.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v3, v4);
  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Feedback_V2_ResultSectionForFeedback.fallbackResultSection.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D538A0(*(v1 + 32), *(v1 + 40));
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_ResultSectionForFeedback.bundleID.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  *a1 = v2;
  a1[1] = v3;
  return OUTLINED_FUNCTION_670_0(v2, v3, *(v1 + 64), a1);
}

uint64_t Apple_Parsec_Feedback_V2_ResultSectionForFeedback.bundleID.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_1B8D525DC(*(v1 + 48), *(v1 + 56), *(v1 + 64));
  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_ResultSectionForFeedback.bundleIdentifier.getter()
{
  v1 = *(v0 + 64);
  if (v1 != 255 && (v1 & 1) == 0)
  {
    v2 = *(v0 + 48);
    v3 = *(v0 + 56);
    v4 = OUTLINED_FUNCTION_432();
    sub_1B8D52508(v4, v5, 0);
  }

  return OUTLINED_FUNCTION_432();
}

uint64_t sub_1B8F58320(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Apple_Parsec_Feedback_V2_ResultSectionForFeedback.bundleIdentifier.setter();
}

uint64_t Apple_Parsec_Feedback_V2_ResultSectionForFeedback.bundleIdentifier.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D525DC(*(v1 + 48), *(v1 + 56), *(v1 + 64));
  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  *(v1 + 64) = 0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_ResultSectionForFeedback.bundleIdentifier.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_664_0(a1);
  v3 = *(v2 + 64);
  if (v3 == 255 || (v3 & 1) != 0)
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  else
  {
    v4 = *(v2 + 48);
    v5 = *(v2 + 56);
    v6 = OUTLINED_FUNCTION_461();
    sub_1B8D52508(v6, v7, 0);
  }

  *v1 = v4;
  v1[1] = v5;
  return OUTLINED_FUNCTION_542_0();
}

uint64_t sub_1B8F5840C(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  v5 = *(v3 + 48);
  v6 = *(v3 + 56);
  v7 = *(v3 + 64);
  if (a2)
  {
    v8 = a1[1];

    v9 = OUTLINED_FUNCTION_543();
    sub_1B8D525DC(v9, v10, v7);
    *(v3 + 48) = v4;
    *(v3 + 56) = v2;
    *(v3 + 64) = 0;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_543();
    result = sub_1B8D525DC(v12, v13, v7);
    *(v3 + 48) = v4;
    *(v3 + 56) = v2;
    *(v3 + 64) = 0;
  }

  return result;
}

void Apple_Parsec_Feedback_V2_ResultSectionForFeedback.knownBundleIdentifier.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  OUTLINED_FUNCTION_617_0(a1);
}

uint64_t Apple_Parsec_Feedback_V2_ResultSectionForFeedback.knownBundleIdentifier.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = sub_1B8D525DC(*(v1 + 48), *(v1 + 56), *(v1 + 64));
  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
  *(v1 + 64) = 1;
  return result;
}

uint64_t (*Apple_Parsec_Feedback_V2_ResultSectionForFeedback.knownBundleIdentifier.modify(uint64_t a1))(uint64_t *a1)
{
  *(a1 + 16) = v1;
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  if ((v4 & 1) == 0)
  {
    v2 = 0;
  }

  if (v4 == 255)
  {
    v2 = 0;
  }

  *a1 = v2;
  *(a1 + 8) = (v4 == 255 || (v4 & 1) == 0) | v3 & 1;
  return sub_1B8F5855C;
}

uint64_t sub_1B8F5855C(uint64_t *a1)
{
  v1 = a1[2];
  v2 = *a1;
  v3 = *(a1 + 8);
  result = sub_1B8D525DC(*(v1 + 48), *(v1 + 56), *(v1 + 64));
  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
  *(v1 + 64) = 1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_ResultSectionForFeedback.titleButtonItem.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_236();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_22_3();
  v11 = *(type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback(v10) + 48);
  OUTLINED_FUNCTION_100_3();
  type metadata accessor for Apple_Parsec_Feedback_V2_ButtonForFeedback(0);
  OUTLINED_FUNCTION_199_2();
  OUTLINED_FUNCTION_9_2();
  if (v12)
  {
    *a1 = 0;
    *(a1 + 8) = v1;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0xE000000000000000;
    *(a1 + 32) = 0;
    OUTLINED_FUNCTION_826();
    result = OUTLINED_FUNCTION_9_2();
    if (!v12)
    {
      return sub_1B8D9207C(v2, &qword_1EBAC06D0, &qword_1B966F958);
    }
  }

  else
  {
    OUTLINED_FUNCTION_48_5();
    OUTLINED_FUNCTION_182();
    return sub_1B8FAC528();
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_ResultSectionForFeedback.titleButtonItem.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback(v1);
  sub_1B8D9207C(v0 + *(v2 + 48), &qword_1EBAC06D0, &qword_1B966F958);
  OUTLINED_FUNCTION_48_5();
  OUTLINED_FUNCTION_122_0();
  sub_1B8FAC528();
  type metadata accessor for Apple_Parsec_Feedback_V2_ButtonForFeedback(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Apple_Parsec_Feedback_V2_ButtonForFeedback.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_197_1(a1);
  v1[2] = 0;
  v1[3] = 0xE000000000000000;
  v1[4] = 0;
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_ButtonForFeedback(0);
  return OUTLINED_FUNCTION_101_2(v2);
}

void Apple_Parsec_Feedback_V2_ResultSectionForFeedback.titleButtonItem.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_85(v7);
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_ButtonForFeedback(v8);
  OUTLINED_FUNCTION_150_3(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  v16 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback(v15);
  OUTLINED_FUNCTION_68_4(*(v16 + 48));
  OUTLINED_FUNCTION_16_2();
  if (v17)
  {
    *v11 = 0;
    *(v11 + 8) = 1;
    *(v11 + 16) = 0;
    *(v11 + 24) = 0xE000000000000000;
    *(v11 + 32) = 0;
    v18 = v11 + *(v9 + 28);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_16_2();
    if (!v17)
    {
      sub_1B8D9207C(v0, &qword_1EBAC06D0, &qword_1B966F958);
    }
  }

  else
  {
    OUTLINED_FUNCTION_48_5();
    OUTLINED_FUNCTION_461();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B8F588AC()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_128();
    sub_1B8FAC578();
    sub_1B8D9207C(v4 + v3, &qword_1EBAC06D0, &qword_1B966F958);
    OUTLINED_FUNCTION_48_5();
    OUTLINED_FUNCTION_691_0();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_325_0();
    sub_1B8FAC5C8();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBAC06D0, &qword_1B966F958);
    OUTLINED_FUNCTION_48_5();
    OUTLINED_FUNCTION_692_0();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v7);
}

uint64_t Apple_Parsec_Feedback_V2_ResultSectionForFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback(v0) + 44);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_ResultSectionForFeedback.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xC000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 255;
  *(a1 + 68) = 0;
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback(0);
  v3 = a1 + *(v2 + 44);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v4 = *(v2 + 48);
  type metadata accessor for Apple_Parsec_Feedback_V2_ButtonForFeedback(0);
  v5 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t Apple_Parsec_Feedback_V2_ActionItemForFeedback.punchout.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = *(type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback(v7) + 20);
  OUTLINED_FUNCTION_100_3();
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  OUTLINED_FUNCTION_29_14(v9);
  if (v10)
  {
    OUTLINED_FUNCTION_92_0();
    OUTLINED_FUNCTION_532_0(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_9_2();
    if (!v10)
    {
      return sub_1B8D9207C(v0, &qword_1EBAC06D8, &qword_1B966F960);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_23();
    OUTLINED_FUNCTION_182();
    return sub_1B8FAC528();
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_ActionItemForFeedback.punchout.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback(v1);
  sub_1B8D9207C(v0 + *(v2 + 20), &qword_1EBAC06D8, &qword_1B966F960);
  OUTLINED_FUNCTION_4_23();
  OUTLINED_FUNCTION_122_0();
  sub_1B8FAC528();
  type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Apple_Parsec_Feedback_V2_PunchoutForFeedback.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  v1 = MEMORY[0x1E69E7CC0];
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = v1;
  *(a1 + 56) = -1;
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  return OUTLINED_FUNCTION_690_0(v2);
}

void Apple_Parsec_Feedback_V2_ActionItemForFeedback.punchout.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_26_1(v7);
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(v8);
  OUTLINED_FUNCTION_140_2(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback(v14);
  OUTLINED_FUNCTION_256_1(*(v15 + 20));
  OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    OUTLINED_FUNCTION_114_0();
    OUTLINED_FUNCTION_310_0(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_17_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBAC06D8, &qword_1B966F960);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_23();
    OUTLINED_FUNCTION_246();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B8F58DB8()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_128();
    sub_1B8FAC578();
    sub_1B8D9207C(v4 + v3, &qword_1EBAC06D8, &qword_1B966F960);
    OUTLINED_FUNCTION_4_23();
    OUTLINED_FUNCTION_691_0();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_119_2();
    sub_1B8FAC5C8();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBAC06D8, &qword_1B966F960);
    OUTLINED_FUNCTION_4_23();
    OUTLINED_FUNCTION_692_0();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v7);
}

uint64_t Apple_Parsec_Feedback_V2_ActionItemForFeedback.hasPunchout.getter()
{
  v1 = OUTLINED_FUNCTION_514();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = *(type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback(v7) + 20);
  OUTLINED_FUNCTION_863();
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  OUTLINED_FUNCTION_11(v9);
  return v0;
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_ActionItemForFeedback.clearPunchout()()
{
  v1 = type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback(0);
  sub_1B8D9207C(v0 + *(v1 + 20), &qword_1EBAC06D8, &qword_1B966F960);
  type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Feedback_V2_ActionItemForFeedback.init()()
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v0 = *(type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback(0) + 20);
  type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  v1 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback.type.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback.type.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 56) = *result;
  *(v1 + 64) = v2;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback.topicIdentifier.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback.topicIdentifier.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 96);

  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  return result;
}

uint64_t sub_1B8F59138()
{
  v0 = OUTLINED_FUNCTION_338_0();
  v2 = *(v1(v0) + 44);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_18_1();

  return v7(v6);
}

uint64_t sub_1B8F591BC()
{
  v0 = OUTLINED_FUNCTION_313();
  v2 = *(v1(v0) + 44);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_21_7(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_209();

  return v7(v6);
}

uint64_t Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback(v0) + 44);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_276_1();
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  *(a1 + 72) = 0;
  *(a1 + 80) = v2;
  *(a1 + 88) = 0;
  *(a1 + 96) = v2;
  v3 = a1 + *(type metadata accessor for Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback(0) + 44);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_Feedback_V2_PunchoutForFeedback.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Feedback_V2_PunchoutForFeedback.name.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_PunchoutForFeedback.urls.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_PunchoutForFeedback.bundleID.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  *a1 = v2;
  a1[1] = v3;
  return OUTLINED_FUNCTION_670_0(v2, v3, *(v1 + 56), a1);
}

uint64_t Apple_Parsec_Feedback_V2_PunchoutForFeedback.bundleID.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_1B8D525DC(*(v1 + 40), *(v1 + 48), *(v1 + 56));
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  *(v1 + 56) = v4;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_PunchoutForFeedback.bundleIdentifier.getter()
{
  v1 = *(v0 + 56);
  if (v1 != 255 && (v1 & 1) == 0)
  {
    v2 = *(v0 + 40);
    v3 = *(v0 + 48);
    v4 = OUTLINED_FUNCTION_432();
    sub_1B8D52508(v4, v5, 0);
  }

  return OUTLINED_FUNCTION_432();
}

uint64_t sub_1B8F5944C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Apple_Parsec_Feedback_V2_PunchoutForFeedback.bundleIdentifier.setter();
}

uint64_t Apple_Parsec_Feedback_V2_PunchoutForFeedback.bundleIdentifier.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D525DC(*(v1 + 40), *(v1 + 48), *(v1 + 56));
  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  *(v1 + 56) = 0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_PunchoutForFeedback.bundleIdentifier.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_664_0(a1);
  v3 = *(v2 + 56);
  if (v3 == 255 || (v3 & 1) != 0)
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  else
  {
    v4 = *(v2 + 40);
    v5 = *(v2 + 48);
    v6 = OUTLINED_FUNCTION_461();
    sub_1B8D52508(v6, v7, 0);
  }

  *v1 = v4;
  v1[1] = v5;
  return OUTLINED_FUNCTION_542_0();
}

uint64_t sub_1B8F59538(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  v5 = *(v3 + 40);
  v6 = *(v3 + 48);
  v7 = *(v3 + 56);
  if (a2)
  {
    v8 = a1[1];

    v9 = OUTLINED_FUNCTION_543();
    sub_1B8D525DC(v9, v10, v7);
    *(v3 + 40) = v4;
    *(v3 + 48) = v2;
    *(v3 + 56) = 0;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_543();
    result = sub_1B8D525DC(v12, v13, v7);
    *(v3 + 40) = v4;
    *(v3 + 48) = v2;
    *(v3 + 56) = 0;
  }

  return result;
}

void Apple_Parsec_Feedback_V2_PunchoutForFeedback.knownBundleIdentifier.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  OUTLINED_FUNCTION_617_0(a1);
}

uint64_t Apple_Parsec_Feedback_V2_PunchoutForFeedback.knownBundleIdentifier.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = sub_1B8D525DC(*(v1 + 40), *(v1 + 48), *(v1 + 56));
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  *(v1 + 56) = 1;
  return result;
}

uint64_t (*Apple_Parsec_Feedback_V2_PunchoutForFeedback.knownBundleIdentifier.modify(uint64_t a1))(uint64_t *a1)
{
  *(a1 + 16) = v1;
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  if ((v4 & 1) == 0)
  {
    v2 = 0;
  }

  if (v4 == 255)
  {
    v2 = 0;
  }

  *a1 = v2;
  *(a1 + 8) = (v4 == 255 || (v4 & 1) == 0) | v3 & 1;
  return sub_1B8F59688;
}

uint64_t sub_1B8F59688(uint64_t *a1)
{
  v1 = a1[2];
  v2 = *a1;
  v3 = *(a1 + 8);
  result = sub_1B8D525DC(*(v1 + 40), *(v1 + 48), *(v1 + 56));
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  *(v1 + 56) = 1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_PunchoutForFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(v0) + 32);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B8F59788()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v3 = v2(v1);
  OUTLINED_FUNCTION_77_0(v3);
  OUTLINED_FUNCTION_10_4();
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8F597D4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Feedback_V2_SearchResultForFeedback.identifier.setter();
}

void sub_1B8F59854()
{
  OUTLINED_FUNCTION_184_0();
  v5 = v4;
  v7 = v6;
  v8 = OUTLINED_FUNCTION_11_13();
  v10 = v9(v8);
  v11 = OUTLINED_FUNCTION_216_1(v10);
  v12 = *(v1 + v3);
  if ((v11 & 1) == 0)
  {
    v13 = v7(0);
    OUTLINED_FUNCTION_57_0(v13);
    swift_allocObject();
    v14 = OUTLINED_FUNCTION_40_0();
    v15 = v5(v14);
    OUTLINED_FUNCTION_192_2(v15);
  }

  OUTLINED_FUNCTION_9_3();
  v16 = *(v12 + 24);
  *(v12 + 16) = v2;
  *(v12 + 24) = v0;

  OUTLINED_FUNCTION_183_2();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.identifier.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = *(type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v4) + 20);
  *(v1 + 72) = v5;
  OUTLINED_FUNCTION_249_1(v5);
  v6 = *(v0 + 24);
  *(v1 + 48) = *(v0 + 16);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.topHit.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_37_3(v2);
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v3);
  OUTLINED_FUNCTION_21_8(v4);
  OUTLINED_FUNCTION_374_0();
  v5 = *(v0 + 40);
  OUTLINED_FUNCTION_71_2(*(v0 + 32));
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.action.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_251_1(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_864();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback(0);
  OUTLINED_FUNCTION_57(v0);
  if (v9)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v10 = *(v8 + 20);
    type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
    result = OUTLINED_FUNCTION_57(v0);
    if (!v9)
    {
      return sub_1B8D9207C(v0, &qword_1EBAC06E0, &qword_1B966F968);
    }
  }

  else
  {
    OUTLINED_FUNCTION_209_2();
    return sub_1B8FAC528();
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.action.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06E0, &qword_1B966F968);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_535_0(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_297_0();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8FB2928(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_209_2();
  OUTLINED_FUNCTION_294();
  sub_1B8FAC528();
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback(0);
  OUTLINED_FUNCTION_65_1(v11);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

void Apple_Parsec_Feedback_V2_SearchResultForFeedback.action.modify()
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
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback(v9);
  OUTLINED_FUNCTION_135_0(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_187(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_149_1(v14);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v16 = *(v0 + 20);
    type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
    OUTLINED_FUNCTION_756();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    OUTLINED_FUNCTION_17_2();
    if (!v15)
    {
      sub_1B8D9207C(v1, &qword_1EBAC06E0, &qword_1B966F968);
    }
  }

  else
  {
    OUTLINED_FUNCTION_209_2();
    OUTLINED_FUNCTION_246();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.hasAction.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_251_1(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_285_0();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_SearchResultForFeedback.clearAction()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06E0, &qword_1B966F968);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_536_0(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_297_0();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8FB2928(v9);
    OUTLINED_FUNCTION_157_2(v10);
  }

  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback(0);
  OUTLINED_FUNCTION_274_1(v11);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.punchout.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06D8, &qword_1B966F960);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_535_0(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_297_0();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8FB2928(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_4_23();
  OUTLINED_FUNCTION_294();
  sub_1B8FAC528();
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  OUTLINED_FUNCTION_65_1(v11);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

void Apple_Parsec_Feedback_V2_SearchResultForFeedback.punchout.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(v8);
  OUTLINED_FUNCTION_135_0(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_149_1(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    OUTLINED_FUNCTION_114_0();
    OUTLINED_FUNCTION_310_0(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_17_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAC06D8, &qword_1B966F960);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_23();
    OUTLINED_FUNCTION_246();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.hasPunchout.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_251_1(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_285_0();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_SearchResultForFeedback.clearPunchout()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06D8, &qword_1B966F960);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_536_0(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_297_0();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8FB2928(v9);
    OUTLINED_FUNCTION_157_2(v10);
  }

  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  OUTLINED_FUNCTION_274_1(v11);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.type.modify()
{
  v0 = OUTLINED_FUNCTION_196_1();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_37_3(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v2);
  OUTLINED_FUNCTION_264_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_117_0();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.localFeatures.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_251_1(v9);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_343_0();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_Struct(0);
  OUTLINED_FUNCTION_29_14(v10);
  if (v11)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_Value(0);
    *a1 = sub_1B964C7B0();
    a1[1] = sub_1B964C7B0();
    OUTLINED_FUNCTION_251_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v11)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC06E8, &qword_1B966F970);
    }
  }

  else
  {
    OUTLINED_FUNCTION_21_10();
    OUTLINED_FUNCTION_182();
    return sub_1B8FAC528();
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.localFeatures.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06E8, &qword_1B966F970);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_535_0(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_297_0();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8FB2928(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_21_10();
  OUTLINED_FUNCTION_294();
  sub_1B8FAC528();
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_Struct(0);
  OUTLINED_FUNCTION_65_1(v11);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_Struct.init()()
{
  v1 = OUTLINED_FUNCTION_27();
  type metadata accessor for Apple_Parsec_Feedback_V2_Value(v1);
  *v0 = OUTLINED_FUNCTION_869();
  v0[1] = OUTLINED_FUNCTION_869();
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_Struct(0);
  return OUTLINED_FUNCTION_279(v2);
}

void Apple_Parsec_Feedback_V2_SearchResultForFeedback.localFeatures.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_Struct(v8);
  OUTLINED_FUNCTION_135_0(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_187(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_149_1(v14);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_Value(0);
    *v11 = sub_1B964C7B0();
    v11[1] = sub_1B964C7B0();
    OUTLINED_FUNCTION_280_0();
    OUTLINED_FUNCTION_17_2();
    if (!v15)
    {
      sub_1B8D9207C(v0, &qword_1EBAC06E8, &qword_1B966F970);
    }
  }

  else
  {
    OUTLINED_FUNCTION_21_10();
    OUTLINED_FUNCTION_246();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.hasLocalFeatures.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_251_1(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_285_0();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_Struct(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_SearchResultForFeedback.clearLocalFeatures()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06E8, &qword_1B966F970);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_536_0(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_297_0();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8FB2928(v9);
    OUTLINED_FUNCTION_157_2(v10);
  }

  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_Struct(0);
  OUTLINED_FUNCTION_274_1(v11);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  swift_endAccess();
}

void sub_1B8F5A904(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Feedback_V2_SearchResultForFeedback.resultType.setter();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.resultType.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v2);
  OUTLINED_FUNCTION_254_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

double sub_1B8F5AA60()
{
  v2 = OUTLINED_FUNCTION_428_0();
  v4 = v3(v2);
  OUTLINED_FUNCTION_308_0(v4);
  return *(v1 + v0);
}

void sub_1B8F5AAE0()
{
  OUTLINED_FUNCTION_652_0();
  v5 = v4;
  OUTLINED_FUNCTION_12_8();
  v6 = v0;
  v8 = v7;
  v10 = v9(0);
  v11 = OUTLINED_FUNCTION_866(v10);
  v12 = *(v0 + v3);
  if ((v11 & 1) == 0)
  {
    v13 = v2(0);
    OUTLINED_FUNCTION_57_0(v13);
    swift_allocObject();
    v14 = OUTLINED_FUNCTION_40_0();
    v12 = v1(v14);
    *(v6 + v3) = v12;
  }

  v15 = *v5;
  OUTLINED_FUNCTION_9_3();
  *(v12 + v15) = v8;
  OUTLINED_FUNCTION_651_0();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.rankingScore.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_138_3(v3);
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v4);
  OUTLINED_FUNCTION_225_2(v5);
  v6 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__rankingScore;
  OUTLINED_FUNCTION_68_0();
  *(v1 + 72) = *(v0 + v6);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F5AC0C()
{
  OUTLINED_FUNCTION_649_0();
  OUTLINED_FUNCTION_296_0(v4);
  v5 = *(v0 + 72);
  v6 = *(v0 + 88);
  v7 = *(v0 + 80);
  v8 = *(v7 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v7 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v0 + 88);
    v12 = *(v0 + 80);
    v13 = v3(0);
    OUTLINED_FUNCTION_57_0(v13);
    swift_allocObject();
    v14 = OUTLINED_FUNCTION_40_0();
    v15 = v2(v14);
    OUTLINED_FUNCTION_228_1(v15);
  }

  OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_11_4();
  *(v10 + v1) = v5;
  OUTLINED_FUNCTION_650_0();

  free(v16);
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.isStaticCorrection.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_20_4(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.queryID.modify()
{
  v0 = OUTLINED_FUNCTION_196_1();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_138_3(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v2);
  OUTLINED_FUNCTION_225_2(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_838();
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F5AED0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Feedback_V2_SearchResultForFeedback.intendedQuery.setter();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.intendedQuery.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v2);
  OUTLINED_FUNCTION_254_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B8F5B02C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Feedback_V2_SearchResultForFeedback.correctedQuery.setter();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.correctedQuery.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v2);
  OUTLINED_FUNCTION_254_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B8F5B188(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Feedback_V2_SearchResultForFeedback.completedQuery.setter();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.completedQuery.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v2);
  OUTLINED_FUNCTION_254_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.isLocalApplicationResult.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_20_4(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.publiclyIndexable.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_20_4(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F5B4D4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Feedback_V2_SearchResultForFeedback.fbr.setter();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.fbr.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v2);
  OUTLINED_FUNCTION_254_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B8F5B630(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Feedback_V2_SearchResultForFeedback.userInput.setter();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.userInput.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v2);
  OUTLINED_FUNCTION_254_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.isFuzzyMatch.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_20_4(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.doNotFold.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_20_4(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t sub_1B8F5B97C()
{
  v2 = OUTLINED_FUNCTION_428_0();
  v4 = v3(v2);
  OUTLINED_FUNCTION_308_0(v4);
  return *(v1 + v0);
}

void sub_1B8F5B9FC()
{
  OUTLINED_FUNCTION_184_0();
  OUTLINED_FUNCTION_353_0();
  v6 = OUTLINED_FUNCTION_313();
  v8 = v7(v6);
  v9 = OUTLINED_FUNCTION_216_1(v8);
  v10 = *(v1 + v5);
  if ((v9 & 1) == 0)
  {
    v11 = v4(0);
    OUTLINED_FUNCTION_57_0(v11);
    swift_allocObject();
    v12 = OUTLINED_FUNCTION_40_0();
    v13 = v3(v12);
    OUTLINED_FUNCTION_192_2(v13);
  }

  OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_9_3();
  *(v10 + v2) = v0;
  OUTLINED_FUNCTION_183_2();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.blockID.modify()
{
  v0 = OUTLINED_FUNCTION_196_1();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_138_3(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v2);
  OUTLINED_FUNCTION_225_2(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_838();
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F5BB10()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_296_0(v7);
  v8 = OUTLINED_FUNCTION_592_0(v0);
  v9 = *(v6 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = OUTLINED_FUNCTION_612_0();
    v11 = v4(v10);
    OUTLINED_FUNCTION_57_0(v11);
    swift_allocObject();
    v12 = OUTLINED_FUNCTION_40_0();
    v13 = v3(v12);
    OUTLINED_FUNCTION_529_0(v13);
  }

  OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_11_4();
  *(v9 + v2) = v5;
  OUTLINED_FUNCTION_283();

  free(v14);
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.hashedIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_196_1();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_138_3(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v2);
  OUTLINED_FUNCTION_225_2(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_838();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.resultBundleIdentifier.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_205_1();
  *(a1 + 20) = v3;
  OUTLINED_FUNCTION_610_0(*(v1 + v3));
  return OUTLINED_FUNCTION_542_0();
}

uint64_t sub_1B8F5BD8C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Apple_Parsec_Feedback_V2_SearchResultForFeedback.resultBundleID.setter();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.resultBundleID.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_664_0(a1);
  OUTLINED_FUNCTION_205_1();
  OUTLINED_FUNCTION_611_0(*(v2 + v3));
  if (v6 || (v5 & 1) != 0)
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  else
  {
    v7 = *v4;
    v8 = v4[1];
    v9 = OUTLINED_FUNCTION_543();
    sub_1B8D52508(v9, v10, 0);
  }

  *v1 = v7;
  v1[1] = v8;
  return OUTLINED_FUNCTION_542_0();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.knownResultBundleID.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_664_0(a1);
  OUTLINED_FUNCTION_205_1();
  *(v1 + 12) = v3;
  OUTLINED_FUNCTION_360_0(*(v2 + v3));
  OUTLINED_FUNCTION_514_0(v4);
  return OUTLINED_FUNCTION_542_0();
}

uint64_t sub_1B8F5BF4C@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_205_1();
  v7 = *(v3 + v6) + *a1;
  v8 = *(v7 + 8);
  *a3 = *v7;
  *(a3 + 8) = v8;
  *(a3 + 16) = *(v7 + 16);

  return a2();
}

uint64_t sub_1B8F5BFDC(uint64_t *a1, void *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *(a1 + 16);
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  v10 = OUTLINED_FUNCTION_216_1(v9);
  v11 = *(v3 + v4);
  if ((v10 & 1) == 0)
  {
    OUTLINED_FUNCTION_297_0();
    v12 = OUTLINED_FUNCTION_40_0();
    v13 = sub_1B8FB2928(v12);
    OUTLINED_FUNCTION_665_0(v13);
  }

  v14 = (v11 + *a2);
  v15 = *v14;
  v16 = v14[1];
  *v14 = v6;
  v14[1] = v7;
  v17 = *(v14 + 16);
  *(v14 + 16) = v8;

  return a3(v15, v16, v17);
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.sectionBundleID.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_205_1();
  *(a1 + 20) = v3;
  OUTLINED_FUNCTION_610_0(*(v1 + v3));
  return OUTLINED_FUNCTION_542_0();
}

uint64_t sub_1B8F5C108(uint64_t *a1, char a2, uint64_t *a3, void (*a4)(uint64_t))
{
  v6 = *a1;
  v5 = a1[1];
  v7 = *(a1 + 16);
  v8 = *(a1 + 5);
  v9 = a1[3];
  if (a2)
  {
    v10 = OUTLINED_FUNCTION_461();
    v11(v10);
    v12 = *(v9 + v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v9 + v8);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_297_0();
      v15 = OUTLINED_FUNCTION_40_0();
      v16 = sub_1B8FB2928(v15);
      OUTLINED_FUNCTION_73_2(v16);
    }

    v17 = OUTLINED_FUNCTION_609_0(*a3);
    *(v18 + 16) = v7;
    a4(v17);
    v19 = OUTLINED_FUNCTION_461();
  }

  else
  {
    v20 = *(v9 + v8);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v9 + v8);
    if ((v21 & 1) == 0)
    {
      OUTLINED_FUNCTION_297_0();
      v23 = OUTLINED_FUNCTION_40_0();
      v24 = sub_1B8FB2928(v23);
      OUTLINED_FUNCTION_73_2(v24);
    }

    v19 = OUTLINED_FUNCTION_609_0(*a3);
    *(v25 + 16) = v7;
  }

  return (a4)(v19);
}

uint64_t sub_1B8F5C218(uint64_t *a1, void (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_205_1();
  v6 = *a1;
  OUTLINED_FUNCTION_611_0(*(v2 + v5));
  if (!v9 && (v8 & 1) == 0)
  {
    v10 = *v7;
    v11 = v7[1];
    v12 = OUTLINED_FUNCTION_432();
    a2(v12);
  }

  return OUTLINED_FUNCTION_432();
}

uint64_t sub_1B8F5C280(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Apple_Parsec_Feedback_V2_SearchResultForFeedback.sectionBundleIdentifier.setter();
}

uint64_t sub_1B8F5C2E0(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v9 = v5;
  v10 = OUTLINED_FUNCTION_112();
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v10);
  v12 = OUTLINED_FUNCTION_866(v11);
  v13 = *(v5 + v7);
  if ((v12 & 1) == 0)
  {
    OUTLINED_FUNCTION_297_0();
    v14 = OUTLINED_FUNCTION_40_0();
    v13 = sub_1B8FB2928(v14);
    *(v9 + v7) = v13;
  }

  v15 = v13 + *a3;
  v16 = *v15;
  v17 = *(v15 + 8);
  *v15 = v6;
  *(v15 + 8) = v4;
  v18 = *(v15 + 16);
  *(v15 + 16) = 0;

  return a4(v16, v17, v18);
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.sectionBundleIdentifier.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_664_0(a1);
  OUTLINED_FUNCTION_205_1();
  OUTLINED_FUNCTION_611_0(*(v2 + v3));
  if (v6 || (v5 & 1) != 0)
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  else
  {
    v7 = *v4;
    v8 = v4[1];
    v9 = OUTLINED_FUNCTION_543();
    sub_1B8D52508(v9, v10, 0);
  }

  *v1 = v7;
  v1[1] = v8;
  return OUTLINED_FUNCTION_542_0();
}

void sub_1B8F5C418(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_205_1();
  v6 = *a1;
  OUTLINED_FUNCTION_360_0(*(v2 + v5));
  if (v7 == 255)
  {
    v8 = 0;
  }

  *a2 = v8;
  *(a2 + 8) = (v7 == 255 || (v7 & 1) == 0) | v9 & 1;
}

uint64_t sub_1B8F5C494(uint64_t *a1, void *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = v3;
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  v10 = OUTLINED_FUNCTION_866(v9);
  v11 = *(v3 + v4);
  if ((v10 & 1) == 0)
  {
    OUTLINED_FUNCTION_297_0();
    v12 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B8FB2928(v12);
    *(v6 + v4) = v11;
  }

  v13 = v11 + *a2;
  v14 = *v13;
  v15 = *(v13 + 8);
  *v13 = v7;
  *(v13 + 8) = v8;
  v16 = *(v13 + 16);
  *(v13 + 16) = 1;

  return a3(v14, v15, v16);
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.knownSectionBundleIdentifier.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_664_0(a1);
  OUTLINED_FUNCTION_205_1();
  *(v1 + 12) = v3;
  OUTLINED_FUNCTION_360_0(*(v2 + v3));
  OUTLINED_FUNCTION_514_0(v4);
  return OUTLINED_FUNCTION_542_0();
}

uint64_t sub_1B8F5C5B8(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v5 = *(a1 + 3);
  v6 = a1[2];
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(v6 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v6 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_297_0();
    v12 = OUTLINED_FUNCTION_40_0();
    v13 = sub_1B8FB2928(v12);
    OUTLINED_FUNCTION_168(v13);
  }

  v14 = OUTLINED_FUNCTION_609_0(*a3);
  *(v15 + 16) = 1;

  return a4(v14);
}

double sub_1B8F5C66C@<D0>(void (*a1)(__int128 *__return_ptr)@<X3>, uint64_t a2@<X8>)
{
  a1(&v5);
  v3 = v6;
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_1B8F5C6B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(void *))
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v7;
  v11 = v8;
  a5(v10[0]);
  return a6(v10);
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.applicationBundleID.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_205_1();
  *(a1 + 20) = v3;
  OUTLINED_FUNCTION_610_0(*(v1 + v3));
  return OUTLINED_FUNCTION_542_0();
}

uint64_t sub_1B8F5C7D0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Apple_Parsec_Feedback_V2_SearchResultForFeedback.applicationBundleIdentifier.setter();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.applicationBundleIdentifier.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_664_0(a1);
  OUTLINED_FUNCTION_205_1();
  OUTLINED_FUNCTION_611_0(*(v2 + v3));
  if (v6 || (v5 & 1) != 0)
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  else
  {
    v7 = *v4;
    v8 = v4[1];
    v9 = OUTLINED_FUNCTION_543();
    sub_1B8D52508(v9, v10, 0);
  }

  *v1 = v7;
  v1[1] = v8;
  return OUTLINED_FUNCTION_542_0();
}

uint64_t sub_1B8F5C8C4(uint64_t *a1, char a2, void (*a3)(uint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  if (a2)
  {
    v7 = a1[1];

    v8 = OUTLINED_FUNCTION_461();
    a3(v8);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_461();
    return (a3)(v10);
  }
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.knownApplicationBundleIdentifier.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_664_0(a1);
  OUTLINED_FUNCTION_205_1();
  *(v1 + 12) = v3;
  OUTLINED_FUNCTION_360_0(*(v2 + v3));
  OUTLINED_FUNCTION_514_0(v4);
  return OUTLINED_FUNCTION_542_0();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.entityData.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v4);
  OUTLINED_FUNCTION_254_1(v5);
  OUTLINED_FUNCTION_41();
  v6 = *v0;
  v7 = v0[1];
  *(v1 + 48) = *v0;
  *(v1 + 56) = v7;
  sub_1B8D91FCC(v6, v7);
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.shouldUseCompactDisplay.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_20_4(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.noGoTakeover.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_20_4(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.preferTopPlatter.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_20_4(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.wasCompact.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_20_4(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.didTakeoverGo.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_20_4(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.usesCompactDisplay.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_20_4(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.isInstantAnswer.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_20_4(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.shouldAutoNavigate.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_20_4(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.card.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06F0, &qword_1B966F978);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_535_0(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_297_0();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8FB2928(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_6_13();
  OUTLINED_FUNCTION_294();
  sub_1B8FAC528();
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(0);
  OUTLINED_FUNCTION_65_1(v11);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_CardForFeedback.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = 0;
  v1 = OUTLINED_FUNCTION_517_0();
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(v1);
  return OUTLINED_FUNCTION_279(v2);
}

void Apple_Parsec_Feedback_V2_SearchResultForFeedback.card.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(v8);
  OUTLINED_FUNCTION_135_0(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_149_1(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    OUTLINED_FUNCTION_513_0(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_280_0();
    OUTLINED_FUNCTION_17_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAC06F0, &qword_1B966F978);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_13();
    OUTLINED_FUNCTION_246();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.hasCard.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_251_1(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_285_0();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_SearchResultForFeedback.clearCard()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06F0, &qword_1B966F978);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_536_0(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_297_0();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8FB2928(v9);
    OUTLINED_FUNCTION_157_2(v10);
  }

  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(0);
  OUTLINED_FUNCTION_274_1(v11);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.inlineCard.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06F0, &qword_1B966F978);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_535_0(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_297_0();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8FB2928(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_6_13();
  OUTLINED_FUNCTION_294();
  sub_1B8FAC528();
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(0);
  OUTLINED_FUNCTION_65_1(v11);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

void Apple_Parsec_Feedback_V2_SearchResultForFeedback.inlineCard.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(v8);
  OUTLINED_FUNCTION_135_0(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_149_1(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    OUTLINED_FUNCTION_513_0(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_280_0();
    OUTLINED_FUNCTION_17_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAC06F0, &qword_1B966F978);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_13();
    OUTLINED_FUNCTION_246();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.hasInlineCard.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_251_1(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_285_0();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_SearchResultForFeedback.clearInlineCard()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06F0, &qword_1B966F978);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_536_0(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_297_0();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8FB2928(v9);
    OUTLINED_FUNCTION_157_2(v10);
  }

  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(0);
  OUTLINED_FUNCTION_274_1(v11);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  swift_endAccess();
}

uint64_t sub_1B8F5DA54@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_690();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_251_1(v9);
  OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_466();
  sub_1B8F1B8B8();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(0);
  OUTLINED_FUNCTION_29_14(v10);
  if (v11)
  {
    *a1 = MEMORY[0x1E69E7CC0];
    a1[1] = 0;
    OUTLINED_FUNCTION_594_0();
    OUTLINED_FUNCTION_251_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v11)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC06F0, &qword_1B966F978);
    }
  }

  else
  {
    OUTLINED_FUNCTION_182();
    return sub_1B8FAC528();
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.compactCard.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06F0, &qword_1B966F978);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_535_0(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_297_0();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8FB2928(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_6_13();
  OUTLINED_FUNCTION_294();
  sub_1B8FAC528();
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(0);
  OUTLINED_FUNCTION_65_1(v11);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

void Apple_Parsec_Feedback_V2_SearchResultForFeedback.compactCard.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(v8);
  OUTLINED_FUNCTION_135_0(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_149_1(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    OUTLINED_FUNCTION_513_0(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_280_0();
    OUTLINED_FUNCTION_17_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAC06F0, &qword_1B966F978);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_13();
    OUTLINED_FUNCTION_246();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.hasCompactCard.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_251_1(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_285_0();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_SearchResultForFeedback.clearCompactCard()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06F0, &qword_1B966F978);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_536_0(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_297_0();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8FB2928(v9);
    OUTLINED_FUNCTION_157_2(v10);
  }

  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(0);
  OUTLINED_FUNCTION_274_1(v11);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.containsPersonalResult.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_20_4(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.didRerankPersonalResult.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_20_4(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t sub_1B8F5E0DC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  OUTLINED_FUNCTION_478_0(v3);
  v6 = v4 + v5;
  result = OUTLINED_FUNCTION_6_2();
  v8 = *(v6 + 8);
  *a2 = *v6;
  *(a2 + 8) = v8;
  return result;
}

void sub_1B8F5E184()
{
  OUTLINED_FUNCTION_184_0();
  v5 = v4;
  OUTLINED_FUNCTION_451_0();
  v6 = v0;
  v8 = *v7;
  v9 = *(v7 + 8);
  v11 = v10(0);
  OUTLINED_FUNCTION_704_0(v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = v2(0);
    OUTLINED_FUNCTION_57_0(v14);
    swift_allocObject();
    v15 = OUTLINED_FUNCTION_40_0();
    v13 = v1(v15);
    *(v6 + v3) = v13;
  }

  v16 = v13 + *v5;
  OUTLINED_FUNCTION_18();
  *v16 = v8;
  *(v16 + 8) = v9;
  OUTLINED_FUNCTION_183_2();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.coreSpotlightIndexUsed.modify()
{
  v0 = OUTLINED_FUNCTION_196_1();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_37_3(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v2);
  OUTLINED_FUNCTION_264_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_117_0();
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F5E2BC()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_296_0(v4);
  v5 = *(v0 + 72);
  v6 = *(v0 + 84);
  v7 = *(v0 + 88);
  v8 = *(v0 + 80);
  v9 = *(v7 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v7 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = *(v0 + 84);
    v13 = *(v0 + 88);
    v14 = v3(0);
    OUTLINED_FUNCTION_57_0(v14);
    swift_allocObject();
    v15 = OUTLINED_FUNCTION_40_0();
    v11 = v2(v15);
    *(v13 + v12) = v11;
  }

  v16 = v11 + *v1;
  OUTLINED_FUNCTION_211_0();
  *v16 = v5;
  *(v16 + 8) = v8;
  OUTLINED_FUNCTION_283();

  free(v17);
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.coreSpotlightIndexUsedReason.modify()
{
  v0 = OUTLINED_FUNCTION_196_1();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_37_3(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v2);
  OUTLINED_FUNCTION_264_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_117_0();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.coreSpotlightRankingSignals.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_251_1(v9);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_343_0();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback(0);
  OUTLINED_FUNCTION_29_14(v10);
  if (v11)
  {
    Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback.init()(a1);
    result = OUTLINED_FUNCTION_9_2();
    if (!v11)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC06F8, &qword_1B966F980);
    }
  }

  else
  {
    OUTLINED_FUNCTION_316_0();
    OUTLINED_FUNCTION_182();
    return sub_1B8FAC528();
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.coreSpotlightRankingSignals.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06F8, &qword_1B966F980);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_535_0(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_297_0();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8FB2928(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_316_0();
  OUTLINED_FUNCTION_294();
  sub_1B8FAC528();
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback(0);
  OUTLINED_FUNCTION_65_1(v11);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 20) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 1;
  *(a1 + 44) = 0;
  *(a1 + 48) = 0;
  *(a1 + 52) = 0;
  *(a1 + 56) = 0;
  *(a1 + 60) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 76) = 0;
  v1 = a1 + *(type metadata accessor for Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback(0) + 80);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Feedback_V2_SearchResultForFeedback.coreSpotlightRankingSignals.modify()
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
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback(v9);
  OUTLINED_FUNCTION_135_0(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_187(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_149_1(v15);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    *(v12 + 20) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0;
    *v12 = 0;
    *(v12 + 8) = 0;
    *(v12 + 16) = 0;
    *(v12 + 40) = 1;
    *(v12 + 44) = 0;
    *(v12 + 48) = 0;
    *(v12 + 52) = 0;
    *(v12 + 56) = 0;
    *(v12 + 60) = 0;
    *(v12 + 64) = 0;
    *(v12 + 72) = 1;
    *(v12 + 76) = 0;
    v17 = v12 + *(v0 + 80);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v16)
    {
      sub_1B8D9207C(v1, &qword_1EBAC06F8, &qword_1B966F980);
    }
  }

  else
  {
    OUTLINED_FUNCTION_316_0();
    OUTLINED_FUNCTION_246();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.hasCoreSpotlightRankingSignals.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_251_1(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_285_0();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_SearchResultForFeedback.clearCoreSpotlightRankingSignals()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06F8, &qword_1B966F980);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_536_0(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_297_0();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8FB2928(v9);
    OUTLINED_FUNCTION_157_2(v10);
  }

  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback(0);
  OUTLINED_FUNCTION_274_1(v11);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.mailRankingSignals.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_251_1(v9);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_343_0();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback(0);
  OUTLINED_FUNCTION_29_14(v10);
  if (v11)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB6BF0 != -1)
    {
      OUTLINED_FUNCTION_606_0();
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC0700, &qword_1B966F988);
    }
  }

  else
  {
    OUTLINED_FUNCTION_315_0();
    OUTLINED_FUNCTION_182();
    return sub_1B8FAC528();
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.mailRankingSignals.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0700, &qword_1B966F988);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_535_0(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_297_0();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8FB2928(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_315_0();
  OUTLINED_FUNCTION_294();
  sub_1B8FAC528();
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback(0);
  OUTLINED_FUNCTION_65_1(v11);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

void Apple_Parsec_Feedback_V2_SearchResultForFeedback.mailRankingSignals.modify()
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
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback(v9);
  OUTLINED_FUNCTION_135_0(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_187(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_149_1(v14);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v16 = *(v0 + 20);
    if (qword_1EBAB6BF0 != -1)
    {
      OUTLINED_FUNCTION_606_0();
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBAC0700, &qword_1B966F988);
    }
  }

  else
  {
    OUTLINED_FUNCTION_315_0();
    OUTLINED_FUNCTION_246();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.hasMailRankingSignals.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_251_1(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_285_0();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_SearchResultForFeedback.clearMailRankingSignals()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0700, &qword_1B966F988);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_536_0(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_297_0();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8FB2928(v9);
    OUTLINED_FUNCTION_157_2(v10);
  }

  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback(0);
  OUTLINED_FUNCTION_274_1(v11);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.mailResultDetails.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_236();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_251_1(v10);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_343_0();
  type metadata accessor for Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback(0);
  OUTLINED_FUNCTION_199_2();
  OUTLINED_FUNCTION_9_2();
  if (v11)
  {
    *a1 = 0;
    *(a1 + 8) = v1;
    *(a1 + 12) = 0;
    OUTLINED_FUNCTION_826();
    result = OUTLINED_FUNCTION_9_2();
    if (!v11)
    {
      return sub_1B8D9207C(v2, &qword_1EBAC0708, &qword_1B966F990);
    }
  }

  else
  {
    OUTLINED_FUNCTION_314_0();
    OUTLINED_FUNCTION_182();
    return sub_1B8FAC528();
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.mailResultDetails.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0708, &qword_1B966F990);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_535_0(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_297_0();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8FB2928(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_314_0();
  OUTLINED_FUNCTION_294();
  sub_1B8FAC528();
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback(0);
  OUTLINED_FUNCTION_65_1(v11);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_197_1(a1);
  *(v1 + 12) = 0;
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback(0);
  return OUTLINED_FUNCTION_101_2(v2);
}

void Apple_Parsec_Feedback_V2_SearchResultForFeedback.mailResultDetails.modify()
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
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback(v9);
  OUTLINED_FUNCTION_135_0(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_187(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_149_1(v15);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    *v12 = 0;
    *(v12 + 8) = 1;
    *(v12 + 12) = 0;
    v17 = v12 + *(v0 + 28);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v16)
    {
      sub_1B8D9207C(v1, &qword_1EBAC0708, &qword_1B966F990);
    }
  }

  else
  {
    OUTLINED_FUNCTION_314_0();
    OUTLINED_FUNCTION_246();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.hasMailResultDetails.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_251_1(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_285_0();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_SearchResultForFeedback.clearMailResultDetails()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0708, &qword_1B966F990);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_536_0(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_297_0();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8FB2928(v9);
    OUTLINED_FUNCTION_157_2(v10);
  }

  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback(0);
  OUTLINED_FUNCTION_274_1(v11);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.isVideoAssetFromPhotos.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_20_4(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.isMailInstantAnswerUpdated.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_20_4(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.indexOfSectionWhenRanked.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_42_5(v3);
  *(v1 + 84) = v4;
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_62_1();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.indexOfResultInSectionWhenRanked.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_42_5(v3);
  *(v1 + 84) = v4;
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_62_1();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.safariAttributes.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_236();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_251_1(v10);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_343_0();
  type metadata accessor for Apple_Parsec_Feedback_V2_SafariAttributes(0);
  OUTLINED_FUNCTION_199_2();
  OUTLINED_FUNCTION_9_2();
  if (v11)
  {
    *a1 = 0;
    *(a1 + 8) = v1;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v11)
    {
      return sub_1B8D9207C(v2, &unk_1EBAC0710, &qword_1B966F998);
    }
  }

  else
  {
    OUTLINED_FUNCTION_313_0();
    OUTLINED_FUNCTION_182();
    return sub_1B8FAC528();
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.safariAttributes.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC0710, &qword_1B966F998);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_535_0(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_297_0();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8FB2928(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_313_0();
  OUTLINED_FUNCTION_294();
  sub_1B8FAC528();
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_SafariAttributes(0);
  OUTLINED_FUNCTION_65_1(v11);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_SafariAttributes.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_197_1(a1);
  v1 = type metadata accessor for Apple_Parsec_Feedback_V2_SafariAttributes(0);
  return OUTLINED_FUNCTION_163_2(v1);
}

void Apple_Parsec_Feedback_V2_SearchResultForFeedback.safariAttributes.modify()
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
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_SafariAttributes(v9);
  OUTLINED_FUNCTION_135_0(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_187(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_149_1(v15);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    *v12 = 0;
    *(v12 + 8) = 1;
    v17 = v12 + *(v0 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v16)
    {
      sub_1B8D9207C(v1, &unk_1EBAC0710, &qword_1B966F998);
    }
  }

  else
  {
    OUTLINED_FUNCTION_313_0();
    OUTLINED_FUNCTION_246();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.hasSafariAttributes.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_251_1(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_285_0();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_SafariAttributes(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_SearchResultForFeedback.clearSafariAttributes()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC0710, &qword_1B966F998);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_536_0(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_297_0();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8FB2928(v9);
    OUTLINED_FUNCTION_157_2(v10);
  }

  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_SafariAttributes(0);
  OUTLINED_FUNCTION_274_1(v11);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.hasAppTopHitShortcut_p.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_20_4(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.photosAttributes.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0718, &qword_1B966F9A0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_535_0(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_297_0();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8FB2928(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_208_1();
  OUTLINED_FUNCTION_294();
  sub_1B8FAC528();
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes(0);
  OUTLINED_FUNCTION_65_1(v11);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_PhotosAttributes.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  OUTLINED_FUNCTION_752();
  v1 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes(0);
  return OUTLINED_FUNCTION_723_0(v1);
}

void Apple_Parsec_Feedback_V2_SearchResultForFeedback.photosAttributes.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes(v8);
  OUTLINED_FUNCTION_135_0(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_149_1(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    OUTLINED_FUNCTION_740();
    OUTLINED_FUNCTION_17_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAC0718, &qword_1B966F9A0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_208_1();
    OUTLINED_FUNCTION_246();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.hasPhotosAttributes.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_251_1(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_285_0();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_SearchResultForFeedback.clearPhotosAttributes()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0718, &qword_1B966F9A0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_536_0(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_297_0();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8FB2928(v9);
    OUTLINED_FUNCTION_157_2(v10);
  }

  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes(0);
  OUTLINED_FUNCTION_274_1(v11);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.photosAggregatedInfo.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_251_1(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_343_0();
  type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAggregatedInfo(0);
  OUTLINED_FUNCTION_199_2();
  OUTLINED_FUNCTION_9_2();
  if (v8)
  {
    OUTLINED_FUNCTION_702_0();
    OUTLINED_FUNCTION_826();
    result = OUTLINED_FUNCTION_9_2();
    if (!v8)
    {
      return sub_1B8D9207C(v0, &unk_1EBAC0720, &qword_1B966F9A8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_312_0();
    OUTLINED_FUNCTION_182();
    return sub_1B8FAC528();
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.photosAggregatedInfo.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC0720, &qword_1B966F9A8);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_535_0(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_297_0();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8FB2928(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_312_0();
  OUTLINED_FUNCTION_294();
  sub_1B8FAC528();
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAggregatedInfo(0);
  OUTLINED_FUNCTION_65_1(v11);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_PhotosAggregatedInfo.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_197_1(a1);
  *(v1 + 16) = 0;
  OUTLINED_FUNCTION_724(v2);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAggregatedInfo(0);
  return OUTLINED_FUNCTION_101_2(v3);
}

void Apple_Parsec_Feedback_V2_SearchResultForFeedback.photosAggregatedInfo.modify()
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
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAggregatedInfo(v9);
  OUTLINED_FUNCTION_135_0(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_187(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_149_1(v15);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    OUTLINED_FUNCTION_700_0();
    v17 = v12 + *(v0 + 28);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v16)
    {
      sub_1B8D9207C(v1, &unk_1EBAC0720, &qword_1B966F9A8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_312_0();
    OUTLINED_FUNCTION_246();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.hasPhotosAggregatedInfo.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_251_1(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_285_0();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAggregatedInfo(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_SearchResultForFeedback.clearPhotosAggregatedInfo()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC0720, &qword_1B966F9A8);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_536_0(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_297_0();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8FB2928(v9);
    OUTLINED_FUNCTION_157_2(v10);
  }

  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAggregatedInfo(0);
  OUTLINED_FUNCTION_274_1(v11);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.thirdPartyQueryCompletionMatched.modify()
{
  v0 = OUTLINED_FUNCTION_196_1();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_37_3(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v2);
  OUTLINED_FUNCTION_264_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_117_0();
  return OUTLINED_FUNCTION_105_0();
}

float Apple_Parsec_Feedback_V2_SearchResultForFeedback.thirdPartyNavigationIntentScore.getter()
{
  OUTLINED_FUNCTION_205_1();
  v2 = *(v0 + v1) + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__thirdPartyNavigationIntentScore;
  OUTLINED_FUNCTION_6_2();
  return *v2;
}

void Apple_Parsec_Feedback_V2_SearchResultForFeedback.thirdPartyNavigationIntentScore.setter()
{
  OUTLINED_FUNCTION_30_5();
  v3 = OUTLINED_FUNCTION_235_2();
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v3);
  v5 = OUTLINED_FUNCTION_728(v4);
  v6 = *(v0 + v1);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_297_0();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FB2928(v7);
    OUTLINED_FUNCTION_16_3(v8);
  }

  v9 = (v6 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__thirdPartyNavigationIntentScore);
  OUTLINED_FUNCTION_18();
  *v9 = v2;
  OUTLINED_FUNCTION_29_3();
}

uint64_t Apple_Parsec_Feedback_V2_SearchResultForFeedback.thirdPartyNavigationIntentScore.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_42_5(v3);
  *(v1 + 84) = v4;
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_41();
  *(v1 + 80) = *v0;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F606C0()
{
  OUTLINED_FUNCTION_32_3();
  OUTLINED_FUNCTION_52_4(v4);
  v5 = OUTLINED_FUNCTION_744();
  v6 = *(v2 + v1);
  if ((v5 & 1) == 0)
  {
    v7 = *(v0 + 84);
    v8 = *(v0 + 72);
    OUTLINED_FUNCTION_297_0();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8FB2928(v9);
    OUTLINED_FUNCTION_15(v10);
  }

  v11 = (v6 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__thirdPartyNavigationIntentScore);
  OUTLINED_FUNCTION_211_0();
  *v11 = v3;
  OUTLINED_FUNCTION_31_4();

  free(v12);
}

void sub_1B8F607FC()
{
  OUTLINED_FUNCTION_184_0();
  v4 = v3;
  v5 = v2;
  v7 = *v0;
  v6 = v0[1];
  v8 = *(v1 + 16);
  if (v0[2])
  {
    if (*(v1 + 16))
    {
      v9 = OUTLINED_FUNCTION_74_7();
      v4(v9);
      v10 = OUTLINED_FUNCTION_186();
      v11 = (v4)(v10);
      v12 = Apple_Parsec_Feedback_V2_FeedbackDeletionReason.rawValue.getter(v11);
      Apple_Parsec_Feedback_V2_FeedbackDeletionReason.rawValue.getter(v12);
      goto LABEL_7;
    }

LABEL_6:
    v14 = OUTLINED_FUNCTION_186();
    v5(v14);
    v15 = OUTLINED_FUNCTION_74_7();
    v4(v15);
    v16 = OUTLINED_FUNCTION_186();
    v4(v16);
    goto LABEL_7;
  }

  if (*(v1 + 16))
  {
    v13 = v0[1];

    goto LABEL_6;
  }

  v17 = *v0;
  if (v7 == *v1 && v6 == *(v1 + 8))
  {
    (v2)(v17, v6, 0);
    v23 = OUTLINED_FUNCTION_74_7();
    v5(v23);
    v24 = OUTLINED_FUNCTION_74_7();
    v4(v24);
    v22 = OUTLINED_FUNCTION_74_7();
  }

  else
  {
    sub_1B964C9F0();
    v19 = OUTLINED_FUNCTION_186();
    v5(v19);
    v20 = OUTLINED_FUNCTION_74_7();
    v5(v20);
    v21 = OUTLINED_FUNCTION_74_7();
    v4(v21);
    v22 = OUTLINED_FUNCTION_186();
  }

  v4(v22);
LABEL_7:
  OUTLINED_FUNCTION_183_2();
}

uint64_t Apple_Parsec_Feedback_V2_PhotosAggregatedInfo.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAggregatedInfo(v0) + 28);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_PhotosAttributes.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes(v0) + 40);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_SafariAttributes.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_SafariAttributes(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B8F60CE8()
{
  v0 = OUTLINED_FUNCTION_338_0();
  v2 = *(v1(v0) + 28);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_18_1();

  return v7(v6);
}

uint64_t sub_1B8F60D6C()
{
  v0 = OUTLINED_FUNCTION_313();
  v2 = *(v1(v0) + 28);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_21_7(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_209();

  return v7(v6);
}

uint64_t Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback(v0) + 28);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.wasReorderedByRecency.getter()
{
  OUTLINED_FUNCTION_133_5();
  OUTLINED_FUNCTION_10_4();
  return *(v0 + 16);
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.wasReorderedByRecency.setter()
{
  v3 = OUTLINED_FUNCTION_151_2();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v5 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B8FBDB18(v5);
    OUTLINED_FUNCTION_157_2(v6);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v4 + 16) = v0 & 1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.wasReorderedByRecency.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_13(v3);
  *(v1 + 80) = v4;
  OUTLINED_FUNCTION_249_1(v4);
  *(v1 + 84) = *(v0 + 16);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F60F0C(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_232_0();
    type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback._StorageClass();
    OUTLINED_FUNCTION_400_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FBDB18(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 16) = v3;

  free(v1);
}

uint64_t sub_1B8F60FA8()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v3 = v2(v1);
  OUTLINED_FUNCTION_402_0(v3);
  OUTLINED_FUNCTION_10_4();
  return *(v0 + 24);
}

void sub_1B8F6102C()
{
  OUTLINED_FUNCTION_184_0();
  OUTLINED_FUNCTION_271_1();
  v5 = OUTLINED_FUNCTION_65_3();
  v7 = v6(v5);
  v8 = OUTLINED_FUNCTION_216_1(v7);
  v9 = *(v1 + v4);
  if ((v8 & 1) == 0)
  {
    v3(0);
    OUTLINED_FUNCTION_693_0();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = v2(v10);
    OUTLINED_FUNCTION_665_0(v11);
  }

  OUTLINED_FUNCTION_9_3();
  *(v9 + 24) = v0;
  OUTLINED_FUNCTION_183_2();
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.numEngagements.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_138_3(v3);
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback(v4);
  OUTLINED_FUNCTION_225_2(v5);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 72) = *(v0 + 24);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F61134()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_168_3(v5);
  v7 = OUTLINED_FUNCTION_592_0(v6);
  v8 = *(v4 + v0);
  if ((v7 & 1) == 0)
  {
    v9 = OUTLINED_FUNCTION_612_0();
    v2(v9);
    OUTLINED_FUNCTION_693_0();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = v1(v10);
    OUTLINED_FUNCTION_529_0(v11);
  }

  OUTLINED_FUNCTION_11_4();
  *(v8 + 24) = v3;
  OUTLINED_FUNCTION_283();

  free(v12);
}

uint64_t sub_1B8F611D8()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v3 = v2(v1);
  OUTLINED_FUNCTION_402_0(v3);
  OUTLINED_FUNCTION_10_4();
  return *(v0 + 32);
}

void sub_1B8F6125C()
{
  OUTLINED_FUNCTION_184_0();
  OUTLINED_FUNCTION_271_1();
  v5 = OUTLINED_FUNCTION_65_3();
  v7 = v6(v5);
  v8 = OUTLINED_FUNCTION_216_1(v7);
  v9 = *(v1 + v4);
  if ((v8 & 1) == 0)
  {
    v3(0);
    OUTLINED_FUNCTION_693_0();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = v2(v10);
    OUTLINED_FUNCTION_665_0(v11);
  }

  OUTLINED_FUNCTION_9_3();
  *(v9 + 32) = v0;
  OUTLINED_FUNCTION_183_2();
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.numDaysEngagedLast30Days.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_138_3(v3);
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback(v4);
  OUTLINED_FUNCTION_225_2(v5);
  OUTLINED_FUNCTION_374_0();
  *(v1 + 72) = *(v0 + 32);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F61360()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_168_3(v5);
  v7 = OUTLINED_FUNCTION_592_0(v6);
  v8 = *(v4 + v0);
  if ((v7 & 1) == 0)
  {
    v9 = OUTLINED_FUNCTION_612_0();
    v2(v9);
    OUTLINED_FUNCTION_693_0();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = v1(v10);
    OUTLINED_FUNCTION_529_0(v11);
  }

  OUTLINED_FUNCTION_11_4();
  *(v8 + 32) = v3;
  OUTLINED_FUNCTION_283();

  free(v12);
}

uint64_t sub_1B8F61404()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v3 = v2(v1);
  OUTLINED_FUNCTION_402_0(v3);
  OUTLINED_FUNCTION_10_4();
  return *(v0 + 40);
}

void sub_1B8F61488()
{
  OUTLINED_FUNCTION_184_0();
  OUTLINED_FUNCTION_271_1();
  v5 = OUTLINED_FUNCTION_65_3();
  v7 = v6(v5);
  v8 = OUTLINED_FUNCTION_216_1(v7);
  v9 = *(v1 + v4);
  if ((v8 & 1) == 0)
  {
    v3(0);
    OUTLINED_FUNCTION_693_0();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = v2(v10);
    OUTLINED_FUNCTION_665_0(v11);
  }

  OUTLINED_FUNCTION_9_3();
  *(v9 + 40) = v0;
  OUTLINED_FUNCTION_183_2();
}

uint64_t Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.averageEngagementAgeLast7Days.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_17(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v0 + 40);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F61588()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_168_3(v5);
  v7 = OUTLINED_FUNCTION_520_0(v6);
  v8 = *(v4 + v0);
  if ((v7 & 1) == 0)
  {
    v9 = OUTLINED_FUNCTION_519_0();
    v2(v9);
    OUTLINED_FUNCTION_693_0();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = v1(v10);
    OUTLINED_FUNCTION_529_0(v11);
  }

  OUTLINED_FUNCTION_11_4();
  *(v8 + 40) = v3;
  OUTLINED_FUNCTION_283();

  free(v12);
}