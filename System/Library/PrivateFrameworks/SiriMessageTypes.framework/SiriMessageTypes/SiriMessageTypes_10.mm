_BYTE *storeEnumTagSinglePayload for RootStoppedListeningForSpeechContinuationMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2231999DC()
{
  result = qword_27D059E40;
  if (!qword_27D059E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059E40);
  }

  return result;
}

unint64_t sub_223199A34()
{
  result = qword_280FCB6F0;
  if (!qword_280FCB6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCB6F0);
  }

  return result;
}

unint64_t sub_223199A8C()
{
  result = qword_280FCB6F8;
  if (!qword_280FCB6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCB6F8);
  }

  return result;
}

void *RootStoppedListeningForTextContinuationMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return RootStoppedListeningForTextContinuationMessage.init(build:)(v1);
}

void *RootStoppedListeningForTextContinuationMessage.init(build:)(void (*a1)(unsigned __int8 *))
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
  v13 = type metadata accessor for RootStoppedListeningForTextContinuationMessage.Builder(0);
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

    sub_223199FE4(v17);
    type metadata accessor for RootStoppedListeningForTextContinuationMessage(0);
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
  v28 = (v3 + OBJC_IVAR____TtC16SiriMessageTypes46RootStoppedListeningForTextContinuationMessage_lastTRPId);
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
  sub_223199FE4(v17);
  if (v32)
  {
  }

  (*(v47 + 8))(v29, v7);
  return v32;
}

uint64_t sub_223199FE4(uint64_t a1)
{
  v2 = type metadata accessor for RootStoppedListeningForTextContinuationMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *RootStoppedListeningForTextContinuationMessage.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059E48, &qword_223217488);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22319A9E4();
  sub_223200794();
  if (v2)
  {
    v16 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for RootStoppedListeningForTextContinuationMessage(0);
    v11 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
    v12 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = sub_2232004F4();
    v14 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes46RootStoppedListeningForTextContinuationMessage_lastTRPId);
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

uint64_t sub_22319A2A0(void *a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059E58, &qword_223217490);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22319A9E4();
  sub_2232007A4();
  v12 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes46RootStoppedListeningForTextContinuationMessage_lastTRPId);
  v13 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes46RootStoppedListeningForTextContinuationMessage_lastTRPId + 8);
  sub_2232005F4();
  if (!v2)
  {
    sub_2230D77A8(a1);
  }

  return (*(v8 + 8))(v3, v5);
}

uint64_t sub_22319A450()
{
  v7 = 0;
  v8 = 0xE000000000000000;
  sub_223200374();
  v6.receiver = v0;
  v6.super_class = type metadata accessor for RootStoppedListeningForTextContinuationMessage(0);
  v1 = objc_msgSendSuper2(&v6, sel_description);
  v2 = sub_2232000C4();
  v4 = v3;

  v7 = v2;
  v8 = v4;
  MEMORY[0x223DD5AA0](0x547473616C3C202CLL, 0xEE00203A64495052);
  MEMORY[0x223DD5AA0](*&v0[OBJC_IVAR____TtC16SiriMessageTypes46RootStoppedListeningForTextContinuationMessage_lastTRPId], *&v0[OBJC_IVAR____TtC16SiriMessageTypes46RootStoppedListeningForTextContinuationMessage_lastTRPId + 8]);
  MEMORY[0x223DD5AA0](62, 0xE100000000000000);
  return v7;
}

uint64_t RootStoppedListeningForTextContinuationMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t RootStoppedListeningForTextContinuationMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t RootStoppedListeningForTextContinuationMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RootStoppedListeningForTextContinuationMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t RootStoppedListeningForTextContinuationMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_7_23() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t RootStoppedListeningForTextContinuationMessage.Builder.requestId.getter()
{
  v0 = type metadata accessor for RootStoppedListeningForTextContinuationMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 28));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t RootStoppedListeningForTextContinuationMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for RootStoppedListeningForTextContinuationMessage.Builder(0) + 28));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t RootStoppedListeningForTextContinuationMessage.Builder.lastTRPId.getter()
{
  v0 = type metadata accessor for RootStoppedListeningForTextContinuationMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 32));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t RootStoppedListeningForTextContinuationMessage.Builder.lastTRPId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for RootStoppedListeningForTextContinuationMessage.Builder(0) + 32));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t sub_22319A818(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x495052547473616CLL && a2 == 0xE900000000000064)
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

uint64_t sub_22319A8B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22319A818(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22319A8E4(uint64_t a1)
{
  v2 = sub_22319A9E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22319A920(uint64_t a1)
{
  v2 = sub_22319A9E4();

  return MEMORY[0x2821FE720](a1, v2);
}

id RootStoppedListeningForTextContinuationMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RootStoppedListeningForTextContinuationMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_22319A9E4()
{
  result = qword_27D059E50;
  if (!qword_27D059E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059E50);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RootStoppedListeningForTextContinuationMessage.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_22319AB88()
{
  result = qword_27D059E80;
  if (!qword_27D059E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059E80);
  }

  return result;
}

unint64_t sub_22319ABE0()
{
  result = qword_27D059E88;
  if (!qword_27D059E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059E88);
  }

  return result;
}

unint64_t sub_22319AC38()
{
  result = qword_27D059E90;
  if (!qword_27D059E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059E90);
  }

  return result;
}

void *RootTextBasedTRPCandidateMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v3 = objc_allocWithZone(v1);
  return RootTextBasedTRPCandidateMessage.init(build:)(v2, v0);
}

void *RootTextBasedTRPCandidateMessage.init(build:)(void (*a1)(unsigned __int8 *), uint64_t a2)
{
  v82 = a1;
  v81 = a2;
  v2 = sub_2231FFC84();
  v3 = OUTLINED_FUNCTION_9(v2);
  v76 = v4;
  v77 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_2();
  v75 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v70 - v11;
  v13 = sub_2231FFDA4();
  v14 = OUTLINED_FUNCTION_9(v13);
  v78 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_2();
  v79 = v19 - v18;
  v20 = type metadata accessor for RootTextBasedTRPCandidateMessage.Builder(0);
  v21 = (v20 - 8);
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2_2();
  v25 = (v24 - v23);
  *v25 = 15;
  *(v25 + 1) = 0;
  *(v25 + 2) = 0;
  v26 = v21[8];
  v80 = v13;
  __swift_storeEnumTagSinglePayload(v24 - v23 + v26, 1, 1, v13);
  v27 = &v25[v21[9]];
  *v27 = 0;
  *(v27 + 1) = 0;
  v28 = &v25[v21[10]];
  *v28 = 0;
  *(v28 + 1) = 0;
  v29 = &v25[v21[11]];
  *v29 = 0;
  *(v29 + 1) = 0;
  v30 = &v25[v21[12]];
  *v30 = 0;
  *(v30 + 1) = 0;
  v31 = &v25[v21[13]];
  *v31 = 0;
  *(v31 + 1) = 0;
  v32 = v21[14];
  v25[v32] = 1;
  v82(v25);
  if (*v25 == 15 || (v33 = *(v25 + 2)) == 0)
  {
    sub_22319B334(v25);
    goto LABEL_6;
  }

  LODWORD(v81) = *v25;
  v82 = v33;
  v74 = *(v25 + 1);
  sub_2230D1480(&v25[v26], v12);
  v34 = v80;
  if (__swift_getEnumTagSinglePayload(v12, 1, v80) == 1)
  {
    sub_22319B334(v25);
    sub_2230D69D4(v12);
LABEL_6:
    v35 = v83;
LABEL_7:
    type metadata accessor for RootTextBasedTRPCandidateMessage(0);
    v36 = *((*MEMORY[0x277D85000] & *v35) + 0x30);
    v37 = *((*MEMORY[0x277D85000] & *v35) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v40 = v78;
  (*(v78 + 32))(v79, v12, v34);
  v41 = *(v27 + 1);
  if (!v41 || (v42 = *(v28 + 1)) == 0 || (v43 = *(v31 + 1)) == 0 || !*(v30 + 1))
  {
    sub_22319B334(v25);
    (*(v40 + 8))(v79, v34);
    goto LABEL_6;
  }

  v72 = *(v30 + 1);
  v73 = v42;
  v44 = *v28;
  v70 = *v27;
  v71 = v44;
  v45 = *v30;
  v84 = *v31;
  v85 = v43;

  v46 = v75;
  sub_2231FFC74();
  sub_2230D1D30();
  v47 = sub_2232002E4();
  v49 = v48;
  (*(v76 + 8))(v46, v77);
  v50 = HIBYTE(v49) & 0xF;
  if ((v49 & 0x2000000000000000) == 0)
  {
    v50 = v47 & 0xFFFFFFFFFFFFLL;
  }

  if (!v50)
  {

    v35 = v83;
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v57 = sub_223200014();
    __swift_project_value_buffer(v57, qword_280FCE830);
    v58 = sub_223200004();
    v59 = sub_223200254();
    v60 = os_log_type_enabled(v58, v59);
    v61 = v79;
    if (v60)
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_2230CE000, v58, v59, "utterance is empty, can't create message", v62, 2u);
      MEMORY[0x223DD6780](v62, -1, -1);
    }

    sub_22319B334(v25);
    (*(v40 + 8))(v61, v80);
    goto LABEL_7;
  }

  v51 = v47;
  v52 = v83;
  v53 = (v83 + OBJC_IVAR____TtC16SiriMessageTypes32RootTextBasedTRPCandidateMessage_utterance);
  *v53 = v51;
  v53[1] = v49;
  v54 = *(v29 + 1);
  if (v54)
  {
    v55 = *v29;
    v56 = *(v29 + 1);
  }

  else
  {
    v55 = 0;
    v56 = 0xE000000000000000;
  }

  v63 = v79;
  v64 = (v52 + OBJC_IVAR____TtC16SiriMessageTypes32RootTextBasedTRPCandidateMessage_tcuId);
  *v64 = v55;
  v64[1] = v56;
  *(v52 + OBJC_IVAR____TtC16SiriMessageTypes32RootTextBasedTRPCandidateMessage_correctionOutcome) = v25[v32];
  MEMORY[0x28223BE20](v54);
  *(&v70 - 80) = v81;
  v65 = v82;
  *(&v70 - 9) = v74;
  *(&v70 - 8) = v65;
  v67 = v70;
  v66 = v71;
  *(&v70 - 7) = v63;
  *(&v70 - 6) = v67;
  *(&v70 - 5) = v41;
  *(&v70 - 4) = v66;
  v68 = v72;
  *(&v70 - 3) = v73;
  *(&v70 - 2) = v45;
  *(&v70 - 1) = v68;

  v38 = TRPCandidateRequestMessageBase.init(build:)(sub_223113ED4);

  v69 = v38;
  sub_22319B334(v25);
  if (v38)
  {
  }

  (*(v40 + 8))(v63, v80);
  return v38;
}

uint64_t sub_22319B334(uint64_t a1)
{
  v2 = type metadata accessor for RootTextBasedTRPCandidateMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *RootTextBasedTRPCandidateMessage.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059E98, &qword_223217638);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22319C150();
  sub_223200794();
  if (v2)
  {
    v19 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for RootTextBasedTRPCandidateMessage(0);
    v11 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
    v12 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = OUTLINED_FUNCTION_9_8();
    v14 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes32RootTextBasedTRPCandidateMessage_utterance);
    *v14 = v10;
    v14[1] = v15;
    v16 = OUTLINED_FUNCTION_9_8();
    v17 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes32RootTextBasedTRPCandidateMessage_tcuId);
    *v17 = v16;
    v17[1] = v18;
    LOBYTE(v22[0]) = 2;
    sub_2231659CC();
    sub_223200554();
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes32RootTextBasedTRPCandidateMessage_correctionOutcome) = 0;
    sub_2230F7158(a1, v22);
    v19 = TRPCandidateRequestMessageBase.init(from:)(v22);
    v20 = OUTLINED_FUNCTION_2();
    v21(v20);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v19;
}

uint64_t sub_22319B6D0(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059EA8, &qword_223217640);
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v18 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22319C150();
  sub_2232007A4();
  v13 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes32RootTextBasedTRPCandidateMessage_utterance);
  v14 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes32RootTextBasedTRPCandidateMessage_utterance + 8);
  v22 = 0;
  sub_2232005F4();
  if (!v2)
  {
    v15 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes32RootTextBasedTRPCandidateMessage_tcuId);
    v16 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes32RootTextBasedTRPCandidateMessage_tcuId + 8);
    v21 = 1;
    sub_2232005F4();
    v20 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes32RootTextBasedTRPCandidateMessage_correctionOutcome);
    v19 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059EB0, &qword_223217648);
    sub_22319C1A4();
    sub_223200654();
    sub_2231E5494(a1);
  }

  return (*(v7 + 8))(v11, v4);
}

uint64_t RootTextBasedTRPCandidateMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t RootTextBasedTRPCandidateMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t RootTextBasedTRPCandidateMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RootTextBasedTRPCandidateMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t RootTextBasedTRPCandidateMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_7_24() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t RootTextBasedTRPCandidateMessage.Builder.requestId.getter()
{
  v0 = type metadata accessor for RootTextBasedTRPCandidateMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 28));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t RootTextBasedTRPCandidateMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = type metadata accessor for RootTextBasedTRPCandidateMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2(*(v3 + 28));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t RootTextBasedTRPCandidateMessage.Builder.trpCandidateId.getter()
{
  v0 = type metadata accessor for RootTextBasedTRPCandidateMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 32));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t RootTextBasedTRPCandidateMessage.Builder.trpCandidateId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = type metadata accessor for RootTextBasedTRPCandidateMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2(*(v3 + 32));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t RootTextBasedTRPCandidateMessage.Builder.tcuId.getter()
{
  v0 = type metadata accessor for RootTextBasedTRPCandidateMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 36));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t RootTextBasedTRPCandidateMessage.Builder.tcuId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = type metadata accessor for RootTextBasedTRPCandidateMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2(*(v3 + 36));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t RootTextBasedTRPCandidateMessage.Builder.userId.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RootTextBasedTRPCandidateMessage.Builder(0) + 40));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t RootTextBasedTRPCandidateMessage.Builder.userId.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = type metadata accessor for RootTextBasedTRPCandidateMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2(*(v4 + 40));
  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t RootTextBasedTRPCandidateMessage.Builder.utterance.getter()
{
  v0 = type metadata accessor for RootTextBasedTRPCandidateMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 44));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t RootTextBasedTRPCandidateMessage.Builder.utterance.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = type metadata accessor for RootTextBasedTRPCandidateMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2(*(v3 + 44));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t RootTextBasedTRPCandidateMessage.Builder.correctionOutcome.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for RootTextBasedTRPCandidateMessage.Builder(0);
  *a1 = *(v1 + *(result + 48));
  return result;
}

uint64_t RootTextBasedTRPCandidateMessage.Builder.correctionOutcome.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for RootTextBasedTRPCandidateMessage.Builder(0);
  *(v1 + *(result + 48)) = v2;
  return result;
}

uint64_t sub_22319BE2C(uint64_t a1, uint64_t a2)
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

    else if (a1 == 0xD000000000000011 && 0x80000002232241B0 == a2)
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

uint64_t sub_22319BF48(char a1)
{
  if (!a1)
  {
    return 0x636E617265747475;
  }

  if (a1 == 1)
  {
    return 0x6449756374;
  }

  return 0xD000000000000011;
}

uint64_t sub_22319BFAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22319BE2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22319BFD4(uint64_t a1)
{
  v2 = sub_22319C150();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22319C010(uint64_t a1)
{
  v2 = sub_22319C150();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22319C07C()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes32RootTextBasedTRPCandidateMessage_utterance + 8);

  v2 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes32RootTextBasedTRPCandidateMessage_tcuId + 8);
}

id RootTextBasedTRPCandidateMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RootTextBasedTRPCandidateMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_22319C150()
{
  result = qword_27D059EA0;
  if (!qword_27D059EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059EA0);
  }

  return result;
}

unint64_t sub_22319C1A4()
{
  result = qword_27D059EB8;
  if (!qword_27D059EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D059EB0, &qword_223217648);
    sub_223165978();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059EB8);
  }

  return result;
}

uint64_t sub_22319C2D8()
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
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

_BYTE *storeEnumTagSinglePayload for RootTextBasedTRPCandidateMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22319C4E4()
{
  result = qword_27D059EE0;
  if (!qword_27D059EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059EE0);
  }

  return result;
}

unint64_t sub_22319C53C()
{
  result = qword_27D059EE8;
  if (!qword_27D059EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059EE8);
  }

  return result;
}

unint64_t sub_22319C594()
{
  result = qword_27D059EF0;
  if (!qword_27D059EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059EF0);
  }

  return result;
}

void *RootTRPCandidateMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return RootTRPCandidateMessage.init(build:)(v1);
}

void *RootTRPCandidateMessage.init(build:)(void (*a1)(unsigned __int8 *))
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
  v10 = type metadata accessor for RootTRPCandidateMessage.Builder(0);
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

    sub_22319CB00(v14);
    type metadata accessor for RootTRPCandidateMessage(0);
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
  *(v55 + OBJC_IVAR____TtC16SiriMessageTypes23RootTRPCandidateMessage_tcuToContextList) = v24;
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
  sub_22319CB00(v14);
  if (v36)
  {
  }

  (*(v53 + 8))(v28, v7);
  return v36;
}

uint64_t sub_22319CB00(uint64_t a1)
{
  v2 = type metadata accessor for RootTRPCandidateMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *RootTRPCandidateMessage.init(from:)(uint64_t *a1)
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

  *(v2 + OBJC_IVAR____TtC16SiriMessageTypes23RootTRPCandidateMessage_tcuToContextList) = MEMORY[0x277D84F90];
  sub_2230F7158(a1, v10);
  v8 = TRPCandidateRequestMessageBase.init(from:)(v10);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

uint64_t sub_22319CD58()
{
  v10 = 0;
  v11 = 0xE000000000000000;
  sub_223200374();
  v9.receiver = v0;
  v9.super_class = type metadata accessor for RootTRPCandidateMessage(0);
  v1 = objc_msgSendSuper2(&v9, sel_description);
  v2 = sub_2232000C4();
  v4 = v3;

  v10 = v2;
  v11 = v4;
  MEMORY[0x223DD5AA0](0xD000000000000015, 0x80000002232252D0);
  v5 = *&v0[OBJC_IVAR____TtC16SiriMessageTypes23RootTRPCandidateMessage_tcuToContextList];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059EF8, &qword_223217808);
  v7 = MEMORY[0x223DD5B40](v5, v6);
  MEMORY[0x223DD5AA0](v7);

  MEMORY[0x223DD5AA0](62, 0xE100000000000000);
  return v10;
}

uint64_t RootTRPCandidateMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t RootTRPCandidateMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t RootTRPCandidateMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RootTRPCandidateMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t RootTRPCandidateMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_2_32() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t RootTRPCandidateMessage.Builder.requestId.getter()
{
  v1 = (v0 + *(type metadata accessor for RootTRPCandidateMessage.Builder(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t RootTRPCandidateMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for RootTRPCandidateMessage.Builder(0) + 28));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t RootTRPCandidateMessage.Builder.userId.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RootTRPCandidateMessage.Builder(0) + 32));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t RootTRPCandidateMessage.Builder.userId.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for RootTRPCandidateMessage.Builder(0) + 32));
  v5 = v4[1];

  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t RootTRPCandidateMessage.Builder.trpCandidateId.getter()
{
  v1 = (v0 + *(type metadata accessor for RootTRPCandidateMessage.Builder(0) + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t RootTRPCandidateMessage.Builder.trpCandidateId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for RootTRPCandidateMessage.Builder(0) + 36));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t RootTRPCandidateMessage.Builder.tcuToContextList.getter()
{
  v1 = *(v0 + *(type metadata accessor for RootTRPCandidateMessage.Builder(0) + 40));
}

uint64_t RootTRPCandidateMessage.Builder.tcuToContextList.setter()
{
  v2 = *(OUTLINED_FUNCTION_2_32() + 40);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

id RootTRPCandidateMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RootTRPCandidateMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22319D3AC()
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
        sub_22319D4C4();
        v1 = v8;
        if (v9 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

void sub_22319D4C4()
{
  if (!qword_280FCA448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D059F00, qword_223217870);
    v0 = sub_2232002D4();
    if (!v1)
    {
      atomic_store(v0, &qword_280FCA448);
    }
  }
}

void *RunPommesRequestMessage.init(build:)(uint64_t (*a1)(char *))
{
  v2 = v1;
  swift_getObjectType();
  v4 = type metadata accessor for RunPommesRequestMessage.Builder(0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v8 = 0;
  *(v8 + 1) = 0;
  v8[16] = 15;
  *(v8 + 3) = 0;
  *(v8 + 4) = 0;
  v9 = *(v5 + 40);
  v10 = sub_2231FFDA4();
  __swift_storeEnumTagSinglePayload(&v8[v9], 1, 1, v10);
  v11 = &v8[*(v5 + 44)];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = a1(v8);
  v13 = *v8;
  if (*v8 && (v14 = *(v8 + 1)) != 0)
  {
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes23RunPommesRequestMessage_command) = v13;
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes23RunPommesRequestMessage_commandExecutionInfo) = v14;
    MEMORY[0x28223BE20](v12);
    *(&v33 - 2) = v8;
    v16 = v15;
    v17 = v13;
    v18 = v16;
    v19 = v17;
    v20 = RequestMessageBase.init(build:)(sub_22319E748);
    v21 = v20;

    if (v20)
    {
    }

    sub_22319D8D4(v8);
  }

  else
  {
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v22 = sub_223200014();
    __swift_project_value_buffer(v22, qword_280FCE830);
    v23 = sub_223200004();
    v24 = sub_223200254();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v34 = v26;
      *v25 = 136446210;
      v27 = sub_2230F7898();
      v29 = sub_2231A5D38(v27, v28, &v34);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_2230CE000, v23, v24, "Could not build %{public}s: Builder has missing required fields", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x223DD6780](v26, -1, -1);
      MEMORY[0x223DD6780](v25, -1, -1);
    }

    sub_22319D8D4(v8);
    type metadata accessor for RunPommesRequestMessage(0);
    v30 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
    v31 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v20;
}

uint64_t sub_22319D8D4(uint64_t a1)
{
  v2 = type metadata accessor for RunPommesRequestMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22319D950(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 16);
  v5 = *(a2 + 24);
  v4 = *(a2 + 32);
  v6 = *(a1 + 16);

  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  v7 = type metadata accessor for RunPommesRequestMessage.Builder(0);
  v8 = *(v7 + 32);
  v9 = type metadata accessor for RequestMessageBase.Builder(0);
  sub_2230DAEC8(a2 + v8, a1 + *(v9 + 24));
  v10 = (a2 + *(v7 + 36));
  v12 = *v10;
  v11 = v10[1];
  v13 = (a1 + *(v9 + 28));
  v14 = v13[1];

  *v13 = v12;
  v13[1] = v11;
  return result;
}

id RunPommesRequestMessage.Builder.command.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *RunPommesRequestMessage.Builder.commandExecutionInfo.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t RunPommesRequestMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t RunPommesRequestMessage.Builder.assistantId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t RunPommesRequestMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RunPommesRequestMessage.Builder(0) + 32);

  return sub_2230D1480(v3, a1);
}

uint64_t RunPommesRequestMessage.Builder.sessionId.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for RunPommesRequestMessage.Builder(0) + 32);

  return sub_2230D4E04(a1, v3);
}

uint64_t RunPommesRequestMessage.Builder.requestId.getter()
{
  v1 = (v0 + *(type metadata accessor for RunPommesRequestMessage.Builder(0) + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t RunPommesRequestMessage.Builder.requestId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RunPommesRequestMessage.Builder(0) + 36));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_22319DD48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646E616D6D6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000223222960 == a2)
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

uint64_t sub_22319DE18(char a1)
{
  if (a1)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x646E616D6D6F63;
  }
}

uint64_t sub_22319DE5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22319DD48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22319DE84(uint64_t a1)
{
  v2 = sub_22319E750();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22319DEC0(uint64_t a1)
{
  v2 = sub_22319E750();

  return MEMORY[0x2821FE720](a1, v2);
}

void *RunPommesRequestMessage.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059F08, &qword_223217898);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22319E750();
  sub_223200794();
  v10 = &unk_27D080000;
  if (v2)
  {
    v11 = 0;
    v12 = 0;
  }

  else
  {
    v30 = v1;
    v33 = 0;
    sub_2230FB7A0();
    OUTLINED_FUNCTION_2_33();
    v13 = v31;
    v14 = v32;
    sub_2230FB7F4(0, &qword_27D0576E8, 0x277CCAAC8);
    sub_2230FB7F4(0, &qword_27D059F18, 0x277D476A0);
    v15 = sub_223200264();
    if (v15)
    {
      *(v1 + OBJC_IVAR____TtC16SiriMessageTypes23RunPommesRequestMessage_command) = v15;
      v33 = 1;
      OUTLINED_FUNCTION_2_33();
      v19 = v31;
      sub_2230FB7F4(0, &qword_280FCA3B8, 0x277CEF210);
      v20 = sub_223200264();
      v29 = v32;
      v10 = &unk_27D080000;
      if (v20)
      {
        *(v1 + OBJC_IVAR____TtC16SiriMessageTypes23RunPommesRequestMessage_commandExecutionInfo) = v20;
        sub_2230F7158(a1, &v31);
        v12 = RequestMessageBase.init(from:)(&v31);
        v27 = OUTLINED_FUNCTION_1_10();
        v28(v27);
        OUTLINED_FUNCTION_5_21();
        sub_2230D94DC(v19, v29);
        __swift_destroy_boxed_opaque_existential_1(a1);
        return v12;
      }

      sub_2230F9E38();
      swift_allocError();
      *v24 = 0xD00000000000003ELL;
      *(v24 + 8) = 0x80000002232253B0;
      *(v24 + 16) = 0;
      swift_willThrow();
      OUTLINED_FUNCTION_5_21();
      sub_2230D94DC(v19, v29);
      v25 = OUTLINED_FUNCTION_1_10();
      v26(v25);
      v12 = 0;
      v11 = 1;
      v3 = v30;
    }

    else
    {
      sub_2230F9E38();
      swift_allocError();
      *v16 = 0xD000000000000031;
      *(v16 + 8) = 0x8000000223225370;
      *(v16 + 16) = 0;
      swift_willThrow();
      sub_2230D94DC(v13, v14);
      v17 = OUTLINED_FUNCTION_1_10();
      v18(v17);
      v11 = 0;
      v12 = 0;
      v10 = &unk_27D080000;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  if (v11)
  {
  }

  type metadata accessor for RunPommesRequestMessage(0);
  v21 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
  v22 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
  swift_deallocPartialClassInstance();
  return v12;
}

uint64_t sub_22319E3BC(void *a1)
{
  v3 = v1;
  v36 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059F20, &qword_2232178A0);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v31 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22319E750();
  sub_2232007A4();
  v14 = objc_opt_self();
  v15 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes23RunPommesRequestMessage_command);
  v34 = 0;
  v16 = [v14 archivedDataWithRootObject:v15 requiringSecureCoding:1 error:&v34];
  v17 = v34;
  if (!v16)
  {
    v27 = v17;
    sub_2231FFD04();

LABEL_7:
    swift_willThrow();
    goto LABEL_8;
  }

  v32 = v3;
  v18 = sub_2231FFD24();
  v20 = v19;

  v34 = v18;
  v35 = v20;
  v33 = 0;
  sub_2230D7754();
  OUTLINED_FUNCTION_3_27();
  sub_2230D94DC(v34, v35);
  if (v2)
  {
    goto LABEL_8;
  }

  v21 = *(v32 + OBJC_IVAR____TtC16SiriMessageTypes23RunPommesRequestMessage_commandExecutionInfo);
  v34 = 0;
  v22 = [v14 archivedDataWithRootObject:v21 requiringSecureCoding:1 error:&v34];
  v23 = v34;
  if (!v22)
  {
    v30 = v23;
    sub_2231FFD04();

    goto LABEL_7;
  }

  v24 = sub_2231FFD24();
  v26 = v25;

  v34 = v24;
  v35 = v26;
  v33 = 1;
  OUTLINED_FUNCTION_3_27();
  sub_2230D94DC(v34, v35);
  sub_2230D77A8(a1);
LABEL_8:
  result = (*(v8 + 8))(v12, v5);
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22319E684()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes23RunPommesRequestMessage_commandExecutionInfo);
}

id RunPommesRequestMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RunPommesRequestMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_22319E750()
{
  result = qword_27D059F10;
  if (!qword_27D059F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059F10);
  }

  return result;
}

uint64_t sub_22319E848()
{
  sub_22310AA40(319, &qword_27D059F38, &qword_27D059F18, 0x277D476A0);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_22310AA40(319, &qword_280FCA3B0, &qword_280FCA3B8, 0x277CEF210);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_2230D525C(319, &qword_280FCB0A8);
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_2230D525C(319, &qword_280FCA4D8);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          sub_2230F6D30();
          if (v10 > 0x3F)
          {
            return v9;
          }

          else
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

_BYTE *storeEnumTagSinglePayload for RunPommesRequestMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22319EA64()
{
  result = qword_27D059F40;
  if (!qword_27D059F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059F40);
  }

  return result;
}

unint64_t sub_22319EABC()
{
  result = qword_27D059F48;
  if (!qword_27D059F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059F48);
  }

  return result;
}

unint64_t sub_22319EB14()
{
  result = qword_27D059F50;
  if (!qword_27D059F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059F50);
  }

  return result;
}

id RunPommesResponseMessage.pommesResult.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_pommesResult);
  v3 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_pommesResult + 8);
  *a1 = v2;
  *(a1 + 8) = v3;
  return sub_223171E0C(v2, v3);
}

uint64_t RunPommesResponseMessage.pommesSearchReason.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_pommesSearchReason;
  v4 = sub_2231FFF44();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

id RunPommesResponseMessage.userInput.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_userInput);
  v3 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_userInput + 8);
  v4 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_userInput + 16);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return sub_223194344(v2, v3, v4);
}

uint64_t RunPommesResponseMessage.userId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_userId + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_userId);
  a1[1] = v2;
}

__n128 RunPommesResponseMessage.selectedUserAttributes.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_selectedUserAttributes + 16);
  v3 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_selectedUserAttributes + 20);
  result = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_selectedUserAttributes);
  *a1 = result;
  a1[1].n128_u16[2] = v3;
  a1[1].n128_u32[0] = v2;
  return result;
}

uint64_t static RunPommesResponseMessage.UserInput.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if ((v2 & 1) == 0)
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      sub_2230FB7F4(0, &qword_27D059F58, 0x277D82BB8);
      v27 = OUTLINED_FUNCTION_24();
      sub_223194344(v27, v28, 0);
      v29 = OUTLINED_FUNCTION_13();
      sub_223194344(v29, v30, 0);
      v5 = sub_2232002B4();
      v31 = OUTLINED_FUNCTION_13();
      sub_223195A78(v31, v32, 0);
      v14 = OUTLINED_FUNCTION_24();
      v16 = 0;
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if ((*(a2 + 16) & 1) == 0)
  {
LABEL_9:
    v17 = OUTLINED_FUNCTION_24();
    sub_223194344(v17, v18, v3);
    v19 = OUTLINED_FUNCTION_13();
    sub_223194344(v19, v20, v2);
    v21 = OUTLINED_FUNCTION_13();
    sub_223195A78(v21, v22, v2);
    v23 = OUTLINED_FUNCTION_24();
    sub_223195A78(v23, v24, v3);
    return 0;
  }

  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    v25 = 1;
    v33 = OUTLINED_FUNCTION_4_31();
    sub_223194344(v33, v34, v35);
    v36 = OUTLINED_FUNCTION_4_31();
    sub_223194344(v36, v37, v38);
    v39 = OUTLINED_FUNCTION_4_31();
    sub_223195A78(v39, v40, v41);
    v42 = OUTLINED_FUNCTION_4_31();
    sub_223195A78(v42, v43, v44);
    return v25;
  }

  OUTLINED_FUNCTION_13();
  v5 = sub_2232006B4();
  v6 = OUTLINED_FUNCTION_24();
  sub_223194344(v6, v7, 1);
  v8 = OUTLINED_FUNCTION_4_31();
  sub_223194344(v8, v9, v10);
  v11 = OUTLINED_FUNCTION_4_31();
  sub_223195A78(v11, v12, v13);
  v14 = OUTLINED_FUNCTION_24();
  v16 = 1;
LABEL_12:
  sub_223195A78(v14, v15, v16);
  return v5 & 1;
}

void *RunPommesResponseMessage.__allocating_init(build:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = OUTLINED_FUNCTION_13();
  return RunPommesResponseMessage.init(build:)(v2);
}

void *RunPommesResponseMessage.init(build:)(void (*a1)(uint64_t))
{
  v74 = a1;
  v75 = v1;
  ObjectType = swift_getObjectType();
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0591A8, &unk_223211810) - 8) + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v3);
  v76 = (&v68 - v4);
  v5 = sub_2231FFF44();
  v6 = OUTLINED_FUNCTION_9(v5);
  v71 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_2();
  v73 = v11 - v10;
  v12 = type metadata accessor for RunPommesResponseMessage.Builder(0);
  v13 = (v12 - 8);
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_2();
  v17 = v16 - v15;
  *v17 = 15;
  *(v17 + 8) = 0;
  *(v17 + 16) = 0;
  v18 = v13[8];
  v19 = sub_2231FFDA4();
  __swift_storeEnumTagSinglePayload(v17 + v18, 1, 1, v19);
  v20 = (v17 + v13[9]);
  *v20 = 0;
  v20[1] = 0;
  v21 = v17 + v13[10];
  *v21 = 0;
  *(v21 + 8) = -1;
  v22 = v13[11];
  __swift_storeEnumTagSinglePayload(v17 + v22, 1, 1, v5);
  v23 = v13[12];
  *(v17 + v23) = 0;
  v24 = v17 + v13[13];
  *v24 = 0;
  *(v24 + 8) = 0;
  *(v24 + 16) = -1;
  v25 = (v17 + v13[14]);
  *v25 = 0;
  v25[1] = 0;
  v26 = v17 + v13[15];
  *v26 = 0;
  *(v26 + 8) = 0;
  *(v26 + 20) = 2;
  *(v26 + 16) = 0;
  v74(v17);
  v27 = *(v21 + 8);
  if (v27 != 255)
  {
    v28 = *v21;
    v29 = v76;
    sub_2230D3008(v17 + v22, v76, &qword_27D0591A8, &unk_223211810);
    if (__swift_getEnumTagSinglePayload(v29, 1, v5) == 1)
    {
      sub_2231A1390(v76);
    }

    else
    {
      v30 = v5;
      v31 = v71;
      v32 = v73;
      (*(v71 + 32))(v73, v76, v30);
      v33 = *(v17 + v23);
      if (v33)
      {
        v34 = *(v24 + 16);
        if (v34 != 255)
        {
          v35 = v28;
          v74 = v28;
          v38 = v24;
          v36 = *v24;
          v70 = *(v38 + 8);
          v37 = v70;
          v39 = v31;
          v40 = v75;
          v41 = v75 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_pommesResult;
          *v41 = v35;
          v41[8] = v27 & 1;
          v42 = (*(v39 + 16))(v40 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_pommesSearchReason, v73, v30);
          v76 = &v68;
          *(v40 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_nlResponse) = v33;
          v43 = v40 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_userInput;
          *v43 = v36;
          *(v43 + 1) = v37;
          v43[16] = v34 & 1;
          v44 = *v25;
          ObjectType = v25[1];
          v45 = ObjectType;
          v46 = (v40 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_userId);
          *v46 = v44;
          v46[1] = v45;
          LODWORD(v44) = *(v26 + 16);
          LOWORD(v46) = *(v26 + 20);
          v47 = v40 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_selectedUserAttributes;
          *v47 = *v26;
          *(v47 + 10) = v46;
          *(v47 + 4) = v44;
          MEMORY[0x28223BE20](v42);
          *(&v68 - 2) = v17;
          v48 = v33;
          v49 = v74;
          sub_2231741F8(v74, v27);
          v50 = v70;
          sub_223195A48(v36, v70, v34);
          v69 = v48;
          sub_2231741F8(v49, v27);
          v51 = v36;
          v52 = v36;
          v53 = v50;
          sub_223195A48(v51, v50, v34);

          v54 = RequestMessageBase.init(build:)(sub_2231A13F8);
          sub_223195A60(v52, v53, v34);

          sub_223174250(v49, v27);
          (*(v71 + 8))(v73, v30);
          sub_22319F400(v17);
          return v54;
        }

        (*(v31 + 8))(v73, v30);
      }

      else
      {
        (*(v31 + 8))(v32, v30);
      }
    }
  }

  if (qword_280FCA778 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v55 = sub_223200014();
  __swift_project_value_buffer(v55, qword_280FCE830);
  v56 = sub_223200004();
  v57 = sub_223200254();
  v58 = OUTLINED_FUNCTION_13_0();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v77 = v61;
    *v60 = 136446210;
    v62 = sub_2230F7898();
    v64 = sub_2231A5D38(v62, v63, &v77);

    *(v60 + 4) = v64;
    _os_log_impl(&dword_2230CE000, v56, v57, "Could not build %{public}s: Builder has missing required fields", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v61);
    MEMORY[0x223DD6780](v61, -1, -1);
    MEMORY[0x223DD6780](v60, -1, -1);
  }

  sub_22319F400(v17);
  type metadata accessor for RunPommesResponseMessage(0);
  v65 = *((*MEMORY[0x277D85000] & *v75) + 0x30);
  v66 = *((*MEMORY[0x277D85000] & *v75) + 0x34);
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_22319F400(uint64_t a1)
{
  v2 = type metadata accessor for RunPommesResponseMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22319F47C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  v6 = *(a1 + 16);

  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  v7 = type metadata accessor for RunPommesResponseMessage.Builder(0);
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

uint64_t RunPommesResponseMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t RunPommesResponseMessage.Builder.assistantId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t RunPommesResponseMessage.Builder.requestId.getter()
{
  v1 = (v0 + *(type metadata accessor for RunPommesResponseMessage.Builder(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_2_1();
}

uint64_t RunPommesResponseMessage.Builder.requestId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RunPommesResponseMessage.Builder(0) + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

id RunPommesResponseMessage.Builder.pommesResult.getter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_25_4() + 32);
  v3 = *v2;
  *v0 = *v2;
  v4 = *(v2 + 8);
  *(v0 + 8) = v4;

  return sub_2231741F8(v3, v4);
}

void RunPommesResponseMessage.Builder.pommesResult.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v1 + *(type metadata accessor for RunPommesResponseMessage.Builder(0) + 32);
  sub_223174250(*v4, *(v4 + 8));
  *v4 = v2;
  *(v4 + 8) = v3;
}

void *RunPommesResponseMessage.Builder.nlResponse.getter()
{
  v1 = *(v0 + *(type metadata accessor for RunPommesResponseMessage.Builder(0) + 40));
  v2 = v1;
  return v1;
}

void RunPommesResponseMessage.Builder.nlResponse.setter()
{
  v2 = *(OUTLINED_FUNCTION_19_6() + 40);

  *(v1 + v2) = v0;
}

id RunPommesResponseMessage.Builder.userInput.getter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_25_4() + 44);
  v3 = *v2;
  v4 = *(v2 + 8);
  *v0 = *v2;
  *(v0 + 8) = v4;
  v5 = *(v2 + 16);
  *(v0 + 16) = v5;

  return sub_223195A48(v3, v4, v5);
}

void RunPommesResponseMessage.Builder.userInput.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = v1 + *(type metadata accessor for RunPommesResponseMessage.Builder(0) + 44);
  sub_223195A60(*v5, *(v5 + 8), *(v5 + 16));
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
}

uint64_t RunPommesResponseMessage.Builder.userId.getter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_25_4() + 48));
  v3 = v2[1];
  *v0 = *v2;
  v0[1] = v3;
}

uint64_t RunPommesResponseMessage.Builder.userId.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for RunPommesResponseMessage.Builder(0) + 48));
  v5 = v4[1];

  *v4 = v2;
  v4[1] = v3;
  return result;
}

__n128 RunPommesResponseMessage.Builder.selectedUserAttributes.getter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_25_4() + 52));
  v3 = v2[1].n128_u32[0];
  v4 = v2[1].n128_u16[2];
  result = *v2;
  *v0 = *v2;
  v0[1].n128_u16[2] = v4;
  v0[1].n128_u32[0] = v3;
  return result;
}

uint64_t RunPommesResponseMessage.Builder.selectedUserAttributes.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 4);
  v5 = *(a1 + 10);
  result = type metadata accessor for RunPommesResponseMessage.Builder(0);
  v7 = v1 + *(result + 52);
  *v7 = v2;
  *(v7 + 8) = v3;
  *(v7 + 20) = v5;
  *(v7 + 16) = v4;
  return result;
}

uint64_t sub_22319FC00(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x655273656D6D6F70 && a2 == 0xEE0065736E6F7073;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x724573656D6D6F70 && a2 == 0xEB00000000726F72;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x8000000223224520 == a2;
      if (v7 || (sub_2232006B4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E6F707365526C6ELL && a2 == 0xEA00000000006573;
        if (v8 || (sub_2232006B4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6150686365657073 && a2 == 0xED00006567616B63;
          if (v9 || (sub_2232006B4() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x636E617265747475 && a2 == 0xE900000000000065;
            if (v10 || (sub_2232006B4() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x644972657375 && a2 == 0xE600000000000000;
              if (v11 || (sub_2232006B4() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0xD000000000000016 && 0x80000002232213C0 == a2)
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

unint64_t sub_22319FEAC(char a1)
{
  result = 0x655273656D6D6F70;
  switch(a1)
  {
    case 1:
      result = 0x724573656D6D6F70;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x6E6F707365526C6ELL;
      break;
    case 4:
      result = 0x6150686365657073;
      break;
    case 5:
      result = 0x636E617265747475;
      break;
    case 6:
      result = 0x644972657375;
      break;
    case 7:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22319FFC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22319FC00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22319FFF0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22319FEA4();
  *a1 = result;
  return result;
}

uint64_t sub_2231A0018(uint64_t a1)
{
  v2 = sub_2231A1400();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231A0054(uint64_t a1)
{
  v2 = sub_2231A1400();

  return MEMORY[0x2821FE720](a1, v2);
}

void *RunPommesResponseMessage.init(from:)(uint64_t *a1)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0591A8, &unk_223211810) - 8) + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v4);
  v6 = &v98 - v5;
  v7 = sub_2231FFF44();
  v100 = OUTLINED_FUNCTION_9(v7);
  v101 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v100);
  OUTLINED_FUNCTION_2_2();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059F60, &qword_223217A20);
  OUTLINED_FUNCTION_9(v14);
  v16 = v15;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v19);
  v21 = &v98 - v20;
  v23 = a1[3];
  v22 = a1[4];
  v103 = a1;
  v24 = __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_2231A1400();
  sub_223200794();
  if (v1)
  {
    goto LABEL_3;
  }

  v98 = v13;
  v99 = v16;
  v107 = 0;
  sub_2230FB7A0();
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_14_9();
  sub_2232004C4();
  v32 = *(&v104 + 1);
  v22 = *(&v104 + 1) >> 60;
  if (*(&v104 + 1) >> 60 == 15)
  {
    v107 = 1;
    sub_223171720();
    OUTLINED_FUNCTION_5_4();
    OUTLINED_FUNCTION_14_9();
    sub_2232004C4();
    v33 = v104;
    if (v104 == 10)
    {
      if (qword_280FCA778 != -1)
      {
        OUTLINED_FUNCTION_0_0();
        swift_once();
      }

      v34 = sub_223200014();
      __swift_project_value_buffer(v34, qword_280FCE830);
      v24 = sub_223200004();
      sub_223200254();
      v35 = OUTLINED_FUNCTION_13_0();
      v37 = os_log_type_enabled(v35, v36);
      v38 = v99;
      if (v37)
      {
        v39 = OUTLINED_FUNCTION_72();
        OUTLINED_FUNCTION_22_8(v39);
        OUTLINED_FUNCTION_11_13(&dword_2230CE000, v40, v41, "Unable to deserialize TCU-mapped POMMES result: encoded data contained neither PommesResponse nor PommesError");
        OUTLINED_FUNCTION_16_11();
      }

      sub_223171774();
      v42 = OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_9_24(v42, v43);
LABEL_40:
      (*(v38 + 8))(v21, v14);
LABEL_3:
      LODWORD(v25) = 0;
      LODWORD(v26) = 0;
      OUTLINED_FUNCTION_13_12();
      goto LABEL_4;
    }
  }

  else
  {
    v44 = v104;
    sub_2230FB7F4(0, &qword_27D0576E8, 0x277CCAAC8);
    sub_2231FFFF4();
    v33 = sub_223200264();
    if (!v33)
    {
      v56 = v44;
      if (qword_280FCA778 != -1)
      {
        OUTLINED_FUNCTION_0_0();
        swift_once();
      }

      v57 = sub_223200014();
      __swift_project_value_buffer(v57, qword_280FCE830);
      v24 = sub_223200004();
      sub_223200254();
      v58 = OUTLINED_FUNCTION_13_0();
      v60 = os_log_type_enabled(v58, v59);
      v38 = v99;
      if (v60)
      {
        v61 = OUTLINED_FUNCTION_72();
        OUTLINED_FUNCTION_22_8(v61);
        OUTLINED_FUNCTION_11_13(&dword_2230CE000, v62, v63, "Unable to deserialize TCU-mapped POMMES result: encoded PommesResponse data was not unarchivable");
        OUTLINED_FUNCTION_16_11();
      }

      sub_223171774();
      v64 = OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_9_24(v64, v65);
      sub_22310A610(v56, v32);
      goto LABEL_40;
    }

    sub_22310A610(v44, v32);
  }

  v45 = v102 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_pommesResult;
  *v45 = v33;
  v45[8] = v32 >> 60 == 15;
  LOBYTE(v104) = 2;
  OUTLINED_FUNCTION_14_9();
  sub_223200494();
  if (!v46)
  {
    goto LABEL_30;
  }

  sub_2231FFF24();
  v22 = v100;
  if (__swift_getEnumTagSinglePayload(v6, 1, v100) != 1)
  {
    v66 = v101;
    v26 = v98;
    (*(v101 + 32))(v98, v6, v22);
    v67 = v102;
    (*(v66 + 16))(v102 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_pommesSearchReason, v26, v22);
    type metadata accessor for NLParseResponse(0);
    v107 = 3;
    sub_2231A1454(&qword_27D0589E8);
    OUTLINED_FUNCTION_14_9();
    sub_223200554();
    *(v67 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_nlResponse) = v104;
    v107 = 4;
    OUTLINED_FUNCTION_5_4();
    OUTLINED_FUNCTION_14_9();
    sub_2232004C4();
    v25 = *(&v104 + 1);
    if (*(&v104 + 1) >> 60 == 15)
    {
      LOBYTE(v104) = 5;
      OUTLINED_FUNCTION_14_9();
      v71 = sub_223200494();
      if (!v70)
      {
        if (qword_280FCA778 != -1)
        {
          OUTLINED_FUNCTION_0_0();
          swift_once();
        }

        v74 = sub_223200014();
        __swift_project_value_buffer(v74, qword_280FCE830);
        v75 = sub_223200004();
        LODWORD(v25) = sub_223200254();
        v76 = OUTLINED_FUNCTION_13_0();
        if (os_log_type_enabled(v76, v77))
        {
          v78 = OUTLINED_FUNCTION_72();
          OUTLINED_FUNCTION_22_8(v78);
          OUTLINED_FUNCTION_11_13(&dword_2230CE000, v79, v80, "Could not deserialize speechPackage from speechPackageData");
          OUTLINED_FUNCTION_16_11();
        }

        sub_223171774();
        v81 = OUTLINED_FUNCTION_26();
        OUTLINED_FUNCTION_9_24(v81, v82);
LABEL_42:
        (*(v101 + 8))(v98, v100);
        v68 = OUTLINED_FUNCTION_1_26();
        v69(v68);
        v24 = 0;
        LODWORD(v22) = 0;
        OUTLINED_FUNCTION_12_14();
        LODWORD(v14) = 1;
        goto LABEL_4;
      }
    }

    else
    {
      v72 = v104;
      sub_2230FB7F4(0, &qword_27D0576E8, 0x277CCAAC8);
      sub_2230FB7F4(0, &qword_280FCA3D0, 0x277CEF470);
      v73 = sub_223200264();
      v71 = v73;
      if (!v73)
      {
        if (qword_280FCA778 != -1)
        {
          OUTLINED_FUNCTION_0_0();
          swift_once();
        }

        v84 = sub_223200014();
        __swift_project_value_buffer(v84, qword_280FCE830);
        v85 = sub_223200004();
        v86 = sub_223200254();
        v87 = OUTLINED_FUNCTION_13_0();
        if (os_log_type_enabled(v87, v88))
        {
          v89 = OUTLINED_FUNCTION_72();
          OUTLINED_FUNCTION_22_8(v89);
          _os_log_impl(&dword_2230CE000, v85, v86, "Could not deserialize speechPackage from speechPackageData", (v25 >> 60), 2u);
          OUTLINED_FUNCTION_16_11();
        }

        sub_223171774();
        v90 = OUTLINED_FUNCTION_26();
        OUTLINED_FUNCTION_9_24(v90, v91);
        sub_22310A610(v72, v25);
        goto LABEL_42;
      }

      sub_22310A610(v72, v25);
      v70 = 0;
    }

    v83 = v102 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_userInput;
    *v83 = v71;
    *(v83 + 1) = v70;
    v83[16] = v25 >> 60 == 15;
    v107 = 6;
    sub_2231105AC();
    OUTLINED_FUNCTION_5_4();
    OUTLINED_FUNCTION_14_9();
    sub_2232004C4();
    *(v102 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_userId) = v104;
    v107 = 7;
    sub_22316A808();
    OUTLINED_FUNCTION_14_9();
    sub_2232004C4();
    v92 = v105;
    v93 = v106;
    v94 = v103;
    v95 = v102 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_selectedUserAttributes;
    *v95 = v104;
    *(v95 + 10) = v93;
    *(v95 + 4) = v92;
    sub_2230F7158(v94, &v104);
    v24 = RequestMessageBase.init(from:)(&v104);
    (*(v101 + 8))(v98, v100);
    v96 = OUTLINED_FUNCTION_2_34();
    v97(v96, v14);
    __swift_destroy_boxed_opaque_existential_1(v103);
    return v24;
  }

  sub_2231A1390(v6);
LABEL_30:
  if (qword_280FCA778 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v47 = sub_223200014();
  __swift_project_value_buffer(v47, qword_280FCE830);
  v24 = sub_223200004();
  sub_223200254();
  v48 = OUTLINED_FUNCTION_13_0();
  v50 = os_log_type_enabled(v48, v49);
  v26 = v99;
  if (v50)
  {
    v51 = OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_22_8(v51);
    OUTLINED_FUNCTION_11_13(&dword_2230CE000, v52, v53, "Unable to deserialize TCU-mapped POMMES result: encoded data had missing or invalid PommesSearchReason raw value");
    OUTLINED_FUNCTION_16_11();
  }

  sub_223171774();
  v54 = OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_9_24(v54, v55);
  (*(v26 + 8))(v21, v14);
  LODWORD(v26) = 0;
  OUTLINED_FUNCTION_13_12();
  LODWORD(v25) = 1;
LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v103);
  if ((v21 & 1) == 0)
  {
    v27 = v102;
    if (v25)
    {
      sub_223174268(*(v102 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_pommesResult), *(v102 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_pommesResult + 8));
    }

    if (v26)
    {
      (*(v101 + 8))(v27 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_pommesSearchReason, v100);
      if (!v14)
      {
LABEL_9:
        if (!v24)
        {
          goto LABEL_10;
        }

        goto LABEL_16;
      }
    }

    else if (!v14)
    {
      goto LABEL_9;
    }

    if (!v24)
    {
LABEL_10:
      if (!v22)
      {
LABEL_12:
        type metadata accessor for RunPommesResponseMessage(0);
        v29 = *((*MEMORY[0x277D85000] & *v27) + 0x30);
        v30 = *((*MEMORY[0x277D85000] & *v27) + 0x34);
        swift_deallocPartialClassInstance();
        return v24;
      }

LABEL_11:
      v28 = *(v27 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_userId + 8);

      goto LABEL_12;
    }

LABEL_16:
    sub_223195A78(*(v27 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_userInput), *(v27 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_userInput + 8), *(v27 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_userInput + 16));
    if (!v22)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  return v24;
}

void sub_2231A0C6C(void *a1)
{
  v3 = v1;
  v39 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059F70, &qword_223217A28);
  OUTLINED_FUNCTION_9(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v8);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231A1400();
  sub_2232007A4();
  v10 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_pommesResult);
  if (*(v1 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_pommesResult + 8))
  {
    sub_22317180C();
    OUTLINED_FUNCTION_3_28();
    sub_223200654();
    if (!v2)
    {
      goto LABEL_10;
    }

LABEL_11:
    v19 = OUTLINED_FUNCTION_7_25();
    v20(v19);
    goto LABEL_12;
  }

  objc_opt_self();
  v11 = OUTLINED_FUNCTION_24_4(v10);
  v12 = 0;
  if (!v11)
  {
    v18 = v12;
    sub_2231FFD04();

    swift_willThrow();
    sub_223174268(v10, 0);
    goto LABEL_11;
  }

  v31 = v3;
  v13 = sub_2231FFD24();
  v15 = v14;

  sub_2230D7754();
  OUTLINED_FUNCTION_3_28();
  sub_223200654();
  if (v2)
  {
    v16 = OUTLINED_FUNCTION_7_25();
    v17(v16);
    sub_223174268(v10, 0);
    goto LABEL_7;
  }

  sub_223174268(v10, 0);
  sub_2230D94DC(v13, v15);
  v3 = v31;
LABEL_10:
  sub_2231FFF34();
  sub_2232005F4();

  v33 = *(v3 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_nlResponse);
  type metadata accessor for NLParseResponse(0);
  sub_2231A1454(qword_280FCABC0);
  sub_223200654();
  v23 = *(v3 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_userInput);
  v22 = *(v3 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_userInput + 8);
  if (*(v3 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_userInput + 16))
  {

    sub_2232005F4();
    sub_223195A78(v23, v22, 1);
LABEL_20:
    v34 = *(v3 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_userId);
    v36 = *(v3 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_userId + 8);
    sub_2230D37F0();

    sub_2232005E4();

    v35 = *(v3 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_selectedUserAttributes);
    v38 = *(v3 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_selectedUserAttributes + 20);
    v37 = *(v3 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_selectedUserAttributes + 16);
    sub_22316A85C();
    OUTLINED_FUNCTION_3_28();
    sub_2232005E4();
    sub_2230D77A8(a1);
    goto LABEL_11;
  }

  v30 = *(v3 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_userInput + 8);
  v32 = v3;
  objc_opt_self();
  v24 = OUTLINED_FUNCTION_24_4(v23);
  v25 = 0;
  if (!v24)
  {
    v29 = v25;
    sub_2231FFD04();

    swift_willThrow();
    OUTLINED_FUNCTION_23_4();
    goto LABEL_11;
  }

  v13 = sub_2231FFD24();
  v15 = v26;

  sub_2230D7754();
  OUTLINED_FUNCTION_3_28();
  sub_223200654();
  if (!v22)
  {
    OUTLINED_FUNCTION_23_4();
    sub_2230D94DC(v13, v15);
    v3 = v32;
    goto LABEL_20;
  }

  v27 = OUTLINED_FUNCTION_7_25();
  v28(v27);
  OUTLINED_FUNCTION_23_4();
LABEL_7:
  sub_2230D94DC(v13, v15);
LABEL_12:
  v21 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2231A11EC()
{
  sub_223174268(*(v0 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_pommesResult), *(v0 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_pommesResult + 8));
  v1 = OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_pommesSearchReason;
  v2 = sub_2231FFF44();
  OUTLINED_FUNCTION_4(v2);
  (*(v3 + 8))(v0 + v1);

  sub_223195A78(*(v0 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_userInput), *(v0 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_userInput + 8), *(v0 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_userInput + 16));
  v4 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes24RunPommesResponseMessage_userId + 8);
}

id RunPommesResponseMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RunPommesResponseMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2231A1390(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0591A8, &unk_223211810);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2231A1400()
{
  result = qword_27D059F68;
  if (!qword_27D059F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059F68);
  }

  return result;
}

uint64_t sub_2231A1454(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NLParseResponse(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2231A14A0()
{
  result = sub_2231FFF44();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2231A15D8()
{
  sub_2230D525C(319, &qword_280FCB0A8);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_2231A17D8(319, &qword_280FCE678, MEMORY[0x277CC95F0]);
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_223174580();
        v1 = v7;
        if (v8 <= 0x3F)
        {
          sub_2231A17D8(319, qword_280FCA550, MEMORY[0x277D56678]);
          v1 = v9;
          if (v10 <= 0x3F)
          {
            sub_2231A17D8(319, &qword_27D059F88, type metadata accessor for NLParseResponse);
            v1 = v11;
            if (v12 <= 0x3F)
            {
              sub_2230D525C(319, &qword_27D059F90);
              v1 = v13;
              if (v14 <= 0x3F)
              {
                sub_2230D525C(319, &qword_280FCA740);
                v1 = v15;
                if (v16 <= 0x3F)
                {
                  sub_2230D525C(319, &unk_280FCA7A8);
                  v1 = v17;
                  if (v18 <= 0x3F)
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
  }

  return v1;
}

void sub_2231A17D8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for RunPommesResponseMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2231A190C()
{
  result = qword_27D059F98;
  if (!qword_27D059F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059F98);
  }

  return result;
}

unint64_t sub_2231A1964()
{
  result = qword_27D059FA0;
  if (!qword_27D059FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059FA0);
  }

  return result;
}

unint64_t sub_2231A19BC()
{
  result = qword_27D059FA8;
  if (!qword_27D059FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059FA8);
  }

  return result;
}

void OUTLINED_FUNCTION_16_11()
{

  JUMPOUT(0x223DD6780);
}

uint64_t OUTLINED_FUNCTION_19_6()
{

  return type metadata accessor for RunPommesResponseMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_21_9()
{
  v1 = *(v0 - 160);
  v2 = *(*(v0 - 152) + 8);
  return *(v0 - 176);
}

void OUTLINED_FUNCTION_23_4()
{
  v3 = *(v1 - 136);

  sub_223195A78(v0, v3, 0);
}

uint64_t OUTLINED_FUNCTION_25_4()
{

  return type metadata accessor for RunPommesResponseMessage.Builder(0);
}

void *RunSiriKitExecutorMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return RunSiriKitExecutorMessage.init(build:)(v1);
}

uint64_t RunSiriKitExecutorMessage.Builder.invocationId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_2_1();
}

uint64_t RunSiriKitExecutorMessage.Builder.invocationId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

void *RunSiriKitExecutorMessage.Builder.command.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void *RunSiriKitExecutorMessage.Builder.commandExecutionInfo.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t RunSiriKitExecutorMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t RunSiriKitExecutorMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RunSiriKitExecutorMessage.Builder(0) + 36);

  return sub_2230D1480(v3, a1);
}

uint64_t RunSiriKitExecutorMessage.Builder.requestId.getter()
{
  v1 = (v0 + *(type metadata accessor for RunSiriKitExecutorMessage.Builder(0) + 40));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_2231A1DE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x697461636F766E69 && a2 == 0xEC00000064496E6FLL;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x646E616D6D6F63 && a2 == 0xE700000000000000;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000014 && 0x8000000223222960 == a2)
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

uint64_t sub_2231A1F00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231A1DE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2231A1F28(uint64_t a1)
{
  v2 = sub_2230DEE58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231A1F64(uint64_t a1)
{
  v2 = sub_2230DEE58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RunSiriKitExecutorMessage.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059FB0, &qword_223217CE8);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v36 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2230DEE58();
  sub_223200794();
  v12 = &unk_27D080000;
  v13 = &qword_280FCDFA0[12];
  if (v2)
  {
    LODWORD(v10) = 0;
    v15 = 0;
    LOBYTE(v5) = 0;
  }

  else
  {
    LOBYTE(v41) = 0;
    v14 = sub_223200494();
    v20 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes25RunSiriKitExecutorMessage_invocationId);
    *v20 = v14;
    v20[1] = v21;
    v43 = 1;
    sub_2230FB7A0();
    OUTLINED_FUNCTION_2_35();
    v22 = v41;
    v40 = v42;
    v23 = sub_2230FB7F4(0, &qword_27D0576E8, 0x277CCAAC8);
    sub_2230FB7F4(0, &qword_280FCA360, 0x277D47438);
    v39 = v22;
    v24 = sub_223200264();
    v38 = v23;
    if (v24)
    {
      *(v3 + OBJC_IVAR____TtC16SiriMessageTypes25RunSiriKitExecutorMessage_command) = v24;
      v43 = 2;
      OUTLINED_FUNCTION_2_35();
      v12 = &unk_27D080000;
      v28 = v41;
      v29 = v42;
      sub_2230FB7F4(0, &qword_280FCA3B8, 0x277CEF210);
      v37 = v28;
      v30 = sub_223200264();
      v38 = v29;
      v13 = qword_280FCDFA0 + 96;
      if (v30)
      {
        *(v3 + OBJC_IVAR____TtC16SiriMessageTypes25RunSiriKitExecutorMessage_commandExecutionInfo) = v30;
        sub_2230F7158(a1, &v41);
        v15 = RequestMessageBase.init(from:)(&v41);
        v34 = OUTLINED_FUNCTION_2();
        v35(v34);
        sub_2230D94DC(v39, v40);
        sub_2230D94DC(v37, v38);
        __swift_destroy_boxed_opaque_existential_1(a1);
        return v15;
      }

      sub_2230F9E38();
      swift_allocError();
      *v31 = 0xD000000000000040;
      *(v31 + 8) = 0x8000000223225510;
      *(v31 + 16) = 0;
      swift_willThrow();
      sub_2230D94DC(v39, v40);
      sub_2230D94DC(v37, v38);
      v32 = OUTLINED_FUNCTION_2();
      v33(v32);
      OUTLINED_FUNCTION_6_21();
      v15 = 1;
    }

    else
    {
      sub_2230F9E38();
      swift_allocError();
      *v25 = 0xD000000000000033;
      *(v25 + 8) = 0x80000002232254D0;
      *(v25 + 16) = 0;
      swift_willThrow();
      sub_2230D94DC(v39, v40);
      v26 = OUTLINED_FUNCTION_2();
      v27(v26);
      v15 = 0;
      OUTLINED_FUNCTION_6_21();
      v13 = qword_280FCDFA0 + 96;
      v12 = &unk_27D080000;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  if ((v5 & 1) == 0)
  {
    if (v10)
    {
      v16 = *(v3 + v12[483] + 8);
    }

    if (v15)
    {
    }

    type metadata accessor for RunSiriKitExecutorMessage(0);
    v17 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
    v18 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
  }

  return v15;
}

void sub_2231A2510()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes25RunSiriKitExecutorMessage_invocationId + 8);

  v2 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes25RunSiriKitExecutorMessage_commandExecutionInfo);
}

id RunSiriKitExecutorMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RunSiriKitExecutorMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2231A26AC()
{
  sub_2230D525C(319, &qword_280FCA4D8);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_22310AA40(319, &qword_280FCA358, &qword_280FCA360, 0x277D47438);
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_22310AA40(319, &qword_280FCA3B0, &qword_280FCA3B8, 0x277CEF210);
    if (v5 > 0x3F)
    {
      return v3;
    }

    sub_2230D525C(319, &qword_280FCB0A8);
    if (v6 > 0x3F)
    {
      return v3;
    }

    sub_2230F6D30();
    if (v7 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

unint64_t sub_2231A27F0()
{
  result = qword_27D059FC0;
  if (!qword_27D059FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059FC0);
  }

  return result;
}

unint64_t sub_2231A2848()
{
  result = qword_280FCB8B0;
  if (!qword_280FCB8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCB8B0);
  }

  return result;
}

unint64_t sub_2231A28A0()
{
  result = qword_280FCB8B8;
  if (!qword_280FCB8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCB8B8);
  }

  return result;
}

uint64_t RunSiriKitExecutorResponseMessage.invocationId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes33RunSiriKitExecutorResponseMessage_invocationId);
  v2 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes33RunSiriKitExecutorResponseMessage_invocationId + 8);

  return OUTLINED_FUNCTION_2_1();
}

void *RunSiriKitExecutorResponseMessage.response.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes33RunSiriKitExecutorResponseMessage_response);
  v2 = v1;
  return v1;
}

void *RunSiriKitExecutorResponseMessage.error.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes33RunSiriKitExecutorResponseMessage_error);
  v2 = v1;
  return v1;
}

void *RunSiriKitExecutorResponseMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return RunSiriKitExecutorResponseMessage.init(build:)(v1);
}

uint64_t RunSiriKitExecutorResponseMessage.Builder.invocationId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_2_1();
}

void *RunSiriKitExecutorResponseMessage.Builder.response.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void *RunSiriKitExecutorResponseMessage.Builder.error.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t RunSiriKitExecutorResponseMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t RunSiriKitExecutorResponseMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RunSiriKitExecutorResponseMessage.Builder(0) + 36);

  return sub_2230D1480(v3, a1);
}

uint64_t RunSiriKitExecutorResponseMessage.Builder.requestId.getter()
{
  v1 = (v0 + *(type metadata accessor for RunSiriKitExecutorResponseMessage.Builder(0) + 40));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_2231A2CAC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x697461636F766E69 && a2 == 0xEC00000064496E6FLL;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x646E616D6D6F63 && a2 == 0xE700000000000000;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000014 && 0x8000000223222960 == a2;
      if (v7 || (sub_2232006B4() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x727453726F727265 && a2 == 0xEB00000000676E69)
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

uint64_t sub_2231A2E14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231A2CAC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2231A2E3C(uint64_t a1)
{
  v2 = sub_2230E4F24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231A2E78(uint64_t a1)
{
  v2 = sub_2230E4F24();

  return MEMORY[0x2821FE720](a1, v2);
}

void *RunSiriKitExecutorResponseMessage.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059FC8, &qword_223217E88);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2230E4F24();
  sub_223200794();
  v10 = &unk_27D080000;
  if (v2)
  {
    v12 = 0;
    v13 = 0;
  }

  else
  {
    LOBYTE(v39) = 0;
    v11 = OUTLINED_FUNCTION_5_22();
    v18 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes33RunSiriKitExecutorResponseMessage_invocationId);
    *v18 = v11;
    v18[1] = v19;
    v41 = 1;
    sub_2230FB7A0();
    sub_2232004C4();
    v20 = v40;
    if (v40 >> 60 == 15)
    {
      v21 = 0;
      v22 = &qword_280FCDFA0[12];
      goto LABEL_11;
    }

    v25 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    sub_223110BA0(v39, v40);
    v37 = sub_223120750(v39, v40);
    v36 = v39;
    sub_223122550();
    v29 = *MEMORY[0x277CCA308];
    sub_2232000C4();
    v30 = sub_223200294();

    if (v30)
    {
      sub_22310A610(v39, v40);

      v22 = qword_280FCDFA0 + 96;
      v21 = v30;
LABEL_11:
      *(v1 + v22[301]) = v21;
      LOBYTE(v39) = 3;
      v23 = OUTLINED_FUNCTION_5_22();
      v26 = v24;
      if (v24)
      {
        v38 = v23;
        sub_2231A3368();
        v27 = swift_allocError();
        *v28 = v38;
        v28[1] = v26;
      }

      else
      {
        v27 = 0;
      }

      *(v3 + OBJC_IVAR____TtC16SiriMessageTypes33RunSiriKitExecutorResponseMessage_error) = v27;
      sub_2230F7158(a1, &v39);
      v13 = RequestMessageBase.init(from:)(&v39);
      v31 = OUTLINED_FUNCTION_2();
      v32(v31);
      __swift_destroy_boxed_opaque_existential_1(a1);
      return v13;
    }

    sub_2230F9E38();
    swift_allocError();
    *v33 = 0xD000000000000033;
    *(v33 + 8) = 0x80000002232254D0;
    *(v33 + 16) = 0;
    swift_willThrow();

    sub_22310A610(v36, v20);
    v34 = OUTLINED_FUNCTION_2();
    v35(v34);
    v13 = 0;
    v12 = 1;
    v10 = &unk_27D080000;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  if (v12)
  {
    v14 = *(v3 + v10[484] + 8);
  }

  type metadata accessor for RunSiriKitExecutorResponseMessage(0);
  v15 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
  v16 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
  swift_deallocPartialClassInstance();
  return v13;
}

unint64_t sub_2231A3368()
{
  result = qword_27D059FD0;
  if (!qword_27D059FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059FD0);
  }

  return result;
}

uint64_t RunSiriKitExecutorResponseMessage.RunSiriKitExecutorError.errorDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_2_1();
}

void sub_2231A3428()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes33RunSiriKitExecutorResponseMessage_invocationId + 8);

  v2 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes33RunSiriKitExecutorResponseMessage_error);
}

id RunSiriKitExecutorResponseMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RunSiriKitExecutorResponseMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2231A3564()
{
  sub_2230D525C(319, &qword_280FCA4D8);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_223130154(319, &qword_280FCA408, sub_223122550);
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_2231A369C();
    if (v5 > 0x3F)
    {
      return v3;
    }

    sub_2230D525C(319, &qword_280FCB0A8);
    if (v6 > 0x3F)
    {
      return v3;
    }

    sub_223130154(319, &qword_280FCE678, MEMORY[0x277CC95F0]);
    if (v7 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

void sub_2231A369C()
{
  if (!qword_280FCA348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0588E0, &qword_22320CC30);
    v0 = sub_2232002D4();
    if (!v1)
    {
      atomic_store(v0, &qword_280FCA348);
    }
  }
}

unint64_t sub_2231A3724()
{
  result = qword_27D059FE0;
  if (!qword_27D059FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059FE0);
  }

  return result;
}

unint64_t sub_2231A377C()
{
  result = qword_280FCB7E0;
  if (!qword_280FCB7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCB7E0);
  }

  return result;
}

unint64_t sub_2231A37D4()
{
  result = qword_280FCB7E8;
  if (!qword_280FCB7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCB7E8);
  }

  return result;
}

unint64_t sub_2231A386C(char a1)
{
  result = 0x65726F6373;
  switch(a1)
  {
    case 1:
      result = 0x6966697373616C63;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD000000000000019;
      break;
    case 4:
      result = 0xD00000000000001DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2231A3948@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2230EFE20();
  *a2 = result;
  return result;
}

unint64_t sub_2231A3978@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2231A386C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2231A39C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2230EFE20();
  *a1 = result;
  return result;
}

uint64_t sub_2231A39E8(uint64_t a1)
{
  v2 = sub_2231A3C9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231A3A24(uint64_t a1)
{
  v2 = sub_2231A3C9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SelectedUserAttributes.init(score:classification:lowScoreThreshold:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 20) = 0;
  return result;
}

uint64_t SelectedUserAttributes.init(score:classification:lowScoreThreshold:meetsUserSessionThreshold:meetsPersonalRequestThreshold:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int a3@<W2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 20) = a4;
  *(a6 + 21) = a5;
  return result;
}

uint64_t SelectedUserAttributes.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059FE8, &qword_223218120);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v19 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231A3C9C();
  sub_223200794();
  if (!v2)
  {
    v26 = 0;
    OUTLINED_FUNCTION_0_11();
    v14 = sub_223200564();
    v25 = 2;
    OUTLINED_FUNCTION_0_11();
    v15 = sub_223200564();
    v24 = 3;
    OUTLINED_FUNCTION_0_11();
    v21 = sub_223200504();
    v23 = 4;
    OUTLINED_FUNCTION_0_11();
    v20 = sub_223200504();
    v22 = 1;
    OUTLINED_FUNCTION_0_11();
    v17 = sub_223200534();
    v20 &= 1u;
    v21 &= 1u;
    (*(v8 + 8))(v12, v5);
    *a2 = v14;
    *(a2 + 8) = v17;
    *(a2 + 16) = v15;
    v18 = v20;
    *(a2 + 20) = v21;
    *(a2 + 21) = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2231A3C9C()
{
  result = qword_27D059FF0;
  if (!qword_27D059FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059FF0);
  }

  return result;
}

uint64_t SelectedUserAttributes.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059FF8, &qword_223218128);
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = v16 - v10;
  v12 = *v1;
  v17 = *(v1 + 1);
  v18 = v1[4];
  v13 = *(v1 + 20);
  v16[2] = *(v1 + 21);
  v16[3] = v13;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231A3C9C();
  sub_2232007A4();
  v23 = 0;
  OUTLINED_FUNCTION_1_27();
  sub_223200664();
  if (!v2)
  {
    v22 = 2;
    OUTLINED_FUNCTION_1_27();
    sub_223200664();
    v21 = 1;
    OUTLINED_FUNCTION_1_27();
    sub_223200634();
    v20 = 3;
    OUTLINED_FUNCTION_1_27();
    sub_223200604();
    v19 = 4;
    OUTLINED_FUNCTION_1_27();
    sub_223200604();
  }

  return (*(v7 + 8))(v11, v4);
}

uint64_t SelectedUserAttributes.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[4];
  v4 = *(v0 + 20);
  v5 = *(v0 + 21);
  sub_223200374();
  OUTLINED_FUNCTION_2_36();
  MEMORY[0x223DD5AA0]();
  type metadata accessor for AFUserIdentityClassfication();
  v6 = sub_223200104();
  MEMORY[0x223DD5AA0](v6);

  MEMORY[0x223DD5AA0](0x637320202020202CLL, 0xEC0000003A65726FLL);
  v7 = sub_2232006A4();
  MEMORY[0x223DD5AA0](v7);

  OUTLINED_FUNCTION_2_36();
  MEMORY[0x223DD5AA0](0xD000000000000018);
  v8 = sub_2232006A4();
  MEMORY[0x223DD5AA0](v8);

  OUTLINED_FUNCTION_2_36();
  MEMORY[0x223DD5AA0]();
  if (v4)
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (v4)
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x223DD5AA0](v9, v10);

  OUTLINED_FUNCTION_2_36();
  MEMORY[0x223DD5AA0]();
  if (v5)
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (v5)
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  MEMORY[0x223DD5AA0](v11, v12);

  MEMORY[0x223DD5AA0](0x5D20202020202CLL, 0xE700000000000000);
  return 0;
}

uint64_t static SelectedUserAttributes.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 21) ^ *(a2 + 21) ^ 1;
  if ((*(a2 + 20) ^ *(a1 + 20)))
  {
    v2 = 0;
  }

  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy22_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 14) = *(a2 + 14);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SelectedUserAttributes(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 22))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 20);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SelectedUserAttributes(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 22) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 22) = 0;
    }

    if (a2)
    {
      *(result + 20) = a2 + 1;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SelectedUserAttributes.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2231A42EC()
{
  result = qword_27D05A000;
  if (!qword_27D05A000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A000);
  }

  return result;
}

unint64_t sub_2231A4344()
{
  result = qword_27D05A008;
  if (!qword_27D05A008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A008);
  }

  return result;
}

unint64_t sub_2231A439C()
{
  result = qword_27D05A010;
  if (!qword_27D05A010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A010);
  }

  return result;
}

SiriMessageTypes::ServerFallbackReason_optional __swiftcall ServerFallbackReason.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_223200464();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ServerFallbackReason.rawValue.getter()
{
  result = 0x70757465536D6463;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x69636544636C6E73;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0x41676E697373696DLL;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 1701736302;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2231A4544()
{
  result = qword_27D05A018;
  if (!qword_27D05A018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A018);
  }

  return result;
}

unint64_t sub_2231A45BC@<X0>(unint64_t *a1@<X8>)
{
  result = ServerFallbackReason.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for ServerFallbackReason(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2231A4770()
{
  result = qword_280FCA828;
  if (!qword_280FCA828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCA828);
  }

  return result;
}

uint64_t SessionConfiguration.assistantId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SessionConfiguration.languageCode.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t SessionConfiguration.userId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 40);
  a1[1] = v2;
}

__n128 SessionConfiguration.clientAuditToken.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  result = *(v1 + 56);
  v4 = *(v1 + 72);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

uint64_t static SessionConfiguration.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  if (a1[11])
  {
    if (!*(a2 + 88))
    {
      return 0;
    }
  }

  else if ((*(a2 + 88) & 1) != 0 || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*(a1 + 7), *(a2 + 56)), vceqq_s64(*(a1 + 9), *(a2 + 72))))) & 1) == 0)
  {
    return 0;
  }

  v4 = *a1;
  v5 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v5 && (sub_2232006B4() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v6 && (sub_2232006B4() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v7 = a1[5] == *(a2 + 40) && a1[6] == *(a2 + 48);
  if (!v7 && (sub_2232006B4() & 1) == 0 || *(a1 + 89) != *(a2 + 89) || *(a1 + 90) != *(a2 + 90) || *(a1 + 91) != *(a2 + 91) || *(a1 + 92) != *(a2 + 92))
  {
    return 0;
  }

  v9 = *(type metadata accessor for SessionConfiguration() + 52);

  return _s16SiriMessageTypes17OrchestrationTaskV2eeoiySbAC_ACtFZ_0();
}

uint64_t sub_2231A49BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E61747369737361 && a2 == 0xEB00000000644974;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65676175676E616CLL && a2 == 0xEC00000065646F43;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000015 && 0x8000000223225710 == a2;
      if (v7 || (sub_2232006B4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x644972657375 && a2 == 0xE600000000000000;
        if (v8 || (sub_2232006B4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000010 && 0x8000000223225730 == a2;
          if (v9 || (sub_2232006B4() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000022 && 0x8000000223225750 == a2;
            if (v10 || (sub_2232006B4() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000014 && 0x8000000223225780 == a2;
              if (v11 || (sub_2232006B4() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x616E454151507369 && a2 == 0xEC00000064656C62;
                if (v12 || (sub_2232006B4() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000024 && 0x80000002232257A0 == a2;
                  if (v13 || (sub_2232006B4() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0x496E6F6973736573 && a2 == 0xE900000000000064)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = sub_2232006B4();

                    if (v15)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_2231A4CDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231A49BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2231A4D04(uint64_t a1)
{
  v2 = sub_2230D5AEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231A4D40(uint64_t a1)
{
  v2 = sub_2230D5AEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SessionConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v4 = sub_2231FFDA4();
  v5 = OUTLINED_FUNCTION_9(v4);
  v41 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A028, &qword_2232184B8);
  v11 = OUTLINED_FUNCTION_9(v42);
  v40 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  v16 = &v37 - v15;
  v17 = type metadata accessor for SessionConfiguration();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[3];
  v22 = a1[4];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_2230D5AEC();
  v43 = v16;
  sub_223200794();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v44);
  }

  v38 = v10;
  v23 = v40;
  v24 = v41;
  LOBYTE(v45) = 0;
  v25 = v42;
  *v20 = sub_2232004F4();
  *(v20 + 1) = v26;
  LOBYTE(v45) = 1;
  *(v20 + 2) = sub_2232004F4();
  *(v20 + 3) = v27;
  v20[32] = OUTLINED_FUNCTION_1_28(2) & 1;
  v48 = 3;
  sub_2231105AC();
  sub_223200554();
  v28 = *(&v45 + 1);
  *(v20 + 5) = v45;
  *(v20 + 6) = v28;
  type metadata accessor for audit_token_t();
  v48 = 4;
  OUTLINED_FUNCTION_2_37();
  sub_2231A5280(v29, v30);
  sub_2232004C4();
  v31 = v47;
  v32 = v46;
  *(v20 + 56) = v45;
  *(v20 + 72) = v32;
  v20[88] = v31;
  v20[89] = OUTLINED_FUNCTION_1_28(5) & 1;
  v20[90] = OUTLINED_FUNCTION_1_28(6) & 1;
  v20[91] = OUTLINED_FUNCTION_1_28(7) & 1;
  v20[92] = OUTLINED_FUNCTION_1_28(8) & 1;
  LOBYTE(v45) = 9;
  OUTLINED_FUNCTION_3_30();
  sub_2231A5280(v33, v34);
  v35 = v43;
  sub_223200554();
  (*(v23 + 8))(v35, v25);
  (*(v24 + 32))(&v20[*(v17 + 52)], v38, v4);
  sub_2230D3844(v20, v39);
  __swift_destroy_boxed_opaque_existential_1(v44);
  return sub_2231A52C8(v20);
}

uint64_t sub_2231A5280(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2231A52C8(uint64_t a1)
{
  v2 = type metadata accessor for SessionConfiguration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2231A5324()
{
  sub_2231A53D8();
  if (v0 <= 0x3F)
  {
    sub_2231FFDA4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2231A53D8()
{
  if (!qword_280FCE6E0)
  {
    type metadata accessor for audit_token_t();
    v0 = sub_2232002D4();
    if (!v1)
    {
      atomic_store(v0, &qword_280FCE6E0);
    }
  }
}

unint64_t sub_2231A5444()
{
  result = qword_27D05A038;
  if (!qword_27D05A038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A038);
  }

  return result;
}

unint64_t sub_2231A549C()
{
  result = qword_280FCA800;
  if (!qword_280FCA800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCA800);
  }

  return result;
}

unint64_t sub_2231A54F4()
{
  result = qword_280FCA808;
  if (!qword_280FCA808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCA808);
  }

  return result;
}

void *SessionEndedMessage.init(from:)(uint64_t *a1)
{
  sub_2230F7158(a1, v4);
  v2 = SessionMessageBase.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

id SessionEndedMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SessionEndedMessage();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SessionEndedMessage()
{
  result = qword_280FCE2C8;
  if (!qword_280FCE2C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *SessionMessageBase.init(from:)(uint64_t *a1)
{
  v3 = sub_2231FFDA4();
  v4 = OUTLINED_FUNCTION_9(v3);
  v21 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_2();
  v22 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A048, &qword_2232186D0);
  v11 = OUTLINED_FUNCTION_9(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = a1[4];
  v15 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2230D8878();
  sub_223200794();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for SessionMessageBase(0);
    v16 = *((*MEMORY[0x277D85000] & *v24) + 0x30);
    v17 = *((*MEMORY[0x277D85000] & *v24) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_2230D45E8(&qword_27D057ED0);
    sub_223200554();
    (*(v21 + 32))(v24 + OBJC_IVAR____TtC16SiriMessageTypes18SessionMessageBase_sessionId, v22, v3);
    sub_2230F7158(a1, v23);
    v15 = MessageBase.init(from:)(v23);
    v19 = OUTLINED_FUNCTION_3_3();
    v20(v19);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v15;
}

uint64_t sub_2231A59A8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x496E6F6973736573 && a2 == 0xE900000000000064)
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

uint64_t sub_2231A5A28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231A59A8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2231A5A54(uint64_t a1)
{
  v2 = sub_2230D8878();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231A5A90(uint64_t a1)
{
  v2 = sub_2230D8878();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SessionMessageBase.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t SessionMessageBase.Builder.assistantId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t SessionMessageBase.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SessionMessageBase.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t sub_2231A5CA0()
{
  v1 = OBJC_IVAR____TtC16SiriMessageTypes18SessionMessageBase_sessionId;
  v2 = sub_2231FFDA4();
  OUTLINED_FUNCTION_4(v2);
  v4 = *(v3 + 8);

  return v4(v0 + v1);
}

id SessionMessageBase.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SessionMessageBase(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2231A5D38(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2231A5DFC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_2231A6568(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_2231A5DFC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2231A5EFC(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_2232003B4();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_2231A5EFC(uint64_t a1, unint64_t a2)
{
  v4 = sub_2231A5F48(a1, a2);
  sub_2231A6060(&unk_283674328);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2231A5F48(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_223200154())
  {
    result = sub_2231A6144(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_223200364();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_2232003B4();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2231A6060(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_2231A61B4(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2231A6144(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A058, &qword_223218838);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_2231A61B4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A058, &qword_223218838);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_2231A62B0()
{
  result = sub_2231FFDA4();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_2231A6394()
{
  sub_2230D525C(319, &qword_280FCB0A8);
  if (v0 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8);
    if (v1 <= 0x3F)
    {
      sub_2230F6D30();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_2231A6464()
{
  result = qword_27D05A050;
  if (!qword_27D05A050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A050);
  }

  return result;
}

unint64_t sub_2231A64BC()
{
  result = qword_280FCB558;
  if (!qword_280FCB558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCB558);
  }

  return result;
}

unint64_t sub_2231A6514()
{
  result = qword_280FCB560;
  if (!qword_280FCB560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCB560);
  }

  return result;
}

uint64_t sub_2231A6568(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2231A65D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65676175676E616CLL && a2 == 0xEC00000065646F43;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000015 && 0x8000000223225710 == a2;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000022 && 0x8000000223225750 == a2;
      if (v7 || (sub_2232006B4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x644972657375 && a2 == 0xE600000000000000;
        if (v8 || (sub_2232006B4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000010 && 0x8000000223225730 == a2;
          if (v9 || (sub_2232006B4() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7261577265666564 && a2 == 0xEB0000000070756DLL;
            if (v10 || (sub_2232006B4() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0xD000000000000014 && 0x8000000223225900 == a2)
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

uint64_t sub_2231A6814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231A65D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2231A683C(uint64_t a1)
{
  v2 = sub_2230D33C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231A6878(uint64_t a1)
{
  v2 = sub_2230D33C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SessionStartedMessage.userId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_userId + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_userId);
  a1[1] = v2;
}

__n128 SessionStartedMessage.clientAuditToken.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_clientAuditToken + 32);
  result = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_clientAuditToken);
  v4 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_clientAuditToken + 16);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

void *SessionStartedMessage.init(from:)(uint64_t *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A060, &unk_223218840) - 8) + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v3);
  v5 = &v72 - v4;
  v6 = type metadata accessor for SessionConfiguration();
  v7 = OUTLINED_FUNCTION_4(v6);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v72 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A068, &qword_223218850);
  OUTLINED_FUNCTION_9(v15);
  v80 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v19);
  v21 = &v72 - v20;
  v22 = a1[3];
  v23 = a1[4];
  v83 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_2230D33C0();
  v24 = v82;
  sub_223200794();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1(v83);
    v33 = v81;
    type metadata accessor for SessionStartedMessage(0);
    v34 = *((*MEMORY[0x277D85000] & *v33) + 0x30);
    v35 = *((*MEMORY[0x277D85000] & *v33) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v78 = v14;
    v79 = v12;
    v82 = v5;
    LOBYTE(v84[0]) = 0;
    v25 = sub_2232004F4();
    v26 = v81;
    v27 = (v81 + OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_languageCode);
    *v27 = v25;
    v27[1] = v28;
    OUTLINED_FUNCTION_5_23(1);
    v29 = sub_223200504();
    v30 = OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_understandingOnDevice;
    *(v26 + OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_understandingOnDevice) = v29 & 1;
    OUTLINED_FUNCTION_5_23(2);
    v31 = sub_223200504();
    v32 = OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_isSystemAssistantExperienceEnabled;
    *(v26 + OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_isSystemAssistantExperienceEnabled) = v31 & 1;
    v86 = 3;
    sub_2231105AC();
    sub_223200554();
    v77 = v32;
    v37 = *(&v84[0] + 1);
    v38 = (v26 + OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_userId);
    *v38 = *&v84[0];
    v38[1] = v37;
    type metadata accessor for audit_token_t();
    v86 = 4;
    OUTLINED_FUNCTION_8_20();
    sub_2231A76A8(v39, v40);
    sub_2232004C4();
    v76 = v38;
    v41 = v85;
    v42 = v26 + OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_clientAuditToken;
    v43 = v84[1];
    *v42 = v84[0];
    *(v42 + 16) = v43;
    *(v42 + 32) = v41;
    OUTLINED_FUNCTION_5_23(5);
    v44 = sub_2232004A4();
    v74 = v42;
    v75 = v30;
    v45 = OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_deferWarmup;
    *(v26 + OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_deferWarmup) = v44 & 1;
    v46 = v45;
    LOBYTE(v84[0]) = 6;
    OUTLINED_FUNCTION_7_26();
    sub_2231A76A8(v47, v48);
    v49 = v82;
    v50 = v6;
    sub_2232004C4();
    v72 = v46;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v49, 1, v6);
    v73 = v15;
    if (EnumTagSinglePayload == 1)
    {
      sub_2230D40E0(v49, &qword_27D05A060, &unk_223218840);
      if (qword_280FCA778 != -1)
      {
        OUTLINED_FUNCTION_0_0();
        swift_once();
      }

      v52 = sub_223200014();
      __swift_project_value_buffer(v52, qword_280FCE830);
      v53 = sub_223200004();
      v54 = sub_223200254();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&dword_2230CE000, v53, v54, "SessionStartedMessage Decoder: SessionConfiguration was not found, generating a default. But this can have unintended consequences.", v55, 2u);
        v50 = v6;
        OUTLINED_FUNCTION_12_0();
        MEMORY[0x223DD6780]();
      }

      v56 = v79;
      v57 = &v79[*(v50 + 52)];
      sub_2231FFD94();
      v59 = v74;
      v58 = v75;
      v60 = v74[1];
      *(v56 + 56) = *v74;
      v61 = *v27;
      v62 = v27[1];
      v63 = v81;
      LOBYTE(v58) = *(v81 + v58);
      v64 = *(v81 + v77);
      v65 = *v76;
      v66 = v76[1];
      v67 = *(v59 + 32);
      LOBYTE(v59) = *(v81 + v72);
      *v56 = 0;
      *(v56 + 8) = 0xE000000000000000;
      *(v56 + 16) = v61;
      *(v56 + 24) = v62;
      *(v56 + 40) = v65;
      *(v56 + 48) = v66;
      *(v56 + 72) = v60;
      *(v56 + 88) = v67;
      *(v56 + 32) = v58;
      *(v56 + 92) = v59;
      *(v56 + 89) = v64;
      *(v56 + 90) = 0;
      sub_2230D3C1C(v56, v63 + OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_sessionConfiguration);
    }

    else
    {
      v68 = v49;
      v69 = v78;
      sub_2230D3C1C(v68, v78);
      sub_2230D3C1C(v69, v81 + OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_sessionConfiguration);
    }

    v70 = v80;
    v71 = v83;
    sub_2230F7158(v83, v84);
    v33 = SessionMessageBase.init(from:)(v84);
    (*(v70 + 8))(v21, v73);
    __swift_destroy_boxed_opaque_existential_1(v71);
  }

  return v33;
}

uint64_t SessionStartedMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t SessionStartedMessage.Builder.assistantId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t SessionStartedMessage.Builder.sessionId.modify()
{
  v0 = OUTLINED_FUNCTION_8_0();
  v1 = *(type metadata accessor for SessionStartedMessage.Builder(v0) + 24);
  return OUTLINED_FUNCTION_8();
}

uint64_t SessionStartedMessage.Builder.languageCode.getter()
{
  v1 = (v0 + *(type metadata accessor for SessionStartedMessage.Builder(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_2_1();
}

uint64_t SessionStartedMessage.Builder.languageCode.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SessionStartedMessage.Builder(0) + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SessionStartedMessage.Builder.languageCode.modify()
{
  v0 = OUTLINED_FUNCTION_8_0();
  v1 = *(type metadata accessor for SessionStartedMessage.Builder(v0) + 28);
  return OUTLINED_FUNCTION_8();
}

uint64_t SessionStartedMessage.Builder.understandingOnDevice.setter(char a1)
{
  result = type metadata accessor for SessionStartedMessage.Builder(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t SessionStartedMessage.Builder.understandingOnDevice.modify()
{
  v0 = OUTLINED_FUNCTION_8_0();
  v1 = *(type metadata accessor for SessionStartedMessage.Builder(v0) + 32);
  return OUTLINED_FUNCTION_8();
}

uint64_t SessionStartedMessage.Builder.isSystemAssistantExperienceEnabled.setter(char a1)
{
  result = type metadata accessor for SessionStartedMessage.Builder(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t SessionStartedMessage.Builder.isSystemAssistantExperienceEnabled.modify()
{
  v0 = OUTLINED_FUNCTION_8_0();
  v1 = *(type metadata accessor for SessionStartedMessage.Builder(v0) + 36);
  return OUTLINED_FUNCTION_8();
}

uint64_t SessionStartedMessage.Builder.userId.getter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_23_5() + 40));
  v3 = v2[1];
  *v0 = *v2;
  v0[1] = v3;
}

uint64_t SessionStartedMessage.Builder.userId.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for SessionStartedMessage.Builder(0) + 40));
  v5 = v4[1];

  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t SessionStartedMessage.Builder.userId.modify()
{
  v0 = OUTLINED_FUNCTION_8_0();
  v1 = *(type metadata accessor for SessionStartedMessage.Builder(v0) + 40);
  return OUTLINED_FUNCTION_8();
}

__n128 SessionStartedMessage.Builder.clientAuditToken.getter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_23_5() + 44);
  v3 = *(v2 + 32);
  result = *v2;
  v5 = *(v2 + 16);
  *v0 = *v2;
  *(v0 + 16) = v5;
  *(v0 + 32) = v3;
  return result;
}

__n128 SessionStartedMessage.Builder.clientAuditToken.setter()
{
  v2 = OUTLINED_FUNCTION_8_0();
  v3 = v1 + *(type metadata accessor for SessionStartedMessage.Builder(v2) + 44);
  result = *v0;
  v5 = *(v0 + 16);
  *v3 = *v0;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(v0 + 32);
  return result;
}

uint64_t SessionStartedMessage.Builder.clientAuditToken.modify()
{
  v0 = OUTLINED_FUNCTION_8_0();
  v1 = *(type metadata accessor for SessionStartedMessage.Builder(v0) + 44);
  return OUTLINED_FUNCTION_8();
}

uint64_t SessionStartedMessage.Builder.deferWarmup.setter(char a1)
{
  result = type metadata accessor for SessionStartedMessage.Builder(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t SessionStartedMessage.Builder.deferWarmup.modify()
{
  v0 = OUTLINED_FUNCTION_8_0();
  v1 = *(type metadata accessor for SessionStartedMessage.Builder(v0) + 48);
  return OUTLINED_FUNCTION_8();
}

uint64_t SessionStartedMessage.Builder.sessionConfiguration.modify()
{
  v0 = OUTLINED_FUNCTION_8_0();
  v1 = *(type metadata accessor for SessionStartedMessage.Builder(v0) + 52);
  return OUTLINED_FUNCTION_8();
}

uint64_t sub_2231A7620()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_languageCode + 8);

  v2 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_userId + 8);

  OUTLINED_FUNCTION_2_38();
  return sub_2230D3E14();
}

id SessionStartedMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SessionStartedMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2231A76A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2231A76F8()
{
  result = type metadata accessor for SessionConfiguration();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2231A7800()
{
  sub_2230D525C(319, &qword_280FCB0A8);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_2231A79B0(319, &qword_280FCE678, MEMORY[0x277CC95F0]);
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

      sub_2230D525C(319, &qword_280FCA740);
      if (v9 > 0x3F)
      {
        return v5;
      }

      sub_2231A79B0(319, &qword_280FCE6E0, type metadata accessor for audit_token_t);
      if (v10 > 0x3F)
      {
        return v5;
      }

      sub_2231A79B0(319, &qword_280FCA7F0, type metadata accessor for SessionConfiguration);
      v1 = v11;
      if (v12 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

void sub_2231A79B0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

unint64_t sub_2231A7A18()
{
  result = qword_27D05A080;
  if (!qword_27D05A080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A080);
  }

  return result;
}

unint64_t sub_2231A7A70()
{
  result = qword_280FCDCB0;
  if (!qword_280FCDCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCDCB0);
  }

  return result;
}

unint64_t sub_2231A7AC8()
{
  result = qword_280FCDCB8;
  if (!qword_280FCDCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCDCB8);
  }

  return result;
}

void OUTLINED_FUNCTION_20_12(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

void OUTLINED_FUNCTION_21_10(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 2u);
}

uint64_t OUTLINED_FUNCTION_23_5()
{

  return type metadata accessor for SessionStartedMessage.Builder(0);
}

void *ShimToolInvokedMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return ShimToolInvokedMessage.init(build:)(v1);
}

void *ShimToolInvokedMessage.init(build:)(uint64_t (*a1)(char *))
{
  v2 = v1;
  swift_getObjectType();
  v4 = type metadata accessor for ShimToolInvokedMessage.Builder(0);
  v5 = (v4 - 8);
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
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
  v13 = v5[11];
  *&v8[v13] = 0;
  v14 = a1(v8);
  v15 = *(v12 + 1);
  if (v15 && (v16 = *&v8[v13]) != 0)
  {
    v17 = (v2 + OBJC_IVAR____TtC16SiriMessageTypes22ShimToolInvokedMessage_invocationId);
    *v17 = *v12;
    v17[1] = v15;
    *(v2 + OBJC_IVAR____TtC16SiriMessageTypes22ShimToolInvokedMessage_directInvocation) = v16;
    MEMORY[0x28223BE20](v14);
    *(&v33 - 2) = v8;
    v19 = v18;

    v20 = RequestMessageBase.init(build:)(sub_2231A8CF8);
    v21 = v20;

    if (v20)
    {
    }

    sub_2231A7F48(v8);
  }

  else
  {
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v22 = sub_223200014();
    __swift_project_value_buffer(v22, qword_280FCE830);
    v23 = sub_223200004();
    v24 = sub_223200254();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v34 = v26;
      *v25 = 136446210;
      v27 = sub_2230F7898();
      v29 = sub_2231A5D38(v27, v28, &v34);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_2230CE000, v23, v24, "Could not build %{public}s. Builder has missing required fields", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x223DD6780](v26, -1, -1);
      MEMORY[0x223DD6780](v25, -1, -1);
    }

    sub_2231A7F48(v8);
    type metadata accessor for ShimToolInvokedMessage(0);
    v30 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
    v31 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v20;
}

uint64_t sub_2231A7F48(uint64_t a1)
{
  v2 = type metadata accessor for ShimToolInvokedMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2231A7FC4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  v6 = *(a1 + 16);

  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  v7 = type metadata accessor for ShimToolInvokedMessage.Builder(0);
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

uint64_t ShimToolInvokedMessage.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A088, &qword_223218A40);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231A8D00();
  sub_223200794();
  if (v2)
  {
    v11 = 0;
  }

  else
  {
    LOBYTE(v29) = 0;
    v10 = sub_2232004F4();
    v16 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes22ShimToolInvokedMessage_invocationId);
    *v16 = v10;
    v16[1] = v17;
    v31 = 1;
    sub_2230FB7A0();
    sub_2232004C4();
    if (v30 >> 60 != 15)
    {
      objc_allocWithZone(MEMORY[0x277CCAAC8]);
      sub_223110BA0(v29, v30);
      v28 = v29;
      v21 = sub_223120750(v29, v30);
      v27 = v30;
      sub_2231A8D54();
      v22 = *MEMORY[0x277CCA308];
      sub_2232000C4();
      v23 = sub_223200294();

      if (v23)
      {
        *(v3 + OBJC_IVAR____TtC16SiriMessageTypes22ShimToolInvokedMessage_directInvocation) = v23;
        sub_2230F7158(a1, &v29);
        v24 = v23;
        v11 = RequestMessageBase.init(from:)(&v29);
        v25 = OUTLINED_FUNCTION_2();
        v26(v25);
        sub_22310A610(v28, v27);

        __swift_destroy_boxed_opaque_existential_1(a1);
        return v11;
      }

      sub_22310A610(v29, v30);
    }

    sub_2230F9E38();
    swift_allocError();
    *v18 = 0xD000000000000054;
    *(v18 + 8) = 0x8000000223225920;
    *(v18 + 16) = 0;
    swift_willThrow();
    v19 = OUTLINED_FUNCTION_2();
    v20(v19);
    v11 = 1;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  if (v11)
  {
    v12 = *(v3 + OBJC_IVAR____TtC16SiriMessageTypes22ShimToolInvokedMessage_invocationId + 8);
  }

  type metadata accessor for ShimToolInvokedMessage(0);
  v13 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
  v14 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
  swift_deallocPartialClassInstance();
  return v11;
}

void sub_2231A8480(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A098, &unk_223218A48);
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = v20 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231A8D00();
  sub_2232007A4();
  v13 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes22ShimToolInvokedMessage_invocationId);
  v14 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes22ShimToolInvokedMessage_invocationId + 8);
  LOBYTE(v21) = 0;
  sub_2232005F4();
  if (v2)
  {
    (*(v7 + 8))(v11, v4);
  }

  else
  {
    v15 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
    v20[1] = v1;
    [v15 encodeObject:*(v1 + OBJC_IVAR____TtC16SiriMessageTypes22ShimToolInvokedMessage_directInvocation) forKey:*MEMORY[0x277CCA308]];
    v16 = [v15 encodedData];
    v17 = sub_2231FFD24();
    v19 = v18;

    v21 = v17;
    v22 = v19;
    v23 = 1;
    sub_2230D7754();
    sub_223200654();
    sub_2230D94DC(v21, v22);
    sub_2230D77A8(a1);
    (*(v7 + 8))(v11, v4);
  }
}

uint64_t ShimToolInvokedMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t ShimToolInvokedMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t ShimToolInvokedMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ShimToolInvokedMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t ShimToolInvokedMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_1_30() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t ShimToolInvokedMessage.Builder.requestId.getter()
{
  v0 = type metadata accessor for ShimToolInvokedMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 28));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t ShimToolInvokedMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for ShimToolInvokedMessage.Builder(0) + 28));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t ShimToolInvokedMessage.Builder.invocationId.getter()
{
  v0 = type metadata accessor for ShimToolInvokedMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 32));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t ShimToolInvokedMessage.Builder.invocationId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for ShimToolInvokedMessage.Builder(0) + 32));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

void *ShimToolInvokedMessage.Builder.directInvocation.getter()
{
  v1 = *(v0 + *(type metadata accessor for ShimToolInvokedMessage.Builder(0) + 36));
  v2 = v1;
  return v1;
}

void ShimToolInvokedMessage.Builder.directInvocation.setter()
{
  v2 = *(OUTLINED_FUNCTION_1_30() + 36);

  *(v1 + v2) = v0;
}

uint64_t sub_2231A8A3C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x697461636F766E69 && a2 == 0xEC00000064496E6FLL;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002232259E0 == a2)
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

uint64_t sub_2231A8B10(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x697461636F766E69;
  }
}

uint64_t sub_2231A8B5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231A8A3C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2231A8B84(uint64_t a1)
{
  v2 = sub_2231A8D00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231A8BC0(uint64_t a1)
{
  v2 = sub_2231A8D00();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2231A8C2C()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes22ShimToolInvokedMessage_invocationId + 8);

  v2 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes22ShimToolInvokedMessage_directInvocation);
}

id ShimToolInvokedMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShimToolInvokedMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231A8D00()
{
  result = qword_27D05A090;
  if (!qword_27D05A090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A090);
  }

  return result;
}

unint64_t sub_2231A8D54()
{
  result = qword_280FCA360;
  if (!qword_280FCA360)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280FCA360);
  }

  return result;
}

uint64_t sub_2231A8E44()
{
  sub_2230D525C(319, &qword_280FCB0A8);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_2231A8F74(319, &qword_280FCE678, MEMORY[0x277CC95F0]);
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_2231A8F74(319, &qword_280FCA358, sub_2231A8D54);
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

void sub_2231A8F74(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for ShimToolInvokedMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2231A90A8()
{
  result = qword_27D05A0B0;
  if (!qword_27D05A0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A0B0);
  }

  return result;
}

unint64_t sub_2231A9100()
{
  result = qword_27D05A0B8;
  if (!qword_27D05A0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A0B8);
  }

  return result;
}

unint64_t sub_2231A9158()
{
  result = qword_27D05A0C0;
  if (!qword_27D05A0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A0C0);
  }

  return result;
}

void *SiriDismissedMessage.init(from:)(uint64_t *a1)
{
  sub_2230F7158(a1, v4);
  v2 = SessionMessageBase.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

id SiriDismissedMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriDismissedMessage();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SiriDismissedMessage()
{
  result = qword_280FCAE20;
  if (!qword_280FCAE20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2231A9334()
{
  v0 = sub_2231FFC64();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_2231FFC54();
  qword_27D080F28 = result;
  return result;
}

uint64_t sub_2231A9374(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_2231A93E8(v4);
}

uint64_t sub_2231A93A0()
{
  v1 = OBJC_IVAR____TtC16SiriMessageTypes28SiriEnvironmentUpdateMessage_removedValues;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_2231A93E8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16SiriMessageTypes28SiriEnvironmentUpdateMessage_removedValues;
  OUTLINED_FUNCTION_8_21();
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t SiriEnvironmentUpdateMessage.requestId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes28SiriEnvironmentUpdateMessage_requestId);
  v2 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes28SiriEnvironmentUpdateMessage_requestId + 8);

  return OUTLINED_FUNCTION_2_1();
}

void sub_2231A9474()
{
  OUTLINED_FUNCTION_42();
  v1 = v0;
  v24 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  OUTLINED_FUNCTION_0_13();
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v17);
  v18 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_2231AB904(v12, v10);
  swift_endAccess();

  (*(v14 + 16))(v18, v8, v6);
  v19 = (*(v14 + 80) + 40) & ~*(v14 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = v6;
  *(v20 + 3) = v4;
  *(v20 + 4) = v24;
  (*(v14 + 32))(&v20[v19], v18, v6);
  v21 = OBJC_IVAR____TtC16SiriMessageTypes28SiriEnvironmentUpdateMessage_addedValues;
  swift_beginAccess();

  v22 = *(v1 + v21);
  swift_isUniquelyReferenced_nonNull_native();
  v25 = *(v1 + v21);
  sub_2231AB6DC(sub_2231ABA2C, v20, 1, v12, v10);
  *(v1 + v21) = v25;

  swift_endAccess();
  OUTLINED_FUNCTION_40();
}

uint64_t sub_2231A9650(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_10();

  sub_2231AC1E4(&v7, a1, a2);
  swift_endAccess();

  OUTLINED_FUNCTION_14_10();
  sub_2231AB5E8(a1, a2, &v7);
  LOBYTE(a2) = v8;
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_2_1();
  return sub_2231AC330(v4, v5, a2);
}

uint64_t sub_2231A9700(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C61566465646461 && a2 == 0xEB00000000736575;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x566465766F6D6572 && a2 == 0xED00007365756C61;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x4974736575716572 && a2 == 0xE900000000000064)
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

uint64_t sub_2231A9824(char a1)
{
  if (!a1)
  {
    return 0x6C61566465646461;
  }

  if (a1 == 1)
  {
    return 0x566465766F6D6572;
  }

  return 0x4974736575716572;
}

uint64_t sub_2231A989C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231A9700(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2231A98C4(uint64_t a1)
{
  v2 = sub_2231AC3F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231A9900(uint64_t a1)
{
  v2 = sub_2231AC3F4();

  return MEMORY[0x2821FE720](a1, v2);
}

void SiriEnvironmentUpdateMessage.__allocating_init(build:)()
{
  v1 = objc_allocWithZone(v0);
  SiriEnvironmentUpdateMessage.init(build:)();
}

{
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void SiriEnvironmentUpdateMessage.init(build:)()
{
  OUTLINED_FUNCTION_42();
  v1 = v0;
  v3 = v2;
  ObjectType = swift_getObjectType();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0) - 8) + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v53 - v6;
  v8 = sub_2231FFDA4();
  OUTLINED_FUNCTION_0_13();
  v56 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_2();
  v55 = v14 - v13;
  updated = type metadata accessor for SiriEnvironmentUpdateMessage.Builder(0);
  v16 = (updated - 8);
  v17 = *(*(updated - 8) + 64);
  MEMORY[0x28223BE20](updated);
  OUTLINED_FUNCTION_2_2();
  v20 = (v19 - v18);
  v21 = OBJC_IVAR____TtC16SiriMessageTypes28SiriEnvironmentUpdateMessage_addedValues;
  v22 = sub_223200064();
  v59 = v21;
  *(v0 + v21) = v22;
  v60 = OBJC_IVAR____TtC16SiriMessageTypes28SiriEnvironmentUpdateMessage_removedValues;
  *(v0 + OBJC_IVAR____TtC16SiriMessageTypes28SiriEnvironmentUpdateMessage_removedValues) = MEMORY[0x277D84FA0];
  *v20 = 15;
  *(v20 + 1) = 0;
  *(v20 + 2) = 0;
  v23 = v16[8];
  v58 = v8;
  __swift_storeEnumTagSinglePayload(&v20[v23], 1, 1, v8);
  v24 = &v20[v16[9]];
  *v24 = 0;
  *(v24 + 1) = 0;
  v25 = v16[10];
  *&v20[v25] = 0;
  v26 = v16[11];
  *&v20[v26] = 0;
  v3(v20);
  v27 = *v20;
  if (v27 == 15)
  {
    goto LABEL_5;
  }

  v28 = *(v20 + 2);
  if (!v28)
  {
    goto LABEL_5;
  }

  v54 = *(v20 + 1);
  sub_2230D1480(&v20[v23], v7);
  v29 = v58;
  if (__swift_getEnumTagSinglePayload(v7, 1, v58) == 1)
  {
    sub_2230D69D4(v7);
LABEL_5:
    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v30 = sub_223200014();
    __swift_project_value_buffer(v30, qword_280FCE830);
    v31 = sub_223200004();
    v32 = sub_223200254();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v61 = v34;
      *v33 = 136446210;
      v35 = sub_2230F7898();
      v37 = sub_2231A5D38(v35, v36, &v61);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_2230CE000, v31, v32, "Could not build %{public}s: Builder has missing required fields", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x223DD6780](v34, -1, -1);
      MEMORY[0x223DD6780](v33, -1, -1);
    }

    sub_2231AC378(v20);
    v38 = *(v1 + v59);

    v39 = *(v1 + v60);

    type metadata accessor for SiriEnvironmentUpdateMessage(0);
    v40 = *((*MEMORY[0x277D85000] & *v1) + 0x30);
    v41 = *((*MEMORY[0x277D85000] & *v1) + 0x34);
    swift_deallocPartialClassInstance();
    goto LABEL_10;
  }

  (*(v56 + 32))(v55, v7, v29);
  if (*&v20[v25])
  {
    v42 = *&v20[v25];
  }

  else
  {
    v42 = sub_223200064();
  }

  v43 = v59;
  OUTLINED_FUNCTION_8_21();
  swift_beginAccess();
  v44 = *(v1 + v43);
  *(v1 + v43) = v42;

  if (*&v20[v26])
  {
    v45 = *&v20[v26];
  }

  else
  {
    v45 = MEMORY[0x277D84FA0];
  }

  v46 = v60;
  OUTLINED_FUNCTION_8_21();
  swift_beginAccess();
  v47 = *(v1 + v46);
  *(v1 + v46) = v45;

  v48 = *(v24 + 1);
  v49 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes28SiriEnvironmentUpdateMessage_requestId);
  *v49 = *v24;
  v49[1] = v48;
  MEMORY[0x28223BE20](v48);
  *(&v53 - 32) = v27;
  v50 = v55;
  *(&v53 - 3) = v54;
  *(&v53 - 2) = v28;
  *(&v53 - 1) = v50;

  v51 = SessionMessageBase.init(build:)(sub_2230D69C4);
  v52 = v51;
  sub_2231AC378(v20);
  if (v51)
  {
  }

  (*(v56 + 8))(v50, v58);
LABEL_10:
  OUTLINED_FUNCTION_40();
}

{
  SiriEnvironmentUpdateMessage.__allocating_init(build:)();
}

void SiriEnvironmentUpdateMessage.init(from:)(uint64_t *a1)
{
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A0C8, &qword_223218C08);
  OUTLINED_FUNCTION_0_13();
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v7);
  v46 = OBJC_IVAR____TtC16SiriMessageTypes28SiriEnvironmentUpdateMessage_addedValues;
  *(v1 + v46) = sub_223200064();
  v45 = OBJC_IVAR____TtC16SiriMessageTypes28SiriEnvironmentUpdateMessage_removedValues;
  *(v1 + OBJC_IVAR____TtC16SiriMessageTypes28SiriEnvironmentUpdateMessage_removedValues) = MEMORY[0x277D84FA0];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231AC3F4();
  sub_223200794();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v9 = *(v1 + v46);

    v10 = *(v1 + v45);

    type metadata accessor for SiriEnvironmentUpdateMessage(0);
    v11 = *((*MEMORY[0x277D85000] & *v1) + 0x30);
    v12 = *((*MEMORY[0x277D85000] & *v1) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A0D8, &unk_223218C10);
    sub_2231AC4A4(&qword_27D05A0E0, sub_2230FB7A0);
    OUTLINED_FUNCTION_3_31();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A0E8, &qword_22321FD70);
    v48 = 1;
    sub_2231AC528(&qword_27D05A0F0);
    OUTLINED_FUNCTION_3_31();
    v41 = v47[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A0F8, &unk_223218C20);
    v13 = sub_223200424();
    v14 = 0;
    v43 = v47[0];
    v16 = *(v47[0] + 64);
    v15 = v47[0] + 64;
    v17 = *(v47[0] + 32);
    OUTLINED_FUNCTION_2_5();
    v20 = v19 & v18;
    v22 = (v21 + 63) >> 6;
    v42 = v23 + 64;
    if ((v19 & v18) != 0)
    {
      while (1)
      {
        v24 = __clz(__rbit64(v20));
        v20 &= v20 - 1;
LABEL_11:
        v27 = v24 | (v14 << 6);
        v28 = (*(v43 + 48) + 16 * v27);
        v30 = *v28;
        v29 = v28[1];
        v31 = (v13[6] + 16 * v27);
        v32 = *(*(v43 + 56) + 16 * v27);
        *(v42 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        *v31 = v30;
        v31[1] = v29;
        v33 = v13[7] + 24 * v27;
        v44 = v32;
        *v33 = v32;
        *(v33 + 16) = 0;
        v34 = v13[2];
        v35 = __OFADD__(v34, 1);
        v36 = v34 + 1;
        if (v35)
        {
          break;
        }

        v13[2] = v36;

        sub_223110BA0(v44, *(&v44 + 1));
        if (!v20)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      v25 = v14;
      while (1)
      {
        v14 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (v14 >= v22)
        {

          OUTLINED_FUNCTION_8_21();
          swift_beginAccess();
          v37 = *(v3 + v46);
          *(v3 + v46) = v13;

          OUTLINED_FUNCTION_8_21();
          swift_beginAccess();
          v38 = *(v3 + v45);
          *(v3 + v45) = v41;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057640, &qword_2232037A0);
          v49 = 2;
          sub_2231AC448(&qword_27D05A100);
          sub_223200554();
          *(v3 + OBJC_IVAR____TtC16SiriMessageTypes28SiriEnvironmentUpdateMessage_requestId) = *v47;
          sub_2230F7158(a1, v47);
          SessionMessageBase.init(from:)(v47);
          v39 = OUTLINED_FUNCTION_2_39();
          v40(v39);
          __swift_destroy_boxed_opaque_existential_1(a1);
          return;
        }

        v26 = *(v15 + 8 * v14);
        ++v25;
        if (v26)
        {
          v24 = __clz(__rbit64(v26));
          v20 = (v26 - 1) & v26;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_2231AA3F0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A108, &qword_223218C30);
  OUTLINED_FUNCTION_0_13();
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v17 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231AC3F4();
  sub_2232007A4();
  v14 = sub_2231AAC54();
  if (!v2)
  {
    v18 = v14;
    LOBYTE(v17) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A0D8, &unk_223218C10);
    sub_2231AC4A4(&qword_27D05A110, sub_2230D7754);
    OUTLINED_FUNCTION_4_33();

    v16 = OBJC_IVAR____TtC16SiriMessageTypes28SiriEnvironmentUpdateMessage_removedValues;
    swift_beginAccess();
    *&v17 = *(v3 + v16);
    v19 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A0E8, &qword_22321FD70);
    sub_2231AC528(&qword_27D05A118);
    OUTLINED_FUNCTION_4_33();
    v17 = *(v3 + OBJC_IVAR____TtC16SiriMessageTypes28SiriEnvironmentUpdateMessage_requestId);
    v19 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057640, &qword_2232037A0);
    sub_2231AC448(&qword_280FCA4D0);
    OUTLINED_FUNCTION_4_33();
    sub_2230D46B0(a1);
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t SiriEnvironmentUpdateMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t SiriEnvironmentUpdateMessage.Builder.assistantId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t SiriEnvironmentUpdateMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SiriEnvironmentUpdateMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t SiriEnvironmentUpdateMessage.Builder.sessionId.setter()
{
  v2 = OUTLINED_FUNCTION_8_0();
  v3 = v1 + *(type metadata accessor for SiriEnvironmentUpdateMessage.Builder(v2) + 24);

  return sub_2230D4E04(v0, v3);
}

uint64_t (*SiriEnvironmentUpdateMessage.Builder.sessionId.modify())(void)
{
  v0 = OUTLINED_FUNCTION_8_0();
  v1 = *(type metadata accessor for SiriEnvironmentUpdateMessage.Builder(v0) + 24);
  return nullsub_1;
}

uint64_t SiriEnvironmentUpdateMessage.Builder.requestId.getter()
{
  v1 = (v0 + *(type metadata accessor for SiriEnvironmentUpdateMessage.Builder(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_2_1();
}

uint64_t SiriEnvironmentUpdateMessage.Builder.requestId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SiriEnvironmentUpdateMessage.Builder(0) + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*SiriEnvironmentUpdateMessage.Builder.requestId.modify())(void)
{
  v0 = OUTLINED_FUNCTION_8_0();
  v1 = *(type metadata accessor for SiriEnvironmentUpdateMessage.Builder(v0) + 28);
  return nullsub_1;
}

void SiriEnvironmentUpdateMessage.Builder.addEnvironmentValue<A>(key:value:)()
{
  OUTLINED_FUNCTION_42();
  v1 = v0;
  v24 = v2;
  v25 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v26 = v10;
  OUTLINED_FUNCTION_0_13();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15);
  updated = type metadata accessor for SiriEnvironmentUpdateMessage.Builder(0);
  v17 = *(updated + 32);
  if (!*(v1 + v17))
  {
    *(v1 + v17) = sub_223200064();
  }

  (*(v12 + 16))(&v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v7, v5);
  v18 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v19 = swift_allocObject();
  v21 = v24;
  v20 = v25;
  *(v19 + 2) = v5;
  *(v19 + 3) = v21;
  *(v19 + 4) = v20;
  (*(v12 + 32))(&v19[v18], &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v5);

  v22 = *(v1 + v17);
  swift_isUniquelyReferenced_nonNull_native();
  v27 = *(v1 + v17);
  v23 = v26;
  sub_2231AB6DC(sub_2231ACDCC, v19, 1, v26, v9);

  *(v1 + v17) = v27;
  if (*(v1 + *(updated + 36)))
  {
    sub_2231AB904(v23, v9);
  }

  OUTLINED_FUNCTION_40();
}

uint64_t sub_2231AAAF4()
{
  if (qword_27D057588 != -1)
  {
    swift_once();
  }

  return sub_2231FFC44();
}

Swift::Void __swiftcall SiriEnvironmentUpdateMessage.Builder.removeEnviromentValue(for:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  updated = type metadata accessor for SiriEnvironmentUpdateMessage.Builder(0);
  v6 = *(updated + 36);
  if (!*(v2 + v6))
  {
    *(v2 + v6) = MEMORY[0x277D84FA0];
  }

  sub_2231AC1E4(v10, countAndFlagsBits, object);

  if (*(v2 + *(updated + 32)))
  {
    sub_2231AB5E8(countAndFlagsBits, object, v10);
    v7 = v10[0];
    v8 = v10[1];
    v9 = v11;

    sub_2231AC330(v7, v8, v9);
  }
}

uint64_t sub_2231AAC54()
{
  v1 = OBJC_IVAR____TtC16SiriMessageTypes28SiriEnvironmentUpdateMessage_addedValues;
  swift_beginAccess();
  v2 = *(v0 + v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A120, &qword_223218C38);
  v3 = sub_223200424();
  v5 = v2 + 64;
  v4 = *(v2 + 64);
  v6 = *(v2 + 32);
  OUTLINED_FUNCTION_2_5();
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;
  v46 = v12 + 64;

  v14 = 0;
  v43 = v2;
  v44 = v3;
  if (v9)
  {
    do
    {
      v15 = __clz(__rbit64(v9));
      v48 = (v9 - 1) & v9;
LABEL_8:
      v18 = v15 | (v14 << 6);
      v19 = (*(v2 + 48) + 16 * v18);
      v20 = v19[1];
      v49 = *v19;
      v21 = *(v2 + 56) + 24 * v18;
      v23 = *v21;
      v22 = *(v21 + 8);
      if (*(v21 + 16) == 1)
      {
        v45 = v20;

        v24 = OUTLINED_FUNCTION_7_27();
        v27 = sub_2231AC68C(v24, v25, v26);
        v28 = v23(v27);
        if (v47)
        {

          v3 = v44;

          v40 = OUTLINED_FUNCTION_7_27();
          sub_2231AC348(v40, v41, v42);
          return v3;
        }

        v30 = v28;
        v31 = v29;
        v32 = OUTLINED_FUNCTION_7_27();
        result = sub_2231AC348(v32, v33, v34);
        v23 = v30;
        v22 = v31;
        v2 = v43;
        v3 = v44;
        v20 = v45;
      }

      else
      {

        result = sub_2231AC68C(v23, v22, 0);
      }

      *(v46 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v35 = (v3[6] + 16 * v18);
      *v35 = v49;
      v35[1] = v20;
      v36 = (v3[7] + 16 * v18);
      *v36 = v23;
      v36[1] = v22;
      v37 = v3[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_19;
      }

      v3[2] = v39;
      v9 = v48;
    }

    while (v48);
  }

  v16 = v14;
  while (1)
  {
    v14 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v14 >= v11)
    {

      return v3;
    }

    v17 = *(v5 + 8 * v14);
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v48 = (v17 - 1) & v17;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

void sub_2231AAEAC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v7 = *(a3 + a4 - 24);
  v8 = *(a3 + a4 - 16);
  v9 = *(a3 + a4 - 8);
  v10 = sub_2232002D4();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v14 = *a3;
  v13 = a3[1];
  (*(v15 + 16))(&v17 - v12, a1);
  v16 = *a2;

  sub_2231AB0B0();
}

uint64_t sub_2231AAFB8@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  if (qword_280FCA778 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  v4 = sub_223200014();
  __swift_project_value_buffer(v4, qword_280FCE830);
  v5 = sub_223200004();
  v6 = sub_223200254();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2230CE000, v5, v6, "Cannot use subscript getter for added values", v7, 2u);
    MEMORY[0x223DD6780](v7, -1, -1);
  }

  return __swift_storeEnumTagSinglePayload(a2, 1, 1, a1);
}

void sub_2231AB0B0()
{
  OUTLINED_FUNCTION_42();
  v26[0] = v1;
  v26[1] = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_8_0();
  v9 = sub_2232002D4();
  OUTLINED_FUNCTION_0_13();
  v11 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v14);
  v16 = v26 - v15;
  OUTLINED_FUNCTION_0_13();
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_2_2();
  v24 = v23 - v22;
  (*(v11 + 16))(v16, v0, v9);
  if (__swift_getEnumTagSinglePayload(v16, 1, v4) == 1)
  {
    v25 = *(v11 + 8);
    v25(v16, v9);
    sub_2231A9650(v8, v6);

    v25(v0, v9);
  }

  else
  {
    (*(v18 + 32))(v24, v16, v4);
    sub_2231A9474();

    (*(v11 + 8))(v0, v9);
    (*(v18 + 8))(v24, v4);
  }

  OUTLINED_FUNCTION_40();
}

void (*sub_2231AB2A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(uint64_t **a1, char a2)
{
  v13 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v13;
  v13[4] = a6;
  v13[5] = v6;
  v13[2] = a4;
  v13[3] = a5;
  *v13 = a2;
  v13[1] = a3;
  v14 = sub_2232002D4();
  v13[6] = v14;
  v15 = *(v14 - 8);
  v13[7] = v15;
  v16 = *(v15 + 64);
  v13[8] = __swift_coroFrameAllocStub(v16);
  v17 = __swift_coroFrameAllocStub(v16);
  v13[9] = v17;
  sub_2231AAFB8(a4, v17);
  return sub_2231AB3B0;
}

void sub_2231AB3B0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[8];
  v4 = (*a1)[9];
  if (a2)
  {
    v5 = v2[6];
    v6 = v2[7];
    v7 = v2[4];
    v18 = v2[5];
    v9 = v2[2];
    v8 = v2[3];
    v11 = *v2;
    v10 = v2[1];
    (*(v6 + 16))(v3, v4, v5);

    sub_2231AB0B0();
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v13 = v2[4];
    v12 = v2[5];
    v15 = v2[2];
    v14 = v2[3];
    v17 = *v2;
    v16 = v2[1];

    sub_2231AB0B0();
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_2231AB4FC()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes28SiriEnvironmentUpdateMessage_addedValues);

  v2 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes28SiriEnvironmentUpdateMessage_removedValues);

  v3 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes28SiriEnvironmentUpdateMessage_requestId + 8);
}

id SiriEnvironmentUpdateMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriEnvironmentUpdateMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2231AB5E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  result = sub_22314C358(a1, a2);
  if (v8)
  {
    v9 = result;
    v10 = *v4;
    swift_isUniquelyReferenced_nonNull_native();
    v15 = *v4;
    v11 = *(*v4 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A178, &qword_223218EB8);
    sub_2232003D4();
    v12 = *(*(v15 + 48) + 16 * v9 + 8);

    v13 = *(v15 + 56) + 24 * v9;
    v14 = *(v13 + 16);
    *a3 = *v13;
    *(a3 + 16) = v14;
    result = sub_2232003F4();
    *v4 = v15;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = -1;
  }

  return result;
}

uint64_t sub_2231AB6DC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_22314C358(a4, a5);
  if (__OFADD__(*(v12 + 16), (v14 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = v13;
  v16 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A178, &qword_223218EB8);
  if ((sub_2232003D4() & 1) == 0)
  {
    goto LABEL_5;
  }

  v17 = *v6;
  v18 = sub_22314C358(a4, a5);
  if ((v16 & 1) != (v19 & 1))
  {
LABEL_13:
    result = sub_2232006E4();
    __break(1u);
    return result;
  }

  v15 = v18;
LABEL_5:
  v20 = *v6;
  if (v16)
  {
    v21 = v20[7] + 24 * v15;
    v22 = *v21;
    v23 = *(v21 + 8);
    v24 = *(v21 + 16);
    *v21 = a1;
    *(v21 + 8) = a2;
    *(v21 + 16) = a3 & 1;

    return sub_2231AC348(v22, v23, v24);
  }

  else
  {
    sub_2231AB848(v15, a4, a5, a1, a2, a3 & 1, v20);
  }
}

unint64_t sub_2231AB848(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 16 * result);
  *v7 = a2;
  v7[1] = a3;
  v8 = a7[7] + 24 * result;
  *v8 = a4;
  *(v8 + 8) = a5;
  *(v8 + 16) = a6 & 1;
  v9 = a7[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v11;
  }

  return result;
}

uint64_t sub_2231AB8A0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_223211C20;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_2231AB904(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_223200744();
  sub_223200124();
  v7 = sub_223200764();
  v8 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v9 = v7 & v8;
    if (((*(v5 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v8)) & 1) == 0)
    {
      return 0;
    }

    v10 = (*(v5 + 48) + 16 * v9);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_2232006B4() & 1) != 0)
    {
      break;
    }

    v7 = v9 + 1;
  }

  v12 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v19 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2231ABA44();
    v14 = v19;
  }

  v15 = (*(v14 + 48) + 16 * v9);
  v16 = *v15;
  v17 = v15[1];
  sub_2231AC02C(v9);
  *v2 = v19;
  return v16;
}

void *sub_2231ABA44()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A180, &unk_223218EC0);
  v2 = *v0;
  v3 = sub_223200334();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_2231ABB9C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A180, &unk_223218EC0);
  result = sub_223200344();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        sub_223200744();

        sub_223200124();
        result = sub_223200764();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_2231ABDD0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A180, &unk_223218EC0);
  result = sub_223200344();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v31 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_2231AB8A0(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    sub_223200744();
    sub_223200124();
    result = sub_223200764();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_2231AC02C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_223200324();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_223200744();

        sub_223200124();
        v15 = sub_223200764();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 >= v10 && v2 >= v16)
          {
LABEL_15:
            v19 = *(v3 + 48);
            v20 = (v19 + 16 * v2);
            v21 = (v19 + 16 * v6);
            if (v2 != v6 || v20 >= v21 + 1)
            {
              *v20 = *v21;
              v2 = v6;
            }
          }
        }

        else if (v16 >= v10 || v2 >= v16)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v23 = *(v3 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v25;
    ++*(v3 + 36);
  }

  return result;
}

BOOL sub_2231AC1E4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_223200744();
  sub_223200124();
  v9 = sub_223200764();
  v10 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v7 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (sub_2232006B4() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v9 = v11 + 1;
  }

  v17 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;

  sub_2231ACC54(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v20;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

uint64_t sub_2231AC330(uint64_t result, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_2231AC348(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_2231AC348(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return sub_2230D94DC(a1, a2);
  }
}

uint64_t sub_2231AC378(uint64_t a1)
{
  updated = type metadata accessor for SiriEnvironmentUpdateMessage.Builder(0);
  (*(*(updated - 8) + 8))(a1, updated);
  return a1;
}

unint64_t sub_2231AC3F4()
{
  result = qword_27D05A0D0;
  if (!qword_27D05A0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A0D0);
  }

  return result;
}

uint64_t sub_2231AC448(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D057640, &qword_2232037A0);
    result = OUTLINED_FUNCTION_13_13();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2231AC4A4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D05A0D8, &unk_223218C10);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2231AC528(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D05A0E8, &qword_22321FD70);
    result = OUTLINED_FUNCTION_13_13();
    atomic_store(result, a1);
  }

  return result;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t objectdestroyTm()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2231AC638()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = *(*(v0[2] - 8) + 80);
  return sub_2231AAAF4();
}

uint64_t sub_2231AC68C(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return sub_223110BA0(a1, a2);
  }
}

uint64_t sub_2231AC8FC()
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
        sub_223110900(319, &qword_27D05A148, &qword_27D05A150, &qword_223218CB0);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          sub_223110900(319, &qword_27D05A158, &qword_27D05A0E8, &qword_22321FD70);
          v1 = v9;
          if (v10 <= 0x3F)
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

_BYTE *storeEnumTagSinglePayload for SiriEnvironmentUpdateMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

unint64_t sub_2231ACB50()
{
  result = qword_27D05A160;
  if (!qword_27D05A160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A160);
  }

  return result;
}

unint64_t sub_2231ACBA8()
{
  result = qword_27D05A168;
  if (!qword_27D05A168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A168);
  }

  return result;
}

unint64_t sub_2231ACC00()
{
  result = qword_27D05A170;
  if (!qword_27D05A170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A170);
  }

  return result;
}

uint64_t sub_2231ACC54(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_2231ABDD0(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_2231ABB9C(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_223200744();
      sub_223200124();
      result = sub_223200764();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (sub_2232006B4() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_2231ABA44();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_2232006D4();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void *SiriPromptedMessage.init(from:)(uint64_t *a1)
{
  sub_2230F7158(a1, v4);
  v2 = RequestMessageBase.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

id SiriPromptedMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriPromptedMessage();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SiriPromptedMessage()
{
  result = qword_280FCAE30;
  if (!qword_280FCAE30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SiriUserInput.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A188, &qword_223218F00);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231AD348();
  sub_223200794();
  if (!v2)
  {
    sub_2230FB7A0();
    sub_2232004C4();
    v13 = v27 >> 60;
    if (v27 >> 60 == 15)
    {
      v14 = sub_223200494();
      v16 = v15;
      if (v15)
      {
        v17 = v14;
        v18 = OUTLINED_FUNCTION_28();
        v19(v18);
LABEL_10:
        *a2 = v17;
        *(a2 + 8) = v16;
        *(a2 + 16) = v13 > 0xE;
        return __swift_destroy_boxed_opaque_existential_1(a1);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A190, &qword_223218F08);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_223205AB0;
      strcpy((inited + 32), "SiriUserInput");
      *(inited + 46) = -4864;
      OUTLINED_FUNCTION_3_32(inited, MEMORY[0x277D837D0], 0x8000000223225B20);
      sub_223200064();
      v23 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      OUTLINED_FUNCTION_1_31();
      swift_willThrow();
    }

    else
    {
      sub_2230FB7F4(0, &qword_27D0576E8, 0x277CCAAC8);
      sub_2230FB7F4(0, &qword_280FCA3D0, 0x277CEF470);
      v17 = sub_223200264();
      if (v17)
      {
        v20 = OUTLINED_FUNCTION_28();
        v21(v20);
        sub_22310A610(v26, v27);
        v16 = 0;
        v13 = v27 >> 60;
        goto LABEL_10;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A190, &qword_223218F08);
      v24 = swift_initStackObject();
      *(v24 + 16) = xmmword_223205AB0;
      strcpy((v24 + 32), "SpeechPackage");
      *(v24 + 46) = -4864;
      OUTLINED_FUNCTION_3_32(v24, MEMORY[0x277D837D0], 0x8000000223225B20);
      sub_223200064();
      v25 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      OUTLINED_FUNCTION_1_31();
      swift_willThrow();
      sub_22310A610(v26, v27);
    }

    v10 = OUTLINED_FUNCTION_28();
    v11(v10);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2231AD348()
{
  result = qword_280FCB268[0];
  if (!qword_280FCB268[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280FCB268);
  }

  return result;
}

uint64_t SiriUserInput.encode(to:)(void *a1)
{
  v26[2] = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A198, &qword_223218F10);
  v4 = OUTLINED_FUNCTION_9(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v24 - v9;
  v11 = v1[1];
  v24 = *v1;
  v12 = *(v1 + 16);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231AD348();
  sub_2232007A4();
  if (v12)
  {
    LOBYTE(v26[0]) = 1;
    sub_2232005F4();
    result = (*(v6 + 8))(v10, v3);
  }

  else
  {
    v15 = v6;
    v16 = objc_opt_self();
    v26[0] = 0;
    v17 = [v16 archivedDataWithRootObject:v24 requiringSecureCoding:1 error:v26];
    v18 = v26[0];
    if (v17)
    {
      v19 = sub_2231FFD24();
      v21 = v20;

      v26[0] = v19;
      v26[1] = v21;
      v25 = 0;
      sub_2230D7754();
      sub_223200654();
      (*(v15 + 8))(v10, v3);
      result = sub_2230D94DC(v19, v21);
    }

    else
    {
      v22 = v18;
      sub_2231FFD04();

      swift_willThrow();
      result = (*(v15 + 8))(v10, v3);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2231AD5FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x686365657073 && a2 == 0xE600000000000000;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000)
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

uint64_t sub_2231AD6C0(char a1)
{
  if (a1)
  {
    return 1954047348;
  }

  else
  {
    return 0x686365657073;
  }
}

uint64_t sub_2231AD6F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231AD5FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2231AD71C(uint64_t a1)
{
  v2 = sub_2231AD348();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231AD758(uint64_t a1)
{
  v2 = sub_2231AD348();

  return MEMORY[0x2821FE720](a1, v2);
}

id sub_2231AD7C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_2232000A4();

  if (a4)
  {
    v8 = sub_223200034();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
}

_BYTE *storeEnumTagSinglePayload for SiriUserInput.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2231AD970()
{
  result = qword_27D05A1A0;
  if (!qword_27D05A1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A1A0);
  }

  return result;
}

unint64_t sub_2231AD9C8()
{
  result = qword_280FCB258;
  if (!qword_280FCB258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCB258);
  }

  return result;
}

unint64_t sub_2231ADA20()
{
  result = qword_280FCB260;
  if (!qword_280FCB260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCB260);
  }

  return result;
}

BOOL sub_2231ADAD4@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2230F0518();
  *a2 = result;
  return result;
}

uint64_t sub_2231ADB08@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2231ADAAC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_2231ADB34@<W0>(_BYTE *a1@<X8>)
{
  result = sub_2230F0518();
  *a1 = result;
  return result;
}

uint64_t sub_2231ADB60(uint64_t a1)
{
  v2 = sub_2230E3A68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231ADB9C(uint64_t a1)
{
  v2 = sub_2230E3A68();

  return MEMORY[0x2821FE720](a1, v2);
}

void *SiriWillAskForConfirmationMessage.init(build:)(void (*a1)(_BYTE *))
{
  v3 = type metadata accessor for SiriWillAskForConfirmationMessage.Builder(0);
  v4 = (v3 - 8);
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v7 = 15;
  *(v7 + 1) = 0;
  *(v7 + 2) = 0;
  v8 = v4[8];
  v9 = sub_2231FFDA4();
  __swift_storeEnumTagSinglePayload(&v7[v8], 1, 1, v9);
  v10 = &v7[v4[9]];
  *v10 = 0;
  v10[1] = 0;
  v11 = v4[10];
  v12 = type metadata accessor for PromptInfo(0);
  __swift_storeEnumTagSinglePayload(&v7[v11], 1, 1, v12);
  a1(v7);
  sub_2230D30B8(&v7[v11], v1 + OBJC_IVAR____TtC16SiriMessageTypes33SiriWillAskForConfirmationMessage_promptInfo, &qword_27D057FA8, &qword_2232083C0);
  v16 = v7;
  v13 = RequestMessageBase.init(build:)(sub_2231ADE30);
  sub_2231ADE38(v7);
  return v13;
}

uint64_t sub_2231ADD80(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  v6 = *(a1 + 16);

  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  v7 = type metadata accessor for SiriWillAskForConfirmationMessage.Builder(0);
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

uint64_t sub_2231ADE38(uint64_t a1)
{
  v2 = type metadata accessor for SiriWillAskForConfirmationMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *SiriWillAskForConfirmationMessage.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057FA8, &qword_2232083C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v19[-1] - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A1A8, &qword_223219118);
  v8 = OUTLINED_FUNCTION_9(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = a1[4];
  v12 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2230E3A68();
  sub_223200794();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for SiriWillAskForConfirmationMessage(0);
    v13 = *((*MEMORY[0x277D85000] & *v20) + 0x30);
    v14 = *((*MEMORY[0x277D85000] & *v20) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for PromptInfo(0);
    sub_2230E39F0(&qword_27D057FC8);
    sub_2232004C4();
    sub_2231261EC(v6, v20 + OBJC_IVAR____TtC16SiriMessageTypes33SiriWillAskForConfirmationMessage_promptInfo);
    sub_2230F7158(a1, v19);
    v12 = RequestMessageBase.init(from:)(v19);
    v16 = OUTLINED_FUNCTION_1_10();
    v17(v16);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v12;
}

uint64_t SiriWillAskForConfirmationMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t SiriWillAskForConfirmationMessage.Builder.assistantId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t SiriWillAskForConfirmationMessage.Builder.requestId.getter()
{
  v1 = (v0 + *(type metadata accessor for SiriWillAskForConfirmationMessage.Builder(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_2_1();
}

uint64_t SiriWillAskForConfirmationMessage.Builder.requestId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SiriWillAskForConfirmationMessage.Builder(0) + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

id SiriWillAskForConfirmationMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriWillAskForConfirmationMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2231AE518()
{
  sub_2230E42C0(319, qword_280FCAD38, type metadata accessor for PromptInfo);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

_BYTE *storeEnumTagSinglePayload for SiriWillAskForConfirmationMessage.CodingKeys(_BYTE *result, int a2, int a3)
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