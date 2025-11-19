uint64_t sub_2230CFD50(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *(result + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2230CFD84(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t type metadata accessor for SessionConfiguration()
{
  result = qword_280FCE790;
  if (!qword_280FCE790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SessionConfiguration.init(sessionId:mafConfiguration:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(type metadata accessor for SessionConfiguration() + 52);
  v7 = sub_2231FFDA4();
  v8 = *(v7 - 8);
  (*(v8 + 16))(a3 + v6, a1, v7);
  v9 = [a2 assistantId];
  v10 = sub_2232000C4();
  v12 = v11;

  *a3 = v10;
  *(a3 + 8) = v12;
  v13 = [a2 languageCode];
  v14 = sub_2232000C4();
  v16 = v15;

  *(a3 + 16) = v14;
  *(a3 + 24) = v16;
  *(a3 + 32) = [a2 understandingOnDevice];
  v17 = sub_2230D0814(a2);
  v19 = 0x80000002232216F0;
  v20 = 0xD000000000000024;
  if (v18)
  {
    v20 = v17;
    v19 = v18;
  }

  *(a3 + 40) = v20;
  *(a3 + 48) = v19;
  [a2 clientAuditToken];
  v21 = v25;
  *(a3 + 56) = v24;
  *(a3 + 72) = v21;
  *(a3 + 88) = 0;
  *(a3 + 89) = [a2 isSystemAssistantExperienceEnabled];
  *(a3 + 90) = [a2 isFullPlannerEnabled];
  *(a3 + 91) = [a2 isPQAEnabled];
  v22 = [a2 deferIntelligenceFlowSessionCreation];

  result = (*(v8 + 8))(a1, v7);
  *(a3 + 92) = v22;
  return result;
}

uint64_t sub_2230D0000(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3()
{
  v2 = *(v0 - 152);

  return sub_223200474();
}

uint64_t OUTLINED_FUNCTION_1_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_0@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  v5 = v3[1];
}

uint64_t OUTLINED_FUNCTION_6_2()
{

  return sub_2232005C4();
}

uint64_t OUTLINED_FUNCTION_6_3()
{

  return sub_223200654();
}

uint64_t OUTLINED_FUNCTION_2_3@<X0>(uint64_t a1@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v11 = *(a1 + 64);

  return sub_22311DD98(v2, v3, v4, v5, v6, v7);
}

uint64_t OUTLINED_FUNCTION_6_8()
{

  return type metadata accessor for GestureBasedResultCandidateMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_6_9()
{

  return type metadata accessor for IFQueryGeneratedMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_6_11()
{

  return sub_223200554();
}

unint64_t OUTLINED_FUNCTION_6_13()
{
  v3 = *(v2 - 152);
  v4 = *(v2 - 144);
  *(v4 + 16) = v0;
  result = v4 + ((*(*(v2 - 168) + 80) + 32) & ~*(*(v2 - 168) + 80)) + *(*(v2 - 168) + 72) * v1;
  v6 = *(v2 - 160);
  return result;
}

uint64_t OUTLINED_FUNCTION_6_14()
{

  return type metadata accessor for NLTRPCandidateMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_6_16()
{

  return type metadata accessor for PommesResultCandidateMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_6_17(uint64_t a1, _BYTE *a2)
{
  *a2 = 5;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_6_28()
{

  return type metadata accessor for StartRootSpeechRequestMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_6_30()
{

  return type metadata accessor for TRPCandidateReadyForExecutionMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_6_32()
{

  return type metadata accessor for TTResponseMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_6_33()
{

  return type metadata accessor for UnsupportedLanguageDetectedMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_10_2@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1 + 8);
}

uint64_t OUTLINED_FUNCTION_10_3()
{

  return type metadata accessor for ExecutionSystemSwitchedMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_10_10()
{
  v3 = *(v0 - 128);
  v2 = *(v0 - 120);
  *(v0 - 96) = 0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;

  return sub_2231FFF94();
}

uint64_t OUTLINED_FUNCTION_10_11()
{

  return sub_2232004C4();
}

uint64_t OUTLINED_FUNCTION_10_13()
{

  return sub_22317F048();
}

void OUTLINED_FUNCTION_10_15(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t OUTLINED_FUNCTION_10_17()
{

  return type metadata accessor for StartChildSpeechRequestMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_10_18()
{

  return type metadata accessor for StartChildTextRequestMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_10_19()
{

  return sub_223200654();
}

uint64_t OUTLINED_FUNCTION_10_20()
{

  return sub_223200124();
}

void OUTLINED_FUNCTION_10_21(uint64_t a1@<X8>)
{
  v2 = v1 - a1;
  *v2 = 15;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
}

uint64_t OUTLINED_FUNCTION_10_22()
{

  return sub_2232005B4();
}

uint64_t OUTLINED_FUNCTION_10_24(uint64_t a1, unint64_t a2)
{

  return sub_2230D9D28(a1, a2);
}

uint64_t sub_2230D078C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_2231FFDA4();
    v8 = v5 + *(a4 + 52);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2230D0814(void *a1)
{
  v1 = [a1 sharedUserId];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2232000C4();

  return v3;
}

void *SessionStartedMessage.init(build:)(void (*a1)(unsigned __int8 *), uint64_t a2)
{
  v133 = a2;
  v134 = a1;
  ObjectType = swift_getObjectType();
  v2 = sub_2231FFC84();
  v3 = OUTLINED_FUNCTION_9(v2);
  v126 = v4;
  v127 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_2();
  v125 = v8 - v7;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A060, &unk_223218840) - 8) + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v10);
  v128 = &v120 - v11;
  v12 = type metadata accessor for SessionConfiguration();
  v13 = OUTLINED_FUNCTION_4(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_2();
  v124 = v17 - v16;
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0) - 8) + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v19);
  v21 = &v120 - v20;
  v22 = sub_2231FFDA4();
  v23 = OUTLINED_FUNCTION_9(v22);
  v132 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_2_2();
  v131 = v28 - v27;
  v29 = type metadata accessor for SessionStartedMessage.Builder(0);
  v30 = (v29 - 8);
  v31 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_2_2();
  v34 = (v33 - v32);
  *v34 = 15;
  *(v34 + 1) = 0;
  *(v34 + 2) = 0;
  v35 = v30[8];
  __swift_storeEnumTagSinglePayload(v33 - v32 + v35, 1, 1, v22);
  v36 = &v34[v30[9]];
  *v36 = 0;
  v36[1] = 0;
  v121 = v30[10];
  v34[v121] = 2;
  v122 = v30[11];
  v34[v122] = 2;
  v37 = &v34[v30[12]];
  *v37 = 0;
  v37[1] = 0;
  v38 = &v34[v30[13]];
  *v38 = 0u;
  *(v38 + 1) = 0u;
  v38[32] = 1;
  v123 = v30[14];
  v34[v123] = 2;
  v39 = v30[15];
  v129 = v12;
  __swift_storeEnumTagSinglePayload(&v34[v39], 1, 1, v12);
  v134(v34);
  v40 = *v34;
  if (v40 != 15)
  {
    sub_2230D3008(&v34[v35], v21, &qword_27D0575C0, &qword_2232035E0);
    if (__swift_getEnumTagSinglePayload(v21, 1, v22) != 1)
    {
      (*(v132 + 32))(v131, v21, v22);
      v57 = v128;
      sub_2230D3008(&v34[v39], v128, &qword_27D05A060, &unk_223218840);
      if (__swift_getEnumTagSinglePayload(v57, 1, v129) == 1)
      {
        sub_2230D40E0(v57, &qword_27D05A060, &unk_223218840);
        v58 = *(v34 + 2);
        v45 = v135;
        if (!v58 || (v59 = v36[1]) == 0)
        {
          if (qword_280FCA778 != -1)
          {
            OUTLINED_FUNCTION_0_0();
            swift_once();
          }

          v83 = sub_223200014();
          __swift_project_value_buffer(v83, qword_280FCE830);
          v84 = sub_223200004();
          v85 = sub_223200254();
          if (OUTLINED_FUNCTION_24_5(v85))
          {
            v86 = swift_slowAlloc();
            v87 = swift_slowAlloc();
            v136 = v87;
            *v86 = 136446210;
            v88 = sub_2230F7898();
            v90 = sub_2231A5D38(v88, v89, &v136);

            *(v86 + 4) = v90;
            OUTLINED_FUNCTION_20_12(&dword_2230CE000, v91, v92, "Could not build %{public}s: Builder has missing required fields");
            __swift_destroy_boxed_opaque_existential_1(v87);
            OUTLINED_FUNCTION_12_0();
            MEMORY[0x223DD6780]();
            OUTLINED_FUNCTION_12_0();
            MEMORY[0x223DD6780]();
          }

          OUTLINED_FUNCTION_1_29();
          sub_2230D3E14();
          (*(v132 + 8))(v131, v22);
          goto LABEL_10;
        }

        LODWORD(v133) = v40;
        v134 = v22;
        v60 = *(v34 + 1);
        ObjectType = *v36;
        v136 = ObjectType;
        v137 = v59;

        v61 = v59;
        v62 = v125;
        sub_2231FFC74();
        sub_2230D1D30();
        sub_2232002E4();
        OUTLINED_FUNCTION_19_7();
        v63(v62);
        OUTLINED_FUNCTION_18_12();
        if (!v64)
        {

          if (qword_280FCA778 != -1)
          {
            OUTLINED_FUNCTION_0_0();
            swift_once();
          }

          v98 = sub_223200014();
          __swift_project_value_buffer(v98, qword_280FCE830);
          v99 = sub_223200004();
          v100 = sub_223200254();
          if (OUTLINED_FUNCTION_24_5(v100))
          {
            *swift_slowAlloc() = 0;
            OUTLINED_FUNCTION_21_10(&dword_2230CE000, v101, v102, "languageCode is empty, can't create message");
            OUTLINED_FUNCTION_12_0();
            MEMORY[0x223DD6780]();
          }

          OUTLINED_FUNCTION_1_29();
          sub_2230D3E14();
          (*(v132 + 8))(v131, v134);
          goto LABEL_10;
        }

        v128 = v61;
        v65 = (v45 + OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_languageCode);
        *v65 = v57;
        v65[1] = &v136;
        v66 = (v34[v121] == 2) | v34[v121] & 1;
        *(v45 + OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_understandingOnDevice) = v66;
        v67 = v34[v122] & 1;
        *(v45 + OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_isSystemAssistantExperienceEnabled) = v67;
        v68 = v37[1];
        v124 = v60;
        if (v68)
        {
          v69 = *v37;
          v70 = v68;
        }

        else
        {
          v70 = 0x80000002232216F0;
          v69 = 0xD000000000000024;
        }

        v103 = (v45 + OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_userId);
        *v103 = v69;
        v103[1] = v70;
        v104 = v38[32];
        v105 = v45 + OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_clientAuditToken;
        v106 = *(v38 + 1);
        *v105 = *v38;
        *(v105 + 1) = v106;
        v107 = v34[v123];
        v105[32] = v104;
        v108 = v107 & 1;
        *(v45 + OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_deferWarmup) = v107 & 1;
        v109 = v45 + OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_sessionConfiguration;
        (*(v132 + 16))(v45 + OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_sessionConfiguration + *(v129 + 52), v131, v134);
        v110 = *v103;
        v111 = v103[1];
        v112 = v105[32];
        v113 = *v105;
        v114 = *(v105 + 1);
        *v109 = v124;
        *(v109 + 1) = v58;
        v115 = v128;
        *(v109 + 2) = ObjectType;
        *(v109 + 3) = v115;
        *(v109 + 5) = v110;
        *(v109 + 6) = v111;
        *(v109 + 56) = v113;
        *(v109 + 72) = v114;
        v109[88] = v112;
        v109[32] = v66;
        v109[92] = v108;
        v109[89] = v67;
        *(v109 + 45) = 0;
      }

      else
      {
        LODWORD(v133) = v40;
        v134 = v22;
        v71 = v124;
        sub_2230D3C1C(v57, v124);
        v45 = v135;
        sub_2230D3844(v71, v135 + OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_sessionConfiguration);
        v72 = *(v71 + 24);
        v136 = *(v71 + 16);
        v137 = v72;

        v73 = v125;
        sub_2231FFC74();
        sub_2230D1D30();
        sub_2232002E4();
        OUTLINED_FUNCTION_19_7();
        v74(v73);

        OUTLINED_FUNCTION_18_12();
        if (!v75)
        {

          if (qword_280FCA778 != -1)
          {
            OUTLINED_FUNCTION_0_0();
            swift_once();
          }

          v93 = sub_223200014();
          __swift_project_value_buffer(v93, qword_280FCE830);
          v94 = sub_223200004();
          v95 = sub_223200254();
          if (OUTLINED_FUNCTION_24_5(v95))
          {
            *swift_slowAlloc() = 0;
            OUTLINED_FUNCTION_21_10(&dword_2230CE000, v96, v97, "languageCode is empty, can't create message");
            OUTLINED_FUNCTION_12_0();
            MEMORY[0x223DD6780]();
          }

          sub_2230D3E14();
          OUTLINED_FUNCTION_1_29();
          sub_2230D3E14();
          (*(v132 + 8))(v131, v134);
          goto LABEL_9;
        }

        v76 = (v45 + OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_languageCode);
        *v76 = v57;
        v76[1] = &v136;
        *(v45 + OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_understandingOnDevice) = *(v71 + 32);
        *(v45 + OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_isSystemAssistantExperienceEnabled) = *(v71 + 89);
        v77 = *(v71 + 48);
        v78 = (v45 + OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_userId);
        *v78 = *(v71 + 40);
        v78[1] = v77;
        LOBYTE(v76) = *(v71 + 88);
        v79 = v45 + OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_clientAuditToken;
        v80 = *(v71 + 72);
        *v79 = *(v71 + 56);
        *(v79 + 1) = v80;
        v79[32] = v76;
        v81 = *(v71 + 92);

        OUTLINED_FUNCTION_2_38();
        v82 = sub_2230D3E14();
        *(v45 + OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_deferWarmup) = v81;
      }

      v116 = *(v45 + OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_sessionConfiguration);
      v117 = *(v45 + OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_sessionConfiguration + 8);
      MEMORY[0x28223BE20](v82);
      *(&v120 - 32) = v133;
      *(&v120 - 3) = v118;
      *(&v120 - 2) = v117;
      v119 = v131;
      *(&v120 - 1) = v131;

      v55 = SessionMessageBase.init(build:)(sub_2230D3FF4);

      OUTLINED_FUNCTION_1_29();
      sub_2230D3E14();
      (*(v132 + 8))(v119, v134);
      return v55;
    }

    sub_2230D40E0(v21, &qword_27D0575C0, &qword_2232035E0);
  }

  if (qword_280FCA778 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v41 = sub_223200014();
  __swift_project_value_buffer(v41, qword_280FCE830);
  v42 = sub_223200004();
  v43 = sub_223200254();
  v44 = OUTLINED_FUNCTION_24_5(v43);
  v45 = v135;
  if (v44)
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v136 = v47;
    *v46 = 136446210;
    v48 = sub_2230F7898();
    v50 = sub_2231A5D38(v48, v49, &v136);

    *(v46 + 4) = v50;
    OUTLINED_FUNCTION_20_12(&dword_2230CE000, v51, v52, "Could not build %{public}s: Builder has missing required fields");
    __swift_destroy_boxed_opaque_existential_1(v47);
    OUTLINED_FUNCTION_12_0();
    MEMORY[0x223DD6780]();
    OUTLINED_FUNCTION_12_0();
    MEMORY[0x223DD6780]();
  }

  OUTLINED_FUNCTION_1_29();
LABEL_9:
  sub_2230D3E14();
LABEL_10:
  type metadata accessor for SessionStartedMessage(0);
  v53 = *((*MEMORY[0x277D85000] & *v45) + 0x30);
  v54 = *((*MEMORY[0x277D85000] & *v45) + 0x34);
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_2230D1480(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for MessageBase()
{
  result = qword_280FCB0C0;
  if (!qword_280FCB0C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_3()
{
  v2 = *(v0 - 96);

  return sub_2232005B4();
}

uint64_t OUTLINED_FUNCTION_1_4(uint64_t a1)
{

  return MEMORY[0x2821FDA60](a1, v1);
}

uint64_t OUTLINED_FUNCTION_1_6()
{

  return sub_223200494();
}

uint64_t OUTLINED_FUNCTION_1_7(uint64_t result)
{
  v1 = *(result + 64);
  *(result + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_1_14()
{

  return sub_223200514();
}

uint64_t OUTLINED_FUNCTION_1_17@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 8);
  result = *(v1 - 272);
  v4 = *(v1 - 264);
  return result;
}

uint64_t OUTLINED_FUNCTION_1_19()
{

  return sub_2231FFFD4();
}

uint64_t OUTLINED_FUNCTION_1_22()
{

  return sub_223200654();
}

uint64_t OUTLINED_FUNCTION_1_28@<X0>(char a1@<W8>)
{
  *(v1 - 128) = a1;
  v3 = *(v1 - 144);

  return sub_223200504();
}

uint64_t OUTLINED_FUNCTION_1_30()
{

  return type metadata accessor for ShimToolInvokedMessage.Builder(0);
}

id OUTLINED_FUNCTION_1_31()
{

  return sub_2231AD7C4(v2 + 9, v1 | 0x8000000000000000, -1, v0);
}

uint64_t OUTLINED_FUNCTION_1_32()
{

  return type metadata accessor for SiriWillAskForConfirmationMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_1_33()
{

  return type metadata accessor for SiriWillPromptMessage.Builder(0);
}

void *SessionMessageBase.init(build:)(void (*a1)(unsigned __int8 *))
{
  v2 = v1;
  swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v39 - v6;
  v8 = sub_2231FFDA4();
  v9 = OUTLINED_FUNCTION_9(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_2();
  v16 = v15 - v14;
  v17 = type metadata accessor for SessionMessageBase.Builder(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  OUTLINED_FUNCTION_2_2();
  v21 = (v20 - v19);
  *v21 = 15;
  *(v21 + 1) = 0;
  *(v21 + 2) = 0;
  v23 = *(v22 + 32);
  __swift_storeEnumTagSinglePayload(v20 - v19 + v23, 1, 1, v8);
  a1(v21);
  v24 = *v21;
  if (v24 == 15)
  {
    goto LABEL_5;
  }

  v25 = *(v21 + 2);
  if (!v25)
  {
    goto LABEL_5;
  }

  v39 = *(v21 + 1);
  sub_2230D1480(&v21[v23], v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_2230D69D4(v7);
LABEL_5:
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v26 = sub_223200014();
    __swift_project_value_buffer(v26, qword_280FCE830);
    v27 = sub_223200004();
    v28 = sub_223200254();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v40 = v30;
      *v29 = 136446210;
      v31 = sub_2230F7898();
      v33 = sub_2231A5D38(v31, v32, &v40);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_2230CE000, v27, v28, "Could not build %{public}s: Builder has missing required fields", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x223DD6780](v30, -1, -1);
      MEMORY[0x223DD6780](v29, -1, -1);
    }

    sub_2230D20CC(v21);
    type metadata accessor for SessionMessageBase(0);
    v34 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
    v35 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  (*(v11 + 32))(v16, v7, v8);
  (*(v11 + 16))(v2 + OBJC_IVAR____TtC16SiriMessageTypes18SessionMessageBase_sessionId, v16, v8);

  v36 = sub_2230D20C4(v2, v24, v39, v25);
  (*(v11 + 8))(v16, v8);
  v38 = v36;
  sub_2230D20CC(v21);
  if (v36)
  {
  }

  return v36;
}

unint64_t sub_2230D1D30()
{
  result = qword_280FCA540;
  if (!qword_280FCA540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCA540);
  }

  return result;
}

id sub_2230D1D84(void *a1, unsigned __int8 a2, uint64_t a3, uint64_t a4)
{
  v8 = a2;
  v9 = sub_2231FFDA4();
  v10 = OUTLINED_FUNCTION_9(v9);
  v39 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_2();
  v16 = v15 - v14;
  v17 = sub_2231FFC84();
  v18 = OUTLINED_FUNCTION_9(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2_2();
  v25 = v24 - v23;
  *(a1 + OBJC_IVAR____TtC16SiriMessageTypes11MessageBase_postedOnTheBus) = 0;
  if (v8 == 15)
  {
LABEL_11:
    type metadata accessor for MessageBase();
    v36 = *((*MEMORY[0x277D85000] & *a1) + 0x30);
    v37 = *((*MEMORY[0x277D85000] & *a1) + 0x34);
    swift_deallocPartialClassInstance();

    return 0;
  }

  v41 = a3;
  v42 = a4;
  sub_2231FFC74();
  sub_2230D1D30();
  v26 = sub_2232002E4();
  v28 = v27;
  (*(v20 + 8))(v25, v17);
  v29 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v29 = v26 & 0xFFFFFFFFFFFFLL;
  }

  if (!v29)
  {

    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v32 = sub_223200014();
    __swift_project_value_buffer(v32, qword_280FCE830);
    v33 = sub_223200004();
    v34 = sub_223200254();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_2230CE000, v33, v34, "assistantId is empty, can't create message", v35, 2u);
      MEMORY[0x223DD6780](v35, -1, -1);
    }

    goto LABEL_11;
  }

  *(a1 + OBJC_IVAR____TtC16SiriMessageTypes11MessageBase_source) = a2;
  v30 = (a1 + OBJC_IVAR____TtC16SiriMessageTypes11MessageBase_assistantId);
  *v30 = v26;
  v30[1] = v28;
  sub_2231FFD94();
  (*(v39 + 32))(a1 + OBJC_IVAR____TtC16SiriMessageTypes11MessageBase_messageId, v16, v9);
  v40.receiver = a1;
  v40.super_class = type metadata accessor for MessageBase();
  v31 = objc_msgSendSuper2(&v40, sel_init);

  return v31;
}

uint64_t sub_2230D2098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22312BEC4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2230D20CC(uint64_t a1)
{
  v2 = type metadata accessor for SessionMessageBase.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2230D21A0(uint64_t result)
{
  if ((*(v1 + OBJC_IVAR____TtC16SiriMessageTypes11MessageBase_postedOnTheBus) & 1) == 0)
  {
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes11MessageBase_postedOnTheBus) = result & 1;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_0()
{

  return sub_2230D9D28(0, 1uLL);
}

uint64_t OUTLINED_FUNCTION_4_1()
{

  return type metadata accessor for ASRReadyForNewTurnMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_5_1()
{

  return sub_2230D94DC(v1, v0);
}

uint64_t OUTLINED_FUNCTION_4_4()
{

  return type metadata accessor for CancelRequestMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_4_6()
{

  return sub_2232006B4();
}

uint64_t OUTLINED_FUNCTION_4_7()
{

  return type metadata accessor for ExecuteNLOnServerMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_4_9()
{
  result = v0 - 96;
  v2 = *(v0 - 104);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_10()
{

  return type metadata accessor for InitiateMUXStateRollbackMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_4_12()
{

  return type metadata accessor for IntelligenceFlowSessionInformationMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_4_15()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 120);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_17@<X0>(char a1@<W8>)
{
  *(v1 - 120) = a1;

  return sub_223200504();
}

uint64_t OUTLINED_FUNCTION_4_19()
{

  return type metadata accessor for MUXTextBasedResultSelectedMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_4_21()
{

  return type metadata accessor for NLResultCandidateMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_4_23()
{
  v2 = *(v0 - 136);

  return sub_223200554();
}

uint64_t OUTLINED_FUNCTION_4_24()
{

  return type metadata accessor for OrchestrationTaskCompletedMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_5_2()
{

  return sub_2232004F4();
}

uint64_t OUTLINED_FUNCTION_4_27()
{

  return sub_2232000A4();
}

uint64_t OUTLINED_FUNCTION_4_30()
{

  return type metadata accessor for RootStoppedListeningForSpeechContinuationMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_4_32()
{

  return sub_2232005F4();
}

uint64_t OUTLINED_FUNCTION_4_33()
{

  return sub_223200654();
}

uint64_t OUTLINED_FUNCTION_4_34()
{

  return type metadata accessor for SiriXActionCandidatesGeneratedMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_4_36()
{

  return type metadata accessor for StartChildSpeechRequestMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_4_37()
{

  return type metadata accessor for StartChildTextRequestMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_4_38()
{

  return sub_223200654();
}

uint64_t OUTLINED_FUNCTION_4_40()
{

  return type metadata accessor for StartRootTextRequestMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_4_41()
{

  return type metadata accessor for StartSpeechDictationSessionMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_4_42()
{

  return type metadata accessor for StoppedListeningForSpeechContinuationForPlannerMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_4_43()
{

  return type metadata accessor for StoppedListeningForSpeechContinuationMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_9_1@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (v3 + a3);
  *v4 = result;
  v4[1] = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_9_3()
{

  return sub_2232004F4();
}

uint64_t OUTLINED_FUNCTION_9_4()
{

  return type metadata accessor for FallbackToPommesMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_9_8()
{

  return sub_2232004F4();
}

uint64_t OUTLINED_FUNCTION_9_10()
{

  return type metadata accessor for MUXDirectActionResultCandidateMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_9_11(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_9_12()
{

  return type metadata accessor for MUXTextBasedResultCandidateMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_9_14()
{
  result = *(v0 - 136);
  v2 = *(*(v0 - 144) + 8);
  v3 = *(v0 - 128);
  return result;
}

uint64_t OUTLINED_FUNCTION_9_17()
{

  return sub_2231FFFE4();
}

uint64_t OUTLINED_FUNCTION_9_20()
{

  return type metadata accessor for PommesTRPCandidateMessage.Builder(0);
}

id OUTLINED_FUNCTION_9_21()
{

  return [v0 (v3 + 888)];
}

uint64_t OUTLINED_FUNCTION_9_23@<X0>(uint64_t a1@<X8>)
{
  v3 = (v2 + a1);
  result = *v3;
  v5 = v3[1];
  *v1 = *v3;
  *(v1 + 8) = v5;
  *(v1 + 16) = *(v3 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_9_24(uint64_t a1, _BYTE *a2)
{
  *a2 = 5;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_9_27()
{

  return sub_2232004F4();
}

uint64_t OUTLINED_FUNCTION_9_29()
{

  return sub_2232004C4();
}

uint64_t OUTLINED_FUNCTION_9_30()
{

  return type metadata accessor for TTResponseMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_9_31()
{

  return type metadata accessor for UserIdentificationMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_9_33()
{

  return type metadata accessor for VoiceCommandContextMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_2_7()
{
  v2 = *(v0 - 96);

  return sub_223200474();
}

uint64_t OUTLINED_FUNCTION_2_8()
{

  return sub_223200674();
}

uint64_t OUTLINED_FUNCTION_2_10()
{

  return sub_2232006B4();
}

uint64_t OUTLINED_FUNCTION_2_11()
{

  return type metadata accessor for FallbackToSiriXRequestedMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_2_13()
{

  return type metadata accessor for IFGestureBasedCandidateMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_2_14()
{
}

uint64_t OUTLINED_FUNCTION_2_17()
{

  return sub_223200614();
}

uint64_t OUTLINED_FUNCTION_2_19()
{

  return type metadata accessor for MultiUserTRPCandidateRequestMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_2_20()
{

  return type metadata accessor for MultiUserTRPCandidateRequestMessageBase.Builder(0);
}

uint64_t OUTLINED_FUNCTION_2_21()
{

  return type metadata accessor for MUXAsrResultCandidateMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_2_22(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, __int128 a12, __int128 a13, uint64_t a14, __int128 a15, __int128 a16, __int128 a17, uint64_t a18)
{
  a11 = a15;
  a12 = a16;
  a13 = a17;
  a14 = a18;

  return sub_223146834(&a11);
}

uint64_t OUTLINED_FUNCTION_2_23()
{

  return type metadata accessor for MUXSpeechPackageMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_2_24()
{

  return type metadata accessor for NLRepetitionMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_2_25()
{
  v2 = *(v0 - 336);

  return sub_223200474();
}

id OUTLINED_FUNCTION_2_28(uint64_t a1)
{

  return [v1 (v3 + 3842)];
}

uint64_t OUTLINED_FUNCTION_2_31@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1 + 8);
}

uint64_t OUTLINED_FUNCTION_2_32()
{

  return type metadata accessor for RootTRPCandidateMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_2_33()
{

  return sub_223200554();
}

uint64_t OUTLINED_FUNCTION_2_35()
{

  return sub_223200554();
}

uint64_t OUTLINED_FUNCTION_2_44()
{

  return type metadata accessor for StartRootLocalRequestMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_2_45()
{

  return sub_223200654();
}

uint64_t OUTLINED_FUNCTION_2_46()
{

  return type metadata accessor for StartSpeechDictationRequestMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_2_48()
{

  return type metadata accessor for TRPCandidateForPlannerMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_2_49()
{

  return type metadata accessor for TRPCandidateRequestMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_2_50()
{

  return type metadata accessor for TypingStartedMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_2_52()
{

  return type metadata accessor for VoiceIdScoreCardMessage.Builder(0);
}

uint64_t SessionStartedMessage.Builder.sessionId.setter()
{
  v2 = OUTLINED_FUNCTION_8_0();
  v3 = type metadata accessor for SessionStartedMessage.Builder(v2);
  return sub_2230D2E1C(v0, v1 + *(v3 + 24), &qword_27D0575C0, &qword_2232035E0);
}

uint64_t sub_2230D2E1C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_18_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 40);
  v8 = OUTLINED_FUNCTION_2_1();
  v9(v8);
  return v4;
}

uint64_t sub_2230D2E68(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_18_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_18(v5);
  v7 = *(v6 + 40);
  v8 = OUTLINED_FUNCTION_2_1();
  v9(v8);
  return v4;
}

uint64_t SessionStartedMessage.Builder.sessionConfiguration.setter()
{
  v2 = OUTLINED_FUNCTION_8_0();
  v3 = type metadata accessor for SessionStartedMessage.Builder(v2);
  return sub_2230D2E1C(v0, v1 + *(v3 + 52), &qword_27D05A060, &unk_223218840);
}

_BYTE *storeEnumTagSinglePayload for MessageSource(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
        JUMPOUT(0x2230D2FE0);
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
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2230D3008(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_18_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_2_1();
  v9(v8);
  return v4;
}

uint64_t sub_2230D3054(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8) + 16);
  v6 = OUTLINED_FUNCTION_2_1();
  v7(v6);
  return a2;
}

uint64_t sub_2230D30B8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_18_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_18(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_2_1();
  v9(v8);
  return v4;
}

uint64_t sub_2230D3100(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_2_1();
  v9(v8);
  return a2;
}

uint64_t sub_2230D315C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231628B4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2230D319C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2231FFDA4();
    v9 = a1 + *(a3 + 52);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2230D3224@<X0>(uint64_t *a1@<X8>)
{
  result = ConversationSessionType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t ConversationSessionType.rawValue.getter()
{
  v1 = 0x6F69746174636964;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E61747369737361;
  }
}

uint64_t MessageBase.messageId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16SiriMessageTypes11MessageBase_messageId;
  v4 = sub_2231FFDA4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_2230D33C0()
{
  result = qword_280FCDCC0;
  if (!qword_280FCDCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCDCC0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SessionStartedMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2230D34E8);
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

uint64_t sub_2230D3510(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A078, &qword_223218858);
  OUTLINED_FUNCTION_9(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v10);
  v12 = v28 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2230D33C0();
  sub_2232007A4();
  v14 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_languageCode);
  v15 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_languageCode + 8);
  LOBYTE(v28[0]) = 0;
  OUTLINED_FUNCTION_8_2();
  sub_2232005F4();
  if (!v2)
  {
    v16 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_understandingOnDevice);
    OUTLINED_FUNCTION_11_14(1);
    v17 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_isSystemAssistantExperienceEnabled);
    OUTLINED_FUNCTION_11_14(2);
    v18 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_userId + 8);
    *&v28[0] = *(v3 + OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_userId);
    *(&v28[0] + 1) = v18;
    v30 = 3;
    v19 = sub_2230D37F0();

    OUTLINED_FUNCTION_8_2();
    sub_223200654();

    if (!v19)
    {
      v20 = *(v3 + OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_clientAuditToken + 32);
      v21 = *(v3 + OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_clientAuditToken + 16);
      v28[0] = *(v3 + OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_clientAuditToken);
      v28[1] = v21;
      v29 = v20;
      v30 = 4;
      type metadata accessor for audit_token_t();
      OUTLINED_FUNCTION_8_20();
      sub_2231A76A8(v22, v23);
      OUTLINED_FUNCTION_8_2();
      sub_2232005E4();
      v24 = *(v3 + OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_deferWarmup);
      OUTLINED_FUNCTION_11_14(5);
      LOBYTE(v28[0]) = 6;
      type metadata accessor for SessionConfiguration();
      OUTLINED_FUNCTION_7_26();
      sub_2231A76A8(v25, v26);
      OUTLINED_FUNCTION_8_2();
      sub_223200654();
      sub_2230D46B0(a1);
    }
  }

  return (*(v7 + 8))(v12, v5);
}

unint64_t sub_2230D37F0()
{
  result = qword_280FCA758;
  if (!qword_280FCA758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCA758);
  }

  return result;
}

uint64_t sub_2230D3844(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for ServerFallbackReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

unint64_t sub_2230D3930(char a1)
{
  result = 0x65676175676E616CLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0xD000000000000022;
      break;
    case 3:
      result = 0x644972657375;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x7261577265666564;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_11_0@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  result = *v2;
  v4 = v2[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_11_8()
{

  return sub_2232004C4();
}

uint64_t OUTLINED_FUNCTION_11_9()
{
  result = *(v0 - 144);
  v2 = *(*(v0 - 152) + 32);
  return result;
}

void OUTLINED_FUNCTION_11_13(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 2u);
}

uint64_t OUTLINED_FUNCTION_11_14@<X0>(char a1@<W8>)
{
  *(v1 - 128) = a1;

  return sub_223200604();
}

uint64_t sub_2230D3C1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionConfiguration();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_18_1(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_18_3()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_18_5@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_2230D30B8(v4 + a3, v3, a1, a2);
}

void OUTLINED_FUNCTION_18_6(uint64_t a1@<X8>)
{
  *(v3 - 152) = a1;
  v4 = *(v2 + 16);
  *(v3 - 168) = v1;
  *(v3 - 160) = v1 + 32;
}

uint64_t OUTLINED_FUNCTION_18_11@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_18_14()
{

  return sub_223200124();
}

uint64_t OUTLINED_FUNCTION_18_15()
{

  return type metadata accessor for TextBasedTRPCandidateMessage.Builder(0);
}

uint64_t sub_2230D3E14()
{
  v1 = OUTLINED_FUNCTION_8_0();
  v3 = v2(v1);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t OUTLINED_FUNCTION_17_0()
{

  return type metadata accessor for FlowOutputMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_17_1()
{

  return sub_223200474();
}

uint64_t OUTLINED_FUNCTION_48()
{

  return sub_223200394();
}

uint64_t OUTLINED_FUNCTION_17_3@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_2230D2E68(v3, v4 + a3, a1, a2);
}

void OUTLINED_FUNCTION_17_7()
{

  JUMPOUT(0x223DD5AA0);
}

uint64_t OUTLINED_FUNCTION_17_9()
{

  return sub_2231B278C();
}

uint64_t OUTLINED_FUNCTION_17_11()
{

  return sub_223200744();
}

void OUTLINED_FUNCTION_17_12(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_2230D4004(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a2;
  v9 = *(a1 + 16);

  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  v10 = *(type metadata accessor for SessionMessageBase.Builder(0) + 24);
  sub_2230D40E0(a1 + v10, &qword_27D0575C0, &qword_2232035E0);
  v11 = sub_2231FFDA4();
  (*(*(v11 - 8) + 16))(a1 + v10, a5, v11);

  return __swift_storeEnumTagSinglePayload(a1 + v10, 0, 1, v11);
}

uint64_t sub_2230D40E0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_4(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_2230D4138(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2230D4198(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_4_14(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_2230D423C()
{
  v1 = sub_2232000F4();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  OUTLINED_FUNCTION_2_2();
  v16.receiver = v0;
  v16.super_class = type metadata accessor for MessageBase();
  v3 = objc_msgSendSuper2(&v16, sel_debugDescription);
  sub_2232000C4();

  v4 = sub_2231FFC64();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_2231FFC54();
  sub_2230D462C(&qword_280FCB0D8, type metadata accessor for MessageBase);
  v7 = sub_2231FFC44();
  v9 = v8;

  sub_2232000E4();
  v10 = sub_2232000D4();
  v12 = v11;
  sub_2230D94DC(v7, v9);
  if (!v12)
  {
    v10 = 0xD00000000000001FLL;
    v12 = 0x8000000223223320;
  }

  OUTLINED_FUNCTION_7_12();
  MEMORY[0x223DD5AA0](v10, v12);

  v13 = sub_2230D8DA8(500);
  v14 = MEMORY[0x223DD5A70](v13);

  return v14;
}

uint64_t SessionStartedMessage.languageCode.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_languageCode);
  v2 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes21SessionStartedMessage_languageCode + 8);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t getEnumTagSinglePayload for DictationAsrResultMessage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t get_enum_tag_for_layout_string_16SiriMessageTypes16UserSessionStateO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

id sub_2230D4578(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_2232000A4();

  return v5;
}

uint64_t sub_2230D45E8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2231FFDA4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2230D462C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2230D4674(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2230D46B0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A040, &qword_2232186C8);
  v4 = OUTLINED_FUNCTION_9(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2230D8878();
  sub_2232007A4();
  sub_2231FFDA4();
  sub_2230D45E8(&qword_280FCE688);
  sub_223200654();
  if (!v1)
  {
    sub_2230D8F5C(a1);
  }

  return (*(v6 + 8))(v10, v3);
}

uint64_t SessionMessageBase.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16SiriMessageTypes18SessionMessageBase_sessionId;
  v4 = sub_2231FFDA4();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t OUTLINED_FUNCTION_3_4@<X0>(uint64_t *a1@<X8>)
{
  result = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = *(a1 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_5()
{

  return type metadata accessor for AsrResultCandidateMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_3_6()
{

  return type metadata accessor for ConversationMitigationMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_3_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15)
{

  return sub_2230D4C88(&a15, &a10);
}

uint64_t OUTLINED_FUNCTION_3_9()
{

  return sub_223200654();
}

uint64_t OUTLINED_FUNCTION_3_10()
{

  return type metadata accessor for EndCandidateRequestMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_3_11()
{

  return type metadata accessor for ExecuteNLOnServerMessageBase.Builder(0);
}

uint64_t OUTLINED_FUNCTION_3_13()
{

  return type metadata accessor for FlowOutputResponseMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_3_14()
{

  return type metadata accessor for FlowPluginInfoMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_3_17()
{

  return type metadata accessor for MitigationDecisionFinalizedMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_3_19()
{

  return type metadata accessor for MUXResultSelectedMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_3_25()
{

  return type metadata accessor for ResultSelectedMessageBase.Builder(0);
}

uint64_t OUTLINED_FUNCTION_3_26@<X0>(uint64_t *a1@<X8>)
{
  result = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_27()
{

  return sub_223200654();
}

uint64_t OUTLINED_FUNCTION_3_29()
{

  return sub_223200654();
}

uint64_t OUTLINED_FUNCTION_3_31()
{

  return sub_223200554();
}

void *OUTLINED_FUNCTION_3_32@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result[9] = a2;
  result[6] = 0xD000000000000015;
  result[7] = a3;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_33()
{

  return type metadata accessor for SpeechEndpointDetectedMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_3_34()
{

  return type metadata accessor for StartAttendingRequestedMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_3_35()
{

  return type metadata accessor for StartCandidateRequestMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_3_36()
{

  return type metadata accessor for StartChildCandidateRequestMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_3_37()
{

  return type metadata accessor for StartChildLocalRequestMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_3_38()
{

  return type metadata accessor for StartRequestMessageBase.Builder(0);
}

uint64_t OUTLINED_FUNCTION_3_40()
{

  return type metadata accessor for StartSpeechRequestMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_3_41()
{

  return type metadata accessor for StartTestSpeechRequestMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_3_42()
{

  return type metadata accessor for StartUnderstandingDictationSessionMessage.Builder(0);
}

uint64_t sub_2230D4C88(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2230D4CD8()
{
  v10 = 0;
  v11 = 0xE000000000000000;
  sub_223200374();
  v9.receiver = v0;
  v9.super_class = type metadata accessor for MessageBase();
  v1 = objc_msgSendSuper2(&v9, sel_description);
  v2 = sub_2232000C4();
  v4 = v3;

  v10 = v2;
  v11 = v4;
  MEMORY[0x223DD5AA0](0x617373656D3C202CLL, 0xEE00203A64496567);
  sub_2231FFDA4();
  OUTLINED_FUNCTION_1_15();
  sub_2230D462C(v5, v6);
  v7 = sub_2232006A4();
  MEMORY[0x223DD5AA0](v7);

  MEMORY[0x223DD5AA0](62, 0xE100000000000000);
  return v10;
}

uint64_t sub_2230D4E04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t UserID.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05AC50, &qword_22321F938);
  v5 = OUTLINED_FUNCTION_0_15(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v16 - v10;
  v12 = *v1;
  v13 = v1[1];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2230D4FD8();
  sub_2232007A4();
  sub_2232005F4();
  return (*(v7 + 8))(v11, v2);
}

unint64_t sub_2230D4FD8()
{
  result = qword_280FCA770;
  if (!qword_280FCA770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCA770);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_2()
{

  return sub_2232006B4();
}

double OUTLINED_FUNCTION_0_6@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_7()
{

  return sub_2232006B4();
}

uint64_t OUTLINED_FUNCTION_0_12@<X0>(char a1@<W8>)
{
  *(v1 - 112) = a1;

  return sub_223200604();
}

void sub_2230D520C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2230D525C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_2232002D4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2230D52B4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t audit_token_t.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17[0] = a4;
  v17[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057888, &qword_223204A68);
  v8 = OUTLINED_FUNCTION_9(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  v14 = v17 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2230D54E0();
  sub_2232007A4();
  v25 = 0;
  OUTLINED_FUNCTION_2_8();
  if (!v5)
  {
    v24 = 1;
    OUTLINED_FUNCTION_2_8();
    v23 = 2;
    OUTLINED_FUNCTION_2_8();
    v22 = 3;
    OUTLINED_FUNCTION_2_8();
    v21 = 4;
    OUTLINED_FUNCTION_2_8();
    v20 = 5;
    OUTLINED_FUNCTION_2_8();
    v19 = 6;
    OUTLINED_FUNCTION_2_8();
    v18 = 7;
    OUTLINED_FUNCTION_2_8();
  }

  return (*(v10 + 8))(v14, v7);
}

unint64_t sub_2230D54E0()
{
  result = qword_280FCA400;
  if (!qword_280FCA400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCA400);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_6()
{

  return sub_223200554();
}

uint64_t OUTLINED_FUNCTION_8_5()
{

  return sub_223200554();
}

uint64_t OUTLINED_FUNCTION_8_6()
{

  return type metadata accessor for IFGestureBasedCandidateMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_8_7()
{

  return sub_2232005F4();
}

uint64_t OUTLINED_FUNCTION_8_9()
{

  return type metadata accessor for MultiUserTextBasedRootTRPCandidateRequestMessage.Builder(0);
}

void OUTLINED_FUNCTION_8_12()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  *(v1 - 104) = v0[3];
  *(v1 - 96) = v4;
}

uint64_t OUTLINED_FUNCTION_8_13()
{

  return sub_223200794();
}

uint64_t OUTLINED_FUNCTION_8_16()
{

  return sub_223200474();
}

uint64_t OUTLINED_FUNCTION_8_17()
{

  return type metadata accessor for ResultCandidateRequestMessageBase.Builder(0);
}

uint64_t OUTLINED_FUNCTION_8_18()
{

  return sub_2232005F4();
}

void OUTLINED_FUNCTION_8_19(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  v4 = *v2;
  v3 = v2[1];
}

uint64_t OUTLINED_FUNCTION_8_22@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  v1 = a1 - 1;
  if (v1 < 0)
  {
    v1 = -1;
  }

  return (v1 + 1);
}

uint64_t OUTLINED_FUNCTION_8_23()
{
  v2 = *(v0 - 104);

  return sub_2232005B4();
}

uint64_t OUTLINED_FUNCTION_8_24()
{

  return type metadata accessor for TextBasedResultCandidateMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_8_25()
{

  return type metadata accessor for TextBasedTRPCandidateForPlannerMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_8_26()
{

  return type metadata accessor for TextBasedTRPCandidateMessage.Builder(0);
}

uint64_t SessionConfiguration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A020, &qword_2232184B0);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = v33 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2230D5AEC();
  sub_2232007A4();
  v14 = *v3;
  v15 = v3[1];
  LOBYTE(v33[0]) = 0;
  OUTLINED_FUNCTION_8_2();
  sub_2232005F4();
  if (!v2)
  {
    v16 = v3[2];
    v17 = v3[3];
    LOBYTE(v33[0]) = 1;
    OUTLINED_FUNCTION_8_2();
    sub_2232005F4();
    v18 = *(v3 + 32);
    OUTLINED_FUNCTION_0_12(2);
    v19 = v3[6];
    *&v33[0] = v3[5];
    *(&v33[0] + 1) = v19;
    v35 = 3;
    v20 = sub_2230D37F0();

    OUTLINED_FUNCTION_8_2();
    sub_223200654();
    if (v20)
    {
    }

    else
    {

      v21 = *(v3 + 88);
      v22 = *(v3 + 9);
      v33[0] = *(v3 + 7);
      v33[1] = v22;
      v34 = v21;
      v35 = 4;
      type metadata accessor for audit_token_t();
      OUTLINED_FUNCTION_2_37();
      sub_2231A5280(v23, v24);
      OUTLINED_FUNCTION_8_2();
      sub_2232005E4();
      v25 = *(v3 + 89);
      OUTLINED_FUNCTION_0_12(5);
      v26 = *(v3 + 90);
      OUTLINED_FUNCTION_0_12(6);
      v27 = *(v3 + 91);
      OUTLINED_FUNCTION_0_12(7);
      v28 = *(v3 + 92);
      OUTLINED_FUNCTION_0_12(8);
      v29 = *(type metadata accessor for SessionConfiguration() + 52);
      LOBYTE(v33[0]) = 9;
      sub_2231FFDA4();
      OUTLINED_FUNCTION_3_30();
      sub_2231A5280(v30, v31);
      OUTLINED_FUNCTION_8_2();
      sub_223200654();
    }
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_2230D5AEC()
{
  result = qword_280FCA810;
  if (!qword_280FCA810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCA810);
  }

  return result;
}

unint64_t sub_2230D5B48(char a1)
{
  result = 0x6E61747369737361;
  switch(a1)
  {
    case 1:
      result = 0x65676175676E616CLL;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0x644972657375;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0xD000000000000022;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    case 7:
      result = 0x616E454151507369;
      break;
    case 8:
      result = 0xD000000000000024;
      break;
    case 9:
      result = 0x496E6F6973736573;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SessionConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
        JUMPOUT(0x2230D5D90);
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FlowOutputMessage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t SessionMessageBase.Builder.sessionId.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SessionMessageBase.Builder(0) + 24);

  return sub_2230D4E04(a1, v3);
}

uint64_t sub_2230D5F18(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_18_10();
  result = type metadata accessor for PromptId(v8);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(v4, a2, a2, result);
  }

  else
  {
    *(v4 + *(a4 + 24)) = a2 + 3;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_15_2()
{

  return sub_2232003C4();
}

double OUTLINED_FUNCTION_15_5()
{
  *(v0 - 96) = 0;
  result = 0.0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_15_6()
{

  return sub_223200654();
}

uint64_t OUTLINED_FUNCTION_15_7()
{
  v4 = *(v2 - 96);
  v5 = *(v2 - 88);
  *(v2 - 96) = v1;
  *(v2 - 88) = v0;
}

uint64_t OUTLINED_FUNCTION_15_9()
{

  return sub_223200794();
}

uint64_t StopAttendingRequestedMessage.Builder.attendingStopReason.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for StopAttendingRequestedMessage.Builder(0);
  *(v1 + *(result + 28)) = v2;
  return result;
}

_BYTE *sub_2230D6154(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2230D6220);
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

uint64_t sub_2230D627C(void *a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A928, &qword_22321D528);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2230D63D8();
  sub_2232007A4();
  v13 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes29StopAttendingRequestedMessage_attendingStopReason);
  sub_2230D6A98();
  sub_223200654();
  if (!v2)
  {
    sub_2230D46B0(a1);
  }

  return (*(v8 + 8))(v3, v5);
}

unint64_t sub_2230D63D8()
{
  result = qword_280FCC688;
  if (!qword_280FCC688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCC688);
  }

  return result;
}

uint64_t sub_2230D642C(uint64_t a1)
{
  v2 = type metadata accessor for RequestMessageBase.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *StopAttendingRequestedMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_1();
  v7 = sub_2231FFDA4();
  v8 = OUTLINED_FUNCTION_9(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for StopAttendingRequestedMessage.Builder(0);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v19 = 15;
  *(v19 + 1) = 0;
  *(v19 + 2) = 0;
  v20 = *(v16 + 32);
  __swift_storeEnumTagSinglePayload(&v19[v20], 1, 1, v7);
  v21 = *(v16 + 36);
  v19[v21] = 6;
  a1(v19);
  v22 = *v19;
  if (v22 == 15)
  {
    goto LABEL_7;
  }

  v23 = *(v19 + 2);
  if (!v23)
  {
    goto LABEL_7;
  }

  v40 = *(v19 + 1);
  sub_2230D1480(&v19[v20], v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v7) == 1)
  {
    sub_2230D69D4(v2);
LABEL_7:
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v26 = sub_223200014();
    __swift_project_value_buffer(v26, qword_280FCE830);
    v27 = sub_223200004();
    v28 = sub_223200254();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v42 = v30;
      *v29 = 136446210;
      v31 = sub_2230F7898();
      v33 = sub_2231A5D38(v31, v32, &v42);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_2230CE000, v27, v28, "Could not build %{public}s: Builder has missing required fields", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x223DD6780](v30, -1, -1);
      MEMORY[0x223DD6780](v29, -1, -1);
    }

    sub_2230D6A3C(v19);
    type metadata accessor for StopAttendingRequestedMessage(0);
    v34 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
    v35 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v24 = (*(v10 + 32))(v14, v2, v7);
  v25 = v19[v21];
  if (v25 == 6)
  {
    (*(v10 + 8))(v14, v7);
    goto LABEL_7;
  }

  *(v3 + OBJC_IVAR____TtC16SiriMessageTypes29StopAttendingRequestedMessage_attendingStopReason) = v25;
  MEMORY[0x28223BE20](v24);
  *(&v39 - 32) = v22;
  *(&v39 - 3) = v40;
  *(&v39 - 2) = v23;
  *(&v39 - 1) = v14;
  v36 = SessionMessageBase.init(build:)(sub_2230D69C4);
  v38 = v36;
  sub_2230D6A3C(v19);
  if (v36)
  {
  }

  (*(v10 + 8))(v14, v7);
  return v36;
}

uint64_t StopAttendingRequestedMessage.Builder.sessionId.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for StopAttendingRequestedMessage.Builder(0) + 24);

  return sub_2230D4E04(a1, v3);
}

uint64_t sub_2230D68F8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a2;
  v9 = *(a1 + 16);

  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  v10 = *(type metadata accessor for SessionMessageBase.Builder(0) + 24);
  sub_2230D69D4(a1 + v10);
  v11 = sub_2231FFDA4();
  (*(*(v11 - 8) + 16))(a1 + v10, a5, v11);

  return __swift_storeEnumTagSinglePayload(a1 + v10, 0, 1, v11);
}

uint64_t sub_2230D69D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2230D6A3C(uint64_t a1)
{
  v2 = type metadata accessor for StopAttendingRequestedMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2230D6A98()
{
  result = qword_280FCA868;
  if (!qword_280FCA868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCA868);
  }

  return result;
}

uint64_t AttendingStopReason.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0577D0, &qword_2232041C0);
  v4 = OUTLINED_FUNCTION_9(v3);
  v73 = v5;
  v74 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_3();
  v72 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0577D8, &qword_2232041C8);
  v11 = OUTLINED_FUNCTION_9(v10);
  v70 = v12;
  v71 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4_3();
  v69 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0577E0, &qword_2232041D0);
  v18 = OUTLINED_FUNCTION_9(v17);
  v67 = v19;
  v68 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_4_3();
  v66 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0577E8, &qword_2232041D8);
  v25 = OUTLINED_FUNCTION_9(v24);
  v64 = v26;
  v65 = v25;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_4_3();
  v63 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0577F0, &qword_2232041E0);
  v32 = OUTLINED_FUNCTION_9(v31);
  v61 = v33;
  v62 = v32;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v36);
  v38 = &v59 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0577F8, &qword_2232041E8);
  v40 = OUTLINED_FUNCTION_9(v39);
  v59 = v41;
  v60 = v40;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v44);
  v46 = &v59 - v45;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057800, &qword_2232041F0);
  OUTLINED_FUNCTION_9(v75);
  v48 = v47;
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v51);
  v53 = &v59 - v52;
  v54 = *v1;
  v55 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2230D75BC();
  sub_2232007A4();
  switch(v54)
  {
    case 1:
      v77 = 1;
      sub_2230FE720();
      v54 = v75;
      sub_2232005B4();
      (*(v61 + 8))(v38, v62);
      return (*(v48 + 8))(v53, v54);
    case 2:
      v78 = 2;
      sub_2230FE6CC();
      v46 = v63;
      OUTLINED_FUNCTION_1_3();
      v57 = v64;
      v56 = v65;
      goto LABEL_8;
    case 3:
      v79 = 3;
      sub_2230D7008();
      v46 = v66;
      OUTLINED_FUNCTION_1_3();
      v57 = v67;
      v56 = v68;
      goto LABEL_8;
    case 4:
      v80 = 4;
      sub_2230FE678();
      v46 = v69;
      OUTLINED_FUNCTION_1_3();
      v57 = v70;
      v56 = v71;
      goto LABEL_8;
    case 5:
      v81 = 5;
      sub_2230FE624();
      v46 = v72;
      OUTLINED_FUNCTION_1_3();
      v57 = v73;
      v56 = v74;
      goto LABEL_8;
    default:
      v76 = 0;
      sub_2230FE774();
      OUTLINED_FUNCTION_1_3();
      v57 = v59;
      v56 = v60;
LABEL_8:
      (*(v57 + 8))(v46, v56);
      return (*(v48 + 8))(v53, v54);
  }
}

unint64_t sub_2230D7008()
{
  result = qword_280FCA880;
  if (!qword_280FCA880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCA880);
  }

  return result;
}

unint64_t sub_2230D7064(char a1)
{
  result = 0x746553746F6ELL;
  switch(a1)
  {
    case 1:
      result = 0x74696E4972657375;
      break;
    case 2:
      result = 0x74756F656D6974;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x7245686365657073;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GenAIPartner(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t OUTLINED_FUNCTION_5_11()
{

  return type metadata accessor for FinalTRPStateMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_5_12()
{

  return sub_223200504();
}

uint64_t OUTLINED_FUNCTION_5_14()
{

  return type metadata accessor for IntermediateTRPStateMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_5_15@<X0>(char a1@<W8>)
{
  *(v1 - 65) = a1;
  result = v1 - 65;
  v3 = *(v1 - 120);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_21()
{
  v3 = *(v1 - 136);

  return sub_2230D94DC(v0, v3);
}

uint64_t OUTLINED_FUNCTION_5_22()
{

  return sub_223200494();
}

uint64_t OUTLINED_FUNCTION_5_25()
{

  return sub_223200474();
}

uint64_t OUTLINED_FUNCTION_5_26()
{

  return type metadata accessor for SiriXToolInvokedMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_5_27()
{

  return type metadata accessor for StartCorrectedSpeechRequestMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_5_28()
{

  return type metadata accessor for StartIFRequestMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_5_30()
{

  return type metadata accessor for TRPCandidateRequestMessageBase.Builder(0);
}

uint64_t OUTLINED_FUNCTION_5_31@<X0>(uint64_t *a1@<X8>)
{
  result = *a1;
  v2 = a1[1];
  v3 = a1[2];
  return result;
}

uint64_t OUTLINED_FUNCTION_5_32()
{

  return type metadata accessor for UserIdAwareResultCandidateMessageBase.Builder(0);
}

uint64_t sub_2230D7548(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 65))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40) >> 1;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t get_enum_tag_for_layout_string_16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0O(uint64_t a1)
{
  if (((*(a1 + 40) >> 60) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return (*(a1 + 40) >> 60) & 7;
  }
}

unint64_t sub_2230D75BC()
{
  result = qword_280FCA8F8;
  if (!qword_280FCA8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCA8F8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StopAttendingRequestedMessage.CodingKeys(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x2230D76ACLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2230D7754()
{
  result = qword_280FCE6A0;
  if (!qword_280FCE6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE6A0);
  }

  return result;
}

uint64_t sub_2230D77A8(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059940, &unk_223214790);
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v16 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2230DCF70();
  sub_2232007A4();
  v13 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestMessageBase_requestId);
  v14 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestMessageBase_requestId + 8);
  sub_2232005F4();
  if (!v2)
  {
    sub_2230D46B0(a1);
  }

  return (*(v7 + 8))(v11, v4);
}

_BYTE *sub_2230D78F8(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x2230D7994);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t NLRoutingDecisionMessage.SiriXQueryRewrite.Builder.rewrittenUtterance.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_2230D79F0(uint64_t result, uint64_t a2)
{
  if (a2 < 4)
  {
    *(result + 40) = *(result + 40) & 0x8000000000000001 | (a2 << 60);
  }

  else
  {
    *result = (a2 - 4);
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 40) = 0x4000000000000000;
    *(result + 64) = 0;
  }

  return result;
}

double NLRoutingDecisionMessage.SiriXQueryRewrite.init(build:)()
{
  v1 = OUTLINED_FUNCTION_74();
  v18 = 1;
  v2(&v15, v1);
  v3 = v16;
  if (v16)
  {
    v4 = v18;
    v5 = v17;
    *v0 = v15;
    *(v0 + 8) = v3;
    *(v0 + 16) = v5;
    *(v0 + 32) = v4;
  }

  else
  {

    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v6 = sub_223200014();
    __swift_project_value_buffer(v6, qword_280FCE830);
    v7 = sub_223200004();
    v8 = sub_223200254();
    if (OUTLINED_FUNCTION_61(v8))
    {
      *OUTLINED_FUNCTION_72() = 0;
      OUTLINED_FUNCTION_38_0();
      _os_log_impl(v9, v10, v11, v12, v13, 2u);
      OUTLINED_FUNCTION_51_0();
    }

    *(v0 + 32) = 0;
    *&v5 = 0;
    *v0 = 0u;
    *(v0 + 16) = 0u;
  }

  return *&v5;
}

uint64_t OUTLINED_FUNCTION_26()
{

  return swift_allocError();
}

void *sub_2230D7B94(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_2230D7BB4(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_2230D7C34(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_2230D7C48()
{
  result = qword_280FCAC98;
  if (!qword_280FCAC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCAC98);
  }

  return result;
}

void OUTLINED_FUNCTION_45_1()
{

  JUMPOUT(0x223DD5AA0);
}

uint64_t sub_2230D7CEC(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  return sub_2231FFED4();
}

uint64_t OUTLINED_FUNCTION_83()
{

  return sub_2231FFEC4();
}

_BYTE *sub_2230D7D50(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x2230D7DECLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_16_1()
{

  return type metadata accessor for RequestContextData.Builder(0);
}

void AjaxRewrite.init(build:)(void (*a1)(uint64_t *)@<X0>, void *a2@<X8>)
{
  v12 = 0;
  v13 = 0;
  a1(&v12);
  v3 = v13;
  if (v13)
  {
    *a2 = v12;
    a2[1] = v3;
  }

  else
  {
    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v4 = sub_223200014();
    __swift_project_value_buffer(v4, qword_280FCE830);
    v5 = sub_223200004();
    v6 = sub_223200254();
    if (OUTLINED_FUNCTION_61(v6))
    {
      v7 = OUTLINED_FUNCTION_72();
      *v7 = 0;
      OUTLINED_FUNCTION_62_0();
      _os_log_impl(v8, v9, v10, v11, v7, 2u);
      OUTLINED_FUNCTION_14();
    }

    *a2 = 0;
    a2[1] = 0;
  }
}

uint64_t AjaxRewrite.Builder.rewrittenUtterance.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AjaxMetadata.Builder.queryType.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_2230D7BB4(*(v1 + 8), *(v1 + 16));
  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  return result;
}

uint64_t sub_2230D8030(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
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

_BYTE *sub_2230D8084(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_47(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_45_0(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x2230D8140);
      case 4:
        result = OUTLINED_FUNCTION_46_1(result, v6);
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
          result = OUTLINED_FUNCTION_68(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16SiriMessageTypes9QueryTypeOSg(uint64_t a1)
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

uint64_t get_enum_tag_for_layout_string_16SiriMessageTypes12AjaxMetadataV0D5QueryOSg(uint64_t a1)
{
  if ((*(a1 + 16) >> 1) > 0x80000000)
  {
    return -(*(a1 + 16) >> 1);
  }

  else
  {
    return 0;
  }
}

__n128 AjaxMetadata.AjaxQuery.ImplicitQuery.init(_:)@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_83();

  *a1 = v3;
  swift_getKeyPath();
  OUTLINED_FUNCTION_83();

  *(a1 + 16) = v3.n128_u8[0];
  swift_getKeyPath();
  OUTLINED_FUNCTION_83();

  result = v3;
  *(a1 + 24) = v3;
  return result;
}

unint64_t sub_2230D827C()
{
  result = qword_280FCACA0;
  if (!qword_280FCACA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCACA0);
  }

  return result;
}

uint64_t sub_2230D82E4(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_2230D871C(a1);
}

uint64_t AjaxMetadata.AjaxQuery.ExplicitQuery.init(_:)@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_83();

  *a1 = v3;
  swift_getKeyPath();
  OUTLINED_FUNCTION_83();

  *(a1 + 16) = v3;
  swift_getKeyPath();
  OUTLINED_FUNCTION_83();

  *(a1 + 24) = v3;
  swift_getKeyPath();
  OUTLINED_FUNCTION_83();

  *(a1 + 40) = v3;
  return result;
}

uint64_t sub_2230D83C0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

void AjaxMetadata.init(build:)(void (*a1)(char *)@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v34[0] = 4;
  v35 = xmmword_223211C20;
  v36 = 0;
  v37 = 0;
  v39 = 0;
  v40 = 0;
  v38 = 0x1FFFFFFFELL;
  v41 = 0;
  a1(v34);
  v6 = v34[0];
  if (v34[0] == 4)
  {
    OUTLINED_FUNCTION_43_1();
    sub_2230D8168(v33);
    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v7 = sub_223200014();
    __swift_project_value_buffer(v7, qword_280FCE830);
    v8 = sub_223200004();
    v9 = sub_223200254();
    if (!OUTLINED_FUNCTION_61(v9))
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v15 = v38;
  if (v38 >> 1 == 0xFFFFFFFF)
  {
    v17 = *(&v35 + 1);
    v16 = v35;
    OUTLINED_FUNCTION_43_1();
    sub_2230D7C34(v16, v17);
    v18 = sub_2230D8168(v33);
    if (v17)
    {
      if (v17 == 1)
      {
        if (qword_280FCA778 != -1)
        {
          OUTLINED_FUNCTION_1_0();
        }

        v19 = sub_223200014();
        __swift_project_value_buffer(v19, qword_280FCE830);
        v8 = sub_223200004();
        v20 = sub_223200254();
        if (!OUTLINED_FUNCTION_61(v20))
        {
          goto LABEL_6;
        }

LABEL_5:
        v10 = OUTLINED_FUNCTION_72();
        *v10 = 0;
        OUTLINED_FUNCTION_62_0();
        _os_log_impl(v11, v12, v13, v14, v10, 2u);
        OUTLINED_FUNCTION_14();
LABEL_6:

        *a3 = 0u;
        *(a3 + 16) = 0u;
        *(a3 + 32) = 0;
        *(a3 + 40) = 0x1FFFFFFFELL;
        *(a3 + 48) = 0;
        *(a3 + 56) = 0;
        *(a3 + 64) = 0;
        return;
      }

      MEMORY[0x28223BE20](v18);
      a2 = v29;
      v29[2] = v16;
      v29[3] = v17;
      v3 = sub_2230D827C();

      OUTLINED_FUNCTION_67();
      sub_2230D7BB4(v16, v17);
      OUTLINED_FUNCTION_41_0();
      v21 = v30;
      v22 = v31;
      v23 = v32;
      v15 = *(v28 - 256) | 0x8000000000000000;
    }

    else
    {
      sub_2230D7C48();
      OUTLINED_FUNCTION_2_27();
      OUTLINED_FUNCTION_49_1();
      v23 = 0;
      OUTLINED_FUNCTION_41_0();
      v15 = *(v27 - 256);
      v21 = v30;
      v22 = v31;
    }
  }

  else
  {
    a2 = v36;
    v3 = v37;
    v21 = v39;
    v22 = v40;
    v23 = v41;
    v17 = *(&v35 + 1);
    v16 = v35;
    OUTLINED_FUNCTION_43_1();
    OUTLINED_FUNCTION_20();
    sub_223179434(v24, v25, v26);
    sub_2230D7C34(v16, v17);
    sub_2230D8168(v33);
    if (v17 == 1)
    {
      if ((v15 & 0x8000000000000000) != 0)
      {
        if (v3)
        {
          v16 = a2;
        }

        else
        {
          v16 = 0;
        }

        if (v3)
        {
          v17 = v3;
        }

        else
        {
          v17 = 0xE000000000000000;
        }
      }

      else
      {
        v16 = 0;
        v17 = 0;
      }
    }
  }

  *a3 = v6;
  *(a3 + 8) = v16;
  *(a3 + 16) = v17;
  *(a3 + 24) = a2;
  *(a3 + 32) = v3;
  *(a3 + 40) = v15;
  *(a3 + 48) = v21;
  *(a3 + 56) = v22;
  *(a3 + 64) = v23;
}

uint64_t sub_2230D871C(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();

  return sub_2231FFED4();
}

_BYTE *storeEnumTagSinglePayload for GenAIPartner(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2230D8850);
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

unint64_t sub_2230D8878()
{
  result = qword_280FCB568;
  if (!qword_280FCB568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCB568);
  }

  return result;
}

unint64_t sub_2230D88D0()
{
  result = qword_280FCB0F0[0];
  if (!qword_280FCB0F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280FCB0F0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SessionMessageBase.CodingKeys(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x2230D89C8);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnnounceNotificationHandlingStateUpdatedMessage.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

uint64_t sub_2230D8A5C(char a1)
{
  result = 0x496567617373656DLL;
  switch(a1)
  {
    case 1:
      result = 0x6E4F646574736F70;
      break;
    case 2:
      result = 0x656372756F73;
      break;
    case 3:
      result = 0x6E61747369737361;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2230D8B04()
{
  result = qword_280FCB0B8;
  if (!qword_280FCB0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCB0B8);
  }

  return result;
}

unint64_t sub_2230D8B58@<X0>(unint64_t *a1@<X8>)
{
  result = MessageSource.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_2230D8BD0()
{
  result = qword_280FCB0B0;
  if (!qword_280FCB0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCB0B0);
  }

  return result;
}

unint64_t MessageSource.rawValue.getter()
{
  result = 7500641;
  switch(*v0)
  {
    case 1:
      result = 7892078;
      break;
    case 2:
      result = 0x6F69747563657865;
      break;
    case 3:
      result = 0x6E61747369737361;
      break;
    case 4:
      result = 0x73656D6D6F70;
      break;
    case 5:
      result = 6447986;
      break;
    case 6:
      result = 0x6C66726574747562;
      break;
    case 7:
      result = 7894381;
      break;
    case 8:
      result = 26997;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 0xA:
      result = 0x776F6C466669;
      break;
    case 0xB:
      result = 0x726574756F526C6ELL;
      break;
    case 0xC:
      result = 7171180;
      break;
    case 0xD:
      result = 0x65727574736567;
      break;
    case 0xE:
      result = 6582899;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2230D8DA8(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_223200134();
    v1 = sub_223200164();

    return v1;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MessageBase.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2230D8F34);
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

uint64_t sub_2230D8F5C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0586F8, &qword_22320B9E8);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v20[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2230D88D0();
  sub_2232007A4();
  v20[15] = 0;
  sub_2231FFDA4();
  OUTLINED_FUNCTION_1_15();
  sub_2230D462C(v14, v15);
  OUTLINED_FUNCTION_6_10();
  sub_223200654();
  if (!v2)
  {
    v16 = *(v3 + OBJC_IVAR____TtC16SiriMessageTypes11MessageBase_postedOnTheBus);
    v20[14] = 1;
    OUTLINED_FUNCTION_6_10();
    sub_223200604();
    v20[13] = *(v3 + OBJC_IVAR____TtC16SiriMessageTypes11MessageBase_source);
    v20[12] = 2;
    sub_2230D8B04();
    OUTLINED_FUNCTION_6_10();
    sub_223200654();
    v17 = *(v3 + OBJC_IVAR____TtC16SiriMessageTypes11MessageBase_assistantId);
    v18 = *(v3 + OBJC_IVAR____TtC16SiriMessageTypes11MessageBase_assistantId + 8);
    v20[11] = 3;
    OUTLINED_FUNCTION_6_10();
    sub_2232005F4();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t OUTLINED_FUNCTION_7_1()
{

  return type metadata accessor for ActiveUserSessionDetectedMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_7_4()
{

  return type metadata accessor for DirectActionResultCandidateMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_7_5()
{

  return type metadata accessor for ExecutionFinalizedMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_7_7()
{

  return type metadata accessor for FallbackToIFRequestedMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_7_9@<X0>(uint64_t a1@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v11 = *(a1 + 64);

  return sub_223129F10(v2, v3, v4, v5, v6, v7);
}

void OUTLINED_FUNCTION_7_12()
{
  *(v2 - 104) = v1;
  *(v2 - 96) = v0;

  JUMPOUT(0x223DD5AA0);
}

uint64_t OUTLINED_FUNCTION_7_13()
{

  return sub_223200474();
}

uint64_t OUTLINED_FUNCTION_7_14()
{

  return type metadata accessor for MUXFlowOutputCandidateMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_7_15()
{

  return type metadata accessor for MUXNLTRPCandidateMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_7_21()
{

  return type metadata accessor for ResumeDictationRequestMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_7_22()
{

  return type metadata accessor for RewrittenUtteranceCandidateMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_7_23()
{

  return type metadata accessor for RootStoppedListeningForTextContinuationMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_7_24()
{

  return type metadata accessor for RootTextBasedTRPCandidateMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_7_29()
{

  return type metadata accessor for SpeechStopDetectedMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_7_31()
{

  return type metadata accessor for StoppedListeningForTextContinuationForPlannerMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_7_32()
{

  return type metadata accessor for StoppedListeningForTextContinuationMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_7_34()
{

  return type metadata accessor for TRPDetectedMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_7_35()
{

  return type metadata accessor for TRPFinalizedMessage.Builder(0);
}

uint64_t *OUTLINED_FUNCTION_7_36()
{
  result = *(v0 - 88);
  v2 = *result;
  return result;
}

uint64_t sub_2230D94DC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2230D954C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_2230D9594@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2230D95C0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2230D95E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 33))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t static InputOrigin.from(aceInputOrigin:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v7 = *MEMORY[0x277D483D0];
  sub_2232000C4();
  OUTLINED_FUNCTION_1_11();
  v9 = v9 && v8 == a2;
  if (v9)
  {
    v11 = 0;
LABEL_13:

    goto LABEL_14;
  }

  OUTLINED_FUNCTION_0_7();
  result = OUTLINED_FUNCTION_2_14();
  v11 = 0;
  if (v3)
  {
    goto LABEL_14;
  }

  v12 = *MEMORY[0x277D483D8];
  sub_2232000C4();
  OUTLINED_FUNCTION_1_11();
  if (v9 && v13 == a2)
  {
    v11 = 1;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_0_7();
  result = OUTLINED_FUNCTION_2_14();
  if (v3)
  {
    v11 = 1;
    goto LABEL_14;
  }

  v15 = *MEMORY[0x277D483E0];
  sub_2232000C4();
  OUTLINED_FUNCTION_1_11();
  if (v9 && v16 == a2)
  {
    v11 = 2;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_0_7();
  result = OUTLINED_FUNCTION_2_14();
  if (v3)
  {
    v11 = 2;
    goto LABEL_14;
  }

  v18 = *MEMORY[0x277D483E8];
  sub_2232000C4();
  OUTLINED_FUNCTION_1_11();
  if (v9 && v19 == a2)
  {
    v11 = 3;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_0_7();
  result = OUTLINED_FUNCTION_2_14();
  if (v3)
  {
    v11 = 3;
    goto LABEL_14;
  }

  v21 = *MEMORY[0x277D483F0];
  sub_2232000C4();
  OUTLINED_FUNCTION_1_11();
  if (v9 && v22 == a2)
  {
    v11 = 4;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_0_7();
  result = OUTLINED_FUNCTION_2_14();
  if (v3)
  {
    v11 = 4;
    goto LABEL_14;
  }

  v24 = *MEMORY[0x277D483F8];
  sub_2232000C4();
  OUTLINED_FUNCTION_1_11();
  if (v9 && v25 == a2)
  {
    v11 = 5;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_0_7();
  result = OUTLINED_FUNCTION_2_14();
  if (v3)
  {
    v11 = 5;
    goto LABEL_14;
  }

  v27 = *MEMORY[0x277D48400];
  sub_2232000C4();
  OUTLINED_FUNCTION_1_11();
  if (v9 && v28 == a2)
  {
    v11 = 6;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_0_7();
  result = OUTLINED_FUNCTION_2_14();
  if (v3)
  {
    v11 = 6;
    goto LABEL_14;
  }

  v30 = *MEMORY[0x277D48408];
  sub_2232000C4();
  OUTLINED_FUNCTION_1_11();
  if (v9 && v31 == a2)
  {
    v11 = 7;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_0_7();
  result = OUTLINED_FUNCTION_2_14();
  if (v3)
  {
    v11 = 7;
    goto LABEL_14;
  }

  v33 = *MEMORY[0x277D48418];
  sub_2232000C4();
  OUTLINED_FUNCTION_1_11();
  if (v9 && v34 == a2)
  {
    v11 = 8;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_0_7();
  result = OUTLINED_FUNCTION_2_14();
  if (v3)
  {
    v11 = 8;
    goto LABEL_14;
  }

  v36 = *MEMORY[0x277D48420];
  sub_2232000C4();
  OUTLINED_FUNCTION_1_11();
  if (v9 && v37 == a2)
  {
    v11 = 9;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_0_7();
  result = OUTLINED_FUNCTION_2_14();
  if (v3)
  {
    v11 = 9;
    goto LABEL_14;
  }

  v39 = *MEMORY[0x277D48428];
  sub_2232000C4();
  OUTLINED_FUNCTION_1_11();
  if (v9 && v40 == a2)
  {
    v11 = 10;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_0_7();
  result = OUTLINED_FUNCTION_2_14();
  if (v3)
  {
    v11 = 10;
    goto LABEL_14;
  }

  v42 = *MEMORY[0x277D48430];
  sub_2232000C4();
  OUTLINED_FUNCTION_1_11();
  if (v9 && v43 == a2)
  {
    v11 = 11;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_0_7();
  result = OUTLINED_FUNCTION_2_14();
  if (v3)
  {
    v11 = 11;
    goto LABEL_14;
  }

  v45 = *MEMORY[0x277D48438];
  sub_2232000C4();
  OUTLINED_FUNCTION_1_11();
  if (v9 && v46 == a2)
  {
    v11 = 12;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_0_7();
  result = OUTLINED_FUNCTION_2_14();
  if (v3)
  {
    v11 = 12;
    goto LABEL_14;
  }

  v48 = *MEMORY[0x277D48440];
  sub_2232000C4();
  OUTLINED_FUNCTION_1_11();
  if (v9 && v49 == a2)
  {
    v11 = 13;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_0_7();
  result = OUTLINED_FUNCTION_2_14();
  if (v3)
  {
    v11 = 13;
    goto LABEL_14;
  }

  v51 = *MEMORY[0x277D48448];
  sub_2232000C4();
  OUTLINED_FUNCTION_1_11();
  if (v9 && v52 == a2)
  {
    v11 = 14;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_0_7();
  result = OUTLINED_FUNCTION_2_14();
  if (v3)
  {
    v11 = 14;
    goto LABEL_14;
  }

  v54 = *MEMORY[0x277D48450];
  sub_2232000C4();
  OUTLINED_FUNCTION_1_11();
  if (v9 && v55 == a2)
  {
    v11 = 15;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_0_7();
  result = OUTLINED_FUNCTION_2_14();
  if (v3)
  {
    v11 = 15;
    goto LABEL_14;
  }

  v57 = *MEMORY[0x277D48458];
  sub_2232000C4();
  OUTLINED_FUNCTION_1_11();
  if (v9 && v58 == a2)
  {
    v11 = 16;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_0_7();
  result = OUTLINED_FUNCTION_2_14();
  if (v3)
  {
    v11 = 16;
    goto LABEL_14;
  }

  v60 = *MEMORY[0x277D48410];
  sub_2232000C4();
  OUTLINED_FUNCTION_1_11();
  if (v9 && v61 == a2)
  {
    v11 = 17;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_0_7();
  result = OUTLINED_FUNCTION_2_14();
  if (v3)
  {
    v11 = 17;
    goto LABEL_14;
  }

  v63 = *MEMORY[0x277D48460];
  v11 = 18;
  if (sub_2232000C4() == a1 && v64 == a2)
  {
    goto LABEL_13;
  }

  v66 = OUTLINED_FUNCTION_0_7();

  if (v66)
  {
    v11 = 18;
  }

  else
  {
    v11 = 19;
  }

LABEL_14:
  *a3 = v11;
  return result;
}

uint64_t getEnumTagSinglePayload for InputOrigin(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEE)
  {
    if (a2 + 18 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 18) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 19;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v5 = v6 - 19;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_2230D9C28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void UserSessionState.activeUserAccessLevel.getter(char *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = *(v1 + 32);
  if (v3)
  {
    if (v3 == 1)
    {
      OUTLINED_FUNCTION_12_18();
      sub_2230D9D28(v8, v9);
      OUTLINED_FUNCTION_4_0();
      v10 = 0;
    }

    else
    {
      v10 = v7 & 1;
    }
  }

  else
  {
    v11 = OUTLINED_FUNCTION_9_32();
    sub_2230D954C(v11, v12);
    v13 = OUTLINED_FUNCTION_9_32();
    sub_2230D9D28(v13, v14);
    OUTLINED_FUNCTION_4_0();
    v10 = 2;
  }

  *a1 = v10;
}

uint64_t sub_2230D9D28(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

void *StartRootLocalRequestMessage.init(build:)(uint64_t (*a1)(char *))
{
  v2 = v1;
  swift_getObjectType();
  started = type metadata accessor for StartRootLocalRequestMessage.Builder(0);
  v5 = (started - 8);
  v6 = *(*(started - 8) + 64);
  MEMORY[0x28223BE20](started);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
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
  v14 = a1(v8);
  v15 = v8[v12];
  if (v15 == 19)
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
      v31 = v20;
      *v19 = 136446210;
      v21 = sub_2230F7898();
      v23 = sub_2231A5D38(v21, v22, &v31);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_2230CE000, v17, v18, "Could not build %{public}s: Builder has missing required fields", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x223DD6780](v20, -1, -1);
      MEMORY[0x223DD6780](v19, -1, -1);
    }

    sub_2230DAF60(v8);
    type metadata accessor for StartRootLocalRequestMessage(0);
    v24 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
    v25 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes28StartRootLocalRequestMessage_inputOrigin) = v15;
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes28StartRootLocalRequestMessage_optionalRequestContextData) = *&v8[v13];
    MEMORY[0x28223BE20](v14);
    *(&v30 - 2) = v8;
    v28 = v27;
    v26 = RequestMessageBase.init(build:)(sub_2230DAF58);
    sub_2230DAF60(v8);
  }

  return v26;
}

uint64_t StartRootLocalRequestMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_2_44() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t StartRootLocalRequestMessage.Builder.requestId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for StartRootLocalRequestMessage.Builder(0) + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for InputOrigin(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xED)
  {
    v6 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
        JUMPOUT(0x2230DA1B0);
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
          *result = a2 + 18;
        }

        break;
    }
  }

  return result;
}

uint64_t StartRootLocalRequestMessage.Builder.inputOrigin.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for StartRootLocalRequestMessage.Builder(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for DirectActionResultCandidateMessage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

id RequestContextData.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059858, &qword_223214370);
  OUTLINED_FUNCTION_9_13(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v6);
  v8 = &v44 - v7;
  v9 = sub_2230DA67C(a1, &selRef_audioSource);
  v10 = &v1[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_audioSource];
  *v10 = v9;
  v10[1] = v11;
  v12 = sub_2230DA67C(a1, &selRef_audioDestination);
  v13 = &v1[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_audioDestination];
  *v13 = v12;
  v13[1] = v14;
  v15 = sub_2230DA67C(a1, &selRef_responseMode);
  v16 = &v1[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_responseMode];
  *v16 = v15;
  v16[1] = v17;
  v18 = [a1 isEyesFree];
  v1[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isEyesFree] = v18;
  v19 = [a1 isVoiceTriggerEnabled];
  v1[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isVoiceTriggerEnabled] = v19;
  v20 = [a1 isTextToSpeechEnabled];
  v1[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isTextToSpeechEnabled] = v20;
  v21 = [a1 isTriggerlessFollowup];
  v1[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isTriggerlessFollowup] = v21;
  v22 = [a1 bargeInModes];
  v23 = sub_2232001D4();

  *&v1[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_bargeInModes] = v23;
  v24 = [a1 approximatePreviousTTSInterval];
  if (v24)
  {
    v25 = v24;
    sub_2231FFCB4();

    v26 = sub_2231FFCC4();
    v27 = 0;
  }

  else
  {
    v26 = sub_2231FFCC4();
    v27 = 1;
  }

  __swift_storeEnumTagSinglePayload(v8, v27, 1, v26);
  sub_2230DA700(v8, &v1[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_approximatePreviousTTSInterval]);
  v28 = [a1 deviceRestrictions];
  v29 = sub_2232001D4();

  *&v1[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_deviceRestrictions] = v29;
  *&v1[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_voiceTriggerEventInfo] = sub_2230DA778(a1);
  v30 = [a1 voiceAudioSessionId];
  *&v1[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_voiceAudioSessionId] = v30;
  v31 = [a1 isSystemApertureEnabled];
  v1[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isSystemApertureEnabled] = v31;
  v32 = [a1 isLiveActivitiesSupported];
  v1[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isLiveActivitiesSupported] = v32;
  v33 = [a1 isInAmbient];
  v1[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isInAmbient] = v33;
  *&v1[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_conjunctionInfo] = 0;
  v34 = [a1 isDeviceShowingLockScreen];
  v1[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isDeviceShowingLockScreen] = v34;
  v35 = [a1 isDeviceLocked];
  v1[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isDeviceLocked] = v35;
  v36 = [a1 userProfileMetadata];
  *&v1[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_userProfileMetadata] = v36;
  v37 = [a1 activationTime];
  v38 = &v1[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_activationTime];
  *v38 = v37;
  v38[8] = 0;
  v39 = [a1 suggestionRequestType];
  v40 = &v1[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_suggestionRequestType];
  *v40 = v39;
  v40[8] = 0;
  v41 = type metadata accessor for RequestContextData(0);
  v44.receiver = v1;
  v44.super_class = v41;
  v42 = objc_msgSendSuper2(&v44, sel_init);

  return v42;
}

uint64_t sub_2230DA67C(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_2232000C4();
  }

  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_2230DA700(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059858, &qword_223214370);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2230DA778(void *a1)
{
  v1 = [a1 voiceTriggerEventInfo];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_223200044();

  return v3;
}

void StartRootLocalRequestMessage.Builder.requestContextData.setter()
{
  v2 = *(OUTLINED_FUNCTION_2_44() + 36);

  *(v1 + v2) = v0;
}

void *RequestMessageBase.init(build:)(void (*a1)(unsigned __int8 *))
{
  v67 = v1;
  ObjectType = swift_getObjectType();
  v3 = sub_2231FFC84();
  v4 = OUTLINED_FUNCTION_9(v3);
  v63 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_2();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v62 - v13;
  v15 = sub_2231FFDA4();
  v16 = OUTLINED_FUNCTION_9(v15);
  v65 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2_2();
  v64 = v21 - v20;
  v22 = type metadata accessor for RequestMessageBase.Builder(0);
  v23 = v22 - 8;
  v24 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_2_2();
  v27 = (v26 - v25);
  *v27 = 15;
  *(v27 + 1) = 0;
  *(v27 + 2) = 0;
  v28 = *(v23 + 32);
  __swift_storeEnumTagSinglePayload(v26 - v25 + v28, 1, 1, v15);
  v29 = &v27[*(v23 + 36)];
  *v29 = 0;
  v29[1] = 0;
  a1(v27);
  v30 = *v27;
  if (v30 == 15)
  {
    goto LABEL_13;
  }

  v31 = *(v27 + 2);
  if (!v31)
  {
    goto LABEL_13;
  }

  v32 = *(v27 + 1);
  sub_2230D1480(&v27[v28], v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_2230D69D4(v14);
LABEL_13:
    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v45 = sub_223200014();
    __swift_project_value_buffer(v45, qword_280FCE830);
    v46 = sub_223200004();
    v47 = sub_223200254();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v68[0] = v49;
      *v48 = 136446210;
      v50 = sub_2230F7898();
      v52 = sub_2231A5D38(v50, v51, v68);

      *(v48 + 4) = v52;
      _os_log_impl(&dword_2230CE000, v46, v47, "Could not build %{public}s: Builder has missing required fields", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v49);
      MEMORY[0x223DD6780](v49, -1, -1);
      MEMORY[0x223DD6780](v48, -1, -1);
    }

    sub_2230D642C(v27);
LABEL_18:
    type metadata accessor for RequestMessageBase(0);
    v53 = *((*MEMORY[0x277D85000] & *v67) + 0x30);
    v54 = *((*MEMORY[0x277D85000] & *v67) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v62 = v32;
  v34 = v64;
  v33 = v65;
  (*(v65 + 32))(v64, v14, v15);
  v35 = v29[1];
  if (!v35)
  {
    (*(v33 + 8))(v34, v15);
    goto LABEL_13;
  }

  v68[0] = *v29;
  v68[1] = v35;
  sub_2231FFC74();
  sub_2230D1D30();
  v36 = sub_2232002E4();
  v38 = v37;
  v39 = (*(v63 + 8))(v10, v3);
  v40 = HIBYTE(v38) & 0xF;
  if ((v38 & 0x2000000000000000) == 0)
  {
    v40 = v36 & 0xFFFFFFFFFFFFLL;
  }

  if (!v40)
  {

    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v56 = sub_223200014();
    __swift_project_value_buffer(v56, qword_280FCE830);
    v57 = sub_223200004();
    v58 = sub_223200254();
    v59 = os_log_type_enabled(v57, v58);
    v60 = v65;
    if (v59)
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_2230CE000, v57, v58, "requestId is empty, can't create message", v61, 2u);
      MEMORY[0x223DD6780](v61, -1, -1);
    }

    sub_2230D642C(v27);
    (*(v60 + 8))(v64, v15);
    goto LABEL_18;
  }

  v41 = (v67 + OBJC_IVAR____TtC16SiriMessageTypes18RequestMessageBase_requestId);
  *v41 = v36;
  v41[1] = v38;
  MEMORY[0x28223BE20](v39);
  *(&v62 - 32) = v30;
  *(&v62 - 3) = v62;
  *(&v62 - 2) = v31;
  v42 = v64;
  *(&v62 - 1) = v64;
  v43 = SessionMessageBase.init(build:)(sub_2230D69C4);
  v44 = v43;
  sub_2230D642C(v27);
  if (v43)
  {
  }

  (*(v65 + 8))(v42, v15);
  return v43;
}

uint64_t sub_2230DAE18(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  v6 = *(a1 + 16);

  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  started = type metadata accessor for StartRootLocalRequestMessage.Builder(0);
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

uint64_t sub_2230DAEC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_2230DAF60(uint64_t a1)
{
  started = type metadata accessor for StartRootLocalRequestMessage.Builder(0);
  (*(*(started - 8) + 8))(a1, started);
  return a1;
}

uint64_t sub_2230DB0BC()
{
  v7 = 0;
  v8 = 0xE000000000000000;
  sub_223200374();
  v6.receiver = v0;
  v6.super_class = type metadata accessor for RequestMessageBase(0);
  v1 = objc_msgSendSuper2(&v6, sel_description);
  v2 = sub_2232000C4();
  v4 = v3;

  v7 = v2;
  v8 = v4;
  MEMORY[0x223DD5AA0](0x65757165723C202CLL, 0xEE00203A64497473);
  MEMORY[0x223DD5AA0](*&v0[OBJC_IVAR____TtC16SiriMessageTypes18RequestMessageBase_requestId], *&v0[OBJC_IVAR____TtC16SiriMessageTypes18RequestMessageBase_requestId + 8]);
  MEMORY[0x223DD5AA0](62, 0xE100000000000000);
  return v7;
}

uint64_t sub_2230DB1A4(void *a1)
{
  v27[2] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A798, &unk_22321C5B8);
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v24 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2230DB430();
  sub_2232007A4();
  LOBYTE(v27[0]) = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes28StartRootLocalRequestMessage_inputOrigin);
  v26 = 0;
  sub_2230DB484();
  OUTLINED_FUNCTION_4_38();
  if (!v2)
  {
    v13 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes28StartRootLocalRequestMessage_optionalRequestContextData);
    if (!v13)
    {
LABEL_6:
      sub_2230D77A8(a1);
      goto LABEL_7;
    }

    v14 = objc_opt_self();
    v27[0] = 0;
    v15 = v13;
    v16 = [v14 archivedDataWithRootObject:v15 requiringSecureCoding:1 error:v27];
    v17 = v27[0];
    if (v16)
    {
      v25 = v15;
      v18 = sub_2231FFD24();
      v20 = v19;

      v27[0] = v18;
      v27[1] = v20;
      v26 = 1;
      sub_2230D7754();
      OUTLINED_FUNCTION_4_38();

      sub_2230D94DC(v18, v20);
      goto LABEL_6;
    }

    v21 = v17;
    sub_2231FFD04();

    swift_willThrow();
  }

LABEL_7:
  result = (*(v7 + 8))(v11, v4);
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2230DB430()
{
  result = qword_27D05A790;
  if (!qword_27D05A790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A790);
  }

  return result;
}

unint64_t sub_2230DB484()
{
  result = qword_280FCACD0;
  if (!qword_280FCACD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCACD0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StartRootLocalRequestMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2230DB5A4);
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

void sub_2230DB5E8()
{
  OUTLINED_FUNCTION_42();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059858, &qword_223214370);
  OUTLINED_FUNCTION_9_13(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v7);
  v9 = v77 - v8;
  v10 = sub_2231FFCC4();
  v11 = OUTLINED_FUNCTION_9(v10);
  v77[0] = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_2();
  v17 = (v16 - v15);
  v18 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isEyesFree);
  v19 = sub_2232000A4();
  OUTLINED_FUNCTION_9_21();

  v20 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isVoiceTriggerEnabled);
  v21 = OUTLINED_FUNCTION_4_27();
  OUTLINED_FUNCTION_9_21();

  v22 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isTextToSpeechEnabled);
  v23 = OUTLINED_FUNCTION_4_27();
  OUTLINED_FUNCTION_9_21();

  v24 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isTriggerlessFollowup);
  v25 = OUTLINED_FUNCTION_4_27();
  OUTLINED_FUNCTION_9_21();

  v26 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_bargeInModes);
  v27 = sub_2232001C4();
  v28 = sub_2232000A4();
  v29 = OUTLINED_FUNCTION_8_15();
  [v29 v30];

  v31 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_deviceRestrictions);
  v32 = sub_2232001C4();
  v33 = sub_2232000A4();
  v34 = OUTLINED_FUNCTION_8_15();
  [v34 v35];

  v36 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_voiceAudioSessionId);
  v37 = sub_223200774();
  v77[1] = 0xD000000000000013;
  v38 = sub_2232000A4();
  OUTLINED_FUNCTION_2_28(v38);

  v39 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isDeviceShowingLockScreen);
  v40 = sub_2232000A4();
  OUTLINED_FUNCTION_31_2(v40);

  v41 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isDeviceLocked);
  v42 = sub_2232000A4();
  OUTLINED_FUNCTION_31_2(v42);

  if (*(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_audioSource + 8))
  {
    v43 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_audioSource);
    v44 = sub_2232000A4();
    v45 = sub_2232000A4();
    OUTLINED_FUNCTION_2_28(v45);
  }

  if (*(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_audioDestination + 8))
  {
    v46 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_audioDestination);
    v47 = sub_2232000A4();
    OUTLINED_FUNCTION_12_11();
    v48 = sub_2232000A4();
    OUTLINED_FUNCTION_2_28(v48);
  }

  if (*(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_responseMode + 8))
  {
    v49 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_responseMode);
    v50 = sub_2232000A4();
    v51 = sub_2232000A4();
    OUTLINED_FUNCTION_2_28(v51);
  }

  sub_2230D3100(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_approximatePreviousTTSInterval, v9, &qword_27D059858, &qword_223214370);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_2230D40E0(v9, &qword_27D059858, &qword_223214370);
  }

  else
  {
    v52 = v77[0];
    (*(v77[0] + 32))(v17, v9, v10);
    v53 = sub_2231FFCA4();
    OUTLINED_FUNCTION_12_11();
    v54 = sub_2232000A4();
    v55 = OUTLINED_FUNCTION_8_15();
    [v55 v56];

    (*(v52 + 8))(v17, v10);
  }

  if (*(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_voiceTriggerEventInfo))
  {
    v17 = sub_223200034();
    v57 = OUTLINED_FUNCTION_4_27();
    v58 = OUTLINED_FUNCTION_8_15();
    [v58 v59];
  }

  if (*(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isSystemApertureEnabled) != 2)
  {
    OUTLINED_FUNCTION_12_11();
    v60 = sub_2232000A4();
    OUTLINED_FUNCTION_13_9(v60);
  }

  if (*(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isLiveActivitiesSupported) != 2)
  {
    OUTLINED_FUNCTION_12_11();
    v61 = sub_2232000A4();
    OUTLINED_FUNCTION_13_9(v61);
  }

  if (*(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isInAmbient) != 2)
  {
    v62 = sub_2232000A4();
    OUTLINED_FUNCTION_13_9(v62);
  }

  v63 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_conjunctionInfo);
  if (v63)
  {
    v64 = v63;
    v65 = sub_2232000A4();
    v66 = OUTLINED_FUNCTION_8_15();
    [v66 v67];
  }

  v68 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_userProfileMetadata);
  if (v68)
  {
    v69 = v68;
    v70 = sub_2232000A4();
    v71 = OUTLINED_FUNCTION_8_15();
    [v71 v72];
  }

  if ((*(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_activationTime + 8) & 1) == 0)
  {
    v73 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_activationTime);
    v74 = sub_2232000A4();
    [v3 encodeInt64:v73 forKey:v74];
  }

  if ((*(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_suggestionRequestType + 8) & 1) == 0)
  {
    v75 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_suggestionRequestType);
    v76 = OUTLINED_FUNCTION_4_27();
    [v3 encodeInteger:v75 forKey:v76];
  }

  OUTLINED_FUNCTION_40();
}

void OUTLINED_FUNCTION_14()
{

  JUMPOUT(0x223DD6780);
}

uint64_t OUTLINED_FUNCTION_14_1()
{
  v2 = *(v0 - 152);

  return sub_223200474();
}

uint64_t OUTLINED_FUNCTION_14_3()
{
  v2 = *(v0 + 8);
  result = *(v1 - 248);
  v4 = *(v1 - 160);
  return result;
}

uint64_t OUTLINED_FUNCTION_14_5@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 144) = a1;

  return sub_2231FFFA4();
}

uint64_t OUTLINED_FUNCTION_14_7()
{

  return sub_223200474();
}

uint64_t OUTLINED_FUNCTION_14_8()
{
  *(v3 - 128) = v0;
  v4 = *(v2 + 8);
  return v1;
}

uint64_t OUTLINED_FUNCTION_14_10()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_14_14()
{

  JUMPOUT(0x223DD5AA0);
}

unint64_t sub_2230DBEFC()
{
  result = qword_280FCACC8;
  if (!qword_280FCACC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCACC8);
  }

  return result;
}

uint64_t sub_2230DBF50@<X0>(uint64_t *a1@<X8>)
{
  result = InputOrigin.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t InputOrigin.rawValue.getter()
{
  result = 0x6547746E65696C63;
  switch(*v0)
  {
    case 1:
      return 0xD000000000000012;
    case 2:
      return 0xD000000000000011;
    case 3:
      return 0xD000000000000012;
    case 5:
      return result;
    case 6:
      v2 = 0x676F6C616964;
      return v2 & 0xFFFFFFFFFFFFLL | 0x7542000000000000;
    case 7:
      return 0x74747542656D6F68;
    case 8:
      v3 = 0x6E6F69746F6DLL;
      goto LABEL_21;
    case 9:
      return 0x716552726F697270;
    case 0xA:
      return 0x536F546573696172;
    case 0xB:
      return 0x704165746F6D6572;
    case 0xC:
      v2 = 0x65746F6D6572;
      return v2 & 0xFFFFFFFFFFFFLL | 0x7542000000000000;
    case 0xD:
      v3 = 0x726576726573;
LABEL_21:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6547000000000000;
      break;
    case 0xE:
      result = 0x6665526F54706174;
      break;
    case 0xF:
      result = 0xD000000000000013;
      break;
    case 0x10:
      result = 0x6972546563696F76;
      break;
    case 0x11:
      result = 0x6C6F46737567616DLL;
      break;
    case 0x12:
      result = 0x54676E6974697277;
      break;
    default:
      result = 0xD000000000000015;
      break;
  }

  return result;
}

uint64_t sub_2230DC224(char a1)
{
  if (a1)
  {
    return 0xD00000000000001ALL;
  }

  else
  {
    return 0x69724F7475706E69;
  }
}

uint64_t OUTLINED_FUNCTION_72()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_27_2()
{
  v2 = *(v1 - 160);
  *(v1 - 128) = *(v1 - 168);
  *(v1 - 120) = v2;
  *(v1 - 112) = v0 & 1;
  v3 = *(v1 - 144);
  *(v1 - 104) = *(v1 - 152);
  *(v1 - 96) = v3;
}

void OUTLINED_FUNCTION_27_3(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  LOBYTE(v3) = *(v3 + 8);
  *(v2 - 128) = v4;
  *(v2 - 120) = v3;
}

uint64_t OUTLINED_FUNCTION_27_4()
{

  return sub_223200124();
}

_BYTE *storeEnumTagSinglePayload for RequestType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
        JUMPOUT(0x2230DC4A0);
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
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2230DC4C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AudioRecordType(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2230DC5F0);
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

void RequestContextData.init(build:)()
{
  OUTLINED_FUNCTION_42();
  v2 = v1;
  v57 = v0;
  swift_getObjectType();
  v3 = type metadata accessor for RequestContextData.Builder(0);
  v4 = (v3 - 8);
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_2();
  v8 = v7 - v6;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  *v8 = 0u;
  *(v8 + 48) = 33686018;
  *(v8 + 56) = 0;
  v9 = v4[14];
  v10 = sub_2231FFCC4();
  v52 = v9;
  __swift_storeEnumTagSinglePayload(v8 + v9, 1, 1, v10);
  v11 = v4[15];
  *(v8 + v11) = 0;
  v48 = v4[16];
  *(v8 + v48) = 0;
  v12 = v8 + v4[17];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = v4[18];
  *(v8 + v13) = 2;
  v49 = v4[19];
  *(v8 + v49) = 2;
  v50 = v4[20];
  *(v8 + v50) = 2;
  v51 = v4[21];
  *(v8 + v51) = 0;
  v53 = v4[22];
  *(v8 + v53) = 2;
  v14 = v4[23];
  *(v8 + v14) = 2;
  v54 = v14;
  v55 = v4[24];
  *(v8 + v55) = 0;
  v15 = v8 + v4[25];
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = v8 + v4[26];
  *v16 = 0;
  *(v16 + 8) = 1;
  v2(v8);
  v17 = *(v8 + 48);
  if (v17 == 2 || (v18 = *(v8 + 49), v18 == 2) || (v19 = *(v8 + 50), v19 == 2) || (v20 = *(v8 + 51), v20 == 2) || (v21 = *(v8 + 56)) == 0 || (v22 = *(v8 + v11)) == 0 || (*(v12 + 4) & 1) != 0)
  {
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v23 = sub_223200014();
    __swift_project_value_buffer(v23, qword_280FCE830);
    v24 = sub_223200004();
    v25 = sub_223200254();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v59 = v27;
      *v26 = 136446210;
      v28 = sub_2230F7898();
      v30 = sub_2231A5D38(v28, v29, &v59);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_2230CE000, v24, v25, "Could not build %{public}s: Builder has missing required fields", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x223DD6780](v27, -1, -1);
      MEMORY[0x223DD6780](v26, -1, -1);
    }

    sub_2230DD08C(v8);
    type metadata accessor for RequestContextData(0);
    v31 = *((*MEMORY[0x277D85000] & *v57) + 0x30);
    v32 = *((*MEMORY[0x277D85000] & *v57) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v56 = *(v8 + 8);
    v33 = (v57 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_audioSource);
    *v33 = *v8;
    v33[1] = v56;
    v47 = *(v8 + 24);
    v34 = (v57 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_audioDestination);
    *v34 = *(v8 + 16);
    v34[1] = v47;
    v46 = *(v8 + 40);
    v35 = (v57 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_responseMode);
    *v35 = *(v8 + 32);
    v35[1] = v46;
    *(v57 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isEyesFree) = v17 & 1;
    *(v57 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isVoiceTriggerEnabled) = v18 & 1;
    *(v57 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isTextToSpeechEnabled) = v19 & 1;
    v36 = *v12;
    *(v57 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isTriggerlessFollowup) = v20 & 1;
    *(v57 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_bargeInModes) = v21;
    sub_2230D3100(v8 + v52, v57 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_approximatePreviousTTSInterval, &qword_27D059858, &qword_223214370);
    *(v57 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_deviceRestrictions) = v22;
    *(v57 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_voiceTriggerEventInfo) = *(v8 + v48);
    *(v57 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_voiceAudioSessionId) = v36;
    *(v57 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isSystemApertureEnabled) = *(v8 + v13);
    *(v57 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isLiveActivitiesSupported) = *(v8 + v49);
    *(v57 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isInAmbient) = *(v8 + v50);
    v37 = *(v8 + v51);
    *(v57 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_conjunctionInfo) = v37;
    *(v57 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isDeviceShowingLockScreen) = *(v8 + v53) & 1;
    *(v57 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isDeviceLocked) = *(v8 + v54) & 1;
    v38 = *(v8 + v55);
    *(v57 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_userProfileMetadata) = v38;
    v39 = *(v15 + 8);
    v40 = v57 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_activationTime;
    *v40 = *v15;
    v40[8] = v39;
    v41 = *v16;
    v42 = *(v16 + 8);
    v43 = v38;

    v44 = v37;
    sub_2230DD08C(v8);
    v45 = v57 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_suggestionRequestType;
    *v45 = v41;
    v45[8] = v42;
    v58.receiver = v57;
    v58.super_class = type metadata accessor for RequestContextData(0);
    objc_msgSendSuper2(&v58, sel_init);
  }

  OUTLINED_FUNCTION_40();
}

uint64_t OUTLINED_FUNCTION_40_0()
{
  v3 = *(v1 - 128);

  return sub_22310A610(v3, v0);
}

void sub_2230DCBD0(uint64_t a1@<X8>)
{
  sub_2230DCE48(a1);
  v4 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_audioSource);
  v3 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_audioSource + 8);
  v5 = *(a1 + 8);

  *a1 = v4;
  *(a1 + 8) = v3;
  v7 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_audioDestination);
  v6 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_audioDestination + 8);
  v8 = *(a1 + 24);

  *(a1 + 16) = v7;
  *(a1 + 24) = v6;
  v10 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_responseMode);
  v9 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_responseMode + 8);
  v11 = *(a1 + 40);

  *(a1 + 32) = v10;
  *(a1 + 40) = v9;
  *(a1 + 48) = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isEyesFree);
  v12 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isTextToSpeechEnabled);
  *(a1 + 49) = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isVoiceTriggerEnabled);
  *(a1 + 50) = v12;
  *(a1 + 51) = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isTriggerlessFollowup);
  v13 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_bargeInModes);
  v14 = *(a1 + 56);

  *(a1 + 56) = v13;
  v15 = OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_approximatePreviousTTSInterval;
  v16 = type metadata accessor for RequestContextData.Builder(0);
  sub_2230DCFC4(v1 + v15, a1 + v16[12]);
  v17 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_deviceRestrictions);
  v18 = v16[13];
  v19 = *(a1 + v18);

  *(a1 + v18) = v17;
  v20 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_voiceTriggerEventInfo);
  v21 = v16[14];
  v22 = *(a1 + v21);

  *(a1 + v21) = v20;
  v23 = a1 + v16[15];
  *v23 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_voiceAudioSessionId);
  v24 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isSystemApertureEnabled);
  *(v23 + 4) = 0;
  *(a1 + v16[16]) = v24;
  *(a1 + v16[18]) = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isInAmbient);
  v25 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_conjunctionInfo);
  v26 = v16[19];
  v27 = *(a1 + v26);
  v28 = v25;

  *(a1 + v26) = v25;
  *(a1 + v16[20]) = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isDeviceShowingLockScreen);
  *(a1 + v16[21]) = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isDeviceLocked);
  v29 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_userProfileMetadata);
  v30 = v16[22];
  v31 = *(a1 + v30);
  v32 = v29;

  *(a1 + v30) = v29;
  v33 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_activationTime + 8);
  v34 = a1 + v16[23];
  *v34 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_activationTime);
  *(v34 + 8) = v33;
  v35 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_suggestionRequestType + 8);
  v36 = a1 + v16[24];
  *v36 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_suggestionRequestType);
  *(v36 + 8) = v35;
}

uint64_t sub_2230DCE48@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 33686018;
  *(a1 + 56) = 0;
  v2 = type metadata accessor for RequestContextData.Builder(0);
  v3 = v2[12];
  v4 = sub_2231FFCC4();
  result = __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v4);
  *(a1 + v2[13]) = 0;
  *(a1 + v2[14]) = 0;
  v6 = a1 + v2[15];
  *v6 = 0;
  *(v6 + 4) = 1;
  *(a1 + v2[16]) = 2;
  *(a1 + v2[17]) = 2;
  *(a1 + v2[18]) = 2;
  *(a1 + v2[19]) = 0;
  *(a1 + v2[20]) = 2;
  *(a1 + v2[21]) = 2;
  *(a1 + v2[22]) = 0;
  v7 = a1 + v2[23];
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = a1 + v2[24];
  *v8 = 0;
  *(v8 + 8) = 1;
  return result;
}

unint64_t sub_2230DCF70()
{
  result = qword_280FCB628;
  if (!qword_280FCB628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCB628);
  }

  return result;
}

uint64_t sub_2230DCFC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059858, &qword_223214370);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void RequestContextData.Builder.conjunctionInfo.setter()
{
  v2 = *(OUTLINED_FUNCTION_16_1() + 76);

  *(v1 + v2) = v0;
}

uint64_t sub_2230DD08C(uint64_t a1)
{
  v2 = type metadata accessor for RequestContextData.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t storeEnumTagSinglePayload for RequestSummary.ExecutionSource(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65410 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65410 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x7E)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x7D)
  {
    v6 = ((a2 - 126) >> 16) + 1;
    *result = a2 - 126;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x2230DD1C0);
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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
          *result = (((-a2 >> 2) & 0x1F) - 32 * a2) << 9;
        }

        break;
    }
  }

  return result;
}

void *StartChildLocalRequestMessage.init(build:)(void (*a1)(char *))
{
  v2 = v1;
  swift_getObjectType();
  started = type metadata accessor for StartChildLocalRequestMessage.Builder(0);
  v5 = (started - 8);
  v6 = *(*(started - 8) + 64);
  MEMORY[0x28223BE20](started);
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
  v8[v5[10]] = 19;
  *&v8[v5[11]] = 0;
  v12 = &v8[v5[12]];
  *v12 = 0;
  *(v12 + 1) = 0;
  a1(v8);
  v13 = *(v12 + 1);
  if (v13)
  {
    v14 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes29StartChildLocalRequestMessage_rootRequestId);
    *v14 = *v12;
    v14[1] = v13;
    MEMORY[0x28223BE20](v13);
    *(&v27 - 2) = v8;

    v15 = StartRequestMessageBase.init(build:)(sub_2230DDD30);
    sub_2230DDE9C(v8);
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

    sub_2230DDE9C(v8);
    type metadata accessor for StartChildLocalRequestMessage(0);
    v24 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
    v25 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v15;
}

uint64_t StartChildLocalRequestMessage.Builder.rootRequestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for StartChildLocalRequestMessage.Builder(0) + 40));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t StartChildLocalRequestMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for StartChildLocalRequestMessage.Builder(0) + 28));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t StartChildLocalRequestMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_3_37() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t StartChildLocalRequestMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

_BYTE *sub_2230DD610(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2230DD6D8);
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
          result = OUTLINED_FUNCTION_68(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_63@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 168);

  return sub_223200654();
}

uint64_t OUTLINED_FUNCTION_70()
{

  return sub_223200744();
}

void *StartRequestMessageBase.init(build:)(void (*a1)(unsigned __int8 *))
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
  started = type metadata accessor for StartRequestMessageBase.Builder(0);
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
    goto LABEL_8;
  }

  v23 = *(v17 + 2);
  if (!v23)
  {
    goto LABEL_8;
  }

  v24 = *(v17 + 1);
  sub_2230D1480(&v17[v18], v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_2230D69D4(v6);
LABEL_8:
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
      v54 = v33;
      *v32 = 136446210;
      v34 = sub_2230F7898();
      v36 = sub_2231A5D38(v34, v35, &v54);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_2230CE000, v30, v31, "Could not build %{public}s: Builder has missing required fields", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x223DD6780](v33, -1, -1);
      MEMORY[0x223DD6780](v32, -1, -1);
    }

    sub_2230DDE40(v17);
    type metadata accessor for StartRequestMessageBase(0);
    v37 = *((*MEMORY[0x277D85000] & *v53) + 0x30);
    v38 = *((*MEMORY[0x277D85000] & *v53) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v49 = v24;
  v26 = v50;
  v25 = v51;
  v27 = (*(v51 + 32))(v50, v6, v7);
  if (!*(v19 + 1) || (v28 = v17[v20], v28 == 19))
  {
    (*(v25 + 8))(v26, v7);
    goto LABEL_8;
  }

  v41 = *v19;
  v42 = v26;
  v43 = v53;
  *(v53 + OBJC_IVAR____TtC16SiriMessageTypes23StartRequestMessageBase_inputOrigin) = v28;
  *(v43 + OBJC_IVAR____TtC16SiriMessageTypes23StartRequestMessageBase_optionalRequestContextData) = *&v17[v21];
  MEMORY[0x28223BE20](v27);
  *(&v49 - 48) = v22;
  *(&v49 - 5) = v49;
  *(&v49 - 4) = v23;
  *(&v49 - 3) = v42;
  *(&v49 - 2) = v44;
  *(&v49 - 1) = v45;
  v47 = v46;
  v39 = RequestMessageBase.init(build:)(sub_2230DDE2C);
  v48 = v39;
  sub_2230DDE40(v17);
  if (v39)
  {
  }

  (*(v51 + 8))(v42, v7);
  return v39;
}

void StartChildLocalRequestMessage.Builder.requestContextData.setter()
{
  v2 = *(OUTLINED_FUNCTION_3_37() + 36);

  *(v1 + v2) = v0;
}

uint64_t StartChildLocalRequestMessage.Builder.inputOrigin.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for StartChildLocalRequestMessage.Builder(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

void sub_2230DDC4C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  v6 = *(a1 + 16);

  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  started = type metadata accessor for StartChildLocalRequestMessage.Builder(0);
  v8 = started[6];
  v9 = type metadata accessor for StartRequestMessageBase.Builder(0);
  sub_2230DAEC8(a2 + v8, a1 + v9[6]);
  v10 = (a2 + started[7]);
  v12 = *v10;
  v11 = v10[1];
  v13 = (a1 + v9[7]);
  v14 = v13[1];

  *v13 = v12;
  v13[1] = v11;
  *(a1 + v9[8]) = *(a2 + started[8]);
  v15 = *(a2 + started[9]);
  v16 = v9[9];
  v17 = *(a1 + v16);
  v18 = v15;

  *(a1 + v16) = v15;
}

uint64_t sub_2230DDD38(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = a2;
  v13 = *(a1 + 16);

  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  v14 = type metadata accessor for RequestMessageBase.Builder(0);
  v15 = *(v14 + 24);
  sub_2230D69D4(a1 + v15);
  v16 = sub_2231FFDA4();
  (*(*(v16 - 8) + 16))(a1 + v15, a5, v16);
  __swift_storeEnumTagSinglePayload(a1 + v15, 0, 1, v16);
  v17 = (a1 + *(v14 + 28));
  v18 = v17[1];

  *v17 = a6;
  v17[1] = a7;
  return result;
}

uint64_t sub_2230DDE40(uint64_t a1)
{
  started = type metadata accessor for StartRequestMessageBase.Builder(0);
  (*(*(started - 8) + 8))(a1, started);
  return a1;
}

uint64_t sub_2230DDE9C(uint64_t a1)
{
  started = type metadata accessor for StartChildLocalRequestMessage.Builder(0);
  (*(*(started - 8) + 8))(a1, started);
  return a1;
}

void *RunSiriKitExecutorMessage.init(build:)(void (*a1)(char *))
{
  v2 = v1;
  swift_getObjectType();
  v4 = type metadata accessor for RunSiriKitExecutorMessage.Builder(0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v8 = 0u;
  *(v8 + 1) = 0u;
  v8[32] = 15;
  *(v8 + 5) = 0;
  *(v8 + 6) = 0;
  v9 = *(v5 + 44);
  v10 = sub_2231FFDA4();
  __swift_storeEnumTagSinglePayload(&v8[v9], 1, 1, v10);
  v11 = &v8[*(v5 + 48)];
  *v11 = 0;
  *(v11 + 1) = 0;
  a1(v8);
  v12 = *(v8 + 2);
  if (v12 && (v13 = *(v8 + 3)) != 0)
  {
    v14 = *(v8 + 1);
    v15 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes25RunSiriKitExecutorMessage_invocationId);
    *v15 = *v8;
    v15[1] = v14;
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes25RunSiriKitExecutorMessage_command) = v12;
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes25RunSiriKitExecutorMessage_commandExecutionInfo) = v13;
    MEMORY[0x28223BE20](v14);
    *(&v33 - 2) = v8;

    v16 = v13;
    v17 = v12;
    v18 = v16;
    v19 = v17;
    v20 = RequestMessageBase.init(build:)(sub_2230DE348);
    v21 = v20;

    if (v20)
    {
    }

    sub_2230DE40C(v8);
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

    sub_2230DE40C(v8);
    type metadata accessor for RunSiriKitExecutorMessage(0);
    v30 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
    v31 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v20;
}

uint64_t RunSiriKitExecutorMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for RunSiriKitExecutorMessage.Builder(0) + 40));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t RunSiriKitExecutorMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 48);

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t RunSiriKitExecutorMessage.Builder.sessionId.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for RunSiriKitExecutorMessage.Builder(0) + 36);

  return sub_2230D4E04(a1, v3);
}

uint64_t sub_2230DE350(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 32);
  v5 = *(a2 + 40);
  v4 = *(a2 + 48);
  v6 = *(a1 + 16);

  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  v7 = type metadata accessor for RunSiriKitExecutorMessage.Builder(0);
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

uint64_t sub_2230DE40C(uint64_t a1)
{
  v2 = type metadata accessor for RunSiriKitExecutorMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for RequestSummary.ExecutionSource(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 0x7E)
  {
    if (a2 + 65410 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65410 < 0xFF0000)
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
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65411;
    return v5 + 1;
  }

LABEL_17:
  v5 = ((*a1 >> 7) & 0x7C | (*a1 >> 14)) ^ 0x7F;
  if (v5 >= 0x7D)
  {
    v5 = -1;
  }

  return v5 + 1;
}

uint64_t get_enum_tag_for_layout_string_16SiriMessageTypes14RequestSummaryV9UserInputO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSg(uint64_t a1)
{
  if ((*(a1 + 40) >> 1) > 0x80000000)
  {
    return -(*(a1 + 40) >> 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2230DE534()
{
  v1 = *v0;
  v2 = v0[1];
  sub_223200744();
  sub_223200124();
  return sub_223200764();
}

uint64_t sub_2230DE5FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3();
  v6 = v5;
  if (v4 == a3() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_2_10();
  }

  return v9 & 1;
}

unint64_t RequestType.rawValue.getter()
{
  result = 0x686365657073;
  switch(*v0)
  {
    case 1:
      result = 1954047348;
      break;
    case 2:
      result = 0x6574636572726F63;
      break;
    case 3:
      result = 0x6341746365726964;
      break;
    case 4:
      result = 0x6C61636F6CLL;
      break;
    case 5:
      result = 7565173;
      break;
    case 6:
      result = 0x74786554736F75;
      break;
    case 7:
      result = 0x65746F6D6572;
      break;
    case 8:
      result = 0x6F69746174636964;
      break;
    case 9:
      result = 0xD000000000000016;
      break;
    case 0xA:
      result = 0xD000000000000010;
      break;
    case 0xB:
      result = 7171180;
      break;
    case 0xC:
      result = 0x65727574736567;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2230DE994(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A640, &unk_22321B758);
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v16 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2230DEAE4();
  sub_2232007A4();
  v13 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes29StartChildLocalRequestMessage_rootRequestId);
  v14 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes29StartChildLocalRequestMessage_rootRequestId + 8);
  sub_2232005F4();
  if (!v2)
  {
    sub_2230DEEE4(a1);
  }

  return (*(v7 + 8))(v11, v4);
}

unint64_t sub_2230DEAE4()
{
  result = qword_27D05A638;
  if (!qword_27D05A638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D05A638);
  }

  return result;
}

uint64_t sub_2230DEB48(void *a1)
{
  v3 = v1;
  v37 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059FB8, &qword_223217CF0);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v32 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2230DEE58();
  sub_2232007A4();
  if (!*(v1 + OBJC_IVAR____TtC16SiriMessageTypes25RunSiriKitExecutorMessage_invocationId + 8) || (v14 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes25RunSiriKitExecutorMessage_invocationId), LOBYTE(v35) = 0, sub_2232005F4(), !v2))
  {
    v15 = objc_opt_self();
    v16 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes25RunSiriKitExecutorMessage_command);
    v35 = 0;
    v17 = [v15 archivedDataWithRootObject:v16 requiringSecureCoding:1 error:&v35];
    v18 = v35;
    if (v17)
    {
      v33 = v3;
      v19 = sub_2231FFD24();
      v21 = v20;

      v35 = v19;
      v36 = v21;
      v34 = 1;
      sub_2230D7754();
      OUTLINED_FUNCTION_3_29();
      sub_2230D94DC(v35, v36);
      if (v2)
      {
        goto LABEL_10;
      }

      v22 = *(v33 + OBJC_IVAR____TtC16SiriMessageTypes25RunSiriKitExecutorMessage_commandExecutionInfo);
      v35 = 0;
      v23 = [v15 archivedDataWithRootObject:v22 requiringSecureCoding:1 error:&v35];
      v24 = v35;
      if (v23)
      {
        v25 = sub_2231FFD24();
        v27 = v26;

        v35 = v25;
        v36 = v27;
        v34 = 2;
        OUTLINED_FUNCTION_3_29();
        sub_2230D94DC(v35, v36);
        sub_2230D77A8(a1);
        goto LABEL_10;
      }

      v31 = v24;
      sub_2231FFD04();
    }

    else
    {
      v28 = v18;
      sub_2231FFD04();
    }

    swift_willThrow();
  }

LABEL_10:
  result = (*(v8 + 8))(v12, v5);
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2230DEE58()
{
  result = qword_280FCB8C0;
  if (!qword_280FCB8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCB8C0);
  }

  return result;
}

uint64_t RunSiriKitExecutorMessage.invocationId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes25RunSiriKitExecutorMessage_invocationId);
  v2 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes25RunSiriKitExecutorMessage_invocationId + 8);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_2230DEEE4(void *a1)
{
  v27[2] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D05A730, &unk_22321C210);
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v24 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2230DF198();
  sub_2232007A4();
  LOBYTE(v27[0]) = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes23StartRequestMessageBase_inputOrigin);
  v26 = 0;
  sub_2230DB484();
  OUTLINED_FUNCTION_4_38();
  if (!v2)
  {
    v13 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes23StartRequestMessageBase_optionalRequestContextData);
    if (!v13)
    {
LABEL_6:
      sub_2230D77A8(a1);
      goto LABEL_7;
    }

    v14 = objc_opt_self();
    v27[0] = 0;
    v15 = v13;
    v16 = [v14 archivedDataWithRootObject:v15 requiringSecureCoding:1 error:v27];
    v17 = v27[0];
    if (v16)
    {
      v25 = v15;
      v18 = sub_2231FFD24();
      v20 = v19;

      v27[0] = v18;
      v27[1] = v20;
      v26 = 1;
      sub_2230D7754();
      OUTLINED_FUNCTION_4_38();

      sub_2230D94DC(v18, v20);
      goto LABEL_6;
    }

    v21 = v17;
    sub_2231FFD04();

    swift_willThrow();
  }

LABEL_7:
  result = (*(v7 + 8))(v11, v4);
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2230DF170@<X0>(unint64_t *a1@<X8>)
{
  result = RequestType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_2230DF198()
{
  result = qword_280FCE2C0;
  if (!qword_280FCE2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE2C0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RunSiriKitExecutorMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2230DF2B8);
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

_WORD *sub_2230DF2E0(_WORD *result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *result & 0x1FF | (a2 << 14);
  }

  else
  {
    v2 = (a2 + 510) & 0x1FF | 0x8000;
  }

  *result = v2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for StartRequestMessageBase.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2230DF3D8);
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

uint64_t sub_2230DF454(char a1)
{
  if (!a1)
  {
    return 0x697461636F766E69;
  }

  if (a1 == 1)
  {
    return 0x646E616D6D6F63;
  }

  return 0xD000000000000014;
}

void RequestSummary.ExecutionSource.encode(to:)()
{
  OUTLINED_FUNCTION_8_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059A28, &qword_2232149F0);
  OUTLINED_FUNCTION_9(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_3();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059A30, &qword_2232149F8);
  v48 = OUTLINED_FUNCTION_9(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_3();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059A38, &qword_223214A00);
  OUTLINED_FUNCTION_9(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4_3();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059A40, &qword_223214A08);
  OUTLINED_FUNCTION_9(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_4_3();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059A48, &qword_223214A10);
  OUTLINED_FUNCTION_9(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_4_11();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059A50, &qword_223214A18);
  OUTLINED_FUNCTION_9(v24);
  v47 = v25;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_40_2();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059A58, &qword_223214A20);
  v49 = OUTLINED_FUNCTION_9(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_4_3();
  v33 = *v0;
  v34 = v3[4];
  OUTLINED_FUNCTION_29(v3, v3[3]);
  sub_2230DFC28();
  sub_2232007A4();
  if (!(v33 >> 14))
  {
    sub_22318E4F8();
    sub_2232005B4();
    sub_22318E54C();
    sub_223200654();
    v40 = OUTLINED_FUNCTION_29_6();
    v41(v40, v20);
    v37 = OUTLINED_FUNCTION_38_2();
    v39 = v49;
    goto LABEL_5;
  }

  if (v33 >> 14 == 1)
  {
    sub_22318E3FC();
    OUTLINED_FUNCTION_13_10();
    sub_22318E300();
    sub_223200654();
    v35 = OUTLINED_FUNCTION_29_6();
    v36(v35, v48);
    v37 = OUTLINED_FUNCTION_38_2();
    v39 = v20;
LABEL_5:
    v38(v37, v39);
    goto LABEL_13;
  }

  switch(v33)
  {
    case 0x8001u:
      sub_22318E4A4();
      OUTLINED_FUNCTION_13_10();
      goto LABEL_11;
    case 0x8002u:
      sub_22318E450();
      OUTLINED_FUNCTION_13_10();
      goto LABEL_11;
    case 0x8003u:
      sub_22318E3A8();
      OUTLINED_FUNCTION_13_10();
LABEL_11:
      v42 = OUTLINED_FUNCTION_42_2();
      v44(v42, v43);
      break;
    default:
      sub_2230DFCF8();
      OUTLINED_FUNCTION_13_10();
      (*(v47 + 8))(v1, v24);
      break;
  }

  v45 = OUTLINED_FUNCTION_38_2();
  v46(v45, v20);
LABEL_13:
  OUTLINED_FUNCTION_9_0();
}

uint64_t OUTLINED_FUNCTION_30()
{

  return sub_2232004C4();
}

uint64_t OUTLINED_FUNCTION_30_2()
{
  *(v0 - 65) = 0;
  v2 = *(v0 - 88);

  return sub_2232005C4();
}

uint64_t OUTLINED_FUNCTION_30_3()
{

  return sub_223200104();
}

uint64_t OUTLINED_FUNCTION_30_4()
{

  return sub_223200554();
}

uint64_t SessionConfiguration.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SessionConfiguration() + 52);
  v4 = sub_2231FFDA4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t OUTLINED_FUNCTION_29_1(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, a1);
}

void OUTLINED_FUNCTION_29_5()
{

  JUMPOUT(0x223DD5AA0);
}

unint64_t sub_2230DFC28()
{
  result = qword_280FCE800;
  if (!qword_280FCE800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE800);
  }

  return result;
}

id OUTLINED_FUNCTION_28_0(uint64_t a1)
{

  return [v1 (v2 + 858)];
}

uint64_t OUTLINED_FUNCTION_28_1()
{

  return swift_getWitnessTable();
}

unint64_t sub_2230DFCF8()
{
  result = qword_280FCE808;
  if (!qword_280FCE808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE808);
  }

  return result;
}

unint64_t sub_2230DFD54(char a1)
{
  result = 0x5869726973;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x72656E6E616C70;
      break;
    case 3:
      result = 0x6F54686372616573;
      break;
    case 4:
      result = 0x49416E6567;
      break;
    case 5:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *sub_2230DFE24(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_47(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_45_0(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x2230DFEE0);
      case 4:
        result = OUTLINED_FUNCTION_46_1(result, v6);
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
          result = OUTLINED_FUNCTION_68(result, a2 + 5);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2230DFF08(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_48_0(-1);
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
    if (v4)
    {
      return OUTLINED_FUNCTION_48_0((*a1 | (v4 << 8)) - 6);
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return OUTLINED_FUNCTION_48_0((*a1 | (v4 << 8)) - 6);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_48_0((*a1 | (v4 << 8)) - 6);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_48_0(v8);
}

uint64_t OUTLINED_FUNCTION_44_1@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_2230D3008(v4 + a3, v3, a1, a2);
}

uint64_t OUTLINED_FUNCTION_44_3@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 128) = *(v1 + a1);

  return sub_223200104();
}

uint64_t OUTLINED_FUNCTION_52()
{
  v2 = *v0;
  v3 = v0[1];
}

uint64_t sub_2230E0020@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2230E0048(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2230E0048(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5869726973 && a2 == 0xE500000000000000;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x8000000223221490 == a2;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x72656E6E616C70 && a2 == 0xE700000000000000;
      if (v7 || (sub_2232006B4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6F54686372616573 && a2 == 0xEA00000000006C6FLL;
        if (v8 || (sub_2232006B4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x49416E6567 && a2 == 0xE500000000000000;
          if (v9 || (sub_2232006B4() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
          {

            return 5;
          }

          else
          {
            v11 = sub_2232006B4();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

void RequestSummary.ExecutionSource.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, char a11, __int16 a12, char a13, unsigned __int8 a14)
{
  OUTLINED_FUNCTION_8_1();
  v16 = v15;
  v95 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059A90, &qword_223214A28);
  OUTLINED_FUNCTION_9(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_4_3();
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059A98, &qword_223214A30);
  OUTLINED_FUNCTION_9(v94);
  v97 = v22;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_4_3();
  v99 = v26;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059AA0, &qword_223214A38);
  OUTLINED_FUNCTION_9(v93);
  v96 = v27;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_4_3();
  v98 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059AA8, &qword_223214A40);
  OUTLINED_FUNCTION_9(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_4_3();
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059AB0, &qword_223214A48);
  OUTLINED_FUNCTION_9(v92);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_4_11();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059AB8, &qword_223214A50);
  OUTLINED_FUNCTION_9(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_40_2();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059AC0, &qword_223214A58);
  OUTLINED_FUNCTION_9(v43);
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_34();
  v47 = v16[4];
  v100 = v16;
  OUTLINED_FUNCTION_29(v16, v16[3]);
  sub_2230DFC28();
  OUTLINED_FUNCTION_33_4();
  sub_223200794();
  if (v14)
  {
    goto LABEL_8;
  }

  v48 = sub_223200594();
  sub_2230E0B80(v48, 0);
  if (v50 == v49 >> 1)
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_32();
  if (v54 >= (v53 >> 1))
  {
    __break(1u);
    JUMPOUT(0x2230E0B28);
  }

  v55 = *(v52 + v51);
  sub_2230E0B40(v51 + 1);
  v57 = v56;
  v59 = v58;
  swift_unknownObjectRelease();
  if (v57 != v59 >> 1)
  {
LABEL_7:
    v66 = sub_2232003A4();
    swift_allocError();
    v68 = v67;
    v69 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057788, &qword_223203DF0) + 48);
    *v68 = &type metadata for RequestSummary.ExecutionSource;
    sub_223200484();
    OUTLINED_FUNCTION_48();
    v70 = *MEMORY[0x277D84160];
    OUTLINED_FUNCTION_5_0(v66);
    (*(v71 + 104))(v68);
    swift_willThrow();
    swift_unknownObjectRelease();
    v72 = OUTLINED_FUNCTION_22_7();
    v73(v72);
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(v100);
    goto LABEL_9;
  }

  switch(v55)
  {
    case 1:
      v60 = v95;
      sub_22318E4F8();
      OUTLINED_FUNCTION_8_16();
      sub_22318E5A0();
      sub_223200554();
      swift_unknownObjectRelease();
      v87 = OUTLINED_FUNCTION_59_0();
      v88(v87);
      v89 = OUTLINED_FUNCTION_39_3();
      v90(v89);
      if (a11)
      {
        v91 = 256;
      }

      else
      {
        v91 = 0;
      }

      v65 = v91 | a10;
      goto LABEL_19;
    case 2:
      v60 = v95;
      sub_22318E4A4();
      OUTLINED_FUNCTION_8_16();
      swift_unknownObjectRelease();
      v74 = OUTLINED_FUNCTION_29_6();
      v75(v74);
      v76 = OUTLINED_FUNCTION_1_23();
      v77(v76);
      v65 = -32767;
      goto LABEL_19;
    case 3:
      sub_22318E450();
      OUTLINED_FUNCTION_8_16();
      swift_unknownObjectRelease();
      (*(v96 + 8))(v98, v93);
      v78 = OUTLINED_FUNCTION_1_23();
      v79(v78);
      v65 = -32766;
      v86 = v100;
      v60 = v95;
      goto LABEL_20;
    case 4:
      sub_22318E3FC();
      OUTLINED_FUNCTION_8_16();
      sub_22318E354();
      sub_223200554();
      swift_unknownObjectRelease();
      (*(v97 + 8))(v99, v94);
      v84 = OUTLINED_FUNCTION_39_3();
      v85(v84);
      v65 = a14 | 0x4000;
      v86 = v100;
      v60 = v95;
      goto LABEL_20;
    case 5:
      v60 = v95;
      sub_22318E3A8();
      OUTLINED_FUNCTION_8_16();
      swift_unknownObjectRelease();
      v80 = OUTLINED_FUNCTION_29_6();
      v81(v80);
      v82 = OUTLINED_FUNCTION_1_23();
      v83(v82);
      v65 = -32765;
      goto LABEL_19;
    default:
      v60 = v95;
      sub_2230DFCF8();
      OUTLINED_FUNCTION_8_16();
      swift_unknownObjectRelease();
      v61 = OUTLINED_FUNCTION_29_6();
      v62(v61, v39);
      v63 = OUTLINED_FUNCTION_1_23();
      v64(v63);
      v65 = 0x8000;
LABEL_19:
      v86 = v100;
LABEL_20:
      *v60 = v65;
      __swift_destroy_boxed_opaque_existential_1(v86);
      break;
  }

LABEL_9:
  OUTLINED_FUNCTION_9_0();
}

void sub_2230E0B48(uint64_t a1, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(a1 + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_1_2();
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_2230E0B88(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void FlowOutputMessage.InAppResponse.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_8_1();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057E58, &unk_223207A80);
  OUTLINED_FUNCTION_9(v27);
  v29 = v28;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v32);
  v34 = &a9 - v33;
  v35 = v24[4];
  __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  sub_2230E0EB4();
  OUTLINED_FUNCTION_20();
  sub_223200794();
  if (!v20)
  {
    v36 = sub_2232004F4();
    v38 = v37;
    (*(v29 + 8))(v34, v27);
    *v26 = v36;
    v26[1] = v38;
  }

  __swift_destroy_boxed_opaque_existential_1(v24);
  OUTLINED_FUNCTION_9_0();
}

uint64_t OUTLINED_FUNCTION_22_5()
{

  return sub_2232004C4();
}

unint64_t sub_2230E0EB4()
{
  result = qword_280FCE590;
  if (!qword_280FCE590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE590);
  }

  return result;
}

void UserSessionState.activeUserSharedUserId.getter(void *a1@<X8>)
{
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
}

uint64_t sub_2230E1000()
{
  v1 = OUTLINED_FUNCTION_25_5();
  v0(v1);
  OUTLINED_FUNCTION_10_20();

  return sub_223200764();
}

uint64_t OUTLINED_FUNCTION_24_2()
{

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_24_3@<X0>(uint64_t *a1@<X8>)
{
  result = *a1;
  v3 = *v1;
  return result;
}

id OUTLINED_FUNCTION_24_4(uint64_t a1)
{

  return [v1 (v2 + 858)];
}

BOOL OUTLINED_FUNCTION_24_5(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

_BYTE *storeEnumTagSinglePayload for ConversationSessionKey(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
        JUMPOUT(0x2230E11B4);
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
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MessageSource(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF2)
  {
    if (a2 + 14 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 14) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 15;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v5 = v6 - 15;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}