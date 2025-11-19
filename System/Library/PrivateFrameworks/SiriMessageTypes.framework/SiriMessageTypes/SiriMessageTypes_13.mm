uint64_t TextBasedTRPCandidateForPlannerMessage.Builder.trpCandidateId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = type metadata accessor for TextBasedTRPCandidateForPlannerMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2(*(v3 + 32));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextBasedTRPCandidateForPlannerMessage.Builder.userId.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TextBasedTRPCandidateForPlannerMessage.Builder(0) + 36));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t TextBasedTRPCandidateForPlannerMessage.Builder.userId.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = type metadata accessor for TextBasedTRPCandidateForPlannerMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2(*(v4 + 36));
  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t TextBasedTRPCandidateForPlannerMessage.Builder.utterance.getter()
{
  v0 = type metadata accessor for TextBasedTRPCandidateForPlannerMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 40));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t TextBasedTRPCandidateForPlannerMessage.Builder.utterance.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = type metadata accessor for TextBasedTRPCandidateForPlannerMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2(*(v3 + 40));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_2231DE3AC(uint64_t a1)
{
  v2 = sub_2231DE4AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231DE3E8(uint64_t a1)
{
  v2 = sub_2231DE4AC();

  return MEMORY[0x2821FE720](a1, v2);
}

id TextBasedTRPCandidateForPlannerMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TextBasedTRPCandidateForPlannerMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231DE4AC()
{
  result = qword_280FCBE00;
  if (!qword_280FCBE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCBE00);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TextBasedTRPCandidateForPlannerMessage.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_2231DE650()
{
  result = qword_27D05A9E0;
  if (!qword_27D05A9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A9E0);
  }

  return result;
}

unint64_t sub_2231DE6A8()
{
  result = qword_280FCBDF0;
  if (!qword_280FCBDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCBDF0);
  }

  return result;
}

unint64_t sub_2231DE700()
{
  result = qword_280FCBDF8;
  if (!qword_280FCBDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCBDF8);
  }

  return result;
}

void *sub_2231DE764(void *a1, uint64_t a2)
{
  v79 = a2;
  v80 = a1;
  v4 = sub_2231FFC84();
  v5 = OUTLINED_FUNCTION_9(v4);
  v74 = v6;
  v75 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_2();
  v73 = v10 - v9;
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0) - 8) + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_16_15();
  v14 = OUTLINED_FUNCTION_9(v13);
  v76 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_2();
  v77 = v19 - v18;
  v20 = type metadata accessor for TextBasedTRPCandidateMessage.Builder(0);
  v21 = (v20 - 8);
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_10_21(v23);
  v24 = v21[8];
  v78 = v13;
  __swift_storeEnumTagSinglePayload(&v2[v24], 1, 1, v13);
  v25 = &v2[v21[9]];
  *v25 = 0;
  *(v25 + 1) = 0;
  v26 = &v2[v21[10]];
  *v26 = 0;
  *(v26 + 1) = 0;
  v27 = &v2[v21[11]];
  *v27 = 0;
  *(v27 + 1) = 0;
  v28 = &v2[v21[12]];
  *v28 = 0;
  *(v28 + 1) = 0;
  v29 = &v2[v21[13]];
  *v29 = 0;
  *(v29 + 1) = 0;
  v72 = v21[14];
  v2[v72] = 1;
  v30 = v21[15];
  v2[v30] = 1;
  sub_22319485C(v2, v79);
  if (*v2 == 15 || (v31 = *(v2 + 2)) == 0)
  {
    sub_2231DF2E8(v2);
    goto LABEL_6;
  }

  LODWORD(v79) = *v2;
  v71 = *(v2 + 1);
  sub_2230D1480(&v2[v24], v3);
  if (__swift_getEnumTagSinglePayload(v3, 1, v78) == 1)
  {
    sub_2231DF2E8(v2);
    sub_2230D69D4(v3);
LABEL_6:
    v32 = v80;
LABEL_7:
    type metadata accessor for TextBasedTRPCandidateMessage(0);
    v33 = *((*MEMORY[0x277D85000] & *v32) + 0x30);
    v34 = *((*MEMORY[0x277D85000] & *v32) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v70 = v31;
  (*(v76 + 32))(v77, v3, v78);
  v37 = *(v25 + 1);
  v32 = v80;
  if (!v37 || (v38 = *(v26 + 1)) == 0 || (v39 = *(v29 + 1)) == 0 || !*(v28 + 1))
  {
    sub_2231DF2E8(v2);
    (*(v76 + 8))(v77, v78);
    goto LABEL_7;
  }

  v68 = *(v28 + 1);
  v69 = v38;
  v40 = v37;
  v41 = *v26;
  v66 = *v25;
  v67 = v41;
  v42 = *v29;
  v43 = *v28;
  v81 = v42;
  v82 = v39;

  sub_2231FFC74();
  sub_2230D1D30();
  v44 = sub_2232002E4();
  v46 = v45;
  (*(v74 + 8))(v73, v75);
  v47 = HIBYTE(v46) & 0xF;
  if ((v46 & 0x2000000000000000) == 0)
  {
    v47 = v44 & 0xFFFFFFFFFFFFLL;
  }

  if (!v47)
  {

    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v52 = sub_223200014();
    __swift_project_value_buffer(v52, qword_280FCE830);
    v53 = sub_223200004();
    v54 = sub_223200254();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      OUTLINED_FUNCTION_17_12(&dword_2230CE000, v56, v57, "utterance is empty, can't create message");
      MEMORY[0x223DD6780](v55, -1, -1);
    }

    sub_2231DF2E8(v2);
    (*(v76 + 8))(v77, v78);
    goto LABEL_7;
  }

  v48 = (v80 + OBJC_IVAR____TtC16SiriMessageTypes28TextBasedTRPCandidateMessage_utterance);
  *v48 = v44;
  v48[1] = v46;
  v49 = *(v27 + 1);
  if (v49)
  {
    v50 = *v27;
    v51 = *(v27 + 1);
  }

  else
  {
    v50 = 0;
    v51 = 0xE000000000000000;
  }

  v58 = v77;
  v59 = (v32 + OBJC_IVAR____TtC16SiriMessageTypes28TextBasedTRPCandidateMessage_tcuId);
  *v59 = v50;
  v59[1] = v51;
  *(v32 + OBJC_IVAR____TtC16SiriMessageTypes28TextBasedTRPCandidateMessage_correctionOutcome) = v2[v72];
  *(v32 + OBJC_IVAR____TtC16SiriMessageTypes28TextBasedTRPCandidateMessage_correction) = v2[v30];
  MEMORY[0x28223BE20](v49);
  *(&v65 - 80) = v79;
  v60 = v70;
  *(&v65 - 9) = v71;
  *(&v65 - 8) = v60;
  v62 = v66;
  v61 = v67;
  *(&v65 - 7) = v58;
  *(&v65 - 6) = v62;
  *(&v65 - 5) = v40;
  *(&v65 - 4) = v61;
  v63 = v68;
  *(&v65 - 3) = v69;
  *(&v65 - 2) = v43;
  *(&v65 - 1) = v63;

  v35 = TRPCandidateRequestMessageBase.init(build:)(sub_2231E074C);

  v64 = v35;
  sub_2231DF2E8(v2);
  if (v35)
  {
  }

  (*(v76 + 8))(v58, v78);
  return v35;
}

void *TextBasedTRPCandidateMessage.init(build:)(void (*a1)(unsigned __int8 *), uint64_t a2)
{
  v81 = a1;
  v80 = a2;
  v4 = sub_2231FFC84();
  v5 = OUTLINED_FUNCTION_9(v4);
  v75 = v6;
  v76 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_2();
  v74 = v10 - v9;
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0) - 8) + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_16_15();
  v14 = OUTLINED_FUNCTION_9(v13);
  v77 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_2();
  v78 = v19 - v18;
  v20 = type metadata accessor for TextBasedTRPCandidateMessage.Builder(0);
  v21 = (v20 - 8);
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_10_21(v23);
  v24 = v21[8];
  v79 = v13;
  __swift_storeEnumTagSinglePayload(&v2[v24], 1, 1, v13);
  v25 = &v2[v21[9]];
  *v25 = 0;
  *(v25 + 1) = 0;
  v26 = &v2[v21[10]];
  *v26 = 0;
  *(v26 + 1) = 0;
  v27 = &v2[v21[11]];
  *v27 = 0;
  *(v27 + 1) = 0;
  v28 = &v2[v21[12]];
  *v28 = 0;
  *(v28 + 1) = 0;
  v29 = &v2[v21[13]];
  *v29 = 0;
  *(v29 + 1) = 0;
  v73 = v21[14];
  v2[v73] = 1;
  v30 = v21[15];
  v2[v30] = 1;
  v81(v2);
  if (*v2 == 15 || (v31 = *(v2 + 2)) == 0)
  {
    sub_2231DF2E8(v2);
    goto LABEL_6;
  }

  LODWORD(v80) = *v2;
  v81 = v31;
  v72 = *(v2 + 1);
  sub_2230D1480(&v2[v24], v3);
  if (__swift_getEnumTagSinglePayload(v3, 1, v79) == 1)
  {
    sub_2231DF2E8(v2);
    sub_2230D69D4(v3);
LABEL_6:
    v32 = v82;
LABEL_7:
    type metadata accessor for TextBasedTRPCandidateMessage(0);
    v33 = *((*MEMORY[0x277D85000] & *v32) + 0x30);
    v34 = *((*MEMORY[0x277D85000] & *v32) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v37 = v77;
  (*(v77 + 32))(v78, v3, v79);
  v38 = *(v25 + 1);
  if (!v38 || (v39 = *(v26 + 1)) == 0 || (v40 = *(v29 + 1)) == 0 || !*(v28 + 1))
  {
    sub_2231DF2E8(v2);
    (*(v77 + 8))(v78, v79);
    goto LABEL_6;
  }

  v70 = *(v28 + 1);
  v71 = v39;
  v41 = *v25;
  v42 = *v26;
  v43 = *v29;
  v68 = *v28;
  v69 = v41;
  v83 = v43;
  v84 = v40;

  sub_2231FFC74();
  sub_2230D1D30();
  v44 = sub_2232002E4();
  v46 = v45;
  (*(v75 + 8))(v74, v76);
  v47 = HIBYTE(v46) & 0xF;
  if ((v46 & 0x2000000000000000) == 0)
  {
    v47 = v44 & 0xFFFFFFFFFFFFLL;
  }

  if (!v47)
  {

    v32 = v82;
    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v54 = sub_223200014();
    __swift_project_value_buffer(v54, qword_280FCE830);
    v55 = sub_223200004();
    v56 = sub_223200254();
    v57 = v78;
    if (os_log_type_enabled(v55, v56))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      OUTLINED_FUNCTION_17_12(&dword_2230CE000, v59, v60, "utterance is empty, can't create message");
      MEMORY[0x223DD6780](v58, -1, -1);
    }

    sub_2231DF2E8(v2);
    (*(v37 + 8))(v57, v79);
    goto LABEL_7;
  }

  v48 = v44;
  v49 = v82;
  v50 = (v82 + OBJC_IVAR____TtC16SiriMessageTypes28TextBasedTRPCandidateMessage_utterance);
  *v50 = v48;
  v50[1] = v46;
  v51 = *(v27 + 1);
  if (v51)
  {
    v52 = *v27;
    v53 = *(v27 + 1);
  }

  else
  {
    v52 = 0;
    v53 = 0xE000000000000000;
  }

  v61 = v78;
  v62 = (v49 + OBJC_IVAR____TtC16SiriMessageTypes28TextBasedTRPCandidateMessage_tcuId);
  *v62 = v52;
  v62[1] = v53;
  *(v49 + OBJC_IVAR____TtC16SiriMessageTypes28TextBasedTRPCandidateMessage_correctionOutcome) = v2[v73];
  *(v49 + OBJC_IVAR____TtC16SiriMessageTypes28TextBasedTRPCandidateMessage_correction) = v2[v30];
  MEMORY[0x28223BE20](v51);
  *(&v67 - 80) = v80;
  v63 = v81;
  *(&v67 - 9) = v72;
  *(&v67 - 8) = v63;
  v64 = v69;
  *(&v67 - 7) = v61;
  *(&v67 - 6) = v64;
  *(&v67 - 5) = v38;
  *(&v67 - 4) = v42;
  v65 = v68;
  *(&v67 - 3) = v71;
  *(&v67 - 2) = v65;
  *(&v67 - 1) = v70;

  v35 = TRPCandidateRequestMessageBase.init(build:)(sub_2231DF950);

  v66 = v35;
  sub_2231DF2E8(v2);
  if (v35)
  {
  }

  (*(v37 + 8))(v61, v79);
  return v35;
}

uint64_t sub_2231DF2E8(uint64_t a1)
{
  v2 = type metadata accessor for TextBasedTRPCandidateMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *TextBasedTRPCandidateMessage.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A9E8, &qword_22321E198);
  OUTLINED_FUNCTION_9(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v8);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231E02FC();
  sub_223200794();
  if (v2)
  {
    v19 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for TextBasedTRPCandidateMessage(0);
    v11 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
    v12 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = OUTLINED_FUNCTION_5_2();
    v14 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes28TextBasedTRPCandidateMessage_utterance);
    *v14 = v10;
    v14[1] = v15;
    LOBYTE(v22[0]) = 1;
    v16 = OUTLINED_FUNCTION_5_2();
    v17 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes28TextBasedTRPCandidateMessage_tcuId);
    *v17 = v16;
    v17[1] = v18;
    sub_2231659CC();
    OUTLINED_FUNCTION_9_29();
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes28TextBasedTRPCandidateMessage_correctionOutcome) = v22[0];
    v23 = 3;
    sub_223164E50();
    OUTLINED_FUNCTION_9_29();
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes28TextBasedTRPCandidateMessage_correction) = v22[0];
    sub_2230F7158(a1, v22);
    v19 = TRPCandidateRequestMessageBase.init(from:)(v22);
    v20 = OUTLINED_FUNCTION_2();
    v21(v20);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v19;
}

uint64_t sub_2231DF660(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A9F0, &qword_22321E1A0);
  OUTLINED_FUNCTION_9(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231E02FC();
  sub_2232007A4();
  v13 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes28TextBasedTRPCandidateMessage_utterance);
  v14 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes28TextBasedTRPCandidateMessage_utterance + 8);
  v24 = 0;
  OUTLINED_FUNCTION_12_1();
  sub_2232005F4();
  if (!v2)
  {
    v15 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes28TextBasedTRPCandidateMessage_tcuId);
    v16 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes28TextBasedTRPCandidateMessage_tcuId + 8);
    v23 = 1;
    OUTLINED_FUNCTION_12_1();
    sub_2232005F4();
    v22 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes28TextBasedTRPCandidateMessage_correctionOutcome);
    v21 = 2;
    sub_223165978();
    OUTLINED_FUNCTION_12_1();
    sub_2232005E4();
    v20 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes28TextBasedTRPCandidateMessage_correction);
    v19 = 3;
    sub_223164DA8();
    OUTLINED_FUNCTION_12_1();
    sub_2232005E4();
    sub_2231E5494(a1);
  }

  return (*(v6 + 8))(v11, v4);
}

void *TextBasedTRPCandidateMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v3 = objc_allocWithZone(v1);
  return TextBasedTRPCandidateMessage.init(build:)(v2, v0);
}

uint64_t TextBasedTRPCandidateMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t TextBasedTRPCandidateMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t TextBasedTRPCandidateMessage.Builder.sessionId.getter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_18_15() + 24);

  return sub_2230D1480(v2, v0);
}

uint64_t TextBasedTRPCandidateMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_8_26() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t TextBasedTRPCandidateMessage.Builder.requestId.getter()
{
  v0 = type metadata accessor for TextBasedTRPCandidateMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 28));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t TextBasedTRPCandidateMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = type metadata accessor for TextBasedTRPCandidateMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2(*(v3 + 28));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextBasedTRPCandidateMessage.Builder.trpCandidateId.getter()
{
  v0 = type metadata accessor for TextBasedTRPCandidateMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 32));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t TextBasedTRPCandidateMessage.Builder.trpCandidateId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = type metadata accessor for TextBasedTRPCandidateMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2(*(v3 + 32));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextBasedTRPCandidateMessage.Builder.tcuId.getter()
{
  v0 = type metadata accessor for TextBasedTRPCandidateMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 36));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t TextBasedTRPCandidateMessage.Builder.tcuId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = type metadata accessor for TextBasedTRPCandidateMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2(*(v3 + 36));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextBasedTRPCandidateMessage.Builder.userId.getter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_18_15() + 40));
  v3 = v2[1];
  *v0 = *v2;
  v0[1] = v3;
}

uint64_t TextBasedTRPCandidateMessage.Builder.userId.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = type metadata accessor for TextBasedTRPCandidateMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2(*(v4 + 40));
  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t TextBasedTRPCandidateMessage.Builder.utterance.getter()
{
  v0 = type metadata accessor for TextBasedTRPCandidateMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 44));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t TextBasedTRPCandidateMessage.Builder.utterance.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = type metadata accessor for TextBasedTRPCandidateMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2(*(v3 + 44));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextBasedTRPCandidateMessage.Builder.correctionOutcome.getter()
{
  result = OUTLINED_FUNCTION_18_15();
  *v0 = *(v1 + *(result + 48));
  return result;
}

uint64_t TextBasedTRPCandidateMessage.Builder.correctionOutcome.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for TextBasedTRPCandidateMessage.Builder(0);
  *(v1 + *(result + 48)) = v2;
  return result;
}

uint64_t TextBasedTRPCandidateMessage.Builder.correction.getter()
{
  result = OUTLINED_FUNCTION_18_15();
  *v0 = *(v1 + *(result + 52));
  return result;
}

uint64_t TextBasedTRPCandidateMessage.Builder.correction.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for TextBasedTRPCandidateMessage.Builder(0);
  *(v1 + *(result + 52)) = v2;
  return result;
}

uint64_t sub_2231DFF88(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636E617265747475 && a2 == 0xE900000000000065;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6449756374 && a2 == 0xE500000000000000;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x80000002232241B0 == a2;
      if (v7 || (sub_2232006B4() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6974636572726F63 && a2 == 0xEA00000000006E6FLL)
      {

        return 3;
      }

      else
      {
        v9 = sub_2232006B4();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_2231E00F4(char a1)
{
  result = 0x636E617265747475;
  switch(a1)
  {
    case 1:
      result = 0x6449756374;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x6974636572726F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2231E0188@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231DFF88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2231E01B0(uint64_t a1)
{
  v2 = sub_2231E02FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231E01EC(uint64_t a1)
{
  v2 = sub_2231E02FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2231E0228()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes28TextBasedTRPCandidateMessage_utterance + 8);

  v2 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes28TextBasedTRPCandidateMessage_tcuId + 8);
}

id TextBasedTRPCandidateMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TextBasedTRPCandidateMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231E02FC()
{
  result = qword_280FCCA00;
  if (!qword_280FCCA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCCA00);
  }

  return result;
}

uint64_t sub_2231E0400()
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

      sub_2230D525C(319, &qword_280FCA740);
      if (v7 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_2230D525C(319, &qword_280FCD5C0);
        v1 = v8;
        if (v9 <= 0x3F)
        {
          sub_2230D525C(319, &qword_280FCD538);
          v1 = v10;
          if (v11 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v1;
}

_BYTE *storeEnumTagSinglePayload for TextBasedTRPCandidateMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2231E0638()
{
  result = qword_27D05A9F8;
  if (!qword_27D05A9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A9F8);
  }

  return result;
}

unint64_t sub_2231E0690()
{
  result = qword_280FCC9F0;
  if (!qword_280FCC9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCC9F0);
  }

  return result;
}

unint64_t sub_2231E06E8()
{
  result = qword_280FCC9F8;
  if (!qword_280FCC9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCC9F8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_16_15()
{

  return sub_2231FFDA4();
}

double TextRequestType.TapToEditRequest.init(build:)@<D0>(void (*a1)(__int128 *)@<X0>, _OWORD *a2@<X8>)
{
  v4 = 0uLL;
  a1(&v4);
  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t TextRequestType.TapToEditRequest.Builder.previousUtterance.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t TextRequestType.TapToEditRequest.Builder.previousUtterance.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t static TextRequestType.TapToEditRequest.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_2232006B4() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_2231E089C(uint64_t a1)
{
  v2 = sub_2231E0A28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231E08D8(uint64_t a1)
{
  v2 = sub_2231E0A28();

  return MEMORY[0x2821FE720](a1, v2);
}

void TextRequestType.TapToEditRequest.encode(to:)()
{
  OUTLINED_FUNCTION_8_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AA00, &qword_22321E360);
  OUTLINED_FUNCTION_9(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_11();
  v10 = *v0;
  v11 = v0[1];
  v12 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_2231E0A28();
  sub_2232007A4();
  sub_2232005C4();
  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_9_0();
}

unint64_t sub_2231E0A28()
{
  result = qword_27D05AA08;
  if (!qword_27D05AA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AA08);
  }

  return result;
}

void TextRequestType.TapToEditRequest.init(from:)()
{
  OUTLINED_FUNCTION_8_1();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AA10, &qword_22321E368);
  OUTLINED_FUNCTION_9(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_11();
  v12 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_2231E0A28();
  sub_223200794();
  if (!v0)
  {
    v13 = sub_223200494();
    v15 = v14;
    (*(v8 + 8))(v1, v6);
    *v5 = v13;
    v5[1] = v15;
  }

  __swift_destroy_boxed_opaque_existential_1(v3);
  OUTLINED_FUNCTION_9_0();
}

BOOL static TextRequestType.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v3 != 1)
  {
    if (v5 == 1)
    {
      goto LABEL_5;
    }

    if (v3)
    {
      if (!v5)
      {
        goto LABEL_5;
      }

      v16 = *a1;
      if (v2 != v4 || v3 != v5)
      {
        v18 = sub_2232006B4();
        v19 = OUTLINED_FUNCTION_6_29();
        sub_2230D7C34(v19, v20);
        v21 = OUTLINED_FUNCTION_2_47();
        sub_2230D7C34(v21, v22);
        v23 = OUTLINED_FUNCTION_2_47();
        sub_2230D7BB4(v23, v24);
        v25 = OUTLINED_FUNCTION_6_29();
        sub_2230D7BB4(v25, v26);
        return (v18 & 1) != 0;
      }

      sub_2230D7C34(v16, v3);
      v27 = OUTLINED_FUNCTION_2_47();
      sub_2230D7C34(v27, v28);
      v29 = OUTLINED_FUNCTION_2_47();
      sub_2230D7BB4(v29, v30);
      v31 = OUTLINED_FUNCTION_2_47();
    }

    else
    {
      if (v5)
      {
        goto LABEL_5;
      }

      sub_2230D7C34(*a2, 0);
      sub_2230D7C34(v2, 0);
      sub_2230D7BB4(v2, 0);
      v31 = v4;
      v32 = 0;
    }

    sub_2230D7BB4(v31, v32);
    return 1;
  }

  if (v5 != 1)
  {
LABEL_5:
    v7 = OUTLINED_FUNCTION_6_29();
    sub_2230D7C34(v7, v8);
    v9 = OUTLINED_FUNCTION_2_47();
    sub_2230D7C34(v9, v10);
    v11 = OUTLINED_FUNCTION_2_47();
    sub_2230D7BB4(v11, v12);
    v13 = OUTLINED_FUNCTION_6_29();
    sub_2230D7BB4(v13, v14);
    return 0;
  }

  v6 = 1;
  sub_2230D7BB4(*a1, 1);
  sub_2230D7BB4(v4, 1);
  return v6;
}

uint64_t sub_2231E0D48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69536F5465707974 && a2 == 0xEA00000000006972;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6964456F54706174 && a2 == 0xE900000000000074)
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

uint64_t sub_2231E0E20(char a1)
{
  if (a1)
  {
    return 0x6964456F54706174;
  }

  else
  {
    return 0x69536F5465707974;
  }
}

uint64_t sub_2231E0E68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231E0D48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2231E0E90(uint64_t a1)
{
  v2 = sub_2231E12A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231E0ECC(uint64_t a1)
{
  v2 = sub_2231E12A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2231E0F08(uint64_t a1)
{
  v2 = sub_2231E12F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231E0F44(uint64_t a1)
{
  v2 = sub_2231E12F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2231E0F80(uint64_t a1)
{
  v2 = sub_2231E139C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231E0FBC(uint64_t a1)
{
  v2 = sub_2231E139C();

  return MEMORY[0x2821FE720](a1, v2);
}

void TextRequestType.encode(to:)()
{
  OUTLINED_FUNCTION_8_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AA18, &qword_22321E370);
  v4 = OUTLINED_FUNCTION_9(v3);
  v33 = v5;
  v34 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v8);
  v32 = &v29 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AA20, &qword_22321E378);
  v11 = OUTLINED_FUNCTION_9(v10);
  v30 = v12;
  v31 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v15);
  v17 = &v29 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AA28, &qword_22321E380);
  OUTLINED_FUNCTION_9(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v21);
  v22 = v0[1];
  v29 = *v0;
  v23 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2231E12A0();
  sub_2232007A4();
  if (v22 == 1)
  {
    LOBYTE(v35) = 0;
    sub_2231E139C();
    OUTLINED_FUNCTION_10_22();
    (*(v30 + 8))(v17, v31);
  }

  else
  {
    LOBYTE(v35) = 1;
    sub_2231E12F4();
    v26 = v32;
    OUTLINED_FUNCTION_10_22();
    v35 = v29;
    v36 = v22;
    sub_2231E1348();
    v27 = v34;
    sub_223200654();
    OUTLINED_FUNCTION_4_44();
    v28(v26, v27);
  }

  v24 = OUTLINED_FUNCTION_7_33();
  v25(v24, v18);
  OUTLINED_FUNCTION_9_0();
}

unint64_t sub_2231E12A0()
{
  result = qword_280FCAB88;
  if (!qword_280FCAB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCAB88);
  }

  return result;
}

unint64_t sub_2231E12F4()
{
  result = qword_27D05AA30;
  if (!qword_27D05AA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AA30);
  }

  return result;
}

unint64_t sub_2231E1348()
{
  result = qword_27D05AA38;
  if (!qword_27D05AA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AA38);
  }

  return result;
}

unint64_t sub_2231E139C()
{
  result = qword_280FCABA0;
  if (!qword_280FCABA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCABA0);
  }

  return result;
}

void TextRequestType.init(from:)()
{
  OUTLINED_FUNCTION_8_1();
  v3 = v2;
  v52 = v4;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AA40, &qword_22321E388);
  OUTLINED_FUNCTION_9(v55);
  v53 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_11();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AA48, &qword_22321E390);
  OUTLINED_FUNCTION_9(v9);
  v51 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v13);
  v15 = &v46[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AA50, &unk_22321E398);
  OUTLINED_FUNCTION_9(v16);
  v54 = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v20);
  v22 = &v46[-v21];
  v23 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_2231E12A0();
  sub_223200794();
  if (v0)
  {
    goto LABEL_8;
  }

  v48 = v9;
  v49 = v15;
  v50 = v1;
  v24 = v55;
  v25 = sub_223200594();
  sub_2230E0B80(v25, 0);
  if (v27 == v28 >> 1)
  {
LABEL_7:
    v34 = sub_2232003A4();
    swift_allocError();
    v36 = v35;
    v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057788, &qword_223203DF0) + 48);
    *v36 = &type metadata for TextRequestType;
    sub_223200484();
    sub_223200394();
    (*(*(v34 - 8) + 104))(v36, *MEMORY[0x277D84160], v34);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_4_44();
    v38(v22, v16);
LABEL_8:
    v39 = v3;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v39);
    OUTLINED_FUNCTION_9_0();
    return;
  }

  if (v27 < (v28 >> 1))
  {
    v47 = *(v26 + v27);
    sub_2230E0B40(v27 + 1);
    v30 = v29;
    v32 = v31;
    swift_unknownObjectRelease();
    if (v30 == v32 >> 1)
    {
      if (v47)
      {
        LOBYTE(v56) = 1;
        sub_2231E12F4();
        sub_223200474();
        v33 = v52;
        sub_2231E1950();
        sub_223200554();
        v41 = v54;
        swift_unknownObjectRelease();
        v43 = OUTLINED_FUNCTION_7_33();
        v44(v43, v24);
        (*(v41 + 8))(v22, v16);
        v45 = v56;
      }

      else
      {
        LOBYTE(v56) = 0;
        sub_2231E139C();
        v40 = v49;
        sub_223200474();
        v33 = v52;
        swift_unknownObjectRelease();
        (*(v51 + 8))(v40, v48);
        OUTLINED_FUNCTION_4_44();
        v42(v22, v16);
        v45 = xmmword_223211C20;
      }

      *v33 = v45;
      v39 = v3;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

unint64_t sub_2231E1950()
{
  result = qword_27D05AA58;
  if (!qword_27D05AA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AA58);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16SiriMessageTypes15TextRequestTypeO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void *sub_2231E19C8(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TextRequestType.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_2231E1B08(_BYTE *result, int a2, int a3)
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

unint64_t sub_2231E1BB8()
{
  result = qword_27D05AA60;
  if (!qword_27D05AA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AA60);
  }

  return result;
}

unint64_t sub_2231E1C10()
{
  result = qword_27D05AA68;
  if (!qword_27D05AA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AA68);
  }

  return result;
}

unint64_t sub_2231E1C68()
{
  result = qword_27D05AA70;
  if (!qword_27D05AA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AA70);
  }

  return result;
}

unint64_t sub_2231E1CC0()
{
  result = qword_280FCAB90;
  if (!qword_280FCAB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCAB90);
  }

  return result;
}

unint64_t sub_2231E1D18()
{
  result = qword_280FCAB98;
  if (!qword_280FCAB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCAB98);
  }

  return result;
}

unint64_t sub_2231E1D70()
{
  result = qword_280FCAB68;
  if (!qword_280FCAB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCAB68);
  }

  return result;
}

unint64_t sub_2231E1DC8()
{
  result = qword_280FCAB70;
  if (!qword_280FCAB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCAB70);
  }

  return result;
}

unint64_t sub_2231E1E20()
{
  result = qword_280FCAB78;
  if (!qword_280FCAB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCAB78);
  }

  return result;
}

unint64_t sub_2231E1E78()
{
  result = qword_280FCAB80;
  if (!qword_280FCAB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCAB80);
  }

  return result;
}

unint64_t sub_2231E1ED0()
{
  result = qword_27D05AA78;
  if (!qword_27D05AA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AA78);
  }

  return result;
}

unint64_t sub_2231E1F28()
{
  result = qword_27D05AA80;
  if (!qword_27D05AA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AA80);
  }

  return result;
}

void *TRPCandidateForPlannerMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return TRPCandidateForPlannerMessage.init(build:)(v1);
}

void *TRPCandidateForPlannerMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v55 = v1;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v49 - v5;
  v7 = sub_2231FFDA4();
  v53 = *(v7 - 8);
  v8 = *(v53 + 64);
  MEMORY[0x28223BE20](v7);
  v52 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TRPCandidateForPlannerMessage.Builder(0);
  v11 = (v10 - 8);
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v14 = 15;
  *(v14 + 1) = 0;
  *(v14 + 2) = 0;
  v15 = v11[8];
  __swift_storeEnumTagSinglePayload(&v14[v15], 1, 1, v7);
  v16 = &v14[v11[9]];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = &v14[v11[10]];
  *v17 = 0;
  *(v17 + 1) = 0;
  v18 = &v14[v11[11]];
  *v18 = 0;
  *(v18 + 1) = 0;
  v19 = v11[12];
  *&v14[v19] = 0;
  a1(v14);
  v20 = *v14;
  if (v20 == 15)
  {
    goto LABEL_13;
  }

  v21 = *(v14 + 2);
  if (!v21)
  {
    goto LABEL_13;
  }

  v51 = *(v14 + 1);
  sub_2230D1480(&v14[v15], v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_2230D69D4(v6);
LABEL_13:
    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v38 = sub_223200014();
    __swift_project_value_buffer(v38, qword_280FCE830);
    v39 = sub_223200004();
    v40 = sub_223200254();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v56 = v42;
      *v41 = 136446210;
      v43 = sub_2230F7898();
      v45 = sub_2231A5D38(v43, v44, &v56);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_2230CE000, v39, v40, "Could not build %{public}s: Builder has missing required fields", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x223DD6780](v42, -1, -1);
      MEMORY[0x223DD6780](v41, -1, -1);
    }

    sub_2231E2490(v14);
    type metadata accessor for TRPCandidateForPlannerMessage(0);
    v46 = *((*MEMORY[0x277D85000] & *v55) + 0x30);
    v47 = *((*MEMORY[0x277D85000] & *v55) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v50 = v21;
  v23 = v52;
  v22 = v53;
  (*(v53 + 32))(v52, v6, v7);
  if (!*(v16 + 1) || !*(v17 + 1) || !*(v18 + 1) || (v24 = *&v14[v19]) == 0)
  {
    (*(v22 + 8))(v23, v7);
    goto LABEL_13;
  }

  v25 = *v16;
  v26 = *v17;
  v27 = *v18;
  v28 = v23;
  *(v55 + OBJC_IVAR____TtC16SiriMessageTypes29TRPCandidateForPlannerMessage_tcuToContextList) = v24;
  MEMORY[0x28223BE20](v24);
  *(&v49 - 80) = v20;
  v29 = v50;
  *(&v49 - 9) = v51;
  *(&v49 - 8) = v29;
  *(&v49 - 7) = v23;
  *(&v49 - 6) = v30;
  *(&v49 - 5) = v32;
  *(&v49 - 4) = v31;
  *(&v49 - 3) = v33;
  *(&v49 - 2) = v34;
  *(&v49 - 1) = v35;

  v36 = TRPCandidateRequestMessageBase.init(build:)(sub_223113ED4);
  v37 = v36;
  sub_2231E2490(v14);
  if (v36)
  {
  }

  (*(v53 + 8))(v28, v7);
  return v36;
}

uint64_t sub_2231E2490(uint64_t a1)
{
  v2 = type metadata accessor for TRPCandidateForPlannerMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *TRPCandidateForPlannerMessage.init(from:)(uint64_t *a1)
{
  v2 = v1;
  if (qword_280FCA778 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v4 = sub_223200014();
  __swift_project_value_buffer(v4, qword_280FCE830);
  v5 = sub_223200004();
  v6 = sub_223200254();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2230CE000, v5, v6, "Error: Attempted to serialize an instance of TRPCandidateRequestMessage, which is not currently codable. Conversation Session State will be empty.", v7, 2u);
    MEMORY[0x223DD6780](v7, -1, -1);
  }

  *(v2 + OBJC_IVAR____TtC16SiriMessageTypes29TRPCandidateForPlannerMessage_tcuToContextList) = MEMORY[0x277D84F90];
  sub_2230F7158(a1, v10);
  v8 = TRPCandidateRequestMessageBase.init(from:)(v10);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

uint64_t sub_2231E26E8()
{
  v10 = 0;
  v11 = 0xE000000000000000;
  sub_223200374();
  v9.receiver = v0;
  v9.super_class = type metadata accessor for TRPCandidateForPlannerMessage(0);
  v1 = objc_msgSendSuper2(&v9, sel_description);
  v2 = sub_2232000C4();
  v4 = v3;

  v10 = v2;
  v11 = v4;
  MEMORY[0x223DD5AA0](0xD000000000000015, 0x80000002232252D0);
  v5 = *&v0[OBJC_IVAR____TtC16SiriMessageTypes29TRPCandidateForPlannerMessage_tcuToContextList];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059EF8, &qword_223217808);
  v7 = MEMORY[0x223DD5B40](v5, v6);
  MEMORY[0x223DD5AA0](v7);

  MEMORY[0x223DD5AA0](62, 0xE100000000000000);
  return v10;
}

uint64_t TRPCandidateForPlannerMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t TRPCandidateForPlannerMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t TRPCandidateForPlannerMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TRPCandidateForPlannerMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t TRPCandidateForPlannerMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_2_48() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t TRPCandidateForPlannerMessage.Builder.requestId.getter()
{
  v1 = (v0 + *(type metadata accessor for TRPCandidateForPlannerMessage.Builder(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t TRPCandidateForPlannerMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for TRPCandidateForPlannerMessage.Builder(0) + 28));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t TRPCandidateForPlannerMessage.Builder.userId.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TRPCandidateForPlannerMessage.Builder(0) + 32));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t TRPCandidateForPlannerMessage.Builder.userId.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for TRPCandidateForPlannerMessage.Builder(0) + 32));
  v5 = v4[1];

  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t TRPCandidateForPlannerMessage.Builder.trpCandidateId.getter()
{
  v1 = (v0 + *(type metadata accessor for TRPCandidateForPlannerMessage.Builder(0) + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t TRPCandidateForPlannerMessage.Builder.trpCandidateId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for TRPCandidateForPlannerMessage.Builder(0) + 36));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t TRPCandidateForPlannerMessage.Builder.tcuToContextList.getter()
{
  v1 = *(v0 + *(type metadata accessor for TRPCandidateForPlannerMessage.Builder(0) + 40));
}

uint64_t TRPCandidateForPlannerMessage.Builder.tcuToContextList.setter()
{
  v2 = *(OUTLINED_FUNCTION_2_48() + 40);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

id TRPCandidateForPlannerMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TRPCandidateForPlannerMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2231E2D78(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6449707274 && a2 == 0xE500000000000000)
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

uint64_t sub_2231E2E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231E2D78(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2231E2E30(uint64_t a1)
{
  v2 = sub_2231E3B30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231E2E6C(uint64_t a1)
{
  v2 = sub_2231E3B30();

  return MEMORY[0x2821FE720](a1, v2);
}

void *TRPCandidateReadyForExecutionMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return TRPCandidateReadyForExecutionMessage.init(build:)(v1);
}

void *TRPCandidateReadyForExecutionMessage.init(build:)(void (*a1)(char *))
{
  v2 = v1;
  swift_getObjectType();
  v4 = type metadata accessor for TRPCandidateReadyForExecutionMessage.Builder(0);
  v5 = (v4 - 8);
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v8 = 15;
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  v9 = v5[8];
  v10 = sub_2231FFDA4();
  __swift_storeEnumTagSinglePayload(&v8[v9], 1, 1, v10);
  v11 = &v8[v5[9]];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &v8[v5[10]];
  *v12 = 0;
  *(v12 + 1) = 0;
  a1(v8);
  v13 = *(v12 + 1);
  if (v13)
  {
    v14 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes36TRPCandidateReadyForExecutionMessage_trpId);
    *v14 = *v12;
    v14[1] = v13;
    MEMORY[0x28223BE20](v13);
    *(&v27 - 2) = v8;

    v15 = RequestMessageBase.init(build:)(sub_2231E3B28);
    sub_2231E31DC(v8);
  }

  else
  {
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v16 = sub_223200014();
    __swift_project_value_buffer(v16, qword_280FCE830);
    v17 = sub_223200004();
    v18 = sub_223200254();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v28 = v20;
      *v19 = 136446210;
      v21 = sub_2230F7898();
      v23 = sub_2231A5D38(v21, v22, &v28);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_2230CE000, v17, v18, "Could not build %{public}s: Builder has missing required fields", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x223DD6780](v20, -1, -1);
      MEMORY[0x223DD6780](v19, -1, -1);
    }

    sub_2231E31DC(v8);
    type metadata accessor for TRPCandidateReadyForExecutionMessage(0);
    v24 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
    v25 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v15;
}

uint64_t sub_2231E31DC(uint64_t a1)
{
  v2 = type metadata accessor for TRPCandidateReadyForExecutionMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2231E3258(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  v6 = *(a1 + 16);

  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  v7 = type metadata accessor for TRPCandidateReadyForExecutionMessage.Builder(0);
  v8 = *(v7 + 24);
  v9 = type metadata accessor for RequestMessageBase.Builder(0);
  sub_2230DAEC8(a2 + v8, a1 + *(v9 + 24));
  v10 = (a2 + *(v7 + 28));
  v12 = *v10;
  v11 = v10[1];
  v13 = (a1 + *(v9 + 28));
  v14 = v13[1];

  *v13 = v12;
  v13[1] = v11;
  return result;
}

void *TRPCandidateReadyForExecutionMessage.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AA88, &qword_22321E9B0);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231E3B30();
  sub_223200794();
  if (v2)
  {
    v16 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for TRPCandidateReadyForExecutionMessage(0);
    v11 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
    v12 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = sub_2232004F4();
    v14 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes36TRPCandidateReadyForExecutionMessage_trpId);
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

uint64_t sub_2231E3550(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AA98, &unk_22321E9B8);
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v16 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231E3B30();
  sub_2232007A4();
  v13 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes36TRPCandidateReadyForExecutionMessage_trpId);
  v14 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes36TRPCandidateReadyForExecutionMessage_trpId + 8);
  sub_2232005F4();
  if (!v2)
  {
    sub_2230D77A8(a1);
  }

  return (*(v7 + 8))(v11, v4);
}

uint64_t sub_2231E3708()
{
  v1 = v0;
  v7.receiver = v0;
  v7.super_class = type metadata accessor for TRPCandidateReadyForExecutionMessage(0);
  v2 = objc_msgSendSuper2(&v7, sel_description);
  v3 = sub_2232000C4();
  v5 = v4;

  v8 = v3;
  v9 = v5;
  MEMORY[0x223DD5AA0](0x64497072743C202CLL, 0xEA0000000000203ALL);
  MEMORY[0x223DD5AA0](*&v1[OBJC_IVAR____TtC16SiriMessageTypes36TRPCandidateReadyForExecutionMessage_trpId], *&v1[OBJC_IVAR____TtC16SiriMessageTypes36TRPCandidateReadyForExecutionMessage_trpId + 8]);
  MEMORY[0x223DD5AA0](62, 0xE100000000000000);
  return v8;
}

uint64_t TRPCandidateReadyForExecutionMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t TRPCandidateReadyForExecutionMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t TRPCandidateReadyForExecutionMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TRPCandidateReadyForExecutionMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t TRPCandidateReadyForExecutionMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_6_30() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t TRPCandidateReadyForExecutionMessage.Builder.requestId.getter()
{
  v0 = type metadata accessor for TRPCandidateReadyForExecutionMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 28));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t TRPCandidateReadyForExecutionMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for TRPCandidateReadyForExecutionMessage.Builder(0) + 28));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t TRPCandidateReadyForExecutionMessage.Builder.trpId.getter()
{
  v0 = type metadata accessor for TRPCandidateReadyForExecutionMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 32));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t TRPCandidateReadyForExecutionMessage.Builder.trpId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for TRPCandidateReadyForExecutionMessage.Builder(0) + 32));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

id TRPCandidateReadyForExecutionMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TRPCandidateReadyForExecutionMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231E3B30()
{
  result = qword_27D05AA90;
  if (!qword_27D05AA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AA90);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TRPCandidateReadyForExecutionMessage.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_2231E3CD4()
{
  result = qword_27D05AAC0;
  if (!qword_27D05AAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AAC0);
  }

  return result;
}

unint64_t sub_2231E3D2C()
{
  result = qword_27D05AAC8;
  if (!qword_27D05AAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AAC8);
  }

  return result;
}

unint64_t sub_2231E3D84()
{
  result = qword_27D05AAD0;
  if (!qword_27D05AAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AAD0);
  }

  return result;
}

void *TRPCandidateRequestMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return TRPCandidateRequestMessage.init(build:)(v1);
}

void *TRPCandidateRequestMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v55 = v1;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v49 - v5;
  v7 = sub_2231FFDA4();
  v53 = *(v7 - 8);
  v8 = *(v53 + 64);
  MEMORY[0x28223BE20](v7);
  v52 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TRPCandidateRequestMessage.Builder(0);
  v11 = (v10 - 8);
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v14 = 15;
  *(v14 + 1) = 0;
  *(v14 + 2) = 0;
  v15 = v11[8];
  __swift_storeEnumTagSinglePayload(&v14[v15], 1, 1, v7);
  v16 = &v14[v11[9]];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = &v14[v11[10]];
  *v17 = 0;
  *(v17 + 1) = 0;
  v18 = &v14[v11[11]];
  *v18 = 0;
  *(v18 + 1) = 0;
  v19 = v11[12];
  *&v14[v19] = 0;
  a1(v14);
  v20 = *v14;
  if (v20 == 15)
  {
    goto LABEL_13;
  }

  v21 = *(v14 + 2);
  if (!v21)
  {
    goto LABEL_13;
  }

  v51 = *(v14 + 1);
  sub_2230D1480(&v14[v15], v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_2230D69D4(v6);
LABEL_13:
    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v38 = sub_223200014();
    __swift_project_value_buffer(v38, qword_280FCE830);
    v39 = sub_223200004();
    v40 = sub_223200254();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v56 = v42;
      *v41 = 136446210;
      v43 = sub_2230F7898();
      v45 = sub_2231A5D38(v43, v44, &v56);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_2230CE000, v39, v40, "Could not build %{public}s: Builder has missing required fields", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x223DD6780](v42, -1, -1);
      MEMORY[0x223DD6780](v41, -1, -1);
    }

    sub_2231E42F0(v14);
    type metadata accessor for TRPCandidateRequestMessage(0);
    v46 = *((*MEMORY[0x277D85000] & *v55) + 0x30);
    v47 = *((*MEMORY[0x277D85000] & *v55) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v50 = v21;
  v23 = v52;
  v22 = v53;
  (*(v53 + 32))(v52, v6, v7);
  if (!*(v16 + 1) || !*(v17 + 1) || !*(v18 + 1) || (v24 = *&v14[v19]) == 0)
  {
    (*(v22 + 8))(v23, v7);
    goto LABEL_13;
  }

  v25 = *v16;
  v26 = *v17;
  v27 = *v18;
  v28 = v23;
  *(v55 + OBJC_IVAR____TtC16SiriMessageTypes26TRPCandidateRequestMessage_tcuToContextList) = v24;
  MEMORY[0x28223BE20](v24);
  *(&v49 - 80) = v20;
  v29 = v50;
  *(&v49 - 9) = v51;
  *(&v49 - 8) = v29;
  *(&v49 - 7) = v23;
  *(&v49 - 6) = v30;
  *(&v49 - 5) = v32;
  *(&v49 - 4) = v31;
  *(&v49 - 3) = v33;
  *(&v49 - 2) = v34;
  *(&v49 - 1) = v35;

  v36 = TRPCandidateRequestMessageBase.init(build:)(sub_223113ED4);
  v37 = v36;
  sub_2231E42F0(v14);
  if (v36)
  {
  }

  (*(v53 + 8))(v28, v7);
  return v36;
}

uint64_t sub_2231E42F0(uint64_t a1)
{
  v2 = type metadata accessor for TRPCandidateRequestMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *TRPCandidateRequestMessage.init(from:)(uint64_t *a1)
{
  v2 = v1;
  if (qword_280FCA778 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v4 = sub_223200014();
  __swift_project_value_buffer(v4, qword_280FCE830);
  v5 = sub_223200004();
  v6 = sub_223200254();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2230CE000, v5, v6, "Error: Attempted to serialize an instance of TRPCandidateRequestMessage, which is not currently codable. Conversation Session State will be empty.", v7, 2u);
    MEMORY[0x223DD6780](v7, -1, -1);
  }

  *(v2 + OBJC_IVAR____TtC16SiriMessageTypes26TRPCandidateRequestMessage_tcuToContextList) = MEMORY[0x277D84F90];
  sub_2230F7158(a1, v10);
  v8 = TRPCandidateRequestMessageBase.init(from:)(v10);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

uint64_t sub_2231E4548()
{
  v10 = 0;
  v11 = 0xE000000000000000;
  sub_223200374();
  v9.receiver = v0;
  v9.super_class = type metadata accessor for TRPCandidateRequestMessage(0);
  v1 = objc_msgSendSuper2(&v9, sel_description);
  v2 = sub_2232000C4();
  v4 = v3;

  v10 = v2;
  v11 = v4;
  MEMORY[0x223DD5AA0](0xD000000000000015, 0x80000002232252D0);
  v5 = *&v0[OBJC_IVAR____TtC16SiriMessageTypes26TRPCandidateRequestMessage_tcuToContextList];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059EF8, &qword_223217808);
  v7 = MEMORY[0x223DD5B40](v5, v6);
  MEMORY[0x223DD5AA0](v7);

  MEMORY[0x223DD5AA0](62, 0xE100000000000000);
  return v10;
}

uint64_t TRPCandidateRequestMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t TRPCandidateRequestMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t TRPCandidateRequestMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TRPCandidateRequestMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t TRPCandidateRequestMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_2_49() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t TRPCandidateRequestMessage.Builder.requestId.getter()
{
  v1 = (v0 + *(type metadata accessor for TRPCandidateRequestMessage.Builder(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t TRPCandidateRequestMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for TRPCandidateRequestMessage.Builder(0) + 28));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t TRPCandidateRequestMessage.Builder.userId.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TRPCandidateRequestMessage.Builder(0) + 32));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t TRPCandidateRequestMessage.Builder.userId.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for TRPCandidateRequestMessage.Builder(0) + 32));
  v5 = v4[1];

  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t TRPCandidateRequestMessage.Builder.trpCandidateId.getter()
{
  v1 = (v0 + *(type metadata accessor for TRPCandidateRequestMessage.Builder(0) + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t TRPCandidateRequestMessage.Builder.trpCandidateId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for TRPCandidateRequestMessage.Builder(0) + 36));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t TRPCandidateRequestMessage.Builder.tcuToContextList.getter()
{
  v1 = *(v0 + *(type metadata accessor for TRPCandidateRequestMessage.Builder(0) + 40));
}

uint64_t TRPCandidateRequestMessage.Builder.tcuToContextList.setter()
{
  v2 = *(OUTLINED_FUNCTION_2_49() + 40);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

id TRPCandidateRequestMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TRPCandidateRequestMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *TRPCandidateRequestMessageBase.init(build:)(void (*a1)(unsigned __int8 *))
{
  v81 = v1;
  ObjectType = swift_getObjectType();
  v3 = sub_2231FFC84();
  v4 = OUTLINED_FUNCTION_9(v3);
  v76 = v5;
  v77 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_2();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v72 - v13;
  v15 = sub_2231FFDA4();
  v16 = OUTLINED_FUNCTION_9(v15);
  v78 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2_2();
  v79 = v21 - v20;
  v22 = type metadata accessor for TRPCandidateRequestMessageBase.Builder(0);
  v23 = (v22 - 8);
  v24 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_2_2();
  v27 = (v26 - v25);
  *v27 = 15;
  *(v27 + 1) = 0;
  *(v27 + 2) = 0;
  v28 = v23[8];
  __swift_storeEnumTagSinglePayload(v26 - v25 + v28, 1, 1, v15);
  v29 = &v27[v23[9]];
  *v29 = 0;
  *(v29 + 1) = 0;
  v30 = &v27[v23[10]];
  *v30 = 0;
  *(v30 + 1) = 0;
  v31 = &v27[v23[11]];
  *v31 = 0;
  *(v31 + 1) = 0;
  a1(v27);
  v32 = *v27;
  if (v32 == 15)
  {
    goto LABEL_15;
  }

  v33 = *(v27 + 2);
  if (!v33)
  {
    goto LABEL_15;
  }

  v75 = *(v27 + 1);
  sub_2230D1480(&v27[v28], v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_2230D69D4(v14);
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
      v82[0] = v60;
      *v59 = 136446210;
      v61 = sub_2230F7898();
      v63 = sub_2231A5D38(v61, v62, v82);

      *(v59 + 4) = v63;
      _os_log_impl(&dword_2230CE000, v57, v58, "Could not build %{public}s: Builder has missing required fields", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v60);
      MEMORY[0x223DD6780](v60, -1, -1);
      MEMORY[0x223DD6780](v59, -1, -1);
    }

    sub_2231E5680(v27);
LABEL_20:
    type metadata accessor for TRPCandidateRequestMessageBase(0);
    v64 = *((*MEMORY[0x277D85000] & *v81) + 0x30);
    v65 = *((*MEMORY[0x277D85000] & *v81) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v74 = v33;
  v35 = v78;
  v34 = v79;
  (*(v78 + 32))(v79, v14, v15);
  v36 = *(v29 + 1);
  if (!v36 || (v37 = *(v30 + 1)) == 0 || (v38 = *(v31 + 1)) == 0)
  {
    (*(v35 + 8))(v34, v15);
    goto LABEL_15;
  }

  v39 = *v29;
  v72 = *v30;
  v73 = v39;
  v40 = *v31;
  v82[0] = *v31;
  v82[1] = v38;
  v41 = v37;
  v42 = v38;

  v43 = v42;

  sub_2231FFC74();
  sub_2230D1D30();
  ObjectType = sub_2232002E4();
  v45 = v44;
  (*(v76 + 8))(v10, v77);

  v47 = HIBYTE(v45) & 0xF;
  if ((v45 & 0x2000000000000000) == 0)
  {
    v47 = ObjectType & 0xFFFFFFFFFFFFLL;
  }

  if (!v47)
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
      _os_log_impl(&dword_2230CE000, v68, v69, "trpCandidateId is empty, can't create message", v70, 2u);
      v71 = v70;
      v35 = v78;
      MEMORY[0x223DD6780](v71, -1, -1);
    }

    sub_2231E5680(v27);
    (*(v35 + 8))(v79, v15);
    goto LABEL_20;
  }

  v48 = v81;
  v49 = (v81 + OBJC_IVAR____TtC16SiriMessageTypes30TRPCandidateRequestMessageBase_trpCandidateId);
  *v49 = v40;
  v49[1] = v43;
  v50 = (v48 + OBJC_IVAR____TtC16SiriMessageTypes30TRPCandidateRequestMessageBase_userId);
  *v50 = v72;
  v50[1] = v41;
  MEMORY[0x28223BE20](v46);
  *(&v72 - 48) = v32;
  v51 = v74;
  *(&v72 - 5) = v75;
  *(&v72 - 4) = v51;
  v52 = v79;
  v53 = v73;
  *(&v72 - 3) = v79;
  *(&v72 - 2) = v53;
  *(&v72 - 1) = v36;
  v54 = RequestMessageBase.init(build:)(sub_2230DDE2C);
  v55 = v54;
  sub_2231E5680(v27);
  if (v54)
  {
  }

  (*(v35 + 8))(v52, v15);
  return v54;
}

void *TRPCandidateRequestMessageBase.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AAD8, &qword_22321EBD8);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231E5F6C();
  sub_223200794();
  if (v2)
  {
    v18 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for TRPCandidateRequestMessageBase(0);
    v11 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
    v12 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v21[0]) = 0;
    v10 = sub_2232004F4();
    v14 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes30TRPCandidateRequestMessageBase_trpCandidateId);
    *v14 = v10;
    v14[1] = v15;
    v22 = 1;
    sub_2231105AC();
    sub_223200554();
    v16 = v21[1];
    v17 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes30TRPCandidateRequestMessageBase_userId);
    *v17 = v21[0];
    v17[1] = v16;
    sub_2230F7158(a1, v21);
    v18 = RequestMessageBase.init(from:)(v21);
    v19 = OUTLINED_FUNCTION_2();
    v20(v19);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v18;
}

uint64_t sub_2231E5494(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AAE0, &qword_22321EBE0);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = v18 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231E5F6C();
  sub_2232007A4();
  v14 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes30TRPCandidateRequestMessageBase_trpCandidateId);
  v15 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes30TRPCandidateRequestMessageBase_trpCandidateId + 8);
  LOBYTE(v18[0]) = 0;
  sub_2232005F4();
  if (!v2)
  {
    v16 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes30TRPCandidateRequestMessageBase_userId + 8);
    v18[0] = *(v3 + OBJC_IVAR____TtC16SiriMessageTypes30TRPCandidateRequestMessageBase_userId);
    v18[1] = v16;
    v19 = 1;
    sub_2230D37F0();

    sub_223200654();

    sub_2230D77A8(a1);
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_2231E5680(uint64_t a1)
{
  v2 = type metadata accessor for TRPCandidateRequestMessageBase.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2231E56FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69646E6143707274 && a2 == 0xEE00644965746164;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x644972657375 && a2 == 0xE600000000000000)
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

uint64_t sub_2231E57C8(char a1)
{
  if (a1)
  {
    return 0x644972657375;
  }

  else
  {
    return 0x69646E6143707274;
  }
}

uint64_t sub_2231E5810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231E56FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2231E5838(uint64_t a1)
{
  v2 = sub_2231E5F6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231E5874(uint64_t a1)
{
  v2 = sub_2231E5F6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TRPCandidateRequestMessageBase.userId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes30TRPCandidateRequestMessageBase_userId + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes30TRPCandidateRequestMessageBase_userId);
  a1[1] = v2;
}

void *TRPCandidateRequestMessageBase.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return TRPCandidateRequestMessageBase.init(build:)(v1);
}

uint64_t sub_2231E59E0()
{
  v1 = v0;
  v8 = 0;
  v9 = 0xE000000000000000;
  sub_223200374();
  v7.receiver = v0;
  v7.super_class = type metadata accessor for TRPCandidateRequestMessageBase(0);
  v2 = objc_msgSendSuper2(&v7, sel_description);
  v3 = sub_2232000C4();
  v5 = v4;

  v8 = v3;
  v9 = v5;
  MEMORY[0x223DD5AA0](0xD000000000000013, 0x80000002232227B0);
  MEMORY[0x223DD5AA0](*&v1[OBJC_IVAR____TtC16SiriMessageTypes30TRPCandidateRequestMessageBase_trpCandidateId], *&v1[OBJC_IVAR____TtC16SiriMessageTypes30TRPCandidateRequestMessageBase_trpCandidateId + 8]);
  MEMORY[0x223DD5AA0](0x726573753C202C3ELL, 0xEC000000203A6449);
  MEMORY[0x223DD5AA0](*&v1[OBJC_IVAR____TtC16SiriMessageTypes30TRPCandidateRequestMessageBase_userId], *&v1[OBJC_IVAR____TtC16SiriMessageTypes30TRPCandidateRequestMessageBase_userId + 8]);
  MEMORY[0x223DD5AA0](62, 0xE100000000000000);
  return v8;
}

uint64_t TRPCandidateRequestMessageBase.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t TRPCandidateRequestMessageBase.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t TRPCandidateRequestMessageBase.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TRPCandidateRequestMessageBase.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t TRPCandidateRequestMessageBase.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_5_30() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t TRPCandidateRequestMessageBase.Builder.requestId.getter()
{
  v0 = type metadata accessor for TRPCandidateRequestMessageBase.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 28));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t TRPCandidateRequestMessageBase.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for TRPCandidateRequestMessageBase.Builder(0) + 28));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t TRPCandidateRequestMessageBase.Builder.userId.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TRPCandidateRequestMessageBase.Builder(0) + 32));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t TRPCandidateRequestMessageBase.Builder.userId.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for TRPCandidateRequestMessageBase.Builder(0) + 32));
  v5 = v4[1];

  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t TRPCandidateRequestMessageBase.Builder.trpCandidateId.getter()
{
  v0 = type metadata accessor for TRPCandidateRequestMessageBase.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 36));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t TRPCandidateRequestMessageBase.Builder.trpCandidateId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for TRPCandidateRequestMessageBase.Builder(0) + 36));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t sub_2231E5E98()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes30TRPCandidateRequestMessageBase_trpCandidateId + 8);

  v2 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes30TRPCandidateRequestMessageBase_userId + 8);
}

id TRPCandidateRequestMessageBase.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TRPCandidateRequestMessageBase(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231E5F6C()
{
  result = qword_280FCCE50;
  if (!qword_280FCCE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCCE50);
  }

  return result;
}

uint64_t sub_2231E6060()
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

      sub_2230D525C(319, &qword_280FCA740);
      if (v7 > 0x3F)
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

_BYTE *storeEnumTagSinglePayload for TRPCandidateRequestMessageBase.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2231E623C()
{
  result = qword_27D05AAE8;
  if (!qword_27D05AAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AAE8);
  }

  return result;
}

unint64_t sub_2231E6294()
{
  result = qword_280FCCE40;
  if (!qword_280FCCE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCCE40);
  }

  return result;
}

unint64_t sub_2231E62EC()
{
  result = qword_280FCCE48;
  if (!qword_280FCCE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCCE48);
  }

  return result;
}

uint64_t sub_2231E637C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000002232272B0 == a2)
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

uint64_t sub_2231E641C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231E637C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2231E6448(uint64_t a1)
{
  v2 = sub_2231E723C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231E6484(uint64_t a1)
{
  v2 = sub_2231E723C();

  return MEMORY[0x2821FE720](a1, v2);
}

void *TRPDetectedMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return TRPDetectedMessage.init(build:)(v1);
}

void *TRPDetectedMessage.init(build:)(void (*a1)(unsigned __int8 *))
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
  v13 = type metadata accessor for TRPDetectedMessage.Builder(0);
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

    sub_2231E6988(v17);
    type metadata accessor for TRPDetectedMessage(0);
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
  v28 = (v3 + OBJC_IVAR____TtC16SiriMessageTypes18TRPDetectedMessage_lastTRPCandidateId);
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
  sub_2231E6988(v17);
  if (v32)
  {
  }

  (*(v47 + 8))(v29, v7);
  return v32;
}

uint64_t sub_2231E6988(uint64_t a1)
{
  v2 = type metadata accessor for TRPDetectedMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *TRPDetectedMessage.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AAF0, &qword_22321ED78);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231E723C();
  sub_223200794();
  if (v2)
  {
    v16 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for TRPDetectedMessage(0);
    v11 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
    v12 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = sub_2232004F4();
    v14 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes18TRPDetectedMessage_lastTRPCandidateId);
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

uint64_t sub_2231E6C44(void *a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AB00, &qword_22321ED80);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231E723C();
  sub_2232007A4();
  v12 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes18TRPDetectedMessage_lastTRPCandidateId);
  v13 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes18TRPDetectedMessage_lastTRPCandidateId + 8);
  sub_2232005F4();
  if (!v2)
  {
    sub_2230D77A8(a1);
  }

  return (*(v8 + 8))(v3, v5);
}

uint64_t sub_2231E6DF4()
{
  v7 = 0;
  v8 = 0xE000000000000000;
  sub_223200374();
  v6.receiver = v0;
  v6.super_class = type metadata accessor for TRPDetectedMessage(0);
  v1 = objc_msgSendSuper2(&v6, sel_description);
  v2 = sub_2232000C4();
  v4 = v3;

  v7 = v2;
  v8 = v4;
  MEMORY[0x223DD5AA0](0xD000000000000017, 0x8000000223227230);
  MEMORY[0x223DD5AA0](*&v0[OBJC_IVAR____TtC16SiriMessageTypes18TRPDetectedMessage_lastTRPCandidateId], *&v0[OBJC_IVAR____TtC16SiriMessageTypes18TRPDetectedMessage_lastTRPCandidateId + 8]);
  MEMORY[0x223DD5AA0](62, 0xE100000000000000);
  return v7;
}

uint64_t TRPDetectedMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t TRPDetectedMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t TRPDetectedMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TRPDetectedMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t TRPDetectedMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_7_34() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t TRPDetectedMessage.Builder.requestId.getter()
{
  v0 = type metadata accessor for TRPDetectedMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 28));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t TRPDetectedMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for TRPDetectedMessage.Builder(0) + 28));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t TRPDetectedMessage.Builder.lastTRPCandidateId.getter()
{
  v0 = type metadata accessor for TRPDetectedMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 32));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t TRPDetectedMessage.Builder.lastTRPCandidateId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for TRPDetectedMessage.Builder(0) + 32));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

id TRPDetectedMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TRPDetectedMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231E723C()
{
  result = qword_27D05AAF8;
  if (!qword_27D05AAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AAF8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TRPDetectedMessage.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_2231E73E0()
{
  result = qword_27D05AB28;
  if (!qword_27D05AB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AB28);
  }

  return result;
}

unint64_t sub_2231E7438()
{
  result = qword_27D05AB30;
  if (!qword_27D05AB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AB30);
  }

  return result;
}

unint64_t sub_2231E7490()
{
  result = qword_27D05AB38;
  if (!qword_27D05AB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AB38);
  }

  return result;
}

uint64_t sub_2231E7578(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x80000002232272B0 == a2;
  if (v3 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x5052546C616E6966 && a2 == 0xEA00000000006449;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x5543546C616E6966 && a2 == 0xEA00000000006449)
    {

      return 2;
    }

    else
    {
      v8 = sub_2232006B4();

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

uint64_t sub_2231E76A0(char a1)
{
  if (!a1)
  {
    return 0xD000000000000012;
  }

  if (a1 == 1)
  {
    return 0x5052546C616E6966;
  }

  return 0x5543546C616E6966;
}

uint64_t sub_2231E7704@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231E7578(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2231E772C(uint64_t a1)
{
  v2 = sub_2231E8888();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231E7768(uint64_t a1)
{
  v2 = sub_2231E8888();

  return MEMORY[0x2821FE720](a1, v2);
}

void *TRPFinalizedMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return TRPFinalizedMessage.init(build:)(v1);
}

void *TRPFinalizedMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v53 - v5;
  v7 = sub_2231FFDA4();
  v8 = OUTLINED_FUNCTION_9(v7);
  v57 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v56 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TRPFinalizedMessage.Builder(0);
  v14 = (v13 - 8);
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v1;
  v18 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes19TRPFinalizedMessage_lastTRPCandidateId);
  *v18 = 0;
  v18[1] = 0xE000000000000000;
  *v17 = 15;
  *(v17 + 1) = 0;
  *(v17 + 2) = 0;
  v19 = v14[8];
  __swift_storeEnumTagSinglePayload(&v17[v19], 1, 1, v7);
  v20 = &v17[v14[9]];
  *v20 = 0;
  *(v20 + 1) = 0;
  v21 = &v17[v14[10]];
  *v21 = 0;
  *(v21 + 1) = 0;
  v22 = &v17[v14[11]];
  *v22 = 0;
  *(v22 + 1) = 0;
  v23 = &v17[v14[12]];
  *v23 = 0;
  *(v23 + 1) = 0;
  a1(v17);
  v24 = *v17;
  if (v24 == 15)
  {
    goto LABEL_11;
  }

  v25 = *(v17 + 2);
  if (!v25)
  {
    goto LABEL_11;
  }

  v55 = *(v17 + 1);
  sub_2230D1480(&v17[v19], v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_2230D69D4(v6);
LABEL_11:
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v41 = sub_223200014();
    __swift_project_value_buffer(v41, qword_280FCE830);
    v42 = sub_223200004();
    v43 = sub_223200254();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v60 = v45;
      *v44 = 136446210;
      v46 = sub_2230F7898();
      v48 = sub_2231A5D38(v46, v47, &v60);

      *(v44 + 4) = v48;
      _os_log_impl(&dword_2230CE000, v42, v43, "Could not build %{public}s: Builder has missing required fields", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v45);
      MEMORY[0x223DD6780](v45, -1, -1);
      MEMORY[0x223DD6780](v44, -1, -1);
    }

    sub_2231E7CC0(v17);
    v49 = v18[1];

    type metadata accessor for TRPFinalizedMessage(0);
    v50 = *((*MEMORY[0x277D85000] & *v59) + 0x30);
    v51 = *((*MEMORY[0x277D85000] & *v59) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v54 = v25;
  v27 = v56;
  v26 = v57;
  (*(v57 + 32))(v56, v6, v7);
  if (!*(v20 + 1) || (v28 = *(v22 + 1)) == 0)
  {
    (*(v26 + 8))(v27, v7);
    goto LABEL_11;
  }

  v29 = *v20;
  v30 = *v22;
  v31 = v27;
  v32 = v59;
  v33 = (v59 + OBJC_IVAR____TtC16SiriMessageTypes19TRPFinalizedMessage_finalTRPId);
  *v33 = v30;
  v33[1] = v28;
  v34 = *(v23 + 1);
  v35 = (v32 + OBJC_IVAR____TtC16SiriMessageTypes19TRPFinalizedMessage_finalTCUId);
  *v35 = *v23;
  v35[1] = v34;
  MEMORY[0x28223BE20](v34);
  *(&v53 - 48) = v24;
  v36 = v54;
  *(&v53 - 5) = v55;
  *(&v53 - 4) = v36;
  *(&v53 - 3) = v31;
  *(&v53 - 2) = v37;
  *(&v53 - 1) = v38;

  v39 = RequestMessageBase.init(build:)(sub_2230DDE2C);
  v40 = v39;
  sub_2231E7CC0(v17);
  if (v39)
  {
  }

  (*(v57 + 8))(v31, v7);
  return v39;
}

uint64_t sub_2231E7CC0(uint64_t a1)
{
  v2 = type metadata accessor for TRPFinalizedMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *TRPFinalizedMessage.init(from:)(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AB40, &qword_22321EF18);
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v25 = v1;
  v8 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes19TRPFinalizedMessage_lastTRPCandidateId);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231E8888();
  sub_223200794();
  if (v2)
  {
    v21 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    v11 = v8[1];

    type metadata accessor for TRPFinalizedMessage(0);
    v12 = *((*MEMORY[0x277D85000] & *v25) + 0x30);
    v13 = *((*MEMORY[0x277D85000] & *v25) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    OUTLINED_FUNCTION_6_31(1);
    v10 = sub_2232004F4();
    v15 = v25;
    v16 = (v25 + OBJC_IVAR____TtC16SiriMessageTypes19TRPFinalizedMessage_finalTRPId);
    *v16 = v10;
    v16[1] = v17;
    OUTLINED_FUNCTION_6_31(2);
    v18 = sub_223200494();
    v19 = (v15 + OBJC_IVAR____TtC16SiriMessageTypes19TRPFinalizedMessage_finalTCUId);
    *v19 = v18;
    v19[1] = v20;
    sub_2230F7158(a1, v24);
    v21 = RequestMessageBase.init(from:)(v24);
    v22 = OUTLINED_FUNCTION_1_10();
    v23(v22);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v21;
}

uint64_t sub_2231E8000(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AB48, &qword_22321EF20);
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v17 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231E8888();
  sub_2232007A4();
  v13 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes19TRPFinalizedMessage_finalTRPId);
  v14 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes19TRPFinalizedMessage_finalTRPId + 8);
  v19 = 1;
  sub_2232005F4();
  if (!v2)
  {
    if (*(v1 + OBJC_IVAR____TtC16SiriMessageTypes19TRPFinalizedMessage_finalTCUId + 8))
    {
      v15 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes19TRPFinalizedMessage_finalTCUId);
      v18 = 2;
      sub_2232005F4();
    }

    sub_2230D77A8(a1);
  }

  return (*(v7 + 8))(v11, v4);
}

uint64_t sub_2231E8200()
{
  v11 = 0;
  v12 = 0xE000000000000000;
  sub_223200374();
  v10.receiver = v0;
  v10.super_class = type metadata accessor for TRPFinalizedMessage(0);
  v1 = objc_msgSendSuper2(&v10, sel_description);
  v2 = sub_2232000C4();
  v4 = v3;

  v11 = v2;
  v12 = v4;
  MEMORY[0x223DD5AA0](0x6C616E69663C202CLL, 0xEF203A6449505254);
  MEMORY[0x223DD5AA0](*&v0[OBJC_IVAR____TtC16SiriMessageTypes19TRPFinalizedMessage_finalTRPId], *&v0[OBJC_IVAR____TtC16SiriMessageTypes19TRPFinalizedMessage_finalTRPId + 8]);
  MEMORY[0x223DD5AA0](0xD000000000000010, 0x80000002232272D0);
  v5 = OUTLINED_FUNCTION_5(OBJC_IVAR____TtC16SiriMessageTypes19TRPFinalizedMessage_finalTCUId);
  if (v5)
  {
    v7 = *v6;
    v8 = v5;
  }

  else
  {
    v8 = 0xE500000000000000;
    v7 = 0x3E6C696E3CLL;
  }

  MEMORY[0x223DD5AA0](v7, v8);

  MEMORY[0x223DD5AA0](62, 0xE100000000000000);
  return v11;
}

uint64_t TRPFinalizedMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t TRPFinalizedMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t TRPFinalizedMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TRPFinalizedMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t TRPFinalizedMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_7_35() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t TRPFinalizedMessage.Builder.requestId.getter()
{
  v0 = type metadata accessor for TRPFinalizedMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 28));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t TRPFinalizedMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = type metadata accessor for TRPFinalizedMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2(*(v3 + 28));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TRPFinalizedMessage.Builder.lastTRPCandidateId.getter()
{
  v0 = type metadata accessor for TRPFinalizedMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 32));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t TRPFinalizedMessage.Builder.lastTRPCandidateId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = type metadata accessor for TRPFinalizedMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2(*(v3 + 32));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TRPFinalizedMessage.Builder.finalTRPId.getter()
{
  v0 = type metadata accessor for TRPFinalizedMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 36));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t TRPFinalizedMessage.Builder.finalTRPId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = type metadata accessor for TRPFinalizedMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2(*(v3 + 36));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TRPFinalizedMessage.Builder.finalTCUId.getter()
{
  v0 = type metadata accessor for TRPFinalizedMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 40));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t TRPFinalizedMessage.Builder.finalTCUId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = type metadata accessor for TRPFinalizedMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2(*(v3 + 40));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_2231E8794()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes19TRPFinalizedMessage_lastTRPCandidateId + 8);

  v2 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes19TRPFinalizedMessage_finalTRPId + 8);

  v3 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes19TRPFinalizedMessage_finalTCUId + 8);
}

id TRPFinalizedMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TRPFinalizedMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231E8888()
{
  result = qword_280FCE1F8;
  if (!qword_280FCE1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE1F8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TRPFinalizedMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2231E8A68()
{
  result = qword_27D05AB50;
  if (!qword_27D05AB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AB50);
  }

  return result;
}

unint64_t sub_2231E8AC0()
{
  result = qword_280FCE1E8;
  if (!qword_280FCE1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE1E8);
  }

  return result;
}

unint64_t sub_2231E8B18()
{
  result = qword_280FCE1F0;
  if (!qword_280FCE1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE1F0);
  }

  return result;
}

uint64_t TCUMappedNLResponse.tcuId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_2_1();
}

uint64_t TCUMappedNLResponse.init(tcuId:nlResponse:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_2231E8BBC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449756374 && a2 == 0xE500000000000000;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F707365526C6ELL && a2 == 0xEA00000000006573)
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

uint64_t sub_2231E8C88(char a1)
{
  if (a1)
  {
    return 0x6E6F707365526C6ELL;
  }

  else
  {
    return 0x6449756374;
  }
}

uint64_t sub_2231E8CC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231E8BBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2231E8CF0(uint64_t a1)
{
  v2 = sub_2231E8F00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231E8D2C(uint64_t a1)
{
  v2 = sub_2231E8F00();

  return MEMORY[0x2821FE720](a1, v2);
}

void TCUMappedNLResponse.encode(to:)()
{
  OUTLINED_FUNCTION_8_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AB58, &qword_22321F0E0);
  OUTLINED_FUNCTION_9(v4);
  v16 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  v11 = *v0;
  v12 = v0[1];
  v15 = v0[2];
  v13 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_2231E8F00();
  sub_2232007A4();
  sub_2232005F4();
  if (!v1)
  {
    v17 = v15;
    type metadata accessor for NLParseResponse(0);
    sub_2231A1454(qword_280FCABC0);
    sub_223200654();
  }

  (*(v16 + 8))(v10, v4);
  OUTLINED_FUNCTION_9_0();
}

unint64_t sub_2231E8F00()
{
  result = qword_280FCA858;
  if (!qword_280FCA858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCA858);
  }

  return result;
}

void TCUMappedNLResponse.init(from:)()
{
  OUTLINED_FUNCTION_8_1();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AB60, &unk_22321F0E8);
  OUTLINED_FUNCTION_9(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v8);
  v9 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2231E8F00();
  sub_223200794();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v10 = sub_2232004F4();
    v12 = v11;
    type metadata accessor for NLParseResponse(0);
    sub_2231A1454(&qword_27D0589E8);
    sub_223200554();
    v13 = OUTLINED_FUNCTION_2();
    v14(v13);
    *v4 = v10;
    v4[1] = v12;
    v4[2] = v16;

    v15 = v16;
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  OUTLINED_FUNCTION_9_0();
}

SiriMessageTypes::TTResponseMessage::MitigationDecision_optional __swiftcall TTResponseMessage.MitigationDecision.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_2231E9198(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x80000002232212B0 == a2;
  if (v3 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6574617453756374 && a2 == 0xEC00000074636944;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x8000000223222870 == a2;
      if (v7 || (sub_2232006B4() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000016 && 0x80000002232213C0 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_2232006B4();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_2231E9300(char a1)
{
  result = 0x6574617453756374;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

uint64_t sub_2231E9458@<X0>(uint64_t *a1@<X8>)
{
  result = TTResponseMessage.MitigationDecision.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2231E9488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231E9198(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2231E94B0(uint64_t a1)
{
  v2 = sub_2231EB184();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231E94EC(uint64_t a1)
{
  v2 = sub_2231EB184();

  return MEMORY[0x2821FE720](a1, v2);
}

void TTResponseMessage.tcuMappedNLResponse.getter(uint64_t *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes17TTResponseMessage_tcuMappedNLResponse);
  v3 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes17TTResponseMessage_tcuMappedNLResponse + 8);
  v4 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes17TTResponseMessage_tcuMappedNLResponse + 16);
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  sub_2231E9548(v2, v3, v4);
}

void sub_2231E9548(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {

    v3 = a3;
  }
}

__n128 TTResponseMessage.selectedUserAttributes.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes17TTResponseMessage_selectedUserAttributes + 16);
  v3 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes17TTResponseMessage_selectedUserAttributes + 20);
  result = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes17TTResponseMessage_selectedUserAttributes);
  *a1 = result;
  a1[1].n128_u16[2] = v3;
  a1[1].n128_u32[0] = v2;
  return result;
}

void *TTResponseMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return TTResponseMessage.init(build:)(v1);
}

void *TTResponseMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v80 = a1;
  v81 = v1;
  ObjectType = swift_getObjectType();
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0) - 8) + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v3);
  v77 = &v69 - v4;
  v5 = sub_2231FFDA4();
  v6 = OUTLINED_FUNCTION_9(v5);
  v75 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v76 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTResponseMessage.Builder(0);
  v12 = (v11 - 8);
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v15 = 15;
  *(v15 + 1) = 0;
  *(v15 + 2) = 0;
  v16 = v12[8];
  v78 = v5;
  __swift_storeEnumTagSinglePayload(&v15[v16], 1, 1, v5);
  v17 = &v15[v12[9]];
  *v17 = 0;
  v17[1] = 0;
  v18 = &v15[v12[10]];
  *v18 = 0;
  *(v18 + 1) = 0;
  v19 = &v15[v12[11]];
  *v19 = 0;
  *(v19 + 1) = 0;
  *(v19 + 2) = 0;
  v20 = v12[12];
  *&v15[v20] = 0;
  v74 = v12[13];
  v15[v74] = 4;
  v21 = &v15[v12[14]];
  *v21 = 0;
  v21[1] = 0;
  v22 = &v15[v12[15]];
  *v22 = 0;
  *(v22 + 1) = 0;
  *(v22 + 10) = 2;
  *(v22 + 4) = 0;
  v80(v15);
  v23 = *v15;
  if (v23 == 15 || !*(v15 + 2))
  {
    goto LABEL_12;
  }

  v72 = *(v15 + 2);
  v24 = *(v19 + 1);
  v80 = *v19;
  v73 = v24;
  v25 = *(v19 + 2);
  v71 = *(v15 + 1);
  v26 = &v15[v16];
  v27 = v77;
  sub_2230D1480(v26, v77);
  v28 = v78;
  if (__swift_getEnumTagSinglePayload(v27, 1, v78) == 1)
  {
    sub_2230D69D4(v27);
LABEL_12:
    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v36 = sub_223200014();
    __swift_project_value_buffer(v36, qword_280FCE830);
    v37 = sub_223200004();
    v38 = sub_223200254();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v82 = v40;
      *v39 = 136446210;
      v41 = sub_2230F7898();
      v43 = sub_2231A5D38(v41, v42, &v82);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_2230CE000, v37, v38, "Could not build %{public}s: Builder has missing required fields", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x223DD6780](v40, -1, -1);
      MEMORY[0x223DD6780](v39, -1, -1);
    }

    sub_2231E9C90(v15);
    type metadata accessor for TTResponseMessage(0);
    v44 = *((*MEMORY[0x277D85000] & *v81) + 0x30);
    v45 = *((*MEMORY[0x277D85000] & *v81) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v70 = v25;
  v29 = v75;
  v30 = v27;
  v31 = v76;
  (*(v75 + 32))(v76, v30, v28);
  v32 = v17[1];
  if (!v32)
  {
    (*(v29 + 8))(v31, v28);
    goto LABEL_12;
  }

  if (!*(v18 + 1) || (v33 = *&v15[v20]) == 0 || (v34 = v15[v74], v35 = v76, v34 == 4))
  {
    (*(v29 + 8))(v76, v28);
    goto LABEL_12;
  }

  ObjectType = *(v18 + 1);
  v69 = v32;
  v77 = *v17;
  v74 = *v18;
  v48 = v21[1];
  if (v48)
  {
    v49 = *v21;
    v50 = v33;
  }

  else
  {
    v51 = qword_280FCA778;
    v50 = v33;

    if (v51 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v52 = sub_223200014();
    __swift_project_value_buffer(v52, qword_280FCE830);
    v53 = sub_223200004();
    v54 = sub_223200254();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_2230CE000, v53, v54, "Warning: TTResponseMessage being built without UserID. Falling back on default UserID. This may result in issues in multi-user setups.", v55, 2u);
      MEMORY[0x223DD6780](v55, -1, -1);
    }

    v48 = 0x80000002232216F0;
    v49 = 0xD000000000000024;
  }

  v56 = v80;
  v57 = v81;
  v58 = (v81 + OBJC_IVAR____TtC16SiriMessageTypes17TTResponseMessage_tcuMappedNLResponse);
  v59 = v73;
  *v58 = v80;
  v58[1] = v59;
  v58[2] = v70;
  *(v57 + OBJC_IVAR____TtC16SiriMessageTypes17TTResponseMessage_tcuStateDict) = v50;
  *(v57 + OBJC_IVAR____TtC16SiriMessageTypes17TTResponseMessage_mitigationDecision) = v34;
  LODWORD(v58) = *(v22 + 4);
  v60 = *(v22 + 10);
  v61 = v57 + OBJC_IVAR____TtC16SiriMessageTypes17TTResponseMessage_selectedUserAttributes;
  *v61 = *v22;
  *(v61 + 10) = v60;
  *(v61 + 4) = v58;
  v62 = MEMORY[0x28223BE20](v56);
  *(&v69 - 80) = v23;
  v63 = v72;
  *(&v69 - 9) = v71;
  *(&v69 - 8) = v63;
  v64 = v77;
  *(&v69 - 7) = v35;
  *(&v69 - 6) = v64;
  v65 = v74;
  *(&v69 - 5) = v69;
  *(&v69 - 4) = v65;
  *(&v69 - 3) = ObjectType;
  *(&v69 - 2) = v49;
  *(&v69 - 1) = v48;
  sub_2231E9548(v62, v66, v67);
  v46 = TRPCandidateRequestMessageBase.init(build:)(sub_223113ED4);
  v68 = v46;

  sub_2231E9C90(v15);
  if (v46)
  {
  }

  (*(v75 + 8))(v35, v78);
  return v46;
}

uint64_t sub_2231E9C90(uint64_t a1)
{
  v2 = type metadata accessor for TTResponseMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void TTResponseMessage.init(from:)()
{
  OUTLINED_FUNCTION_8_1();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AB68, &qword_22321F0F8);
  OUTLINED_FUNCTION_9(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v58 - v11;
  v13 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_2231EB184();
  sub_223200794();
  if (v1)
  {
    v14 = &qword_280FCDFA0[12];
    v16 = 0;
    v17 = 0;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(v4);
    if (v16)
    {
      v18 = OUTLINED_FUNCTION_5_31((v2 + v14[501]));
      sub_2231EB1D8(v18, v19, v20);
    }

    if (v17)
    {
      v21 = *(v2 + OBJC_IVAR____TtC16SiriMessageTypes17TTResponseMessage_tcuStateDict);
    }

    type metadata accessor for TTResponseMessage(0);
    v22 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
    v23 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
LABEL_9:
    OUTLINED_FUNCTION_9_0();
    return;
  }

  v67 = v7;
  sub_2231EB21C();
  OUTLINED_FUNCTION_3_43();
  v15 = v12;
  sub_2232004C4();
  v24 = v69;
  v14 = &qword_280FCDFA0[12];
  v25 = v2 + OBJC_IVAR____TtC16SiriMessageTypes17TTResponseMessage_tcuMappedNLResponse;
  *v25 = v68;
  *(v25 + 2) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AB78, &qword_22321F100);
  sub_2231EB2C4(&qword_27D05AB80);
  sub_223200554();
  v26 = v67;
  v60 = v2;
  v61 = v15;
  v58 = v4;
  v59 = 0;
  v27 = v68;
  type metadata accessor for SMTTCUState();
  v28 = sub_223200064();
  v29 = 0;
  v31 = v27 + 64;
  v30 = *(v27 + 64);
  v64 = v5;
  v65 = v27;
  v32 = 1 << *(v27 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & v30;
  v35 = (v32 + 63) >> 6;
  v36 = &qword_280FCDFA0[12];
  v62 = v35;
  v63 = v27 + 64;
  if ((v33 & v30) == 0)
  {
    while (1)
    {
LABEL_13:
      v37 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v37 >= v35)
      {
        break;
      }

      v34 = *(v31 + 8 * v37);
      ++v29;
      if (v34)
      {
        v29 = v37;
        goto LABEL_17;
      }
    }

    v2 = v60;
    *(v60 + v36[503]) = v28;
    sub_22311D924();
    OUTLINED_FUNCTION_3_43();
    v52 = v61;
    v53 = v59;
    sub_223200554();
    if (v53)
    {
      (*(v26 + 8))(v52, v5);
      v16 = 1;
      v17 = 1;
      v4 = v58;
      goto LABEL_4;
    }

    *(v2 + OBJC_IVAR____TtC16SiriMessageTypes17TTResponseMessage_mitigationDecision) = v68;
    sub_22316A808();
    OUTLINED_FUNCTION_3_43();
    sub_2232004C4();
    v54 = v58;
    v55 = v69;
    v56 = WORD2(v69);
    v57 = v2 + OBJC_IVAR____TtC16SiriMessageTypes17TTResponseMessage_selectedUserAttributes;
    *v57 = v68;
    *(v57 + 10) = v56;
    *(v57 + 4) = v55;
    sub_2230F7158(v54, &v68);
    TRPCandidateRequestMessageBase.init(from:)(&v68);
    (*(v26 + 8))(v61, v5);
    __swift_destroy_boxed_opaque_existential_1(v54);
    goto LABEL_9;
  }

LABEL_17:
  while (1)
  {
    v38 = __clz(__rbit64(v34)) | (v29 << 6);
    v39 = (*(v65 + 48) + 16 * v38);
    v41 = *v39;
    v40 = v39[1];
    v66 = *(*(v65 + 56) + 8 * v38);

    swift_isUniquelyReferenced_nonNull_native();
    *&v68 = v28;
    v42 = sub_22314C358(v41, v40);
    if (__OFADD__(v28[2], (v43 & 1) == 0))
    {
      break;
    }

    v44 = v42;
    v45 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AB88, &qword_22321F108);
    if (sub_2232003D4())
    {
      v46 = sub_22314C358(v41, v40);
      v26 = v67;
      if ((v45 & 1) != (v47 & 1))
      {
        goto LABEL_33;
      }

      v44 = v46;
      if (v45)
      {
LABEL_24:

        v28 = v68;
        *(*(v68 + 56) + 8 * v44) = v66;
        goto LABEL_25;
      }
    }

    else
    {
      v26 = v67;
      if (v45)
      {
        goto LABEL_24;
      }
    }

    v28 = v68;
    *(v68 + 8 * (v44 >> 6) + 64) |= 1 << v44;
    v48 = (v28[6] + 16 * v44);
    *v48 = v41;
    v48[1] = v40;
    *(v28[7] + 8 * v44) = v66;
    v49 = v28[2];
    v50 = __OFADD__(v49, 1);
    v51 = v49 + 1;
    if (v50)
    {
      goto LABEL_32;
    }

    v28[2] = v51;
LABEL_25:
    v36 = qword_280FCDFA0 + 96;
    v14 = qword_280FCDFA0 + 96;
    v31 = v63;
    v5 = v64;
    v35 = v62;
    v34 &= v34 - 1;
    if (!v34)
    {
      goto LABEL_13;
    }
  }

LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  sub_2232006E4();
  __break(1u);
}

void sub_2231EA368()
{
  OUTLINED_FUNCTION_8_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AB90, &qword_22321F110);
  OUTLINED_FUNCTION_9(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - v10;
  v12 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_2231EB184();
  sub_2232007A4();
  v43 = OUTLINED_FUNCTION_5_31((v0 + OBJC_IVAR____TtC16SiriMessageTypes17TTResponseMessage_tcuMappedNLResponse));
  v44 = v13;
  v45 = v14;
  sub_2231E9548(v43, v13, v14);
  sub_2231EB270();
  OUTLINED_FUNCTION_1_37();
  sub_2232005E4();
  if (v1)
  {
    sub_2231EB1D8(v43, v44, v45);
LABEL_3:
    (*(v6 + 8))(v11, v4);
    OUTLINED_FUNCTION_9_0();
    return;
  }

  v40 = v3;
  v42 = v6;
  sub_2231EB1D8(v43, v44, v45);
  v41 = v0;
  v15 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes17TTResponseMessage_tcuStateDict);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AB98, &qword_22321F118);
  v16 = sub_223200424();
  v17 = v16;
  v18 = 0;
  v19 = 1 << *(v15 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v15 + 64);
  v22 = (v19 + 63) >> 6;
  v23 = v16 + 64;
  if (!v21)
  {
LABEL_8:
    v25 = v18;
    while (1)
    {
      v18 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_20;
      }

      if (v18 >= v22)
      {
        break;
      }

      v26 = *(v15 + 64 + 8 * v18);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v21 = (v26 - 1) & v26;
        goto LABEL_13;
      }
    }

    v43 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AB78, &qword_22321F100);
    sub_2231EB2C4(&qword_280FCA4E8);
    sub_223200654();

    v36 = v41;
    LOBYTE(v43) = *(v41 + OBJC_IVAR____TtC16SiriMessageTypes17TTResponseMessage_mitigationDecision);
    sub_22311D978();
    OUTLINED_FUNCTION_1_37();
    sub_223200654();
    v6 = v42;
    v37 = (v36 + OBJC_IVAR____TtC16SiriMessageTypes17TTResponseMessage_selectedUserAttributes);
    v38 = *(v36 + OBJC_IVAR____TtC16SiriMessageTypes17TTResponseMessage_selectedUserAttributes + 16) | (*(v36 + OBJC_IVAR____TtC16SiriMessageTypes17TTResponseMessage_selectedUserAttributes + 20) << 32);
    if ((v38 & 0xFF00000000) != 0x200000000)
    {
      v39 = v37[1];
      LODWORD(v43) = *v37;
      v44 = v39;
      LODWORD(v45) = v38;
      BYTE4(v45) = BYTE4(v38) & 1;
      BYTE5(v45) = BYTE5(v38) & 1;
      sub_22316A85C();
      OUTLINED_FUNCTION_1_37();
      sub_223200654();
    }

    sub_2231E5494(v40);
    goto LABEL_3;
  }

  while (1)
  {
    v24 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
LABEL_13:
    v27 = v24 | (v18 << 6);
    v28 = (*(v15 + 48) + 16 * v27);
    v29 = *(*(v15 + 56) + 8 * v27);
    v31 = *v28;
    v30 = v28[1];
    *(v23 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = (v17[6] + 16 * v27);
    *v32 = v31;
    v32[1] = v30;
    *(v17[7] + 8 * v27) = v29;
    v33 = v17[2];
    v34 = __OFADD__(v33, 1);
    v35 = v33 + 1;
    if (v34)
    {
      break;
    }

    v17[2] = v35;

    if (!v21)
    {
      goto LABEL_8;
    }
  }

LABEL_20:
  __break(1u);
}

uint64_t sub_2231EA7CC()
{
  v1 = v0;
  *&v21 = 0;
  *(&v21 + 1) = 0xE000000000000000;
  sub_223200374();
  v26 = v21;
  v25.receiver = v0;
  v25.super_class = type metadata accessor for TTResponseMessage(0);
  v2 = objc_msgSendSuper2(&v25, sel_description);
  v3 = sub_2232000C4();
  v5 = v4;

  MEMORY[0x223DD5AA0](v3, v5);

  OUTLINED_FUNCTION_12_16();
  MEMORY[0x223DD5AA0]();
  v6 = OUTLINED_FUNCTION_5_31(&v1[OBJC_IVAR____TtC16SiriMessageTypes17TTResponseMessage_tcuMappedNLResponse]);
  sub_2231E9548(v6, v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05ABA0, &unk_22321F120);
  v9 = sub_223200104();
  MEMORY[0x223DD5AA0](v9);

  OUTLINED_FUNCTION_12_16();
  MEMORY[0x223DD5AA0](0xD000000000000012);
  v10 = *&v1[OBJC_IVAR____TtC16SiriMessageTypes17TTResponseMessage_tcuStateDict];
  type metadata accessor for SMTTCUState();
  v11 = sub_223200054();
  MEMORY[0x223DD5AA0](v11);

  OUTLINED_FUNCTION_12_16();
  MEMORY[0x223DD5AA0](v12, v13, v14);
  *&v21 = v1[OBJC_IVAR____TtC16SiriMessageTypes17TTResponseMessage_mitigationDecision];
  v15 = sub_223200104();
  MEMORY[0x223DD5AA0](v15);

  OUTLINED_FUNCTION_12_16();
  MEMORY[0x223DD5AA0](v16, v17, v18);
  v22 = *&v1[OBJC_IVAR____TtC16SiriMessageTypes17TTResponseMessage_selectedUserAttributes];
  v24 = *&v1[OBJC_IVAR____TtC16SiriMessageTypes17TTResponseMessage_selectedUserAttributes + 20];
  v23 = *&v1[OBJC_IVAR____TtC16SiriMessageTypes17TTResponseMessage_selectedUserAttributes + 16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0590B8, &qword_223210A68);
  v19 = sub_223200104();
  MEMORY[0x223DD5AA0](v19);

  return v26;
}

uint64_t TTResponseMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t TTResponseMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t TTResponseMessage.Builder.sessionId.getter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_9_30() + 24);

  return sub_2230D1480(v2, v0);
}

uint64_t TTResponseMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_6_32() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t TTResponseMessage.Builder.requestId.getter()
{
  v1 = (v0 + *(type metadata accessor for TTResponseMessage.Builder(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_2_1();
}

uint64_t TTResponseMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for TTResponseMessage.Builder(0) + 28));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t TTResponseMessage.Builder.trpCandidateId.getter()
{
  v1 = (v0 + *(type metadata accessor for TTResponseMessage.Builder(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_2_1();
}

uint64_t TTResponseMessage.Builder.trpCandidateId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for TTResponseMessage.Builder(0) + 32));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

void TTResponseMessage.Builder.tcuMappedNLResponse.getter()
{
  v2 = OUTLINED_FUNCTION_9_30();
  v3 = OUTLINED_FUNCTION_5_31((v1 + *(v2 + 36)));
  *v0 = v3;
  v0[1] = v4;
  v0[2] = v5;

  sub_2231E9548(v3, v4, v5);
}

__n128 TTResponseMessage.Builder.tcuMappedNLResponse.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = v1 + *(type metadata accessor for TTResponseMessage.Builder(0) + 36);
  sub_2231EB1D8(*v3, *(v3 + 8), *(v3 + 16));
  result = v5;
  *v3 = v5;
  *(v3 + 16) = v2;
  return result;
}

uint64_t TTResponseMessage.Builder.tcuStateDict.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTResponseMessage.Builder(0) + 40));
}

uint64_t TTResponseMessage.Builder.tcuStateDict.setter()
{
  v2 = *(OUTLINED_FUNCTION_6_32() + 40);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t TTResponseMessage.Builder.mitigationDecision.getter()
{
  result = OUTLINED_FUNCTION_9_30();
  *v0 = *(v1 + *(result + 44));
  return result;
}

uint64_t TTResponseMessage.Builder.mitigationDecision.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for TTResponseMessage.Builder(0);
  *(v1 + *(result + 44)) = v2;
  return result;
}

uint64_t TTResponseMessage.Builder.userId.getter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_9_30() + 48));
  v3 = v2[1];
  *v0 = *v2;
  v0[1] = v3;
}

uint64_t TTResponseMessage.Builder.userId.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for TTResponseMessage.Builder(0) + 48));
  v5 = v4[1];

  *v4 = v2;
  v4[1] = v3;
  return result;
}

__n128 TTResponseMessage.Builder.selectedUserAttributes.getter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_9_30() + 52));
  v3 = v2[1].n128_u32[0];
  v4 = v2[1].n128_u16[2];
  result = *v2;
  *v0 = *v2;
  v0[1].n128_u16[2] = v4;
  v0[1].n128_u32[0] = v3;
  return result;
}

uint64_t TTResponseMessage.Builder.selectedUserAttributes.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 4);
  v5 = *(a1 + 10);
  result = type metadata accessor for TTResponseMessage.Builder(0);
  v7 = v1 + *(result + 52);
  *v7 = v2;
  *(v7 + 8) = v3;
  *(v7 + 20) = v5;
  *(v7 + 16) = v4;
  return result;
}

uint64_t sub_2231EB0B8()
{
  v1 = OUTLINED_FUNCTION_5_31((v0 + OBJC_IVAR____TtC16SiriMessageTypes17TTResponseMessage_tcuMappedNLResponse));
  sub_2231EB1D8(v1, v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes17TTResponseMessage_tcuStateDict);
}

id TTResponseMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTResponseMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231EB184()
{
  result = qword_280FCE488;
  if (!qword_280FCE488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE488);
  }

  return result;
}

void sub_2231EB1D8(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
  }
}

unint64_t sub_2231EB21C()
{
  result = qword_27D05AB70;
  if (!qword_27D05AB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AB70);
  }

  return result;
}

unint64_t sub_2231EB270()
{
  result = qword_280FCA840;
  if (!qword_280FCA840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCA840);
  }

  return result;
}

uint64_t sub_2231EB2C4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D05AB78, &qword_22321F100);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2231EB338()
{
  result = qword_27D05ABA8;
  if (!qword_27D05ABA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05ABA8);
  }

  return result;
}

uint64_t sub_2231EB46C()
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
        sub_2230D525C(319, &qword_280FCA838);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          sub_2231EB614();
          v1 = v9;
          if (v10 <= 0x3F)
          {
            sub_2230D525C(319, &qword_280FCE460);
            v1 = v11;
            if (v12 <= 0x3F)
            {
              sub_2230D525C(319, &qword_280FCA740);
              v1 = v13;
              if (v14 <= 0x3F)
              {
                sub_2230D525C(319, &unk_280FCA7A8);
                v1 = v15;
                if (v16 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return v1;
}

void sub_2231EB614()
{
  if (!qword_280FCA4E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D05ABB0, &qword_22321F3C0);
    v0 = sub_2232002D4();
    if (!v1)
    {
      atomic_store(v0, &qword_280FCA4E0);
    }
  }
}

_BYTE *sub_2231EB678(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TCUMappedNLResponse.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2231EB834()
{
  result = qword_27D05ABB8;
  if (!qword_27D05ABB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05ABB8);
  }

  return result;
}

unint64_t sub_2231EB88C()
{
  result = qword_27D05ABC0;
  if (!qword_27D05ABC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05ABC0);
  }

  return result;
}

unint64_t sub_2231EB8E4()
{
  result = qword_280FCE478;
  if (!qword_280FCE478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE478);
  }

  return result;
}

unint64_t sub_2231EB93C()
{
  result = qword_280FCE480;
  if (!qword_280FCE480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE480);
  }

  return result;
}

unint64_t sub_2231EB994()
{
  result = qword_280FCA848;
  if (!qword_280FCA848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCA848);
  }

  return result;
}

unint64_t sub_2231EB9EC()
{
  result = qword_280FCA850;
  if (!qword_280FCA850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCA850);
  }

  return result;
}

unint64_t sub_2231EBA40()
{
  result = qword_280FCE468;
  if (!qword_280FCE468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE468);
  }

  return result;
}

void *TypingStartedMessage.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v19[-1] - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05ABC8, &qword_22321F5E8);
  v8 = OUTLINED_FUNCTION_9(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = a1[4];
  v12 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231EBDA0();
  sub_223200794();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for TypingStartedMessage(0);
    v13 = *((*MEMORY[0x277D85000] & *v20) + 0x30);
    v14 = *((*MEMORY[0x277D85000] & *v20) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_2231FFDA4();
    sub_2230D45E8(&qword_27D057ED0);
    sub_2232004C4();
    sub_2231EBE14(v6, v20 + OBJC_IVAR____TtC16SiriMessageTypes20TypingStartedMessage_typingSessionId);
    sub_2230F7158(a1, v19);
    v12 = SessionMessageBase.init(from:)(v19);
    v16 = OUTLINED_FUNCTION_1_10();
    v17(v16);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v12;
}

unint64_t sub_2231EBDA0()
{
  result = qword_27D05ABD0;
  if (!qword_27D05ABD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05ABD0);
  }

  return result;
}

uint64_t sub_2231EBE14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2231EBE84(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05ABD8, &qword_22321F5F0);
  v4 = OUTLINED_FUNCTION_9(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231EBDA0();
  sub_2232007A4();
  sub_2231FFDA4();
  sub_2230D45E8(&qword_280FCE688);
  sub_2232005E4();
  if (!v1)
  {
    sub_2230D46B0(a1);
  }

  return (*(v6 + 8))(v10, v3);
}

uint64_t sub_2231EC004(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6553676E69707974 && a2 == 0xEF64496E6F697373)
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

uint64_t sub_2231EC0AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231EC004(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2231EC0D8(uint64_t a1)
{
  v2 = sub_2231EBDA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231EC114(uint64_t a1)
{
  v2 = sub_2231EBDA0();

  return MEMORY[0x2821FE720](a1, v2);
}

void *TypingStartedMessage.init(build:)(void (*a1)(_BYTE *))
{
  v3 = type metadata accessor for TypingStartedMessage.Builder(0);
  v4 = (v3 - 8);
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_2231FFDA4();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v7[v4[7]] = 15;
  v9 = &v7[v4[8]];
  *v9 = 0;
  v9[1] = 0;
  __swift_storeEnumTagSinglePayload(&v7[v4[9]], 1, 1, v8);
  a1(v7);
  sub_2230D1480(v7, v1 + OBJC_IVAR____TtC16SiriMessageTypes20TypingStartedMessage_typingSessionId);
  v13 = v7;
  v10 = SessionMessageBase.init(build:)(sub_2231EC378);
  sub_2231EC380(v7);
  return v10;
}

uint64_t sub_2231EC2E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TypingStartedMessage.Builder(0);
  *a1 = *(a2 + v4[5]);
  v5 = (a2 + v4[6]);
  v7 = *v5;
  v6 = v5[1];
  v8 = *(a1 + 16);

  *(a1 + 8) = v7;
  *(a1 + 16) = v6;
  v9 = v4[7];
  v10 = *(type metadata accessor for SessionMessageBase.Builder(0) + 24);

  return sub_2230DAEC8(a2 + v9, a1 + v10);
}

uint64_t sub_2231EC380(uint64_t a1)
{
  v2 = type metadata accessor for TypingStartedMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TypingStartedMessage.Builder.source.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for TypingStartedMessage.Builder(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t TypingStartedMessage.Builder.source.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for TypingStartedMessage.Builder(0);
  *(v1 + *(result + 20)) = v2;
  return result;
}

uint64_t TypingStartedMessage.Builder.assistantId.getter()
{
  v1 = (v0 + *(type metadata accessor for TypingStartedMessage.Builder(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t TypingStartedMessage.Builder.assistantId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TypingStartedMessage.Builder(0) + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t TypingStartedMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TypingStartedMessage.Builder(0) + 28);

  return sub_2230D1480(v3, a1);
}

uint64_t TypingStartedMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_2_50() + 28);

  return sub_2230D4E04(v0, v2);
}

id TypingStartedMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TypingStartedMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2231EC6CC()
{
  sub_2230F6D30();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

_BYTE *storeEnumTagSinglePayload for TypingStartedMessage.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_2231EC860()
{
  result = qword_27D05ABF0;
  if (!qword_27D05ABF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05ABF0);
  }

  return result;
}

unint64_t sub_2231EC8B8()
{
  result = qword_27D05ABF8;
  if (!qword_27D05ABF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05ABF8);
  }

  return result;
}

unint64_t sub_2231EC910()
{
  result = qword_27D05AC00;
  if (!qword_27D05AC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AC00);
  }

  return result;
}

uint64_t sub_2231EC9CC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000223227570 == a2)
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

uint64_t sub_2231ECA6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231EC9CC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2231ECA98(uint64_t a1)
{
  v2 = sub_2231ED7C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231ECAD4(uint64_t a1)
{
  v2 = sub_2231ED7C0();

  return MEMORY[0x2821FE720](a1, v2);
}

void *UnsupportedLanguageDetectedMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return UnsupportedLanguageDetectedMessage.init(build:)(v1);
}

void *UnsupportedLanguageDetectedMessage.init(build:)(void (*a1)(char *))
{
  v2 = v1;
  swift_getObjectType();
  v4 = type metadata accessor for UnsupportedLanguageDetectedMessage.Builder(0);
  v5 = (v4 - 8);
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v8 = 15;
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  v9 = v5[8];
  v10 = sub_2231FFDA4();
  __swift_storeEnumTagSinglePayload(&v8[v9], 1, 1, v10);
  v11 = &v8[v5[9]];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &v8[v5[10]];
  *v12 = 0;
  *(v12 + 1) = 0;
  a1(v8);
  v13 = *(v12 + 1);
  if (v13)
  {
    v14 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes34UnsupportedLanguageDetectedMessage_languageDetected);
    *v14 = *v12;
    v14[1] = v13;
    MEMORY[0x28223BE20](v13);
    *(&v27 - 2) = v8;

    v15 = RequestMessageBase.init(build:)(sub_2231ED7B8);
    sub_2231ECE44(v8);
  }

  else
  {
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v16 = sub_223200014();
    __swift_project_value_buffer(v16, qword_280FCE830);
    v17 = sub_223200004();
    v18 = sub_223200254();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v28 = v20;
      *v19 = 136446210;
      v21 = sub_2230F7898();
      v23 = sub_2231A5D38(v21, v22, &v28);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_2230CE000, v17, v18, "Could not build %{public}s: Builder has missing required fields", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x223DD6780](v20, -1, -1);
      MEMORY[0x223DD6780](v19, -1, -1);
    }

    sub_2231ECE44(v8);
    type metadata accessor for UnsupportedLanguageDetectedMessage(0);
    v24 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
    v25 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v15;
}

uint64_t sub_2231ECE44(uint64_t a1)
{
  v2 = type metadata accessor for UnsupportedLanguageDetectedMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2231ECEC0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  v6 = *(a1 + 16);

  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  v7 = type metadata accessor for UnsupportedLanguageDetectedMessage.Builder(0);
  v8 = *(v7 + 24);
  v9 = type metadata accessor for RequestMessageBase.Builder(0);
  sub_2230DAEC8(a2 + v8, a1 + *(v9 + 24));
  v10 = (a2 + *(v7 + 28));
  v12 = *v10;
  v11 = v10[1];
  v13 = (a1 + *(v9 + 28));
  v14 = v13[1];

  *v13 = v12;
  v13[1] = v11;
  return result;
}

void *UnsupportedLanguageDetectedMessage.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AC08, &qword_22321F770);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231ED7C0();
  sub_223200794();
  if (v2)
  {
    v16 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for UnsupportedLanguageDetectedMessage(0);
    v11 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
    v12 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = sub_2232004F4();
    v14 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes34UnsupportedLanguageDetectedMessage_languageDetected);
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

uint64_t sub_2231ED1B8(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AC18, &unk_22321F778);
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v16 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231ED7C0();
  sub_2232007A4();
  v13 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes34UnsupportedLanguageDetectedMessage_languageDetected);
  v14 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes34UnsupportedLanguageDetectedMessage_languageDetected + 8);
  sub_2232005F4();
  if (!v2)
  {
    sub_2230D77A8(a1);
  }

  return (*(v7 + 8))(v11, v4);
}

uint64_t sub_2231ED370()
{
  v7 = 0;
  v8 = 0xE000000000000000;
  sub_223200374();
  v6.receiver = v0;
  v6.super_class = type metadata accessor for UnsupportedLanguageDetectedMessage(0);
  v1 = objc_msgSendSuper2(&v6, sel_description);
  v2 = sub_2232000C4();
  v4 = v3;

  v7 = v2;
  v8 = v4;
  MEMORY[0x223DD5AA0](0xD000000000000015, 0x80000002232274D0);
  MEMORY[0x223DD5AA0](*&v0[OBJC_IVAR____TtC16SiriMessageTypes34UnsupportedLanguageDetectedMessage_languageDetected], *&v0[OBJC_IVAR____TtC16SiriMessageTypes34UnsupportedLanguageDetectedMessage_languageDetected + 8]);
  MEMORY[0x223DD5AA0](62, 0xE100000000000000);
  return v7;
}

uint64_t UnsupportedLanguageDetectedMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t UnsupportedLanguageDetectedMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t UnsupportedLanguageDetectedMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for UnsupportedLanguageDetectedMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t UnsupportedLanguageDetectedMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_6_33() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t UnsupportedLanguageDetectedMessage.Builder.requestId.getter()
{
  v0 = type metadata accessor for UnsupportedLanguageDetectedMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 28));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t UnsupportedLanguageDetectedMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for UnsupportedLanguageDetectedMessage.Builder(0) + 28));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t UnsupportedLanguageDetectedMessage.Builder.languageDetected.getter()
{
  v0 = type metadata accessor for UnsupportedLanguageDetectedMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 32));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t UnsupportedLanguageDetectedMessage.Builder.languageDetected.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for UnsupportedLanguageDetectedMessage.Builder(0) + 32));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

id UnsupportedLanguageDetectedMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UnsupportedLanguageDetectedMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231ED7C0()
{
  result = qword_27D05AC10;
  if (!qword_27D05AC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AC10);
  }

  return result;
}

_BYTE *sub_2231ED8C4(_BYTE *result, int a2, int a3)
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

unint64_t sub_2231ED974()
{
  result = qword_27D05AC30;
  if (!qword_27D05AC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AC30);
  }

  return result;
}

unint64_t sub_2231ED9CC()
{
  result = qword_27D05AC38;
  if (!qword_27D05AC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AC38);
  }

  return result;
}

unint64_t sub_2231EDA24()
{
  result = qword_27D05AC40;
  if (!qword_27D05AC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AC40);
  }

  return result;
}

uint64_t static UserID.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_2232006B4();
  }
}

Swift::Bool __swiftcall UserID.compare(toUserId:)(SiriMessageTypes::UserID toUserId)
{
  countAndFlagsBits = toUserId.sharedUserId._countAndFlagsBits;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AC48, &qword_22321F930);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v13 - v5;
  v7 = *countAndFlagsBits;
  v8 = countAndFlagsBits[1];
  v9 = v1[1];
  v13[2] = *v1;
  v13[3] = v9;
  v13[0] = v7;
  v13[1] = v8;
  v10 = sub_2231FFDB4();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v10);
  sub_2230D1D30();

  v11 = sub_2232002F4();
  sub_2231EDBDC(v6);

  return v11 == 0;
}

uint64_t sub_2231EDBDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AC48, &qword_22321F930);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2231EDC64(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7355646572616873 && a2 == 0xEC00000064497265)
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

uint64_t sub_2231EDCE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231EDC64(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2231EDD0C(uint64_t a1)
{
  v2 = sub_2230D4FD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231EDD48(uint64_t a1)
{
  v2 = sub_2230D4FD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UserID.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_223200124();
}

uint64_t UserID.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_223200744();
  sub_223200124();
  return sub_223200764();
}

uint64_t UserID.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AC58, &qword_22321F940);
  v7 = OUTLINED_FUNCTION_0_15(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v19 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2230D4FD8();
  sub_223200794();
  if (!v2)
  {
    v15 = sub_2232004F4();
    v17 = v16;
    (*(v9 + 8))(v13, v3);
    *a2 = v15;
    a2[1] = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2231EDF64()
{
  result = qword_280FCA748;
  if (!qword_280FCA748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCA748);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for UserID.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_2231EE068()
{
  result = qword_27D05AC60;
  if (!qword_27D05AC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AC60);
  }

  return result;
}

unint64_t sub_2231EE0C0()
{
  result = qword_280FCA760;
  if (!qword_280FCA760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCA760);
  }

  return result;
}

unint64_t sub_2231EE118()
{
  result = qword_280FCA768;
  if (!qword_280FCA768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCA768);
  }

  return result;
}

void *sub_2231EE1C8(uint64_t a1, unsigned __int8 *a2, uint64_t (*a3)(void), void (*a4)(unsigned __int8 *))
{
  v51 = a4;
  v56 = a1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0) - 8) + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_10_23(v9);
  v10 = sub_2231FFDA4();
  v11 = OUTLINED_FUNCTION_9(v10);
  v52 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_2();
  v53 = v16 - v15;
  v17 = type metadata accessor for UserIdAwareResultCandidateMessageBase.Builder(0);
  v18 = (v17 - 8);
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_10_21(v20);
  v21 = v18[8];
  v55 = v10;
  __swift_storeEnumTagSinglePayload(&v4[v21], 1, 1, v10);
  v22 = &v4[v18[9]];
  *v22 = 0;
  *(v22 + 1) = 0;
  v23 = &v4[v18[10]];
  *v23 = 0;
  *(v23 + 1) = 0;
  v24 = &v4[v18[11]];
  *v24 = 0;
  *(v24 + 1) = 0;
  *v4 = *a2;
  v25 = *(a2 + 2);
  v50 = *(a2 + 1);
  *(v4 + 1) = v50;
  *(v4 + 2) = v25;
  v26 = a3(0);
  v27 = v26[6];

  sub_2230DAEC8(&a2[v27], &v4[v21]);
  v28 = &a2[v26[7]];
  v29 = *(v28 + 1);
  v49 = *v28;
  *v22 = v49;
  *(v22 + 1) = v29;
  v30 = &a2[v26[8]];
  v31 = *v30;
  v32 = *(v30 + 1);
  *v23 = *v30;
  *(v23 + 1) = v32;
  v33 = &a2[v26[9]];
  v35 = *v33;
  v34 = *(v33 + 1);
  v36 = *(v24 + 1);

  *v24 = v35;
  *(v24 + 1) = v34;
  v37 = *v4;
  if (v37 == 15 || !v25)
  {
    sub_2231EE94C(v4);
  }

  else
  {
    sub_2230D1480(&v4[v21], v54);
    if (__swift_getEnumTagSinglePayload(v54, 1, v55) == 1)
    {
      sub_2231EE94C(v4);
      sub_2230D69D4(v54);
    }

    else
    {
      v43 = v52;
      v44 = (*(v52 + 32))(v53, v54, v55);
      if (v29 && v32)
      {
        v45 = *(v24 + 1);
        if (v45)
        {
          v54 = &v49;
          v46 = (v56 + OBJC_IVAR____TtC16SiriMessageTypes37UserIdAwareResultCandidateMessageBase_userId);
          *v46 = *v24;
          v46[1] = v45;
          MEMORY[0x28223BE20](v44);
          *(&v49 - 64) = v37;
          v47 = v49;
          *(&v49 - 7) = v50;
          *(&v49 - 6) = v25;
          v48 = v53;
          *(&v49 - 5) = v53;
          *(&v49 - 4) = v47;
          *(&v49 - 3) = v29;
          *(&v49 - 2) = v31;
          *(&v49 - 1) = v32;

          v41 = ResultCandidateRequestMessageBase.init(build:)(v51);

          sub_2231EE94C(v4);
          (*(v43 + 8))(v48, v55);
          return v41;
        }

        sub_2231EE94C(v4);
        (*(v52 + 8))(v53, v55);
      }

      else
      {
        sub_2231EE94C(v4);
        (*(v52 + 8))(v53, v55);
      }
    }
  }

  type metadata accessor for UserIdAwareResultCandidateMessageBase(0);
  OUTLINED_FUNCTION_7_36();
  v39 = *((*MEMORY[0x277D85000] & v38) + 0x30);
  v40 = *((*MEMORY[0x277D85000] & v38) + 0x34);
  swift_deallocPartialClassInstance();
  return 0;
}

void *UserIdAwareResultCandidateMessageBase.init(build:)(void (*a1)(unsigned __int8 *))
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0) - 8) + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v4);
  v6 = v43 - v5;
  v7 = sub_2231FFDA4();
  v8 = OUTLINED_FUNCTION_9(v7);
  v46 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_2();
  v13 = OUTLINED_FUNCTION_10_23(v12);
  v14 = type metadata accessor for UserIdAwareResultCandidateMessageBase.Builder(v13);
  v15 = (v14 - 8);
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_10_21(v17);
  v18 = v15[8];
  __swift_storeEnumTagSinglePayload(&v1[v18], 1, 1, v7);
  v19 = &v1[v15[9]];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = &v1[v15[10]];
  *v20 = 0;
  *(v20 + 1) = 0;
  v21 = &v1[v15[11]];
  *v21 = 0;
  *(v21 + 1) = 0;
  a1(v1);
  v22 = *v1;
  if (v22 == 15 || (v23 = *(v1 + 2)) == 0)
  {
    sub_2231EE94C(v1);
  }

  else
  {
    v24 = *(v1 + 1);
    sub_2230D1480(&v1[v18], v6);
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
    {
      sub_2231EE94C(v1);
      sub_2230D69D4(v6);
    }

    else
    {
      v44 = v24;
      v31 = v45;
      v30 = v46;
      v32 = (*(v46 + 32))(v45, v6, v7);
      v33 = *(v19 + 1);
      if (v33)
      {
        if (*(v20 + 1))
        {
          v34 = *(v21 + 1);
          if (v34)
          {
            v43[1] = v43;
            v35 = *v19;
            v36 = *v20;
            v37 = v31;
            v38 = (v47 + OBJC_IVAR____TtC16SiriMessageTypes37UserIdAwareResultCandidateMessageBase_userId);
            *v38 = *v21;
            v38[1] = v34;
            MEMORY[0x28223BE20](v32);
            LOBYTE(v43[-8]) = v22;
            v43[-7] = v44;
            v43[-6] = v23;
            v43[-5] = v31;
            v43[-4] = v39;
            v43[-3] = v33;
            v43[-2] = v40;
            v43[-1] = v41;

            v42 = v30;
            v28 = ResultCandidateRequestMessageBase.init(build:)(sub_2231EEDE8);

            sub_2231EE94C(v1);
            (*(v42 + 8))(v37, v7);
            return v28;
          }
        }
      }

      sub_2231EE94C(v1);
      (*(v30 + 8))(v31, v7);
    }
  }

  type metadata accessor for UserIdAwareResultCandidateMessageBase(0);
  OUTLINED_FUNCTION_7_36();
  v26 = *((*MEMORY[0x277D85000] & v25) + 0x30);
  v27 = *((*MEMORY[0x277D85000] & v25) + 0x34);
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_2231EE94C(uint64_t a1)
{
  v2 = type metadata accessor for UserIdAwareResultCandidateMessageBase.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *UserIdAwareResultCandidateMessageBase.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AC68, &qword_22321FB78);
  OUTLINED_FUNCTION_9(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v8);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231EEDEC();
  sub_223200794();
  if (v2)
  {
    v15 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for UserIdAwareResultCandidateMessageBase(0);
    v10 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
    v11 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_2231105AC();
    sub_223200554();
    v13 = v18[1];
    v14 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes37UserIdAwareResultCandidateMessageBase_userId);
    *v14 = v18[0];
    v14[1] = v13;
    sub_2230F7158(a1, v18);
    v15 = ResultCandidateRequestMessageBase.init(from:)(v18);
    v16 = OUTLINED_FUNCTION_2();
    v17(v16);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v15;
}

uint64_t sub_2231EEBE4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AC70, &qword_22321FB80);
  OUTLINED_FUNCTION_9(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v10);
  v12 = v16 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231EEDEC();
  sub_2232007A4();
  v14 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes37UserIdAwareResultCandidateMessageBase_userId + 8);
  v16[0] = *(v3 + OBJC_IVAR____TtC16SiriMessageTypes37UserIdAwareResultCandidateMessageBase_userId);
  v16[1] = v14;
  sub_2230D37F0();

  sub_223200654();

  if (!v2)
  {
    sub_223190B78(a1);
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t UserIdAwareResultCandidateMessageBase.userId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes37UserIdAwareResultCandidateMessageBase_userId + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes37UserIdAwareResultCandidateMessageBase_userId);
  a1[1] = v2;
}

void *UserIdAwareResultCandidateMessageBase.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return UserIdAwareResultCandidateMessageBase.init(build:)(v1);
}

unint64_t sub_2231EEDEC()
{
  result = qword_280FCC150;
  if (!qword_280FCC150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCC150);
  }

  return result;
}

uint64_t sub_2231EEEEC()
{
  v1 = v0;
  v8 = 0;
  v9 = 0xE000000000000000;
  sub_223200374();
  v7.receiver = v0;
  v7.super_class = type metadata accessor for UserIdAwareResultCandidateMessageBase(0);
  v2 = objc_msgSendSuper2(&v7, sel_description);
  v3 = sub_2232000C4();
  v5 = v4;

  v8 = v3;
  v9 = v5;
  MEMORY[0x223DD5AA0](0x3A644963723C202CLL, 0xE900000000000020);
  MEMORY[0x223DD5AA0](*&v1[OBJC_IVAR____TtC16SiriMessageTypes33ResultCandidateRequestMessageBase_resultCandidateId], *&v1[OBJC_IVAR____TtC16SiriMessageTypes33ResultCandidateRequestMessageBase_resultCandidateId + 8]);
  MEMORY[0x223DD5AA0](0x726573753C202C3ELL, 0xEC000000203A6449);
  MEMORY[0x223DD5AA0](*&v1[OBJC_IVAR____TtC16SiriMessageTypes37UserIdAwareResultCandidateMessageBase_userId], *&v1[OBJC_IVAR____TtC16SiriMessageTypes37UserIdAwareResultCandidateMessageBase_userId + 8]);
  MEMORY[0x223DD5AA0](62, 0xE100000000000000);
  return v8;
}

BOOL sub_2231EF02C@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2230F4E88();
  *a2 = result;
  return result;
}

uint64_t sub_2231EF060@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2231EF00C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_2231EF08C@<W0>(_BYTE *a1@<X8>)
{
  result = sub_2230F4E88();
  *a1 = result;
  return result;
}

uint64_t sub_2231EF0B8(uint64_t a1)
{
  v2 = sub_2231EEDEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231EF0F4(uint64_t a1)
{
  v2 = sub_2231EEDEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UserIdAwareResultCandidateMessageBase.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t UserIdAwareResultCandidateMessageBase.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t UserIdAwareResultCandidateMessageBase.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for UserIdAwareResultCandidateMessageBase.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t UserIdAwareResultCandidateMessageBase.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_5_32() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t UserIdAwareResultCandidateMessageBase.Builder.requestId.getter()
{
  v1 = (v0 + *(type metadata accessor for UserIdAwareResultCandidateMessageBase.Builder(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t UserIdAwareResultCandidateMessageBase.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for UserIdAwareResultCandidateMessageBase.Builder(0) + 28));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t UserIdAwareResultCandidateMessageBase.Builder.resultCandidateId.getter()
{
  v1 = (v0 + *(type metadata accessor for UserIdAwareResultCandidateMessageBase.Builder(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t UserIdAwareResultCandidateMessageBase.Builder.resultCandidateId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for UserIdAwareResultCandidateMessageBase.Builder(0) + 32));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t UserIdAwareResultCandidateMessageBase.Builder.userId.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for UserIdAwareResultCandidateMessageBase.Builder(0) + 36));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t UserIdAwareResultCandidateMessageBase.Builder.userId.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for UserIdAwareResultCandidateMessageBase.Builder(0) + 36));
  v5 = v4[1];

  *v4 = v2;
  v4[1] = v3;
  return result;
}

id UserIdAwareResultCandidateMessageBase.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UserIdAwareResultCandidateMessageBase(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

_BYTE *storeEnumTagSinglePayload for UserIdAwareResultCandidateMessageBase.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_2231EF698()
{
  result = qword_27D05AC78;
  if (!qword_27D05AC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AC78);
  }

  return result;
}

unint64_t sub_2231EF6F0()
{
  result = qword_280FCC140;
  if (!qword_280FCC140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCC140);
  }

  return result;
}

unint64_t sub_2231EF748()
{
  result = qword_280FCC148;
  if (!qword_280FCC148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCC148);
  }

  return result;
}

void *UserIdentificationMessage.voiceIdScoreCard.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes25UserIdentificationMessage_voiceIdScoreCard);
  v2 = v1;
  return v1;
}

uint64_t UserIdentificationMessage.voiceIdClassification.getter()
{
  result = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes25UserIdentificationMessage_voiceIdClassification);
  v2 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes25UserIdentificationMessage_voiceIdClassification + 8);
  return result;
}

uint64_t sub_2231EF83C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x8000000223227770 == a2;
  if (v3 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6353644972657375 && a2 == 0xEC0000007365726FLL;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x8000000223221290 == a2;
      if (v7 || (sub_2232006B4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000019 && 0x80000002232277A0 == a2;
        if (v8 || (sub_2232006B4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x64657463656C6573 && a2 == 0xEF73644972657355;
          if (v9 || (sub_2232006B4() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000015 && 0x8000000223220CA0 == a2;
            if (v10 || (sub_2232006B4() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x5364496563696F76 && a2 == 0xED00007365726F63)
            {

              return 6;
            }

            else
            {
              v12 = sub_2232006B4();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_2231EFA88(char a1)
{
  result = 0x6353644972657375;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      v3 = 9;
      goto LABEL_7;
    case 4:
      result = 0x64657463656C6573;
      break;
    case 5:
      v3 = 5;
LABEL_7:
      result = v3 | 0xD000000000000010;
      break;
    case 6:
      result = 0x5364496563696F76;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_2231EFB94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231EF83C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2231EFBBC(uint64_t a1)
{
  v2 = sub_2231F1C30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231EFBF8(uint64_t a1)
{
  v2 = sub_2231F1C30();

  return MEMORY[0x2821FE720](a1, v2);
}

void *UserIdentificationMessage.init(build:)(void (*a1)(unsigned __int8 *), uint64_t a2)
{
  v72 = a2;
  v73 = a1;
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v64[-v4];
  v6 = sub_2231FFDA4();
  v7 = OUTLINED_FUNCTION_9(v6);
  v68 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v69 = &v64[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for UserIdentificationMessage.Builder(0);
  v13 = (v12 - 8);
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v64[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v16 = 15;
  *(v16 + 1) = 0;
  *(v16 + 2) = 0;
  v17 = v13[8];
  v70 = v6;
  __swift_storeEnumTagSinglePayload(&v16[v17], 1, 1, v6);
  v18 = &v16[v13[9]];
  *v18 = 0;
  *(v18 + 1) = 0;
  v16[v13[10]] = 2;
  v19 = &v16[v13[11]];
  *v19 = 0;
  v19[8] = 1;
  v20 = v13[12];
  *&v16[v20] = 0;
  v66 = v13[13];
  *&v16[v66] = 0;
  v21 = v13[14];
  v16[v21] = 2;
  v22 = v13[15];
  *&v16[v22] = 0;
  v23 = &v16[v13[16]];
  *v23 = 0;
  v67 = v23;
  v23[8] = 1;
  v24 = v13[17];
  *&v16[v24] = 0;
  v73(v16);
  v25 = *v16;
  if (v25 == 15 || !*(v16 + 2))
  {
    goto LABEL_11;
  }

  v73 = *(v16 + 2);
  v72 = *(v16 + 1);
  sub_2230D1480(&v16[v17], v5);
  v26 = v70;
  if (__swift_getEnumTagSinglePayload(v5, 1, v70) != 1)
  {
    v65 = v25;
    v27 = v68;
    (*(v68 + 32))(v69, v5, v26);
    if (!*(v18 + 1) || (v19[8] & 1) != 0 || (v28 = *&v16[v20]) == 0)
    {
      (*(v27 + 8))(v69, v26);
      goto LABEL_11;
    }

    ObjectType = *(v18 + 1);
    v29 = *v18;
    v30 = v74;
    *(v74 + OBJC_IVAR____TtC16SiriMessageTypes25UserIdentificationMessage_userClassification) = *v19;
    *(v30 + OBJC_IVAR____TtC16SiriMessageTypes25UserIdentificationMessage_userIdScores) = v28;
    v31 = v66;
    v32 = *&v16[v66];
    *(v30 + OBJC_IVAR____TtC16SiriMessageTypes25UserIdentificationMessage_voiceIdScoreCard) = v32;
    *(v30 + OBJC_IVAR____TtC16SiriMessageTypes25UserIdentificationMessage_userMeetsRecencyThreshold) = v16[v21] & 1;
    v33 = *&v16[v22];
    if (v33)
    {
      *(v30 + OBJC_IVAR____TtC16SiriMessageTypes25UserIdentificationMessage_selectedUserIds) = v33;
      v34 = v32;

      v35 = v69;
LABEL_22:
      v56 = v67[8];
      v57 = v30 + OBJC_IVAR____TtC16SiriMessageTypes25UserIdentificationMessage_voiceIdClassification;
      *v57 = *v67;
      *(v57 + 8) = v56;
      v58 = *&v16[v24];

      if (v58)
      {
        v59 = v58;
      }

      else
      {
        v59 = sub_223200064();
      }

      *(v30 + OBJC_IVAR____TtC16SiriMessageTypes25UserIdentificationMessage_voiceIdScores) = v59;
      MEMORY[0x28223BE20](v59);
      v64[-48] = v65;
      v60 = v73;
      *&v64[-40] = v72;
      *&v64[-32] = v60;
      *&v64[-24] = v35;
      *&v64[-16] = v29;
      *&v64[-8] = ObjectType;

      v61 = RequestMessageBase.init(build:)(sub_2230DDE2C);
      v48 = v61;
      if (v61)
      {
        v62 = *(v68 + 8);
        v63 = v61;
        v62(v35, v26);
        sub_2231F02EC(v16);
      }

      else
      {
        (*(v68 + 8))(v35, v26);
        sub_2231F02EC(v16);
      }

      return v48;
    }

    if (v32)
    {
      v50 = v32;

      v51 = sub_2231F1C04(&v16[v31]);
      v35 = v69;
      if (v52)
      {
        v53 = v51;
        v54 = v52;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0598C0, &qword_223214508);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_223205AB0;
        *(inited + 32) = v53;
        *(inited + 40) = v54;
        *(v30 + OBJC_IVAR____TtC16SiriMessageTypes25UserIdentificationMessage_selectedUserIds) = sub_2231F1A74(inited);
        goto LABEL_22;
      }
    }

    else
    {

      v35 = v69;
    }

    *(v30 + OBJC_IVAR____TtC16SiriMessageTypes25UserIdentificationMessage_selectedUserIds) = MEMORY[0x277D84FA0];
    goto LABEL_22;
  }

  sub_2230D69D4(v5);
LABEL_11:
  if (qword_280FCA778 != -1)
  {
    swift_once();
  }

  v36 = sub_223200014();
  __swift_project_value_buffer(v36, qword_280FCE830);
  v37 = sub_223200004();
  v38 = sub_223200254();
  v39 = os_log_type_enabled(v37, v38);
  v40 = v74;
  if (v39)
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v75 = v42;
    *v41 = 136446210;
    v43 = sub_2230F7898();
    v45 = sub_2231A5D38(v43, v44, &v75);

    *(v41 + 4) = v45;
    _os_log_impl(&dword_2230CE000, v37, v38, "Could not build %{public}s: Builder has missing required fields", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v42);
    MEMORY[0x223DD6780](v42, -1, -1);
    MEMORY[0x223DD6780](v41, -1, -1);
  }

  sub_2231F02EC(v16);
  type metadata accessor for UserIdentificationMessage(0);
  v46 = *((*MEMORY[0x277D85000] & *v40) + 0x30);
  v47 = *((*MEMORY[0x277D85000] & *v40) + 0x34);
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_2231F02EC(uint64_t a1)
{
  v2 = type metadata accessor for UserIdentificationMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *UserIdentificationMessage.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AC80, &unk_22321FD60);
  v6 = v5;
  v7 = OUTLINED_FUNCTION_9(v5);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v35 - v10;
  v12 = a1[4];
  v13 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231F1C30();
  OUTLINED_FUNCTION_20();
  sub_223200794();
  v14 = &qword_280FCDFA0[12];
  if (v2)
  {
    v17 = 0;
    OUTLINED_FUNCTION_11_16();
    goto LABEL_4;
  }

  LOBYTE(v38) = 0;
  OUTLINED_FUNCTION_0();
  v15 = sub_2232004B4();
  if (v16)
  {
    v23 = 0;
  }

  else
  {
    v23 = v15;
  }

  *(v3 + OBJC_IVAR____TtC16SiriMessageTypes25UserIdentificationMessage_userClassification) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AB78, &qword_22321F100);
  v40 = 1;
  sub_2231EB2C4(&qword_27D05AB80);
  OUTLINED_FUNCTION_12_17();
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_10_5();
  sub_223200554();
  *(v3 + OBJC_IVAR____TtC16SiriMessageTypes25UserIdentificationMessage_userIdScores) = v38;
  v40 = 2;
  sub_2230FB7A0();
  OUTLINED_FUNCTION_12_17();
  OUTLINED_FUNCTION_10_5();
  sub_2232004C4();
  v26 = v39;
  if (v39 >> 60 == 15)
  {
    v27 = 0;
    goto LABEL_19;
  }

  v37 = v38;
  v35 = sub_2230FB7F4(0, &qword_27D0576E8, 0x277CCAAC8);
  sub_2230FB7F4(0, &qword_280FCA3C8, 0x277CEF520);
  v36 = v26;
  v27 = sub_223200264();
  if (!v27)
  {
    v13 = 0x8000000223223760;
    sub_2230F9E38();
    swift_allocError();
    *v32 = 0xD000000000000033;
    *(v32 + 8) = 0x8000000223223760;
    *(v32 + 16) = 0;
    swift_willThrow();
    sub_22310A610(v37, v36);
    v24 = OUTLINED_FUNCTION_2();
    v25(v24);
    OUTLINED_FUNCTION_11_16();
    v17 = 1;
    v14 = qword_280FCDFA0 + 96;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(a1);
    if (v6)
    {
      return v13;
    }

    if (v17)
    {
      v18 = *(v3 + OBJC_IVAR____TtC16SiriMessageTypes25UserIdentificationMessage_userIdScores);

      if (!v11)
      {
        goto LABEL_7;
      }
    }

    else if (!v11)
    {
LABEL_7:
      if (!v13)
      {
LABEL_9:
        type metadata accessor for UserIdentificationMessage(0);
        v20 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
        v21 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
        swift_deallocPartialClassInstance();
        return v13;
      }

LABEL_8:
      v19 = *(v3 + v14[400]);

      goto LABEL_9;
    }

    if (!v13)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  sub_22310A610(v37, v36);
LABEL_19:
  *(v3 + OBJC_IVAR____TtC16SiriMessageTypes25UserIdentificationMessage_voiceIdScoreCard) = v27;
  LOBYTE(v38) = 3;
  OUTLINED_FUNCTION_0();
  *(v3 + OBJC_IVAR____TtC16SiriMessageTypes25UserIdentificationMessage_userMeetsRecencyThreshold) = sub_223200504() & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A0E8, &qword_22321FD70);
  v40 = 4;
  sub_2231F1C84(&qword_27D05A0F0);
  OUTLINED_FUNCTION_12_17();
  OUTLINED_FUNCTION_10_5();
  sub_223200554();
  *(v3 + OBJC_IVAR____TtC16SiriMessageTypes25UserIdentificationMessage_selectedUserIds) = v38;
  LOBYTE(v38) = 5;
  OUTLINED_FUNCTION_0();
  v28 = sub_2232004B4();
  v30 = v3 + OBJC_IVAR____TtC16SiriMessageTypes25UserIdentificationMessage_voiceIdClassification;
  if (v29)
  {
    v31 = 0;
  }

  else
  {
    v31 = v28;
  }

  *v30 = v31;
  v30[8] = v29 & 1;
  v40 = 6;
  OUTLINED_FUNCTION_12_17();
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_10_5();
  sub_223200554();
  *(v3 + OBJC_IVAR____TtC16SiriMessageTypes25UserIdentificationMessage_voiceIdScores) = v38;
  sub_2230F7158(a1, &v38);
  v13 = RequestMessageBase.init(from:)(&v38);
  v33 = OUTLINED_FUNCTION_2();
  v34(v33);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v13;
}

uint64_t sub_2231F0958(void *a1)
{
  v3 = v1;
  v38 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AC90, &qword_22321FD78);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v31 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231F1C30();
  OUTLINED_FUNCTION_20();
  sub_2232007A4();
  v14 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes25UserIdentificationMessage_userClassification);
  LOBYTE(v36) = 0;
  OUTLINED_FUNCTION_10();
  sub_223200634();
  if (!v2)
  {
    v36 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes25UserIdentificationMessage_userIdScores);
    v35 = 1;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AB78, &qword_22321F100);
    v16 = sub_2231EB2C4(&qword_280FCA4E8);
    OUTLINED_FUNCTION_2_51();
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_10();
    sub_223200654();
    v34 = v15;
    v19 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes25UserIdentificationMessage_voiceIdScoreCard);
    if (v19)
    {
      v31 = v16;
      v20 = objc_opt_self();
      v36 = 0;
      v21 = v19;
      v22 = [v20 archivedDataWithRootObject:v21 requiringSecureCoding:1 error:&v36];
      v23 = v36;
      if (!v22)
      {
        v27 = v23;
        sub_2231FFD04();

        swift_willThrow();
        goto LABEL_3;
      }

      v33 = v21;
      v24 = sub_2231FFD24();
      v26 = v25;

      v32 = v24;
      v36 = v24;
      v37 = v26;
      v35 = 2;
      sub_2230D7754();
      OUTLINED_FUNCTION_2_51();
      OUTLINED_FUNCTION_10();
      sub_223200654();

      sub_2230D94DC(v32, v26);
    }

    v28 = *(v3 + OBJC_IVAR____TtC16SiriMessageTypes25UserIdentificationMessage_userMeetsRecencyThreshold);
    LOBYTE(v36) = 3;
    OUTLINED_FUNCTION_10();
    sub_223200604();
    v36 = *(v3 + OBJC_IVAR____TtC16SiriMessageTypes25UserIdentificationMessage_selectedUserIds);
    v35 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A0E8, &qword_22321FD70);
    sub_2231F1C84(&qword_27D05A118);
    OUTLINED_FUNCTION_2_51();
    OUTLINED_FUNCTION_10();
    sub_223200654();
    v29 = *(v3 + OBJC_IVAR____TtC16SiriMessageTypes25UserIdentificationMessage_voiceIdClassification + 8);
    if (v29)
    {
      v30 = 0;
    }

    else
    {
      v30 = *(v3 + OBJC_IVAR____TtC16SiriMessageTypes25UserIdentificationMessage_voiceIdClassification);
    }

    v36 = v30;
    LOBYTE(v37) = v29;
    v35 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A220, &qword_22321FD80);
    sub_2231B2C04();
    OUTLINED_FUNCTION_2_51();
    OUTLINED_FUNCTION_10();
    sub_223200654();
    v36 = *(v3 + OBJC_IVAR____TtC16SiriMessageTypes25UserIdentificationMessage_voiceIdScores);
    v35 = 6;
    OUTLINED_FUNCTION_2_51();
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_10();
    sub_223200654();
    sub_2230D77A8(a1);
  }

LABEL_3:
  result = (*(v8 + 8))(v12, v5);
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2231F0E14()
{
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_223200374();
  v29.receiver = v0;
  v29.super_class = type metadata accessor for UserIdentificationMessage(0);
  v1 = objc_msgSendSuper2(&v29, sel_description);
  v2 = sub_2232000C4();
  v4 = v3;

  v30 = v2;
  v31 = v4;
  OUTLINED_FUNCTION_7_37();
  MEMORY[0x223DD5AA0]();
  v27 = *&v0[OBJC_IVAR____TtC16SiriMessageTypes25UserIdentificationMessage_userClassification];
  v5 = sub_2232006A4();
  MEMORY[0x223DD5AA0](v5);

  OUTLINED_FUNCTION_7_37();
  MEMORY[0x223DD5AA0](0xD000000000000012);
  v6 = *&v0[OBJC_IVAR____TtC16SiriMessageTypes25UserIdentificationMessage_userIdScores];
  v7 = sub_223200054();
  MEMORY[0x223DD5AA0](v7);

  v8 = 0xE300000000000000;
  OUTLINED_FUNCTION_14_14();
  v10 = v30;
  v9 = v31;
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_223200374();
  OUTLINED_FUNCTION_7_37();
  MEMORY[0x223DD5AA0]();
  if (v0[OBJC_IVAR____TtC16SiriMessageTypes25UserIdentificationMessage_userMeetsRecencyThreshold])
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (v0[OBJC_IVAR____TtC16SiriMessageTypes25UserIdentificationMessage_userMeetsRecencyThreshold])
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  MEMORY[0x223DD5AA0](v11, v12);

  OUTLINED_FUNCTION_7_37();
  MEMORY[0x223DD5AA0]();
  v13 = *&v0[OBJC_IVAR____TtC16SiriMessageTypes25UserIdentificationMessage_selectedUserIds];
  v14 = sub_223200234();
  MEMORY[0x223DD5AA0](v14);

  OUTLINED_FUNCTION_14_14();
  v15 = v30;
  v16 = v31;
  v30 = v10;
  v31 = v9;

  MEMORY[0x223DD5AA0](v15, v16);

  v18 = v30;
  v17 = v31;
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_223200374();
  OUTLINED_FUNCTION_7_37();
  MEMORY[0x223DD5AA0]();
  if (v0[OBJC_IVAR____TtC16SiriMessageTypes25UserIdentificationMessage_voiceIdClassification + 8])
  {
    v19 = 7104878;
  }

  else
  {
    v28 = *&v0[OBJC_IVAR____TtC16SiriMessageTypes25UserIdentificationMessage_voiceIdClassification];
    sub_2231F1CF0();
    v19 = sub_223200304();
    v8 = v20;
  }

  MEMORY[0x223DD5AA0](v19, v8);

  OUTLINED_FUNCTION_7_37();
  MEMORY[0x223DD5AA0]();
  v21 = *&v0[OBJC_IVAR____TtC16SiriMessageTypes25UserIdentificationMessage_voiceIdScores];
  v22 = sub_223200054();
  MEMORY[0x223DD5AA0](v22);

  OUTLINED_FUNCTION_7_37();
  MEMORY[0x223DD5AA0]();
  v23 = *&v0[OBJC_IVAR____TtC16SiriMessageTypes25UserIdentificationMessage_voiceIdScoreCard];
  if (v23)
  {
    [v23 hasSufficientAudioProcessed];
  }

  type metadata accessor for AFBoolean();
  sub_2232003C4();
  MEMORY[0x223DD5AA0](10558, 0xE200000000000000);
  v24 = v30;
  v25 = v31;
  v30 = v18;
  v31 = v17;

  MEMORY[0x223DD5AA0](v24, v25);

  return v30;
}

uint64_t UserIdentificationMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t UserIdentificationMessage.Builder.assistantId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t UserIdentificationMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for UserIdentificationMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t UserIdentificationMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_9_31() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t UserIdentificationMessage.Builder.requestId.getter()
{
  v1 = (v0 + *(type metadata accessor for UserIdentificationMessage.Builder(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t UserIdentificationMessage.Builder.requestId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for UserIdentificationMessage.Builder(0) + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t UserIdentificationMessage.Builder.isMitigated.setter(char a1)
{
  result = type metadata accessor for UserIdentificationMessage.Builder(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t UserIdentificationMessage.Builder.userClassification.getter()
{
  v1 = (v0 + *(type metadata accessor for UserIdentificationMessage.Builder(0) + 36));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t UserIdentificationMessage.Builder.userIdScores.getter()
{
  v1 = *(v0 + *(type metadata accessor for UserIdentificationMessage.Builder(0) + 40));
}

uint64_t UserIdentificationMessage.Builder.userIdScores.setter()
{
  v2 = *(OUTLINED_FUNCTION_9_31() + 40);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

void *UserIdentificationMessage.Builder.voiceIdScoreCard.getter()
{
  v1 = *(v0 + *(type metadata accessor for UserIdentificationMessage.Builder(0) + 44));
  v2 = v1;
  return v1;
}

void UserIdentificationMessage.Builder.voiceIdScoreCard.setter()
{
  v2 = *(OUTLINED_FUNCTION_9_31() + 44);

  *(v1 + v2) = v0;
}

uint64_t UserIdentificationMessage.Builder.userMeetsRecencyThreshold.setter(char a1)
{
  result = type metadata accessor for UserIdentificationMessage.Builder(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t UserIdentificationMessage.Builder.selectedUserIds.getter()
{
  v1 = *(v0 + *(type metadata accessor for UserIdentificationMessage.Builder(0) + 52));
}

uint64_t UserIdentificationMessage.Builder.selectedUserIds.setter()
{
  v2 = *(OUTLINED_FUNCTION_9_31() + 52);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t UserIdentificationMessage.Builder.voiceIdClassification.getter()
{
  v1 = (v0 + *(type metadata accessor for UserIdentificationMessage.Builder(0) + 56));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t UserIdentificationMessage.Builder.voiceIdScores.getter()
{
  v1 = *(v0 + *(type metadata accessor for UserIdentificationMessage.Builder(0) + 60));
}

uint64_t UserIdentificationMessage.Builder.voiceIdScores.setter()
{
  v2 = *(OUTLINED_FUNCTION_9_31() + 60);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t sub_2231F1970()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes25UserIdentificationMessage_userIdScores);

  v2 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes25UserIdentificationMessage_selectedUserIds);

  v3 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes25UserIdentificationMessage_voiceIdScores);
}

id UserIdentificationMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UserIdentificationMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2231F1A74(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A180, &unk_223218EC0);
  result = sub_223200354();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_19:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    v10 = *(v3 + 40);
    sub_223200744();

    sub_223200124();
    result = sub_223200764();
    v11 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v12 = result & v11;
      v13 = (result & v11) >> 6;
      v14 = *(v6 + 8 * v13);
      v15 = 1 << (result & v11);
      if ((v15 & v14) == 0)
      {
        break;
      }

      v16 = (*(v3 + 48) + 16 * v12);
      v17 = *v16 == v9 && v16[1] == v8;
      if (v17 || (sub_2232006B4() & 1) != 0)
      {

        goto LABEL_16;
      }

      result = v12 + 1;
    }

    *(v6 + 8 * v13) = v15 | v14;
    v18 = (*(v3 + 48) + 16 * v12);
    *v18 = v9;
    v18[1] = v8;
    v19 = *(v3 + 16);
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      goto LABEL_21;
    }

    *(v3 + 16) = v21;
LABEL_16:
    if (v5 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_2231F1C04(id *a1)
{
  v1 = *a1;

  return sub_2231F21F8(v1);
}

unint64_t sub_2231F1C30()
{
  result = qword_27D05AC88;
  if (!qword_27D05AC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AC88);
  }

  return result;
}

uint64_t sub_2231F1C84(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D05A0E8, &qword_22321FD70);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2231F1CF0()
{
  result = qword_27D05AC98;
  if (!qword_27D05AC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AC98);
  }

  return result;
}

uint64_t sub_2231F1E18()
{
  sub_2230D525C(319, &qword_280FCB0A8);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_2230FBAF8(319, &qword_280FCE678, MEMORY[0x277CC95F0]);
      if (v6 > 0x3F)
      {
        return v5;
      }

      sub_2230D525C(319, &qword_280FCA440);
      v1 = v7;
      if (v8 > 0x3F)
      {
        return v1;
      }

      sub_2230FBAF8(319, &qword_280FCA368, type metadata accessor for AFUserIdentityClassfication);
      if (v10 > 0x3F)
      {
        return v9;
      }

      sub_223110900(319, &qword_27D05ACB0, &qword_27D05AB78, &qword_22321F100);
      if (v12 > 0x3F)
      {
        return v11;
      }

      sub_223110954();
      if (v13 > 0x3F)
      {
        return v5;
      }

      sub_223110900(319, &qword_27D05A158, &qword_27D05A0E8, &qword_22321FD70);
      v1 = v14;
      if (v15 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

_BYTE *storeEnumTagSinglePayload for UserIdentificationMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2231F20F4()
{
  result = qword_27D05ACB8;
  if (!qword_27D05ACB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05ACB8);
  }

  return result;
}

unint64_t sub_2231F214C()
{
  result = qword_27D05ACC0;
  if (!qword_27D05ACC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05ACC0);
  }

  return result;
}

unint64_t sub_2231F21A4()
{
  result = qword_27D05ACC8;
  if (!qword_27D05ACC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05ACC8);
  }

  return result;
}

uint64_t sub_2231F21F8(void *a1)
{
  v2 = [a1 userClassified];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_2232000C4();

  return v3;
}

uint64_t UserSessionAccessLevel.description.getter()
{
  if (*v0)
  {
    result = 1751607656;
  }

  else
  {
    result = 7827308;
  }

  *v0;
  return result;
}

uint64_t sub_2231F22C8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7827308 && a2 == 0xE300000000000000;
  if (v3 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1751607656 && a2 == 0xE400000000000000)
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

uint64_t sub_2231F2390(char a1)
{
  if (a1)
  {
    return 1751607656;
  }

  else
  {
    return 7827308;
  }
}

uint64_t sub_2231F23C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231F22C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2231F23E8(uint64_t a1)
{
  v2 = sub_2231F27D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231F2424(uint64_t a1)
{
  v2 = sub_2231F27D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2231F2460(uint64_t a1)
{
  v2 = sub_2231F2824();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231F249C(uint64_t a1)
{
  v2 = sub_2231F2824();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2231F24D8(uint64_t a1)
{
  v2 = sub_2231F2878();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231F2514(uint64_t a1)
{
  v2 = sub_2231F2878();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UserSessionAccessLevel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05ACD0, &qword_22321FF80);
  v4 = OUTLINED_FUNCTION_9(v3);
  v34 = v5;
  v35 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v8);
  v33 = &v31 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05ACD8, &qword_22321FF88);
  v11 = OUTLINED_FUNCTION_9(v10);
  v31 = v12;
  v32 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v15);
  v17 = &v31 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05ACE0, &qword_22321FF90);
  OUTLINED_FUNCTION_9(v18);
  v20 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v23);
  v25 = &v31 - v24;
  v26 = *v1;
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231F27D0();
  sub_2232007A4();
  v28 = (v20 + 8);
  if (v26)
  {
    v37 = 1;
    sub_2231F2824();
    v29 = v33;
    sub_2232005B4();
    (*(v34 + 8))(v29, v35);
  }

  else
  {
    v36 = 0;
    sub_2231F2878();
    sub_2232005B4();
    (*(v31 + 8))(v17, v32);
  }

  return (*v28)(v25, v18);
}

unint64_t sub_2231F27D0()
{
  result = qword_27D05ACE8;
  if (!qword_27D05ACE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05ACE8);
  }

  return result;
}

unint64_t sub_2231F2824()
{
  result = qword_27D05ACF0;
  if (!qword_27D05ACF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05ACF0);
  }

  return result;
}

unint64_t sub_2231F2878()
{
  result = qword_27D05ACF8;
  if (!qword_27D05ACF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05ACF8);
  }

  return result;
}

uint64_t UserSessionAccessLevel.hashValue.getter()
{
  v1 = *v0;
  sub_223200744();
  MEMORY[0x223DD60B0](v1);
  return sub_223200764();
}

uint64_t UserSessionAccessLevel.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v50 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AD00, &qword_22321FF98);
  OUTLINED_FUNCTION_9(v52);
  v49 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v6);
  v8 = v45 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AD08, &qword_22321FFA0);
  OUTLINED_FUNCTION_9(v9);
  v48 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v13);
  v15 = v45 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AD10, &unk_22321FFA8);
  OUTLINED_FUNCTION_9(v16);
  v51 = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v20);
  v22 = v45 - v21;
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231F27D0();
  v24 = v53;
  sub_223200794();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v46 = v9;
  v47 = v15;
  v53 = a1;
  v25 = v52;
  v26 = sub_223200594();
  result = sub_2230E0B80(v26, 0);
  if (v29 == v30 >> 1)
  {
    v52 = result;
LABEL_9:
    v40 = sub_2232003A4();
    swift_allocError();
    v42 = v41;
    v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057788, &qword_223203DF0) + 48);
    *v42 = &type metadata for UserSessionAccessLevel;
    sub_223200484();
    sub_223200394();
    (*(*(v40 - 8) + 104))(v42, *MEMORY[0x277D84160], v40);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v51 + 8))(v22, v16);
    a1 = v53;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v45[1] = 0;
  if (v29 >= (v30 >> 1))
  {
    __break(1u);
  }

  else
  {
    v31 = *(v28 + v29);
    v32 = sub_2230E0B40(v29 + 1);
    v34 = v33;
    v36 = v35;
    swift_unknownObjectRelease();
    if (v34 != v36 >> 1)
    {
      v52 = v32;
      goto LABEL_9;
    }

    v54 = v31;
    if (v31)
    {
      v56 = 1;
      sub_2231F2824();
      v37 = v8;
      OUTLINED_FUNCTION_3();
      v38 = v50;
      v39 = v51;
      swift_unknownObjectRelease();
      (*(v49 + 8))(v37, v25);
    }

    else
    {
      v55 = 0;
      sub_2231F2878();
      v44 = v47;
      OUTLINED_FUNCTION_3();
      v38 = v50;
      v39 = v51;
      swift_unknownObjectRelease();
      (*(v48 + 8))(v44, v46);
    }

    (*(v39 + 8))(v22, v34);
    *v38 = v54;
    return __swift_destroy_boxed_opaque_existential_1(v53);
  }

  return result;
}

unint64_t sub_2231F2DF4()
{
  result = qword_27D05AD18;
  if (!qword_27D05AD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AD18);
  }

  return result;
}

_BYTE *sub_2231F2E58(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2231F2F58()
{
  result = qword_27D05AD20;
  if (!qword_27D05AD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AD20);
  }

  return result;
}

unint64_t sub_2231F2FB0()
{
  result = qword_27D05AD28;
  if (!qword_27D05AD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AD28);
  }

  return result;
}

unint64_t sub_2231F3008()
{
  result = qword_27D05AD30;
  if (!qword_27D05AD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AD30);
  }

  return result;
}

unint64_t sub_2231F3060()
{
  result = qword_27D05AD38;
  if (!qword_27D05AD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AD38);
  }

  return result;
}

unint64_t sub_2231F30B8()
{
  result = qword_27D05AD40;
  if (!qword_27D05AD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AD40);
  }

  return result;
}

unint64_t sub_2231F3110()
{
  result = qword_27D05AD48;
  if (!qword_27D05AD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AD48);
  }

  return result;
}

unint64_t sub_2231F3168()
{
  result = qword_27D05AD50;
  if (!qword_27D05AD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AD50);
  }

  return result;
}

unint64_t UserSessionState.activePersonaId.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  if (v2)
  {
    if (v2 == 1)
    {
      v6 = *v0;
      OUTLINED_FUNCTION_12_18();
      sub_2230D9D28(v7, v8);
      OUTLINED_FUNCTION_4_0();
      return 0xD000000000000024;
    }

    else
    {
      v14 = v0[1];
    }
  }

  else
  {
    v9 = *v0;
    OUTLINED_FUNCTION_12_18();
    sub_2230D954C(v10, v11);
    OUTLINED_FUNCTION_12_18();
    sub_2230D9D28(v12, v13);
    OUTLINED_FUNCTION_4_0();
    return 0;
  }

  return v1;
}

void UserSessionState.init(withPersonaId:siriSharedUserId:accessLevel:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = a2;
  v10 = a3[1];
  if (a2)
  {
    v5 = a1;
    v11 = a1 == 0xD000000000000024 && 0x80000002232216F0 == a2;
    if (v11 || (v6 = *a3, v7 = *a4, (sub_2232006B4() & 1) != 0))
    {

      OUTLINED_FUNCTION_25_6();
      v8 = 1;
    }
  }

  else
  {
    v12 = a3[1];

    OUTLINED_FUNCTION_25_6();
  }

  *a5 = v5;
  *(a5 + 8) = v8;
  *(a5 + 16) = v6;
  *(a5 + 24) = v10;
  *(a5 + 32) = v7;
}

BOOL UserSessionState.isGuestSessionActive.getter()
{
  OUTLINED_FUNCTION_13_16();
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_5_33();
    sub_2230D954C(v1, v2);
  }

  OUTLINED_FUNCTION_5_33();
  sub_2230D9D28(v3, v4);
  OUTLINED_FUNCTION_4_0();
  return v0 == 1;
}

uint64_t static UserSessionState.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = *(a1 + 32);
  v6 = *a2;
  v7 = *(a2 + 8);
  v9 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = *(a2 + 32);
  if (!v2)
  {
    if (!v7)
    {
      v14 = *a1;
      OUTLINED_FUNCTION_7_38();
      sub_2230D9D28(v15, v16);
      sub_2230D9D28(v6, 0);
      return 1;
    }

    goto LABEL_8;
  }

  if (v2 != 1)
  {
    if (v7 < 2)
    {
      goto LABEL_8;
    }

    if (*a1 != v6 || v2 != v7)
    {
      v27 = *a1;
      if ((sub_2232006B4() & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    if (v3)
    {
      if (v8)
      {
        if (v4 != v9 || v3 != v8)
        {
          v61 = sub_2232006B4();
          v29 = OUTLINED_FUNCTION_1_38();
          sub_2230D954C(v29, v30);
          v31 = OUTLINED_FUNCTION_0_16();
          sub_2230D954C(v31, v32);
          OUTLINED_FUNCTION_17_13();
          swift_bridgeObjectRetain_n();

          v33 = OUTLINED_FUNCTION_0_16();
          sub_2230D9D28(v33, v34);
          v35 = OUTLINED_FUNCTION_1_38();
          sub_2230D9D28(v35, v36);
          OUTLINED_FUNCTION_17_13();
          swift_bridgeObjectRelease_n();

          v7 = 0;
          if ((v61 & 1) == 0)
          {
            return v7;
          }

          return ((v10 ^ v5) & 1) == 0;
        }

        OUTLINED_FUNCTION_16_0();
        OUTLINED_FUNCTION_7_38();
        sub_2230D954C(v53, v54);
        v55 = OUTLINED_FUNCTION_0_16();
        sub_2230D954C(v55, v56);
        OUTLINED_FUNCTION_17_13();
        swift_bridgeObjectRetain_n();

        v57 = OUTLINED_FUNCTION_0_16();
        sub_2230D9D28(v57, v58);
        OUTLINED_FUNCTION_16_0();
        OUTLINED_FUNCTION_7_38();
        sub_2230D9D28(v59, v60);
        OUTLINED_FUNCTION_17_13();
        swift_bridgeObjectRelease_n();
LABEL_29:

        return ((v10 ^ v5) & 1) == 0;
      }

      v45 = OUTLINED_FUNCTION_16_0();
      sub_2230D954C(v45, v46);
      v47 = OUTLINED_FUNCTION_0_16();
      sub_2230D954C(v47, v48);
      OUTLINED_FUNCTION_17_13();
      swift_bridgeObjectRetain_n();
      v49 = OUTLINED_FUNCTION_0_16();
      sub_2230D9D28(v49, v50);
      v51 = OUTLINED_FUNCTION_16_0();
      sub_2230D9D28(v51, v52);
    }

    else
    {
      v37 = OUTLINED_FUNCTION_1_38();
      sub_2230D954C(v37, v38);
      v39 = OUTLINED_FUNCTION_16_16();
      sub_2230D954C(v39, v40);

      v41 = OUTLINED_FUNCTION_16_16();
      sub_2230D9D28(v41, v42);
      v43 = OUTLINED_FUNCTION_1_38();
      sub_2230D9D28(v43, v44);
      if (!v8)
      {
        goto LABEL_29;
      }
    }

    return 0;
  }

  if (v7 != 1)
  {
LABEL_8:
    v17 = OUTLINED_FUNCTION_1_38();
    sub_2230D954C(v17, v18);
    v19 = OUTLINED_FUNCTION_0_16();
    sub_2230D954C(v19, v20);
    v21 = OUTLINED_FUNCTION_0_16();
    sub_2230D9D28(v21, v22);
    v23 = OUTLINED_FUNCTION_1_38();
    sub_2230D9D28(v23, v24);
    return 0;
  }

  v11 = *a1;
  OUTLINED_FUNCTION_7_38();
  sub_2230D9D28(v12, v13);
  sub_2230D9D28(v6, 1uLL);
  return v7;
}

BOOL UserSessionState.isSessionActive.getter()
{
  OUTLINED_FUNCTION_13_16();
  if (v0)
  {
    OUTLINED_FUNCTION_5_33();
    sub_2230D954C(v1, v2);
  }

  OUTLINED_FUNCTION_5_33();
  sub_2230D9D28(v3, v4);
  OUTLINED_FUNCTION_20_13();
  return v0 != 0;
}

BOOL UserSessionState.isAmbient.getter()
{
  OUTLINED_FUNCTION_13_16();
  if (v0)
  {
    OUTLINED_FUNCTION_5_33();
    sub_2230D954C(v1, v2);
  }

  OUTLINED_FUNCTION_5_33();
  sub_2230D9D28(v3, v4);
  OUTLINED_FUNCTION_20_13();
  return v0 == 0;
}

double sub_2231F3758@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 16);
  v6[1] = *a1;
  v6[2] = v4;
  v7 = v3;
  UserSessionState.activeUserSharedUserId.getter(v6);
  result = *v6;
  *a2 = v6[0];
  return result;
}

double sub_2231F37A4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4[0] = v2;
  v4[1] = v1;

  *&result = UserSessionState.activeUserSharedUserId.setter(v4).n128_u64[0];
  return result;
}

__n128 UserSessionState.activeUserSharedUserId.setter(uint64_t *a1)
{
  v2 = a1[1];
  v3 = *(v1 + 8);
  if (v3 >= 2)
  {
    if (*(v1 + 24))
    {
      v6 = *(v1 + 8);

      if (qword_280FCA778 != -1)
      {
        OUTLINED_FUNCTION_1_0();
      }

      v7 = sub_223200014();
      __swift_project_value_buffer(v7, qword_280FCE830);
      oslog = sub_223200004();
      v8 = sub_223200254();
      if (os_log_type_enabled(oslog, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_2230CE000, oslog, v8, "#user-session: cannot set a new siri sharedUserId.", v9, 2u);
        OUTLINED_FUNCTION_14();
      }
    }

    else
    {
      v10 = *a1;
      v11 = *v1;
      v12 = *(v1 + 32);
      v13 = *(v1 + 16);
      v14 = *(v1 + 8);

      sub_2230D9D28(v11, v3);
      result.n128_u64[0] = v11;
      result.n128_u64[1] = v3;
      *&v15 = v10;
      *(&v15 + 1) = v2;
      *v1 = result;
      *(v1 + 16) = v15;
      *(v1 + 32) = v12 & 1;
    }
  }

  else
  {
    v4 = a1[1];
  }

  return result;
}

double (*UserSessionState.activeUserSharedUserId.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  if (v4)
  {
    if (v4 == 1)
    {
      OUTLINED_FUNCTION_10_24(*v1, 1uLL);
      OUTLINED_FUNCTION_4_0();
      OUTLINED_FUNCTION_18_16("00000000-0000-0000-0000-000000000000");
    }

    else
    {
      v10 = *(v1 + 24);

      OUTLINED_FUNCTION_10_24(v3, v4);
      OUTLINED_FUNCTION_4_0();
      *a1 = v5;
      a1[1] = v6;
    }
  }

  else
  {
    v8 = OUTLINED_FUNCTION_9_32();
    sub_2230D9D28(v8, v9);
    OUTLINED_FUNCTION_4_0();
    *a1 = 0;
    a1[1] = 0;
  }

  return sub_2231F3A64;
}

double sub_2231F3A64(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    v6 = *a1;
    v7 = v3;

    UserSessionState.activeUserSharedUserId.setter(&v6);
  }

  else
  {
    v6 = *a1;
    v7 = v3;
    *&result = UserSessionState.activeUserSharedUserId.setter(&v6).n128_u64[0];
  }

  return result;
}

void UserSessionState.getActiveUserSharedUserId(fromMuxContextMessage:)(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = a2;
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  if (v5)
  {
    v9 = *(a1 + OBJC_IVAR____TtC16SiriMessageTypes17MUXContextMessage_userIdToHomeMember);
    if (v5 == 1)
    {
      OUTLINED_FUNCTION_14_15();
      sub_2230D9D28(v10, v11);
      OUTLINED_FUNCTION_4_0();
      v12 = *(v9 + 64);
      v13 = 1 << *(v9 + 32);
      OUTLINED_FUNCTION_23_6();
      v16 = v15 & v14;
      v18 = (v17 + 63) >> 6;
      v63 = 0x80000002232216F0;

      v19 = 0;
      if (v16)
      {
        goto LABEL_8;
      }

      while (1)
      {
LABEL_4:
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          __break(1u);
          goto LABEL_47;
        }

        if (v20 >= v18)
        {
          break;
        }

        v16 = *(v9 + 64 + 8 * v20);
        ++v19;
        if (v16)
        {
          v19 = v20;
LABEL_8:
          while (1)
          {
            v21 = __clz(__rbit64(v16)) | (v19 << 6);
            v22 = (*(v9 + 48) + 16 * v21);
            v23 = *v22;
            v24 = v22[1];
            v25 = *(*(v9 + 56) + 8 * v21);

            v26 = sub_2231F5154(v25);
            if (v27)
            {
              if (v26 == 0xD000000000000024 && v27 == 0x80000002232216F0)
              {

                goto LABEL_43;
              }

              v29 = sub_2232006B4();

              if (v29)
              {
                break;
              }
            }

            v16 &= v16 - 1;

            if (!v16)
            {
              goto LABEL_4;
            }
          }

LABEL_43:
          *a2 = v23;
          a2[1] = v24;
          return;
        }
      }

      if (qword_280FCA778 != -1)
      {
        goto LABEL_48;
      }

LABEL_31:
      v52 = sub_223200014();
      __swift_project_value_buffer(v52, qword_280FCE830);
      v53 = sub_223200004();
      v54 = sub_223200254();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&dword_2230CE000, v53, v54, "#user-session: unable to find shareduserid for guest in homememberInfo", v55, 2u);
        OUTLINED_FUNCTION_14();
      }

      *a2 = 0xD000000000000024;
      a2[1] = v63;
    }

    else
    {
      v61 = v4;
      v35 = *(v9 + 64);
      v36 = 1 << *(v9 + 32);
      OUTLINED_FUNCTION_23_6();
      v39 = v38 & v37;
      v41 = (v40 + 63) >> 6;

      v42 = 0;
      if (v39)
      {
        goto LABEL_22;
      }

      do
      {
LABEL_18:
        v43 = v42 + 1;
        if (__OFADD__(v42, 1))
        {
LABEL_47:
          __break(1u);
LABEL_48:
          OUTLINED_FUNCTION_1_0();
          goto LABEL_31;
        }

        if (v43 >= v41)
        {

          if (qword_280FCA778 != -1)
          {
            OUTLINED_FUNCTION_1_0();
          }

          v56 = sub_223200014();
          __swift_project_value_buffer(v56, qword_280FCE830);

          v57 = sub_223200004();
          v58 = sub_223200254();

          v3 = a2;
          if (os_log_type_enabled(v57, v58))
          {
            v59 = swift_slowAlloc();
            v60 = swift_slowAlloc();
            v64 = v60;
            *v59 = 136315138;
            *(v59 + 4) = sub_2231A5D38(v61, v5, &v64);
            _os_log_impl(&dword_2230CE000, v57, v58, "#user-session: unable to find shareduserid for personaId=%s", v59, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v60);
            OUTLINED_FUNCTION_14();
            OUTLINED_FUNCTION_14();
          }

          goto LABEL_39;
        }

        v39 = *(v9 + 64 + 8 * v43);
        ++v42;
      }

      while (!v39);
      v42 = v43;
LABEL_22:
      while (1)
      {
        v44 = __clz(__rbit64(v39)) | (v42 << 6);
        v45 = (*(v9 + 48) + 16 * v44);
        v46 = v45[1];
        v63 = *v45;
        v47 = *(*(v9 + 56) + 8 * v44);

        v48 = sub_2231F5154(v47);
        if (v49)
        {
          if (v48 == v61 && v49 == v5)
          {

            goto LABEL_45;
          }

          v51 = sub_2232006B4();

          if (v51)
          {
            break;
          }
        }

        v39 &= v39 - 1;

        if (!v39)
        {
          goto LABEL_18;
        }
      }

LABEL_45:
      *a2 = v63;
      a2[1] = v46;
    }
  }

  else
  {
    v30 = *v2;
    OUTLINED_FUNCTION_14_15();
    sub_2230D954C(v31, v32);
    OUTLINED_FUNCTION_14_15();
    sub_2230D9D28(v33, v34);
    OUTLINED_FUNCTION_4_0();
LABEL_39:
    *v3 = 0;
    v3[1] = 0;
  }
}

uint64_t UserSessionState.description.getter()
{
  v1 = v0[1];
  if (!v1)
  {
    return 0x746E6569626D61;
  }

  if (v1 == 1)
  {
    return 0x7473657567;
  }

  v3 = *(v0 + 32);
  v5 = v0[2];
  v4 = v0[3];
  v6 = *v0;

  sub_223200374();

  MEMORY[0x223DD5AA0](v6, v1);
  MEMORY[0x223DD5AA0](47, 0xE100000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AD58, &qword_223220330);
  v7 = sub_223200104();
  MEMORY[0x223DD5AA0](v7);

  MEMORY[0x223DD5AA0](47, 0xE100000000000000);
  if (v3)
  {
    v8 = 1751607656;
  }

  else
  {
    v8 = 7827308;
  }

  if (v3)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE300000000000000;
  }

  MEMORY[0x223DD5AA0](v8, v9);

  MEMORY[0x223DD5AA0](41, 0xE100000000000000);
  return 0x64656C6C6F726E65;
}

uint64_t sub_2231F4100(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E6569626D61 && a2 == 0xE700000000000000;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7473657567 && a2 == 0xE500000000000000;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x64656C6C6F726E65 && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_2232006B4();

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

uint64_t sub_2231F420C(char a1)
{
  if (!a1)
  {
    return 0x746E6569626D61;
  }

  if (a1 == 1)
  {
    return 0x7473657567;
  }

  return 0x64656C6C6F726E65;
}

uint64_t sub_2231F4260(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x49616E6F73726570 && a2 == 0xE900000000000064;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x80000002232277F0 == a2;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x654C737365636361 && a2 == 0xEB000000006C6576)
    {

      return 2;
    }

    else
    {
      v8 = sub_2232006B4();

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

uint64_t sub_2231F4384(char a1)
{
  if (!a1)
  {
    return 0x49616E6F73726570;
  }

  if (a1 == 1)
  {
    return 0xD000000000000010;
  }

  return 0x654C737365636361;
}

uint64_t sub_2231F43EC(uint64_t a1)
{
  v2 = sub_2231F52B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231F4428(uint64_t a1)
{
  v2 = sub_2231F52B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2231F446C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231F4100(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2231F4494(uint64_t a1)
{
  v2 = sub_2231F51B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231F44D0(uint64_t a1)
{
  v2 = sub_2231F51B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2231F4514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231F4260(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2231F453C(uint64_t a1)
{
  v2 = sub_2231F520C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231F4578(uint64_t a1)
{
  v2 = sub_2231F520C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2231F45B4(uint64_t a1)
{
  v2 = sub_2231F5260();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231F45F0(uint64_t a1)
{
  v2 = sub_2231F5260();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UserSessionState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AD60, &qword_223220338);
  v4 = OUTLINED_FUNCTION_9(v3);
  v54 = v5;
  v55 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v8);
  v53 = &v47 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AD68, &qword_223220340);
  v11 = OUTLINED_FUNCTION_9(v10);
  v51 = v12;
  v52 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v15);
  v17 = &v47 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AD70, &qword_223220348);
  OUTLINED_FUNCTION_9(v18);
  v50 = v19;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v22);
  v24 = &v47 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AD78, &qword_223220350);
  v26 = OUTLINED_FUNCTION_9(v25);
  v56 = v27;
  v57 = v26;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v30);
  v31 = *v1;
  v32 = v1[1];
  v33 = v1[3];
  v48 = v1[2];
  v49 = v31;
  v47 = v33;
  v61 = *(v1 + 32);
  v34 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231F51B8();
  sub_2232007A4();
  if (!v32)
  {
    LOBYTE(v59) = 0;
    sub_2231F52B4();
    v39 = v57;
    sub_2232005B4();
    (*(v50 + 8))(v24, v18);
    v36 = OUTLINED_FUNCTION_15_11();
    v38 = v39;
    return v37(v36, v38);
  }

  if (v32 == 1)
  {
    LOBYTE(v59) = 1;
    sub_2231F5260();
    v35 = v57;
    sub_2232005B4();
    (*(v51 + 8))(v17, v52);
    v36 = OUTLINED_FUNCTION_15_11();
    v38 = v35;
    return v37(v36, v38);
  }

  LOBYTE(v59) = 2;
  sub_2231F520C();
  v41 = v53;
  v42 = v57;
  sub_2232005B4();
  LOBYTE(v59) = 0;
  v43 = v55;
  v44 = v58;
  sub_2232005F4();
  if (!v44)
  {
    v59 = v48;
    v60 = v47;
    v62 = 1;
    sub_2230D37F0();
    OUTLINED_FUNCTION_19_10();
    sub_2232005E4();
    LOBYTE(v59) = v61 & 1;
    v62 = 2;
    sub_2230F6A90();
    OUTLINED_FUNCTION_19_10();
    sub_223200654();
  }

  (*(v54 + 8))(v41, v43);
  v45 = OUTLINED_FUNCTION_15_11();
  return v46(v45, v42);
}

uint64_t UserSessionState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05ADA0, &qword_223220358);
  OUTLINED_FUNCTION_9(v77);
  v75 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v6);
  v76 = &v68 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05ADA8, &qword_223220360);
  v9 = OUTLINED_FUNCTION_9(v8);
  v72 = v10;
  v73 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v13);
  v15 = &v68 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05ADB0, &qword_223220368);
  OUTLINED_FUNCTION_9(v16);
  v71 = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v20);
  v22 = &v68 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05ADB8, &unk_223220370);
  OUTLINED_FUNCTION_9(v23);
  v25 = v24;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v28);
  v30 = &v68 - v29;
  v32 = a1[3];
  v31 = a1[4];
  v78 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v32);
  sub_2231F51B8();
  v33 = v79;
  sub_223200794();
  if (v33)
  {
    return __swift_destroy_boxed_opaque_existential_1(v78);
  }

  v69 = v16;
  v70 = v22;
  v79 = v25;
  v34 = v30;
  v35 = sub_223200594();
  result = sub_2230E0B80(v35, 0);
  if (v38 == v39 >> 1)
  {
    goto LABEL_8;
  }

  v68 = 0;
  if (v38 >= (v39 >> 1))
  {
    __break(1u);
    return result;
  }

  v40 = *(v37 + v38);
  v41 = sub_2230E0B40(v38 + 1);
  v43 = v42;
  v45 = v44;
  swift_unknownObjectRelease();
  if (v43 != v45 >> 1)
  {
LABEL_8:
    v47 = sub_2232003A4();
    swift_allocError();
    v49 = v48;
    v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057788, &qword_223203DF0) + 48);
    *v49 = &type metadata for UserSessionState;
    sub_223200484();
    sub_223200394();
    (*(*(v47 - 8) + 104))(v49, *MEMORY[0x277D84160], v47);
    swift_willThrow();
    swift_unknownObjectRelease();
    v51 = OUTLINED_FUNCTION_6_34();
    v52(v51);
    return __swift_destroy_boxed_opaque_existential_1(v78);
  }

  if (v40)
  {
    if (v40 == 1)
    {
      LOBYTE(v80) = 1;
      sub_2231F5260();
      OUTLINED_FUNCTION_21_13();
      v46 = v74;
      swift_unknownObjectRelease();
      (*(v72 + 8))(v15, v73);
      v55 = OUTLINED_FUNCTION_6_34();
      v56(v55);
      v57 = 0;
      v58 = 0;
      v59 = 0;
      v60 = 0;
      v61 = 1;
    }

    else
    {
      LOBYTE(v80) = 2;
      sub_2231F520C();
      OUTLINED_FUNCTION_21_13();
      v46 = v74;
      v72 = v41;
      v73 = v34;
      LOBYTE(v80) = 0;
      v57 = sub_2232004F4();
      v61 = v63;
      v83 = 1;
      sub_2231105AC();
      sub_2232004C4();
      v58 = v80;
      v59 = v81;
      v82 = 2;
      sub_2230F7104();
      sub_223200554();
      swift_unknownObjectRelease();
      v64 = OUTLINED_FUNCTION_22_9();
      v65(v64);
      v66 = OUTLINED_FUNCTION_24_6();
      v67(v66);
      v60 = v83;
    }

    v62 = v78;
  }

  else
  {
    LOBYTE(v80) = 0;
    sub_2231F52B4();
    v53 = v70;
    OUTLINED_FUNCTION_21_13();
    v54 = v79;
    swift_unknownObjectRelease();
    (*(v71 + 8))(v53, v69);
    (*(v54 + 8))(v34, v23);
    v57 = 0;
    v61 = 0;
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v62 = v78;
    v46 = v74;
  }

  *v46 = v57;
  *(v46 + 8) = v61;
  *(v46 + 16) = v58;
  *(v46 + 24) = v59;
  *(v46 + 32) = v60;
  return __swift_destroy_boxed_opaque_existential_1(v62);
}

uint64_t sub_2231F5154(void *a1)
{
  v1 = [a1 personaIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2232000C4();

  return v3;
}

unint64_t sub_2231F51B8()
{
  result = qword_27D05AD80;
  if (!qword_27D05AD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AD80);
  }

  return result;
}

unint64_t sub_2231F520C()
{
  result = qword_27D05AD88;
  if (!qword_27D05AD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AD88);
  }

  return result;
}

unint64_t sub_2231F5260()
{
  result = qword_27D05AD90;
  if (!qword_27D05AD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AD90);
  }

  return result;
}

unint64_t sub_2231F52B4()
{
  result = qword_27D05AD98;
  if (!qword_27D05AD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AD98);
  }

  return result;
}

_BYTE *sub_2231F5348(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2231F5428()
{
  result = qword_27D05ADC0;
  if (!qword_27D05ADC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05ADC0);
  }

  return result;
}

unint64_t sub_2231F5480()
{
  result = qword_27D05ADC8;
  if (!qword_27D05ADC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05ADC8);
  }

  return result;
}

unint64_t sub_2231F54D8()
{
  result = qword_27D05ADD0;
  if (!qword_27D05ADD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05ADD0);
  }

  return result;
}

unint64_t sub_2231F5530()
{
  result = qword_27D05ADD8;
  if (!qword_27D05ADD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05ADD8);
  }

  return result;
}

unint64_t sub_2231F5588()
{
  result = qword_27D05ADE0;
  if (!qword_27D05ADE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05ADE0);
  }

  return result;
}

unint64_t sub_2231F55E0()
{
  result = qword_27D05ADE8;
  if (!qword_27D05ADE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05ADE8);
  }

  return result;
}

unint64_t sub_2231F5638()
{
  result = qword_27D05ADF0;
  if (!qword_27D05ADF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05ADF0);
  }

  return result;
}

unint64_t sub_2231F5690()
{
  result = qword_27D05ADF8;
  if (!qword_27D05ADF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05ADF8);
  }

  return result;
}

unint64_t sub_2231F56E8()
{
  result = qword_27D05AE00;
  if (!qword_27D05AE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AE00);
  }

  return result;
}

unint64_t sub_2231F5740()
{
  result = qword_27D05AE08;
  if (!qword_27D05AE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AE08);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_20_13()
{

  return sub_2230D9D28(0, 0);
}

uint64_t OUTLINED_FUNCTION_21_13()
{
  v2 = *(v0 - 192);

  return sub_223200474();
}

uint64_t sub_2231F5840(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6554786966657270 && a2 == 0xEA00000000007478;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x5478696674736F70 && a2 == 0xEB00000000747865;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x64657463656C6573 && a2 == 0xEC00000074786554;
      if (v7 || (sub_2232006B4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000014 && 0x8000000223227880 == a2;
        if (v8 || (sub_2232006B4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000013 && 0x80000002232278A0 == a2;
          if (v9 || (sub_2232006B4() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000017 && 0x80000002232278C0 == a2;
            if (v10 || (sub_2232006B4() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000017 && 0x80000002232278E0 == a2;
              if (v11 || (sub_2232006B4() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x6E6576456F646E75 && a2 == 0xE900000000000074)
              {

                return 7;
              }

              else
              {
                v13 = sub_2232006B4();

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

unint64_t sub_2231F5AD8(char a1)
{
  result = 0x6554786966657270;
  switch(a1)
  {
    case 1:
      result = 0x5478696674736F70;
      break;
    case 2:
      result = 0x64657463656C6573;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD000000000000017;
      break;
    case 6:
      result = 0xD000000000000017;
      break;
    case 7:
      result = 0x6E6576456F646E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2231F5BEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231F5840(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2231F5C14(uint64_t a1)
{
  v2 = sub_2231F7238();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231F5C50(uint64_t a1)
{
  v2 = sub_2231F7238();

  return MEMORY[0x2821FE720](a1, v2);
}

void *VoiceCommandContextMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return VoiceCommandContextMessage.init(build:)(v1);
}

void *VoiceCommandContextMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v63 = a1;
  v64 = v1;
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v53[-v4];
  v6 = sub_2231FFDA4();
  v7 = OUTLINED_FUNCTION_9(v6);
  v59 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v60 = &v53[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for VoiceCommandContextMessage.Builder(0);
  v13 = (v12 - 8);
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v53[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v16 = 15;
  *(v16 + 1) = 0;
  *(v16 + 2) = 0;
  v17 = v13[8];
  v61 = v6;
  __swift_storeEnumTagSinglePayload(&v16[v17], 1, 1, v6);
  v18 = &v16[v13[9]];
  *v18 = 0;
  *(v18 + 1) = 0;
  v19 = &v16[v13[10]];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = &v16[v13[11]];
  *v20 = 0;
  *(v20 + 1) = 0;
  v21 = &v16[v13[12]];
  *v21 = 0;
  *(v21 + 1) = 0;
  v22 = v13[13];
  v16[v22] = 2;
  v56 = v13[14];
  v16[v56] = 2;
  v57 = v13[15];
  v16[v57] = 2;
  v58 = v13[16];
  v16[v58] = 2;
  v23 = v13[17];
  v16[v23] = 2;
  v63(v16);
  v24 = *v16;
  if (v24 == 15 || !*(v16 + 2))
  {
    goto LABEL_10;
  }

  v63 = *(v16 + 2);
  v55 = *(v16 + 1);
  sub_2230D1480(&v16[v17], v5);
  v25 = v61;
  if (__swift_getEnumTagSinglePayload(v5, 1, v61) == 1)
  {
    sub_2230D69D4(v5);
LABEL_10:
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v42 = sub_223200014();
    __swift_project_value_buffer(v42, qword_280FCE830);
    v43 = sub_223200004();
    v44 = sub_223200254();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v65 = v46;
      *v45 = 136446210;
      v47 = sub_2230F7898();
      v49 = sub_2231A5D38(v47, v48, &v65);

      *(v45 + 4) = v49;
      _os_log_impl(&dword_2230CE000, v43, v44, "Could not build %{public}s: Builder has missing required fields", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v46);
      MEMORY[0x223DD6780](v46, -1, -1);
      MEMORY[0x223DD6780](v45, -1, -1);
    }

    sub_2231F6310(v16);
    type metadata accessor for VoiceCommandContextMessage(0);
    v50 = *((*MEMORY[0x277D85000] & *v64) + 0x30);
    v51 = *((*MEMORY[0x277D85000] & *v64) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v54 = v24;
  v26 = v59;
  (*(v59 + 32))(v60, v5, v25);
  if (!*(v18 + 1))
  {
    (*(v26 + 8))(v60, v25);
    goto LABEL_10;
  }

  ObjectType = v53;
  v27 = *v18;
  v28 = *(v19 + 1);
  v29 = v64;
  v30 = (v64 + OBJC_IVAR____TtC16SiriMessageTypes26VoiceCommandContextMessage_prefixText);
  *v30 = *v19;
  v30[1] = v28;
  v31 = *v20;
  v32 = *(v20 + 1);
  v33 = (v29 + OBJC_IVAR____TtC16SiriMessageTypes26VoiceCommandContextMessage_postfixText);
  *v33 = v31;
  v33[1] = v32;
  v34 = *(v21 + 1);
  v35 = (v29 + OBJC_IVAR____TtC16SiriMessageTypes26VoiceCommandContextMessage_selectedText);
  *v35 = *v21;
  v35[1] = v34;
  *(v29 + OBJC_IVAR____TtC16SiriMessageTypes26VoiceCommandContextMessage_disambiguationActive) = v16[v22];
  *(v29 + OBJC_IVAR____TtC16SiriMessageTypes26VoiceCommandContextMessage_cursorInVisibleText) = v16[v56];
  *(v29 + OBJC_IVAR____TtC16SiriMessageTypes26VoiceCommandContextMessage_favorCommandSuppression) = v16[v57];
  *(v29 + OBJC_IVAR____TtC16SiriMessageTypes26VoiceCommandContextMessage_abortCommandSuppression) = v16[v58];
  *(v29 + OBJC_IVAR____TtC16SiriMessageTypes26VoiceCommandContextMessage_undoEvent) = v16[v23];
  MEMORY[0x28223BE20](v34);
  v53[-48] = v54;
  v36 = v63;
  *&v53[-40] = v55;
  *&v53[-32] = v36;
  v37 = v60;
  *&v53[-24] = v60;
  *&v53[-16] = v38;
  *&v53[-8] = v39;

  v40 = RequestMessageBase.init(build:)(sub_2230DDE2C);
  v41 = v40;
  sub_2231F6310(v16);
  if (v40)
  {
  }

  (*(v59 + 8))(v37, v61);
  return v40;
}

uint64_t sub_2231F6310(uint64_t a1)
{
  v2 = type metadata accessor for VoiceCommandContextMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *VoiceCommandContextMessage.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AE10, &qword_223220838);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231F7238();
  sub_223200794();
  if (v2)
  {
    v22 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for VoiceCommandContextMessage(0);
    v11 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
    v12 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v25[0]) = 0;
    v10 = sub_223200494();
    v14 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes26VoiceCommandContextMessage_prefixText);
    *v14 = v10;
    v14[1] = v15;
    OUTLINED_FUNCTION_6_31(1);
    v16 = sub_223200494();
    v17 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes26VoiceCommandContextMessage_postfixText);
    *v17 = v16;
    v17[1] = v18;
    OUTLINED_FUNCTION_6_31(2);
    v19 = sub_223200494();
    v20 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes26VoiceCommandContextMessage_selectedText);
    *v20 = v19;
    v20[1] = v21;
    OUTLINED_FUNCTION_6_31(3);
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes26VoiceCommandContextMessage_disambiguationActive) = sub_2232004A4();
    OUTLINED_FUNCTION_6_31(4);
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes26VoiceCommandContextMessage_cursorInVisibleText) = sub_2232004A4();
    OUTLINED_FUNCTION_6_31(5);
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes26VoiceCommandContextMessage_favorCommandSuppression) = sub_2232004A4();
    OUTLINED_FUNCTION_6_31(6);
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes26VoiceCommandContextMessage_abortCommandSuppression) = sub_2232004A4();
    OUTLINED_FUNCTION_6_31(7);
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes26VoiceCommandContextMessage_undoEvent) = sub_2232004A4();
    sub_2230F7158(a1, v25);
    v22 = RequestMessageBase.init(from:)(v25);
    v23 = OUTLINED_FUNCTION_2();
    v24(v23);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v22;
}

uint64_t sub_2231F6788(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AE20, &qword_223220840);
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v18 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231F7238();
  sub_2232007A4();
  if (!*(v1 + OBJC_IVAR____TtC16SiriMessageTypes26VoiceCommandContextMessage_prefixText + 8) || (v13 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes26VoiceCommandContextMessage_prefixText), v19 = 0, OUTLINED_FUNCTION_12(), sub_2232005F4(), !v2))
  {
    if (!*(v1 + OBJC_IVAR____TtC16SiriMessageTypes26VoiceCommandContextMessage_postfixText + 8) || (v14 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes26VoiceCommandContextMessage_postfixText), v20 = 1, OUTLINED_FUNCTION_12(), sub_2232005F4(), !v2))
    {
      if (!*(v1 + OBJC_IVAR____TtC16SiriMessageTypes26VoiceCommandContextMessage_selectedText + 8) || (v15 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes26VoiceCommandContextMessage_selectedText), v21 = 2, OUTLINED_FUNCTION_12(), sub_2232005F4(), !v2))
      {
        OUTLINED_FUNCTION_11_17(OBJC_IVAR____TtC16SiriMessageTypes26VoiceCommandContextMessage_disambiguationActive);
        if (v16 || (v22 = 3, OUTLINED_FUNCTION_12(), sub_223200604(), !v2))
        {
          OUTLINED_FUNCTION_11_17(OBJC_IVAR____TtC16SiriMessageTypes26VoiceCommandContextMessage_cursorInVisibleText);
          if (v16 || (v23 = 4, OUTLINED_FUNCTION_12(), sub_223200604(), !v2))
          {
            OUTLINED_FUNCTION_11_17(OBJC_IVAR____TtC16SiriMessageTypes26VoiceCommandContextMessage_favorCommandSuppression);
            if (v16 || (v24 = 5, OUTLINED_FUNCTION_12(), sub_223200604(), !v2))
            {
              OUTLINED_FUNCTION_11_17(OBJC_IVAR____TtC16SiriMessageTypes26VoiceCommandContextMessage_abortCommandSuppression);
              if (v16 || (v25 = 6, OUTLINED_FUNCTION_12(), sub_223200604(), !v2))
              {
                OUTLINED_FUNCTION_11_17(OBJC_IVAR____TtC16SiriMessageTypes26VoiceCommandContextMessage_undoEvent);
                if (v16 || (v26 = 7, OUTLINED_FUNCTION_12(), sub_223200604(), !v2))
                {
                  sub_2230D77A8(a1);
                }
              }
            }
          }
        }
      }
    }
  }

  return (*(v7 + 8))(v11, v4);
}

uint64_t VoiceCommandContextMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t VoiceCommandContextMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t VoiceCommandContextMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for VoiceCommandContextMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t VoiceCommandContextMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_9_33() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t VoiceCommandContextMessage.Builder.requestId.getter()
{
  v0 = type metadata accessor for VoiceCommandContextMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 28));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t VoiceCommandContextMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = type metadata accessor for VoiceCommandContextMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2(*(v3 + 28));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t VoiceCommandContextMessage.Builder.prefixText.getter()
{
  v0 = type metadata accessor for VoiceCommandContextMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 32));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t VoiceCommandContextMessage.Builder.prefixText.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = type metadata accessor for VoiceCommandContextMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2(*(v3 + 32));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t VoiceCommandContextMessage.Builder.postfixText.getter()
{
  v0 = type metadata accessor for VoiceCommandContextMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 36));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t VoiceCommandContextMessage.Builder.postfixText.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = type metadata accessor for VoiceCommandContextMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2(*(v3 + 36));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t VoiceCommandContextMessage.Builder.selectedText.getter()
{
  v0 = type metadata accessor for VoiceCommandContextMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 40));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t VoiceCommandContextMessage.Builder.selectedText.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = type metadata accessor for VoiceCommandContextMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2(*(v3 + 40));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t VoiceCommandContextMessage.Builder.disambiguationActive.setter()
{
  result = OUTLINED_FUNCTION_9_33();
  *(v1 + *(result + 44)) = v0;
  return result;
}

uint64_t VoiceCommandContextMessage.Builder.cursorInVisibleText.setter()
{
  result = OUTLINED_FUNCTION_9_33();
  *(v1 + *(result + 48)) = v0;
  return result;
}

uint64_t VoiceCommandContextMessage.Builder.favorCommandSuppression.setter()
{
  result = OUTLINED_FUNCTION_9_33();
  *(v1 + *(result + 52)) = v0;
  return result;
}

uint64_t VoiceCommandContextMessage.Builder.abortCommandSuppression.setter()
{
  result = OUTLINED_FUNCTION_9_33();
  *(v1 + *(result + 56)) = v0;
  return result;
}

uint64_t VoiceCommandContextMessage.Builder.undoEvent.setter()
{
  result = OUTLINED_FUNCTION_9_33();
  *(v1 + *(result + 60)) = v0;
  return result;
}

uint64_t sub_2231F7144()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes26VoiceCommandContextMessage_prefixText + 8);

  v2 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes26VoiceCommandContextMessage_postfixText + 8);

  v3 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes26VoiceCommandContextMessage_selectedText + 8);
}

id VoiceCommandContextMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VoiceCommandContextMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231F7238()
{
  result = qword_27D05AE18;
  if (!qword_27D05AE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AE18);
  }

  return result;
}

uint64_t sub_2231F7340()
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
        sub_2230D525C(319, &qword_280FCA440);
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

_BYTE *storeEnumTagSinglePayload for VoiceCommandContextMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2231F7538()
{
  result = qword_27D05AE38;
  if (!qword_27D05AE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AE38);
  }

  return result;
}

unint64_t sub_2231F7590()
{
  result = qword_27D05AE40;
  if (!qword_27D05AE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AE40);
  }

  return result;
}

unint64_t sub_2231F75E8()
{
  result = qword_27D05AE48;
  if (!qword_27D05AE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AE48);
  }

  return result;
}

void *VoiceIdScoreCardMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v48 - v6;
  v8 = sub_2231FFDA4();
  v9 = OUTLINED_FUNCTION_9(v8);
  v50 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v51 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for VoiceIdScoreCardMessage.Builder(0);
  v15 = (v14 - 8);
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v18 = 15;
  *(v18 + 1) = 0;
  *(v18 + 2) = 0;
  v19 = v15[8];
  __swift_storeEnumTagSinglePayload(&v18[v19], 1, 1, v8);
  v20 = &v18[v15[9]];
  *v20 = 0;
  *(v20 + 1) = 0;
  v21 = v15[10];
  *&v18[v21] = 0;
  a1(v18);
  v22 = *v18;
  if (v22 == 15)
  {
    goto LABEL_12;
  }

  v23 = *(v18 + 2);
  if (!v23)
  {
    goto LABEL_12;
  }

  v24 = *(v18 + 1);
  sub_2230D1480(&v18[v19], v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_2230D69D4(v7);
LABEL_12:
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v37 = sub_223200014();
    __swift_project_value_buffer(v37, qword_280FCE830);
    v38 = sub_223200004();
    v39 = sub_223200254();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v53 = v41;
      *v40 = 136446210;
      v42 = sub_2230F7898();
      v44 = sub_2231A5D38(v42, v43, &v53);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_2230CE000, v38, v39, "Could not build %{public}s: Builder has missing required fields", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v41);
      MEMORY[0x223DD6780](v41, -1, -1);
      MEMORY[0x223DD6780](v40, -1, -1);
    }

    sub_2231F7B30(v18);
    type metadata accessor for VoiceIdScoreCardMessage(0);
    v45 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
    v46 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v49 = v24;
  v26 = v50;
  v25 = v51;
  v27 = (*(v50 + 32))(v51, v7, v8);
  if (!*(v20 + 1))
  {
    (*(v26 + 8))(v25, v8);
    goto LABEL_12;
  }

  v28 = *&v18[v21];
  if (!v28)
  {
    (*(v26 + 8))(v51, v8);
    goto LABEL_12;
  }

  v29 = *v20;
  *(v2 + OBJC_IVAR____TtC16SiriMessageTypes23VoiceIdScoreCardMessage_voiceIdScoreCard) = v28;
  MEMORY[0x28223BE20](v27);
  *(&v48 - 48) = v22;
  *(&v48 - 5) = v49;
  *(&v48 - 4) = v23;
  v30 = v51;
  *(&v48 - 3) = v51;
  *(&v48 - 2) = v31;
  *(&v48 - 1) = v32;
  v34 = v33;
  v35 = RequestMessageBase.init(build:)(sub_2230DDE2C);
  v36 = v35;

  sub_2231F7B30(v18);
  if (v35)
  {
  }

  (*(v50 + 8))(v30, v8);
  return v35;
}

uint64_t sub_2231F7B30(uint64_t a1)
{
  v2 = type metadata accessor for VoiceIdScoreCardMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *VoiceIdScoreCardMessage.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AE50, &qword_223220A28);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231F84FC();
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
      *(v3 + OBJC_IVAR____TtC16SiriMessageTypes23VoiceIdScoreCardMessage_voiceIdScoreCard) = v12;
      sub_2230F7158(a1, &v21);
      v22 = v17;
      v13 = RequestMessageBase.init(from:)(&v21);
      v19 = OUTLINED_FUNCTION_2();
      v20(v19);
      OUTLINED_FUNCTION_5_1();

      __swift_destroy_boxed_opaque_existential_1(a1);
      return v13;
    }

    sub_2230F9E38();
    swift_allocError();
    *v18 = 0xD000000000000020;
    *(v18 + 8) = 0x8000000223223D00;
    *(v18 + 16) = 0;
    swift_willThrow();
    OUTLINED_FUNCTION_5_1();
    v10 = OUTLINED_FUNCTION_2();
    v11(v10);
  }

  v13 = 0;
  __swift_destroy_boxed_opaque_existential_1(a1);
  type metadata accessor for VoiceIdScoreCardMessage(0);
  v14 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
  v15 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
  swift_deallocPartialClassInstance();
  return v13;
}

uint64_t sub_2231F7EEC(void *a1)
{
  v24[2] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AE60, &qword_223220A30);
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v24[-1] - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231F84FC();
  sub_2232007A4();
  v13 = objc_opt_self();
  v14 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes23VoiceIdScoreCardMessage_voiceIdScoreCard);
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
      sub_2230D77A8(a1);
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

uint64_t sub_2231F8108(uint64_t a1)
{
  v2 = sub_2231F84FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231F8144(uint64_t a1)
{
  v2 = sub_2231F84FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VoiceIdScoreCardMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t VoiceIdScoreCardMessage.Builder.assistantId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t VoiceIdScoreCardMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for VoiceIdScoreCardMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t VoiceIdScoreCardMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_2_52() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t VoiceIdScoreCardMessage.Builder.requestId.getter()
{
  v1 = (v0 + *(type metadata accessor for VoiceIdScoreCardMessage.Builder(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t VoiceIdScoreCardMessage.Builder.requestId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for VoiceIdScoreCardMessage.Builder(0) + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void *VoiceIdScoreCardMessage.Builder.voiceIdScoreCard.getter()
{
  v1 = *(v0 + *(type metadata accessor for VoiceIdScoreCardMessage.Builder(0) + 32));
  v2 = v1;
  return v1;
}

void VoiceIdScoreCardMessage.Builder.voiceIdScoreCard.setter()
{
  v2 = *(OUTLINED_FUNCTION_2_52() + 32);

  *(v1 + v2) = v0;
}

id VoiceIdScoreCardMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VoiceIdScoreCardMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231F84FC()
{
  result = qword_27D05AE58;
  if (!qword_27D05AE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AE58);
  }

  return result;
}

uint64_t sub_2231F85F4()
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

_BYTE *storeEnumTagSinglePayload for VoiceIdScoreCardMessage.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_2231F8794()
{
  result = qword_27D05AE88;
  if (!qword_27D05AE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AE88);
  }

  return result;
}

unint64_t sub_2231F87EC()
{
  result = qword_27D05AE90;
  if (!qword_27D05AE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AE90);
  }

  return result;
}

unint64_t sub_2231F8844()
{
  result = qword_27D05AE98;
  if (!qword_27D05AE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05AE98);
  }

  return result;
}

__CFString *SMTNeuralCombinerMitigationDecisionGetName(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"(unknown)";
  }

  else
  {
    return off_2784D5BB0[a1];
  }
}

uint64_t SMTNeuralCombinerMitigationDecisionGetFromName(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    if (SMTNeuralCombinerMitigationDecisionGetFromName_onceToken != -1)
    {
      dispatch_once(&SMTNeuralCombinerMitigationDecisionGetFromName_onceToken, &__block_literal_global);
    }

    v2 = [SMTNeuralCombinerMitigationDecisionGetFromName_map objectForKey:v1];
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __SMTNeuralCombinerMitigationDecisionGetFromName_block_invoke()
{
  v0 = SMTNeuralCombinerMitigationDecisionGetFromName_map;
  SMTNeuralCombinerMitigationDecisionGetFromName_map = &unk_28368B4C0;
}

__CFString *SMTTCUStateGetName(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"(unknown)";
  }

  else
  {
    return off_2784D5E10[a1];
  }
}

uint64_t SMTTCUStateGetFromName(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    if (SMTTCUStateGetFromName_onceToken != -1)
    {
      dispatch_once(&SMTTCUStateGetFromName_onceToken, &__block_literal_global_628);
    }

    v2 = [SMTTCUStateGetFromName_map objectForKey:v1];
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __SMTTCUStateGetFromName_block_invoke()
{
  v0 = SMTTCUStateGetFromName_map;
  SMTTCUStateGetFromName_map = &unk_28368B4E8;
}

__CFString *SMTVoiceTriggerPhraseTypeGetName(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"(unknown)";
  }

  else
  {
    return off_2784D5F90[a1];
  }
}

uint64_t SMTVoiceTriggerPhraseTypeGetFromName(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    if (SMTVoiceTriggerPhraseTypeGetFromName_onceToken != -1)
    {
      dispatch_once(&SMTVoiceTriggerPhraseTypeGetFromName_onceToken, &__block_literal_global_983);
    }

    v2 = [SMTVoiceTriggerPhraseTypeGetFromName_map objectForKey:v1];
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __SMTVoiceTriggerPhraseTypeGetFromName_block_invoke()
{
  v0 = SMTVoiceTriggerPhraseTypeGetFromName_map;
  SMTVoiceTriggerPhraseTypeGetFromName_map = &unk_28368B510;
}