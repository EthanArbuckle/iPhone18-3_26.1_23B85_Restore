void sub_1C883A760(uint64_t *a1, char a2, uint64_t *a3, void (*a4)(uint64_t))
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
      OUTLINED_FUNCTION_5_7();
      v19 = OUTLINED_FUNCTION_2();
      v16 = sub_1C883BDA4(v19);
      *(v18 + v17) = v16;
    }

    v20 = *a3;
    OUTLINED_FUNCTION_37_0();
    v21 = *(v16 + v20);
    *(v16 + v20) = v5;
  }

  free(v4);
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRRequest.resultCandidateID.getter()
{
  OUTLINED_FUNCTION_4_7();
  v2 = (*(v0 + v1) + OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__resultCandidateID);
  OUTLINED_FUNCTION_277();
  if (v2[1])
  {
    v3 = *v2;
  }

  return OUTLINED_FUNCTION_218();
}

uint64_t sub_1C883A88C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_Internal_Queryrewrite_QRRequest.resultCandidateID.setter(v1, v2);
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRRequest.resultCandidateID.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRRequest(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_5_7();
    v10 = OUTLINED_FUNCTION_2();
    v9 = sub_1C883BDA4(v10);
    *(v3 + v6) = v9;
  }

  v11 = (v9 + OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__resultCandidateID);
  OUTLINED_FUNCTION_37_0();
  v12 = v11[1];
  *v11 = a1;
  v11[1] = a2;
}

void (*Siri_Nlu_Internal_Queryrewrite_QRRequest.resultCandidateID.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v3;
  v3[8] = v1;
  OUTLINED_FUNCTION_4_7();
  *(v3 + 18) = v4;
  v5 = (*(v1 + v4) + OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__resultCandidateID);
  OUTLINED_FUNCTION_277();
  if (v5[1])
  {
    v6 = *v5;
    v7 = v5[1];
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  v3[6] = v6;
  v3[7] = v7;

  return sub_1C883AA08;
}

void sub_1C883AA08(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    v5 = *(v2 + 64);
    v6 = *(*a1 + 56);

    Siri_Nlu_Internal_Queryrewrite_QRRequest.resultCandidateID.setter(v3, v4);
    v7 = *(v2 + 56);
  }

  else
  {
    v8 = *(v2 + 72);
    v9 = *(v2 + 64);
    v10 = *(v9 + v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v9 + v8);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = *(v2 + 72);
      v14 = *(v2 + 64);
      OUTLINED_FUNCTION_5_7();
      v15 = OUTLINED_FUNCTION_2();
      v12 = sub_1C883BDA4(v15);
      *(v14 + v13) = v12;
    }

    v16 = (v12 + OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__resultCandidateID);
    OUTLINED_FUNCTION_37_0();
    v17 = v16[1];
    *v16 = v3;
    v16[1] = v4;
  }

  free(v2);
}

BOOL Siri_Nlu_Internal_Queryrewrite_QRRequest.hasResultCandidateID.getter()
{
  OUTLINED_FUNCTION_4_7();
  v2 = *(v0 + v1) + OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__resultCandidateID;
  OUTLINED_FUNCTION_277();
  return *(v2 + 8) != 0;
}

Swift::Void __swiftcall Siri_Nlu_Internal_Queryrewrite_QRRequest.clearResultCandidateID()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRRequest(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_5_7();
    v6 = OUTLINED_FUNCTION_2();
    v5 = sub_1C883BDA4(v6);
    *(v1 + v2) = v5;
  }

  v7 = (v5 + OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__resultCandidateID);
  OUTLINED_FUNCTION_37_0();
  v8 = v7[1];
  *v7 = 0;
  v7[1] = 0;
}

uint64_t sub_1C883ABB4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - v9;
  OUTLINED_FUNCTION_4_7();
  v12 = *(v2 + v11);
  v13 = *a1;
  OUTLINED_FUNCTION_277();
  sub_1C8778810();
  v14 = type metadata accessor for Siri_Nlu_External_UUID();
  OUTLINED_FUNCTION_1_0();
  if (!v15)
  {
    return sub_1C883C17C();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v16 = a2 + v14[5];
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = a2 + v14[6];
  *v17 = 0;
  *(v17 + 8) = 1;
  *(a2 + v14[7]) = 6;
  result = OUTLINED_FUNCTION_1_0();
  if (!v15)
  {
    return sub_1C8778ED8(v10, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  }

  return result;
}

uint64_t sub_1C883AD04(uint64_t a1, uint64_t *a2)
{
  v4 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - v9;
  v11 = *(type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRRequest(0) + 20);
  v12 = *(v2 + v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v2 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_5_7();
    v15 = OUTLINED_FUNCTION_2();
    *(v4 + v11) = sub_1C883BDA4(v15);
  }

  sub_1C883C17C();
  v16 = type metadata accessor for Siri_Nlu_External_UUID();
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v16);
  v17 = *a2;
  OUTLINED_FUNCTION_23();
  swift_beginAccess();
  sub_1C8786514();
  return swift_endAccess();
}

void (*Siri_Nlu_Internal_Queryrewrite_QRRequest.nluRequestID.modify())(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_13_2(v6);
  v7 = type metadata accessor for Siri_Nlu_External_UUID();
  OUTLINED_FUNCTION_21(v7);
  v9 = *(v8 + 64);
  *(v2 + 40) = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  *(v2 + 48) = v10;
  OUTLINED_FUNCTION_4_7();
  v12 = *(v0 + v11);
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  if (v13)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_11_0(v7[5]);
    OUTLINED_FUNCTION_11_0(v7[6]);
    v10[v7[7]] = 6;
    OUTLINED_FUNCTION_0_0();
    if (!v13)
    {
      sub_1C8778ED8(v1, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_10();
  }

  return sub_1C883AF7C;
}

BOOL sub_1C883AFD8(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_80(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - v13;
  OUTLINED_FUNCTION_4_7();
  v16 = *(v4 + v15);
  v17 = *a3;
  OUTLINED_FUNCTION_277();
  sub_1C8778810();
  v18 = a4(0);
  v19 = __swift_getEnumTagSinglePayload(v14, 1, v18) != 1;
  sub_1C8778ED8(v14, a1, a2);
  return v19;
}

uint64_t sub_1C883B0E4(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v7 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_80(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - v12;
  v14 = *(type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRRequest(0) + 20);
  v15 = *(v4 + v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v4 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_5_7();
    v18 = OUTLINED_FUNCTION_2();
    *(v7 + v14) = sub_1C883BDA4(v18);
  }

  v19 = a3(0);
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v19);
  v20 = *a4;
  OUTLINED_FUNCTION_23();
  swift_beginAccess();
  sub_1C8786514();
  return swift_endAccess();
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRRequest.cdmRequestID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  OUTLINED_FUNCTION_4_7();
  v10 = *(v1 + v9);
  OUTLINED_FUNCTION_277();
  sub_1C8778810();
  v11 = type metadata accessor for Siri_Nlu_External_RequestID();
  OUTLINED_FUNCTION_1_0();
  if (v12)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_18_2(v11[5]);
    v13 = v11[6];
    v14 = type metadata accessor for Siri_Nlu_External_UUID();
    __swift_storeEnumTagSinglePayload(a1 + v13, 1, 1, v14);
    OUTLINED_FUNCTION_18_2(v11[7]);
    OUTLINED_FUNCTION_18_2(v11[8]);
    OUTLINED_FUNCTION_18_2(v11[9]);
    OUTLINED_FUNCTION_18_2(v11[10]);
    *(a1 + v11[11]) = 6;
    result = OUTLINED_FUNCTION_1_0();
    if (!v12)
    {
      return sub_1C8778ED8(v8, &qword_1EC2B64B0, &unk_1C8BF3F40);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_1();
    return sub_1C883C17C();
  }

  return result;
}

uint64_t sub_1C883B340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = a5(0);
  OUTLINED_FUNCTION_80(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v15 - v12;
  sub_1C883C1D4();
  return a7(v13);
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRRequest.cdmRequestID.setter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - v6;
  v8 = *(type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRRequest(0) + 20);
  v9 = *(v0 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v0 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_5_7();
    v12 = OUTLINED_FUNCTION_2();
    *(v1 + v8) = sub_1C883BDA4(v12);
  }

  OUTLINED_FUNCTION_1_1();
  sub_1C883C17C();
  v13 = type metadata accessor for Siri_Nlu_External_RequestID();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v13);
  OUTLINED_FUNCTION_23();
  swift_beginAccess();
  sub_1C8786514();
  return swift_endAccess();
}

void (*Siri_Nlu_Internal_Queryrewrite_QRRequest.cdmRequestID.modify())(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_13_2(v6);
  v7 = type metadata accessor for Siri_Nlu_External_RequestID();
  OUTLINED_FUNCTION_21(v7);
  v9 = *(v8 + 64);
  *(v2 + 40) = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  *(v2 + 48) = v10;
  OUTLINED_FUNCTION_4_7();
  v12 = *(v0 + v11);
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  if (v13)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_26(v7[5]);
    v14 = v7[6];
    v15 = type metadata accessor for Siri_Nlu_External_UUID();
    __swift_storeEnumTagSinglePayload(&v10[v14], 1, 1, v15);
    OUTLINED_FUNCTION_26(v7[7]);
    OUTLINED_FUNCTION_26(v7[8]);
    OUTLINED_FUNCTION_26(v7[9]);
    OUTLINED_FUNCTION_26(v7[10]);
    v10[v7[11]] = 6;
    OUTLINED_FUNCTION_0_0();
    if (!v13)
    {
      sub_1C8778ED8(v1, &qword_1EC2B64B0, &unk_1C8BF3F40);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_1();
    sub_1C883C17C();
  }

  return sub_1C883B684;
}

void sub_1C883B6B0(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 40);
  v6 = *(*a1 + 48);
  v7 = *(*a1 + 24);
  v8 = *(*a1 + 32);
  if (a2)
  {
    v9 = *(*a1 + 48);
    sub_1C883C1D4();
    a3(v5);
    sub_1C88221F0();
  }

  else
  {
    a3(*(*a1 + 48));
  }

  free(v6);
  free(v5);
  free(v8);

  free(v4);
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRRequest.unknownFields.getter()
{
  v0 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_21(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_218();

  return v4(v3);
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRRequest.unknownFields.setter()
{
  OUTLINED_FUNCTION_241();
  v2 = sub_1C8BD49FC();
  v3 = OUTLINED_FUNCTION_21(v2);
  v5 = *(v4 + 40);

  return v5(v1, v0, v3);
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRRequest.init()@<X0>(uint64_t a1@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v2 = *(type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRRequest(0) + 20);
  if (qword_1EC2B4DC0 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_1EC2B7120;
}

uint64_t sub_1C883B930()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B7108);
  __swift_project_value_buffer(v0, qword_1EC2B7108);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE7160;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "requestId";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "interactions";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "original_interactions";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v13 = *MEMORY[0x1E69AADE8];
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "result_candidate_id";
  *(v15 + 1) = 19;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "nlu_request_id";
  *(v17 + 1) = 14;
  v17[16] = 2;
  v9();
  v18 = (v5 + 5 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "cdm_request_id";
  *(v19 + 1) = 14;
  v19[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t static Siri_Nlu_Internal_Queryrewrite_QRRequest._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC2B4DB8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C8BD512C();
  v3 = __swift_project_value_buffer(v2, qword_1EC2B7108);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C883BCA4()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRRequest._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1C883BCE4();
  qword_1EC2B7120 = result;
  return result;
}

uint64_t sub_1C883BCE4()
{
  v1 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__requestID;
  v2 = type metadata accessor for Siri_Nlu_External_UUID();
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__interactions) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__originalInteractions) = v3;
  v4 = (v0 + OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__resultCandidateID);
  *v4 = 0;
  v4[1] = 0;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__nluRequestID, 1, 1, v2);
  v5 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__cdmRequestID;
  v6 = type metadata accessor for Siri_Nlu_External_RequestID();
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  return v0;
}

uint64_t sub_1C883BDA4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v27[2] = v27 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__requestID;
  v9 = type metadata accessor for Siri_Nlu_External_UUID();
  __swift_storeEnumTagSinglePayload(v1 + v8, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__interactions;
  v11 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__interactions) = MEMORY[0x1E69E7CC0];
  v12 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__originalInteractions;
  *(v1 + OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__originalInteractions) = v11;
  v13 = (v1 + OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__resultCandidateID);
  *v13 = 0;
  v13[1] = 0;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__nluRequestID, 1, 1, v9);
  v14 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__cdmRequestID;
  v27[1] = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__cdmRequestID;
  v15 = type metadata accessor for Siri_Nlu_External_RequestID();
  __swift_storeEnumTagSinglePayload(v1 + v14, 1, 1, v15);
  swift_beginAccess();
  sub_1C8778810();
  swift_beginAccess();
  sub_1C8786514();
  swift_endAccess();
  v16 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__interactions;
  swift_beginAccess();
  v17 = *(a1 + v16);
  swift_beginAccess();
  v18 = *(v1 + v10);
  *(v1 + v10) = v17;

  v19 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__originalInteractions;
  swift_beginAccess();
  v20 = *(a1 + v19);
  swift_beginAccess();
  v21 = *(v1 + v12);
  *(v1 + v12) = v20;

  v22 = (a1 + OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__resultCandidateID);
  swift_beginAccess();
  v24 = *v22;
  v23 = v22[1];
  swift_beginAccess();
  v25 = v13[1];
  *v13 = v24;
  v13[1] = v23;

  swift_beginAccess();
  sub_1C8778810();
  swift_beginAccess();
  sub_1C8786514();
  swift_endAccess();
  swift_beginAccess();
  sub_1C8778810();

  swift_beginAccess();
  sub_1C8786514();
  swift_endAccess();
  return v1;
}

uint64_t sub_1C883C17C()
{
  OUTLINED_FUNCTION_12_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_21(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_218();
  v6(v5);
  return v0;
}

uint64_t sub_1C883C1D4()
{
  OUTLINED_FUNCTION_12_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_21(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_218();
  v6(v5);
  return v0;
}

uint64_t sub_1C883C22C()
{
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__requestID, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  v1 = *(v0 + OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__interactions);

  v2 = *(v0 + OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__originalInteractions);

  v3 = *(v0 + OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__resultCandidateID + 8);

  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__nluRequestID, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__cdmRequestID, &qword_1EC2B64B0, &unk_1C8BF3F40);
  return v0;
}

uint64_t sub_1C883C2E8()
{
  v0 = sub_1C883C22C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRRequest(0) + 20);
  v9 = *(v3 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRRequest._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v15 = OUTLINED_FUNCTION_2();
    v11 = sub_1C883BDA4(v15);
    *(v4 + v8) = v11;
  }

  return sub_1C883C3DC(v11, a1, a2, a3);
}

uint64_t sub_1C883C3DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__requestID;
        goto LABEL_6;
      case 2:
        sub_1C883C50C();
        break;
      case 3:
        sub_1C883C5E8();
        break;
      case 4:
        sub_1C883C6C4();
        break;
      case 5:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__nluRequestID;
LABEL_6:
        sub_1C883C750(v11, v12, v13, v14, v15);
        break;
      case 6:
        sub_1C883C824();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C883C50C()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRInteraction(0);
  sub_1C8776548(&qword_1EC2B71A0, type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRInteraction);
  sub_1C8BD4C6C();
  return swift_endAccess();
}

uint64_t sub_1C883C5E8()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_Internal_RewriteInteraction(0);
  sub_1C8776548(&qword_1EC2B6D50, type metadata accessor for Siri_Nlu_Internal_RewriteInteraction);
  sub_1C8BD4C6C();
  return swift_endAccess();
}

uint64_t sub_1C883C6C4()
{
  swift_beginAccess();
  sub_1C8BD4C1C();
  return swift_endAccess();
}

uint64_t sub_1C883C750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a5;
  OUTLINED_FUNCTION_23();
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_UUID();
  sub_1C8776548(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C883C824()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_RequestID();
  sub_1C8776548(&qword_1EDACCBA8, type metadata accessor for Siri_Nlu_External_RequestID);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRRequest(0);
  result = sub_1C883C96C(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_1C8BD49DC();
  }

  return result;
}

uint64_t sub_1C883C96C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a3;
  v36 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v31 = v30 - v7;
  v32 = type metadata accessor for Siri_Nlu_External_RequestID();
  v8 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32);
  v30[0] = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v30 - v14;
  v16 = type metadata accessor for Siri_Nlu_External_UUID();
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v30[1] = v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  swift_beginAccess();
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    sub_1C8778ED8(v15, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    v20 = v34;
  }

  else
  {
    sub_1C883C17C();
    sub_1C8776548(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID);
    v21 = v34;
    sub_1C8BD4E2C();
    v20 = v21;
    result = sub_1C88221F0();
    if (v21)
    {
      return result;
    }
  }

  v23 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__interactions;
  swift_beginAccess();
  if (!*(*(a1 + v23) + 16) || (type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRInteraction(0), sub_1C8776548(&qword_1EC2B71A0, type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRInteraction), , sub_1C8BD4E0C(), result = , !v20))
  {
    v24 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__originalInteractions;
    swift_beginAccess();
    if (!*(*(a1 + v24) + 16) || (type metadata accessor for Siri_Nlu_Internal_RewriteInteraction(0), sub_1C8776548(&qword_1EC2B6D50, type metadata accessor for Siri_Nlu_Internal_RewriteInteraction), , sub_1C8BD4E0C(), result = , !v20))
    {
      v25 = (a1 + OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__resultCandidateID);
      swift_beginAccess();
      if (!v25[1] || (v26 = *v25, v27 = v25[1], , sub_1C8BD4DDC(), result = , !v20))
      {
        swift_beginAccess();
        v28 = v33;
        sub_1C8778810();
        if (__swift_getEnumTagSinglePayload(v28, 1, v16) == 1)
        {
          sub_1C8778ED8(v28, &qword_1EC2B5EC8, &unk_1C8BE68C0);
        }

        else
        {
          sub_1C883C17C();
          sub_1C8776548(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID);
          sub_1C8BD4E2C();
          result = sub_1C88221F0();
          if (v20)
          {
            return result;
          }
        }

        swift_beginAccess();
        v29 = v31;
        sub_1C8778810();
        if (__swift_getEnumTagSinglePayload(v29, 1, v32) == 1)
        {
          return sub_1C8778ED8(v29, &qword_1EC2B64B0, &unk_1C8BF3F40);
        }

        else
        {
          sub_1C883C17C();
          sub_1C8776548(&qword_1EDACCBA8, type metadata accessor for Siri_Nlu_External_RequestID);
          sub_1C8BD4E2C();
          return sub_1C88221F0();
        }
      }
    }
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_Queryrewrite_QRRequest.== infix(_:_:)()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_4_7();
  v3 = *(v1 + v2);
  v4 = *(v0 + v2);
  if (v3 != v4)
  {
    v5 = *(v1 + v2);

    v6 = sub_1C883D0F0(v3, v4);

    if (!v6)
    {
      return 0;
    }
  }

  sub_1C8BD49FC();
  sub_1C8776548(&qword_1EC2B2F70, MEMORY[0x1E69AAC08]);
  return sub_1C8BD517C() & 1;
}

BOOL sub_1C883D0F0(uint64_t a1, uint64_t a2)
{
  v92 = a2;
  v83 = type metadata accessor for Siri_Nlu_External_RequestID();
  v3 = *(*(v83 - 8) + 64);
  MEMORY[0x1EEE9AC00](v83);
  v80 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64D8, &unk_1C8BEAC20);
  v5 = *(*(v82 - 8) + 64);
  MEMORY[0x1EEE9AC00](v82);
  v84 = &v79 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v81 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v88 = &v79 - v11;
  v93 = type metadata accessor for Siri_Nlu_External_UUID();
  v12 = *(*(v93 - 8) + 64);
  MEMORY[0x1EEE9AC00](v93);
  v90 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EE8, &unk_1C8BE6F90);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v87 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v79 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v85 = &v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v89 = &v79 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v91 = &v79 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v79 - v28;
  swift_beginAccess();
  v30 = a1;
  sub_1C8778810();
  v31 = v92;
  swift_beginAccess();
  v86 = v14;
  v32 = *(v14 + 48);
  sub_1C8778810();
  v33 = v31;
  v34 = v93;
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v19, 1, v34) == 1)
  {

    sub_1C8778ED8(v29, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    v35 = v30;
    if (__swift_getEnumTagSinglePayload(&v19[v32], 1, v34) == 1)
    {
      sub_1C8778ED8(v19, &qword_1EC2B5EC8, &unk_1C8BE68C0);
      goto LABEL_9;
    }

LABEL_6:
    v38 = v19;
LABEL_7:
    sub_1C8778ED8(v38, &qword_1EC2B5EE8, &unk_1C8BE6F90);
    goto LABEL_20;
  }

  v36 = v30;
  v37 = v91;
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(&v19[v32], 1, v34) == 1)
  {

    sub_1C8778ED8(v29, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    sub_1C88221F0();
    goto LABEL_6;
  }

  v39 = v90;
  sub_1C883C17C();

  v40 = static Siri_Nlu_External_UUID.== infix(_:_:)(v37, v39);
  sub_1C88221F0();
  sub_1C8778ED8(v29, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  sub_1C88221F0();
  v35 = v36;
  sub_1C8778ED8(v19, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if ((v40 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_9:
  v41 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__interactions;
  swift_beginAccess();
  v42 = *(v35 + v41);
  v43 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__interactions;
  swift_beginAccess();
  v44 = *(v33 + v43);

  sub_1C87E0664();
  v46 = v45;

  if ((v46 & 1) == 0)
  {
    goto LABEL_20;
  }

  v47 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__originalInteractions;
  swift_beginAccess();
  v48 = *(v35 + v47);
  v49 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__originalInteractions;
  swift_beginAccess();
  v50 = *(v33 + v49);

  sub_1C87E1314();
  v52 = v51;

  if ((v52 & 1) == 0)
  {
    goto LABEL_20;
  }

  v53 = (v35 + OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__resultCandidateID);
  swift_beginAccess();
  v54 = *v53;
  v55 = v53[1];
  v56 = (v33 + OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__resultCandidateID);
  swift_beginAccess();
  v57 = v56[1];
  if (v55)
  {
    v58 = v89;
    if (!v57)
    {
      goto LABEL_20;
    }

    v59 = v54 == *v56 && v55 == v57;
    if (!v59 && (sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v58 = v89;
    if (v57)
    {
      goto LABEL_20;
    }
  }

  swift_beginAccess();
  sub_1C8778810();
  swift_beginAccess();
  v61 = v87;
  v62 = *(v86 + 48);
  sub_1C8778810();
  v63 = v61;
  sub_1C8778810();
  v64 = v93;
  if (__swift_getEnumTagSinglePayload(v61, 1, v93) != 1)
  {
    v67 = v85;
    sub_1C8778810();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v61 + v62, 1, v64);
    v66 = v88;
    if (EnumTagSinglePayload != 1)
    {
      v69 = v90;
      sub_1C883C17C();
      v70 = static Siri_Nlu_External_UUID.== infix(_:_:)(v67, v69);
      sub_1C88221F0();
      sub_1C8778ED8(v58, &qword_1EC2B5EC8, &unk_1C8BE68C0);
      sub_1C88221F0();
      sub_1C8778ED8(v63, &qword_1EC2B5EC8, &unk_1C8BE68C0);
      if (v70)
      {
        goto LABEL_30;
      }

LABEL_20:

      return 0;
    }

    sub_1C8778ED8(v58, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    sub_1C88221F0();
    goto LABEL_28;
  }

  sub_1C8778ED8(v58, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  v65 = __swift_getEnumTagSinglePayload(v61 + v62, 1, v64);
  v66 = v88;
  if (v65 != 1)
  {
LABEL_28:
    v38 = v61;
    goto LABEL_7;
  }

  sub_1C8778ED8(v61, &qword_1EC2B5EC8, &unk_1C8BE68C0);
LABEL_30:
  swift_beginAccess();
  sub_1C8778810();
  swift_beginAccess();
  v71 = *(v82 + 48);
  v72 = v66;
  v73 = v84;
  sub_1C8778810();
  v74 = v73;
  sub_1C8778810();
  v75 = v83;
  if (__swift_getEnumTagSinglePayload(v73, 1, v83) == 1)
  {

    sub_1C8778ED8(v72, &qword_1EC2B64B0, &unk_1C8BF3F40);
    if (__swift_getEnumTagSinglePayload(v73 + v71, 1, v75) == 1)
    {
      sub_1C8778ED8(v73, &qword_1EC2B64B0, &unk_1C8BF3F40);
      return 1;
    }

    goto LABEL_35;
  }

  v76 = v81;
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v74 + v71, 1, v75) == 1)
  {

    sub_1C8778ED8(v88, &qword_1EC2B64B0, &unk_1C8BF3F40);
    sub_1C88221F0();
LABEL_35:
    sub_1C8778ED8(v74, &qword_1EC2B64D8, &unk_1C8BEAC20);
    return 0;
  }

  v77 = v80;
  sub_1C883C17C();
  v78 = static Siri_Nlu_External_RequestID.== infix(_:_:)(v76, v77);

  sub_1C88221F0();
  sub_1C8778ED8(v88, &qword_1EC2B64B0, &unk_1C8BF3F40);
  sub_1C88221F0();
  sub_1C8778ED8(v74, &qword_1EC2B64B0, &unk_1C8BF3F40);
  return (v78 & 1) != 0;
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRRequest.hashValue.getter()
{
  sub_1C8BD530C();
  type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRRequest(0);
  sub_1C8776548(&qword_1EC2B7158, type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRRequest);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C883DCD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776548(&qword_1EC2B7198, type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C883DD50(uint64_t a1)
{
  v2 = sub_1C8776548(&qword_1EC2B7168, type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C883DDC0()
{
  sub_1C8776548(&qword_1EC2B7168, type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRRequest);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C883DF88()
{
  result = sub_1C8BD49FC();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRRequest._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1C883E014()
{
  sub_1C883E130(319, qword_1EDACE198, type metadata accessor for Siri_Nlu_External_UUID);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1C883E130(319, qword_1EDACDC48, type metadata accessor for Siri_Nlu_External_RequestID);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1C883E130(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C8BD522C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_7_10()
{

  return sub_1C883C17C();
}

uint64_t Siri_Nlu_External_ResponseStatus.code.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Siri_Nlu_External_ResponseStatus();
  v4 = *(v1 + *(result + 20));
  if (v4 == 8)
  {
    LOBYTE(v4) = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t type metadata accessor for Siri_Nlu_External_ResponseStatus()
{
  result = qword_1EDACD360;
  if (!qword_1EDACD360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C883E238@<X0>(_BYTE *a1@<X8>)
{
  result = Siri_Nlu_External_ResponseStatus.code.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t Siri_Nlu_External_ResponseStatus.code.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for Siri_Nlu_External_ResponseStatus();
  *(v1 + *(result + 20)) = v2;
  return result;
}

uint64_t (*Siri_Nlu_External_ResponseStatus.code.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Siri_Nlu_External_ResponseStatus() + 20);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 8)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return OUTLINED_FUNCTION_158;
}

uint64_t Siri_Nlu_External_ResponseStatus.description_p.getter()
{
  v1 = (v0 + *(type metadata accessor for Siri_Nlu_External_ResponseStatus() + 24));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1C883E3E4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_External_ResponseStatus.description_p.setter(v1, v2);
}

uint64_t Siri_Nlu_External_ResponseStatus.description_p.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Siri_Nlu_External_ResponseStatus() + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*Siri_Nlu_External_ResponseStatus.description_p.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[2] = v1;
  v4 = *(type metadata accessor for Siri_Nlu_External_ResponseStatus() + 24);
  *(v3 + 8) = v4;
  v5 = (v1 + v4);
  v6 = v5[1];
  if (v6)
  {
    v7 = *v5;
    v8 = v6;
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  v3[3] = v6;
  *v3 = v7;
  v3[1] = v8;

  return sub_1C87E6EC8;
}

Swift::Void __swiftcall Siri_Nlu_External_ResponseStatus.clearDescription_p()()
{
  v1 = (v0 + *(type metadata accessor for Siri_Nlu_External_ResponseStatus() + 24));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Siri_Nlu_External_ResponseStatus.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C8BD49FC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Siri_Nlu_External_ResponseStatus.unknownFields.setter()
{
  v0 = *(*(sub_1C8BD49FC() - 8) + 40);
  v1 = OUTLINED_FUNCTION_5_0();

  return v2(v1);
}

SiriNLUTypes::Siri_Nlu_External_ResponseStatus::StatusCode_optional __swiftcall Siri_Nlu_External_ResponseStatus.StatusCode.init(rawValue:)(Swift::Int rawValue)
{
  if (!v2 & v1)
  {
    if (rawValue == 101)
    {
      v4 = 2;
    }

    else
    {
      v4 = 8;
    }

    if (rawValue == 500)
    {
      v5 = 7;
    }

    else
    {
      v5 = v4;
    }

    if (rawValue == 100)
    {
      v6 = 1;
    }

    else
    {
      v6 = v5;
    }

    if (!rawValue)
    {
      v6 = 0;
    }
  }

  else
  {
    switch(rawValue)
    {
      case 300:
        v6 = 3;
        break;
      case 301:
        v6 = 4;
        break;
      case 302:
        v6 = 5;
        break;
      case 303:
        v6 = 6;
        break;
      default:
        JUMPOUT(0);
    }
  }

  *v3 = v6;
  return rawValue;
}

uint64_t sub_1C883E710(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C883EC4C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C883E778@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_External_ResponseStatus.StatusCode.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t Siri_Nlu_External_ResponseStatus.init()@<X0>(uint64_t a1@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  result = type metadata accessor for Siri_Nlu_External_ResponseStatus();
  *(a1 + *(result + 20)) = 8;
  v3 = (a1 + *(result + 24));
  *v3 = 0;
  v3[1] = 0;
  return result;
}

uint64_t sub_1C883E81C()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B4128);
  __swift_project_value_buffer(v0, qword_1EC2B4128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "code";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "description";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_ResponseStatus.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      OUTLINED_FUNCTION_5_0();
      sub_1C883EB00();
    }

    else if (result == 2)
    {
      OUTLINED_FUNCTION_5_0();
      sub_1C883EA8C();
    }
  }

  return result;
}

uint64_t sub_1C883EA8C()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_ResponseStatus() + 20);
  sub_1C883EC4C();
  return sub_1C8BD4B4C();
}

uint64_t Siri_Nlu_External_ResponseStatus.traverse<A>(visitor:)()
{
  v2 = type metadata accessor for Siri_Nlu_External_ResponseStatus();
  v3 = v2;
  if (*(v0 + *(v2 + 20)) == 8 || (v7 = *(v0 + *(v2 + 20)), sub_1C883EC4C(), result = sub_1C8BD4D4C(), !v1))
  {
    v5 = (v0 + *(v3 + 24));
    if (!v5[1])
    {
      return sub_1C8BD49DC();
    }

    v6 = *v5;
    result = sub_1C8BD4DDC();
    if (!v1)
    {
      return sub_1C8BD49DC();
    }
  }

  return result;
}

unint64_t sub_1C883EC4C()
{
  result = qword_1EC2B48F0;
  if (!qword_1EC2B48F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B48F0);
  }

  return result;
}

uint64_t static Siri_Nlu_External_ResponseStatus.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nlu_External_ResponseStatus();
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 8)
  {
    if (v7 != 8)
    {
      return 0;
    }
  }

  else if (v7 == 8 || qword_1C8BED748[v6] != qword_1C8BED748[v7])
  {
    return 0;
  }

  v8 = *(v4 + 24);
  v9 = (a1 + v8);
  v10 = *(a1 + v8 + 8);
  v11 = (a2 + v8);
  v12 = v11[1];
  if (v10)
  {
    if (!v12)
    {
      return 0;
    }

    v13 = *v9 == *v11 && v10 == v12;
    if (!v13 && (sub_1C8BD529C() & 1) == 0)
    {
      return 0;
    }

LABEL_13:
    sub_1C8BD49FC();
    sub_1C8776590(&qword_1EC2B2F70, MEMORY[0x1E69AAC08]);
    OUTLINED_FUNCTION_5_0();
    return sub_1C8BD517C() & 1;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  return 0;
}

uint64_t Siri_Nlu_External_ResponseStatus.hashValue.getter()
{
  sub_1C8BD530C();
  type metadata accessor for Siri_Nlu_External_ResponseStatus();
  sub_1C8776590(&qword_1EC2B71A8, type metadata accessor for Siri_Nlu_External_ResponseStatus);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C883EE98(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776590(&qword_1EC2B71C8, type metadata accessor for Siri_Nlu_External_ResponseStatus);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C883EF18(uint64_t a1)
{
  v2 = sub_1C8776590(&qword_1EC2B48D0, type metadata accessor for Siri_Nlu_External_ResponseStatus);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C883EF88()
{
  sub_1C8776590(&qword_1EC2B48D0, type metadata accessor for Siri_Nlu_External_ResponseStatus);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C883F008()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B4148);
  __swift_project_value_buffer(v0, qword_1EC2B4148);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE8D40;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "SUCCESS";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 100;
  *v10 = "INPUT";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 101;
  *v12 = "EMPTY_NLU_REQUEST";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 300;
  *v14 = "PROCESSING";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 301;
  *v16 = "INTERNAL_ERROR";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 302;
  *v18 = "INITIALISATION_ERROR";
  *(v18 + 1) = 20;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 303;
  *v20 = "FEATURE_EXTRACTION_ERROR";
  *(v20 + 1) = 24;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 500;
  *v22 = "COMMUNICATION";
  *(v22 + 1) = 13;
  v22[16] = 2;
  v9();
  return sub_1C8BD510C();
}

unint64_t sub_1C883F37C()
{
  result = qword_1EC2B48E0;
  if (!qword_1EC2B48E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B48E0);
  }

  return result;
}

unint64_t sub_1C883F3D4()
{
  result = qword_1EC2B48E8;
  if (!qword_1EC2B48E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B48E8);
  }

  return result;
}

unint64_t sub_1C883F42C()
{
  result = qword_1EC2B48D8;
  if (!qword_1EC2B48D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B48D8);
  }

  return result;
}

unint64_t sub_1C883F484()
{
  result = qword_1EC2B71B0;
  if (!qword_1EC2B71B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2B71B8, &qword_1C8BED508);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B71B0);
  }

  return result;
}

void sub_1C883F634()
{
  sub_1C8BD49FC();
  if (v0 <= 0x3F)
  {
    sub_1C87EB4B0(319, &qword_1EDACD370);
    if (v1 <= 0x3F)
    {
      sub_1C87EB4B0(319, &qword_1EDACD3E8);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for Siri_Nlu_External_ResponseStatus.StatusCode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Siri_Nlu_External_ResponseStatus.StatusCode(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t Siri_Nlu_Internal_NlRouter_NLRouterOverrides.nlRouterOverrides.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Siri_Nlu_Internal_NlRouter_NLRouterOverrides.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_Internal_NlRouter_NLRouterOverrides(v0) + 20);
  return OUTLINED_FUNCTION_242();
}

uint64_t Siri_Nlu_Internal_NlRouter_NLRouterOverride.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Siri_Nlu_Internal_NlRouter_NLRouterOverride.matchRules.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t Siri_Nlu_Internal_NlRouter_NLRouterOverride.route.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_Internal_NlRouter_NLRouterOverride(v1);
  sub_1C8778ED8(v0 + *(v2 + 44), &qword_1EC2B7590, &qword_1C8BED7A0);
  OUTLINED_FUNCTION_6_8();
  sub_1C8779244();
  type metadata accessor for Siri_Nlu_Internal_NlRouter_NLRouterOverrideRoute(0);
  OUTLINED_FUNCTION_19_1();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_Internal_NlRouter_NLRouterOverride.route.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_0(v7);
  v9 = type metadata accessor for Siri_Nlu_Internal_NlRouter_NLRouterOverrideRoute(v8);
  *(v1 + 16) = v9;
  OUTLINED_FUNCTION_21(v9);
  v11 = *(v10 + 64);
  *(v1 + 24) = __swift_coroFrameAllocStub(v11);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 32) = v12;
  *(v1 + 40) = *(type metadata accessor for Siri_Nlu_Internal_NlRouter_NLRouterOverride(0) + 44);
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_5_6();
  if (v13)
  {
    type metadata accessor for Siri_Nlu_Internal_NlRouter_NLRouterOverrideRoute.OneOf_Value(0);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
    v18 = &v12[*(v9 + 20)];
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_5_6();
    if (!v13)
    {
      sub_1C8778ED8(v0, &qword_1EC2B7590, &qword_1C8BED7A0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_8();
    OUTLINED_FUNCTION_184();
    sub_1C8779244();
  }

  OUTLINED_FUNCTION_260();
}

void sub_1C883FB6C()
{
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_154(v6);
  if (v7)
  {
    OUTLINED_FUNCTION_254_0();
    sub_1C88407C8();
    sub_1C8778ED8(v5 + v4, &qword_1EC2B7590, &qword_1C8BED7A0);
    OUTLINED_FUNCTION_6_8();
    sub_1C8779244();
    OUTLINED_FUNCTION_19_1();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v3);
    OUTLINED_FUNCTION_56_1();
    sub_1C8840550();
  }

  else
  {
    sub_1C8778ED8(v5 + v4, &qword_1EC2B7590, &qword_1C8BED7A0);
    OUTLINED_FUNCTION_6_8();
    sub_1C8779244();
    OUTLINED_FUNCTION_19_1();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v3);
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_260();

  free(v14);
}

uint64_t Siri_Nlu_Internal_NlRouter_NLRouterOverride.hasRoute.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_74();
  v7 = type metadata accessor for Siri_Nlu_Internal_NlRouter_NLRouterOverride(v6);
  OUTLINED_FUNCTION_13(*(v7 + 44));
  sub_1C8778810();
  type metadata accessor for Siri_Nlu_Internal_NlRouter_NLRouterOverrideRoute(0);
  v8 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v8, v9, v10);
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = OUTLINED_FUNCTION_121();
  sub_1C8778ED8(v13, v14, &qword_1C8BED7A0);
  return v12;
}

Swift::Void __swiftcall Siri_Nlu_Internal_NlRouter_NLRouterOverride.clearRoute()()
{
  v1 = type metadata accessor for Siri_Nlu_Internal_NlRouter_NLRouterOverride(0);
  sub_1C8778ED8(v0 + *(v1 + 44), &qword_1EC2B7590, &qword_1C8BED7A0);
  type metadata accessor for Siri_Nlu_Internal_NlRouter_NLRouterOverrideRoute(0);
  OUTLINED_FUNCTION_5();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_1C883FE2C(uint64_t a1)
{
  v2 = sub_1C8BD47FC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return Siri_Nlu_Internal_NlRouter_NLRouterOverride.creationTimestamp.setter();
}

uint64_t Siri_Nlu_Internal_NlRouter_NLRouterOverride.creationTimestamp.setter()
{
  v3 = OUTLINED_FUNCTION_241();
  v4 = *(type metadata accessor for Siri_Nlu_Internal_NlRouter_NLRouterOverride(v3) + 48);
  sub_1C8778ED8(v1 + v4, &qword_1EC2B7598, &qword_1C8C0A650);
  v5 = sub_1C8BD47FC();
  OUTLINED_FUNCTION_40_2(v5);
  (*(v6 + 32))(v1 + v4, v0, v2);
  OUTLINED_FUNCTION_19_1();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v2);
}

void Siri_Nlu_Internal_NlRouter_NLRouterOverride.creationTimestamp.modify()
{
  OUTLINED_FUNCTION_124();
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_18_1(v1);
  v2 = OUTLINED_FUNCTION_104_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  *(v0 + 8) = v6;
  v7 = sub_1C8BD47FC();
  *(v0 + 16) = v7;
  OUTLINED_FUNCTION_13_1(v7);
  v9 = v8;
  *(v0 + 24) = v8;
  v11 = *(v10 + 64);
  *(v0 + 32) = __swift_coroFrameAllocStub(v11);
  *(v0 + 40) = __swift_coroFrameAllocStub(v11);
  *(v0 + 48) = *(type metadata accessor for Siri_Nlu_Internal_NlRouter_NLRouterOverride(0) + 48);
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_76(v6, 1, v7);
  if (v12)
  {
    sub_1C8BD47EC();
    OUTLINED_FUNCTION_76(v6, 1, v7);
    if (!v12)
    {
      sub_1C8778ED8(v6, &qword_1EC2B7598, &qword_1C8C0A650);
    }
  }

  else
  {
    v13 = *(v9 + 32);
    v14 = OUTLINED_FUNCTION_184();
    v15(v14);
  }

  OUTLINED_FUNCTION_125();
}

void sub_1C8840110()
{
  OUTLINED_FUNCTION_261();
  v1 = *(*v0 + 12);
  v2 = (*v0)[4];
  v3 = (*v0)[5];
  v4 = (*v0)[2];
  v5 = (*v0)[3];
  v7 = **v0;
  v6 = (*v0)[1];
  if (v8)
  {
    v9 = *(v5 + 16);
    v10 = OUTLINED_FUNCTION_92_0();
    v11(v10);
    sub_1C8778ED8(v7 + v1, &qword_1EC2B7598, &qword_1C8C0A650);
    (*(v5 + 32))(v7 + v1, v2, v4);
    OUTLINED_FUNCTION_19_1();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v4);
    v15 = *(v5 + 8);
    v16 = OUTLINED_FUNCTION_220();
    v17(v16);
  }

  else
  {
    sub_1C8778ED8(v7 + v1, &qword_1EC2B7598, &qword_1C8C0A650);
    (*(v5 + 32))(v7 + v1, v3, v4);
    OUTLINED_FUNCTION_19_1();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v4);
  }

  free(v3);
  free(v2);
  free(v6);
  OUTLINED_FUNCTION_260();

  free(v21);
}

Swift::Void __swiftcall Siri_Nlu_Internal_NlRouter_NLRouterOverride.clearCreationTimestamp()()
{
  v1 = type metadata accessor for Siri_Nlu_Internal_NlRouter_NLRouterOverride(0);
  sub_1C8778ED8(v0 + *(v1 + 48), &qword_1EC2B7598, &qword_1C8C0A650);
  sub_1C8BD47FC();
  OUTLINED_FUNCTION_5();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_Internal_NlRouter_NLRouterOverride.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_207();
  v1 = *(type metadata accessor for Siri_Nlu_Internal_NlRouter_NLRouterOverride(v0) + 40);
  v2 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_21(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_130_1();

  return v6(v5);
}

uint64_t Siri_Nlu_Internal_NlRouter_NLRouterOverride.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_Internal_NlRouter_NLRouterOverride(v0) + 40);
  v2 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_21(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_167_1();

  return v6(v5);
}

uint64_t Siri_Nlu_Internal_NlRouter_NLRouterOverride.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_Internal_NlRouter_NLRouterOverride(v0) + 40);
  return OUTLINED_FUNCTION_242();
}

uint64_t Siri_Nlu_Internal_NlRouter_OverrideMatchRule.utterance.getter()
{
  OUTLINED_FUNCTION_93_1();
  v2 = OUTLINED_FUNCTION_253();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_31_3();
  OUTLINED_FUNCTION_3_8();
  if (v8)
  {
    sub_1C8778ED8(v1, &qword_1EC2B6188, &qword_1C8BE6E20);
LABEL_6:
    *v0 = 0;
    v0[1] = 0xE000000000000000;
    matched = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.Utterance(0);
    OUTLINED_FUNCTION_109_0(matched);
    return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  }

  OUTLINED_FUNCTION_92_0();
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1C8840550();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_28_6();
  OUTLINED_FUNCTION_5_0();
  return sub_1C8779244();
}

uint64_t Siri_Nlu_Internal_NlRouter_OverrideMatchRule.utterance.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2B6188, &qword_1C8BE6E20);
  OUTLINED_FUNCTION_28_6();
  OUTLINED_FUNCTION_218();
  sub_1C8779244();
  OUTLINED_FUNCTION_38_5();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_1C8840550()
{
  v1 = OUTLINED_FUNCTION_241();
  v3 = v2(v1);
  OUTLINED_FUNCTION_21(v3);
  (*(v4 + 8))(v0);
  return v0;
}

void Siri_Nlu_Internal_NlRouter_OverrideMatchRule.utterance.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_55_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_0(v7);
  matched = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.Utterance(v8);
  OUTLINED_FUNCTION_40_2(matched);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_110_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_43_3(v14);
  OUTLINED_FUNCTION_4_8();
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6188, &qword_1C8BE6E20);
  }

  else
  {
    OUTLINED_FUNCTION_253();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_28_6();
      OUTLINED_FUNCTION_254_0();
      sub_1C8779244();
      goto LABEL_7;
    }

    sub_1C8840550();
  }

  *v11 = 0;
  v11[1] = 0xE000000000000000;
  OUTLINED_FUNCTION_114_0();
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
LABEL_7:
  OUTLINED_FUNCTION_260();
}

void sub_1C88406CC(uint64_t **a1)
{
  OUTLINED_FUNCTION_32_6(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88407C8();
    sub_1C8778ED8(v5, &qword_1EC2B6188, &qword_1C8BE6E20);
    OUTLINED_FUNCTION_28_6();
    OUTLINED_FUNCTION_142_1();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_86_1();
    sub_1C8840550();
  }

  else
  {
    sub_1C8778ED8(v5, &qword_1EC2B6188, &qword_1C8BE6E20);
    OUTLINED_FUNCTION_28_6();
    OUTLINED_FUNCTION_268();
    sub_1C8779244();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t sub_1C88407C8()
{
  v1 = OUTLINED_FUNCTION_84();
  v3 = v2(v1);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_218();
  v7(v6);
  return v0;
}

uint64_t Siri_Nlu_Internal_NlRouter_OverrideMatchRule.utteranceRegex.getter()
{
  OUTLINED_FUNCTION_93_1();
  v2 = OUTLINED_FUNCTION_253();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_31_3();
  OUTLINED_FUNCTION_3_8();
  if (v8)
  {
    sub_1C8778ED8(v1, &qword_1EC2B6188, &qword_1C8BE6E20);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_27_3();
      OUTLINED_FUNCTION_5_0();
      return sub_1C8779244();
    }

    sub_1C8840550();
  }

  *v0 = 0;
  v0[1] = 0xE000000000000000;
  v0[2] = MEMORY[0x1E69E7CC0];
  v11 = v0 + *(type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.UtteranceRegex(0) + 24);
  return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
}

uint64_t Siri_Nlu_Internal_NlRouter_OverrideMatchRule.utteranceRegex.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2B6188, &qword_1C8BE6E20);
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_218();
  sub_1C8779244();
  OUTLINED_FUNCTION_38_5();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_Internal_NlRouter_OverrideMatchRule.utteranceRegex.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_55_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_43_0(v8);
  matched = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.UtteranceRegex(v9);
  OUTLINED_FUNCTION_40_2(matched);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_110_0(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_43_3(v15);
  OUTLINED_FUNCTION_4_8();
  if (v16)
  {
    sub_1C8778ED8(v1, &qword_1EC2B6188, &qword_1C8BE6E20);
LABEL_7:
    *v12 = 0;
    v12[1] = 0xE000000000000000;
    v12[2] = MEMORY[0x1E69E7CC0];
    v18 = v12 + *(v0 + 24);
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_253();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_1C8840550();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_254_0();
  sub_1C8779244();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C8840AB8(uint64_t **a1)
{
  OUTLINED_FUNCTION_32_6(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88407C8();
    sub_1C8778ED8(v5, &qword_1EC2B6188, &qword_1C8BE6E20);
    OUTLINED_FUNCTION_27_3();
    OUTLINED_FUNCTION_142_1();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_86_1();
    sub_1C8840550();
  }

  else
  {
    sub_1C8778ED8(v5, &qword_1EC2B6188, &qword_1C8BE6E20);
    OUTLINED_FUNCTION_27_3();
    OUTLINED_FUNCTION_268();
    sub_1C8779244();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t Siri_Nlu_Internal_NlRouter_OverrideMatchRule.previousUtterances.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_31_3();
  OUTLINED_FUNCTION_3_8();
  if (v7)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6188, &qword_1C8BE6E20);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      OUTLINED_FUNCTION_26_4();
      OUTLINED_FUNCTION_5_0();
      return sub_1C8779244();
    }

    sub_1C8840550();
  }

  v10 = OUTLINED_FUNCTION_143_1(MEMORY[0x1E69E7CC0]);
  matched = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousUtterances(v10);
  OUTLINED_FUNCTION_109_0(matched);
  return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
}

uint64_t Siri_Nlu_Internal_NlRouter_OverrideMatchRule.previousUtterances.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2B6188, &qword_1C8BE6E20);
  OUTLINED_FUNCTION_26_4();
  OUTLINED_FUNCTION_218();
  sub_1C8779244();
  OUTLINED_FUNCTION_38_5();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_Internal_NlRouter_OverrideMatchRule.previousUtterances.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_55_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_0(v7);
  matched = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousUtterances(v8);
  OUTLINED_FUNCTION_40_2(matched);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_110_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_43_3(v14);
  OUTLINED_FUNCTION_4_8();
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6188, &qword_1C8BE6E20);
LABEL_7:
    *v11 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_114_0();
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_253();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    sub_1C8840550();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_26_4();
  OUTLINED_FUNCTION_254_0();
  sub_1C8779244();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C8840E34(uint64_t **a1)
{
  OUTLINED_FUNCTION_32_6(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88407C8();
    sub_1C8778ED8(v5, &qword_1EC2B6188, &qword_1C8BE6E20);
    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_142_1();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_86_1();
    sub_1C8840550();
  }

  else
  {
    sub_1C8778ED8(v5, &qword_1EC2B6188, &qword_1C8BE6E20);
    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_268();
    sub_1C8779244();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t Siri_Nlu_Internal_NlRouter_OverrideMatchRule.previousUtterancesRegex.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_31_3();
  OUTLINED_FUNCTION_3_8();
  if (v7)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6188, &qword_1C8BE6E20);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 3)
    {
      OUTLINED_FUNCTION_25_5();
      OUTLINED_FUNCTION_5_0();
      return sub_1C8779244();
    }

    sub_1C8840550();
  }

  v10 = OUTLINED_FUNCTION_143_1(MEMORY[0x1E69E7CC0]);
  matched = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousUtterancesRegex(v10);
  OUTLINED_FUNCTION_109_0(matched);
  return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
}

uint64_t Siri_Nlu_Internal_NlRouter_OverrideMatchRule.previousUtterancesRegex.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2B6188, &qword_1C8BE6E20);
  OUTLINED_FUNCTION_25_5();
  OUTLINED_FUNCTION_218();
  sub_1C8779244();
  OUTLINED_FUNCTION_38_5();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_Internal_NlRouter_OverrideMatchRule.previousUtterancesRegex.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_55_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_0(v7);
  matched = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousUtterancesRegex(v8);
  OUTLINED_FUNCTION_40_2(matched);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_110_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_43_3(v14);
  OUTLINED_FUNCTION_4_8();
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6188, &qword_1C8BE6E20);
LABEL_7:
    *v11 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_114_0();
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_253();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 3)
  {
    sub_1C8840550();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_25_5();
  OUTLINED_FUNCTION_254_0();
  sub_1C8779244();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C88411B0(uint64_t **a1)
{
  OUTLINED_FUNCTION_32_6(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88407C8();
    sub_1C8778ED8(v5, &qword_1EC2B6188, &qword_1C8BE6E20);
    OUTLINED_FUNCTION_25_5();
    OUTLINED_FUNCTION_142_1();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_86_1();
    sub_1C8840550();
  }

  else
  {
    sub_1C8778ED8(v5, &qword_1EC2B6188, &qword_1C8BE6E20);
    OUTLINED_FUNCTION_25_5();
    OUTLINED_FUNCTION_268();
    sub_1C8779244();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t Siri_Nlu_Internal_NlRouter_OverrideMatchRule.siriResponses.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_31_3();
  OUTLINED_FUNCTION_3_8();
  if (v7)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6188, &qword_1C8BE6E20);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 4)
    {
      OUTLINED_FUNCTION_24_6();
      OUTLINED_FUNCTION_5_0();
      return sub_1C8779244();
    }

    sub_1C8840550();
  }

  v10 = OUTLINED_FUNCTION_143_1(MEMORY[0x1E69E7CC0]);
  matched = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.SiriResponses(v10);
  OUTLINED_FUNCTION_109_0(matched);
  return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
}

uint64_t Siri_Nlu_Internal_NlRouter_OverrideMatchRule.siriResponses.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2B6188, &qword_1C8BE6E20);
  OUTLINED_FUNCTION_24_6();
  OUTLINED_FUNCTION_218();
  sub_1C8779244();
  OUTLINED_FUNCTION_38_5();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_Internal_NlRouter_OverrideMatchRule.siriResponses.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_55_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_0(v7);
  matched = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.SiriResponses(v8);
  OUTLINED_FUNCTION_40_2(matched);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_110_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_43_3(v14);
  OUTLINED_FUNCTION_4_8();
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6188, &qword_1C8BE6E20);
LABEL_7:
    *v11 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_114_0();
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_253();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 4)
  {
    sub_1C8840550();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_24_6();
  OUTLINED_FUNCTION_254_0();
  sub_1C8779244();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C8841564(uint64_t **a1)
{
  OUTLINED_FUNCTION_32_6(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88407C8();
    sub_1C8778ED8(v5, &qword_1EC2B6188, &qword_1C8BE6E20);
    OUTLINED_FUNCTION_24_6();
    OUTLINED_FUNCTION_142_1();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_59_2();
    sub_1C8840550();
  }

  else
  {
    sub_1C8778ED8(v5, &qword_1EC2B6188, &qword_1C8BE6E20);
    OUTLINED_FUNCTION_24_6();
    OUTLINED_FUNCTION_268();
    sub_1C8779244();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t Siri_Nlu_Internal_NlRouter_OverrideMatchRule.siriResponsesRegex.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_31_3();
  OUTLINED_FUNCTION_3_8();
  if (v7)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6188, &qword_1C8BE6E20);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 5)
    {
      OUTLINED_FUNCTION_23_6();
      OUTLINED_FUNCTION_5_0();
      return sub_1C8779244();
    }

    sub_1C8840550();
  }

  v10 = OUTLINED_FUNCTION_143_1(MEMORY[0x1E69E7CC0]);
  matched = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.SiriResponsesRegex(v10);
  OUTLINED_FUNCTION_109_0(matched);
  return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
}

uint64_t Siri_Nlu_Internal_NlRouter_OverrideMatchRule.siriResponsesRegex.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2B6188, &qword_1C8BE6E20);
  OUTLINED_FUNCTION_23_6();
  OUTLINED_FUNCTION_218();
  sub_1C8779244();
  OUTLINED_FUNCTION_38_5();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_Internal_NlRouter_OverrideMatchRule.siriResponsesRegex.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_55_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_0(v7);
  matched = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.SiriResponsesRegex(v8);
  OUTLINED_FUNCTION_40_2(matched);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_110_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_43_3(v14);
  OUTLINED_FUNCTION_4_8();
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6188, &qword_1C8BE6E20);
LABEL_7:
    *v11 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_114_0();
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_253();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 5)
  {
    sub_1C8840550();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_23_6();
  OUTLINED_FUNCTION_254_0();
  sub_1C8779244();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C884190C(uint64_t **a1)
{
  OUTLINED_FUNCTION_32_6(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88407C8();
    sub_1C8778ED8(v5, &qword_1EC2B6188, &qword_1C8BE6E20);
    OUTLINED_FUNCTION_23_6();
    OUTLINED_FUNCTION_142_1();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_58_2();
    sub_1C8840550();
  }

  else
  {
    sub_1C8778ED8(v5, &qword_1EC2B6188, &qword_1C8BE6E20);
    OUTLINED_FUNCTION_23_6();
    OUTLINED_FUNCTION_268();
    sub_1C8779244();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t Siri_Nlu_Internal_NlRouter_OverrideMatchRule.plannerPrompting.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_31_3();
  OUTLINED_FUNCTION_3_8();
  if (v7)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6188, &qword_1C8BE6E20);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 6)
    {
      OUTLINED_FUNCTION_22_6();
      OUTLINED_FUNCTION_5_0();
      return sub_1C8779244();
    }

    sub_1C8840550();
  }

  return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
}

uint64_t Siri_Nlu_Internal_NlRouter_OverrideMatchRule.plannerPrompting.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2B6188, &qword_1C8BE6E20);
  OUTLINED_FUNCTION_22_6();
  OUTLINED_FUNCTION_218();
  sub_1C8779244();
  OUTLINED_FUNCTION_38_5();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_Internal_NlRouter_OverrideMatchRule.plannerPrompting.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_65_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_64_3(v2);
  v3 = OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_80(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_66_1(v5);
  matched = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PlannerPrompting(v6);
  OUTLINED_FUNCTION_80(matched);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_131_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_49_1(v11);
  v12 = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.OneOf_Value(0);
  OUTLINED_FUNCTION_36_1(v12);
  if (v13)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6188, &qword_1C8BE6E20);
LABEL_7:
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_271();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 6)
  {
    sub_1C8840550();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_22_6();
  OUTLINED_FUNCTION_82_3();
  sub_1C8779244();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C8841C84(uint64_t **a1)
{
  OUTLINED_FUNCTION_32_6(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88407C8();
    sub_1C8778ED8(v5, &qword_1EC2B6188, &qword_1C8BE6E20);
    OUTLINED_FUNCTION_22_6();
    OUTLINED_FUNCTION_142_1();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_86_1();
    sub_1C8840550();
  }

  else
  {
    sub_1C8778ED8(v5, &qword_1EC2B6188, &qword_1C8BE6E20);
    OUTLINED_FUNCTION_22_6();
    OUTLINED_FUNCTION_268();
    sub_1C8779244();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t Siri_Nlu_Internal_NlRouter_OverrideMatchRule.legacyNlprompting.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_31_3();
  OUTLINED_FUNCTION_3_8();
  if (v7)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6188, &qword_1C8BE6E20);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 7)
    {
      OUTLINED_FUNCTION_21_2();
      OUTLINED_FUNCTION_5_0();
      return sub_1C8779244();
    }

    sub_1C8840550();
  }

  return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
}

uint64_t Siri_Nlu_Internal_NlRouter_OverrideMatchRule.legacyNlprompting.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2B6188, &qword_1C8BE6E20);
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_218();
  sub_1C8779244();
  OUTLINED_FUNCTION_38_5();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_Internal_NlRouter_OverrideMatchRule.legacyNlprompting.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_65_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_64_3(v2);
  v3 = OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_80(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_66_1(v5);
  matched = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.LegacyNLPrompting(v6);
  OUTLINED_FUNCTION_80(matched);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_131_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_49_1(v11);
  v12 = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.OneOf_Value(0);
  OUTLINED_FUNCTION_36_1(v12);
  if (v13)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6188, &qword_1C8BE6E20);
LABEL_7:
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_271();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 7)
  {
    sub_1C8840550();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_82_3();
  sub_1C8779244();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C8842008(uint64_t **a1)
{
  OUTLINED_FUNCTION_32_6(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88407C8();
    sub_1C8778ED8(v5, &qword_1EC2B6188, &qword_1C8BE6E20);
    OUTLINED_FUNCTION_21_2();
    OUTLINED_FUNCTION_142_1();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_86_1();
    sub_1C8840550();
  }

  else
  {
    sub_1C8778ED8(v5, &qword_1EC2B6188, &qword_1C8BE6E20);
    OUTLINED_FUNCTION_21_2();
    OUTLINED_FUNCTION_268();
    sub_1C8779244();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t Siri_Nlu_Internal_NlRouter_OverrideMatchRule.pommesPrompting.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_31_3();
  OUTLINED_FUNCTION_3_8();
  if (v7)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6188, &qword_1C8BE6E20);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 8)
    {
      OUTLINED_FUNCTION_20_4();
      OUTLINED_FUNCTION_5_0();
      return sub_1C8779244();
    }

    sub_1C8840550();
  }

  return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
}

uint64_t Siri_Nlu_Internal_NlRouter_OverrideMatchRule.pommesPrompting.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2B6188, &qword_1C8BE6E20);
  OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_218();
  sub_1C8779244();
  OUTLINED_FUNCTION_38_5();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_Internal_NlRouter_OverrideMatchRule.pommesPrompting.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_65_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_64_3(v2);
  v3 = OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_80(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_66_1(v5);
  matched = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PommesPrompting(v6);
  OUTLINED_FUNCTION_80(matched);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_131_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_49_1(v11);
  v12 = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.OneOf_Value(0);
  OUTLINED_FUNCTION_36_1(v12);
  if (v13)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6188, &qword_1C8BE6E20);
LABEL_7:
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_271();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 8)
  {
    sub_1C8840550();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_82_3();
  sub_1C8779244();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C884238C(uint64_t **a1)
{
  OUTLINED_FUNCTION_32_6(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88407C8();
    sub_1C8778ED8(v5, &qword_1EC2B6188, &qword_1C8BE6E20);
    OUTLINED_FUNCTION_20_4();
    OUTLINED_FUNCTION_142_1();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_86_1();
    sub_1C8840550();
  }

  else
  {
    sub_1C8778ED8(v5, &qword_1EC2B6188, &qword_1C8BE6E20);
    OUTLINED_FUNCTION_20_4();
    OUTLINED_FUNCTION_268();
    sub_1C8779244();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t Siri_Nlu_Internal_NlRouter_OverrideMatchRule.siriXsdaprompting.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_31_3();
  OUTLINED_FUNCTION_3_8();
  if (v7)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6188, &qword_1C8BE6E20);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 9)
    {
      OUTLINED_FUNCTION_19_6();
      OUTLINED_FUNCTION_5_0();
      return sub_1C8779244();
    }

    sub_1C8840550();
  }

  return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
}

uint64_t Siri_Nlu_Internal_NlRouter_OverrideMatchRule.siriXsdaprompting.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2B6188, &qword_1C8BE6E20);
  OUTLINED_FUNCTION_19_6();
  OUTLINED_FUNCTION_218();
  sub_1C8779244();
  OUTLINED_FUNCTION_38_5();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_Internal_NlRouter_OverrideMatchRule.siriXsdaprompting.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_65_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_64_3(v2);
  v3 = OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_80(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_66_1(v5);
  matched = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.SiriXSDAPrompting(v6);
  OUTLINED_FUNCTION_80(matched);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_131_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_49_1(v11);
  v12 = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.OneOf_Value(0);
  OUTLINED_FUNCTION_36_1(v12);
  if (v13)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6188, &qword_1C8BE6E20);
LABEL_7:
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_271();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 9)
  {
    sub_1C8840550();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_19_6();
  OUTLINED_FUNCTION_82_3();
  sub_1C8779244();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C8842710(uint64_t **a1)
{
  OUTLINED_FUNCTION_32_6(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88407C8();
    sub_1C8778ED8(v5, &qword_1EC2B6188, &qword_1C8BE6E20);
    OUTLINED_FUNCTION_19_6();
    OUTLINED_FUNCTION_142_1();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_86_1();
    sub_1C8840550();
  }

  else
  {
    sub_1C8778ED8(v5, &qword_1EC2B6188, &qword_1C8BE6E20);
    OUTLINED_FUNCTION_19_6();
    OUTLINED_FUNCTION_268();
    sub_1C8779244();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t Siri_Nlu_Internal_NlRouter_OverrideMatchRule.excluding.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_31_3();
  OUTLINED_FUNCTION_3_8();
  if (v7)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6188, &qword_1C8BE6E20);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 10)
    {
      OUTLINED_FUNCTION_18_9();
      OUTLINED_FUNCTION_5_0();
      return sub_1C8779244();
    }

    sub_1C8840550();
  }

  v10 = OUTLINED_FUNCTION_143_1(MEMORY[0x1E69E7CC0]);
  matched = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.Excluding(v10);
  OUTLINED_FUNCTION_109_0(matched);
  return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
}

uint64_t Siri_Nlu_Internal_NlRouter_OverrideMatchRule.excluding.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2B6188, &qword_1C8BE6E20);
  OUTLINED_FUNCTION_18_9();
  OUTLINED_FUNCTION_218();
  sub_1C8779244();
  OUTLINED_FUNCTION_38_5();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_Internal_NlRouter_OverrideMatchRule.excluding.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_55_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_0(v7);
  matched = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.Excluding(v8);
  OUTLINED_FUNCTION_40_2(matched);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_110_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_43_3(v14);
  OUTLINED_FUNCTION_4_8();
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6188, &qword_1C8BE6E20);
LABEL_7:
    *v11 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_114_0();
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_253();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 10)
  {
    sub_1C8840550();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_18_9();
  OUTLINED_FUNCTION_254_0();
  sub_1C8779244();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C8842A8C(uint64_t **a1)
{
  OUTLINED_FUNCTION_32_6(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88407C8();
    sub_1C8778ED8(v5, &qword_1EC2B6188, &qword_1C8BE6E20);
    OUTLINED_FUNCTION_18_9();
    OUTLINED_FUNCTION_142_1();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_86_1();
    sub_1C8840550();
  }

  else
  {
    sub_1C8778ED8(v5, &qword_1EC2B6188, &qword_1C8BE6E20);
    OUTLINED_FUNCTION_18_9();
    OUTLINED_FUNCTION_268();
    sub_1C8779244();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t Siri_Nlu_Internal_NlRouter_OverrideMatchRule.tools.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_31_3();
  OUTLINED_FUNCTION_3_8();
  if (v7)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6188, &qword_1C8BE6E20);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 11)
    {
      OUTLINED_FUNCTION_17_7();
      OUTLINED_FUNCTION_5_0();
      return sub_1C8779244();
    }

    sub_1C8840550();
  }

  v10 = OUTLINED_FUNCTION_143_1(MEMORY[0x1E69E7CC0]);
  matched = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.Tools(v10);
  OUTLINED_FUNCTION_109_0(matched);
  return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
}

uint64_t Siri_Nlu_Internal_NlRouter_OverrideMatchRule.tools.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2B6188, &qword_1C8BE6E20);
  OUTLINED_FUNCTION_17_7();
  OUTLINED_FUNCTION_218();
  sub_1C8779244();
  OUTLINED_FUNCTION_38_5();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_Internal_NlRouter_OverrideMatchRule.tools.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_55_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_0(v7);
  matched = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.Tools(v8);
  OUTLINED_FUNCTION_40_2(matched);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_110_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_43_3(v14);
  OUTLINED_FUNCTION_4_8();
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6188, &qword_1C8BE6E20);
LABEL_7:
    *v11 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_114_0();
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_253();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 11)
  {
    sub_1C8840550();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_17_7();
  OUTLINED_FUNCTION_254_0();
  sub_1C8779244();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C8842E40(uint64_t **a1)
{
  OUTLINED_FUNCTION_32_6(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88407C8();
    sub_1C8778ED8(v5, &qword_1EC2B6188, &qword_1C8BE6E20);
    OUTLINED_FUNCTION_17_7();
    OUTLINED_FUNCTION_142_1();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_86_1();
    sub_1C8840550();
  }

  else
  {
    sub_1C8778ED8(v5, &qword_1EC2B6188, &qword_1C8BE6E20);
    OUTLINED_FUNCTION_17_7();
    OUTLINED_FUNCTION_268();
    sub_1C8779244();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t Siri_Nlu_Internal_NlRouter_OverrideMatchRule.hasAppInContext_p.getter()
{
  OUTLINED_FUNCTION_93_1();
  v2 = OUTLINED_FUNCTION_253();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_31_3();
  OUTLINED_FUNCTION_3_8();
  if (v8)
  {
    sub_1C8778ED8(v1, &qword_1EC2B6188, &qword_1C8BE6E20);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 12)
    {
      OUTLINED_FUNCTION_16_5();
      OUTLINED_FUNCTION_5_0();
      return sub_1C8779244();
    }

    sub_1C8840550();
  }

  *v0 = 0;
  v0[1] = 0xE000000000000000;
  HasAppInContext = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.HasAppInContext(0);
  OUTLINED_FUNCTION_109_0(HasAppInContext);
  return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
}

uint64_t Siri_Nlu_Internal_NlRouter_OverrideMatchRule.hasAppInContext_p.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2B6188, &qword_1C8BE6E20);
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_218();
  sub_1C8779244();
  OUTLINED_FUNCTION_38_5();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_Internal_NlRouter_OverrideMatchRule.hasAppInContext_p.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_55_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_0(v7);
  HasAppInContext = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.HasAppInContext(v8);
  OUTLINED_FUNCTION_40_2(HasAppInContext);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_110_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_43_3(v14);
  OUTLINED_FUNCTION_4_8();
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6188, &qword_1C8BE6E20);
LABEL_7:
    *v11 = 0;
    v11[1] = 0xE000000000000000;
    OUTLINED_FUNCTION_114_0();
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_253();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 12)
  {
    sub_1C8840550();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_254_0();
  sub_1C8779244();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C88431F0(uint64_t **a1)
{
  OUTLINED_FUNCTION_32_6(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88407C8();
    sub_1C8778ED8(v5, &qword_1EC2B6188, &qword_1C8BE6E20);
    OUTLINED_FUNCTION_16_5();
    OUTLINED_FUNCTION_142_1();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_86_1();
    sub_1C8840550();
  }

  else
  {
    sub_1C8778ED8(v5, &qword_1EC2B6188, &qword_1C8BE6E20);
    OUTLINED_FUNCTION_16_5();
    OUTLINED_FUNCTION_268();
    sub_1C8779244();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t Siri_Nlu_Internal_NlRouter_OverrideMatchRule.retrievedContext.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_31_3();
  OUTLINED_FUNCTION_3_8();
  if (v7)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6188, &qword_1C8BE6E20);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 13)
    {
      OUTLINED_FUNCTION_15_6();
      OUTLINED_FUNCTION_5_0();
      return sub_1C8779244();
    }

    sub_1C8840550();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  matched = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.RetrievedContext(0);
  v11 = OUTLINED_FUNCTION_109_0(matched);
  return OUTLINED_FUNCTION_147_1(v11, v12);
}

uint64_t Siri_Nlu_Internal_NlRouter_OverrideMatchRule.retrievedContext.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2B6188, &qword_1C8BE6E20);
  OUTLINED_FUNCTION_15_6();
  OUTLINED_FUNCTION_218();
  sub_1C8779244();
  OUTLINED_FUNCTION_38_5();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_Internal_NlRouter_OverrideMatchRule.retrievedContext.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_55_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_43_0(v8);
  matched = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.RetrievedContext(v9);
  OUTLINED_FUNCTION_40_2(matched);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_110_0(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_43_3(v15);
  OUTLINED_FUNCTION_4_8();
  if (v16)
  {
    sub_1C8778ED8(v1, &qword_1EC2B6188, &qword_1C8BE6E20);
LABEL_7:
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_114_0();
    *v18 = 0;
    v18[1] = 0;
    *(v12 + *(v0 + 24)) = 2;
    *(v12 + *(v0 + 28)) = 2;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_253();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 13)
  {
    sub_1C8840550();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_15_6();
  OUTLINED_FUNCTION_254_0();
  sub_1C8779244();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C884357C(uint64_t **a1)
{
  OUTLINED_FUNCTION_32_6(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88407C8();
    sub_1C8778ED8(v5, &qword_1EC2B6188, &qword_1C8BE6E20);
    OUTLINED_FUNCTION_15_6();
    OUTLINED_FUNCTION_142_1();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_86_1();
    sub_1C8840550();
  }

  else
  {
    sub_1C8778ED8(v5, &qword_1EC2B6188, &qword_1C8BE6E20);
    OUTLINED_FUNCTION_15_6();
    OUTLINED_FUNCTION_268();
    sub_1C8779244();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t Siri_Nlu_Internal_NlRouter_OverrideMatchRule.previousExecutionSource.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_31_3();
  OUTLINED_FUNCTION_3_8();
  if (v7)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6188, &qword_1C8BE6E20);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 14)
    {
      OUTLINED_FUNCTION_14_5();
      OUTLINED_FUNCTION_5_0();
      return sub_1C8779244();
    }

    sub_1C8840550();
  }

  type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.OneOf_ExecutionSource(0);
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  matched = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource(0);
  OUTLINED_FUNCTION_109_0(matched);
  return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
}

uint64_t Siri_Nlu_Internal_NlRouter_OverrideMatchRule.previousExecutionSource.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2B6188, &qword_1C8BE6E20);
  OUTLINED_FUNCTION_14_5();
  OUTLINED_FUNCTION_218();
  sub_1C8779244();
  OUTLINED_FUNCTION_38_5();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_Internal_NlRouter_OverrideMatchRule.previousExecutionSource.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_55_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_0(v7);
  matched = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource(v8);
  OUTLINED_FUNCTION_40_2(matched);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_110_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_43_3(v13);
  OUTLINED_FUNCTION_4_8();
  if (v14)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6188, &qword_1C8BE6E20);
LABEL_7:
    type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.OneOf_ExecutionSource(0);
    OUTLINED_FUNCTION_117();
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    OUTLINED_FUNCTION_114_0();
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_253();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 14)
  {
    sub_1C8840550();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_14_5();
  OUTLINED_FUNCTION_254_0();
  sub_1C8779244();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C8843910(uint64_t **a1)
{
  OUTLINED_FUNCTION_32_6(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88407C8();
    sub_1C8778ED8(v5, &qword_1EC2B6188, &qword_1C8BE6E20);
    OUTLINED_FUNCTION_14_5();
    OUTLINED_FUNCTION_142_1();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_86_1();
    sub_1C8840550();
  }

  else
  {
    sub_1C8778ED8(v5, &qword_1EC2B6188, &qword_1C8BE6E20);
    OUTLINED_FUNCTION_14_5();
    OUTLINED_FUNCTION_268();
    sub_1C8779244();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t sub_1C8843A24()
{
  v0 = OUTLINED_FUNCTION_207();
  v2 = *(v1(v0) + 20);
  v3 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_130_1();

  return v7(v6);
}

uint64_t sub_1C8843AAC()
{
  v0 = OUTLINED_FUNCTION_241();
  v2 = *(v1(v0) + 20);
  v3 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_167_1();

  return v7(v6);
}

uint64_t Siri_Nlu_Internal_NlRouter_OverrideMatchRule.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule(v0) + 20);
  return OUTLINED_FUNCTION_242();
}

void static Siri_Nlu_Internal_NlRouter_OverrideMatchRule.OneOf_Value.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_124();
  a19 = v20;
  a20 = v21;
  v225 = v23;
  v226 = v22;
  matched = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource(0);
  v25 = OUTLINED_FUNCTION_80(matched);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_9_0();
  v214 = v28;
  v29 = OUTLINED_FUNCTION_86();
  v30 = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.RetrievedContext(v29);
  v31 = OUTLINED_FUNCTION_80(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_9_0();
  v212 = v34;
  v35 = OUTLINED_FUNCTION_86();
  HasAppInContext = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.HasAppInContext(v35);
  v36 = OUTLINED_FUNCTION_21(HasAppInContext);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_9_0();
  v215 = v39;
  v40 = OUTLINED_FUNCTION_86();
  v198 = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.Tools(v40);
  v41 = OUTLINED_FUNCTION_21(v198);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_9_0();
  v213 = v44;
  v45 = OUTLINED_FUNCTION_86();
  v197 = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.Excluding(v45);
  v46 = OUTLINED_FUNCTION_21(v197);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_9_0();
  v211 = v49;
  v50 = OUTLINED_FUNCTION_86();
  v51 = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.SiriXSDAPrompting(v50);
  v52 = OUTLINED_FUNCTION_80(v51);
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_9_0();
  v210 = v55;
  v56 = OUTLINED_FUNCTION_86();
  v57 = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PommesPrompting(v56);
  v58 = OUTLINED_FUNCTION_80(v57);
  v60 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_9_0();
  v209 = v61;
  v62 = OUTLINED_FUNCTION_86();
  v63 = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.LegacyNLPrompting(v62);
  v64 = OUTLINED_FUNCTION_80(v63);
  v66 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_9_0();
  v208 = v67;
  v68 = OUTLINED_FUNCTION_86();
  v69 = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PlannerPrompting(v68);
  v70 = OUTLINED_FUNCTION_80(v69);
  v72 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_9_0();
  v207 = v73;
  v74 = OUTLINED_FUNCTION_86();
  v196 = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.SiriResponsesRegex(v74);
  v75 = OUTLINED_FUNCTION_21(v196);
  v77 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_9_0();
  v206 = v78;
  v79 = OUTLINED_FUNCTION_86();
  v195 = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.SiriResponses(v79);
  v80 = OUTLINED_FUNCTION_21(v195);
  v82 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_9_0();
  v205 = v83;
  v84 = OUTLINED_FUNCTION_86();
  v194 = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousUtterancesRegex(v84);
  v85 = OUTLINED_FUNCTION_21(v194);
  v87 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_9_0();
  v204 = v88;
  v89 = OUTLINED_FUNCTION_86();
  v193 = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousUtterances(v89);
  v90 = OUTLINED_FUNCTION_21(v193);
  v92 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v90);
  OUTLINED_FUNCTION_9_0();
  v202 = v93;
  v94 = OUTLINED_FUNCTION_86();
  v192 = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.UtteranceRegex(v94);
  v95 = OUTLINED_FUNCTION_21(v192);
  v97 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_9_0();
  v203 = v98;
  v99 = OUTLINED_FUNCTION_86();
  v199 = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.Utterance(v99);
  v100 = OUTLINED_FUNCTION_21(v199);
  v102 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v100);
  OUTLINED_FUNCTION_9_0();
  v200 = v103;
  v104 = OUTLINED_FUNCTION_86();
  v105 = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.OneOf_Value(v104);
  v106 = OUTLINED_FUNCTION_21(v105);
  v108 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v106);
  OUTLINED_FUNCTION_34();
  v221 = v109 - v110;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v111);
  OUTLINED_FUNCTION_123();
  v220 = v112;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v113);
  OUTLINED_FUNCTION_123();
  v224 = v114;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v115);
  OUTLINED_FUNCTION_123();
  v223 = v116;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v117);
  OUTLINED_FUNCTION_123();
  v222 = v118;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v119);
  OUTLINED_FUNCTION_123();
  v218 = v120;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v121);
  OUTLINED_FUNCTION_123();
  v216 = v122;
  OUTLINED_FUNCTION_83_0();
  v124 = MEMORY[0x1EEE9AC00](v123);
  v125 = MEMORY[0x1EEE9AC00](v124);
  MEMORY[0x1EEE9AC00](v125);
  OUTLINED_FUNCTION_123();
  v219 = v126;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v127);
  OUTLINED_FUNCTION_123();
  v217 = v128;
  OUTLINED_FUNCTION_83_0();
  v130 = MEMORY[0x1EEE9AC00](v129);
  v132 = (&v192 - v131);
  v133 = MEMORY[0x1EEE9AC00](v130);
  v135 = (&v192 - v134);
  v136 = MEMORY[0x1EEE9AC00](v133);
  v138 = (&v192 - v137);
  MEMORY[0x1EEE9AC00](v136);
  v140 = (&v192 - v139);
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B75A0, &qword_1C8BED7A8);
  OUTLINED_FUNCTION_80(v141);
  v143 = *(v142 + 64);
  OUTLINED_FUNCTION_77();
  v145 = MEMORY[0x1EEE9AC00](v144);
  v147 = &v192 - v146;
  v148 = *(v145 + 56);
  sub_1C88407C8();
  v226 = v148;
  sub_1C88407C8();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_1_9();
      sub_1C88407C8();
      if (OUTLINED_FUNCTION_94_1() != 1)
      {
        goto LABEL_55;
      }

      OUTLINED_FUNCTION_27_3();
      OUTLINED_FUNCTION_176_0(&a16);
      v172 = *v138 == *type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.OneOf_Value && v138[1] == loc_1C87777C8;
      if (v172 || (sub_1C8BD529C() & 1) != 0)
      {
        v173 = v138[2];
        sub_1C87D89BC();
        if (v174)
        {
          v175 = *(v192 + 24);
          sub_1C8BD49FC();
          OUTLINED_FUNCTION_0_9();
          sub_1C87765D8(v176, v177);
          sub_1C8BD517C();
        }
      }

      OUTLINED_FUNCTION_117_1();
      sub_1C8840550();
      goto LABEL_70;
    case 2u:
      OUTLINED_FUNCTION_1_9();
      sub_1C88407C8();
      if (OUTLINED_FUNCTION_94_1() != 2)
      {
        goto LABEL_55;
      }

      OUTLINED_FUNCTION_26_4();
      OUTLINED_FUNCTION_176_0(&a15);
      if (sub_1C87D2814(*v135, *type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.OneOf_Value))
      {
        OUTLINED_FUNCTION_119_1(&v225);
        OUTLINED_FUNCTION_0_9();
        sub_1C87765D8(v164, v165);
        sub_1C8BD517C();
      }

      OUTLINED_FUNCTION_116_1();
      sub_1C8840550();
      goto LABEL_70;
    case 3u:
      OUTLINED_FUNCTION_1_9();
      sub_1C88407C8();
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_55;
      }

      OUTLINED_FUNCTION_25_5();
      v166 = v204;
      sub_1C8779244();
      if (sub_1C87D2814(*v132, *v166))
      {
        v167 = *(v194 + 20);
        sub_1C8BD49FC();
        OUTLINED_FUNCTION_0_9();
        sub_1C87765D8(v168, v169);
        sub_1C8BD517C();
      }

      OUTLINED_FUNCTION_115_2();
      sub_1C8840550();
      OUTLINED_FUNCTION_218();
      goto LABEL_70;
    case 4u:
      OUTLINED_FUNCTION_1_9();
      sub_1C88407C8();
      if (OUTLINED_FUNCTION_94_1() != 4)
      {
        goto LABEL_55;
      }

      OUTLINED_FUNCTION_24_6();
      OUTLINED_FUNCTION_176_0(&a18);
      v153 = OUTLINED_FUNCTION_170_1();
      if (sub_1C87D2814(v153, v154))
      {
        OUTLINED_FUNCTION_119_1(&v227);
        OUTLINED_FUNCTION_0_9();
        sub_1C87765D8(v155, v156);
        OUTLINED_FUNCTION_100_1();
      }

      OUTLINED_FUNCTION_59_2();
      sub_1C8840550();
      goto LABEL_70;
    case 5u:
      OUTLINED_FUNCTION_1_9();
      sub_1C88407C8();
      if (OUTLINED_FUNCTION_94_1() != 5)
      {
        goto LABEL_55;
      }

      OUTLINED_FUNCTION_23_6();
      sub_1C8779244();
      v178 = OUTLINED_FUNCTION_170_1();
      if (sub_1C87D2814(v178, v179))
      {
        OUTLINED_FUNCTION_119_1(&a9);
        OUTLINED_FUNCTION_0_9();
        sub_1C87765D8(v180, v181);
        OUTLINED_FUNCTION_100_1();
      }

      OUTLINED_FUNCTION_58_2();
      sub_1C8840550();
      goto LABEL_70;
    case 6u:
      OUTLINED_FUNCTION_1_9();
      sub_1C88407C8();
      if (OUTLINED_FUNCTION_94_1() != 6)
      {
        goto LABEL_55;
      }

      OUTLINED_FUNCTION_22_6();
      sub_1C8779244();
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_9();
      sub_1C87765D8(v182, v183);
      sub_1C8BD517C();
      sub_1C8840550();
      goto LABEL_70;
    case 7u:
      OUTLINED_FUNCTION_1_9();
      sub_1C88407C8();
      if (OUTLINED_FUNCTION_94_1() != 7)
      {
        goto LABEL_55;
      }

      OUTLINED_FUNCTION_21_2();
      sub_1C8779244();
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_9();
      sub_1C87765D8(v170, v171);
      OUTLINED_FUNCTION_184();
      sub_1C8BD517C();
      goto LABEL_54;
    case 8u:
      OUTLINED_FUNCTION_1_9();
      sub_1C88407C8();
      if (OUTLINED_FUNCTION_94_1() != 8)
      {
        goto LABEL_55;
      }

      OUTLINED_FUNCTION_20_4();
      sub_1C8779244();
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_9();
      sub_1C87765D8(v187, v188);
      OUTLINED_FUNCTION_184();
      sub_1C8BD517C();
      goto LABEL_54;
    case 9u:
      OUTLINED_FUNCTION_1_9();
      sub_1C88407C8();
      if (OUTLINED_FUNCTION_94_1() != 9)
      {
        goto LABEL_55;
      }

      OUTLINED_FUNCTION_19_6();
      sub_1C8779244();
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_9();
      sub_1C87765D8(v162, v163);
      OUTLINED_FUNCTION_184();
      sub_1C8BD517C();
      goto LABEL_54;
    case 0xAu:
      OUTLINED_FUNCTION_1_9();
      sub_1C88407C8();
      if (OUTLINED_FUNCTION_94_1() != 10)
      {
        goto LABEL_55;
      }

      OUTLINED_FUNCTION_18_9();
      sub_1C8779244();
      v184 = OUTLINED_FUNCTION_170_1();
      if (sub_1C87D8640(v184))
      {
        OUTLINED_FUNCTION_119_1(&a10);
        OUTLINED_FUNCTION_0_9();
        sub_1C87765D8(v185, v186);
        OUTLINED_FUNCTION_100_1();
      }

      goto LABEL_54;
    case 0xBu:
      OUTLINED_FUNCTION_1_9();
      sub_1C88407C8();
      if (OUTLINED_FUNCTION_94_1() != 11)
      {
        goto LABEL_55;
      }

      OUTLINED_FUNCTION_17_7();
      sub_1C8779244();
      v149 = OUTLINED_FUNCTION_170_1();
      if (sub_1C87D2814(v149, v150))
      {
        OUTLINED_FUNCTION_119_1(&a11);
        OUTLINED_FUNCTION_0_9();
        sub_1C87765D8(v151, v152);
        OUTLINED_FUNCTION_100_1();
      }

      goto LABEL_54;
    case 0xCu:
      OUTLINED_FUNCTION_1_9();
      v157 = v224;
      sub_1C88407C8();
      if (OUTLINED_FUNCTION_94_1() != 12)
      {
        goto LABEL_55;
      }

      OUTLINED_FUNCTION_16_5();
      v158 = v215;
      sub_1C8779244();
      v159 = *v157 == *v158 && v157[1] == v158[1];
      if (v159 || (sub_1C8BD529C() & 1) != 0)
      {
        OUTLINED_FUNCTION_119_1(&a14);
        OUTLINED_FUNCTION_0_9();
        sub_1C87765D8(v160, v161);
        OUTLINED_FUNCTION_100_1();
      }

      goto LABEL_54;
    case 0xDu:
      OUTLINED_FUNCTION_1_9();
      sub_1C88407C8();
      if (OUTLINED_FUNCTION_94_1() != 13)
      {
        goto LABEL_55;
      }

      OUTLINED_FUNCTION_15_6();
      sub_1C8779244();
      OUTLINED_FUNCTION_184();
      static Siri_Nlu_Internal_NlRouter_OverrideMatchRule.RetrievedContext.== infix(_:_:)();
      goto LABEL_54;
    case 0xEu:
      OUTLINED_FUNCTION_1_9();
      sub_1C88407C8();
      if (OUTLINED_FUNCTION_94_1() != 14)
      {
        goto LABEL_55;
      }

      OUTLINED_FUNCTION_14_5();
      sub_1C8779244();
      OUTLINED_FUNCTION_184();
      static Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.== infix(_:_:)();
LABEL_54:
      sub_1C8840550();
      goto LABEL_70;
    default:
      OUTLINED_FUNCTION_1_9();
      sub_1C88407C8();
      if (OUTLINED_FUNCTION_94_1())
      {
LABEL_55:
        sub_1C8840550();
        sub_1C8778ED8(v147, &qword_1EC2B75A0, &qword_1C8BED7A8);
      }

      else
      {
        OUTLINED_FUNCTION_28_6();
        OUTLINED_FUNCTION_176_0(&a13);
        v189 = *v140 == *type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.OneOf_Value && v140[1] == loc_1C87777C8;
        if (v189 || (sub_1C8BD529C() & 1) != 0)
        {
          OUTLINED_FUNCTION_119_1(&a12);
          OUTLINED_FUNCTION_0_9();
          sub_1C87765D8(v190, v191);
          sub_1C8BD517C();
        }

        OUTLINED_FUNCTION_118_1();
        sub_1C8840550();
LABEL_70:
        sub_1C8840550();
        OUTLINED_FUNCTION_7_11();
        sub_1C8840550();
      }

      OUTLINED_FUNCTION_125();
      return;
  }
}

uint64_t static Siri_Nlu_Internal_NlRouter_OverrideMatchRule.UtteranceRegex.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_85_2(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1C8BD529C() & 1) == 0)
  {
    return 0;
  }

  v7 = *(v3 + 16);
  v8 = *(v2 + 16);
  sub_1C87D89BC();
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = *(type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.UtteranceRegex(0) + 24);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_0_9();
  sub_1C87765D8(v11, v12);
  return OUTLINED_FUNCTION_64_0() & 1;
}

uint64_t sub_1C8844EA0(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  OUTLINED_FUNCTION_85_2(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1C8BD529C() & 1) == 0)
  {
    return 0;
  }

  v7 = a3(0);
  OUTLINED_FUNCTION_165_1(v7);
  OUTLINED_FUNCTION_0_9();
  sub_1C87765D8(v8, v9);
  return OUTLINED_FUNCTION_64_0() & 1;
}

uint64_t static Siri_Nlu_Internal_NlRouter_OverrideMatchRule.RetrievedContext.== infix(_:_:)()
{
  v2 = OUTLINED_FUNCTION_84();
  matched = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.RetrievedContext(v2);
  v4 = matched[5];
  v5 = (v1 + v4);
  v6 = *(v1 + v4 + 8);
  v7 = (v0 + v4);
  v8 = v7[1];
  if (v6)
  {
    if (!v8)
    {
      return 0;
    }

    v9 = *v5 == *v7 && v6 == v8;
    if (!v9 && (sub_1C8BD529C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v10 = matched[6];
  v11 = *(v1 + v10);
  v12 = *(v0 + v10);
  if (v11 == 2)
  {
    if (v12 != 2)
    {
      return 0;
    }
  }

  else if (v12 == 2 || ((v11 ^ v12) & 1) != 0)
  {
    return 0;
  }

  v13 = matched[7];
  v14 = *(v1 + v13);
  v15 = *(v0 + v13);
  if (v14 == 2)
  {
    if (v15 == 2)
    {
      goto LABEL_21;
    }

    return 0;
  }

  if (v15 == 2 || ((v14 ^ v15) & 1) != 0)
  {
    return 0;
  }

LABEL_21:
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_0_9();
  sub_1C87765D8(v17, v18);
  OUTLINED_FUNCTION_5_0();
  return sub_1C8BD517C() & 1;
}

void static Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_84();
  matched = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.OneOf_ExecutionSource(v1);
  v3 = OUTLINED_FUNCTION_21(matched);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_180();
  v6 = OUTLINED_FUNCTION_104_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_80(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_103();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B75B0, &qword_1C8BED7B8);
  OUTLINED_FUNCTION_80(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_60_1();
  v17 = *(v16 + 56);
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_43_1(v0);
  if (v18)
  {
    OUTLINED_FUNCTION_43_1(v0 + v17);
    if (v18)
    {
      sub_1C8778ED8(v0, &qword_1EC2B75A8, &qword_1C8BED7B0);
LABEL_12:
      v22 = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource(0);
      OUTLINED_FUNCTION_165_1(v22);
      OUTLINED_FUNCTION_0_9();
      sub_1C87765D8(v23, v24);
      v19 = OUTLINED_FUNCTION_64_0();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_253();
  sub_1C8778810();
  OUTLINED_FUNCTION_43_1(v0 + v17);
  if (v18)
  {
    OUTLINED_FUNCTION_57_2();
    sub_1C8840550();
LABEL_9:
    sub_1C8778ED8(v0, &qword_1EC2B75B0, &qword_1C8BED7B8);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_148_0();
  OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.OneOf_ExecutionSource.== infix(_:_:)();
  v21 = v20;
  sub_1C8840550();
  OUTLINED_FUNCTION_175_0();
  sub_1C8778ED8(v0, &qword_1EC2B75A8, &qword_1C8BED7B0);
  if (v21)
  {
    goto LABEL_12;
  }

LABEL_10:
  v19 = 0;
LABEL_13:
  OUTLINED_FUNCTION_157(v19);
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_Internal_NlRouter_OverrideMatchRule.Utterance.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.Utterance(v0) + 20);
  return OUTLINED_FUNCTION_242();
}

uint64_t Siri_Nlu_Internal_NlRouter_OverrideMatchRule.UtteranceRegex.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_207();
  v1 = *(type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.UtteranceRegex(v0) + 24);
  v2 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_21(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_130_1();

  return v6(v5);
}

uint64_t Siri_Nlu_Internal_NlRouter_OverrideMatchRule.UtteranceRegex.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.UtteranceRegex(v0) + 24);
  v2 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_21(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_167_1();

  return v6(v5);
}

uint64_t Siri_Nlu_Internal_NlRouter_OverrideMatchRule.UtteranceRegex.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.UtteranceRegex(v0) + 24);
  return OUTLINED_FUNCTION_242();
}

uint64_t Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousUtterances.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousUtterances(v0) + 20);
  return OUTLINED_FUNCTION_242();
}

uint64_t Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousUtterancesRegex.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousUtterancesRegex(v0) + 20);
  return OUTLINED_FUNCTION_242();
}

uint64_t Siri_Nlu_Internal_NlRouter_OverrideMatchRule.SiriResponses.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.SiriResponses(v0) + 20);
  return OUTLINED_FUNCTION_242();
}

uint64_t Siri_Nlu_Internal_NlRouter_OverrideMatchRule.SiriResponsesRegex.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.SiriResponsesRegex(v0) + 20);
  return OUTLINED_FUNCTION_242();
}

uint64_t Siri_Nlu_Internal_NlRouter_OverrideMatchRule.Excluding.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.Excluding(v0) + 20);
  return OUTLINED_FUNCTION_242();
}

uint64_t Siri_Nlu_Internal_NlRouter_OverrideMatchRule.Tools.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.Tools(v0) + 20);
  return OUTLINED_FUNCTION_242();
}

uint64_t Siri_Nlu_Internal_NlRouter_OverrideMatchRule.HasAppInContext.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.HasAppInContext(v0) + 20);
  return OUTLINED_FUNCTION_242();
}

uint64_t Siri_Nlu_Internal_NlRouter_OverrideMatchRule.RetrievedContext.appInFocusBundleID.getter()
{
  OUTLINED_FUNCTION_133_0();
  v2 = (v0 + v1);
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  return OUTLINED_FUNCTION_218();
}

uint64_t sub_1C8845904(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_Internal_NlRouter_OverrideMatchRule.RetrievedContext.appInFocusBundleID.setter(v1, v2);
}

uint64_t Siri_Nlu_Internal_NlRouter_OverrideMatchRule.RetrievedContext.appInFocusBundleID.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_133_0();
  v6 = (v2 + v5);
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t Siri_Nlu_Internal_NlRouter_OverrideMatchRule.RetrievedContext.appInFocusBundleID.modify(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[2] = v1;
  OUTLINED_FUNCTION_133_0();
  *(v3 + 8) = v4;
  v5 = (v1 + v4);
  v6 = v5[1];
  if (v6)
  {
    v7 = *v5;
    v8 = v6;
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  v3[3] = v6;
  *v3 = v7;
  v3[1] = v8;

  return OUTLINED_FUNCTION_12();
}

Swift::Void __swiftcall Siri_Nlu_Internal_NlRouter_OverrideMatchRule.RetrievedContext.clearAppInFocusBundleID()()
{
  OUTLINED_FUNCTION_133_0();
  v2 = (v0 + v1);
  v3 = *(v0 + v1 + 8);

  *v2 = 0;
  v2[1] = 0;
}

uint64_t Siri_Nlu_Internal_NlRouter_OverrideMatchRule.RetrievedContext.hasFocusedOnScreenImage_p.setter(char a1)
{
  result = OUTLINED_FUNCTION_161_1();
  *(v1 + v4) = a1;
  return result;
}

uint64_t (*Siri_Nlu_Internal_NlRouter_OverrideMatchRule.RetrievedContext.hasFocusedOnScreenImage_p.modify(void *a1))(uint64_t result)
{
  *a1 = v1;
  OUTLINED_FUNCTION_161_1();
  OUTLINED_FUNCTION_21_1(v2);
  return OUTLINED_FUNCTION_158;
}

uint64_t Siri_Nlu_Internal_NlRouter_OverrideMatchRule.RetrievedContext.hasFocusedOnScreenDocument_p.setter(char a1)
{
  result = OUTLINED_FUNCTION_162_0();
  *(v1 + v4) = a1;
  return result;
}

uint64_t (*Siri_Nlu_Internal_NlRouter_OverrideMatchRule.RetrievedContext.hasFocusedOnScreenDocument_p.modify(void *a1))(uint64_t result)
{
  *a1 = v1;
  OUTLINED_FUNCTION_162_0();
  OUTLINED_FUNCTION_21_1(v2);
  return j__OUTLINED_FUNCTION_158;
}

uint64_t Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.siriX.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_31_3();
  matched = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.OneOf_ExecutionSource(0);
  OUTLINED_FUNCTION_5_8(matched);
  if (v8)
  {
    sub_1C8778ED8(v0, &qword_1EC2B75A8, &qword_1C8BED7B0);
    return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  }

  OUTLINED_FUNCTION_92_0();
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1C8840550();
    return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  }

  OUTLINED_FUNCTION_13_11();
  OUTLINED_FUNCTION_5_0();
  return sub_1C8779244();
}

uint64_t Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.siriX.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2B75A8, &qword_1C8BED7B0);
  OUTLINED_FUNCTION_13_11();
  OUTLINED_FUNCTION_218();
  sub_1C8779244();
  type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.OneOf_ExecutionSource(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.siriX.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_65_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_64_3(v2);
  v3 = OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_80(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_66_1(v5);
  matched = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.SiriX(v6);
  OUTLINED_FUNCTION_80(matched);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_131_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_49_1(v11);
  v12 = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.OneOf_ExecutionSource(0);
  OUTLINED_FUNCTION_36_1(v12);
  if (v13)
  {
    sub_1C8778ED8(v0, &qword_1EC2B75A8, &qword_1C8BED7B0);
  }

  else
  {
    OUTLINED_FUNCTION_271();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_13_11();
      OUTLINED_FUNCTION_82_3();
      sub_1C8779244();
      goto LABEL_7;
    }

    sub_1C8840550();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
LABEL_7:
  OUTLINED_FUNCTION_260();
}

void sub_1C8845F18(uint64_t **a1)
{
  OUTLINED_FUNCTION_32_6(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88407C8();
    sub_1C8778ED8(v5, &qword_1EC2B75A8, &qword_1C8BED7B0);
    OUTLINED_FUNCTION_13_11();
    OUTLINED_FUNCTION_142_1();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_86_1();
    sub_1C8840550();
  }

  else
  {
    sub_1C8778ED8(v5, &qword_1EC2B75A8, &qword_1C8BED7B0);
    OUTLINED_FUNCTION_13_11();
    OUTLINED_FUNCTION_268();
    sub_1C8779244();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.planner.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_31_3();
  matched = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.OneOf_ExecutionSource(0);
  OUTLINED_FUNCTION_5_8(matched);
  if (v8)
  {
    sub_1C8778ED8(v0, &qword_1EC2B75A8, &qword_1C8BED7B0);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_12_8();
      OUTLINED_FUNCTION_5_0();
      return sub_1C8779244();
    }

    sub_1C8840550();
  }

  return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
}

uint64_t Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.planner.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2B75A8, &qword_1C8BED7B0);
  OUTLINED_FUNCTION_12_8();
  OUTLINED_FUNCTION_218();
  sub_1C8779244();
  type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.OneOf_ExecutionSource(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.planner.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_65_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_64_3(v2);
  v3 = OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_80(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_66_1(v5);
  matched = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.Planner(v6);
  OUTLINED_FUNCTION_80(matched);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_131_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_49_1(v11);
  v12 = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.OneOf_ExecutionSource(0);
  OUTLINED_FUNCTION_36_1(v12);
  if (v13)
  {
    sub_1C8778ED8(v0, &qword_1EC2B75A8, &qword_1C8BED7B0);
LABEL_7:
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_271();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_1C8840550();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_12_8();
  OUTLINED_FUNCTION_82_3();
  sub_1C8779244();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C884628C(uint64_t **a1)
{
  OUTLINED_FUNCTION_32_6(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88407C8();
    sub_1C8778ED8(v5, &qword_1EC2B75A8, &qword_1C8BED7B0);
    OUTLINED_FUNCTION_12_8();
    OUTLINED_FUNCTION_142_1();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_86_1();
    sub_1C8840550();
  }

  else
  {
    sub_1C8778ED8(v5, &qword_1EC2B75A8, &qword_1C8BED7B0);
    OUTLINED_FUNCTION_12_8();
    OUTLINED_FUNCTION_268();
    sub_1C8779244();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.pqaSearch.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_31_3();
  matched = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.OneOf_ExecutionSource(0);
  OUTLINED_FUNCTION_5_8(matched);
  if (v8)
  {
    sub_1C8778ED8(v0, &qword_1EC2B75A8, &qword_1C8BED7B0);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      OUTLINED_FUNCTION_11_6();
      OUTLINED_FUNCTION_5_0();
      return sub_1C8779244();
    }

    sub_1C8840550();
  }

  return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
}

uint64_t Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.pqaSearch.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2B75A8, &qword_1C8BED7B0);
  OUTLINED_FUNCTION_11_6();
  OUTLINED_FUNCTION_218();
  sub_1C8779244();
  type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.OneOf_ExecutionSource(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.pqaSearch.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_65_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_64_3(v2);
  v3 = OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_80(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_66_1(v5);
  matched = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.PQASearch(v6);
  OUTLINED_FUNCTION_80(matched);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_131_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_49_1(v11);
  v12 = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.OneOf_ExecutionSource(0);
  OUTLINED_FUNCTION_36_1(v12);
  if (v13)
  {
    sub_1C8778ED8(v0, &qword_1EC2B75A8, &qword_1C8BED7B0);
LABEL_7:
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_271();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    sub_1C8840550();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_11_6();
  OUTLINED_FUNCTION_82_3();
  sub_1C8779244();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C8846600(uint64_t **a1)
{
  OUTLINED_FUNCTION_32_6(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88407C8();
    sub_1C8778ED8(v5, &qword_1EC2B75A8, &qword_1C8BED7B0);
    OUTLINED_FUNCTION_11_6();
    OUTLINED_FUNCTION_142_1();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_86_1();
    sub_1C8840550();
  }

  else
  {
    sub_1C8778ED8(v5, &qword_1EC2B75A8, &qword_1C8BED7B0);
    OUTLINED_FUNCTION_11_6();
    OUTLINED_FUNCTION_268();
    sub_1C8779244();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.genAi.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_31_3();
  matched = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.OneOf_ExecutionSource(0);
  OUTLINED_FUNCTION_5_8(matched);
  if (v8)
  {
    sub_1C8778ED8(v0, &qword_1EC2B75A8, &qword_1C8BED7B0);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 3)
    {
      OUTLINED_FUNCTION_10_6();
      OUTLINED_FUNCTION_5_0();
      return sub_1C8779244();
    }

    sub_1C8840550();
  }

  return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
}

uint64_t Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.genAi.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2B75A8, &qword_1C8BED7B0);
  OUTLINED_FUNCTION_10_6();
  OUTLINED_FUNCTION_218();
  sub_1C8779244();
  type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.OneOf_ExecutionSource(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.genAi.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_65_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_64_3(v2);
  v3 = OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_80(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_66_1(v5);
  matched = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.GenAI(v6);
  OUTLINED_FUNCTION_80(matched);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_131_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_49_1(v11);
  v12 = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.OneOf_ExecutionSource(0);
  OUTLINED_FUNCTION_36_1(v12);
  if (v13)
  {
    sub_1C8778ED8(v0, &qword_1EC2B75A8, &qword_1C8BED7B0);
LABEL_7:
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_271();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 3)
  {
    sub_1C8840550();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_10_6();
  OUTLINED_FUNCTION_82_3();
  sub_1C8779244();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C8846974(uint64_t **a1)
{
  OUTLINED_FUNCTION_32_6(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88407C8();
    sub_1C8778ED8(v5, &qword_1EC2B75A8, &qword_1C8BED7B0);
    OUTLINED_FUNCTION_10_6();
    OUTLINED_FUNCTION_142_1();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_86_1();
    sub_1C8840550();
  }

  else
  {
    sub_1C8778ED8(v5, &qword_1EC2B75A8, &qword_1C8BED7B0);
    OUTLINED_FUNCTION_10_6();
    OUTLINED_FUNCTION_268();
    sub_1C8779244();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource(v0) + 20);
  return OUTLINED_FUNCTION_242();
}

void static Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.OneOf_ExecutionSource.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v45[2] = v0;
  v45[3] = v1;
  matched = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.GenAI(0);
  v3 = OUTLINED_FUNCTION_80(matched);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_9_0();
  v45[1] = v6;
  v7 = OUTLINED_FUNCTION_86();
  v8 = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.PQASearch(v7);
  v9 = OUTLINED_FUNCTION_80(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_9_0();
  v45[0] = v12;
  v13 = OUTLINED_FUNCTION_86();
  v14 = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.Planner(v13);
  v15 = OUTLINED_FUNCTION_80(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_33();
  v18 = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.SiriX(0);
  v19 = OUTLINED_FUNCTION_80(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_33();
  v22 = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.OneOf_ExecutionSource(0);
  v23 = OUTLINED_FUNCTION_21(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_34();
  v27 = MEMORY[0x1EEE9AC00](v26);
  v28 = MEMORY[0x1EEE9AC00](v27);
  MEMORY[0x1EEE9AC00](v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B75B8, &qword_1C8BED7C0);
  OUTLINED_FUNCTION_80(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_77();
  v33 = MEMORY[0x1EEE9AC00](v32);
  v35 = v45 - v34;
  v36 = *(v33 + 56);
  sub_1C88407C8();
  sub_1C88407C8();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_41_4();
      sub_1C88407C8();
      if (OUTLINED_FUNCTION_173_1() != 1)
      {
        goto LABEL_10;
      }

      OUTLINED_FUNCTION_12_8();
      sub_1C8779244();
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_9();
      sub_1C87765D8(v41, v42);
      OUTLINED_FUNCTION_220();
      sub_1C8BD517C();
      sub_1C8840550();
      OUTLINED_FUNCTION_271();
      goto LABEL_12;
    case 2u:
      OUTLINED_FUNCTION_41_4();
      sub_1C88407C8();
      if (OUTLINED_FUNCTION_173_1() != 2)
      {
        goto LABEL_10;
      }

      OUTLINED_FUNCTION_11_6();
      sub_1C8779244();
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_9();
      sub_1C87765D8(v37, v38);
      sub_1C8BD517C();
      sub_1C8840550();
      goto LABEL_12;
    case 3u:
      OUTLINED_FUNCTION_41_4();
      sub_1C88407C8();
      if (OUTLINED_FUNCTION_173_1() != 3)
      {
        goto LABEL_10;
      }

      OUTLINED_FUNCTION_10_6();
      sub_1C8779244();
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_9();
      sub_1C87765D8(v39, v40);
      sub_1C8BD517C();
      sub_1C8840550();
      goto LABEL_12;
    default:
      OUTLINED_FUNCTION_41_4();
      sub_1C88407C8();
      if (OUTLINED_FUNCTION_173_1())
      {
        OUTLINED_FUNCTION_86_1();
LABEL_10:
        sub_1C8840550();
        sub_1C8778ED8(v35, &qword_1EC2B75B8, &qword_1C8BED7C0);
      }

      else
      {
        OUTLINED_FUNCTION_13_11();
        sub_1C8779244();
        sub_1C8BD49FC();
        OUTLINED_FUNCTION_0_9();
        sub_1C87765D8(v43, v44);
        OUTLINED_FUNCTION_268();
        sub_1C8BD517C();
        sub_1C8840550();
LABEL_12:
        sub_1C8840550();
        OUTLINED_FUNCTION_57_2();
        sub_1C8840550();
      }

      OUTLINED_FUNCTION_125();
      return;
  }
}

uint64_t Siri_Nlu_Internal_NlRouter_NLRouterOverrideRoute.keepModelDecision.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_31_3();
  v7 = type metadata accessor for Siri_Nlu_Internal_NlRouter_NLRouterOverrideRoute.OneOf_Value(0);
  OUTLINED_FUNCTION_5_8(v7);
  if (v8)
  {
    sub_1C8778ED8(v0, &qword_1EC2B75C0, &qword_1C8BED7C8);
    return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  }

  OUTLINED_FUNCTION_92_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_1C8840550();
    return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  }

  OUTLINED_FUNCTION_30_3();
  OUTLINED_FUNCTION_5_0();
  return sub_1C8779244();
}

uint64_t Siri_Nlu_Internal_NlRouter_NLRouterOverrideRoute.keepModelDecision.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2B75C0, &qword_1C8BED7C8);
  OUTLINED_FUNCTION_30_3();
  OUTLINED_FUNCTION_218();
  sub_1C8779244();
  type metadata accessor for Siri_Nlu_Internal_NlRouter_NLRouterOverrideRoute.OneOf_Value(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_Internal_NlRouter_NLRouterOverrideRoute.keepModelDecision.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_65_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_64_3(v2);
  v3 = OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_80(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_66_1(v5);
  v7 = type metadata accessor for Siri_Nlu_Internal_NlRouter_NLRouterOverrideRoute.KeepModelDecision(v6);
  OUTLINED_FUNCTION_80(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_131_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_49_1(v11);
  v12 = type metadata accessor for Siri_Nlu_Internal_NlRouter_NLRouterOverrideRoute.OneOf_Value(0);
  OUTLINED_FUNCTION_36_1(v12);
  if (v13)
  {
    sub_1C8778ED8(v0, &qword_1EC2B75C0, &qword_1C8BED7C8);
  }

  else
  {
    OUTLINED_FUNCTION_271();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 1)
    {
      OUTLINED_FUNCTION_30_3();
      OUTLINED_FUNCTION_82_3();
      sub_1C8779244();
      goto LABEL_8;
    }

    sub_1C8840550();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C884737C(uint64_t **a1)
{
  OUTLINED_FUNCTION_32_6(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88407C8();
    sub_1C8778ED8(v5, &qword_1EC2B75C0, &qword_1C8BED7C8);
    OUTLINED_FUNCTION_30_3();
    OUTLINED_FUNCTION_142_1();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_86_1();
    sub_1C8840550();
  }

  else
  {
    sub_1C8778ED8(v5, &qword_1EC2B75C0, &qword_1C8BED7C8);
    OUTLINED_FUNCTION_30_3();
    OUTLINED_FUNCTION_268();
    sub_1C8779244();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t Siri_Nlu_Internal_NlRouter_NLRouterOverrideRoute.change.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_31_3();
  v7 = type metadata accessor for Siri_Nlu_Internal_NlRouter_NLRouterOverrideRoute.OneOf_Value(0);
  OUTLINED_FUNCTION_5_8(v7);
  if (v8)
  {
    sub_1C8778ED8(v0, &qword_1EC2B75C0, &qword_1C8BED7C8);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_29_2();
      OUTLINED_FUNCTION_5_0();
      return sub_1C8779244();
    }

    sub_1C8840550();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v11 = *(type metadata accessor for Siri_Nlu_Internal_NlRouter_NLRouterOverrideRoute.Change(0) + 20);
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision(0);
  OUTLINED_FUNCTION_5();
  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
}

uint64_t Siri_Nlu_Internal_NlRouter_NLRouterOverrideRoute.change.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2B75C0, &qword_1C8BED7C8);
  OUTLINED_FUNCTION_29_2();
  OUTLINED_FUNCTION_218();
  sub_1C8779244();
  type metadata accessor for Siri_Nlu_Internal_NlRouter_NLRouterOverrideRoute.OneOf_Value(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_Internal_NlRouter_NLRouterOverrideRoute.change.modify()
{
  OUTLINED_FUNCTION_261();
  v3 = OUTLINED_FUNCTION_55_1();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_18_1(v4);
  v5 = OUTLINED_FUNCTION_104_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_80(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_43_0(v9);
  v11 = type metadata accessor for Siri_Nlu_Internal_NlRouter_NLRouterOverrideRoute.Change(v10);
  OUTLINED_FUNCTION_40_2(v11);
  v13 = __swift_coroFrameAllocStub(*(v12 + 64));
  v14 = OUTLINED_FUNCTION_110_0(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_43_3(v15);
  *(v2 + 32) = type metadata accessor for Siri_Nlu_Internal_NlRouter_NLRouterOverrideRoute.OneOf_Value(0);
  OUTLINED_FUNCTION_5_6();
  if (v16)
  {
    sub_1C8778ED8(v1, &qword_1EC2B75C0, &qword_1C8BED7C8);
LABEL_7:
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v18 = *(v0 + 20);
    type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision(0);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_253();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_1C8840550();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_29_2();
  OUTLINED_FUNCTION_254_0();
  sub_1C8779244();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C884773C(uint64_t **a1)
{
  OUTLINED_FUNCTION_32_6(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88407C8();
    sub_1C8778ED8(v5, &qword_1EC2B75C0, &qword_1C8BED7C8);
    OUTLINED_FUNCTION_29_2();
    OUTLINED_FUNCTION_142_1();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_86_1();
    sub_1C8840550();
  }

  else
  {
    sub_1C8778ED8(v5, &qword_1EC2B75C0, &qword_1C8BED7C8);
    OUTLINED_FUNCTION_29_2();
    OUTLINED_FUNCTION_268();
    sub_1C8779244();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t Siri_Nlu_Internal_NlRouter_NLRouterOverrideRoute.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_Internal_NlRouter_NLRouterOverrideRoute(v0) + 20);
  return OUTLINED_FUNCTION_242();
}

void static Siri_Nlu_Internal_NlRouter_NLRouterOverrideRoute.OneOf_Value.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_124();
  a19 = v20;
  a20 = v21;
  v22 = type metadata accessor for Siri_Nlu_Internal_NlRouter_NLRouterOverrideRoute.Change(0);
  v23 = OUTLINED_FUNCTION_80(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_33();
  v26 = type metadata accessor for Siri_Nlu_Internal_NlRouter_NLRouterOverrideRoute.KeepModelDecision(0);
  v27 = OUTLINED_FUNCTION_80(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_180();
  v30 = type metadata accessor for Siri_Nlu_Internal_NlRouter_NLRouterOverrideRoute.OneOf_Value(0);
  v31 = OUTLINED_FUNCTION_21(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B75C8, &qword_1C8BED7D0);
  OUTLINED_FUNCTION_80(v35);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_77();
  v39 = MEMORY[0x1EEE9AC00](v38);
  v41 = &a9 - v40;
  v42 = *(v39 + 56);
  sub_1C88407C8();
  sub_1C88407C8();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_111_0();
    sub_1C88407C8();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_29_2();
      sub_1C8779244();
      static Siri_Nlu_Internal_NlRouter_NLRouterOverrideRoute.Change.== infix(_:_:)();
      sub_1C8840550();
      OUTLINED_FUNCTION_168_0();
LABEL_8:
      sub_1C8840550();
      OUTLINED_FUNCTION_62_1();
      sub_1C8840550();
      goto LABEL_9;
    }
  }

  else
  {
    OUTLINED_FUNCTION_111_0();
    sub_1C88407C8();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      OUTLINED_FUNCTION_30_3();
      sub_1C8779244();
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_9();
      sub_1C87765D8(v43, v44);
      OUTLINED_FUNCTION_184();
      sub_1C8BD517C();
      sub_1C8840550();
      OUTLINED_FUNCTION_254_0();
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_86_1();
  }

  sub_1C8840550();
  sub_1C8778ED8(v41, &qword_1EC2B75C8, &qword_1C8BED7D0);
LABEL_9:
  OUTLINED_FUNCTION_125();
}

uint64_t _s12SiriNLUTypes0A40_Nlu_Internal_NlRouter_OverrideMatchRuleV0A13XSDAPromptingV2eeoiySbAE_AEtFZ_0()
{
  OUTLINED_FUNCTION_84();
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_0_9();
  sub_1C87765D8(v0, v1);
  OUTLINED_FUNCTION_5_0();
  return sub_1C8BD517C() & 1;
}

void static Siri_Nlu_Internal_NlRouter_NLRouterOverrideRoute.Change.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_84();
  v2 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision(v1);
  v3 = OUTLINED_FUNCTION_21(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_180();
  v6 = OUTLINED_FUNCTION_104_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_80(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_103();
  v12 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B75D8, &qword_1C8BED7E0) - 8);
  v13 = *(*v12 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v14);
  v15 = OUTLINED_FUNCTION_74();
  v16 = *(type metadata accessor for Siri_Nlu_Internal_NlRouter_NLRouterOverrideRoute.Change(v15) + 20);
  v17 = v12[14];
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_43_1(v0);
  if (v18)
  {
    OUTLINED_FUNCTION_43_1(v0 + v17);
    if (v18)
    {
      sub_1C8778ED8(v0, &qword_1EC2B75D0, &qword_1C8BED7D8);
LABEL_12:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_9();
      sub_1C87765D8(v22, v23);
      OUTLINED_FUNCTION_5_0();
      v19 = sub_1C8BD517C();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_253();
  sub_1C8778810();
  OUTLINED_FUNCTION_43_1(v0 + v17);
  if (v18)
  {
    OUTLINED_FUNCTION_61_3();
    sub_1C8840550();
LABEL_9:
    sub_1C8778ED8(v0, &qword_1EC2B75D8, &qword_1C8BED7E0);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_8_9();
  sub_1C8779244();
  OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.== infix(_:_:)();
  v21 = v20;
  sub_1C8840550();
  OUTLINED_FUNCTION_175_0();
  sub_1C8778ED8(v0, &qword_1EC2B75D0, &qword_1C8BED7D8);
  if (v21)
  {
    goto LABEL_12;
  }

LABEL_10:
  v19 = 0;
LABEL_13:
  OUTLINED_FUNCTION_157(v19);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C8847E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = a5(0);
  OUTLINED_FUNCTION_80(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_103();
  OUTLINED_FUNCTION_253();
  sub_1C88407C8();
  return a7(v7);
}

uint64_t Siri_Nlu_Internal_NlRouter_NLRouterOverrideRoute.Change.to.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_Internal_NlRouter_NLRouterOverrideRoute.Change(v1);
  sub_1C8778ED8(v0 + *(v2 + 20), &qword_1EC2B75D0, &qword_1C8BED7D8);
  OUTLINED_FUNCTION_8_9();
  sub_1C8779244();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision(0);
  OUTLINED_FUNCTION_19_1();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_Internal_NlRouter_NLRouterOverrideRoute.Change.to.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_0(v7);
  v9 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision(v8);
  *(v1 + 16) = v9;
  OUTLINED_FUNCTION_21(v9);
  v11 = *(v10 + 64);
  *(v1 + 24) = __swift_coroFrameAllocStub(v11);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 32) = v12;
  *(v1 + 40) = *(type metadata accessor for Siri_Nlu_Internal_NlRouter_NLRouterOverrideRoute.Change(0) + 20);
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_5_6();
  if (v13)
  {
    type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.OneOf_Value(0);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
    v18 = &v12[*(v9 + 20)];
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_5_6();
    if (!v13)
    {
      sub_1C8778ED8(v0, &qword_1EC2B75D0, &qword_1C8BED7D8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_184();
    sub_1C8779244();
  }

  OUTLINED_FUNCTION_260();
}

void sub_1C88480B0()
{
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_154(v6);
  if (v7)
  {
    OUTLINED_FUNCTION_254_0();
    sub_1C88407C8();
    sub_1C8778ED8(v5 + v4, &qword_1EC2B75D0, &qword_1C8BED7D8);
    OUTLINED_FUNCTION_8_9();
    sub_1C8779244();
    OUTLINED_FUNCTION_19_1();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v3);
    OUTLINED_FUNCTION_61_3();
    sub_1C8840550();
  }

  else
  {
    sub_1C8778ED8(v5 + v4, &qword_1EC2B75D0, &qword_1C8BED7D8);
    OUTLINED_FUNCTION_8_9();
    sub_1C8779244();
    OUTLINED_FUNCTION_19_1();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v3);
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_260();

  free(v14);
}

uint64_t Siri_Nlu_Internal_NlRouter_NLRouterOverrideRoute.Change.hasTo.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_74();
  v7 = type metadata accessor for Siri_Nlu_Internal_NlRouter_NLRouterOverrideRoute.Change(v6);
  OUTLINED_FUNCTION_13(*(v7 + 20));
  sub_1C8778810();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision(0);
  v8 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v8, v9, v10);
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = OUTLINED_FUNCTION_121();
  sub_1C8778ED8(v13, v14, &qword_1C8BED7D8);
  return v12;
}

Swift::Void __swiftcall Siri_Nlu_Internal_NlRouter_NLRouterOverrideRoute.Change.clearTo()()
{
  v1 = type metadata accessor for Siri_Nlu_Internal_NlRouter_NLRouterOverrideRoute.Change(0);
  sub_1C8778ED8(v0 + *(v1 + 20), &qword_1EC2B75D0, &qword_1C8BED7D8);
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision(0);
  OUTLINED_FUNCTION_5();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_Internal_NlRouter_SpansForNamedCaptureGroup.labelsTyped.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t Siri_Nlu_Internal_NlRouter_SpansForNamedCaptureGroup.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_207();
  v1 = *(type metadata accessor for Siri_Nlu_Internal_NlRouter_SpansForNamedCaptureGroup(v0) + 28);
  v2 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_21(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_130_1();

  return v6(v5);
}

uint64_t Siri_Nlu_Internal_NlRouter_SpansForNamedCaptureGroup.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_Internal_NlRouter_SpansForNamedCaptureGroup(v0) + 28);
  v2 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_21(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_167_1();

  return v6(v5);
}

uint64_t Siri_Nlu_Internal_NlRouter_SpansForNamedCaptureGroup.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_Internal_NlRouter_SpansForNamedCaptureGroup(v0) + 28);
  return OUTLINED_FUNCTION_242();
}

uint64_t Siri_Nlu_Internal_NlRouter_SpansForNamedCaptureGroup.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_132(a1);
  v2 = MEMORY[0x1E69E7CC0];
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = v2;
  v3 = v1 + *(type metadata accessor for Siri_Nlu_Internal_NlRouter_SpansForNamedCaptureGroup(0) + 28);
  return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
}

void Siri_Nlu_Internal_NlRouter_NLRouterOverrides.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_178_1();
  OUTLINED_FUNCTION_50_2();
  if (!*(*v0 + 16) || (type metadata accessor for Siri_Nlu_Internal_NlRouter_NLRouterOverride(0), sub_1C87765D8(&qword_1EC2B3E18, type metadata accessor for Siri_Nlu_Internal_NlRouter_NLRouterOverride), OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_76_1(), !v1))
  {
    v2 = *(type metadata accessor for Siri_Nlu_Internal_NlRouter_NLRouterOverrides(0) + 20);
    OUTLINED_FUNCTION_69();
  }

  OUTLINED_FUNCTION_177_0();
}

uint64_t sub_1C88485D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_12_0();
  if ((v7(*v5, *v6) & 1) == 0)
  {
    return 0;
  }

  v8 = a4(0);
  OUTLINED_FUNCTION_165_1(v8);
  OUTLINED_FUNCTION_0_9();
  sub_1C87765D8(v9, v10);
  return OUTLINED_FUNCTION_64_0() & 1;
}

uint64_t sub_1C88486E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C87765D8(&qword_1EC2B7958, type metadata accessor for Siri_Nlu_Internal_NlRouter_NLRouterOverrides);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8848768(uint64_t a1)
{
  v2 = sub_1C87765D8(&qword_1EC2B76E8, type metadata accessor for Siri_Nlu_Internal_NlRouter_NLRouterOverrides);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88487D8()
{
  sub_1C87765D8(&qword_1EC2B76E8, type metadata accessor for Siri_Nlu_Internal_NlRouter_NLRouterOverrides);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8848870()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B71E8);
  __swift_project_value_buffer(v0, qword_1EC2B71E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1C8BE8D40;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "id";
  *(v5 + 8) = 2;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C8BD50FC();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "matchRules";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "route";
  *(v11 + 1) = 5;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "applyToPlannerPromptScenario";
  *(v13 + 1) = 28;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "applyToLegacyNLPromptScenario";
  *(v15 + 1) = 29;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "applyToPommesPromptScenario";
  *(v17 + 1) = 27;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "applyToSiriXSDAPromptScenario";
  *(v19 + 1) = 29;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "creationTimestamp";
  *(v21 + 1) = 17;
  v21[16] = 2;
  v8();
  return sub_1C8BD510C();
}

void Siri_Nlu_Internal_NlRouter_NLRouterOverride.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7598, &qword_1C8C0A650);
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  v44 = &v42 - v8;
  OUTLINED_FUNCTION_86();
  v9 = sub_1C8BD47FC();
  v10 = OUTLINED_FUNCTION_13_1(v9);
  v46 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_9_0();
  v45 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7590, &qword_1C8BED7A0);
  OUTLINED_FUNCTION_80(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v18);
  v19 = OUTLINED_FUNCTION_74();
  v20 = type metadata accessor for Siri_Nlu_Internal_NlRouter_NLRouterOverrideRoute(v19);
  v21 = OUTLINED_FUNCTION_21(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_33();
  v24 = *v0;
  v25 = *(v0 + 1);
  OUTLINED_FUNCTION_88_0();
  if (!v26 || (sub_1C8BD4DDC(), !v1))
  {
    v43 = v9;
    if (*(*(v0 + 2) + 16))
    {
      v42 = v0;
      type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule(0);
      OUTLINED_FUNCTION_113_0();
      sub_1C87765D8(v27, v28);
      OUTLINED_FUNCTION_117();
      OUTLINED_FUNCTION_127_1();
      sub_1C8BD4E0C();
      if (v1)
      {
        goto LABEL_23;
      }

      v3 = v42;
    }

    v42 = type metadata accessor for Siri_Nlu_Internal_NlRouter_NLRouterOverride(0);
    v29 = v42[11];
    sub_1C8778810();
    v30 = OUTLINED_FUNCTION_120();
    if (__swift_getEnumTagSinglePayload(v30, v31, v20) == 1)
    {
      sub_1C8778ED8(v2, &qword_1EC2B7590, &qword_1C8BED7A0);
    }

    else
    {
      OUTLINED_FUNCTION_6_8();
      sub_1C8779244();
      sub_1C87765D8(&qword_1EC2B3B98, type metadata accessor for Siri_Nlu_Internal_NlRouter_NLRouterOverrideRoute);
      OUTLINED_FUNCTION_127_1();
      sub_1C8BD4E2C();
      OUTLINED_FUNCTION_56_1();
      sub_1C8840550();
      if (v1)
      {
        goto LABEL_23;
      }
    }

    v32 = v44;
    v33 = v45;
    if (*(v3 + 24) != 1 || (OUTLINED_FUNCTION_120_1(), !v1))
    {
      if (*(v3 + 25) != 1 || (OUTLINED_FUNCTION_120_1(), !v1))
      {
        if (*(v3 + 26) != 1 || (OUTLINED_FUNCTION_120_1(), !v1))
        {
          if (*(v3 + 27) != 1 || (OUTLINED_FUNCTION_120_1(), !v1))
          {
            v34 = v42[12];
            sub_1C8778810();
            v35 = OUTLINED_FUNCTION_120();
            v36 = v32;
            v37 = v43;
            if (__swift_getEnumTagSinglePayload(v35, v38, v43) == 1)
            {
              sub_1C8778ED8(v36, &qword_1EC2B7598, &qword_1C8C0A650);
LABEL_22:
              v41 = v3 + v42[10];
              sub_1C8BD49DC();
              goto LABEL_23;
            }

            (*(v46 + 32))(v33, v36, v37);
            OUTLINED_FUNCTION_112_2();
            sub_1C87765D8(v39, v40);
            OUTLINED_FUNCTION_127_1();
            sub_1C8BD4E2C();
            if (!v1)
            {
              (*(v46 + 8))(v33, v37);
              goto LABEL_22;
            }

            (*(v46 + 8))(v33, v37);
          }
        }
      }
    }
  }

LABEL_23:
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_Internal_NlRouter_NLRouterOverride.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v1 = v0;
  v3 = v2;
  v4 = sub_1C8BD47FC();
  v5 = OUTLINED_FUNCTION_13_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_33();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7598, &qword_1C8C0A650);
  OUTLINED_FUNCTION_80(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v16);
  v74 = &v69 - v17;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B75E8, &qword_1C8BED7E8);
  OUTLINED_FUNCTION_21(v75);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v20);
  v76 = &v69 - v21;
  v22 = OUTLINED_FUNCTION_86();
  v23 = type metadata accessor for Siri_Nlu_Internal_NlRouter_NLRouterOverrideRoute(v22);
  v24 = OUTLINED_FUNCTION_21(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_33();
  v29 = v28 - v27;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7590, &qword_1C8BED7A0);
  OUTLINED_FUNCTION_80(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v69 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B75F0, &unk_1C8BED7F0);
  OUTLINED_FUNCTION_21(v36);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v69 - v40;
  v42 = *v3 == *v1 && *(v3 + 8) == *(v1 + 8);
  if (!v42 && (sub_1C8BD529C() & 1) == 0)
  {
    goto LABEL_22;
  }

  v43 = *(v1 + 16);
  if ((sub_1C87D8640(*(v3 + 16)) & 1) == 0)
  {
    goto LABEL_22;
  }

  v70 = v12;
  v71 = v7;
  v73 = v4;
  v72 = type metadata accessor for Siri_Nlu_Internal_NlRouter_NLRouterOverride(0);
  v44 = *(v72 + 44);
  v45 = *(v36 + 48);
  sub_1C8778810();
  sub_1C8778810();
  OUTLINED_FUNCTION_76(v41, 1, v23);
  if (v42)
  {
    OUTLINED_FUNCTION_76(&v41[v45], 1, v23);
    if (v42)
    {
      sub_1C8778ED8(v41, &qword_1EC2B7590, &qword_1C8BED7A0);
      goto LABEL_18;
    }

LABEL_15:
    v47 = &qword_1EC2B75F0;
    v48 = &unk_1C8BED7F0;
    v49 = v41;
LABEL_16:
    sub_1C8778ED8(v49, v47, v48);
    goto LABEL_22;
  }

  sub_1C8778810();
  OUTLINED_FUNCTION_76(&v41[v45], 1, v23);
  if (v46)
  {
    OUTLINED_FUNCTION_56_1();
    sub_1C8840550();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_6_8();
  sub_1C8779244();
  v50 = static Siri_Nlu_Internal_NlRouter_NLRouterOverrideRoute.== infix(_:_:)(v35, v29);
  sub_1C8840550();
  sub_1C8840550();
  sub_1C8778ED8(v41, &qword_1EC2B7590, &qword_1C8BED7A0);
  if ((v50 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_18:
  if (*(v3 + 24) != *(v1 + 24) || *(v3 + 25) != *(v1 + 25) || *(v3 + 26) != *(v1 + 26) || *(v3 + 27) != *(v1 + 27))
  {
    goto LABEL_22;
  }

  v52 = v72;
  v53 = *(v72 + 48);
  v54 = v76;
  v55 = *(v75 + 48);
  sub_1C8778810();
  sub_1C8778810();
  v56 = v73;
  OUTLINED_FUNCTION_76(v54, 1, v73);
  if (v42)
  {
    OUTLINED_FUNCTION_43_1(v54 + v55);
    if (v42)
    {
      sub_1C8778ED8(v54, &qword_1EC2B7598, &qword_1C8C0A650);
LABEL_34:
      v66 = *(v52 + 40);
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_9();
      sub_1C87765D8(v67, v68);
      v51 = sub_1C8BD517C();
      goto LABEL_23;
    }

    goto LABEL_32;
  }

  v57 = v74;
  sub_1C8778810();
  OUTLINED_FUNCTION_43_1(v54 + v55);
  if (v58)
  {
    (*(v71 + 8))(v57, v56);
LABEL_32:
    v47 = &qword_1EC2B75E8;
    v48 = &qword_1C8BED7E8;
    v49 = v54;
    goto LABEL_16;
  }

  v59 = v71;
  v60 = v54 + v55;
  v61 = v70;
  (*(v71 + 32))(v70, v60, v56);
  OUTLINED_FUNCTION_112_2();
  sub_1C87765D8(v62, v63);
  v64 = sub_1C8BD517C();
  v65 = *(v59 + 8);
  v65(v61, v56);
  v65(v57, v56);
  sub_1C8778ED8(v54, &qword_1EC2B7598, &qword_1C8C0A650);
  if (v64)
  {
    goto LABEL_34;
  }

LABEL_22:
  v51 = 0;
LABEL_23:
  OUTLINED_FUNCTION_157(v51);
  OUTLINED_FUNCTION_125();
}

uint64_t (*sub_1C8849648(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 40);
  return result;
}

uint64_t sub_1C8849684(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C87765D8(&qword_1EC2B7950, type metadata accessor for Siri_Nlu_Internal_NlRouter_NLRouterOverride);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8849704(uint64_t a1)
{
  v2 = sub_1C87765D8(&qword_1EC2B3E18, type metadata accessor for Siri_Nlu_Internal_NlRouter_NLRouterOverride);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8849774()
{
  sub_1C87765D8(&qword_1EC2B3E18, type metadata accessor for Siri_Nlu_Internal_NlRouter_NLRouterOverride);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C884980C()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B7200);
  __swift_project_value_buffer(v0, qword_1EC2B7200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1C8BED790;
  v4 = v36 + v3 + v1[14];
  *(v36 + v3) = 1;
  *v4 = "utterance";
  *(v4 + 8) = 9;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1C8BD50FC();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v36 + v3 + v2 + v1[14];
  *(v36 + v3 + v2) = 2;
  *v8 = "utteranceRegex";
  *(v8 + 8) = 14;
  *(v8 + 16) = 2;
  v7();
  v9 = (v36 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "previousUtterances";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v7();
  v11 = (v36 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "previousUtterancesRegex";
  *(v12 + 1) = 23;
  v12[16] = 2;
  v7();
  v13 = (v36 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "siriResponses";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v7();
  v15 = (v36 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "siriResponsesRegex";
  *(v16 + 1) = 18;
  v16[16] = 2;
  v7();
  v17 = (v36 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "plannerPrompting";
  *(v18 + 1) = 16;
  v18[16] = 2;
  v7();
  v19 = (v36 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "legacyNLPrompting";
  *(v20 + 1) = 17;
  v20[16] = 2;
  v7();
  v21 = (v36 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "pommesPrompting";
  *(v22 + 1) = 15;
  v22[16] = 2;
  v7();
  v23 = (v36 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "siriXSDAPrompting";
  *(v24 + 1) = 17;
  v24[16] = 2;
  v7();
  v25 = (v36 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "excluding";
  *(v26 + 1) = 9;
  v26[16] = 2;
  v7();
  v27 = (v36 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "tools";
  *(v28 + 1) = 5;
  v28[16] = 2;
  v7();
  v29 = (v36 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "hasAppInContext";
  *(v30 + 1) = 15;
  v30[16] = 2;
  v7();
  v31 = (v36 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "retrievedContext";
  *(v32 + 1) = 16;
  v32[16] = 2;
  v7();
  v33 = (v36 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "previousExecutionSource";
  *(v34 + 1) = 23;
  v34[16] = 2;
  v7();
  return sub_1C8BD510C();
}

uint64_t sub_1C8849D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  matched = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.SiriResponses(0);
  v7 = *(*(matched - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](matched);
  v28[1] = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28[0] = v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6188, &qword_1C8BE6E20);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v28 - v13;
  v15 = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.OneOf_Value(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B79B0, &qword_1C8BF01C8);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v30 = v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v28 - v22;
  __swift_storeEnumTagSinglePayload(v28 - v22, 1, 1, matched);
  v29 = a1;
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C8778ED8(v14, &qword_1EC2B6188, &qword_1C8BE6E20);
  }

  else
  {
    sub_1C8779244();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C8840550();
      goto LABEL_8;
    }

    sub_1C8779244();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1C8778ED8(v23, &qword_1EC2B79B0, &qword_1C8BF01C8);
      sub_1C8779244();
      sub_1C8779244();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, matched);
    }

    else
    {
      sub_1C8840550();
    }
  }

  sub_1C87765D8(&qword_1EC2B7730, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.SiriResponses);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v25 = v23;
    return sub_1C8778ED8(v25, &qword_1EC2B79B0, &qword_1C8BF01C8);
  }

  v24 = v30;
  sub_1C87791EC();
  if (__swift_getEnumTagSinglePayload(v24, 1, matched) == 1)
  {
    v25 = v24;
    return sub_1C8778ED8(v25, &qword_1EC2B79B0, &qword_1C8BF01C8);
  }

  sub_1C8779244();
  v27 = v29;
  sub_1C8778ED8(v29, &qword_1EC2B6188, &qword_1C8BE6E20);
  sub_1C8779244();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v15);
}

uint64_t sub_1C884A1C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  matched = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.SiriResponsesRegex(0);
  v7 = *(*(matched - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](matched);
  v28[1] = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28[0] = v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6188, &qword_1C8BE6E20);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v28 - v13;
  v15 = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.OneOf_Value(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B79B8, &qword_1C8BF01D0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v30 = v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v28 - v22;
  __swift_storeEnumTagSinglePayload(v28 - v22, 1, 1, matched);
  v29 = a1;
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C8778ED8(v14, &qword_1EC2B6188, &qword_1C8BE6E20);
  }

  else
  {
    sub_1C8779244();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C8840550();
      goto LABEL_8;
    }

    sub_1C8779244();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1C8778ED8(v23, &qword_1EC2B79B8, &qword_1C8BF01D0);
      sub_1C8779244();
      sub_1C8779244();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, matched);
    }

    else
    {
      sub_1C8840550();
    }
  }

  sub_1C87765D8(&qword_1EC2B7748, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.SiriResponsesRegex);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v25 = v23;
    return sub_1C8778ED8(v25, &qword_1EC2B79B8, &qword_1C8BF01D0);
  }

  v24 = v30;
  sub_1C87791EC();
  if (__swift_getEnumTagSinglePayload(v24, 1, matched) == 1)
  {
    v25 = v24;
    return sub_1C8778ED8(v25, &qword_1EC2B79B8, &qword_1C8BF01D0);
  }

  sub_1C8779244();
  v27 = v29;
  sub_1C8778ED8(v29, &qword_1EC2B6188, &qword_1C8BE6E20);
  sub_1C8779244();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v15);
}

uint64_t sub_1C884A684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  matched = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PlannerPrompting(0);
  v7 = *(*(matched - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](matched);
  v28[1] = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28[0] = v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6188, &qword_1C8BE6E20);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v28 - v13;
  v15 = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.OneOf_Value(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B79C0, &qword_1C8BF01D8);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v30 = v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v28 - v22;
  __swift_storeEnumTagSinglePayload(v28 - v22, 1, 1, matched);
  v29 = a1;
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C8778ED8(v14, &qword_1EC2B6188, &qword_1C8BE6E20);
  }

  else
  {
    sub_1C8779244();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C8840550();
      goto LABEL_8;
    }

    sub_1C8779244();
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1C8778ED8(v23, &qword_1EC2B79C0, &qword_1C8BF01D8);
      sub_1C8779244();
      sub_1C8779244();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, matched);
    }

    else
    {
      sub_1C8840550();
    }
  }

  sub_1C87765D8(&qword_1EC2B7760, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PlannerPrompting);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v25 = v23;
    return sub_1C8778ED8(v25, &qword_1EC2B79C0, &qword_1C8BF01D8);
  }

  v24 = v30;
  sub_1C87791EC();
  if (__swift_getEnumTagSinglePayload(v24, 1, matched) == 1)
  {
    v25 = v24;
    return sub_1C8778ED8(v25, &qword_1EC2B79C0, &qword_1C8BF01D8);
  }

  sub_1C8779244();
  v27 = v29;
  sub_1C8778ED8(v29, &qword_1EC2B6188, &qword_1C8BE6E20);
  sub_1C8779244();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v15);
}

uint64_t sub_1C884AB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  matched = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.LegacyNLPrompting(0);
  v7 = *(*(matched - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](matched);
  v28[1] = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28[0] = v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6188, &qword_1C8BE6E20);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v28 - v13;
  v15 = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.OneOf_Value(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B79C8, &qword_1C8BF01E0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v30 = v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v28 - v22;
  __swift_storeEnumTagSinglePayload(v28 - v22, 1, 1, matched);
  v29 = a1;
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C8778ED8(v14, &qword_1EC2B6188, &qword_1C8BE6E20);
  }

  else
  {
    sub_1C8779244();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C8840550();
      goto LABEL_8;
    }

    sub_1C8779244();
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_1C8778ED8(v23, &qword_1EC2B79C8, &qword_1C8BF01E0);
      sub_1C8779244();
      sub_1C8779244();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, matched);
    }

    else
    {
      sub_1C8840550();
    }
  }

  sub_1C87765D8(&qword_1EC2B7778, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.LegacyNLPrompting);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v25 = v23;
    return sub_1C8778ED8(v25, &qword_1EC2B79C8, &qword_1C8BF01E0);
  }

  v24 = v30;
  sub_1C87791EC();
  if (__swift_getEnumTagSinglePayload(v24, 1, matched) == 1)
  {
    v25 = v24;
    return sub_1C8778ED8(v25, &qword_1EC2B79C8, &qword_1C8BF01E0);
  }

  sub_1C8779244();
  v27 = v29;
  sub_1C8778ED8(v29, &qword_1EC2B6188, &qword_1C8BE6E20);
  sub_1C8779244();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v15);
}

uint64_t sub_1C884AFFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  matched = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PommesPrompting(0);
  v7 = *(*(matched - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](matched);
  v28[1] = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28[0] = v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6188, &qword_1C8BE6E20);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v28 - v13;
  v15 = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.OneOf_Value(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B79D0, &qword_1C8BF01E8);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v30 = v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v28 - v22;
  __swift_storeEnumTagSinglePayload(v28 - v22, 1, 1, matched);
  v29 = a1;
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C8778ED8(v14, &qword_1EC2B6188, &qword_1C8BE6E20);
  }

  else
  {
    sub_1C8779244();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C8840550();
      goto LABEL_8;
    }

    sub_1C8779244();
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_1C8778ED8(v23, &qword_1EC2B79D0, &qword_1C8BF01E8);
      sub_1C8779244();
      sub_1C8779244();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, matched);
    }

    else
    {
      sub_1C8840550();
    }
  }

  sub_1C87765D8(&qword_1EC2B7790, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PommesPrompting);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v25 = v23;
    return sub_1C8778ED8(v25, &qword_1EC2B79D0, &qword_1C8BF01E8);
  }

  v24 = v30;
  sub_1C87791EC();
  if (__swift_getEnumTagSinglePayload(v24, 1, matched) == 1)
  {
    v25 = v24;
    return sub_1C8778ED8(v25, &qword_1EC2B79D0, &qword_1C8BF01E8);
  }

  sub_1C8779244();
  v27 = v29;
  sub_1C8778ED8(v29, &qword_1EC2B6188, &qword_1C8BE6E20);
  sub_1C8779244();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v15);
}

uint64_t sub_1C884B4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  matched = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.SiriXSDAPrompting(0);
  v7 = *(*(matched - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](matched);
  v28[1] = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28[0] = v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6188, &qword_1C8BE6E20);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v28 - v13;
  v15 = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.OneOf_Value(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B79D8, &qword_1C8BF01F0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v30 = v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v28 - v22;
  __swift_storeEnumTagSinglePayload(v28 - v22, 1, 1, matched);
  v29 = a1;
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C8778ED8(v14, &qword_1EC2B6188, &qword_1C8BE6E20);
  }

  else
  {
    sub_1C8779244();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C8840550();
      goto LABEL_8;
    }

    sub_1C8779244();
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_1C8778ED8(v23, &qword_1EC2B79D8, &qword_1C8BF01F0);
      sub_1C8779244();
      sub_1C8779244();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, matched);
    }

    else
    {
      sub_1C8840550();
    }
  }

  sub_1C87765D8(&qword_1EC2B77A8, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.SiriXSDAPrompting);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v25 = v23;
    return sub_1C8778ED8(v25, &qword_1EC2B79D8, &qword_1C8BF01F0);
  }

  v24 = v30;
  sub_1C87791EC();
  if (__swift_getEnumTagSinglePayload(v24, 1, matched) == 1)
  {
    v25 = v24;
    return sub_1C8778ED8(v25, &qword_1EC2B79D8, &qword_1C8BF01F0);
  }

  sub_1C8779244();
  v27 = v29;
  sub_1C8778ED8(v29, &qword_1EC2B6188, &qword_1C8BE6E20);
  sub_1C8779244();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v15);
}

uint64_t sub_1C884B974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  matched = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.Tools(0);
  v7 = *(*(matched - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](matched);
  v28[1] = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28[0] = v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6188, &qword_1C8BE6E20);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v28 - v13;
  v15 = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.OneOf_Value(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B79E8, &qword_1C8BF0200);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v30 = v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v28 - v22;
  __swift_storeEnumTagSinglePayload(v28 - v22, 1, 1, matched);
  v29 = a1;
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C8778ED8(v14, &qword_1EC2B6188, &qword_1C8BE6E20);
  }

  else
  {
    sub_1C8779244();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C8840550();
      goto LABEL_8;
    }

    sub_1C8779244();
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_1C8778ED8(v23, &qword_1EC2B79E8, &qword_1C8BF0200);
      sub_1C8779244();
      sub_1C8779244();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, matched);
    }

    else
    {
      sub_1C8840550();
    }
  }

  sub_1C87765D8(&qword_1EC2B77C8, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.Tools);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v25 = v23;
    return sub_1C8778ED8(v25, &qword_1EC2B79E8, &qword_1C8BF0200);
  }

  v24 = v30;
  sub_1C87791EC();
  if (__swift_getEnumTagSinglePayload(v24, 1, matched) == 1)
  {
    v25 = v24;
    return sub_1C8778ED8(v25, &qword_1EC2B79E8, &qword_1C8BF0200);
  }

  sub_1C8779244();
  v27 = v29;
  sub_1C8778ED8(v29, &qword_1EC2B6188, &qword_1C8BE6E20);
  sub_1C8779244();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v15);
}

uint64_t sub_1C884BE30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  HasAppInContext = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.HasAppInContext(0);
  v7 = *(*(HasAppInContext - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](HasAppInContext);
  v28[1] = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28[0] = v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6188, &qword_1C8BE6E20);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v28 - v13;
  matched = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.OneOf_Value(0);
  v16 = *(*(matched - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](matched);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B79F0, &qword_1C8BF0208);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v30 = v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v28 - v22;
  __swift_storeEnumTagSinglePayload(v28 - v22, 1, 1, HasAppInContext);
  v29 = a1;
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v14, 1, matched) == 1)
  {
    sub_1C8778ED8(v14, &qword_1EC2B6188, &qword_1C8BE6E20);
  }

  else
  {
    sub_1C8779244();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C8840550();
      goto LABEL_8;
    }

    sub_1C8779244();
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_1C8778ED8(v23, &qword_1EC2B79F0, &qword_1C8BF0208);
      sub_1C8779244();
      sub_1C8779244();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, HasAppInContext);
    }

    else
    {
      sub_1C8840550();
    }
  }

  sub_1C87765D8(&qword_1EC2B77E0, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.HasAppInContext);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v25 = v23;
    return sub_1C8778ED8(v25, &qword_1EC2B79F0, &qword_1C8BF0208);
  }

  v24 = v30;
  sub_1C87791EC();
  if (__swift_getEnumTagSinglePayload(v24, 1, HasAppInContext) == 1)
  {
    v25 = v24;
    return sub_1C8778ED8(v25, &qword_1EC2B79F0, &qword_1C8BF0208);
  }

  sub_1C8779244();
  v27 = v29;
  sub_1C8778ED8(v29, &qword_1EC2B6188, &qword_1C8BE6E20);
  sub_1C8779244();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, matched);
}

uint64_t Siri_Nlu_Internal_NlRouter_OverrideMatchRule.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_95_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6188, &qword_1C8BE6E20);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_97_0();
  matched = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.OneOf_Value(0);
  OUTLINED_FUNCTION_144_2(matched);
  if (!v7)
  {
    OUTLINED_FUNCTION_104_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v47 = OUTLINED_FUNCTION_9_4();
        sub_1C884C6D4(v47, v48, v49, v50);
        goto LABEL_19;
      case 2:
        v35 = OUTLINED_FUNCTION_9_4();
        sub_1C884C8E8(v35, v36, v37, v38);
        goto LABEL_19;
      case 3:
        v39 = OUTLINED_FUNCTION_9_4();
        sub_1C884CAFC(v39, v40, v41, v42);
        goto LABEL_19;
      case 4:
        v23 = OUTLINED_FUNCTION_9_4();
        sub_1C884CD10(v23, v24, v25, v26);
        goto LABEL_19;
      case 5:
        v51 = OUTLINED_FUNCTION_9_4();
        sub_1C884CF24(v51, v52, v53, v54);
        goto LABEL_19;
      case 6:
        v59 = OUTLINED_FUNCTION_9_4();
        sub_1C884D138(v59, v60, v61, v62);
        goto LABEL_19;
      case 7:
        v43 = OUTLINED_FUNCTION_9_4();
        sub_1C884D34C(v43, v44, v45, v46);
        goto LABEL_19;
      case 8:
        v67 = OUTLINED_FUNCTION_9_4();
        sub_1C884D560(v67, v68, v69, v70);
        goto LABEL_23;
      case 9:
        v31 = OUTLINED_FUNCTION_9_4();
        sub_1C884D774(v31, v32, v33, v34);
        goto LABEL_23;
      case 10:
        v63 = OUTLINED_FUNCTION_9_4();
        sub_1C884D988(v63, v64, v65, v66);
        goto LABEL_23;
      case 11:
        v19 = OUTLINED_FUNCTION_9_4();
        sub_1C884DB9C(v19, v20, v21, v22);
        goto LABEL_23;
      case 12:
        v27 = OUTLINED_FUNCTION_9_4();
        sub_1C884DDB0(v27, v28, v29, v30);
        goto LABEL_23;
      case 13:
        v55 = OUTLINED_FUNCTION_9_4();
        sub_1C884DFC4(v55, v56, v57, v58);
        goto LABEL_23;
      case 14:
        v15 = OUTLINED_FUNCTION_9_4();
        sub_1C884E1D8(v15, v16, v17, v18);
LABEL_23:
        if (v1)
        {
          OUTLINED_FUNCTION_7_11();
          return sub_1C8840550();
        }

        OUTLINED_FUNCTION_7_11();
        sub_1C8840550();
        break;
      default:
        v11 = OUTLINED_FUNCTION_9_4();
        sub_1C884C4C4(v11, v12, v13, v14);
LABEL_19:
        OUTLINED_FUNCTION_7_11();
        result = sub_1C8840550();
        if (!v1)
        {
          break;
        }

        return result;
    }
  }

  v8 = v0 + *(type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule(0) + 20);
  OUTLINED_FUNCTION_258();
  return sub_1C8BD49DC();
}

uint64_t sub_1C884C4C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6188, &qword_1C8BE6E20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  matched = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.Utterance(0);
  v9 = *(*(matched - 8) + 64);
  MEMORY[0x1EEE9AC00](matched);
  sub_1C8778810();
  v10 = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B6188, &qword_1C8BE6E20);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1C8779244();
      sub_1C87765D8(&qword_1EC2B3C20, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.Utterance);
      sub_1C8BD4E2C();
      return sub_1C8840550();
    }

    result = sub_1C8840550();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C884C6D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6188, &qword_1C8BE6E20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  matched = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.UtteranceRegex(0);
  v9 = *(*(matched - 8) + 64);
  MEMORY[0x1EEE9AC00](matched);
  sub_1C8778810();
  v10 = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B6188, &qword_1C8BE6E20);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8779244();
      sub_1C87765D8(&qword_1EC2B3D98, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.UtteranceRegex);
      sub_1C8BD4E2C();
      return sub_1C8840550();
    }

    result = sub_1C8840550();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C884C8E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6188, &qword_1C8BE6E20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  matched = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousUtterances(0);
  v9 = *(*(matched - 8) + 64);
  MEMORY[0x1EEE9AC00](matched);
  sub_1C8778810();
  v10 = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B6188, &qword_1C8BE6E20);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C8779244();
      sub_1C87765D8(&qword_1EC2B3D18, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousUtterances);
      sub_1C8BD4E2C();
      return sub_1C8840550();
    }

    result = sub_1C8840550();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C884CAFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6188, &qword_1C8BE6E20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  matched = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousUtterancesRegex(0);
  v9 = *(*(matched - 8) + 64);
  MEMORY[0x1EEE9AC00](matched);
  sub_1C8778810();
  v10 = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B6188, &qword_1C8BE6E20);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1C8779244();
      sub_1C87765D8(&qword_1EC2B3C70, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousUtterancesRegex);
      sub_1C8BD4E2C();
      return sub_1C8840550();
    }

    result = sub_1C8840550();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C884CD10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6188, &qword_1C8BE6E20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  matched = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.SiriResponses(0);
  v9 = *(*(matched - 8) + 64);
  MEMORY[0x1EEE9AC00](matched);
  sub_1C8778810();
  v10 = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B6188, &qword_1C8BE6E20);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1C8779244();
      sub_1C87765D8(&qword_1EC2B7730, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.SiriResponses);
      sub_1C8BD4E2C();
      return sub_1C8840550();
    }

    result = sub_1C8840550();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C884CF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6188, &qword_1C8BE6E20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  matched = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.SiriResponsesRegex(0);
  v9 = *(*(matched - 8) + 64);
  MEMORY[0x1EEE9AC00](matched);
  sub_1C8778810();
  v10 = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B6188, &qword_1C8BE6E20);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1C8779244();
      sub_1C87765D8(&qword_1EC2B7748, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.SiriResponsesRegex);
      sub_1C8BD4E2C();
      return sub_1C8840550();
    }

    result = sub_1C8840550();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C884D138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6188, &qword_1C8BE6E20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  matched = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PlannerPrompting(0);
  v9 = *(*(matched - 8) + 64);
  MEMORY[0x1EEE9AC00](matched);
  sub_1C8778810();
  v10 = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B6188, &qword_1C8BE6E20);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1C8779244();
      sub_1C87765D8(&qword_1EC2B7760, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PlannerPrompting);
      sub_1C8BD4E2C();
      return sub_1C8840550();
    }

    result = sub_1C8840550();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C884D34C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6188, &qword_1C8BE6E20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  matched = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.LegacyNLPrompting(0);
  v9 = *(*(matched - 8) + 64);
  MEMORY[0x1EEE9AC00](matched);
  sub_1C8778810();
  v10 = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B6188, &qword_1C8BE6E20);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_1C8779244();
      sub_1C87765D8(&qword_1EC2B7778, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.LegacyNLPrompting);
      sub_1C8BD4E2C();
      return sub_1C8840550();
    }

    result = sub_1C8840550();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C884D560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6188, &qword_1C8BE6E20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  matched = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PommesPrompting(0);
  v9 = *(*(matched - 8) + 64);
  MEMORY[0x1EEE9AC00](matched);
  sub_1C8778810();
  v10 = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B6188, &qword_1C8BE6E20);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_1C8779244();
      sub_1C87765D8(&qword_1EC2B7790, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PommesPrompting);
      sub_1C8BD4E2C();
      return sub_1C8840550();
    }

    result = sub_1C8840550();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C884D774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6188, &qword_1C8BE6E20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  matched = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.SiriXSDAPrompting(0);
  v9 = *(*(matched - 8) + 64);
  MEMORY[0x1EEE9AC00](matched);
  sub_1C8778810();
  v10 = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B6188, &qword_1C8BE6E20);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_1C8779244();
      sub_1C87765D8(&qword_1EC2B77A8, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.SiriXSDAPrompting);
      sub_1C8BD4E2C();
      return sub_1C8840550();
    }

    result = sub_1C8840550();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C884D988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6188, &qword_1C8BE6E20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  matched = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.Excluding(0);
  v9 = *(*(matched - 8) + 64);
  MEMORY[0x1EEE9AC00](matched);
  sub_1C8778810();
  v10 = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B6188, &qword_1C8BE6E20);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_1C8779244();
      sub_1C87765D8(&qword_1EC2B3C40, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.Excluding);
      sub_1C8BD4E2C();
      return sub_1C8840550();
    }

    result = sub_1C8840550();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C884DB9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6188, &qword_1C8BE6E20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  matched = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.Tools(0);
  v9 = *(*(matched - 8) + 64);
  MEMORY[0x1EEE9AC00](matched);
  sub_1C8778810();
  v10 = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B6188, &qword_1C8BE6E20);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_1C8779244();
      sub_1C87765D8(&qword_1EC2B77C8, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.Tools);
      sub_1C8BD4E2C();
      return sub_1C8840550();
    }

    result = sub_1C8840550();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C884DDB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6188, &qword_1C8BE6E20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  HasAppInContext = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.HasAppInContext(0);
  v9 = *(*(HasAppInContext - 8) + 64);
  MEMORY[0x1EEE9AC00](HasAppInContext);
  sub_1C8778810();
  matched = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, matched) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B6188, &qword_1C8BE6E20);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_1C8779244();
      sub_1C87765D8(&qword_1EC2B77E0, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.HasAppInContext);
      sub_1C8BD4E2C();
      return sub_1C8840550();
    }

    result = sub_1C8840550();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C884DFC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6188, &qword_1C8BE6E20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  matched = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.RetrievedContext(0);
  v9 = *(*(matched - 8) + 64);
  MEMORY[0x1EEE9AC00](matched);
  sub_1C8778810();
  v10 = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B6188, &qword_1C8BE6E20);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_1C8779244();
      sub_1C87765D8(&qword_1EC2B3D48, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.RetrievedContext);
      sub_1C8BD4E2C();
      return sub_1C8840550();
    }

    result = sub_1C8840550();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C884E1D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6188, &qword_1C8BE6E20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  matched = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource(0);
  v9 = *(*(matched - 8) + 64);
  MEMORY[0x1EEE9AC00](matched);
  sub_1C8778810();
  v10 = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B6188, &qword_1C8BE6E20);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      sub_1C8779244();
      sub_1C87765D8(&qword_1EC2B3C90, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource);
      sub_1C8BD4E2C();
      return sub_1C8840550();
    }

    result = sub_1C8840550();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C884E68C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C87765D8(&qword_1EC2B7948, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C884E70C(uint64_t a1)
{
  v2 = sub_1C87765D8(&qword_1EC2B3C00, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C884E77C()
{
  sub_1C87765D8(&qword_1EC2B3C00, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C884E918(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C87765D8(&qword_1EC2B7940, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.Utterance);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C884E998(uint64_t a1)
{
  v2 = sub_1C87765D8(&qword_1EC2B3C20, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.Utterance);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C884EA08()
{
  sub_1C87765D8(&qword_1EC2B3C20, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.Utterance);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C884EAD8()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B7250);
  __swift_project_value_buffer(v0, qword_1EC2B7250);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "query";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "spansForNamedCaptureGroups";
  *(v10 + 1) = 26;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

void Siri_Nlu_Internal_NlRouter_OverrideMatchRule.UtteranceRegex.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_178_1();
  OUTLINED_FUNCTION_50_2();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_88_0();
  if (!v5 || (OUTLINED_FUNCTION_128_0(), !v1))
  {
    if (!*(*(v2 + 16) + 16) || (type metadata accessor for Siri_Nlu_Internal_NlRouter_SpansForNamedCaptureGroup(0), sub_1C87765D8(&qword_1EC2B7618, type metadata accessor for Siri_Nlu_Internal_NlRouter_SpansForNamedCaptureGroup), OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_76_1(), !v1))
    {
      v6 = *(type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.UtteranceRegex(0) + 24);
      OUTLINED_FUNCTION_69();
    }
  }

  OUTLINED_FUNCTION_177_0();
}

uint64_t sub_1C884EDF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C87765D8(&qword_1EC2B7938, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.UtteranceRegex);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C884EE70(uint64_t a1)
{
  v2 = sub_1C87765D8(&qword_1EC2B3D98, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.UtteranceRegex);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C884EEE0()
{
  sub_1C87765D8(&qword_1EC2B3D98, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.UtteranceRegex);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C884EF60()
{
  result = MEMORY[0x1CCA7E2D0](0xD000000000000013, 0x80000001C8C207A0);
  qword_1EC2B7268 = 0xD00000000000002DLL;
  unk_1EC2B7270 = 0x80000001C8C204E0;
  return result;
}

uint64_t sub_1C884F0C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C87765D8(&qword_1EC2B7930, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousUtterances);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C884F148(uint64_t a1)
{
  v2 = sub_1C87765D8(&qword_1EC2B3D18, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousUtterances);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C884F1B8()
{
  sub_1C87765D8(&qword_1EC2B3D18, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousUtterances);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C884F238()
{
  result = MEMORY[0x1CCA7E2D0](0xD000000000000018, 0x80000001C8C20780);
  qword_1EC2B7290 = 0xD00000000000002DLL;
  *algn_1EC2B7298 = 0x80000001C8C204E0;
  return result;
}

void sub_1C884F334()
{
  OUTLINED_FUNCTION_178_1();
  v3 = v2;
  OUTLINED_FUNCTION_50_2();
  if (!*(*v1 + 16) || (sub_1C8BD4DAC(), !v0))
  {
    v4 = *(v3(0) + 20);
    OUTLINED_FUNCTION_69();
  }

  OUTLINED_FUNCTION_177_0();
}

uint64_t sub_1C884F41C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C87765D8(&qword_1EC2B7928, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousUtterancesRegex);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C884F49C(uint64_t a1)
{
  v2 = sub_1C87765D8(&qword_1EC2B3C70, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousUtterancesRegex);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C884F50C()
{
  sub_1C87765D8(&qword_1EC2B3C70, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousUtterancesRegex);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C884F6B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C87765D8(&qword_1EC2B7920, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.SiriResponses);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C884F734(uint64_t a1)
{
  v2 = sub_1C87765D8(&qword_1EC2B7730, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.SiriResponses);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C884F7A4()
{
  sub_1C87765D8(&qword_1EC2B7730, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.SiriResponses);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C884F824()
{
  result = MEMORY[0x1CCA7E2D0](0xD000000000000013, 0x80000001C8C20760);
  qword_1EC2B72E0 = 0xD00000000000002DLL;
  *algn_1EC2B72E8 = 0x80000001C8C204E0;
  return result;
}

uint64_t sub_1C884F990(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C87765D8(&qword_1EC2B7918, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.SiriResponsesRegex);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C884FA10(uint64_t a1)
{
  v2 = sub_1C87765D8(&qword_1EC2B7748, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.SiriResponsesRegex);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C884FA80()
{
  sub_1C87765D8(&qword_1EC2B7748, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.SiriResponsesRegex);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C884FB00()
{
  result = MEMORY[0x1CCA7E2D0](0xD000000000000011, 0x80000001C8C20740);
  qword_1EC2B7308 = 0xD00000000000002DLL;
  unk_1EC2B7310 = 0x80000001C8C204E0;
  return result;
}

uint64_t sub_1C884FC10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C87765D8(&qword_1EC2B7910, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PlannerPrompting);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C884FC90(uint64_t a1)
{
  v2 = sub_1C87765D8(&qword_1EC2B7760, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PlannerPrompting);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C884FD00()
{
  sub_1C87765D8(&qword_1EC2B7760, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PlannerPrompting);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C884FD7C()
{
  result = MEMORY[0x1CCA7E2D0](0xD000000000000012, 0x80000001C8C20720);
  qword_1EC2B7330 = 0xD00000000000002DLL;
  *algn_1EC2B7338 = 0x80000001C8C204E0;
  return result;
}

uint64_t sub_1C884FE8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C87765D8(&qword_1EC2B7908, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.LegacyNLPrompting);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C884FF0C(uint64_t a1)
{
  v2 = sub_1C87765D8(&qword_1EC2B7778, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.LegacyNLPrompting);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C884FF7C()
{
  sub_1C87765D8(&qword_1EC2B7778, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.LegacyNLPrompting);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C884FFF8()
{
  result = MEMORY[0x1CCA7E2D0](0xD000000000000010, 0x80000001C8C20700);
  qword_1EC2B7358 = 0xD00000000000002DLL;
  unk_1EC2B7360 = 0x80000001C8C204E0;
  return result;
}

uint64_t sub_1C8850108(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C87765D8(&qword_1EC2B7900, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PommesPrompting);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8850188(uint64_t a1)
{
  v2 = sub_1C87765D8(&qword_1EC2B7790, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PommesPrompting);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88501F8()
{
  sub_1C87765D8(&qword_1EC2B7790, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PommesPrompting);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8850274()
{
  result = MEMORY[0x1CCA7E2D0](0xD000000000000012, 0x80000001C8C206E0);
  qword_1EC2B7380 = 0xD00000000000002DLL;
  *algn_1EC2B7388 = 0x80000001C8C204E0;
  return result;
}

uint64_t sub_1C885039C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C87765D8(&qword_1EC2B78F8, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.SiriXSDAPrompting);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C885041C(uint64_t a1)
{
  v2 = sub_1C87765D8(&qword_1EC2B77A8, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.SiriXSDAPrompting);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C885048C()
{
  sub_1C87765D8(&qword_1EC2B77A8, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.SiriXSDAPrompting);

  return sub_1C8BD4CFC();
}

void Siri_Nlu_Internal_NlRouter_OverrideMatchRule.Excluding.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_178_1();
  OUTLINED_FUNCTION_50_2();
  if (!*(*v0 + 16) || (type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule(0), OUTLINED_FUNCTION_113_0(), sub_1C87765D8(v2, v3), OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_76_1(), !v1))
  {
    v4 = *(type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.Excluding(0) + 20);
    OUTLINED_FUNCTION_69();
  }

  OUTLINED_FUNCTION_177_0();
}

uint64_t sub_1C8850690(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C87765D8(&qword_1EC2B78F0, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.Excluding);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8850710(uint64_t a1)
{
  v2 = sub_1C87765D8(&qword_1EC2B3C40, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.Excluding);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8850780()
{
  sub_1C87765D8(&qword_1EC2B3C40, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.Excluding);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8850820(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x1CCA7E2D0](a2, a3);
  *a4 = 0xD00000000000002DLL;
  *a5 = 0x80000001C8C204E0;
  return result;
}

uint64_t sub_1C8850984(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C87765D8(&qword_1EC2B78E8, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.Tools);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8850A04(uint64_t a1)
{
  v2 = sub_1C87765D8(&qword_1EC2B77C8, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.Tools);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8850A74()
{
  sub_1C87765D8(&qword_1EC2B77C8, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.Tools);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8850AF4()
{
  result = MEMORY[0x1CCA7E2D0](0xD000000000000010, 0x80000001C8C206C0);
  qword_1EC2B73F8 = 0xD00000000000002DLL;
  unk_1EC2B7400 = 0x80000001C8C204E0;
  return result;
}

void sub_1C8850BF0()
{
  OUTLINED_FUNCTION_178_1();
  v3 = v2;
  OUTLINED_FUNCTION_50_2();
  v4 = *v0;
  v5 = v0[1];
  OUTLINED_FUNCTION_88_0();
  if (!v6 || (OUTLINED_FUNCTION_128_0(), !v1))
  {
    v7 = *(v3(0) + 20);
    OUTLINED_FUNCTION_69();
  }

  OUTLINED_FUNCTION_177_0();
}

uint64_t sub_1C8850CC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C87765D8(&qword_1EC2B78E0, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.HasAppInContext);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8850D48(uint64_t a1)
{
  v2 = sub_1C87765D8(&qword_1EC2B77E0, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.HasAppInContext);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8850DB8()
{
  sub_1C87765D8(&qword_1EC2B77E0, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.HasAppInContext);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8850E38()
{
  result = MEMORY[0x1CCA7E2D0](0xD000000000000011, 0x80000001C8C206A0);
  qword_1EC2B7420 = 0xD00000000000002DLL;
  *algn_1EC2B7428 = 0x80000001C8C204E0;
  return result;
}

uint64_t sub_1C8850ECC()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B7430);
  __swift_project_value_buffer(v0, qword_1EC2B7430);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "appInFocusBundleId";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "hasFocusedOnScreenImage";
  *(v10 + 1) = 23;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "hasFocusedOnScreenDocument";
  *(v12 + 1) = 26;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_Internal_NlRouter_OverrideMatchRule.RetrievedContext.traverse<A>(visitor:)()
{
  v2 = OUTLINED_FUNCTION_17();
  matched = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.RetrievedContext(v2);
  v4 = (v0 + matched[5]);
  if (!v4[1] || (v5 = *v4, result = sub_1C8BD4DDC(), !v1))
  {
    if (*(v0 + matched[6]) == 2 || (result = sub_1C8BD4D3C(), !v1))
    {
      if (*(v0 + matched[7]) == 2)
      {
        return sub_1C8BD49DC();
      }

      result = sub_1C8BD4D3C();
      if (!v1)
      {
        return sub_1C8BD49DC();
      }
    }
  }

  return result;
}

uint64_t sub_1C885131C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C87765D8(&qword_1EC2B78D8, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.RetrievedContext);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C885139C(uint64_t a1)
{
  v2 = sub_1C87765D8(&qword_1EC2B3D48, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.RetrievedContext);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C885140C()
{
  sub_1C87765D8(&qword_1EC2B3D48, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.RetrievedContext);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C885148C()
{
  result = MEMORY[0x1CCA7E2D0](0xD000000000000018, 0x80000001C8C20620);
  qword_1EC2B7448 = 0xD00000000000002DLL;
  unk_1EC2B7450 = 0x80000001C8C204E0;
  return result;
}

uint64_t sub_1C8851520()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B7458);
  __swift_project_value_buffer(v0, qword_1EC2B7458);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE68B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "siriX";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "planner";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "pqaSearch";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "genAI";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C8851788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  matched = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.SiriX(0);
  v7 = *(*(matched - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](matched);
  v28[1] = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28[0] = v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B75A8, &qword_1C8BED7B0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v28 - v13;
  v15 = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.OneOf_ExecutionSource(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7970, &qword_1C8BF0188);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v30 = v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v28 - v22;
  __swift_storeEnumTagSinglePayload(v28 - v22, 1, 1, matched);
  v29 = a1;
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C8778ED8(v14, &qword_1EC2B75A8, &qword_1C8BED7B0);
  }

  else
  {
    sub_1C8779244();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C8840550();
      goto LABEL_8;
    }

    sub_1C8779244();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1C8840550();
    }

    else
    {
      sub_1C8778ED8(v23, &qword_1EC2B7970, &qword_1C8BF0188);
      sub_1C8779244();
      sub_1C8779244();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, matched);
    }
  }

  sub_1C87765D8(&qword_1EC2B7808, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.SiriX);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v25 = v23;
    return sub_1C8778ED8(v25, &qword_1EC2B7970, &qword_1C8BF0188);
  }

  v24 = v30;
  sub_1C87791EC();
  if (__swift_getEnumTagSinglePayload(v24, 1, matched) == 1)
  {
    v25 = v24;
    return sub_1C8778ED8(v25, &qword_1EC2B7970, &qword_1C8BF0188);
  }

  sub_1C8779244();
  v27 = v29;
  sub_1C8778ED8(v29, &qword_1EC2B75A8, &qword_1C8BED7B0);
  sub_1C8779244();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v15);
}

uint64_t sub_1C8851C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  matched = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.Planner(0);
  v7 = *(*(matched - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](matched);
  v28[1] = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28[0] = v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B75A8, &qword_1C8BED7B0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v28 - v13;
  v15 = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.OneOf_ExecutionSource(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7978, &qword_1C8BF0190);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v30 = v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v28 - v22;
  __swift_storeEnumTagSinglePayload(v28 - v22, 1, 1, matched);
  v29 = a1;
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C8778ED8(v14, &qword_1EC2B75A8, &qword_1C8BED7B0);
  }

  else
  {
    sub_1C8779244();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C8840550();
      goto LABEL_8;
    }

    sub_1C8779244();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8778ED8(v23, &qword_1EC2B7978, &qword_1C8BF0190);
      sub_1C8779244();
      sub_1C8779244();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, matched);
    }

    else
    {
      sub_1C8840550();
    }
  }

  sub_1C87765D8(&qword_1EC2B7820, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.Planner);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v25 = v23;
    return sub_1C8778ED8(v25, &qword_1EC2B7978, &qword_1C8BF0190);
  }

  v24 = v30;
  sub_1C87791EC();
  if (__swift_getEnumTagSinglePayload(v24, 1, matched) == 1)
  {
    v25 = v24;
    return sub_1C8778ED8(v25, &qword_1EC2B7978, &qword_1C8BF0190);
  }

  sub_1C8779244();
  v27 = v29;
  sub_1C8778ED8(v29, &qword_1EC2B75A8, &qword_1C8BED7B0);
  sub_1C8779244();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v15);
}

uint64_t sub_1C88520FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  matched = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.PQASearch(0);
  v7 = *(*(matched - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](matched);
  v28[1] = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28[0] = v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B75A8, &qword_1C8BED7B0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v28 - v13;
  v15 = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.OneOf_ExecutionSource(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7980, &qword_1C8BF0198);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v30 = v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v28 - v22;
  __swift_storeEnumTagSinglePayload(v28 - v22, 1, 1, matched);
  v29 = a1;
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C8778ED8(v14, &qword_1EC2B75A8, &qword_1C8BED7B0);
  }

  else
  {
    sub_1C8779244();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C8840550();
      goto LABEL_8;
    }

    sub_1C8779244();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C8778ED8(v23, &qword_1EC2B7980, &qword_1C8BF0198);
      sub_1C8779244();
      sub_1C8779244();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, matched);
    }

    else
    {
      sub_1C8840550();
    }
  }

  sub_1C87765D8(&qword_1EC2B7838, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.PQASearch);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v25 = v23;
    return sub_1C8778ED8(v25, &qword_1EC2B7980, &qword_1C8BF0198);
  }

  v24 = v30;
  sub_1C87791EC();
  if (__swift_getEnumTagSinglePayload(v24, 1, matched) == 1)
  {
    v25 = v24;
    return sub_1C8778ED8(v25, &qword_1EC2B7980, &qword_1C8BF0198);
  }

  sub_1C8779244();
  v27 = v29;
  sub_1C8778ED8(v29, &qword_1EC2B75A8, &qword_1C8BED7B0);
  sub_1C8779244();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v15);
}

uint64_t Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_95_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B75A8, &qword_1C8BED7B0);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_97_0();
  matched = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.OneOf_ExecutionSource(0);
  OUTLINED_FUNCTION_144_2(matched);
  if (v7)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_104_0();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v20 = OUTLINED_FUNCTION_9_4();
      sub_1C88528F4(v20, v21, v22, v23);
      break;
    case 2u:
      v12 = OUTLINED_FUNCTION_9_4();
      sub_1C8852B08(v12, v13, v14, v15);
      break;
    case 3u:
      v16 = OUTLINED_FUNCTION_9_4();
      sub_1C8852D1C(v16, v17, v18, v19);
      break;
    default:
      v8 = OUTLINED_FUNCTION_9_4();
      sub_1C88526E4(v8, v9, v10, v11);
      break;
  }

  OUTLINED_FUNCTION_57_2();
  result = sub_1C8840550();
  if (!v1)
  {
LABEL_8:
    v25 = v0 + *(type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource(0) + 20);
    OUTLINED_FUNCTION_258();
    return sub_1C8BD49DC();
  }

  return result;
}

uint64_t sub_1C88526E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B75A8, &qword_1C8BED7B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  matched = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.SiriX(0);
  v9 = *(*(matched - 8) + 64);
  MEMORY[0x1EEE9AC00](matched);
  sub_1C8778810();
  v10 = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.OneOf_ExecutionSource(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B75A8, &qword_1C8BED7B0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1C8779244();
      sub_1C87765D8(&qword_1EC2B7808, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.SiriX);
      sub_1C8BD4E2C();
      return sub_1C8840550();
    }

    result = sub_1C8840550();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C88528F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B75A8, &qword_1C8BED7B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  matched = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.Planner(0);
  v9 = *(*(matched - 8) + 64);
  MEMORY[0x1EEE9AC00](matched);
  sub_1C8778810();
  v10 = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.OneOf_ExecutionSource(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B75A8, &qword_1C8BED7B0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8779244();
      sub_1C87765D8(&qword_1EC2B7820, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.Planner);
      sub_1C8BD4E2C();
      return sub_1C8840550();
    }

    result = sub_1C8840550();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8852B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B75A8, &qword_1C8BED7B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  matched = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.PQASearch(0);
  v9 = *(*(matched - 8) + 64);
  MEMORY[0x1EEE9AC00](matched);
  sub_1C8778810();
  v10 = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.OneOf_ExecutionSource(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B75A8, &qword_1C8BED7B0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C8779244();
      sub_1C87765D8(&qword_1EC2B7838, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.PQASearch);
      sub_1C8BD4E2C();
      return sub_1C8840550();
    }

    result = sub_1C8840550();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8852D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B75A8, &qword_1C8BED7B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  matched = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.GenAI(0);
  v9 = *(*(matched - 8) + 64);
  MEMORY[0x1EEE9AC00](matched);
  sub_1C8778810();
  v10 = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.OneOf_ExecutionSource(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B75A8, &qword_1C8BED7B0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1C8779244();
      sub_1C87765D8(&qword_1EC2B3CD0, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.GenAI);
      sub_1C8BD4E2C();
      return sub_1C8840550();
    }

    result = sub_1C8840550();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8852F9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C87765D8(&qword_1EC2B78D0, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C885301C(uint64_t a1)
{
  v2 = sub_1C87765D8(&qword_1EC2B3C90, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C885308C()
{
  sub_1C87765D8(&qword_1EC2B3C90, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C88531C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C87765D8(&qword_1EC2B78C8, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.SiriX);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8853248(uint64_t a1)
{
  v2 = sub_1C87765D8(&qword_1EC2B7808, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.SiriX);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88532B8()
{
  sub_1C87765D8(&qword_1EC2B7808, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.SiriX);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C88533F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C87765D8(&qword_1EC2B78C0, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.Planner);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8853474(uint64_t a1)
{
  v2 = sub_1C87765D8(&qword_1EC2B7820, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.Planner);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88534E4()
{
  sub_1C87765D8(&qword_1EC2B7820, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.Planner);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8853624(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C87765D8(&qword_1EC2B78B8, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.PQASearch);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88536A4(uint64_t a1)
{
  v2 = sub_1C87765D8(&qword_1EC2B7838, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.PQASearch);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8853714()
{
  sub_1C87765D8(&qword_1EC2B7838, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.PQASearch);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C88537B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  OUTLINED_FUNCTION_95_0();
  if (qword_1EC2B4EC0 != -1)
  {
    swift_once();
  }

  v9 = qword_1EC2B7448;
  v10 = unk_1EC2B7450;
  swift_bridgeObjectRetain_n();
  v7 = OUTLINED_FUNCTION_97();
  MEMORY[0x1CCA7E2D0](v7);

  *a4 = v9;
  *a5 = v10;
  return result;
}

uint64_t sub_1C88538F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C87765D8(&qword_1EC2B78B0, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.GenAI);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8853978(uint64_t a1)
{
  v2 = sub_1C87765D8(&qword_1EC2B3CD0, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.GenAI);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88539E8()
{
  sub_1C87765D8(&qword_1EC2B3CD0, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.GenAI);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8853A7C()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B7510);
  __swift_project_value_buffer(v0, qword_1EC2B7510);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "keepModelDecision";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "change";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C8853C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v6 = type metadata accessor for Siri_Nlu_Internal_NlRouter_NLRouterOverrideRoute.KeepModelDecision(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v28[1] = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28[0] = v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B75C0, &qword_1C8BED7C8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v28 - v13;
  v15 = type metadata accessor for Siri_Nlu_Internal_NlRouter_NLRouterOverrideRoute.OneOf_Value(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7960, &qword_1C8BF0178);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v30 = v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v28 - v22;
  __swift_storeEnumTagSinglePayload(v28 - v22, 1, 1, v6);
  v29 = a1;
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C8778ED8(v14, &qword_1EC2B75C0, &qword_1C8BED7C8);
  }

  else
  {
    sub_1C8779244();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C8840550();
      goto LABEL_8;
    }

    sub_1C8779244();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8840550();
    }

    else
    {
      sub_1C8778ED8(v23, &qword_1EC2B7960, &qword_1C8BF0178);
      sub_1C8779244();
      sub_1C8779244();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, v6);
    }
  }

  sub_1C87765D8(&qword_1EC2B7860, type metadata accessor for Siri_Nlu_Internal_NlRouter_NLRouterOverrideRoute.KeepModelDecision);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v25 = v23;
    return sub_1C8778ED8(v25, &qword_1EC2B7960, &qword_1C8BF0178);
  }

  v24 = v30;
  sub_1C87791EC();
  if (__swift_getEnumTagSinglePayload(v24, 1, v6) == 1)
  {
    v25 = v24;
    return sub_1C8778ED8(v25, &qword_1EC2B7960, &qword_1C8BF0178);
  }

  sub_1C8779244();
  v27 = v29;
  sub_1C8778ED8(v29, &qword_1EC2B75C0, &qword_1C8BED7C8);
  sub_1C8779244();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v15);
}

uint64_t Siri_Nlu_Internal_NlRouter_NLRouterOverrideRoute.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_95_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B75C0, &qword_1C8BED7C8);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_97_0();
  v6 = type metadata accessor for Siri_Nlu_Internal_NlRouter_NLRouterOverrideRoute.OneOf_Value(0);
  OUTLINED_FUNCTION_144_2(v6);
  if (v7)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_104_0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = OUTLINED_FUNCTION_9_4();
    sub_1C8854430(v8, v9, v10, v11);
  }

  else
  {
    v12 = OUTLINED_FUNCTION_9_4();
    sub_1C885421C(v12, v13, v14, v15);
  }

  OUTLINED_FUNCTION_62_1();
  result = sub_1C8840550();
  if (!v1)
  {
LABEL_6:
    v17 = v0 + *(type metadata accessor for Siri_Nlu_Internal_NlRouter_NLRouterOverrideRoute(0) + 20);
    OUTLINED_FUNCTION_258();
    return sub_1C8BD49DC();
  }

  return result;
}

uint64_t sub_1C885421C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B75C0, &qword_1C8BED7C8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Siri_Nlu_Internal_NlRouter_NLRouterOverrideRoute.KeepModelDecision(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C8778810();
  v10 = type metadata accessor for Siri_Nlu_Internal_NlRouter_NLRouterOverrideRoute.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B75C0, &qword_1C8BED7C8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1C8779244();
      sub_1C87765D8(&qword_1EC2B7860, type metadata accessor for Siri_Nlu_Internal_NlRouter_NLRouterOverrideRoute.KeepModelDecision);
      sub_1C8BD4E2C();
      return sub_1C8840550();
    }

    result = sub_1C8840550();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8854430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B75C0, &qword_1C8BED7C8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Siri_Nlu_Internal_NlRouter_NLRouterOverrideRoute.Change(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C8778810();
  v10 = type metadata accessor for Siri_Nlu_Internal_NlRouter_NLRouterOverrideRoute.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B75C0, &qword_1C8BED7C8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8779244();
      sub_1C87765D8(&qword_1EC2B3BB8, type metadata accessor for Siri_Nlu_Internal_NlRouter_NLRouterOverrideRoute.Change);
      sub_1C8BD4E2C();
      return sub_1C8840550();
    }

    result = sub_1C8840550();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C88548E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C87765D8(&qword_1EC2B78A8, type metadata accessor for Siri_Nlu_Internal_NlRouter_NLRouterOverrideRoute);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8854964(uint64_t a1)
{
  v2 = sub_1C87765D8(&qword_1EC2B3B98, type metadata accessor for Siri_Nlu_Internal_NlRouter_NLRouterOverrideRoute);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88549D4()
{
  sub_1C87765D8(&qword_1EC2B3B98, type metadata accessor for Siri_Nlu_Internal_NlRouter_NLRouterOverrideRoute);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8854A54()
{
  result = MEMORY[0x1CCA7E2D0](0xD000000000000012, 0x80000001C8C205C0);
  qword_1EC2B7528 = 0xD000000000000031;
  unk_1EC2B7530 = 0x80000001C8C20510;
  return result;
}

uint64_t sub_1C8854AF4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v3, a2);
  v4 = OUTLINED_FUNCTION_5_0();
  __swift_project_value_buffer(v4, v5);
  return sub_1C8BD511C();
}

uint64_t sub_1C8854BA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C87765D8(&qword_1EC2B78A0, type metadata accessor for Siri_Nlu_Internal_NlRouter_NLRouterOverrideRoute.KeepModelDecision);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8854C28(uint64_t a1)
{
  v2 = sub_1C87765D8(&qword_1EC2B7860, type metadata accessor for Siri_Nlu_Internal_NlRouter_NLRouterOverrideRoute.KeepModelDecision);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8854C98()
{
  sub_1C87765D8(&qword_1EC2B7860, type metadata accessor for Siri_Nlu_Internal_NlRouter_NLRouterOverrideRoute.KeepModelDecision);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8854D14()
{
  result = MEMORY[0x1CCA7E2D0](0x65676E6168432ELL, 0xE700000000000000);
  qword_1EC2B7550 = 0xD000000000000031;
  *algn_1EC2B7558 = 0x80000001C8C20510;
  return result;
}

uint64_t sub_1C8854DB8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v7, a2);
  v8 = OUTLINED_FUNCTION_121();
  __swift_project_value_buffer(v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v11 = *(*v10 + 72);
  v12 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C8BE6F30;
  v14 = v13 + v12 + v10[14];
  *(v13 + v12) = 1;
  *v14 = a3;
  *(v14 + 8) = a4;
  *(v14 + 16) = 2;
  v15 = *MEMORY[0x1E69AADC8];
  v16 = sub_1C8BD50FC();
  OUTLINED_FUNCTION_21(v16);
  (*(v17 + 104))(v14, v15);
  return sub_1C8BD510C();
}

void Siri_Nlu_Internal_NlRouter_NLRouterOverrideRoute.Change.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B75D0, &qword_1C8BED7D8);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision(0);
  v9 = OUTLINED_FUNCTION_21(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_33();
  v12 = *(type metadata accessor for Siri_Nlu_Internal_NlRouter_NLRouterOverrideRoute.Change(0) + 20);
  v14 = v0;
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_1C8778ED8(v7, &qword_1EC2B75D0, &qword_1C8BED7D8);
LABEL_4:
    sub_1C8BD49DC();
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_8_9();
  sub_1C8779244();
  sub_1C87765D8(&qword_1EC2B3148, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision);
  sub_1C8BD4E2C();
  OUTLINED_FUNCTION_61_3();
  sub_1C8840550();
  if (!v1)
  {
    goto LABEL_4;
  }

LABEL_5:
  OUTLINED_FUNCTION_190();
}

uint64_t sub_1C8855168(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C87765D8(&qword_1EC2B7898, type metadata accessor for Siri_Nlu_Internal_NlRouter_NLRouterOverrideRoute.Change);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88551E8(uint64_t a1)
{
  v2 = sub_1C87765D8(&qword_1EC2B3BB8, type metadata accessor for Siri_Nlu_Internal_NlRouter_NLRouterOverrideRoute.Change);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8855258()
{
  sub_1C87765D8(&qword_1EC2B3BB8, type metadata accessor for Siri_Nlu_Internal_NlRouter_NLRouterOverrideRoute.Change);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C88552F0()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B7578);
  __swift_project_value_buffer(v0, qword_1EC2B7578);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "captureGroupName";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "labels";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "labelsTyped";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

void Siri_Nlu_Internal_NlRouter_SpansForNamedCaptureGroup.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    v1 = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        OUTLINED_FUNCTION_8();
        sub_1C88555EC();
        break;
      case 2:
        OUTLINED_FUNCTION_8();
        sub_1C877774C();
        break;
      case 1:
        OUTLINED_FUNCTION_119();
        sub_1C8BD4C2C();
        break;
    }
  }
}

uint64_t sub_1C88555EC()
{
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(0);
  sub_1C87765D8(&qword_1EC2B76D8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier);
  return sub_1C8BD4C6C();
}

void Siri_Nlu_Internal_NlRouter_SpansForNamedCaptureGroup.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_178_1();
  OUTLINED_FUNCTION_50_2();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_88_0();
  if (!v5 || (OUTLINED_FUNCTION_128_0(), !v1))
  {
    if (!*(*(v2 + 16) + 16) || (sub_1C8BD49BC(), sub_1C87765D8(&qword_1EC2B76D0, MEMORY[0x1E69AAB10]), OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_76_1(), !v1))
    {
      if (!*(*(v2 + 24) + 16) || (type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(0), sub_1C87765D8(&qword_1EC2B76D8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier), OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_76_1(), !v1))
      {
        v6 = *(type metadata accessor for Siri_Nlu_Internal_NlRouter_SpansForNamedCaptureGroup(0) + 28);
        OUTLINED_FUNCTION_69();
      }
    }
  }

  OUTLINED_FUNCTION_177_0();
}

uint64_t sub_1C885589C(void (*a1)(void))
{
  sub_1C8BD530C();
  a1(0);
  v2 = OUTLINED_FUNCTION_184();
  sub_1C87765D8(v2, v3);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t (*sub_1C885594C(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t sub_1C88559A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C87765D8(&qword_1EC2B7890, type metadata accessor for Siri_Nlu_Internal_NlRouter_SpansForNamedCaptureGroup);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8855A20(uint64_t a1)
{
  v2 = sub_1C87765D8(&qword_1EC2B7618, type metadata accessor for Siri_Nlu_Internal_NlRouter_SpansForNamedCaptureGroup);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8855A90()
{
  sub_1C87765D8(&qword_1EC2B7618, type metadata accessor for Siri_Nlu_Internal_NlRouter_SpansForNamedCaptureGroup);

  return sub_1C8BD4CFC();
}

void sub_1C8857954()
{
  sub_1C8857ABC(319, &qword_1EC2B7888, type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C8BD49FC();
    if (v1 <= 0x3F)
    {
      sub_1C8857ABC(319, &qword_1EC2B3B78, type metadata accessor for Siri_Nlu_Internal_NlRouter_NLRouterOverrideRoute, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1C8857ABC(319, &qword_1EC2B2F78, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}