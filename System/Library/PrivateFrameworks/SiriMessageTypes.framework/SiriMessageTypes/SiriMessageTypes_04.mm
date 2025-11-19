unint64_t sub_22311BFE4()
{
  result = qword_27D057DB0;
  if (!qword_27D057DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057DB0);
  }

  return result;
}

unint64_t sub_22311C03C()
{
  result = qword_27D057DB8;
  if (!qword_27D057DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057DB8);
  }

  return result;
}

unint64_t sub_22311C094()
{
  result = qword_27D057DC0;
  if (!qword_27D057DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057DC0);
  }

  return result;
}

uint64_t sub_22311C0F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449707274 && a2 == 0xE500000000000000;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x44676E6974756F72 && a2 == 0xEF6E6F6973696365;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000012 && 0x8000000223222870 == a2)
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

uint64_t sub_22311C214(char a1)
{
  if (!a1)
  {
    return 0x6449707274;
  }

  if (a1 == 1)
  {
    return 0x44676E6974756F72;
  }

  return 0xD000000000000012;
}

uint64_t sub_22311C280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22311C0F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22311C2A8(uint64_t a1)
{
  v2 = sub_22311D87C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22311C2E4(uint64_t a1)
{
  v2 = sub_22311D87C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FinalTRPStateMessage.routingDecision.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + OBJC_IVAR____TtC16SiriMessageTypes20FinalTRPStateMessage_routingDecision), 0x41uLL);
  memcpy(a1, (v1 + OBJC_IVAR____TtC16SiriMessageTypes20FinalTRPStateMessage_routingDecision), 0x41uLL);
  return sub_2230E6EA8(__dst, &v4);
}

void *FinalTRPStateMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return FinalTRPStateMessage.init(build:)(v1);
}

void *FinalTRPStateMessage.init(build:)(void (*a1)(unsigned __int8 *))
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
  v54 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v55 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FinalTRPStateMessage.Builder(0);
  v13 = (v12 - 8);
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v16 = 15;
  *(v16 + 1) = 0;
  *(v16 + 2) = 0;
  v17 = v13[8];
  v18 = v6;
  __swift_storeEnumTagSinglePayload(&v16[v17], 1, 1, v6);
  v19 = &v16[v13[9]];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = &v16[v13[10]];
  *v20 = 0;
  *(v20 + 1) = 0;
  v21 = &v16[v13[11]];
  *v21 = 0u;
  *(v21 + 1) = 0u;
  *(v21 + 4) = 0;
  *(v21 + 5) = 0x1FFFFFFFELL;
  *(v21 + 6) = 0;
  *(v21 + 7) = 0;
  v21[64] = 0;
  v22 = v13[12];
  v16[v22] = 4;
  v57(v16);
  v23 = *v16;
  if (v23 == 15 || !*(v16 + 2))
  {
    goto LABEL_11;
  }

  v57 = *(v16 + 2);
  v53 = *(v16 + 1);
  sub_2230D3054(&v16[v17], v5, &qword_27D0575C0, &qword_2232035E0);
  if (__swift_getEnumTagSinglePayload(v5, 1, v18) == 1)
  {
    sub_2230D4138(v5, &qword_27D0575C0, &qword_2232035E0);
LABEL_11:
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
      __dst[0] = v37;
      *v36 = 136446210;
      v38 = sub_2230F7898();
      v40 = sub_2231A5D38(v38, v39, __dst);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_2230CE000, v34, v35, "Could not build %{public}s: Builder has missing required fields", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x223DD6780](v37, -1, -1);
      MEMORY[0x223DD6780](v36, -1, -1);
    }

    sub_22311D7EC(v16);
    type metadata accessor for FinalTRPStateMessage(0);
    v41 = *((*MEMORY[0x277D85000] & *v58) + 0x30);
    v42 = *((*MEMORY[0x277D85000] & *v58) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v24 = v18;
  v25 = v54;
  (*(v54 + 32))(v55, v5, v24);
  v26 = *(v19 + 1);
  if (!v26)
  {
    (*(v25 + 8))(v55, v24);
    goto LABEL_11;
  }

  v52 = v24;
  v27 = *(v20 + 1);
  if (!v27 || (v28 = *v19, v29 = *v20, v30 = memcpy(__dst, v21, 0x41uLL), v31 = __dst[5], (__dst[5] & 0x7FFFFFFFFFFFFFFELL) == 0x1FFFFFFFELL) || (v32 = v16[v22], v32 == 4))
  {
    (*(v25 + 8))(v55, v52);
    goto LABEL_11;
  }

  v45 = v58;
  v46 = (v58 + OBJC_IVAR____TtC16SiriMessageTypes20FinalTRPStateMessage_trpCandidateId);
  *v46 = v29;
  v46[1] = v27;
  v47 = v45 + OBJC_IVAR____TtC16SiriMessageTypes20FinalTRPStateMessage_routingDecision;
  v48 = *(v21 + 1);
  *v47 = *v21;
  *(v47 + 1) = v48;
  *(v47 + 4) = *(v21 + 4);
  *(v47 + 5) = v31;
  *(v47 + 3) = *(v21 + 3);
  v47[64] = v21[64];
  *(v45 + OBJC_IVAR____TtC16SiriMessageTypes20FinalTRPStateMessage_mitigationDecision) = v32;
  MEMORY[0x28223BE20](v30);
  *(&v52 - 48) = v23;
  v49 = v57;
  *(&v52 - 5) = v53;
  *(&v52 - 4) = v49;
  v50 = v55;
  *(&v52 - 3) = v55;
  *(&v52 - 2) = v28;
  *(&v52 - 1) = v26;

  sub_2230D3054(__dst, v59, &qword_27D057DC8, &qword_22320E730);
  v43 = RequestMessageBase.init(build:)(sub_22311D868);
  v51 = v43;
  sub_22311D7EC(v16);
  if (v43)
  {
  }

  (*(v54 + 8))(v50, v52);
  return v43;
}

uint64_t sub_22311C9C4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = a2;
  v13 = *(a1 + 16);

  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  v14 = type metadata accessor for RequestMessageBase.Builder(0);
  v15 = *(v14 + 24);
  sub_2230D4138(a1 + v15, &qword_27D0575C0, &qword_2232035E0);
  v16 = sub_2231FFDA4();
  (*(*(v16 - 8) + 16))(a1 + v15, a5, v16);
  __swift_storeEnumTagSinglePayload(a1 + v15, 0, 1, v16);
  v17 = (a1 + *(v14 + 28));
  v18 = v17[1];

  *v17 = a6;
  v17[1] = a7;
  return result;
}

void *FinalTRPStateMessage.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057DD0, &qword_2232076E0);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22311D87C();
  sub_223200794();
  if (v2)
  {
    v16 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for FinalTRPStateMessage(0);
    v11 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
    v12 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    __dst[0] = 0;
    v10 = sub_2232004F4();
    v14 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes20FinalTRPStateMessage_trpCandidateId);
    *v14 = v10;
    v14[1] = v15;
    __dst[87] = 1;
    sub_22311D8D0();
    OUTLINED_FUNCTION_8_5();
    memcpy(v1 + OBJC_IVAR____TtC16SiriMessageTypes20FinalTRPStateMessage_routingDecision, __dst, 0x41uLL);
    __dst[86] = 2;
    sub_22311D924();
    OUTLINED_FUNCTION_8_5();
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes20FinalTRPStateMessage_mitigationDecision) = v19[0];
    sub_2230F7158(a1, v19);
    v16 = RequestMessageBase.init(from:)(v19);
    v17 = OUTLINED_FUNCTION_2();
    v18(v17);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v16;
}

uint64_t sub_22311CE1C(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057DF0, &qword_2232076E8);
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v16[-v10];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22311D87C();
  sub_2232007A4();
  v13 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes20FinalTRPStateMessage_trpCandidateId);
  v14 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes20FinalTRPStateMessage_trpCandidateId + 8);
  __dst[95] = 0;
  sub_2232005F4();
  if (!v2)
  {
    memcpy(__dst, (v1 + OBJC_IVAR____TtC16SiriMessageTypes20FinalTRPStateMessage_routingDecision), 0x41uLL);
    memcpy(__src, (v1 + OBJC_IVAR____TtC16SiriMessageTypes20FinalTRPStateMessage_routingDecision), sizeof(__src));
    __dst[94] = 1;
    sub_2230E6EA8(__dst, v16);
    sub_2230E6F8C();
    sub_223200654();
    memcpy(v16, __src, 0x41uLL);
    sub_2230E6410(v16);
    __dst[93] = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes20FinalTRPStateMessage_mitigationDecision);
    __dst[92] = 2;
    sub_22311D978();
    sub_223200654();
    sub_2230D77A8(a1);
  }

  return (*(v7 + 8))(v11, v4);
}

uint64_t sub_22311D0BC()
{
  v1 = v0;
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_223200374();
  v12 = 0;
  v13 = 0xE000000000000000;
  v11.receiver = v0;
  v11.super_class = type metadata accessor for FinalTRPStateMessage(0);
  v2 = objc_msgSendSuper2(&v11, sel_description);
  v3 = sub_2232000C4();
  v5 = v4;

  MEMORY[0x223DD5AA0](v3, v5);

  MEMORY[0x223DD5AA0](0xD000000000000013, 0x80000002232227B0);
  MEMORY[0x223DD5AA0](*&v1[OBJC_IVAR____TtC16SiriMessageTypes20FinalTRPStateMessage_trpCandidateId], *&v1[OBJC_IVAR____TtC16SiriMessageTypes20FinalTRPStateMessage_trpCandidateId + 8]);
  MEMORY[0x223DD5AA0](0xD000000000000015, 0x80000002232227D0);
  memcpy(__dst, &v1[OBJC_IVAR____TtC16SiriMessageTypes20FinalTRPStateMessage_routingDecision], 0x41uLL);
  memcpy(v10, &v1[OBJC_IVAR____TtC16SiriMessageTypes20FinalTRPStateMessage_routingDecision], sizeof(v10));
  sub_2230E6EA8(__dst, v9);
  v6 = sub_223200104();
  MEMORY[0x223DD5AA0](v6);

  MEMORY[0x223DD5AA0](0xD000000000000018, 0x80000002232227F0);
  v10[0] = v1[OBJC_IVAR____TtC16SiriMessageTypes20FinalTRPStateMessage_mitigationDecision];
  v7 = sub_223200104();
  MEMORY[0x223DD5AA0](v7);

  MEMORY[0x223DD5AA0](62, 0xE100000000000000);
  return v12;
}

uint64_t FinalTRPStateMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t FinalTRPStateMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t FinalTRPStateMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_5_11() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t FinalTRPStateMessage.Builder.requestId.getter()
{
  v0 = type metadata accessor for FinalTRPStateMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 28));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t FinalTRPStateMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for FinalTRPStateMessage.Builder(0) + 28));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t FinalTRPStateMessage.Builder.trpCandidateId.getter()
{
  v0 = type metadata accessor for FinalTRPStateMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 32));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t FinalTRPStateMessage.Builder.trpCandidateId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for FinalTRPStateMessage.Builder(0) + 32));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t FinalTRPStateMessage.Builder.routingDecision.getter@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for FinalTRPStateMessage.Builder(0) + 36);
  memcpy(__dst, (v1 + v3), 0x41uLL);
  memcpy(a1, (v1 + v3), 0x41uLL);
  return sub_2230D3054(__dst, &v5, &qword_27D057DC8, &qword_22320E730);
}

void *FinalTRPStateMessage.Builder.routingDecision.setter()
{
  v2 = *(OUTLINED_FUNCTION_5_11() + 36);
  memcpy(__dst, (v1 + v2), 0x41uLL);
  sub_2230D4138(__dst, &qword_27D057DC8, &qword_22320E730);
  return memcpy((v1 + v2), v0, 0x41uLL);
}

uint64_t FinalTRPStateMessage.Builder.mitigationDecision.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for FinalTRPStateMessage.Builder(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t FinalTRPStateMessage.Builder.mitigationDecision.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for FinalTRPStateMessage.Builder(0);
  *(v1 + *(result + 40)) = v2;
  return result;
}

uint64_t sub_22311D728()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes20FinalTRPStateMessage_trpCandidateId + 8);

  return OUTLINED_FUNCTION_2_3(v0 + OBJC_IVAR____TtC16SiriMessageTypes20FinalTRPStateMessage_routingDecision);
}

id FinalTRPStateMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FinalTRPStateMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22311D7EC(uint64_t a1)
{
  v2 = type metadata accessor for FinalTRPStateMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22311D87C()
{
  result = qword_27D057DD8;
  if (!qword_27D057DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057DD8);
  }

  return result;
}

unint64_t sub_22311D8D0()
{
  result = qword_27D057DE0;
  if (!qword_27D057DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057DE0);
  }

  return result;
}

unint64_t sub_22311D924()
{
  result = qword_27D057DE8;
  if (!qword_27D057DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057DE8);
  }

  return result;
}

unint64_t sub_22311D978()
{
  result = qword_280FCE470;
  if (!qword_280FCE470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE470);
  }

  return result;
}

uint64_t sub_22311DA80()
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
        sub_2230D525C(319, &qword_280FCD5E8);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          sub_2230D525C(319, &qword_280FCE460);
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

_BYTE *storeEnumTagSinglePayload for FinalTRPStateMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22311DC94()
{
  result = qword_27D057E18;
  if (!qword_27D057E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057E18);
  }

  return result;
}

unint64_t sub_22311DCEC()
{
  result = qword_27D057E20;
  if (!qword_27D057E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057E20);
  }

  return result;
}

unint64_t sub_22311DD44()
{
  result = qword_27D057E28;
  if (!qword_27D057E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057E28);
  }

  return result;
}

uint64_t sub_22311DD98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  switch((a6 >> 60) & 7)
  {
    case 0uLL:

      goto LABEL_3;
    case 1uLL:
    case 2uLL:
LABEL_3:

      break;
    case 3uLL:

      result = sub_22311DE7C();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22311DE7C()
{
}

uint64_t FlowCompletedMessage.invocationId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes20FlowCompletedMessage_invocationId);
  v2 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes20FlowCompletedMessage_invocationId + 8);

  return OUTLINED_FUNCTION_2_1();
}

void *FlowCompletedMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return FlowCompletedMessage.init(build:)(v1);
}

void *FlowCompletedMessage.init(build:)(void (*a1)(_BYTE *))
{
  v3 = type metadata accessor for FlowCompletedMessage.Builder(0);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v7 = 0;
  *(v7 + 1) = 0;
  v7[16] = 15;
  *(v7 + 3) = 0;
  *(v7 + 4) = 0;
  v8 = *(v4 + 36);
  v9 = sub_2231FFDA4();
  __swift_storeEnumTagSinglePayload(&v7[v8], 1, 1, v9);
  v10 = &v7[*(v4 + 40)];
  *v10 = 0;
  v10[1] = 0;
  a1(v7);
  v11 = *(v7 + 1);
  v12 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes20FlowCompletedMessage_invocationId);
  *v12 = *v7;
  v12[1] = v11;
  v16 = v7;

  v13 = RequestMessageBase.init(build:)(sub_22311E12C);
  sub_22311E134(v7);
  return v13;
}

uint64_t sub_22311E07C(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 16);
  v5 = *(a2 + 24);
  v4 = *(a2 + 32);
  v6 = *(a1 + 16);

  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  v7 = type metadata accessor for FlowCompletedMessage.Builder(0);
  v8 = *(v7 + 28);
  v9 = type metadata accessor for RequestMessageBase.Builder(0);
  sub_2230DAEC8(a2 + v8, a1 + *(v9 + 24));
  v10 = (a2 + *(v7 + 32));
  v12 = *v10;
  v11 = v10[1];
  v13 = (a1 + *(v9 + 28));
  v14 = v13[1];

  *v13 = v12;
  v13[1] = v11;
  return result;
}

uint64_t sub_22311E134(uint64_t a1)
{
  v2 = type metadata accessor for FlowCompletedMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22311E190(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x697461636F766E69 && a2 == 0xEC00000064496E6FLL)
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

uint64_t sub_22311E230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22311E190(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22311E25C(uint64_t a1)
{
  v2 = sub_22311E51C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22311E298(uint64_t a1)
{
  v2 = sub_22311E51C();

  return MEMORY[0x2821FE720](a1, v2);
}

void *FlowCompletedMessage.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057E30, &qword_2232078B0);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22311E51C();
  sub_223200794();
  if (v2)
  {
    v16 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for FlowCompletedMessage(0);
    v11 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
    v12 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = sub_223200494();
    v14 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes20FlowCompletedMessage_invocationId);
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

unint64_t sub_22311E51C()
{
  result = qword_280FCE060;
  if (!qword_280FCE060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE060);
  }

  return result;
}

uint64_t sub_22311E590(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057E38, &unk_2232078B8);
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v15 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22311E51C();
  sub_2232007A4();
  if (!*(v1 + OBJC_IVAR____TtC16SiriMessageTypes20FlowCompletedMessage_invocationId + 8) || (v13 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes20FlowCompletedMessage_invocationId), sub_2232005F4(), !v2))
  {
    sub_2230D77A8(a1);
  }

  return (*(v7 + 8))(v11, v4);
}

uint64_t FlowCompletedMessage.Builder.invocationId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_2_1();
}

uint64_t FlowCompletedMessage.Builder.invocationId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t FlowCompletedMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t FlowCompletedMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 32);

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t FlowCompletedMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FlowCompletedMessage.Builder(0) + 28);

  return sub_2230D1480(v3, a1);
}

uint64_t FlowCompletedMessage.Builder.sessionId.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for FlowCompletedMessage.Builder(0) + 28);

  return sub_2230D4E04(a1, v3);
}

uint64_t FlowCompletedMessage.Builder.requestId.getter()
{
  v1 = (v0 + *(type metadata accessor for FlowCompletedMessage.Builder(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_2_1();
}

uint64_t FlowCompletedMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for FlowCompletedMessage.Builder(0) + 32));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

id FlowCompletedMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FlowCompletedMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22311EAE0()
{
  sub_2230D525C(319, &qword_280FCA4D8);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCB0A8);
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_2230F6D30();
    if (v5 > 0x3F)
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

_BYTE *storeEnumTagSinglePayload for FlowCompletedMessage.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_22311EC60()
{
  result = qword_27D057E40;
  if (!qword_27D057E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057E40);
  }

  return result;
}

unint64_t sub_22311ECB8()
{
  result = qword_280FCE050;
  if (!qword_280FCE050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE050);
  }

  return result;
}

unint64_t sub_22311ED10()
{
  result = qword_280FCE058;
  if (!qword_280FCE058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE058);
  }

  return result;
}

void *FlowOutputMessage.command.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes17FlowOutputMessage_command);
  v2 = v1;
  return v1;
}

void *FlowOutputMessage.commandExecutionInfo.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes17FlowOutputMessage_commandExecutionInfo);
  v2 = v1;
  return v1;
}

uint64_t FlowOutputMessage.inAppResponse.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes17FlowOutputMessage_inAppResponse + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes17FlowOutputMessage_inAppResponse);
  a1[1] = v2;
}

void *FlowOutputMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return FlowOutputMessage.init(build:)(v1);
}

uint64_t FlowOutputMessage.InAppResponse.init(_:)@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  sub_2231FFEE4();

  v2 = v10;
  if (v10)
  {
    v3 = v9;
  }

  else
  {
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v5 = sub_223200014();
    __swift_project_value_buffer(v5, qword_280FCE830);
    v6 = sub_223200004();
    v7 = sub_223200254();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2230CE000, v6, v7, "InAppResponse: BundleId is nil, setting it to empty string", v8, 2u);
      MEMORY[0x223DD6780](v8, -1, -1);
    }

    v3 = 0;
    v2 = 0xE000000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
  return result;
}

uint64_t FlowOutputMessage.InAppResponse.bundleId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_2_1();
}

uint64_t static FlowOutputMessage.InAppResponse.== infix(_:_:)(void *a1, void *a2)
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

uint64_t sub_22311F074(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000)
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

uint64_t sub_22311F108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22311F074(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22311F134(uint64_t a1)
{
  v2 = sub_2230E0EB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22311F170(uint64_t a1)
{
  v2 = sub_2230E0EB4();

  return MEMORY[0x2821FE720](a1, v2);
}

void FlowOutputMessage.InAppResponse.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_8_1();
  a19 = v22;
  a20 = v23;
  a10 = v21;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057E50, &qword_223207A78);
  OUTLINED_FUNCTION_9(v26);
  v28 = v27;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v31);
  v33 = &a9 - v32;
  v34 = *v20;
  v35 = v20[1];
  v36 = v25[4];
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  sub_2230E0EB4();
  OUTLINED_FUNCTION_23_1();
  sub_2232007A4();
  sub_2232005F4();
  (*(v28 + 8))(v33, v26);
  OUTLINED_FUNCTION_9_0();
}

uint64_t FlowOutputMessage.Builder.invocationId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_2_1();
}

void *FlowOutputMessage.Builder.command.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void *FlowOutputMessage.Builder.commandExecutionInfo.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t FlowOutputMessage.Builder.systemDialogActs.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t FlowOutputMessage.Builder.activeTasks.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t FlowOutputMessage.Builder.completedTasks.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t FlowOutputMessage.Builder.legacyContext.setter()
{
  v2 = OUTLINED_FUNCTION_8_0();
  v3 = type metadata accessor for FlowOutputMessage.Builder(v2);
  return sub_2230D2E68(v0, v1 + *(v3 + 40), &qword_27D057E48, &qword_223207A50);
}

uint64_t FlowOutputMessage.Builder.legacyContext.modify()
{
  v0 = OUTLINED_FUNCTION_8_0();
  v1 = *(type metadata accessor for FlowOutputMessage.Builder(v0) + 40);
  return OUTLINED_FUNCTION_8();
}

uint64_t FlowOutputMessage.Builder.listenAfterSpeaking.modify()
{
  v0 = OUTLINED_FUNCTION_8_0();
  v1 = *(type metadata accessor for FlowOutputMessage.Builder(v0) + 44);
  return OUTLINED_FUNCTION_8();
}

uint64_t FlowOutputMessage.Builder.executionSource.getter()
{
  result = OUTLINED_FUNCTION_17_0();
  *v0 = *(v1 + *(result + 48));
  return result;
}

uint64_t FlowOutputMessage.Builder.executionSource.modify()
{
  v0 = OUTLINED_FUNCTION_8_0();
  v1 = *(type metadata accessor for FlowOutputMessage.Builder(v0) + 48);
  return OUTLINED_FUNCTION_8();
}

uint64_t FlowOutputMessage.Builder.source.getter()
{
  result = OUTLINED_FUNCTION_17_0();
  *v0 = *(v1 + *(result + 52));
  return result;
}

uint64_t FlowOutputMessage.Builder.source.modify()
{
  v0 = OUTLINED_FUNCTION_8_0();
  v1 = *(type metadata accessor for FlowOutputMessage.Builder(v0) + 52);
  return OUTLINED_FUNCTION_8();
}

uint64_t FlowOutputMessage.Builder.assistantId.getter()
{
  v0 = type metadata accessor for FlowOutputMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 56));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t FlowOutputMessage.Builder.assistantId.modify()
{
  v0 = OUTLINED_FUNCTION_8_0();
  v1 = *(type metadata accessor for FlowOutputMessage.Builder(v0) + 56);
  return OUTLINED_FUNCTION_8();
}

uint64_t FlowOutputMessage.Builder.sessionId.modify()
{
  v0 = OUTLINED_FUNCTION_8_0();
  v1 = *(type metadata accessor for FlowOutputMessage.Builder(v0) + 60);
  return OUTLINED_FUNCTION_8();
}

uint64_t FlowOutputMessage.Builder.requestId.getter()
{
  v0 = type metadata accessor for FlowOutputMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 64));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t FlowOutputMessage.Builder.requestId.modify()
{
  v0 = OUTLINED_FUNCTION_8_0();
  v1 = *(type metadata accessor for FlowOutputMessage.Builder(v0) + 64);
  return OUTLINED_FUNCTION_8();
}

uint64_t FlowOutputMessage.Builder.inAppResponse.getter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_17_0() + 68));
  v3 = v2[1];
  *v0 = *v2;
  v0[1] = v3;
}

uint64_t FlowOutputMessage.Builder.inAppResponse.modify()
{
  v0 = OUTLINED_FUNCTION_8_0();
  v1 = *(type metadata accessor for FlowOutputMessage.Builder(v0) + 68);
  return OUTLINED_FUNCTION_8();
}

uint64_t sub_22311F8F4(uint64_t a1, uint64_t a2)
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

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x8000000223220D50 == a2;
        if (v8 || (sub_2232006B4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6154657669746361 && a2 == 0xEB00000000736B73;
          if (v9 || (sub_2232006B4() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6574656C706D6F63 && a2 == 0xEE00736B73615464;
            if (v10 || (sub_2232006B4() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6F4379636167656CLL && a2 == 0xED0000747865746ELL;
              if (v11 || (sub_2232006B4() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000013 && 0x80000002232229A0 == a2;
                if (v12 || (sub_2232006B4() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6F69747563657865 && a2 == 0xEF656372756F536ELL;
                  if (v13 || (sub_2232006B4() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0x7365527070416E69 && a2 == 0xED000065736E6F70)
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

uint64_t sub_22311FC38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22311F8F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22311FC60@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22311FC30();
  *a1 = result;
  return result;
}

uint64_t sub_22311FC88(uint64_t a1)
{
  v2 = sub_2230E23F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22311FCC4(uint64_t a1)
{
  v2 = sub_2230E23F8();

  return MEMORY[0x2821FE720](a1, v2);
}

void FlowOutputMessage.init(from:)()
{
  OUTLINED_FUNCTION_8_1();
  v55 = v0;
  v3 = v2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057E48, &qword_223207A50) - 8) + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v53 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057E60, &qword_223207A90);
  OUTLINED_FUNCTION_9(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v13);
  v14 = v3[3];
  v15 = v3[4];
  v56 = v3;
  __swift_project_boxed_opaque_existential_1(v3, v14);
  sub_2230E23F8();
  OUTLINED_FUNCTION_23_1();
  sub_223200794();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v56);
    v17 = v55;
    type metadata accessor for FlowOutputMessage(0);
    v18 = *((*MEMORY[0x277D85000] & *v17) + 0x30);
    v19 = *((*MEMORY[0x277D85000] & *v17) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v57[0]) = 0;
    OUTLINED_FUNCTION_10_5();
    v16 = sub_223200494();
    v54 = v10;
    v20 = (v55 + OBJC_IVAR____TtC16SiriMessageTypes17FlowOutputMessage_invocationId);
    *v20 = v16;
    v20[1] = v21;
    sub_2230FB7A0();
    OUTLINED_FUNCTION_5_4();
    OUTLINED_FUNCTION_10_5();
    sub_2232004C4();
    if (*(&v57[0] + 1) >> 60 == 15)
    {
      v22 = 0;
    }

    else
    {
      objc_allocWithZone(MEMORY[0x277CCAAC8]);
      v23 = OUTLINED_FUNCTION_22_1();
      sub_223110BA0(v23, v24);
      v25 = OUTLINED_FUNCTION_22_1();
      sub_223120750(v25, v26);
      v27 = OUTLINED_FUNCTION_8_0();
      sub_2230FB7F4(v27, v28, v29);
      v30 = *MEMORY[0x277CCA308];
      sub_2232000C4();
      v53 = v31;
      v22 = sub_223200294();
      v32 = OUTLINED_FUNCTION_22_1();
      sub_22310A610(v32, v33);
    }

    v34 = v55;
    v35 = qword_280FCDFA0 + 96;
    *(v55 + OBJC_IVAR____TtC16SiriMessageTypes17FlowOutputMessage_command) = v22;
    OUTLINED_FUNCTION_5_4();
    OUTLINED_FUNCTION_10_5();
    sub_2232004C4();
    if (*(&v57[0] + 1) >> 60 == 15)
    {
      v36 = 0;
    }

    else
    {
      objc_allocWithZone(MEMORY[0x277CCAAC8]);
      v37 = OUTLINED_FUNCTION_21();
      sub_223110BA0(v37, v38);
      v39 = OUTLINED_FUNCTION_21();
      v41 = sub_223120750(v39, v40);
      sub_2230FB7F4(0, &qword_280FCA3B8, 0x277CEF210);
      v42 = *MEMORY[0x277CCA308];
      sub_2232000C4();
      v36 = sub_223200294();
      v43 = OUTLINED_FUNCTION_21();
      sub_22310A610(v43, v44);

      v34 = v55;
      v35 = &qword_280FCDFA0[12];
    }

    *(v34 + v35[509]) = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057E68, &qword_223207A98);
    sub_2230E2B44(&qword_27D057E70, &qword_27D057E78);
    OUTLINED_FUNCTION_10_5();
    sub_2232004C4();
    *(v34 + OBJC_IVAR____TtC16SiriMessageTypes17FlowOutputMessage_systemDialogActs) = *&v57[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057E80, &qword_223207AA0);
    sub_2230E2BD8(&qword_27D057E88, &qword_27D057E90);
    OUTLINED_FUNCTION_23_1();
    OUTLINED_FUNCTION_10_5();
    sub_2232004C4();
    *(v34 + OBJC_IVAR____TtC16SiriMessageTypes17FlowOutputMessage_activeTasks) = *&v57[0];
    OUTLINED_FUNCTION_23_1();
    OUTLINED_FUNCTION_10_5();
    sub_2232004C4();
    *(v34 + OBJC_IVAR____TtC16SiriMessageTypes17FlowOutputMessage_completedTasks) = *&v57[0];
    sub_2231FFE54();
    LOBYTE(v57[0]) = 6;
    OUTLINED_FUNCTION_7_8();
    sub_2230E2D2C(v45, v46);
    OUTLINED_FUNCTION_10_5();
    sub_2232004C4();
    v47 = v34;
    sub_223120830(v7, v34 + OBJC_IVAR____TtC16SiriMessageTypes17FlowOutputMessage_legacyContext);
    LOBYTE(v57[0]) = 7;
    OUTLINED_FUNCTION_10_5();
    v48 = sub_2232004A4();
    v49 = v54;
    *(v47 + OBJC_IVAR____TtC16SiriMessageTypes17FlowOutputMessage_listenAfterSpeaking) = v48;
    sub_223105D70();
    OUTLINED_FUNCTION_5_4();
    OUTLINED_FUNCTION_10_5();
    sub_223200554();
    *(v47 + OBJC_IVAR____TtC16SiriMessageTypes17FlowOutputMessage_executionSource) = v57[0];
    sub_2231208A0();
    OUTLINED_FUNCTION_5_4();
    OUTLINED_FUNCTION_10_5();
    sub_2232004C4();
    *(v47 + OBJC_IVAR____TtC16SiriMessageTypes17FlowOutputMessage_inAppResponse) = v57[0];
    sub_2230F7158(v56, v57);
    RequestMessageBase.init(from:)(v57);
    v50 = *(v49 + 8);
    v51 = OUTLINED_FUNCTION_9_5();
    v52(v51);
    __swift_destroy_boxed_opaque_existential_1(v56);
  }

  OUTLINED_FUNCTION_9_0();
}

uint64_t sub_22312064C()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes17FlowOutputMessage_invocationId + 8);

  v2 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes17FlowOutputMessage_systemDialogActs);

  v3 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes17FlowOutputMessage_activeTasks);

  v4 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes17FlowOutputMessage_completedTasks);

  sub_2230E4AC0(v0 + OBJC_IVAR____TtC16SiriMessageTypes17FlowOutputMessage_legacyContext);
  v5 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes17FlowOutputMessage_inAppResponse + 8);
}

id FlowOutputMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FlowOutputMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_223120750(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v12[1] = *MEMORY[0x277D85DE8];
  v6 = sub_2231FFD14();
  v12[0] = 0;
  v7 = [v3 initForReadingFromData:v6 error:v12];

  if (v7)
  {
    v8 = v12[0];
  }

  else
  {
    v9 = v12[0];
    sub_2231FFD04();

    swift_willThrow();
  }

  sub_2230D94DC(a1, a2);
  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t sub_223120830(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057E48, &qword_223207A50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2231208A0()
{
  result = qword_27D057EA0;
  if (!qword_27D057EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057EA0);
  }

  return result;
}

void sub_2231208FC()
{
  sub_223120D2C(319, &qword_280FCE620, MEMORY[0x277D5DC40]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_223120A2C()
{
  sub_2230D525C(319, &qword_280FCA4D8);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_223120C88(319, &qword_280FCA408, &qword_280FCA410, 0x277D471B0);
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_223120C88(319, &qword_280FCA3B0, &qword_280FCA3B8, 0x277CEF210);
    if (v5 > 0x3F)
    {
      return v3;
    }

    sub_223120CDC(319, &qword_280FCA4A0, &qword_27D057E68, &qword_223207A98);
    if (v6 > 0x3F)
    {
      return v3;
    }

    sub_223120CDC(319, &qword_280FCA4B8, &qword_27D057E80, &qword_223207AA0);
    if (v7 > 0x3F)
    {
      return v3;
    }

    sub_223120D2C(319, &qword_280FCE620, MEMORY[0x277D5DC40]);
    if (v8 > 0x3F)
    {
      return v3;
    }

    sub_2230D525C(319, &qword_280FCA440);
    if (v9 > 0x3F)
    {
      return v3;
    }

    sub_2230D525C(319, &qword_280FCAC80);
    if (v10 > 0x3F)
    {
      return v3;
    }

    sub_2230D525C(319, &qword_280FCB0A8);
    if (v11 > 0x3F)
    {
      return v3;
    }

    sub_223120D2C(319, &qword_280FCE678, MEMORY[0x277CC95F0]);
    if (v12 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_2230D525C(319, &qword_280FCE570);
      v1 = v13;
      if (v14 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

void sub_223120C88(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_2230FB7F4(255, a3, a4);
    OUTLINED_FUNCTION_24_1();
    v5 = sub_2232002D4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_223120CDC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    OUTLINED_FUNCTION_24_1();
    v5 = sub_2232002D4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_223120D2C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    OUTLINED_FUNCTION_24_1();
    v4 = sub_2232002D4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for FlowOutputMessage.InAppResponse.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_223120E3C()
{
  result = qword_27D057EB0;
  if (!qword_27D057EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057EB0);
  }

  return result;
}

unint64_t sub_223120E94()
{
  result = qword_27D057EB8;
  if (!qword_27D057EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057EB8);
  }

  return result;
}

unint64_t sub_223120EEC()
{
  result = qword_280FCE598;
  if (!qword_280FCE598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE598);
  }

  return result;
}

unint64_t sub_223120F44()
{
  result = qword_280FCE5A0;
  if (!qword_280FCE5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE5A0);
  }

  return result;
}

unint64_t sub_223120F9C()
{
  result = qword_280FCE580;
  if (!qword_280FCE580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE580);
  }

  return result;
}

unint64_t sub_223120FF4()
{
  result = qword_280FCE588;
  if (!qword_280FCE588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE588);
  }

  return result;
}

uint64_t FlowOutputResponseMessage.outputId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16SiriMessageTypes25FlowOutputResponseMessage_outputId;
  v4 = sub_2231FFDA4();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

void *FlowOutputResponseMessage.commandResult.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes25FlowOutputResponseMessage_commandResult);
  v2 = v1;
  return v1;
}

uint64_t sub_223121104(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x644974757074756FLL && a2 == 0xE800000000000000;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x52646E616D6D6F63 && a2 == 0xED0000746C757365)
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

uint64_t sub_2231211D4(char a1)
{
  if (a1)
  {
    return 0x52646E616D6D6F63;
  }

  else
  {
    return 0x644974757074756FLL;
  }
}

uint64_t sub_223121220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_223121104(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_223121248(uint64_t a1)
{
  v2 = sub_2231224FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223121284(uint64_t a1)
{
  v2 = sub_2231224FC();

  return MEMORY[0x2821FE720](a1, v2);
}

void *FlowOutputResponseMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v68 = v1;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_15();
  v64 = v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v60 - v7;
  v9 = sub_2231FFDA4();
  v10 = OUTLINED_FUNCTION_9(v9);
  v66 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15();
  v63 = v14;
  MEMORY[0x28223BE20](v15);
  v65 = &v60 - v16;
  v17 = type metadata accessor for FlowOutputResponseMessage.Builder(0);
  v18 = (v17 - 8);
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v21 = 15;
  *(v21 + 1) = 0;
  *(v21 + 2) = 0;
  v22 = v18[8];
  __swift_storeEnumTagSinglePayload(&v21[v22], 1, 1, v9);
  v23 = &v21[v18[9]];
  *v23 = 0;
  *(v23 + 1) = 0;
  v24 = v18[10];
  __swift_storeEnumTagSinglePayload(&v21[v24], 1, 1, v9);
  v25 = v18[11];
  *&v21[v25] = 0;
  a1(v21);
  v26 = *v21;
  if (v26 == 15)
  {
    goto LABEL_9;
  }

  v27 = *(v21 + 2);
  if (!v27)
  {
    goto LABEL_9;
  }

  v28 = *(v21 + 1);
  sub_2230D1480(&v21[v22], v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_2230D69D4(v8);
LABEL_9:
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v35 = sub_223200014();
    __swift_project_value_buffer(v35, qword_280FCE830);
    v36 = sub_223200004();
    v37 = sub_223200254();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v69 = v39;
      *v38 = 136446210;
      v40 = sub_2230F7898();
      v42 = sub_2231A5D38(v40, v41, &v69);

      *(v38 + 4) = v42;
      _os_log_impl(&dword_2230CE000, v36, v37, "Could not build %{public}s: Builder has missing required fields", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x223DD6780](v39, -1, -1);
      MEMORY[0x223DD6780](v38, -1, -1);
    }

    sub_223122480(v21);
    type metadata accessor for FlowOutputResponseMessage(0);
    v43 = *((*MEMORY[0x277D85000] & *v68) + 0x30);
    v44 = *((*MEMORY[0x277D85000] & *v68) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v61 = v28;
  v62 = v27;
  v30 = v65;
  v29 = v66;
  v60 = *(v66 + 32);
  v60(v65, v8, v9);
  v31 = *(v23 + 1);
  if (!v31)
  {
    (*(v29 + 8))(v30, v9);
    goto LABEL_9;
  }

  v32 = *v23;
  v33 = &v21[v24];
  v34 = v64;
  sub_2230D1480(v33, v64);
  if (__swift_getEnumTagSinglePayload(v34, 1, v9) == 1)
  {
    sub_2230D69D4(v34);
    (*(v66 + 8))(v65, v9);
    goto LABEL_9;
  }

  v47 = v63;
  v60(v63, v34, v9);
  v48 = v66;
  v49 = v32;
  v50 = v68;
  v51 = (*(v66 + 16))(v68 + OBJC_IVAR____TtC16SiriMessageTypes25FlowOutputResponseMessage_outputId, v47, v9);
  ObjectType = &v60;
  v52 = *&v21[v25];
  v53 = v48;
  *(v50 + OBJC_IVAR____TtC16SiriMessageTypes25FlowOutputResponseMessage_commandResult) = v52;
  MEMORY[0x28223BE20](v51);
  *(&v60 - 48) = v26;
  v54 = v62;
  *(&v60 - 5) = v61;
  *(&v60 - 4) = v54;
  v55 = v65;
  *(&v60 - 3) = v65;
  *(&v60 - 2) = v49;
  *(&v60 - 1) = v31;
  v57 = v56;
  v45 = RequestMessageBase.init(build:)(sub_2230DDE2C);
  v58 = *(v53 + 8);
  v58(v47, v9);
  v59 = v45;
  sub_223122480(v21);
  if (v45)
  {
  }

  v58(v55, v9);
  return v45;
}

void *FlowOutputResponseMessage.init(from:)(uint64_t *a1)
{
  v3 = sub_2231FFDA4();
  v4 = OUTLINED_FUNCTION_9(v3);
  v31 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057EC0, &qword_223207EA8);
  v11 = OUTLINED_FUNCTION_9(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = a1[3];
  v14 = a1[4];
  v33 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_2231224FC();
  sub_223200794();
  if (v1)
  {
    v16 = 0;
    __swift_destroy_boxed_opaque_existential_1(v33);
    type metadata accessor for FlowOutputResponseMessage(0);
    v17 = *((*MEMORY[0x277D85000] & *v32) + 0x30);
    v18 = *((*MEMORY[0x277D85000] & *v32) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v34) = 0;
    sub_2230D45E8(&qword_27D057ED0);
    sub_223200554();
    (*(v31 + 32))(v32 + OBJC_IVAR____TtC16SiriMessageTypes25FlowOutputResponseMessage_outputId, v9, v3);
    v36 = 1;
    sub_2230FB7A0();
    sub_2232004C4();
    v20 = v33;
    v21 = v35;
    if (v35 >> 60 == 15)
    {
      v22 = 0;
    }

    else
    {
      v23 = v34;
      v29 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
      sub_223110BA0(v23, v21);
      v30 = v23;
      v29 = sub_223120750(v23, v21);
      sub_223122550();
      v24 = *MEMORY[0x277CCA308];
      sub_2232000C4();
      v28[1] = v25;
      v22 = sub_223200294();
      sub_22310A610(v30, v21);
    }

    *(v32 + OBJC_IVAR____TtC16SiriMessageTypes25FlowOutputResponseMessage_commandResult) = v22;
    sub_2230F7158(v20, &v34);
    v16 = RequestMessageBase.init(from:)(&v34);
    v26 = OUTLINED_FUNCTION_1_9();
    v27(v26);
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  return v16;
}

uint64_t sub_223121D08(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057ED8, &qword_223207EB0);
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v23 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231224FC();
  sub_2232007A4();
  LOBYTE(v25) = 0;
  sub_2231FFDA4();
  sub_2230D45E8(&qword_280FCE688);
  sub_223200654();
  if (!v2)
  {
    v13 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes25FlowOutputResponseMessage_commandResult);
    if (v13)
    {
      v23 = v1;
      v14 = objc_allocWithZone(MEMORY[0x277CCAAB0]);
      v15 = v13;
      v16 = [v14 initRequiringSecureCoding_];
      v17 = *MEMORY[0x277CCA308];
      v24 = v15;
      [v16 encodeObject:v15 forKey:v17];
      v18 = [v16 encodedData];
      v19 = sub_2231FFD24();
      v21 = v20;

      v25 = v19;
      v26 = v21;
      v27 = 1;
      sub_2230D7754();
      sub_223200654();
      sub_2230D94DC(v25, v26);
    }

    sub_2230D77A8(a1);
  }

  return (*(v7 + 8))(v11, v4);
}

uint64_t FlowOutputResponseMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t FlowOutputResponseMessage.Builder.assistantId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t FlowOutputResponseMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FlowOutputResponseMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t FlowOutputResponseMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_3_13() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t FlowOutputResponseMessage.Builder.requestId.getter()
{
  v1 = (v0 + *(type metadata accessor for FlowOutputResponseMessage.Builder(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t FlowOutputResponseMessage.Builder.requestId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for FlowOutputResponseMessage.Builder(0) + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t FlowOutputResponseMessage.Builder.outputId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FlowOutputResponseMessage.Builder(0) + 32);

  return sub_2230D1480(v3, a1);
}

uint64_t FlowOutputResponseMessage.Builder.outputId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_3_13() + 32);

  return sub_2230D4E04(v0, v2);
}

void *FlowOutputResponseMessage.Builder.commandResult.getter()
{
  v1 = *(v0 + *(type metadata accessor for FlowOutputResponseMessage.Builder(0) + 36));
  v2 = v1;
  return v1;
}

void FlowOutputResponseMessage.Builder.commandResult.setter()
{
  v2 = *(OUTLINED_FUNCTION_3_13() + 36);

  *(v1 + v2) = v0;
}

void sub_223122364()
{
  v1 = OBJC_IVAR____TtC16SiriMessageTypes25FlowOutputResponseMessage_outputId;
  v2 = sub_2231FFDA4();
  OUTLINED_FUNCTION_4(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes25FlowOutputResponseMessage_commandResult);
}

id FlowOutputResponseMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FlowOutputResponseMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_223122480(uint64_t a1)
{
  v2 = type metadata accessor for FlowOutputResponseMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2231224FC()
{
  result = qword_27D057EC8;
  if (!qword_27D057EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057EC8);
  }

  return result;
}

unint64_t sub_223122550()
{
  result = qword_280FCA410;
  if (!qword_280FCA410)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280FCA410);
  }

  return result;
}

uint64_t sub_22312259C()
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

uint64_t sub_223122688()
{
  sub_2230D525C(319, &qword_280FCB0A8);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_2231227B8(319, &qword_280FCE678, MEMORY[0x277CC95F0]);
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_2231227B8(319, &qword_280FCA408, sub_223122550);
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

void sub_2231227B8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for FlowOutputResponseMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2231228EC()
{
  result = qword_27D057EF0;
  if (!qword_27D057EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057EF0);
  }

  return result;
}

unint64_t sub_223122944()
{
  result = qword_27D057EF8;
  if (!qword_27D057EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057EF8);
  }

  return result;
}

unint64_t sub_22312299C()
{
  result = qword_27D057F00;
  if (!qword_27D057F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057F00);
  }

  return result;
}

void *FlowPluginInfoMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return FlowPluginInfoMessage.init(build:)(v1);
}

void *FlowPluginInfoMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v58 = v1;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v52 - v5;
  v7 = sub_2231FFDA4();
  v8 = OUTLINED_FUNCTION_9(v7);
  v56 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v55 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FlowPluginInfoMessage.Builder(0);
  v14 = (v13 - 8);
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
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
  v17[v21] = 2;
  v22 = v14[12];
  v17[v22] = 2;
  a1(v17);
  v23 = *v17;
  if (v23 == 15)
  {
    goto LABEL_10;
  }

  v24 = *(v17 + 2);
  if (!v24)
  {
    goto LABEL_10;
  }

  v54 = *(v17 + 1);
  sub_2230D1480(&v17[v18], v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_2230D69D4(v6);
LABEL_10:
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v30 = sub_223200014();
    __swift_project_value_buffer(v30, qword_280FCE830);
    v31 = sub_223200004();
    v32 = sub_223200254();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v59 = v34;
      *v33 = 136446210;
      v35 = sub_2230F7898();
      v37 = sub_2231A5D38(v35, v36, &v59);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_2230CE000, v31, v32, "Could not build %{public}s: Builder has missing required fields", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x223DD6780](v34, -1, -1);
      MEMORY[0x223DD6780](v33, -1, -1);
    }

    sub_223123908(v17);
    type metadata accessor for FlowPluginInfoMessage(0);
    v38 = *((*MEMORY[0x277D85000] & *v58) + 0x30);
    v39 = *((*MEMORY[0x277D85000] & *v58) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v53 = v24;
  v26 = v55;
  v25 = v56;
  v27 = (*(v56 + 32))(v55, v6, v7);
  if (!*(v19 + 1) || !*(v20 + 1) || (v28 = v17[v21], v28 == 2) || (v29 = v17[v22], v29 == 2))
  {
    (*(v25 + 8))(v26, v7);
    goto LABEL_10;
  }

  v42 = *v19;
  v43 = v26;
  v44 = v58;
  *(v58 + OBJC_IVAR____TtC16SiriMessageTypes21FlowPluginInfoMessage_supportsOnDeviceNL) = v28 & 1;
  v45 = *v20;
  *(v44 + OBJC_IVAR____TtC16SiriMessageTypes21FlowPluginInfoMessage_isPersonalRequest) = v29 & 1;
  MEMORY[0x28223BE20](v27);
  *(&v52 - 64) = v23;
  v46 = v53;
  *(&v52 - 7) = v54;
  *(&v52 - 6) = v46;
  *(&v52 - 5) = v43;
  *(&v52 - 4) = v47;
  *(&v52 - 3) = v48;
  *(&v52 - 2) = v49;
  *(&v52 - 1) = v50;
  v40 = ResultCandidateRequestMessageBase.init(build:)(sub_2231122E4);
  v51 = v40;
  sub_223123908(v17);
  if (v40)
  {
  }

  (*(v56 + 8))(v43, v7);
  return v40;
}

void *FlowPluginInfoMessage.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057F08, &qword_223208048);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223123984();
  sub_223200794();
  if (v2)
  {
    v13 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for FlowPluginInfoMessage(0);
    v10 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
    v11 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes21FlowPluginInfoMessage_supportsOnDeviceNL) = OUTLINED_FUNCTION_5_12() & 1;
    LOBYTE(v16[0]) = 1;
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes21FlowPluginInfoMessage_isPersonalRequest) = OUTLINED_FUNCTION_5_12() & 1;
    sub_2230F7158(a1, v16);
    v13 = ResultCandidateRequestMessageBase.init(from:)(v16);
    v14 = OUTLINED_FUNCTION_2();
    v15(v14);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v13;
}

uint64_t sub_223123188(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057F18, &qword_223208050);
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v16 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223123984();
  sub_2232007A4();
  v13 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes21FlowPluginInfoMessage_supportsOnDeviceNL);
  v18 = 0;
  sub_223200604();
  if (!v2)
  {
    v14 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes21FlowPluginInfoMessage_isPersonalRequest);
    v17 = 1;
    sub_223200604();
    sub_223190B78(a1);
  }

  return (*(v7 + 8))(v11, v4);
}

uint64_t sub_22312330C()
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

uint64_t sub_223123384@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_22312330C();
  *a2 = result;
  return result;
}

unint64_t sub_2231233B4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2230E9FF0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2231233E8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22312330C();
  *a1 = result;
  return result;
}

uint64_t sub_223123410(uint64_t a1)
{
  v2 = sub_223123984();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22312344C(uint64_t a1)
{
  v2 = sub_223123984();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FlowPluginInfoMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t FlowPluginInfoMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t FlowPluginInfoMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FlowPluginInfoMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t FlowPluginInfoMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_3_14() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t FlowPluginInfoMessage.Builder.requestId.getter()
{
  v1 = (v0 + *(type metadata accessor for FlowPluginInfoMessage.Builder(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t FlowPluginInfoMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for FlowPluginInfoMessage.Builder(0) + 28));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t FlowPluginInfoMessage.Builder.resultCandidateId.getter()
{
  v1 = (v0 + *(type metadata accessor for FlowPluginInfoMessage.Builder(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t FlowPluginInfoMessage.Builder.resultCandidateId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for FlowPluginInfoMessage.Builder(0) + 32));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t FlowPluginInfoMessage.Builder.supportsOnDeviceNL.setter(char a1)
{
  result = type metadata accessor for FlowPluginInfoMessage.Builder(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t FlowPluginInfoMessage.Builder.isPersonalRequest.setter(char a1)
{
  result = type metadata accessor for FlowPluginInfoMessage.Builder(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

id FlowPluginInfoMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FlowPluginInfoMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_223123908(uint64_t a1)
{
  v2 = type metadata accessor for FlowPluginInfoMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_223123984()
{
  result = qword_27D057F10;
  if (!qword_27D057F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057F10);
  }

  return result;
}

uint64_t sub_223123A78()
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

_BYTE *storeEnumTagSinglePayload for FlowPluginInfoMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_223123C60()
{
  result = qword_27D057F30;
  if (!qword_27D057F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057F30);
  }

  return result;
}

unint64_t sub_223123CB8()
{
  result = qword_27D057F38;
  if (!qword_27D057F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057F38);
  }

  return result;
}

unint64_t sub_223123D10()
{
  result = qword_27D057F40;
  if (!qword_27D057F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057F40);
  }

  return result;
}

SiriMessageTypes::GenAIPartner_optional __swiftcall GenAIPartner.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_223200464();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t GenAIPartner.rawValue.getter()
{
  result = 0x54504774616863;
  switch(*v0)
  {
    case 1:
      result = 0x6574696D616E7964;
      break;
    case 2:
      result = 0x6F7274696ELL;
      break;
    case 3:
      result = 0x74706774616863;
      break;
    case 4:
      result = 0x6E6F736D697263;
      break;
    case 5:
      result = 0x6F6769646E69;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_223123E80()
{
  result = qword_27D057F48;
  if (!qword_27D057F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057F48);
  }

  return result;
}

uint64_t sub_223123EF8@<X0>(uint64_t *a1@<X8>)
{
  result = GenAIPartner.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_223123FE0()
{
  result = qword_27D057F50;
  if (!qword_27D057F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D057F58, &qword_223208320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057F50);
  }

  return result;
}

unint64_t sub_223124064()
{
  result = qword_27D057F60;
  if (!qword_27D057F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057F60);
  }

  return result;
}

SiriMessageTypes::GestureEvent_optional __swiftcall GestureEvent.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_223200464();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t GestureEvent.rawValue.getter()
{
  v1 = 6582126;
  if (*v0 != 1)
  {
    v1 = 0x656B616873;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_223124164(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_223106C38();
}

uint64_t sub_223124194@<X0>(uint64_t *a1@<X8>)
{
  result = GestureEvent.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

SiriMessageTypes::GestureIntent_optional __swiftcall GestureIntent.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_223200464();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t GestureIntent.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 0x6C65636E6163;
      break;
    case 2:
      result = 0x747065636361;
      break;
    case 3:
      result = 0x7463656A6572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22312433C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_223106B1C();
}

uint64_t sub_22312436C@<X0>(uint64_t *a1@<X8>)
{
  result = GestureIntent.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

__n128 GestureInput.init(build:)@<Q0>(void (*a1)(__int16 *)@<X0>, unint64_t *a2@<X8>)
{
  v13 = 1027;
  v14 = 0uLL;
  a1(&v13);
  if (v13 == 3 || HIBYTE(v13) == 4)
  {

    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v3 = sub_223200014();
    __swift_project_value_buffer(v3, qword_280FCE830);
    v4 = sub_223200004();
    v5 = sub_223200254();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 136446210;
      v12 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057F68, &unk_2232083A0);
      v8 = sub_223200104();
      v10 = sub_2231A5D38(v8, v9, &v12);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_2230CE000, v4, v5, "Could not build %{public}s: Builder has missing required fields", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_14();
    }

    *a2 = 0;
    a2[1] = 0;
    a2[2] = 1;
  }

  else
  {
    result = v14;
    *a2 = v13 | (HIBYTE(v13) << 8);
    *(a2 + 1) = result;
  }

  return result;
}

uint64_t GestureInput.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = *(v0 + 1);
  v3 = *(v0 + 2);

  sub_223200374();
  MEMORY[0x223DD5AA0](0xD00000000000001BLL, 0x8000000223222AD0);
  OUTLINED_FUNCTION_15_2();
  MEMORY[0x223DD5AA0](0xD000000000000011, 0x8000000223222AF0);
  OUTLINED_FUNCTION_15_2();
  MEMORY[0x223DD5AA0](0x617265747475202CLL, 0xED0000203A65636ELL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057640, &qword_2232037A0);
  v5 = sub_223200104();
  MEMORY[0x223DD5AA0](v5);

  MEMORY[0x223DD5AA0](41, 0xE100000000000000);
  return 0;
}

uint64_t GestureInput.Builder.utterance.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t GestureInput.Builder.utterance.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t static GestureInput.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1[1];
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v5 = a2[1];
  v7 = *(a2 + 1);
  v6 = *(a2 + 2);
  v8 = *a2;
  v9 = *a1;
  if (sub_223106C38() & 1) != 0 && (sub_223106B1C())
  {
    if (v4)
    {
      if (v6)
      {
        v10 = v3 == v7 && v4 == v6;
        if (v10 || (sub_2232006B4() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v6)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_2231248B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4565727574736567 && a2 == 0xEC000000746E6576;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4965727574736567 && a2 == 0xED0000746E65746ELL;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x636E617265747475 && a2 == 0xE900000000000065)
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

uint64_t sub_2231249D8(char a1)
{
  if (!a1)
  {
    return 0x4565727574736567;
  }

  if (a1 == 1)
  {
    return 0x4965727574736567;
  }

  return 0x636E617265747475;
}

uint64_t sub_223124A50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231248B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_223124A78(uint64_t a1)
{
  v2 = sub_223125F04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223124AB4(uint64_t a1)
{
  v2 = sub_223125F04();

  return MEMORY[0x2821FE720](a1, v2);
}

void GestureInput.encode(to:)()
{
  OUTLINED_FUNCTION_8_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057F70, &qword_2232083B0);
  OUTLINED_FUNCTION_9(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v9);
  v11 = v15 - v10;
  v12 = *v0;
  v16 = v0[1];
  v13 = *(v0 + 1);
  v15[1] = *(v0 + 2);
  v15[2] = v13;
  v14 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_223125F04();
  sub_2232007A4();
  sub_223125F58();
  OUTLINED_FUNCTION_12_1();
  sub_223200654();
  if (!v1)
  {
    sub_223125FAC();
    OUTLINED_FUNCTION_12_1();
    sub_223200654();
    OUTLINED_FUNCTION_12_1();
    sub_2232005C4();
  }

  (*(v6 + 8))(v11, v4);
  OUTLINED_FUNCTION_9_0();
}

void GestureInput.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, unsigned __int8 a12, char a13, char a14)
{
  OUTLINED_FUNCTION_8_1();
  v16 = v15;
  v18 = v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057F90, &qword_2232083B8);
  OUTLINED_FUNCTION_9(v19);
  v21 = v20;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v24);
  v26 = &v31 - v25;
  v27 = v16[4];
  __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  sub_223125F04();
  sub_223200794();
  if (!v14)
  {
    sub_223126000();
    OUTLINED_FUNCTION_16_3();
    sub_223126054();
    OUTLINED_FUNCTION_16_3();
    v32 = a12;
    v28 = sub_223200494();
    v30 = v29;
    (*(v21 + 8))(v26, v19);
    *v18 = a14;
    *(v18 + 1) = v32;
    *(v18 + 8) = v28;
    *(v18 + 16) = v30;
  }

  __swift_destroy_boxed_opaque_existential_1(v16);
  OUTLINED_FUNCTION_9_0();
}

uint64_t sub_223124E6C()
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

uint64_t sub_223124F1C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_223124E6C();
  *a2 = result;
  return result;
}

uint64_t sub_223124F4C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2230EA1A0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_223124F80@<X0>(_BYTE *a1@<X8>)
{
  result = sub_223124E6C();
  *a1 = result;
  return result;
}

uint64_t sub_223124FA8(uint64_t a1)
{
  v2 = sub_223126144();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223124FE4(uint64_t a1)
{
  v2 = sub_223126144();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GestureBasedResultCandidateMessage.gesture.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes34GestureBasedResultCandidateMessage_gesture + 8);
  v2 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes34GestureBasedResultCandidateMessage_gesture + 16);
  *a1 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes34GestureBasedResultCandidateMessage_gesture);
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
}

void *GestureBasedResultCandidateMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return GestureBasedResultCandidateMessage.init(build:)(v1);
}

void *GestureBasedResultCandidateMessage.init(build:)(void (*a1)(char *))
{
  v2 = v1;
  swift_getObjectType();
  v4 = type metadata accessor for GestureBasedResultCandidateMessage.Builder(0);
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
  v13 = &v8[v5[11]];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &v8[v5[12]];
  *v14 = 0;
  *(v14 + 1) = 0;
  *(v14 + 2) = 1;
  v15 = v5[13];
  v16 = type metadata accessor for PromptInfo(0);
  __swift_storeEnumTagSinglePayload(&v8[v15], 1, 1, v16);
  a1(v8);
  v17 = *(v14 + 2);
  if (v17 == 1)
  {
    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v18 = sub_223200014();
    __swift_project_value_buffer(v18, qword_280FCE830);
    v19 = sub_223200004();
    v20 = sub_223200254();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v34 = v22;
      *v21 = 136446210;
      v23 = sub_2230F7898();
      v25 = sub_2231A5D38(v23, v24, &v34);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_2230CE000, v19, v20, "Could not build %{public}s: Builder has missing required field: gesture", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_14();
    }

    sub_2231260C8(v8);
    type metadata accessor for GestureBasedResultCandidateMessage(0);
    v26 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
    v27 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v29 = *(v14 + 1);
    v30 = *v14 >> 8;
    v31 = v2 + OBJC_IVAR____TtC16SiriMessageTypes34GestureBasedResultCandidateMessage_gesture;
    *v31 = *v14;
    v31[1] = v30;
    *(v31 + 1) = v29;
    *(v31 + 2) = v17;
    sub_2230D30B8(&v8[v15], v2 + OBJC_IVAR____TtC16SiriMessageTypes34GestureBasedResultCandidateMessage_promptInfo, &qword_27D057FA8, &qword_2232083C0);

    v28 = sub_2231EE170(v2, v8);
    sub_2231260C8(v8);
  }

  return v28;
}

void GestureBasedResultCandidateMessage.init(from:)()
{
  OUTLINED_FUNCTION_8_1();
  v20 = v0;
  v3 = v2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057FA8, &qword_2232083C0) - 8) + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057FB0, &qword_2232083C8);
  OUTLINED_FUNCTION_9(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v11);
  v12 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_223126144();
  sub_223200794();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
    v13 = v20;
    type metadata accessor for GestureBasedResultCandidateMessage(0);
    v14 = *((*MEMORY[0x277D85000] & *v13) + 0x30);
    v15 = *((*MEMORY[0x277D85000] & *v13) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_223126198();
    sub_223200554();
    v16 = v20;
    v17 = v20 + OBJC_IVAR____TtC16SiriMessageTypes34GestureBasedResultCandidateMessage_gesture;
    *v17 = v21;
    *(v17 + 8) = v22;
    type metadata accessor for PromptInfo(0);
    LOBYTE(v21) = 1;
    sub_2230E39F0(&qword_27D057FC8);
    sub_2232004C4();
    sub_2231261EC(v7, v16 + OBJC_IVAR____TtC16SiriMessageTypes34GestureBasedResultCandidateMessage_promptInfo);
    sub_2230F7158(v3, &v21);
    UserIdAwareResultCandidateMessageBase.init(from:)(&v21);
    v18 = OUTLINED_FUNCTION_1_10();
    v19(v18);
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  OUTLINED_FUNCTION_9_0();
}

void sub_223125700()
{
  OUTLINED_FUNCTION_8_1();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057FD0, &unk_2232083D0);
  OUTLINED_FUNCTION_9(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v17 - v11;
  v13 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_223126144();
  sub_2232007A4();
  v14 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes34GestureBasedResultCandidateMessage_gesture + 8);
  v15 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes34GestureBasedResultCandidateMessage_gesture + 16);
  v18 = *(v2 + OBJC_IVAR____TtC16SiriMessageTypes34GestureBasedResultCandidateMessage_gesture);
  v19 = v14;
  v20 = v15;
  sub_22312625C();

  sub_223200654();

  if (!v1)
  {
    LOBYTE(v18) = 1;
    type metadata accessor for PromptInfo(0);
    sub_2230E39F0(qword_280FCAD80);
    sub_2232005E4();
    OUTLINED_FUNCTION_12_1();
    sub_2231EEBE4(v16);
  }

  (*(v7 + 8))(v12, v5);
  OUTLINED_FUNCTION_9_0();
}

uint64_t GestureBasedResultCandidateMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t GestureBasedResultCandidateMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t GestureBasedResultCandidateMessage.Builder.requestId.getter()
{
  v1 = (v0 + *(type metadata accessor for GestureBasedResultCandidateMessage.Builder(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_2_1();
}

uint64_t GestureBasedResultCandidateMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for GestureBasedResultCandidateMessage.Builder(0) + 28));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t GestureBasedResultCandidateMessage.Builder.resultCandidateId.getter()
{
  v1 = (v0 + *(type metadata accessor for GestureBasedResultCandidateMessage.Builder(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_2_1();
}

uint64_t GestureBasedResultCandidateMessage.Builder.resultCandidateId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for GestureBasedResultCandidateMessage.Builder(0) + 32));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t GestureBasedResultCandidateMessage.Builder.userId.getter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_20_3() + 36));
  v3 = v2[1];
  *v0 = *v2;
  v0[1] = v3;
}

uint64_t GestureBasedResultCandidateMessage.Builder.userId.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for GestureBasedResultCandidateMessage.Builder(0) + 36));
  v5 = v4[1];

  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t GestureBasedResultCandidateMessage.Builder.gesture.getter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_20_3() + 40));
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  *v0 = *v2;
  v0[1] = v4;
  v0[2] = v5;

  return sub_2231262B0(v3, v4, v5);
}

__n128 GestureBasedResultCandidateMessage.Builder.gesture.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_i64[0];
  v3 = (v1 + *(type metadata accessor for GestureBasedResultCandidateMessage.Builder(0) + 40));
  sub_2231262C4(*v3, v3[1], v3[2]);
  result = v5;
  *v3 = v5;
  v3[2] = v2;
  return result;
}

uint64_t sub_223125E38()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes34GestureBasedResultCandidateMessage_gesture + 16);

  v2 = v0 + OBJC_IVAR____TtC16SiriMessageTypes34GestureBasedResultCandidateMessage_promptInfo;

  return sub_2230E3F68(v2);
}

id GestureBasedResultCandidateMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GestureBasedResultCandidateMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_223125F04()
{
  result = qword_27D057F78;
  if (!qword_27D057F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057F78);
  }

  return result;
}

unint64_t sub_223125F58()
{
  result = qword_27D057F80;
  if (!qword_27D057F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057F80);
  }

  return result;
}

unint64_t sub_223125FAC()
{
  result = qword_27D057F88;
  if (!qword_27D057F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057F88);
  }

  return result;
}

unint64_t sub_223126000()
{
  result = qword_27D057F98;
  if (!qword_27D057F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057F98);
  }

  return result;
}

unint64_t sub_223126054()
{
  result = qword_27D057FA0;
  if (!qword_27D057FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057FA0);
  }

  return result;
}

uint64_t sub_2231260C8(uint64_t a1)
{
  v2 = type metadata accessor for GestureBasedResultCandidateMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_223126144()
{
  result = qword_27D057FB8;
  if (!qword_27D057FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057FB8);
  }

  return result;
}

unint64_t sub_223126198()
{
  result = qword_27D057FC0;
  if (!qword_27D057FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057FC0);
  }

  return result;
}

uint64_t sub_2231261EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057FA8, &qword_2232083C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_22312625C()
{
  result = qword_27D057FD8;
  if (!qword_27D057FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057FD8);
  }

  return result;
}

uint64_t sub_2231262B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_2231262C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

unint64_t sub_2231262DC()
{
  result = qword_27D057FE0;
  if (!qword_27D057FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057FE0);
  }

  return result;
}

unint64_t sub_223126334()
{
  result = qword_27D057FE8;
  if (!qword_27D057FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057FE8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for GestureIntent(_BYTE *result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_223126498(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      OUTLINED_FUNCTION_21_2();
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2231264E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

void sub_223126554()
{
  sub_2230E42C0(319, qword_280FCAD38, type metadata accessor for PromptInfo);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_223126660()
{
  sub_2230D525C(319, &qword_280FCB0A8);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_2230E42C0(319, &qword_280FCE678, MEMORY[0x277CC95F0]);
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_2230D525C(319, &qword_280FCA740);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          sub_2230D525C(319, &qword_27D058000);
          v1 = v9;
          if (v10 <= 0x3F)
          {
            sub_2230E42C0(319, qword_280FCAD38, type metadata accessor for PromptInfo);
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

_BYTE *storeEnumTagSinglePayload for GestureBasedResultCandidateMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_2231268C4(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2231269A4()
{
  result = qword_27D058008;
  if (!qword_27D058008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058008);
  }

  return result;
}

unint64_t sub_2231269FC()
{
  result = qword_27D058010;
  if (!qword_27D058010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058010);
  }

  return result;
}

unint64_t sub_223126A54()
{
  result = qword_27D058018;
  if (!qword_27D058018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058018);
  }

  return result;
}

unint64_t sub_223126AAC()
{
  result = qword_27D058020;
  if (!qword_27D058020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058020);
  }

  return result;
}

unint64_t sub_223126B04()
{
  result = qword_27D058028;
  if (!qword_27D058028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058028);
  }

  return result;
}

unint64_t sub_223126B5C()
{
  result = qword_27D058030;
  if (!qword_27D058030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058030);
  }

  return result;
}

unint64_t sub_223126BB0()
{
  result = qword_27D058038;
  if (!qword_27D058038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058038);
  }

  return result;
}

unint64_t sub_223126C04()
{
  result = qword_27D058040;
  if (!qword_27D058040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058040);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_16_3()
{

  return sub_223200554();
}

uint64_t OUTLINED_FUNCTION_20_3()
{

  return type metadata accessor for GestureBasedResultCandidateMessage.Builder(0);
}

uint64_t sub_223126CD0()
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

uint64_t sub_223126D24@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_223126CD0();
  *a2 = result;
  return result;
}

uint64_t sub_223126D54@<X0>(_BYTE *a1@<X8>)
{
  result = sub_223126CD0();
  *a1 = result;
  return result;
}

uint64_t sub_223126D7C(uint64_t a1)
{
  v2 = sub_223127DDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223126DB8(uint64_t a1)
{
  v2 = sub_223127DDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IFGestureBasedCandidateMessage.gesture.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes30IFGestureBasedCandidateMessage_gesture + 8);
  v2 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes30IFGestureBasedCandidateMessage_gesture + 16);
  *a1 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes30IFGestureBasedCandidateMessage_gesture);
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
}

void *IFGestureBasedCandidateMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return IFGestureBasedCandidateMessage.init(build:)(v1);
}

void *IFGestureBasedCandidateMessage.init(build:)(void (*a1)(char *))
{
  v2 = v1;
  swift_getObjectType();
  v4 = type metadata accessor for IFGestureBasedCandidateMessage.Builder(0);
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
  v13 = &v8[v5[11]];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &v8[v5[12]];
  *v14 = 0;
  *(v14 + 1) = 0;
  *(v14 + 2) = 1;
  v15 = v5[13];
  v16 = type metadata accessor for PromptInfo(0);
  __swift_storeEnumTagSinglePayload(&v8[v15], 1, 1, v16);
  a1(v8);
  v17 = *(v14 + 2);
  if (v17 == 1)
  {
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v18 = sub_223200014();
    __swift_project_value_buffer(v18, qword_280FCE830);
    v19 = sub_223200004();
    v20 = sub_223200254();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v34 = v22;
      *v21 = 136446210;
      v23 = sub_2230F7898();
      v25 = sub_2231A5D38(v23, v24, &v34);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_2230CE000, v19, v20, "Could not build %{public}s: Builder has missing required field: gesture", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x223DD6780](v22, -1, -1);
      MEMORY[0x223DD6780](v21, -1, -1);
    }

    sub_223127D60(v8);
    type metadata accessor for IFGestureBasedCandidateMessage(0);
    v26 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
    v27 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v29 = *(v14 + 1);
    v30 = *v14 >> 8;
    v31 = v2 + OBJC_IVAR____TtC16SiriMessageTypes30IFGestureBasedCandidateMessage_gesture;
    *v31 = *v14;
    v31[1] = v30;
    *(v31 + 1) = v29;
    *(v31 + 2) = v17;
    sub_2230D30B8(&v8[v15], v2 + OBJC_IVAR____TtC16SiriMessageTypes30IFGestureBasedCandidateMessage_promptInfo, &qword_27D057FA8, &qword_2232083C0);

    v28 = sub_2231EE19C(v2, v8);
    sub_223127D60(v8);
  }

  return v28;
}

void *IFGestureBasedCandidateMessage.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057FA8, &qword_2232083C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058048, &qword_223208A08);
  v8 = OUTLINED_FUNCTION_9(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223127DDC();
  sub_223200794();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v17 = v20;
    type metadata accessor for IFGestureBasedCandidateMessage(0);
    v12 = *((*MEMORY[0x277D85000] & *v17) + 0x30);
    v13 = *((*MEMORY[0x277D85000] & *v17) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v23 = 0;
    sub_223126198();
    sub_223200554();
    v15 = v20;
    v16 = v20 + OBJC_IVAR____TtC16SiriMessageTypes30IFGestureBasedCandidateMessage_gesture;
    *v16 = v21;
    *(v16 + 8) = v22;
    type metadata accessor for PromptInfo(0);
    LOBYTE(v21) = 1;
    sub_2230E39F0(&qword_27D057FC8);
    sub_2232004C4();
    sub_2231261EC(v6, v15 + OBJC_IVAR____TtC16SiriMessageTypes30IFGestureBasedCandidateMessage_promptInfo);
    sub_2230F7158(a1, &v21);
    v17 = UserIdAwareResultCandidateMessageBase.init(from:)(&v21);
    v18 = OUTLINED_FUNCTION_1_10();
    v19(v18);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v17;
}

uint64_t sub_22312752C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058058, &unk_223208A10);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v17 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223127DDC();
  sub_2232007A4();
  v14 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes30IFGestureBasedCandidateMessage_gesture + 8);
  v15 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes30IFGestureBasedCandidateMessage_gesture + 16);
  v18 = *(v3 + OBJC_IVAR____TtC16SiriMessageTypes30IFGestureBasedCandidateMessage_gesture);
  v19 = v14;
  v20 = v15;
  v21 = 0;
  sub_22312625C();

  sub_223200654();

  if (!v2)
  {
    LOBYTE(v18) = 1;
    type metadata accessor for PromptInfo(0);
    sub_2230E39F0(qword_280FCAD80);
    sub_2232005E4();
    sub_2231EEBE4(a1);
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t IFGestureBasedCandidateMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t IFGestureBasedCandidateMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t IFGestureBasedCandidateMessage.Builder.requestId.getter()
{
  v1 = (v0 + *(type metadata accessor for IFGestureBasedCandidateMessage.Builder(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_2_1();
}

uint64_t IFGestureBasedCandidateMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for IFGestureBasedCandidateMessage.Builder(0) + 28));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t IFGestureBasedCandidateMessage.Builder.resultCandidateId.getter()
{
  v1 = (v0 + *(type metadata accessor for IFGestureBasedCandidateMessage.Builder(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_2_1();
}

uint64_t IFGestureBasedCandidateMessage.Builder.resultCandidateId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for IFGestureBasedCandidateMessage.Builder(0) + 32));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t IFGestureBasedCandidateMessage.Builder.userId.getter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_8_6() + 36));
  v3 = v2[1];
  *v0 = *v2;
  v0[1] = v3;
}

uint64_t IFGestureBasedCandidateMessage.Builder.userId.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for IFGestureBasedCandidateMessage.Builder(0) + 36));
  v5 = v4[1];

  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t IFGestureBasedCandidateMessage.Builder.gesture.getter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_8_6() + 40));
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  *v0 = *v2;
  v0[1] = v4;
  v0[2] = v5;

  return sub_2231262B0(v3, v4, v5);
}

__n128 IFGestureBasedCandidateMessage.Builder.gesture.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_i64[0];
  v3 = (v1 + *(type metadata accessor for IFGestureBasedCandidateMessage.Builder(0) + 40));
  sub_2231262C4(*v3, v3[1], v3[2]);
  result = v5;
  *v3 = v5;
  v3[2] = v2;
  return result;
}

uint64_t sub_223127C94()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes30IFGestureBasedCandidateMessage_gesture + 16);

  v2 = v0 + OBJC_IVAR____TtC16SiriMessageTypes30IFGestureBasedCandidateMessage_promptInfo;

  return sub_2230E3F68(v2);
}

id IFGestureBasedCandidateMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IFGestureBasedCandidateMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_223127D60(uint64_t a1)
{
  v2 = type metadata accessor for IFGestureBasedCandidateMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_223127DDC()
{
  result = qword_27D058050;
  if (!qword_27D058050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058050);
  }

  return result;
}

void sub_223127E38()
{
  sub_2230E42C0(319, qword_280FCAD38, type metadata accessor for PromptInfo);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_223127F44()
{
  sub_2230D525C(319, &qword_280FCB0A8);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_2230E42C0(319, &qword_280FCE678, MEMORY[0x277CC95F0]);
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_2230D525C(319, &qword_280FCA740);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          sub_2230D525C(319, &qword_27D058000);
          v1 = v9;
          if (v10 <= 0x3F)
          {
            sub_2230E42C0(319, qword_280FCAD38, type metadata accessor for PromptInfo);
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

_BYTE *storeEnumTagSinglePayload for IFGestureBasedCandidateMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2231281AC()
{
  result = qword_27D058070;
  if (!qword_27D058070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058070);
  }

  return result;
}

unint64_t sub_223128204()
{
  result = qword_27D058078;
  if (!qword_27D058078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058078);
  }

  return result;
}

unint64_t sub_22312825C()
{
  result = qword_27D058080;
  if (!qword_27D058080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058080);
  }

  return result;
}

uint64_t IFQueryGeneratedMessage.ajaxMetadata.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + OBJC_IVAR____TtC16SiriMessageTypes23IFQueryGeneratedMessage_ajaxMetadata), 0x41uLL);
  memcpy(a1, (v1 + OBJC_IVAR____TtC16SiriMessageTypes23IFQueryGeneratedMessage_ajaxMetadata), 0x41uLL);
  return sub_2230D3054(__dst, &v4, &qword_27D058088, &qword_223208C00);
}

uint64_t sub_223128398@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2230EA618();
  *a2 = result;
  return result;
}

uint64_t sub_2231283C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2230EA664(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2231283FC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2230EA618();
  *a1 = result;
  return result;
}

uint64_t sub_223128424(uint64_t a1)
{
  v2 = sub_223129968();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223128460(uint64_t a1)
{
  v2 = sub_223129968();

  return MEMORY[0x2821FE720](a1, v2);
}

void *IFQueryGeneratedMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return IFQueryGeneratedMessage.init(build:)(v1);
}

void *IFQueryGeneratedMessage.init(build:)(void (*a1)(char *))
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_2231FFDA4();
  v5 = OUTLINED_FUNCTION_9(v4);
  v46 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v45 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IFQueryGeneratedMessage.Builder(0);
  v11 = (v10 - 8);
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v14 = 15;
  *(v14 + 1) = 0;
  *(v14 + 2) = 0;
  __swift_storeEnumTagSinglePayload(&v14[v11[8]], 1, 1, v4);
  v15 = &v14[v11[9]];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = &v14[v11[10]];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = v11[11];
  v14[v17] = 2;
  v18 = &v14[v11[12]];
  *v18 = 0;
  *(v18 + 1) = 0;
  v19 = &v14[v11[13]];
  *v19 = 0u;
  *(v19 + 1) = 0u;
  *(v19 + 4) = 0;
  *(v19 + 5) = 0x1FFFFFFFELL;
  *(v19 + 6) = 0;
  *(v19 + 7) = 0;
  v19[64] = 0;
  v20 = &v14[v11[14]];
  *v20 = 0;
  v20[1] = 0;
  a1(v14);
  v21 = *(v16 + 1);
  if (v21 && (v22 = *(v18 + 1)) != 0)
  {
    v23 = *v18;
    v24 = (v2 + OBJC_IVAR____TtC16SiriMessageTypes23IFQueryGeneratedMessage_utterance);
    *v24 = *v16;
    v24[1] = v21;
    *(v2 + OBJC_IVAR____TtC16SiriMessageTypes23IFQueryGeneratedMessage_prescribedTool) = v14[v17];
    memcpy(__dst, v19, 0x41uLL);
    memcpy(v2 + OBJC_IVAR____TtC16SiriMessageTypes23IFQueryGeneratedMessage_ajaxMetadata, v19, 0x41uLL);
    v25 = (v2 + OBJC_IVAR____TtC16SiriMessageTypes23IFQueryGeneratedMessage_trpId);
    *v25 = v23;
    v25[1] = v22;
    v26 = v20[1];
    if (v26)
    {
      v27 = *v20;

      v28 = sub_2230D3054(__dst, v48, &qword_27D058088, &qword_223208C00);
      v29 = v26;
    }

    else
    {

      sub_2230D3054(__dst, v48, &qword_27D058088, &qword_223208C00);
      v41 = v45;
      sub_2231FFD94();
      v27 = sub_2231FFD74();
      v29 = v42;
      v28 = (*(v46 + 8))(v41, v4);
    }

    v43 = (v2 + OBJC_IVAR____TtC16SiriMessageTypes23IFQueryGeneratedMessage_tcuId);
    *v43 = v27;
    v43[1] = v29;
    MEMORY[0x28223BE20](v28);
    *(&v45 - 2) = v14;

    v40 = RequestMessageBase.init(build:)(sub_223129960);
    sub_2231298E4(v14);
  }

  else
  {
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v30 = sub_223200014();
    __swift_project_value_buffer(v30, qword_280FCE830);
    v31 = sub_223200004();
    v32 = sub_223200254();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      __dst[0] = v34;
      *v33 = 136446210;
      v35 = sub_2230F7898();
      v37 = sub_2231A5D38(v35, v36, __dst);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_2230CE000, v31, v32, "Could not build %{public}s: Builder has missing required fields", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x223DD6780](v34, -1, -1);
      MEMORY[0x223DD6780](v33, -1, -1);
    }

    sub_2231298E4(v14);
    type metadata accessor for IFQueryGeneratedMessage(0);
    v38 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
    v39 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v40;
}

uint64_t sub_2231289EC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  v6 = *(a1 + 16);

  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  v7 = type metadata accessor for IFQueryGeneratedMessage.Builder(0);
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

void *IFQueryGeneratedMessage.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058090, &qword_223208C08);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223129968();
  sub_223200794();
  if (v2)
  {
    v22 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for IFQueryGeneratedMessage(0);
    v11 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
    v12 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    __dst[0] = 0;
    OUTLINED_FUNCTION_9_7();
    v10 = sub_2232004F4();
    v14 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes23IFQueryGeneratedMessage_utterance);
    *v14 = v10;
    v14[1] = v15;
    sub_223117AE8();
    OUTLINED_FUNCTION_9_7();
    sub_2232004C4();
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes23IFQueryGeneratedMessage_prescribedTool) = __dst[0];
    __dst[87] = 3;
    sub_223129A24();
    OUTLINED_FUNCTION_9_7();
    sub_2232004C4();
    memcpy(v1 + OBJC_IVAR____TtC16SiriMessageTypes23IFQueryGeneratedMessage_ajaxMetadata, __dst, 0x41uLL);
    OUTLINED_FUNCTION_9_7();
    v16 = sub_2232004F4();
    v17 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes23IFQueryGeneratedMessage_trpId);
    *v17 = v16;
    v17[1] = v18;
    LOBYTE(v25[0]) = 4;
    OUTLINED_FUNCTION_9_7();
    v19 = sub_2232004F4();
    v20 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes23IFQueryGeneratedMessage_tcuId);
    *v20 = v19;
    v20[1] = v21;
    sub_2230F7158(a1, v25);
    v22 = RequestMessageBase.init(from:)(v25);
    v23 = OUTLINED_FUNCTION_2();
    v24(v23);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v22;
}

uint64_t sub_223128EB4(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0580A8, &qword_223208C10);
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v20[-v10];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223129968();
  sub_2232007A4();
  v13 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes23IFQueryGeneratedMessage_utterance);
  v14 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes23IFQueryGeneratedMessage_utterance + 8);
  __dst[0] = 0;
  OUTLINED_FUNCTION_8_2();
  sub_2232005F4();
  if (!v2)
  {
    __dst[0] = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes23IFQueryGeneratedMessage_prescribedTool);
    __src[0] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057C98, &unk_223206D68);
    sub_223129A78(&qword_27D057CA0, &qword_27D057C98, &unk_223206D68, sub_223117BC0);
    OUTLINED_FUNCTION_8_2();
    sub_223200654();
    v15 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes23IFQueryGeneratedMessage_trpId);
    v16 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes23IFQueryGeneratedMessage_trpId + 8);
    __dst[95] = 2;
    OUTLINED_FUNCTION_8_2();
    sub_2232005F4();
    memcpy(__dst, (v1 + OBJC_IVAR____TtC16SiriMessageTypes23IFQueryGeneratedMessage_ajaxMetadata), 0x41uLL);
    memcpy(__src, (v1 + OBJC_IVAR____TtC16SiriMessageTypes23IFQueryGeneratedMessage_ajaxMetadata), sizeof(__src));
    __dst[94] = 3;
    sub_2230D3054(__dst, v20, &qword_27D058088, &qword_223208C00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058088, &qword_223208C00);
    sub_223129A78(&qword_27D0580B0, &qword_27D058088, &qword_223208C00, sub_223129AF4);
    OUTLINED_FUNCTION_8_2();
    sub_223200654();
    memcpy(v20, __src, 0x41uLL);
    sub_2231299BC(v20);
    v17 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes23IFQueryGeneratedMessage_tcuId);
    v18 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes23IFQueryGeneratedMessage_tcuId + 8);
    __dst[93] = 4;
    OUTLINED_FUNCTION_8_2();
    sub_2232005F4();
    sub_2230D77A8(a1);
  }

  return (*(v7 + 8))(v11, v4);
}

uint64_t IFQueryGeneratedMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t IFQueryGeneratedMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t IFQueryGeneratedMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_6_9() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t IFQueryGeneratedMessage.Builder.requestId.getter()
{
  v0 = type metadata accessor for IFQueryGeneratedMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 28));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t IFQueryGeneratedMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = type metadata accessor for IFQueryGeneratedMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2(*(v3 + 28));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t IFQueryGeneratedMessage.Builder.utterance.getter()
{
  v0 = type metadata accessor for IFQueryGeneratedMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 32));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t IFQueryGeneratedMessage.Builder.utterance.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = type metadata accessor for IFQueryGeneratedMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2(*(v3 + 32));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t IFQueryGeneratedMessage.Builder.prescribedTool.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for IFQueryGeneratedMessage.Builder(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t IFQueryGeneratedMessage.Builder.prescribedTool.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for IFQueryGeneratedMessage.Builder(0);
  *(v1 + *(result + 36)) = v2;
  return result;
}

uint64_t IFQueryGeneratedMessage.Builder.trpId.getter()
{
  v0 = type metadata accessor for IFQueryGeneratedMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 40));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t IFQueryGeneratedMessage.Builder.trpId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = type metadata accessor for IFQueryGeneratedMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2(*(v3 + 40));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t IFQueryGeneratedMessage.Builder.ajaxMetadata.getter@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for IFQueryGeneratedMessage.Builder(0) + 44);
  memcpy(__dst, (v1 + v3), 0x41uLL);
  memcpy(a1, (v1 + v3), 0x41uLL);
  return sub_2230D3054(__dst, &v5, &qword_27D058088, &qword_223208C00);
}

void *IFQueryGeneratedMessage.Builder.ajaxMetadata.setter()
{
  v2 = *(OUTLINED_FUNCTION_6_9() + 44);
  memcpy(__dst, (v1 + v2), 0x41uLL);
  sub_2231299BC(__dst);
  return memcpy((v1 + v2), v0, 0x41uLL);
}

uint64_t IFQueryGeneratedMessage.Builder.tcuId.getter()
{
  v0 = type metadata accessor for IFQueryGeneratedMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 48));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t IFQueryGeneratedMessage.Builder.tcuId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = type metadata accessor for IFQueryGeneratedMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2(*(v3 + 48));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_2231297C0()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes23IFQueryGeneratedMessage_utterance + 8);

  OUTLINED_FUNCTION_7_9(v0 + OBJC_IVAR____TtC16SiriMessageTypes23IFQueryGeneratedMessage_ajaxMetadata);
  v2 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes23IFQueryGeneratedMessage_trpId + 8);

  v3 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes23IFQueryGeneratedMessage_tcuId + 8);
}

id IFQueryGeneratedMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IFQueryGeneratedMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2231298E4(uint64_t a1)
{
  v2 = type metadata accessor for IFQueryGeneratedMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_223129968()
{
  result = qword_27D058098;
  if (!qword_27D058098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058098);
  }

  return result;
}

uint64_t sub_2231299BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058088, &qword_223208C00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_223129A24()
{
  result = qword_27D0580A0;
  if (!qword_27D0580A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0580A0);
  }

  return result;
}

uint64_t sub_223129A78(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_223129AF4()
{
  result = qword_27D0580B8;
  if (!qword_27D0580B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0580B8);
  }

  return result;
}

uint64_t sub_223129C00()
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

      sub_2230D525C(319, &qword_27D057CC8);
      if (v7 > 0x3F)
      {
        return v5;
      }

      sub_2230D525C(319, &qword_27D0580D0);
      if (v8 > 0x3F)
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

_BYTE *storeEnumTagSinglePayload for IFQueryGeneratedMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_223129E0C()
{
  result = qword_27D0580D8;
  if (!qword_27D0580D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0580D8);
  }

  return result;
}

unint64_t sub_223129E64()
{
  result = qword_27D0580E0;
  if (!qword_27D0580E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0580E0);
  }

  return result;
}

unint64_t sub_223129EBC()
{
  result = qword_27D0580E8;
  if (!qword_27D0580E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0580E8);
  }

  return result;
}

uint64_t sub_223129F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a6 >> 1 != 0xFFFFFFFF)
  {

    return sub_22311DE7C();
  }

  return result;
}

uint64_t ImmutableConversationSessionState.values(forKeys:userId:)()
{
  sub_22312A024();

  return sub_223200064();
}

unint64_t sub_22312A024()
{
  result = qword_27D0580F0;
  if (!qword_27D0580F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0580F0);
  }

  return result;
}

uint64_t ImmutableConversationSessionState.valuesAcrossAllUsers(forKey:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0580F8, &unk_223208E30);
  sub_2231104C4();

  return sub_223200064();
}

uint64_t ImmutableConversationSessionState.sharedValues(forKeys:)()
{
  sub_22312A024();

  return sub_223200064();
}

uint64_t sub_22312A1D0(uint64_t a1)
{
  v2 = sub_22312A4B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22312A20C(uint64_t a1)
{
  v2 = sub_22312A4B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22312A27C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058110, &qword_223208F08);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22312A4B4();
  sub_2232007A4();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_22312A3C8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_22312A390(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_22312A40C(uint64_t a1)
{
  *(a1 + 8) = sub_22312A474(&qword_27D058100);
  result = sub_22312A474(&qword_27D058108);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22312A474(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for EmptyImmutableConversationSessionState();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22312A4B4()
{
  result = qword_27D058118;
  if (!qword_27D058118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058118);
  }

  return result;
}

unint64_t sub_22312A51C()
{
  result = qword_27D058120;
  if (!qword_27D058120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058120);
  }

  return result;
}

unint64_t sub_22312A574()
{
  result = qword_27D058128;
  if (!qword_27D058128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058128);
  }

  return result;
}

uint64_t InitiateMUXStateRollbackMessage.userId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes31InitiateMUXStateRollbackMessage_userId + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes31InitiateMUXStateRollbackMessage_userId);
  a1[1] = v2;
}

void *InitiateMUXStateRollbackMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return InitiateMUXStateRollbackMessage.init(build:)(v1);
}

void *InitiateMUXStateRollbackMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v51 - v6;
  v8 = sub_2231FFDA4();
  v9 = OUTLINED_FUNCTION_9(v8);
  v53 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v54 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for InitiateMUXStateRollbackMessage.Builder(0);
  v15 = (v14 - 8);
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
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
  v22 = &v18[v15[11]];
  *v22 = 0;
  *(v22 + 1) = 0;
  a1(v18);
  v23 = *v18;
  if (v23 == 15)
  {
    goto LABEL_13;
  }

  v24 = *(v18 + 2);
  if (!v24)
  {
    goto LABEL_13;
  }

  v52 = *(v18 + 1);
  sub_2230D1480(&v18[v19], v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_2230D69D4(v7);
LABEL_13:
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v40 = sub_223200014();
    __swift_project_value_buffer(v40, qword_280FCE830);
    v41 = sub_223200004();
    v42 = sub_223200254();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v56 = v44;
      *v43 = 136446210;
      v45 = sub_2230F7898();
      v47 = sub_2231A5D38(v45, v46, &v56);

      *(v43 + 4) = v47;
      _os_log_impl(&dword_2230CE000, v41, v42, "Could not build %{public}s: Builder has missing required fields", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v44);
      MEMORY[0x223DD6780](v44, -1, -1);
      MEMORY[0x223DD6780](v43, -1, -1);
    }

    sub_22312B654(v18);
    type metadata accessor for InitiateMUXStateRollbackMessage(0);
    v48 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
    v49 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v51 = v24;
  v25 = v53;
  v26 = v54;
  (*(v53 + 32))(v54, v7, v8);
  v27 = *(v20 + 1);
  if (!v27)
  {
    (*(v25 + 8))(v26, v8);
    goto LABEL_13;
  }

  v28 = *(v21 + 1);
  if (!v28 || (v29 = *(v22 + 1), v30 = v25, !v29))
  {
    (*(v25 + 8))(v54, v8);
    goto LABEL_13;
  }

  ObjectType = &v51;
  v31 = *v21;
  v32 = *v22;
  v33 = (v2 + OBJC_IVAR____TtC16SiriMessageTypes31InitiateMUXStateRollbackMessage_originalRequestId);
  *v33 = *v20;
  v33[1] = v27;
  v34 = (v2 + OBJC_IVAR____TtC16SiriMessageTypes31InitiateMUXStateRollbackMessage_rollbackRequestId);
  *v34 = v31;
  v34[1] = v28;
  v35 = (v2 + OBJC_IVAR____TtC16SiriMessageTypes31InitiateMUXStateRollbackMessage_userId);
  *v35 = v32;
  v35[1] = v29;
  MEMORY[0x28223BE20](v27);
  *(&v51 - 32) = v23;
  v36 = v51;
  *(&v51 - 3) = v52;
  *(&v51 - 2) = v36;
  v37 = v54;
  *(&v51 - 1) = v54;

  v38 = SessionMessageBase.init(build:)(sub_2230D69C4);
  v39 = v38;
  sub_22312B654(v18);
  if (v38)
  {
  }

  (*(v30 + 8))(v37, v8);
  return v38;
}

void *InitiateMUXStateRollbackMessage.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058130, &qword_223208FC8);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22312B6D0();
  sub_223200794();
  if (v2)
  {
    v21 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for InitiateMUXStateRollbackMessage(0);
    v11 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
    v12 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = OUTLINED_FUNCTION_9_8();
    v14 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes31InitiateMUXStateRollbackMessage_originalRequestId);
    *v14 = v10;
    v14[1] = v15;
    LOBYTE(v24[0]) = 1;
    v16 = OUTLINED_FUNCTION_9_8();
    v17 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes31InitiateMUXStateRollbackMessage_rollbackRequestId);
    *v17 = v16;
    v17[1] = v18;
    v25 = 2;
    sub_2231105AC();
    sub_223200554();
    v19 = v24[1];
    v20 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes31InitiateMUXStateRollbackMessage_userId);
    *v20 = v24[0];
    v20[1] = v19;
    sub_2230F7158(a1, v24);
    v21 = SessionMessageBase.init(from:)(v24);
    v22 = OUTLINED_FUNCTION_2();
    v23(v22);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v21;
}

uint64_t sub_22312AE9C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058140, &qword_223208FD0);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = v20 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22312B6D0();
  sub_2232007A4();
  v14 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes31InitiateMUXStateRollbackMessage_originalRequestId);
  v15 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes31InitiateMUXStateRollbackMessage_originalRequestId + 8);
  LOBYTE(v20[0]) = 0;
  OUTLINED_FUNCTION_8_7();
  if (!v2)
  {
    v16 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes31InitiateMUXStateRollbackMessage_rollbackRequestId);
    v17 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes31InitiateMUXStateRollbackMessage_rollbackRequestId + 8);
    LOBYTE(v20[0]) = 1;
    OUTLINED_FUNCTION_8_7();
    v18 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes31InitiateMUXStateRollbackMessage_userId + 8);
    v20[0] = *(v3 + OBJC_IVAR____TtC16SiriMessageTypes31InitiateMUXStateRollbackMessage_userId);
    v20[1] = v18;
    v21 = 2;
    sub_2230D37F0();

    sub_223200654();

    sub_2230D46B0(a1);
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_22312B090@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2230EA878();
  *a2 = result;
  return result;
}

uint64_t sub_22312B0C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2230EA8C4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_22312B0F4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2230EA878();
  *a1 = result;
  return result;
}

uint64_t sub_22312B11C(uint64_t a1)
{
  v2 = sub_22312B6D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22312B158(uint64_t a1)
{
  v2 = sub_22312B6D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InitiateMUXStateRollbackMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t InitiateMUXStateRollbackMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t InitiateMUXStateRollbackMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for InitiateMUXStateRollbackMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t InitiateMUXStateRollbackMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_4_10() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t InitiateMUXStateRollbackMessage.Builder.originalRequestId.getter()
{
  v0 = type metadata accessor for InitiateMUXStateRollbackMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 28));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t InitiateMUXStateRollbackMessage.Builder.originalRequestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for InitiateMUXStateRollbackMessage.Builder(0) + 28));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t InitiateMUXStateRollbackMessage.Builder.rollbackRequestId.getter()
{
  v0 = type metadata accessor for InitiateMUXStateRollbackMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 32));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t InitiateMUXStateRollbackMessage.Builder.rollbackRequestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for InitiateMUXStateRollbackMessage.Builder(0) + 32));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t InitiateMUXStateRollbackMessage.Builder.userId.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for InitiateMUXStateRollbackMessage.Builder(0) + 36));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t InitiateMUXStateRollbackMessage.Builder.userId.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for InitiateMUXStateRollbackMessage.Builder(0) + 36));
  v5 = v4[1];

  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t sub_22312B560()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes31InitiateMUXStateRollbackMessage_originalRequestId + 8);

  v2 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes31InitiateMUXStateRollbackMessage_rollbackRequestId + 8);

  v3 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes31InitiateMUXStateRollbackMessage_userId + 8);
}

id InitiateMUXStateRollbackMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InitiateMUXStateRollbackMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22312B654(uint64_t a1)
{
  v2 = type metadata accessor for InitiateMUXStateRollbackMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22312B6D0()
{
  result = qword_27D058138;
  if (!qword_27D058138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058138);
  }

  return result;
}

uint64_t sub_22312B7C8()
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
        sub_2230D525C(319, &qword_280FCA740);
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

_BYTE *storeEnumTagSinglePayload for InitiateMUXStateRollbackMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22312B9B0()
{
  result = qword_27D058158;
  if (!qword_27D058158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058158);
  }

  return result;
}

unint64_t sub_22312BA08()
{
  result = qword_27D058160;
  if (!qword_27D058160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058160);
  }

  return result;
}

unint64_t sub_22312BA60()
{
  result = qword_27D058168;
  if (!qword_27D058168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058168);
  }

  return result;
}

SiriMessageTypes::InputOrigin_optional __swiftcall InputOrigin.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2232006C4();

  v5 = 19;
  if (v3 < 0x13)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_22312BB44()
{
  result = qword_27D058170;
  if (!qword_27D058170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058170);
  }

  return result;
}

uint64_t static IntelligenceFlowActionSummaryMessage.ParameterSummary.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  v6 = *(a2 + 16);
  if ((a1[2] & 1) == 0)
  {
    if ((a2[2] & 1) == 0)
    {
      v12 = *a1;
      if (v3 != v5 || v2 != v4)
      {
        v9 = sub_2232006B4();
        OUTLINED_FUNCTION_5_13();
        OUTLINED_FUNCTION_2_15();
        OUTLINED_FUNCTION_2_15();
        sub_22312BDAC();
        OUTLINED_FUNCTION_5_13();
        goto LABEL_16;
      }

      OUTLINED_FUNCTION_2_15();
      OUTLINED_FUNCTION_2_15();
      sub_22312BDAC();
      sub_22312BDAC();
      return 1;
    }

LABEL_9:
    OUTLINED_FUNCTION_5_13();
    OUTLINED_FUNCTION_2_15();
    OUTLINED_FUNCTION_2_15();
    sub_22312BDAC();
    OUTLINED_FUNCTION_5_13();
    sub_22312BDAC();
    return 0;
  }

  if ((a2[2] & 1) == 0)
  {
    goto LABEL_9;
  }

  if (v3 == v5 && v2 == v4)
  {
    v10 = 1;
    OUTLINED_FUNCTION_1_12();
    sub_22312BDA4();
    OUTLINED_FUNCTION_1_12();
    sub_22312BDA4();
    OUTLINED_FUNCTION_1_12();
    sub_22312BDAC();
    OUTLINED_FUNCTION_1_12();
    sub_22312BDAC();
    return v10;
  }

  v8 = *a1;
  v9 = sub_2232006B4();
  OUTLINED_FUNCTION_5_13();
  sub_22312BDA4();
  OUTLINED_FUNCTION_1_12();
  sub_22312BDA4();
  OUTLINED_FUNCTION_1_12();
  sub_22312BDAC();
  OUTLINED_FUNCTION_5_13();
LABEL_16:
  sub_22312BDAC();
  return v9 & 1;
}

uint64_t sub_22312BDB4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6F686563616C70 && a2 == 0xEB00000000726564;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
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

uint64_t sub_22312BE7C(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 0x6C6F686563616C70;
  }
}

uint64_t sub_22312BEC4(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
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

uint64_t sub_22312BF3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22312BDB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22312BF64(uint64_t a1)
{
  v2 = sub_22312C37C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22312BFA0(uint64_t a1)
{
  v2 = sub_22312C37C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22312BFE0(uint64_t a1)
{
  v2 = sub_22312C424();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22312C01C(uint64_t a1)
{
  v2 = sub_22312C424();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22312C058(uint64_t a1)
{
  v2 = sub_22312C3D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22312C094(uint64_t a1)
{
  v2 = sub_22312C3D0();

  return MEMORY[0x2821FE720](a1, v2);
}

void IntelligenceFlowActionSummaryMessage.ParameterSummary.encode(to:)()
{
  OUTLINED_FUNCTION_8_1();
  v39 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058178, &qword_223209310);
  v6 = OUTLINED_FUNCTION_9(v5);
  v35 = v7;
  v36 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v10);
  v34 = &v32 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058180, &qword_223209318);
  v13 = OUTLINED_FUNCTION_9(v12);
  v32 = v14;
  v33 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v17);
  v19 = &v32 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058188, &qword_223209320);
  OUTLINED_FUNCTION_9(v20);
  v22 = v21;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1();
  v26 = *v0;
  v37 = v0[1];
  v38 = v26;
  v27 = *(v0 + 16);
  v28 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_22312C37C();
  sub_2232007A4();
  if (v27)
  {
    sub_22312C3D0();
    v29 = v34;
    sub_2232005B4();
    v30 = v36;
    sub_2232005F4();
    (*(v35 + 8))(v29, v30);
  }

  else
  {
    sub_22312C424();
    sub_2232005B4();
    v31 = v33;
    sub_2232005F4();
    (*(v32 + 8))(v19, v31);
  }

  (*(v22 + 8))(v2, v20);
  OUTLINED_FUNCTION_9_0();
}

unint64_t sub_22312C37C()
{
  result = qword_27D058190;
  if (!qword_27D058190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058190);
  }

  return result;
}

unint64_t sub_22312C3D0()
{
  result = qword_27D058198;
  if (!qword_27D058198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058198);
  }

  return result;
}

unint64_t sub_22312C424()
{
  result = qword_27D0581A0;
  if (!qword_27D0581A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0581A0);
  }

  return result;
}

void IntelligenceFlowActionSummaryMessage.ParameterSummary.init(from:)()
{
  OUTLINED_FUNCTION_8_1();
  v61 = v2;
  v62 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0581A8, &qword_223209328);
  v58 = OUTLINED_FUNCTION_9(v5);
  v59 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0581B0, &qword_223209330);
  OUTLINED_FUNCTION_9(v10);
  v57 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0581B8, &unk_223209338);
  OUTLINED_FUNCTION_9(v15);
  v60 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v19);
  v21 = v55 - v20;
  v22 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_22312C37C();
  v23 = v62;
  sub_223200794();
  if (v23)
  {
    goto LABEL_9;
  }

  v55[2] = v10;
  v56 = v1;
  v62 = v4;
  v24 = v61;
  v25 = sub_223200594();
  sub_2230E0B80(v25, 0);
  if (v27 == v28 >> 1)
  {
LABEL_7:
    v40 = sub_2232003A4();
    swift_allocError();
    v42 = v41;
    v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057788, &qword_223203DF0) + 48);
    *v42 = &type metadata for IntelligenceFlowActionSummaryMessage.ParameterSummary;
    sub_223200484();
    sub_223200394();
    (*(*(v40 - 8) + 104))(v42, *MEMORY[0x277D84160], v40);
    swift_willThrow();
    swift_unknownObjectRelease();
    v44 = OUTLINED_FUNCTION_7_10();
    v45(v44, v15);
    v4 = v62;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v4);
LABEL_10:
    OUTLINED_FUNCTION_9_0();
    return;
  }

  v55[1] = 0;
  if (v27 < (v28 >> 1))
  {
    v29 = *(v26 + v27);
    v30 = sub_2230E0B40(v27 + 1);
    v32 = v31;
    v34 = v33;
    swift_unknownObjectRelease();
    if (v32 == v34 >> 1)
    {
      v35 = v15;
      v36 = v29;
      if (v29)
      {
        LODWORD(v57) = v29;
        sub_22312C3D0();
        OUTLINED_FUNCTION_14_1();
        v37 = v24;
        v56 = v30;
        v38 = sub_2232004F4();
        v39 = v60;
        v47 = v38;
        v49 = v48;
        swift_unknownObjectRelease();
        v50 = OUTLINED_FUNCTION_11_4();
        v51(v50);
        v36 = v57;
      }

      else
      {
        sub_22312C424();
        OUTLINED_FUNCTION_14_1();
        v37 = v24;
        v46 = sub_2232004F4();
        v49 = v52;
        v59 = v46;
        swift_unknownObjectRelease();
        v53 = OUTLINED_FUNCTION_9_9();
        v54(v53);
        v47 = v59;
        v39 = v60;
      }

      (*(v39 + 8))(v21, v35);
      *v37 = v47;
      *(v37 + 8) = v49;
      *(v37 + 16) = v36;
      __swift_destroy_boxed_opaque_existential_1(v62);
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t IntelligenceFlowActionSummaryMessage.formatString.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes36IntelligenceFlowActionSummaryMessage_formatString);
  v2 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes36IntelligenceFlowActionSummaryMessage_formatString + 8);

  return OUTLINED_FUNCTION_2_1();
}

void *IntelligenceFlowActionSummaryMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return IntelligenceFlowActionSummaryMessage.init(build:)(v1);
}

void *IntelligenceFlowActionSummaryMessage.init(build:)(void (*a1)(_BYTE *))
{
  v2 = v1;
  swift_getObjectType();
  v4 = type metadata accessor for IntelligenceFlowActionSummaryMessage.Builder(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v33 - v10;
  *v11 = 0;
  *(v11 + 1) = 0;
  *(v11 + 2) = 0;
  v11[24] = 15;
  *(v11 + 4) = 0;
  *(v11 + 5) = 0;
  v12 = *(v9 + 32);
  v13 = sub_2231FFDA4();
  __swift_storeEnumTagSinglePayload(&v11[v12], 1, 1, v13);
  v14 = &v11[*(v4 + 36)];
  *v14 = 0;
  v14[1] = 0;
  a1(v11);
  v15 = *(v11 + 1);
  if (v15 && (v16 = *(v11 + 2)) != 0)
  {
    v17 = (v2 + OBJC_IVAR____TtC16SiriMessageTypes36IntelligenceFlowActionSummaryMessage_formatString);
    *v17 = *v11;
    v17[1] = v15;
    *(v2 + OBJC_IVAR____TtC16SiriMessageTypes36IntelligenceFlowActionSummaryMessage_parameterSummaries) = v16;
    MEMORY[0x28223BE20](v15);
    v33[-2] = v11;

    v18 = RequestMessageBase.init(build:)(sub_22312DA10);
    sub_22312D930(v11);
  }

  else
  {
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v19 = sub_223200014();
    __swift_project_value_buffer(v19, qword_280FCE830);
    v20 = sub_223200004();
    v21 = sub_223200254();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v34 = v23;
      *v22 = 136446466;
      v24 = sub_2230F7898();
      v26 = sub_2231A5D38(v24, v25, &v34);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2080;
      swift_beginAccess();
      sub_22312D9AC(v11, v8);
      v27 = sub_223200104();
      v29 = sub_2231A5D38(v27, v28, &v34);

      *(v22 + 14) = v29;
      _os_log_impl(&dword_2230CE000, v20, v21, "Could not build %{public}s: Builder %s has missing required fields", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DD6780](v23, -1, -1);
      MEMORY[0x223DD6780](v22, -1, -1);
    }

    sub_22312D930(v11);
    type metadata accessor for IntelligenceFlowActionSummaryMessage(0);
    v30 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
    v31 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v18;
}

uint64_t sub_22312CDA0(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 24);
  v5 = *(a2 + 32);
  v4 = *(a2 + 40);
  v6 = *(a1 + 16);

  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  v7 = type metadata accessor for IntelligenceFlowActionSummaryMessage.Builder(0);
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

void IntelligenceFlowActionSummaryMessage.init(from:)()
{
  OUTLINED_FUNCTION_8_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0581C0, &qword_223209348);
  OUTLINED_FUNCTION_9(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  v8 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_22312DA18();
  sub_223200794();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
    type metadata accessor for IntelligenceFlowActionSummaryMessage(0);
    v10 = *((*MEMORY[0x277D85000] & *v0) + 0x30);
    v11 = *((*MEMORY[0x277D85000] & *v0) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v16[0]) = 0;
    v9 = sub_2232004F4();
    v12 = (v0 + OBJC_IVAR____TtC16SiriMessageTypes36IntelligenceFlowActionSummaryMessage_formatString);
    *v12 = v9;
    v12[1] = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0581D0, &qword_223209350);
    sub_22312DAC0(&qword_27D0581D8, sub_22312DA6C);
    sub_223200554();
    *(v0 + OBJC_IVAR____TtC16SiriMessageTypes36IntelligenceFlowActionSummaryMessage_parameterSummaries) = v16[0];
    sub_2230F7158(v3, v16);
    RequestMessageBase.init(from:)(v16);
    v14 = OUTLINED_FUNCTION_2();
    v15(v14);
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  OUTLINED_FUNCTION_9_0();
}

void sub_22312D154()
{
  OUTLINED_FUNCTION_8_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0581E8, &unk_223209358);
  OUTLINED_FUNCTION_9(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v9);
  v11 = v15 - v10;
  v12 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_22312DA18();
  sub_2232007A4();
  v13 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes36IntelligenceFlowActionSummaryMessage_formatString);
  v14 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes36IntelligenceFlowActionSummaryMessage_formatString + 8);
  sub_2232005F4();
  if (!v1)
  {
    v15[1] = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes36IntelligenceFlowActionSummaryMessage_parameterSummaries);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0581D0, &qword_223209350);
    sub_22312DAC0(&qword_27D0581F0, sub_22312DB44);
    sub_223200654();
    sub_2230D77A8(v3);
  }

  (*(v6 + 8))(v11, v4);
  OUTLINED_FUNCTION_9_0();
}

uint64_t sub_22312D330(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x745374616D726F66 && a2 == 0xEC000000676E6972;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000223222DD0 == a2)
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

uint64_t sub_22312D404(char a1)
{
  if (a1)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x745374616D726F66;
  }
}

uint64_t sub_22312D450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22312D330(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22312D478(uint64_t a1)
{
  v2 = sub_22312DA18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22312D4B4(uint64_t a1)
{
  v2 = sub_22312DA18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IntelligenceFlowActionSummaryMessage.Builder.formatString.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_2_1();
}

uint64_t IntelligenceFlowActionSummaryMessage.Builder.formatString.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t IntelligenceFlowActionSummaryMessage.Builder.parameterSummaries.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t IntelligenceFlowActionSummaryMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t IntelligenceFlowActionSummaryMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t IntelligenceFlowActionSummaryMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for IntelligenceFlowActionSummaryMessage.Builder(0) + 32);

  return sub_2230D1480(v3, a1);
}

uint64_t IntelligenceFlowActionSummaryMessage.Builder.sessionId.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for IntelligenceFlowActionSummaryMessage.Builder(0) + 32);

  return sub_2230D4E04(a1, v3);
}

uint64_t IntelligenceFlowActionSummaryMessage.Builder.requestId.getter()
{
  v1 = (v0 + *(type metadata accessor for IntelligenceFlowActionSummaryMessage.Builder(0) + 36));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_2_1();
}

uint64_t IntelligenceFlowActionSummaryMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for IntelligenceFlowActionSummaryMessage.Builder(0) + 36));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t sub_22312D844()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes36IntelligenceFlowActionSummaryMessage_formatString + 8);

  v2 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes36IntelligenceFlowActionSummaryMessage_parameterSummaries);
}

id IntelligenceFlowActionSummaryMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IntelligenceFlowActionSummaryMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22312D930(uint64_t a1)
{
  v2 = type metadata accessor for IntelligenceFlowActionSummaryMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22312D9AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntelligenceFlowActionSummaryMessage.Builder(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_22312DA18()
{
  result = qword_27D0581C8;
  if (!qword_27D0581C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0581C8);
  }

  return result;
}

unint64_t sub_22312DA6C()
{
  result = qword_27D0581E0;
  if (!qword_27D0581E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0581E0);
  }

  return result;
}

uint64_t sub_22312DAC0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0581D0, &qword_223209350);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22312DB44()
{
  result = qword_27D0581F8;
  if (!qword_27D0581F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0581F8);
  }

  return result;
}

uint64_t sub_22312DC60()
{
  sub_2230D525C(319, &qword_280FCA4D8);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_22312DD48();
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_2230D525C(319, &qword_280FCB0A8);
    if (v5 > 0x3F)
    {
      return v3;
    }

    sub_2230F6D30();
    if (v6 > 0x3F)
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

void sub_22312DD48()
{
  if (!qword_27D058210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0581D0, &qword_223209350);
    v0 = sub_2232002D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27D058210);
    }
  }
}

_BYTE *sub_22312DDBC(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_22312DEA8(_BYTE *result, int a2, int a3)
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

unint64_t sub_22312DF58()
{
  result = qword_27D058218;
  if (!qword_27D058218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058218);
  }

  return result;
}

unint64_t sub_22312DFB0()
{
  result = qword_27D058220;
  if (!qword_27D058220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058220);
  }

  return result;
}

unint64_t sub_22312E008()
{
  result = qword_27D058228;
  if (!qword_27D058228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058228);
  }

  return result;
}

unint64_t sub_22312E060()
{
  result = qword_27D058230;
  if (!qword_27D058230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058230);
  }

  return result;
}

unint64_t sub_22312E0B8()
{
  result = qword_27D058238;
  if (!qword_27D058238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058238);
  }

  return result;
}

unint64_t sub_22312E110()
{
  result = qword_27D058240;
  if (!qword_27D058240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058240);
  }

  return result;
}

unint64_t sub_22312E168()
{
  result = qword_27D058248;
  if (!qword_27D058248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058248);
  }

  return result;
}

unint64_t sub_22312E1C0()
{
  result = qword_27D058250;
  if (!qword_27D058250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058250);
  }

  return result;
}

unint64_t sub_22312E218()
{
  result = qword_27D058258;
  if (!qword_27D058258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058258);
  }

  return result;
}

unint64_t sub_22312E270()
{
  result = qword_27D058260;
  if (!qword_27D058260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058260);
  }

  return result;
}

unint64_t sub_22312E2C8()
{
  result = qword_27D058268;
  if (!qword_27D058268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058268);
  }

  return result;
}

unint64_t sub_22312E320()
{
  result = qword_27D058270;
  if (!qword_27D058270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058270);
  }

  return result;
}

void *IntelligenceFlowOutputMessage.aceCommand.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes29IntelligenceFlowOutputMessage_aceCommand);
  v2 = v1;
  return v1;
}

uint64_t IntelligenceFlowOutputMessage.inAppResponse.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes29IntelligenceFlowOutputMessage_inAppResponse + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes29IntelligenceFlowOutputMessage_inAppResponse);
  a1[1] = v2;
}

void *IntelligenceFlowOutputMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return IntelligenceFlowOutputMessage.init(build:)(v1);
}

void *IntelligenceFlowOutputMessage.init(build:)(void (*a1)(char *))
{
  v3 = type metadata accessor for IntelligenceFlowOutputMessage.Builder(0);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v7 = 0u;
  *(v7 + 1) = 0u;
  v7[32] = 15;
  *(v7 + 5) = 0;
  *(v7 + 6) = 0;
  v8 = *(v4 + 44);
  v9 = sub_2231FFDA4();
  __swift_storeEnumTagSinglePayload(&v7[v8], 1, 1, v9);
  v10 = &v7[*(v4 + 48)];
  *v10 = 0;
  *(v10 + 1) = 0;
  a1(v7);
  v11 = *v7;
  if (*v7)
  {
    v12 = *v7;
  }

  else
  {
    v12 = [objc_allocWithZone(MEMORY[0x277D479E8]) init];
  }

  *(v1 + OBJC_IVAR____TtC16SiriMessageTypes29IntelligenceFlowOutputMessage_command) = v12;
  v14 = *(v7 + 1);
  v13 = *(v7 + 2);
  *(v1 + OBJC_IVAR____TtC16SiriMessageTypes29IntelligenceFlowOutputMessage_aceCommand) = v14;
  v15 = *(v7 + 3);
  v16 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes29IntelligenceFlowOutputMessage_inAppResponse);
  *v16 = v13;
  v16[1] = v15;
  MEMORY[0x28223BE20](v15);
  *(&v21 - 2) = v7;

  v17 = v11;
  v18 = v14;
  v19 = RequestMessageBase.init(build:)(sub_22312E6A4);
  sub_22312E6AC(v7);
  return v19;
}

uint64_t sub_22312E5F4(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 32);
  v5 = *(a2 + 40);
  v4 = *(a2 + 48);
  v6 = *(a1 + 16);

  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  v7 = type metadata accessor for IntelligenceFlowOutputMessage.Builder(0);
  v8 = *(v7 + 36);
  v9 = type metadata accessor for RequestMessageBase.Builder(0);
  sub_2230DAEC8(a2 + v8, a1 + *(v9 + 24));
  v10 = (a2 + *(v7 + 40));
  v12 = *v10;
  v11 = v10[1];
  v13 = (a1 + *(v9 + 28));
  v14 = v13[1];

  *v13 = v12;
  v13[1] = v11;
  return result;
}

uint64_t sub_22312E6AC(uint64_t a1)
{
  v2 = type metadata accessor for IntelligenceFlowOutputMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void IntelligenceFlowOutputMessage.init(from:)()
{
  OUTLINED_FUNCTION_8_1();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058278, &qword_223209940);
  OUTLINED_FUNCTION_9(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v10);
  v11 = v4[4];
  LODWORD(v0) = __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_22312ED70();
  sub_223200794();
  v12 = qword_280FCDFA0 + 96;
  v13 = qword_280FCDFA0 + 96;
  if (v1)
  {
    OUTLINED_FUNCTION_3_16();
    goto LABEL_7;
  }

  v39 = v2;
  sub_2230FB7A0();
  OUTLINED_FUNCTION_5_4();
  sub_223200554();
  v14 = *&v40[0];
  objc_allocWithZone(MEMORY[0x277CCAAC8]);
  sub_223110BA0(*&v40[0], *(&v40[0] + 1));
  v0 = sub_223120750(*&v40[0], *(&v40[0] + 1));
  v37 = *(&v40[0] + 1);
  v38 = *&v40[0];
  sub_223122550();
  v35 = *MEMORY[0x277CCA308];
  sub_2232000C4();
  v15 = sub_223200294();

  if (v15)
  {
    v36 = v0;
    *(v2 + OBJC_IVAR____TtC16SiriMessageTypes29IntelligenceFlowOutputMessage_command) = v15;
    v16 = v15;
    OUTLINED_FUNCTION_5_4();
    sub_2232004C4();
    v17 = &qword_280FCDFA0[12];
    v34 = v16;
    if (*(&v40[0] + 1) >> 60 == 15)
    {
      v23 = 0;
LABEL_16:
      *(v2 + v17[361]) = v23;
      sub_22312FE4C();
      OUTLINED_FUNCTION_5_4();
      sub_2232004C4();
      *(v2 + OBJC_IVAR____TtC16SiriMessageTypes29IntelligenceFlowOutputMessage_inAppResponse) = v40[0];
      sub_2230F7158(v4, v40);
      RequestMessageBase.init(from:)(v40);
      v28 = OUTLINED_FUNCTION_1_10();
      v29(v28);
      sub_2230D94DC(v38, v37);

      __swift_destroy_boxed_opaque_existential_1(v4);
      goto LABEL_13;
    }

    v24 = *&v40[0];
    v25 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    sub_223110BA0(*&v40[0], *(&v40[0] + 1));
    v26 = sub_223120750(*&v40[0], *(&v40[0] + 1));
    v33 = *(&v40[0] + 1);
    sub_2232000C4();
    v27 = v26;
    v23 = sub_223200294();

    if (v23)
    {
      sub_22310A610(*&v40[0], *(&v40[0] + 1));

      v2 = v39;
      v17 = qword_280FCDFA0 + 96;
      goto LABEL_16;
    }

    sub_2230F9E38();
    swift_allocError();
    *v30 = 0xD00000000000001BLL;
    *(v30 + 8) = 0x8000000223222E10;
    *(v30 + 16) = 0;
    swift_willThrow();

    sub_22310A610(v24, v33);
    sub_2230D94DC(v38, v37);
    v31 = OUTLINED_FUNCTION_1_10();
    v32(v31);
    v7 = 0;
    LOBYTE(v5) = 0;
    LODWORD(v0) = 1;
  }

  else
  {
    sub_2230F9E38();
    swift_allocError();
    *v18 = 0xD000000000000018;
    *(v18 + 8) = 0x8000000223222DF0;
    *(v18 + 16) = 0;
    swift_willThrow();

    sub_2230D94DC(v14, v37);
    v19 = OUTLINED_FUNCTION_1_10();
    v20(v19);
    OUTLINED_FUNCTION_3_16();
  }

  v2 = v39;
  v13 = &qword_280FCDFA0[12];
  v12 = &qword_280FCDFA0[12];
LABEL_7:
  __swift_destroy_boxed_opaque_existential_1(v4);
  if ((v5 & 1) == 0)
  {
    if (v0)
    {
    }

    if (v7)
    {
    }

    type metadata accessor for IntelligenceFlowOutputMessage(0);
    v21 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
    v22 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
  }

LABEL_13:
  OUTLINED_FUNCTION_9_0();
}

unint64_t sub_22312ED70()
{
  result = qword_27D058280;
  if (!qword_27D058280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058280);
  }

  return result;
}

void sub_22312EDE4()
{
  OUTLINED_FUNCTION_8_1();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058290, &unk_223209948);
  OUTLINED_FUNCTION_9(v5);
  v32 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_11();
  v10 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_22312ED70();
  sub_2232007A4();
  v11 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  v31 = v0;
  v12 = *MEMORY[0x277CCA308];
  [v11 encodeObject:*(v0 + OBJC_IVAR____TtC16SiriMessageTypes29IntelligenceFlowOutputMessage_command) forKey:*MEMORY[0x277CCA308]];
  v13 = [v11 encodedData];
  v14 = sub_2231FFD24();
  v16 = v15;

  sub_2230D7754();
  sub_223200654();
  if (v1)
  {

    sub_2230D94DC(v14, v16);
    (*(v32 + 8))(v2, v5);
  }

  else
  {
    v30 = v4;
    v33 = v5;
    sub_2230D94DC(v14, v16);
    v17 = *(v31 + OBJC_IVAR____TtC16SiriMessageTypes29IntelligenceFlowOutputMessage_aceCommand);
    if (v17)
    {
      v18 = objc_allocWithZone(MEMORY[0x277CCAAB0]);
      v19 = v17;
      v20 = [v18 initRequiringSecureCoding_];
      v21 = v19;
      [v20 encodeObject:v19 forKey:v12];
      v22 = v20;
      v23 = [v20 encodedData];
      v24 = sub_2231FFD24();
      v26 = v25;

      v34 = v24;
      v36 = v26;
      v27 = v33;
      v28 = v2;
      sub_223200654();
      sub_2230D94DC(v34, v36);

      v29 = v32;
    }

    else
    {
      v29 = v32;
      v27 = v33;
      v28 = v2;
    }

    v35 = *(v31 + OBJC_IVAR____TtC16SiriMessageTypes29IntelligenceFlowOutputMessage_inAppResponse);
    v37 = *(v31 + OBJC_IVAR____TtC16SiriMessageTypes29IntelligenceFlowOutputMessage_inAppResponse + 8);
    sub_22312FEA0();

    sub_2232005E4();

    sub_2230D77A8(v30);
    (*(v29 + 8))(v28, v27);
  }

  OUTLINED_FUNCTION_9_0();
}

id IntelligenceFlowOutputMessage.Builder.command.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *IntelligenceFlowOutputMessage.Builder.aceCommand.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t IntelligenceFlowOutputMessage.Builder.inAppResponse.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t IntelligenceFlowOutputMessage.Builder.inAppResponse.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return result;
}

uint64_t IntelligenceFlowOutputMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t IntelligenceFlowOutputMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 48);

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t IntelligenceFlowOutputMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for IntelligenceFlowOutputMessage.Builder(0) + 36);

  return sub_2230D1480(v3, a1);
}

uint64_t IntelligenceFlowOutputMessage.Builder.sessionId.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for IntelligenceFlowOutputMessage.Builder(0) + 36);

  return sub_2230D4E04(a1, v3);
}

uint64_t IntelligenceFlowOutputMessage.Builder.requestId.getter()
{
  v1 = (v0 + *(type metadata accessor for IntelligenceFlowOutputMessage.Builder(0) + 40));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_2_1();
}

uint64_t IntelligenceFlowOutputMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for IntelligenceFlowOutputMessage.Builder(0) + 40));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t sub_22312F518(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646E616D6D6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x616D6D6F43656361 && a2 == 0xEA0000000000646ELL;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7365527070416E69 && a2 == 0xED000065736E6F70)
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

uint64_t sub_22312F638(char a1)
{
  if (!a1)
  {
    return 0x646E616D6D6F63;
  }

  if (a1 == 1)
  {
    return 0x616D6D6F43656361;
  }

  return 0x7365527070416E69;
}

uint64_t sub_22312F6A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22312F518(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22312F6D0(uint64_t a1)
{
  v2 = sub_22312ED70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22312F70C(uint64_t a1)
{
  v2 = sub_22312ED70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IntelligenceFlowOutputMessage.InAppResponse.bundleId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_2_1();
}

void IntelligenceFlowOutputMessage.InAppResponse.init(build:)(void (*a1)(uint64_t *)@<X0>, void *a2@<X8>)
{
  v16 = 0;
  v17 = 0;
  a1(&v16);
  v3 = v17;
  if (v17)
  {
    *a2 = v16;
    a2[1] = v3;
  }

  else
  {
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v4 = sub_223200014();
    __swift_project_value_buffer(v4, qword_280FCE830);
    v5 = sub_223200004();
    v6 = sub_223200254();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15 = v8;
      *v7 = 136446466;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0582A0, &qword_223209958);
      v9 = sub_223200104();
      v11 = sub_2231A5D38(v9, v10, &v15);

      *(v7 + 4) = v11;
      *(v7 + 12) = 2080;
      v12 = sub_223200104();
      v14 = sub_2231A5D38(v12, v13, &v15);

      *(v7 + 14) = v14;
      _os_log_impl(&dword_2230CE000, v5, v6, "Could not build %{public}s: Builder %s has missing required fields", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DD6780](v8, -1, -1);
      MEMORY[0x223DD6780](v7, -1, -1);
    }

    else
    {
    }

    *a2 = 0;
    a2[1] = 0;
  }
}

uint64_t IntelligenceFlowOutputMessage.InAppResponse.Builder.bundleId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_2_1();
}

uint64_t IntelligenceFlowOutputMessage.InAppResponse.Builder.bundleId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t static IntelligenceFlowOutputMessage.InAppResponse.== infix(_:_:)(void *a1, void *a2)
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

uint64_t sub_22312FA24(uint64_t a1)
{
  v2 = sub_22312FEF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22312FA60(uint64_t a1)
{
  v2 = sub_22312FEF4();

  return MEMORY[0x2821FE720](a1, v2);
}

void IntelligenceFlowOutputMessage.InAppResponse.encode(to:)()
{
  OUTLINED_FUNCTION_8_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0582A8, &qword_223209960);
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
  sub_22312FEF4();
  sub_2232007A4();
  sub_2232005F4();
  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_9_0();
}

void IntelligenceFlowOutputMessage.InAppResponse.init(from:)()
{
  OUTLINED_FUNCTION_8_1();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0582B8, &qword_223209968);
  OUTLINED_FUNCTION_9(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_11();
  v12 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_22312FEF4();
  sub_223200794();
  if (!v0)
  {
    v13 = sub_2232004F4();
    v15 = v14;
    (*(v8 + 8))(v1, v6);
    *v5 = v13;
    v5[1] = v15;
  }

  __swift_destroy_boxed_opaque_existential_1(v3);
  OUTLINED_FUNCTION_9_0();
}

uint64_t sub_22312FD60()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes29IntelligenceFlowOutputMessage_inAppResponse + 8);
}

id IntelligenceFlowOutputMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IntelligenceFlowOutputMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_22312FE4C()
{
  result = qword_27D058288;
  if (!qword_27D058288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058288);
  }

  return result;
}

unint64_t sub_22312FEA0()
{
  result = qword_27D058298;
  if (!qword_27D058298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058298);
  }

  return result;
}

unint64_t sub_22312FEF4()
{
  result = qword_27D0582B0;
  if (!qword_27D0582B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0582B0);
  }

  return result;
}

uint64_t sub_223130000()
{
  sub_223130154(319, &qword_280FCA408, sub_223122550);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_2230D525C(319, &qword_27D0582D0);
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
          sub_223130154(319, &qword_280FCE678, MEMORY[0x277CC95F0]);
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

void sub_223130154(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_2231301B8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_22313020C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for IntelligenceFlowOutputMessage.InAppResponse.CodingKeys(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for IntelligenceFlowOutputMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2231303F8()
{
  result = qword_27D0582D8;
  if (!qword_27D0582D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0582D8);
  }

  return result;
}

unint64_t sub_223130450()
{
  result = qword_27D0582E0;
  if (!qword_27D0582E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0582E0);
  }

  return result;
}

unint64_t sub_2231304A8()
{
  result = qword_27D0582E8;
  if (!qword_27D0582E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0582E8);
  }

  return result;
}

unint64_t sub_223130500()
{
  result = qword_27D0582F0;
  if (!qword_27D0582F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0582F0);
  }

  return result;
}

unint64_t sub_223130558()
{
  result = qword_27D0582F8;
  if (!qword_27D0582F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0582F8);
  }

  return result;
}

unint64_t sub_2231305B0()
{
  result = qword_27D058300;
  if (!qword_27D058300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058300);
  }

  return result;
}

void *IntelligenceFlowRequestCompletedMessage.init(build:)(void (*a1)(_BYTE *))
{
  v2 = type metadata accessor for IntelligenceFlowRequestCompletedMessage.Builder(0);
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v6 = 15;
  *(v6 + 1) = 0;
  *(v6 + 2) = 0;
  v7 = *(v3 + 32);
  v8 = sub_2231FFDA4();
  __swift_storeEnumTagSinglePayload(&v6[v7], 1, 1, v8);
  v9 = &v6[*(v3 + 36)];
  *v9 = 0;
  v9[1] = 0;
  a1(v6);
  v13 = v6;
  v10 = RequestMessageBase.init(build:)(sub_223130828);
  sub_223130830(v6);
  return v10;
}

uint64_t sub_223130778(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  v6 = *(a1 + 16);

  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  v7 = type metadata accessor for IntelligenceFlowRequestCompletedMessage.Builder(0);
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

uint64_t sub_223130830(uint64_t a1)
{
  v2 = type metadata accessor for IntelligenceFlowRequestCompletedMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *IntelligenceFlowRequestCompletedMessage.init(from:)(uint64_t *a1)
{
  sub_2230F7158(a1, v4);
  v2 = RequestMessageBase.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t IntelligenceFlowRequestCompletedMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t IntelligenceFlowRequestCompletedMessage.Builder.assistantId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t IntelligenceFlowRequestCompletedMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for IntelligenceFlowRequestCompletedMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t IntelligenceFlowRequestCompletedMessage.Builder.sessionId.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for IntelligenceFlowRequestCompletedMessage.Builder(0) + 24);

  return sub_2230D4E04(a1, v3);
}

uint64_t IntelligenceFlowRequestCompletedMessage.Builder.requestId.getter()
{
  v1 = (v0 + *(type metadata accessor for IntelligenceFlowRequestCompletedMessage.Builder(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t IntelligenceFlowRequestCompletedMessage.Builder.requestId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for IntelligenceFlowRequestCompletedMessage.Builder(0) + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

id IntelligenceFlowRequestCompletedMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IntelligenceFlowRequestCompletedMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t IntelligenceFlowSessionInformationMessage.ifSessionClientId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16SiriMessageTypes41IntelligenceFlowSessionInformationMessage_ifSessionClientId;
  v4 = sub_2231FFDA4();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

void *IntelligenceFlowSessionInformationMessage.init(build:)(void (*a1)(uint64_t))
{
  v2 = v1;
  swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v37 - v6;
  v8 = sub_2231FFDA4();
  v9 = OUTLINED_FUNCTION_9(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_2();
  v16 = v15 - v14;
  v17 = type metadata accessor for IntelligenceFlowSessionInformationMessage.Builder(0);
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_2();
  v22 = v21 - v20;
  *v22 = 15;
  *(v22 + 8) = 0;
  *(v22 + 16) = 0;
  __swift_storeEnumTagSinglePayload(v21 - v20 + *(v18 + 32), 1, 1, v8);
  v23 = *(v18 + 36);
  __swift_storeEnumTagSinglePayload(v22 + v23, 1, 1, v8);
  a1(v22);
  sub_2230D1480(v22 + v23, v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_2230D69D4(v7);
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v24 = sub_223200014();
    __swift_project_value_buffer(v24, qword_280FCE830);
    v25 = sub_223200004();
    v26 = sub_223200254();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v38 = v28;
      *v27 = 136446210;
      v29 = sub_2230F7898();
      v31 = sub_2231A5D38(v29, v30, &v38);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_2230CE000, v25, v26, "Could not build %{public}s. Builder has missing required fields", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x223DD6780](v28, -1, -1);
      MEMORY[0x223DD6780](v27, -1, -1);
    }

    sub_223131AF4(v22);
    type metadata accessor for IntelligenceFlowSessionInformationMessage(0);
    v32 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
    v33 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    (*(v11 + 32))(v16, v7, v8);
    v35 = (*(v11 + 16))(v1 + OBJC_IVAR____TtC16SiriMessageTypes41IntelligenceFlowSessionInformationMessage_ifSessionClientId, v16, v8);
    MEMORY[0x28223BE20](v35);
    *(&v37 - 2) = v22;
    v34 = SessionMessageBase.init(build:)(sub_223131B70);
    (*(v11 + 8))(v16, v8);
    sub_223131AF4(v22);
  }

  return v34;
}

uint64_t sub_22313113C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  v6 = *(a1 + 16);

  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  v7 = *(type metadata accessor for IntelligenceFlowSessionInformationMessage.Builder(0) + 24);
  v8 = *(type metadata accessor for SessionMessageBase.Builder(0) + 24);

  return sub_2230DAEC8(a2 + v7, a1 + v8);
}

void *IntelligenceFlowSessionInformationMessage.init(from:)(uint64_t *a1)
{
  v3 = sub_2231FFDA4();
  v4 = OUTLINED_FUNCTION_9(v3);
  v21 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_2();
  v22 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058318, &qword_223209D58);
  v11 = OUTLINED_FUNCTION_9(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = a1[4];
  v15 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223131B78();
  sub_223200794();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for IntelligenceFlowSessionInformationMessage(0);
    v16 = *((*MEMORY[0x277D85000] & *v24) + 0x30);
    v17 = *((*MEMORY[0x277D85000] & *v24) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_2230D45E8(&qword_27D057ED0);
    sub_223200554();
    (*(v21 + 32))(v24 + OBJC_IVAR____TtC16SiriMessageTypes41IntelligenceFlowSessionInformationMessage_ifSessionClientId, v22, v3);
    sub_2230F7158(a1, v23);
    v15 = SessionMessageBase.init(from:)(v23);
    v19 = OUTLINED_FUNCTION_3_3();
    v20(v19);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v15;
}

uint64_t sub_2231314C4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058320, &qword_223209D60);
  v4 = OUTLINED_FUNCTION_9(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223131B78();
  sub_2232007A4();
  sub_2231FFDA4();
  sub_2230D45E8(&qword_280FCE688);
  sub_223200654();
  if (!v1)
  {
    sub_2230D46B0(a1);
  }

  return (*(v6 + 8))(v10, v3);
}

uint64_t IntelligenceFlowSessionInformationMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t IntelligenceFlowSessionInformationMessage.Builder.assistantId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t IntelligenceFlowSessionInformationMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for IntelligenceFlowSessionInformationMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t IntelligenceFlowSessionInformationMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_4_12() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t IntelligenceFlowSessionInformationMessage.Builder.ifSessionClientId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for IntelligenceFlowSessionInformationMessage.Builder(0) + 28);

  return sub_2230D1480(v3, a1);
}

uint64_t IntelligenceFlowSessionInformationMessage.Builder.ifSessionClientId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_4_12() + 28);

  return sub_2230D4E04(v0, v2);
}

uint64_t sub_223131884(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x8000000223222FC0 == a2)
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

uint64_t sub_223131924@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_223131884(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_223131950(uint64_t a1)
{
  v2 = sub_223131B78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22313198C(uint64_t a1)
{
  v2 = sub_223131B78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2231319F8()
{
  v1 = OBJC_IVAR____TtC16SiriMessageTypes41IntelligenceFlowSessionInformationMessage_ifSessionClientId;
  v2 = sub_2231FFDA4();
  OUTLINED_FUNCTION_4(v2);
  v4 = *(v3 + 8);

  return v4(v0 + v1);
}

id IntelligenceFlowSessionInformationMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IntelligenceFlowSessionInformationMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_223131AF4(uint64_t a1)
{
  v2 = type metadata accessor for IntelligenceFlowSessionInformationMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_223131B78()
{
  result = qword_280FCBCE0;
  if (!qword_280FCBCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCBCE0);
  }

  return result;
}

uint64_t sub_223131BD4()
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

void sub_223131CB8()
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

_BYTE *storeEnumTagSinglePayload for IntelligenceFlowSessionInformationMessage.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_223131E24()
{
  result = qword_27D058328;
  if (!qword_27D058328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058328);
  }

  return result;
}

unint64_t sub_223131E7C()
{
  result = qword_280FCBCD0;
  if (!qword_280FCBCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCBCD0);
  }

  return result;
}

unint64_t sub_223131ED4()
{
  result = qword_280FCBCD8;
  if (!qword_280FCBCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCBCD8);
  }

  return result;
}

uint64_t IntelligenceFlowStatusUpdateMessage.statusUpdate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC16SiriMessageTypes35IntelligenceFlowStatusUpdateMessage_statusUpdate;
  v3 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes35IntelligenceFlowStatusUpdateMessage_statusUpdate);
  v4 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes35IntelligenceFlowStatusUpdateMessage_statusUpdate + 8);
  v5 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes35IntelligenceFlowStatusUpdateMessage_statusUpdate + 16);
  v6 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes35IntelligenceFlowStatusUpdateMessage_statusUpdate + 24);
  v7 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes35IntelligenceFlowStatusUpdateMessage_statusUpdate + 32);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  v8 = *(v2 + 40);
  *(a1 + 40) = v8;
  return sub_223131F94(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_223131F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (!a6)
  {
LABEL_4:

    goto LABEL_5;
  }

  if (a6 != 2)
  {
    if (a6 != 1)
    {
      return result;
    }

    goto LABEL_4;
  }

LABEL_5:
}

uint64_t static IntelligenceFlowStatusUpdateMessage.StatusUpdate.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[3];
  v160 = a1[2];
  v5 = a1[4];
  v6 = *(a1 + 40);
  v7 = *a2;
  v8 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  switch(v6)
  {
    case 1:
      if (v12 != 1)
      {
        v159 = a1[4];
        goto LABEL_22;
      }

      v166 = *a1;
      v167 = v3;
      v168 = v160;
      v169 = v4;
      v170 = v5;
      v161 = v7;
      v162 = v8;
      v163 = v10;
      v164 = v9;
      v165 = v11;
      v82 = static IntelligenceFlowStatusUpdateMessage.ProgressUpdate.== infix(_:_:)(&v166, &v161);
      v94 = OUTLINED_FUNCTION_30_0();
      sub_223131F94(v94, v95, v96, v97, v98, v99);
      sub_223131F94(v7, v8, v10, v9, v11, 1);
      v100 = OUTLINED_FUNCTION_30_0();
      sub_223132518(v100, v101, v102, v103, v104, v105);
      sub_223132518(v7, v8, v10, v9, v11, 1);
      return v82 & 1;
    case 2:
      v61 = a1[1];
      v158 = v5;
      if (v12 != 2)
      {
        goto LABEL_23;
      }

      if (v2 == *a2 && v3 == *(a2 + 8))
      {
        OUTLINED_FUNCTION_16_0();
        OUTLINED_FUNCTION_11_5();
        sub_223131F94(v122, v123, v124, v125, v126, v127);
        OUTLINED_FUNCTION_16_0();
        OUTLINED_FUNCTION_4_13();
        sub_223131F94(v128, v129, v130, v131, v132, 2);
        v133 = OUTLINED_FUNCTION_7_11();
        sub_223132518(v133, v134, v135, v4, v158, 2);
        OUTLINED_FUNCTION_16_0();
        OUTLINED_FUNCTION_4_13();
        v93 = 2;
        goto LABEL_28;
      }

      OUTLINED_FUNCTION_7_11();
      v156 = sub_2232006B4();
      OUTLINED_FUNCTION_16_0();
      OUTLINED_FUNCTION_11_5();
      sub_223131F94(v63, v64, v65, v66, v67, v68);
      OUTLINED_FUNCTION_2_16();
      sub_223131F94(v69, v70, v71, v72, v73, 2);
      v74 = OUTLINED_FUNCTION_7_11();
      sub_223132518(v74, v75, v76, v4, v158, 2);
      OUTLINED_FUNCTION_2_16();
      sub_223132518(v77, v78, v79, v80, v81, 2);
      v82 = 0;
      if (v156)
      {
        goto LABEL_29;
      }

      return v82 & 1;
    case 3:
      OUTLINED_FUNCTION_42_1();
      if (v12 != 3)
      {
        goto LABEL_24;
      }

      v83 = OUTLINED_FUNCTION_41();
      sub_223132518(v83, v84, v85, v86, v87, 3);
      OUTLINED_FUNCTION_4_13();
      v93 = 3;
LABEL_28:
      sub_223132518(v88, v89, v90, v91, v92, v93);
      goto LABEL_29;
    default:
      v157 = a1[4];
      if (*(a2 + 40))
      {
LABEL_22:
        OUTLINED_FUNCTION_42_1();

LABEL_23:

LABEL_24:
        OUTLINED_FUNCTION_4_13();
        sub_223131F94(v106, v107, v108, v109, v110, v12);
        v111 = OUTLINED_FUNCTION_41();
        sub_223132518(v111, v112, v113, v114, v115, v6);
        OUTLINED_FUNCTION_4_13();
        v121 = v12;
        goto LABEL_25;
      }

      v13 = v2 == v7 && v3 == v8;
      if (!v13 && (sub_2232006B4() & 1) == 0)
      {
        OUTLINED_FUNCTION_31_0();
        sub_223131F94(v137, v138, v139, v140, v141, v142);
        v143 = OUTLINED_FUNCTION_1_13();
        sub_223131F94(v143, v144, v145, v146, v147, v148);
        OUTLINED_FUNCTION_31_0();
        sub_223132518(v149, v150, v151, v152, v153, v154);
        v116 = OUTLINED_FUNCTION_1_13();
LABEL_25:
        sub_223132518(v116, v117, v118, v119, v120, v121);
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_2_16();
      sub_223131F94(v14, v15, v16, v17, v18, 0);
      OUTLINED_FUNCTION_16_0();
      OUTLINED_FUNCTION_31_0();
      sub_223131F94(v19, v20, v21, v22, v23, v24);
      OUTLINED_FUNCTION_7_11();
      OUTLINED_FUNCTION_31_0();
      sub_223131F94(v25, v26, v27, v28, v29, v30);
      v31 = OUTLINED_FUNCTION_1_13();
      sub_223131F94(v31, v32, v33, v34, v35, v36);
      v155 = sub_223134A5C(v160, v10);
      OUTLINED_FUNCTION_7_11();
      OUTLINED_FUNCTION_31_0();
      sub_223132518(v37, v38, v39, v40, v41, v42);
      v43 = OUTLINED_FUNCTION_1_13();
      sub_223132518(v43, v44, v45, v46, v47, v48);
      v49 = OUTLINED_FUNCTION_1_13();
      sub_223132518(v49, v50, v51, v52, v53, v54);
      OUTLINED_FUNCTION_7_11();
      OUTLINED_FUNCTION_31_0();
      sub_223132518(v55, v56, v57, v58, v59, v60);
      if ((v155 & 1) == 0)
      {
LABEL_26:
        v82 = 0;
        return v82 & 1;
      }

LABEL_29:
      v82 = 1;
      return v82 & 1;
  }
}

uint64_t static IntelligenceFlowStatusUpdateMessage.ActionSummary.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_2232006B4() & 1) == 0)
  {
    return 0;
  }

  v5 = OUTLINED_FUNCTION_2_1();

  return sub_223134A5C(v5, v6);
}

uint64_t static IntelligenceFlowStatusUpdateMessage.ProgressUpdate.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *(a1 + 8) == *(a2 + 8) && v3 == v6;
    if (!v9 && (sub_2232006B4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v8)
    {
      if (v4 == v7 && v5 == v8)
      {
        return 1;
      }

      OUTLINED_FUNCTION_2_1();
      if (OUTLINED_FUNCTION_33_0())
      {
        return 1;
      }
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

uint64_t static IntelligenceFlowStatusUpdateMessage.StatusNotification.== infix(_:_:)(void *a1, void *a2)
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

uint64_t sub_223132518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  result = a2;
  if (!a6)
  {
LABEL_4:

    goto LABEL_5;
  }

  if (a6 != 2)
  {
    if (a6 != 1)
    {
      return result;
    }

    goto LABEL_4;
  }

LABEL_5:
}