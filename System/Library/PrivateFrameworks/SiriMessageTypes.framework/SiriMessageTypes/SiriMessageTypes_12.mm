uint64_t sub_2231C4AC8(uint64_t a1)
{
  started = type metadata accessor for StartCorrectedSpeechRequestMessage.Builder(0);
  (*(*(started - 8) + 8))(a1, started);
  return a1;
}

void sub_2231C4B44(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9)
{
  *a1 = a2;
  v16 = *(a1 + 16);

  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  started = type metadata accessor for StartRequestMessageBase.Builder(0);
  v18 = started[6];
  sub_2230D69D4(a1 + v18);
  v19 = sub_2231FFDA4();
  (*(*(v19 - 8) + 16))(a1 + v18, a5, v19);
  __swift_storeEnumTagSinglePayload(a1 + v18, 0, 1, v19);
  v20 = (a1 + started[7]);
  v21 = v20[1];

  *v20 = a6;
  v20[1] = a7;
  *(a1 + started[8]) = a8;
  v22 = *(a9 + *(type metadata accessor for StartCorrectedSpeechRequestMessage.Builder(0) + 40));
  v23 = started[9];
  v24 = *(a1 + v23);
  v25 = v22;

  *(a1 + v23) = v22;
}

void *StartCorrectedSpeechRequestMessage.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A6A8, &qword_22321BDE8);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231C5514();
  sub_223200794();
  if (v2)
  {
    v16 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for StartCorrectedSpeechRequestMessage(0);
    v11 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
    v12 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = sub_223200494();
    v14 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes34StartCorrectedSpeechRequestMessage_previousUtterance);
    *v14 = v10;
    v14[1] = v15;
    sub_2230F7158(a1, v19);
    v16 = StartTextRequestMessage.init(from:)(v19);
    v17 = OUTLINED_FUNCTION_2();
    v18(v17);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v16;
}

uint64_t sub_2231C4EB4(void *a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A6B8, &unk_22321BDF0);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231C5514();
  sub_2232007A4();
  if (!*(v1 + OBJC_IVAR____TtC16SiriMessageTypes34StartCorrectedSpeechRequestMessage_previousUtterance + 8) || (v13 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes34StartCorrectedSpeechRequestMessage_previousUtterance), v14 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes34StartCorrectedSpeechRequestMessage_previousUtterance + 8), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057640, &qword_2232037A0), sub_2230F994C(), sub_223200654(), !v2))
  {
    sub_2230DEEE4(a1);
  }

  return (*(v8 + 8))(v3, v5);
}

uint64_t StartCorrectedSpeechRequestMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t StartCorrectedSpeechRequestMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t StartCorrectedSpeechRequestMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StartCorrectedSpeechRequestMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t StartCorrectedSpeechRequestMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_5_27() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t StartCorrectedSpeechRequestMessage.Builder.requestId.getter()
{
  started = type metadata accessor for StartCorrectedSpeechRequestMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(started + 28));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t StartCorrectedSpeechRequestMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for StartCorrectedSpeechRequestMessage.Builder(0) + 28));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t StartCorrectedSpeechRequestMessage.Builder.inputOrigin.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StartCorrectedSpeechRequestMessage.Builder(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t StartCorrectedSpeechRequestMessage.Builder.inputOrigin.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for StartCorrectedSpeechRequestMessage.Builder(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

uint64_t StartCorrectedSpeechRequestMessage.Builder.previousUtterance.getter()
{
  started = type metadata accessor for StartCorrectedSpeechRequestMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(started + 36));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t StartCorrectedSpeechRequestMessage.Builder.previousUtterance.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for StartCorrectedSpeechRequestMessage.Builder(0) + 36));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

void *StartCorrectedSpeechRequestMessage.Builder.requestContextData.getter()
{
  v1 = *(v0 + *(type metadata accessor for StartCorrectedSpeechRequestMessage.Builder(0) + 40));
  v2 = v1;
  return v1;
}

void StartCorrectedSpeechRequestMessage.Builder.requestContextData.setter()
{
  v2 = *(OUTLINED_FUNCTION_5_27() + 40);

  *(v1 + v2) = v0;
}

id StartCorrectedSpeechRequestMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StartCorrectedSpeechRequestMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231C5514()
{
  result = qword_27D05A6B0;
  if (!qword_27D05A6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A6B0);
  }

  return result;
}

uint64_t sub_2231C5608()
{
  sub_2230D525C(319, &qword_280FCB0A8);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_2231C08B4(319, &qword_280FCE678, MEMORY[0x277CC95F0]);
      if (v6 > 0x3F)
      {
        return v5;
      }

      sub_2230D525C(319, &qword_280FCACC0);
      if (v7 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_2231C08B4(319, &qword_280FCA900, type metadata accessor for RequestContextData);
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

_BYTE *storeEnumTagSinglePayload for StartCorrectedSpeechRequestMessage.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_2231C5808()
{
  result = qword_27D05A6D0;
  if (!qword_27D05A6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A6D0);
  }

  return result;
}

unint64_t sub_2231C5860()
{
  result = qword_27D05A6D8;
  if (!qword_27D05A6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A6D8);
  }

  return result;
}

unint64_t sub_2231C58B8()
{
  result = qword_27D05A6E0;
  if (!qword_27D05A6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A6E0);
  }

  return result;
}

void *StartDirectActionRequestMessage.init(from:)(uint64_t *a1)
{
  sub_2230F7158(a1, v4);
  v2 = StartTextRequestMessage.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

id StartDirectActionRequestMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StartDirectActionRequestMessage();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for StartDirectActionRequestMessage()
{
  result = qword_280FCC3E8;
  if (!qword_280FCC3E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t StartIFRequestMessage.orchestrationTaskId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16SiriMessageTypes21StartIFRequestMessage_orchestrationTaskId;
  v4 = sub_2231FFDA4();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

void *StartIFRequestMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return StartIFRequestMessage.init(build:)(v1);
}

void *StartIFRequestMessage.init(build:)(void (*a1)(uint64_t))
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v49 - v6;
  v8 = sub_2231FFDA4();
  v9 = OUTLINED_FUNCTION_9(v8);
  v50 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_2();
  v49 = v14 - v13;
  started = type metadata accessor for StartIFRequestMessage.Builder(0);
  v16 = (started - 8);
  v17 = *(*(started - 8) + 64);
  MEMORY[0x28223BE20](started);
  OUTLINED_FUNCTION_2_2();
  v20 = v19 - v18;
  *v20 = 15;
  *(v20 + 8) = 0;
  *(v20 + 16) = 0;
  __swift_storeEnumTagSinglePayload(v19 - v18 + v16[8], 1, 1, v8);
  v21 = (v20 + v16[9]);
  *v21 = 0;
  v21[1] = 0;
  v22 = v16[10];
  *(v20 + v22) = 19;
  v23 = v16[11];
  *(v20 + v23) = 0;
  v24 = (v20 + v16[12]);
  *v24 = 0;
  v24[1] = 0;
  v25 = v16[13];
  __swift_storeEnumTagSinglePayload(v20 + v25, 1, 1, v8);
  a1(v20);
  v26 = v24[1];
  if (v26 && (v27 = *(v20 + v22), v27 != 19) && (v28 = *(v20 + v23)) != 0)
  {
    *(v2 + OBJC_IVAR____TtC16SiriMessageTypes21StartIFRequestMessage_inputOrigin) = v27;
    *(v2 + OBJC_IVAR____TtC16SiriMessageTypes21StartIFRequestMessage_requestContextData) = v28;
    v29 = (v2 + OBJC_IVAR____TtC16SiriMessageTypes21StartIFRequestMessage_rootRequestId);
    *v29 = *v24;
    v29[1] = v26;
    sub_2230D1480(v20 + v25, v7);
    if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
    {
      v30 = v28;

      v31 = v49;
      sub_2231FFD94();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v8);
      v33 = v50;
      if (EnumTagSinglePayload != 1)
      {
        sub_2230D69D4(v7);
      }
    }

    else
    {
      v31 = v49;
      v33 = v50;
      (*(v50 + 32))(v49, v7, v8);
      v46 = v28;
    }

    v47 = (*(v33 + 32))(v2 + OBJC_IVAR____TtC16SiriMessageTypes21StartIFRequestMessage_orchestrationTaskId, v31, v8);
    MEMORY[0x28223BE20](v47);
    *(&v49 - 2) = v20;
    v44 = RequestMessageBase.init(build:)(sub_2231C7180);
    v48 = v44;

    if (v44)
    {
    }

    sub_2231C6058(v20);
  }

  else
  {
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
      v52 = v38;
      *v37 = 136446210;
      v39 = sub_2230F7898();
      v41 = sub_2231A5D38(v39, v40, &v52);

      *(v37 + 4) = v41;
      _os_log_impl(&dword_2230CE000, v35, v36, "Could not build %{public}s: Builder has missing required fields", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x223DD6780](v38, -1, -1);
      MEMORY[0x223DD6780](v37, -1, -1);
    }

    sub_2231C6058(v20);
    type metadata accessor for StartIFRequestMessage(0);
    v42 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
    v43 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v44;
}

uint64_t sub_2231C6058(uint64_t a1)
{
  started = type metadata accessor for StartIFRequestMessage.Builder(0);
  (*(*(started - 8) + 8))(a1, started);
  return a1;
}

uint64_t sub_2231C60D4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  v6 = *(a1 + 16);

  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  started = type metadata accessor for StartIFRequestMessage.Builder(0);
  v8 = *(started + 24);
  v9 = type metadata accessor for RequestMessageBase.Builder(0);
  sub_2230DAEC8(a2 + v8, a1 + *(v9 + 24));
  v10 = (a2 + *(started + 28));
  v12 = *v10;
  v11 = v10[1];
  v13 = (a1 + *(v9 + 28));
  v14 = v13[1];

  *v13 = v12;
  v13[1] = v11;
  return result;
}

void *StartIFRequestMessage.init(from:)(uint64_t *a1)
{
  v3 = sub_2231FFDA4();
  v4 = OUTLINED_FUNCTION_9(v3);
  v47 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_2();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A6E8, &qword_22321BFD8);
  v12 = v11;
  v13 = OUTLINED_FUNCTION_9(v11);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v43 - v16;
  v19 = a1[3];
  v18 = a1[4];
  v49 = a1;
  v20 = __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_2231C7188();
  sub_223200794();
  v21 = &qword_280FCDFA0[12];
  if (v1)
  {
    OUTLINED_FUNCTION_2_42();
    v22 = v49;
  }

  else
  {
    v46 = v10;
    v51 = 0;
    sub_2231C71DC();
    OUTLINED_FUNCTION_5_6();
    *(v48 + OBJC_IVAR____TtC16SiriMessageTypes21StartIFRequestMessage_inputOrigin) = v50[0];
    v51 = 1;
    sub_2230FB7A0();
    OUTLINED_FUNCTION_5_6();
    v22 = v49;
    v28 = v50[0];
    v29 = v50[1];
    sub_2231717C8();
    type metadata accessor for RequestContextData(0);
    v30 = sub_223200264();
    v44 = v28;
    v45 = v29;
    if (v30)
    {
      v31 = v48;
      *(v48 + OBJC_IVAR____TtC16SiriMessageTypes21StartIFRequestMessage_requestContextData) = v30;
      LOBYTE(v50[0]) = 2;
      v32 = v30;
      v33 = sub_2232004F4();
      v43 = v32;
      v37 = (v31 + OBJC_IVAR____TtC16SiriMessageTypes21StartIFRequestMessage_rootRequestId);
      *v37 = v33;
      v37[1] = v38;
      LOBYTE(v50[0]) = 3;
      sub_2230D45E8(&qword_27D057ED0);
      sub_223200554();
      (*(v47 + 32))(v31 + OBJC_IVAR____TtC16SiriMessageTypes21StartIFRequestMessage_orchestrationTaskId, v46, v3);
      sub_2230F7158(v22, v50);
      v39 = RequestMessageBase.init(from:)(v50);
      v40 = v44;
      v20 = v39;
      v41 = OUTLINED_FUNCTION_1_10();
      v42(v41);
      sub_2230D94DC(v40, v45);

      __swift_destroy_boxed_opaque_existential_1(v22);
      return v20;
    }

    v20 = 0x80000002232263E0;
    sub_2230F9E38();
    swift_allocError();
    *v34 = 0xD000000000000028;
    *(v34 + 8) = 0x80000002232263E0;
    *(v34 + 16) = 0;
    swift_willThrow();
    sub_2230D94DC(v44, v45);
    v35 = OUTLINED_FUNCTION_1_10();
    v36(v35);
    OUTLINED_FUNCTION_2_42();
    v21 = qword_280FCDFA0 + 96;
  }

  __swift_destroy_boxed_opaque_existential_1(v22);
  if ((v17 & 1) == 0)
  {
    v23 = v48;
    if (v12)
    {
    }

    if (v20)
    {
      v24 = *(v23 + OBJC_IVAR____TtC16SiriMessageTypes21StartIFRequestMessage_rootRequestId + 8);
    }

    type metadata accessor for StartIFRequestMessage(0);
    v25 = *((*MEMORY[0x277D85000] & *v23) + 0x30);
    v26 = *((*MEMORY[0x277D85000] & *v23) + 0x34);
    swift_deallocPartialClassInstance();
  }

  return v20;
}

uint64_t sub_2231C66F0(void *a1)
{
  v3 = v1;
  v26[2] = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A700, &qword_22321BFE0);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231C7188();
  sub_2232007A4();
  LOBYTE(v26[0]) = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes21StartIFRequestMessage_inputOrigin);
  sub_2230DB484();
  OUTLINED_FUNCTION_10_19();
  if (!v2)
  {
    v13 = objc_opt_self();
    v14 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes21StartIFRequestMessage_requestContextData);
    v26[0] = 0;
    v15 = [v13 archivedDataWithRootObject:v14 requiringSecureCoding:1 error:v26];
    v16 = v26[0];
    if (v15)
    {
      v17 = sub_2231FFD24();
      v19 = v18;

      v26[0] = v17;
      v26[1] = v19;
      sub_2230D7754();
      OUTLINED_FUNCTION_10_19();
      v21 = *(v3 + OBJC_IVAR____TtC16SiriMessageTypes21StartIFRequestMessage_rootRequestId);
      v22 = *(v3 + OBJC_IVAR____TtC16SiriMessageTypes21StartIFRequestMessage_rootRequestId + 8);
      LOBYTE(v26[0]) = 2;
      sub_2232005F4();
      LOBYTE(v26[0]) = 3;
      sub_2231FFDA4();
      sub_2230D45E8(&qword_280FCE688);
      sub_223200654();
      sub_2230D77A8(a1);
      v23 = OUTLINED_FUNCTION_6_26();
      v24(v23);
      result = sub_2230D94DC(v17, v19);
      goto LABEL_6;
    }

    v20 = v16;
    sub_2231FFD04();

    swift_willThrow();
  }

  v10 = OUTLINED_FUNCTION_6_26();
  result = v11(v10);
LABEL_6:
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t StartIFRequestMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t StartIFRequestMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t StartIFRequestMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StartIFRequestMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t StartIFRequestMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_5_28() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t StartIFRequestMessage.Builder.requestId.getter()
{
  started = type metadata accessor for StartIFRequestMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(started + 28));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t StartIFRequestMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for StartIFRequestMessage.Builder(0) + 28));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t StartIFRequestMessage.Builder.inputOrigin.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StartIFRequestMessage.Builder(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t StartIFRequestMessage.Builder.inputOrigin.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for StartIFRequestMessage.Builder(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

void *StartIFRequestMessage.Builder.requestContextData.getter()
{
  v1 = *(v0 + *(type metadata accessor for StartIFRequestMessage.Builder(0) + 36));
  v2 = v1;
  return v1;
}

void StartIFRequestMessage.Builder.requestContextData.setter()
{
  v2 = *(OUTLINED_FUNCTION_5_28() + 36);

  *(v1 + v2) = v0;
}

uint64_t StartIFRequestMessage.Builder.rootRequestId.getter()
{
  started = type metadata accessor for StartIFRequestMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(started + 40));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t StartIFRequestMessage.Builder.rootRequestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for StartIFRequestMessage.Builder(0) + 40));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t StartIFRequestMessage.Builder.orchestrationTaskId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StartIFRequestMessage.Builder(0) + 44);

  return sub_2230D1480(v3, a1);
}

uint64_t StartIFRequestMessage.Builder.orchestrationTaskId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_5_28() + 44);

  return sub_2230D4E04(v0, v2);
}

uint64_t sub_2231C6EE4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2230F2480();
  *a2 = result;
  return result;
}

unint64_t sub_2231C6F14@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2230F24CC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2231C6F48@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2230F2480();
  *a1 = result;
  return result;
}

uint64_t sub_2231C6F70(uint64_t a1)
{
  v2 = sub_2231C7188();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231C6FAC(uint64_t a1)
{
  v2 = sub_2231C7188();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2231C7018()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes21StartIFRequestMessage_rootRequestId + 8);

  v2 = OBJC_IVAR____TtC16SiriMessageTypes21StartIFRequestMessage_orchestrationTaskId;
  v3 = sub_2231FFDA4();
  OUTLINED_FUNCTION_4(v3);
  v5 = *(v4 + 8);

  return v5(v0 + v2);
}

id StartIFRequestMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StartIFRequestMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231C7188()
{
  result = qword_27D05A6F0;
  if (!qword_27D05A6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A6F0);
  }

  return result;
}

unint64_t sub_2231C71DC()
{
  result = qword_27D05A6F8;
  if (!qword_27D05A6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A6F8);
  }

  return result;
}

uint64_t sub_2231C7238()
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

uint64_t sub_2231C7340()
{
  sub_2230D525C(319, &qword_280FCB0A8);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_2231C08B4(319, &qword_280FCE678, MEMORY[0x277CC95F0]);
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_2230D525C(319, &qword_280FCACC0);
        if (v8 > 0x3F)
        {
          return v7;
        }

        sub_2231C08B4(319, &qword_280FCA900, type metadata accessor for RequestContextData);
        if (v9 > 0x3F)
        {
          return v7;
        }

        else
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

_BYTE *storeEnumTagSinglePayload for StartIFRequestMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2231C758C()
{
  result = qword_27D05A718;
  if (!qword_27D05A718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A718);
  }

  return result;
}

unint64_t sub_2231C75E4()
{
  result = qword_27D05A720;
  if (!qword_27D05A720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A720);
  }

  return result;
}

unint64_t sub_2231C763C()
{
  result = qword_27D05A728;
  if (!qword_27D05A728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A728);
  }

  return result;
}

void *StartLocalRequestMessage.init(from:)(uint64_t *a1)
{
  sub_2230F7158(a1, v4);
  v2 = StartRequestMessageBase.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

id StartLocalRequestMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StartLocalRequestMessage();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for StartLocalRequestMessage()
{
  result = qword_280FCD468;
  if (!qword_280FCD468)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *StartRequestMessageBase.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A738, &qword_22321C220);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2230DF198();
  sub_223200794();
  if (v2)
  {
    v10 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for StartRequestMessageBase(0);
    v11 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
    v12 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_2231C71DC();
    OUTLINED_FUNCTION_2_6();
    sub_223200554();
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes23StartRequestMessageBase_inputOrigin) = v17;
    v19 = 1;
    sub_2230FB7A0();
    OUTLINED_FUNCTION_2_6();
    sub_2232004C4();
    if (v18 >> 60 == 15)
    {
      v14 = 0;
    }

    else
    {
      sub_2231717C8();
      type metadata accessor for RequestContextData(0);
      v14 = sub_223200264();
      sub_22310A610(v17, v18);
    }

    *(v3 + OBJC_IVAR____TtC16SiriMessageTypes23StartRequestMessageBase_optionalRequestContextData) = v14;
    sub_2230F7158(a1, &v17);
    v10 = RequestMessageBase.init(from:)(&v17);
    v15 = OUTLINED_FUNCTION_2();
    v16(v15);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v10;
}

uint64_t sub_2231C7B08(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69724F7475706E69 && a2 == 0xEB000000006E6967;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000223226530 == a2)
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

uint64_t sub_2231C7BDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231C7B08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2231C7C04(uint64_t a1)
{
  v2 = sub_2230DF198();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231C7C40(uint64_t a1)
{
  v2 = sub_2230DF198();

  return MEMORY[0x2821FE720](a1, v2);
}

void *StartRequestMessageBase.optionalRequestContextData.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes23StartRequestMessageBase_optionalRequestContextData);
  v2 = v1;
  return v1;
}

uint64_t StartRequestMessageBase.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t StartRequestMessageBase.Builder.assistantId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t StartRequestMessageBase.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StartRequestMessageBase.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t StartRequestMessageBase.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_3_38() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t StartRequestMessageBase.Builder.requestId.getter()
{
  v1 = (v0 + *(type metadata accessor for StartRequestMessageBase.Builder(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t StartRequestMessageBase.Builder.requestId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for StartRequestMessageBase.Builder(0) + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t StartRequestMessageBase.Builder.inputOrigin.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StartRequestMessageBase.Builder(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t StartRequestMessageBase.Builder.inputOrigin.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for StartRequestMessageBase.Builder(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

void *StartRequestMessageBase.Builder.requestContextData.getter()
{
  v1 = *(v0 + *(type metadata accessor for StartRequestMessageBase.Builder(0) + 36));
  v2 = v1;
  return v1;
}

void StartRequestMessageBase.Builder.requestContextData.setter()
{
  v2 = *(OUTLINED_FUNCTION_3_38() + 36);

  *(v1 + v2) = v0;
}

id StartRequestMessageBase.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StartRequestMessageBase(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2231C81C0()
{
  sub_2230D525C(319, &qword_280FCB0A8);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_2231C08B4(319, &qword_280FCE678, MEMORY[0x277CC95F0]);
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_2230D525C(319, &qword_280FCACC0);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          sub_2231C08B4(319, &qword_280FCA900, type metadata accessor for RequestContextData);
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

unint64_t sub_2231C8328()
{
  result = qword_27D05A740;
  if (!qword_27D05A740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A740);
  }

  return result;
}

unint64_t sub_2231C8380()
{
  result = qword_280FCE2B0;
  if (!qword_280FCE2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE2B0);
  }

  return result;
}

unint64_t sub_2231C83D8()
{
  result = qword_280FCE2B8;
  if (!qword_280FCE2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE2B8);
  }

  return result;
}

uint64_t sub_2231C861C()
{
  v0 = OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_4_39(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  OUTLINED_FUNCTION_26_3();
  sub_223200124();
  return sub_223200764();
}

uint64_t sub_2231C8660()
{
  v0 = OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_4_39(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_223200124();
  return sub_223200764();
}

uint64_t sub_2231C86C0()
{
  v0 = OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_4_39(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  OUTLINED_FUNCTION_26_3();
  sub_223200124();
  return sub_223200764();
}

uint64_t sub_2231C8770()
{
  v0 = OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_4_39(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  OUTLINED_FUNCTION_34_5();
  sub_223200124();
  return sub_223200764();
}

uint64_t sub_2231C8828(uint64_t a1, void (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_70();
  a2(a1);
  OUTLINED_FUNCTION_10_20();

  return sub_223200764();
}

uint64_t sub_2231C891C(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  OUTLINED_FUNCTION_70();
  a2(v5, a1);
  return sub_223200764();
}

uint64_t sub_2231C8978()
{
  OUTLINED_FUNCTION_70();
  sub_223200124();
  return sub_223200764();
}

uint64_t sub_2231C89C0(uint64_t a1, char a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_19_9();
  }

  sub_223200124();
}

uint64_t sub_2231C8A40(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_16_14();
  }

  else
  {
    OUTLINED_FUNCTION_32_3();
  }

  sub_223200124();
}

uint64_t sub_2231C8AC4(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
      OUTLINED_FUNCTION_26_3();
      OUTLINED_FUNCTION_5_29();
      break;
    case 3:
    case 4:
      OUTLINED_FUNCTION_5_29();
      break;
    default:
      break;
  }

  sub_223200124();
}

uint64_t sub_2231C8BA0()
{
  sub_223200124();
}

uint64_t sub_2231C8C1C(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_15_10();
    OUTLINED_FUNCTION_16_14();
    OUTLINED_FUNCTION_11_15();
  }

  else
  {
    OUTLINED_FUNCTION_12_15();
  }

  sub_223200124();
}

uint64_t sub_2231C8C98(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
    case 5:
      OUTLINED_FUNCTION_34_5();
      goto LABEL_3;
    case 3:
LABEL_3:
      OUTLINED_FUNCTION_5_29();
      break;
    default:
      break;
  }

  sub_223200124();
}

uint64_t sub_2231C8DA8()
{
  OUTLINED_FUNCTION_6_27();
  switch(v0)
  {
    case 1:
    case 3:
      goto LABEL_4;
    case 2:
      OUTLINED_FUNCTION_9_28();
      break;
    case 4:
    case 5:
      OUTLINED_FUNCTION_29_7();
LABEL_4:
      OUTLINED_FUNCTION_5_29();
      break;
    default:
      break;
  }

  sub_223200124();
}

uint64_t sub_2231C8E80()
{
  OUTLINED_FUNCTION_31_5();
  switch(v0)
  {
    case 4:
      break;
    default:
      OUTLINED_FUNCTION_5_29();
      break;
  }

  sub_223200124();
}

uint64_t sub_2231C8F44()
{
  OUTLINED_FUNCTION_2_43();
  sub_223200124();
}

uint64_t sub_2231C8FF8(uint64_t a1, char a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_2_43();
  }

  sub_223200124();
}

uint64_t sub_2231C9068()
{
  sub_223200124();
}

uint64_t sub_2231C9158(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 6:
    case 7:
      break;
    case 8:
      OUTLINED_FUNCTION_5_29();
      break;
    case 9:
      OUTLINED_FUNCTION_2_43();
      break;
    default:
      OUTLINED_FUNCTION_5_29();
      OUTLINED_FUNCTION_21_12();
      break;
  }

  sub_223200124();
}

uint64_t sub_2231C92CC(uint64_t a1, char a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_14_13();
  }

  sub_223200124();
}

uint64_t sub_2231C9350()
{
  OUTLINED_FUNCTION_3_23();
  sub_223200124();
}

uint64_t sub_2231C93CC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  sub_223200124();
}

uint64_t sub_2231C9430()
{
  OUTLINED_FUNCTION_6_27();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_5_29();
      OUTLINED_FUNCTION_34_5();
      break;
    default:
      break;
  }

  sub_223200124();
}

uint64_t sub_2231C9528(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_28_4();
    OUTLINED_FUNCTION_16_14();
  }

  else
  {
    OUTLINED_FUNCTION_26_3();
    OUTLINED_FUNCTION_5_29();
  }

  sub_223200124();
}

uint64_t sub_2231C95A0(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_7_30();
  }

  else
  {
    OUTLINED_FUNCTION_0_14();
  }

  sub_223200124();
}

uint64_t sub_2231C95F8()
{
  sub_223200124();
}

uint64_t sub_2231C9664()
{
  OUTLINED_FUNCTION_0_14();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_5_29();
      break;
    default:
      break;
  }

  sub_223200124();
}

uint64_t sub_2231C9724()
{
  sub_223200124();
}

uint64_t sub_2231C97EC()
{
  OUTLINED_FUNCTION_30_5();
  sub_223200124();
}

uint64_t sub_2231C9864(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 3:
      OUTLINED_FUNCTION_31_5();
      break;
    default:
      break;
  }

  sub_223200124();
}

uint64_t sub_2231C9928(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_3_39();
      break;
    default:
      break;
  }

  sub_223200124();
}

uint64_t sub_2231C99E0(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_13_15();
    OUTLINED_FUNCTION_16_14();
    OUTLINED_FUNCTION_11_15();
  }

  else
  {
    OUTLINED_FUNCTION_3_39();
  }

  sub_223200124();
}

uint64_t sub_2231C9A44()
{
  sub_223200124();
}

uint64_t sub_2231C9AC8()
{
  OUTLINED_FUNCTION_6_27();
  switch(v0)
  {
    case 1:
      goto LABEL_4;
    case 2:
      OUTLINED_FUNCTION_9_28();
      break;
    case 3:
    case 4:
      OUTLINED_FUNCTION_29_7();
LABEL_4:
      OUTLINED_FUNCTION_5_29();
      break;
    default:
      break;
  }

  sub_223200124();
}

uint64_t sub_2231C9B84()
{
  OUTLINED_FUNCTION_3_23();
  sub_223200124();
}

uint64_t sub_2231C9BF8()
{
  sub_223200124();
}

uint64_t sub_2231C9C60()
{
  OUTLINED_FUNCTION_3_23();
  sub_223200124();
}

uint64_t sub_2231C9CD8()
{
  OUTLINED_FUNCTION_21_12();
  sub_223200124();
}

uint64_t sub_2231C9D74()
{
  sub_223200124();
}

uint64_t sub_2231C9E50(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_5_29();
      break;
    case 2:
      OUTLINED_FUNCTION_9_28();
      break;
    case 3:
      OUTLINED_FUNCTION_26_3();
      OUTLINED_FUNCTION_5_29();
      break;
    default:
      break;
  }

  sub_223200124();
}

uint64_t sub_2231C9F04(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_5_29();
      break;
    case 2:
      OUTLINED_FUNCTION_0_14();
      break;
    case 3:
      OUTLINED_FUNCTION_5_29();
      OUTLINED_FUNCTION_21_12();
      break;
    default:
      break;
  }

  sub_223200124();
}

uint64_t sub_2231C9FB4()
{
  sub_223200124();
}

uint64_t sub_2231CA034()
{
  OUTLINED_FUNCTION_30_5();
  sub_223200124();
}

uint64_t sub_2231CA0AC()
{
  OUTLINED_FUNCTION_21_12();
  sub_223200124();
}

uint64_t sub_2231CA110()
{
  OUTLINED_FUNCTION_17_11();
  OUTLINED_FUNCTION_21_12();
  OUTLINED_FUNCTION_27_4();

  return sub_223200764();
}

uint64_t sub_2231CA178()
{
  v0 = sub_223200744();
  OUTLINED_FUNCTION_4_39(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  OUTLINED_FUNCTION_26_3();
  sub_223200124();
  return sub_223200764();
}

uint64_t sub_2231CA1C0()
{
  OUTLINED_FUNCTION_17_11();
  OUTLINED_FUNCTION_30_5();
  OUTLINED_FUNCTION_27_4();

  return sub_223200764();
}

uint64_t sub_2231CA224()
{
  sub_223200744();
  sub_223200124();

  return sub_223200764();
}

uint64_t sub_2231CA300()
{
  v0 = sub_223200744();
  OUTLINED_FUNCTION_4_39(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  OUTLINED_FUNCTION_26_3();
  sub_223200124();
  return sub_223200764();
}

uint64_t sub_2231CA348()
{
  sub_223200744();
  OUTLINED_FUNCTION_27_4();

  return sub_223200764();
}

uint64_t sub_2231CA3DC()
{
  OUTLINED_FUNCTION_17_11();
  OUTLINED_FUNCTION_3_23();
  OUTLINED_FUNCTION_18_14();

  return sub_223200764();
}

uint64_t sub_2231CA458()
{
  OUTLINED_FUNCTION_17_11();
  OUTLINED_FUNCTION_27_4();

  return sub_223200764();
}

uint64_t sub_2231CA4C4()
{
  OUTLINED_FUNCTION_17_11();
  OUTLINED_FUNCTION_3_23();
  OUTLINED_FUNCTION_18_14();

  return sub_223200764();
}

uint64_t sub_2231CA554()
{
  OUTLINED_FUNCTION_17_11();
  OUTLINED_FUNCTION_18_14();

  return sub_223200764();
}

uint64_t sub_2231CA5DC()
{
  OUTLINED_FUNCTION_17_11();
  if (v0)
  {
    OUTLINED_FUNCTION_13_15();
    OUTLINED_FUNCTION_16_14();
    OUTLINED_FUNCTION_11_15();
  }

  else
  {
    OUTLINED_FUNCTION_3_39();
  }

  OUTLINED_FUNCTION_18_14();

  return sub_223200764();
}

uint64_t sub_2231CA68C()
{
  OUTLINED_FUNCTION_17_11();
  OUTLINED_FUNCTION_30_5();
  OUTLINED_FUNCTION_27_4();

  return sub_223200764();
}

uint64_t sub_2231CA740()
{
  OUTLINED_FUNCTION_17_11();
  OUTLINED_FUNCTION_18_14();

  return sub_223200764();
}

uint64_t sub_2231CA7B0()
{
  OUTLINED_FUNCTION_17_11();
  if (v0)
  {
    OUTLINED_FUNCTION_7_30();
  }

  else
  {
    OUTLINED_FUNCTION_0_14();
  }

  OUTLINED_FUNCTION_18_14();

  return sub_223200764();
}

uint64_t sub_2231CA80C()
{
  OUTLINED_FUNCTION_17_11();
  if (v0)
  {
    OUTLINED_FUNCTION_28_4();
    OUTLINED_FUNCTION_16_14();
  }

  else
  {
    OUTLINED_FUNCTION_26_3();
    OUTLINED_FUNCTION_5_29();
  }

  OUTLINED_FUNCTION_18_14();

  return sub_223200764();
}

uint64_t sub_2231CA888()
{
  v0 = sub_223200744();
  OUTLINED_FUNCTION_4_39(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_223200124();
  return sub_223200764();
}

uint64_t sub_2231CA8E8()
{
  OUTLINED_FUNCTION_17_11();
  OUTLINED_FUNCTION_18_14();

  return sub_223200764();
}

uint64_t sub_2231CA974(uint64_t a1, unsigned __int8 a2)
{
  sub_223200744();
  MEMORY[0x223DD60B0](a2);
  return sub_223200764();
}

uint64_t sub_2231CA9E8()
{
  sub_223200744();
  sub_223200124();
  return sub_223200764();
}

uint64_t sub_2231CAA34()
{
  OUTLINED_FUNCTION_17_11();
  OUTLINED_FUNCTION_3_23();
  OUTLINED_FUNCTION_18_14();

  return sub_223200764();
}

uint64_t sub_2231CAA9C()
{
  OUTLINED_FUNCTION_17_11();
  if (!v0)
  {
    OUTLINED_FUNCTION_14_13();
  }

  OUTLINED_FUNCTION_18_14();

  return sub_223200764();
}

uint64_t sub_2231CAB84()
{
  OUTLINED_FUNCTION_17_11();
  if (!v0)
  {
    OUTLINED_FUNCTION_2_43();
  }

  OUTLINED_FUNCTION_18_14();

  return sub_223200764();
}

uint64_t sub_2231CABF8()
{
  v0 = sub_223200744();
  OUTLINED_FUNCTION_4_39(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  OUTLINED_FUNCTION_34_5();
  sub_223200124();
  return sub_223200764();
}

uint64_t sub_2231CACA0()
{
  OUTLINED_FUNCTION_25_5();
  v0(v3, v1);
  return sub_223200764();
}

uint64_t sub_2231CACE0()
{
  OUTLINED_FUNCTION_17_11();
  if (v0)
  {
    OUTLINED_FUNCTION_15_10();
    OUTLINED_FUNCTION_16_14();
    OUTLINED_FUNCTION_11_15();
  }

  else
  {
    OUTLINED_FUNCTION_12_15();
  }

  OUTLINED_FUNCTION_18_14();

  return sub_223200764();
}

uint64_t sub_2231CAD48()
{
  OUTLINED_FUNCTION_17_11();
  OUTLINED_FUNCTION_18_14();

  return sub_223200764();
}

uint64_t sub_2231CADE0()
{
  OUTLINED_FUNCTION_25_5();
  v0(v1);
  OUTLINED_FUNCTION_10_20();

  return sub_223200764();
}

uint64_t sub_2231CAE28(uint64_t a1, char a2)
{
  sub_223200744();
  if (!a2)
  {
    OUTLINED_FUNCTION_32_3();
  }

  OUTLINED_FUNCTION_18_14();

  return sub_223200764();
}

uint64_t sub_2231CAEBC()
{
  OUTLINED_FUNCTION_17_11();
  if (!v0)
  {
    OUTLINED_FUNCTION_19_9();
  }

  OUTLINED_FUNCTION_18_14();

  return sub_223200764();
}

void *StartRootCandidateRequestMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_1();
  v7 = sub_2231FFDA4();
  v8 = OUTLINED_FUNCTION_9(v7);
  v44 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for StartRootCandidateRequestMessage.Builder(0);
  v15 = (started - 8);
  v16 = *(*(started - 8) + 64);
  MEMORY[0x28223BE20](started);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v18 = 15;
  *(v18 + 1) = 0;
  *(v18 + 2) = 0;
  v19 = v15[8];
  __swift_storeEnumTagSinglePayload(&v18[v19], 1, 1, v7);
  v20 = &v18[v15[9]];
  *v20 = 0;
  *(v20 + 1) = 0;
  v21 = v15[10];
  v18[v21] = 2;
  a1(v18);
  v22 = *v18;
  if (v22 == 15)
  {
    goto LABEL_8;
  }

  v23 = *(v18 + 2);
  if (!v23)
  {
    goto LABEL_8;
  }

  v43 = *(v18 + 1);
  sub_2230D1480(&v18[v19], v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v7) == 1)
  {
    sub_2230D69D4(v2);
LABEL_8:
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v27 = sub_223200014();
    __swift_project_value_buffer(v27, qword_280FCE830);
    v28 = sub_223200004();
    v29 = sub_223200254();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v46 = v31;
      *v30 = 136446210;
      v32 = sub_2230F7898();
      v34 = sub_2231A5D38(v32, v33, &v46);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_2230CE000, v28, v29, "Could not build %{public}s: Builder has missing required fields", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x223DD6780](v31, -1, -1);
      MEMORY[0x223DD6780](v30, -1, -1);
    }

    sub_2231CB3FC(v18);
    type metadata accessor for StartRootCandidateRequestMessage(0);
    v35 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
    v36 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v24 = v44;
  v25 = (*(v44 + 32))(v13, v2, v7);
  if (!*(v20 + 1) || (v26 = v18[v21], v26 == 2))
  {
    (*(v24 + 8))(v13, v7);
    goto LABEL_8;
  }

  v39 = *v20;
  *(v3 + OBJC_IVAR____TtC16SiriMessageTypes32StartRootCandidateRequestMessage_isSiriPrompt) = v26 & 1;
  MEMORY[0x28223BE20](v25);
  *(&v43 - 48) = v22;
  *(&v43 - 5) = v43;
  *(&v43 - 4) = v23;
  *(&v43 - 3) = v13;
  *(&v43 - 2) = v40;
  *(&v43 - 1) = v41;
  v37 = RequestMessageBase.init(build:)(sub_2230DDE2C);
  v42 = v37;
  sub_2231CB3FC(v18);
  if (v37)
  {
  }

  (*(v24 + 8))(v13, v7);
  return v37;
}

uint64_t sub_2231CB3FC(uint64_t a1)
{
  started = type metadata accessor for StartRootCandidateRequestMessage.Builder(0);
  (*(*(started - 8) + 8))(a1, started);
  return a1;
}

void *StartRootCandidateRequestMessage.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A748, &qword_22321C3C8);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231CBDFC();
  sub_223200794();
  if (v2)
  {
    v13 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for StartRootCandidateRequestMessage(0);
    v10 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
    v11 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes32StartRootCandidateRequestMessage_isSiriPrompt) = sub_223200504() & 1;
    sub_2230F7158(a1, v16);
    v13 = RequestMessageBase.init(from:)(v16);
    v14 = OUTLINED_FUNCTION_2();
    v15(v14);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v13;
}

uint64_t sub_2231CB6B8(void *a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A758, &qword_22321C3D0);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231CBDFC();
  sub_2232007A4();
  v12 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes32StartRootCandidateRequestMessage_isSiriPrompt);
  sub_223200604();
  if (!v2)
  {
    sub_2230D77A8(a1);
  }

  return (*(v8 + 8))(v3, v5);
}

BOOL sub_2231CB868@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2230F2AA8();
  *a2 = result;
  return result;
}

BOOL sub_2231CB89C@<W0>(_BYTE *a1@<X8>)
{
  result = sub_2230F2AA8();
  *a1 = result;
  return result;
}

uint64_t sub_2231CB8C8(uint64_t a1)
{
  v2 = sub_2231CBDFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231CB904(uint64_t a1)
{
  v2 = sub_2231CBDFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2231CB9A8()
{
  v9 = 0;
  v10 = 0xE000000000000000;
  sub_223200374();
  v8.receiver = v0;
  v8.super_class = type metadata accessor for StartRootCandidateRequestMessage(0);
  v1 = objc_msgSendSuper2(&v8, sel_description);
  v2 = sub_2232000C4();
  v4 = v3;

  v9 = v2;
  v10 = v4;
  MEMORY[0x223DD5AA0](0xD000000000000011, 0x80000002232260A0);
  if (*(v0 + OBJC_IVAR____TtC16SiriMessageTypes32StartRootCandidateRequestMessage_isSiriPrompt))
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC16SiriMessageTypes32StartRootCandidateRequestMessage_isSiriPrompt))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x223DD5AA0](v5, v6);

  MEMORY[0x223DD5AA0](62, 0xE100000000000000);
  return v9;
}

uint64_t StartRootCandidateRequestMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t StartRootCandidateRequestMessage.Builder.assistantId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t StartRootCandidateRequestMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StartRootCandidateRequestMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t StartRootCandidateRequestMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_33_6() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t StartRootCandidateRequestMessage.Builder.requestId.getter()
{
  v1 = (v0 + *(type metadata accessor for StartRootCandidateRequestMessage.Builder(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t StartRootCandidateRequestMessage.Builder.requestId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for StartRootCandidateRequestMessage.Builder(0) + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t StartRootCandidateRequestMessage.Builder.isSiriPrompt.setter(char a1)
{
  result = type metadata accessor for StartRootCandidateRequestMessage.Builder(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

id StartRootCandidateRequestMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StartRootCandidateRequestMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231CBDFC()
{
  result = qword_27D05A750;
  if (!qword_27D05A750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A750);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StartRootCandidateRequestMessage.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_2231CBFA0()
{
  result = qword_27D05A770;
  if (!qword_27D05A770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A770);
  }

  return result;
}

unint64_t sub_2231CBFF8()
{
  result = qword_27D05A778;
  if (!qword_27D05A778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A778);
  }

  return result;
}

unint64_t sub_2231CC050()
{
  result = qword_27D05A780;
  if (!qword_27D05A780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A780);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_25_5()
{

  return sub_223200744();
}

uint64_t OUTLINED_FUNCTION_33_6()
{

  return type metadata accessor for StartRootCandidateRequestMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_35_5()
{

  return sub_2230E1000();
}

void *StartRootLocalRequestMessage.optionalRequestContextData.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes28StartRootLocalRequestMessage_optionalRequestContextData);
  v2 = v1;
  return v1;
}

void *StartRootLocalRequestMessage.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A788, &qword_22321C5B0);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2230DB430();
  sub_223200794();
  if (v2)
  {
    v10 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for StartRootLocalRequestMessage(0);
    v11 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
    v12 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_2231C71DC();
    OUTLINED_FUNCTION_2_6();
    sub_223200554();
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes28StartRootLocalRequestMessage_inputOrigin) = v17;
    v19 = 1;
    sub_2230FB7A0();
    OUTLINED_FUNCTION_2_6();
    sub_2232004C4();
    if (v18 >> 60 == 15)
    {
      v14 = 0;
    }

    else
    {
      sub_2231717C8();
      type metadata accessor for RequestContextData(0);
      v14 = sub_223200264();
      sub_22310A610(v17, v18);
    }

    *(v3 + OBJC_IVAR____TtC16SiriMessageTypes28StartRootLocalRequestMessage_optionalRequestContextData) = v14;
    sub_2230F7158(a1, &v17);
    v10 = RequestMessageBase.init(from:)(&v17);
    v15 = OUTLINED_FUNCTION_2();
    v16(v15);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v10;
}

uint64_t StartRootLocalRequestMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t StartRootLocalRequestMessage.Builder.assistantId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t StartRootLocalRequestMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StartRootLocalRequestMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t StartRootLocalRequestMessage.Builder.requestId.getter()
{
  v1 = (v0 + *(type metadata accessor for StartRootLocalRequestMessage.Builder(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t StartRootLocalRequestMessage.Builder.inputOrigin.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StartRootLocalRequestMessage.Builder(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

void *StartRootLocalRequestMessage.Builder.requestContextData.getter()
{
  v1 = *(v0 + *(type metadata accessor for StartRootLocalRequestMessage.Builder(0) + 36));
  v2 = v1;
  return v1;
}

uint64_t sub_2231CC7D0(uint64_t a1)
{
  v2 = sub_2230DB430();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231CC80C(uint64_t a1)
{
  v2 = sub_2230DB430();

  return MEMORY[0x2821FE720](a1, v2);
}

id StartRootLocalRequestMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StartRootLocalRequestMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231CC97C()
{
  result = qword_27D05A7B0;
  if (!qword_27D05A7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A7B0);
  }

  return result;
}

unint64_t sub_2231CC9D4()
{
  result = qword_27D05A7B8;
  if (!qword_27D05A7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A7B8);
  }

  return result;
}

unint64_t sub_2231CCA2C()
{
  result = qword_27D05A7C0;
  if (!qword_27D05A7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A7C0);
  }

  return result;
}

void *StartRootSpeechRequestMessage.optionalRequestContextData.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes29StartRootSpeechRequestMessage_optionalRequestContextData);
  v2 = v1;
  return v1;
}

void *StartRootSpeechRequestMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v57 = v1;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v51 - v5;
  v7 = sub_2231FFDA4();
  v8 = OUTLINED_FUNCTION_9(v7);
  v53 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v54 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for StartRootSpeechRequestMessage.Builder(0);
  v14 = (started - 8);
  v15 = *(*(started - 8) + 64);
  MEMORY[0x28223BE20](started);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v17 = 15;
  *(v17 + 1) = 0;
  *(v17 + 2) = 0;
  v18 = v14[8];
  v55 = v7;
  __swift_storeEnumTagSinglePayload(&v17[v18], 1, 1, v7);
  v19 = &v17[v14[9]];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = v14[10];
  v17[v20] = 19;
  v21 = v14[11];
  *&v17[v21] = 0;
  v22 = v14[12];
  v17[v22] = 2;
  v23 = v14[13];
  *&v17[v23] = 0;
  a1(v17);
  v24 = *v17;
  if (v24 == 15 || !*(v17 + 2))
  {
    goto LABEL_9;
  }

  v52 = *(v17 + 2);
  v51 = *(v17 + 1);
  sub_2230D1480(&v17[v18], v6);
  v25 = v55;
  if (__swift_getEnumTagSinglePayload(v6, 1, v55) == 1)
  {
    sub_2230D69D4(v6);
LABEL_9:
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v29 = sub_223200014();
    __swift_project_value_buffer(v29, qword_280FCE830);
    v30 = sub_223200004();
    v31 = sub_223200254();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v58 = v33;
      *v32 = 136446210;
      v34 = sub_2230F7898();
      v36 = sub_2231A5D38(v34, v35, &v58);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_2230CE000, v30, v31, "Could not build %{public}s: Builder has missing required fields", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x223DD6780](v33, -1, -1);
      MEMORY[0x223DD6780](v32, -1, -1);
    }

    sub_2231CCFEC(v17);
    type metadata accessor for StartRootSpeechRequestMessage(0);
    v37 = *((*MEMORY[0x277D85000] & *v57) + 0x30);
    v38 = *((*MEMORY[0x277D85000] & *v57) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v26 = v53;
  (*(v53 + 32))(v54, v6, v25);
  if (!*(v19 + 1) || (v27 = v17[v20], v27 == 19) || (v28 = v17[v22], v28 == 2))
  {
    (*(v26 + 8))(v54, v25);
    goto LABEL_9;
  }

  v41 = v57;
  *(v57 + OBJC_IVAR____TtC16SiriMessageTypes29StartRootSpeechRequestMessage_inputOrigin) = v27;
  v42 = *&v17[v23];
  *(v41 + OBJC_IVAR____TtC16SiriMessageTypes29StartRootSpeechRequestMessage_optionalRequestContextData) = v42;
  v43 = *&v17[v21];
  *(v41 + OBJC_IVAR____TtC16SiriMessageTypes29StartRootSpeechRequestMessage_location) = v43;
  v44 = *v19;
  *(v41 + OBJC_IVAR____TtC16SiriMessageTypes29StartRootSpeechRequestMessage_asrOnServer) = v28 & 1;
  MEMORY[0x28223BE20](v43);
  *(&v51 - 48) = v24;
  v45 = v52;
  *(&v51 - 5) = v51;
  *(&v51 - 4) = v45;
  v46 = v54;
  *(&v51 - 3) = v54;
  *(&v51 - 2) = v47;
  *(&v51 - 1) = v48;

  v49 = v42;
  v39 = RequestMessageBase.init(build:)(sub_2230DDE2C);
  v50 = v39;
  sub_2231CCFEC(v17);
  if (v39)
  {
  }

  (*(v53 + 8))(v46, v55);
  return v39;
}

uint64_t sub_2231CCFEC(uint64_t a1)
{
  started = type metadata accessor for StartRootSpeechRequestMessage.Builder(0);
  (*(*(started - 8) + 8))(a1, started);
  return a1;
}

void *StartRootSpeechRequestMessage.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A7C8, &qword_22321C778);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231CE058();
  sub_223200794();
  if (v2)
  {
    v10 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for StartRootSpeechRequestMessage(0);
    v11 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
    v12 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_2231C71DC();
    OUTLINED_FUNCTION_2_6();
    sub_223200554();
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes29StartRootSpeechRequestMessage_inputOrigin) = v17;
    v19 = 1;
    sub_2230FB7A0();
    OUTLINED_FUNCTION_2_6();
    sub_2232004C4();
    if (v18 >> 60 == 15)
    {
      v14 = 0;
    }

    else
    {
      sub_2231717C8();
      type metadata accessor for RequestContextData(0);
      v14 = sub_223200264();
      sub_22310A610(v17, v18);
    }

    *(v3 + OBJC_IVAR____TtC16SiriMessageTypes29StartRootSpeechRequestMessage_optionalRequestContextData) = v14;
    type metadata accessor for Location();
    v19 = 2;
    sub_2230E7514(&qword_27D05A7D0);
    sub_2232004C4();
    *(v3 + OBJC_IVAR____TtC16SiriMessageTypes29StartRootSpeechRequestMessage_location) = v17;
    LOBYTE(v17) = 3;
    *(v3 + OBJC_IVAR____TtC16SiriMessageTypes29StartRootSpeechRequestMessage_asrOnServer) = sub_223200504() & 1;
    sub_2230F7158(a1, &v17);
    v10 = RequestMessageBase.init(from:)(&v17);
    v15 = OUTLINED_FUNCTION_2();
    v16(v15);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v10;
}

uint64_t sub_2231CD49C(void *a1)
{
  v3 = v1;
  v25[2] = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A7D8, &qword_22321C780);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231CE058();
  sub_2232007A4();
  LOBYTE(v25[0]) = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes29StartRootSpeechRequestMessage_inputOrigin);
  sub_2230DB484();
  OUTLINED_FUNCTION_1_27();
  sub_223200654();
  if (!v2)
  {
    v14 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes29StartRootSpeechRequestMessage_optionalRequestContextData);
    if (v14)
    {
      v15 = objc_opt_self();
      v25[0] = 0;
      v16 = v14;
      v17 = [v15 archivedDataWithRootObject:v16 requiringSecureCoding:1 error:v25];
      v18 = v25[0];
      if (!v17)
      {
        v22 = v18;
        sub_2231FFD04();

        swift_willThrow();
        goto LABEL_2;
      }

      v24 = v16;
      v19 = sub_2231FFD24();
      v21 = v20;

      v25[0] = v19;
      v25[1] = v21;
      sub_2230D7754();
      OUTLINED_FUNCTION_1_27();
      sub_223200654();

      sub_2230D94DC(v19, v21);
    }

    if (*(v3 + OBJC_IVAR____TtC16SiriMessageTypes29StartRootSpeechRequestMessage_location))
    {
      v25[0] = *(v3 + OBJC_IVAR____TtC16SiriMessageTypes29StartRootSpeechRequestMessage_location);
      type metadata accessor for Location();
      sub_2230E7514(&qword_280FCA720);

      sub_223200654();
    }

    v23 = *(v3 + OBJC_IVAR____TtC16SiriMessageTypes29StartRootSpeechRequestMessage_asrOnServer);
    LOBYTE(v25[0]) = 3;
    OUTLINED_FUNCTION_1_27();
    sub_223200604();
    sub_2230D77A8(a1);
  }

LABEL_2:
  v10 = OUTLINED_FUNCTION_10_12();
  result = v11(v10);
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t StartRootSpeechRequestMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t StartRootSpeechRequestMessage.Builder.assistantId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t StartRootSpeechRequestMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StartRootSpeechRequestMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t StartRootSpeechRequestMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_6_28() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t StartRootSpeechRequestMessage.Builder.requestId.getter()
{
  v1 = (v0 + *(type metadata accessor for StartRootSpeechRequestMessage.Builder(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t StartRootSpeechRequestMessage.Builder.requestId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for StartRootSpeechRequestMessage.Builder(0) + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t StartRootSpeechRequestMessage.Builder.inputOrigin.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StartRootSpeechRequestMessage.Builder(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t StartRootSpeechRequestMessage.Builder.inputOrigin.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for StartRootSpeechRequestMessage.Builder(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

uint64_t StartRootSpeechRequestMessage.Builder.location.getter()
{
  v1 = *(v0 + *(type metadata accessor for StartRootSpeechRequestMessage.Builder(0) + 36));
}

uint64_t StartRootSpeechRequestMessage.Builder.location.setter()
{
  v2 = *(OUTLINED_FUNCTION_6_28() + 36);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t StartRootSpeechRequestMessage.Builder.asrOnServer.setter(char a1)
{
  result = type metadata accessor for StartRootSpeechRequestMessage.Builder(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

void *StartRootSpeechRequestMessage.Builder.requestContextData.getter()
{
  v1 = *(v0 + *(type metadata accessor for StartRootSpeechRequestMessage.Builder(0) + 44));
  v2 = v1;
  return v1;
}

void StartRootSpeechRequestMessage.Builder.requestContextData.setter()
{
  v2 = *(OUTLINED_FUNCTION_6_28() + 44);

  *(v1 + v2) = v0;
}

uint64_t sub_2231CDCBC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69724F7475706E69 && a2 == 0xEB000000006E6967;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001ALL && 0x8000000223226530 == a2;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000;
      if (v7 || (sub_2232006B4() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x7265536E4F727361 && a2 == 0xEB00000000726576)
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

unint64_t sub_2231CDE24(char a1)
{
  result = 0x69724F7475706E69;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001ALL;
      break;
    case 2:
      result = 0x6E6F697461636F6CLL;
      break;
    case 3:
      result = 0x7265536E4F727361;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2231CDEC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231CDCBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2231CDEEC(uint64_t a1)
{
  v2 = sub_2231CE058();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231CDF28(uint64_t a1)
{
  v2 = sub_2231CE058();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2231CDF94()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes29StartRootSpeechRequestMessage_location);
}

id StartRootSpeechRequestMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StartRootSpeechRequestMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231CE058()
{
  result = qword_280FCC768;
  if (!qword_280FCC768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCC768);
  }

  return result;
}

uint64_t sub_2231CE160()
{
  sub_2230D525C(319, &qword_280FCB0A8);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_2231C238C(319, &qword_280FCE678, MEMORY[0x277CC95F0]);
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_2230D525C(319, &qword_280FCACC0);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          sub_2231C238C(319, qword_280FCA608, type metadata accessor for Location);
          v1 = v9;
          if (v10 <= 0x3F)
          {
            sub_2230D525C(319, &qword_280FCA440);
            v1 = v11;
            if (v12 <= 0x3F)
            {
              sub_2231C238C(319, &qword_280FCA900, type metadata accessor for RequestContextData);
              v1 = v13;
              if (v14 <= 0x3F)
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

  return v1;
}

_BYTE *storeEnumTagSinglePayload for StartRootSpeechRequestMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2231CE3F8()
{
  result = qword_27D05A7E0;
  if (!qword_27D05A7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A7E0);
  }

  return result;
}

unint64_t sub_2231CE450()
{
  result = qword_280FCC758;
  if (!qword_280FCC758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCC758);
  }

  return result;
}

unint64_t sub_2231CE4A8()
{
  result = qword_280FCC760;
  if (!qword_280FCC760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCC760);
  }

  return result;
}

void *StartRootTextRequestMessage.optionalRequestContextData.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes27StartRootTextRequestMessage_optionalRequestContextData);
  v2 = v1;
  return v1;
}

uint64_t StartRootTextRequestMessage.textRequestType.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes27StartRootTextRequestMessage_textRequestType);
  v3 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes27StartRootTextRequestMessage_textRequestType + 8);
  *a1 = v2;
  a1[1] = v3;
  return sub_2230D7C34(v2, v3);
}

void *StartRootTextRequestMessage.init(build:)(uint64_t (*a1)(char *))
{
  v2 = v1;
  swift_getObjectType();
  started = type metadata accessor for StartRootTextRequestMessage.Builder(0);
  v5 = (started - 8);
  v6 = *(*(started - 8) + 64);
  MEMORY[0x28223BE20](started);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v8 = 15;
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  v9 = v5[8];
  v10 = sub_2231FFDA4();
  __swift_storeEnumTagSinglePayload(&v8[v9], 1, 1, v10);
  v11 = &v8[v5[9]];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = v5[10];
  v8[v12] = 19;
  v13 = v5[11];
  *&v8[v13] = 0;
  v14 = &v8[v5[12]];
  *v14 = xmmword_223203230;
  v15 = a1(v8);
  v16 = v8[v12];
  if (v16 == 19)
  {
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v17 = sub_223200014();
    __swift_project_value_buffer(v17, qword_280FCE830);
    v18 = sub_223200004();
    v19 = sub_223200254();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v37 = v21;
      *v20 = 136446210;
      v22 = sub_2230F7898();
      v24 = sub_2231A5D38(v22, v23, &v37);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_2230CE000, v18, v19, "Could not build %{public}s: Builder has missing required fields", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x223DD6780](v21, -1, -1);
      MEMORY[0x223DD6780](v20, -1, -1);
    }

    sub_2231CE8F4(v8);
    type metadata accessor for StartRootTextRequestMessage(0);
    v25 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
    v26 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes27StartRootTextRequestMessage_inputOrigin) = v16;
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes27StartRootTextRequestMessage_optionalRequestContextData) = *&v8[v13];
    v28 = *v14;
    v29 = v14[1];
    if (v29 == 2)
    {
      v30 = 0;
    }

    else
    {
      v30 = *v14;
    }

    if (v29 == 2)
    {
      v31 = 1;
    }

    else
    {
      v31 = v14[1];
    }

    v32 = (v2 + OBJC_IVAR____TtC16SiriMessageTypes27StartRootTextRequestMessage_textRequestType);
    *v32 = v30;
    v32[1] = v31;
    MEMORY[0x28223BE20](v15);
    *(&v36 - 2) = v8;
    v34 = v33;
    sub_2231C3E44(v28, v29);
    v27 = RequestMessageBase.init(build:)(sub_2231CF7F4);
    sub_2231CE8F4(v8);
  }

  return v27;
}

uint64_t sub_2231CE8F4(uint64_t a1)
{
  started = type metadata accessor for StartRootTextRequestMessage.Builder(0);
  (*(*(started - 8) + 8))(a1, started);
  return a1;
}

uint64_t sub_2231CE970(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  v6 = *(a1 + 16);

  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  started = type metadata accessor for StartRootTextRequestMessage.Builder(0);
  v8 = *(started + 24);
  v9 = type metadata accessor for RequestMessageBase.Builder(0);
  sub_2230DAEC8(a2 + v8, a1 + *(v9 + 24));
  v10 = (a2 + *(started + 28));
  v12 = *v10;
  v11 = v10[1];
  v13 = (a1 + *(v9 + 28));
  v14 = v13[1];

  *v13 = v12;
  v13[1] = v11;
  return result;
}

void *StartRootTextRequestMessage.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A7E8, &qword_22321C960);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231CF7FC();
  sub_223200794();
  if (v2)
  {
    v10 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for StartRootTextRequestMessage(0);
    v11 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
    v12 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_2231C71DC();
    OUTLINED_FUNCTION_4_29();
    sub_223200554();
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes27StartRootTextRequestMessage_inputOrigin) = v17[0];
    v18 = 1;
    sub_2230FB7A0();
    OUTLINED_FUNCTION_4_29();
    sub_2232004C4();
    if (v17[1] >> 60 == 15)
    {
      v14 = 0;
    }

    else
    {
      sub_2231717C8();
      type metadata accessor for RequestContextData(0);
      v14 = sub_223200264();
      sub_22310A610(v17[0], v17[1]);
    }

    *(v3 + OBJC_IVAR____TtC16SiriMessageTypes27StartRootTextRequestMessage_optionalRequestContextData) = v14;
    v18 = 2;
    sub_2231C3EA8();
    OUTLINED_FUNCTION_4_29();
    sub_223200554();
    *(v3 + OBJC_IVAR____TtC16SiriMessageTypes27StartRootTextRequestMessage_textRequestType) = *v17;
    sub_2230F7158(a1, v17);
    v10 = RequestMessageBase.init(from:)(v17);
    v15 = OUTLINED_FUNCTION_2();
    v16(v15);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v10;
}

uint64_t sub_2231CED98(void *a1)
{
  v3 = v1;
  v31 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A7F0, &unk_22321C968);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v26 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231CF7FC();
  sub_2232007A4();
  LOBYTE(v29) = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes27StartRootTextRequestMessage_inputOrigin);
  v28 = 0;
  sub_2230DB484();
  OUTLINED_FUNCTION_2_45();
  if (!v2)
  {
    v16 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes27StartRootTextRequestMessage_optionalRequestContextData);
    if (v16)
    {
      v17 = objc_opt_self();
      v29 = 0;
      v18 = v16;
      v19 = [v17 archivedDataWithRootObject:v18 requiringSecureCoding:1 error:&v29];
      v20 = v29;
      if (!v19)
      {
        v24 = v20;
        sub_2231FFD04();

        swift_willThrow();
        goto LABEL_2;
      }

      v27 = v18;
      v21 = sub_2231FFD24();
      v23 = v22;

      v29 = v21;
      v30 = v23;
      v28 = 1;
      sub_2230D7754();
      OUTLINED_FUNCTION_2_45();

      sub_2230D94DC(v21, v23);
    }

    v25 = *(v3 + OBJC_IVAR____TtC16SiriMessageTypes27StartRootTextRequestMessage_textRequestType + 8);
    v29 = *(v3 + OBJC_IVAR____TtC16SiriMessageTypes27StartRootTextRequestMessage_textRequestType);
    v30 = v25;
    v28 = 2;
    sub_2230D7C34(v29, v25);
    sub_2231C3EFC();
    OUTLINED_FUNCTION_2_45();
    sub_2230D7BB4(v29, v30);
    sub_2230D77A8(a1);
  }

LABEL_2:
  result = (*(v8 + 8))(v12, v5);
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t StartRootTextRequestMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t StartRootTextRequestMessage.Builder.assistantId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t StartRootTextRequestMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StartRootTextRequestMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t StartRootTextRequestMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_4_40() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t StartRootTextRequestMessage.Builder.requestId.getter()
{
  v1 = (v0 + *(type metadata accessor for StartRootTextRequestMessage.Builder(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t StartRootTextRequestMessage.Builder.requestId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for StartRootTextRequestMessage.Builder(0) + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t StartRootTextRequestMessage.Builder.inputOrigin.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StartRootTextRequestMessage.Builder(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t StartRootTextRequestMessage.Builder.inputOrigin.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for StartRootTextRequestMessage.Builder(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

void *StartRootTextRequestMessage.Builder.requestContextData.getter()
{
  v1 = *(v0 + *(type metadata accessor for StartRootTextRequestMessage.Builder(0) + 36));
  v2 = v1;
  return v1;
}

void StartRootTextRequestMessage.Builder.requestContextData.setter()
{
  v2 = *(OUTLINED_FUNCTION_4_40() + 36);

  *(v1 + v2) = v0;
}

uint64_t StartRootTextRequestMessage.Builder.textRequestType.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for StartRootTextRequestMessage.Builder(0) + 40));
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;

  return sub_2231C3E44(v4, v5);
}

uint64_t StartRootTextRequestMessage.Builder.textRequestType.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for StartRootTextRequestMessage.Builder(0) + 40));
  result = sub_2231C3F50(*v4, v4[1]);
  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t sub_2231CF4BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69724F7475706E69 && a2 == 0xEB000000006E6967;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001ALL && 0x8000000223226530 == a2;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7571655274786574 && a2 == 0xEF65707954747365)
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

uint64_t sub_2231CF5E0(char a1)
{
  if (!a1)
  {
    return 0x69724F7475706E69;
  }

  if (a1 == 1)
  {
    return 0xD00000000000001ALL;
  }

  return 0x7571655274786574;
}

uint64_t sub_2231CF658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231CF4BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2231CF680(uint64_t a1)
{
  v2 = sub_2231CF7FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231CF6BC(uint64_t a1)
{
  v2 = sub_2231CF7FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2231CF728()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes27StartRootTextRequestMessage_textRequestType);
  v2 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes27StartRootTextRequestMessage_textRequestType + 8);

  return sub_2230D7BB4(v1, v2);
}

id StartRootTextRequestMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StartRootTextRequestMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231CF7FC()
{
  result = qword_280FCCCD0;
  if (!qword_280FCCCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCCCD0);
  }

  return result;
}

uint64_t sub_2231CF904()
{
  sub_2230D525C(319, &qword_280FCB0A8);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_2231C08B4(319, &qword_280FCE678, MEMORY[0x277CC95F0]);
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_2230D525C(319, &qword_280FCACC0);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          sub_2231C08B4(319, &qword_280FCA900, type metadata accessor for RequestContextData);
          v1 = v9;
          if (v10 <= 0x3F)
          {
            sub_2230D525C(319, &qword_280FCAB58);
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

_BYTE *storeEnumTagSinglePayload for StartRootTextRequestMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2231CFB64()
{
  result = qword_27D05A7F8;
  if (!qword_27D05A7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A7F8);
  }

  return result;
}

unint64_t sub_2231CFBBC()
{
  result = qword_280FCCCC0;
  if (!qword_280FCCCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCCCC0);
  }

  return result;
}

unint64_t sub_2231CFC14()
{
  result = qword_280FCCCC8;
  if (!qword_280FCCCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCCCC8);
  }

  return result;
}

uint64_t sub_2231CFC78(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000223226800 == a2)
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

uint64_t sub_2231CFD18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231CFC78(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2231CFD44(uint64_t a1)
{
  v2 = sub_2231D0F04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231CFD80(uint64_t a1)
{
  v2 = sub_2231D0F04();

  return MEMORY[0x2821FE720](a1, v2);
}

void *StartSpeechDictationRequestMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v53 = v1;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v49 - v5;
  v7 = sub_2231FFDA4();
  v8 = OUTLINED_FUNCTION_9(v7);
  v51 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v50 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for StartSpeechDictationRequestMessage.Builder(0);
  v14 = (started - 8);
  v15 = *(*(started - 8) + 64);
  MEMORY[0x28223BE20](started);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v17 = 15;
  *(v17 + 1) = 0;
  *(v17 + 2) = 0;
  v18 = v14[8];
  __swift_storeEnumTagSinglePayload(&v17[v18], 1, 1, v7);
  v19 = &v17[v14[9]];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = v14[10];
  v17[v20] = 19;
  v21 = v14[11];
  *&v17[v21] = 0;
  a1(v17);
  v22 = *v17;
  if (v22 == 15)
  {
    goto LABEL_12;
  }

  v23 = *(v17 + 2);
  if (!v23)
  {
    goto LABEL_12;
  }

  v24 = *(v17 + 1);
  sub_2230D1480(&v17[v18], v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_2230D69D4(v6);
LABEL_12:
    if (qword_280FCA778 != -1)
    {
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
      v54 = v42;
      *v41 = 136446210;
      v43 = sub_2230F7898();
      v45 = sub_2231A5D38(v43, v44, &v54);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_2230CE000, v39, v40, "Could not build %{public}s: Builder has missing required fields", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x223DD6780](v42, -1, -1);
      MEMORY[0x223DD6780](v41, -1, -1);
    }

    sub_2231D02B4(v17);
    type metadata accessor for StartSpeechDictationRequestMessage(0);
    v46 = *((*MEMORY[0x277D85000] & *v53) + 0x30);
    v47 = *((*MEMORY[0x277D85000] & *v53) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v49 = v24;
  v26 = v50;
  v25 = v51;
  v27 = (*(v51 + 32))(v50, v6, v7);
  if (!*(v19 + 1) || v17[v20] == 19 || (v28 = *&v17[v21]) == 0)
  {
    (*(v25 + 8))(v26, v7);
    goto LABEL_12;
  }

  v29 = *v19;
  v30 = v26;
  *(v53 + OBJC_IVAR____TtC16SiriMessageTypes34StartSpeechDictationRequestMessage_dictationOptions) = v28;
  MEMORY[0x28223BE20](v27);
  *(&v49 - 64) = v22;
  *(&v49 - 7) = v49;
  *(&v49 - 6) = v23;
  *(&v49 - 5) = v26;
  *(&v49 - 4) = v31;
  *(&v49 - 3) = v32;
  *(&v49 - 16) = v33;
  v35 = v34;
  v36 = StartRequestMessageBase.init(build:)(sub_2231D0EEC);
  v37 = v36;

  sub_2231D02B4(v17);
  if (v36)
  {
  }

  (*(v51 + 8))(v30, v7);
  return v36;
}

uint64_t sub_2231D02B4(uint64_t a1)
{
  started = type metadata accessor for StartSpeechDictationRequestMessage.Builder(0);
  (*(*(started - 8) + 8))(a1, started);
  return a1;
}

uint64_t sub_2231D0330(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *a1 = a2;
  v15 = *(a1 + 16);

  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  started = type metadata accessor for StartRequestMessageBase.Builder(0);
  v17 = started[6];
  sub_2230D69D4(a1 + v17);
  v18 = sub_2231FFDA4();
  (*(*(v18 - 8) + 16))(a1 + v17, a5, v18);
  __swift_storeEnumTagSinglePayload(a1 + v17, 0, 1, v18);
  v19 = (a1 + started[7]);
  v20 = v19[1];

  *v19 = a6;
  v19[1] = a7;
  *(a1 + started[8]) = a8;
  return result;
}

void *StartSpeechDictationRequestMessage.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A800, &qword_22321CB48);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231D0F04();
  sub_223200794();
  if (!v2)
  {
    sub_2230FB7A0();
    sub_223200554();
    sub_2230FB7F4(0, &qword_27D0576E8, 0x277CCAAC8);
    sub_2230FB7F4(0, &qword_27D05A810, 0x277CEF280);
    v12 = sub_223200264();
    v17 = v12;
    if (v12)
    {
      *(v3 + OBJC_IVAR____TtC16SiriMessageTypes34StartSpeechDictationRequestMessage_dictationOptions) = v12;
      sub_2230F7158(a1, &v21);
      v22 = v17;
      v13 = StartRequestMessageBase.init(from:)(&v21);
      v19 = OUTLINED_FUNCTION_2();
      v20(v19);
      OUTLINED_FUNCTION_5_1();

      __swift_destroy_boxed_opaque_existential_1(a1);
      return v13;
    }

    sub_2230F9E38();
    swift_allocError();
    *v18 = 0xD000000000000026;
    *(v18 + 8) = 0x8000000223226730;
    *(v18 + 16) = 0;
    swift_willThrow();
    OUTLINED_FUNCTION_5_1();
    v10 = OUTLINED_FUNCTION_2();
    v11(v10);
  }

  v13 = 0;
  __swift_destroy_boxed_opaque_existential_1(a1);
  type metadata accessor for StartSpeechDictationRequestMessage(0);
  v14 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
  v15 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
  swift_deallocPartialClassInstance();
  return v13;
}

uint64_t sub_2231D0770(void *a1)
{
  v24[2] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A818, &qword_22321CB50);
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v24[-1] - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231D0F04();
  sub_2232007A4();
  v13 = objc_opt_self();
  v14 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes34StartSpeechDictationRequestMessage_dictationOptions);
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
      sub_2230DEEE4(a1);
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

uint64_t sub_2231D09A4()
{
  v7 = 0;
  v8 = 0xE000000000000000;
  sub_223200374();
  v6.receiver = v0;
  v6.super_class = type metadata accessor for StartSpeechDictationRequestMessage(0);
  v1 = objc_msgSendSuper2(&v6, sel_description);
  v2 = sub_2232000C4();
  v4 = v3;

  v7 = v2;
  v8 = v4;
  MEMORY[0x223DD5AA0](0xD00000000000001FLL, 0x8000000223226760);
  return v7;
}

id sub_2231D0A6C(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_2232000A4();

  return v5;
}

uint64_t StartSpeechDictationRequestMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t StartSpeechDictationRequestMessage.Builder.assistantId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t StartSpeechDictationRequestMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StartSpeechDictationRequestMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t StartSpeechDictationRequestMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_2_46() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t StartSpeechDictationRequestMessage.Builder.requestId.getter()
{
  v1 = (v0 + *(type metadata accessor for StartSpeechDictationRequestMessage.Builder(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t StartSpeechDictationRequestMessage.Builder.requestId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for StartSpeechDictationRequestMessage.Builder(0) + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t StartSpeechDictationRequestMessage.Builder.inputOrigin.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StartSpeechDictationRequestMessage.Builder(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t StartSpeechDictationRequestMessage.Builder.inputOrigin.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for StartSpeechDictationRequestMessage.Builder(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

void *StartSpeechDictationRequestMessage.Builder.dictationOptions.getter()
{
  v1 = *(v0 + *(type metadata accessor for StartSpeechDictationRequestMessage.Builder(0) + 36));
  v2 = v1;
  return v1;
}

void StartSpeechDictationRequestMessage.Builder.dictationOptions.setter()
{
  v2 = *(OUTLINED_FUNCTION_2_46() + 36);

  *(v1 + v2) = v0;
}

id StartSpeechDictationRequestMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StartSpeechDictationRequestMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231D0F04()
{
  result = qword_27D05A808;
  if (!qword_27D05A808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A808);
  }

  return result;
}

uint64_t sub_2231D0FFC()
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
        sub_2230D525C(319, &qword_280FCACC0);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          sub_2231D1118();
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

void sub_2231D1118()
{
  if (!qword_27D05A830)
  {
    sub_2230FB7F4(255, &qword_27D05A810, 0x277CEF280);
    v0 = sub_2232002D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27D05A830);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for StartSpeechDictationRequestMessage.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_2231D1230()
{
  result = qword_27D05A838;
  if (!qword_27D05A838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A838);
  }

  return result;
}

unint64_t sub_2231D1288()
{
  result = qword_27D05A840;
  if (!qword_27D05A840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A840);
  }

  return result;
}

unint64_t sub_2231D12E0()
{
  result = qword_27D05A848;
  if (!qword_27D05A848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A848);
  }

  return result;
}

uint64_t sub_2231D1344(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65676175676E616CLL && a2 == 0xEC00000065646F43;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x80000002232268A0 == a2;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x644972657375 && a2 == 0xE600000000000000)
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

uint64_t sub_2231D145C(char a1)
{
  if (!a1)
  {
    return 0x65676175676E616CLL;
  }

  if (a1 == 1)
  {
    return 0xD000000000000013;
  }

  return 0x644972657375;
}

uint64_t sub_2231D14C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231D1344(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2231D14EC(uint64_t a1)
{
  v2 = sub_2231D263C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231D1528(uint64_t a1)
{
  v2 = sub_2231D263C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StartSpeechDictationSessionMessage.languageCode.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes34StartSpeechDictationSessionMessage_languageCode);
  v2 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes34StartSpeechDictationSessionMessage_languageCode + 8);

  return v1;
}

uint64_t StartSpeechDictationSessionMessage.userId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes34StartSpeechDictationSessionMessage_userId + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes34StartSpeechDictationSessionMessage_userId);
  a1[1] = v2;
}

void *StartSpeechDictationSessionMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v78 = v1;
  ObjectType = swift_getObjectType();
  v3 = sub_2231FFC84();
  v4 = OUTLINED_FUNCTION_9(v3);
  v72 = v5;
  v73 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_2();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v69 - v13;
  v15 = sub_2231FFDA4();
  v16 = OUTLINED_FUNCTION_9(v15);
  v75 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2_2();
  v74 = v21 - v20;
  started = type metadata accessor for StartSpeechDictationSessionMessage.Builder(0);
  v23 = (started - 8);
  v24 = *(*(started - 8) + 64);
  MEMORY[0x28223BE20](started);
  OUTLINED_FUNCTION_2_2();
  v27 = (v26 - v25);
  *v27 = 15;
  *(v27 + 1) = 0;
  *(v27 + 2) = 0;
  v28 = v23[8];
  v76 = v15;
  __swift_storeEnumTagSinglePayload(v26 - v25 + v28, 1, 1, v15);
  v29 = &v27[v23[9]];
  *v29 = 0;
  v29[1] = 0;
  v30 = v23[10];
  v27[v30] = 1;
  v31 = &v27[v23[11]];
  *v31 = 0xD000000000000024;
  *(v31 + 1) = 0x80000002232216F0;
  a1(v27);
  v32 = *v27;
  if (v32 == 15)
  {
    goto LABEL_13;
  }

  v33 = *(v27 + 2);
  if (!v33)
  {
    goto LABEL_13;
  }

  v34 = *(v27 + 1);
  sub_2230D1480(&v27[v28], v14);
  v35 = v76;
  if (__swift_getEnumTagSinglePayload(v14, 1, v76) == 1)
  {
    sub_2230D69D4(v14);
LABEL_13:
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
      v56 = swift_slowAlloc();
      v79[0] = v56;
      *v55 = 136446210;
      v57 = sub_2230F7898();
      v59 = sub_2231A5D38(v57, v58, v79);

      *(v55 + 4) = v59;
      _os_log_impl(&dword_2230CE000, v53, v54, "Could not build %{public}s: Builder has missing required fields", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v56);
      MEMORY[0x223DD6780](v56, -1, -1);
      MEMORY[0x223DD6780](v55, -1, -1);
    }

    sub_2231D1C44(v27);
LABEL_18:
    type metadata accessor for StartSpeechDictationSessionMessage(0);
    v60 = *((*MEMORY[0x277D85000] & *v78) + 0x30);
    v61 = *((*MEMORY[0x277D85000] & *v78) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v70 = v34;
  v71 = v33;
  v37 = v74;
  v36 = v75;
  (*(v75 + 32))(v74, v14, v35);
  v38 = v29[1];
  if (!v38)
  {
    (*(v36 + 8))(v37, v35);
    goto LABEL_13;
  }

  v79[0] = *v29;
  v79[1] = v38;
  sub_2231FFC74();
  sub_2230D1D30();
  v39 = sub_2232002E4();
  v41 = v40;
  (*(v72 + 8))(v10, v73);
  v42 = HIBYTE(v41) & 0xF;
  if ((v41 & 0x2000000000000000) == 0)
  {
    v42 = v39 & 0xFFFFFFFFFFFFLL;
  }

  if (!v42)
  {

    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v63 = sub_223200014();
    __swift_project_value_buffer(v63, qword_280FCE830);
    v64 = sub_223200004();
    v65 = sub_223200254();
    v66 = os_log_type_enabled(v64, v65);
    v67 = v74;
    if (v66)
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&dword_2230CE000, v64, v65, "languageCode is empty, cannot create StartDitationSessionMessage", v68, 2u);
      MEMORY[0x223DD6780](v68, -1, -1);
    }

    sub_2231D1C44(v27);
    (*(v75 + 8))(v67, v35);
    goto LABEL_18;
  }

  v43 = v78;
  v44 = (v78 + OBJC_IVAR____TtC16SiriMessageTypes34StartSpeechDictationSessionMessage_languageCode);
  v45 = v27[v30];
  *v44 = v39;
  v44[1] = v41;
  *(v43 + OBJC_IVAR____TtC16SiriMessageTypes34StartSpeechDictationSessionMessage_recognitionOnDevice) = v45;
  v46 = *(v31 + 1);
  v47 = (v43 + OBJC_IVAR____TtC16SiriMessageTypes34StartSpeechDictationSessionMessage_userId);
  *v47 = *v31;
  v47[1] = v46;
  MEMORY[0x28223BE20](v46);
  *(&v69 - 32) = v32;
  v48 = v71;
  *(&v69 - 3) = v70;
  *(&v69 - 2) = v48;
  v49 = v74;
  *(&v69 - 1) = v74;

  v50 = SessionMessageBase.init(build:)(sub_2230D69C4);
  v51 = v50;
  sub_2231D1C44(v27);
  if (v50)
  {
  }

  (*(v75 + 8))(v49, v76);
  return v50;
}

uint64_t sub_2231D1C44(uint64_t a1)
{
  started = type metadata accessor for StartSpeechDictationSessionMessage.Builder(0);
  (*(*(started - 8) + 8))(a1, started);
  return a1;
}

void *StartSpeechDictationSessionMessage.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A850, &qword_22321CCD8);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231D263C();
  sub_223200794();
  if (v2)
  {
    v18 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for StartSpeechDictationSessionMessage(0);
    v11 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
    v12 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    OUTLINED_FUNCTION_0();
    v10 = sub_2232004F4();
    v14 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes34StartSpeechDictationSessionMessage_languageCode);
    *v14 = v10;
    v14[1] = v15;
    LOBYTE(v21[0]) = 1;
    OUTLINED_FUNCTION_0();
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes34StartSpeechDictationSessionMessage_recognitionOnDevice) = sub_223200504() & 1;
    v22 = 2;
    sub_2231105AC();
    sub_223200554();
    v16 = v21[1];
    v17 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes34StartSpeechDictationSessionMessage_userId);
    *v17 = v21[0];
    v17[1] = v16;
    sub_2230F7158(a1, v21);
    v18 = SessionMessageBase.init(from:)(v21);
    v19 = OUTLINED_FUNCTION_2();
    v20(v19);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v18;
}

uint64_t sub_2231D1FB4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A860, &qword_22321CCE0);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = v19 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231D263C();
  sub_2232007A4();
  v14 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes34StartSpeechDictationSessionMessage_languageCode);
  v15 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes34StartSpeechDictationSessionMessage_languageCode + 8);
  LOBYTE(v19[0]) = 0;
  sub_2232005F4();
  if (!v2)
  {
    v16 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes34StartSpeechDictationSessionMessage_recognitionOnDevice);
    LOBYTE(v19[0]) = 1;
    sub_223200604();
    v17 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes34StartSpeechDictationSessionMessage_userId + 8);
    v19[0] = *(v3 + OBJC_IVAR____TtC16SiriMessageTypes34StartSpeechDictationSessionMessage_userId);
    v19[1] = v17;
    v20 = 2;
    sub_2230D37F0();

    sub_223200654();

    sub_2230D46B0(a1);
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t StartSpeechDictationSessionMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t StartSpeechDictationSessionMessage.Builder.assistantId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t StartSpeechDictationSessionMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StartSpeechDictationSessionMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t StartSpeechDictationSessionMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_4_41() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t StartSpeechDictationSessionMessage.Builder.languageCode.getter()
{
  v1 = (v0 + *(type metadata accessor for StartSpeechDictationSessionMessage.Builder(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t StartSpeechDictationSessionMessage.Builder.languageCode.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for StartSpeechDictationSessionMessage.Builder(0) + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t StartSpeechDictationSessionMessage.Builder.recognitionOnDevice.setter(char a1)
{
  result = type metadata accessor for StartSpeechDictationSessionMessage.Builder(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t StartSpeechDictationSessionMessage.Builder.userId.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for StartSpeechDictationSessionMessage.Builder(0) + 36));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t StartSpeechDictationSessionMessage.Builder.userId.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for StartSpeechDictationSessionMessage.Builder(0) + 36));
  v5 = v4[1];

  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t sub_2231D2568()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes34StartSpeechDictationSessionMessage_languageCode + 8);

  v2 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes34StartSpeechDictationSessionMessage_userId + 8);
}

id StartSpeechDictationSessionMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StartSpeechDictationSessionMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231D263C()
{
  result = qword_27D05A858;
  if (!qword_27D05A858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A858);
  }

  return result;
}

uint64_t sub_2231D273C()
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

_BYTE *storeEnumTagSinglePayload for StartSpeechDictationSessionMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2231D2904()
{
  result = qword_27D05A878;
  if (!qword_27D05A878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A878);
  }

  return result;
}

unint64_t sub_2231D295C()
{
  result = qword_27D05A880;
  if (!qword_27D05A880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A880);
  }

  return result;
}

unint64_t sub_2231D29B4()
{
  result = qword_27D05A888;
  if (!qword_27D05A888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A888);
  }

  return result;
}

void *StartSpeechRequestMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v58 = v1;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v52 - v5;
  v7 = sub_2231FFDA4();
  v8 = OUTLINED_FUNCTION_9(v7);
  v54 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v55 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for StartSpeechRequestMessage.Builder(0);
  v14 = (started - 8);
  v15 = *(*(started - 8) + 64);
  MEMORY[0x28223BE20](started);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v17 = 15;
  *(v17 + 1) = 0;
  *(v17 + 2) = 0;
  v18 = v14[8];
  v56 = v7;
  __swift_storeEnumTagSinglePayload(&v17[v18], 1, 1, v7);
  v19 = &v17[v14[9]];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = v14[10];
  v17[v20] = 19;
  v21 = v14[11];
  *&v17[v21] = 0;
  v22 = v14[12];
  v17[v22] = 2;
  *&v17[v14[13]] = 0;
  a1(v17);
  v23 = *v17;
  if (v23 != 15)
  {
    v24 = *(v17 + 2);
    if (v24)
    {
      v53 = *(v17 + 1);
      sub_2230D1480(&v17[v18], v6);
      v25 = v56;
      if (__swift_getEnumTagSinglePayload(v6, 1, v56) == 1)
      {
        sub_2230D69D4(v6);
      }

      else
      {
        v52 = v24;
        v26 = v54;
        v27 = v55;
        (*(v54 + 32))(v55, v6, v25);
        v28 = *(v19 + 1);
        if (v28)
        {
          v29 = v52;
          if (v17[v20] != 19)
          {
            v30 = v17[v22];
            if (v30 != 2)
            {
              v43 = *&v17[v21];
              v44 = v58;
              *(v58 + OBJC_IVAR____TtC16SiriMessageTypes25StartSpeechRequestMessage_location) = v43;
              v45 = *v19;
              *(v44 + OBJC_IVAR____TtC16SiriMessageTypes25StartSpeechRequestMessage_asrOnServer) = v30 & 1;
              MEMORY[0x28223BE20](v43);
              *(&v52 - 64) = v23;
              *(&v52 - 7) = v53;
              *(&v52 - 6) = v29;
              v46 = v55;
              *(&v52 - 5) = v55;
              *(&v52 - 4) = v47;
              *(&v52 - 3) = v28;
              *(&v52 - 16) = v48;
              *(&v52 - 1) = v17;

              v41 = StartRequestMessageBase.init(build:)(sub_2231D3AE8);
              v49 = v41;

              if (v41)
              {

                v50 = *(v54 + 8);
                v51 = v49;
                v50(v46, v56);
                sub_2231D2F50(v17);
              }

              else
              {
                (*(v54 + 8))(v46, v56);
                sub_2231D2F50(v17);
              }

              return v41;
            }
          }

          (*(v26 + 8))(v55, v25);
        }

        else
        {
          (*(v26 + 8))(v27, v25);
        }
      }
    }
  }

  if (qword_280FCA778 != -1)
  {
    swift_once();
  }

  v31 = sub_223200014();
  __swift_project_value_buffer(v31, qword_280FCE830);
  v32 = sub_223200004();
  v33 = sub_223200254();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v59 = v35;
    *v34 = 136446210;
    v36 = sub_2230F7898();
    v38 = sub_2231A5D38(v36, v37, &v59);

    *(v34 + 4) = v38;
    _os_log_impl(&dword_2230CE000, v32, v33, "Could not build %{public}s: Builder has missing required fields", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x223DD6780](v35, -1, -1);
    MEMORY[0x223DD6780](v34, -1, -1);
  }

  sub_2231D2F50(v17);
  type metadata accessor for StartSpeechRequestMessage(0);
  v39 = *((*MEMORY[0x277D85000] & *v58) + 0x30);
  v40 = *((*MEMORY[0x277D85000] & *v58) + 0x34);
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_2231D2F50(uint64_t a1)
{
  started = type metadata accessor for StartSpeechRequestMessage.Builder(0);
  (*(*(started - 8) + 8))(a1, started);
  return a1;
}

void *StartSpeechRequestMessage.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A890, &qword_22321CE98);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2230E72C8();
  sub_223200794();
  if (v2)
  {
    v13 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for StartSpeechRequestMessage(0);
    v10 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
    v11 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for Location();
    v17 = 0;
    sub_2230E7514(&qword_27D05A7D0);
    sub_2232004C4();
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes25StartSpeechRequestMessage_location) = v16[0];
    LOBYTE(v16[0]) = 1;
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes25StartSpeechRequestMessage_asrOnServer) = sub_223200504() & 1;
    sub_2230F7158(a1, v16);
    v13 = StartRequestMessageBase.init(from:)(v16);
    v14 = OUTLINED_FUNCTION_2();
    v15(v14);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v13;
}

uint64_t sub_2231D328C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265536E4F727361 && a2 == 0xEB00000000726576)
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

uint64_t sub_2231D3358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231D328C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2231D3380(uint64_t a1)
{
  v2 = sub_2230E72C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231D33BC(uint64_t a1)
{
  v2 = sub_2230E72C8();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2231D345C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9)
{
  *a1 = a2;
  v16 = *(a1 + 16);

  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  started = type metadata accessor for StartRequestMessageBase.Builder(0);
  v18 = started[6];
  sub_2230D69D4(a1 + v18);
  v19 = sub_2231FFDA4();
  (*(*(v19 - 8) + 16))(a1 + v18, a5, v19);
  __swift_storeEnumTagSinglePayload(a1 + v18, 0, 1, v19);
  v20 = (a1 + started[7]);
  v21 = v20[1];

  *v20 = a6;
  v20[1] = a7;
  *(a1 + started[8]) = a8;
  v22 = *(a9 + *(type metadata accessor for StartSpeechRequestMessage.Builder(0) + 44));
  v23 = started[9];
  v24 = *(a1 + v23);
  v25 = v22;

  *(a1 + v23) = v22;
}

uint64_t StartSpeechRequestMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t StartSpeechRequestMessage.Builder.assistantId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t StartSpeechRequestMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StartSpeechRequestMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t StartSpeechRequestMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_3_40() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t StartSpeechRequestMessage.Builder.requestId.getter()
{
  v1 = (v0 + *(type metadata accessor for StartSpeechRequestMessage.Builder(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t StartSpeechRequestMessage.Builder.requestId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for StartSpeechRequestMessage.Builder(0) + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t StartSpeechRequestMessage.Builder.inputOrigin.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StartSpeechRequestMessage.Builder(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t StartSpeechRequestMessage.Builder.inputOrigin.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for StartSpeechRequestMessage.Builder(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

uint64_t StartSpeechRequestMessage.Builder.location.getter()
{
  v1 = *(v0 + *(type metadata accessor for StartSpeechRequestMessage.Builder(0) + 36));
}

uint64_t StartSpeechRequestMessage.Builder.location.setter()
{
  v2 = *(OUTLINED_FUNCTION_3_40() + 36);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t StartSpeechRequestMessage.Builder.asrOnServer.setter(char a1)
{
  result = type metadata accessor for StartSpeechRequestMessage.Builder(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

void *StartSpeechRequestMessage.Builder.requestContextData.getter()
{
  v1 = *(v0 + *(type metadata accessor for StartSpeechRequestMessage.Builder(0) + 44));
  v2 = v1;
  return v1;
}

void StartSpeechRequestMessage.Builder.requestContextData.setter()
{
  v2 = *(OUTLINED_FUNCTION_3_40() + 44);

  *(v1 + v2) = v0;
}

id StartSpeechRequestMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StartSpeechRequestMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231D3BE0()
{
  result = qword_27D05A8A0;
  if (!qword_27D05A8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A8A0);
  }

  return result;
}

unint64_t sub_2231D3C38()
{
  result = qword_280FCD008;
  if (!qword_280FCD008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD008);
  }

  return result;
}

unint64_t sub_2231D3C90()
{
  result = qword_280FCD010;
  if (!qword_280FCD010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD010);
  }

  return result;
}

uint64_t sub_2231D3CF4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5341656C62616E65 && a2 == 0xE900000000000052;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65746E6F4374696ALL && a2 == 0xEA00000000007478;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000011 && 0x80000002232269D0 == a2)
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

uint64_t sub_2231D3E1C(char a1)
{
  if (!a1)
  {
    return 0x5341656C62616E65;
  }

  if (a1 == 1)
  {
    return 0x65746E6F4374696ALL;
  }

  return 0xD000000000000011;
}

uint64_t sub_2231D3E88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231D3CF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2231D3EB0(uint64_t a1)
{
  v2 = sub_2231D5360();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231D3EEC(uint64_t a1)
{
  v2 = sub_2231D5360();

  return MEMORY[0x2821FE720](a1, v2);
}

void *StartTestSpeechRequestMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return StartTestSpeechRequestMessage.init(build:)(v1);
}

void *StartTestSpeechRequestMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v57 = a1;
  v58 = v1;
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v52 - v4;
  v6 = sub_2231FFDA4();
  v7 = OUTLINED_FUNCTION_9(v6);
  v53 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v54 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for StartTestSpeechRequestMessage.Builder(0);
  v13 = (started - 8);
  v14 = *(*(started - 8) + 64);
  MEMORY[0x28223BE20](started);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v16 = 15;
  *(v16 + 1) = 0;
  *(v16 + 2) = 0;
  v17 = v13[8];
  v55 = v6;
  __swift_storeEnumTagSinglePayload(&v16[v17], 1, 1, v6);
  v18 = &v16[v13[9]];
  *v18 = 0;
  *(v18 + 1) = 0;
  v19 = v13[10];
  v16[v19] = 19;
  *&v16[v13[11]] = 0;
  v20 = v13[12];
  v16[v20] = 2;
  v21 = v13[13];
  *&v16[v21] = 0;
  v22 = &v16[v13[14]];
  *v22 = 0;
  *(v22 + 1) = 0;
  *&v16[v13[15]] = 0;
  v57(v16);
  v23 = *v16;
  if (v23 != 15)
  {
    v24 = *(v16 + 2);
    if (v24)
    {
      v57 = *(v16 + 1);
      sub_2230D1480(&v16[v17], v5);
      v25 = v55;
      if (__swift_getEnumTagSinglePayload(v5, 1, v55) == 1)
      {
        sub_2230D69D4(v5);
      }

      else
      {
        v52 = v24;
        v26 = v53;
        (*(v53 + 32))(v54, v5, v25);
        v27 = *(v18 + 1);
        if (v27)
        {
          if (v16[v19] != 19)
          {
            v28 = v16[v20];
            if (v28 != 2)
            {
              ObjectType = &v52;
              v41 = v58;
              *(v58 + OBJC_IVAR____TtC16SiriMessageTypes29StartTestSpeechRequestMessage_enableASR) = v28 & 1;
              v42 = *v18;
              *(v41 + OBJC_IVAR____TtC16SiriMessageTypes29StartTestSpeechRequestMessage_jitContext) = *&v16[v21];
              v43 = *(v22 + 1);
              v44 = (v41 + OBJC_IVAR____TtC16SiriMessageTypes29StartTestSpeechRequestMessage_overrideModelPath);
              *v44 = *v22;
              v44[1] = v43;
              MEMORY[0x28223BE20](v43);
              *(&v52 - 64) = v23;
              v45 = v52;
              *(&v52 - 7) = v57;
              *(&v52 - 6) = v45;
              v46 = v54;
              *(&v52 - 5) = v54;
              *(&v52 - 4) = v47;
              *(&v52 - 3) = v27;
              *(&v52 - 16) = v48;
              *(&v52 - 1) = v16;

              v39 = StartSpeechRequestMessage.init(build:)(sub_2231D5324);
              v49 = v39;

              if (v39)
              {

                v50 = *(v53 + 8);
                v51 = v49;
                v50(v46, v25);
                sub_2231D4514(v16);
              }

              else
              {
                (*(v53 + 8))(v46, v25);
                sub_2231D4514(v16);
              }

              return v39;
            }
          }
        }

        (*(v26 + 8))(v54, v25);
      }
    }
  }

  if (qword_280FCA778 != -1)
  {
    swift_once();
  }

  v29 = sub_223200014();
  __swift_project_value_buffer(v29, qword_280FCE830);
  v30 = sub_223200004();
  v31 = sub_223200254();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v59 = v33;
    *v32 = 136446210;
    v34 = sub_2230F7898();
    v36 = sub_2231A5D38(v34, v35, &v59);

    *(v32 + 4) = v36;
    _os_log_impl(&dword_2230CE000, v30, v31, "Could not build %{public}s: Builder has missing required fields", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x223DD6780](v33, -1, -1);
    MEMORY[0x223DD6780](v32, -1, -1);
  }

  sub_2231D4514(v16);
  type metadata accessor for StartTestSpeechRequestMessage(0);
  v37 = *((*MEMORY[0x277D85000] & *v58) + 0x30);
  v38 = *((*MEMORY[0x277D85000] & *v58) + 0x34);
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_2231D4514(uint64_t a1)
{
  started = type metadata accessor for StartTestSpeechRequestMessage.Builder(0);
  (*(*(started - 8) + 8))(a1, started);
  return a1;
}

void sub_2231D4590(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9)
{
  *a1 = a2;
  v16 = *(a1 + 16);

  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  started = type metadata accessor for StartSpeechRequestMessage.Builder(0);
  v18 = started[6];
  sub_2230D69D4(a1 + v18);
  v19 = sub_2231FFDA4();
  (*(*(v19 - 8) + 16))(a1 + v18, a5, v19);
  __swift_storeEnumTagSinglePayload(a1 + v18, 0, 1, v19);
  v20 = (a1 + started[7]);
  v21 = v20[1];

  *v20 = a6;
  v20[1] = a7;
  *(a1 + started[8]) = a8;
  v22 = type metadata accessor for StartTestSpeechRequestMessage.Builder(0);
  v23 = *(a9 + *(v22 + 36));
  v24 = started[9];
  v25 = *(a1 + v24);

  *(a1 + v24) = v23;
  *(a1 + started[10]) = 0;
  v26 = *(a9 + *(v22 + 52));
  v27 = started[11];
  v28 = *(a1 + v27);
  v29 = v26;

  *(a1 + v27) = v26;
}

void *StartTestSpeechRequestMessage.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A8A8, &unk_22321D068);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231D5360();
  sub_223200794();
  if (v2)
  {
    v16 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for StartTestSpeechRequestMessage(0);
    v10 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
    v11 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059880, &unk_223214380);
    v20 = 1;
    sub_223165264(&qword_27D058DB8);
    sub_2232004C4();
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes29StartTestSpeechRequestMessage_jitContext) = v19[0];
    OUTLINED_FUNCTION_0();
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes29StartTestSpeechRequestMessage_enableASR) = sub_223200504() & 1;
    LOBYTE(v19[0]) = 2;
    OUTLINED_FUNCTION_0();
    v13 = sub_223200494();
    v14 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes29StartTestSpeechRequestMessage_overrideModelPath);
    *v14 = v13;
    v14[1] = v15;
    sub_2230F7158(a1, v19);
    v16 = StartSpeechRequestMessage.init(from:)(v19);
    v17 = OUTLINED_FUNCTION_2();
    v18(v17);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v16;
}

uint64_t sub_2231D4A14(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A8B8, &qword_22321D078);
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = v16 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231D5360();
  sub_2232007A4();
  if (!*(v1 + OBJC_IVAR____TtC16SiriMessageTypes29StartTestSpeechRequestMessage_jitContext) || (v16[1] = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes29StartTestSpeechRequestMessage_jitContext), v17 = 1, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059880, &unk_223214380), sub_223165264(&qword_280FCA460), sub_223200654(), !v2))
  {
    v13 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes29StartTestSpeechRequestMessage_enableASR);
    v19 = 0;
    sub_223200604();
    if (!v2)
    {
      if (*(v1 + OBJC_IVAR____TtC16SiriMessageTypes29StartTestSpeechRequestMessage_overrideModelPath + 8))
      {
        v14 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes29StartTestSpeechRequestMessage_overrideModelPath);
        v18 = 2;
        sub_2232005F4();
      }

      sub_2230E5C88(a1);
    }
  }

  return (*(v7 + 8))(v11, v4);
}

uint64_t StartTestSpeechRequestMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t StartTestSpeechRequestMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t StartTestSpeechRequestMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StartTestSpeechRequestMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t StartTestSpeechRequestMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_3_41() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t StartTestSpeechRequestMessage.Builder.requestId.getter()
{
  started = type metadata accessor for StartTestSpeechRequestMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(started + 28));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t StartTestSpeechRequestMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for StartTestSpeechRequestMessage.Builder(0) + 28));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t StartTestSpeechRequestMessage.Builder.inputOrigin.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StartTestSpeechRequestMessage.Builder(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t StartTestSpeechRequestMessage.Builder.inputOrigin.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for StartTestSpeechRequestMessage.Builder(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

uint64_t StartTestSpeechRequestMessage.Builder.location.getter()
{
  v1 = *(v0 + *(type metadata accessor for StartTestSpeechRequestMessage.Builder(0) + 36));
}

uint64_t StartTestSpeechRequestMessage.Builder.location.setter()
{
  v2 = *(OUTLINED_FUNCTION_3_41() + 36);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t StartTestSpeechRequestMessage.Builder.enableASR.setter(char a1)
{
  result = type metadata accessor for StartTestSpeechRequestMessage.Builder(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t StartTestSpeechRequestMessage.Builder.jitContext.getter()
{
  v1 = *(v0 + *(type metadata accessor for StartTestSpeechRequestMessage.Builder(0) + 44));
}

uint64_t StartTestSpeechRequestMessage.Builder.jitContext.setter()
{
  v2 = *(OUTLINED_FUNCTION_3_41() + 44);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t StartTestSpeechRequestMessage.Builder.overrideModelPath.getter()
{
  started = type metadata accessor for StartTestSpeechRequestMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(started + 48));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t StartTestSpeechRequestMessage.Builder.overrideModelPath.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for StartTestSpeechRequestMessage.Builder(0) + 48));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

void *StartTestSpeechRequestMessage.Builder.requestContextData.getter()
{
  v1 = *(v0 + *(type metadata accessor for StartTestSpeechRequestMessage.Builder(0) + 52));
  v2 = v1;
  return v1;
}

void StartTestSpeechRequestMessage.Builder.requestContextData.setter()
{
  v2 = *(OUTLINED_FUNCTION_3_41() + 52);

  *(v1 + v2) = v0;
}

uint64_t sub_2231D5258()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes29StartTestSpeechRequestMessage_jitContext);

  v2 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes29StartTestSpeechRequestMessage_overrideModelPath + 8);
}

id StartTestSpeechRequestMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StartTestSpeechRequestMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231D5360()
{
  result = qword_27D05A8B0;
  if (!qword_27D05A8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A8B0);
  }

  return result;
}

uint64_t sub_2231D5468()
{
  sub_2230D525C(319, &qword_280FCB0A8);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_2231C238C(319, &qword_280FCE678, MEMORY[0x277CC95F0]);
      if (v6 > 0x3F)
      {
        return v5;
      }

      sub_2230D525C(319, &qword_280FCACC0);
      if (v7 > 0x3F)
      {
        return v5;
      }

      sub_2231C238C(319, qword_280FCA608, type metadata accessor for Location);
      if (v8 > 0x3F)
      {
        return v5;
      }

      sub_2230D525C(319, &qword_280FCA440);
      if (v9 > 0x3F)
      {
        return v5;
      }

      sub_2231D562C();
      if (v10 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_2231C238C(319, &qword_280FCA900, type metadata accessor for RequestContextData);
        v1 = v11;
        if (v12 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

void sub_2231D562C()
{
  if (!qword_280FCA458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D059880, &unk_223214380);
    v0 = sub_2232002D4();
    if (!v1)
    {
      atomic_store(v0, &qword_280FCA458);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for StartTestSpeechRequestMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2231D5770()
{
  result = qword_27D05A8D0;
  if (!qword_27D05A8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A8D0);
  }

  return result;
}

unint64_t sub_2231D57C8()
{
  result = qword_27D05A8D8;
  if (!qword_27D05A8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A8D8);
  }

  return result;
}

unint64_t sub_2231D5820()
{
  result = qword_27D05A8E0;
  if (!qword_27D05A8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A8E0);
  }

  return result;
}

void *StartTextRequestMessage.init(from:)(uint64_t *a1)
{
  sub_2230F7158(a1, v4);
  v2 = StartRequestMessageBase.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

id StartTextRequestMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StartTextRequestMessage();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for StartTextRequestMessage()
{
  result = qword_280FCDA08;
  if (!qword_280FCDA08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *StartUnderstandingDictationRequestMessage.init(from:)(uint64_t *a1)
{
  sub_2230F7158(a1, v4);
  v2 = StartSpeechDictationRequestMessage.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

id StartUnderstandingDictationRequestMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StartUnderstandingDictationRequestMessage();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for StartUnderstandingDictationRequestMessage()
{
  result = qword_280FCBC18;
  if (!qword_280FCBC18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2231D5B74(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x8000000223225710 == a2)
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

uint64_t sub_2231D5C14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231D5B74(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2231D5C40(uint64_t a1)
{
  v2 = sub_2231D6A98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231D5C7C(uint64_t a1)
{
  v2 = sub_2231D6A98();

  return MEMORY[0x2821FE720](a1, v2);
}

void *StartUnderstandingDictationSessionMessage.init(build:)(void (*a1)(unsigned __int8 *))
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
  v46 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for StartUnderstandingDictationSessionMessage.Builder(0);
  v14 = (started - 8);
  v15 = *(*(started - 8) + 64);
  MEMORY[0x28223BE20](started);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v17 = 15;
  *(v17 + 1) = 0;
  *(v17 + 2) = 0;
  v18 = v14[8];
  __swift_storeEnumTagSinglePayload(&v17[v18], 1, 1, v7);
  v19 = &v17[v14[9]];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = &v17[v14[10]];
  *v20 = 0xD000000000000024;
  *(v20 + 1) = 0x80000002232216F0;
  v21 = v14[11];
  v17[v21] = 1;
  a1(v17);
  v22 = *v17;
  if (v22 == 15)
  {
    goto LABEL_10;
  }

  v23 = *(v17 + 2);
  if (!v23)
  {
    goto LABEL_10;
  }

  v24 = *(v17 + 1);
  sub_2230D1480(&v17[v18], v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v7) == 1)
  {
    sub_2230D69D4(v2);
LABEL_10:
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
      v49 = v37;
      *v36 = 136446210;
      v38 = sub_2230F7898();
      v40 = sub_2231A5D38(v38, v39, &v49);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_2230CE000, v34, v35, "Could not build %{public}s: Builder has missing required fields", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x223DD6780](v37, -1, -1);
      MEMORY[0x223DD6780](v36, -1, -1);
    }

    sub_2231D6190(v17);
    type metadata accessor for StartUnderstandingDictationSessionMessage(0);
    v41 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
    v42 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v45 = v24;
  v25 = v46;
  v26 = v47;
  v27 = (*(v47 + 32))(v46, v2, v7);
  if (!*(v19 + 1))
  {
    (*(v26 + 8))(v25, v7);
    goto LABEL_10;
  }

  v28 = *v19;
  *(v3 + OBJC_IVAR____TtC16SiriMessageTypes41StartUnderstandingDictationSessionMessage_understandingOnDevice) = v17[v21];
  MEMORY[0x28223BE20](v27);
  *(&v44 - 48) = v22;
  *(&v44 - 5) = v45;
  *(&v44 - 4) = v23;
  *(&v44 - 3) = v25;
  *(&v44 - 2) = v29;
  *(&v44 - 1) = v30;
  v31 = StartSpeechDictationSessionMessage.init(build:)(sub_2231D6A84);
  v32 = v31;
  sub_2231D6190(v17);
  if (v31)
  {
  }

  (*(v26 + 8))(v25, v7);
  return v31;
}

uint64_t sub_2231D6190(uint64_t a1)
{
  started = type metadata accessor for StartUnderstandingDictationSessionMessage.Builder(0);
  (*(*(started - 8) + 8))(a1, started);
  return a1;
}

uint64_t sub_2231D620C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = a2;
  v13 = *(a1 + 16);

  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  started = type metadata accessor for StartSpeechDictationSessionMessage.Builder(0);
  v15 = *(started + 24);
  sub_2230D69D4(a1 + v15);
  v16 = sub_2231FFDA4();
  (*(*(v16 - 8) + 16))(a1 + v15, a5, v16);
  __swift_storeEnumTagSinglePayload(a1 + v15, 0, 1, v16);
  v17 = (a1 + *(started + 28));
  v18 = v17[1];

  *v17 = a6;
  v17[1] = a7;
  return result;
}

void *StartUnderstandingDictationSessionMessage.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A8E8, &qword_22321D2E8);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231D6A98();
  sub_223200794();
  if (v2)
  {
    v13 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for StartUnderstandingDictationSessionMessage(0);
    v10 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
    v11 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes41StartUnderstandingDictationSessionMessage_understandingOnDevice) = sub_223200504() & 1;
    sub_2230F7158(a1, v16);
    v13 = StartSpeechDictationSessionMessage.init(from:)(v16);
    v14 = OUTLINED_FUNCTION_2();
    v15(v14);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v13;
}

uint64_t sub_2231D6540(void *a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A8F8, &qword_22321D2F0);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231D6A98();
  sub_2232007A4();
  v12 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes41StartUnderstandingDictationSessionMessage_understandingOnDevice);
  sub_223200604();
  if (!v2)
  {
    sub_2231D1FB4(a1);
  }

  return (*(v8 + 8))(v3, v5);
}

uint64_t StartUnderstandingDictationSessionMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t StartUnderstandingDictationSessionMessage.Builder.assistantId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t StartUnderstandingDictationSessionMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StartUnderstandingDictationSessionMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t StartUnderstandingDictationSessionMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_3_42() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t StartUnderstandingDictationSessionMessage.Builder.languageCode.getter()
{
  v1 = (v0 + *(type metadata accessor for StartUnderstandingDictationSessionMessage.Builder(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t StartUnderstandingDictationSessionMessage.Builder.languageCode.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for StartUnderstandingDictationSessionMessage.Builder(0) + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t StartUnderstandingDictationSessionMessage.Builder.userId.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for StartUnderstandingDictationSessionMessage.Builder(0) + 32));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t StartUnderstandingDictationSessionMessage.Builder.userId.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for StartUnderstandingDictationSessionMessage.Builder(0) + 32));
  v5 = v4[1];

  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t StartUnderstandingDictationSessionMessage.Builder.understandingOnDevice.setter(char a1)
{
  result = type metadata accessor for StartUnderstandingDictationSessionMessage.Builder(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

id StartUnderstandingDictationSessionMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StartUnderstandingDictationSessionMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231D6A98()
{
  result = qword_27D05A8F0;
  if (!qword_27D05A8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A8F0);
  }

  return result;
}

uint64_t sub_2231D6B8C()
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

_BYTE *storeEnumTagSinglePayload for StartUnderstandingDictationSessionMessage.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_2231D6D24()
{
  result = qword_27D05A910;
  if (!qword_27D05A910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A910);
  }

  return result;
}

unint64_t sub_2231D6D7C()
{
  result = qword_27D05A918;
  if (!qword_27D05A918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A918);
  }

  return result;
}

unint64_t sub_2231D6DD4()
{
  result = qword_27D05A920;
  if (!qword_27D05A920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A920);
  }

  return result;
}

void *StartUnderstandingOnServerRequestMessage.init(from:)(uint64_t *a1)
{
  sub_2230F7158(a1, v4);
  v2 = StartRequestMessageBase.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

id StartUnderstandingOnServerRequestMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StartUnderstandingOnServerRequestMessage();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for StartUnderstandingOnServerRequestMessage()
{
  result = qword_280FCBCE8;
  if (!qword_280FCBCE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *StartUnderstandingOnServerTextRequestMessage.init(from:)(uint64_t *a1)
{
  sub_2230F7158(a1, v4);
  v2 = StartUnderstandingOnServerRequestMessage.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

id StartUnderstandingOnServerTextRequestMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StartUnderstandingOnServerTextRequestMessage();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for StartUnderstandingOnServerTextRequestMessage()
{
  result = qword_280FCBA58;
  if (!qword_280FCBA58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2231D7128(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x8000000223226C10 == a2)
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

uint64_t sub_2231D71A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231D7128(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2231D71D4(uint64_t a1)
{
  v2 = sub_2230D63D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231D7210(uint64_t a1)
{
  v2 = sub_2230D63D8();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_2231D72E8(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A938, &unk_22321D6B8);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2230D63D8();
  sub_223200794();
  if (v2)
  {
    v13 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for StopAttendingRequestedMessage(0);
    v10 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
    v11 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_2231D79C8();
    sub_223200554();
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes29StopAttendingRequestedMessage_attendingStopReason) = v16[0];
    sub_2230F7158(a1, v16);
    v13 = SessionMessageBase.init(from:)(v16);
    v14 = OUTLINED_FUNCTION_2();
    v15(v14);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v13;
}

uint64_t StopAttendingRequestedMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t StopAttendingRequestedMessage.Builder.assistantId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t StopAttendingRequestedMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StopAttendingRequestedMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t StopAttendingRequestedMessage.Builder.attendingStopReason.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StopAttendingRequestedMessage.Builder(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

id StopAttendingRequestedMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StopAttendingRequestedMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2231D77CC()
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
        sub_2230D525C(319, &qword_280FCA860);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_2231D78C4()
{
  result = qword_27D05A930;
  if (!qword_27D05A930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A930);
  }

  return result;
}

unint64_t sub_2231D791C()
{
  result = qword_280FCC678;
  if (!qword_280FCC678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCC678);
  }

  return result;
}

unint64_t sub_2231D7974()
{
  result = qword_280FCC680;
  if (!qword_280FCC680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCC680);
  }

  return result;
}

unint64_t sub_2231D79C8()
{
  result = qword_27D05A940;
  if (!qword_27D05A940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A940);
  }

  return result;
}

uint64_t sub_2231D7A6C(uint64_t a1)
{
  v2 = sub_2231D8A68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231D7AA8(uint64_t a1)
{
  v2 = sub_2231D8A68();

  return MEMORY[0x2821FE720](a1, v2);
}

void *StoppedListeningForSpeechContinuationForPlannerMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return StoppedListeningForSpeechContinuationForPlannerMessage.init(build:)(v1);
}

void *StoppedListeningForSpeechContinuationForPlannerMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v53 = v1;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v49 - v5;
  v7 = sub_2231FFDA4();
  v8 = OUTLINED_FUNCTION_9(v7);
  v51 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v50 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for StoppedListeningForSpeechContinuationForPlannerMessage.Builder(0);
  v14 = (v13 - 8);
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
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
  v21 = v14[11];
  v17[v21] = 3;
  a1(v17);
  v22 = *v17;
  if (v22 == 15)
  {
    goto LABEL_13;
  }

  v23 = *(v17 + 2);
  if (!v23)
  {
    goto LABEL_13;
  }

  v24 = *(v17 + 1);
  sub_2230D1480(&v17[v18], v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_2230D69D4(v6);
LABEL_13:
    if (qword_280FCA778 != -1)
    {
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
      v54 = v42;
      *v41 = 136446210;
      v43 = sub_2230F7898();
      v45 = sub_2231A5D38(v43, v44, &v54);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_2230CE000, v39, v40, "Could not build %{public}s: Builder has missing required fields", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x223DD6780](v42, -1, -1);
      MEMORY[0x223DD6780](v41, -1, -1);
    }

    sub_2231D7FD0(v17);
    type metadata accessor for StoppedListeningForSpeechContinuationForPlannerMessage(0);
    v46 = *((*MEMORY[0x277D85000] & *v53) + 0x30);
    v47 = *((*MEMORY[0x277D85000] & *v53) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v49 = v24;
  v26 = v50;
  v25 = v51;
  (*(v51 + 32))(v50, v6, v7);
  if (!*(v19 + 1) || (v27 = *(v20 + 1)) == 0)
  {
    (*(v25 + 8))(v26, v7);
    goto LABEL_13;
  }

  v28 = *v19;
  v29 = *v20;
  v30 = v26;
  v31 = v53;
  v32 = (v53 + OBJC_IVAR____TtC16SiriMessageTypes54StoppedListeningForSpeechContinuationForPlannerMessage_lastTRPId);
  *v32 = v29;
  v32[1] = v27;
  v33 = v17[v21];
  if (v33 == 3)
  {
    LOBYTE(v33) = 1;
  }

  *(v31 + OBJC_IVAR____TtC16SiriMessageTypes54StoppedListeningForSpeechContinuationForPlannerMessage_mitigationDecision) = v33;
  MEMORY[0x28223BE20](v27);
  *(&v49 - 48) = v22;
  *(&v49 - 5) = v49;
  *(&v49 - 4) = v23;
  *(&v49 - 3) = v30;
  *(&v49 - 2) = v34;
  *(&v49 - 1) = v35;

  v36 = RequestMessageBase.init(build:)(sub_2230DDE2C);
  v37 = v36;
  sub_2231D7FD0(v17);
  if (v36)
  {
  }

  (*(v51 + 8))(v30, v7);
  return v36;
}

uint64_t sub_2231D7FD0(uint64_t a1)
{
  v2 = type metadata accessor for StoppedListeningForSpeechContinuationForPlannerMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *StoppedListeningForSpeechContinuationForPlannerMessage.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A948, &qword_22321D6C8);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231D8A68();
  sub_223200794();
  if (v2)
  {
    v16 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for StoppedListeningForSpeechContinuationForPlannerMessage(0);
    v11 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
    v12 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v19[0]) = 0;
    v10 = sub_2232004F4();
    v14 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes54StoppedListeningForSpeechContinuationForPlannerMessage_lastTRPId);
    *v14 = v10;
    v14[1] = v15;
    v20 = 1;
    sub_2231996A4();
    sub_223200554();
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes54StoppedListeningForSpeechContinuationForPlannerMessage_mitigationDecision) = v19[0];
    sub_2230F7158(a1, v19);
    v16 = RequestMessageBase.init(from:)(v19);
    v17 = OUTLINED_FUNCTION_2();
    v18(v17);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v16;
}

uint64_t sub_2231D8320(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A950, &qword_22321D6D0);
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v16 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231D8A68();
  sub_2232007A4();
  v13 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes54StoppedListeningForSpeechContinuationForPlannerMessage_lastTRPId);
  v14 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes54StoppedListeningForSpeechContinuationForPlannerMessage_lastTRPId + 8);
  v19 = 0;
  sub_2232005F4();
  if (!v2)
  {
    v18 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes54StoppedListeningForSpeechContinuationForPlannerMessage_mitigationDecision);
    v17 = 1;
    sub_2231996F8();
    sub_223200654();
    sub_2230D77A8(a1);
  }

  return (*(v7 + 8))(v11, v4);
}

uint64_t sub_2231D8528()
{
  v1 = v0;
  v9 = 0;
  v10 = 0xE000000000000000;
  sub_223200374();
  v8.receiver = v0;
  v8.super_class = type metadata accessor for StoppedListeningForSpeechContinuationForPlannerMessage(0);
  v2 = objc_msgSendSuper2(&v8, sel_description);
  v3 = sub_2232000C4();
  v5 = v4;

  MEMORY[0x223DD5AA0](v3, v5);

  MEMORY[0x223DD5AA0](0x547473616C3C202CLL, 0xEE00203A64495052);
  MEMORY[0x223DD5AA0](*&v1[OBJC_IVAR____TtC16SiriMessageTypes54StoppedListeningForSpeechContinuationForPlannerMessage_lastTRPId], *&v1[OBJC_IVAR____TtC16SiriMessageTypes54StoppedListeningForSpeechContinuationForPlannerMessage_lastTRPId + 8]);
  MEMORY[0x223DD5AA0](0xD000000000000018, 0x80000002232227F0);
  v7 = v1[OBJC_IVAR____TtC16SiriMessageTypes54StoppedListeningForSpeechContinuationForPlannerMessage_mitigationDecision];
  sub_2232003C4();
  MEMORY[0x223DD5AA0](62, 0xE100000000000000);
  return v9;
}

uint64_t StoppedListeningForSpeechContinuationForPlannerMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t StoppedListeningForSpeechContinuationForPlannerMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t StoppedListeningForSpeechContinuationForPlannerMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StoppedListeningForSpeechContinuationForPlannerMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t StoppedListeningForSpeechContinuationForPlannerMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_4_42() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t StoppedListeningForSpeechContinuationForPlannerMessage.Builder.requestId.getter()
{
  v0 = type metadata accessor for StoppedListeningForSpeechContinuationForPlannerMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 28));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t StoppedListeningForSpeechContinuationForPlannerMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for StoppedListeningForSpeechContinuationForPlannerMessage.Builder(0) + 28));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t StoppedListeningForSpeechContinuationForPlannerMessage.Builder.lastTRPId.getter()
{
  v0 = type metadata accessor for StoppedListeningForSpeechContinuationForPlannerMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 32));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t StoppedListeningForSpeechContinuationForPlannerMessage.Builder.lastTRPId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for StoppedListeningForSpeechContinuationForPlannerMessage.Builder(0) + 32));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t StoppedListeningForSpeechContinuationForPlannerMessage.Builder.mitigationDecision.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StoppedListeningForSpeechContinuationForPlannerMessage.Builder(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t StoppedListeningForSpeechContinuationForPlannerMessage.Builder.mitigationDecision.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for StoppedListeningForSpeechContinuationForPlannerMessage.Builder(0);
  *(v1 + *(result + 36)) = v2;
  return result;
}

id StoppedListeningForSpeechContinuationForPlannerMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoppedListeningForSpeechContinuationForPlannerMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231D8A68()
{
  result = qword_280FCB988;
  if (!qword_280FCB988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCB988);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StoppedListeningForSpeechContinuationForPlannerMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2231D8C44()
{
  result = qword_27D05A958;
  if (!qword_27D05A958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A958);
  }

  return result;
}

unint64_t sub_2231D8C9C()
{
  result = qword_280FCB978;
  if (!qword_280FCB978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCB978);
  }

  return result;
}

unint64_t sub_2231D8CF4()
{
  result = qword_280FCB980;
  if (!qword_280FCB980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCB980);
  }

  return result;
}

void *StoppedListeningForSpeechContinuationMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v53 = v1;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v49 - v5;
  v7 = sub_2231FFDA4();
  v8 = OUTLINED_FUNCTION_9(v7);
  v51 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v50 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for StoppedListeningForSpeechContinuationMessage.Builder(0);
  v14 = (v13 - 8);
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
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
  v21 = v14[11];
  v17[v21] = 3;
  a1(v17);
  v22 = *v17;
  if (v22 == 15)
  {
    goto LABEL_13;
  }

  v23 = *(v17 + 2);
  if (!v23)
  {
    goto LABEL_13;
  }

  v24 = *(v17 + 1);
  sub_2230D1480(&v17[v18], v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_2230D69D4(v6);
LABEL_13:
    if (qword_280FCA778 != -1)
    {
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
      v54 = v42;
      *v41 = 136446210;
      v43 = sub_2230F7898();
      v45 = sub_2231A5D38(v43, v44, &v54);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_2230CE000, v39, v40, "Could not build %{public}s: Builder has missing required fields", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x223DD6780](v42, -1, -1);
      MEMORY[0x223DD6780](v41, -1, -1);
    }

    sub_2231D9204(v17);
    type metadata accessor for StoppedListeningForSpeechContinuationMessage(0);
    v46 = *((*MEMORY[0x277D85000] & *v53) + 0x30);
    v47 = *((*MEMORY[0x277D85000] & *v53) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v49 = v24;
  v26 = v50;
  v25 = v51;
  (*(v51 + 32))(v50, v6, v7);
  if (!*(v19 + 1) || (v27 = *(v20 + 1)) == 0)
  {
    (*(v25 + 8))(v26, v7);
    goto LABEL_13;
  }

  v28 = *v19;
  v29 = *v20;
  v30 = v26;
  v31 = v53;
  v32 = (v53 + OBJC_IVAR____TtC16SiriMessageTypes44StoppedListeningForSpeechContinuationMessage_lastTRPId);
  *v32 = v29;
  v32[1] = v27;
  v33 = v17[v21];
  if (v33 == 3)
  {
    LOBYTE(v33) = 1;
  }

  *(v31 + OBJC_IVAR____TtC16SiriMessageTypes44StoppedListeningForSpeechContinuationMessage_mitigationDecision) = v33;
  MEMORY[0x28223BE20](v27);
  *(&v49 - 48) = v22;
  *(&v49 - 5) = v49;
  *(&v49 - 4) = v23;
  *(&v49 - 3) = v30;
  *(&v49 - 2) = v34;
  *(&v49 - 1) = v35;

  v36 = RequestMessageBase.init(build:)(sub_2230DDE2C);
  v37 = v36;
  sub_2231D9204(v17);
  if (v36)
  {
  }

  (*(v51 + 8))(v30, v7);
  return v36;
}

uint64_t sub_2231D9204(uint64_t a1)
{
  v2 = type metadata accessor for StoppedListeningForSpeechContinuationMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *StoppedListeningForSpeechContinuationMessage.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A960, &qword_22321D8A8);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231D9D94();
  sub_223200794();
  if (v2)
  {
    v16 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for StoppedListeningForSpeechContinuationMessage(0);
    v11 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
    v12 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v19[0]) = 0;
    v10 = sub_2232004F4();
    v14 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes44StoppedListeningForSpeechContinuationMessage_lastTRPId);
    *v14 = v10;
    v14[1] = v15;
    v20 = 1;
    sub_2231996A4();
    sub_223200554();
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes44StoppedListeningForSpeechContinuationMessage_mitigationDecision) = v19[0];
    sub_2230F7158(a1, v19);
    v16 = RequestMessageBase.init(from:)(v19);
    v17 = OUTLINED_FUNCTION_2();
    v18(v17);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v16;
}

uint64_t sub_2231D9510(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A968, &qword_22321D8B0);
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v16 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231D9D94();
  sub_2232007A4();
  v13 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes44StoppedListeningForSpeechContinuationMessage_lastTRPId);
  v14 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes44StoppedListeningForSpeechContinuationMessage_lastTRPId + 8);
  v19 = 0;
  sub_2232005F4();
  if (!v2)
  {
    v18 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes44StoppedListeningForSpeechContinuationMessage_mitigationDecision);
    v17 = 1;
    sub_2231996F8();
    sub_223200654();
    sub_2230D77A8(a1);
  }

  return (*(v7 + 8))(v11, v4);
}

uint64_t sub_2231D9720(uint64_t a1)
{
  v2 = sub_2231D9D94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231D975C(uint64_t a1)
{
  v2 = sub_2231D9D94();

  return MEMORY[0x2821FE720](a1, v2);
}

void *StoppedListeningForSpeechContinuationMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return StoppedListeningForSpeechContinuationMessage.init(build:)(v1);
}

uint64_t sub_2231D9884()
{
  v1 = v0;
  v9 = 0;
  v10 = 0xE000000000000000;
  sub_223200374();
  v8.receiver = v0;
  v8.super_class = type metadata accessor for StoppedListeningForSpeechContinuationMessage(0);
  v2 = objc_msgSendSuper2(&v8, sel_description);
  v3 = sub_2232000C4();
  v5 = v4;

  MEMORY[0x223DD5AA0](v3, v5);

  MEMORY[0x223DD5AA0](0x547473616C3C202CLL, 0xEE00203A64495052);
  MEMORY[0x223DD5AA0](*&v1[OBJC_IVAR____TtC16SiriMessageTypes44StoppedListeningForSpeechContinuationMessage_lastTRPId], *&v1[OBJC_IVAR____TtC16SiriMessageTypes44StoppedListeningForSpeechContinuationMessage_lastTRPId + 8]);
  MEMORY[0x223DD5AA0](0xD000000000000018, 0x80000002232227F0);
  v7 = v1[OBJC_IVAR____TtC16SiriMessageTypes44StoppedListeningForSpeechContinuationMessage_mitigationDecision];
  sub_2232003C4();
  MEMORY[0x223DD5AA0](62, 0xE100000000000000);
  return v9;
}

uint64_t StoppedListeningForSpeechContinuationMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t StoppedListeningForSpeechContinuationMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t StoppedListeningForSpeechContinuationMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StoppedListeningForSpeechContinuationMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t StoppedListeningForSpeechContinuationMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_4_43() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t StoppedListeningForSpeechContinuationMessage.Builder.requestId.getter()
{
  v0 = type metadata accessor for StoppedListeningForSpeechContinuationMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 28));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t StoppedListeningForSpeechContinuationMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for StoppedListeningForSpeechContinuationMessage.Builder(0) + 28));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t StoppedListeningForSpeechContinuationMessage.Builder.lastTRPId.getter()
{
  v0 = type metadata accessor for StoppedListeningForSpeechContinuationMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 32));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t StoppedListeningForSpeechContinuationMessage.Builder.lastTRPId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for StoppedListeningForSpeechContinuationMessage.Builder(0) + 32));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t StoppedListeningForSpeechContinuationMessage.Builder.mitigationDecision.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StoppedListeningForSpeechContinuationMessage.Builder(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t StoppedListeningForSpeechContinuationMessage.Builder.mitigationDecision.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for StoppedListeningForSpeechContinuationMessage.Builder(0);
  *(v1 + *(result + 36)) = v2;
  return result;
}

id StoppedListeningForSpeechContinuationMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoppedListeningForSpeechContinuationMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231D9D94()
{
  result = qword_280FCBA50;
  if (!qword_280FCBA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCBA50);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StoppedListeningForSpeechContinuationMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2231D9F70()
{
  result = qword_27D05A970;
  if (!qword_27D05A970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A970);
  }

  return result;
}

unint64_t sub_2231D9FC8()
{
  result = qword_280FCBA40;
  if (!qword_280FCBA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCBA40);
  }

  return result;
}

unint64_t sub_2231DA020()
{
  result = qword_280FCBA48;
  if (!qword_280FCBA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCBA48);
  }

  return result;
}

void *StoppedListeningForTextContinuationForPlannerMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return StoppedListeningForTextContinuationForPlannerMessage.init(build:)(v1);
}

void *StoppedListeningForTextContinuationForPlannerMessage.init(build:)(void (*a1)(unsigned __int8 *))
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
  v13 = type metadata accessor for StoppedListeningForTextContinuationForPlannerMessage.Builder(0);
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

    sub_2231DA578(v17);
    type metadata accessor for StoppedListeningForTextContinuationForPlannerMessage(0);
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
  v28 = (v3 + OBJC_IVAR____TtC16SiriMessageTypes52StoppedListeningForTextContinuationForPlannerMessage_lastTRPId);
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
  sub_2231DA578(v17);
  if (v32)
  {
  }

  (*(v47 + 8))(v29, v7);
  return v32;
}

uint64_t sub_2231DA578(uint64_t a1)
{
  v2 = type metadata accessor for StoppedListeningForTextContinuationForPlannerMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *StoppedListeningForTextContinuationForPlannerMessage.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A978, &qword_22321DA88);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231DAEAC();
  sub_223200794();
  if (v2)
  {
    v16 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for StoppedListeningForTextContinuationForPlannerMessage(0);
    v11 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
    v12 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = sub_2232004F4();
    v14 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes52StoppedListeningForTextContinuationForPlannerMessage_lastTRPId);
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

uint64_t sub_2231DA834(void *a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A980, &qword_22321DA90);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231DAEAC();
  sub_2232007A4();
  v12 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes52StoppedListeningForTextContinuationForPlannerMessage_lastTRPId);
  v13 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes52StoppedListeningForTextContinuationForPlannerMessage_lastTRPId + 8);
  sub_2232005F4();
  if (!v2)
  {
    sub_2230D77A8(a1);
  }

  return (*(v8 + 8))(v3, v5);
}

uint64_t sub_2231DA9E4()
{
  v7 = 0;
  v8 = 0xE000000000000000;
  sub_223200374();
  v6.receiver = v0;
  v6.super_class = type metadata accessor for StoppedListeningForTextContinuationForPlannerMessage(0);
  v1 = objc_msgSendSuper2(&v6, sel_description);
  v2 = sub_2232000C4();
  v4 = v3;

  v7 = v2;
  v8 = v4;
  MEMORY[0x223DD5AA0](0x547473616C3C202CLL, 0xEE00203A64495052);
  MEMORY[0x223DD5AA0](*&v0[OBJC_IVAR____TtC16SiriMessageTypes52StoppedListeningForTextContinuationForPlannerMessage_lastTRPId], *&v0[OBJC_IVAR____TtC16SiriMessageTypes52StoppedListeningForTextContinuationForPlannerMessage_lastTRPId + 8]);
  MEMORY[0x223DD5AA0](62, 0xE100000000000000);
  return v7;
}

uint64_t StoppedListeningForTextContinuationForPlannerMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t StoppedListeningForTextContinuationForPlannerMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t StoppedListeningForTextContinuationForPlannerMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StoppedListeningForTextContinuationForPlannerMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t StoppedListeningForTextContinuationForPlannerMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_7_31() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t StoppedListeningForTextContinuationForPlannerMessage.Builder.requestId.getter()
{
  v0 = type metadata accessor for StoppedListeningForTextContinuationForPlannerMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 28));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t StoppedListeningForTextContinuationForPlannerMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for StoppedListeningForTextContinuationForPlannerMessage.Builder(0) + 28));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t StoppedListeningForTextContinuationForPlannerMessage.Builder.lastTRPId.getter()
{
  v0 = type metadata accessor for StoppedListeningForTextContinuationForPlannerMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 32));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t StoppedListeningForTextContinuationForPlannerMessage.Builder.lastTRPId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for StoppedListeningForTextContinuationForPlannerMessage.Builder(0) + 32));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t sub_2231DADAC(uint64_t a1)
{
  v2 = sub_2231DAEAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231DADE8(uint64_t a1)
{
  v2 = sub_2231DAEAC();

  return MEMORY[0x2821FE720](a1, v2);
}

id StoppedListeningForTextContinuationForPlannerMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoppedListeningForTextContinuationForPlannerMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231DAEAC()
{
  result = qword_280FCBB38;
  if (!qword_280FCBB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCBB38);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StoppedListeningForTextContinuationForPlannerMessage.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_2231DB050()
{
  result = qword_27D05A988;
  if (!qword_27D05A988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A988);
  }

  return result;
}

unint64_t sub_2231DB0A8()
{
  result = qword_280FCBB28;
  if (!qword_280FCBB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCBB28);
  }

  return result;
}

unint64_t sub_2231DB100()
{
  result = qword_280FCBB30;
  if (!qword_280FCBB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCBB30);
  }

  return result;
}

void *StoppedListeningForTextContinuationMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return StoppedListeningForTextContinuationMessage.init(build:)(v1);
}

void *StoppedListeningForTextContinuationMessage.init(build:)(void (*a1)(unsigned __int8 *))
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
  v13 = type metadata accessor for StoppedListeningForTextContinuationMessage.Builder(0);
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

    sub_2231DB658(v17);
    type metadata accessor for StoppedListeningForTextContinuationMessage(0);
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
  v28 = (v3 + OBJC_IVAR____TtC16SiriMessageTypes42StoppedListeningForTextContinuationMessage_lastTRPId);
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
  sub_2231DB658(v17);
  if (v32)
  {
  }

  (*(v47 + 8))(v29, v7);
  return v32;
}

uint64_t sub_2231DB658(uint64_t a1)
{
  v2 = type metadata accessor for StoppedListeningForTextContinuationMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *StoppedListeningForTextContinuationMessage.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A990, &qword_22321DC48);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231DBF8C();
  sub_223200794();
  if (v2)
  {
    v16 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for StoppedListeningForTextContinuationMessage(0);
    v11 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
    v12 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = sub_2232004F4();
    v14 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes42StoppedListeningForTextContinuationMessage_lastTRPId);
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

uint64_t sub_2231DB914(void *a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A998, &qword_22321DC50);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231DBF8C();
  sub_2232007A4();
  v12 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes42StoppedListeningForTextContinuationMessage_lastTRPId);
  v13 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes42StoppedListeningForTextContinuationMessage_lastTRPId + 8);
  sub_2232005F4();
  if (!v2)
  {
    sub_2230D77A8(a1);
  }

  return (*(v8 + 8))(v3, v5);
}

uint64_t sub_2231DBAC4()
{
  v7 = 0;
  v8 = 0xE000000000000000;
  sub_223200374();
  v6.receiver = v0;
  v6.super_class = type metadata accessor for StoppedListeningForTextContinuationMessage(0);
  v1 = objc_msgSendSuper2(&v6, sel_description);
  v2 = sub_2232000C4();
  v4 = v3;

  v7 = v2;
  v8 = v4;
  MEMORY[0x223DD5AA0](0x547473616C3C202CLL, 0xEE00203A64495052);
  MEMORY[0x223DD5AA0](*&v0[OBJC_IVAR____TtC16SiriMessageTypes42StoppedListeningForTextContinuationMessage_lastTRPId], *&v0[OBJC_IVAR____TtC16SiriMessageTypes42StoppedListeningForTextContinuationMessage_lastTRPId + 8]);
  MEMORY[0x223DD5AA0](62, 0xE100000000000000);
  return v7;
}

uint64_t StoppedListeningForTextContinuationMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t StoppedListeningForTextContinuationMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t StoppedListeningForTextContinuationMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StoppedListeningForTextContinuationMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t StoppedListeningForTextContinuationMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_7_32() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t StoppedListeningForTextContinuationMessage.Builder.requestId.getter()
{
  v0 = type metadata accessor for StoppedListeningForTextContinuationMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 28));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t StoppedListeningForTextContinuationMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for StoppedListeningForTextContinuationMessage.Builder(0) + 28));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t StoppedListeningForTextContinuationMessage.Builder.lastTRPId.getter()
{
  v0 = type metadata accessor for StoppedListeningForTextContinuationMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 32));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t StoppedListeningForTextContinuationMessage.Builder.lastTRPId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for StoppedListeningForTextContinuationMessage.Builder(0) + 32));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t sub_2231DBE8C(uint64_t a1)
{
  v2 = sub_2231DBF8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231DBEC8(uint64_t a1)
{
  v2 = sub_2231DBF8C();

  return MEMORY[0x2821FE720](a1, v2);
}

id StoppedListeningForTextContinuationMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoppedListeningForTextContinuationMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231DBF8C()
{
  result = qword_280FCBC00;
  if (!qword_280FCBC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCBC00);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StoppedListeningForTextContinuationMessage.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_2231DC130()
{
  result = qword_27D05A9A0;
  if (!qword_27D05A9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A9A0);
  }

  return result;
}

unint64_t sub_2231DC188()
{
  result = qword_280FCBBF0;
  if (!qword_280FCBBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCBBF0);
  }

  return result;
}

unint64_t sub_2231DC1E0()
{
  result = qword_280FCBBF8;
  if (!qword_280FCBBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCBBF8);
  }

  return result;
}

void *TextBasedResultCandidateMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v2 = sub_2231FFC84();
  v3 = OUTLINED_FUNCTION_9(v2);
  v68 = v4;
  v69 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_2();
  v67 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v62 - v11;
  v13 = sub_2231FFDA4();
  v14 = OUTLINED_FUNCTION_9(v13);
  v70 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_2();
  v71 = v19 - v18;
  v20 = type metadata accessor for TextBasedResultCandidateMessage.Builder(0);
  v21 = (v20 - 8);
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2_2();
  v25 = (v24 - v23);
  *v25 = 15;
  *(v25 + 1) = 0;
  *(v25 + 2) = 0;
  v26 = v21[8];
  v72 = v13;
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
  a1(v25);
  v31 = *v25;
  if (v31 == 15 || (v32 = *(v25 + 2)) == 0)
  {
    sub_2231DC7CC(v25);
    goto LABEL_6;
  }

  v33 = *(v25 + 1);
  sub_2230D1480(&v25[v26], v12);
  v34 = v72;
  if (__swift_getEnumTagSinglePayload(v12, 1, v72) == 1)
  {
    sub_2231DC7CC(v25);
    sub_2230D69D4(v12);
LABEL_6:
    type metadata accessor for TextBasedResultCandidateMessage(0);
    v35 = *((*MEMORY[0x277D85000] & *v73) + 0x30);
    v36 = *((*MEMORY[0x277D85000] & *v73) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v65 = v33;
  v66 = v32;
  v39 = v70;
  v40 = v71;
  (*(v70 + 32))(v71, v12, v34);
  v41 = *(v27 + 1);
  if (!v41)
  {
    sub_2231DC7CC(v25);
    (*(v39 + 8))(v40, v34);
    goto LABEL_6;
  }

  v42 = *(v28 + 1);
  if (!v42 || (v43 = *(v30 + 1)) == 0 || !*(v29 + 1))
  {
    sub_2231DC7CC(v25);
    (*(v39 + 8))(v71, v34);
    goto LABEL_6;
  }

  v63 = *(v29 + 1);
  v64 = v42;
  v44 = *v27;
  v45 = *v28;
  v46 = *v29;
  v74 = *v30;
  v75 = v43;
  v47 = v66;

  v48 = v67;
  sub_2231FFC74();
  sub_2230D1D30();
  v49 = sub_2232002E4();
  v51 = v50;
  v52 = (*(v68 + 8))(v48, v69);
  v53 = HIBYTE(v51) & 0xF;
  if ((v51 & 0x2000000000000000) == 0)
  {
    v53 = v49 & 0xFFFFFFFFFFFFLL;
  }

  if (!v53)
  {

    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v58 = sub_223200014();
    __swift_project_value_buffer(v58, qword_280FCE830);
    v59 = sub_223200004();
    v60 = sub_223200254();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_2230CE000, v59, v60, "utterance is empty, can't create message", v61, 2u);
      MEMORY[0x223DD6780](v61, -1, -1);
    }

    sub_2231DC7CC(v25);
    (*(v70 + 8))(v71, v72);
    goto LABEL_6;
  }

  v54 = (v73 + OBJC_IVAR____TtC16SiriMessageTypes31TextBasedResultCandidateMessage_utterance);
  *v54 = v49;
  v54[1] = v51;
  MEMORY[0x28223BE20](v52);
  *(&v62 - 80) = v31;
  v55 = v64;
  *(&v62 - 9) = v65;
  *(&v62 - 8) = v47;
  v56 = v71;
  *(&v62 - 7) = v71;
  *(&v62 - 6) = v44;
  *(&v62 - 5) = v41;
  *(&v62 - 4) = v45;
  *(&v62 - 3) = v55;
  *(&v62 - 2) = v46;
  *(&v62 - 1) = v63;
  v37 = UserIdAwareResultCandidateMessageBase.init(build:)(sub_2230FB70C);

  v57 = v37;
  sub_2231DC7CC(v25);
  if (v37)
  {
  }

  (*(v70 + 8))(v56, v72);
  return v37;
}

uint64_t sub_2231DC7CC(uint64_t a1)
{
  v2 = type metadata accessor for TextBasedResultCandidateMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *TextBasedResultCandidateMessage.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A9A8, &qword_22321DDF8);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231DD298();
  sub_223200794();
  if (v2)
  {
    v16 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for TextBasedResultCandidateMessage(0);
    v11 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
    v12 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = sub_2232004F4();
    v14 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes31TextBasedResultCandidateMessage_utterance);
    *v14 = v10;
    v14[1] = v15;
    sub_2230F7158(a1, v19);
    v16 = UserIdAwareResultCandidateMessageBase.init(from:)(v19);
    v17 = OUTLINED_FUNCTION_2();
    v18(v17);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v16;
}

uint64_t sub_2231DCA4C(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A9B0, &qword_22321DE00);
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v16 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231DD298();
  sub_2232007A4();
  v13 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes31TextBasedResultCandidateMessage_utterance);
  v14 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes31TextBasedResultCandidateMessage_utterance + 8);
  sub_2232005F4();
  if (!v2)
  {
    sub_2231EEBE4(a1);
  }

  return (*(v7 + 8))(v11, v4);
}

uint64_t sub_2231DCBCC(uint64_t a1)
{
  v2 = sub_2231DD298();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231DCC08(uint64_t a1)
{
  v2 = sub_2231DD298();

  return MEMORY[0x2821FE720](a1, v2);
}

void *TextBasedResultCandidateMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return TextBasedResultCandidateMessage.init(build:)(v1);
}

uint64_t TextBasedResultCandidateMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t TextBasedResultCandidateMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t TextBasedResultCandidateMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TextBasedResultCandidateMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t TextBasedResultCandidateMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_8_24() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t TextBasedResultCandidateMessage.Builder.requestId.getter()
{
  v0 = type metadata accessor for TextBasedResultCandidateMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 28));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t TextBasedResultCandidateMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = type metadata accessor for TextBasedResultCandidateMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2(*(v3 + 28));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextBasedResultCandidateMessage.Builder.resultCandidateId.getter()
{
  v0 = type metadata accessor for TextBasedResultCandidateMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 32));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t TextBasedResultCandidateMessage.Builder.resultCandidateId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = type metadata accessor for TextBasedResultCandidateMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2(*(v3 + 32));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextBasedResultCandidateMessage.Builder.userId.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TextBasedResultCandidateMessage.Builder(0) + 36));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t TextBasedResultCandidateMessage.Builder.userId.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = type metadata accessor for TextBasedResultCandidateMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2(*(v4 + 36));
  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t TextBasedResultCandidateMessage.Builder.utterance.getter()
{
  v0 = type metadata accessor for TextBasedResultCandidateMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 40));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t TextBasedResultCandidateMessage.Builder.utterance.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = type metadata accessor for TextBasedResultCandidateMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2(*(v3 + 40));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

void *LLMBasedResultCandidateMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return TextBasedResultCandidateMessage.init(build:)(v1);
}

void *LLMBasedResultCandidateMessage.init(from:)(uint64_t *a1)
{
  sub_2230F7158(a1, v4);
  v2 = TextBasedResultCandidateMessage.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

id sub_2231DD258(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_2231DD298()
{
  result = qword_280FCC3E0;
  if (!qword_280FCC3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCC3E0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TextBasedResultCandidateMessage.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_2231DD464()
{
  result = qword_27D05A9C8;
  if (!qword_27D05A9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A9C8);
  }

  return result;
}

unint64_t sub_2231DD4BC()
{
  result = qword_280FCC3D0;
  if (!qword_280FCC3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCC3D0);
  }

  return result;
}

unint64_t sub_2231DD514()
{
  result = qword_280FCC3D8;
  if (!qword_280FCC3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCC3D8);
  }

  return result;
}

void *TextBasedTRPCandidateForPlannerMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return TextBasedTRPCandidateForPlannerMessage.init(build:)(v1);
}

void *TextBasedTRPCandidateForPlannerMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v2 = sub_2231FFC84();
  v3 = OUTLINED_FUNCTION_9(v2);
  v68 = v4;
  v69 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_2();
  v67 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v62 - v11;
  v13 = sub_2231FFDA4();
  v14 = OUTLINED_FUNCTION_9(v13);
  v70 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_2();
  v71 = v19 - v18;
  v20 = type metadata accessor for TextBasedTRPCandidateForPlannerMessage.Builder(0);
  v21 = (v20 - 8);
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2_2();
  v25 = (v24 - v23);
  *v25 = 15;
  *(v25 + 1) = 0;
  *(v25 + 2) = 0;
  v26 = v21[8];
  v72 = v13;
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
  a1(v25);
  v31 = *v25;
  if (v31 == 15 || (v32 = *(v25 + 2)) == 0)
  {
    sub_2231DDB6C(v25);
    goto LABEL_6;
  }

  v33 = *(v25 + 1);
  sub_2230D1480(&v25[v26], v12);
  v34 = v72;
  if (__swift_getEnumTagSinglePayload(v12, 1, v72) == 1)
  {
    sub_2231DDB6C(v25);
    sub_2230D69D4(v12);
LABEL_6:
    type metadata accessor for TextBasedTRPCandidateForPlannerMessage(0);
    v35 = *((*MEMORY[0x277D85000] & *v73) + 0x30);
    v36 = *((*MEMORY[0x277D85000] & *v73) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v65 = v33;
  v66 = v32;
  v39 = v70;
  v40 = v71;
  (*(v70 + 32))(v71, v12, v34);
  v41 = *(v27 + 1);
  if (!v41)
  {
    sub_2231DDB6C(v25);
    (*(v39 + 8))(v40, v34);
    goto LABEL_6;
  }

  v42 = *(v28 + 1);
  if (!v42 || (v43 = *(v30 + 1)) == 0 || !*(v29 + 1))
  {
    sub_2231DDB6C(v25);
    (*(v39 + 8))(v71, v34);
    goto LABEL_6;
  }

  v63 = *(v29 + 1);
  v64 = v42;
  v44 = *v27;
  v45 = *v28;
  v46 = *v29;
  v74 = *v30;
  v75 = v43;
  v47 = v66;

  v48 = v67;
  sub_2231FFC74();
  sub_2230D1D30();
  v49 = sub_2232002E4();
  v51 = v50;
  v52 = (*(v68 + 8))(v48, v69);
  v53 = HIBYTE(v51) & 0xF;
  if ((v51 & 0x2000000000000000) == 0)
  {
    v53 = v49 & 0xFFFFFFFFFFFFLL;
  }

  if (!v53)
  {

    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v58 = sub_223200014();
    __swift_project_value_buffer(v58, qword_280FCE830);
    v59 = sub_223200004();
    v60 = sub_223200254();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_2230CE000, v59, v60, "utterance is empty, can't create message", v61, 2u);
      MEMORY[0x223DD6780](v61, -1, -1);
    }

    sub_2231DDB6C(v25);
    (*(v70 + 8))(v71, v72);
    goto LABEL_6;
  }

  v54 = (v73 + OBJC_IVAR____TtC16SiriMessageTypes38TextBasedTRPCandidateForPlannerMessage_utterance);
  *v54 = v49;
  v54[1] = v51;
  MEMORY[0x28223BE20](v52);
  *(&v62 - 80) = v31;
  v55 = v64;
  *(&v62 - 9) = v65;
  *(&v62 - 8) = v47;
  v56 = v71;
  *(&v62 - 7) = v71;
  *(&v62 - 6) = v44;
  *(&v62 - 5) = v41;
  *(&v62 - 4) = v45;
  *(&v62 - 3) = v55;
  *(&v62 - 2) = v46;
  *(&v62 - 1) = v63;
  v37 = TRPCandidateRequestMessageBase.init(build:)(sub_223113ED4);

  v57 = v37;
  sub_2231DDB6C(v25);
  if (v37)
  {
  }

  (*(v70 + 8))(v56, v72);
  return v37;
}

uint64_t sub_2231DDB6C(uint64_t a1)
{
  v2 = type metadata accessor for TextBasedTRPCandidateForPlannerMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *TextBasedTRPCandidateForPlannerMessage.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A9D0, &qword_22321DFD8);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231DE4AC();
  sub_223200794();
  if (v2)
  {
    v16 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for TextBasedTRPCandidateForPlannerMessage(0);
    v11 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
    v12 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = sub_2232004F4();
    v14 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes38TextBasedTRPCandidateForPlannerMessage_utterance);
    *v14 = v10;
    v14[1] = v15;
    sub_2230F7158(a1, v19);
    v16 = TRPCandidateRequestMessageBase.init(from:)(v19);
    v17 = OUTLINED_FUNCTION_2();
    v18(v17);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v16;
}

uint64_t sub_2231DDE30(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A9D8, &qword_22321DFE0);
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v16 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231DE4AC();
  sub_2232007A4();
  v13 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes38TextBasedTRPCandidateForPlannerMessage_utterance);
  v14 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes38TextBasedTRPCandidateForPlannerMessage_utterance + 8);
  sub_2232005F4();
  if (!v2)
  {
    sub_2231E5494(a1);
  }

  return (*(v7 + 8))(v11, v4);
}

uint64_t TextBasedTRPCandidateForPlannerMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t TextBasedTRPCandidateForPlannerMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t TextBasedTRPCandidateForPlannerMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TextBasedTRPCandidateForPlannerMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t TextBasedTRPCandidateForPlannerMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_8_25() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t TextBasedTRPCandidateForPlannerMessage.Builder.requestId.getter()
{
  v0 = type metadata accessor for TextBasedTRPCandidateForPlannerMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 28));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t TextBasedTRPCandidateForPlannerMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = type metadata accessor for TextBasedTRPCandidateForPlannerMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2(*(v3 + 28));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextBasedTRPCandidateForPlannerMessage.Builder.trpCandidateId.getter()
{
  v0 = type metadata accessor for TextBasedTRPCandidateForPlannerMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 32));
  return OUTLINED_FUNCTION_2_1();
}