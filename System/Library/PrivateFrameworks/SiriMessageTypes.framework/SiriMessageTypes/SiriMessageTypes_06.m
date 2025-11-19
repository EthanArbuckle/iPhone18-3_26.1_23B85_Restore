uint64_t sub_223147ADC(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0588F8, &qword_22320CC48);
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = v16 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231481C4();
  sub_2232007A4();
  v13 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes37MUXDirectActionResultCandidateMessage_directAction + 8);
  if (!v13 || (v16[0] = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes37MUXDirectActionResultCandidateMessage_directAction), v16[1] = v13, v17 = 0, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057640, &qword_2232037A0), sub_2230F994C(), OUTLINED_FUNCTION_3_9(), !v2))
  {
    if ((v14 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes37MUXDirectActionResultCandidateMessage_requestExecutionParameters)) != 0 && !*(v14 + 16) || (v16[0] = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes37MUXDirectActionResultCandidateMessage_requestExecutionParameters), v17 = 1, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059890, &unk_223205AF0), sub_22310C44C(), OUTLINED_FUNCTION_3_9(), !v2))
    {
      sub_223190B78(a1);
    }
  }

  return (*(v7 + 8))(v11, v4);
}

uint64_t MUXDirectActionResultCandidateMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t MUXDirectActionResultCandidateMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t MUXDirectActionResultCandidateMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MUXDirectActionResultCandidateMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t MUXDirectActionResultCandidateMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_9_10() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t MUXDirectActionResultCandidateMessage.Builder.requestId.getter()
{
  v0 = type metadata accessor for MUXDirectActionResultCandidateMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 28));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t MUXDirectActionResultCandidateMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for MUXDirectActionResultCandidateMessage.Builder(0) + 28));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t MUXDirectActionResultCandidateMessage.Builder.resultCandidateId.getter()
{
  v0 = type metadata accessor for MUXDirectActionResultCandidateMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 32));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t MUXDirectActionResultCandidateMessage.Builder.resultCandidateId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for MUXDirectActionResultCandidateMessage.Builder(0) + 32));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t MUXDirectActionResultCandidateMessage.Builder.directAction.getter()
{
  v0 = type metadata accessor for MUXDirectActionResultCandidateMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 36));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t MUXDirectActionResultCandidateMessage.Builder.directAction.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for MUXDirectActionResultCandidateMessage.Builder(0) + 36));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t MUXDirectActionResultCandidateMessage.Builder.requestExecutionParameters.getter()
{
  v1 = *(v0 + *(type metadata accessor for MUXDirectActionResultCandidateMessage.Builder(0) + 40));
}

uint64_t MUXDirectActionResultCandidateMessage.Builder.requestExecutionParameters.setter()
{
  v2 = *(OUTLINED_FUNCTION_9_10() + 40);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t sub_2231480F8()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes37MUXDirectActionResultCandidateMessage_directAction + 8);

  v2 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes37MUXDirectActionResultCandidateMessage_requestExecutionParameters);
}

id MUXDirectActionResultCandidateMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MUXDirectActionResultCandidateMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231481C4()
{
  result = qword_27D0588F0;
  if (!qword_27D0588F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0588F0);
  }

  return result;
}

uint64_t sub_2231482C0()
{
  sub_2230D525C(319, &qword_280FCB0A8);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_2230F6D30();
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_22310C728();
        v1 = v7;
        if (v8 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

_BYTE *storeEnumTagSinglePayload for MUXDirectActionResultCandidateMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_223148494()
{
  result = qword_27D058920;
  if (!qword_27D058920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058920);
  }

  return result;
}

unint64_t sub_2231484EC()
{
  result = qword_27D058928;
  if (!qword_27D058928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058928);
  }

  return result;
}

unint64_t sub_223148544()
{
  result = qword_27D058930;
  if (!qword_27D058930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058930);
  }

  return result;
}

void *MUXDirectActionResultSelectedMessage.init(from:)(uint64_t *a1)
{
  sub_2230F7158(a1, v4);
  v2 = ResultSelectedMessageBase.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

id MUXDirectActionResultSelectedMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MUXDirectActionResultSelectedMessage();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for MUXDirectActionResultSelectedMessage()
{
  result = qword_27D058938;
  if (!qword_27D058938)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22314874C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x8000000223223AA0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2232006B4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2231487EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22314874C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_223148818(uint64_t a1)
{
  v2 = sub_2231495E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223148854(uint64_t a1)
{
  v2 = sub_2231495E4();

  return MEMORY[0x2821FE720](a1, v2);
}

void *MUXFlowOutputCandidateMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return MUXFlowOutputCandidateMessage.init(build:)(v1);
}

void *MUXFlowOutputCandidateMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_1();
  v7 = sub_2231FFDA4();
  v8 = OUTLINED_FUNCTION_9(v7);
  v47 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v48 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MUXFlowOutputCandidateMessage.Builder(0);
  v14 = (v13 - 8);
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v17 = 15;
  *(v17 + 1) = 0;
  *(v17 + 2) = 0;
  v18 = v14[8];
  __swift_storeEnumTagSinglePayload(&v17[v18], 1, 1, v7);
  v19 = &v17[v14[9]];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = &v17[v14[10]];
  *v20 = 0;
  *(v20 + 1) = 0;
  a1(v17);
  v21 = *v17;
  if (v21 == 15)
  {
    goto LABEL_12;
  }

  v22 = *(v17 + 2);
  if (!v22)
  {
    goto LABEL_12;
  }

  v23 = *(v17 + 1);
  sub_2230D1480(&v17[v18], v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v7) == 1)
  {
    sub_2230D69D4(v2);
LABEL_12:
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v34 = sub_223200014();
    __swift_project_value_buffer(v34, qword_280FCE830);
    v35 = sub_223200004();
    v36 = sub_223200254();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v50 = v38;
      *v37 = 136446210;
      v39 = sub_2230F7898();
      v41 = sub_2231A5D38(v39, v40, &v50);

      *(v37 + 4) = v41;
      _os_log_impl(&dword_2230CE000, v35, v36, "Could not build %{public}s: Builder has missing required fields", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x223DD6780](v38, -1, -1);
      MEMORY[0x223DD6780](v37, -1, -1);
    }

    sub_223148D58(v17);
    type metadata accessor for MUXFlowOutputCandidateMessage(0);
    v42 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
    v43 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v46 = v23;
  v25 = v47;
  v24 = v48;
  (*(v47 + 32))(v48, v2, v7);
  if (!*(v19 + 1))
  {
    (*(v25 + 8))(v24, v7);
    goto LABEL_12;
  }

  v26 = *(v20 + 1);
  if (!v26)
  {
    (*(v25 + 8))(v48, v7);
    goto LABEL_12;
  }

  v27 = *v19;
  v28 = (v3 + OBJC_IVAR____TtC16SiriMessageTypes29MUXFlowOutputCandidateMessage_resultCandidateId);
  *v28 = *v20;
  v28[1] = v26;
  MEMORY[0x28223BE20](v26);
  *(&v45 - 48) = v21;
  *(&v45 - 5) = v46;
  *(&v45 - 4) = v22;
  v29 = v48;
  *(&v45 - 3) = v48;
  *(&v45 - 2) = v30;
  *(&v45 - 1) = v31;

  v32 = RequestMessageBase.init(build:)(sub_2230DDE2C);
  v33 = v32;
  sub_223148D58(v17);
  if (v32)
  {
  }

  (*(v47 + 8))(v29, v7);
  return v32;
}

uint64_t sub_223148D58(uint64_t a1)
{
  v2 = type metadata accessor for MUXFlowOutputCandidateMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *MUXFlowOutputCandidateMessage.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058948, &qword_22320CE48);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231495E4();
  sub_223200794();
  if (v2)
  {
    v16 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for MUXFlowOutputCandidateMessage(0);
    v11 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
    v12 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = sub_2232004F4();
    v14 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes29MUXFlowOutputCandidateMessage_resultCandidateId);
    *v14 = v10;
    v14[1] = v15;
    sub_2230F7158(a1, v19);
    v16 = RequestMessageBase.init(from:)(v19);
    v17 = OUTLINED_FUNCTION_2();
    v18(v17);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v16;
}

uint64_t sub_223149014(void *a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058958, &qword_22320CE50);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231495E4();
  sub_2232007A4();
  v12 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes29MUXFlowOutputCandidateMessage_resultCandidateId);
  v13 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes29MUXFlowOutputCandidateMessage_resultCandidateId + 8);
  sub_2232005F4();
  if (!v2)
  {
    sub_2230D77A8(a1);
  }

  return (*(v8 + 8))(v3, v5);
}

uint64_t sub_2231491C4()
{
  v1 = v0;
  v7.receiver = v0;
  v7.super_class = type metadata accessor for MUXFlowOutputCandidateMessage(0);
  v2 = objc_msgSendSuper2(&v7, sel_description);
  v3 = sub_2232000C4();
  v5 = v4;

  v8 = v3;
  v9 = v5;
  MEMORY[0x223DD5AA0](0x3A644963723C202CLL, 0xE900000000000020);
  MEMORY[0x223DD5AA0](*&v1[OBJC_IVAR____TtC16SiriMessageTypes29MUXFlowOutputCandidateMessage_resultCandidateId], *&v1[OBJC_IVAR____TtC16SiriMessageTypes29MUXFlowOutputCandidateMessage_resultCandidateId + 8]);
  MEMORY[0x223DD5AA0](62, 0xE100000000000000);
  return v8;
}

uint64_t MUXFlowOutputCandidateMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t MUXFlowOutputCandidateMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t MUXFlowOutputCandidateMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MUXFlowOutputCandidateMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t MUXFlowOutputCandidateMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_7_14() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t MUXFlowOutputCandidateMessage.Builder.requestId.getter()
{
  v0 = type metadata accessor for MUXFlowOutputCandidateMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 28));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t MUXFlowOutputCandidateMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for MUXFlowOutputCandidateMessage.Builder(0) + 28));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t MUXFlowOutputCandidateMessage.Builder.resultCandidateId.getter()
{
  v0 = type metadata accessor for MUXFlowOutputCandidateMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 32));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t MUXFlowOutputCandidateMessage.Builder.resultCandidateId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for MUXFlowOutputCandidateMessage.Builder(0) + 32));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

id MUXFlowOutputCandidateMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MUXFlowOutputCandidateMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231495E4()
{
  result = qword_27D058950;
  if (!qword_27D058950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058950);
  }

  return result;
}

uint64_t sub_2231496D8()
{
  sub_2230D525C(319, &qword_280FCB0A8);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_2230F6D30();
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

_BYTE *storeEnumTagSinglePayload for MUXFlowOutputCandidateMessage.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_223149864()
{
  result = qword_27D058980;
  if (!qword_27D058980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058980);
  }

  return result;
}

unint64_t sub_2231498BC()
{
  result = qword_27D058988;
  if (!qword_27D058988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058988);
  }

  return result;
}

unint64_t sub_223149914()
{
  result = qword_27D058990;
  if (!qword_27D058990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058990);
  }

  return result;
}

void *MUXNLResultCandidateMessage.init(from:)(uint64_t *a1)
{
  sub_2230F7158(a1, v4);
  v2 = NLResultCandidateMessageBase.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

id MUXNLResultCandidateMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MUXNLResultCandidateMessage();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for MUXNLResultCandidateMessage()
{
  result = qword_27D058998;
  if (!qword_27D058998)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_223149B28(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_223149B60(v4);
}

uint64_t (*sub_223149B6C())()
{
  OUTLINED_FUNCTION_11();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_223149BCC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_223149C44(v4);
}

uint64_t sub_223149C04(uint64_t *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_10_7();
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_223149C50(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

uint64_t (*sub_223149CA4())()
{
  OUTLINED_FUNCTION_11();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_223149D00()
{
  v0 = sub_223200464();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_223149D78@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_223149D00();
  *a2 = result;
  return result;
}

unint64_t sub_223149DA8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2230EBF1C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_223149DDC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_223149D00();
  *a1 = result;
  return result;
}

uint64_t sub_223149E04(uint64_t a1)
{
  v2 = sub_22314C97C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223149E40(uint64_t a1)
{
  v2 = sub_22314C97C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MUXNLTRPCandidateMessage.MUXNLTRPCandidateMessageError.hashValue.getter()
{
  sub_223200744();
  MEMORY[0x223DD60B0](0);
  return sub_223200764();
}

uint64_t MUXNLTRPCandidateMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return MUXNLTRPCandidateMessage.init(build:)(v1);
}

uint64_t MUXNLTRPCandidateMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v158 - v5;
  v7 = sub_2231FFDA4();
  v8 = OUTLINED_FUNCTION_9(v7);
  v172 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_2();
  v171 = v13 - v12;
  v14 = type metadata accessor for MUXNLTRPCandidateMessage.Builder(0);
  v15 = (v14 - 8);
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_2();
  v19 = (v18 - v17);
  v20 = MEMORY[0x277D84F98];
  v175 = OBJC_IVAR____TtC16SiriMessageTypes24MUXNLTRPCandidateMessage_tcuMappedNLResponse;
  *(v1 + OBJC_IVAR____TtC16SiriMessageTypes24MUXNLTRPCandidateMessage_tcuMappedNLResponse) = MEMORY[0x277D84F98];
  v176 = OBJC_IVAR____TtC16SiriMessageTypes24MUXNLTRPCandidateMessage_tcuMappedNLRepetitions;
  v177 = v1;
  *(v1 + OBJC_IVAR____TtC16SiriMessageTypes24MUXNLTRPCandidateMessage_tcuMappedNLRepetitions) = v20;
  *v19 = 15;
  *(v19 + 1) = 0;
  *(v19 + 2) = 0;
  v21 = v15[8];
  v173 = v7;
  __swift_storeEnumTagSinglePayload(&v19[v21], 1, 1, v7);
  v22 = &v19[v15[9]];
  *v22 = 0;
  *(v22 + 1) = 0;
  v23 = &v19[v15[10]];
  *v23 = 0;
  *(v23 + 1) = 0;
  v24 = v15[11];
  *&v19[v24] = 0;
  v25 = v15[12];
  *&v19[v25] = 0;
  v26 = &v19[v15[13]];
  *v26 = 0;
  v26[1] = 0;
  a1(v19);
  v27 = *v19;
  p_cache = (&OBJC_METACLASS____TtC16SiriMessageTypes21NLTRPCandidateMessage + 16);
  if (v27 == 15 || !*(v19 + 2))
  {
    goto LABEL_14;
  }

  v170 = *(v19 + 2);
  v169 = *(v19 + 1);
  sub_2230D1480(&v19[v21], v6);
  v29 = v173;
  if (__swift_getEnumTagSinglePayload(v6, 1, v173) == 1)
  {
    sub_2230D69D4(v6);
LABEL_14:
    if (p_cache[239] != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v38 = sub_223200014();
    __swift_project_value_buffer(v38, qword_280FCE830);
    v39 = sub_223200004();
    v40 = sub_223200254();
    v41 = OUTLINED_FUNCTION_13_0();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v180 = v44;
      *v43 = 136446210;
      v45 = sub_2230F7898();
      v47 = sub_2231A5D38(v45, v46, &v180);

      *(v43 + 4) = v47;
      _os_log_impl(&dword_2230CE000, v39, v40, "Could not build %{public}s: Builder has missing required fields", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v44);
      OUTLINED_FUNCTION_12_0();
      MEMORY[0x223DD6780]();
      OUTLINED_FUNCTION_12_0();
      MEMORY[0x223DD6780]();
    }

    v48 = v175;
    sub_22314AAB8(v19);
    v49 = v177;
    v50 = *(v177 + v48);

    v51 = *(v49 + v176);

    type metadata accessor for MUXNLTRPCandidateMessage(0);
    v52 = *((*MEMORY[0x277D85000] & *v49) + 0x30);
    v53 = *((*MEMORY[0x277D85000] & *v49) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v167 = v27;
  v30 = v171;
  v31 = v172;
  (*(v172 + 32))(v171, v6, v29);
  v32 = *(v22 + 1);
  if (!v32)
  {
    (*(v31 + 8))(v30, v29);
    goto LABEL_13;
  }

  v33 = *(v23 + 1);
  if (!v33 || (v34 = *&v19[v24]) == 0 || (v166 = *&v19[v25]) == 0)
  {
    (*(v31 + 8))(v171, v29);
LABEL_13:
    p_cache = &OBJC_METACLASS____TtC16SiriMessageTypes21NLTRPCandidateMessage.cache;
    goto LABEL_14;
  }

  v163 = v32;
  v160 = *v22;
  v161 = *v23;
  v35 = v26[1];
  v165 = v34;
  v162 = v33;
  if (v35)
  {
    v158 = *v26;
    v159 = v35;

    v36 = v177;
    v37 = v175;
  }

  else
  {
    v36 = v177;
    v37 = v175;
    if (qword_280FCA778 != -1)
    {
LABEL_78:
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v56 = sub_223200014();
    __swift_project_value_buffer(v56, qword_280FCE830);
    v57 = sub_223200004();
    v58 = sub_223200254();
    v59 = OUTLINED_FUNCTION_13_0();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_2230CE000, v57, v58, "Warning: MUXNLTRPCandidateMessage being built without UserID. Falling back on default UserID. This may result in issues in multi-user setups.", v61, 2u);
      v34 = v165;
      OUTLINED_FUNCTION_12_0();
      MEMORY[0x223DD6780]();
    }

    v159 = 0x80000002232216F0;
    v158 = 0xD000000000000024;
  }

  v63 = v34 + 64;
  v62 = *(v34 + 64);
  v64 = *(v34 + 32);
  OUTLINED_FUNCTION_2_5();
  v67 = v66 & v65;
  v69 = (v68 + 63) >> 6;

  v70 = 0;
  ObjectType = v69;
  v168 = v34 + 64;
  if (!v67)
  {
    goto LABEL_25;
  }

  do
  {
LABEL_29:
    v72 = *(v34 + 48);
    OUTLINED_FUNCTION_15_3();
    v75 = *v73;
    v74 = v73[1];
    v76 = *(v34 + 16);

    if (v76 && (OUTLINED_FUNCTION_0_8(), v78 = sub_22314C370(v75, v74, v77), (v79 & 1) != 0))
    {
      v80 = *(*(v34 + 56) + 8 * v78);
      v81 = v80;
    }

    else
    {
      v80 = 1;
    }

    OUTLINED_FUNCTION_11();
    swift_beginAccess();
    if (v80 == 1)
    {
      OUTLINED_FUNCTION_0_8();
      v83 = sub_22314C370(v75, v74, v82);
      v85 = v84;

      if (v85)
      {
        v86 = *(v36 + v37);
        swift_isUniquelyReferenced_nonNull_native();
        v179 = *(v36 + v37);
        v87 = v179;
        *(v36 + v37) = 0x8000000000000000;
        v88 = v87[3];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0589A8, &qword_22320D028);
        v34 = v165;
        v37 = v175;
        sub_2232003D4();
        v89 = v179;
        v90 = *(v179[6] + 16 * v83 + 8);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0589B0, &qword_22320D030);
        sub_2232003F4();
        *(v36 + v37) = v89;
      }
    }

    else
    {
      v91 = *(v36 + v37);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v179 = *(v36 + v37);
      *(v36 + v37) = 0x8000000000000000;
      OUTLINED_FUNCTION_0_8();
      v36 = v74;
      sub_22314C370(v92, v74, v93);
      OUTLINED_FUNCTION_5_16();
      v34 = v96 + v97;
      if (__OFADD__(v96, v97))
      {
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
        goto LABEL_78;
      }

      v37 = v94;
      v98 = v95;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0589A8, &qword_22320D028);
      if (sub_2232003D4())
      {
        OUTLINED_FUNCTION_0_8();
        v100 = sub_22314C370(v75, v36, v99);
        v34 = v165;
        if ((v98 & 1) != (v101 & 1))
        {
LABEL_79:
          result = sub_2232006E4();
          __break(1u);
          return result;
        }

        v37 = v100;
      }

      else
      {
        v34 = v165;
      }

      v102 = v80;
      if (v98)
      {

        v103 = v179;
        v104 = v179[7];
        v105 = *(v104 + 8 * v37);
        *(v104 + 8 * v37) = v102;
      }

      else
      {
        v103 = v179;
        OUTLINED_FUNCTION_4_18(&v179[v37 >> 6]);
        v106 = (v103[6] + 16 * v37);
        *v106 = v75;
        v106[1] = v36;
        *(v103[7] + 8 * v37) = v102;
        v107 = v103[2];
        v108 = __OFADD__(v107, 1);
        v109 = v107 + 1;
        if (v108)
        {
          goto LABEL_77;
        }

        v103[2] = v109;
      }

      v37 = v175;
      v36 = v177;
      *(v177 + v175) = v103;
    }

    v67 &= v67 - 1;
    swift_endAccess();
    v63 = v168;
    v69 = ObjectType;
  }

  while (v67);
  while (1)
  {
LABEL_25:
    v71 = v70 + 1;
    if (__OFADD__(v70, 1))
    {
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    if (v71 >= v69)
    {
      break;
    }

    v67 = *(v63 + 8 * v71);
    ++v70;
    if (v67)
    {
      v70 = v71;
      goto LABEL_29;
    }
  }

  v110 = v166;
  v112 = *(v166 + 64);
  v111 = v166 + 64;
  v113 = *(v166 + 32);
  OUTLINED_FUNCTION_2_5();
  v37 = v115 & v114;
  v117 = (v116 + 63) >> 6;

  v118 = 0;
  v119 = MEMORY[0x277D84F90];
  v34 = v172;
  v120 = v173;
  v165 = v111;
  if (v37)
  {
    goto LABEL_53;
  }

  while (2)
  {
    v121 = v118 + 1;
    if (__OFADD__(v118, 1))
    {
      goto LABEL_73;
    }

    if (v121 < v117)
    {
      v37 = *(v111 + 8 * v121);
      ++v118;
      if (!v37)
      {
        continue;
      }

      v118 = v121;
LABEL_53:
      v122 = v110[6];
      OUTLINED_FUNCTION_15_3();
      v125 = *v123;
      v124 = v123[1];
      v179 = v119;
      v126 = v110[2];
      ObjectType = v125;
      v175 = v124;
      if (v126)
      {

        OUTLINED_FUNCTION_0_8();
        v128 = sub_22314C370(v125, v124, v127);
        v129 = v119;
        if (v130)
        {
          v129 = *(v110[7] + 8 * v128);
          goto LABEL_57;
        }
      }

      else
      {
        v129 = v119;
LABEL_57:
      }

      v36 = v117;
      sub_22314AB34(v129);
      v168 = v179;
      v131 = v176;
      v132 = v177;
      OUTLINED_FUNCTION_11();
      swift_beginAccess();
      v133 = *(v132 + v131);
      swift_isUniquelyReferenced_nonNull_native();
      v178 = *(v132 + v131);
      *(v132 + v131) = 0x8000000000000000;
      OUTLINED_FUNCTION_0_8();
      sub_22314C370(ObjectType, v175, v134);
      OUTLINED_FUNCTION_5_16();
      v34 = v137 + v138;
      if (__OFADD__(v137, v138))
      {
        goto LABEL_74;
      }

      v139 = v135;
      v140 = v136;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0589B8, &qword_22320D038);
      if (sub_2232003D4())
      {
        OUTLINED_FUNCTION_0_8();
        v34 = ObjectType;
        v141 = v175;
        v143 = sub_22314C370(ObjectType, v175, v142);
        if ((v140 & 1) != (v144 & 1))
        {
          goto LABEL_79;
        }

        v139 = v143;
      }

      else
      {
        v34 = ObjectType;
        v141 = v175;
      }

      v145 = v178;
      if (v140)
      {
        v146 = v178[7];
        v147 = *(v146 + 8 * v139);
        *(v146 + 8 * v139) = v168;
      }

      else
      {
        OUTLINED_FUNCTION_4_18(&v178[v139 >> 6]);
        v148 = (v145[6] + 16 * v139);
        *v148 = v34;
        v148[1] = v141;
        *(v145[7] + 8 * v139) = v168;
        v149 = v145[2];
        v108 = __OFADD__(v149, 1);
        v150 = v149 + 1;
        if (v108)
        {
          goto LABEL_76;
        }

        v145[2] = v150;
      }

      v34 = v172;
      v120 = v173;
      v111 = v165;
      v110 = v166;
      v117 = v36;
      v37 &= v37 - 1;
      v36 = v177;
      *(v177 + v176) = v145;
      swift_endAccess();
      v119 = MEMORY[0x277D84F90];
      if (!v37)
      {
        continue;
      }

      goto LABEL_53;
    }

    break;
  }

  MEMORY[0x28223BE20](v151);
  *(&v158 - 80) = v167;
  v152 = v170;
  *(&v158 - 9) = v169;
  *(&v158 - 8) = v152;
  v153 = v171;
  v154 = v160;
  *(&v158 - 7) = v171;
  *(&v158 - 6) = v154;
  v155 = v161;
  *(&v158 - 5) = v163;
  *(&v158 - 4) = v155;
  v156 = v158;
  *(&v158 - 3) = v162;
  *(&v158 - 2) = v156;
  *(&v158 - 1) = v159;
  v54 = TRPCandidateRequestMessageBase.init(build:)(sub_223113ED4);
  v157 = v54;

  sub_22314AAB8(v19);
  if (v54)
  {
  }

  (*(v34 + 8))(v153, v120);
  return v54;
}

uint64_t sub_22314AAB8(uint64_t a1)
{
  v2 = type metadata accessor for MUXNLTRPCandidateMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22314AB34(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_22314D4E8(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = sub_2231FFE74();
  v8 = *(result - 8);
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v8 + 72);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v11 = *(v6 + 16);
  v12 = __OFADD__(v11, v3);
  v13 = v11 + v3;
  if (!v12)
  {
    *(v6 + 16) = v13;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t MUXNLTRPCandidateMessage.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0589C0, &qword_22320D040);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = v89 - v11;
  v13 = OBJC_IVAR____TtC16SiriMessageTypes24MUXNLTRPCandidateMessage_tcuMappedNLResponse;
  v14 = MEMORY[0x277D84F98];
  *(v3 + OBJC_IVAR____TtC16SiriMessageTypes24MUXNLTRPCandidateMessage_tcuMappedNLResponse) = MEMORY[0x277D84F98];
  v99 = OBJC_IVAR____TtC16SiriMessageTypes24MUXNLTRPCandidateMessage_tcuMappedNLRepetitions;
  v100 = a1;
  *(v3 + OBJC_IVAR____TtC16SiriMessageTypes24MUXNLTRPCandidateMessage_tcuMappedNLRepetitions) = v14;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22314C97C();
  sub_223200794();
  if (!v2)
  {
    v98 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0589D0, &qword_22320D048);
    v102 = 0;
    sub_22314C9D0();
    sub_2232004C4();
    v16 = v5;
    v17 = v101[0];
    v18 = v98;
    if (v101[0])
    {
      swift_beginAccess();
      v19 = *(v3 + v13);
      v95 = v13;
      *(v3 + v13) = v17;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0589F8, &unk_22320D050);
      LOBYTE(v103) = 1;
      sub_22314CAE8();
      sub_2232004C4();
      v33 = v101[0];
      if (v101[0])
      {
        v89[1] = v12;
        v35 = v101[0] + 64;
        v34 = *(v101[0] + 64);
        v36 = *(v101[0] + 32);
        OUTLINED_FUNCTION_2_5();
        v12 = v38 & v37;
        v40 = (v39 + 63) >> 6;

        v13 = 0;
        v90 = v16;
        v91 = v33;
        v92 = v40;
        v93 = v33 + 8;
        if (!v12)
        {
          goto LABEL_13;
        }

        while (1)
        {
LABEL_17:
          v42 = v33[6];
          OUTLINED_FUNCTION_15_3();
          v45 = *v43;
          v44 = v43[1];
          v46 = v33[2];

          v96 = v45;
          v97 = v44;
          if (v46 && (OUTLINED_FUNCTION_0_8(), v48 = sub_22314C370(v45, v44, v47), (v49 & 1) != 0))
          {
            v50 = *(v33[7] + 8 * v48);

            sub_22315B74C();
            v52 = v51;
          }

          else
          {
            v52 = 0;
          }

          v53 = v99;
          OUTLINED_FUNCTION_11();
          swift_beginAccess();
          if (!v52)
          {
            OUTLINED_FUNCTION_0_8();
            v18 = v97;
            v71 = sub_22314C370(v96, v97, v70);
            v73 = v72;

            if (v73)
            {
              v74 = v99;
              v75 = *(v3 + v99);
              swift_isUniquelyReferenced_nonNull_native();
              v103 = *(v3 + v74);
              v76 = v103;
              *(v3 + v74) = 0x8000000000000000;
              v18 = v76[3];
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0589B8, &qword_22320D038);
              sub_2232003D4();
              v77 = v103;
              v78 = *(v103[6] + 16 * v71 + 8);

              v79 = *(v77[7] + 8 * v71);

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058A08, &qword_22320D060);
              sub_2232003F4();
              *(v3 + v74) = v77;
              v16 = v90;
            }

            goto LABEL_33;
          }

          v54 = *(v3 + v53);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v103 = *(v3 + v53);
          *(v3 + v53) = 0x8000000000000000;
          OUTLINED_FUNCTION_0_8();
          sub_22314C370(v96, v97, v55);
          OUTLINED_FUNCTION_5_16();
          v16 = v58 + v59;
          if (__OFADD__(v58, v59))
          {
            goto LABEL_40;
          }

          v60 = v56;
          v18 = v57;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0589B8, &qword_22320D038);
          if (sub_2232003D4())
          {
            OUTLINED_FUNCTION_0_8();
            v62 = sub_22314C370(v96, v97, v61);
            v16 = v90;
            if ((v18 & 1) != (v63 & 1))
            {
              result = sub_2232006E4();
              __break(1u);
              return result;
            }

            v60 = v62;
            if ((v18 & 1) == 0)
            {
LABEL_26:
              v64 = v103;
              OUTLINED_FUNCTION_4_18(&v103[v60 >> 6]);
              v65 = (v64[6] + 16 * v60);
              v66 = v97;
              *v65 = v96;
              v65[1] = v66;
              *(v64[7] + 8 * v60) = v52;
              v67 = v64[2];
              v68 = __OFADD__(v67, 1);
              v69 = v67 + 1;
              if (v68)
              {
                __break(1u);
                goto LABEL_43;
              }

              v64[2] = v69;
              goto LABEL_32;
            }
          }

          else
          {
            v16 = v90;
            if ((v18 & 1) == 0)
            {
              goto LABEL_26;
            }
          }

          v64 = v103;
          v80 = v103[7];
          v81 = *(v80 + 8 * v60);
          *(v80 + 8 * v60) = v52;

LABEL_32:
          *(v3 + v99) = v64;
LABEL_33:
          v12 &= v12 - 1;
          swift_endAccess();
          v40 = v92;
          v35 = v93;
          v33 = v91;
          if (!v12)
          {
LABEL_13:
            while (1)
            {
              v41 = v13 + 1;
              if (__OFADD__(v13, 1))
              {
                break;
              }

              if (v41 >= v40)
              {

                v82 = v100;
                sub_2230F7158(v100, v101);
                v27 = TRPCandidateRequestMessageBase.init(from:)(v101);
                v87 = OUTLINED_FUNCTION_14_2();
                v88(v87);
                __swift_destroy_boxed_opaque_existential_1(v82);
                return v27;
              }

              v12 = *(v35 + 8 * v41);
              ++v13;
              if (v12)
              {
                v13 = v41;
                goto LABEL_17;
              }
            }

            __break(1u);
LABEL_40:
            __break(1u);
            goto LABEL_41;
          }
        }
      }

      if (qword_280FCA778 != -1)
      {
LABEL_43:
        OUTLINED_FUNCTION_0_0();
        swift_once();
      }

      v83 = sub_223200014();
      __swift_project_value_buffer(v83, qword_280FCE830);
      v21 = sub_223200004();
      v22 = sub_223200254();
      v84 = OUTLINED_FUNCTION_13_0();
      v86 = os_log_type_enabled(v84, v85);
      v13 = v95;
      if (!v86)
      {
        goto LABEL_8;
      }

      v25 = swift_slowAlloc();
      *v25 = 0;
      v26 = "Failed to decode the tcu mapped NL repetitions";
    }

    else
    {
      if (qword_280FCA778 != -1)
      {
LABEL_41:
        OUTLINED_FUNCTION_0_0();
        swift_once();
      }

      v20 = sub_223200014();
      __swift_project_value_buffer(v20, qword_280FCE830);
      v21 = sub_223200004();
      v22 = sub_223200254();
      v23 = OUTLINED_FUNCTION_13_0();
      if (!os_log_type_enabled(v23, v24))
      {
        goto LABEL_8;
      }

      v25 = swift_slowAlloc();
      *v25 = 0;
      v26 = "Failed to decode the tcu mapped NL response";
    }

    _os_log_impl(&dword_2230CE000, v21, v22, v26, v25, 2u);
    OUTLINED_FUNCTION_12_0();
    MEMORY[0x223DD6780]();
LABEL_8:

    sub_22314CA94();
    swift_allocError();
    swift_willThrow();
    (*(v18 + 8))(v12, v16);
  }

  v27 = 0;
  __swift_destroy_boxed_opaque_existential_1(v100);
  v28 = *(v3 + v13);

  v29 = *(v3 + v99);

  type metadata accessor for MUXNLTRPCandidateMessage(0);
  v30 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
  v31 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
  swift_deallocPartialClassInstance();
  return v27;
}

uint64_t sub_22314B410(void *a1)
{
  v3 = v1;
  v103 = sub_2231FFE74();
  v5 = OUTLINED_FUNCTION_9(v103);
  v97 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_2();
  v104 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058A10, &qword_22320D068);
  v12 = OUTLINED_FUNCTION_9(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  v18 = &v86 - v17;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22314C97C();
  sub_2232007A4();
  v20 = OBJC_IVAR____TtC16SiriMessageTypes24MUXNLTRPCandidateMessage_tcuMappedNLResponse;
  OUTLINED_FUNCTION_10_7();
  swift_beginAccess();
  v109 = *(v3 + v20);
  LOBYTE(v110) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0589D0, &qword_22320D048);
  sub_22314CC1C();
  sub_223200654();
  if (v2)
  {
    return (*(v14 + 8))(v18, v11);
  }

  v87 = v18;
  v22 = OBJC_IVAR____TtC16SiriMessageTypes24MUXNLTRPCandidateMessage_tcuMappedNLRepetitions;
  OUTLINED_FUNCTION_10_7();
  swift_beginAccess();
  v93 = v22;
  v95 = v3;
  v23 = *(v3 + v22);
  v25 = *(v23 + 64);
  v24 = v23 + 64;
  v26 = *(*(v3 + v22) + 32);
  OUTLINED_FUNCTION_2_5();
  v29 = v28 & v27;
  v31 = (v30 + 63) >> 6;
  v32 = v97;
  v105 = v97 + 8;
  v106 = v97 + 16;
  v96 = v33;

  v34 = 0;
  v100 = MEMORY[0x277D84F98];
  v35 = v14;
  v36 = v103;
  v89 = v24;
  v92 = a1;
  v91 = v11;
  v90 = v35;
  v88 = v31;
  if (v29)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_4:
    v37 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v37 >= v31)
    {

      v110 = v100;
      v108 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0589F8, &unk_22320D050);
      sub_22314CDC4();
      v85 = v87;
      sub_223200654();

      sub_2231E5494(a1);
      return (*(v35 + 8))(v85, v11);
    }

    v29 = *(v24 + 8 * v37);
    ++v34;
  }

  while (!v29);
  v34 = v37;
  while (1)
  {
LABEL_8:
    v98 = v34;
    v99 = v29;
    v38 = *(v96 + 48);
    OUTLINED_FUNCTION_15_3();
    v41 = *v39;
    v40 = v39[1];
    v42 = *(v95 + v93);
    v43 = *(v42 + 16);

    v102 = v40;
    if (v43)
    {
      OUTLINED_FUNCTION_0_8();
      v45 = sub_22314C370(v41, v40, v44);
      if (v46)
      {
        v47 = *(*(v42 + 56) + 8 * v45);
        v48 = v41;
      }

      else
      {
        v49 = MEMORY[0x277D84F90];
        v48 = v41;
      }
    }

    else
    {
      v49 = MEMORY[0x277D84F90];
      v48 = v41;
    }

    v50 = *(v49 + 16);
    v101 = v48;
    if (v50)
    {
      v51 = *(v32 + 80);
      v94 = v49;
      v52 = v49 + ((v51 + 32) & ~v51);
      v107 = *(v32 + 72);
      v53 = *(v32 + 16);
      v54 = MEMORY[0x277D84F90];
      v55 = v104;
      do
      {
        v53(v55, v52, v36);
        sub_22314CD7C(&qword_280FCE5F0, MEMORY[0x277D5DCA0]);
        v56 = sub_2231FFFE4();
        v58 = v57;
        v59 = OUTLINED_FUNCTION_16_4();
        v60(v59);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v54 = sub_22314C6A8(0, v54[2] + 1, 1, v54);
        }

        v62 = v54[2];
        v61 = v54[3];
        if (v62 >= v61 >> 1)
        {
          v54 = sub_22314C6A8(v61 > 1, v62 + 1, 1, v54);
        }

        v54[2] = v62 + 1;
        v63 = &v54[2 * v62];
        v63[4] = v56;
        v63[5] = v58;
        v36 = v103;
        v55 = v104;
        v52 += v107;
        --v50;
      }

      while (v50);

      v48 = v101;
    }

    else
    {

      v54 = MEMORY[0x277D84F90];
    }

    v64 = v100;
    swift_isUniquelyReferenced_nonNull_native();
    v110 = v64;
    OUTLINED_FUNCTION_0_8();
    v65 = v102;
    sub_22314C370(v48, v102, v66);
    OUTLINED_FUNCTION_5_16();
    if (__OFADD__(v69, v70))
    {
      break;
    }

    v71 = v67;
    v72 = v68;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058A18, &qword_22320D070);
    if (sub_2232003D4())
    {
      OUTLINED_FUNCTION_0_8();
      v74 = sub_22314C370(v101, v65, v73);
      a1 = v92;
      v11 = v91;
      if ((v72 & 1) != (v75 & 1))
      {
        goto LABEL_37;
      }

      v71 = v74;
    }

    else
    {
      a1 = v92;
      v11 = v91;
    }

    v76 = v99;
    if (v72)
    {

      v100 = v110;
      v77 = v110[7];
      v78 = *(v77 + 8 * v71);
      *(v77 + 8 * v71) = v54;
    }

    else
    {
      OUTLINED_FUNCTION_4_18(&v110[v71 >> 6]);
      v80 = (v79[6] + 16 * v71);
      v81 = v102;
      *v80 = v101;
      v80[1] = v81;
      *(v79[7] + 8 * v71) = v54;
      v82 = v79[2];
      v83 = __OFADD__(v82, 1);
      v84 = v82 + 1;
      if (v83)
      {
        goto LABEL_36;
      }

      v100 = v79;
      v79[2] = v84;
    }

    v29 = (v76 - 1) & v76;
    v35 = v90;
    v32 = v97;
    v34 = v98;
    v24 = v89;
    v31 = v88;
    if (!v29)
    {
      goto LABEL_4;
    }
  }

LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  result = sub_2232006E4();
  __break(1u);
  return result;
}

uint64_t sub_22314BB58()
{
  v1 = v0;
  sub_223200374();
  v18 = 0;
  v19 = 0xE000000000000000;
  v17.receiver = v0;
  v17.super_class = type metadata accessor for MUXNLTRPCandidateMessage(0);
  v2 = objc_msgSendSuper2(&v17, sel_description);
  v3 = sub_2232000C4();
  v5 = v4;

  MEMORY[0x223DD5AA0](v3, v5);

  MEMORY[0x223DD5AA0](0xD000000000000018, 0x8000000223223B00);
  v6 = OBJC_IVAR____TtC16SiriMessageTypes24MUXNLTRPCandidateMessage_tcuMappedNLResponse;
  OUTLINED_FUNCTION_10_7();
  swift_beginAccess();
  v7 = *&v1[v6];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0589B0, &qword_22320D030);
  v8 = sub_223200054();
  v10 = v9;

  MEMORY[0x223DD5AA0](v8, v10);

  MEMORY[0x223DD5AA0](0xD00000000000001CLL, 0x8000000223223B20);
  v11 = OBJC_IVAR____TtC16SiriMessageTypes24MUXNLTRPCandidateMessage_tcuMappedNLRepetitions;
  OUTLINED_FUNCTION_10_7();
  swift_beginAccess();
  v12 = *&v1[v11];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058A08, &qword_22320D060);
  v13 = sub_223200054();
  v15 = v14;

  MEMORY[0x223DD5AA0](v13, v15);

  MEMORY[0x223DD5AA0](62, 0xE100000000000000);
  return v18;
}

uint64_t MUXNLTRPCandidateMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t MUXNLTRPCandidateMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t MUXNLTRPCandidateMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MUXNLTRPCandidateMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t MUXNLTRPCandidateMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_7_15() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t MUXNLTRPCandidateMessage.Builder.requestId.getter()
{
  v1 = (v0 + *(type metadata accessor for MUXNLTRPCandidateMessage.Builder(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MUXNLTRPCandidateMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for MUXNLTRPCandidateMessage.Builder(0) + 28));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t MUXNLTRPCandidateMessage.Builder.trpCandidateId.getter()
{
  v1 = (v0 + *(type metadata accessor for MUXNLTRPCandidateMessage.Builder(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MUXNLTRPCandidateMessage.Builder.trpCandidateId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for MUXNLTRPCandidateMessage.Builder(0) + 32));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t MUXNLTRPCandidateMessage.Builder.tcuMappedNLResponse.getter()
{
  v1 = *(v0 + *(type metadata accessor for MUXNLTRPCandidateMessage.Builder(0) + 36));
}

uint64_t MUXNLTRPCandidateMessage.Builder.tcuMappedNLResponse.setter()
{
  v2 = *(OUTLINED_FUNCTION_7_15() + 36);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t MUXNLTRPCandidateMessage.Builder.tcuMappedNLRepetitions.getter()
{
  v1 = *(v0 + *(type metadata accessor for MUXNLTRPCandidateMessage.Builder(0) + 40));
}

uint64_t MUXNLTRPCandidateMessage.Builder.tcuMappedNLRepetitions.setter()
{
  v2 = *(OUTLINED_FUNCTION_7_15() + 40);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t MUXNLTRPCandidateMessage.Builder.userId.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MUXNLTRPCandidateMessage.Builder(0) + 44));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t MUXNLTRPCandidateMessage.Builder.userId.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for MUXNLTRPCandidateMessage.Builder(0) + 44));
  v5 = v4[1];

  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t sub_22314C294()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes24MUXNLTRPCandidateMessage_tcuMappedNLResponse);

  v2 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes24MUXNLTRPCandidateMessage_tcuMappedNLRepetitions);
}

id MUXNLTRPCandidateMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MUXNLTRPCandidateMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22314C370(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(v3 + 40);
  sub_223200744();
  sub_223200124();
  v7 = sub_223200764();

  return a3(a1, a2, v7);
}

unint64_t sub_22314C3F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_2232006B4() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

size_t sub_22314C4A8(size_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_22314C880(v9, a2, &qword_27D058A60, &qword_22320D328, MEMORY[0x277D5DCA0]);
  v11 = *(sub_2231FFE74() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_22318424C(a4 + v12, v9, v10 + v12);
    *(a4 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_18_3();
  }

  return v10;
}

size_t sub_22314C5A8(size_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_22314C880(v9, a2, &qword_27D058A68, &unk_22320D330, MEMORY[0x277D5DB08]);
  v11 = *(sub_2231FFE14() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_223184264(a4 + v12, v9, v10 + v12);
    *(a4 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_18_3();
  }

  return v10;
}

uint64_t sub_22314C6A8(uint64_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = a4[3];
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = a4[2];
    if (v7 <= v8)
    {
      v9 = a4[2];
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059910, &qword_22320D320);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      OUTLINED_FUNCTION_9_11(v11);
      if (v5)
      {
LABEL_13:
        sub_223184234(a4 + 4, v8, (v10 + 32));
        a4[2] = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_22314C798(uint64_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = a4[3];
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = a4[2];
    if (v7 <= v8)
    {
      v9 = a4[2];
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058A58, &qword_223214500);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      OUTLINED_FUNCTION_9_11(v11);
      if (v5)
      {
LABEL_13:
        sub_223184234(a4 + 4, v8, (v10 + 32));
        a4[2] = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), a4 + 4, 16 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

size_t sub_22314C880(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
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

unint64_t sub_22314C97C()
{
  result = qword_27D0589C8;
  if (!qword_27D0589C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0589C8);
  }

  return result;
}

unint64_t sub_22314C9D0()
{
  result = qword_27D0589D8;
  if (!qword_27D0589D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0589D0, &qword_22320D048);
    sub_22314CCE0(&qword_27D0589E0, &qword_27D0589E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0589D8);
  }

  return result;
}

unint64_t sub_22314CA94()
{
  result = qword_27D0589F0;
  if (!qword_27D0589F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0589F0);
  }

  return result;
}

unint64_t sub_22314CAE8()
{
  result = qword_27D058A00;
  if (!qword_27D058A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0589F8, &unk_22320D050);
    sub_22314CBA4(&qword_27D057B18, sub_2230FB7A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058A00);
  }

  return result;
}

uint64_t sub_22314CBA4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D057B10, &qword_2232063C0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22314CC1C()
{
  result = qword_280FCA508;
  if (!qword_280FCA508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0589D0, &qword_22320D048);
    sub_22314CCE0(&qword_280FCABA8, qword_280FCABC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCA508);
  }

  return result;
}

uint64_t sub_22314CCE0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0589B0, &qword_22320D030);
    sub_22314CD7C(a2, type metadata accessor for NLParseResponse);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22314CD7C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_22314CDC4()
{
  result = qword_280FCA4F8;
  if (!qword_280FCA4F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0589F8, &unk_22320D050);
    sub_22314CBA4(&qword_280FCA4C8, sub_2230D7754);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCA4F8);
  }

  return result;
}

unint64_t sub_22314CE84()
{
  result = qword_27D058A20;
  if (!qword_27D058A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058A20);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MUXNLTRPCandidateMessage.MUXNLTRPCandidateMessageError(_BYTE *result, int a2, int a3)
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

uint64_t sub_22314D190()
{
  sub_2230D525C(319, &qword_280FCB0A8);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_2230F6D30();
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_223110900(319, &qword_280FCA500, &qword_27D0589D0, &qword_22320D048);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          sub_223110900(319, &qword_280FCA4F0, &qword_27D058A38, &qword_22320D1C0);
          v1 = v9;
          if (v10 <= 0x3F)
          {
            sub_2230D525C(319, &qword_280FCA740);
            v1 = v11;
            if (v12 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v1;
}

_BYTE *storeEnumTagSinglePayload for MUXNLTRPCandidateMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22314D3E0()
{
  result = qword_27D058A40;
  if (!qword_27D058A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058A40);
  }

  return result;
}

unint64_t sub_22314D438()
{
  result = qword_27D058A48;
  if (!qword_27D058A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058A48);
  }

  return result;
}

unint64_t sub_22314D490()
{
  result = qword_27D058A50;
  if (!qword_27D058A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058A50);
  }

  return result;
}

size_t sub_22314D4E8(uint64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    result = sub_22314C4A8(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

void *MUXResultCandidateAcceptanceMessage.init(from:)(uint64_t *a1)
{
  sub_2230F7158(a1, v4);
  v2 = ResultSelectedMessageBase.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

id MUXResultCandidateAcceptanceMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MUXResultCandidateAcceptanceMessage();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for MUXResultCandidateAcceptanceMessage()
{
  result = qword_27D058A70;
  if (!qword_27D058A70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22314D700(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000223221290 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2232006B4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22314D7A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22314D700(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22314D7CC(uint64_t a1)
{
  v2 = sub_22314EAD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22314D808(uint64_t a1)
{
  v2 = sub_22314EAD8();

  return MEMORY[0x2821FE720](a1, v2);
}

void *MUXResultSelectedMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return MUXResultSelectedMessage.init(build:)(v1);
}

void *MUXResultSelectedMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v64 = v1;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v58 - v5;
  v7 = sub_2231FFDA4();
  v8 = OUTLINED_FUNCTION_9(v7);
  v60 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v61 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MUXResultSelectedMessage.Builder(0);
  v14 = (v13 - 8);
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v17 = 15;
  *(v17 + 1) = 0;
  *(v17 + 2) = 0;
  v18 = v14[8];
  v62 = v7;
  __swift_storeEnumTagSinglePayload(&v17[v18], 1, 1, v7);
  v19 = &v17[v14[9]];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = &v17[v14[10]];
  *v20 = 0;
  *(v20 + 1) = 0;
  v21 = v14[11];
  v17[v21] = 2;
  v22 = &v17[v14[12]];
  *v22 = 0;
  v22[8] = 1;
  v23 = v14[13];
  *&v17[v23] = 0;
  a1(v17);
  v24 = *v17;
  if (v24 != 15)
  {
    v25 = *(v17 + 2);
    if (v25)
    {
      v26 = *(v17 + 1);
      sub_2230D1480(&v17[v18], v6);
      v27 = v62;
      if (__swift_getEnumTagSinglePayload(v6, 1, v62) == 1)
      {
        sub_2230D69D4(v6);
      }

      else
      {
        v58 = v26;
        v59 = v25;
        v28 = v60;
        v29 = v61;
        v30 = (*(v60 + 32))(v61, v6, v27);
        v31 = *(v19 + 1);
        if (v31)
        {
          v32 = *(v20 + 1);
          if (v32)
          {
            if (v17[v21] != 2)
            {
              v45 = *&v17[v23];
              v46 = v61;
              if (v45)
              {
                v47 = *v19;
                v48 = *v20;
                *(v64 + OBJC_IVAR____TtC16SiriMessageTypes24MUXResultSelectedMessage_voiceIdScoreCard) = v45;
                MEMORY[0x28223BE20](v30);
                *(&v58 - 80) = v24;
                v49 = v59;
                *(&v58 - 9) = v58;
                *(&v58 - 8) = v49;
                *(&v58 - 7) = v46;
                *(&v58 - 6) = v50;
                *(&v58 - 5) = v31;
                *(&v58 - 4) = v51;
                *(&v58 - 3) = v32;
                *(&v58 - 16) = v52 & 1;
                *(&v58 - 1) = v17;
                v54 = v53;

                v43 = ResultSelectedMessageBase.init(build:)(sub_22314EA90);
                v55 = v43;

                if (v43)
                {

                  v56 = *(v60 + 8);
                  v57 = v55;
                  v56(v46, v62);
                  sub_22314DDE4(v17);
                }

                else
                {
                  (*(v60 + 8))(v46, v62);
                  sub_22314DDE4(v17);
                }

                return v43;
              }
            }
          }

          (*(v28 + 8))(v61, v27);
        }

        else
        {
          (*(v28 + 8))(v29, v27);
        }
      }
    }
  }

  if (qword_280FCA778 != -1)
  {
    swift_once();
  }

  v33 = sub_223200014();
  __swift_project_value_buffer(v33, qword_280FCE830);
  v34 = sub_223200004();
  v35 = sub_223200254();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v65 = v37;
    *v36 = 136446210;
    v38 = sub_2230F7898();
    v40 = sub_2231A5D38(v38, v39, &v65);

    *(v36 + 4) = v40;
    _os_log_impl(&dword_2230CE000, v34, v35, "Could not build %{public}s: Builder has missing required fields", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x223DD6780](v37, -1, -1);
    MEMORY[0x223DD6780](v36, -1, -1);
  }

  sub_22314DDE4(v17);
  type metadata accessor for MUXResultSelectedMessage(0);
  v41 = *((*MEMORY[0x277D85000] & *v64) + 0x30);
  v42 = *((*MEMORY[0x277D85000] & *v64) + 0x34);
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_22314DDE4(uint64_t a1)
{
  v2 = type metadata accessor for MUXResultSelectedMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22314DE60(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11)
{
  *a1 = a2;
  v18 = *(a1 + 16);

  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  v19 = type metadata accessor for ResultSelectedMessageBase.Builder(0);
  v20 = v19[6];
  sub_2230D69D4(a1 + v20);
  v21 = sub_2231FFDA4();
  (*(*(v21 - 8) + 16))(a1 + v20, a5, v21);
  __swift_storeEnumTagSinglePayload(a1 + v20, 0, 1, v21);
  v22 = (a1 + v19[7]);
  v23 = v22[1];

  *v22 = a6;
  v22[1] = a7;
  v24 = (a1 + v19[8]);
  v25 = v24[1];

  *v24 = a8;
  v24[1] = a9;
  *(a1 + v19[9]) = a10;
  result = type metadata accessor for MUXResultSelectedMessage.Builder(0);
  v27 = (a11 + *(result + 40));
  v28 = *v27;
  LOBYTE(v27) = *(v27 + 8);
  v29 = a1 + v19[10];
  *v29 = v28;
  *(v29 + 8) = v27;
  return result;
}

void *MUXResultSelectedMessage.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058A80, &qword_22320D378);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22314EAD8();
  sub_223200794();
  if (!v2)
  {
    sub_2230FB7A0();
    sub_223200554();
    sub_2230FB7F4(0, &qword_27D0576E8, 0x277CCAAC8);
    sub_2230FB7F4(0, &qword_280FCA3C8, 0x277CEF520);
    v12 = sub_223200264();
    v17 = v12;
    if (v12)
    {
      *(v3 + OBJC_IVAR____TtC16SiriMessageTypes24MUXResultSelectedMessage_voiceIdScoreCard) = v12;
      sub_2230F7158(a1, &v21);
      v22 = v17;
      v13 = ResultSelectedMessageBase.init(from:)(&v21);
      v19 = OUTLINED_FUNCTION_2();
      v20(v19);
      OUTLINED_FUNCTION_5_1();

      __swift_destroy_boxed_opaque_existential_1(a1);
      return v13;
    }

    sub_2230F9E38();
    swift_allocError();
    *v18 = 0xD000000000000033;
    *(v18 + 8) = 0x8000000223223760;
    *(v18 + 16) = 0;
    swift_willThrow();
    OUTLINED_FUNCTION_5_1();
    v10 = OUTLINED_FUNCTION_2();
    v11(v10);
  }

  v13 = 0;
  __swift_destroy_boxed_opaque_existential_1(a1);
  type metadata accessor for MUXResultSelectedMessage(0);
  v14 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
  v15 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
  swift_deallocPartialClassInstance();
  return v13;
}

uint64_t sub_22314E30C(void *a1)
{
  v24[2] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058A90, &qword_22320D380);
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v24[-1] - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22314EAD8();
  sub_2232007A4();
  v13 = objc_opt_self();
  v14 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes24MUXResultSelectedMessage_voiceIdScoreCard);
  v24[0] = 0;
  v15 = [v13 archivedDataWithRootObject:v14 requiringSecureCoding:1 error:v24];
  v16 = v24[0];
  if (v15)
  {
    v17 = sub_2231FFD24();
    v19 = v18;

    v24[0] = v17;
    v24[1] = v19;
    sub_2230D7754();
    sub_223200654();
    if (!v2)
    {
      sub_223191F2C(a1);
    }

    (*(v7 + 8))(v11, v4);
    result = OUTLINED_FUNCTION_5_1();
  }

  else
  {
    v21 = v16;
    sub_2231FFD04();

    swift_willThrow();
    result = (*(v7 + 8))(v11, v4);
  }

  v22 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MUXResultSelectedMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t MUXResultSelectedMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t MUXResultSelectedMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MUXResultSelectedMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t MUXResultSelectedMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_3_19() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t MUXResultSelectedMessage.Builder.requestId.getter()
{
  v1 = (v0 + *(type metadata accessor for MUXResultSelectedMessage.Builder(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MUXResultSelectedMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for MUXResultSelectedMessage.Builder(0) + 28));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t MUXResultSelectedMessage.Builder.resultCandidateId.getter()
{
  v1 = (v0 + *(type metadata accessor for MUXResultSelectedMessage.Builder(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MUXResultSelectedMessage.Builder.resultCandidateId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for MUXResultSelectedMessage.Builder(0) + 32));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t MUXResultSelectedMessage.Builder.isMitigated.setter(char a1)
{
  result = type metadata accessor for MUXResultSelectedMessage.Builder(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t MUXResultSelectedMessage.Builder.endpointMode.getter()
{
  v1 = (v0 + *(type metadata accessor for MUXResultSelectedMessage.Builder(0) + 40));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t MUXResultSelectedMessage.Builder.endpointMode.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MUXResultSelectedMessage.Builder(0);
  v6 = v2 + *(result + 40);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

void *MUXResultSelectedMessage.Builder.voiceIdScoreCard.getter()
{
  v1 = *(v0 + *(type metadata accessor for MUXResultSelectedMessage.Builder(0) + 44));
  v2 = v1;
  return v1;
}

void MUXResultSelectedMessage.Builder.voiceIdScoreCard.setter()
{
  v2 = *(OUTLINED_FUNCTION_3_19() + 44);

  *(v1 + v2) = v0;
}

id MUXResultSelectedMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MUXResultSelectedMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_22314EAD8()
{
  result = qword_27D058A88;
  if (!qword_27D058A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058A88);
  }

  return result;
}

uint64_t sub_22314EBD0()
{
  sub_2230D525C(319, &qword_280FCB0A8);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_22314ED48(319, &qword_280FCE678, MEMORY[0x277CC95F0]);
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_2230D525C(319, &qword_280FCA440);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          sub_22314ED48(319, &qword_280FCA3D8, type metadata accessor for AFEndpointMode);
          v1 = v9;
          if (v10 <= 0x3F)
          {
            sub_223110954();
            v1 = v11;
            if (v12 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v1;
}

void sub_22314ED48(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2232002D4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for MUXResultSelectedMessage.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_22314EE4C()
{
  result = qword_27D058AB8;
  if (!qword_27D058AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058AB8);
  }

  return result;
}

unint64_t sub_22314EEA4()
{
  result = qword_27D058AC0;
  if (!qword_27D058AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058AC0);
  }

  return result;
}

unint64_t sub_22314EEFC()
{
  result = qword_27D058AC8;
  if (!qword_27D058AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058AC8);
  }

  return result;
}

uint64_t MUXServerFallbackMessage.init(from:)(uint64_t *a1)
{
  sub_2230F7158(a1, v5);
  ExecuteNLOnServerMessageBase.init(from:)(v5);
  v3 = v2;
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

id MUXServerFallbackMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MUXServerFallbackMessage();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for MUXServerFallbackMessage()
{
  result = qword_27D058AD0;
  if (!qword_27D058AD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *MUXSpeechPackageMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return MUXSpeechPackageMessage.init(build:)(v1);
}

void *MUXSpeechPackageMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v47 - v6;
  v8 = sub_2231FFDA4();
  v9 = OUTLINED_FUNCTION_9(v8);
  v49 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v50 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MUXSpeechPackageMessage.Builder(0);
  v15 = (v14 - 8);
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v18 = 15;
  *(v18 + 1) = 0;
  *(v18 + 2) = 0;
  v19 = v15[8];
  __swift_storeEnumTagSinglePayload(&v18[v19], 1, 1, v8);
  v20 = &v18[v15[9]];
  *v20 = 0;
  *(v20 + 1) = 0;
  v21 = &v18[v15[10]];
  *v21 = 0;
  *(v21 + 1) = 0;
  v22 = v15[11];
  *&v18[v22] = 0;
  a1(v18);
  v23 = *v18;
  if (v23 == 15)
  {
    goto LABEL_12;
  }

  v24 = *(v18 + 2);
  if (!v24)
  {
    goto LABEL_12;
  }

  v48 = *(v18 + 1);
  sub_2230D1480(&v18[v19], v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_2230D69D4(v7);
LABEL_12:
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v36 = sub_223200014();
    __swift_project_value_buffer(v36, qword_280FCE830);
    v37 = sub_223200004();
    v38 = sub_223200254();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v52 = v40;
      *v39 = 136446210;
      v41 = sub_2230F7898();
      v43 = sub_2231A5D38(v41, v42, &v52);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_2230CE000, v37, v38, "Could not build %{public}s: Builder has missing required fields", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x223DD6780](v40, -1, -1);
      MEMORY[0x223DD6780](v39, -1, -1);
    }

    sub_22314F5C4(v18);
    type metadata accessor for MUXSpeechPackageMessage(0);
    v44 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
    v45 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v25 = v49;
  (*(v49 + 32))(v50, v7, v8);
  if (!*(v20 + 1) || !*(v21 + 1) || (v26 = *&v18[v22], v27 = v50, !v26))
  {
    (*(v25 + 8))(v50, v8);
    goto LABEL_12;
  }

  v28 = *v20;
  v29 = *v21;
  *(v2 + OBJC_IVAR____TtC16SiriMessageTypes23MUXSpeechPackageMessage_speechPackageDict) = v26;
  MEMORY[0x28223BE20](v26);
  *(&v47 - 64) = v23;
  *(&v47 - 7) = v48;
  *(&v47 - 6) = v24;
  *(&v47 - 5) = v27;
  *(&v47 - 4) = v30;
  *(&v47 - 3) = v31;
  *(&v47 - 2) = v32;
  *(&v47 - 1) = v33;

  v34 = ResultCandidateRequestMessageBase.init(build:)(sub_2231122E4);
  v35 = v34;
  sub_22314F5C4(v18);
  if (v34)
  {
  }

  (*(v49 + 8))(v27, v8);
  return v34;
}

uint64_t sub_22314F5C4(uint64_t a1)
{
  v2 = type metadata accessor for MUXSpeechPackageMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *MUXSpeechPackageMessage.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058AE0, &unk_22320D548);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223150044();
  sub_223200794();
  if (v2)
  {
    v14 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for MUXSpeechPackageMessage(0);
    v10 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
    v11 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057AB0, &qword_223206160);
    sub_223110600(&qword_27D057AB8, sub_2231105AC, sub_2230FB7A0);
    sub_223200554();
    v13 = sub_22310F3AC(v17[0]);

    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes23MUXSpeechPackageMessage_speechPackageDict) = v13;
    sub_2230F7158(a1, v17);
    v14 = ResultCandidateRequestMessageBase.init(from:)(v17);
    v15 = OUTLINED_FUNCTION_2();
    v16(v15);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v14;
}

uint64_t sub_22314F934(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058AF0, &qword_22320D558);
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = v15 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223150044();
  sub_2232007A4();
  v13 = sub_223110C08(*(v1 + OBJC_IVAR____TtC16SiriMessageTypes23MUXSpeechPackageMessage_speechPackageDict));
  if (!v2)
  {
    v15[1] = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057AB0, &qword_223206160);
    sub_223110600(&qword_280FCA538, sub_2230D37F0, sub_2230D7754);
    sub_223200654();

    sub_223190B78(a1);
  }

  return (*(v7 + 8))(v11, v4);
}

BOOL sub_22314FB18@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2230EC284();
  *a2 = result;
  return result;
}

unint64_t sub_22314FB4C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2230EC2CC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_22314FB78@<W0>(_BYTE *a1@<X8>)
{
  result = sub_2230EC284();
  *a1 = result;
  return result;
}

uint64_t sub_22314FBA4(uint64_t a1)
{
  v2 = sub_223150044();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22314FBE0(uint64_t a1)
{
  v2 = sub_223150044();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MUXSpeechPackageMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t MUXSpeechPackageMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t MUXSpeechPackageMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MUXSpeechPackageMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t MUXSpeechPackageMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_2_23() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t MUXSpeechPackageMessage.Builder.requestId.getter()
{
  v1 = (v0 + *(type metadata accessor for MUXSpeechPackageMessage.Builder(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MUXSpeechPackageMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for MUXSpeechPackageMessage.Builder(0) + 28));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t MUXSpeechPackageMessage.Builder.resultCandidateId.getter()
{
  v1 = (v0 + *(type metadata accessor for MUXSpeechPackageMessage.Builder(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MUXSpeechPackageMessage.Builder.resultCandidateId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for MUXSpeechPackageMessage.Builder(0) + 32));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t MUXSpeechPackageMessage.Builder.speechPackageDict.getter()
{
  v1 = *(v0 + *(type metadata accessor for MUXSpeechPackageMessage.Builder(0) + 36));
}

uint64_t MUXSpeechPackageMessage.Builder.speechPackageDict.setter()
{
  v2 = *(OUTLINED_FUNCTION_2_23() + 36);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

id MUXSpeechPackageMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MUXSpeechPackageMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_223150044()
{
  result = qword_27D058AE8;
  if (!qword_27D058AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058AE8);
  }

  return result;
}

uint64_t sub_22315013C()
{
  sub_2230D525C(319, &qword_280FCB0A8);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_2230F6D30();
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_223144BD0();
        v1 = v7;
        if (v8 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

_BYTE *storeEnumTagSinglePayload for MUXSpeechPackageMessage.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_2231502E4()
{
  result = qword_27D058B18;
  if (!qword_27D058B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058B18);
  }

  return result;
}

unint64_t sub_22315033C()
{
  result = qword_27D058B20;
  if (!qword_27D058B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058B20);
  }

  return result;
}

unint64_t sub_223150394()
{
  result = qword_27D058B28;
  if (!qword_27D058B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058B28);
  }

  return result;
}

uint64_t sub_2231503F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636E617265747475 && a2 == 0xE900000000000065;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000223221290 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_2232006B4();

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

uint64_t sub_2231504D0(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x636E617265747475;
  }
}

uint64_t sub_223150518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231503F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_223150540(uint64_t a1)
{
  v2 = sub_2231518F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22315057C(uint64_t a1)
{
  v2 = sub_2231518F4();

  return MEMORY[0x2821FE720](a1, v2);
}

void *MUXTextBasedResultCandidateMessage.voiceIdScoreCard.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes34MUXTextBasedResultCandidateMessage_voiceIdScoreCard);
  v2 = v1;
  return v1;
}

void *MUXTextBasedResultCandidateMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return MUXTextBasedResultCandidateMessage.init(build:)(v1);
}

void *MUXTextBasedResultCandidateMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v82 = a1;
  v83 = v1;
  ObjectType = swift_getObjectType();
  v2 = sub_2231FFC84();
  v3 = OUTLINED_FUNCTION_9(v2);
  v77 = v4;
  v78 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_2();
  v76 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v74 - v11;
  v13 = sub_2231FFDA4();
  v14 = OUTLINED_FUNCTION_9(v13);
  v79 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_2();
  v80 = v19 - v18;
  v20 = type metadata accessor for MUXTextBasedResultCandidateMessage.Builder(0);
  v21 = (v20 - 8);
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2_2();
  v25 = (v24 - v23);
  *v25 = 15;
  *(v25 + 1) = 0;
  *(v25 + 2) = 0;
  v26 = v21[8];
  v27 = v13;
  __swift_storeEnumTagSinglePayload(v24 - v23 + v26, 1, 1, v13);
  v28 = &v25[v21[9]];
  *v28 = 0;
  *(v28 + 1) = 0;
  v29 = &v25[v21[10]];
  *v29 = 0;
  *(v29 + 1) = 0;
  v30 = &v25[v21[11]];
  *v30 = 0;
  v30[1] = 0;
  v31 = v21[12];
  *&v25[v31] = 0;
  v82(v25);
  v32 = *v25;
  if (v32 == 15)
  {
    goto LABEL_15;
  }

  v33 = *(v25 + 2);
  if (!v33)
  {
    goto LABEL_15;
  }

  v82 = *(v25 + 1);
  sub_2230D1480(&v25[v26], v12);
  v34 = v27;
  if (__swift_getEnumTagSinglePayload(v12, 1, v27) == 1)
  {
    sub_2230D69D4(v12);
LABEL_15:
    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v56 = sub_223200014();
    __swift_project_value_buffer(v56, qword_280FCE830);
    v57 = sub_223200004();
    v58 = sub_223200254();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v84[0] = v60;
      *v59 = 136446210;
      v61 = sub_2230F7898();
      v63 = sub_2231A5D38(v61, v62, v84);

      *(v59 + 4) = v63;
      _os_log_impl(&dword_2230CE000, v57, v58, "Could not build %{public}s: Builder has missing required fields", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v60);
      MEMORY[0x223DD6780](v60, -1, -1);
      MEMORY[0x223DD6780](v59, -1, -1);
    }

    sub_223150CA0(v25);
LABEL_20:
    type metadata accessor for MUXTextBasedResultCandidateMessage(0);
    v64 = *((*MEMORY[0x277D85000] & *v83) + 0x30);
    v65 = *((*MEMORY[0x277D85000] & *v83) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v75 = v33;
  v36 = v79;
  v35 = v80;
  (*(v79 + 32))(v80, v12, v34);
  v37 = *(v28 + 1);
  if (!v37 || !*(v29 + 1) || (v38 = v30[1]) == 0)
  {
    (*(v36 + 8))(v35, v34);
    goto LABEL_15;
  }

  ObjectType = *(v29 + 1);
  v39 = *v28;
  v74 = *v29;
  v84[0] = *v30;
  v84[1] = v38;
  v40 = v76;
  sub_2231FFC74();
  sub_2230D1D30();
  v41 = sub_2232002E4();
  v43 = v42;
  v44 = (*(v77 + 8))(v40, v78);
  v45 = HIBYTE(v43) & 0xF;
  if ((v43 & 0x2000000000000000) == 0)
  {
    v45 = v41 & 0xFFFFFFFFFFFFLL;
  }

  if (!v45)
  {

    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v67 = sub_223200014();
    __swift_project_value_buffer(v67, qword_280FCE830);
    v68 = sub_223200004();
    v69 = sub_223200254();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_2230CE000, v68, v69, "utterance is empty, can't create message", v70, 2u);
      MEMORY[0x223DD6780](v70, -1, -1);
    }

    sub_223150CA0(v25);
    v71 = *(v36 + 8);
    v72 = OUTLINED_FUNCTION_7_0();
    v73(v72);
    goto LABEL_20;
  }

  v46 = v41;
  v47 = v83;
  v48 = (v83 + OBJC_IVAR____TtC16SiriMessageTypes34MUXTextBasedResultCandidateMessage_utterance);
  *v48 = v46;
  v48[1] = v43;
  *(v47 + OBJC_IVAR____TtC16SiriMessageTypes34MUXTextBasedResultCandidateMessage_voiceIdScoreCard) = *&v25[v31];
  MEMORY[0x28223BE20](v44);
  *(&v74 - 64) = v32;
  v49 = v75;
  *(&v74 - 7) = v82;
  *(&v74 - 6) = v49;
  v50 = v80;
  *(&v74 - 5) = v80;
  *(&v74 - 4) = v39;
  v51 = v74;
  *(&v74 - 3) = v37;
  *(&v74 - 2) = v51;
  *(&v74 - 1) = ObjectType;
  v53 = v52;
  v54 = ResultCandidateRequestMessageBase.init(build:)(sub_2231122E4);
  v55 = v54;
  sub_223150CA0(v25);
  if (v54)
  {
  }

  (*(v36 + 8))(v50, v34);
  return v54;
}

uint64_t sub_223150CA0(uint64_t a1)
{
  v2 = type metadata accessor for MUXTextBasedResultCandidateMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MUXTextBasedResultCandidateMessage.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058B30, &qword_22320D718);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231518F4();
  sub_223200794();
  v10 = &unk_27D080000;
  if (v2)
  {
    v12 = 0;
  }

  else
  {
    LOBYTE(v31) = 0;
    v11 = sub_2232004F4();
    v17 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes34MUXTextBasedResultCandidateMessage_utterance);
    *v17 = v11;
    v17[1] = v18;
    v33 = 1;
    sub_2230FB7A0();
    sub_2232004C4();
    if (v32 >> 60 == 15)
    {
      v19 = 0;
LABEL_11:
      *(v3 + OBJC_IVAR____TtC16SiriMessageTypes34MUXTextBasedResultCandidateMessage_voiceIdScoreCard) = v19;
      sub_2230F7158(a1, &v31);
      v12 = ResultCandidateRequestMessageBase.init(from:)(&v31);
      v20 = OUTLINED_FUNCTION_2();
      v21(v20);
      v22 = OUTLINED_FUNCTION_7_0();
      sub_22310A610(v22, v23);
      __swift_destroy_boxed_opaque_existential_1(a1);
      return v12;
    }

    sub_2230FB7F4(0, &qword_27D0576E8, 0x277CCAAC8);
    sub_2230FB7F4(0, &qword_280FCA3C8, 0x277CEF520);
    sub_223110BA0(v31, v32);
    v19 = sub_223200264();
    v24 = OUTLINED_FUNCTION_7_0();
    sub_22310A610(v24, v25);
    if (v19)
    {
      goto LABEL_11;
    }

    sub_2230F9E38();
    swift_allocError();
    *v26 = 0xD000000000000020;
    *(v26 + 8) = 0x8000000223223D00;
    *(v26 + 16) = 0;
    swift_willThrow();
    v27 = OUTLINED_FUNCTION_7_0();
    sub_22310A610(v27, v28);
    v29 = OUTLINED_FUNCTION_2();
    v30(v29);
    v12 = 1;
    v10 = &unk_27D080000;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  if (v12)
  {
    v13 = *(v3 + v10[469] + 8);
  }

  type metadata accessor for MUXTextBasedResultCandidateMessage(0);
  v14 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
  v15 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
  swift_deallocPartialClassInstance();
  return v12;
}

uint64_t sub_22315112C(void *a1)
{
  v29[2] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058B40, &qword_22320D720);
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v26 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231518F4();
  sub_2232007A4();
  v13 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes34MUXTextBasedResultCandidateMessage_utterance);
  v14 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes34MUXTextBasedResultCandidateMessage_utterance + 8);
  LOBYTE(v29[0]) = 0;
  sub_2232005F4();
  if (!v2)
  {
    v15 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes34MUXTextBasedResultCandidateMessage_voiceIdScoreCard);
    if (!v15)
    {
LABEL_6:
      sub_223190B78(a1);
      goto LABEL_7;
    }

    v16 = objc_opt_self();
    v29[0] = 0;
    v17 = v15;
    v18 = [v16 archivedDataWithRootObject:v17 requiringSecureCoding:1 error:v29];
    v19 = v29[0];
    if (v18)
    {
      v27 = v17;
      v20 = sub_2231FFD24();
      v22 = v21;

      v29[0] = v20;
      v29[1] = v22;
      v28 = 1;
      sub_2230D7754();
      sub_223200654();

      sub_2230D94DC(v20, v22);
      goto LABEL_6;
    }

    v23 = v19;
    sub_2231FFD04();

    swift_willThrow();
  }

LABEL_7:
  result = (*(v7 + 8))(v11, v4);
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MUXTextBasedResultCandidateMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t MUXTextBasedResultCandidateMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t MUXTextBasedResultCandidateMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MUXTextBasedResultCandidateMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t MUXTextBasedResultCandidateMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_9_12() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t MUXTextBasedResultCandidateMessage.Builder.requestId.getter()
{
  v0 = type metadata accessor for MUXTextBasedResultCandidateMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 28));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t MUXTextBasedResultCandidateMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for MUXTextBasedResultCandidateMessage.Builder(0) + 28));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t MUXTextBasedResultCandidateMessage.Builder.resultCandidateId.getter()
{
  v0 = type metadata accessor for MUXTextBasedResultCandidateMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 32));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t MUXTextBasedResultCandidateMessage.Builder.resultCandidateId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for MUXTextBasedResultCandidateMessage.Builder(0) + 32));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t MUXTextBasedResultCandidateMessage.Builder.utterance.getter()
{
  v0 = type metadata accessor for MUXTextBasedResultCandidateMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 36));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t MUXTextBasedResultCandidateMessage.Builder.utterance.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for MUXTextBasedResultCandidateMessage.Builder(0) + 36));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

void *MUXTextBasedResultCandidateMessage.Builder.voiceIdScoreCard.getter()
{
  v1 = *(v0 + *(type metadata accessor for MUXTextBasedResultCandidateMessage.Builder(0) + 40));
  v2 = v1;
  return v1;
}

void MUXTextBasedResultCandidateMessage.Builder.voiceIdScoreCard.setter()
{
  v2 = *(OUTLINED_FUNCTION_9_12() + 40);

  *(v1 + v2) = v0;
}

void sub_223151828()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes34MUXTextBasedResultCandidateMessage_utterance + 8);

  v2 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes34MUXTextBasedResultCandidateMessage_voiceIdScoreCard);
}

id MUXTextBasedResultCandidateMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MUXTextBasedResultCandidateMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231518F4()
{
  result = qword_27D058B38;
  if (!qword_27D058B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058B38);
  }

  return result;
}

uint64_t sub_2231519F0()
{
  sub_2230D525C(319, &qword_280FCB0A8);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_2230F6D30();
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_223110954();
        v1 = v7;
        if (v8 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

_BYTE *storeEnumTagSinglePayload for MUXTextBasedResultCandidateMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_223151BC4()
{
  result = qword_27D058B68;
  if (!qword_27D058B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058B68);
  }

  return result;
}

unint64_t sub_223151C1C()
{
  result = qword_27D058B70;
  if (!qword_27D058B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058B70);
  }

  return result;
}

unint64_t sub_223151C74()
{
  result = qword_27D058B78;
  if (!qword_27D058B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058B78);
  }

  return result;
}

uint64_t MUXTextBasedResultSelectedMessage.expectedSelectedUserId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes33MUXTextBasedResultSelectedMessage_expectedSelectedUserId + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes33MUXTextBasedResultSelectedMessage_expectedSelectedUserId);
  a1[1] = v2;
}

void *MUXTextBasedResultSelectedMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return MUXTextBasedResultSelectedMessage.init(build:)(v1);
}

void *MUXTextBasedResultSelectedMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v62 = v1;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v56 - v5;
  v7 = sub_2231FFDA4();
  v8 = OUTLINED_FUNCTION_9(v7);
  v58 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v59 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MUXTextBasedResultSelectedMessage.Builder(0);
  v14 = (v13 - 8);
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v17 = 15;
  *(v17 + 1) = 0;
  *(v17 + 2) = 0;
  v18 = v14[8];
  v60 = v7;
  __swift_storeEnumTagSinglePayload(&v17[v18], 1, 1, v7);
  v19 = &v17[v14[9]];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = &v17[v14[10]];
  *v20 = 0;
  *(v20 + 1) = 0;
  v21 = v14[11];
  v17[v21] = 2;
  v22 = &v17[v14[12]];
  *v22 = 0;
  v22[8] = 1;
  v23 = &v17[v14[13]];
  *v23 = 0;
  *(v23 + 1) = 0;
  a1(v17);
  v24 = *v17;
  if (v24 != 15)
  {
    v25 = *(v17 + 2);
    if (v25)
    {
      v26 = *(v17 + 1);
      sub_2230D1480(&v17[v18], v6);
      v27 = v60;
      if (__swift_getEnumTagSinglePayload(v6, 1, v60) == 1)
      {
        sub_2230D69D4(v6);
      }

      else
      {
        v56 = v26;
        v57 = v25;
        v28 = v58;
        v29 = v59;
        (*(v58 + 32))(v59, v6, v27);
        v30 = *(v19 + 1);
        if (v30)
        {
          v31 = *(v20 + 1);
          if (v31 && v17[v21] != 2)
          {
            v44 = *v19;
            v45 = *v20;
            v46 = *(v23 + 1);
            v47 = (v62 + OBJC_IVAR____TtC16SiriMessageTypes33MUXTextBasedResultSelectedMessage_expectedSelectedUserId);
            *v47 = *v23;
            v47[1] = v46;
            MEMORY[0x28223BE20](v46);
            *(&v56 - 80) = v24;
            v48 = v57;
            *(&v56 - 9) = v56;
            *(&v56 - 8) = v48;
            v49 = v59;
            *(&v56 - 7) = v59;
            *(&v56 - 6) = v50;
            *(&v56 - 5) = v30;
            *(&v56 - 4) = v51;
            *(&v56 - 3) = v31;
            *(&v56 - 16) = v52 & 1;
            *(&v56 - 1) = v17;

            v42 = ResultSelectedMessageBase.init(build:)(sub_223152ED0);
            v53 = v42;

            if (v42)
            {

              v54 = *(v58 + 8);
              v55 = v53;
              v54(v49, v60);
              sub_22315227C(v17);
            }

            else
            {
              (*(v58 + 8))(v49, v60);
              sub_22315227C(v17);
            }

            return v42;
          }

          (*(v28 + 8))(v59, v27);
        }

        else
        {
          (*(v28 + 8))(v29, v27);
        }
      }
    }
  }

  if (qword_280FCA778 != -1)
  {
    swift_once();
  }

  v32 = sub_223200014();
  __swift_project_value_buffer(v32, qword_280FCE830);
  v33 = sub_223200004();
  v34 = sub_223200254();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v63 = v36;
    *v35 = 136446210;
    v37 = sub_2230F7898();
    v39 = sub_2231A5D38(v37, v38, &v63);

    *(v35 + 4) = v39;
    _os_log_impl(&dword_2230CE000, v33, v34, "Could not build %{public}s: Builder has missing required fields", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v36);
    MEMORY[0x223DD6780](v36, -1, -1);
    MEMORY[0x223DD6780](v35, -1, -1);
  }

  sub_22315227C(v17);
  type metadata accessor for MUXTextBasedResultSelectedMessage(0);
  v40 = *((*MEMORY[0x277D85000] & *v62) + 0x30);
  v41 = *((*MEMORY[0x277D85000] & *v62) + 0x34);
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_22315227C(uint64_t a1)
{
  v2 = type metadata accessor for MUXTextBasedResultSelectedMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2231522F8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11)
{
  *a1 = a2;
  v18 = *(a1 + 16);

  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  v19 = type metadata accessor for ResultSelectedMessageBase.Builder(0);
  v20 = v19[6];
  sub_2230D69D4(a1 + v20);
  v21 = sub_2231FFDA4();
  (*(*(v21 - 8) + 16))(a1 + v20, a5, v21);
  __swift_storeEnumTagSinglePayload(a1 + v20, 0, 1, v21);
  v22 = (a1 + v19[7]);
  v23 = v22[1];

  *v22 = a6;
  v22[1] = a7;
  v24 = (a1 + v19[8]);
  v25 = v24[1];

  *v24 = a8;
  v24[1] = a9;
  *(a1 + v19[9]) = a10;
  result = type metadata accessor for MUXTextBasedResultSelectedMessage.Builder(0);
  v27 = (a11 + *(result + 40));
  v28 = *v27;
  LOBYTE(v27) = *(v27 + 8);
  v29 = a1 + v19[10];
  *v29 = v28;
  *(v29 + 8) = v27;
  return result;
}

void *MUXTextBasedResultSelectedMessage.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058B80, &qword_22320D8E8);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223152F18();
  sub_223200794();
  if (v2)
  {
    v13 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for MUXTextBasedResultSelectedMessage(0);
    v10 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
    v11 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_2231105AC();
    sub_2232004C4();
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes33MUXTextBasedResultSelectedMessage_expectedSelectedUserId) = *v16;
    sub_2230F7158(a1, v16);
    v13 = ResultSelectedMessageBase.init(from:)(v16);
    v14 = OUTLINED_FUNCTION_2();
    v15(v14);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v13;
}

uint64_t sub_2231526C4(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058B90, &qword_22320D8F0);
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = v15 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223152F18();
  sub_2232007A4();
  v13 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes33MUXTextBasedResultSelectedMessage_expectedSelectedUserId + 8);
  if (!v13 || (v15[0] = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes33MUXTextBasedResultSelectedMessage_expectedSelectedUserId), v15[1] = v13, sub_2230D37F0(), sub_223200654(), !v2))
  {
    sub_223191F2C(a1);
  }

  return (*(v7 + 8))(v11, v4);
}

BOOL sub_223152844@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2230EC590();
  *a2 = result;
  return result;
}

unint64_t sub_223152878@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2230EC5D8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_2231528A4@<W0>(_BYTE *a1@<X8>)
{
  result = sub_2230EC590();
  *a1 = result;
  return result;
}

uint64_t sub_2231528D0(uint64_t a1)
{
  v2 = sub_223152F18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22315290C(uint64_t a1)
{
  v2 = sub_223152F18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MUXTextBasedResultSelectedMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t MUXTextBasedResultSelectedMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t MUXTextBasedResultSelectedMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MUXTextBasedResultSelectedMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t MUXTextBasedResultSelectedMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_4_19() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t MUXTextBasedResultSelectedMessage.Builder.requestId.getter()
{
  v1 = (v0 + *(type metadata accessor for MUXTextBasedResultSelectedMessage.Builder(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MUXTextBasedResultSelectedMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for MUXTextBasedResultSelectedMessage.Builder(0) + 28));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t MUXTextBasedResultSelectedMessage.Builder.resultCandidateId.getter()
{
  v1 = (v0 + *(type metadata accessor for MUXTextBasedResultSelectedMessage.Builder(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MUXTextBasedResultSelectedMessage.Builder.resultCandidateId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for MUXTextBasedResultSelectedMessage.Builder(0) + 32));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t MUXTextBasedResultSelectedMessage.Builder.isMitigated.setter(char a1)
{
  result = type metadata accessor for MUXTextBasedResultSelectedMessage.Builder(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t MUXTextBasedResultSelectedMessage.Builder.endpointMode.getter()
{
  v1 = (v0 + *(type metadata accessor for MUXTextBasedResultSelectedMessage.Builder(0) + 40));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t MUXTextBasedResultSelectedMessage.Builder.endpointMode.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MUXTextBasedResultSelectedMessage.Builder(0);
  v6 = v2 + *(result + 40);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MUXTextBasedResultSelectedMessage.Builder.expectedSelectedUserId.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MUXTextBasedResultSelectedMessage.Builder(0) + 44));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t MUXTextBasedResultSelectedMessage.Builder.expectedSelectedUserId.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for MUXTextBasedResultSelectedMessage.Builder(0) + 44));
  v5 = v4[1];

  *v4 = v2;
  v4[1] = v3;
  return result;
}

id MUXTextBasedResultSelectedMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MUXTextBasedResultSelectedMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_223152F18()
{
  result = qword_27D058B88;
  if (!qword_27D058B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058B88);
  }

  return result;
}

uint64_t sub_22315300C()
{
  sub_2230D525C(319, &qword_280FCB0A8);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_22314ED48(319, &qword_280FCE678, MEMORY[0x277CC95F0]);
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_2230D525C(319, &qword_280FCA440);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          sub_22314ED48(319, &qword_280FCA3D8, type metadata accessor for AFEndpointMode);
          v1 = v9;
          if (v10 <= 0x3F)
          {
            sub_2230D525C(319, &qword_280FCA740);
            v1 = v11;
            if (v12 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v1;
}

_BYTE *storeEnumTagSinglePayload for MUXTextBasedResultSelectedMessage.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_223153244()
{
  result = qword_27D058BB8;
  if (!qword_27D058BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058BB8);
  }

  return result;
}

unint64_t sub_22315329C()
{
  result = qword_27D058BC0;
  if (!qword_27D058BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058BC0);
  }

  return result;
}

unint64_t sub_2231532F4()
{
  result = qword_27D058BC8;
  if (!qword_27D058BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058BC8);
  }

  return result;
}

uint64_t NLParseResponse.responseStatusCode.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16SiriMessageTypes15NLParseResponse_responseStatusCode;
  v4 = sub_2231FFE44();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t NLParseResponse.responseVariantResult.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes15NLParseResponse_responseVariantResult);
  v2 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes15NLParseResponse_responseVariantResult + 8);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_223153494()
{
  v0 = sub_223200464();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_2231534E8(char a1)
{
  result = 0x7372615072657375;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0x6B6361626C6C6166;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2231535BC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_223106870();
}

uint64_t sub_2231535E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_223153494();
  *a2 = result;
  return result;
}

unint64_t sub_223153610@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2231534E8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_223153658@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2231534E0();
  *a1 = result;
  return result;
}

uint64_t sub_223153680(uint64_t a1)
{
  v2 = sub_223155D30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231536BC(uint64_t a1)
{
  v2 = sub_223155D30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NLParseResponse.NLResponseError.hashValue.getter()
{
  sub_223200744();
  MEMORY[0x223DD60B0](0);
  return sub_223200764();
}

id NLParseResponse.init(build:)(void (*a1)(uint64_t *))
{
  v60 = a1;
  v61 = v1;
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058BE8, &qword_22320DAF0);
  OUTLINED_FUNCTION_9_13(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v5);
  v7 = &ObjectType - v6;
  v8 = sub_2231FFE44();
  v9 = OUTLINED_FUNCTION_9(v8);
  v59 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_2();
  v15 = v14 - v13;
  v16 = type metadata accessor for NLParseResponse.Builder(0);
  v17 = (v16 - 8);
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2_2();
  v21 = (v20 - v19);
  *(v20 - v19) = 0;
  v22 = v17[7];
  OUTLINED_FUNCTION_10_8();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v8);
  v26 = v17[8];
  sub_2231FFE94();
  OUTLINED_FUNCTION_10_8();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  v31 = v17[9];
  *(v21 + v31) = 7;
  v32 = v17[10];
  sub_2231FFE84();
  OUTLINED_FUNCTION_10_8();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  v37 = (v21 + v17[11]);
  *v37 = 0;
  v37[1] = 0;
  v60(v21);
  v38 = *v21;
  if (!*v21)
  {
    goto LABEL_4;
  }

  sub_2230D3008(v21 + v22, v7, &qword_27D058BE8, &qword_22320DAF0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_2230D40E0(v7, &qword_27D058BE8, &qword_22320DAF0);
LABEL_4:
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v39 = sub_223200014();
    __swift_project_value_buffer(v39, qword_280FCE830);
    v40 = sub_223200004();
    v41 = sub_223200254();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v63 = v43;
      *v42 = 136446210;
      v44 = sub_2230F7898();
      v46 = sub_2231A5D38(v44, v45, &v63);

      *(v42 + 4) = v46;
      _os_log_impl(&dword_2230CE000, v40, v41, "Could not build %{public}s: Builder has missing required fields", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v43);
      MEMORY[0x223DD6780](v43, -1, -1);
      MEMORY[0x223DD6780](v42, -1, -1);
    }

    v47 = v61;
    sub_223153CA4(v21);
    type metadata accessor for NLParseResponse(0);
    v48 = *((*MEMORY[0x277D85000] & *v47) + 0x30);
    v49 = *((*MEMORY[0x277D85000] & *v47) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v51 = *(v59 + 32);
  v59 += 32;
  v60 = v51;
  (v51)(v15, v7, v8);
  v52 = v61;
  *(v61 + OBJC_IVAR____TtC16SiriMessageTypes15NLParseResponse_userParses) = v38;
  v63 = MEMORY[0x277D84F90];
  v53 = *(v38 + 16);

  if (v53)
  {
    sub_223153ED4(v38, &v63);
  }

  (v60)(&v52[OBJC_IVAR____TtC16SiriMessageTypes15NLParseResponse_responseStatusCode], v15, v8);
  sub_2230D3008(v21 + v26, &v52[OBJC_IVAR____TtC16SiriMessageTypes15NLParseResponse_fallbackParse], &qword_27D058BD8, &qword_22320DAE0);
  v52[OBJC_IVAR____TtC16SiriMessageTypes15NLParseResponse_serverFallbackReason] = *(v21 + v31);
  sub_2230D3008(v21 + v32, &v52[OBJC_IVAR____TtC16SiriMessageTypes15NLParseResponse_languageVariantResult], &qword_27D058BE0, &qword_22320DAE8);
  v54 = *v37;
  v55 = v37[1];

  sub_223153CA4(v21);
  v56 = &v52[OBJC_IVAR____TtC16SiriMessageTypes15NLParseResponse_responseVariantResult];
  *v56 = v54;
  v56[1] = v55;

  v57 = type metadata accessor for NLParseResponse(0);
  v62.receiver = v52;
  v62.super_class = v57;
  return objc_msgSendSuper2(&v62, sel_init, ObjectType);
}

uint64_t sub_223153CA4(uint64_t a1)
{
  v2 = type metadata accessor for NLParseResponse.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_223153D20(uint64_t a1, void *a2)
{
  sub_2231FFE14();
  sub_223156574(&qword_280FCE660, MEMORY[0x277D5DB08]);
  v4 = sub_2231FFFE4();
  if (v2)
  {
  }

  else
  {
    v10 = v4;
    v11 = v5;
    v12 = objc_allocWithZone(MEMORY[0x277D5DDE0]);
    if (sub_223155C90(v10, v11))
    {
      MEMORY[0x223DD5B10]();
      sub_223155D04(*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_223200214();
      return;
    }
  }

  if (qword_280FCA778 != -1)
  {
    swift_once();
  }

  v6 = sub_223200014();
  __swift_project_value_buffer(v6, qword_280FCE830);
  v7 = sub_223200004();
  v8 = sub_223200254();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2230CE000, v7, v8, "Could not convert from Swift to Obj-C?! Skipping this one", v9, 2u);
    MEMORY[0x223DD6780](v9, -1, -1);
  }
}

void sub_223153ED4(uint64_t a1, void *a2)
{
  v5 = 0;
  v6 = *(a1 + 16);
  do
  {
    if (v6 == v5)
    {
      break;
    }

    v7 = *(sub_2231FFE14() - 8);
    sub_223153D20(a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v5++, a2);
  }

  while (!v2);
}

uint64_t NLParseResponse.init(from:)(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058BE0, &qword_22320DAE8);
  OUTLINED_FUNCTION_9_13(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v5);
  v138 = &v129 - v6;
  v139 = sub_2231FFE84();
  v7 = OUTLINED_FUNCTION_9(v139);
  v135 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_2();
  v136 = (v12 - v11);
  v13 = sub_2231FFFA4();
  v14 = OUTLINED_FUNCTION_9_13(v13);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v137 = &v129 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v142 = &v129 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058BD8, &qword_22320DAE0);
  OUTLINED_FUNCTION_9_13(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v23);
  v143 = &v129 - v24;
  v144 = sub_2231FFE94();
  v25 = OUTLINED_FUNCTION_9(v144);
  v140 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_2_2();
  v141 = (v30 - v29);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058BE8, &qword_22320DAF0);
  OUTLINED_FUNCTION_9_13(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v34);
  v36 = &v129 - v35;
  v37 = sub_2231FFE44();
  v38 = OUTLINED_FUNCTION_9(v37);
  v145 = v39;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_2_2();
  v44 = v43 - v42;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058BF0, &unk_22320DAF8);
  OUTLINED_FUNCTION_9(v45);
  v146 = v46;
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v49);
  v51 = &v129 - v50;
  v52 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223155D30();
  v53 = v147;
  sub_223200794();
  if (v53)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v55 = v148;
    goto LABEL_4;
  }

  v133 = v44;
  v54 = v146;
  v134 = v37;
  v147 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057B10, &qword_2232063C0);
  v154 = 0;
  sub_22311A5F0(&qword_27D057B18, sub_2230FB7A0);
  OUTLINED_FUNCTION_20_4();
  sub_223200554();
  sub_22315B998();
  v60 = v59;

  v132 = OBJC_IVAR____TtC16SiriMessageTypes15NLParseResponse_userParses;
  *(v148 + OBJC_IVAR____TtC16SiriMessageTypes15NLParseResponse_userParses) = v60;
  LOBYTE(v149) = 1;
  sub_2232004B4();
  v63 = v61;
  if (v61)
  {
    v153 = v61;
    sub_223155D84();
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_24_2();
    (*(v54 + 8))(v51, v45);
    v55 = v148;
LABEL_8:
    v36 = v153 ^ 1u;
    v64 = v153 ^ 1;
LABEL_9:
    v65 = v147;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v65);
    v66 = *(v55 + v132);

    if (v36)
    {
      (*(v145 + 8))(v55 + OBJC_IVAR____TtC16SiriMessageTypes15NLParseResponse_responseStatusCode, v134);
      if ((v64 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    else if ((v64 & 1) == 0)
    {
      goto LABEL_4;
    }

    sub_2230D40E0(v55 + OBJC_IVAR____TtC16SiriMessageTypes15NLParseResponse_fallbackParse, &qword_27D058BD8, &qword_22320DAE0);
LABEL_4:
    type metadata accessor for NLParseResponse(0);
    v56 = *((*MEMORY[0x277D85000] & *v55) + 0x30);
    v57 = *((*MEMORY[0x277D85000] & *v55) + 0x34);
    swift_deallocPartialClassInstance();
    return v36;
  }

  v131 = v51;
  sub_2231FFE24();
  v67 = v134;
  if (__swift_getEnumTagSinglePayload(v36, 1, v134) == 1)
  {
    sub_2230D40E0(v36, &qword_27D058BE8, &qword_22320DAF0);
    sub_223155D84();
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_24_2();
    v68 = OUTLINED_FUNCTION_12_5();
    v62(v68, v45);
    v36 = 0;
    v64 = 0;
    v55 = v148;
    goto LABEL_9;
  }

  v153 = v63;
  v130 = 0;
  v69 = v145;
  v70 = v133;
  (*(v145 + 32))(v133, v36, v67);
  (*(v69 + 16))(v148 + OBJC_IVAR____TtC16SiriMessageTypes15NLParseResponse_responseStatusCode, v70, v67);
  v154 = 2;
  sub_2230FB7A0();
  OUTLINED_FUNCTION_20_4();
  v71 = v131;
  v72 = v130;
  sub_2232004C4();
  v130 = v72;
  if (v72)
  {
    (*(v69 + 8))(v70, v67);
    (*(v54 + 8))(v71, v45);
    v64 = 0;
    v36 = 1;
    v65 = v147;
    v55 = v148;
    goto LABEL_10;
  }

  v73 = *(&v149 + 1);
  if (*(&v149 + 1) >> 60 == 15)
  {
    v55 = v148;
    OUTLINED_FUNCTION_10_8();
    __swift_storeEnumTagSinglePayload(v74, v75, v76, v144);
    v77 = v130;
  }

  else
  {
    v78 = v149;
    v151 = 0;
    v149 = 0u;
    v150 = 0u;
    sub_223110BA0(v78, v73);
    sub_2231FFF94();
    OUTLINED_FUNCTION_4_20();
    sub_223156574(v79, v80);
    v129 = v78;
    v81 = v144;
    v82 = v130;
    sub_2231FFFD4();
    v77 = v82;
    if (v82)
    {

      v36 = 1;
      v83 = v143;
      OUTLINED_FUNCTION_10_8();
      __swift_storeEnumTagSinglePayload(v84, v85, v86, v81);
      sub_2230D40E0(v83, &qword_27D058BD8, &qword_22320DAE0);
      sub_223155D84();
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_24_2();
      sub_22310A610(v129, v73);
      (*(v145 + 8))(v133, v67);
      v87 = OUTLINED_FUNCTION_12_5();
      v88(v87, v45);
      v64 = 0;
      v65 = v147;
      v55 = v148;
      goto LABEL_10;
    }

    sub_22310A610(v129, v73);
    v89 = v143;
    OUTLINED_FUNCTION_17_2();
    __swift_storeEnumTagSinglePayload(v90, v91, v92, v81);
    v93 = *(v140 + 32);
    v93(v141, v89, v81);
    v55 = v148;
    v93(v148 + OBJC_IVAR____TtC16SiriMessageTypes15NLParseResponse_fallbackParse, v141, v81);
    OUTLINED_FUNCTION_17_2();
    __swift_storeEnumTagSinglePayload(v94, v95, v96, v81);
  }

  v154 = 3;
  sub_2231123E8();
  OUTLINED_FUNCTION_20_4();
  sub_2232004C4();
  v97 = v45;
  v98 = v145;
  if (v77)
  {
    v99 = OUTLINED_FUNCTION_1_17(v145);
    v100(v99);
    v101 = OUTLINED_FUNCTION_8_10();
    v102(v101);
    goto LABEL_8;
  }

  *(v55 + OBJC_IVAR____TtC16SiriMessageTypes15NLParseResponse_serverFallbackReason) = v149;
  v154 = 4;
  OUTLINED_FUNCTION_20_4();
  sub_2232004C4();
  v148 = v97;
  if (*(&v149 + 1) >> 60 == 15)
  {
    OUTLINED_FUNCTION_10_8();
    __swift_storeEnumTagSinglePayload(v103, v104, v105, v139);
  }

  else
  {
    v151 = 0;
    v149 = 0u;
    v150 = 0u;
    v106 = OUTLINED_FUNCTION_18_4();
    sub_223110BA0(v106, v107);
    sub_2231FFF94();
    OUTLINED_FUNCTION_6_12();
    sub_223156574(v108, v109);
    v110 = v138;
    OUTLINED_FUNCTION_18_4();
    v111 = v139;
    sub_2231FFFD4();
    v112 = OUTLINED_FUNCTION_18_4();
    sub_22310A610(v112, v113);
    OUTLINED_FUNCTION_17_2();
    __swift_storeEnumTagSinglePayload(v114, v115, v116, v111);
    v117 = *(v135 + 32);
    v117(v136, v110, v111);
    v117(v55 + OBJC_IVAR____TtC16SiriMessageTypes15NLParseResponse_languageVariantResult, v136, v111);
    OUTLINED_FUNCTION_17_2();
    __swift_storeEnumTagSinglePayload(v118, v119, v120, v111);
    v98 = v145;
  }

  LOBYTE(v149) = 5;
  v121 = sub_223200494();
  v130 = 0;
  v122 = v121;
  v124 = v123;
  (*(v98 + 8))(v133, v134);
  v125 = OUTLINED_FUNCTION_8_10();
  v126(v125);
  v127 = (v55 + OBJC_IVAR____TtC16SiriMessageTypes15NLParseResponse_responseVariantResult);
  *v127 = v122;
  v127[1] = v124;
  v128 = type metadata accessor for NLParseResponse(0);
  v152.receiver = v55;
  v152.super_class = v128;
  v36 = objc_msgSendSuper2(&v152, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v147);
  return v36;
}

uint64_t sub_223154C7C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058BE0, &qword_22320DAE8);
  OUTLINED_FUNCTION_9_13(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v7);
  v9 = v48 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058BD8, &qword_22320DAE0);
  OUTLINED_FUNCTION_9_13(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v13);
  v15 = v48 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058C00, &qword_22320DB08);
  OUTLINED_FUNCTION_9(v16);
  v18 = v17;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v21);
  v23 = v48 - v22;
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223155D30();
  sub_2232007A4();
  v25 = *(v2 + OBJC_IVAR____TtC16SiriMessageTypes15NLParseResponse_userParses);
  sub_22315BC2C();
  *&v51 = v26;
  v52 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057B10, &qword_2232063C0);
  sub_22311A5F0(&qword_280FCA4C8, sub_2230D7754);
  OUTLINED_FUNCTION_11_6();
  v27 = v50;
  sub_223200654();
  if (v27)
  {
    (*(v18 + 8))(v23, v16);
  }

  else
  {
    v49 = v9;
    v50 = v18;

    sub_2231FFE34();
    LOBYTE(v51) = 1;
    sub_223200634();
    v29 = v2;
    sub_2230D3008(v2 + OBJC_IVAR____TtC16SiriMessageTypes15NLParseResponse_fallbackParse, v15, &qword_27D058BD8, &qword_22320DAE0);
    v30 = sub_2231FFE94();
    if (__swift_getEnumTagSinglePayload(v15, 1, v30) == 1)
    {
      sub_2230D40E0(v15, &qword_27D058BD8, &qword_22320DAE0);
      v31 = 0;
      v32 = 0xF000000000000000;
    }

    else
    {
      OUTLINED_FUNCTION_4_20();
      sub_223156574(v33, v34);
      OUTLINED_FUNCTION_6_10();
      v31 = sub_2231FFFE4();
      v32 = v35;
      OUTLINED_FUNCTION_5_0(v30);
      (*(v36 + 8))(v15, v30);
    }

    *&v51 = v31;
    *(&v51 + 1) = v32;
    v52 = 2;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058C08, &qword_22320DB10);
    sub_223155DD8(&qword_280FCE698, &qword_27D058C08, &qword_22320DB10, sub_2230D7754);
    OUTLINED_FUNCTION_22_2();
    sub_223200654();
    v48[1] = v37;
    sub_22310A610(v51, *(&v51 + 1));
    LOBYTE(v51) = *(v2 + OBJC_IVAR____TtC16SiriMessageTypes15NLParseResponse_serverFallbackReason);
    v52 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058C10, &unk_22320DB18);
    v38 = v23;
    sub_223155DD8(&qword_280FCA818, &qword_27D058C10, &unk_22320DB18, sub_2231124D0);
    OUTLINED_FUNCTION_11_6();
    OUTLINED_FUNCTION_6_10();
    sub_223200654();
    v39 = v49;
    sub_2230D3008(v2 + OBJC_IVAR____TtC16SiriMessageTypes15NLParseResponse_languageVariantResult, v49, &qword_27D058BE0, &qword_22320DAE8);
    v40 = sub_2231FFE84();
    if (__swift_getEnumTagSinglePayload(v39, 1, v40) == 1)
    {
      sub_2230D40E0(v39, &qword_27D058BE0, &qword_22320DAE8);
      v41 = 0;
      v42 = 0xF000000000000000;
    }

    else
    {
      OUTLINED_FUNCTION_6_12();
      sub_223156574(v43, v44);
      v41 = sub_2231FFFE4();
      v42 = v45;
      OUTLINED_FUNCTION_5_0(v40);
      (*(v46 + 8))(v39, v40);
    }

    *&v51 = v41;
    *(&v51 + 1) = v42;
    v52 = 4;
    OUTLINED_FUNCTION_22_2();
    OUTLINED_FUNCTION_6_10();
    sub_223200654();
    sub_22310A610(v51, *(&v51 + 1));
    v47 = v50;
    v51 = *(v29 + OBJC_IVAR____TtC16SiriMessageTypes15NLParseResponse_responseVariantResult);
    v52 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057640, &qword_2232037A0);
    sub_2230F994C();
    OUTLINED_FUNCTION_11_6();
    OUTLINED_FUNCTION_6_10();
    sub_223200654();
    return (*(v47 + 8))(v38, v41);
  }
}

uint64_t sub_223155380()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058BE0, &qword_22320DAE8);
  OUTLINED_FUNCTION_4(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v5);
  v7 = v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058BD8, &qword_22320DAE0);
  OUTLINED_FUNCTION_4(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v11);
  v13 = v29 - v12;
  v31 = 0;
  v32 = 0xE000000000000000;
  sub_223200374();
  v14 = type metadata accessor for NLParseResponse(0);
  v30.receiver = v0;
  v30.super_class = v14;
  v15 = objc_msgSendSuper2(&v30, sel_description);
  v16 = sub_2232000C4();
  v18 = v17;

  MEMORY[0x223DD5AA0](v16, v18);

  MEMORY[0x223DD5AA0](0xD000000000000030, 0x8000000223223E30);
  sub_2231FFE44();
  sub_2232003C4();
  MEMORY[0x223DD5AA0](0xD000000000000013, 0x8000000223223E70);
  sub_2230D3008(&v1[OBJC_IVAR____TtC16SiriMessageTypes15NLParseResponse_fallbackParse], v13, &qword_27D058BD8, &qword_22320DAE0);
  v19 = sub_223200104();
  MEMORY[0x223DD5AA0](v19);

  MEMORY[0x223DD5AA0](0xD00000000000001ALL, 0x8000000223223E90);
  v20 = v1[OBJC_IVAR____TtC16SiriMessageTypes15NLParseResponse_serverFallbackReason];
  if (v20 == 7)
  {
    LOBYTE(v20) = 6;
  }

  LOBYTE(v29[0]) = v20;
  sub_2232003C4();
  MEMORY[0x223DD5AA0](2108478, 0xE300000000000000);
  v21 = v31;
  v22 = v32;
  v31 = 0;
  v32 = 0xE000000000000000;
  sub_223200374();
  MEMORY[0x223DD5AA0](0xD000000000000018, 0x8000000223223EB0);
  sub_2230D3008(&v1[OBJC_IVAR____TtC16SiriMessageTypes15NLParseResponse_languageVariantResult], v7, &qword_27D058BE0, &qword_22320DAE8);
  v23 = sub_223200104();
  MEMORY[0x223DD5AA0](v23);

  MEMORY[0x223DD5AA0](0xD00000000000001BLL, 0x8000000223223ED0);
  v24 = *&v1[OBJC_IVAR____TtC16SiriMessageTypes15NLParseResponse_responseVariantResult + 8];
  v29[0] = *&v1[OBJC_IVAR____TtC16SiriMessageTypes15NLParseResponse_responseVariantResult];
  v29[1] = v24;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057640, &qword_2232037A0);
  v25 = sub_223200104();
  MEMORY[0x223DD5AA0](v25);

  MEMORY[0x223DD5AA0](10558, 0xE200000000000000);
  v26 = v31;
  v27 = v32;
  v31 = v21;
  v32 = v22;

  MEMORY[0x223DD5AA0](v26, v27);

  return v31;
}

uint64_t NLParseResponse.Builder.userParses.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t NLParseResponse.Builder.serverFallbackReason.getter()
{
  result = OUTLINED_FUNCTION_25_1();
  *v0 = *(v1 + *(result + 28));
  return result;
}

uint64_t NLParseResponse.Builder.serverFallbackReason.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for NLParseResponse.Builder(0);
  *(v1 + *(result + 28)) = v2;
  return result;
}

uint64_t NLParseResponse.Builder.responseVariantResult.getter()
{
  v1 = (v0 + *(type metadata accessor for NLParseResponse.Builder(0) + 36));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_2_1();
}

uint64_t NLParseResponse.Builder.responseVariantResult.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for NLParseResponse.Builder(0) + 36));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

id NLParseResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NLParseResponse.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NLParseResponse(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_223155C40@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = NLParseResponse.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id sub_223155C90(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_2231FFD14();
    sub_22310A610(a1, a2);
  }

  v6 = [v2 initWithData_];

  return v6;
}

uint64_t sub_223155D04(uint64_t result)
{
  v2 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18);
  if (result + 1 > (v2 >> 1))
  {
    return MEMORY[0x2821FC280](v2 > 1);
  }

  return result;
}

unint64_t sub_223155D30()
{
  result = qword_280FCAC78;
  if (!qword_280FCAC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCAC78);
  }

  return result;
}

unint64_t sub_223155D84()
{
  result = qword_27D058BF8;
  if (!qword_27D058BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058BF8);
  }

  return result;
}

uint64_t sub_223155DD8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_223155E58()
{
  result = qword_27D058C18;
  if (!qword_27D058C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058C18);
  }

  return result;
}

void sub_223155EB4()
{
  v0 = sub_2231FFE44();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_22315633C(319, &qword_280FCE5D0, MEMORY[0x277D5DD80]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_22315633C(319, &qword_280FCE5E0, MEMORY[0x277D5DD70]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

_BYTE *storeEnumTagSinglePayload for NLParseResponse.NLResponseError(_BYTE *result, int a2, int a3)
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

void sub_223156180()
{
  sub_2231562D8();
  if (v0 <= 0x3F)
  {
    sub_22315633C(319, &qword_280FCE650, MEMORY[0x277D5DBC0]);
    if (v1 <= 0x3F)
    {
      sub_22315633C(319, &qword_280FCE5D0, MEMORY[0x277D5DD80]);
      if (v2 <= 0x3F)
      {
        sub_2230D525C(319, &qword_280FCA820);
        if (v3 <= 0x3F)
        {
          sub_22315633C(319, &qword_280FCE5E0, MEMORY[0x277D5DD70]);
          if (v4 <= 0x3F)
          {
            sub_2230D525C(319, &qword_280FCA4D8);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_2231562D8()
{
  if (!qword_280FCA4B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D058C20, &qword_22320DCC8);
    v0 = sub_2232002D4();
    if (!v1)
    {
      atomic_store(v0, &qword_280FCA4B0);
    }
  }
}

void sub_22315633C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2232002D4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for NLParseResponse.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_223156470()
{
  result = qword_27D058C28;
  if (!qword_27D058C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058C28);
  }

  return result;
}

unint64_t sub_2231564C8()
{
  result = qword_280FCAC68;
  if (!qword_280FCAC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCAC68);
  }

  return result;
}

unint64_t sub_223156520()
{
  result = qword_280FCAC70;
  if (!qword_280FCAC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCAC70);
  }

  return result;
}

uint64_t sub_223156574(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_25_1()
{

  return type metadata accessor for NLParseResponse.Builder(0);
}

BOOL sub_22315660C@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2230ECA10();
  *a2 = result;
  return result;
}

unint64_t sub_223156640@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2230ECA58();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_22315666C@<W0>(_BYTE *a1@<X8>)
{
  result = sub_2230ECA10();
  *a1 = result;
  return result;
}

uint64_t sub_223156698(uint64_t a1)
{
  v2 = sub_2231575CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231566D4(uint64_t a1)
{
  v2 = sub_2231575CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NLRepetitionMessage.NLRepetitionError.hashValue.getter()
{
  sub_223200744();
  MEMORY[0x223DD60B0](0);
  return sub_223200764();
}

void *NLRepetitionMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return NLRepetitionMessage.init(build:)(v1);
}

void *NLRepetitionMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v47 - v6;
  v8 = sub_2231FFDA4();
  v9 = OUTLINED_FUNCTION_9(v8);
  v49 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v50 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for NLRepetitionMessage.Builder(0);
  v15 = (v14 - 8);
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v18 = 15;
  *(v18 + 1) = 0;
  *(v18 + 2) = 0;
  v19 = v15[8];
  __swift_storeEnumTagSinglePayload(&v18[v19], 1, 1, v8);
  v20 = &v18[v15[9]];
  *v20 = 0;
  *(v20 + 1) = 0;
  v21 = &v18[v15[10]];
  *v21 = 0;
  *(v21 + 1) = 0;
  v22 = v15[11];
  *&v18[v22] = 0;
  a1(v18);
  v23 = *v18;
  if (v23 == 15)
  {
    goto LABEL_12;
  }

  v24 = *(v18 + 2);
  if (!v24)
  {
    goto LABEL_12;
  }

  v48 = *(v18 + 1);
  sub_2230D1480(&v18[v19], v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_2230D69D4(v7);
LABEL_12:
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v36 = sub_223200014();
    __swift_project_value_buffer(v36, qword_280FCE830);
    v37 = sub_223200004();
    v38 = sub_223200254();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v52 = v40;
      *v39 = 136446210;
      v41 = sub_2230F7898();
      v43 = sub_2231A5D38(v41, v42, &v52);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_2230CE000, v37, v38, "Could not build %{public}s: Builder has missing required fields", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x223DD6780](v40, -1, -1);
      MEMORY[0x223DD6780](v39, -1, -1);
    }

    sub_223156C90(v18);
    type metadata accessor for NLRepetitionMessage(0);
    v44 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
    v45 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v25 = v49;
  (*(v49 + 32))(v50, v7, v8);
  if (!*(v20 + 1) || !*(v21 + 1) || (v26 = *&v18[v22], v27 = v50, !v26))
  {
    (*(v25 + 8))(v50, v8);
    goto LABEL_12;
  }

  v28 = *v20;
  v29 = *v21;
  *(v2 + OBJC_IVAR____TtC16SiriMessageTypes19NLRepetitionMessage_repetitionResults) = v26;
  MEMORY[0x28223BE20](v26);
  *(&v47 - 64) = v23;
  *(&v47 - 7) = v48;
  *(&v47 - 6) = v24;
  *(&v47 - 5) = v27;
  *(&v47 - 4) = v30;
  *(&v47 - 3) = v31;
  *(&v47 - 2) = v32;
  *(&v47 - 1) = v33;

  v34 = ResultCandidateRequestMessageBase.init(build:)(sub_2231122E4);
  v35 = v34;
  sub_223156C90(v18);
  if (v34)
  {
  }

  (*(v49 + 8))(v27, v8);
  return v34;
}

uint64_t sub_223156C90(uint64_t a1)
{
  v2 = type metadata accessor for NLRepetitionMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *NLRepetitionMessage.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058C30, &unk_22320DE28);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231575CC();
  sub_223200794();
  if (v2)
  {
    v15 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for NLRepetitionMessage(0);
    v10 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
    v11 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057B10, &qword_2232063C0);
    sub_22311A5F0(&qword_27D057B18, sub_2230FB7A0);
    sub_223200554();
    sub_22315B74C();
    v14 = v13;

    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes19NLRepetitionMessage_repetitionResults) = v14;
    sub_2230F7158(a1, v18);
    v15 = ResultCandidateRequestMessageBase.init(from:)(v18);
    v16 = OUTLINED_FUNCTION_2();
    v17(v16);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v15;
}

uint64_t sub_223156FC4(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058C38, &qword_22320DE38);
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = v16 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231575CC();
  sub_2232007A4();
  v13 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes19NLRepetitionMessage_repetitionResults);
  sub_22315BBE4();
  v16[1] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057B10, &qword_2232063C0);
  sub_22311A5F0(&qword_280FCA4C8, sub_2230D7754);
  sub_223200654();
  if (v2)
  {
    (*(v7 + 8))(v11, v4);
  }

  else
  {

    sub_223190B78(a1);
    return (*(v7 + 8))(v11, v4);
  }
}

uint64_t NLRepetitionMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t NLRepetitionMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t NLRepetitionMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NLRepetitionMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t NLRepetitionMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_2_24() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t NLRepetitionMessage.Builder.requestId.getter()
{
  v1 = (v0 + *(type metadata accessor for NLRepetitionMessage.Builder(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t NLRepetitionMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for NLRepetitionMessage.Builder(0) + 28));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t NLRepetitionMessage.Builder.resultCandidateId.getter()
{
  v1 = (v0 + *(type metadata accessor for NLRepetitionMessage.Builder(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t NLRepetitionMessage.Builder.resultCandidateId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for NLRepetitionMessage.Builder(0) + 32));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t NLRepetitionMessage.Builder.repetitionResults.getter()
{
  v1 = *(v0 + *(type metadata accessor for NLRepetitionMessage.Builder(0) + 36));
}

uint64_t NLRepetitionMessage.Builder.repetitionResults.setter()
{
  v2 = *(OUTLINED_FUNCTION_2_24() + 36);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

id NLRepetitionMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NLRepetitionMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231575CC()
{
  result = qword_280FCE398;
  if (!qword_280FCE398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE398);
  }

  return result;
}

unint64_t sub_223157624()
{
  result = qword_27D058C40;
  if (!qword_27D058C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058C40);
  }

  return result;
}

uint64_t sub_2231576E4()
{
  sub_2230D525C(319, &qword_280FCB0A8);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_2230F6D30();
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_2231577DC();
        v1 = v7;
        if (v8 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

void sub_2231577DC()
{
  if (!qword_280FCA498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D058A08, &qword_22320D060);
    v0 = sub_2232002D4();
    if (!v1)
    {
      atomic_store(v0, &qword_280FCA498);
    }
  }
}

_BYTE *sub_223157840(_BYTE *result, int a2, int a3)
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

unint64_t sub_2231578F0()
{
  result = qword_27D058C48;
  if (!qword_27D058C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058C48);
  }

  return result;
}

unint64_t sub_223157948()
{
  result = qword_280FCE388;
  if (!qword_280FCE388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE388);
  }

  return result;
}

unint64_t sub_2231579A0()
{
  result = qword_280FCE390;
  if (!qword_280FCE390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE390);
  }

  return result;
}

uint64_t NLResultCandidateMessage.voiceIdClassification.getter()
{
  result = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes24NLResultCandidateMessage_voiceIdClassification);
  v2 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes24NLResultCandidateMessage_voiceIdClassification + 8);
  return result;
}

uint64_t sub_223157A4C()
{
  v0 = sub_223200464();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_223157AA0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_223107FC4();
}

uint64_t sub_223157AC4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_223157A4C();
  *a2 = result;
  return result;
}

uint64_t sub_223157AF4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2230ECBCC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_223157B28@<X0>(_BYTE *a1@<X8>)
{
  result = sub_223157A4C();
  *a1 = result;
  return result;
}

uint64_t sub_223157B50(uint64_t a1)
{
  v2 = sub_223159654();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223157B8C(uint64_t a1)
{
  v2 = sub_223159654();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NLResultCandidateMessage.NLResultCandidateError.hashValue.getter()
{
  sub_223200744();
  MEMORY[0x223DD60B0](0);
  return sub_223200764();
}

void *NLResultCandidateMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v3 = objc_allocWithZone(v1);
  return NLResultCandidateMessage.init(build:)(v2, v0);
}

void *NLResultCandidateMessage.init(build:)(void (*a1)(unsigned __int8 *), uint64_t a2)
{
  v116 = a2;
  v117 = a1;
  ObjectType = swift_getObjectType();
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058BE8, &qword_22320DAF0) - 8) + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v3);
  v108 = &v102 - v4;
  v5 = sub_2231FFE44();
  v6 = OUTLINED_FUNCTION_9(v5);
  v106 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_2();
  v109 = v11 - v10;
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0) - 8) + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v13);
  v15 = &v102 - v14;
  v16 = sub_2231FFDA4();
  v17 = OUTLINED_FUNCTION_9(v16);
  v112 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_2();
  v113 = v22 - v21;
  v23 = type metadata accessor for NLResultCandidateMessage.Builder(0);
  v24 = (v23 - 8);
  v25 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_2_2();
  v28 = (v27 - v26);
  *v28 = 15;
  *(v28 + 1) = 0;
  *(v28 + 2) = 0;
  v29 = v24[8];
  OUTLINED_FUNCTION_10_8();
  v114 = v16;
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v16);
  v33 = &v28[v24[9]];
  *v33 = 0;
  *(v33 + 1) = 0;
  v34 = &v28[v24[10]];
  *v34 = 0;
  *(v34 + 1) = 0;
  v35 = &v28[v24[11]];
  *v35 = 0;
  *(v35 + 1) = 0;
  v36 = v24[12];
  v110 = v5;
  v111 = v36;
  *&v28[v36] = 0;
  v107 = v24[13];
  OUTLINED_FUNCTION_10_8();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v5);
  v40 = &v28[v24[14]];
  *v40 = 0;
  v40[4] = 1;
  v41 = &v28[v24[15]];
  *v41 = 0;
  v41[8] = 1;
  v42 = v24[16];
  sub_2231FFE94();
  OUTLINED_FUNCTION_10_8();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v46);
  v47 = v24[17];
  sub_2231FFE84();
  OUTLINED_FUNCTION_10_8();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v51);
  v52 = &v28[v24[18]];
  *v52 = 0;
  *(v52 + 1) = 0;
  v117(v28);
  v53 = *v28;
  if (v53 != 15 && *(v28 + 2))
  {
    v117 = *(v28 + 2);
    v116 = *(v28 + 1);
    sub_2230D30B8(&v28[v29], v15, &qword_27D0575C0, &qword_2232035E0);
    v54 = v114;
    if (__swift_getEnumTagSinglePayload(v15, 1, v114) == 1)
    {
      sub_2230D4138(v15, &qword_27D0575C0, &qword_2232035E0);
    }

    else
    {
      v55 = v54;
      v57 = v112;
      v56 = v113;
      v58 = v15;
      v59 = v55;
      (*(v112 + 32))(v113, v58);
      if (*(v33 + 1))
      {
        v60 = *(v34 + 1);
        if (v60 && *(v35 + 1) && (v61 = *&v28[v111]) != 0)
        {
          v62 = *(v33 + 1);
          v111 = *(v35 + 1);
          v104 = *v33;
          v105 = v61;
          v63 = *v34;
          v64 = *v35;
          v65 = v108;
          sub_2230D30B8(&v28[v107], v108, &qword_27D058BE8, &qword_22320DAF0);
          v66 = v110;
          if (__swift_getEnumTagSinglePayload(v65, 1, v110) != 1)
          {
            v107 = v64;
            v81 = v106;
            v82 = *(v106 + 32);
            v103 = v63;
            v83 = v60;
            v84 = v109;
            v85 = v82(v109, v65, v66);
            ObjectType = &v102;
            v86 = v118;
            v87 = v118 + OBJC_IVAR____TtC16SiriMessageTypes24NLResultCandidateMessage_voiceIdScore;
            *v87 = *v40;
            v87[4] = v40[4];
            LOBYTE(v87) = v41[8];
            v88 = v86 + OBJC_IVAR____TtC16SiriMessageTypes24NLResultCandidateMessage_voiceIdClassification;
            *v88 = *v41;
            v88[8] = v87;
            MEMORY[0x28223BE20](v85);
            *(&v102 - 112) = v53;
            v89 = v117;
            *(&v102 - 13) = v116;
            *(&v102 - 12) = v89;
            v90 = v103;
            v91 = v104;
            *(&v102 - 11) = v113;
            *(&v102 - 10) = v91;
            *(&v102 - 9) = v62;
            *(&v102 - 8) = v90;
            v92 = v105;
            *(&v102 - 7) = v83;
            *(&v102 - 6) = v92;
            v93 = v107;
            *(&v102 - 5) = v84;
            *(&v102 - 4) = v93;
            *(&v102 - 3) = v111;
            *(&v102 - 2) = v28;

            NLResultCandidateMessageBase.init(build:)();
            v79 = v94;
            v95 = v94;

            if (v79)
            {

              v96 = *(v81 + 8);
              v97 = v95;
              v96(v109, v110);
              v98 = OUTLINED_FUNCTION_9_14();
              v99(v98);
              sub_223158440(v28);
            }

            else
            {
              (*(v81 + 8))(v109, v110);
              v100 = OUTLINED_FUNCTION_9_14();
              v101(v100);
              sub_223158440(v28);
            }

            return v79;
          }

          sub_2230D4138(v65, &qword_27D058BE8, &qword_22320DAF0);
          v67 = OUTLINED_FUNCTION_9_14();
          v68(v67);
        }

        else
        {
          (*(v57 + 8))(v113, v114);
        }
      }

      else
      {
        (*(v57 + 8))(v56, v59);
      }
    }
  }

  if (qword_280FCA778 != -1)
  {
    swift_once();
  }

  v69 = sub_223200014();
  __swift_project_value_buffer(v69, qword_280FCE830);
  v70 = sub_223200004();
  v71 = sub_223200254();
  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v119 = v73;
    *v72 = 136446210;
    v74 = sub_2230F7898();
    v76 = sub_2231A5D38(v74, v75, &v119);

    *(v72 + 4) = v76;
    _os_log_impl(&dword_2230CE000, v70, v71, "Could not build %{public}s: Builder has missing required fields", v72, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v73);
    MEMORY[0x223DD6780](v73, -1, -1);
    MEMORY[0x223DD6780](v72, -1, -1);
  }

  sub_223158440(v28);
  type metadata accessor for NLResultCandidateMessage(0);
  v77 = *((*MEMORY[0x277D85000] & *v118) + 0x30);
  v78 = *((*MEMORY[0x277D85000] & *v118) + 0x34);
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_223158440(uint64_t a1)
{
  v2 = type metadata accessor for NLResultCandidateMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2231584BC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *a1 = a2;
  v20 = *(a1 + 16);

  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  v21 = type metadata accessor for NLResultCandidateMessageBase.Builder(0);
  v22 = v21[6];
  sub_2230D4138(a1 + v22, &qword_27D0575C0, &qword_2232035E0);
  v23 = sub_2231FFDA4();
  (*(*(v23 - 8) + 16))(a1 + v22, a5, v23);
  __swift_storeEnumTagSinglePayload(a1 + v22, 0, 1, v23);
  v24 = (a1 + v21[7]);
  v25 = v24[1];

  *v24 = a6;
  v24[1] = a7;
  v26 = (a1 + v21[8]);
  v27 = v26[1];

  *v26 = a8;
  v26[1] = a9;
  v28 = v21[10];
  v29 = *(a1 + v28);

  *(a1 + v28) = a10;
  v30 = v21[11];
  sub_2230D4138(a1 + v30, &qword_27D058BE8, &qword_22320DAF0);
  v31 = sub_2231FFE44();
  (*(*(v31 - 8) + 16))(a1 + v30, a11, v31);
  __swift_storeEnumTagSinglePayload(a1 + v30, 0, 1, v31);
  v32 = (a1 + v21[9]);
  v33 = v32[1];

  *v32 = a12;
  v32[1] = a13;
  v34 = type metadata accessor for NLResultCandidateMessage.Builder(0);
  sub_223159CBC(a14 + v34[14], a1 + v21[12], &qword_27D058BD8, &qword_22320DAE0);
  sub_223159CBC(a14 + v34[15], a1 + v21[13], &qword_27D058BE0, &qword_22320DAE8);
  v35 = (a14 + v34[16]);
  v37 = *v35;
  v36 = v35[1];
  v38 = (a1 + v21[14]);
  v39 = v38[1];

  *v38 = v37;
  v38[1] = v36;
  return result;
}

void *NLResultCandidateMessage.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058C50, &qword_22320E0D0);
  OUTLINED_FUNCTION_9(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v8);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223159654();
  sub_223200794();
  if (v2)
  {
    v14 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for NLResultCandidateMessage(0);
    v15 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
    v16 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    OUTLINED_FUNCTION_0();
    v10 = sub_2232004D4();
    v11 = v1 + OBJC_IVAR____TtC16SiriMessageTypes24NLResultCandidateMessage_voiceIdScore;
    *v11 = v10;
    v11[4] = BYTE4(v10) & 1;
    LOBYTE(v22[0]) = 1;
    OUTLINED_FUNCTION_0();
    v12 = sub_2232004B4();
    v18 = v1 + OBJC_IVAR____TtC16SiriMessageTypes24NLResultCandidateMessage_voiceIdClassification;
    if (v13)
    {
      v19 = 0;
    }

    else
    {
      v19 = v12;
    }

    *v18 = v19;
    v18[8] = v13 & 1;
    sub_2230F7158(a1, v22);
    v14 = NLResultCandidateMessageBase.init(from:)(v22);
    v20 = OUTLINED_FUNCTION_2();
    v21(v20);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v14;
}

uint64_t sub_2231589C4(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058C58, &qword_22320E0D8);
  OUTLINED_FUNCTION_9(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223159654();
  sub_2232007A4();
  if ((*(v1 + OBJC_IVAR____TtC16SiriMessageTypes24NLResultCandidateMessage_voiceIdScore + 4) & 1) != 0 || (v13 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes24NLResultCandidateMessage_voiceIdScore), v17 = 0, sub_223200664(), !v2))
  {
    if ((*(v1 + OBJC_IVAR____TtC16SiriMessageTypes24NLResultCandidateMessage_voiceIdClassification + 8) & 1) != 0 || (v14 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes24NLResultCandidateMessage_voiceIdClassification), v18 = 1, sub_223200634(), !v2))
    {
      sub_22315B0F8(a1);
    }
  }

  return (*(v6 + 8))(v11, v4);
}

uint64_t sub_223158B74()
{
  v1 = v0;
  v11 = 0;
  v12 = 0xE000000000000000;
  sub_223200374();
  v10.receiver = v0;
  v10.super_class = type metadata accessor for NLResultCandidateMessage(0);
  v2 = objc_msgSendSuper2(&v10, sel_description);
  v3 = sub_2232000C4();
  v5 = v4;

  MEMORY[0x223DD5AA0](v3, v5);

  MEMORY[0x223DD5AA0](0xD000000000000011, 0x8000000223223FC0);
  if (!v1[OBJC_IVAR____TtC16SiriMessageTypes24NLResultCandidateMessage_voiceIdScore + 4])
  {
    v6 = *&v1[OBJC_IVAR____TtC16SiriMessageTypes24NLResultCandidateMessage_voiceIdScore];
  }

  v7 = sub_2232006A4();
  MEMORY[0x223DD5AA0](v7);

  MEMORY[0x223DD5AA0](0xD00000000000001BLL, 0x8000000223223FE0);
  if (!v1[OBJC_IVAR____TtC16SiriMessageTypes24NLResultCandidateMessage_voiceIdClassification + 8])
  {
    v8 = *&v1[OBJC_IVAR____TtC16SiriMessageTypes24NLResultCandidateMessage_voiceIdClassification];
  }

  type metadata accessor for AFUserIdentityClassfication();
  sub_2232003C4();
  MEMORY[0x223DD5AA0](62, 0xE100000000000000);
  return v11;
}

id sub_223158D18(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_2232000A4();

  return v5;
}

uint64_t NLResultCandidateMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t NLResultCandidateMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t NLResultCandidateMessage.Builder.requestId.getter()
{
  v0 = type metadata accessor for NLResultCandidateMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 28));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t NLResultCandidateMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = type metadata accessor for NLResultCandidateMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2(*(v3 + 28));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t NLResultCandidateMessage.Builder.resultCandidateId.getter()
{
  v0 = type metadata accessor for NLResultCandidateMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 32));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t NLResultCandidateMessage.Builder.resultCandidateId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = type metadata accessor for NLResultCandidateMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2(*(v3 + 32));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t NLResultCandidateMessage.Builder.userId.getter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_12_6() + 36));
  v3 = v2[1];
  *v0 = *v2;
  v0[1] = v3;
}

uint64_t NLResultCandidateMessage.Builder.userId.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = type metadata accessor for NLResultCandidateMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2(*(v4 + 36));
  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t NLResultCandidateMessage.Builder.userParses.getter()
{
  v1 = *(v0 + *(type metadata accessor for NLResultCandidateMessage.Builder(0) + 40));
}

uint64_t NLResultCandidateMessage.Builder.userParses.setter()
{
  v2 = *(OUTLINED_FUNCTION_4_21() + 40);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t NLResultCandidateMessage.Builder.voiceIdScore.setter()
{
  result = OUTLINED_FUNCTION_4_21();
  v3 = v1 + *(result + 48);
  *v3 = v0;
  *(v3 + 4) = BYTE4(v0) & 1;
  return result;
}

uint64_t NLResultCandidateMessage.Builder.voiceIdClassification.getter()
{
  v1 = (v0 + *(type metadata accessor for NLResultCandidateMessage.Builder(0) + 52));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t NLResultCandidateMessage.Builder.voiceIdClassification.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for NLResultCandidateMessage.Builder(0);
  v6 = v2 + *(result + 52);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t NLResultCandidateMessage.Builder.responseVariantResult.getter()
{
  v0 = type metadata accessor for NLResultCandidateMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 64));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t NLResultCandidateMessage.Builder.responseVariantResult.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = type metadata accessor for NLResultCandidateMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2(*(v3 + 64));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

id NLResultCandidateMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NLResultCandidateMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_223159654()
{
  result = qword_280FCD848;
  if (!qword_280FCD848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD848);
  }

  return result;
}

unint64_t sub_2231596AC()
{
  result = qword_27D058C60;
  if (!qword_27D058C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058C60);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NLResultCandidateMessage.NLResultCandidateError(_BYTE *result, int a2, int a3)
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

uint64_t sub_223159854()
{
  sub_2230D525C(319, &qword_280FCB0A8);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_223159A84(319, &qword_280FCE678, MEMORY[0x277CC95F0]);
      if (v6 > 0x3F)
      {
        return v5;
      }

      sub_2230D525C(319, &qword_280FCA740);
      if (v7 > 0x3F)
      {
        return v5;
      }

      sub_2231562D8();
      if (v8 > 0x3F)
      {
        return v5;
      }

      sub_223159A84(319, &qword_280FCE650, MEMORY[0x277D5DBC0]);
      if (v9 > 0x3F)
      {
        return v5;
      }

      sub_2230D525C(319, &qword_280FCA340);
      if (v10 > 0x3F)
      {
        return v5;
      }

      sub_223159A84(319, &qword_280FCA368, type metadata accessor for AFUserIdentityClassfication);
      if (v11 > 0x3F)
      {
        return v5;
      }

      sub_223159A84(319, &qword_280FCE5D0, MEMORY[0x277D5DD80]);
      if (v12 > 0x3F)
      {
        return v5;
      }

      sub_223159A84(319, &qword_280FCE5E0, MEMORY[0x277D5DD70]);
      if (v13 > 0x3F)
      {
        return v5;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

void sub_223159A84(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2232002D4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for NLResultCandidateMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_223159BB8()
{
  result = qword_27D058C68;
  if (!qword_27D058C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058C68);
  }

  return result;
}

unint64_t sub_223159C10()
{
  result = qword_280FCD838;
  if (!qword_280FCD838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD838);
  }

  return result;
}

unint64_t sub_223159C68()
{
  result = qword_280FCD840;
  if (!qword_280FCD840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD840);
  }

  return result;
}

uint64_t sub_223159CBC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_18_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_18(v5);
  v7 = *(v6 + 24);
  v8 = OUTLINED_FUNCTION_2_1();
  v9(v8);
  return v4;
}

uint64_t OUTLINED_FUNCTION_12_6()
{

  return type metadata accessor for NLResultCandidateMessage.Builder(0);
}

void NLResultCandidateMessageBase.init(build:)()
{
  OUTLINED_FUNCTION_42();
  v109 = v1;
  v110 = v0;
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058BE8, &qword_22320DAF0);
  OUTLINED_FUNCTION_9_13(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_3();
  v103 = v6;
  OUTLINED_FUNCTION_31_1();
  v7 = sub_2231FFE44();
  v8 = OUTLINED_FUNCTION_9(v7);
  v101 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_18();
  v100 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  OUTLINED_FUNCTION_9_13(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v16);
  v18 = &v92 - v17;
  v19 = sub_2231FFDA4();
  v20 = OUTLINED_FUNCTION_9(v19);
  v105 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1_18();
  v106 = v24;
  v25 = OUTLINED_FUNCTION_31_1();
  v26 = type metadata accessor for NLResultCandidateMessageBase.Builder(v25);
  v27 = (v26 - 8);
  v28 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_2_2();
  v31 = (v30 - v29);
  *v31 = 15;
  *(v31 + 1) = 0;
  *(v31 + 2) = 0;
  v32 = v27[8];
  OUTLINED_FUNCTION_10_8();
  v107 = v19;
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v19);
  v36 = &v31[v27[9]];
  *v36 = 0;
  *(v36 + 1) = 0;
  v37 = &v31[v27[10]];
  *v37 = 0;
  *(v37 + 1) = 0;
  v38 = &v31[v27[11]];
  *v38 = 0;
  *(v38 + 1) = 0;
  v39 = v27[12];
  *&v31[v39] = 0;
  v102 = v27[13];
  OUTLINED_FUNCTION_10_8();
  v104 = v7;
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v7);
  v43 = v27[14];
  sub_2231FFE94();
  v99 = v43;
  OUTLINED_FUNCTION_10_8();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v47);
  v48 = v27[15];
  sub_2231FFE84();
  v98 = v48;
  OUTLINED_FUNCTION_10_8();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v52);
  v53 = &v31[v27[16]];
  *v53 = 0;
  *(v53 + 1) = 0;
  v109(v31);
  if (*v31 == 15)
  {
    goto LABEL_15;
  }

  v54 = *(v31 + 2);
  if (!v54)
  {
    goto LABEL_15;
  }

  v97 = *v31;
  v109 = *(v31 + 1);
  sub_2230D3008(&v31[v32], v18, &qword_27D0575C0, &qword_2232035E0);
  v55 = v107;
  if (__swift_getEnumTagSinglePayload(v18, 1, v107) == 1)
  {
    sub_2230D40E0(v18, &qword_27D0575C0, &qword_2232035E0);
LABEL_15:
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v66 = sub_223200014();
    __swift_project_value_buffer(v66, qword_280FCE830);
    v67 = sub_223200004();
    v68 = sub_223200254();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v111[0] = v70;
      *v69 = 136446210;
      v71 = sub_2230F7898();
      v73 = sub_2231A5D38(v71, v72, v111);

      *(v69 + 4) = v73;
      _os_log_impl(&dword_2230CE000, v67, v68, "Could not build %{public}s: Builder has missing required fields", v69, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v70);
      MEMORY[0x223DD6780](v70, -1, -1);
      MEMORY[0x223DD6780](v69, -1, -1);
    }

    v74 = v110;
    sub_22315A4FC(v31);
    type metadata accessor for NLResultCandidateMessageBase(0);
    v75 = *((*MEMORY[0x277D85000] & *v74) + 0x30);
    v76 = *((*MEMORY[0x277D85000] & *v74) + 0x34);
    swift_deallocPartialClassInstance();
    goto LABEL_20;
  }

  v96 = v54;
  v56 = v105;
  v57 = v106;
  (*(v105 + 32))(v106, v18, v55);
  v58 = *(v36 + 1);
  if (!v58)
  {
    (*(v56 + 8))(v57, v55);
    goto LABEL_15;
  }

  v59 = v56;
  v60 = *(v37 + 1);
  if (!v60 || !*(v38 + 1))
  {
    (*(v59 + 8))(v106, v55);
    goto LABEL_15;
  }

  v61 = *&v31[v39];
  if (!v61)
  {
    (*(v59 + 8))(v106, v107);
    goto LABEL_15;
  }

  v94 = *(v38 + 1);
  v95 = v58;
  v62 = *v36;
  v93 = *v37;
  v63 = *v38;
  v64 = v103;
  sub_2230D3008(&v31[v102], v103, &qword_27D058BE8, &qword_22320DAF0);
  v65 = v104;
  if (__swift_getEnumTagSinglePayload(v64, 1, v104) == 1)
  {
    sub_2230D40E0(v64, &qword_27D058BE8, &qword_22320DAF0);
    (*(v59 + 8))(v106, v107);
    goto LABEL_15;
  }

  v92 = v62;
  v102 = v63;
  ObjectType = v60;
  v77 = v101;
  v78 = v100;
  (*(v101 + 32))();
  v79 = v110;
  *(v110 + OBJC_IVAR____TtC16SiriMessageTypes28NLResultCandidateMessageBase_userParses) = v61;
  v111[0] = MEMORY[0x277D84F90];
  v80 = *(v61 + 16);

  if (v80)
  {
    sub_22315BE6C(v61, v111);
  }

  v81 = v78;
  (*(v77 + 16))(v79 + OBJC_IVAR____TtC16SiriMessageTypes28NLResultCandidateMessageBase_responseStatusCode, v78, v65);
  sub_2230D3008(&v31[v99], v79 + OBJC_IVAR____TtC16SiriMessageTypes28NLResultCandidateMessageBase_fallbackParse, &qword_27D058BD8, &qword_22320DAE0);
  sub_2230D3008(&v31[v98], v79 + OBJC_IVAR____TtC16SiriMessageTypes28NLResultCandidateMessageBase_languageVariantResult, &qword_27D058BE0, &qword_22320DAE8);
  v82 = *(v53 + 1);
  v83 = (v79 + OBJC_IVAR____TtC16SiriMessageTypes28NLResultCandidateMessageBase_responseVariantResult);
  *v83 = *v53;
  v83[1] = v82;
  MEMORY[0x28223BE20](v82);
  *(&v92 - 80) = v97;
  v84 = v96;
  *(&v92 - 9) = v109;
  *(&v92 - 8) = v84;
  v85 = v106;
  v86 = v92;
  *(&v92 - 7) = v106;
  *(&v92 - 6) = v86;
  v87 = v93;
  *(&v92 - 5) = v95;
  *(&v92 - 4) = v87;
  v88 = v102;
  *(&v92 - 3) = ObjectType;
  *(&v92 - 2) = v88;
  *(&v92 - 1) = v94;

  v89 = UserIdAwareResultCandidateMessageBase.init(build:)(sub_22315D118);
  (*(v77 + 8))(v81, v65);
  v90 = v89;
  sub_22315A4FC(v31);
  if (v89)
  {

    v91 = v90;

    (*(v59 + 8))(v85, v107);
  }

  else
  {

    (*(v59 + 8))(v85, v107);
  }

LABEL_20:
  OUTLINED_FUNCTION_40();
}

{
  NLResultCandidateMessageBase.__allocating_init(build:)();
}

uint64_t sub_22315A4FC(uint64_t a1)
{
  v2 = type metadata accessor for NLResultCandidateMessageBase.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *NLResultCandidateMessageBase.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058BE0, &qword_22320DAE8);
  OUTLINED_FUNCTION_9_13(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_3();
  v114 = v7;
  OUTLINED_FUNCTION_31_1();
  v117 = sub_2231FFE84();
  v8 = OUTLINED_FUNCTION_9(v117);
  v111 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_18();
  v112 = v12;
  OUTLINED_FUNCTION_31_1();
  v13 = sub_2231FFFA4();
  v14 = OUTLINED_FUNCTION_9_13(v13);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v113 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v122 = &v109 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058BD8, &qword_22320DAE0);
  OUTLINED_FUNCTION_9_13(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_4_3();
  v118 = v24;
  OUTLINED_FUNCTION_31_1();
  v119 = sub_2231FFE94();
  v25 = OUTLINED_FUNCTION_9(v119);
  v116 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1_18();
  v115 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058BE8, &qword_22320DAF0);
  OUTLINED_FUNCTION_9_13(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v33);
  v35 = &v109 - v34;
  v36 = sub_2231FFE44();
  v37 = OUTLINED_FUNCTION_9(v36);
  v120 = v38;
  v121 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_2_2();
  v43 = v42 - v41;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058C70, &unk_22320E3D0);
  OUTLINED_FUNCTION_9(v44);
  v46 = v45;
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v49);
  v50 = a1[3];
  v51 = a1[4];
  v124 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v50);
  sub_22315D158();
  sub_223200794();
  v52 = qword_280FCDFA0 + 96;
  if (v1)
  {
    v53 = 0;
    OUTLINED_FUNCTION_4_22();
    v54 = v124;
  }

  else
  {
    v110 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057B10, &qword_2232063C0);
    v127 = 0;
    sub_22311A5F0(&qword_27D057B18, sub_2230FB7A0);
    OUTLINED_FUNCTION_28_2();
    sub_223200554();
    sub_22315B998();
    v50 = v55;

    *(v123 + OBJC_IVAR____TtC16SiriMessageTypes28NLResultCandidateMessageBase_userParses) = v50;
    LOBYTE(v125) = 1;
    OUTLINED_FUNCTION_28_2();
    sub_2232004B4();
    if ((v56 & 1) == 0)
    {
      v57 = v35;
      sub_2231FFE24();
      v43 = v121;
      if (__swift_getEnumTagSinglePayload(v35, 1, v121) != 1)
      {
        v65 = v120;
        v66 = v110;
        (*(v120 + 32))(v110, v57, v43);
        (*(v65 + 16))(v123 + OBJC_IVAR____TtC16SiriMessageTypes28NLResultCandidateMessageBase_responseStatusCode, v66, v43);
        v127 = 2;
        v67 = sub_2230FB7A0();
        OUTLINED_FUNCTION_36_1();
        OUTLINED_FUNCTION_28_2();
        sub_2232004C4();
        v109 = v67;
        if (v126 >> 60 == 15)
        {
          v68 = v123;
          OUTLINED_FUNCTION_10_8();
          v72 = v119;
        }

        else
        {
          OUTLINED_FUNCTION_15_5();
          v73 = OUTLINED_FUNCTION_33_1();
          sub_223110BA0(v73, v74);
          sub_2231FFF94();
          OUTLINED_FUNCTION_9_15();
          sub_22315D944(v75, v76);
          v77 = v118;
          OUTLINED_FUNCTION_33_1();
          v78 = v119;
          sub_2231FFFD4();
          v79 = OUTLINED_FUNCTION_33_1();
          sub_22310A610(v79, v80);
          OUTLINED_FUNCTION_17_2();
          __swift_storeEnumTagSinglePayload(v81, v82, v83, v78);
          v84 = v115;
          v85 = *(v116 + 32);
          v85(v115, v77, v78);
          v68 = v123;
          v85(v123 + OBJC_IVAR____TtC16SiriMessageTypes28NLResultCandidateMessageBase_fallbackParse, v84, v78);
          OUTLINED_FUNCTION_17_2();
          v72 = v78;
        }

        __swift_storeEnumTagSinglePayload(v69, v70, v71, v72);
        v127 = 3;
        OUTLINED_FUNCTION_36_1();
        OUTLINED_FUNCTION_28_2();
        sub_2232004C4();
        v86 = v120;
        v122 = v44;
        v87 = v126;
        v88 = v124;
        if (v126 >> 60 == 15)
        {
          OUTLINED_FUNCTION_10_8();
          __swift_storeEnumTagSinglePayload(v89, v90, v91, v117);
        }

        else
        {
          v92 = v125;
          OUTLINED_FUNCTION_15_5();
          sub_223110BA0(v92, v87);
          sub_2231FFF94();
          OUTLINED_FUNCTION_8_11();
          sub_22315D944(v93, v94);
          v95 = v114;
          v119 = v92;
          v96 = v117;
          sub_2231FFFD4();
          sub_22310A610(v119, v87);
          OUTLINED_FUNCTION_17_2();
          __swift_storeEnumTagSinglePayload(v97, v98, v99, v96);
          v100 = *(v111 + 32);
          v100(v112, v95, v96);
          v100(v68 + OBJC_IVAR____TtC16SiriMessageTypes28NLResultCandidateMessageBase_languageVariantResult, v112, v96);
          OUTLINED_FUNCTION_17_2();
          __swift_storeEnumTagSinglePayload(v101, v102, v103, v96);
          v86 = v120;
        }

        LOBYTE(v125) = 4;
        OUTLINED_FUNCTION_28_2();
        v104 = sub_223200494();
        v105 = (v68 + OBJC_IVAR____TtC16SiriMessageTypes28NLResultCandidateMessageBase_responseVariantResult);
        *v105 = v104;
        v105[1] = v106;
        sub_2230F7158(v88, &v125);
        v46 = UserIdAwareResultCandidateMessageBase.init(from:)(&v125);
        (*(v86 + 8))(v110, v121);
        v107 = OUTLINED_FUNCTION_37_0();
        v108(v107, v122);
        __swift_destroy_boxed_opaque_existential_1(v88);
        return v46;
      }

      sub_2230D40E0(v35, &qword_27D058BE8, &qword_22320DAF0);
    }

    sub_22315D1AC();
    swift_allocError();
    swift_willThrow();
    v58 = OUTLINED_FUNCTION_13_3();
    v59(v58);
    OUTLINED_FUNCTION_4_22();
    v53 = 1;
    v54 = v124;
    v52 = &qword_280FCDFA0[12];
  }

  __swift_destroy_boxed_opaque_existential_1(v54);
  if ((v43 & 1) == 0)
  {
    v60 = v123;
    if (v53)
    {
      v61 = *(v123 + v52[438]);
    }

    if (v50)
    {
      sub_2230D40E0(v60 + OBJC_IVAR____TtC16SiriMessageTypes28NLResultCandidateMessageBase_fallbackParse, &qword_27D058BD8, &qword_22320DAE0);
      if (!v46)
      {
        goto LABEL_16;
      }
    }

    else if (!v46)
    {
LABEL_16:
      type metadata accessor for NLResultCandidateMessageBase(0);
      v62 = *((*MEMORY[0x277D85000] & *v60) + 0x30);
      v63 = *((*MEMORY[0x277D85000] & *v60) + 0x34);
      swift_deallocPartialClassInstance();
      return v46;
    }

    sub_2230D40E0(v60 + OBJC_IVAR____TtC16SiriMessageTypes28NLResultCandidateMessageBase_languageVariantResult, &qword_27D058BE0, &qword_22320DAE8);
    goto LABEL_16;
  }

  return v46;
}

uint64_t sub_22315B0F8(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058BE0, &qword_22320DAE8);
  OUTLINED_FUNCTION_9_13(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_3();
  v52 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058BD8, &qword_22320DAE0);
  OUTLINED_FUNCTION_9_13(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v12);
  v14 = &v50 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058C80, &qword_22320E3E0);
  OUTLINED_FUNCTION_9(v15);
  v17 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_4_11();
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22315D158();
  v22 = v1;
  sub_2232007A4();
  v23 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes28NLResultCandidateMessageBase_userParses);
  OUTLINED_FUNCTION_22_3();
  sub_22315BC74();
  *&v54 = v24;
  v55 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057B10, &qword_2232063C0);
  sub_22311A5F0(&qword_280FCA4C8, sub_2230D7754);
  v25 = v53;
  sub_223200654();
  if (v25)
  {
    (*(v17 + 8))(v2, v15);
  }

  else
  {

    sub_2231FFE34();
    LOBYTE(v54) = 1;
    sub_223200634();
    v53 = v15;
    sub_2230D3008(v1 + OBJC_IVAR____TtC16SiriMessageTypes28NLResultCandidateMessageBase_fallbackParse, v14, &qword_27D058BD8, &qword_22320DAE0);
    v27 = sub_2231FFE94();
    v28 = v17;
    if (__swift_getEnumTagSinglePayload(v14, 1, v27) == 1)
    {
      sub_2230D40E0(v14, &qword_27D058BD8, &qword_22320DAE0);
      v29 = 0;
      v30 = 0xF000000000000000;
      v31 = a1;
    }

    else
    {
      OUTLINED_FUNCTION_9_15();
      sub_22315D944(v32, v33);
      v34 = v14;
      sub_2231FFFE4();
      v30 = v35;
      v31 = a1;
      OUTLINED_FUNCTION_5_0(v27);
      v38 = v37;
      (*(v36 + 8))(v34, v27);
      v29 = v38;
    }

    *&v54 = v29;
    *(&v54 + 1) = v30;
    v55 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058C08, &qword_22320DB10);
    sub_22315D200();
    OUTLINED_FUNCTION_21_4();
    sub_22310A610(v54, *(&v54 + 1));
    v39 = v52;
    sub_2230D3008(v22 + OBJC_IVAR____TtC16SiriMessageTypes28NLResultCandidateMessageBase_languageVariantResult, v52, &qword_27D058BE0, &qword_22320DAE8);
    v40 = sub_2231FFE84();
    if (__swift_getEnumTagSinglePayload(v39, 1, v40) == 1)
    {
      sub_2230D40E0(v39, &qword_27D058BE0, &qword_22320DAE8);
      v41 = 0;
      v42 = 0xF000000000000000;
    }

    else
    {
      v51 = v31;
      OUTLINED_FUNCTION_8_11();
      sub_22315D944(v43, v44);
      v45 = v40;
      sub_2231FFFE4();
      v42 = v46;
      OUTLINED_FUNCTION_5_0(v45);
      v49 = v48;
      (*(v47 + 8))(v39);
      v41 = v49;
      v31 = v51;
    }

    *&v54 = v41;
    *(&v54 + 1) = v42;
    v55 = 3;
    OUTLINED_FUNCTION_21_4();
    sub_22310A610(v54, *(&v54 + 1));
    v54 = *(v22 + OBJC_IVAR____TtC16SiriMessageTypes28NLResultCandidateMessageBase_responseVariantResult);
    v55 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057640, &qword_2232037A0);
    sub_2230F994C();
    sub_223200654();
    sub_2231EEBE4(v31);
    return (*(v28 + 8))(v2, v39);
  }
}

void NLResultCandidateMessageBase.__allocating_init(build:)()
{
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

{
  OUTLINED_FUNCTION_6_1();
  v1 = objc_allocWithZone(v0);
  NLResultCandidateMessageBase.init(build:)();
}

void sub_22315B74C()
{
  OUTLINED_FUNCTION_42();
  v3 = sub_2231FFFA4();
  v4 = OUTLINED_FUNCTION_9_13(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_2();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058C98, &unk_22320E6C0);
  OUTLINED_FUNCTION_9_13(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4_11();
  v11 = sub_2231FFE74();
  v12 = OUTLINED_FUNCTION_9(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_18();
  OUTLINED_FUNCTION_18_6(v15);
  v40 = MEMORY[0x277D84F90];
  for (i = v17; ; v17 = i)
  {
    v18 = (v17 + 16 * v1);
    v1 = v16 - v1;
    if (!v1)
    {
      break;
    }

    while (1)
    {
      v19 = v16;
      v21 = *(v18 - 1);
      v20 = *v18;
      OUTLINED_FUNCTION_15_5();
      sub_223110BA0(v21, v20);
      sub_2231FFF94();
      sub_22315D944(&qword_280FCE5F0, MEMORY[0x277D5DCA0]);
      OUTLINED_FUNCTION_20_5();
      if (!v0)
      {
        break;
      }

      OUTLINED_FUNCTION_10_8();
      __swift_storeEnumTagSinglePayload(v22, v23, v24, v11);
      sub_2230D40E0(v2, &qword_27D058C98, &unk_22320E6C0);
      OUTLINED_FUNCTION_29_2();
    }

    OUTLINED_FUNCTION_17_2();
    __swift_storeEnumTagSinglePayload(v25, v26, v27, v11);
    v28 = OUTLINED_FUNCTION_35_1();
    v18(v28);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v35 = OUTLINED_FUNCTION_12_7(isUniquelyReferenced_nonNull_native, v30, v31, v40);
      v40 = sub_22314C4A8(v35, v36, v37, v38);
    }

    OUTLINED_FUNCTION_34_1();
    if (v33)
    {
      v40 = sub_22314C4A8(v32 > 1, v20, 1, v40);
    }

    v34 = OUTLINED_FUNCTION_6_13();
    v18(v34);
    v16 = v19;
  }

  OUTLINED_FUNCTION_40();
}

void sub_22315B998()
{
  OUTLINED_FUNCTION_42();
  v3 = sub_2231FFFA4();
  v4 = OUTLINED_FUNCTION_9_13(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_2();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058CA0, &qword_2232194E0);
  OUTLINED_FUNCTION_9_13(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4_11();
  v11 = sub_2231FFE14();
  v12 = OUTLINED_FUNCTION_9(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_18();
  OUTLINED_FUNCTION_18_6(v15);
  v40 = MEMORY[0x277D84F90];
  for (i = v17; ; v17 = i)
  {
    v18 = (v17 + 16 * v1);
    v1 = v16 - v1;
    if (!v1)
    {
      break;
    }

    while (1)
    {
      v19 = v16;
      v21 = *(v18 - 1);
      v20 = *v18;
      OUTLINED_FUNCTION_15_5();
      sub_223110BA0(v21, v20);
      sub_2231FFF94();
      sub_22315D944(&qword_280FCE660, MEMORY[0x277D5DB08]);
      OUTLINED_FUNCTION_20_5();
      if (!v0)
      {
        break;
      }

      OUTLINED_FUNCTION_10_8();
      __swift_storeEnumTagSinglePayload(v22, v23, v24, v11);
      sub_2230D40E0(v2, &qword_27D058CA0, &qword_2232194E0);
      OUTLINED_FUNCTION_29_2();
    }

    OUTLINED_FUNCTION_17_2();
    __swift_storeEnumTagSinglePayload(v25, v26, v27, v11);
    v28 = OUTLINED_FUNCTION_35_1();
    v18(v28);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v35 = OUTLINED_FUNCTION_12_7(isUniquelyReferenced_nonNull_native, v30, v31, v40);
      v40 = sub_22314C5A8(v35, v36, v37, v38);
    }

    OUTLINED_FUNCTION_34_1();
    if (v33)
    {
      v40 = sub_22314C5A8(v32 > 1, v20, 1, v40);
    }

    v34 = OUTLINED_FUNCTION_6_13();
    v18(v34);
    v16 = v19;
  }

  OUTLINED_FUNCTION_40();
}

void sub_22315BC74()
{
  OUTLINED_FUNCTION_42();
  v1 = v0;
  v3 = v2;
  v39 = v4;
  v6 = v5;
  v8 = v7(0);
  OUTLINED_FUNCTION_9(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v11);
  v14 = v36 - v13;
  v15 = *(v6 + 16);
  if (v15)
  {
    v17 = *(v12 + 16);
    v16 = v12 + 16;
    v18 = v6 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
    v37 = *(v16 + 56);
    v38 = v17;
    v36[2] = v16 - 8;
    v40 = MEMORY[0x277D84F90];
    v36[0] = v3;
    v36[1] = v1;
    do
    {
      v19 = v16;
      v38(v14, v18, v8);
      sub_22315D944(v39, v3);
      v20 = sub_2231FFFE4();
      v22 = v21;
      v23 = OUTLINED_FUNCTION_39_0();
      v24(v23);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v32 = OUTLINED_FUNCTION_12_7(isUniquelyReferenced_nonNull_native, v26, v27, v40);
        v40 = sub_22314C6A8(v32, v33, v34, v35);
      }

      v29 = v40[2];
      v28 = v40[3];
      if (v29 >= v28 >> 1)
      {
        v40 = sub_22314C6A8(v28 > 1, v29 + 1, 1, v40);
      }

      v30 = v40;
      v40[2] = v29 + 1;
      v31 = &v30[2 * v29];
      v31[4] = v20;
      v31[5] = v22;
      v3 = v36[0];
      v18 += v37;
      --v15;
      v16 = v19;
    }

    while (v15);
  }

  else
  {
    v40 = MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_40();
}

void sub_22315BE6C(uint64_t a1, void *a2)
{
  v5 = 0;
  v6 = *(a1 + 16);
  do
  {
    if (v6 == v5)
    {
      break;
    }

    v7 = *(sub_2231FFE14() - 8);
    sub_22315C320(a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v5++, a2);
  }

  while (!v2);
}

uint64_t NLResultCandidateMessageBase.responseStatusCode.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16SiriMessageTypes28NLResultCandidateMessageBase_responseStatusCode;
  v4 = sub_2231FFE44();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

unint64_t sub_22315C04C(char a1)
{
  result = 0x7372615072657375;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0x6B6361626C6C6166;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22315C100(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_223107E8C();
}

uint64_t sub_22315C124@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2230ECF58();
  *a2 = result;
  return result;
}

unint64_t sub_22315C154@<X0>(unint64_t *a1@<X8>)
{
  result = sub_22315C04C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_22315C19C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2230ECF58();
  *a1 = result;
  return result;
}

uint64_t sub_22315C1C4(uint64_t a1)
{
  v2 = sub_22315D158();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22315C200(uint64_t a1)
{
  v2 = sub_22315D158();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NLResultCandidateMessageBase.NLResultCandidateError.hashValue.getter()
{
  sub_223200744();
  MEMORY[0x223DD60B0](0);
  return sub_223200764();
}

void sub_22315C320(uint64_t a1, void *a2)
{
  sub_2231FFE14();
  sub_22315D944(&qword_280FCE660, MEMORY[0x277D5DB08]);
  v4 = sub_2231FFFE4();
  if (v2)
  {
  }

  else
  {
    v10 = v4;
    v11 = v5;
    v12 = objc_allocWithZone(MEMORY[0x277D5DDE0]);
    if (sub_223155C90(v10, v11))
    {
      MEMORY[0x223DD5B10]();
      sub_223155D04(*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_223200214();
      return;
    }
  }

  if (qword_280FCA778 != -1)
  {
    swift_once();
  }

  v6 = sub_223200014();
  __swift_project_value_buffer(v6, qword_280FCE830);
  v7 = sub_223200004();
  v8 = sub_223200254();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2230CE000, v7, v8, "Could not convert from Swift to Obj-C?! Skipping this one", v9, 2u);
    MEMORY[0x223DD6780](v9, -1, -1);
  }
}

uint64_t sub_22315C4D4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *a1 = a2;
  v18 = *(a1 + 16);

  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  v19 = type metadata accessor for UserIdAwareResultCandidateMessageBase.Builder(0);
  v20 = v19[6];
  sub_2230D40E0(a1 + v20, &qword_27D0575C0, &qword_2232035E0);
  v21 = sub_2231FFDA4();
  (*(*(v21 - 8) + 16))(a1 + v20, a5, v21);
  __swift_storeEnumTagSinglePayload(a1 + v20, 0, 1, v21);
  v22 = (a1 + v19[7]);
  v23 = v22[1];

  *v22 = a6;
  v22[1] = a7;
  v24 = (a1 + v19[8]);
  v25 = v24[1];

  *v24 = a8;
  v24[1] = a9;
  v26 = (a1 + v19[9]);
  v27 = v26[1];

  *v26 = a10;
  v26[1] = a11;
  return result;
}

uint64_t sub_22315C6E8()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058BD8, &qword_22320DAE0);
  OUTLINED_FUNCTION_4(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_11();
  v14 = 0;
  v15 = 0xE000000000000000;
  sub_223200374();
  v13.receiver = v0;
  v13.super_class = type metadata accessor for NLResultCandidateMessageBase(0);
  v7 = objc_msgSendSuper2(&v13, sel_description);
  v8 = sub_2232000C4();
  v10 = v9;

  MEMORY[0x223DD5AA0](v8, v10);

  MEMORY[0x223DD5AA0](0xD000000000000030, 0x8000000223223E30);
  sub_2231FFE44();
  sub_2232003C4();
  MEMORY[0x223DD5AA0](0xD000000000000013, 0x8000000223223E70);
  sub_2230D3008(v2 + OBJC_IVAR____TtC16SiriMessageTypes28NLResultCandidateMessageBase_fallbackParse, v1, &qword_27D058BD8, &qword_22320DAE0);
  v11 = sub_223200104();
  MEMORY[0x223DD5AA0](v11);

  MEMORY[0x223DD5AA0](62, 0xE100000000000000);
  return v14;
}

uint64_t NLResultCandidateMessageBase.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t NLResultCandidateMessageBase.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t NLResultCandidateMessageBase.Builder.requestId.getter()
{
  v0 = type metadata accessor for NLResultCandidateMessageBase.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 28));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t NLResultCandidateMessageBase.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = type metadata accessor for NLResultCandidateMessageBase.Builder(0);
  result = OUTLINED_FUNCTION_10_2(*(v3 + 28));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t NLResultCandidateMessageBase.Builder.resultCandidateId.getter()
{
  v0 = type metadata accessor for NLResultCandidateMessageBase.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 32));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t NLResultCandidateMessageBase.Builder.resultCandidateId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = type metadata accessor for NLResultCandidateMessageBase.Builder(0);
  result = OUTLINED_FUNCTION_10_2(*(v3 + 32));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t NLResultCandidateMessageBase.Builder.userId.getter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_32_1() + 36));
  v3 = v2[1];
  *v0 = *v2;
  v0[1] = v3;
}

uint64_t NLResultCandidateMessageBase.Builder.userId.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = type metadata accessor for NLResultCandidateMessageBase.Builder(0);
  result = OUTLINED_FUNCTION_10_2(*(v4 + 36));
  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t NLResultCandidateMessageBase.Builder.userParses.getter()
{
  v1 = *(v0 + *(type metadata accessor for NLResultCandidateMessageBase.Builder(0) + 40));
}

uint64_t NLResultCandidateMessageBase.Builder.userParses.setter()
{
  v2 = *(OUTLINED_FUNCTION_23_2() + 40);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t NLResultCandidateMessageBase.Builder.responseVariantResult.getter()
{
  v0 = type metadata accessor for NLResultCandidateMessageBase.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 56));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t NLResultCandidateMessageBase.Builder.responseVariantResult.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = type metadata accessor for NLResultCandidateMessageBase.Builder(0);
  result = OUTLINED_FUNCTION_10_2(*(v3 + 56));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_22315CF54()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes28NLResultCandidateMessageBase_userParses);

  v2 = OBJC_IVAR____TtC16SiriMessageTypes28NLResultCandidateMessageBase_responseStatusCode;
  v3 = sub_2231FFE44();
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(v0 + v2);
  sub_2230D40E0(v0 + OBJC_IVAR____TtC16SiriMessageTypes28NLResultCandidateMessageBase_fallbackParse, &qword_27D058BD8, &qword_22320DAE0);
  sub_2230D40E0(v0 + OBJC_IVAR____TtC16SiriMessageTypes28NLResultCandidateMessageBase_languageVariantResult, &qword_27D058BE0, &qword_22320DAE8);
  v5 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes28NLResultCandidateMessageBase_responseVariantResult + 8);
}

id NLResultCandidateMessageBase.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NLResultCandidateMessageBase(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_22315D158()
{
  result = qword_280FCD760;
  if (!qword_280FCD760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD760);
  }

  return result;
}

unint64_t sub_22315D1AC()
{
  result = qword_27D058C78;
  if (!qword_27D058C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058C78);
  }

  return result;
}

unint64_t sub_22315D200()
{
  result = qword_280FCE698;
  if (!qword_280FCE698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D058C08, &qword_22320DB10);
    sub_2230D7754();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE698);
  }

  return result;
}

unint64_t sub_22315D288()
{
  result = qword_27D058C88;
  if (!qword_27D058C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058C88);
  }

  return result;
}

void sub_22315D2E4()
{
  v0 = sub_2231FFE44();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_22315D70C(319, &qword_280FCE5D0, MEMORY[0x277D5DD80]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_22315D70C(319, &qword_280FCE5E0, MEMORY[0x277D5DD70]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

_BYTE *storeEnumTagSinglePayload for NLResultCandidateMessageBase.NLResultCandidateError(_BYTE *result, int a2, int a3)
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

uint64_t sub_22315D538()
{
  sub_2230D525C(319, &qword_280FCB0A8);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_22315D70C(319, &qword_280FCE678, MEMORY[0x277CC95F0]);
      if (v6 > 0x3F)
      {
        return v5;
      }

      sub_2230D525C(319, &qword_280FCA740);
      if (v7 > 0x3F)
      {
        return v5;
      }

      sub_2231562D8();
      if (v8 > 0x3F)
      {
        return v5;
      }

      sub_22315D70C(319, &qword_280FCE650, MEMORY[0x277D5DBC0]);
      if (v9 > 0x3F)
      {
        return v5;
      }

      sub_22315D70C(319, &qword_280FCE5D0, MEMORY[0x277D5DD80]);
      if (v10 > 0x3F)
      {
        return v5;
      }

      sub_22315D70C(319, &qword_280FCE5E0, MEMORY[0x277D5DD70]);
      if (v11 > 0x3F)
      {
        return v5;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

void sub_22315D70C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2232002D4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for NLResultCandidateMessageBase.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_22315D840()
{
  result = qword_27D058C90;
  if (!qword_27D058C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058C90);
  }

  return result;
}

unint64_t sub_22315D898()
{
  result = qword_280FCD750;
  if (!qword_280FCD750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD750);
  }

  return result;
}

unint64_t sub_22315D8F0()
{
  result = qword_280FCD758;
  if (!qword_280FCD758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD758);
  }

  return result;
}

uint64_t sub_22315D944(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_20_5()
{

  return sub_2231FFFD4();
}

uint64_t OUTLINED_FUNCTION_21_4()
{
  v2 = *(v0 - 104);

  return sub_223200654();
}

uint64_t OUTLINED_FUNCTION_23_2()
{

  return type metadata accessor for NLResultCandidateMessageBase.Builder(0);
}

uint64_t OUTLINED_FUNCTION_32_1()
{

  return type metadata accessor for NLResultCandidateMessageBase.Builder(0);
}

uint64_t OUTLINED_FUNCTION_35_1()
{
  result = *(v0 - 152);
  v2 = **(v0 - 160);
  return result;
}

uint64_t OUTLINED_FUNCTION_43_0@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_2230D2E1C(v3, v4 + a3, a1, a2);
}

void *NLRouterIFSessionClientReadyMessage.init(from:)(uint64_t *a1)
{
  sub_2230F7158(a1, v4);
  v2 = SessionMessageBase.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

id NLRouterIFSessionClientReadyMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NLRouterIFSessionClientReadyMessage();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for NLRouterIFSessionClientReadyMessage()
{
  result = qword_27D058CA8;
  if (!qword_27D058CA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t NLRoutingDecisionMessage.routingDecision.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + OBJC_IVAR____TtC16SiriMessageTypes24NLRoutingDecisionMessage_routingDecision), 0x41uLL);
  memcpy(a1, (v1 + OBJC_IVAR____TtC16SiriMessageTypes24NLRoutingDecisionMessage_routingDecision), 0x41uLL);
  return sub_2230E6EA8(__dst, &v4);
}