void sub_1B8F019F8(uint64_t *a1)
{
  v1 = *a1;

  Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.contextHints.setter();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.contextHints.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_14_10(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B8F01AC0(uint64_t *a1)
{
  v1 = *a1;

  Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.contextTags.setter();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.contextTags.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_14_10(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B8F01B7C(uint64_t *a1)
{
  OUTLINED_FUNCTION_238(a1);
  v5 = *(v4 + 48);
  if (v6)
  {
    v7 = v3;
    v8 = *(v1 + 56);

    v7(v9);
    v10 = *(v1 + 48);
  }

  else
  {
    v11 = v2;
    v12 = *(v1 + 64);
    v13 = *(v1 + 56);
    v14 = *(v13 + v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v13 + v12);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = *(v1 + 64);
      v18 = *(v1 + 56);
      OUTLINED_FUNCTION_55_3();
      v19 = OUTLINED_FUNCTION_40_0();
      v20 = sub_1B8F08990(v19);
      OUTLINED_FUNCTION_168(v20);
    }

    v21 = *v11;
    OUTLINED_FUNCTION_18();
    v22 = *(v16 + v21);
    *(v16 + v21) = v5;
  }

  free(v1);
}

void sub_1B8F01C44(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.supportFlowID.setter();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.supportFlowID.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_10_12(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B8F01D18()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_58_0(v6);
  if (v8)
  {
    v9 = v7;
    OUTLINED_FUNCTION_191();
    v10 = OUTLINED_FUNCTION_461();
    v9(v10);
    v11 = *(v0 + 56);
  }

  else
  {
    v12 = OUTLINED_FUNCTION_200_2();
    v13 = *(v5 + v1);
    if ((v12 & 1) == 0)
    {
      v14 = *(v0 + 72);
      v15 = *(v0 + 64);
      OUTLINED_FUNCTION_55_3();
      v16 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B8F08990(v16);
      *(v15 + v14) = v13;
    }

    v17 = (v13 + *v4);
    OUTLINED_FUNCTION_211_0();
    v18 = v17[1];
    *v17 = v3;
    v17[1] = v2;
  }

  OUTLINED_FUNCTION_242();

  free(v19);
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.isLlmGeneratedAnswer.getter()
{
  OUTLINED_FUNCTION_30_13();
  v2 = *(v0 + v1);
  v3 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__isLlmGeneratedAnswer;
  OUTLINED_FUNCTION_10_4();
  return *(v2 + v3);
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.isLlmGeneratedAnswer.setter()
{
  v4 = OUTLINED_FUNCTION_214_0();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_55_3();
    v6 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B8F08990(v6);
    *(v2 + v3) = v5;
  }

  v7 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__isLlmGeneratedAnswer;
  result = OUTLINED_FUNCTION_9_3();
  *(v5 + v7) = v0 & 1;
  return result;
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.isLlmGeneratedAnswer.modify()
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  *(OUTLINED_FUNCTION_99(v2) + 72) = v0;
  OUTLINED_FUNCTION_30_13();
  *(v1 + 80) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__isLlmGeneratedAnswer;
  OUTLINED_FUNCTION_68_0();
  *(v1 + 84) = *(v4 + v5);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F01ED8(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 84);
  v5 = *(v3 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v3 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 80);
    v9 = *(v1 + 72);
    OUTLINED_FUNCTION_55_3();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B8F08990(v10);
    OUTLINED_FUNCTION_168(v11);
  }

  v12 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__isLlmGeneratedAnswer;
  OUTLINED_FUNCTION_18();
  *(v7 + v12) = v4;

  free(v1);
}

uint64_t sub_1B8F01F88(void *a1)
{
  OUTLINED_FUNCTION_30_13();
  v4 = (*(v1 + v3) + *a1);
  OUTLINED_FUNCTION_6_2();
  v6 = *v4;
  v5 = v4[1];
  v7 = OUTLINED_FUNCTION_288();
  sub_1B8D91FCC(v7, v8);
  return OUTLINED_FUNCTION_288();
}

void sub_1B8F02024()
{
  OUTLINED_FUNCTION_193_0();
  v4 = v3;
  v5 = v1;
  v6 = OUTLINED_FUNCTION_112();
  v7 = *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult(v6) + 20);
  v8 = *(v1 + v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_55_3();
    v11 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8F08990(v11);
    *(v5 + v7) = v10;
  }

  v12 = (v10 + *v4);
  OUTLINED_FUNCTION_211_0();
  v13 = *v12;
  v14 = v12[1];
  *v12 = v2;
  v12[1] = v0;
  sub_1B8D538A0(v13, v14);
  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.serializedResult.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_10_12(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_41();
  v6 = *v0;
  v7 = v0[1];
  *(v1 + 48) = *v0;
  *(v1 + 56) = v7;
  sub_1B8D91FCC(v6, v7);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F0212C()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_58_0(v6);
  if (v8)
  {
    v9 = v7;
    v10 = *(v0 + 64);
    v11 = OUTLINED_FUNCTION_461();
    sub_1B8D91FCC(v11, v12);
    v13 = OUTLINED_FUNCTION_461();
    v9(v13);
    v14 = *(v0 + 48);
    v15 = *(v0 + 56);
  }

  else
  {
    v16 = OUTLINED_FUNCTION_200_2();
    v17 = *(v5 + v1);
    if ((v16 & 1) == 0)
    {
      v18 = *(v0 + 72);
      v19 = *(v0 + 64);
      OUTLINED_FUNCTION_55_3();
      v20 = OUTLINED_FUNCTION_40_0();
      v17 = sub_1B8F08990(v20);
      *(v19 + v18) = v17;
    }

    v21 = (v17 + *v4);
    OUTLINED_FUNCTION_211_0();
    v14 = *v21;
    v15 = v21[1];
    *v21 = v3;
    v21[1] = v2;
  }

  sub_1B8D538A0(v14, v15);
  OUTLINED_FUNCTION_242();

  free(v22);
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.unknownFields.getter()
{
  OUTLINED_FUNCTION_27();
  v0 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_432();

  return v4(v3);
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.unknownFields.setter()
{
  OUTLINED_FUNCTION_313();
  v0 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v0);
  v2 = *(v1 + 40);
  v3 = OUTLINED_FUNCTION_288();

  return v4(v3);
}

uint64_t sub_1B8F022EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8F1B864();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F02350(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8F18964();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F023B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8F189B8();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F02428(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8F18A0C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F024A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8F18A60();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Color.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Color(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Color.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_197_1(a1);
  v1 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Color(0);
  return OUTLINED_FUNCTION_163_2(v1);
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenText.color.getter()
{
  v1 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  v6 = *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenText(v5) + 28);
  OUTLINED_FUNCTION_100_3();
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Color(0);
  OUTLINED_FUNCTION_199_2();
  OUTLINED_FUNCTION_57(v0);
  if (v7)
  {
    OUTLINED_FUNCTION_202_2();
    result = OUTLINED_FUNCTION_57(v0);
    if (!v7)
    {
      return sub_1B8D9207C(v0, &qword_1EBABE978, &qword_1B96693C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_30();
    OUTLINED_FUNCTION_182();
    return sub_1B8F09548();
  }

  return result;
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenText.color.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenText(v1);
  sub_1B8D9207C(v0 + *(v2 + 28), &qword_1EBABE978, &qword_1B96693C0);
  OUTLINED_FUNCTION_1_30();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F09548();
  OUTLINED_FUNCTION_97_3();
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenText.color.modify()
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
  v10 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Color(v9);
  *(v1 + 16) = v10;
  OUTLINED_FUNCTION_59_1(v10);
  v12 = *(v11 + 64);
  *(v1 + 24) = __swift_coroFrameAllocStub(v12);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenText(v14);
  OUTLINED_FUNCTION_68_4(*(v15 + 28));
  OUTLINED_FUNCTION_16_2();
  if (v16)
  {
    OUTLINED_FUNCTION_201_2();
    OUTLINED_FUNCTION_16_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBABE978, &qword_1B96693C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_30();
    OUTLINED_FUNCTION_461();
    sub_1B8F09548();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenText.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenText(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenText.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = 0;
  v3 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenText(0);
  OUTLINED_FUNCTION_191_2(v3);
  v4 = *(v2 + 28);
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Color(0);
  v5 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenSymbol.color.getter()
{
  v1 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  v6 = *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenSymbol(v5) + 32);
  OUTLINED_FUNCTION_100_3();
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Color(0);
  OUTLINED_FUNCTION_199_2();
  OUTLINED_FUNCTION_57(v0);
  if (v7)
  {
    OUTLINED_FUNCTION_202_2();
    result = OUTLINED_FUNCTION_57(v0);
    if (!v7)
    {
      return sub_1B8D9207C(v0, &qword_1EBABE978, &qword_1B96693C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_30();
    OUTLINED_FUNCTION_182();
    return sub_1B8F09548();
  }

  return result;
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenSymbol.color.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenSymbol(v1);
  sub_1B8D9207C(v0 + *(v2 + 32), &qword_1EBABE978, &qword_1B96693C0);
  OUTLINED_FUNCTION_1_30();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F09548();
  OUTLINED_FUNCTION_97_3();
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenSymbol.color.modify()
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
  v10 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Color(v9);
  *(v1 + 16) = v10;
  OUTLINED_FUNCTION_59_1(v10);
  v12 = *(v11 + 64);
  *(v1 + 24) = __swift_coroFrameAllocStub(v12);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenSymbol(v14);
  OUTLINED_FUNCTION_68_4(*(v15 + 32));
  OUTLINED_FUNCTION_16_2();
  if (v16)
  {
    OUTLINED_FUNCTION_201_2();
    OUTLINED_FUNCTION_16_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBABE978, &qword_1B96693C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_30();
    OUTLINED_FUNCTION_461();
    sub_1B8F09548();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B8F02C10()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67(v6);
  if (v7)
  {
    OUTLINED_FUNCTION_128();
    sub_1B8F09598();
    sub_1B8D9207C(v5 + v4, &qword_1EBABE978, &qword_1B96693C0);
    OUTLINED_FUNCTION_1_30();
    sub_1B8F09548();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v3);
    OUTLINED_FUNCTION_12_14();
    sub_1B8F095E8();
  }

  else
  {
    sub_1B8D9207C(v5 + v4, &qword_1EBABE978, &qword_1B96693C0);
    OUTLINED_FUNCTION_1_30();
    sub_1B8F09548();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v3);
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v14);
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenSymbol.hasColor.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  v7 = *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenSymbol(v6) + 32);
  sub_1B8F1B8B8();
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Color(0);
  v8 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v8, v9, v10);
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = OUTLINED_FUNCTION_182();
  sub_1B8D9207C(v13, v14, &qword_1B96693C0);
  return v12;
}

Swift::Void __swiftcall Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenSymbol.clearColor()()
{
  v1 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenSymbol(0);
  sub_1B8D9207C(v0 + *(v1 + 32), &qword_1EBABE978, &qword_1B96693C0);
  OUTLINED_FUNCTION_97_3();
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenSymbol.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenSymbol(v0) + 28);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenSymbol.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_92_0();
  *(a1 + 32) = 0;
  v2 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenSymbol(0);
  OUTLINED_FUNCTION_101_2(v2);
  v3 = *(v2 + 32);
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Color(0);
  v4 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerToken.text.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_46_3();
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerToken.OneOf_Value(0);
  v8 = OUTLINED_FUNCTION_157_4();
  OUTLINED_FUNCTION_57(v8);
  if (v9)
  {
    sub_1B8D9207C(v1, &qword_1EBAB91D0, &qword_1B964D9B8);
LABEL_6:
    *v0 = 0;
    *(v0 + 8) = 0xE000000000000000;
    *(v0 + 16) = 0;
    v11 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenText(0);
    OUTLINED_FUNCTION_191_2(v11);
    v12 = *(v1 + 28);
    type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Color(0);
    v13 = OUTLINED_FUNCTION_40_3();
    return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  }

  OUTLINED_FUNCTION_543();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_1B8F095E8();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_49_6();
  OUTLINED_FUNCTION_288();
  return sub_1B8F09548();
}

void Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerToken.text.modify()
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
  v10 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenText(v9);
  OUTLINED_FUNCTION_59_1(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_175_2(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_60_3(v15);
  *(v1 + 32) = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerToken.OneOf_Value(0);
  OUTLINED_FUNCTION_16_2();
  if (v16)
  {
    sub_1B8D9207C(v0, &qword_1EBAB91D0, &qword_1B964D9B8);
  }

  else
  {
    OUTLINED_FUNCTION_177_1();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 1)
    {
      OUTLINED_FUNCTION_49_6();
      OUTLINED_FUNCTION_128();
      sub_1B8F09548();
      goto LABEL_8;
    }

    sub_1B8F095E8();
  }

  *v12 = 0;
  *(v12 + 8) = 0xE000000000000000;
  *(v12 + 16) = 0;
  v18 = v12 + *(v10 + 24);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v19 = *(v10 + 28);
  OUTLINED_FUNCTION_97_3();
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
LABEL_8:
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerToken.symbol.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_46_3();
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerToken.OneOf_Value(0);
  v8 = OUTLINED_FUNCTION_157_4();
  OUTLINED_FUNCTION_57(v8);
  if (v9)
  {
    sub_1B8D9207C(v1, &qword_1EBAB91D0, &qword_1B964D9B8);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_48_3();
      OUTLINED_FUNCTION_288();
      return sub_1B8F09548();
    }

    sub_1B8F095E8();
  }

  OUTLINED_FUNCTION_92_0();
  *(v0 + 32) = 0;
  v12 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenSymbol(0);
  OUTLINED_FUNCTION_101_2(v12);
  v13 = *(v12 + 32);
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Color(0);
  v14 = OUTLINED_FUNCTION_40_3();
  return __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
}

uint64_t sub_1B8F03370()
{
  sub_1B8D9207C(v0, &qword_1EBAB91D0, &qword_1B964D9B8);
  OUTLINED_FUNCTION_128();
  sub_1B8F09548();
  v1 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerToken.OneOf_Value(0);
  OUTLINED_FUNCTION_543();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
}

void Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerToken.symbol.modify()
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
  v10 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenSymbol(v9);
  OUTLINED_FUNCTION_59_1(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_175_2(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_60_3(v15);
  *(v1 + 32) = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerToken.OneOf_Value(0);
  OUTLINED_FUNCTION_16_2();
  if (v16)
  {
    sub_1B8D9207C(v0, &qword_1EBAB91D0, &qword_1B964D9B8);
LABEL_7:
    OUTLINED_FUNCTION_132_4();
    *(v12 + 32) = 0;
    v18 = v12 + *(v10 + 28);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v19 = *(v10 + 32);
    OUTLINED_FUNCTION_97_3();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_1B8F095E8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_48_3();
  OUTLINED_FUNCTION_128();
  sub_1B8F09548();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F03594()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_134_3(v5);
  v6 = *v0;
  if (v7)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8F09598();
    sub_1B8D9207C(v6, &qword_1EBAB91D0, &qword_1B964D9B8);
    sub_1B8F09548();
    OUTLINED_FUNCTION_205_0();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v4);
    sub_1B8F095E8();
  }

  else
  {
    sub_1B8D9207C(*v0, &qword_1EBAB91D0, &qword_1B964D9B8);
    sub_1B8F09548();
    OUTLINED_FUNCTION_205_0();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v4);
  }

  free(v3);
  free(v2);
  free(v1);
  OUTLINED_FUNCTION_283();

  free(v14);
}

uint64_t sub_1B8F036B8()
{
  v0 = OUTLINED_FUNCTION_27();
  v2 = *(v1(v0) + 20);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_18_1();

  return v7(v6);
}

uint64_t sub_1B8F03740()
{
  v0 = OUTLINED_FUNCTION_313();
  v2 = *(v1(v0) + 20);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_21_7(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_209();

  return v7(v6);
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerToken.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerToken(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

void static Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerToken.OneOf_Value.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v1 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenSymbol(0);
  v2 = OUTLINED_FUNCTION_183(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_62();
  v5 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenText(0);
  v6 = OUTLINED_FUNCTION_183(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_31_8();
  v9 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerToken.OneOf_Value(0);
  v10 = OUTLINED_FUNCTION_59_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_66();
  MEMORY[0x1EEE9AC00](v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB91C8, &qword_1B964D9B0);
  OUTLINED_FUNCTION_183(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_139();
  v19 = *(v18 + 56);
  sub_1B8F09598();
  sub_1B8F09598();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_107_2();
    sub_1B8F09598();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_48_3();
      sub_1B8F09548();
      OUTLINED_FUNCTION_128();
      static Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenSymbol.== infix(_:_:)();
      sub_1B8F095E8();
      OUTLINED_FUNCTION_461();
LABEL_7:
      sub_1B8F095E8();
      OUTLINED_FUNCTION_47_3();
      sub_1B8F095E8();
      goto LABEL_8;
    }
  }

  else
  {
    OUTLINED_FUNCTION_107_2();
    sub_1B8F09598();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      OUTLINED_FUNCTION_49_6();
      sub_1B8F09548();
      OUTLINED_FUNCTION_246();
      static Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenText.== infix(_:_:)();
      sub_1B8F095E8();
      goto LABEL_7;
    }
  }

  sub_1B8F095E8();
  sub_1B8D9207C(v0, &qword_1EBAB91C8, &qword_1B964D9B0);
LABEL_8:
  OUTLINED_FUNCTION_283();
}

void static Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenText.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v5 = OUTLINED_FUNCTION_112();
  v6 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Color(v5);
  v7 = OUTLINED_FUNCTION_59_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_208();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABE978, &qword_1B96693C0);
  OUTLINED_FUNCTION_183(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_137();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABE980, &qword_1B96693C8);
  OUTLINED_FUNCTION_59_1(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_88();
  v18 = *v1 == *v0 && *(v1 + 8) == *(v0 + 8);
  if (!v18 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_28;
  }

  v34 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenText(0);
  v19 = *(v34 + 28);
  v20 = *(v14 + 48);
  OUTLINED_FUNCTION_85_1();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_85_1();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_37_0(v2);
  if (v18)
  {
    OUTLINED_FUNCTION_37_0(v2 + v20);
    if (v18)
    {
      sub_1B8D9207C(v2, &qword_1EBABE978, &qword_1B96693C0);
      goto LABEL_11;
    }

LABEL_16:
    v26 = &qword_1EBABE980;
    v27 = &qword_1B96693C8;
LABEL_27:
    sub_1B8D9207C(v2, v26, v27);
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_1_0();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_37_0(v2 + v20);
  if (v25)
  {
    OUTLINED_FUNCTION_12_14();
    sub_1B8F095E8();
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_1_30();
  sub_1B8F09548();
  v28 = *v4;
  v29 = *v3;
  if (*(v3 + 8) == 1)
  {
    if (v29)
    {
      if (v29 == 1)
      {
        if (v28 != 1)
        {
          goto LABEL_26;
        }
      }

      else if (v28 != 2)
      {
        goto LABEL_26;
      }

      goto LABEL_23;
    }

    if (v28)
    {
LABEL_26:
      OUTLINED_FUNCTION_119_1();
      sub_1B8F095E8();
      sub_1B8F095E8();
      v26 = &qword_1EBABE978;
      v27 = &qword_1B96693C0;
      goto LABEL_27;
    }
  }

  else if (v28 != v29)
  {
    goto LABEL_26;
  }

LABEL_23:
  v30 = *(v6 + 20);
  v31 = sub_1B964C2B0();
  OUTLINED_FUNCTION_0_35();
  sub_1B8CD2378(v32, v33);
  OUTLINED_FUNCTION_198_0();
  OUTLINED_FUNCTION_111_3();
  sub_1B8F095E8();
  OUTLINED_FUNCTION_207_2();
  sub_1B8D9207C(v2, &qword_1EBABE978, &qword_1B96693C0);
  if ((v31 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_11:
  if (*(v1 + 16) != *(v0 + 16))
  {
LABEL_28:
    v24 = 0;
    goto LABEL_29;
  }

  v21 = *(v34 + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_35();
  sub_1B8CD2378(v22, v23);
  v24 = OUTLINED_FUNCTION_199_0();
LABEL_29:
  OUTLINED_FUNCTION_264(v24);
  OUTLINED_FUNCTION_283();
}

void static Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenSymbol.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v5 = OUTLINED_FUNCTION_112();
  v6 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Color(v5);
  v7 = OUTLINED_FUNCTION_59_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_208();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABE978, &qword_1B96693C0);
  OUTLINED_FUNCTION_183(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_137();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABE980, &qword_1B96693C8);
  OUTLINED_FUNCTION_59_1(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_88();
  v18 = *v1 == *v0 && *(v1 + 8) == *(v0 + 8);
  if (!v18 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_23;
  }

  v19 = *(v1 + 16) == *(v0 + 16) && *(v1 + 24) == *(v0 + 24);
  if (!v19 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_23;
  }

  v34 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenSymbol(0);
  v20 = *(v34 + 32);
  v21 = *(v14 + 48);
  OUTLINED_FUNCTION_85_1();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_85_1();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_37_0(v2);
  if (v18)
  {
    OUTLINED_FUNCTION_37_0(v2 + v21);
    if (v18)
    {
      sub_1B8D9207C(v2, &qword_1EBABE978, &qword_1B96693C0);
      goto LABEL_16;
    }

    goto LABEL_21;
  }

  OUTLINED_FUNCTION_1_0();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_37_0(v2 + v21);
  if (v26)
  {
    OUTLINED_FUNCTION_12_14();
    sub_1B8F095E8();
LABEL_21:
    v27 = &qword_1EBABE980;
    v28 = &qword_1B96693C8;
LABEL_22:
    sub_1B8D9207C(v2, v27, v28);
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_1_30();
  sub_1B8F09548();
  v29 = *(v3 + 8);
  if (!sub_1B8D92198(*v4, *(v4 + 8), *v3))
  {
    OUTLINED_FUNCTION_119_1();
    sub_1B8F095E8();
    sub_1B8F095E8();
    v27 = &qword_1EBABE978;
    v28 = &qword_1B96693C0;
    goto LABEL_22;
  }

  v30 = *(v6 + 20);
  v31 = sub_1B964C2B0();
  OUTLINED_FUNCTION_0_35();
  sub_1B8CD2378(v32, v33);
  OUTLINED_FUNCTION_198_0();
  OUTLINED_FUNCTION_111_3();
  sub_1B8F095E8();
  OUTLINED_FUNCTION_207_2();
  sub_1B8D9207C(v2, &qword_1EBABE978, &qword_1B96693C0);
  if ((v31 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_16:
  if (*(v1 + 32) != *(v0 + 32))
  {
LABEL_23:
    v25 = 0;
    goto LABEL_24;
  }

  v22 = *(v34 + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_35();
  sub_1B8CD2378(v23, v24);
  v25 = OUTLINED_FUNCTION_199_0();
LABEL_24:
  OUTLINED_FUNCTION_264(v25);
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerStep.step.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerStep.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerStep(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Answer.summary.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Answer.intro.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

void Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Answer.listStyle.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Answer.listStyle.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 40) = *result;
  *(v1 + 48) = v2;
  return result;
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Answer.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Answer(v0) + 40);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Answer.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Answer(v0) + 40);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_21_7(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Answer.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Answer(v0) + 40);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionUrl.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionUrl(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionUrl.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  v1 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionUrl(0);
  return OUTLINED_FUNCTION_163_2(v1);
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionIntent.bundleID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionIntent.bundleID.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionIntent.parameters.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_1B8F045B4()
{
  v0 = OUTLINED_FUNCTION_27();
  v2 = *(v1(v0) + 28);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_18_1();

  return v7(v6);
}

uint64_t sub_1B8F0463C()
{
  v0 = OUTLINED_FUNCTION_313();
  v2 = *(v1(v0) + 28);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_21_7(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_209();

  return v7(v6);
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionIntent.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionIntent(v0) + 28);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionIntent.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_92_0();
  *(a1 + 32) = MEMORY[0x1E69E7CC0];
  v2 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionIntent(0);
  return OUTLINED_FUNCTION_101_2(v2);
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action.value.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_212_1(v0);
  return sub_1B8F1B8B8();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action.value.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  OUTLINED_FUNCTION_212_1(v0);
  return sub_1B8F188B0();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action.value.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  OUTLINED_FUNCTION_212_1(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action.url.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_212_1(v7);
  OUTLINED_FUNCTION_100_3();
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action.OneOf_Value(0);
  OUTLINED_FUNCTION_57(v1);
  if (v8)
  {
    sub_1B8D9207C(v1, &qword_1EBAB91F0, &qword_1B96693D0);
LABEL_6:
    *a1 = 0;
    a1[1] = 0xE000000000000000;
    v10 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionUrl(0);
    return OUTLINED_FUNCTION_163_2(v10);
  }

  OUTLINED_FUNCTION_461();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    OUTLINED_FUNCTION_3_20();
    sub_1B8F095E8();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_51_5();
  OUTLINED_FUNCTION_182();
  return sub_1B8F09548();
}

void Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action.url.modify()
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
  v10 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionUrl(v9);
  OUTLINED_FUNCTION_59_1(v10);
  v12 = *(v11 + 64);
  v1[2] = __swift_coroFrameAllocStub(v12);
  v13 = __swift_coroFrameAllocStub(v12);
  v1[3] = v13;
  OUTLINED_FUNCTION_212_1(0);
  OUTLINED_FUNCTION_68_4(v14);
  v1[4] = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action.OneOf_Value(0);
  OUTLINED_FUNCTION_37_0(v0);
  if (v15)
  {
    sub_1B8D9207C(v0, &qword_1EBAB91F0, &qword_1B96693D0);
  }

  else
  {
    OUTLINED_FUNCTION_128();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 1)
    {
      OUTLINED_FUNCTION_51_5();
      OUTLINED_FUNCTION_177_1();
      sub_1B8F09548();
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_3_20();
    sub_1B8F095E8();
  }

  *v13 = 0;
  v13[1] = 0xE000000000000000;
  v17 = v13 + *(v10 + 20);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action.intent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_212_1(v7);
  OUTLINED_FUNCTION_100_3();
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action.OneOf_Value(0);
  OUTLINED_FUNCTION_57(v1);
  if (v8)
  {
    sub_1B8D9207C(v1, &qword_1EBAB91F0, &qword_1B96693D0);
  }

  else
  {
    OUTLINED_FUNCTION_461();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_50_5();
      OUTLINED_FUNCTION_182();
      return sub_1B8F09548();
    }

    OUTLINED_FUNCTION_3_20();
    sub_1B8F095E8();
  }

  OUTLINED_FUNCTION_92_0();
  *(a1 + 32) = MEMORY[0x1E69E7CC0];
  v11 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionIntent(0);
  return OUTLINED_FUNCTION_101_2(v11);
}

uint64_t sub_1B8F04BA8()
{
  v1 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action(0);
  sub_1B8D9207C(v0 + *(v1 + 20), &qword_1EBAB91F0, &qword_1B96693D0);
  sub_1B8F09548();
  v2 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action.OneOf_Value(0);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v2);
}

void Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action.intent.modify()
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
  v10 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionIntent(v9);
  OUTLINED_FUNCTION_59_1(v10);
  v12 = *(v11 + 64);
  v1[2] = __swift_coroFrameAllocStub(v12);
  v13 = __swift_coroFrameAllocStub(v12);
  v1[3] = v13;
  OUTLINED_FUNCTION_212_1(0);
  OUTLINED_FUNCTION_68_4(v14);
  v1[4] = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action.OneOf_Value(0);
  OUTLINED_FUNCTION_37_0(v0);
  if (v15)
  {
    sub_1B8D9207C(v0, &qword_1EBAB91F0, &qword_1B96693D0);
LABEL_7:
    *v13 = 0;
    v13[1] = 0xE000000000000000;
    v13[2] = 0;
    v13[3] = 0xE000000000000000;
    v13[4] = MEMORY[0x1E69E7CC0];
    v17 = v13 + *(v10 + 28);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_128();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    OUTLINED_FUNCTION_3_20();
    sub_1B8F095E8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_50_5();
  OUTLINED_FUNCTION_177_1();
  sub_1B8F09548();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F04DEC()
{
  OUTLINED_FUNCTION_284();
  v1 = (*v0)[3];
  v2 = (*v0)[4];
  v3 = *(*v0 + 10);
  v4 = (*v0)[1];
  v5 = (*v0)[2];
  v6 = **v0;
  if (v7)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8F09598();
    sub_1B8D9207C(v6 + v3, &qword_1EBAB91F0, &qword_1B96693D0);
    sub_1B8F09548();
    OUTLINED_FUNCTION_205_0();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v2);
    sub_1B8F095E8();
  }

  else
  {
    sub_1B8D9207C(v6 + v3, &qword_1EBAB91F0, &qword_1B96693D0);
    sub_1B8F09548();
    OUTLINED_FUNCTION_205_0();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v2);
  }

  free(v1);
  free(v5);
  free(v4);
  OUTLINED_FUNCTION_283();

  free(v14);
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action.id.getter()
{
  v1 = (v0 + *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action.id.setter()
{
  v3 = OUTLINED_FUNCTION_112();
  v4 = (v1 + *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action(v3) + 24));
  v5 = v4[1];

  *v4 = v2;
  v4[1] = v0;
  return result;
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action.id.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action(v0) + 28);
  return OUTLINED_FUNCTION_25();
}

void static Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action.OneOf_Value.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v34 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionIntent(0);
  v3 = OUTLINED_FUNCTION_59_1(v34);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_31_8();
  v35 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionUrl(0);
  v6 = OUTLINED_FUNCTION_59_1(v35);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_208();
  v9 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action.OneOf_Value(0);
  v10 = OUTLINED_FUNCTION_59_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_66();
  v15 = (v13 - v14);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v34 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EBABE988, &qword_1B96693D8);
  OUTLINED_FUNCTION_183(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_139();
  v24 = *(v23 + 56);
  sub_1B8F09598();
  sub_1B8F09598();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_110_2();
    sub_1B8F09598();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_50_5();
      sub_1B8F09548();
      v25 = *v15 == *v1 && v15[1] == v1[1];
      if (v25 || (sub_1B964C9F0() & 1) != 0)
      {
        v26 = v15[2] == v1[2] && v15[3] == v1[3];
        if (v26 || (sub_1B964C9F0()) && (sub_1B8D6123C(v15[4], v1[4]))
        {
          v27 = *(v34 + 28);
          sub_1B964C2B0();
          OUTLINED_FUNCTION_0_35();
          sub_1B8CD2378(v28, v29);
          sub_1B964C850();
        }
      }

      OUTLINED_FUNCTION_121_0();
      sub_1B8F095E8();
LABEL_26:
      sub_1B8F095E8();
      OUTLINED_FUNCTION_3_20();
      sub_1B8F095E8();
      goto LABEL_27;
    }
  }

  else
  {
    OUTLINED_FUNCTION_110_2();
    sub_1B8F09598();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      OUTLINED_FUNCTION_51_5();
      sub_1B8F09548();
      v30 = *v18 == *v2 && v18[1] == v2[1];
      if (v30 || (sub_1B964C9F0() & 1) != 0)
      {
        v31 = *(v35 + 20);
        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_35();
        sub_1B8CD2378(v32, v33);
        sub_1B964C850();
      }

      OUTLINED_FUNCTION_120_2();
      sub_1B8F095E8();
      goto LABEL_26;
    }
  }

  sub_1B8F095E8();
  sub_1B8D9207C(v0, &dword_1EBABE988, &qword_1B96693D8);
LABEL_27:
  OUTLINED_FUNCTION_283();
}

uint64_t static Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionUrl.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v4 = v4 && v2 == v3;
  if (!v4 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionUrl(0);
  OUTLINED_FUNCTION_156_4(v5);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_35();
  sub_1B8CD2378(v6, v7);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t static Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionIntent.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v9 = v6 && v7 == v8;
  if (!v9 && (sub_1B964C9F0() & 1) == 0 || (sub_1B8D6123C(*(v3 + 32), *(v2 + 32)) & 1) == 0)
  {
    return 0;
  }

  v10 = *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionIntent(0) + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_35();
  sub_1B8CD2378(v11, v12);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v2 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action(0);
  v3 = OUTLINED_FUNCTION_156_4(v2);
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action.OneOf_Value(v3);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  v8 = (a1 + *(v2 + 24));
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  v9 = a1 + *(v2 + 28);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.SiriSuggestion.suggestionType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.SiriSuggestion.suggestionType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.SiriSuggestion.appIntent.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.SiriSuggestion.appIntent.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.SiriSuggestion.appBundle.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.SiriSuggestion.appBundle.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.SiriSuggestion.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.SiriSuggestion(v0) + 32);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.SiriSuggestion.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.SiriSuggestion(v0) + 32);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_21_7(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.SiriSuggestion.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.SiriSuggestion(v0) + 32);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.SiriSuggestion.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 32) = 0;
  *(v1 + 40) = v2;
  *(v1 + 48) = 0;
  *(v1 + 56) = v2;
  v3 = v1 + *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.SiriSuggestion(0) + 32);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ContextTags.tagName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ContextTags.tagName.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ContextTags.values.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1B8F05934()
{
  v0 = OUTLINED_FUNCTION_27();
  v2 = *(v1(v0) + 24);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_18_1();

  return v7(v6);
}

uint64_t sub_1B8F059BC()
{
  v0 = OUTLINED_FUNCTION_313();
  v2 = *(v1(v0) + 24);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_21_7(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_209();

  return v7(v6);
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ContextTags.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ContextTags(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ContextTags.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  v2 = v1 + *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ContextTags(0) + 24);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Source.url.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Source.url.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 88);

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Source.previewSummary.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Source.previewSummary.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 104);

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Source.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Source(v0) + 44);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Source.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Source(v0) + 44);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_21_7(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Source.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Source(v0) + 44);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Source.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_163_3(v2);
  a1[10] = 0;
  a1[11] = v3;
  a1[12] = 0;
  a1[13] = v3;
  v4 = a1 + *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Source(0) + 44);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionTopic.userGuideName.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionTopic.userGuideName.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 72);

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionTopic.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionTopic(v0) + 36);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionTopic.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionTopic(v0) + 36);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_21_7(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionTopic.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionTopic(v0) + 36);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionTopic.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_163_3(v2);
  v3 = a1 + *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionTopic(0) + 36);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionArticle.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionArticle(v0) + 28);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionGuide.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionGuide(v0) + 28);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B8F06158@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_92_0();
  *(a1 + 32) = 0;
  *(a1 + 40) = v2;
  v4 = v3(0);
  return OUTLINED_FUNCTION_101_2(v4);
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution.topic.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_46_3();
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution.OneOf_Value(0);
  v8 = OUTLINED_FUNCTION_157_4();
  OUTLINED_FUNCTION_57(v8);
  if (v9)
  {
    sub_1B8D9207C(v1, &qword_1EBAB91E0, &qword_1B96693E0);
LABEL_6:
    OUTLINED_FUNCTION_92_0();
    OUTLINED_FUNCTION_163_3(v11);
    v12 = v0 + *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionTopic(0) + 36);
    return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  }

  OUTLINED_FUNCTION_543();
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1B8F095E8();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_8_18();
  OUTLINED_FUNCTION_288();
  return sub_1B8F09548();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution.topic.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB91E0, &qword_1B96693E0);
  OUTLINED_FUNCTION_8_18();
  OUTLINED_FUNCTION_432();
  sub_1B8F09548();
  v1 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution.OneOf_Value(0);
  OUTLINED_FUNCTION_288();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
}

void Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution.topic.modify()
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
  v10 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionTopic(v9);
  OUTLINED_FUNCTION_59_1(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_175_2(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_60_3(v15);
  *(v1 + 32) = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution.OneOf_Value(0);
  OUTLINED_FUNCTION_16_2();
  if (v16)
  {
    sub_1B8D9207C(v0, &qword_1EBAB91E0, &qword_1B96693E0);
  }

  else
  {
    OUTLINED_FUNCTION_177_1();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_8_18();
      OUTLINED_FUNCTION_128();
      sub_1B8F09548();
      goto LABEL_7;
    }

    sub_1B8F095E8();
  }

  OUTLINED_FUNCTION_132_4();
  v12[4] = 0;
  v12[5] = v18;
  v12[6] = 0;
  v12[7] = v18;
  v12[8] = 0;
  v12[9] = v18;
  v19 = v12 + *(v10 + 36);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
LABEL_7:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F064C8(uint64_t a1)
{
  OUTLINED_FUNCTION_134_3(a1);
  v6 = *v1;
  if (v7)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8F09598();
    sub_1B8D9207C(v6, &qword_1EBAB91E0, &qword_1B96693E0);
    OUTLINED_FUNCTION_8_18();
    sub_1B8F09548();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v5);
    OUTLINED_FUNCTION_115_3();
    sub_1B8F095E8();
  }

  else
  {
    sub_1B8D9207C(*v1, &qword_1EBAB91E0, &qword_1B96693E0);
    OUTLINED_FUNCTION_8_18();
    OUTLINED_FUNCTION_1_0();
    sub_1B8F09548();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v5);
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution.article.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_46_3();
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution.OneOf_Value(0);
  v8 = OUTLINED_FUNCTION_157_4();
  OUTLINED_FUNCTION_57(v8);
  if (v9)
  {
    sub_1B8D9207C(v1, &qword_1EBAB91E0, &qword_1B96693E0);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_7_18();
      OUTLINED_FUNCTION_288();
      return sub_1B8F09548();
    }

    sub_1B8F095E8();
  }

  OUTLINED_FUNCTION_92_0();
  *(v0 + 32) = 0;
  *(v0 + 40) = v12;
  v13 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionArticle(0);
  return OUTLINED_FUNCTION_101_2(v13);
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution.article.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB91E0, &qword_1B96693E0);
  OUTLINED_FUNCTION_7_18();
  OUTLINED_FUNCTION_432();
  sub_1B8F09548();
  v1 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution.OneOf_Value(0);
  OUTLINED_FUNCTION_288();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
}

void Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution.article.modify()
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
  v10 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionArticle(v9);
  OUTLINED_FUNCTION_59_1(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_175_2(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_60_3(v15);
  *(v1 + 32) = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution.OneOf_Value(0);
  OUTLINED_FUNCTION_16_2();
  if (v16)
  {
    sub_1B8D9207C(v0, &qword_1EBAB91E0, &qword_1B96693E0);
LABEL_7:
    OUTLINED_FUNCTION_132_4();
    *(v12 + 32) = 0;
    *(v12 + 40) = v18;
    v19 = v12 + *(v10 + 28);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_1B8F095E8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_18();
  OUTLINED_FUNCTION_128();
  sub_1B8F09548();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F0688C(uint64_t a1)
{
  OUTLINED_FUNCTION_134_3(a1);
  v6 = *v1;
  if (v7)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8F09598();
    sub_1B8D9207C(v6, &qword_1EBAB91E0, &qword_1B96693E0);
    OUTLINED_FUNCTION_7_18();
    sub_1B8F09548();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v5);
    OUTLINED_FUNCTION_114_5();
    sub_1B8F095E8();
  }

  else
  {
    sub_1B8D9207C(*v1, &qword_1EBAB91E0, &qword_1B96693E0);
    OUTLINED_FUNCTION_7_18();
    OUTLINED_FUNCTION_1_0();
    sub_1B8F09548();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v5);
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution.guide.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_46_3();
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution.OneOf_Value(0);
  v8 = OUTLINED_FUNCTION_157_4();
  OUTLINED_FUNCTION_57(v8);
  if (v9)
  {
    sub_1B8D9207C(v1, &qword_1EBAB91E0, &qword_1B96693E0);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      OUTLINED_FUNCTION_6_9();
      OUTLINED_FUNCTION_288();
      return sub_1B8F09548();
    }

    sub_1B8F095E8();
  }

  OUTLINED_FUNCTION_92_0();
  *(v0 + 32) = 0;
  *(v0 + 40) = v12;
  v13 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionGuide(0);
  return OUTLINED_FUNCTION_101_2(v13);
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution.guide.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB91E0, &qword_1B96693E0);
  OUTLINED_FUNCTION_6_9();
  OUTLINED_FUNCTION_432();
  sub_1B8F09548();
  v1 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution.OneOf_Value(0);
  OUTLINED_FUNCTION_288();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
}

void Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution.guide.modify()
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
  v10 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionGuide(v9);
  OUTLINED_FUNCTION_59_1(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_175_2(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_60_3(v15);
  *(v1 + 32) = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution.OneOf_Value(0);
  OUTLINED_FUNCTION_16_2();
  if (v16)
  {
    sub_1B8D9207C(v0, &qword_1EBAB91E0, &qword_1B96693E0);
LABEL_7:
    OUTLINED_FUNCTION_132_4();
    *(v12 + 32) = 0;
    *(v12 + 40) = v18;
    v19 = v12 + *(v10 + 28);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    sub_1B8F095E8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_9();
  OUTLINED_FUNCTION_128();
  sub_1B8F09548();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F06C50(uint64_t a1)
{
  OUTLINED_FUNCTION_134_3(a1);
  v6 = *v1;
  if (v7)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8F09598();
    sub_1B8D9207C(v6, &qword_1EBAB91E0, &qword_1B96693E0);
    OUTLINED_FUNCTION_6_9();
    sub_1B8F09548();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v5);
    OUTLINED_FUNCTION_112_3();
    sub_1B8F095E8();
  }

  else
  {
    sub_1B8D9207C(*v1, &qword_1EBAB91E0, &qword_1B96693E0);
    OUTLINED_FUNCTION_6_9();
    OUTLINED_FUNCTION_1_0();
    sub_1B8F09548();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v5);
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

void static Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution.OneOf_Value.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v39[1] = v3;
  v4 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionGuide(0);
  v5 = OUTLINED_FUNCTION_183(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_62();
  v39[0] = v9 - v8;
  v10 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionArticle(0);
  v11 = OUTLINED_FUNCTION_183(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_31_8();
  v14 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionTopic(0);
  v15 = OUTLINED_FUNCTION_183(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_208();
  v18 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution.OneOf_Value(0);
  v19 = OUTLINED_FUNCTION_59_1(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_66();
  v24 = (v22 - v23);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = (v39 - v27);
  MEMORY[0x1EEE9AC00](v26);
  v30 = (v39 - v29);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABE990, &qword_1B96693E8);
  OUTLINED_FUNCTION_183(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_139();
  v36 = *(v35 + 56);
  sub_1B8F09598();
  sub_1B8F09598();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_41_8();
      sub_1B8F09598();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        OUTLINED_FUNCTION_7_18();
        sub_1B8F09548();
        static Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionArticle.== infix(_:_:)(v28, v1);
        sub_1B8F095E8();
LABEL_13:
        sub_1B8F095E8();
        OUTLINED_FUNCTION_53_4();
        sub_1B8F095E8();
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_114_5();
    }

    else
    {
      OUTLINED_FUNCTION_41_8();
      sub_1B8F09598();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        OUTLINED_FUNCTION_6_9();
        v38 = v39[0];
        sub_1B8F09548();
        static Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionGuide.== infix(_:_:)(v24, v38);
        sub_1B8F095E8();
        goto LABEL_13;
      }

      OUTLINED_FUNCTION_112_3();
    }
  }

  else
  {
    OUTLINED_FUNCTION_41_8();
    sub_1B8F09598();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_8_18();
      sub_1B8F09548();
      static Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionTopic.== infix(_:_:)(v30, v2);
      sub_1B8F095E8();
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_115_3();
  }

  sub_1B8F095E8();
  sub_1B8D9207C(v0, &qword_1EBABE990, &qword_1B96693E8);
LABEL_14:
  OUTLINED_FUNCTION_283();
}

uint64_t static Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionTopic.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v9 = v6 && v7 == v8;
  if (!v9 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_40_5();
  v12 = v6 && v10 == v11;
  if (!v12 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_167_4();
  v15 = v6 && v13 == v14;
  if (!v15 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v16 = *(v3 + 64) == *(v2 + 64) && *(v3 + 72) == *(v2 + 72);
  if (!v16 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v17 = *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionTopic(0) + 36);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_35();
  sub_1B8CD2378(v18, v19);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8F07268(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v9 = v6 && v7 == v8;
  if (!v9 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_40_5();
  v12 = v6 && v10 == v11;
  if (!v12 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v13 = *(a3(0) + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_35();
  sub_1B8CD2378(v14, v15);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8F07358@<X0>(void (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  a1(0);
  OUTLINED_FUNCTION_231();
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  v9 = a3 + *(a2(0) + 20);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.FileAsset.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.FileAsset(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.FileAsset.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_92_0();
  v2 = a1 + *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.FileAsset(0) + 24);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Asset.assetType.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Asset.assetType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Asset.fileAsset.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Asset(v7) + 28);
  OUTLINED_FUNCTION_100_3();
  v9 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.FileAsset(0);
  OUTLINED_FUNCTION_57(v1);
  if (v10)
  {
    OUTLINED_FUNCTION_92_0();
    v11 = a1 + *(v9 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_57(v1);
    if (!v10)
    {
      return sub_1B8D9207C(v1, &qword_1EBABE998, &unk_1B96693F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_14();
    OUTLINED_FUNCTION_182();
    return sub_1B8F09548();
  }

  return result;
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Asset.fileAsset.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Asset(v1);
  sub_1B8D9207C(v0 + *(v2 + 28), &qword_1EBABE998, &unk_1B96693F0);
  OUTLINED_FUNCTION_5_14();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F09548();
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.FileAsset(0);
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Asset.fileAsset.modify()
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
  v10 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.FileAsset(v9);
  *(v1 + 16) = v10;
  OUTLINED_FUNCTION_59_1(v10);
  v12 = *(v11 + 64);
  *(v1 + 24) = __swift_coroFrameAllocStub(v12);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Asset(v14);
  OUTLINED_FUNCTION_68_4(*(v15 + 28));
  OUTLINED_FUNCTION_16_2();
  if (v16)
  {
    *v12 = 0;
    v12[1] = 0xE000000000000000;
    v12[2] = 0;
    v12[3] = 0xE000000000000000;
    v17 = v12 + *(v10 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_16_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBABE998, &unk_1B96693F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_14();
    OUTLINED_FUNCTION_461();
    sub_1B8F09548();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B8F07758()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67(v6);
  if (v7)
  {
    OUTLINED_FUNCTION_128();
    sub_1B8F09598();
    sub_1B8D9207C(v5 + v4, &qword_1EBABE998, &unk_1B96693F0);
    OUTLINED_FUNCTION_5_14();
    sub_1B8F09548();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v3);
    OUTLINED_FUNCTION_52_3();
    sub_1B8F095E8();
  }

  else
  {
    sub_1B8D9207C(v5 + v4, &qword_1EBABE998, &unk_1B96693F0);
    OUTLINED_FUNCTION_5_14();
    sub_1B8F09548();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v3);
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v14);
}

uint64_t sub_1B8F07890()
{
  OUTLINED_FUNCTION_111_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_137();
  v9 = *(v1(0) + 28);
  OUTLINED_FUNCTION_24_3();
  sub_1B8F1B8B8();
  v10 = v0(0);
  OUTLINED_FUNCTION_178(v2, 1, v10);
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  OUTLINED_FUNCTION_12();
  sub_1B8D9207C(v13, v14, v15);
  return v12;
}

uint64_t sub_1B8F07980()
{
  OUTLINED_FUNCTION_111_0();
  v5 = v4(0);
  sub_1B8D9207C(v1 + *(v5 + 28), v3, v2);
  v0(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Asset.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Asset(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.init()@<X0>(uint64_t a1@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v2 = *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult(0) + 20);
  if (qword_1ED9CDEB0 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_1ED9CDEB8;
}

uint64_t static Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.TemplateType.allCases.modify()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t sub_1B8F07B78@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.TemplateType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t static Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ColorName.allCases.modify()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t sub_1B8F07C30@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ColorName.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t static Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ListStyle.allCases.modify()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t sub_1B8F07CE8@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ListStyle.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t static Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.SuggestionType.allCases.modify()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t sub_1B8F07DA0@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.SuggestionType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t static Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AssetType.allCases.modify()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t sub_1B8F07E58@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AssetType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResults.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResults(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B8F07F28@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  v2 = a1(0);
  return OUTLINED_FUNCTION_163_2(v2);
}

uint64_t sub_1B8F07F84()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB5858);
  __swift_project_value_buffer(v0, qword_1EBAB5858);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_1B9667720;
  v4 = v61 + v3;
  v5 = v61 + v3 + v1[14];
  *(v61 + v3) = 1;
  *v5 = "id";
  *(v5 + 8) = 2;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "cluster_id";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v62 = *MEMORY[0x1E69AADE8];
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "template_type";
  *(v11 + 1) = 13;
  v11[16] = 2;
  *(v11 + 3) = "template";
  *(v11 + 4) = 8;
  v11[40] = 2;
  v12 = *MEMORY[0x1E69AADD8];
  v8();
  v13 = (v4 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "question";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v8();
  v15 = (v4 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "answer";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v8();
  v17 = (v4 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "context";
  *(v18 + 1) = 7;
  v18[16] = 2;
  v8();
  v19 = v1[14];
  v20 = (v4 + 6 * v2);
  *v20 = 7;
  v21 = v20 + v19;
  *v21 = "language";
  *(v21 + 1) = 8;
  v21[16] = 2;
  *(v21 + 3) = "lang";
  *(v21 + 4) = 4;
  v21[40] = 2;
  v8();
  v22 = (v4 + 7 * v2);
  v23 = v22 + v1[14];
  *v22 = 8;
  *v23 = "platform";
  *(v23 + 1) = 8;
  v23[16] = 2;
  v8();
  v24 = (v4 + 8 * v2);
  v25 = v24 + v1[14];
  *v24 = 9;
  *v25 = "platform_version";
  *(v25 + 1) = 16;
  v25[16] = 2;
  v8();
  v26 = (v4 + 9 * v2);
  v27 = v26 + v1[14];
  *v26 = 10;
  *v27 = "actions";
  *(v27 + 1) = 7;
  v27[16] = 2;
  v8();
  v28 = (v4 + 10 * v2);
  v29 = v28 + v1[14];
  *v28 = 11;
  *v29 = "sources";
  *(v29 + 1) = 7;
  v29[16] = 2;
  v8();
  v30 = (v4 + 11 * v2);
  v31 = v30 + v1[14];
  *v30 = 12;
  *v31 = "tip_id";
  *(v31 + 1) = 6;
  v31[16] = 2;
  v8();
  v32 = (v4 + 12 * v2);
  v33 = v32 + v1[14];
  *v32 = 13;
  *v33 = "score";
  *(v33 + 1) = 5;
  v33[16] = 2;
  v8();
  v34 = (v4 + 13 * v2);
  v35 = v34 + v1[14];
  *v34 = 14;
  *v35 = "asset";
  *(v35 + 1) = 5;
  v35[16] = 2;
  v8();
  v36 = (v4 + 14 * v2);
  v37 = v36 + v1[14];
  *v36 = 15;
  *v37 = "attributions";
  *(v37 + 1) = 12;
  v37[16] = 2;
  v8();
  v38 = (v4 + 15 * v2);
  v39 = v38 + v1[14];
  *v38 = 16;
  *v39 = "disclaimer";
  *(v39 + 1) = 10;
  v39[16] = 2;
  v8();
  v40 = (v4 + 16 * v2);
  v41 = v40 + v1[14];
  *v40 = 17;
  *v41 = "asset_base_url";
  *(v41 + 1) = 14;
  v41[16] = 2;
  v8();
  v42 = (v4 + 17 * v2);
  v43 = v42 + v1[14];
  *v42 = 18;
  *v43 = "device_families";
  *(v43 + 1) = 15;
  v43[16] = 2;
  v8();
  v44 = (v4 + 18 * v2);
  v45 = v44 + v1[14];
  *v44 = 19;
  *v45 = "tips_collection_id";
  *(v45 + 1) = 18;
  v45[16] = 2;
  v8();
  v46 = (v4 + 19 * v2);
  v47 = v46 + v1[14];
  *v46 = 20;
  *v47 = "summarized_answer";
  *(v47 + 1) = 17;
  v47[16] = 2;
  v8();
  v48 = (v4 + 20 * v2);
  v49 = v48 + v1[14];
  *v48 = 21;
  *v49 = "siri_suggestions";
  *(v49 + 1) = 16;
  v49[16] = 2;
  v8();
  v50 = (v4 + 21 * v2);
  v51 = v50 + v1[14];
  *v50 = 22;
  *v51 = "context_hints";
  *(v51 + 1) = 13;
  v51[16] = 2;
  v8();
  v52 = (v4 + 22 * v2);
  v53 = v52 + v1[14];
  *v52 = 23;
  *v53 = "context_tags";
  *(v53 + 1) = 12;
  v53[16] = 2;
  v8();
  v54 = (v4 + 23 * v2);
  v55 = v54 + v1[14];
  *v54 = 24;
  *v55 = "support_flow_id";
  *(v55 + 1) = 15;
  v55[16] = 2;
  v8();
  v56 = (v4 + 24 * v2);
  v57 = v56 + v1[14];
  *v56 = 25;
  *v57 = "is_llm_generated_answer";
  *(v57 + 1) = 23;
  v57[16] = 2;
  v8();
  v58 = (v4 + 25 * v2);
  v59 = v58 + v1[14];
  *v58 = 100;
  *v59 = "serialized_result";
  *(v59 + 1) = 17;
  v59[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t sub_1B8F08780()
{
  v0 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1B8F087C0();
  qword_1ED9CDEB8 = result;
  return result;
}

uint64_t sub_1B8F087C0()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  *(v0 + 48) = 0;
  *(v0 + 56) = 1;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0xE000000000000000;
  v1 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__answer;
  v2 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Answer(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__context) = xmmword_1B9652FE0;
  v3 = (v0 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__language);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = (v0 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__platform);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__platformVersion) = 0;
  v5 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__actions) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__sources) = v5;
  v6 = (v0 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__tipID);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__score) = 0;
  v7 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__asset;
  v8 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Asset(0);
  __swift_storeEnumTagSinglePayload(v0 + v7, 1, 1, v8);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__attributions) = v5;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__disclaimer) = v5;
  v9 = (v0 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__assetBaseURL);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__deviceFamilies) = v5;
  v10 = (v0 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__tipsCollectionID);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__summarizedAnswer, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__siriSuggestions) = v5;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__contextHints) = v5;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__contextTags) = v5;
  v11 = (v0 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__supportFlowID);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__isLlmGeneratedAnswer) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__serializedResult[0]) = xmmword_1B9652FE0;
  return v0;
}

uint64_t sub_1B8F08990(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABE970, &qword_1B96693B8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v127 = &v112 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABE968, &qword_1B96693B0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v137 = &v112 - v8;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  *(v1 + 48) = 0;
  v113 = (v1 + 48);
  *(v1 + 56) = 1;
  *(v1 + 64) = 0;
  v114 = (v1 + 64);
  *(v1 + 72) = 0xE000000000000000;
  v9 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__answer;
  v115 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__answer;
  v10 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Answer(0);
  __swift_storeEnumTagSinglePayload(v1 + v9, 1, 1, v10);
  v11 = (v1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__context);
  v112 = xmmword_1B9652FE0;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__context) = xmmword_1B9652FE0;
  v12 = (v1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__language);
  v116 = (v1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__language);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v13 = (v1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__platform);
  v117 = (v1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__platform);
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  v118 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__platformVersion;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__platformVersion) = 0;
  v119 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__actions;
  v14 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__actions) = MEMORY[0x1E69E7CC0];
  v120 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__sources;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__sources) = v14;
  v15 = (v1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__tipID);
  v121 = (v1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__tipID);
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  v122 = (v1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__score);
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__score) = 0;
  v16 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__asset;
  v123 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__asset;
  v17 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Asset(0);
  __swift_storeEnumTagSinglePayload(v1 + v16, 1, 1, v17);
  v124 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__attributions;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__attributions) = v14;
  v125 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__disclaimer;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__disclaimer) = v14;
  v18 = (v1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__assetBaseURL);
  v126 = (v1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__assetBaseURL);
  *v18 = 0;
  v18[1] = 0xE000000000000000;
  v128 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__deviceFamilies;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__deviceFamilies) = v14;
  v19 = (v1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__tipsCollectionID);
  v129 = (v1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__tipsCollectionID);
  *v19 = 0;
  v19[1] = 0xE000000000000000;
  v130 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__summarizedAnswer;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__summarizedAnswer, 1, 1, v10);
  v131 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__siriSuggestions;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__siriSuggestions) = v14;
  v132 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__contextHints;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__contextHints) = v14;
  v133 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__contextTags;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__contextTags) = v14;
  v20 = (v1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__supportFlowID);
  v134 = (v1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__supportFlowID);
  *v20 = 0;
  v20[1] = 0xE000000000000000;
  v135 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__isLlmGeneratedAnswer;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__isLlmGeneratedAnswer) = 0;
  v136 = (v1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__serializedResult);
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__serializedResult) = v112;
  swift_beginAccess();
  v21 = *(a1 + 16);
  v22 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v21;
  *(v1 + 24) = v22;
  swift_beginAccess();
  v23 = *(a1 + 32);
  v24 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v23;
  *(v1 + 40) = v24;

  swift_beginAccess();
  v25 = *(a1 + 48);
  LOBYTE(v23) = *(a1 + 56);
  v26 = v113;
  swift_beginAccess();
  *v26 = v25;
  *(v1 + 56) = v23;
  swift_beginAccess();
  v28 = *(a1 + 64);
  v27 = *(a1 + 72);
  v29 = v114;
  swift_beginAccess();
  v30 = *(v1 + 72);
  *v29 = v28;
  *(v1 + 72) = v27;

  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  v31 = (a1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__context);
  swift_beginAccess();
  v33 = *v31;
  v32 = v31[1];
  swift_beginAccess();
  v34 = *v11;
  v35 = v11[1];
  *v11 = v33;
  v11[1] = v32;
  sub_1B8D91FCC(v33, v32);
  sub_1B8D538A0(v34, v35);
  v36 = (a1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__language);
  swift_beginAccess();
  v38 = *v36;
  v37 = v36[1];
  v39 = v116;
  swift_beginAccess();
  v40 = v39[1];
  *v39 = v38;
  v39[1] = v37;

  v41 = (a1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__platform);
  swift_beginAccess();
  v43 = *v41;
  v42 = v41[1];
  v44 = v117;
  swift_beginAccess();
  v45 = v44[1];
  *v44 = v43;
  v44[1] = v42;

  v46 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__platformVersion;
  swift_beginAccess();
  LODWORD(v46) = *(a1 + v46);
  v47 = v118;
  swift_beginAccess();
  *(v1 + v47) = v46;
  v48 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__actions;
  swift_beginAccess();
  v49 = *(a1 + v48);
  v50 = v119;
  swift_beginAccess();
  v51 = *(v1 + v50);
  *(v1 + v50) = v49;

  v52 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__sources;
  swift_beginAccess();
  v53 = *(a1 + v52);
  v54 = v120;
  swift_beginAccess();
  v55 = *(v1 + v54);
  *(v1 + v54) = v53;

  v56 = (a1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__tipID);
  swift_beginAccess();
  v58 = *v56;
  v57 = v56[1];
  v59 = v121;
  swift_beginAccess();
  v60 = v59[1];
  *v59 = v58;
  v59[1] = v57;

  v61 = (a1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__score);
  swift_beginAccess();
  v62 = *v61;
  v63 = v122;
  swift_beginAccess();
  *v63 = v62;
  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  v64 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__attributions;
  swift_beginAccess();
  v65 = *(a1 + v64);
  v66 = v124;
  swift_beginAccess();
  v67 = *(v1 + v66);
  *(v1 + v66) = v65;

  v68 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__disclaimer;
  swift_beginAccess();
  v69 = *(a1 + v68);
  v70 = v125;
  swift_beginAccess();
  v71 = *(v1 + v70);
  *(v1 + v70) = v69;

  v72 = (a1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__assetBaseURL);
  swift_beginAccess();
  v74 = *v72;
  v73 = v72[1];
  v75 = v126;
  swift_beginAccess();
  v76 = v75[1];
  *v75 = v74;
  v75[1] = v73;

  v77 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__deviceFamilies;
  swift_beginAccess();
  v78 = *(a1 + v77);
  v79 = v128;
  swift_beginAccess();
  v80 = *(v1 + v79);
  *(v1 + v79) = v78;

  v81 = (a1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__tipsCollectionID);
  swift_beginAccess();
  v83 = *v81;
  v82 = v81[1];
  v84 = v129;
  swift_beginAccess();
  v85 = v84[1];
  *v84 = v83;
  v84[1] = v82;

  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  v86 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__siriSuggestions;
  swift_beginAccess();
  v87 = *(a1 + v86);
  v88 = v131;
  swift_beginAccess();
  v89 = *(v1 + v88);
  *(v1 + v88) = v87;

  v90 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__contextHints;
  swift_beginAccess();
  v91 = *(a1 + v90);
  v92 = v132;
  swift_beginAccess();
  v93 = *(v1 + v92);
  *(v1 + v92) = v91;

  v94 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__contextTags;
  swift_beginAccess();
  v95 = *(a1 + v94);
  v96 = v133;
  swift_beginAccess();
  v97 = *(v1 + v96);
  *(v1 + v96) = v95;

  v98 = (a1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__supportFlowID);
  swift_beginAccess();
  v100 = *v98;
  v99 = v98[1];
  v101 = v134;
  swift_beginAccess();
  v102 = v101[1];
  *v101 = v100;
  v101[1] = v99;

  v103 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__isLlmGeneratedAnswer;
  swift_beginAccess();
  LOBYTE(v103) = *(a1 + v103);
  v104 = v135;
  swift_beginAccess();
  *(v1 + v104) = v103;
  v105 = (a1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__serializedResult);
  swift_beginAccess();
  v107 = *v105;
  v106 = v105[1];
  sub_1B8D91FCC(v107, v106);

  v108 = v136;
  swift_beginAccess();
  v109 = *v108;
  v110 = v108[1];
  *v108 = v107;
  v108[1] = v106;
  sub_1B8D538A0(v109, v110);
  return v1;
}

uint64_t sub_1B8F09548()
{
  v1 = OUTLINED_FUNCTION_280();
  v3 = v2(v1);
  OUTLINED_FUNCTION_21_7(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_432();
  v7(v6);
  return v0;
}

uint64_t sub_1B8F09598()
{
  v1 = OUTLINED_FUNCTION_280();
  v3 = v2(v1);
  OUTLINED_FUNCTION_21_7(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_432();
  v7(v6);
  return v0;
}

uint64_t sub_1B8F095E8()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

void *sub_1B8F096DC()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[9];

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__answer, &qword_1EBABE968, &qword_1B96693B0);
  sub_1B8D538A0(*(v0 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__context), *(v0 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__context + 8));
  v4 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__language + 8);

  v5 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__platform + 8);

  v6 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__actions);

  v7 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__sources);

  v8 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__tipID + 8);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__asset, &qword_1EBABE970, &qword_1B96693B8);
  v9 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__attributions);

  v10 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__disclaimer);

  v11 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__assetBaseURL + 8);

  v12 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__deviceFamilies);

  v13 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__tipsCollectionID + 8);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__summarizedAnswer, &qword_1EBABE968, &qword_1B96693B0);
  v14 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__siriSuggestions);

  v15 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__contextHints);

  v16 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__contextTags);

  v17 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__supportFlowID + 8);

  sub_1B8D538A0(*(v0 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__serializedResult[0]), *(v0 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__serializedResult[0] + 8));
  return v0;
}

uint64_t sub_1B8F0989C()
{
  v0 = sub_1B8F096DC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.decodeMessage<A>(decoder:)()
{
  v1 = v0;
  OUTLINED_FUNCTION_166_3();
  v2 = *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_40_0();
    *(v1 + v2) = sub_1B8F08990(v9);
  }

  v10 = OUTLINED_FUNCTION_7_6();
  return sub_1B8F09978(v10, v11, v12, v13);
}

uint64_t sub_1B8F09978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        sub_1B8DAA85C();
        continue;
      case 2:
        sub_1B8DC46F4();
        continue;
      case 3:
        sub_1B8F09CC0();
        continue;
      case 4:
        sub_1B8E16ACC();
        continue;
      case 5:
      case 20:
        sub_1B8F0A21C();
        continue;
      case 6:
        v16 = &OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__context;
        v19 = MEMORY[0x1E69AAC78];
        goto LABEL_31;
      case 7:
        v16 = &OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__language;
        goto LABEL_30;
      case 8:
        v16 = &OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__platform;
        goto LABEL_30;
      case 9:
        v17 = &OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__platformVersion;
        v18 = MEMORY[0x1E69AAC98];
        goto LABEL_26;
      case 10:
        sub_1B8F09D54();
        continue;
      case 11:
        sub_1B8F09E30();
        continue;
      case 12:
        v16 = &OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__tipID;
        goto LABEL_30;
      case 13:
        v17 = &OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__score;
        v18 = MEMORY[0x1E69AAC88];
LABEL_26:
        sub_1B8F09F0C(a2, a1, a3, a4, v17, v18);
        continue;
      case 14:
        sub_1B8F09F88();
        continue;
      case 15:
        sub_1B8F0A064();
        continue;
      case 16:
        sub_1B8F0A140();
        continue;
      case 17:
        v16 = &OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__assetBaseURL;
        goto LABEL_30;
      case 18:
      case 22:
        sub_1B8F0A3AC();
        continue;
      case 19:
        v16 = &OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__tipsCollectionID;
        goto LABEL_30;
      case 21:
        sub_1B8F0A2D0();
        continue;
      case 23:
        sub_1B8F0A414();
        continue;
      case 24:
        v16 = &OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__supportFlowID;
LABEL_30:
        v19 = MEMORY[0x1E69AACE0];
LABEL_31:
        v11 = v19;
        v12 = a2;
        v13 = a1;
        v14 = a3;
        v15 = a4;
        goto LABEL_32;
      case 25:
        sub_1B8F0A4F0();
        continue;
      default:
        if (result != 100)
        {
          continue;
        }

        v11 = MEMORY[0x1E69AAC78];
        v12 = a2;
        v13 = a1;
        v14 = a3;
        v15 = a4;
        v16 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__serializedResult;
LABEL_32:
        sub_1B8F0A57C(v12, v13, v14, v15, v16, v11);
        break;
    }
  }
}

uint64_t sub_1B8F09CC0()
{
  swift_beginAccess();
  sub_1B8F1B864();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B8F09D54()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action(0);
  sub_1B8CD2378(&qword_1ED9CDC88, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8F09E30()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Source(0);
  sub_1B8CD2378(&qword_1ED9CDC48, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Source);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8F09F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t))
{
  v7 = *a5;
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  v8 = OUTLINED_FUNCTION_174_2();
  a6(v8);
  return OUTLINED_FUNCTION_199_1();
}

uint64_t sub_1B8F09F88()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Asset(0);
  sub_1B8CD2378(qword_1ED9CDC98, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Asset);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8F0A064()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution(0);
  sub_1B8CD2378(qword_1ED9CE030, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8F0A140()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerToken(0);
  sub_1B8CD2378(&qword_1ED9CE0E8, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerToken);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8F0A21C()
{
  OUTLINED_FUNCTION_147_1();
  v1 = *v0;
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Answer(0);
  sub_1B8CD2378(&qword_1ED9CDC58, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Answer);
  OUTLINED_FUNCTION_49_1();
  sub_1B964C580();
  return OUTLINED_FUNCTION_199_1();
}

uint64_t sub_1B8F0A2D0()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.SiriSuggestion(0);
  sub_1B8CD2378(&qword_1EBABEB60, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.SiriSuggestion);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8F0A3AC()
{
  OUTLINED_FUNCTION_147_1();
  v1 = *v0;
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_12();
  sub_1B964C4D0();
  return OUTLINED_FUNCTION_199_1();
}

uint64_t sub_1B8F0A414()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ContextTags(0);
  sub_1B8CD2378(qword_1ED9CDF90, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ContextTags);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8F0A4F0()
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B8F0A57C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t))
{
  v7 = *a5;
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  v8 = OUTLINED_FUNCTION_174_2();
  a6(v8);
  return OUTLINED_FUNCTION_199_1();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.traverse<A>(visitor:)()
{
  v2 = *(v0 + *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult(0) + 20));
  OUTLINED_FUNCTION_12();
  result = sub_1B8F0A65C(v3);
  if (!v1)
  {
    OUTLINED_FUNCTION_186();
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B8F0A65C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABE970, &qword_1B96693B8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v78 = &v74 - v6;
  v77 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Asset(0);
  v7 = *(*(v77 - 8) + 64);
  MEMORY[0x1EEE9AC00](v77);
  v76 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABE968, &qword_1B96693B0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v75 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v74 - v13;
  v81 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Answer(0);
  v15 = *(*(v81 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v81);
  v74 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  swift_beginAccess();
  v18 = *(a1 + 24);
  v19 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v19 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {
    v20 = *(a1 + 24);

    sub_1B964C700();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  v21 = *(a1 + 40);
  v22 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v22 = *(a1 + 32) & 0xFFFFFFFFFFFFLL;
  }

  if (v22)
  {
    v23 = *(a1 + 40);

    sub_1B964C700();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  if (*(a1 + 48))
  {
    v24 = *(a1 + 56);
    v79 = *(a1 + 48);
    v80 = v24;
    sub_1B8F1B864();
    result = sub_1B964C680();
    if (v1)
    {
      return result;
    }
  }

  swift_beginAccess();
  v26 = *(a1 + 72);
  v27 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v27 = *(a1 + 64) & 0xFFFFFFFFFFFFLL;
  }

  if (v27)
  {
    v28 = *(a1 + 72);

    sub_1B964C700();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v14, 1, v81) == 1)
  {
    sub_1B8D9207C(v14, &qword_1EBABE968, &qword_1B96693B0);
  }

  else
  {
    sub_1B8F09548();
    sub_1B8CD2378(&qword_1ED9CDC58, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Answer);
    sub_1B964C740();
    if (v1)
    {
      return sub_1B8F095E8();
    }

    sub_1B8F095E8();
  }

  v29 = a1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__context;
  swift_beginAccess();
  if (!sub_1B8D99EA8(*v29, *(v29 + 8)))
  {
    v30 = *v29;
    v31 = *(v29 + 8);
    sub_1B8D91FCC(v30, v31);
    sub_1B964C6A0();
    v32 = v30;
    v33 = v31;
    if (v1)
    {
      return sub_1B8D538A0(v32, v33);
    }

    sub_1B8D538A0(v30, v31);
  }

  v34 = (a1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__language);
  swift_beginAccess();
  v35 = *v34;
  v36 = v34[1];
  v37 = HIBYTE(v36) & 0xF;
  if ((v36 & 0x2000000000000000) == 0)
  {
    v37 = v35 & 0xFFFFFFFFFFFFLL;
  }

  if (!v37)
  {
    goto LABEL_32;
  }

  sub_1B964C700();
  if (v2)
  {
  }

LABEL_32:
  v38 = (a1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__platform);
  swift_beginAccess();
  v39 = *v38;
  v40 = v38[1];
  v41 = HIBYTE(v40) & 0xF;
  if ((v40 & 0x2000000000000000) == 0)
  {
    v41 = v39 & 0xFFFFFFFFFFFFLL;
  }

  if (v41)
  {

    sub_1B964C700();
    if (v2)
    {
    }
  }

  v42 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__platformVersion;
  swift_beginAccess();
  if (*(a1 + v42))
  {
    result = sub_1B964C6C0();
    if (v2)
    {
      return result;
    }
  }

  v43 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__actions;
  swift_beginAccess();
  if (*(*(a1 + v43) + 16))
  {
    type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action(0);
    sub_1B8CD2378(&qword_1ED9CDC88, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action);

    sub_1B964C730();
    if (v2)
    {
    }
  }

  v44 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__sources;
  swift_beginAccess();
  if (*(*(a1 + v44) + 16))
  {
    type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Source(0);
    sub_1B8CD2378(&qword_1ED9CDC48, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Source);

    sub_1B964C730();
    if (v2)
    {
    }
  }

  v45 = (a1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__tipID);
  swift_beginAccess();
  v46 = *v45;
  v47 = v45[1];
  v48 = HIBYTE(v47) & 0xF;
  if ((v47 & 0x2000000000000000) == 0)
  {
    v48 = v46 & 0xFFFFFFFFFFFFLL;
  }

  v49 = v78;
  if (v48)
  {

    sub_1B964C700();
    if (v2)
    {
    }
  }

  v50 = (a1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__score);
  swift_beginAccess();
  if (*v50 != 0.0)
  {
    result = sub_1B964C6B0();
    if (v2)
    {
      return result;
    }
  }

  swift_beginAccess();
  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v49, 1, v77) == 1)
  {
    sub_1B8D9207C(v49, &qword_1EBABE970, &qword_1B96693B8);
    goto LABEL_61;
  }

  sub_1B8F09548();
  sub_1B8CD2378(qword_1ED9CDC98, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Asset);
  sub_1B964C740();
  if (v2)
  {
    return sub_1B8F095E8();
  }

  sub_1B8F095E8();
LABEL_61:
  v51 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__attributions;
  swift_beginAccess();
  if (*(*(a1 + v51) + 16))
  {
    type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution(0);
    sub_1B8CD2378(qword_1ED9CE030, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution);

    sub_1B964C730();
    if (v2)
    {
    }
  }

  v52 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__disclaimer;
  swift_beginAccess();
  if (*(*(a1 + v52) + 16))
  {
    type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerToken(0);
    sub_1B8CD2378(&qword_1ED9CE0E8, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerToken);

    sub_1B964C730();
    if (v2)
    {
    }
  }

  v53 = (a1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__assetBaseURL);
  swift_beginAccess();
  v54 = *v53;
  v55 = v53[1];
  v56 = HIBYTE(v55) & 0xF;
  if ((v55 & 0x2000000000000000) == 0)
  {
    v56 = v54 & 0xFFFFFFFFFFFFLL;
  }

  if (v56)
  {

    sub_1B964C700();
    if (v2)
    {
    }
  }

  v57 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__deviceFamilies;
  swift_beginAccess();
  if (*(*(a1 + v57) + 16))
  {

    sub_1B964C6E0();
    if (v2)
    {
    }
  }

  v58 = (a1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__tipsCollectionID);
  swift_beginAccess();
  v59 = *v58;
  v60 = v58[1];
  v61 = HIBYTE(v60) & 0xF;
  if ((v60 & 0x2000000000000000) == 0)
  {
    v61 = v59 & 0xFFFFFFFFFFFFLL;
  }

  if (!v61 || (, sub_1B964C700(), result = , !v2))
  {
    swift_beginAccess();
    v62 = v75;
    sub_1B8F1B8B8();
    if (__swift_getEnumTagSinglePayload(v62, 1, v81) == 1)
    {
      sub_1B8D9207C(v62, &qword_1EBABE968, &qword_1B96693B0);
    }

    else
    {
      sub_1B8F09548();
      sub_1B8CD2378(&qword_1ED9CDC58, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Answer);
      sub_1B964C740();
      result = sub_1B8F095E8();
      if (v2)
      {
        return result;
      }
    }

    v63 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__siriSuggestions;
    swift_beginAccess();
    if (!*(*(a1 + v63) + 16) || (type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.SiriSuggestion(0), sub_1B8CD2378(&qword_1EBABEB60, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.SiriSuggestion), , sub_1B964C730(), result = , !v2))
    {
      v64 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__contextHints;
      swift_beginAccess();
      if (!*(*(a1 + v64) + 16) || (, sub_1B964C6E0(), result = , !v2))
      {
        v65 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__contextTags;
        swift_beginAccess();
        if (!*(*(a1 + v65) + 16) || (type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ContextTags(0), sub_1B8CD2378(qword_1ED9CDF90, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ContextTags), , sub_1B964C730(), result = , !v2))
        {
          v66 = (a1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__supportFlowID);
          swift_beginAccess();
          v67 = *v66;
          v68 = v66[1];
          v69 = HIBYTE(v68) & 0xF;
          if ((v68 & 0x2000000000000000) == 0)
          {
            v69 = v67 & 0xFFFFFFFFFFFFLL;
          }

          if (!v69 || (, sub_1B964C700(), result = , !v2))
          {
            v70 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__isLlmGeneratedAnswer;
            swift_beginAccess();
            if (*(a1 + v70) != 1 || (result = sub_1B964C670(), !v2))
            {
              v71 = a1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__serializedResult[0];
              swift_beginAccess();
              result = sub_1B8D99EA8(*v71, *(v71 + 8));
              if ((result & 1) == 0)
              {
                v73 = *v71;
                v72 = *(v71 + 8);
                sub_1B8D91FCC(v73, v72);
                sub_1B964C6A0();
                v32 = v73;
                v33 = v72;
                return sub_1B8D538A0(v32, v33);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_30_13();
  v3 = *(v1 + v2);
  v4 = *(v0 + v2);
  if (v3 != v4)
  {
    v5 = *(v1 + v2);

    v6 = sub_1B8F0B6D0(v3, v4);

    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_35();
  sub_1B8CD2378(v7, v8);
  OUTLINED_FUNCTION_288();
  return sub_1B964C850() & 1;
}

uint64_t sub_1B8F0B6D0(uint64_t a1, uint64_t a2)
{
  v177 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Asset(0);
  v4 = OUTLINED_FUNCTION_59_1(v177);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_62();
  v173 = v8 - v7;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABECB0, &qword_1B966BBD0);
  OUTLINED_FUNCTION_59_1(v175);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  v178 = &v168 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABE970, &qword_1B96693B8);
  v14 = OUTLINED_FUNCTION_183(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_66();
  v174 = v17 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v176 = &v168 - v20;
  v180 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Answer(0);
  v21 = OUTLINED_FUNCTION_59_1(v180);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_62();
  v26 = v25 - v24;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABECB8, &qword_1B966BBD8);
  v27 = OUTLINED_FUNCTION_59_1(v179);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_66();
  v32 = v30 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v168 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABE968, &qword_1B96693B0);
  v37 = OUTLINED_FUNCTION_183(v36);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_66();
  v171 = v40 - v41;
  v43 = MEMORY[0x1EEE9AC00](v42);
  v172 = &v168 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v168 - v46;
  OUTLINED_FUNCTION_521();
  v48 = *(a1 + 16);
  v49 = *(a1 + 24);
  OUTLINED_FUNCTION_521();
  v50 = v48 == *(a2 + 16) && v49 == *(a2 + 24);
  if (v50 || (OUTLINED_FUNCTION_686(), (sub_1B964C9F0() & 1) != 0))
  {
    OUTLINED_FUNCTION_521();
    v51 = *(a1 + 32);
    v52 = *(a1 + 40);
    OUTLINED_FUNCTION_521();
    v53 = v51 == *(a2 + 32) && v52 == *(a2 + 40);
    if (v53 || (OUTLINED_FUNCTION_686(), (sub_1B964C9F0() & 1) != 0))
    {
      OUTLINED_FUNCTION_521();
      v54 = *(a1 + 48);
      v55 = *(a1 + 56);
      OUTLINED_FUNCTION_521();
      v56 = *(a2 + 56);
      if (sub_1B8D92198(v54, v55, *(a2 + 48)))
      {
        OUTLINED_FUNCTION_521();
        v57 = *(a1 + 64);
        v58 = *(a1 + 72);
        OUTLINED_FUNCTION_521();
        v59 = v57 == *(a2 + 64) && v58 == *(a2 + 72);
        if (v59 || (OUTLINED_FUNCTION_686(), (sub_1B964C9F0() & 1) != 0))
        {
          v169 = v32;
          v170 = v26;
          OUTLINED_FUNCTION_521();
          OUTLINED_FUNCTION_89_3();
          OUTLINED_FUNCTION_521();
          v60 = *(v179 + 48);
          OUTLINED_FUNCTION_1_0();
          OUTLINED_FUNCTION_92_1();
          sub_1B8F1B8B8();
          OUTLINED_FUNCTION_92_1();
          sub_1B8F1B8B8();
          v61 = v180;
          OUTLINED_FUNCTION_178(v35, 1, v180);
          if (v50)
          {

            sub_1B8D9207C(v47, &qword_1EBABE968, &qword_1B96693B0);
            OUTLINED_FUNCTION_178(&v35[v60], 1, v61);
            if (v50)
            {
              sub_1B8D9207C(v35, &qword_1EBABE968, &qword_1B96693B0);
              goto LABEL_29;
            }
          }

          else
          {
            sub_1B8F1B8B8();
            OUTLINED_FUNCTION_178(&v35[v60], 1, v61);
            if (!v63)
            {
              OUTLINED_FUNCTION_24_10();
              sub_1B8F09548();

              v67 = static Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Answer.== infix(_:_:)();
              sub_1B8F095E8();
              sub_1B8D9207C(v47, &qword_1EBABE968, &qword_1B96693B0);
              sub_1B8F095E8();
              v68 = OUTLINED_FUNCTION_491();
              sub_1B8D9207C(v68, v69, &qword_1B96693B0);
              if ((v67 & 1) == 0)
              {
                goto LABEL_90;
              }

LABEL_29:
              v70 = (a1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__context);
              OUTLINED_FUNCTION_521();
              v72 = *v70;
              v71 = v70[1];
              v73 = (a2 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__context);
              OUTLINED_FUNCTION_521();
              v75 = *v73;
              v74 = v73[1];
              sub_1B8D91FCC(v72, v71);
              sub_1B8D91FCC(v75, v74);
              v76 = MEMORY[0x1BFADC060](v72, v71, v75, v74);
              sub_1B8D538A0(v75, v74);
              sub_1B8D538A0(v72, v71);
              if ((v76 & 1) == 0)
              {
                goto LABEL_90;
              }

              v77 = (a1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__language);
              OUTLINED_FUNCTION_30_11();
              v78 = *v77;
              v79 = v77[1];
              v80 = (a2 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__language);
              OUTLINED_FUNCTION_521();
              if (v78 != *v80 || v79 != v80[1])
              {
                OUTLINED_FUNCTION_1_0();
                if ((sub_1B964C9F0() & 1) == 0)
                {
                  goto LABEL_90;
                }
              }

              v82 = (a1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__platform);
              OUTLINED_FUNCTION_30_11();
              v83 = *v82;
              v84 = v82[1];
              v85 = (a2 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__platform);
              OUTLINED_FUNCTION_521();
              if (v83 != *v85 || v84 != v85[1])
              {
                OUTLINED_FUNCTION_1_0();
                if ((sub_1B964C9F0() & 1) == 0)
                {
                  goto LABEL_90;
                }
              }

              v87 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__platformVersion;
              OUTLINED_FUNCTION_521();
              LODWORD(v87) = *(a1 + v87);
              v88 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__platformVersion;
              OUTLINED_FUNCTION_521();
              if (v87 != *(a2 + v88))
              {
                goto LABEL_90;
              }

              v89 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__actions;
              OUTLINED_FUNCTION_521();
              v90 = *(a1 + v89);
              v91 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__actions;
              OUTLINED_FUNCTION_521();
              v92 = *(a2 + v91);

              OUTLINED_FUNCTION_1_0();
              sub_1B8D8AF74();
              v94 = v93;

              if ((v94 & 1) == 0)
              {
                goto LABEL_90;
              }

              v95 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__sources;
              OUTLINED_FUNCTION_521();
              v96 = *(a1 + v95);
              v97 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__sources;
              OUTLINED_FUNCTION_521();
              v98 = *(a2 + v97);

              OUTLINED_FUNCTION_1_0();
              sub_1B8D8B348();
              v100 = v99;

              if ((v100 & 1) == 0)
              {
                goto LABEL_90;
              }

              v101 = (a1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__tipID);
              OUTLINED_FUNCTION_30_11();
              v102 = *v101;
              v103 = v101[1];
              v104 = (a2 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__tipID);
              OUTLINED_FUNCTION_521();
              if (v102 != *v104 || v103 != v104[1])
              {
                OUTLINED_FUNCTION_1_0();
                if ((sub_1B964C9F0() & 1) == 0)
                {
                  goto LABEL_90;
                }
              }

              v106 = (a1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__score);
              OUTLINED_FUNCTION_521();
              v107 = *v106;
              v108 = (a2 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__score);
              OUTLINED_FUNCTION_521();
              if (v107 != *v108)
              {
                goto LABEL_90;
              }

              OUTLINED_FUNCTION_521();
              v109 = &qword_1B96693B8;
              v110 = v176;
              sub_1B8F1B8B8();
              OUTLINED_FUNCTION_521();
              v111 = *(v175 + 48);
              v112 = v178;
              sub_1B8F1B8B8();
              sub_1B8F1B8B8();
              OUTLINED_FUNCTION_178(v112, 1, v177);
              if (v50)
              {
                sub_1B8D9207C(v110, &qword_1EBABE970, &qword_1B96693B8);
                OUTLINED_FUNCTION_117(v112 + v111);
                if (v50)
                {
                  sub_1B8D9207C(v112, &qword_1EBABE970, &qword_1B96693B8);
LABEL_59:
                  v116 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__attributions;
                  OUTLINED_FUNCTION_521();
                  v117 = *(a1 + v116);
                  OUTLINED_FUNCTION_521();
                  OUTLINED_FUNCTION_210_1();

                  OUTLINED_FUNCTION_177_1();
                  sub_1B8D8B598();
                  OUTLINED_FUNCTION_206_2();

                  if ((v109 & 1) == 0)
                  {
                    goto LABEL_90;
                  }

                  v118 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__disclaimer;
                  OUTLINED_FUNCTION_521();
                  v119 = *(a1 + v118);
                  OUTLINED_FUNCTION_521();
                  OUTLINED_FUNCTION_210_1();

                  OUTLINED_FUNCTION_177_1();
                  sub_1B8D7EFB0();
                  OUTLINED_FUNCTION_206_2();

                  v120 = (a1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__assetBaseURL);
                  OUTLINED_FUNCTION_521();
                  v121 = *v120;
                  v122 = v120[1];
                  v123 = (a2 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__assetBaseURL);
                  OUTLINED_FUNCTION_30_11();
                  if (v121 != *v123 || v122 != v123[1])
                  {
                    OUTLINED_FUNCTION_177_1();
                    if ((sub_1B964C9F0() & 1) == 0)
                    {
                      goto LABEL_90;
                    }
                  }

                  v125 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__deviceFamilies;
                  OUTLINED_FUNCTION_521();
                  v126 = *(a1 + v125);
                  v127 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__deviceFamilies;
                  OUTLINED_FUNCTION_521();
                  if ((sub_1B8D6123C(v126, *(a2 + v127)) & 1) == 0)
                  {
                    goto LABEL_90;
                  }

                  v128 = (a1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__tipsCollectionID);
                  OUTLINED_FUNCTION_521();
                  v129 = *v128;
                  v130 = v128[1];
                  v131 = (a2 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__tipsCollectionID);
                  OUTLINED_FUNCTION_30_11();
                  if (v129 != *v131 || v130 != v131[1])
                  {
                    OUTLINED_FUNCTION_177_1();
                    if ((sub_1B964C9F0() & 1) == 0)
                    {
                      goto LABEL_90;
                    }
                  }

                  OUTLINED_FUNCTION_521();
                  sub_1B8F1B8B8();
                  OUTLINED_FUNCTION_521();
                  v133 = *(v179 + 48);
                  v134 = v169;
                  sub_1B8F1B8B8();
                  sub_1B8F1B8B8();
                  OUTLINED_FUNCTION_178(v134, 1, v180);
                  if (v50)
                  {
                    sub_1B8D9207C(v172, &qword_1EBABE968, &qword_1B96693B0);
                    OUTLINED_FUNCTION_178(v133 + v169, 1, v180);
                    if (v50)
                    {
                      sub_1B8D9207C(v169, &qword_1EBABE968, &qword_1B96693B0);
LABEL_81:
                      v139 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__siriSuggestions;
                      OUTLINED_FUNCTION_521();
                      v140 = *(a1 + v139);
                      OUTLINED_FUNCTION_521();
                      OUTLINED_FUNCTION_210_1();

                      OUTLINED_FUNCTION_177_1();
                      sub_1B8D8B920();
                      OUTLINED_FUNCTION_206_2();

                      if (v133)
                      {
                        v141 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__contextHints;
                        OUTLINED_FUNCTION_521();
                        v142 = *(a1 + v141);
                        v143 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__contextHints;
                        OUTLINED_FUNCTION_521();
                        if (sub_1B8D6123C(v142, *(a2 + v143)))
                        {
                          v144 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__contextTags;
                          OUTLINED_FUNCTION_521();
                          v145 = *(a1 + v144);
                          OUTLINED_FUNCTION_521();
                          OUTLINED_FUNCTION_210_1();

                          OUTLINED_FUNCTION_177_1();
                          sub_1B8D8BB34();
                          OUTLINED_FUNCTION_206_2();

                          if (v133)
                          {
                            v146 = (a1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__supportFlowID);
                            OUTLINED_FUNCTION_521();
                            v147 = *v146;
                            v148 = v146[1];
                            v149 = (a2 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__supportFlowID);
                            OUTLINED_FUNCTION_30_11();
                            v150 = v147 == *v149 && v148 == v149[1];
                            if (v150 || (OUTLINED_FUNCTION_177_1(), (sub_1B964C9F0() & 1) != 0))
                            {
                              v151 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__isLlmGeneratedAnswer;
                              OUTLINED_FUNCTION_521();
                              LODWORD(v151) = *(a1 + v151);
                              v152 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__isLlmGeneratedAnswer;
                              OUTLINED_FUNCTION_521();
                              if (v151 == *(a2 + v152))
                              {
                                v154 = (a1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__serializedResult[0]);
                                OUTLINED_FUNCTION_521();
                                v155 = *v154;
                                v156 = v154[1];
                                v157 = (a2 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResultP33_B579C2D1AC5D1983A59CE0AB086E5C7D13_StorageClass__serializedResult[0]);
                                OUTLINED_FUNCTION_521();
                                v158 = *v157;
                                v159 = v157[1];
                                v160 = OUTLINED_FUNCTION_690();
                                sub_1B8D91FCC(v160, v161);
                                v162 = OUTLINED_FUNCTION_686();
                                sub_1B8D91FCC(v162, v163);
                                OUTLINED_FUNCTION_690();
                                OUTLINED_FUNCTION_92_1();
                                v62 = MEMORY[0x1BFADC060]();
                                v164 = OUTLINED_FUNCTION_686();
                                sub_1B8D538A0(v164, v165);
                                v166 = OUTLINED_FUNCTION_690();
                                sub_1B8D538A0(v166, v167);
                                goto LABEL_91;
                              }
                            }
                          }
                        }
                      }

LABEL_90:
                      v62 = 0;
LABEL_91:

                      return v62 & 1;
                    }
                  }

                  else
                  {
                    v135 = v169;
                    sub_1B8F1B8B8();
                    OUTLINED_FUNCTION_178(v133 + v135, 1, v180);
                    if (!v136)
                    {
                      OUTLINED_FUNCTION_24_10();
                      v137 = v169;
                      sub_1B8F09548();
                      v138 = static Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Answer.== infix(_:_:)();
                      sub_1B8F095E8();
                      v133 = &qword_1EBABE968;
                      sub_1B8D9207C(v172, &qword_1EBABE968, &qword_1B96693B0);
                      sub_1B8F095E8();
                      sub_1B8D9207C(v137, &qword_1EBABE968, &qword_1B96693B0);
                      if ((v138 & 1) == 0)
                      {
                        goto LABEL_90;
                      }

                      goto LABEL_81;
                    }

                    sub_1B8D9207C(v172, &qword_1EBABE968, &qword_1B96693B0);
                    OUTLINED_FUNCTION_113_2();
                    sub_1B8F095E8();
                  }

                  v64 = &qword_1EBABECB8;
                  v65 = &qword_1B966BBD8;
                  v66 = v169;
LABEL_27:
                  sub_1B8D9207C(v66, v64, v65);
                  goto LABEL_90;
                }
              }

              else
              {
                sub_1B8F1B8B8();
                OUTLINED_FUNCTION_117(v112 + v111);
                if (!v113)
                {
                  OUTLINED_FUNCTION_25_7();
                  sub_1B8F09548();
                  static Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Asset.== infix(_:_:)();
                  v115 = v114;
                  v109 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Asset;
                  sub_1B8F095E8();
                  sub_1B8D9207C(v110, &qword_1EBABE970, &qword_1B96693B8);
                  sub_1B8F095E8();
                  sub_1B8D9207C(v112, &qword_1EBABE970, &qword_1B96693B8);
                  if ((v115 & 1) == 0)
                  {
                    goto LABEL_90;
                  }

                  goto LABEL_59;
                }

                sub_1B8D9207C(v110, &qword_1EBABE970, &qword_1B96693B8);
                sub_1B8F095E8();
              }

              v64 = &qword_1EBABECB0;
              v65 = &qword_1B966BBD0;
              v66 = v112;
              goto LABEL_27;
            }

            sub_1B8D9207C(v47, &qword_1EBABE968, &qword_1B96693B0);
            OUTLINED_FUNCTION_113_2();
            sub_1B8F095E8();
          }

          v64 = &qword_1EBABECB8;
          v65 = &qword_1B966BBD8;
          v66 = v35;
          goto LABEL_27;
        }
      }
    }
  }

  v62 = 0;
  return v62 & 1;
}

uint64_t sub_1B8F0C660(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2378(&qword_1EBABEC70, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8F0C6E0(uint64_t a1)
{
  v2 = sub_1B8CD2378(&qword_1ED9CDB20, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8F0C750()
{
  sub_1B8CD2378(&qword_1ED9CDB20, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult);

  return sub_1B964C5D0();
}

uint64_t sub_1B8F0C7D0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB5898);
  __swift_project_value_buffer(v0, qword_1EBAB5898);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "TEMPLATE_TYPE_UNKNOWN";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "TEMPLATE_TYPE_GENERATED_ANSWER";
  *(v10 + 8) = 30;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "TEMPLATE_TYPE_TERMINOLOGY";
  *(v12 + 1) = 25;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "TEMPLATE_TYPE_REDIRECT";
  *(v14 + 1) = 22;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "TEMPLATE_TYPE_SEARCH_RESULTS";
  *(v16 + 1) = 28;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8F0CAE8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1B964C780();
  __swift_allocate_value_buffer(v7, a2);
  v8 = OUTLINED_FUNCTION_128();
  __swift_project_value_buffer(v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v11 = *(*v10 + 72);
  v12 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1B964EE60;
  v14 = (v13 + v12);
  v15 = v13 + v12 + v10[14];
  *v14 = 0;
  *v15 = a3;
  *(v15 + 8) = 18;
  *(v15 + 16) = 2;
  v16 = *MEMORY[0x1E69AADC8];
  v17 = sub_1B964C750();
  OUTLINED_FUNCTION_59_1(v17);
  v19 = *(v18 + 104);
  (v19)(v15, v16, v17);
  v20 = v14 + v11 + v10[14];
  *(v14 + v11) = 1;
  *v20 = a4;
  *(v20 + 1) = 18;
  v20[16] = 2;
  v19();
  v21 = (v14 + 2 * v11);
  v22 = v21 + v10[14];
  *v21 = 2;
  *v22 = a5;
  *(v22 + 1) = 20;
  v22[16] = 2;
  v19();
  return sub_1B964C760();
}

uint64_t sub_1B8F0CD00()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABE7B8);
  __swift_project_value_buffer(v0, qword_1EBABE7B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "SUGGESTION_TYPE_UNKNOWN";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SUGGESTION_TYPE_RELATED";
  *(v10 + 1) = 23;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SUGGESTION_TYPE_ACTION";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8F0CF2C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB57B8);
  __swift_project_value_buffer(v0, qword_1EBAB57B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "ASSET_TYPE_UNKNOWN";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ASSET_TYPE_IMAGE";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "ASSET_TYPE_ICON";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "ASSET_TYPE_VIDEO";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Color.decodeMessage<A>(decoder:)()
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
      sub_1B8F0D258();
    }
  }

  return result;
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Color.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*v0 || (v5 = *v0, v6 = *(v2 + 8), sub_1B8F18964(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
  {
    v4 = *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Color(0) + 20);
    return OUTLINED_FUNCTION_8_1();
  }

  return result;
}

uint64_t static Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Color.== infix(_:_:)()
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
      v4 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Color(0);
      OUTLINED_FUNCTION_156_4(v4);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_35();
      sub_1B8CD2378(v5, v6);
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

uint64_t sub_1B8F0D528(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2378(&qword_1EBABEC68, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Color);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8F0D5A8(uint64_t a1)
{
  v2 = sub_1B8CD2378(&qword_1EBABE9B8, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Color);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8F0D618()
{
  sub_1B8CD2378(&qword_1EBABE9B8, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Color);

  return sub_1B964C5D0();
}

uint64_t sub_1B8F0D698()
{
  result = MEMORY[0x1BFADC850](0xD000000000000010, 0x80000001B96F2C00);
  qword_1EBABE7F8 = 0xD000000000000046;
  unk_1EBABE800 = 0x80000001B96F27B0;
  return result;
}

uint64_t sub_1B8F0D72C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1ED9CDE98);
  __swift_project_value_buffer(v0, qword_1ED9CDE98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
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
  *v10 = "color";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "highlighted";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenText.decodeMessage<A>(decoder:)()
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
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B8F0D9DC();
        break;
      case 1:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
    }
  }

  return result;
}

uint64_t sub_1B8F0D9DC()
{
  v0 = *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenText(0) + 28);
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Color(0);
  sub_1B8CD2378(&qword_1EBABE9B8, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Color);
  return sub_1B964C580();
}

void Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenText.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABE978, &qword_1B96693C0);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_22_3();
  v9 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Color(v8);
  v10 = OUTLINED_FUNCTION_59_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_62();
  v13 = *v0;
  v14 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v15 || (sub_1B964C700(), !v1))
  {
    v16 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenText(0);
    v17 = *(v16 + 28);
    sub_1B8F1B8B8();
    v18 = OUTLINED_FUNCTION_493();
    if (__swift_getEnumTagSinglePayload(v18, v19, v9) == 1)
    {
      sub_1B8D9207C(v2, &qword_1EBABE978, &qword_1B96693C0);
    }

    else
    {
      OUTLINED_FUNCTION_1_30();
      sub_1B8F09548();
      OUTLINED_FUNCTION_123_3();
      sub_1B8CD2378(v20, v21);
      sub_1B964C740();
      OUTLINED_FUNCTION_12_14();
      sub_1B8F095E8();
      if (v1)
      {
        goto LABEL_9;
      }
    }

    if (*(v3 + 16) != 1 || (sub_1B964C670(), !v1))
    {
      v22 = v3 + *(v16 + 24);
      sub_1B964C290();
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B8F0DD28(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2378(&qword_1EBABEC60, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenText);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8F0DDA8(uint64_t a1)
{
  v2 = sub_1B8CD2378(qword_1ED9D3350, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenText);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8F0DE18()
{
  sub_1B8CD2378(qword_1ED9D3350, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenText);

  return sub_1B964C5D0();
}

uint64_t sub_1B8F0DE98()
{
  result = MEMORY[0x1BFADC850](0xD000000000000012, 0x80000001B96F2BE0);
  qword_1EBABE808 = 0xD000000000000046;
  unk_1EBABE810 = 0x80000001B96F27B0;
  return result;
}

uint64_t sub_1B8F0DF2C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABE818);
  __swift_project_value_buffer(v0, qword_1EBABE818);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "alt";
  *(v10 + 8) = 3;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "color";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "highlighted";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenSymbol.decodeMessage<A>(decoder:)()
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
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B8F0E230();
        break;
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8F0E230()
{
  v0 = *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenSymbol(0) + 32);
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Color(0);
  sub_1B8CD2378(&qword_1EBABE9B8, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Color);
  return sub_1B964C580();
}

void Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenSymbol.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_614();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABE978, &qword_1B96693C0);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_151();
  v10 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Color(v9);
  v11 = OUTLINED_FUNCTION_59_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_62();
  v14 = *v1;
  v15 = v1[1];
  OUTLINED_FUNCTION_1();
  if (!v16 || (OUTLINED_FUNCTION_49_1(), sub_1B964C700(), (v0 = v2) == 0))
  {
    v17 = *(v3 + 16);
    v18 = *(v3 + 24);
    OUTLINED_FUNCTION_1();
    if (!v19 || (OUTLINED_FUNCTION_49_1(), sub_1B964C700(), (v0 = v2) == 0))
    {
      v20 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenSymbol(0);
      v21 = *(v20 + 32);
      sub_1B8F1B8B8();
      if (__swift_getEnumTagSinglePayload(v4, 1, v10) == 1)
      {
        sub_1B8D9207C(v4, &qword_1EBABE978, &qword_1B96693C0);
      }

      else
      {
        OUTLINED_FUNCTION_1_30();
        sub_1B8F09548();
        OUTLINED_FUNCTION_123_3();
        sub_1B8CD2378(v22, v23);
        OUTLINED_FUNCTION_687();
        sub_1B964C740();
        v0 = v2;
        OUTLINED_FUNCTION_12_14();
        sub_1B8F095E8();
        if (v2)
        {
          goto LABEL_11;
        }
      }

      if (*(v3 + 32) != 1 || (OUTLINED_FUNCTION_24_3(), sub_1B964C670(), !v0))
      {
        v24 = *(v20 + 28);
        OUTLINED_FUNCTION_8_1();
      }
    }
  }

LABEL_11:
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B8F0E568(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2378(&qword_1EBABEC58, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenSymbol);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8F0E5E8(uint64_t a1)
{
  v2 = sub_1B8CD2378(&qword_1EBABEB08, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenSymbol);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8F0E658()
{
  sub_1B8CD2378(&qword_1EBABEB08, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenSymbol);

  return sub_1B964C5D0();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerToken.decodeMessage<A>(decoder:)()
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
      v7 = OUTLINED_FUNCTION_17_3();
      sub_1B8F0ECC4(v7, v8, v9, v10);
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_17_3();
      sub_1B8F0E7CC(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_1B8F0E7CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenText(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB91D0, &qword_1B964D9B8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerToken.OneOf_Value(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABECA0, &qword_1B966BBC0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB91D0, &qword_1B964D9B8);
  }

  else
  {
    sub_1B8F09548();
    sub_1B8F09548();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8F095E8();
    }

    else
    {
      sub_1B8D9207C(v22, &qword_1EBABECA0, &qword_1B966BBC0);
      sub_1B8F09548();
      sub_1B8F09548();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }
  }

  sub_1B8CD2378(qword_1ED9D3350, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenText);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBABECA0, &qword_1B966BBC0);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBABECA0, &qword_1B966BBC0);
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBABECA0, &qword_1B966BBC0);
  }

  sub_1B8F09548();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBABECA0, &qword_1B966BBC0);
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB91D0, &qword_1B964D9B8);
  sub_1B8F09548();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B8F0ECC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenSymbol(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB91D0, &qword_1B964D9B8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerToken.OneOf_Value(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABECA8, &qword_1B966BBC8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB91D0, &qword_1B964D9B8);
  }

  else
  {
    sub_1B8F09548();
    sub_1B8F09548();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8D9207C(v22, &qword_1EBABECA8, &qword_1B966BBC8);
      sub_1B8F09548();
      sub_1B8F09548();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B8F095E8();
    }
  }

  sub_1B8CD2378(&qword_1EBABEB08, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenSymbol);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBABECA8, &qword_1B966BBC8);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBABECA8, &qword_1B966BBC8);
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBABECA8, &qword_1B966BBC8);
  }

  sub_1B8F09548();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBABECA8, &qword_1B966BBC8);
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB91D0, &qword_1B964D9B8);
  sub_1B8F09548();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerToken.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_166_3();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB91D0, &qword_1B964D9B8);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - v6;
  OUTLINED_FUNCTION_85_1();
  sub_1B8F1B8B8();
  v8 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerToken.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_686();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = OUTLINED_FUNCTION_7_6();
    sub_1B8F0F4F0(v9, v10, v11, v12);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7_6();
    sub_1B8F0F2DC(v13, v14, v15, v16);
  }

  OUTLINED_FUNCTION_47_3();
  result = sub_1B8F095E8();
  if (!v1)
  {
LABEL_6:
    v18 = v0 + *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerToken(0) + 20);
    OUTLINED_FUNCTION_12();
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B8F0F2DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB91D0, &qword_1B964D9B8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenText(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8F1B8B8();
  v10 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerToken.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB91D0, &qword_1B964D9B8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1B8F09548();
      sub_1B8CD2378(qword_1ED9D3350, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenText);
      sub_1B964C740();
      return sub_1B8F095E8();
    }

    result = sub_1B8F095E8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8F0F4F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB91D0, &qword_1B964D9B8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenSymbol(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8F1B8B8();
  v10 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerToken.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB91D0, &qword_1B964D9B8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8F09548();
      sub_1B8CD2378(&qword_1EBABEB08, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenSymbol);
      sub_1B964C740();
      return sub_1B8F095E8();
    }

    result = sub_1B8F095E8();
  }

  __break(1u);
  return result;
}

void static Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerToken.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_280();
  v2 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerToken.OneOf_Value(v1);
  v3 = OUTLINED_FUNCTION_59_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_31_8();
  v6 = OUTLINED_FUNCTION_686();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_208();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB91D8, &unk_1B964D9C0);
  OUTLINED_FUNCTION_183(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_88();
  v17 = *(v16 + 56);
  OUTLINED_FUNCTION_89_3();
  OUTLINED_FUNCTION_92_1();
  sub_1B8F1B8B8();
  v18 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v18, v19, v2);
  if (v20)
  {
    OUTLINED_FUNCTION_178(v0 + v17, 1, v2);
    if (v20)
    {
      sub_1B8D9207C(v0, &qword_1EBAB91D0, &qword_1B964D9B8);
LABEL_12:
      v24 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerToken(0);
      OUTLINED_FUNCTION_156_4(v24);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_35();
      sub_1B8CD2378(v25, v26);
      v21 = OUTLINED_FUNCTION_634();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_177_1();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_178(v0 + v17, 1, v2);
  if (v20)
  {
    OUTLINED_FUNCTION_47_3();
    sub_1B8F095E8();
LABEL_9:
    sub_1B8D9207C(v0, &qword_1EBAB91D8, &unk_1B964D9C0);
    goto LABEL_10;
  }

  sub_1B8F09548();
  OUTLINED_FUNCTION_246();
  static Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerToken.OneOf_Value.== infix(_:_:)();
  v23 = v22;
  sub_1B8F095E8();
  sub_1B8F095E8();
  sub_1B8D9207C(v0, &qword_1EBAB91D0, &qword_1B964D9B8);
  if (v23)
  {
    goto LABEL_12;
  }

LABEL_10:
  v21 = 0;
LABEL_13:
  OUTLINED_FUNCTION_264(v21);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8F0F9D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2378(&qword_1EBABEC50, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerToken);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8F0FA54(uint64_t a1)
{
  v2 = sub_1B8CD2378(&qword_1ED9CE0E8, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerToken);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8F0FAC4()
{
  sub_1B8CD2378(&qword_1ED9CE0E8, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerToken);

  return sub_1B964C5D0();
}

void sub_1B8F0FC28()
{
  while (1)
  {
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 1)
    {
      sub_1B8F18368();
    }
  }
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerStep.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (OUTLINED_FUNCTION_181_2(), OUTLINED_FUNCTION_13_10(), sub_1B8CD2378(v2, v3), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
  {
    v5 = *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerStep(0) + 20);
    return OUTLINED_FUNCTION_8_1();
  }

  return result;
}

uint64_t sub_1B8F0FE14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2378(&qword_1EBABEC48, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerStep);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8F0FE94(uint64_t a1)
{
  v2 = sub_1B8CD2378(&qword_1ED9CE118, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerStep);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8F0FF04()
{
  sub_1B8CD2378(&qword_1ED9CE118, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerStep);

  return sub_1B964C5D0();
}

uint64_t sub_1B8F0FFC8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1ED9CDC68);
  __swift_project_value_buffer(v0, qword_1ED9CDC68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1B964E4A0;
  v4 = v19 + v3 + v1[14];
  *(v19 + v3) = 1;
  *v4 = "title";
  *(v4 + 8) = 5;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v19 + v3 + v2 + v1[14];
  *(v19 + v3 + v2) = 2;
  *v8 = "summary";
  *(v8 + 8) = 7;
  *(v8 + 16) = 2;
  v7();
  v9 = (v19 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "steps";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v7();
  v11 = (v19 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "intro";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v7();
  v13 = (v19 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "outro";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v7();
  v15 = (v19 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "list_style";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v17 = *MEMORY[0x1E69AADE8];
  v7();
  return sub_1B964C760();
}

void Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Answer.decodeMessage<A>(decoder:)()
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
        OUTLINED_FUNCTION_9();
        sub_1B8F18368();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B8F103B4();
        break;
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B8F10454();
        break;
      case 4:
        OUTLINED_FUNCTION_9();
        sub_1B8F104F4();
        break;
      case 5:
        OUTLINED_FUNCTION_9();
        sub_1B8F10594();
        break;
      case 6:
        OUTLINED_FUNCTION_9();
        sub_1B8F10634();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8F103B4()
{
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerToken(0);
  sub_1B8CD2378(&qword_1ED9CE0E8, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerToken);
  return sub_1B964C570();
}

uint64_t sub_1B8F10454()
{
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerStep(0);
  sub_1B8CD2378(&qword_1ED9CE118, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerStep);
  return sub_1B964C570();
}

uint64_t sub_1B8F104F4()
{
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerToken(0);
  sub_1B8CD2378(&qword_1ED9CE0E8, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerToken);
  return sub_1B964C570();
}

uint64_t sub_1B8F10594()
{
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerToken(0);
  sub_1B8CD2378(&qword_1ED9CE0E8, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerToken);
  return sub_1B964C570();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Answer.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (OUTLINED_FUNCTION_181_2(), OUTLINED_FUNCTION_13_10(), sub_1B8CD2378(v3, v4), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
  {
    if (!*(*(v2 + 8) + 16) || (OUTLINED_FUNCTION_181_2(), OUTLINED_FUNCTION_13_10(), sub_1B8CD2378(v6, v7), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
    {
      if (!*(*(v2 + 16) + 16) || (type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerStep(0), sub_1B8CD2378(&qword_1ED9CE118, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerStep), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
      {
        if (!*(*(v2 + 24) + 16) || (OUTLINED_FUNCTION_181_2(), OUTLINED_FUNCTION_13_10(), sub_1B8CD2378(v8, v9), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
        {
          if (!*(*(v2 + 32) + 16) || (OUTLINED_FUNCTION_181_2(), OUTLINED_FUNCTION_13_10(), sub_1B8CD2378(v10, v11), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
          {
            if (!*(v2 + 40) || (v13 = *(v2 + 40), v14 = *(v2 + 48), sub_1B8F189B8(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
            {
              v12 = *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Answer(0) + 40);
              return OUTLINED_FUNCTION_8_1();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Answer.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v3 = *v2;
  v5 = *v4;
  sub_1B8D7EFB0();
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(v1 + 8);
  v8 = *(v0 + 8);
  sub_1B8D7EFB0();
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = *(v1 + 16);
  v11 = *(v0 + 16);
  sub_1B8D7F638();
  if ((v12 & 1) == 0)
  {
    return 0;
  }

  v13 = *(v1 + 24);
  v14 = *(v0 + 24);
  sub_1B8D7EFB0();
  if ((v15 & 1) == 0)
  {
    return 0;
  }

  v16 = *(v1 + 32);
  v17 = *(v0 + 32);
  sub_1B8D7EFB0();
  if ((v18 & 1) == 0)
  {
    return 0;
  }

  v19 = *(v0 + 48);
  if (!sub_1B8D92198(*(v1 + 40), *(v1 + 48), *(v0 + 40)))
  {
    return 0;
  }

  v20 = *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Answer(0) + 40);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_35();
  sub_1B8CD2378(v21, v22);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8F10A3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2378(&qword_1EBABEC40, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Answer);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8F10ABC(uint64_t a1)
{
  v2 = sub_1B8CD2378(&qword_1ED9CDC58, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Answer);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8F10B2C()
{
  sub_1B8CD2378(&qword_1ED9CDC58, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Answer);

  return sub_1B964C5D0();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionUrl.decodeMessage<A>(decoder:)()
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
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionUrl.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_15();
  if (!v1 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v0))
  {
    v3 = *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionUrl(0) + 20);
    return OUTLINED_FUNCTION_8_1();
  }

  return result;
}

uint64_t sub_1B8F10D6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2378(&qword_1EBABEC38, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionUrl);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8F10DEC(uint64_t a1)
{
  v2 = sub_1B8CD2378(&qword_1EBABEB38, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionUrl);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8F10E5C()
{
  sub_1B8CD2378(&qword_1EBABEB38, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionUrl);

  return sub_1B964C5D0();
}

uint64_t sub_1B8F10F2C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB58B8);
  __swift_project_value_buffer(v0, qword_1EBAB58B8);
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
  *v10 = "bundle_id";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "parameters";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionIntent.decodeMessage<A>(decoder:)()
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

    if (result == 3)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C4D0();
    }

    else if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionIntent.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_15();
  if (!v3 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), (v0 = v1) == 0))
  {
    v5 = v2[2];
    v6 = v2[3];
    OUTLINED_FUNCTION_1();
    if (!v7 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), (v0 = v1) == 0))
    {
      if (!*(v2[4] + 16) || (OUTLINED_FUNCTION_24_3(), result = sub_1B964C6E0(), !v0))
      {
        v8 = *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionIntent(0) + 28);
        return OUTLINED_FUNCTION_8_1();
      }
    }
  }

  return result;
}

uint64_t sub_1B8F11314(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2378(&qword_1EBABEC30, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionIntent);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8F11394(uint64_t a1)
{
  v2 = sub_1B8CD2378(qword_1ED9CDEE8, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionIntent);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8F11404()
{
  sub_1B8CD2378(qword_1ED9CDEE8, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionIntent);

  return sub_1B964C5D0();
}

uint64_t sub_1B8F114C8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB57F8);
  __swift_project_value_buffer(v0, qword_1EBAB57F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "label";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "url";
  *(v10 + 8) = 3;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "intent";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "id";
  *(v14 + 1) = 2;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action.decodeMessage<A>(decoder:)()
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
        sub_1B964C530();
        break;
      case 2:
        v7 = OUTLINED_FUNCTION_17_3();
        sub_1B8F117CC(v7, v8, v9, v10);
        break;
      case 3:
        v3 = OUTLINED_FUNCTION_17_3();
        sub_1B8F11CD0(v3, v4, v5, v6);
        break;
      case 4:
        OUTLINED_FUNCTION_9();
        sub_1B8F121D4();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8F117CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a3;
  v36 = a4;
  v37 = a2;
  v5 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionUrl(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v33 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB91F0, &qword_1B96693D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v29 - v11;
  v13 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action.OneOf_Value(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABEC90, &qword_1B966BBB0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v29 - v21;
  __swift_storeEnumTagSinglePayload(&v29 - v21, 1, 1, v5);
  v29 = *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action(0) + 20);
  v30 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v32 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB91F0, &qword_1B96693D0);
  }

  else
  {
    sub_1B8F09548();
    sub_1B8F09548();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8F095E8();
    }

    else
    {
      sub_1B8D9207C(v22, &qword_1EBABEC90, &qword_1B966BBB0);
      sub_1B8F09548();
      sub_1B8F09548();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }
  }

  sub_1B8CD2378(&qword_1EBABEB38, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionUrl);
  v23 = v34;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBABEC90, &qword_1B966BBB0);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBABEC90, &qword_1B966BBB0);
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBABEC90, &qword_1B966BBB0);
  }

  sub_1B8F09548();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v32;
  sub_1B8D9207C(v22, &qword_1EBABEC90, &qword_1B966BBB0);
  v28 = v29;
  v27 = v30;
  sub_1B8D9207C(v30 + v29, &qword_1EBAB91F0, &qword_1B96693D0);
  sub_1B8F09548();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27 + v28, 0, 1, v26);
}

uint64_t sub_1B8F11CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a3;
  v36 = a4;
  v37 = a2;
  v5 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionIntent(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v33 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB91F0, &qword_1B96693D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v29 - v11;
  v13 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action.OneOf_Value(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABEC98, &qword_1B966BBB8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v29 - v21;
  __swift_storeEnumTagSinglePayload(&v29 - v21, 1, 1, v5);
  v29 = *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action(0) + 20);
  v30 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v32 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB91F0, &qword_1B96693D0);
  }

  else
  {
    sub_1B8F09548();
    sub_1B8F09548();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8D9207C(v22, &qword_1EBABEC98, &qword_1B966BBB8);
      sub_1B8F09548();
      sub_1B8F09548();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B8F095E8();
    }
  }

  sub_1B8CD2378(qword_1ED9CDEE8, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionIntent);
  v23 = v34;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBABEC98, &qword_1B966BBB8);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBABEC98, &qword_1B966BBB8);
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBABEC98, &qword_1B966BBB8);
  }

  sub_1B8F09548();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v32;
  sub_1B8D9207C(v22, &qword_1EBABEC98, &qword_1B966BBB8);
  v28 = v29;
  v27 = v30;
  sub_1B8D9207C(v30 + v29, &qword_1EBAB91F0, &qword_1B96693D0);
  sub_1B8F09548();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27 + v28, 0, 1, v26);
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB91F0, &qword_1B96693D0);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - v8;
  v10 = *v1;
  v11 = v1[1];
  OUTLINED_FUNCTION_1();
  if (!v12 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), (v0 = v2) == 0))
  {
    v14 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action(0);
    v15 = v14[5];
    sub_1B8F1B8B8();
    v16 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action.OneOf_Value(0);
    if (__swift_getEnumTagSinglePayload(v9, 1, v16) == 1)
    {
      goto LABEL_8;
    }

    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_491();
      OUTLINED_FUNCTION_24_3();
      v2 = v0;
      sub_1B8F125D4(v17, v18, v19, v20);
    }

    else
    {
      OUTLINED_FUNCTION_491();
      OUTLINED_FUNCTION_24_3();
      v2 = v0;
      sub_1B8F123B4(v21, v22, v23, v24);
    }

    OUTLINED_FUNCTION_3_20();
    result = sub_1B8F095E8();
    if (!v2)
    {
LABEL_8:
      v25 = (v3 + v14[6]);
      v26 = *v25;
      v27 = v25[1];
      OUTLINED_FUNCTION_1();
      if (!v28 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v2))
      {
        v29 = v14[7];
        return OUTLINED_FUNCTION_8_1();
      }
    }
  }

  return result;
}

uint64_t sub_1B8F123B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB91F0, &qword_1B96693D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionUrl(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v10 = *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action(0) + 20);
  sub_1B8F1B8B8();
  v11 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB91F0, &qword_1B96693D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1B8F09548();
      sub_1B8CD2378(&qword_1EBABEB38, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionUrl);
      sub_1B964C740();
      return sub_1B8F095E8();
    }

    result = sub_1B8F095E8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8F125D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB91F0, &qword_1B96693D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionIntent(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v10 = *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action(0) + 20);
  sub_1B8F1B8B8();
  v11 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB91F0, &qword_1B96693D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8F09548();
      sub_1B8CD2378(qword_1ED9CDEE8, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ActionIntent);
      sub_1B964C740();
      return sub_1B8F095E8();
    }

    result = sub_1B8F095E8();
  }

  __break(1u);
  return result;
}

void static Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_280();
  v4 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action.OneOf_Value(v3);
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_31_8();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB91F0, &qword_1B96693D0);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_137();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB91F8, &unk_1B964D9E0);
  OUTLINED_FUNCTION_59_1(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_88();
  v16 = *v1 == *v0 && v1[1] == v0[1];
  if (!v16 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_15;
  }

  v33 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action(0);
  v17 = v33[5];
  v18 = *(v12 + 48);
  OUTLINED_FUNCTION_85_1();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_85_1();
  sub_1B8F1B8B8();
  v19 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v19, v20, v4);
  if (!v16)
  {
    OUTLINED_FUNCTION_1_0();
    sub_1B8F1B8B8();
    OUTLINED_FUNCTION_178(v2 + v18, 1, v4);
    if (!v21)
    {
      sub_1B8F09548();
      static Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action.OneOf_Value.== infix(_:_:)();
      v24 = v23;
      sub_1B8F095E8();
      OUTLINED_FUNCTION_207_2();
      sub_1B8D9207C(v2, &qword_1EBAB91F0, &qword_1B96693D0);
      if ((v24 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_17;
    }

    OUTLINED_FUNCTION_3_20();
    sub_1B8F095E8();
LABEL_14:
    sub_1B8D9207C(v2, &qword_1EBAB91F8, &unk_1B964D9E0);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_178(v2 + v18, 1, v4);
  if (!v16)
  {
    goto LABEL_14;
  }

  sub_1B8D9207C(v2, &qword_1EBAB91F0, &qword_1B96693D0);
LABEL_17:
  v25 = v33[6];
  v26 = *(v1 + v25);
  v27 = *(v1 + v25 + 8);
  v28 = (v0 + v25);
  v29 = v26 == *v28 && v27 == v28[1];
  if (v29 || (sub_1B964C9F0() & 1) != 0)
  {
    v30 = v33[7];
    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_35();
    sub_1B8CD2378(v31, v32);
    v22 = OUTLINED_FUNCTION_634();
    goto LABEL_23;
  }

LABEL_15:
  v22 = 0;
LABEL_23:
  OUTLINED_FUNCTION_264(v22);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8F12B34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2378(&qword_1EBABEC28, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8F12BB4(uint64_t a1)
{
  v2 = sub_1B8CD2378(&qword_1ED9CDC88, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8F12C24()
{
  sub_1B8CD2378(&qword_1ED9CDC88, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action);

  return sub_1B964C5D0();
}

uint64_t sub_1B8F12CF4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABE8B8);
  __swift_project_value_buffer(v0, qword_1EBABE8B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "suggestion_text";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "suggestion_type";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "app_intent";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "app_bundle";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.SiriSuggestion.decodeMessage<A>(decoder:)()
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
      case 3:
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B8F12FEC();
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.SiriSuggestion.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_15();
  if (!v2 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v0))
  {
    if (!*(v1 + 16) || (v11 = *(v1 + 16), v12 = *(v1 + 24), sub_1B8F18A0C(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v0))
    {
      v4 = *(v1 + 32);
      v5 = *(v1 + 40);
      OUTLINED_FUNCTION_1();
      if (!v6 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v0))
      {
        v7 = *(v1 + 48);
        v8 = *(v1 + 56);
        OUTLINED_FUNCTION_1();
        if (!v9 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v0))
        {
          v10 = *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.SiriSuggestion(0) + 32);
          return OUTLINED_FUNCTION_8_1();
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.SiriSuggestion.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v7 = *(v3 + 16);
  v8 = *(v2 + 16);
  if (*(v2 + 24) == 1)
  {
    if (v8)
    {
      if (v8 == 1)
      {
        if (v7 != 1)
        {
          return 0;
        }
      }

      else if (v7 != 2)
      {
        return 0;
      }
    }

    else if (v7)
    {
      return 0;
    }
  }

  else if (v7 != v8)
  {
    return 0;
  }

  OUTLINED_FUNCTION_40_5();
  v11 = v6 && v9 == v10;
  if (v11 || (sub_1B964C9F0() & 1) != 0)
  {
    OUTLINED_FUNCTION_167_4();
    v14 = v6 && v12 == v13;
    if (v14 || (sub_1B964C9F0() & 1) != 0)
    {
      v15 = *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.SiriSuggestion(0) + 32);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_35();
      sub_1B8CD2378(v16, v17);
      return OUTLINED_FUNCTION_634() & 1;
    }
  }

  return 0;
}

uint64_t sub_1B8F132CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2378(&qword_1EBABEC20, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.SiriSuggestion);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8F1334C(uint64_t a1)
{
  v2 = sub_1B8CD2378(&qword_1EBABEB60, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.SiriSuggestion);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8F133BC()
{
  sub_1B8CD2378(&qword_1EBABEB60, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.SiriSuggestion);

  return sub_1B964C5D0();
}

uint64_t sub_1B8F13488()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB58D8);
  __swift_project_value_buffer(v0, qword_1EBAB58D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "tag_name";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "values";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ContextTags.decodeMessage<A>(decoder:)()
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
      OUTLINED_FUNCTION_12();
      sub_1B964C4D0();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ContextTags.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_15();
  if (!v3 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), (v0 = v1) == 0))
  {
    if (!*(*(v2 + 16) + 16) || (OUTLINED_FUNCTION_24_3(), result = sub_1B964C6E0(), !v0))
    {
      v5 = *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ContextTags(0) + 24);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t static Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ContextTags.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0 || (sub_1B8D6123C(*(v3 + 16), *(v2 + 16)) & 1) == 0)
  {
    return 0;
  }

  v7 = *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ContextTags(0) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_35();
  sub_1B8CD2378(v8, v9);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8F13894(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2378(&qword_1EBABEC18, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ContextTags);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8F13914(uint64_t a1)
{
  v2 = sub_1B8CD2378(qword_1ED9CDF90, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ContextTags);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8F13984()
{
  sub_1B8CD2378(qword_1ED9CDF90, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.ContextTags);

  return sub_1B964C5D0();
}

uint64_t sub_1B8F13A48()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB57D8);
  __swift_project_value_buffer(v0, qword_1EBAB57D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1B9650810;
  v4 = v21 + v3 + v1[14];
  *(v21 + v3) = 1;
  *v4 = "topic_name";
  *(v4 + 8) = 10;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v21 + v3 + v2 + v1[14];
  *(v21 + v3 + v2) = 2;
  *v8 = "type";
  *(v8 + 8) = 4;
  *(v8 + 16) = 2;
  v9 = *MEMORY[0x1E69AADC8];
  v7();
  v10 = (v21 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "user_guide_name";
  *(v11 + 1) = 15;
  v11[16] = 2;
  v7();
  v12 = (v21 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "product_id";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v7();
  v14 = (v21 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "topic_id";
  *(v15 + 1) = 8;
  v15[16] = 2;
  v7();
  v16 = (v21 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "url";
  *(v17 + 1) = 3;
  v17[16] = 2;
  v7();
  v18 = (v21 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "preview_summary";
  *(v19 + 1) = 15;
  v19[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Source.decodeMessage<A>(decoder:)()
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
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Source.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_15();
  if (!v2 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v0))
  {
    v4 = v1[2];
    v5 = v1[3];
    OUTLINED_FUNCTION_1();
    if (!v6 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v0))
    {
      v7 = v1[4];
      v8 = v1[5];
      OUTLINED_FUNCTION_1();
      if (!v9 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v0))
      {
        v10 = v1[6];
        v11 = v1[7];
        OUTLINED_FUNCTION_1();
        if (!v12 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v0))
        {
          v13 = v1[8];
          v14 = v1[9];
          OUTLINED_FUNCTION_1();
          if (!v15 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v0))
          {
            v16 = v1[10];
            v17 = v1[11];
            OUTLINED_FUNCTION_1();
            if (!v18 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v0))
            {
              v19 = v1[12];
              v20 = v1[13];
              OUTLINED_FUNCTION_1();
              if (!v21 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v0))
              {
                v22 = *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Source(0) + 44);
                return OUTLINED_FUNCTION_8_1();
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Source.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v9 = v6 && v7 == v8;
  if (!v9 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_40_5();
  v12 = v6 && v10 == v11;
  if (!v12 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_167_4();
  v15 = v6 && v13 == v14;
  if (!v15 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v16 = v3[8] == v2[8] && v3[9] == v2[9];
  if (!v16 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v17 = v3[10] == v2[10] && v3[11] == v2[11];
  if (!v17 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v18 = v3[12] == v2[12] && v3[13] == v2[13];
  if (!v18 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v19 = *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Source(0) + 44);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_35();
  sub_1B8CD2378(v20, v21);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8F14108(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2378(&qword_1EBABEC10, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Source);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8F14188(uint64_t a1)
{
  v2 = sub_1B8CD2378(&qword_1ED9CDC48, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Source);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8F141F8()
{
  sub_1B8CD2378(&qword_1ED9CDC48, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Source);

  return sub_1B964C5D0();
}

uint64_t sub_1B8F14278()
{
  result = MEMORY[0x1BFADC850](0xD000000000000011, 0x80000001B96F2B00);
  qword_1EBABE8F0 = 0xD000000000000046;
  *algn_1EBABE8F8 = 0x80000001B96F27B0;
  return result;
}

uint64_t sub_1B8F1430C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB5878);
  __swift_project_value_buffer(v0, qword_1EBAB5878);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1B964EE70;
  v4 = v18 + v3;
  v5 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v5 = "label";
  *(v5 + 8) = 5;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "product_id";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v10 = *MEMORY[0x1E69AADE8];
  v8();
  v11 = (v4 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "topic_id";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v8();
  v13 = (v4 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "url";
  *(v14 + 1) = 3;
  v14[16] = 2;
  v8();
  v15 = (v4 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "user_guide_name";
  *(v16 + 1) = 15;
  v16[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionTopic.decodeMessage<A>(decoder:)()
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
      case 2:
      case 3:
      case 4:
      case 5:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionTopic.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_15();
  if (!v2 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v0))
  {
    v4 = v1[2];
    v5 = v1[3];
    OUTLINED_FUNCTION_1();
    if (!v6 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v0))
    {
      v7 = v1[4];
      v8 = v1[5];
      OUTLINED_FUNCTION_1();
      if (!v9 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v0))
      {
        v10 = v1[6];
        v11 = v1[7];
        OUTLINED_FUNCTION_1();
        if (!v12 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v0))
        {
          v13 = v1[8];
          v14 = v1[9];
          OUTLINED_FUNCTION_1();
          if (!v15 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v0))
          {
            v16 = *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionTopic(0) + 36);
            return OUTLINED_FUNCTION_8_1();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B8F147C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2378(&qword_1EBABEC08, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionTopic);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8F14848(uint64_t a1)
{
  v2 = sub_1B8CD2378(qword_1ED9CDDF0, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionTopic);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8F148B8()
{
  sub_1B8CD2378(qword_1ED9CDDF0, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionTopic);

  return sub_1B964C5D0();
}

uint64_t sub_1B8F14938()
{
  result = MEMORY[0x1BFADC850](0xD000000000000013, 0x80000001B96F2AD0);
  qword_1EBABE900 = 0xD000000000000046;
  *algn_1EBABE908 = 0x80000001B96F27B0;
  return result;
}

uint64_t sub_1B8F149E0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = sub_1B964C780();
  __swift_allocate_value_buffer(v4, a2);
  __swift_project_value_buffer(v4, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v5 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v6 = *(*v5 + 72);
  v7 = (*(*v5 + 80) + 32) & ~*(*v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B964EE60;
  v9 = (v8 + v7);
  v10 = v8 + v7 + v5[14];
  *v9 = 1;
  *v10 = "label";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v12 = sub_1B964C750();
  OUTLINED_FUNCTION_59_1(v12);
  v14 = *(v13 + 104);
  (v14)(v10, v11, v12);
  v15 = v9 + v6 + v5[14];
  *(v9 + v6) = 2;
  *v15 = a3;
  *(v15 + 1) = 10;
  v15[16] = 2;
  v16 = *MEMORY[0x1E69AADE8];
  v14();
  v17 = (v9 + 2 * v6);
  v18 = v17 + v5[14];
  *v17 = 3;
  *v18 = "url";
  *(v18 + 1) = 3;
  v18[16] = 2;
  v14();
  return sub_1B964C760();
}

uint64_t sub_1B8F14CA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2378(&qword_1EBABEC00, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionArticle);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8F14D20(uint64_t a1)
{
  v2 = sub_1B8CD2378(qword_1ED9CDD40, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionArticle);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8F14D90()
{
  sub_1B8CD2378(qword_1ED9CDD40, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionArticle);

  return sub_1B964C5D0();
}

uint64_t sub_1B8F14E10()
{
  result = MEMORY[0x1BFADC850](0xD000000000000011, 0x80000001B96F2AB0);
  qword_1EBABE910 = 0xD000000000000046;
  *algn_1EBABE918 = 0x80000001B96F27B0;
  return result;
}

uint64_t sub_1B8F14EF4()
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

    if (result == 3 || result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t sub_1B8F14F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_1_15();
  if (!v7 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v4))
  {
    v9 = v5[2];
    v10 = v5[3];
    OUTLINED_FUNCTION_1();
    if (!v11 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v4))
    {
      v12 = v5[4];
      v13 = v5[5];
      OUTLINED_FUNCTION_1();
      if (!v14 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v4))
      {
        v15 = *(a4(0) + 28);
        return OUTLINED_FUNCTION_8_1();
      }
    }
  }

  return result;
}

uint64_t sub_1B8F150BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2378(&qword_1EBABEBF8, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionGuide);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8F1513C(uint64_t a1)
{
  v2 = sub_1B8CD2378(&qword_1EBABEB98, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionGuide);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8F151AC()
{
  sub_1B8CD2378(&qword_1EBABEB98, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionGuide);

  return sub_1B964C5D0();
}

uint64_t sub_1B8F15278()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB58F8);
  __swift_project_value_buffer(v0, qword_1EBAB58F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "topic";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "article";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "guide";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution.decodeMessage<A>(decoder:)()
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
        v11 = OUTLINED_FUNCTION_17_3();
        sub_1B8F15F10(v11, v12, v13, v14);
        break;
      case 2:
        v7 = OUTLINED_FUNCTION_17_3();
        sub_1B8F15A18(v7, v8, v9, v10);
        break;
      case 1:
        v3 = OUTLINED_FUNCTION_17_3();
        sub_1B8F15520(v3, v4, v5, v6);
        break;
    }
  }

  return result;
}

uint64_t sub_1B8F15520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionTopic(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB91E0, &qword_1B96693E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution.OneOf_Value(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABEC78, &qword_1B966BB98);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB91E0, &qword_1B96693E0);
  }

  else
  {
    sub_1B8F09548();
    sub_1B8F09548();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1B8F095E8();
    }

    else
    {
      sub_1B8D9207C(v22, &qword_1EBABEC78, &qword_1B966BB98);
      sub_1B8F09548();
      sub_1B8F09548();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }
  }

  sub_1B8CD2378(qword_1ED9CDDF0, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionTopic);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBABEC78, &qword_1B966BB98);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBABEC78, &qword_1B966BB98);
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBABEC78, &qword_1B966BB98);
  }

  sub_1B8F09548();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBABEC78, &qword_1B966BB98);
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB91E0, &qword_1B96693E0);
  sub_1B8F09548();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B8F15A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionArticle(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB91E0, &qword_1B96693E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution.OneOf_Value(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABEC80, &qword_1B966BBA0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB91E0, &qword_1B96693E0);
  }

  else
  {
    sub_1B8F09548();
    sub_1B8F09548();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8D9207C(v22, &qword_1EBABEC80, &qword_1B966BBA0);
      sub_1B8F09548();
      sub_1B8F09548();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B8F095E8();
    }
  }

  sub_1B8CD2378(qword_1ED9CDD40, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionArticle);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBABEC80, &qword_1B966BBA0);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBABEC80, &qword_1B966BBA0);
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBABEC80, &qword_1B966BBA0);
  }

  sub_1B8F09548();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBABEC80, &qword_1B966BBA0);
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB91E0, &qword_1B96693E0);
  sub_1B8F09548();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B8F15F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionGuide(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB91E0, &qword_1B96693E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution.OneOf_Value(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABEC88, &qword_1B966BBA8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB91E0, &qword_1B96693E0);
  }

  else
  {
    sub_1B8F09548();
    sub_1B8F09548();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B8D9207C(v22, &qword_1EBABEC88, &qword_1B966BBA8);
      sub_1B8F09548();
      sub_1B8F09548();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B8F095E8();
    }
  }

  sub_1B8CD2378(&qword_1EBABEB98, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionGuide);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBABEC88, &qword_1B966BBA8);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBABEC88, &qword_1B966BBA8);
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBABEC88, &qword_1B966BBA8);
  }

  sub_1B8F09548();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBABEC88, &qword_1B966BBA8);
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB91E0, &qword_1B96693E0);
  sub_1B8F09548();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_166_3();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB91E0, &qword_1B96693E0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - v6;
  OUTLINED_FUNCTION_85_1();
  sub_1B8F1B8B8();
  v8 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_686();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v10 = OUTLINED_FUNCTION_7_6();
      sub_1B8F16748(v10, v11, v12, v13);
    }

    else
    {
      v18 = OUTLINED_FUNCTION_7_6();
      sub_1B8F1695C(v18, v19, v20, v21);
    }
  }

  else
  {
    v14 = OUTLINED_FUNCTION_7_6();
    sub_1B8F16538(v14, v15, v16, v17);
  }

  OUTLINED_FUNCTION_53_4();
  result = sub_1B8F095E8();
  if (!v1)
  {
LABEL_8:
    v23 = v0 + *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution(0) + 20);
    OUTLINED_FUNCTION_12();
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B8F16538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB91E0, &qword_1B96693E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionTopic(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8F1B8B8();
  v10 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB91E0, &qword_1B96693E0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1B8F09548();
      sub_1B8CD2378(qword_1ED9CDDF0, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionTopic);
      sub_1B964C740();
      return sub_1B8F095E8();
    }

    result = sub_1B8F095E8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8F16748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB91E0, &qword_1B96693E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionArticle(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8F1B8B8();
  v10 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB91E0, &qword_1B96693E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8F09548();
      sub_1B8CD2378(qword_1ED9CDD40, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionArticle);
      sub_1B964C740();
      return sub_1B8F095E8();
    }

    result = sub_1B8F095E8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8F1695C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB91E0, &qword_1B96693E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionGuide(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8F1B8B8();
  v10 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB91E0, &qword_1B96693E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B8F09548();
      sub_1B8CD2378(&qword_1EBABEB98, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionGuide);
      sub_1B964C740();
      return sub_1B8F095E8();
    }

    result = sub_1B8F095E8();
  }

  __break(1u);
  return result;
}

void static Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_280();
  v2 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution.OneOf_Value(v1);
  v3 = OUTLINED_FUNCTION_59_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_31_8();
  v6 = OUTLINED_FUNCTION_686();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_208();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB91E8, &unk_1B964D9D0);
  OUTLINED_FUNCTION_183(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_88();
  v17 = *(v16 + 56);
  OUTLINED_FUNCTION_89_3();
  OUTLINED_FUNCTION_92_1();
  sub_1B8F1B8B8();
  v18 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v18, v19, v2);
  if (v20)
  {
    OUTLINED_FUNCTION_178(v0 + v17, 1, v2);
    if (v20)
    {
      sub_1B8D9207C(v0, &qword_1EBAB91E0, &qword_1B96693E0);
LABEL_12:
      v24 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution(0);
      OUTLINED_FUNCTION_156_4(v24);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_35();
      sub_1B8CD2378(v25, v26);
      v21 = OUTLINED_FUNCTION_634();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_177_1();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_178(v0 + v17, 1, v2);
  if (v20)
  {
    OUTLINED_FUNCTION_53_4();
    sub_1B8F095E8();
LABEL_9:
    sub_1B8D9207C(v0, &qword_1EBAB91E8, &unk_1B964D9D0);
    goto LABEL_10;
  }

  sub_1B8F09548();
  OUTLINED_FUNCTION_246();
  static Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution.OneOf_Value.== infix(_:_:)();
  v23 = v22;
  sub_1B8F095E8();
  sub_1B8F095E8();
  sub_1B8D9207C(v0, &qword_1EBAB91E0, &qword_1B96693E0);
  if (v23)
  {
    goto LABEL_12;
  }

LABEL_10:
  v21 = 0;
LABEL_13:
  OUTLINED_FUNCTION_264(v21);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8F16E40(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2378(&qword_1EBABEBF0, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8F16EC0(uint64_t a1)
{
  v2 = sub_1B8CD2378(qword_1ED9CE030, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8F16F30()
{
  sub_1B8CD2378(qword_1ED9CE030, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Attribution);

  return sub_1B964C5D0();
}

uint64_t sub_1B8F17018(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1B964C780();
  __swift_allocate_value_buffer(v7, a2);
  v8 = OUTLINED_FUNCTION_246();
  __swift_project_value_buffer(v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40);
  OUTLINED_FUNCTION_193_2(v10);
  v12 = *(v11 + 72);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1B964D060;
  v16 = (v15 + v14);
  v17 = v15 + v14 + *(v7 + 56);
  *v16 = 1;
  *v17 = a3;
  *(v17 + 8) = 4;
  *(v17 + 16) = 2;
  v18 = *MEMORY[0x1E69AADC8];
  v19 = sub_1B964C750();
  OUTLINED_FUNCTION_59_1(v19);
  v21 = *(v20 + 104);
  (v21)(v17, v18, v19);
  v22 = v16 + v12 + *(v7 + 56);
  *(v16 + v12) = 2;
  *v22 = a4;
  *(v22 + 1) = a5;
  v22[16] = 2;
  v21();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.FileAsset.decodeMessage<A>(decoder:)()
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

    if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.FileAsset.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_15();
  if (!v2 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v0))
  {
    v4 = *(v1 + 16);
    v5 = *(v1 + 24);
    OUTLINED_FUNCTION_1();
    if (!v6 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v0))
    {
      v7 = *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.FileAsset(0) + 24);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t static Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.FileAsset.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v4 = v4 && v2 == v3;
  if (!v4 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v7 = v4 && v5 == v6;
  if (!v7 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v8 = *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.FileAsset(0) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_35();
  sub_1B8CD2378(v9, v10);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8F173F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2378(&qword_1EBABEBE8, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.FileAsset);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8F17470(uint64_t a1)
{
  v2 = sub_1B8CD2378(&qword_1ED9CDB70, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.FileAsset);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8F174E0()
{
  sub_1B8CD2378(&qword_1ED9CDB70, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.FileAsset);

  return sub_1B964C5D0();
}

uint64_t sub_1B8F17580(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x1BFADC850](a2, a3);
  *a4 = 0xD000000000000046;
  *a5 = 0x80000001B96F27B0;
  return result;
}

uint64_t sub_1B8F1760C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB5818);
  __swift_project_value_buffer(v0, qword_1EBAB5818);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "asset_type";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "alt";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "file_asset";
  *(v13 + 1) = 10;
  v13[16] = 2;
  *(v13 + 3) = "files";
  *(v13 + 4) = 5;
  v13[40] = 2;
  v14 = *MEMORY[0x1E69AADD8];
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Asset.decodeMessage<A>(decoder:)()
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
        sub_1B8F17940();
        break;
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 1:
        OUTLINED_FUNCTION_9();
        sub_1B8F178D8();
        break;
    }
  }

  return result;
}

uint64_t sub_1B8F17940()
{
  v0 = *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Asset(0) + 28);
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.FileAsset(0);
  sub_1B8CD2378(&qword_1ED9CDB70, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.FileAsset);
  return sub_1B964C580();
}

void Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Asset.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_614();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABE998, &unk_1B96693F0);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_151();
  v9 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.FileAsset(v8);
  v10 = OUTLINED_FUNCTION_59_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_62();
  if (!*v0 || (v19 = *(v2 + 8), sub_1B8F18A60(), OUTLINED_FUNCTION_687(), sub_1B964C680(), !v1))
  {
    v13 = *(v2 + 16);
    v14 = *(v2 + 24);
    OUTLINED_FUNCTION_1();
    if (!v15 || (OUTLINED_FUNCTION_49_1(), sub_1B964C700(), !v1))
    {
      v16 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Asset(0);
      v17 = *(v16 + 28);
      sub_1B8F1B8B8();
      if (__swift_getEnumTagSinglePayload(v3, 1, v9) == 1)
      {
        sub_1B8D9207C(v3, &qword_1EBABE998, &unk_1B96693F0);
LABEL_8:
        v18 = *(v16 + 24);
        OUTLINED_FUNCTION_8_1();
        goto LABEL_9;
      }

      OUTLINED_FUNCTION_5_14();
      sub_1B8F09548();
      sub_1B8CD2378(&qword_1ED9CDB70, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.FileAsset);
      OUTLINED_FUNCTION_687();
      sub_1B964C740();
      OUTLINED_FUNCTION_52_3();
      sub_1B8F095E8();
      if (!v1)
      {
        goto LABEL_8;
      }
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Asset.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v5 = OUTLINED_FUNCTION_112();
  v6 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.FileAsset(v5);
  v7 = OUTLINED_FUNCTION_59_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_208();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABE998, &unk_1B96693F0);
  OUTLINED_FUNCTION_183(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_137();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABEA48, &qword_1B9669400);
  OUTLINED_FUNCTION_59_1(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_88();
  v18 = *v1;
  v19 = *v0;
  if (*(v0 + 8) == 1)
  {
    switch(v19)
    {
      case 1:
        if (v18 != 1)
        {
          goto LABEL_39;
        }

        goto LABEL_6;
      case 2:
        if (v18 != 2)
        {
          goto LABEL_39;
        }

        goto LABEL_6;
      case 3:
        if (v18 != 3)
        {
          goto LABEL_39;
        }

        goto LABEL_6;
      default:
        if (!v18)
        {
          goto LABEL_6;
        }

        goto LABEL_39;
    }
  }

  if (v18 != v19)
  {
    goto LABEL_39;
  }

LABEL_6:
  v20 = v1[2] == v0[2] && v1[3] == v0[3];
  if (!v20 && (sub_1B964C9F0() & 1) == 0)
  {
LABEL_39:
    v35 = 0;
    goto LABEL_40;
  }

  v36 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Asset(0);
  v21 = *(v36 + 28);
  v22 = *(v14 + 48);
  OUTLINED_FUNCTION_85_1();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_85_1();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_37_0(v2);
  if (!v20)
  {
    OUTLINED_FUNCTION_1_0();
    sub_1B8F1B8B8();
    OUTLINED_FUNCTION_37_0(v2 + v22);
    if (!v23)
    {
      OUTLINED_FUNCTION_5_14();
      sub_1B8F09548();
      v26 = *v4 == *v3 && v4[1] == v3[1];
      if (v26 || (sub_1B964C9F0() & 1) != 0)
      {
        v27 = v4[2] == v3[2] && v4[3] == v3[3];
        if (v27 || (sub_1B964C9F0() & 1) != 0)
        {
          v28 = *(v6 + 24);
          sub_1B964C2B0();
          OUTLINED_FUNCTION_0_35();
          sub_1B8CD2378(v29, v30);
          v31 = OUTLINED_FUNCTION_198_0();
          sub_1B8F095E8();
          OUTLINED_FUNCTION_207_2();
          sub_1B8D9207C(v2, &qword_1EBABE998, &unk_1B96693F0);
          if (v31)
          {
            goto LABEL_38;
          }

          goto LABEL_39;
        }
      }

      sub_1B8F095E8();
      sub_1B8F095E8();
      v24 = &qword_1EBABE998;
      v25 = &unk_1B96693F0;
LABEL_20:
      sub_1B8D9207C(v2, v24, v25);
      goto LABEL_39;
    }

    OUTLINED_FUNCTION_52_3();
    sub_1B8F095E8();
LABEL_19:
    v24 = &qword_1EBABEA48;
    v25 = &qword_1B9669400;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_37_0(v2 + v22);
  if (!v20)
  {
    goto LABEL_19;
  }

  sub_1B8D9207C(v2, &qword_1EBABE998, &unk_1B96693F0);
LABEL_38:
  v32 = *(v36 + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_35();
  sub_1B8CD2378(v33, v34);
  v35 = OUTLINED_FUNCTION_199_0();
LABEL_40:
  OUTLINED_FUNCTION_264(v35);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8F17FF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2378(&qword_1EBABEBE0, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Asset);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8F18074(uint64_t a1)
{
  v2 = sub_1B8CD2378(qword_1ED9CDC98, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Asset);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8F180E4()
{
  sub_1B8CD2378(qword_1ED9CDC98, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Asset);

  return sub_1B964C5D0();
}

uint64_t sub_1B8F18198(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B964C780();
  __swift_allocate_value_buffer(v8, a2);
  v9 = OUTLINED_FUNCTION_182();
  __swift_project_value_buffer(v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40);
  OUTLINED_FUNCTION_193_2(v11);
  v13 = *(v12 + 72);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1B964D050;
  v17 = v16 + v15 + *(v4 + 56);
  *(v16 + v15) = 1;
  *v17 = a3;
  *(v17 + 8) = a4;
  *(v17 + 16) = 2;
  v18 = *MEMORY[0x1E69AADC8];
  v19 = sub_1B964C750();
  OUTLINED_FUNCTION_21_7(v19);
  (*(v20 + 104))(v17, v18);
  return sub_1B964C760();
}

void sub_1B8F18368()
{
  OUTLINED_FUNCTION_273_0();
  v0(0);
  v1 = OUTLINED_FUNCTION_128();
  sub_1B8CD2378(v1, v2);
  sub_1B964C570();
  OUTLINED_FUNCTION_272_0();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResults.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult(0), sub_1B8CD2378(&qword_1ED9CDB20, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
  {
    v3 = *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResults(0) + 20);
    return OUTLINED_FUNCTION_8_1();
  }

  return result;
}

uint64_t sub_1B8F184D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_468();
  if ((v7(*v5, *v6) & 1) == 0)
  {
    return 0;
  }

  v8 = a4(0);
  OUTLINED_FUNCTION_156_4(v8);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_35();
  sub_1B8CD2378(v9, v10);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8F185A8()
{
  OUTLINED_FUNCTION_111_0();
  v1 = v0;
  sub_1B964CA70();
  v1(0);
  v2 = OUTLINED_FUNCTION_461();
  sub_1B8CD2378(v2, v3);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B8F18680(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2378(&qword_1EBABEBD8, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResults);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8F18700(uint64_t a1)
{
  v2 = sub_1B8CD2378(&qword_1ED9CDB10, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResults);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8F18770()
{
  sub_1B8CD2378(&qword_1ED9CDB10, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResults);

  return sub_1B964C5D0();
}

uint64_t sub_1B8F188B0()
{
  OUTLINED_FUNCTION_468();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_21_7(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_432();
  v7(v6);
  return v0;
}

unint64_t sub_1B8F18964()
{
  result = qword_1EBABE9A8;
  if (!qword_1EBABE9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABE9A8);
  }

  return result;
}

unint64_t sub_1B8F189B8()
{
  result = qword_1ED9CDB40;
  if (!qword_1ED9CDB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9CDB40);
  }

  return result;
}

unint64_t sub_1B8F18A0C()
{
  result = qword_1EBABEA00;
  if (!qword_1EBABEA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABEA00);
  }

  return result;
}

unint64_t sub_1B8F18A60()
{
  result = qword_1ED9CDB90[0];
  if (!qword_1ED9CDB90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED9CDB90);
  }

  return result;
}

unint64_t sub_1B8F18AB8()
{
  result = qword_1ED9CDED0;
  if (!qword_1ED9CDED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9CDED0);
  }

  return result;
}

unint64_t sub_1B8F18B10()
{
  result = qword_1ED9CDEC0;
  if (!qword_1ED9CDEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9CDEC0);
  }

  return result;
}

unint64_t sub_1B8F18B68()
{
  result = qword_1ED9CDEC8;
  if (!qword_1ED9CDEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9CDEC8);
  }

  return result;
}

unint64_t sub_1B8F18BC0()
{
  result = qword_1EBABEA60;
  if (!qword_1EBABEA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABEA60);
  }

  return result;
}

unint64_t sub_1B8F18C18()
{
  result = qword_1EBABEA68;
  if (!qword_1EBABEA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABEA68);
  }

  return result;
}

unint64_t sub_1B8F18C70()
{
  result = qword_1EBABEA70;
  if (!qword_1EBABEA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABEA70);
  }

  return result;
}

unint64_t sub_1B8F18CC8()
{
  result = qword_1ED9CDB38;
  if (!qword_1ED9CDB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9CDB38);
  }

  return result;
}

unint64_t sub_1B8F18D20()
{
  result = qword_1ED9CDB28;
  if (!qword_1ED9CDB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9CDB28);
  }

  return result;
}

unint64_t sub_1B8F18D78()
{
  result = qword_1ED9CDB30;
  if (!qword_1ED9CDB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9CDB30);
  }

  return result;
}

unint64_t sub_1B8F18DD0()
{
  result = qword_1EBABEA78;
  if (!qword_1EBABEA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABEA78);
  }

  return result;
}

unint64_t sub_1B8F18E28()
{
  result = qword_1EBABEA80;
  if (!qword_1EBABEA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABEA80);
  }

  return result;
}

unint64_t sub_1B8F18E80()
{
  result = qword_1EBABEA88;
  if (!qword_1EBABEA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABEA88);
  }

  return result;
}

unint64_t sub_1B8F18ED8()
{
  result = qword_1ED9CDB88;
  if (!qword_1ED9CDB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9CDB88);
  }

  return result;
}

unint64_t sub_1B8F18F30()
{
  result = qword_1ED9CDB78;
  if (!qword_1ED9CDB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9CDB78);
  }

  return result;
}

unint64_t sub_1B8F18F88()
{
  result = qword_1ED9CDB80;
  if (!qword_1ED9CDB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9CDB80);
  }

  return result;
}

uint64_t sub_1B8F1A774()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B8F1A8FC()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B8F1AA2C(319, qword_1ED9F3B30, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Color, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B8F1AA2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1B8F1AB40()
{
  sub_1B8F1AA2C(319, &qword_1ED9EF1A8, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerToken, MEMORY[0x1E69E62F8]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_1B8F1AA2C(319, qword_1ED9EF1B0, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerStep, MEMORY[0x1E69E62F8]);
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      v1 = sub_1B964C2B0();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

uint64_t sub_1B8F1AC88()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_123_1();
    swift_cvw_initStructMetadataWithLayoutString();
    return OUTLINED_FUNCTION_180_1();
  }

  return result;
}

void sub_1B8F1AD40()
{
  sub_1B8F1AA2C(319, qword_1ED9D3308, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action.OneOf_Value, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B8F1AE30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return OUTLINED_FUNCTION_180_1();
    }
  }

  return result;
}

uint64_t sub_1B8F1AED4()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B8F1AFAC()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_214Tm()
{
  OUTLINED_FUNCTION_19_1();
  if (v0)
  {
    return OUTLINED_FUNCTION_7_8();
  }

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_267_0();
  v3 = OUTLINED_FUNCTION_699(v2);

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void __swift_store_extra_inhabitant_index_215Tm()
{
  OUTLINED_FUNCTION_7();
  if (v0)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    OUTLINED_FUNCTION_259_0();
    v2 = OUTLINED_FUNCTION_61_0(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1B8F1B16C()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_123_1();
    swift_cvw_initStructMetadataWithLayoutString();
    return OUTLINED_FUNCTION_180_1();
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_171Tm()
{
  OUTLINED_FUNCTION_468();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  v5 = OUTLINED_FUNCTION_128_1(v4);
  if (*(v6 + 84) == v0)
  {
    v7 = v5;
    v8 = v1;
  }

  else
  {
    sub_1B964C2B0();
    OUTLINED_FUNCTION_194_1();
    v8 = v1 + v9;
  }

  return __swift_getEnumTagSinglePayload(v8, v0, v7);
}

uint64_t __swift_store_extra_inhabitant_index_172Tm()
{
  OUTLINED_FUNCTION_178_0();
  OUTLINED_FUNCTION_468();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_128_1(v5);
  if (*(v6 + 84) == v2)
  {
    v7 = OUTLINED_FUNCTION_231();
  }

  else
  {
    sub_1B964C2B0();
    OUTLINED_FUNCTION_196_2();
    v7 = v1 + v9;
  }

  return __swift_storeEnumTagSinglePayload(v7, v0, v0, v8);
}

uint64_t sub_1B8F1B368()
{
  result = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionTopic(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionArticle(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AttributionGuide(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_1B8F1B470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t *a6, uint64_t (*a7)(uint64_t))
{
  sub_1B964C2B0();
  if (v9 <= 0x3F)
  {
    sub_1B8F1AA2C(319, a6, a7, MEMORY[0x1E69E6720]);
    if (v10 <= 0x3F)
    {
      OUTLINED_FUNCTION_123_1();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_180_1();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_187Tm()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_700(*v0);
  }

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_194_1();
  v4 = OUTLINED_FUNCTION_699(v3);

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void __swift_store_extra_inhabitant_index_188Tm()
{
  OUTLINED_FUNCTION_7();
  if (v2)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    OUTLINED_FUNCTION_196_2();
    v4 = OUTLINED_FUNCTION_61_0(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

void sub_1B8F1B638(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  sub_1B8F1AA2C(319, a4, a5, a6);
  if (v6 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v7 <= 0x3F)
    {
      OUTLINED_FUNCTION_123_1();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_180_1();
    }
  }
}

void sub_1B8F1B6C4()
{
  sub_1B8F1AA2C(319, qword_1ED9F3A80, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Answer, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    sub_1B8F1AA2C(319, qword_1ED9F3BC8, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Asset, MEMORY[0x1E69E6720]);
    if (v4 <= 0x3F)
    {
      v5 = *(v3 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_1B8F1B864()
{
  result = qword_1ED9CDED8;
  if (!qword_1ED9CDED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9CDED8);
  }

  return result;
}

uint64_t sub_1B8F1B8B8()
{
  OUTLINED_FUNCTION_468();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_21_7(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_432();
  v7(v6);
  return v0;
}

uint64_t OUTLINED_FUNCTION_10_12(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 64) = v2;
  result = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult(0);
  *(a1 + 72) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_14_10(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 56) = v2;
  result = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult(0);
  v5 = *(result + 20);
  *(a1 + 64) = v5;
  v6 = *(v2 + v5);
  return result;
}

uint64_t OUTLINED_FUNCTION_30_13()
{
  result = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_46_3()
{

  return sub_1B8F1B8B8();
}

uint64_t OUTLINED_FUNCTION_55_3()
{
  v0 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_60_3(uint64_t a1)
{
  *(v1 + 24) = a1;

  return sub_1B8F1B8B8();
}

uint64_t OUTLINED_FUNCTION_68_4@<X0>(int a1@<W8>)
{
  *(v1 + 40) = a1;

  return sub_1B8F1B8B8();
}

uint64_t OUTLINED_FUNCTION_89_3()
{

  return sub_1B8F1B8B8();
}

void OUTLINED_FUNCTION_132_4()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
}

uint64_t OUTLINED_FUNCTION_134_3(uint64_t result)
{
  v1 = *(*result + 24);
  v2 = *(*result + 32);
  v3 = *(*result + 8);
  v4 = *(*result + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_150_2()
{

  return sub_1B8F1B8B8();
}

uint64_t OUTLINED_FUNCTION_160_2(uint64_t a1)
{
  v2 = *(v1 + *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult(a1) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

void OUTLINED_FUNCTION_163_3(uint64_t a1@<X8>)
{
  v1[4] = 0;
  v1[5] = a1;
  v1[6] = 0;
  v1[7] = a1;
  v1[8] = 0;
  v1[9] = a1;
}

uint64_t OUTLINED_FUNCTION_167_4()
{
  result = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  return result;
}

uint64_t OUTLINED_FUNCTION_168_2@<X0>(uint64_t a1@<X8>)
{
  *v2 = a1;
  *(v2 + 8) = a1;
  *(v2 + 16) = a1;
  *(v2 + 24) = a1;
  *(v2 + 32) = a1;
  *(v2 + 40) = 0;
  *(v2 + 48) = v1;
  v5 = v2 + *(v3 + 40);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_191_2(uint64_t a1)
{
  v3 = v1 + *(a1 + 24);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_200_2()
{
  v2 = *(*(v0 + 64) + *(v0 + 72));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_201_2()
{
  *v1 = 0;
  *(v1 + 8) = v0;
  v4 = v1 + *(v2 + 20);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_202_2()
{
  *v0 = 0;
  *(v0 + 8) = v1;
  v4 = v0 + *(v2 + 20);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_205_0()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_206_2()
{
}

uint64_t OUTLINED_FUNCTION_207_2()
{

  return sub_1B8F095E8();
}

uint64_t OUTLINED_FUNCTION_210_1()
{
  v3 = *(v0 + v1);
}

uint64_t OUTLINED_FUNCTION_212_1(uint64_t a1)
{
  result = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.Action(a1);
  v2 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_214_0()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult(0) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t Apple_Parsec_DeviceExpert_V1alpha_DeviceExpertQueryContext.appBundleID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_DeviceExpert_V1alpha_DeviceExpertQueryContext.appBundleID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Apple_Parsec_DeviceExpert_V1alpha_DeviceExpertQueryContext.unknownFields.getter()
{
  v0 = *(type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_DeviceExpertQueryContext(0) + 24);
  v1 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_18_1();

  return v5(v4);
}

uint64_t Apple_Parsec_DeviceExpert_V1alpha_DeviceExpertQueryContext.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_DeviceExpertQueryContext(v2) + 24);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t Apple_Parsec_DeviceExpert_V1alpha_DeviceExpertQueryContext.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_DeviceExpertQueryContext(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_DeviceExpert_V1alpha_DeviceExpertQueryContext.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  v1 = a1 + *(type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_DeviceExpertQueryContext(0) + 24);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_DeviceExpert_V1alpha_QnaSearchRequest.query.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_26_1(v6);
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery(v7);
  *(v1 + 16) = v8;
  OUTLINED_FUNCTION_59_1(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_202_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_89_0(v12);
  v14 = type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_QnaSearchRequest(v13);
  OUTLINED_FUNCTION_16_4(*(v14 + 24));
  OUTLINED_FUNCTION_117(v0);
  if (v15)
  {
    OUTLINED_FUNCTION_75_1();
    OUTLINED_FUNCTION_66_3(MEMORY[0x1E69E7CC0]);
    v16 = *(v8 + 52);
    type metadata accessor for Apple_Parsec_Siri_V2alpha_ASRInterpretation(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    OUTLINED_FUNCTION_117(v0);
    if (!v15)
    {
      sub_1B8D9207C(v0, &qword_1EBABED38, &unk_1B966BBE0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_19();
    OUTLINED_FUNCTION_246();
    sub_1B8F21010();
  }

  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B8F1C5E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = a5(0);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_79();
  sub_1B8F21064();
  return a7(v7);
}

void Apple_Parsec_DeviceExpert_V1alpha_QnaSearchRequest.queryContext.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_26_1(v6);
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(v7);
  *(v1 + 16) = Context;
  OUTLINED_FUNCTION_59_1(Context);
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_QnaSearchRequest(v14);
  OUTLINED_FUNCTION_16_4(*(v15 + 28));
  OUTLINED_FUNCTION_117(v0);
  if (v16)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v17 = *(Context + 20);
    if (qword_1ED9D38C0 != -1)
    {
      OUTLINED_FUNCTION_12_0();
    }

    *(v10 + v17) = qword_1ED9D38C8;
    v18 = OUTLINED_FUNCTION_207();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v18, v19, Context);

    if (EnumTagSinglePayload != 1)
    {
      sub_1B8D9207C(v0, &qword_1EBABED40, &qword_1B96809F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_19();
    OUTLINED_FUNCTION_246();
    sub_1B8F21010();
  }

  OUTLINED_FUNCTION_242();
}

void Apple_Parsec_DeviceExpert_V1alpha_QnaSearchRequest.deviceexpertQueryContext.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_85(v6);
  Context = type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_DeviceExpertQueryContext(v7);
  *(v1 + 16) = Context;
  OUTLINED_FUNCTION_59_1(Context);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_202_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_89_0(v12);
  v14 = type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_QnaSearchRequest(v13);
  OUTLINED_FUNCTION_15_12(v14);
  OUTLINED_FUNCTION_16_2();
  if (v15)
  {
    OUTLINED_FUNCTION_69_3();
    OUTLINED_FUNCTION_16_2();
    if (!v15)
    {
      sub_1B8D9207C(v0, &qword_1EBABED48, &unk_1B966BBF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_10();
    OUTLINED_FUNCTION_461();
    sub_1B8F21010();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_DeviceExpert_V1alpha_QnaSearchRequest.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_QnaSearchRequest(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

void Apple_Parsec_DeviceExpert_V1alpha_QnaSearchResponse.status.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t Apple_Parsec_DeviceExpert_V1alpha_QnaSearchResponse.status.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t sub_1B8F1CB2C()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  sub_1B8D9207C(v0 + *(v3 + 32), &qword_1EBAB9188, &qword_1B964D970);
  OUTLINED_FUNCTION_5_15();
  OUTLINED_FUNCTION_88_3();
  type metadata accessor for Apple_Parsec_Search_Error();
  v4 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void Apple_Parsec_DeviceExpert_V1alpha_QnaSearchResponse.error.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_85(v6);
  v7 = type metadata accessor for Apple_Parsec_Search_Error();
  *(v1 + 16) = v7;
  OUTLINED_FUNCTION_59_1(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_QnaSearchResponse(v12);
  OUTLINED_FUNCTION_15_12(v13);
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_68_5();
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9188, &qword_1B964D970);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_15();
    OUTLINED_FUNCTION_461();
    sub_1B8F21010();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}